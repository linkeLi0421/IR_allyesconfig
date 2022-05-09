; ModuleID = '/llk/IR_all_yes/fs/userfaultfd.c_pt.bc'
source_filename = "../fs/userfaultfd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.syscall_metadata = type { ptr, i32, i32, ptr, ptr, %struct.list_head, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.74, %struct.trace_event, ptr, ptr, %union.anon.76, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.74 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.76 = type { ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.75 }
%struct.atomic_t = type { i32 }
%union.anon.75 = type { i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.userfaultfd_wait_queue = type <{ %struct.uffd_msg, %struct.wait_queue_entry, ptr, i8, [3 x i8] }>
%struct.uffd_msg = type { i8, i8, i16, i32, %union.anon.108 }
%union.anon.108 = type { %struct.anon.109 }
%struct.anon.109 = type { i64, i64, %union.anon.110 }
%union.anon.110 = type { i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.105, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.105 = type { %struct.anon.106 }
%struct.anon.106 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.80, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.30 }
%struct.llist_node = type { ptr }
%union.anon.30 = type { i32 }
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
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.32 }
%union.anon.32 = type { %struct.anon.33 }
%struct.anon.33 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%union.anon.80 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.anon.0 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic64_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32, i32, i32 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.userfaultfd_ctx = type { %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.seqcount_spinlock, %struct.refcount_struct, i32, i32, i8, %struct.atomic_t, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.vm_fault = type { %struct.anon, i32, ptr, ptr, %union.anon.107, ptr, ptr, ptr, ptr, ptr }
%struct.anon = type { ptr, i32, i32, i32 }
%union.anon.107 = type { i32 }
%struct.page = type { i32, %union.anon.19, %union.anon.29, %struct.atomic_t, i32 }
%union.anon.19 = type { %struct.anon.20 }
%struct.anon.20 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.29 = type { %struct.atomic_t }
%struct.userfaultfd_wake_range = type { i32, i32 }
%struct.userfaultfd_fork_ctx = type { ptr, ptr, %struct.list_head }
%struct.userfaultfd_unmap_ctx = type { ptr, i32, i32, %struct.list_head }
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.uffdio_continue = type { %struct.uffdio_range, i64, i64 }
%struct.uffdio_range = type { i64, i64 }
%struct.uffdio_writeprotect = type { %struct.uffdio_range, i64 }
%struct.uffdio_zeropage = type { %struct.uffdio_range, i64, i64 }
%struct.uffdio_copy = type { i64, i64, i64, i64, i64 }
%struct.uffdio_register = type { %struct.uffdio_range, i64, i64 }
%struct.uffdio_api = type { i64, i64, i64 }
%struct.anon.4 = type { [16 x i8], %struct.lockdep_map }

@handle_userfault.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@handle_userfault._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 414, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [132 x i8], [60 x i8] } { [132 x i8] c"\014uffd: Set unprivileged_userfaultfd sysctl knob to 1 if kernel faults must be handled without obtaining CAP_SYS_PTRACE capability\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"handle_userfault\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/userfaultfd.c\00", [47 x i8] zeroinitializer }, align 32
@handle_userfault._entry_ptr = internal global ptr @handle_userfault._entry, section ".printk_index", align 4
@handle_userfault._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 465, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014FAULT_FLAG_ALLOW_RETRY missing %x\0A\00", [59 x i8] zeroinitializer }, align 32
@handle_userfault._entry_ptr.5 = internal global ptr @handle_userfault._entry.3, section ".printk_index", align 4
@userfaultfd_ctx_cachep = internal unnamed_addr global ptr null, section ".data..read_mostly", align 4
@event_class_syscall_enter = external dso_local global %struct.trace_event_class, align 4
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sys_enter_userfaultfd\00", [42 x i8] zeroinitializer }, align 32
@enter_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@__syscall_meta__userfaultfd = internal global %struct.syscall_metadata { ptr @.str.10, i32 -1, i32 1, ptr @types__userfaultfd, ptr @args__userfaultfd, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__userfaultfd, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__userfaultfd, i64 20) }, ptr @event_enter__userfaultfd, ptr @event_exit__userfaultfd }, align 4
@event_enter__userfaultfd = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.74 { ptr @.str.8 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.76 zeroinitializer, ptr @__syscall_meta__userfaultfd, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__userfaultfd = internal global ptr @event_enter__userfaultfd, section "_ftrace_events", align 4
@event_class_syscall_exit = external dso_local global %struct.trace_event_class, align 4
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sys_exit_userfaultfd\00", [43 x i8] zeroinitializer }, align 32
@exit_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@event_exit__userfaultfd = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.74 { ptr @.str.9 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.76 zeroinitializer, ptr @__syscall_meta__userfaultfd, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__userfaultfd = internal global ptr @event_exit__userfaultfd, section "_ftrace_events", align 4
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_userfaultfd\00", [16 x i8] zeroinitializer }, align 32
@types__userfaultfd = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.14], [28 x i8] zeroinitializer }, align 32
@args__userfaultfd = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.15], [28 x i8] zeroinitializer }, align 32
@__p_syscall_meta__userfaultfd = internal global ptr @__syscall_meta__userfaultfd, section "__syscalls_metadata", align 4
@__initcall__kmod_userfaultfd__330_2119_userfaultfd_init6 = internal global ptr @userfaultfd_init, section ".initcall6.init", align 4
@sysctl_unprivileged_userfaultfd = dso_local local_unnamed_addr global i32 0, section ".data..read_mostly", align 4
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/mmap_lock.h\00", [38 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@__tracepoint_mmap_lock_released = external dso_local global %struct.tracepoint, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@userfaultfd_event_wait_completion.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_mmap_lock_start_locking = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_acquire_returned = external dso_local global %struct.tracepoint, align 4
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"flags\00", [26 x i8] zeroinitializer }, align 32
@__do_sys_userfaultfd.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__do_sys_userfaultfd._entry = internal constant %struct.pi_entry { ptr @.str, ptr @.str.16, ptr @.str.2, i32 2074, ptr null, ptr null }, align 1
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"__do_sys_userfaultfd\00", [43 x i8] zeroinitializer }, align 32
@__do_sys_userfaultfd._entry_ptr = internal global ptr @__do_sys_userfaultfd._entry, section ".printk_index", align 4
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"[userfaultfd]\00", [18 x i8] zeroinitializer }, align 32
@userfaultfd_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr @userfaultfd_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @userfaultfd_poll, ptr @userfaultfd_ioctl, ptr null, ptr null, i32 0, ptr null, ptr null, ptr @userfaultfd_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @userfaultfd_show_fdinfo, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@mmap_min_addr = external dso_local local_unnamed_addr global i32, align 4
@.str.23 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"pending:\09%lu\0Atotal:\09%lu\0AAPI:\09%Lx:%x:%Lx\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"userfaultfd_ctx_cache\00", [42 x i8] zeroinitializer }, align 32
@init_once_userfaultfd_ctx.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&ctx->fault_pending_wqh\00", [40 x i8] zeroinitializer }, align 32
@init_once_userfaultfd_ctx.__key.26 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&ctx->fault_wqh\00", [16 x i8] zeroinitializer }, align 32
@init_once_userfaultfd_ctx.__key.28 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&ctx->event_wqh\00", [16 x i8] zeroinitializer }, align 32
@init_once_userfaultfd_ctx.__key.30 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&ctx->fd_wqh\00", [19 x i8] zeroinitializer }, align 32
@init_once_userfaultfd_ctx.__key.32 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&____s->seqcount\00", [47 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 2148575745, i64 2148575746, i64 3222841862, i64 3223366144, i64 3223366148, i64 3223366151, i64 3223890435]
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 412, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 463, i32 4 }
@___asan_gen_.55 = private unnamed_addr constant [25 x i8] c"event_enter__userfaultfd\00", align 1
@___asan_gen_.61 = private unnamed_addr constant [24 x i8] c"event_exit__userfaultfd\00", align 1
@___asan_gen_.67 = private unnamed_addr constant [19 x i8] c"types__userfaultfd\00", align 1
@___asan_gen_.70 = private unnamed_addr constant [18 x i8] c"args__userfaultfd\00", align 1
@___asan_gen_.74 = private unnamed_addr constant [29 x i8] c"../include/linux/mmap_lock.h\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 155, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 2064, i32 1 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 2072, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 2101, i32 31 }
@___asan_gen_.88 = private unnamed_addr constant [17 x i8] c"userfaultfd_fops\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 2041, i32 37 }
@___asan_gen_.92 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 277, i32 1 }
@___asan_gen_.95 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 174, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 2035, i32 16 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 2112, i32 45 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 2057, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 2058, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 2059, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 2060, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.130 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.131 = private constant [20 x i8] c"../fs/userfaultfd.c\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 2061, i32 2 }
@llvm.compiler.used = appending global [42 x ptr] [ptr @__do_sys_userfaultfd._entry, ptr @__do_sys_userfaultfd._entry_ptr, ptr @__event_enter__userfaultfd, ptr @__event_exit__userfaultfd, ptr @__initcall__kmod_userfaultfd__330_2119_userfaultfd_init6, ptr @__p_syscall_meta__userfaultfd, ptr @__syscall_meta__userfaultfd, ptr @event_enter__userfaultfd, ptr @event_exit__userfaultfd, ptr @handle_userfault._entry, ptr @handle_userfault._entry.3, ptr @handle_userfault._entry_ptr, ptr @handle_userfault._entry_ptr.5, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @types__userfaultfd, ptr @args__userfaultfd, ptr @.str.11, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @userfaultfd_fops, ptr @.str.19, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @init_once_userfaultfd_ctx.__key, ptr @.str.25, ptr @init_once_userfaultfd_ctx.__key.26, ptr @.str.27, ptr @init_once_userfaultfd_ctx.__key.28, ptr @.str.29, ptr @init_once_userfaultfd_ctx.__key.30, ptr @.str.31, ptr @init_once_userfaultfd_ctx.__key.32, ptr @.str.33], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_userfault._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_userfault._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__userfaultfd to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__userfaultfd to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__userfaultfd to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__userfaultfd to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @userfaultfd_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_once_userfaultfd_ctx.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_once_userfaultfd_ctx.__key.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_once_userfaultfd_ctx.__key.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_once_userfaultfd_ctx.__key.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_once_userfaultfd_ctx.__key.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

@sys_userfaultfd = dso_local alias i32 (i32), ptr @__se_sys_userfaultfd

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @handle_userfault(ptr nocapture noundef readonly %vmf, i32 noundef %reason) #0 align 64 {
entry:
  %uwq = alloca %struct.userfaultfd_wait_queue, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vmf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vmf, align 4
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %vm_mm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vm_mm, align 4
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %uwq) #11
  %4 = call ptr @memset(ptr %uwq, i32 255, i32 60)
  %5 = tail call i32 @llvm.read_register.i32(metadata !84) #11
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %flags = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags, align 4
  %and = and i32 %10, 516
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %11 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %land.rhs.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.end
  %dep_map.i = getelementptr inbounds %struct.anon.0, ptr %3, i32 0, i32 15, i32 6
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !94

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 155, i32 noundef 9, ptr noundef null) #11
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %if.end.if.end.i_crit_edge
  %mmap_lock25.i = getelementptr inbounds %struct.anon.0, ptr %3, i32 0, i32 15
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %mmap_lock25.i, i32 noundef 4) #11
  %12 = ptrtoint ptr %mmap_lock25.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %mmap_lock25.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.i.not.i = icmp eq i32 %13, 0
  br i1 %cmp.i.not.i, label %if.then36.i, label %mmap_assert_locked.exit, !prof !94

if.then36.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_mm(ptr noundef %3) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mmap_lock.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 156, 0\0A.popsection", ""() #11, !srcloc !95
  unreachable

mmap_assert_locked.exit:                          ; preds = %if.end.i
  %14 = ptrtoint ptr %vmf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vmf, align 4
  %vm_userfaultfd_ctx = getelementptr inbounds %struct.vm_area_struct, ptr %15, i32 0, i32 17
  %16 = ptrtoint ptr %vm_userfaultfd_ctx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vm_userfaultfd_ctx, align 4
  %tobool3.not = icmp eq ptr %17, null
  br i1 %tobool3.not, label %mmap_assert_locked.exit.out_crit_edge, label %do.body

mmap_assert_locked.exit.out_crit_edge:            ; preds = %mmap_assert_locked.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

do.body:                                          ; preds = %mmap_assert_locked.exit
  %mm6 = getelementptr inbounds %struct.userfaultfd_ctx, ptr %17, i32 0, i32 10
  %18 = ptrtoint ptr %mm6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mm6, align 4
  %cmp.not = icmp eq ptr %19, %3
  br i1 %cmp.not, label %do.body17, label %do.body10, !prof !96

do.body10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/userfaultfd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 401, 0\0A.popsection", ""() #11, !srcloc !97
  unreachable

do.body17:                                        ; preds = %do.body
  %and18 = and i32 %reason, -4609
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %do.body36, label %do.body27, !prof !96

do.body27:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/userfaultfd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 404, 0\0A.popsection", ""() #11, !srcloc !98
  unreachable

do.body36:                                        ; preds = %do.body17
  %20 = tail call i32 @llvm.ctpop.i32(i32 %reason), !range !99
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %.not = icmp eq i32 %20, 1
  br i1 %.not, label %do.end55, label %do.body47, !prof !100

do.body47:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/userfaultfd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 406, 0\0A.popsection", ""() #11, !srcloc !101
  unreachable

do.end55:                                         ; preds = %do.body36
  %features = getelementptr inbounds %struct.userfaultfd_ctx, ptr %17, i32 0, i32 7
  %21 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %features, align 4
  %and56 = and i32 %22, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %if.end59, label %do.end55.out_crit_edge

do.end55.out_crit_edge:                           ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end59:                                         ; preds = %do.end55
  %flags60 = getelementptr inbounds %struct.vm_fault, ptr %vmf, i32 0, i32 1
  %23 = ptrtoint ptr %flags60 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags60, align 4
  %and61 = and i32 %24, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %cmp62 = icmp eq i32 %and61, 0
  br i1 %cmp62, label %land.lhs.true, label %if.end59.do.end93_crit_edge

if.end59.do.end93_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end93

land.lhs.true:                                    ; preds = %if.end59
  %flags63 = getelementptr inbounds %struct.userfaultfd_ctx, ptr %17, i32 0, i32 6
  %25 = ptrtoint ptr %flags63 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags63, align 4
  %and64 = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %land.lhs.true.do.end93_crit_edge, label %land.end

land.lhs.true.do.end93_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end93

land.end:                                         ; preds = %land.lhs.true
  %.b415 = load i1, ptr @handle_userfault.__already_done, align 1
  br i1 %.b415, label %land.end.out_crit_edge, label %if.then77, !prof !96

land.end.out_crit_edge:                           ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then77:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @handle_userfault.__already_done, align 1
  %call81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #14
  br label %out

do.end93:                                         ; preds = %land.lhs.true.do.end93_crit_edge, %if.end59.do.end93_crit_edge
  %released = getelementptr inbounds %struct.userfaultfd_ctx, ptr %17, i32 0, i32 8
  %27 = ptrtoint ptr %released to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load volatile i8, ptr %released, align 4, !range !102
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool95.not = icmp eq i8 %28, 0
  br i1 %tobool95.not, label %if.end104, label %do.end93.out_crit_edge, !prof !96

do.end93.out_crit_edge:                           ; preds = %do.end93
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end104:                                        ; preds = %do.end93
  %and106 = and i32 %24, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106)
  %tobool107.not = icmp eq i32 %and106, 0
  %and119 = and i32 %24, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and119)
  %tobool120.not = icmp eq i32 %and119, 0
  br i1 %tobool107.not, label %do.body117, label %if.end147, !prof !94

do.body117:                                       ; preds = %if.end104
  br i1 %tobool120.not, label %do.end136, label %do.body128, !prof !96

do.body128:                                       ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/userfaultfd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 460, 0\0A.popsection", ""() #11, !srcloc !103
  unreachable

do.end136:                                        ; preds = %do.body117
  %call137 = tail call i32 @__printk_ratelimit(ptr noundef nonnull @.str.1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137)
  %tobool138.not = icmp eq i32 %call137, 0
  br i1 %tobool138.not, label %do.end136.out_crit_edge, label %do.end142

do.end136.out_crit_edge:                          ; preds = %do.end136
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

do.end142:                                        ; preds = %do.end136
  call void @__sanitizer_cov_trace_pc() #13
  %29 = ptrtoint ptr %flags60 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags60, align 4
  %call145 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %30) #14
  tail call void @dump_stack() #14
  br label %out

if.end147:                                        ; preds = %if.end104
  br i1 %tobool120.not, label %if.end152, label %if.end147.out_crit_edge

if.end147.out_crit_edge:                          ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end152:                                        ; preds = %if.end147
  %refcount.i = getelementptr inbounds %struct.userfaultfd_ctx, ptr %17, i32 0, i32 5
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #11
  %31 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #11, !srcloc !104
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %31, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end152.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !94

if.end152.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end152
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %32 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %32)
  %.not.i.i.i.i = icmp sgt i32 %32, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.userfaultfd_ctx_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !96

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.userfaultfd_ctx_get.exit_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %userfaultfd_ctx_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end152.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end152.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef %.sink.i.i.i.i) #11
  br label %userfaultfd_ctx_get.exit

userfaultfd_ctx_get.exit:                         ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.userfaultfd_ctx_get.exit_crit_edge
  %wq = getelementptr inbounds %struct.userfaultfd_wait_queue, ptr %uwq, i32 0, i32 1
  %33 = ptrtoint ptr %wq to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %wq, align 4
  %private.i = getelementptr inbounds %struct.userfaultfd_wait_queue, ptr %uwq, i32 0, i32 1, i32 1
  %func1.i = getelementptr inbounds %struct.userfaultfd_wait_queue, ptr %uwq, i32 0, i32 1, i32 2
  %34 = ptrtoint ptr %func1.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @userfaultfd_wake_function, ptr %func1.i, align 4
  %35 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %task, align 8
  %37 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %private.i, align 4
  %address = getelementptr inbounds %struct.anon, ptr %vmf, i32 0, i32 3
  %38 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %address, align 4
  %40 = ptrtoint ptr %flags60 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %flags60, align 4
  %42 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %features, align 4
  %conv.i = zext i32 %39 to i64
  %and.i416 = and i32 %41, 1
  %and4.i = and i32 %reason, 4096
  %44 = lshr exact i32 %and4.i, 11
  %45 = or i32 %and.i416, %44
  %46 = zext i32 %45 to i64
  %and18.i = and i32 %43, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  br i1 %tobool19.not.i, label %userfaultfd_ctx_get.exit.userfault_msg.exit_crit_edge, label %if.then20.i

userfaultfd_ctx_get.exit.userfault_msg.exit_crit_edge: ; preds = %userfaultfd_ctx_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %userfault_msg.exit

if.then20.i:                                      ; preds = %userfaultfd_ctx_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  %47 = tail call i32 @llvm.read_register.i32(metadata !84) #11, !noalias !105
  %and.i.i = and i32 %47, -16384
  %48 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %task.i, align 8, !noalias !105
  %call.i.i419 = tail call i32 @__task_pid_nr_ns(ptr noundef %50, i32 noundef 0, ptr noundef null) #11, !noalias !105
  br label %userfault_msg.exit

userfault_msg.exit:                               ; preds = %if.then20.i, %userfaultfd_ctx_get.exit.userfault_msg.exit_crit_edge
  %tmp156.sroa.10.0 = phi i32 [ 0, %userfaultfd_ctx_get.exit.userfault_msg.exit_crit_edge ], [ %call.i.i419, %if.then20.i ]
  %51 = ptrtoint ptr %uwq to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 18, ptr %uwq, align 4
  %tmp156.sroa.4.0.uwq.sroa_idx = getelementptr inbounds i8, ptr %uwq, i32 1
  %52 = call ptr @memset(ptr %tmp156.sroa.4.0.uwq.sroa_idx, i32 0, i32 7)
  %tmp156.sroa.5.0.uwq.sroa_idx = getelementptr inbounds i8, ptr %uwq, i32 8
  %53 = ptrtoint ptr %tmp156.sroa.5.0.uwq.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %53, i32 8)
  store i64 %46, ptr %tmp156.sroa.5.0.uwq.sroa_idx, align 4
  %tmp156.sroa.9.0.uwq.sroa_idx = getelementptr inbounds i8, ptr %uwq, i32 16
  %54 = ptrtoint ptr %tmp156.sroa.9.0.uwq.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %54, i32 8)
  store i64 %conv.i, ptr %tmp156.sroa.9.0.uwq.sroa_idx, align 4
  %tmp156.sroa.10.0.uwq.sroa_idx = getelementptr inbounds i8, ptr %uwq, i32 24
  %55 = ptrtoint ptr %tmp156.sroa.10.0.uwq.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %tmp156.sroa.10.0, ptr %tmp156.sroa.10.0.uwq.sroa_idx, align 4
  %tmp156.sroa.11.0.uwq.sroa_idx = getelementptr inbounds i8, ptr %uwq, i32 28
  %56 = ptrtoint ptr %tmp156.sroa.11.0.uwq.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %tmp156.sroa.11.0.uwq.sroa_idx, align 4
  %ctx159 = getelementptr inbounds %struct.userfaultfd_wait_queue, ptr %uwq, i32 0, i32 2
  %57 = ptrtoint ptr %ctx159 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %17, ptr %ctx159, align 4
  %waken = getelementptr inbounds %struct.userfaultfd_wait_queue, ptr %uwq, i32 0, i32 3
  %58 = ptrtoint ptr %waken to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %waken, align 4
  %59 = ptrtoint ptr %flags60 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %flags60, align 4
  %and.i420 = and i32 %60, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i420)
  %tobool.not.i421 = icmp eq i32 %and.i420, 0
  %and1.i = and i32 %60, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  %..i = select i1 %tobool2.not.i, i32 2, i32 258
  %retval.0.i = select i1 %tobool.not.i421, i32 %..i, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull %17) #11
  %head1.i = getelementptr inbounds %struct.wait_queue_head, ptr %17, i32 0, i32 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %userfault_msg.exit
  %head.0.i = phi ptr [ %head1.i, %userfault_msg.exit ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %61 = ptrtoint ptr %head.0.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %.pn.i = load ptr, ptr %head.0.i, align 4
  %cmp.not.i422 = icmp eq ptr %.pn.i, %head1.i
  br i1 %cmp.not.i422, label %for.cond.i.for.end.i_crit_edge, label %for.body.i

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i:                                       ; preds = %for.cond.i
  %wq.0.i = getelementptr i8, ptr %.pn.i, i32 -12
  %62 = ptrtoint ptr %wq.0.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %wq.0.i, align 4
  %and.i423 = and i32 %63, 32
  %tobool.not.i424 = icmp eq i32 %and.i423, 0
  br i1 %tobool.not.i424, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.i.for.end.i_crit_edge
  %.pn.lcssa.i = phi ptr [ %.pn.i, %for.body.i.for.end.i_crit_edge ], [ %head1.i, %for.cond.i.for.end.i_crit_edge ]
  %entry11.i = getelementptr inbounds %struct.userfaultfd_wait_queue, ptr %uwq, i32 0, i32 1, i32 3
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %entry11.i, ptr noundef %head.0.i, ptr noundef %.pn.lcssa.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.end.i.__here_crit_edge

for.end.i.__here_crit_edge:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

if.end.i.i.i:                                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.lcssa.i, i32 0, i32 1
  %64 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %entry11.i, ptr %prev1.i.i.i, align 4
  %65 = ptrtoint ptr %entry11.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %.pn.lcssa.i, ptr %entry11.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.userfaultfd_wait_queue, ptr %uwq, i32 0, i32 1, i32 3, i32 1
  %66 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %head.0.i, ptr %prev3.i.i.i, align 4
  %67 = ptrtoint ptr %head.0.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %entry11.i, ptr %head.0.i, align 4
  br label %__here

__here:                                           ; preds = %if.end.i.i.i, %for.end.i.__here_crit_edge
  %68 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %69, i32 0, i32 212
  %70 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 ptrtoint (ptr blockaddress(@handle_userfault, %__here) to i32), ptr %task_state_change, align 4
  %71 = load ptr, ptr %task, align 8
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile i32 %retval.0.i, ptr %71, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !108
  call void @_raw_spin_unlock_irq(ptr noundef nonnull %17) #11
  %73 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %address, align 4
  %75 = ptrtoint ptr %mm6 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %mm6, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %77 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool.not.i.i = icmp eq i32 %77, 0
  br i1 %tobool.not.i.i, label %__here.if.end.i.i_crit_edge, label %land.rhs.i.i

__here.if.end.i.i_crit_edge:                      ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

land.rhs.i.i:                                     ; preds = %__here
  %dep_map.i.i = getelementptr inbounds %struct.anon.0, ptr %76, i32 0, i32 15, i32 6
  %call.i.i.i425 = call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i425)
  %cmp.not.i.i = icmp eq i32 %call.i.i.i425, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %land.rhs.i.i.if.end.i.i_crit_edge, !prof !94

land.rhs.i.i.if.end.i.i_crit_edge:                ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 155, i32 noundef 9, ptr noundef null) #11
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %land.rhs.i.i.if.end.i.i_crit_edge, %__here.if.end.i.i_crit_edge
  %mmap_lock25.i.i = getelementptr inbounds %struct.anon.0, ptr %76, i32 0, i32 15
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %mmap_lock25.i.i, i32 noundef 4) #11
  %78 = ptrtoint ptr %mmap_lock25.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %mmap_lock25.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp.i.not.i.i = icmp eq i32 %79, 0
  br i1 %cmp.i.not.i.i, label %if.then36.i.i, label %mmap_assert_locked.exit.i, !prof !94

if.then36.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @dump_mm(ptr noundef %76) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mmap_lock.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 156, 0\0A.popsection", ""() #11, !srcloc !95
  unreachable

mmap_assert_locked.exit.i:                        ; preds = %if.end.i.i
  %pgd2.i = getelementptr inbounds %struct.anon.0, ptr %76, i32 0, i32 8
  %80 = ptrtoint ptr %pgd2.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %pgd2.i, align 4
  %shr.i.i = lshr i32 %74, 21
  %add.ptr.i.i = getelementptr [2 x i32], ptr %81, i32 %shr.i.i
  %82 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %add.ptr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool17.not.i = icmp eq i32 %83, 0
  br i1 %tobool17.not.i, label %mmap_assert_locked.exit.i.userfaultfd_must_wait.exit_crit_edge, label %if.end22.i

mmap_assert_locked.exit.i.userfaultfd_must_wait.exit_crit_edge: ; preds = %mmap_assert_locked.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %userfaultfd_must_wait.exit

if.end22.i:                                       ; preds = %mmap_assert_locked.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %84 = load ptr, ptr @mem_map, align 4
  %shr.i = lshr i32 %83, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %85 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub.i = sub i32 %shr.i, %85
  %add.ptr.i = getelementptr %struct.page, ptr %84, i32 %sub.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %86 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i = or i32 %86, 512
  %87 = call i32 @llvm.read_register.i32(metadata !84) #11
  %and.i.i.i.i.i.i = and i32 %87, -16384
  %88 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i426 = add i32 %90, 1
  store volatile i32 %add.i.i.i.i426, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !109
  %91 = call i32 @llvm.read_register.i32(metadata !84) #11
  %and.i.i.i1.i.i.i = and i32 %91, -16384
  %92 = inttoptr i32 %and.i.i.i1.i.i.i to ptr
  %task.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %92, i32 0, i32 2
  %93 = ptrtoint ptr %task.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %task.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %94, i32 0, i32 213
  %95 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %pagefault_disabled.i.i.i.i.i, align 8
  %inc.i.i.i.i.i = add i32 %96, 1
  store i32 %inc.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !110
  %call.i.i1.i = call ptr @__kmap_local_page_prot(ptr noundef %add.ptr.i, i32 noundef %or.i.i) #11
  %shr.i2.i = lshr i32 %74, 12
  %and.i.i427 = and i32 %shr.i2.i, 511
  %add.ptr35.i = getelementptr i32, ptr %call.i.i1.i, i32 %and.i.i427
  %97 = ptrtoint ptr %add.ptr35.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %add.ptr35.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool36.not.i = icmp eq i32 %98, 0
  %and39.i = and i32 %98, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39.i)
  %tobool40.not.i = icmp ne i32 %and39.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool43.not.i = icmp ne i32 %and4.i, 0
  %not.or.cond.i = and i1 %tobool43.not.i, %tobool40.not.i
  %narrow.i = select i1 %not.or.cond.i, i1 true, i1 %tobool36.not.i
  call void @kunmap_local_indexed(ptr noundef %add.ptr35.i) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !111
  %99 = call i32 @llvm.read_register.i32(metadata !84) #11
  %and.i.i.i1.i.i = and i32 %99, -16384
  %100 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %100, i32 0, i32 2
  %101 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %102, i32 0, i32 213
  %103 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %dec.i.i.i.i = add i32 %104, -1
  store i32 %dec.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !112
  %105 = call i32 @llvm.read_register.i32(metadata !84) #11
  %and.i.i.i.i.i = and i32 %105, -16384
  %106 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %106, i32 0, i32 1
  %107 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %108, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  br label %userfaultfd_must_wait.exit

userfaultfd_must_wait.exit:                       ; preds = %if.end22.i, %mmap_assert_locked.exit.i.userfaultfd_must_wait.exit_crit_edge
  %ret.2.off0.i = phi i1 [ %narrow.i, %if.end22.i ], [ true, %mmap_assert_locked.exit.i.userfaultfd_must_wait.exit_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@handle_userfault, %if.then.i.i)) #11
          to label %mmap_read_unlock.exit [label %if.then.i.i], !srcloc !113

if.then.i.i:                                      ; preds = %userfaultfd_must_wait.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void @__mmap_lock_do_trace_released(ptr noundef %3, i1 noundef zeroext false) #11
  br label %mmap_read_unlock.exit

mmap_read_unlock.exit:                            ; preds = %if.then.i.i, %userfaultfd_must_wait.exit
  call void @up_read(ptr noundef %mmap_lock25.i) #11
  br i1 %ret.2.off0.i, label %do.end266, label %mmap_read_unlock.exit.__here333_crit_edge, !prof !96

mmap_read_unlock.exit.__here333_crit_edge:        ; preds = %mmap_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here333

do.end266:                                        ; preds = %mmap_read_unlock.exit
  %109 = ptrtoint ptr %released to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load volatile i8, ptr %released, align 4, !range !102
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %tobool269.not = icmp eq i8 %110, 0
  br i1 %tobool269.not, label %if.then281, label %do.end266.__here333_crit_edge, !prof !96

do.end266.__here333_crit_edge:                    ; preds = %do.end266
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here333

if.then281:                                       ; preds = %do.end266
  call void @__sanitizer_cov_trace_pc() #13
  %fd_wqh = getelementptr inbounds %struct.userfaultfd_ctx, ptr %17, i32 0, i32 2
  call void @__wake_up(ptr noundef %fd_wqh, i32 noundef 3, i32 noundef 1, ptr noundef nonnull inttoptr (i32 1 to ptr)) #11
  call void @schedule() #11
  br label %__here333

__here333:                                        ; preds = %if.then281, %do.end266.__here333_crit_edge, %mmap_read_unlock.exit.__here333_crit_edge
  %111 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %task, align 8
  %task_state_change337 = getelementptr inbounds %struct.task_struct, ptr %112, i32 0, i32 212
  %113 = ptrtoint ptr %task_state_change337 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 ptrtoint (ptr blockaddress(@handle_userfault, %__here333) to i32), ptr %task_state_change337, align 4
  %114 = load ptr, ptr %task, align 8
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_store4_noabort(i32 %115)
  store volatile i32 0, ptr %114, align 128
  %116 = ptrtoint ptr %entry11.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load volatile ptr, ptr %entry11.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !114
  %cmp.i.not.i428 = icmp eq ptr %117, %entry11.i
  br i1 %cmp.i.not.i428, label %list_empty_careful.exit, label %__here333.if.then358_crit_edge

__here333.if.then358_crit_edge:                   ; preds = %__here333
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then358

list_empty_careful.exit:                          ; preds = %__here333
  %prev.i = getelementptr inbounds %struct.userfaultfd_wait_queue, ptr %uwq, i32 0, i32 1, i32 3, i32 1
  %118 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %prev.i, align 4
  %cmp.i.not = icmp eq ptr %119, %entry11.i
  br i1 %cmp.i.not, label %list_empty_careful.exit.if.end365_crit_edge, label %list_empty_careful.exit.if.then358_crit_edge

list_empty_careful.exit.if.then358_crit_edge:     ; preds = %list_empty_careful.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then358

list_empty_careful.exit.if.end365_crit_edge:      ; preds = %list_empty_careful.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end365

if.then358:                                       ; preds = %list_empty_careful.exit.if.then358_crit_edge, %__here333.if.then358_crit_edge
  call void @_raw_spin_lock_irq(ptr noundef nonnull %17) #11
  %call.i.i430 = call zeroext i1 @__list_del_entry_valid(ptr noundef %entry11.i) #11
  br i1 %call.i.i430, label %if.end.i.i432, label %if.then358.list_del.exit_crit_edge

if.then358.list_del.exit_crit_edge:               ; preds = %if.then358
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i432:                                    ; preds = %if.then358
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.userfaultfd_wait_queue, ptr %uwq, i32 0, i32 1, i32 3, i32 1
  %120 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %prev.i.i, align 4
  %122 = ptrtoint ptr %entry11.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %entry11.i, align 4
  %prev1.i.i.i431 = getelementptr inbounds %struct.list_head, ptr %123, i32 0, i32 1
  %124 = ptrtoint ptr %prev1.i.i.i431 to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %121, ptr %prev1.i.i.i431, align 4
  %125 = ptrtoint ptr %121 to i32
  call void @__asan_store4_noabort(i32 %125)
  store volatile ptr %123, ptr %121, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i432, %if.then358.list_del.exit_crit_edge
  %126 = ptrtoint ptr %entry11.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr inttoptr (i32 256 to ptr), ptr %entry11.i, align 4
  %prev.i433 = getelementptr inbounds %struct.userfaultfd_wait_queue, ptr %uwq, i32 0, i32 1, i32 3, i32 1
  %127 = ptrtoint ptr %prev.i433 to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i433, align 4
  call void @_raw_spin_unlock_irq(ptr noundef nonnull %17) #11
  br label %if.end365

if.end365:                                        ; preds = %list_del.exit, %list_empty_careful.exit.if.end365_crit_edge
  call fastcc void @userfaultfd_ctx_put(ptr noundef nonnull %17)
  br label %out

out:                                              ; preds = %if.end365, %if.end147.out_crit_edge, %do.end142, %do.end136.out_crit_edge, %do.end93.out_crit_edge, %if.then77, %land.end.out_crit_edge, %do.end55.out_crit_edge, %mmap_assert_locked.exit.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ 2, %entry.out_crit_edge ], [ 2, %do.end55.out_crit_edge ], [ 2, %do.end142 ], [ 2, %do.end136.out_crit_edge ], [ 1024, %if.end147.out_crit_edge ], [ 1024, %if.end365 ], [ 2, %mmap_assert_locked.exit.out_crit_edge ], [ 2, %if.then77 ], [ 2, %land.end.out_crit_edge ], [ 256, %do.end93.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %uwq) #11
  ret i32 %ret.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__printk_ratelimit(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @userfaultfd_wake_function(ptr noundef %wq, i32 noundef %mode, i32 noundef %wake_flags, ptr nocapture noundef readonly %key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %key, align 4
  %len2 = getelementptr inbounds %struct.userfaultfd_wake_range, ptr %key, i32 0, i32 1
  %2 = ptrtoint ptr %len2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.do.body11_crit_edge, label %land.lhs.true

entry.do.body11_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body11

land.lhs.true:                                    ; preds = %entry
  %conv = zext i32 %1 to i64
  %address = getelementptr i8, ptr %wq, i32 -16
  %4 = ptrtoint ptr %address to i32
  call void @__asan_loadN_noabort(i32 %4, i32 8)
  %5 = load i64, ptr %address, align 4
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %conv)
  %cmp = icmp ult i64 %5, %conv
  br i1 %cmp, label %land.lhs.true.out_crit_edge, label %lor.lhs.false

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

lor.lhs.false:                                    ; preds = %land.lhs.true
  %add = add i32 %3, %1
  %conv4 = zext i32 %add to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %conv4)
  %cmp8.not = icmp ult i64 %5, %conv4
  br i1 %cmp8.not, label %lor.lhs.false.do.body11_crit_edge, label %lor.lhs.false.out_crit_edge

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

lor.lhs.false.do.body11_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body11

do.body11:                                        ; preds = %lor.lhs.false.do.body11_crit_edge, %entry.do.body11_crit_edge
  %waken = getelementptr i8, ptr %wq, i32 24
  %6 = ptrtoint ptr %waken to i32
  call void @__asan_store1_noabort(i32 %6)
  store volatile i8 1, ptr %waken, align 4
  %private = getelementptr inbounds %struct.wait_queue_entry, ptr %wq, i32 0, i32 1
  %7 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %private, align 4
  %call = tail call i32 @wake_up_state(ptr noundef %8, i32 noundef %mode) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool16.not = icmp eq i32 %call, 0
  br i1 %tobool16.not, label %do.body11.out_crit_edge, label %if.then17

do.body11.out_crit_edge:                          ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then17:                                        ; preds = %do.body11
  %entry18 = getelementptr inbounds %struct.wait_queue_entry, ptr %wq, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %entry18) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.then17.list_del_init.exit_crit_edge

if.then17.list_del_init.exit_crit_edge:           ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.wait_queue_entry, ptr %wq, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %entry18 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %entry18, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then17.list_del_init.exit_crit_edge
  %15 = ptrtoint ptr %entry18 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %entry18, ptr %entry18, align 4
  %prev.i3.i = getelementptr inbounds %struct.wait_queue_entry, ptr %wq, i32 0, i32 3, i32 1
  %16 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %entry18, ptr %prev.i3.i, align 4
  br label %out

out:                                              ; preds = %list_del_init.exit, %do.body11.out_crit_edge, %lor.lhs.false.out_crit_edge, %land.lhs.true.out_crit_edge
  %ret.0 = phi i32 [ 0, %land.lhs.true.out_crit_edge ], [ 0, %lor.lhs.false.out_crit_edge ], [ %call, %list_del_init.exit ], [ 0, %do.body11.out_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @userfaultfd_ctx_put(ptr noundef %ctx) unnamed_addr #0 align 64 {
entry:
  %agg.tmp.sroa.0.i.i151 = alloca i32, align 4
  %agg.tmp.sroa.0.i.i145 = alloca i32, align 4
  %agg.tmp.sroa.0.i.i139 = alloca i32, align 4
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %refcount = getelementptr inbounds %struct.userfaultfd_ctx, ptr %ctx, i32 0, i32 5
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !115
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #11, !srcloc !116
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i157 = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i157, label %do.body, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end128_crit_edge, label %if.then10.i.i.i, !prof !96

if.end5.i.i.i.if.end128_crit_edge:                ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end128

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #11
  br label %if.end128

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !117
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %1 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %1)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr %ctx, align 4
  %2 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.i.not = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.i.not, label %do.body9, label %do.body5, !prof !96

do.body5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/userfaultfd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 170, 0\0A.popsection", ""() #11, !srcloc !118
  unreachable

do.body9:                                         ; preds = %do.body
  %head.i = getelementptr inbounds %struct.wait_queue_head, ptr %ctx, i32 0, i32 1
  %3 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %head.i, align 4
  %cmp.i.i.not = icmp eq ptr %4, %head.i
  br i1 %cmp.i.i.not, label %do.body26, label %do.body20, !prof !96

do.body20:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/userfaultfd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 171, 0\0A.popsection", ""() #11, !srcloc !119
  unreachable

do.body26:                                        ; preds = %do.body9
  %fault_wqh = getelementptr inbounds %struct.userfaultfd_ctx, ptr %ctx, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i139)
  %5 = ptrtoint ptr %fault_wqh to i32
  call void @__asan_load4_noabort(i32 %5)
  %agg.tmp.sroa.0.0.copyload.i.i140 = load volatile i32, ptr %fault_wqh, align 4
  %6 = ptrtoint ptr %agg.tmp.sroa.0.i.i139 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i140, ptr %agg.tmp.sroa.0.i.i139, align 4
  %lock.sroa.0.0.extract.shift.i.i.i141 = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i140, 16
  %conv.i.i.i142 = and i32 %agg.tmp.sroa.0.0.copyload.i.i140, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i142, i32 %lock.sroa.0.0.extract.shift.i.i.i141)
  %cmp.i.i.i143.not = icmp eq i32 %conv.i.i.i142, %lock.sroa.0.0.extract.shift.i.i.i141
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i139)
  br i1 %cmp.i.i.i143.not, label %do.body43, label %do.body37, !prof !96

do.body37:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/userfaultfd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 172, 0\0A.popsection", ""() #11, !srcloc !120
  unreachable

do.body43:                                        ; preds = %do.body26
  %head.i158 = getelementptr inbounds %struct.userfaultfd_ctx, ptr %ctx, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %head.i158 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %head.i158, align 4
  %cmp.i.i159.not = icmp eq ptr %8, %head.i158
  br i1 %cmp.i.i159.not, label %do.body60, label %do.body54, !prof !96

do.body54:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/userfaultfd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 173, 0\0A.popsection", ""() #11, !srcloc !121
  unreachable

do.body60:                                        ; preds = %do.body43
  %event_wqh = getelementptr inbounds %struct.userfaultfd_ctx, ptr %ctx, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i145)
  %9 = ptrtoint ptr %event_wqh to i32
  call void @__asan_load4_noabort(i32 %9)
  %agg.tmp.sroa.0.0.copyload.i.i146 = load volatile i32, ptr %event_wqh, align 4
  %10 = ptrtoint ptr %agg.tmp.sroa.0.i.i145 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i146, ptr %agg.tmp.sroa.0.i.i145, align 4
  %lock.sroa.0.0.extract.shift.i.i.i147 = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i146, 16
  %conv.i.i.i148 = and i32 %agg.tmp.sroa.0.0.copyload.i.i146, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i148, i32 %lock.sroa.0.0.extract.shift.i.i.i147)
  %cmp.i.i.i149.not = icmp eq i32 %conv.i.i.i148, %lock.sroa.0.0.extract.shift.i.i.i147
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i145)
  br i1 %cmp.i.i.i149.not, label %do.body77, label %do.body71, !prof !96

do.body71:                                        ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/userfaultfd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 174, 0\0A.popsection", ""() #11, !srcloc !122
  unreachable

do.body77:                                        ; preds = %do.body60
  %head.i161 = getelementptr inbounds %struct.userfaultfd_ctx, ptr %ctx, i32 0, i32 3, i32 1
  %11 = ptrtoint ptr %head.i161 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %head.i161, align 4
  %cmp.i.i162.not = icmp eq ptr %12, %head.i161
  br i1 %cmp.i.i162.not, label %do.body94, label %do.body88, !prof !96

do.body88:                                        ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/userfaultfd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 175, 0\0A.popsection", ""() #11, !srcloc !123
  unreachable

do.body94:                                        ; preds = %do.body77
  %fd_wqh = getelementptr inbounds %struct.userfaultfd_ctx, ptr %ctx, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i151)
  %13 = ptrtoint ptr %fd_wqh to i32
  call void @__asan_load4_noabort(i32 %13)
  %agg.tmp.sroa.0.0.copyload.i.i152 = load volatile i32, ptr %fd_wqh, align 4
  %14 = ptrtoint ptr %agg.tmp.sroa.0.i.i151 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i152, ptr %agg.tmp.sroa.0.i.i151, align 4
  %lock.sroa.0.0.extract.shift.i.i.i153 = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i152, 16
  %conv.i.i.i154 = and i32 %agg.tmp.sroa.0.0.copyload.i.i152, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i154, i32 %lock.sroa.0.0.extract.shift.i.i.i153)
  %cmp.i.i.i155.not = icmp eq i32 %conv.i.i.i154, %lock.sroa.0.0.extract.shift.i.i.i153
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i151)
  br i1 %cmp.i.i.i155.not, label %do.body111, label %do.body105, !prof !96

do.body105:                                       ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/userfaultfd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 176, 0\0A.popsection", ""() #11, !srcloc !124
  unreachable

do.body111:                                       ; preds = %do.body94
  %head.i164 = getelementptr inbounds %struct.userfaultfd_ctx, ptr %ctx, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %head.i164 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %head.i164, align 4
  %cmp.i.i165.not = icmp eq ptr %16, %head.i164
  br i1 %cmp.i.i165.not, label %do.end127, label %do.body122, !prof !96

do.body122:                                       ; preds = %do.body111
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/userfaultfd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 177, 0\0A.popsection", ""() #11, !srcloc !125
  unreachable

do.end127:                                        ; preds = %do.body111
  %mm = getelementptr inbounds %struct.userfaultfd_ctx, ptr %ctx, i32 0, i32 10
  %17 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mm, align 4
  %mm_count.i = getelementptr inbounds %struct.anon.0, ptr %18, i32 0, i32 11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %mm_count.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !126
  tail call void @llvm.prefetch.p0(ptr %mm_count.i, i32 1, i32 3, i32 1) #11
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %mm_count.i, ptr %mm_count.i, i32 1, ptr elementtype(i32) %mm_count.i) #11, !srcloc !127
  %asmresult.i.i.i.i.i.i167 = extractvalue { i32, i32 } %19, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i167)
  %cmp.i.i.i168 = icmp eq i32 %asmresult.i.i.i.i.i.i167, 0
  br i1 %cmp.i.i.i168, label %if.then.i, label %do.end127.mmdrop.exit_crit_edge, !prof !94

do.end127.mmdrop.exit_crit_edge:                  ; preds = %do.end127
  call void @__sanitizer_cov_trace_pc() #13
  br label %mmdrop.exit

if.then.i:                                        ; preds = %do.end127
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__mmdrop(ptr noundef %18) #11
  br label %mmdrop.exit

mmdrop.exit:                                      ; preds = %if.then.i, %do.end127.mmdrop.exit_crit_edge
  %20 = load ptr, ptr @userfaultfd_ctx_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %20, ptr noundef %ctx) #11
  br label %if.end128

if.end128:                                        ; preds = %mmdrop.exit, %if.then10.i.i.i, %if.end5.i.i.i.if.end128_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dup_userfaultfd(ptr nocapture noundef %vma, ptr noundef %fcs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_userfaultfd_ctx = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 17
  %0 = ptrtoint ptr %vm_userfaultfd_ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vm_userfaultfd_ctx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %features = getelementptr inbounds %struct.userfaultfd_ctx, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %features, align 4
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.for.cond_crit_edge

lor.lhs.false.for.cond_crit_edge:                 ; preds = %lor.lhs.false
  br label %for.cond

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %4 = ptrtoint ptr %vm_userfaultfd_ctx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %vm_userfaultfd_ctx, align 4
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %5 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %vm_flags, align 4
  %and5 = and i32 %6, -4609
  store i32 %and5, ptr %vm_flags, align 4
  br label %cleanup

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %lor.lhs.false.for.cond_crit_edge
  %.pn.in = phi ptr [ %.pn, %for.body.for.cond_crit_edge ], [ %fcs, %lor.lhs.false.for.cond_crit_edge ]
  %7 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %fcs
  br i1 %cmp.not, label %for.cond.if.then15_crit_edge, label %for.body

for.cond.if.then15_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then15

for.body:                                         ; preds = %for.cond
  %fctx.0 = getelementptr i8, ptr %.pn, i32 -8
  %8 = ptrtoint ptr %fctx.0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fctx.0, align 4
  %cmp6 = icmp eq ptr %9, %1
  br i1 %cmp6, label %for.end, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond

for.end:                                          ; preds = %for.body
  %new = getelementptr i8, ptr %.pn, i32 -4
  %10 = ptrtoint ptr %new to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %new, align 4
  %tobool14.not = icmp eq ptr %11, null
  br i1 %tobool14.not, label %for.end.if.then15_crit_edge, label %for.end.if.end31_crit_edge

for.end.if.end31_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

for.end.if.then15_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then15

if.then15:                                        ; preds = %for.end.if.then15_crit_edge, %for.cond.if.then15_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3264, i32 noundef 16) #15
  %tobool16.not = icmp eq ptr %call7.i, null
  br i1 %tobool16.not, label %if.then15.cleanup_crit_edge, label %if.end18

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end18:                                         ; preds = %if.then15
  %13 = load ptr, ptr @userfaultfd_ctx_cachep, align 4
  %call19 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %13, i32 noundef 3264) #11
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i) #11
  br label %cleanup

if.end22:                                         ; preds = %if.end18
  %refcount = getelementptr inbounds %struct.userfaultfd_ctx, ptr %call19, i32 0, i32 5
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #11
  %14 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 1, ptr %refcount, align 4
  %flags = getelementptr inbounds %struct.userfaultfd_ctx, ptr %1, i32 0, i32 6
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags, align 4
  %flags23 = getelementptr inbounds %struct.userfaultfd_ctx, ptr %call19, i32 0, i32 6
  %17 = ptrtoint ptr %flags23 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %flags23, align 8
  %18 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %features, align 4
  %features25 = getelementptr inbounds %struct.userfaultfd_ctx, ptr %call19, i32 0, i32 7
  %20 = ptrtoint ptr %features25 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %features25, align 4
  %released = getelementptr inbounds %struct.userfaultfd_ctx, ptr %call19, i32 0, i32 8
  %21 = ptrtoint ptr %released to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %released, align 8
  %mmap_changing = getelementptr inbounds %struct.userfaultfd_ctx, ptr %call19, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %mmap_changing, i32 noundef 4) #11
  %22 = ptrtoint ptr %mmap_changing to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 0, ptr %mmap_changing, align 4
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 6
  %23 = ptrtoint ptr %vm_mm to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %vm_mm, align 4
  %mm = getelementptr inbounds %struct.userfaultfd_ctx, ptr %call19, i32 0, i32 10
  %25 = ptrtoint ptr %mm to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %mm, align 8
  %mm_count.i = getelementptr inbounds %struct.anon.0, ptr %24, i32 0, i32 11
  %call.i.i.i68 = tail call zeroext i1 @__kasan_check_write(ptr noundef %mm_count.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %mm_count.i, i32 1, i32 3, i32 1) #11
  %26 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %mm_count.i, ptr %mm_count.i, i32 1, ptr elementtype(i32) %mm_count.i) #11, !srcloc !129
  %refcount.i = getelementptr inbounds %struct.userfaultfd_ctx, ptr %1, i32 0, i32 5
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #11
  %27 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #11, !srcloc !104
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end22.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !94

if.end22.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end22
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %28 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %28)
  %.not.i.i.i.i = icmp sgt i32 %28, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.userfaultfd_ctx_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !96

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.userfaultfd_ctx_get.exit_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %userfaultfd_ctx_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end22.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end22.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef %.sink.i.i.i.i) #11
  br label %userfaultfd_ctx_get.exit

userfaultfd_ctx_get.exit:                         ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.userfaultfd_ctx_get.exit_crit_edge
  %mmap_changing27 = getelementptr inbounds %struct.userfaultfd_ctx, ptr %1, i32 0, i32 9
  %call.i.i67 = tail call zeroext i1 @__kasan_check_write(ptr noundef %mmap_changing27, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %mmap_changing27, i32 1, i32 3, i32 1) #11
  %29 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %mmap_changing27, ptr %mmap_changing27, i32 1, ptr elementtype(i32) %mmap_changing27) #11, !srcloc !129
  %30 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %1, ptr %call7.i, align 8
  %new29 = getelementptr inbounds %struct.userfaultfd_fork_ctx, ptr %call7.i, i32 0, i32 1
  %31 = ptrtoint ptr %new29 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call19, ptr %new29, align 4
  %list30 = getelementptr inbounds %struct.userfaultfd_fork_ctx, ptr %call7.i, i32 0, i32 2
  %prev.i = getelementptr inbounds %struct.list_head, ptr %fcs, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i, align 4
  %call.i.i69 = tail call zeroext i1 @__list_add_valid(ptr noundef %list30, ptr noundef %33, ptr noundef %fcs) #11
  br i1 %call.i.i69, label %if.end.i.i, label %userfaultfd_ctx_get.exit.if.end31_crit_edge

userfaultfd_ctx_get.exit.if.end31_crit_edge:      ; preds = %userfaultfd_ctx_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

if.end.i.i:                                       ; preds = %userfaultfd_ctx_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  %34 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %list30, ptr %prev.i, align 4
  %35 = ptrtoint ptr %list30 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %fcs, ptr %list30, align 8
  %prev3.i.i = getelementptr inbounds %struct.userfaultfd_fork_ctx, ptr %call7.i, i32 0, i32 2, i32 1
  %36 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev3.i.i, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %list30, ptr %33, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.end.i.i, %userfaultfd_ctx_get.exit.if.end31_crit_edge, %for.end.if.end31_crit_edge
  %ctx.1 = phi ptr [ %11, %for.end.if.end31_crit_edge ], [ %call19, %userfaultfd_ctx_get.exit.if.end31_crit_edge ], [ %call19, %if.end.i.i ]
  %38 = ptrtoint ptr %vm_userfaultfd_ctx to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %ctx.1, ptr %vm_userfaultfd_ctx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.then21, %if.then15.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.end31 ], [ -12, %if.then21 ], [ 0, %if.then ], [ -12, %if.then15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dup_userfaultfd_complete(ptr noundef readonly %fcs) local_unnamed_addr #0 align 64 {
entry:
  %ewq.i = alloca %struct.userfaultfd_wait_queue, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcs, align 4
  %cmp.not19 = icmp eq ptr %1, %fcs
  br i1 %cmp.not19, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %2 = getelementptr inbounds i8, ptr %ewq.i, i32 32
  %arg.i = getelementptr inbounds %struct.uffd_msg, ptr %ewq.i, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %for.body.lr.ph
  %.pn.in20 = phi ptr [ %1, %for.body.lr.ph ], [ %.pn, %list_del.exit.for.body_crit_edge ]
  %fctx.0 = getelementptr i8, ptr %.pn.in20, i32 -8
  %3 = ptrtoint ptr %.pn.in20 to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn = load ptr, ptr %.pn.in20, align 4
  %4 = ptrtoint ptr %fctx.0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fctx.0, align 4
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %ewq.i) #11
  %6 = call ptr @memset(ptr %2, i32 255, i32 28)
  %7 = call ptr @memset(ptr %ewq.i, i32 0, i32 32)
  %8 = ptrtoint ptr %ewq.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 19, ptr %ewq.i, align 4
  %new.i = getelementptr i8, ptr %.pn.in20, i32 -4
  %9 = ptrtoint ptr %new.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %new.i, align 4
  %11 = ptrtoint ptr %10 to i32
  %conv.i = zext i32 %11 to i64
  %12 = ptrtoint ptr %arg.i to i32
  call void @__asan_storeN_noabort(i32 %12, i32 8)
  store i64 %conv.i, ptr %arg.i, align 4
  call fastcc void @userfaultfd_event_wait_completion(ptr noundef %5, ptr noundef nonnull %ewq.i) #11
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %ewq.i) #11
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in20) #11
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in20, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i, align 4
  %15 = ptrtoint ptr %.pn.in20 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %.pn.in20, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %19 = ptrtoint ptr %.pn.in20 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in20, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in20, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @kfree(ptr noundef %fctx.0) #11
  %cmp.not = icmp eq ptr %.pn, %fcs
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mremap_userfaultfd_prep(ptr nocapture noundef %vma, ptr nocapture noundef writeonly %vm_ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_userfaultfd_ctx = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 17
  %0 = ptrtoint ptr %vm_userfaultfd_ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vm_userfaultfd_ctx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %features = getelementptr inbounds %struct.userfaultfd_ctx, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %features, align 4
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  %4 = ptrtoint ptr %vm_ctx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %vm_ctx, align 4
  %refcount.i = getelementptr inbounds %struct.userfaultfd_ctx, ptr %1, i32 0, i32 5
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #11
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #11, !srcloc !104
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then3.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !94

if.then3.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then3
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %6 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %.not.i.i.i.i = icmp sgt i32 %6, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.userfaultfd_ctx_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !96

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.userfaultfd_ctx_get.exit_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %userfaultfd_ctx_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then3.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then3.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef %.sink.i.i.i.i) #11
  br label %userfaultfd_ctx_get.exit

userfaultfd_ctx_get.exit:                         ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.userfaultfd_ctx_get.exit_crit_edge
  %mmap_changing = getelementptr inbounds %struct.userfaultfd_ctx, ptr %1, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %mmap_changing, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %mmap_changing, i32 1, i32 3, i32 1) #11
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %mmap_changing, ptr %mmap_changing, i32 1, ptr elementtype(i32) %mmap_changing) #11, !srcloc !129
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %vm_userfaultfd_ctx to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %vm_userfaultfd_ctx, align 4
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %9 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vm_flags, align 4
  %and7 = and i32 %10, -4609
  store i32 %and7, ptr %vm_flags, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %userfaultfd_ctx_get.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mremap_userfaultfd_complete(ptr nocapture noundef readonly %vm_ctx, i32 noundef %from, i32 noundef %to, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %ewq = alloca %struct.userfaultfd_wait_queue, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vm_ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vm_ctx, align 4
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %ewq) #11
  %2 = getelementptr inbounds i8, ptr %ewq, i32 32
  %3 = call ptr @memset(ptr %2, i32 255, i32 28)
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %to, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @userfaultfd_ctx_put(ptr noundef nonnull %1)
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %ewq to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %ewq, align 8
  store i8 20, ptr %ewq, align 8
  %conv = zext i32 %from to i64
  %arg = getelementptr inbounds %struct.uffd_msg, ptr %ewq, i32 0, i32 4
  %5 = ptrtoint ptr %arg to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %conv, ptr %arg, align 8
  %conv8 = zext i32 %to to i64
  %to11 = getelementptr inbounds %struct.uffd_msg, ptr %ewq, i32 0, i32 4, i32 0, i32 1
  %6 = ptrtoint ptr %to11 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %conv8, ptr %to11, align 8
  %conv12 = zext i32 %len to i64
  %len15 = getelementptr inbounds %struct.uffd_msg, ptr %ewq, i32 0, i32 4, i32 0, i32 2
  %7 = ptrtoint ptr %len15 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %conv12, ptr %len15, align 8
  call fastcc void @userfaultfd_event_wait_completion(ptr noundef nonnull %1, ptr noundef nonnull %ewq)
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then3, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %ewq) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @userfaultfd_event_wait_completion(ptr noundef %ctx, ptr noundef %ewq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !84) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %flags = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end38.critedge, label %land.rhs

land.rhs:                                         ; preds = %entry
  %.b295 = load i1, ptr @userfaultfd_event_wait_completion.__already_done, align 1
  br i1 %.b295, label %land.rhs.out_crit_edge, label %if.then, !prof !96

land.rhs.out_crit_edge:                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @userfaultfd_event_wait_completion.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 560, i32 noundef 9, ptr noundef null) #11
  br label %out

if.end38.critedge:                                ; preds = %entry
  %ctx39 = getelementptr inbounds %struct.userfaultfd_wait_queue, ptr %ewq, i32 0, i32 2
  %6 = ptrtoint ptr %ctx39 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %ctx, ptr %ctx39, align 4
  %wq = getelementptr inbounds %struct.userfaultfd_wait_queue, ptr %ewq, i32 0, i32 1
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %9 = ptrtoint ptr %wq to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %wq, align 4
  %private.i = getelementptr inbounds %struct.userfaultfd_wait_queue, ptr %ewq, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %8, ptr %private.i, align 4
  %func.i = getelementptr inbounds %struct.userfaultfd_wait_queue, ptr %ewq, i32 0, i32 1, i32 2
  %11 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @default_wake_function, ptr %func.i, align 4
  %event_wqh = getelementptr inbounds %struct.userfaultfd_ctx, ptr %ctx, i32 0, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %event_wqh) #11
  %head1.i = getelementptr inbounds %struct.userfaultfd_ctx, ptr %ctx, i32 0, i32 3, i32 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end38.critedge
  %head.0.i = phi ptr [ %head1.i, %if.end38.critedge ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %12 = ptrtoint ptr %head.0.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn.i = load ptr, ptr %head.0.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %head1.i
  br i1 %cmp.not.i, label %for.cond.i.for.end.i_crit_edge, label %for.body.i

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i:                                       ; preds = %for.cond.i
  %wq.0.i = getelementptr i8, ptr %.pn.i, i32 -12
  %13 = ptrtoint ptr %wq.0.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %wq.0.i, align 4
  %and.i298 = and i32 %14, 32
  %tobool.not.i = icmp eq i32 %and.i298, 0
  br i1 %tobool.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.i.for.end.i_crit_edge
  %.pn.lcssa.i = phi ptr [ %.pn.i, %for.body.i.for.end.i_crit_edge ], [ %head1.i, %for.cond.i.for.end.i_crit_edge ]
  %entry11.i = getelementptr inbounds %struct.userfaultfd_wait_queue, ptr %ewq, i32 0, i32 1, i32 3
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %entry11.i, ptr noundef %head.0.i, ptr noundef %.pn.lcssa.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.end.i.__add_wait_queue.exit_crit_edge

for.end.i.__add_wait_queue.exit_crit_edge:        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__add_wait_queue.exit

if.end.i.i.i:                                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.lcssa.i, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %entry11.i, ptr %prev1.i.i.i, align 4
  %16 = ptrtoint ptr %entry11.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %.pn.lcssa.i, ptr %entry11.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.userfaultfd_wait_queue, ptr %ewq, i32 0, i32 1, i32 3, i32 1
  %17 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %head.0.i, ptr %prev3.i.i.i, align 4
  %18 = ptrtoint ptr %head.0.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %entry11.i, ptr %head.0.i, align 4
  br label %__add_wait_queue.exit

__add_wait_queue.exit:                            ; preds = %if.end.i.i.i, %for.end.i.__add_wait_queue.exit_crit_edge
  %released = getelementptr inbounds %struct.userfaultfd_ctx, ptr %ctx, i32 0, i32 8
  %fd_wqh = getelementptr inbounds %struct.userfaultfd_ctx, ptr %ctx, i32 0, i32 2
  br label %__here

__here:                                           ; preds = %if.end148, %__add_wait_queue.exit
  %19 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 212
  %21 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 ptrtoint (ptr blockaddress(@userfaultfd_event_wait_completion, %__here) to i32), ptr %task_state_change, align 4
  %22 = load ptr, ptr %task, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile i32 258, ptr %22, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !130
  %24 = ptrtoint ptr %ewq to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %ewq, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp = icmp eq i8 %25, 0
  br i1 %cmp, label %__here.__here204_crit_edge, label %do.end126

__here.__here204_crit_edge:                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here204

do.end126:                                        ; preds = %__here
  %26 = ptrtoint ptr %released to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load volatile i8, ptr %released, align 4, !range !102
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool128.not = icmp eq i8 %27, 0
  br i1 %tobool128.not, label %lor.lhs.false, label %do.end126.if.then136_crit_edge

do.end126.if.then136_crit_edge:                   ; preds = %do.end126
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then136

lor.lhs.false:                                    ; preds = %do.end126
  %28 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %task, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %stack.i.i.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %31, align 4
  %and1.i.i.i.i.i = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool.not.i299 = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool.not.i299, label %lor.lhs.false.if.end148_crit_edge, label %fatal_signal_pending.exit

lor.lhs.false.if.end148_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end148

fatal_signal_pending.exit:                        ; preds = %lor.lhs.false
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 116, i32 1
  %34 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %signal.i.i, align 4
  %36 = and i32 %35, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool135.not = icmp eq i32 %36, 0
  br i1 %tobool135.not, label %fatal_signal_pending.exit.if.end148_crit_edge, label %fatal_signal_pending.exit.if.then136_crit_edge

fatal_signal_pending.exit.if.then136_crit_edge:   ; preds = %fatal_signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then136

fatal_signal_pending.exit.if.end148_crit_edge:    ; preds = %fatal_signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end148

if.then136:                                       ; preds = %fatal_signal_pending.exit.if.then136_crit_edge, %do.end126.if.then136_crit_edge
  %call.i.i.i300 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %entry11.i) #11
  br i1 %call.i.i.i300, label %if.end.i.i.i301, label %if.then136.__remove_wait_queue.exit_crit_edge

if.then136.__remove_wait_queue.exit_crit_edge:    ; preds = %if.then136
  call void @__sanitizer_cov_trace_pc() #13
  br label %__remove_wait_queue.exit

if.end.i.i.i301:                                  ; preds = %if.then136
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.userfaultfd_wait_queue, ptr %ewq, i32 0, i32 1, i32 3, i32 1
  %37 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev.i.i.i, align 4
  %39 = ptrtoint ptr %entry11.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %entry11.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev1.i.i.i.i, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %40, ptr %38, align 4
  br label %__remove_wait_queue.exit

__remove_wait_queue.exit:                         ; preds = %if.end.i.i.i301, %if.then136.__remove_wait_queue.exit_crit_edge
  %43 = ptrtoint ptr %entry11.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr inttoptr (i32 256 to ptr), ptr %entry11.i, align 4
  %prev.i.i = getelementptr inbounds %struct.userfaultfd_wait_queue, ptr %ewq, i32 0, i32 1, i32 3, i32 1
  %44 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %45 = ptrtoint ptr %ewq to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %ewq, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %46)
  %cmp142 = icmp eq i8 %46, 19
  br i1 %cmp142, label %if.then144, label %__remove_wait_queue.exit.__here204_crit_edge

__remove_wait_queue.exit.__here204_crit_edge:     ; preds = %__remove_wait_queue.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here204

if.then144:                                       ; preds = %__remove_wait_queue.exit
  call void @__sanitizer_cov_trace_pc() #13
  %arg = getelementptr inbounds %struct.uffd_msg, ptr %ewq, i32 0, i32 4
  %47 = ptrtoint ptr %arg to i32
  call void @__asan_loadN_noabort(i32 %47, i32 8)
  %48 = load i64, ptr %arg, align 4
  %conv146 = trunc i64 %48 to i32
  %49 = inttoptr i32 %conv146 to ptr
  br label %__here204

if.end148:                                        ; preds = %fatal_signal_pending.exit.if.end148_crit_edge, %lor.lhs.false.if.end148_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %event_wqh) #11
  tail call void @__wake_up(ptr noundef %fd_wqh, i32 noundef 3, i32 noundef 1, ptr noundef nonnull inttoptr (i32 1 to ptr)) #11
  tail call void @schedule() #11
  tail call void @_raw_spin_lock_irq(ptr noundef %event_wqh) #11
  br label %__here

__here204:                                        ; preds = %if.then144, %__remove_wait_queue.exit.__here204_crit_edge, %__here.__here204_crit_edge
  %release_new_ctx.0 = phi ptr [ %49, %if.then144 ], [ null, %__remove_wait_queue.exit.__here204_crit_edge ], [ null, %__here.__here204_crit_edge ]
  %50 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %task, align 8
  %task_state_change208 = getelementptr inbounds %struct.task_struct, ptr %51, i32 0, i32 212
  %52 = ptrtoint ptr %task_state_change208 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 ptrtoint (ptr blockaddress(@userfaultfd_event_wait_completion, %__here204) to i32), ptr %task_state_change208, align 4
  %53 = load ptr, ptr %task, align 8
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile i32 0, ptr %53, align 128
  tail call void @_raw_spin_unlock_irq(ptr noundef %event_wqh) #11
  %tobool227.not = icmp eq ptr %release_new_ctx.0, null
  br i1 %tobool227.not, label %__here204.out_crit_edge, label %if.then228

__here204.out_crit_edge:                          ; preds = %__here204
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then228:                                       ; preds = %__here204
  %mm229 = getelementptr inbounds %struct.userfaultfd_ctx, ptr %release_new_ctx.0, i32 0, i32 10
  %55 = ptrtoint ptr %mm229 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %mm229, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@userfaultfd_event_wait_completion, %if.then.i.i)) #11
          to label %__mmap_lock_trace_start_locking.exit.i [label %if.then.i.i], !srcloc !113

if.then.i.i:                                      ; preds = %if.then228
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %56, i1 noundef zeroext true) #11
  br label %__mmap_lock_trace_start_locking.exit.i

__mmap_lock_trace_start_locking.exit.i:           ; preds = %if.then.i.i, %if.then228
  %mmap_lock.i = getelementptr inbounds %struct.anon.0, ptr %56, i32 0, i32 15
  tail call void @down_write(ptr noundef %mmap_lock.i) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@userfaultfd_event_wait_completion, %if.then.i3.i)) #11
          to label %mmap_write_lock.exit [label %if.then.i3.i], !srcloc !113

if.then.i3.i:                                     ; preds = %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %56, i1 noundef zeroext true, i1 noundef zeroext true) #11
  br label %mmap_write_lock.exit

mmap_write_lock.exit:                             ; preds = %if.then.i3.i, %__mmap_lock_trace_start_locking.exit.i
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %vma.0305 = load ptr, ptr %56, align 4
  %tobool231.not306 = icmp eq ptr %vma.0305, null
  br i1 %tobool231.not306, label %mmap_write_lock.exit.for.end240_crit_edge, label %mmap_write_lock.exit.for.body_crit_edge

mmap_write_lock.exit.for.body_crit_edge:          ; preds = %mmap_write_lock.exit
  br label %for.body

mmap_write_lock.exit.for.end240_crit_edge:        ; preds = %mmap_write_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end240

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %mmap_write_lock.exit.for.body_crit_edge
  %vma.0307 = phi ptr [ %vma.0, %for.inc.for.body_crit_edge ], [ %vma.0305, %mmap_write_lock.exit.for.body_crit_edge ]
  %vm_userfaultfd_ctx = getelementptr inbounds %struct.vm_area_struct, ptr %vma.0307, i32 0, i32 17
  %58 = ptrtoint ptr %vm_userfaultfd_ctx to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %vm_userfaultfd_ctx, align 4
  %cmp233 = icmp eq ptr %59, %release_new_ctx.0
  br i1 %cmp233, label %if.then235, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then235:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %60 = ptrtoint ptr %vm_userfaultfd_ctx to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %vm_userfaultfd_ctx, align 4
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %vma.0307, i32 0, i32 8
  %61 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %vm_flags, align 4
  %and238 = and i32 %62, -4609
  store i32 %and238, ptr %vm_flags, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then235, %for.body.for.inc_crit_edge
  %vm_next = getelementptr inbounds %struct.vm_area_struct, ptr %vma.0307, i32 0, i32 2
  %63 = ptrtoint ptr %vm_next to i32
  call void @__asan_load4_noabort(i32 %63)
  %vma.0 = load ptr, ptr %vm_next, align 4
  %tobool231.not = icmp eq ptr %vma.0, null
  br i1 %tobool231.not, label %for.inc.for.end240_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end240_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end240

for.end240:                                       ; preds = %for.inc.for.end240_crit_edge, %mmap_write_lock.exit.for.end240_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@userfaultfd_event_wait_completion, %if.then.i.i302)) #11
          to label %mmap_write_unlock.exit [label %if.then.i.i302], !srcloc !113

if.then.i.i302:                                   ; preds = %for.end240
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__mmap_lock_do_trace_released(ptr noundef %56, i1 noundef zeroext true) #11
  br label %mmap_write_unlock.exit

mmap_write_unlock.exit:                           ; preds = %if.then.i.i302, %for.end240
  tail call void @up_write(ptr noundef %mmap_lock.i) #11
  tail call fastcc void @userfaultfd_ctx_put(ptr noundef nonnull %release_new_ctx.0)
  br label %out

out:                                              ; preds = %mmap_write_unlock.exit, %__here204.out_crit_edge, %if.then, %land.rhs.out_crit_edge
  %mmap_changing = getelementptr inbounds %struct.userfaultfd_ctx, ptr %ctx, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %mmap_changing, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %mmap_changing, i32 1, i32 3, i32 1) #11
  %64 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %mmap_changing, ptr %mmap_changing, i32 1, ptr elementtype(i32) %mmap_changing) #11, !srcloc !131
  %call.i.i297 = tail call zeroext i1 @__kasan_check_read(ptr noundef %mmap_changing, i32 noundef 4) #11
  %65 = ptrtoint ptr %mmap_changing to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %mmap_changing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp245 = icmp slt i32 %66, 0
  br i1 %cmp245, label %do.body254, label %do.end262, !prof !94

do.body254:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/userfaultfd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 629, 0\0A.popsection", ""() #11, !srcloc !132
  unreachable

do.end262:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @userfaultfd_ctx_put(ptr noundef %ctx)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @userfaultfd_remove(ptr nocapture noundef readonly %vma, i32 noundef %start, i32 noundef %end) local_unnamed_addr #0 align 64 {
entry:
  %ewq = alloca %struct.userfaultfd_wait_queue, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 6
  %0 = ptrtoint ptr %vm_mm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vm_mm, align 4
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %ewq) #11
  %2 = getelementptr inbounds i8, ptr %ewq, i32 32
  %3 = call ptr @memset(ptr %2, i32 255, i32 28)
  %vm_userfaultfd_ctx = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 17
  %4 = ptrtoint ptr %vm_userfaultfd_ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vm_userfaultfd_ctx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %features = getelementptr inbounds %struct.userfaultfd_ctx, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %features, align 4
  %and = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %refcount.i = getelementptr inbounds %struct.userfaultfd_ctx, ptr %5, i32 0, i32 5
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #11
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #11, !srcloc !104
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !94

if.end.if.end15.sink.split.i.i.i.i_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %9 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %.not.i.i.i.i = icmp sgt i32 %9, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.userfaultfd_ctx_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !96

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.userfaultfd_ctx_get.exit_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %userfaultfd_ctx_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef %.sink.i.i.i.i) #11
  br label %userfaultfd_ctx_get.exit

userfaultfd_ctx_get.exit:                         ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.userfaultfd_ctx_get.exit_crit_edge
  %mmap_changing = getelementptr inbounds %struct.userfaultfd_ctx, ptr %5, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %mmap_changing, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %mmap_changing, i32 1, i32 3, i32 1) #11
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %mmap_changing, ptr %mmap_changing, i32 1, ptr elementtype(i32) %mmap_changing) #11, !srcloc !129
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@userfaultfd_remove, %if.then.i.i)) #11
          to label %mmap_read_unlock.exit [label %if.then.i.i], !srcloc !113

if.then.i.i:                                      ; preds = %userfaultfd_ctx_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__mmap_lock_do_trace_released(ptr noundef %1, i1 noundef zeroext false) #11
  br label %mmap_read_unlock.exit

mmap_read_unlock.exit:                            ; preds = %if.then.i.i, %userfaultfd_ctx_get.exit
  %mmap_lock.i = getelementptr inbounds %struct.anon.0, ptr %1, i32 0, i32 15
  tail call void @up_read(ptr noundef %mmap_lock.i) #11
  %11 = call ptr @memset(ptr %ewq, i32 0, i32 32)
  %12 = ptrtoint ptr %ewq to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 21, ptr %ewq, align 4
  %conv = zext i32 %start to i64
  %arg = getelementptr inbounds %struct.uffd_msg, ptr %ewq, i32 0, i32 4
  %13 = ptrtoint ptr %arg to i32
  call void @__asan_storeN_noabort(i32 %13, i32 8)
  store i64 %conv, ptr %arg, align 4
  %conv6 = zext i32 %end to i64
  %end9 = getelementptr inbounds %struct.uffd_msg, ptr %ewq, i32 0, i32 4, i32 0, i32 1
  %14 = ptrtoint ptr %end9 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 8)
  store i64 %conv6, ptr %end9, align 4
  call fastcc void @userfaultfd_event_wait_completion(ptr noundef nonnull %5, ptr noundef nonnull %ewq)
  br label %cleanup

cleanup:                                          ; preds = %mmap_read_unlock.exit, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %mmap_read_unlock.exit ], [ true, %lor.lhs.false.cleanup_crit_edge ], [ true, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %ewq) #11
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @userfaultfd_unmap_prep(ptr noundef readonly %vma, i32 noundef %start, i32 noundef %end, ptr noundef %unmaps) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not34 = icmp eq ptr %vma, null
  br i1 %tobool.not34, label %entry.return_crit_edge, label %land.rhs.lr.ph

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

land.rhs.lr.ph:                                   ; preds = %entry
  %prev.i = getelementptr inbounds %struct.list_head, ptr %unmaps, i32 0, i32 1
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %land.rhs.lr.ph
  %vma.addr.035 = phi ptr [ %vma, %land.rhs.lr.ph ], [ %28, %for.inc.land.rhs_crit_edge ]
  %0 = ptrtoint ptr %vma.addr.035 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vma.addr.035, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %end)
  %cmp = icmp ult i32 %1, %end
  br i1 %cmp, label %for.body, label %land.rhs.return_crit_edge

land.rhs.return_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

for.body:                                         ; preds = %land.rhs
  %vm_userfaultfd_ctx = getelementptr inbounds %struct.vm_area_struct, ptr %vma.addr.035, i32 0, i32 17
  %2 = ptrtoint ptr %vm_userfaultfd_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vm_userfaultfd_ctx, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %for.body.for.inc_crit_edge, label %lor.lhs.false

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %features = getelementptr inbounds %struct.userfaultfd_ctx, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %features, align 4
  %and = and i32 %5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %lor.lhs.false.for.inc_crit_edge, label %lor.lhs.false4

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %6 = ptrtoint ptr %unmaps to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn18.i = load ptr, ptr %unmaps, align 4
  %cmp.not19.i = icmp eq ptr %.pn18.i, %unmaps
  br i1 %cmp.not19.i, label %lor.lhs.false4.if.end_crit_edge, label %lor.lhs.false4.for.body.i_crit_edge

lor.lhs.false4.for.body.i_crit_edge:              ; preds = %lor.lhs.false4
  br label %for.body.i

lor.lhs.false4.if.end_crit_edge:                  ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %lor.lhs.false4.for.body.i_crit_edge
  %.pn20.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn18.i, %lor.lhs.false4.for.body.i_crit_edge ]
  %unmap_ctx.0.i = getelementptr i8, ptr %.pn20.i, i32 -12
  %7 = ptrtoint ptr %unmap_ctx.0.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %unmap_ctx.0.i, align 4
  %cmp2.i = icmp eq ptr %8, %3
  br i1 %cmp2.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %start3.i = getelementptr i8, ptr %.pn20.i, i32 -8
  %9 = ptrtoint ptr %start3.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %start3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %start)
  %cmp4.i = icmp eq i32 %10, %start
  br i1 %cmp4.i, label %land.lhs.true5.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %end6.i = getelementptr i8, ptr %.pn20.i, i32 -4
  %11 = ptrtoint ptr %end6.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %end6.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %end)
  %cmp7.i = icmp eq i32 %12, %end
  br i1 %cmp7.i, label %land.lhs.true5.i.for.inc_crit_edge, label %land.lhs.true5.i.for.inc.i_crit_edge

land.lhs.true5.i.for.inc.i_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true5.i.for.inc_crit_edge:               ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.inc.i:                                        ; preds = %land.lhs.true5.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %13 = ptrtoint ptr %.pn20.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn.i = load ptr, ptr %.pn20.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %unmaps
  br i1 %cmp.not.i, label %for.inc.i.if.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %for.inc.i.if.end_crit_edge, %lor.lhs.false4.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 20) #15
  %tobool6.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool6.not, label %if.end.return_crit_edge, label %if.end8

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end8:                                          ; preds = %if.end
  %refcount.i = getelementptr inbounds %struct.userfaultfd_ctx, ptr %3, i32 0, i32 5
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #11
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #11, !srcloc !104
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end8.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !94

if.end8.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end8
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %16 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %.not.i.i.i.i = icmp sgt i32 %16, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.userfaultfd_ctx_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !96

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.userfaultfd_ctx_get.exit_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %userfaultfd_ctx_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end8.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end8.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef %.sink.i.i.i.i) #11
  br label %userfaultfd_ctx_get.exit

userfaultfd_ctx_get.exit:                         ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.userfaultfd_ctx_get.exit_crit_edge
  %mmap_changing = getelementptr inbounds %struct.userfaultfd_ctx, ptr %3, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %mmap_changing, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %mmap_changing, i32 1, i32 3, i32 1) #11
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %mmap_changing, ptr %mmap_changing, i32 1, ptr elementtype(i32) %mmap_changing) #11, !srcloc !129
  %18 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %3, ptr %call7.i.i, align 8
  %start10 = getelementptr inbounds %struct.userfaultfd_unmap_ctx, ptr %call7.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %start10 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %start, ptr %start10, align 4
  %end11 = getelementptr inbounds %struct.userfaultfd_unmap_ctx, ptr %call7.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %end11 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %end, ptr %end11, align 8
  %list = getelementptr inbounds %struct.userfaultfd_unmap_ctx, ptr %call7.i.i, i32 0, i32 3
  %21 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i, align 4
  %call.i.i29 = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %22, ptr noundef %unmaps) #11
  br i1 %call.i.i29, label %if.end.i.i, label %userfaultfd_ctx_get.exit.for.inc_crit_edge

userfaultfd_ctx_get.exit.for.inc_crit_edge:       ; preds = %userfaultfd_ctx_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end.i.i:                                       ; preds = %userfaultfd_ctx_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %list, ptr %prev.i, align 4
  %24 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %unmaps, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.userfaultfd_unmap_ctx, ptr %call7.i.i, i32 0, i32 3, i32 1
  %25 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev3.i.i, align 8
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %list, ptr %22, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.i.i, %userfaultfd_ctx_get.exit.for.inc_crit_edge, %land.lhs.true5.i.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %vm_next = getelementptr inbounds %struct.vm_area_struct, ptr %vma.addr.035, i32 0, i32 2
  %27 = ptrtoint ptr %vm_next to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %vm_next, align 4
  %tobool.not = icmp eq ptr %28, null
  br i1 %tobool.not, label %for.inc.return_crit_edge, label %for.inc.land.rhs_crit_edge

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

for.inc.return_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

return:                                           ; preds = %for.inc.return_crit_edge, %if.end.return_crit_edge, %land.rhs.return_crit_edge, %entry.return_crit_edge
  %retval.2 = phi i32 [ 0, %entry.return_crit_edge ], [ -12, %if.end.return_crit_edge ], [ 0, %land.rhs.return_crit_edge ], [ 0, %for.inc.return_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @userfaultfd_unmap_complete(ptr nocapture noundef readnone %mm, ptr noundef readonly %uf) local_unnamed_addr #0 align 64 {
entry:
  %ewq = alloca %struct.userfaultfd_wait_queue, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %ewq) #11
  %0 = call ptr @memset(ptr %ewq, i32 255, i32 60)
  %1 = ptrtoint ptr %uf to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %uf, align 4
  %cmp.not29 = icmp eq ptr %2, %uf
  br i1 %cmp.not29, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %arg = getelementptr inbounds %struct.uffd_msg, ptr %ewq, i32 0, i32 4
  %end12 = getelementptr inbounds %struct.uffd_msg, ptr %ewq, i32 0, i32 4, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %for.body.lr.ph
  %.pn.in30 = phi ptr [ %2, %for.body.lr.ph ], [ %.pn, %list_del.exit.for.body_crit_edge ]
  %ctx.0 = getelementptr i8, ptr %.pn.in30, i32 -12
  %3 = ptrtoint ptr %.pn.in30 to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn = load ptr, ptr %.pn.in30, align 4
  %4 = call ptr @memset(ptr %ewq, i32 0, i32 32)
  %5 = ptrtoint ptr %ewq to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 22, ptr %ewq, align 4
  %start = getelementptr i8, ptr %.pn.in30, i32 -8
  %6 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %start, align 4
  %conv = zext i32 %7 to i64
  %8 = ptrtoint ptr %arg to i32
  call void @__asan_storeN_noabort(i32 %8, i32 8)
  store i64 %conv, ptr %arg, align 4
  %end = getelementptr i8, ptr %.pn.in30, i32 -4
  %9 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %end, align 4
  %conv9 = zext i32 %10 to i64
  %11 = ptrtoint ptr %end12 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 8)
  store i64 %conv9, ptr %end12, align 4
  %12 = ptrtoint ptr %ctx.0 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctx.0, align 4
  call fastcc void @userfaultfd_event_wait_completion(ptr noundef %13, ptr noundef nonnull %ewq)
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in30) #11
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in30, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i, align 4
  %16 = ptrtoint ptr %.pn.in30 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %.pn.in30, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %20 = ptrtoint ptr %.pn.in30 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in30, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in30, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @kfree(ptr noundef %ctx.0) #11
  %cmp.not = icmp eq ptr %.pn, %uf
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %ewq) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_userfaultfd(i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @sysctl_unprivileged_userfaultfd, align 4
  %and.i = and i32 %flags, 1
  %1 = or i32 %0, %and.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %land.lhs.true1.i, label %entry.do.body17.i_crit_edge

entry.do.body17.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body17.i

land.lhs.true1.i:                                 ; preds = %entry
  %call.i = tail call zeroext i1 @capable(i32 noundef 19) #11
  br i1 %call.i, label %land.lhs.true1.i.do.body17.i_crit_edge, label %land.end.i

land.lhs.true1.i.do.body17.i_crit_edge:           ; preds = %land.lhs.true1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body17.i

land.end.i:                                       ; preds = %land.lhs.true1.i
  %.b83.i = load i1, ptr @__do_sys_userfaultfd.__already_done, align 1
  br i1 %.b83.i, label %land.end.i.__do_sys_userfaultfd.exit_crit_edge, label %if.then7.i, !prof !96

land.end.i.__do_sys_userfaultfd.exit_crit_edge:   ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_userfaultfd.exit

if.then7.i:                                       ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__do_sys_userfaultfd.__already_done, align 1
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #14
  br label %__do_sys_userfaultfd.exit

do.body17.i:                                      ; preds = %land.lhs.true1.i.do.body17.i_crit_edge, %entry.do.body17.i_crit_edge
  %3 = tail call i32 @llvm.read_register.i32(metadata !84) #11
  %and.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task.i, align 8
  %mm.i = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 53
  %7 = ptrtoint ptr %mm.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mm.i, align 8
  %tobool19.not.i = icmp eq ptr %8, null
  br i1 %tobool19.not.i, label %do.body29.i, label %do.end46.i, !prof !94

do.body29.i:                                      ; preds = %do.body17.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/userfaultfd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2078, 0\0A.popsection", ""() #11, !srcloc !133
  unreachable

do.end46.i:                                       ; preds = %do.body17.i
  %and47.i = and i32 %flags, -526338
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47.i)
  %tobool48.not.i = icmp eq i32 %and47.i, 0
  br i1 %tobool48.not.i, label %if.end50.i, label %do.end46.i.__do_sys_userfaultfd.exit_crit_edge

do.end46.i.__do_sys_userfaultfd.exit_crit_edge:   ; preds = %do.end46.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_userfaultfd.exit

if.end50.i:                                       ; preds = %do.end46.i
  %9 = load ptr, ptr @userfaultfd_ctx_cachep, align 4
  %call51.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %9, i32 noundef 3264) #11
  %tobool52.not.i = icmp eq ptr %call51.i, null
  br i1 %tobool52.not.i, label %if.end50.i.__do_sys_userfaultfd.exit_crit_edge, label %if.end54.i

if.end50.i.__do_sys_userfaultfd.exit_crit_edge:   ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_userfaultfd.exit

if.end54.i:                                       ; preds = %if.end50.i
  %refcount.i = getelementptr inbounds %struct.userfaultfd_ctx, ptr %call51.i, i32 0, i32 5
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #11
  %10 = ptrtoint ptr %refcount.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 1, ptr %refcount.i, align 4
  %flags55.i = getelementptr inbounds %struct.userfaultfd_ctx, ptr %call51.i, i32 0, i32 6
  %11 = ptrtoint ptr %flags55.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %flags, ptr %flags55.i, align 8
  %features.i = getelementptr inbounds %struct.userfaultfd_ctx, ptr %call51.i, i32 0, i32 7
  %12 = ptrtoint ptr %features.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %features.i, align 4
  %released.i = getelementptr inbounds %struct.userfaultfd_ctx, ptr %call51.i, i32 0, i32 8
  %13 = ptrtoint ptr %released.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %released.i, align 8
  %mmap_changing.i = getelementptr inbounds %struct.userfaultfd_ctx, ptr %call51.i, i32 0, i32 9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %mmap_changing.i, i32 noundef 4) #11
  %14 = ptrtoint ptr %mmap_changing.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 0, ptr %mmap_changing.i, align 4
  %15 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task.i, align 8
  %mm58.i = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 53
  %17 = ptrtoint ptr %mm58.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mm58.i, align 8
  %mm59.i = getelementptr inbounds %struct.userfaultfd_ctx, ptr %call51.i, i32 0, i32 10
  %19 = ptrtoint ptr %mm59.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %mm59.i, align 8
  %mm_count.i.i = getelementptr inbounds %struct.anon.0, ptr %18, i32 0, i32 11
  %call.i.i.i84.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %mm_count.i.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %mm_count.i.i, i32 1, i32 3, i32 1) #11
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %mm_count.i.i, ptr %mm_count.i.i, i32 1, ptr elementtype(i32) %mm_count.i.i) #11, !srcloc !129
  %and61.i = and i32 %flags, 526336
  %or.i = or i32 %and61.i, 2
  %call62.i = tail call i32 @anon_inode_getfd_secure(ptr noundef nonnull @.str.17, ptr noundef nonnull @userfaultfd_fops, ptr noundef nonnull %call51.i, i32 noundef %or.i, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62.i)
  %cmp63.i = icmp slt i32 %call62.i, 0
  br i1 %cmp63.i, label %if.then64.i, label %if.end54.i.__do_sys_userfaultfd.exit_crit_edge

if.end54.i.__do_sys_userfaultfd.exit_crit_edge:   ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_userfaultfd.exit

if.then64.i:                                      ; preds = %if.end54.i
  %21 = ptrtoint ptr %mm59.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mm59.i, align 8
  %mm_count.i85.i = getelementptr inbounds %struct.anon.0, ptr %22, i32 0, i32 11
  %call.i.i.i86.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %mm_count.i85.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !126
  tail call void @llvm.prefetch.p0(ptr %mm_count.i85.i, i32 1, i32 3, i32 1) #11
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %mm_count.i85.i, ptr %mm_count.i85.i, i32 1, ptr elementtype(i32) %mm_count.i85.i) #11, !srcloc !127
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %23, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i, label %if.then64.i.mmdrop.exit.i_crit_edge, !prof !94

if.then64.i.mmdrop.exit.i_crit_edge:              ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mmdrop.exit.i

if.then.i.i:                                      ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__mmdrop(ptr noundef %22) #11
  br label %mmdrop.exit.i

mmdrop.exit.i:                                    ; preds = %if.then.i.i, %if.then64.i.mmdrop.exit.i_crit_edge
  %24 = load ptr, ptr @userfaultfd_ctx_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %24, ptr noundef nonnull %call51.i) #11
  br label %__do_sys_userfaultfd.exit

__do_sys_userfaultfd.exit:                        ; preds = %mmdrop.exit.i, %if.end54.i.__do_sys_userfaultfd.exit_crit_edge, %if.end50.i.__do_sys_userfaultfd.exit_crit_edge, %do.end46.i.__do_sys_userfaultfd.exit_crit_edge, %if.then7.i, %land.end.i.__do_sys_userfaultfd.exit_crit_edge
  %retval.0.i = phi i32 [ -1, %if.then7.i ], [ -1, %land.end.i.__do_sys_userfaultfd.exit_crit_edge ], [ -22, %do.end46.i.__do_sys_userfaultfd.exit_crit_edge ], [ -12, %if.end50.i.__do_sys_userfaultfd.exit_crit_edge ], [ %call62.i, %mmdrop.exit.i ], [ %call62.i, %if.end54.i.__do_sys_userfaultfd.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @userfaultfd_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.24, i32 noundef 268, i32 noundef 0, i32 noundef 270336, ptr noundef nonnull @init_once_userfaultfd_ctx) #11
  store ptr %call, ptr @userfaultfd_ctx_cachep, align 4
  ret i32 0
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_mm(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_state(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__task_pid_nr_ns(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_released(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmdrop(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mmap_write_lock(ptr noundef %mm) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@mmap_write_lock, %if.then.i)) #11
          to label %__mmap_lock_trace_start_locking.exit [label %if.then.i], !srcloc !113

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %mm, i1 noundef zeroext true) #11
  br label %__mmap_lock_trace_start_locking.exit

__mmap_lock_trace_start_locking.exit:             ; preds = %if.then.i, %entry
  %mmap_lock = getelementptr inbounds %struct.anon.0, ptr %mm, i32 0, i32 15
  tail call void @down_write(ptr noundef %mmap_lock) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@mmap_write_lock, %if.then.i3)) #11
          to label %__mmap_lock_trace_acquire_returned.exit [label %if.then.i3], !srcloc !113

if.then.i3:                                       ; preds = %__mmap_lock_trace_start_locking.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %mm, i1 noundef zeroext true, i1 noundef zeroext true) #11
  br label %__mmap_lock_trace_acquire_returned.exit

__mmap_lock_trace_acquire_returned.exit:          ; preds = %if.then.i3, %__mmap_lock_trace_start_locking.exit
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mmap_write_unlock(ptr noundef %mm) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@mmap_write_unlock, %if.then.i)) #11
          to label %__mmap_lock_trace_released.exit [label %if.then.i], !srcloc !113

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__mmap_lock_do_trace_released(ptr noundef %mm, i1 noundef zeroext true) #11
  br label %__mmap_lock_trace_released.exit

__mmap_lock_trace_released.exit:                  ; preds = %if.then.i, %entry
  %mmap_lock = getelementptr inbounds %struct.anon.0, ptr %mm, i32 0, i32 15
  tail call void @up_write(ptr noundef %mmap_lock) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_start_locking(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_acquire_returned(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @anon_inode_getfd_secure(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @userfaultfd_read(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %msg = alloca %struct.uffd_msg, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %msg) #11
  %2 = call ptr @memset(ptr %msg, i32 255, i32 32)
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %3 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %f_inode.i, align 8
  %features.i = getelementptr inbounds %struct.userfaultfd_ctx, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %features.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i = icmp slt i32 %6, 0
  br i1 %tobool.i, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %count)
  %cmp45 = icmp ult i32 %count, 32
  br i1 %cmp45, label %for.cond.preheader.if.then2.thread_crit_edge, label %if.end3.preheader

for.cond.preheader.if.then2.thread_crit_edge:     ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then2.thread

if.end3.preheader:                                ; preds = %for.cond.preheader
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %7 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %f_flags, align 4
  %and = and i32 %8, 2048
  %9 = and i32 %count, -32
  br label %if.end3

if.then2:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %if.then2.if.then2.thread_crit_edge, label %if.then2.cleanup_crit_edge

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then2.if.then2.thread_crit_edge:               ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then2.thread

if.then2.thread:                                  ; preds = %if.then2.if.then2.thread_crit_edge, %for.cond.preheader.if.then2.thread_crit_edge
  br label %cleanup

if.end3:                                          ; preds = %if.end21.if.end3_crit_edge, %if.end3.preheader
  %no_wait.049 = phi i32 [ 2048, %if.end21.if.end3_crit_edge ], [ %and, %if.end3.preheader ]
  %ret.048 = phi i32 [ %add, %if.end21.if.end3_crit_edge ], [ 0, %if.end3.preheader ]
  %count.addr.047 = phi i32 [ %sub, %if.end21.if.end3_crit_edge ], [ %count, %if.end3.preheader ]
  %buf.addr.046 = phi ptr [ %add.ptr, %if.end21.if.end3_crit_edge ], [ %buf, %if.end3.preheader ]
  %call4 = call fastcc i32 @userfaultfd_ctx_read(ptr noundef %1, i32 noundef %no_wait.049, ptr noundef nonnull %msg, ptr noundef %4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then6, label %if.end59.i.i

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.048)
  %tobool7.not = icmp eq i32 %ret.048, 0
  %call4.ret.0 = select i1 %tobool7.not, i32 %call4, i32 %ret.048
  br label %cleanup

if.end59.i.i:                                     ; preds = %if.end3
  call void @__might_fault(ptr noundef nonnull @.str.22, i32 noundef 174) #11
  %call.i.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %if.end59.i.i.if.then15_crit_edge, label %if.end.i.i

if.end59.i.i.if.then15_crit_edge:                 ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then15

if.end.i.i:                                       ; preds = %if.end59.i.i
  %10 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf.addr.046, i32 32, i32 -1226833920) #16, !srcloc !134
  %asmresult.i.i = extractvalue { i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.if.then15_crit_edge

if.end.i.i.if.then15_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then15

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %msg, i32 noundef 32) #11
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %buf.addr.046, ptr noundef nonnull %msg, i32 noundef 32) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool14.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool14.not, label %if.end21, label %copy_to_user.exit.if.then15_crit_edge

copy_to_user.exit.if.then15_crit_edge:            ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then15

if.then15:                                        ; preds = %copy_to_user.exit.if.then15_crit_edge, %if.end.i.i.if.then15_crit_edge, %if.end59.i.i.if.then15_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.048)
  %tobool16.not = icmp eq i32 %ret.048, 0
  %spec.select39 = select i1 %tobool16.not, i32 -14, i32 %ret.048
  br label %cleanup

if.end21:                                         ; preds = %copy_to_user.exit
  %add = add i32 %ret.048, 32
  %add.ptr = getelementptr i8, ptr %buf.addr.046, i32 32
  %sub = add i32 %count.addr.047, -32
  %cmp = icmp ult i32 %sub, 32
  br i1 %cmp, label %if.then2, label %if.end21.if.end3_crit_edge

if.end21.if.end3_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

cleanup:                                          ; preds = %if.then15, %if.then6, %if.then2.thread, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4.ret.0, %if.then6 ], [ %spec.select39, %if.then15 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.then2.thread ], [ %9, %if.then2.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %msg) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @userfaultfd_poll(ptr noundef %file, ptr noundef %wait) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %fd_wqh = getelementptr inbounds %struct.userfaultfd_ctx, ptr %1, i32 0, i32 2
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %entry.poll_wait.exit_crit_edge, label %land.lhs.true.i

entry.poll_wait.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  %tobool3.not.i = icmp eq ptr %fd_wqh, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %3(ptr noundef %file, ptr noundef nonnull %fd_wqh, ptr noundef nonnull %wait) #11
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %entry.poll_wait.exit_crit_edge
  %features.i = getelementptr inbounds %struct.userfaultfd_ctx, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %features.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i = icmp slt i32 %5, 0
  br i1 %tobool.i, label %if.end, label %poll_wait.exit.cleanup_crit_edge

poll_wait.exit.cleanup_crit_edge:                 ; preds = %poll_wait.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %poll_wait.exit
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %6 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %f_flags, align 4
  %and = and i32 %7, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5, !prof !94

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !135
  %head.i = getelementptr inbounds %struct.wait_queue_head, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %head.i, align 4
  %cmp.i.i.not = icmp eq ptr %9, %head.i
  br i1 %cmp.i.i.not, label %if.else, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %head.i23 = getelementptr inbounds %struct.userfaultfd_ctx, ptr %1, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %head.i23 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %head.i23, align 4
  %cmp.i.i24.not = icmp ne ptr %11, %head.i23
  %spec.select = zext i1 %cmp.i.i24.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %poll_wait.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 8, %poll_wait.exit.cleanup_crit_edge ], [ 8, %if.end.cleanup_crit_edge ], [ 1, %if.end5.cleanup_crit_edge ], [ %spec.select, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @userfaultfd_ioctl(ptr nocapture noundef readonly %file, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  %uffdio_continue.i = alloca %struct.uffdio_continue, align 8
  %range.i303 = alloca %struct.userfaultfd_wake_range, align 4
  %uffdio_wp.i = alloca %struct.uffdio_writeprotect, align 8
  %range.i232 = alloca %struct.userfaultfd_wake_range, align 4
  %uffdio_zeropage.i = alloca %struct.uffdio_zeropage, align 8
  %range.i156 = alloca %struct.userfaultfd_wake_range, align 4
  %uffdio_copy.i = alloca %struct.uffdio_copy, align 8
  %range.i89 = alloca %struct.userfaultfd_wake_range, align 4
  %uffdio_wake.i = alloca %struct.uffdio_range, align 8
  %range.i = alloca %struct.userfaultfd_wake_range, align 4
  %prev.i = alloca ptr, align 4
  %uffdio_register.i = alloca %struct.uffdio_register, align 8
  %uffdio_api.i = alloca %struct.uffdio_api, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1072125377, i32 %cmd)
  %cond = icmp eq i32 %cmd, -1072125377
  br i1 %cond, label %sw.bb, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %features.i = getelementptr inbounds %struct.userfaultfd_ctx, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %features.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.i = icmp slt i32 %3, 0
  br i1 %tobool.i, label %if.end, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true
  %4 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %if.end.cleanup_crit_edge [
    i32 -1071601145, label %sw.bb14
    i32 -1071601152, label %sw.bb2
    i32 -2146391551, label %sw.bb4
    i32 -2146391550, label %sw.bb6
    i32 -1071076861, label %sw.bb8
    i32 -1071601148, label %sw.bb10
    i32 -1072125434, label %sw.bb12
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %uffdio_api.i) #11
  %5 = getelementptr inbounds %struct.uffdio_api, ptr %uffdio_api.i, i32 0, i32 1
  %6 = getelementptr inbounds %struct.uffdio_api, ptr %uffdio_api.i, i32 0, i32 2
  %7 = inttoptr i32 %arg to ptr
  %8 = call ptr @memset(ptr %uffdio_api.i, i32 255, i32 24)
  tail call void @__might_fault(ptr noundef nonnull @.str.22, i32 noundef 156) #11
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i, label %sw.bb.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

sw.bb.if.then11.i.i.i_crit_edge:                  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %sw.bb
  %9 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %7, i32 24, i32 -1226833920) #16
  %asmresult.i.i.i = extractvalue { i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !96

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %uffdio_api.i, i32 noundef 24) #11
  %10 = call i32 @llvm.read_register.i32(metadata !84) #11
  %and.i.i.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 4
  %12 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #5, !srcloc !136
  %and.i.i.i.i.i = and i32 %12, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #11, !srcloc !137
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !138
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %uffdio_api.i, ptr noundef %7, i32 noundef 24) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #11, !srcloc !137
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !138
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !96

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %sw.bb.if.then11.i.i.i_crit_edge
  %res.0.i.i73.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 24, %sw.bb.if.then11.i.i.i_crit_edge ], [ 24, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 24, %res.0.i.i73.i
  %add.ptr.i.i.i = getelementptr i8, ptr %uffdio_api.i, i32 %sub.i.i.i
  %13 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i73.i)
  br label %userfaultfd_api.exit

if.end.i:                                         ; preds = %if.end.i.i.i
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %5, align 8
  %16 = ptrtoint ptr %uffdio_api.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %uffdio_api.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 170, i64 %17)
  %cmp.not.i = icmp eq i64 %17, 170
  call void @__sanitizer_cov_trace_const_cmp8(i64 2048, i64 %15)
  %tobool2.not.i = icmp ult i64 %15, 2048
  %or.cond.i = select i1 %cmp.not.i, i1 %tobool2.not.i, i1 false
  br i1 %or.cond.i, label %if.end4.i, label %if.end.i.if.end59.i.i61.i_crit_edge

if.end.i.if.end59.i.i61.i_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59.i.i61.i

if.end4.i:                                        ; preds = %if.end.i
  %and5.i = and i64 %15, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and5.i)
  %tobool6.not.i = icmp eq i64 %and5.i, 0
  br i1 %tobool6.not.i, label %if.end4.i.if.end59.i.i51.i_crit_edge, label %land.lhs.true.i

if.end4.i.if.end59.i.i51.i_crit_edge:             ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59.i.i51.i

land.lhs.true.i:                                  ; preds = %if.end4.i
  %call7.i = call zeroext i1 @capable(i32 noundef 19) #11
  br i1 %call7.i, label %land.lhs.true.i.if.end59.i.i51.i_crit_edge, label %land.lhs.true.i.if.end59.i.i61.i_crit_edge

land.lhs.true.i.if.end59.i.i61.i_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59.i.i61.i

land.lhs.true.i.if.end59.i.i51.i_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59.i.i51.i

if.end59.i.i51.i:                                 ; preds = %land.lhs.true.i.if.end59.i.i51.i_crit_edge, %if.end4.i.if.end59.i.i51.i_crit_edge
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 510, ptr %5, align 8
  %19 = ptrtoint ptr %6 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 -9223372036854775805, ptr %6, align 8
  call void @__might_fault(ptr noundef nonnull @.str.22, i32 noundef 174) #11
  %call.i.i52.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i52.i, label %if.end59.i.i51.i.userfaultfd_api.exit_crit_edge, label %copy_to_user.exit.i

if.end59.i.i51.i.userfaultfd_api.exit_crit_edge:  ; preds = %if.end59.i.i51.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %userfaultfd_api.exit

copy_to_user.exit.i:                              ; preds = %if.end59.i.i51.i
  %call.i.i.i56.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %uffdio_api.i, i32 noundef 24) #11
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %7, ptr noundef nonnull %uffdio_api.i, i32 noundef 24) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i)
  %tobool16.not.i = icmp eq i32 %call.i12.i.i.i, 0
  br i1 %tobool16.not.i, label %if.end18.i, label %copy_to_user.exit.i.userfaultfd_api.exit_crit_edge

copy_to_user.exit.i.userfaultfd_api.exit_crit_edge: ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %userfaultfd_api.exit

if.end18.i:                                       ; preds = %copy_to_user.exit.i
  %conv.i.i = trunc i64 %15 to i32
  %or.i.i = or i32 %conv.i.i, -2147483648
  %features20.i = getelementptr inbounds %struct.userfaultfd_ctx, ptr %1, i32 0, i32 7
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %features20.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !139
  call void @llvm.prefetch.p0(ptr %features20.i, i32 1, i32 3, i32 1) #11
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %if.end18.i
  %20 = call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %features20.i, i32 0, i32 %or.i.i) #11, !srcloc !140
  %asmresult.i.i = extractvalue { i32, i32 } %20, 0
  %tobool.not.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool.not.i.i, label %__cmpxchg.exit.i, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i

__cmpxchg.exit.i:                                 ; preds = %do.body.i.i
  %asmresult1.i.i = extractvalue { i32, i32 } %20, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !141
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult1.i.i)
  %cmp36.not.i = icmp eq i32 %asmresult1.i.i, 0
  br i1 %cmp36.not.i, label %__cmpxchg.exit.i.userfaultfd_api.exit_crit_edge, label %__cmpxchg.exit.i.if.end59.i.i61.i_crit_edge

__cmpxchg.exit.i.if.end59.i.i61.i_crit_edge:      ; preds = %__cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59.i.i61.i

__cmpxchg.exit.i.userfaultfd_api.exit_crit_edge:  ; preds = %__cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %userfaultfd_api.exit

if.end59.i.i61.i:                                 ; preds = %__cmpxchg.exit.i.if.end59.i.i61.i_crit_edge, %land.lhs.true.i.if.end59.i.i61.i_crit_edge, %if.end.i.if.end59.i.i61.i_crit_edge
  %ret.180.i = phi i32 [ -1, %land.lhs.true.i.if.end59.i.i61.i_crit_edge ], [ -22, %if.end.i.if.end59.i.i61.i_crit_edge ], [ -22, %__cmpxchg.exit.i.if.end59.i.i61.i_crit_edge ]
  %21 = call ptr @memset(ptr %uffdio_api.i, i32 0, i32 24)
  call void @__might_fault(ptr noundef nonnull @.str.22, i32 noundef 174) #11
  %call.i.i62.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i62.i, label %if.end59.i.i61.i.userfaultfd_api.exit_crit_edge, label %copy_to_user.exit70.i

if.end59.i.i61.i.userfaultfd_api.exit_crit_edge:  ; preds = %if.end59.i.i61.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %userfaultfd_api.exit

copy_to_user.exit70.i:                            ; preds = %if.end59.i.i61.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i66.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %uffdio_api.i, i32 noundef 24) #11
  %call.i12.i.i67.i = call i32 @arm_copy_to_user(ptr noundef %7, ptr noundef nonnull %uffdio_api.i, i32 noundef 24) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i67.i)
  %tobool40.not.i = icmp eq i32 %call.i12.i.i67.i, 0
  %spec.select.i = select i1 %tobool40.not.i, i32 %ret.180.i, i32 -14
  br label %userfaultfd_api.exit

userfaultfd_api.exit:                             ; preds = %copy_to_user.exit70.i, %if.end59.i.i61.i.userfaultfd_api.exit_crit_edge, %__cmpxchg.exit.i.userfaultfd_api.exit_crit_edge, %copy_to_user.exit.i.userfaultfd_api.exit_crit_edge, %if.end59.i.i51.i.userfaultfd_api.exit_crit_edge, %if.then11.i.i.i
  %ret.0.i = phi i32 [ -14, %copy_to_user.exit.i.userfaultfd_api.exit_crit_edge ], [ 0, %__cmpxchg.exit.i.userfaultfd_api.exit_crit_edge ], [ -14, %if.then11.i.i.i ], [ -14, %if.end59.i.i51.i.userfaultfd_api.exit_crit_edge ], [ -14, %if.end59.i.i61.i.userfaultfd_api.exit_crit_edge ], [ %spec.select.i, %copy_to_user.exit70.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %uffdio_api.i) #11
  br label %cleanup

sw.bb2:                                           ; preds = %if.end
  %mm1.i = getelementptr inbounds %struct.userfaultfd_ctx, ptr %1, i32 0, i32 10
  %22 = ptrtoint ptr %mm1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mm1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prev.i) #11
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 -1 to ptr), ptr %prev.i, align 4, !annotation !142
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %uffdio_register.i) #11
  %25 = getelementptr inbounds %struct.uffdio_range, ptr %uffdio_register.i, i32 0, i32 1
  %26 = getelementptr inbounds %struct.uffdio_register, ptr %uffdio_register.i, i32 0, i32 1
  %27 = inttoptr i32 %arg to ptr
  %28 = call ptr @memset(ptr %uffdio_register.i, i32 255, i32 32)
  tail call void @__might_fault(ptr noundef nonnull @.str.22, i32 noundef 156) #11
  %call.i.i.i33 = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i33, label %sw.bb2.if.then11.i.i.i47_crit_edge, label %land.lhs.true.i.i.i36

sw.bb2.if.then11.i.i.i47_crit_edge:               ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i47

land.lhs.true.i.i.i36:                            ; preds = %sw.bb2
  %29 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %27, i32 24, i32 -1226833920) #16, !srcloc !143
  %asmresult.i.i.i34 = extractvalue { i32, i32 } %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i34)
  %cmp.i6.i.i35 = icmp eq i32 %asmresult.i.i.i34, 0
  br i1 %cmp.i6.i.i35, label %if.end.i.i.i44, label %land.lhs.true.i.i.i36.if.then11.i.i.i47_crit_edge, !prof !96

land.lhs.true.i.i.i36.if.then11.i.i.i47_crit_edge: ; preds = %land.lhs.true.i.i.i36
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i47

if.end.i.i.i44:                                   ; preds = %land.lhs.true.i.i.i36
  %call.i.i.i.i37 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %uffdio_register.i, i32 noundef 24) #11
  %30 = call i32 @llvm.read_register.i32(metadata !84) #11
  %and.i.i.i.i.i.i.i38 = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i.i.i.i.i38 to ptr
  %cpu_domain.i.i.i.i.i.i39 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 4
  %32 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i39) #5, !srcloc !136
  %and.i.i.i.i.i40 = and i32 %32, -13
  %or.i.i.i.i.i41 = or i32 %and.i.i.i.i.i40, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i41) #11, !srcloc !137
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !138
  %call1.i.i.i.i42 = call i32 @arm_copy_from_user(ptr noundef nonnull %uffdio_register.i, ptr noundef %27, i32 noundef 24) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %32) #11, !srcloc !137
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !138
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i42)
  %tobool4.not.i.i.i43 = icmp eq i32 %call1.i.i.i.i42, 0
  br i1 %tobool4.not.i.i.i43, label %if.end.i48, label %if.end.i.i.i44.if.then11.i.i.i47_crit_edge, !prof !96

if.end.i.i.i44.if.then11.i.i.i47_crit_edge:       ; preds = %if.end.i.i.i44
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i47

if.then11.i.i.i47:                                ; preds = %if.end.i.i.i44.if.then11.i.i.i47_crit_edge, %land.lhs.true.i.i.i36.if.then11.i.i.i47_crit_edge, %sw.bb2.if.then11.i.i.i47_crit_edge
  %res.0.i.i473.i = phi i32 [ %call1.i.i.i.i42, %if.end.i.i.i44.if.then11.i.i.i47_crit_edge ], [ 24, %sw.bb2.if.then11.i.i.i47_crit_edge ], [ 24, %land.lhs.true.i.i.i36.if.then11.i.i.i47_crit_edge ]
  %sub.i.i.i45 = sub i32 24, %res.0.i.i473.i
  %add.ptr.i.i.i46 = getelementptr i8, ptr %uffdio_register.i, i32 %sub.i.i.i45
  %33 = call ptr @memset(ptr %add.ptr.i.i.i46, i32 0, i32 %res.0.i.i473.i)
  br label %userfaultfd_register.exit

if.end.i48:                                       ; preds = %if.end.i.i.i44
  %34 = ptrtoint ptr %26 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %26, align 8
  %36 = add i64 %35, -1
  call void @__sanitizer_cov_trace_const_cmp8(i64 7, i64 %36)
  %37 = icmp ult i64 %36, 7
  br i1 %37, label %if.end8.i, label %if.end.i48.userfaultfd_register.exit_crit_edge

if.end.i48.userfaultfd_register.exit_crit_edge:   ; preds = %if.end.i48
  call void @__sanitizer_cov_trace_pc() #13
  br label %userfaultfd_register.exit

if.end8.i:                                        ; preds = %if.end.i48
  %38 = trunc i64 %35 to i32
  %39 = shl nuw nsw i32 %38, 9
  %40 = and i32 %39, 512
  %41 = and i64 %35, 6
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %41)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %if.end23.i, label %if.end8.i.userfaultfd_register.exit_crit_edge

if.end8.i.userfaultfd_register.exit_crit_edge:    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %userfaultfd_register.exit

if.end23.i:                                       ; preds = %if.end8.i
  %43 = ptrtoint ptr %uffdio_register.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %uffdio_register.i, align 8
  %45 = ptrtoint ptr %25 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %25, align 8
  %47 = or i64 %46, %44
  %48 = and i64 %47, 4095
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %48)
  %49 = icmp ne i64 %48, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %46)
  %tobool6.not.i.i = icmp eq i64 %46, 0
  %or.cond27.i.i = or i1 %tobool6.not.i.i, %49
  br i1 %or.cond27.i.i, label %if.end23.i.userfaultfd_register.exit_crit_edge, label %if.end8.i.i

if.end23.i.userfaultfd_register.exit_crit_edge:   ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %userfaultfd_register.exit

if.end8.i.i:                                      ; preds = %if.end23.i
  %task_size1.i.i = getelementptr inbounds %struct.anon.0, ptr %23, i32 0, i32 6
  %50 = ptrtoint ptr %task_size1.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %task_size1.i.i, align 4
  %conv.i.i49 = zext i32 %51 to i64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmap_min_addr to i32))
  %52 = load i32, ptr @mmap_min_addr, align 4
  %conv9.i.i = zext i32 %52 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %44, i64 %conv9.i.i)
  %cmp.i.i = icmp ult i64 %44, %conv9.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %44, i64 %conv.i.i49)
  %cmp13.not.i.i = icmp uge i64 %44, %conv.i.i49
  %or.cond28.i.i = select i1 %cmp.i.i, i1 true, i1 %cmp13.not.i.i
  %sub.i.i = sub i64 %conv.i.i49, %44
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i.i, i64 %46)
  %cmp17.i.i = icmp ult i64 %sub.i.i, %46
  %or.cond481.i = select i1 %or.cond28.i.i, i1 true, i1 %cmp17.i.i
  br i1 %or.cond481.i, label %if.end8.i.i.userfaultfd_register.exit_crit_edge, label %if.end29.i

if.end8.i.i.userfaultfd_register.exit_crit_edge:  ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %userfaultfd_register.exit

if.end29.i:                                       ; preds = %if.end8.i.i
  %conv.i = trunc i64 %44 to i32
  %add.i = add i64 %46, %44
  %conv35.i = trunc i64 %add.i to i32
  %mm_users.i.i = getelementptr inbounds %struct.anon.0, ptr %23, i32 0, i32 10
  %call.i.i.i462.i = call zeroext i1 @__kasan_check_write(ptr noundef %mm_users.i.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !144
  call void @llvm.prefetch.p0(ptr %mm_users.i.i, i32 1, i32 3, i32 1) #11
  %53 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %mm_users.i.i, ptr %mm_users.i.i, i32 0, i32 1, ptr elementtype(i32) %mm_users.i.i) #11, !srcloc !145
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %53, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %if.end29.i.userfaultfd_register.exit_crit_edge, label %if.end38.i

if.end29.i.userfaultfd_register.exit_crit_edge:   ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %userfaultfd_register.exit

if.end38.i:                                       ; preds = %if.end29.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !146
  call fastcc void @mmap_write_lock(ptr noundef %23) #11
  %call39.i = call ptr @find_vma_prev(ptr noundef %23, i32 noundef %conv.i, ptr noundef nonnull %prev.i) #11
  %tobool40.not.i50 = icmp eq ptr %call39.i, null
  br i1 %tobool40.not.i50, label %if.end38.i.out_unlock.i_crit_edge, label %if.end42.i

if.end38.i.out_unlock.i_crit_edge:                ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock.i

if.end42.i:                                       ; preds = %if.end38.i
  %54 = ptrtoint ptr %call39.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %call39.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %conv35.i)
  %cmp.not.i51 = icmp ult i32 %55, %conv35.i
  br i1 %cmp.not.i51, label %land.rhs.i.preheader, label %if.end42.i.out_unlock.i_crit_edge

if.end42.i.out_unlock.i_crit_edge:                ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock.i

land.rhs.i.preheader:                             ; preds = %if.end42.i
  %56 = ptrtoint ptr %call39.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %call39.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %conv35.i)
  %cmp56.i390 = icmp ult i32 %57, %conv35.i
  br i1 %cmp56.i390, label %land.rhs.i.preheader.for.body.i_crit_edge, label %do.body151.i.critedge

land.rhs.i.preheader.for.body.i_crit_edge:        ; preds = %land.rhs.i.preheader
  br label %for.body.i

land.rhs.i:                                       ; preds = %if.end136.i
  %58 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %71, align 4
  %cmp56.i = icmp ult i32 %59, %conv35.i
  br i1 %cmp56.i, label %land.rhs.i.for.body.i_crit_edge, label %land.rhs.i.do.end159.i_crit_edge

land.rhs.i.do.end159.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end159.i

land.rhs.i.for.body.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i:                                       ; preds = %land.rhs.i.for.body.i_crit_edge, %land.rhs.i.preheader.for.body.i_crit_edge
  %cur.0488.i391 = phi ptr [ %71, %land.rhs.i.for.body.i_crit_edge ], [ %call39.i, %land.rhs.i.preheader.for.body.i_crit_edge ]
  call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 1353, i32 noundef 0) #11
  %call.i.i52 = call i32 @__cond_resched() #11
  %vm_userfaultfd_ctx.i = getelementptr inbounds %struct.vm_area_struct, ptr %cur.0488.i391, i32 0, i32 17
  %60 = ptrtoint ptr %vm_userfaultfd_ctx.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %vm_userfaultfd_ctx.i, align 4
  %tobool60.i = icmp ne ptr %61, null
  %vm_flags62.i = getelementptr inbounds %struct.vm_area_struct, ptr %cur.0488.i391, i32 0, i32 8
  %62 = ptrtoint ptr %vm_flags62.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %vm_flags62.i, align 4
  %and63.i = and i32 %63, 4608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63.i)
  %tobool64.i = icmp ne i32 %and63.i, 0
  %xor456.i = xor i1 %tobool60.i, %tobool64.i
  br i1 %xor456.i, label %do.body76.i, label %do.end82.i, !prof !94

do.body76.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/userfaultfd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1356, 0\0A.popsection", ""() #11, !srcloc !147
  unreachable

do.end82.i:                                       ; preds = %for.body.i
  %vm_ops.i.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %cur.0488.i391, i32 0, i32 12
  %64 = ptrtoint ptr %vm_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %vm_ops.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %65, null
  br i1 %tobool.not.i.i.i, label %do.end82.i.if.end85.i_crit_edge, label %vma_can_userfault.exit.i

do.end82.i.if.end85.i_crit_edge:                  ; preds = %do.end82.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end85.i

vma_can_userfault.exit.i:                         ; preds = %do.end82.i
  %call16.i.i = call zeroext i1 @vma_is_shmem(ptr noundef nonnull %cur.0488.i391) #11
  br i1 %call16.i.i, label %vma_can_userfault.exit.i.if.end85.i_crit_edge, label %vma_can_userfault.exit.i.out_unlock.i_crit_edge

vma_can_userfault.exit.i.out_unlock.i_crit_edge:  ; preds = %vma_can_userfault.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock.i

vma_can_userfault.exit.i.if.end85.i_crit_edge:    ; preds = %vma_can_userfault.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end85.i

if.end85.i:                                       ; preds = %vma_can_userfault.exit.i.if.end85.i_crit_edge, %do.end82.i.if.end85.i_crit_edge
  %66 = ptrtoint ptr %vm_flags62.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %vm_flags62.i, align 4
  %and87.i = and i32 %67, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87.i)
  %tobool88.not.i = icmp eq i32 %and87.i, 0
  br i1 %tobool88.not.i, label %if.end85.i.out_unlock.i_crit_edge, label %if.end98.i, !prof !94

if.end85.i.out_unlock.i_crit_edge:                ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock.i

if.end98.i:                                       ; preds = %if.end85.i
  %68 = ptrtoint ptr %vm_userfaultfd_ctx.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %vm_userfaultfd_ctx.i, align 4
  %tobool129.not.i = icmp eq ptr %69, null
  %cmp133.not.i = icmp eq ptr %69, %1
  %or.cond458.i = or i1 %tobool129.not.i, %cmp133.not.i
  br i1 %or.cond458.i, label %if.end136.i, label %if.end98.i.out_unlock.i_crit_edge

if.end98.i.out_unlock.i_crit_edge:                ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock.i

if.end136.i:                                      ; preds = %if.end98.i
  %vm_next.i = getelementptr inbounds %struct.vm_area_struct, ptr %cur.0488.i391, i32 0, i32 2
  %70 = ptrtoint ptr %vm_next.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %vm_next.i, align 4
  %tobool54.not.i = icmp eq ptr %71, null
  br i1 %tobool54.not.i, label %if.end136.i.do.end159.i_crit_edge, label %land.rhs.i

if.end136.i.do.end159.i_crit_edge:                ; preds = %if.end136.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end159.i

do.body151.i.critedge:                            ; preds = %land.rhs.i.preheader
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/userfaultfd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1410, 0\0A.popsection", ""() #11, !srcloc !148
  unreachable

do.end159.i:                                      ; preds = %if.end136.i.do.end159.i_crit_edge, %land.rhs.i.do.end159.i_crit_edge
  %72 = ptrtoint ptr %call39.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %call39.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %73, i32 %conv.i)
  %cmp161.i = icmp ult i32 %73, %conv.i
  br i1 %cmp161.i, label %if.then163.i, label %do.end159.i.if.end164.i_crit_edge

do.end159.i.if.end164.i_crit_edge:                ; preds = %do.end159.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end164.i

if.then163.i:                                     ; preds = %do.end159.i
  call void @__sanitizer_cov_trace_pc() #13
  %74 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call39.i, ptr %prev.i, align 4
  br label %if.end164.i

if.end164.i:                                      ; preds = %if.then163.i, %do.end159.i.if.end164.i_crit_edge
  %75 = ptrtoint ptr %1 to i32
  %.fca.0.insert.i = insertvalue [1 x i32] poison, i32 %75, 0
  br label %do.body165.i

do.body165.i:                                     ; preds = %land.rhs310.i.do.body165.i_crit_edge, %if.end164.i
  %start.0.i = phi i32 [ %conv.i, %if.end164.i ], [ %113, %land.rhs310.i.do.body165.i_crit_edge ]
  %vma.0.i = phi ptr [ %call39.i, %if.end164.i ], [ %111, %land.rhs310.i.do.body165.i_crit_edge ]
  call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 1417, i32 noundef 0) #11
  %call.i464.i = call i32 @__cond_resched() #11
  %vm_ops.i.i465.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma.0.i, i32 0, i32 12
  %76 = ptrtoint ptr %vm_ops.i.i465.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %vm_ops.i.i465.i, align 4
  %tobool.not.i.i466.i = icmp eq ptr %77, null
  br i1 %tobool.not.i.i466.i, label %do.body165.i.do.body188.i_crit_edge, label %vma_can_userfault.exit470.i

do.body165.i.do.body188.i_crit_edge:              ; preds = %do.body165.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body188.i

vma_can_userfault.exit470.i:                      ; preds = %do.body165.i
  %call16.i467.i = call zeroext i1 @vma_is_shmem(ptr noundef nonnull %vma.0.i) #11
  br i1 %call16.i467.i, label %vma_can_userfault.exit470.i.do.body188.i_crit_edge, label %do.body179.i, !prof !96

vma_can_userfault.exit470.i.do.body188.i_crit_edge: ; preds = %vma_can_userfault.exit470.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body188.i

do.body179.i:                                     ; preds = %vma_can_userfault.exit470.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/userfaultfd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1419, 0\0A.popsection", ""() #11, !srcloc !149
  unreachable

do.body188.i:                                     ; preds = %vma_can_userfault.exit470.i.do.body188.i_crit_edge, %do.body165.i.do.body188.i_crit_edge
  %vm_userfaultfd_ctx189.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma.0.i, i32 0, i32 17
  %78 = ptrtoint ptr %vm_userfaultfd_ctx189.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %vm_userfaultfd_ctx189.i, align 4
  %tobool191.not.i = icmp ne ptr %79, null
  %cmp195.i = icmp ne ptr %79, %1
  %spec.select459.i = and i1 %tobool191.not.i, %cmp195.i
  br i1 %spec.select459.i, label %do.body205.i, label %do.end213.i, !prof !94

do.body205.i:                                     ; preds = %do.body188.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/userfaultfd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1421, 0\0A.popsection", ""() #11, !srcloc !150
  unreachable

do.end213.i:                                      ; preds = %do.body188.i
  %vm_flags214.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma.0.i, i32 0, i32 8
  %80 = ptrtoint ptr %vm_flags214.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %vm_flags214.i, align 4
  %and215.i = and i32 %81, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and215.i)
  %tobool216.not.i = icmp eq i32 %and215.i, 0
  br i1 %tobool216.not.i, label %do.end234.i, label %do.end213.i.if.end240.i_crit_edge, !prof !94

do.end213.i.if.end240.i_crit_edge:                ; preds = %do.end213.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end240.i

do.end234.i:                                      ; preds = %do.end213.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1422, i32 noundef 9, ptr noundef null) #11
  br label %if.end240.i

if.end240.i:                                      ; preds = %do.end234.i, %do.end213.i.if.end240.i_crit_edge
  %82 = ptrtoint ptr %vm_userfaultfd_ctx189.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %vm_userfaultfd_ctx189.i, align 4
  %cmp250.i = icmp eq ptr %83, %1
  br i1 %cmp250.i, label %land.lhs.true252.i, label %if.end240.i.if.end258.i_crit_edge

if.end240.i.if.end258.i_crit_edge:                ; preds = %if.end240.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end258.i

land.lhs.true252.i:                               ; preds = %if.end240.i
  %84 = ptrtoint ptr %vm_flags214.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %vm_flags214.i, align 4
  %and254.i = and i32 %85, %40
  call void @__sanitizer_cov_trace_cmp4(i32 %and254.i, i32 %40)
  %cmp255.i = icmp eq i32 %and254.i, %40
  br i1 %cmp255.i, label %land.lhs.true252.i.skip.i_crit_edge, label %land.lhs.true252.i.if.end258.i_crit_edge

land.lhs.true252.i.if.end258.i_crit_edge:         ; preds = %land.lhs.true252.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end258.i

land.lhs.true252.i.skip.i_crit_edge:              ; preds = %land.lhs.true252.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skip.i

if.end258.i:                                      ; preds = %land.lhs.true252.i.if.end258.i_crit_edge, %if.end240.i.if.end258.i_crit_edge
  %86 = ptrtoint ptr %vma.0.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %vma.0.i, align 4
  %88 = call i32 @llvm.umax.i32(i32 %87, i32 %start.0.i) #11
  %vm_end265.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma.0.i, i32 0, i32 1
  %89 = ptrtoint ptr %vm_end265.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %vm_end265.i, align 4
  %91 = call i32 @llvm.umin.i32(i32 %90, i32 %conv35.i) #11
  %92 = ptrtoint ptr %vm_flags214.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %vm_flags214.i, align 4
  %and270.i = and i32 %93, -4609
  %or271.i = or i32 %and270.i, %40
  %94 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %prev.i, align 4
  %anon_vma.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma.0.i, i32 0, i32 11
  %96 = ptrtoint ptr %anon_vma.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %anon_vma.i, align 4
  %vm_file.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma.0.i, i32 0, i32 14
  %98 = ptrtoint ptr %vm_file.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %vm_file.i, align 4
  %vm_pgoff.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma.0.i, i32 0, i32 13
  %100 = ptrtoint ptr %vm_pgoff.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %vm_pgoff.i, align 4
  %call273.i = call ptr @anon_vma_name(ptr noundef nonnull %vma.0.i) #11
  %call274.i = call ptr @vma_merge(ptr noundef %23, ptr noundef %95, i32 noundef %88, i32 noundef %91, i32 noundef %or271.i, ptr noundef %97, ptr noundef %99, i32 noundef %101, ptr noundef null, [1 x i32] %.fca.0.insert.i, ptr noundef %call273.i) #11
  %102 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %call274.i, ptr %prev.i, align 4
  %tobool275.not.i = icmp eq ptr %call274.i, null
  br i1 %tobool275.not.i, label %if.end277.i, label %if.end258.i.next.i_crit_edge

if.end258.i.next.i_crit_edge:                     ; preds = %if.end258.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %next.i

if.end277.i:                                      ; preds = %if.end258.i
  %103 = ptrtoint ptr %vma.0.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %vma.0.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %104, i32 %88)
  %cmp279.i = icmp ult i32 %104, %88
  br i1 %cmp279.i, label %if.then281.i, label %if.end277.i.if.end286.i_crit_edge

if.end277.i.if.end286.i_crit_edge:                ; preds = %if.end277.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end286.i

if.then281.i:                                     ; preds = %if.end277.i
  %call282.i = call i32 @split_vma(ptr noundef %23, ptr noundef nonnull %vma.0.i, i32 noundef %88, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call282.i)
  %tobool283.not.i = icmp eq i32 %call282.i, 0
  br i1 %tobool283.not.i, label %if.then281.i.if.end286.i_crit_edge, label %if.then281.i.out_unlock.i_crit_edge

if.then281.i.out_unlock.i_crit_edge:              ; preds = %if.then281.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock.i

if.then281.i.if.end286.i_crit_edge:               ; preds = %if.then281.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end286.i

if.end286.i:                                      ; preds = %if.then281.i.if.end286.i_crit_edge, %if.end277.i.if.end286.i_crit_edge
  %105 = ptrtoint ptr %vm_end265.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %vm_end265.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %106, i32 %conv35.i)
  %cmp288.i = icmp ugt i32 %106, %conv35.i
  br i1 %cmp288.i, label %if.then290.i, label %if.end286.i.next.i_crit_edge

if.end286.i.next.i_crit_edge:                     ; preds = %if.end286.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %next.i

if.then290.i:                                     ; preds = %if.end286.i
  %call291.i = call i32 @split_vma(ptr noundef %23, ptr noundef nonnull %vma.0.i, i32 noundef %conv35.i, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call291.i)
  %tobool292.not.i = icmp eq i32 %call291.i, 0
  br i1 %tobool292.not.i, label %if.then290.i.next.i_crit_edge, label %if.then290.i.out_unlock.i_crit_edge

if.then290.i.out_unlock.i_crit_edge:              ; preds = %if.then290.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock.i

if.then290.i.next.i_crit_edge:                    ; preds = %if.then290.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %next.i

next.i:                                           ; preds = %if.then290.i.next.i_crit_edge, %if.end286.i.next.i_crit_edge, %if.end258.i.next.i_crit_edge
  %vma.1.i = phi ptr [ %vma.0.i, %if.then290.i.next.i_crit_edge ], [ %vma.0.i, %if.end286.i.next.i_crit_edge ], [ %call274.i, %if.end258.i.next.i_crit_edge ]
  %vm_flags296.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma.1.i, i32 0, i32 8
  %107 = ptrtoint ptr %vm_flags296.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %or271.i, ptr %vm_flags296.i, align 4
  %vm_userfaultfd_ctx297.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma.1.i, i32 0, i32 17
  %108 = ptrtoint ptr %vm_userfaultfd_ctx297.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %1, ptr %vm_userfaultfd_ctx297.i, align 4
  br label %skip.i

skip.i:                                           ; preds = %next.i, %land.lhs.true252.i.skip.i_crit_edge
  %vma.2.i = phi ptr [ %vma.0.i, %land.lhs.true252.i.skip.i_crit_edge ], [ %vma.1.i, %next.i ]
  %109 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %vma.2.i, ptr %prev.i, align 4
  %vm_next307.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma.2.i, i32 0, i32 2
  %110 = ptrtoint ptr %vm_next307.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %vm_next307.i, align 4
  %tobool309.not.i = icmp eq ptr %111, null
  br i1 %tobool309.not.i, label %skip.i.out_unlock.i_crit_edge, label %land.rhs310.i

skip.i.out_unlock.i_crit_edge:                    ; preds = %skip.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock.i

land.rhs310.i:                                    ; preds = %skip.i
  %vm_end306.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma.2.i, i32 0, i32 1
  %112 = ptrtoint ptr %vm_end306.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %vm_end306.i, align 4
  %114 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %111, align 4
  %cmp312.i = icmp ult i32 %115, %conv35.i
  br i1 %cmp312.i, label %land.rhs310.i.do.body165.i_crit_edge, label %land.rhs310.i.out_unlock.i_crit_edge

land.rhs310.i.out_unlock.i_crit_edge:             ; preds = %land.rhs310.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock.i

land.rhs310.i.do.body165.i_crit_edge:             ; preds = %land.rhs310.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body165.i

out_unlock.i:                                     ; preds = %land.rhs310.i.out_unlock.i_crit_edge, %skip.i.out_unlock.i_crit_edge, %if.then290.i.out_unlock.i_crit_edge, %if.then281.i.out_unlock.i_crit_edge, %if.end98.i.out_unlock.i_crit_edge, %if.end85.i.out_unlock.i_crit_edge, %vma_can_userfault.exit.i.out_unlock.i_crit_edge, %if.end42.i.out_unlock.i_crit_edge, %if.end38.i.out_unlock.i_crit_edge
  %basic_ioctls.2.off0.i = phi i64 [ 140, %if.end42.i.out_unlock.i_crit_edge ], [ 140, %if.end38.i.out_unlock.i_crit_edge ], [ 220, %if.then281.i.out_unlock.i_crit_edge ], [ 220, %if.then290.i.out_unlock.i_crit_edge ], [ 220, %skip.i.out_unlock.i_crit_edge ], [ 220, %land.rhs310.i.out_unlock.i_crit_edge ], [ 220, %vma_can_userfault.exit.i.out_unlock.i_crit_edge ], [ 220, %if.end85.i.out_unlock.i_crit_edge ], [ 220, %if.end98.i.out_unlock.i_crit_edge ]
  %ret.5.i = phi i32 [ -22, %if.end42.i.out_unlock.i_crit_edge ], [ -12, %if.end38.i.out_unlock.i_crit_edge ], [ 0, %land.rhs310.i.out_unlock.i_crit_edge ], [ 0, %skip.i.out_unlock.i_crit_edge ], [ %call291.i, %if.then290.i.out_unlock.i_crit_edge ], [ %call282.i, %if.then281.i.out_unlock.i_crit_edge ], [ -16, %if.end98.i.out_unlock.i_crit_edge ], [ -1, %if.end85.i.out_unlock.i_crit_edge ], [ -22, %vma_can_userfault.exit.i.out_unlock.i_crit_edge ]
  call fastcc void @mmap_write_unlock(ptr noundef %23) #11
  call void @mmput(ptr noundef %23) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.5.i)
  %tobool316.not.i = icmp eq i32 %ret.5.i, 0
  br i1 %tobool316.not.i, label %if.then317.i, label %out_unlock.i.userfaultfd_register.exit_crit_edge

out_unlock.i.userfaultfd_register.exit_crit_edge: ; preds = %out_unlock.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %userfaultfd_register.exit

if.then317.i:                                     ; preds = %out_unlock.i
  call void @__sanitizer_cov_trace_pc() #13
  %116 = ptrtoint ptr %26 to i32
  call void @__asan_load8_noabort(i32 %116)
  %117 = load i64, ptr %26, align 8
  %and322.i = and i64 %117, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and322.i)
  %tobool323.not.i = icmp eq i64 %and322.i, 0
  %and325.i = and i64 %basic_ioctls.2.off0.i, 156
  %spec.select461.i = select i1 %tobool323.not.i, i64 %and325.i, i64 %basic_ioctls.2.off0.i
  %and328.i = and i64 %117, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and328.i)
  %tobool329.not.i = icmp eq i64 %and328.i, 0
  %and331.i = and i64 %spec.select461.i, 92
  %ioctls_out.1.i = select i1 %tobool329.not.i, i64 %and331.i, i64 %spec.select461.i
  %ioctls.i = getelementptr inbounds %struct.uffdio_register, ptr %27, i32 0, i32 2
  call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 1498) #11
  %118 = call i32 @llvm.read_register.i32(metadata !84) #11
  %and.i.i.i.i = and i32 %118, -16384
  %119 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu_domain.i.i.i = getelementptr inbounds %struct.thread_info, ptr %119, i32 0, i32 4
  %120 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i) #5, !srcloc !136
  %and.i.i = and i32 %120, -13
  %or.i.i53 = or i32 %and.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i53) #11, !srcloc !137
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !138
  %121 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_8", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %ioctls.i, i64 %ioctls_out.1.i, i32 -1226833921) #11, !srcloc !151
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %120) #11, !srcloc !137
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !138
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %tobool339.not.i = icmp eq i32 %121, 0
  %ret.6.i = select i1 %tobool339.not.i, i32 0, i32 -14
  br label %userfaultfd_register.exit

userfaultfd_register.exit:                        ; preds = %if.then317.i, %out_unlock.i.userfaultfd_register.exit_crit_edge, %if.end29.i.userfaultfd_register.exit_crit_edge, %if.end8.i.i.userfaultfd_register.exit_crit_edge, %if.end23.i.userfaultfd_register.exit_crit_edge, %if.end8.i.userfaultfd_register.exit_crit_edge, %if.end.i48.userfaultfd_register.exit_crit_edge, %if.then11.i.i.i47
  %ret.7.i = phi i32 [ -22, %if.end8.i.userfaultfd_register.exit_crit_edge ], [ %ret.5.i, %out_unlock.i.userfaultfd_register.exit_crit_edge ], [ %ret.6.i, %if.then317.i ], [ -22, %if.end.i48.userfaultfd_register.exit_crit_edge ], [ -12, %if.end29.i.userfaultfd_register.exit_crit_edge ], [ -14, %if.then11.i.i.i47 ], [ -22, %if.end23.i.userfaultfd_register.exit_crit_edge ], [ -22, %if.end8.i.i.userfaultfd_register.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %uffdio_register.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prev.i) #11
  br label %cleanup

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call5 = tail call fastcc i32 @userfaultfd_unregister(ptr noundef %1, i32 noundef %arg)
  br label %cleanup

sw.bb6:                                           ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %uffdio_wake.i) #11
  %122 = getelementptr inbounds %struct.uffdio_range, ptr %uffdio_wake.i, i32 0, i32 1
  %123 = call ptr @memset(ptr %uffdio_wake.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %range.i) #11
  %124 = getelementptr inbounds %struct.userfaultfd_wake_range, ptr %range.i, i32 0, i32 1
  %125 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.22, i32 noundef 156) #11
  %call.i.i.i54 = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i54, label %sw.bb6.if.then11.i.i.i68_crit_edge, label %land.lhs.true.i.i.i57

sw.bb6.if.then11.i.i.i68_crit_edge:               ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i68

land.lhs.true.i.i.i57:                            ; preds = %sw.bb6
  %126 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %125, i32 16, i32 -1226833920) #16, !srcloc !143
  %asmresult.i.i.i55 = extractvalue { i32, i32 } %126, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i55)
  %cmp.i6.i.i56 = icmp eq i32 %asmresult.i.i.i55, 0
  br i1 %cmp.i6.i.i56, label %if.end.i.i.i65, label %land.lhs.true.i.i.i57.if.then11.i.i.i68_crit_edge, !prof !96

land.lhs.true.i.i.i57.if.then11.i.i.i68_crit_edge: ; preds = %land.lhs.true.i.i.i57
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i68

if.end.i.i.i65:                                   ; preds = %land.lhs.true.i.i.i57
  %call.i.i.i.i58 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %uffdio_wake.i, i32 noundef 16) #11
  %127 = call i32 @llvm.read_register.i32(metadata !84) #11
  %and.i.i.i.i.i.i.i59 = and i32 %127, -16384
  %128 = inttoptr i32 %and.i.i.i.i.i.i.i59 to ptr
  %cpu_domain.i.i.i.i.i.i60 = getelementptr inbounds %struct.thread_info, ptr %128, i32 0, i32 4
  %129 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i60) #5, !srcloc !136
  %and.i.i.i.i.i61 = and i32 %129, -13
  %or.i.i.i.i.i62 = or i32 %and.i.i.i.i.i61, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i62) #11, !srcloc !137
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !138
  %call1.i.i.i.i63 = call i32 @arm_copy_from_user(ptr noundef nonnull %uffdio_wake.i, ptr noundef %125, i32 noundef 16) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %129) #11, !srcloc !137
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !138
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i63)
  %tobool4.not.i.i.i64 = icmp eq i32 %call1.i.i.i.i63, 0
  br i1 %tobool4.not.i.i.i64, label %if.end.i71, label %if.end.i.i.i65.if.then11.i.i.i68_crit_edge, !prof !96

if.end.i.i.i65.if.then11.i.i.i68_crit_edge:       ; preds = %if.end.i.i.i65
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i68

if.then11.i.i.i68:                                ; preds = %if.end.i.i.i65.if.then11.i.i.i68_crit_edge, %land.lhs.true.i.i.i57.if.then11.i.i.i68_crit_edge, %sw.bb6.if.then11.i.i.i68_crit_edge
  %res.0.i.i31.i = phi i32 [ %call1.i.i.i.i63, %if.end.i.i.i65.if.then11.i.i.i68_crit_edge ], [ 16, %sw.bb6.if.then11.i.i.i68_crit_edge ], [ 16, %land.lhs.true.i.i.i57.if.then11.i.i.i68_crit_edge ]
  %sub.i.i.i66 = sub i32 16, %res.0.i.i31.i
  %add.ptr.i.i.i67 = getelementptr i8, ptr %uffdio_wake.i, i32 %sub.i.i.i66
  %130 = call ptr @memset(ptr %add.ptr.i.i.i67, i32 0, i32 %res.0.i.i31.i)
  br label %userfaultfd_wake.exit

if.end.i71:                                       ; preds = %if.end.i.i.i65
  %131 = ptrtoint ptr %uffdio_wake.i to i32
  call void @__asan_load8_noabort(i32 %131)
  %132 = load i64, ptr %uffdio_wake.i, align 8
  %133 = ptrtoint ptr %122 to i32
  call void @__asan_load8_noabort(i32 %133)
  %134 = load i64, ptr %122, align 8
  %135 = or i64 %134, %132
  %136 = and i64 %135, 4095
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %136)
  %137 = icmp ne i64 %136, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %134)
  %tobool6.not.i.i69 = icmp eq i64 %134, 0
  %or.cond27.i.i70 = or i1 %tobool6.not.i.i69, %137
  br i1 %or.cond27.i.i70, label %if.end.i71.userfaultfd_wake.exit_crit_edge, label %if.end8.i.i81

if.end.i71.userfaultfd_wake.exit_crit_edge:       ; preds = %if.end.i71
  call void @__sanitizer_cov_trace_pc() #13
  br label %userfaultfd_wake.exit

if.end8.i.i81:                                    ; preds = %if.end.i71
  %mm.i = getelementptr inbounds %struct.userfaultfd_ctx, ptr %1, i32 0, i32 10
  %138 = ptrtoint ptr %mm.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %mm.i, align 4
  %task_size1.i.i72 = getelementptr inbounds %struct.anon.0, ptr %139, i32 0, i32 6
  %140 = ptrtoint ptr %task_size1.i.i72 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %task_size1.i.i72, align 4
  %conv.i.i73 = zext i32 %141 to i64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmap_min_addr to i32))
  %142 = load i32, ptr @mmap_min_addr, align 4
  %conv9.i.i74 = zext i32 %142 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %132, i64 %conv9.i.i74)
  %cmp.i.i75 = icmp ult i64 %132, %conv9.i.i74
  call void @__sanitizer_cov_trace_cmp8(i64 %132, i64 %conv.i.i73)
  %cmp13.not.i.i76 = icmp uge i64 %132, %conv.i.i73
  %or.cond28.i.i77 = select i1 %cmp.i.i75, i1 true, i1 %cmp13.not.i.i76
  %sub.i.i78 = sub i64 %conv.i.i73, %132
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i.i78, i64 %134)
  %cmp17.i.i79 = icmp ult i64 %sub.i.i78, %134
  %or.cond.i80 = select i1 %or.cond28.i.i77, i1 true, i1 %cmp17.i.i79
  br i1 %or.cond.i80, label %if.end8.i.i81.userfaultfd_wake.exit_crit_edge, label %if.end4.i83

if.end8.i.i81.userfaultfd_wake.exit_crit_edge:    ; preds = %if.end8.i.i81
  call void @__sanitizer_cov_trace_pc() #13
  br label %userfaultfd_wake.exit

if.end4.i83:                                      ; preds = %if.end8.i.i81
  %conv.i82 = trunc i64 %132 to i32
  %143 = ptrtoint ptr %range.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %conv.i82, ptr %range.i, align 4
  %conv8.i = trunc i64 %134 to i32
  %144 = ptrtoint ptr %124 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %conv8.i, ptr %124, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv8.i)
  %tobool11.not.i = icmp eq i32 %conv8.i, 0
  br i1 %tobool11.not.i, label %do.body16.i, label %do.end22.i, !prof !94

do.body16.i:                                      ; preds = %if.end4.i83
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/userfaultfd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1681, 0\0A.popsection", ""() #11, !srcloc !152
  unreachable

do.end22.i:                                       ; preds = %if.end4.i83
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !153
  %refile_seq.i.i = getelementptr inbounds %struct.userfaultfd_ctx, ptr %1, i32 0, i32 4
  %dep_map.c48.i.i.i = getelementptr inbounds %struct.userfaultfd_ctx, ptr %1, i32 0, i32 4, i32 0, i32 1
  %head.i.i.i = getelementptr inbounds %struct.wait_queue_head, ptr %1, i32 0, i32 1
  %head.i42.i.i = getelementptr inbounds %struct.userfaultfd_ctx, ptr %1, i32 0, i32 1, i32 1
  br label %do.body4.i.i

do.body4.i.i:                                     ; preds = %lor.end.i.i.do.body4.i.i_crit_edge, %do.end22.i
  %145 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !154
  %and.i.i.i.i84 = and i32 %145, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i84)
  %tobool.not.i.i.i85 = icmp eq i32 %and.i.i.i.i84, 0
  br i1 %tobool.not.i.i.i85, label %if.then.i.i25.i, label %do.body24.critedge.i.i.i

if.then.i.i25.i:                                  ; preds = %do.body4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @trace_hardirqs_off() #11
  %146 = call ptr @llvm.returnaddress(i32 0) #11
  %147 = ptrtoint ptr %146 to i32
  call void @lock_acquire(ptr noundef %dep_map.c48.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %147) #11
  call void @lock_release(ptr noundef %dep_map.c48.i.i.i, i32 noundef %147) #11
  call void @trace_hardirqs_on() #11
  br label %do.body24.i.i.i

do.body24.critedge.i.i.i:                         ; preds = %do.body4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %148 = call ptr @llvm.returnaddress(i32 0) #11
  %149 = ptrtoint ptr %148 to i32
  call void @lock_acquire(ptr noundef %dep_map.c48.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %149) #11
  call void @lock_release(ptr noundef %dep_map.c48.i.i.i, i32 noundef %149) #11
  br label %do.body24.i.i.i

do.body24.i.i.i:                                  ; preds = %do.body24.critedge.i.i.i, %if.then.i.i25.i
  %150 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !155
  %and.i.i.i.i26.i = and i32 %150, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i26.i)
  %tobool32.not.i.i.i = icmp eq i32 %and.i.i.i.i26.i, 0
  br i1 %tobool32.not.i.i.i, label %if.then36.i.i.i, label %do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge, !prof !94

do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge: ; preds = %do.body24.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %seqcount_lockdep_reader_access.exit.i.i

if.then36.i.i.i:                                  ; preds = %do.body24.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @warn_bogus_irq_restore() #11
  br label %seqcount_lockdep_reader_access.exit.i.i

seqcount_lockdep_reader_access.exit.i.i:          ; preds = %if.then36.i.i.i, %do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %145) #11, !srcloc !156
  %151 = ptrtoint ptr %refile_seq.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load volatile i32, ptr %refile_seq.i.i, align 4
  %and48.i.i = and i32 %152, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48.i.i)
  %tobool.not49.i.i = icmp eq i32 %and48.i.i, 0
  br i1 %tobool.not49.i.i, label %seqcount_lockdep_reader_access.exit.i.i.while.end.i.i_crit_edge, label %seqcount_lockdep_reader_access.exit.i.i.do.end11.i.i_crit_edge

seqcount_lockdep_reader_access.exit.i.i.do.end11.i.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i.i
  br label %do.end11.i.i

seqcount_lockdep_reader_access.exit.i.i.while.end.i.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i.i

do.end11.i.i:                                     ; preds = %do.end11.i.i.do.end11.i.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.i.do.end11.i.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !157
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !158
  %153 = ptrtoint ptr %refile_seq.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load volatile i32, ptr %refile_seq.i.i, align 4
  %and.i.i86 = and i32 %154, 1
  %tobool.not.i.i87 = icmp eq i32 %and.i.i86, 0
  br i1 %tobool.not.i.i87, label %do.end11.i.i.while.end.i.i_crit_edge, label %do.end11.i.i.do.end11.i.i_crit_edge

do.end11.i.i.do.end11.i.i_crit_edge:              ; preds = %do.end11.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end11.i.i

do.end11.i.i.while.end.i.i_crit_edge:             ; preds = %do.end11.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %do.end11.i.i.while.end.i.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.i.while.end.i.i_crit_edge
  %.lcssa.i.i = phi i32 [ %152, %seqcount_lockdep_reader_access.exit.i.i.while.end.i.i_crit_edge ], [ %154, %do.end11.i.i.while.end.i.i_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !159
  %155 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load volatile ptr, ptr %head.i.i.i, align 4
  %cmp.i.i.not.i.i = icmp eq ptr %156, %head.i.i.i
  br i1 %cmp.i.i.not.i.i, label %lor.rhs.i.i, label %while.end.i.i.lor.end.i.i_crit_edge

while.end.i.i.lor.end.i.i_crit_edge:              ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.end.i.i

lor.rhs.i.i:                                      ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %157 = ptrtoint ptr %head.i42.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load volatile ptr, ptr %head.i42.i.i, align 4
  %cmp.i.i43.i.i = icmp ne ptr %158, %head.i42.i.i
  br label %lor.end.i.i

lor.end.i.i:                                      ; preds = %lor.rhs.i.i, %while.end.i.i.lor.end.i.i_crit_edge
  %159 = phi i1 [ true, %while.end.i.i.lor.end.i.i_crit_edge ], [ %cmp.i.i43.i.i, %lor.rhs.i.i ]
  call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 1229, i32 noundef 0) #11
  %call.i.i27.i = call i32 @__cond_resched() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !160
  %160 = ptrtoint ptr %refile_seq.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load volatile i32, ptr %refile_seq.i.i, align 4
  %cmp.i.i45.not.i.i = icmp eq i32 %161, %.lcssa.i.i
  br i1 %cmp.i.i45.not.i.i, label %do.end35.i.i, label %lor.end.i.i.do.body4.i.i_crit_edge

lor.end.i.i.do.body4.i.i_crit_edge:               ; preds = %lor.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body4.i.i

do.end35.i.i:                                     ; preds = %lor.end.i.i
  br i1 %159, label %if.then.i.i, label %do.end35.i.i.userfaultfd_wake.exit_crit_edge

do.end35.i.i.userfaultfd_wake.exit_crit_edge:     ; preds = %do.end35.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %userfaultfd_wake.exit

if.then.i.i:                                      ; preds = %do.end35.i.i
  call void @_raw_spin_lock_irq(ptr noundef %1) #11
  %162 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load volatile ptr, ptr %head.i.i.i, align 4
  %cmp.i.i.not.i.i.i = icmp eq ptr %163, %head.i.i.i
  br i1 %cmp.i.i.not.i.i.i, label %if.then.i.i.if.end.i.i28.i_crit_edge, label %if.then.i46.i.i

if.then.i.i.if.end.i.i28.i_crit_edge:             ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i28.i

if.then.i46.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__wake_up_locked_key(ptr noundef %1, i32 noundef 3, ptr noundef nonnull %range.i) #11
  br label %if.end.i.i28.i

if.end.i.i28.i:                                   ; preds = %if.then.i46.i.i, %if.then.i.i.if.end.i.i28.i_crit_edge
  %164 = ptrtoint ptr %head.i42.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load volatile ptr, ptr %head.i42.i.i, align 4
  %cmp.i.i17.not.i.i.i = icmp eq ptr %165, %head.i42.i.i
  br i1 %cmp.i.i17.not.i.i.i, label %if.end.i.i28.i.__wake_userfault.exit.i.i_crit_edge, label %if.then5.i.i.i

if.end.i.i28.i.__wake_userfault.exit.i.i_crit_edge: ; preds = %if.end.i.i28.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__wake_userfault.exit.i.i

if.then5.i.i.i:                                   ; preds = %if.end.i.i28.i
  call void @__sanitizer_cov_trace_pc() #13
  %fault_wqh.i.i.i = getelementptr inbounds %struct.userfaultfd_ctx, ptr %1, i32 0, i32 1
  call void @__wake_up(ptr noundef %fault_wqh.i.i.i, i32 noundef 3, i32 noundef 1, ptr noundef nonnull %range.i) #11
  br label %__wake_userfault.exit.i.i

__wake_userfault.exit.i.i:                        ; preds = %if.then5.i.i.i, %if.end.i.i28.i.__wake_userfault.exit.i.i_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef %1) #11
  br label %userfaultfd_wake.exit

userfaultfd_wake.exit:                            ; preds = %__wake_userfault.exit.i.i, %do.end35.i.i.userfaultfd_wake.exit_crit_edge, %if.end8.i.i81.userfaultfd_wake.exit_crit_edge, %if.end.i71.userfaultfd_wake.exit_crit_edge, %if.then11.i.i.i68
  %ret.0.i88 = phi i32 [ 0, %do.end35.i.i.userfaultfd_wake.exit_crit_edge ], [ 0, %__wake_userfault.exit.i.i ], [ -14, %if.then11.i.i.i68 ], [ -22, %if.end.i71.userfaultfd_wake.exit_crit_edge ], [ -22, %if.end8.i.i81.userfaultfd_wake.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %range.i) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %uffdio_wake.i) #11
  br label %cleanup

sw.bb8:                                           ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %uffdio_copy.i) #11
  %166 = getelementptr inbounds %struct.uffdio_copy, ptr %uffdio_copy.i, i32 0, i32 1
  %167 = getelementptr inbounds %struct.uffdio_copy, ptr %uffdio_copy.i, i32 0, i32 2
  %168 = getelementptr inbounds %struct.uffdio_copy, ptr %uffdio_copy.i, i32 0, i32 3
  %169 = call ptr @memset(ptr %uffdio_copy.i, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %range.i89) #11
  %170 = getelementptr inbounds %struct.userfaultfd_wake_range, ptr %range.i89, i32 0, i32 1
  %171 = inttoptr i32 %arg to ptr
  %mmap_changing.i = getelementptr inbounds %struct.userfaultfd_ctx, ptr %1, i32 0, i32 9
  %call.i.i.i90 = tail call zeroext i1 @__kasan_check_read(ptr noundef %mmap_changing.i, i32 noundef 4) #11
  %172 = ptrtoint ptr %mmap_changing.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load volatile i32, ptr %mmap_changing.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %173)
  %tobool.not.i = icmp eq i32 %173, 0
  br i1 %tobool.not.i, label %if.end59.i.i.i, label %sw.bb8.userfaultfd_copy.exit_crit_edge

sw.bb8.userfaultfd_copy.exit_crit_edge:           ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #13
  br label %userfaultfd_copy.exit

if.end59.i.i.i:                                   ; preds = %sw.bb8
  tail call void @__might_fault(ptr noundef nonnull @.str.22, i32 noundef 156) #11
  %call.i.i97.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i97.i, label %if.end59.i.i.i.if.then11.i.i.i104_crit_edge, label %land.lhs.true.i.i.i93

if.end59.i.i.i.if.then11.i.i.i104_crit_edge:      ; preds = %if.end59.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i104

land.lhs.true.i.i.i93:                            ; preds = %if.end59.i.i.i
  %174 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %171, i32 32, i32 -1226833920) #16, !srcloc !143
  %asmresult.i.i.i91 = extractvalue { i32, i32 } %174, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i91)
  %cmp.i6.i.i92 = icmp eq i32 %asmresult.i.i.i91, 0
  br i1 %cmp.i6.i.i92, label %if.end.i.i.i101, label %land.lhs.true.i.i.i93.if.then11.i.i.i104_crit_edge, !prof !96

land.lhs.true.i.i.i93.if.then11.i.i.i104_crit_edge: ; preds = %land.lhs.true.i.i.i93
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i104

if.end.i.i.i101:                                  ; preds = %land.lhs.true.i.i.i93
  %call.i.i.i.i94 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %uffdio_copy.i, i32 noundef 32) #11
  %175 = call i32 @llvm.read_register.i32(metadata !84) #11
  %and.i.i.i.i.i.i.i95 = and i32 %175, -16384
  %176 = inttoptr i32 %and.i.i.i.i.i.i.i95 to ptr
  %cpu_domain.i.i.i.i.i.i96 = getelementptr inbounds %struct.thread_info, ptr %176, i32 0, i32 4
  %177 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i96) #5, !srcloc !136
  %and.i.i.i.i.i97 = and i32 %177, -13
  %or.i.i.i.i.i98 = or i32 %and.i.i.i.i.i97, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i98) #11, !srcloc !137
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !138
  %call1.i.i.i.i99 = call i32 @arm_copy_from_user(ptr noundef nonnull %uffdio_copy.i, ptr noundef %171, i32 noundef 32) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %177) #11, !srcloc !137
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !138
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i99)
  %tobool4.not.i.i.i100 = icmp eq i32 %call1.i.i.i.i99, 0
  br i1 %tobool4.not.i.i.i100, label %if.end4.i108, label %if.end.i.i.i101.if.then11.i.i.i104_crit_edge, !prof !96

if.end.i.i.i101.if.then11.i.i.i104_crit_edge:     ; preds = %if.end.i.i.i101
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i104

if.then11.i.i.i104:                               ; preds = %if.end.i.i.i101.if.then11.i.i.i104_crit_edge, %land.lhs.true.i.i.i93.if.then11.i.i.i104_crit_edge, %if.end59.i.i.i.if.then11.i.i.i104_crit_edge
  %res.0.i.i106.i = phi i32 [ %call1.i.i.i.i99, %if.end.i.i.i101.if.then11.i.i.i104_crit_edge ], [ 32, %if.end59.i.i.i.if.then11.i.i.i104_crit_edge ], [ 32, %land.lhs.true.i.i.i93.if.then11.i.i.i104_crit_edge ]
  %sub.i.i.i102 = sub i32 32, %res.0.i.i106.i
  %add.ptr.i.i.i103 = getelementptr i8, ptr %uffdio_copy.i, i32 %sub.i.i.i102
  %178 = call ptr @memset(ptr %add.ptr.i.i.i103, i32 0, i32 %res.0.i.i106.i)
  br label %userfaultfd_copy.exit

if.end4.i108:                                     ; preds = %if.end.i.i.i101
  %mm.i105 = getelementptr inbounds %struct.userfaultfd_ctx, ptr %1, i32 0, i32 10
  %179 = ptrtoint ptr %mm.i105 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %mm.i105, align 4
  %181 = ptrtoint ptr %uffdio_copy.i to i32
  call void @__asan_load8_noabort(i32 %181)
  %182 = load i64, ptr %uffdio_copy.i, align 8
  %183 = ptrtoint ptr %167 to i32
  call void @__asan_load8_noabort(i32 %183)
  %184 = load i64, ptr %167, align 8
  %185 = or i64 %184, %182
  %186 = and i64 %185, 4095
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %186)
  %187 = icmp ne i64 %186, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %184)
  %tobool6.not.i.i106 = icmp eq i64 %184, 0
  %or.cond27.i.i107 = or i1 %tobool6.not.i.i106, %187
  br i1 %or.cond27.i.i107, label %if.end4.i108.userfaultfd_copy.exit_crit_edge, label %if.end8.i.i118

if.end4.i108.userfaultfd_copy.exit_crit_edge:     ; preds = %if.end4.i108
  call void @__sanitizer_cov_trace_pc() #13
  br label %userfaultfd_copy.exit

if.end8.i.i118:                                   ; preds = %if.end4.i108
  %task_size1.i.i109 = getelementptr inbounds %struct.anon.0, ptr %180, i32 0, i32 6
  %188 = ptrtoint ptr %task_size1.i.i109 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %task_size1.i.i109, align 4
  %conv.i.i110 = zext i32 %189 to i64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmap_min_addr to i32))
  %190 = load i32, ptr @mmap_min_addr, align 4
  %conv9.i.i111 = zext i32 %190 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %182, i64 %conv9.i.i111)
  %cmp.i.i112 = icmp ult i64 %182, %conv9.i.i111
  call void @__sanitizer_cov_trace_cmp8(i64 %182, i64 %conv.i.i110)
  %cmp13.not.i.i113 = icmp uge i64 %182, %conv.i.i110
  %or.cond28.i.i114 = select i1 %cmp.i.i112, i1 true, i1 %cmp13.not.i.i113
  %sub.i.i115 = sub i64 %conv.i.i110, %182
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i.i115, i64 %184)
  %cmp17.i.i116 = icmp ult i64 %sub.i.i115, %184
  %or.cond.i117 = select i1 %or.cond28.i.i114, i1 true, i1 %cmp17.i.i116
  br i1 %or.cond.i117, label %if.end8.i.i118.userfaultfd_copy.exit_crit_edge, label %if.end8.i121

if.end8.i.i118.userfaultfd_copy.exit_crit_edge:   ; preds = %if.end8.i.i118
  call void @__sanitizer_cov_trace_pc() #13
  br label %userfaultfd_copy.exit

if.end8.i121:                                     ; preds = %if.end8.i.i118
  %191 = ptrtoint ptr %166 to i32
  call void @__asan_load8_noabort(i32 %191)
  %192 = load i64, ptr %166, align 8
  %add.i119 = add i64 %192, %184
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i119, i64 %192)
  %cmp.not.i120 = icmp ugt i64 %add.i119, %192
  br i1 %cmp.not.i120, label %if.end13.i, label %if.end8.i121.userfaultfd_copy.exit_crit_edge

if.end8.i121.userfaultfd_copy.exit_crit_edge:     ; preds = %if.end8.i121
  call void @__sanitizer_cov_trace_pc() #13
  br label %userfaultfd_copy.exit

if.end13.i:                                       ; preds = %if.end8.i121
  %193 = ptrtoint ptr %168 to i32
  call void @__asan_load8_noabort(i32 %193)
  %194 = load i64, ptr %168, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4, i64 %194)
  %tobool14.not.i = icmp ult i64 %194, 4
  br i1 %tobool14.not.i, label %if.end16.i, label %if.end13.i.userfaultfd_copy.exit_crit_edge

if.end13.i.userfaultfd_copy.exit_crit_edge:       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %userfaultfd_copy.exit

if.end16.i:                                       ; preds = %if.end13.i
  %call18.i = call fastcc zeroext i1 @mmget_not_zero(ptr noundef %180) #11
  br i1 %call18.i, label %if.then19.i, label %if.end16.i.userfaultfd_copy.exit_crit_edge

if.end16.i.userfaultfd_copy.exit_crit_edge:       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %userfaultfd_copy.exit

if.then19.i:                                      ; preds = %if.end16.i
  %195 = ptrtoint ptr %mm.i105 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %mm.i105, align 4
  %197 = ptrtoint ptr %uffdio_copy.i to i32
  call void @__asan_load8_noabort(i32 %197)
  %198 = load i64, ptr %uffdio_copy.i, align 8
  %conv22.i = trunc i64 %198 to i32
  %199 = ptrtoint ptr %166 to i32
  call void @__asan_load8_noabort(i32 %199)
  %200 = load i64, ptr %166, align 8
  %conv24.i = trunc i64 %200 to i32
  %201 = ptrtoint ptr %167 to i32
  call void @__asan_load8_noabort(i32 %201)
  %202 = load i64, ptr %167, align 8
  %conv26.i = trunc i64 %202 to i32
  %203 = ptrtoint ptr %168 to i32
  call void @__asan_load8_noabort(i32 %203)
  %204 = load i64, ptr %168, align 8
  %call29.i = call i32 @mcopy_atomic(ptr noundef %196, i32 noundef %conv22.i, i32 noundef %conv24.i, i32 noundef %conv26.i, ptr noundef %mmap_changing.i, i64 noundef %204) #11
  %conv30.i = sext i32 %call29.i to i64
  %205 = ptrtoint ptr %mm.i105 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %mm.i105, align 4
  call void @mmput(ptr noundef %206) #11
  %copy.i = getelementptr inbounds %struct.uffdio_copy, ptr %171, i32 0, i32 4
  call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 1731) #11
  %207 = call i32 @llvm.read_register.i32(metadata !84) #11
  %and.i.i.i.i122 = and i32 %207, -16384
  %208 = inttoptr i32 %and.i.i.i.i122 to ptr
  %cpu_domain.i.i.i123 = getelementptr inbounds %struct.thread_info, ptr %208, i32 0, i32 4
  %209 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i123) #5, !srcloc !136
  %and.i.i124 = and i32 %209, -13
  %or.i.i125 = or i32 %and.i.i124, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i125) #11, !srcloc !137
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !138
  %210 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_8", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %copy.i, i64 %conv30.i, i32 -1226833921) #11, !srcloc !161
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %209) #11, !srcloc !137
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !138
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %210)
  %tobool35.not.i = icmp eq i32 %210, 0
  br i1 %tobool35.not.i, label %if.end39.i, label %if.then19.i.userfaultfd_copy.exit_crit_edge, !prof !96

if.then19.i.userfaultfd_copy.exit_crit_edge:      ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %userfaultfd_copy.exit

if.end39.i:                                       ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %cmp40.i = icmp slt i32 %call29.i, 0
  br i1 %cmp40.i, label %if.end39.i.userfaultfd_copy.exit_crit_edge, label %do.body44.i

if.end39.i.userfaultfd_copy.exit_crit_edge:       ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %userfaultfd_copy.exit

do.body44.i:                                      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool45.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool45.not.i, label %do.body55.i, label %do.end63.i, !prof !94

do.body55.i:                                      ; preds = %do.body44.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/userfaultfd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1735, 0\0A.popsection", ""() #11, !srcloc !162
  unreachable

do.end63.i:                                       ; preds = %do.body44.i
  %211 = ptrtoint ptr %170 to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 %call29.i, ptr %170, align 4
  %212 = ptrtoint ptr %168 to i32
  call void @__asan_load8_noabort(i32 %212)
  %213 = load i64, ptr %168, align 8
  %and67.i = and i64 %213, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and67.i)
  %tobool68.not.i = icmp eq i64 %and67.i, 0
  br i1 %tobool68.not.i, label %if.then69.i, label %do.end63.i.if.end72.i_crit_edge

do.end63.i.if.end72.i_crit_edge:                  ; preds = %do.end63.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end72.i

if.then69.i:                                      ; preds = %do.end63.i
  %214 = ptrtoint ptr %uffdio_copy.i to i32
  call void @__asan_load8_noabort(i32 %214)
  %215 = load i64, ptr %uffdio_copy.i, align 8
  %conv71.i = trunc i64 %215 to i32
  %216 = ptrtoint ptr %range.i89 to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 %conv71.i, ptr %range.i89, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !153
  %refile_seq.i.i126 = getelementptr inbounds %struct.userfaultfd_ctx, ptr %1, i32 0, i32 4
  %dep_map.c48.i.i.i127 = getelementptr inbounds %struct.userfaultfd_ctx, ptr %1, i32 0, i32 4, i32 0, i32 1
  %head.i.i.i128 = getelementptr inbounds %struct.wait_queue_head, ptr %1, i32 0, i32 1
  %head.i42.i.i129 = getelementptr inbounds %struct.userfaultfd_ctx, ptr %1, i32 0, i32 1, i32 1
  br label %do.body4.i.i131

do.body4.i.i131:                                  ; preds = %lor.end.i.i147.do.body4.i.i131_crit_edge, %if.then69.i
  %217 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !154
  %and.i.i.i98.i = and i32 %217, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i98.i)
  %tobool.not.i.i.i130 = icmp eq i32 %and.i.i.i98.i, 0
  br i1 %tobool.not.i.i.i130, label %if.then.i.i99.i, label %do.body24.critedge.i.i.i132

if.then.i.i99.i:                                  ; preds = %do.body4.i.i131
  call void @__sanitizer_cov_trace_pc() #13
  call void @trace_hardirqs_off() #11
  %218 = call ptr @llvm.returnaddress(i32 0) #11
  %219 = ptrtoint ptr %218 to i32
  call void @lock_acquire(ptr noundef %dep_map.c48.i.i.i127, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %219) #11
  call void @lock_release(ptr noundef %dep_map.c48.i.i.i127, i32 noundef %219) #11
  call void @trace_hardirqs_on() #11
  br label %do.body24.i.i.i134

do.body24.critedge.i.i.i132:                      ; preds = %do.body4.i.i131
  call void @__sanitizer_cov_trace_pc() #13
  %220 = call ptr @llvm.returnaddress(i32 0) #11
  %221 = ptrtoint ptr %220 to i32
  call void @lock_acquire(ptr noundef %dep_map.c48.i.i.i127, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %221) #11
  call void @lock_release(ptr noundef %dep_map.c48.i.i.i127, i32 noundef %221) #11
  br label %do.body24.i.i.i134

do.body24.i.i.i134:                               ; preds = %do.body24.critedge.i.i.i132, %if.then.i.i99.i
  %222 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !155
  %and.i.i.i.i100.i = and i32 %222, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i100.i)
  %tobool32.not.i.i.i133 = icmp eq i32 %and.i.i.i.i100.i, 0
  br i1 %tobool32.not.i.i.i133, label %if.then36.i.i.i135, label %do.body24.i.i.i134.seqcount_lockdep_reader_access.exit.i.i138_crit_edge, !prof !94

do.body24.i.i.i134.seqcount_lockdep_reader_access.exit.i.i138_crit_edge: ; preds = %do.body24.i.i.i134
  call void @__sanitizer_cov_trace_pc() #13
  br label %seqcount_lockdep_reader_access.exit.i.i138

if.then36.i.i.i135:                               ; preds = %do.body24.i.i.i134
  call void @__sanitizer_cov_trace_pc() #13
  call void @warn_bogus_irq_restore() #11
  br label %seqcount_lockdep_reader_access.exit.i.i138

seqcount_lockdep_reader_access.exit.i.i138:       ; preds = %if.then36.i.i.i135, %do.body24.i.i.i134.seqcount_lockdep_reader_access.exit.i.i138_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %217) #11, !srcloc !156
  %223 = ptrtoint ptr %refile_seq.i.i126 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load volatile i32, ptr %refile_seq.i.i126, align 4
  %and48.i.i136 = and i32 %224, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48.i.i136)
  %tobool.not49.i.i137 = icmp eq i32 %and48.i.i136, 0
  br i1 %tobool.not49.i.i137, label %seqcount_lockdep_reader_access.exit.i.i138.while.end.i.i143_crit_edge, label %seqcount_lockdep_reader_access.exit.i.i138.do.end11.i.i140_crit_edge

seqcount_lockdep_reader_access.exit.i.i138.do.end11.i.i140_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i.i138
  br label %do.end11.i.i140

seqcount_lockdep_reader_access.exit.i.i138.while.end.i.i143_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i.i138
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i.i143

do.end11.i.i140:                                  ; preds = %do.end11.i.i140.do.end11.i.i140_crit_edge, %seqcount_lockdep_reader_access.exit.i.i138.do.end11.i.i140_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !157
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !158
  %225 = ptrtoint ptr %refile_seq.i.i126 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load volatile i32, ptr %refile_seq.i.i126, align 4
  %and.i101.i = and i32 %226, 1
  %tobool.not.i.i139 = icmp eq i32 %and.i101.i, 0
  br i1 %tobool.not.i.i139, label %do.end11.i.i140.while.end.i.i143_crit_edge, label %do.end11.i.i140.do.end11.i.i140_crit_edge

do.end11.i.i140.do.end11.i.i140_crit_edge:        ; preds = %do.end11.i.i140
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end11.i.i140

do.end11.i.i140.while.end.i.i143_crit_edge:       ; preds = %do.end11.i.i140
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i.i143

while.end.i.i143:                                 ; preds = %do.end11.i.i140.while.end.i.i143_crit_edge, %seqcount_lockdep_reader_access.exit.i.i138.while.end.i.i143_crit_edge
  %.lcssa.i.i141 = phi i32 [ %224, %seqcount_lockdep_reader_access.exit.i.i138.while.end.i.i143_crit_edge ], [ %226, %do.end11.i.i140.while.end.i.i143_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !159
  %227 = ptrtoint ptr %head.i.i.i128 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load volatile ptr, ptr %head.i.i.i128, align 4
  %cmp.i.i.not.i.i142 = icmp eq ptr %228, %head.i.i.i128
  br i1 %cmp.i.i.not.i.i142, label %lor.rhs.i.i145, label %while.end.i.i143.lor.end.i.i147_crit_edge

while.end.i.i143.lor.end.i.i147_crit_edge:        ; preds = %while.end.i.i143
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.end.i.i147

lor.rhs.i.i145:                                   ; preds = %while.end.i.i143
  call void @__sanitizer_cov_trace_pc() #13
  %229 = ptrtoint ptr %head.i42.i.i129 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load volatile ptr, ptr %head.i42.i.i129, align 4
  %cmp.i.i43.i.i144 = icmp ne ptr %230, %head.i42.i.i129
  br label %lor.end.i.i147

lor.end.i.i147:                                   ; preds = %lor.rhs.i.i145, %while.end.i.i143.lor.end.i.i147_crit_edge
  %231 = phi i1 [ true, %while.end.i.i143.lor.end.i.i147_crit_edge ], [ %cmp.i.i43.i.i144, %lor.rhs.i.i145 ]
  call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 1229, i32 noundef 0) #11
  %call.i.i102.i = call i32 @__cond_resched() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !160
  %232 = ptrtoint ptr %refile_seq.i.i126 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load volatile i32, ptr %refile_seq.i.i126, align 4
  %cmp.i.i45.not.i.i146 = icmp eq i32 %233, %.lcssa.i.i141
  br i1 %cmp.i.i45.not.i.i146, label %do.end35.i.i148, label %lor.end.i.i147.do.body4.i.i131_crit_edge

lor.end.i.i147.do.body4.i.i131_crit_edge:         ; preds = %lor.end.i.i147
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body4.i.i131

do.end35.i.i148:                                  ; preds = %lor.end.i.i147
  br i1 %231, label %if.then.i.i150, label %do.end35.i.i148.if.end72.i_crit_edge

do.end35.i.i148.if.end72.i_crit_edge:             ; preds = %do.end35.i.i148
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end72.i

if.then.i.i150:                                   ; preds = %do.end35.i.i148
  call void @_raw_spin_lock_irq(ptr noundef %1) #11
  %234 = ptrtoint ptr %head.i.i.i128 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load volatile ptr, ptr %head.i.i.i128, align 4
  %cmp.i.i.not.i.i.i149 = icmp eq ptr %235, %head.i.i.i128
  br i1 %cmp.i.i.not.i.i.i149, label %if.then.i.i150.if.end.i.i103.i_crit_edge, label %if.then.i46.i.i151

if.then.i.i150.if.end.i.i103.i_crit_edge:         ; preds = %if.then.i.i150
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i103.i

if.then.i46.i.i151:                               ; preds = %if.then.i.i150
  call void @__sanitizer_cov_trace_pc() #13
  call void @__wake_up_locked_key(ptr noundef %1, i32 noundef 3, ptr noundef nonnull %range.i89) #11
  br label %if.end.i.i103.i

if.end.i.i103.i:                                  ; preds = %if.then.i46.i.i151, %if.then.i.i150.if.end.i.i103.i_crit_edge
  %236 = ptrtoint ptr %head.i42.i.i129 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load volatile ptr, ptr %head.i42.i.i129, align 4
  %cmp.i.i17.not.i.i.i152 = icmp eq ptr %237, %head.i42.i.i129
  br i1 %cmp.i.i17.not.i.i.i152, label %if.end.i.i103.i.__wake_userfault.exit.i.i155_crit_edge, label %if.then5.i.i.i154

if.end.i.i103.i.__wake_userfault.exit.i.i155_crit_edge: ; preds = %if.end.i.i103.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__wake_userfault.exit.i.i155

if.then5.i.i.i154:                                ; preds = %if.end.i.i103.i
  call void @__sanitizer_cov_trace_pc() #13
  %fault_wqh.i.i.i153 = getelementptr inbounds %struct.userfaultfd_ctx, ptr %1, i32 0, i32 1
  call void @__wake_up(ptr noundef %fault_wqh.i.i.i153, i32 noundef 3, i32 noundef 1, ptr noundef nonnull %range.i89) #11
  br label %__wake_userfault.exit.i.i155

__wake_userfault.exit.i.i155:                     ; preds = %if.then5.i.i.i154, %if.end.i.i103.i.__wake_userfault.exit.i.i155_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef %1) #11
  br label %if.end72.i

if.end72.i:                                       ; preds = %__wake_userfault.exit.i.i155, %do.end35.i.i148.if.end72.i_crit_edge, %do.end63.i.if.end72.i_crit_edge
  %238 = ptrtoint ptr %170 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %170, align 4
  %conv74.i = zext i32 %239 to i64
  %240 = ptrtoint ptr %167 to i32
  call void @__asan_load8_noabort(i32 %240)
  %241 = load i64, ptr %167, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %241, i64 %conv74.i)
  %cmp76.i = icmp eq i64 %241, %conv74.i
  %extract.t96.i = select i1 %cmp76.i, i32 0, i32 -11
  br label %userfaultfd_copy.exit

userfaultfd_copy.exit:                            ; preds = %if.end72.i, %if.end39.i.userfaultfd_copy.exit_crit_edge, %if.then19.i.userfaultfd_copy.exit_crit_edge, %if.end16.i.userfaultfd_copy.exit_crit_edge, %if.end13.i.userfaultfd_copy.exit_crit_edge, %if.end8.i121.userfaultfd_copy.exit_crit_edge, %if.end8.i.i118.userfaultfd_copy.exit_crit_edge, %if.end4.i108.userfaultfd_copy.exit_crit_edge, %if.then11.i.i.i104, %sw.bb8.userfaultfd_copy.exit_crit_edge
  %retval.0.i = phi i32 [ -3, %if.end16.i.userfaultfd_copy.exit_crit_edge ], [ -14, %if.then19.i.userfaultfd_copy.exit_crit_edge ], [ -11, %sw.bb8.userfaultfd_copy.exit_crit_edge ], [ -22, %if.end8.i121.userfaultfd_copy.exit_crit_edge ], [ -22, %if.end13.i.userfaultfd_copy.exit_crit_edge ], [ %call29.i, %if.end39.i.userfaultfd_copy.exit_crit_edge ], [ %extract.t96.i, %if.end72.i ], [ -14, %if.then11.i.i.i104 ], [ -22, %if.end4.i108.userfaultfd_copy.exit_crit_edge ], [ -22, %if.end8.i.i118.userfaultfd_copy.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %range.i89) #11
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %uffdio_copy.i) #11
  br label %cleanup

sw.bb10:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %uffdio_zeropage.i) #11
  %242 = getelementptr inbounds %struct.uffdio_range, ptr %uffdio_zeropage.i, i32 0, i32 1
  %243 = getelementptr inbounds %struct.uffdio_zeropage, ptr %uffdio_zeropage.i, i32 0, i32 1
  %244 = call ptr @memset(ptr %uffdio_zeropage.i, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %range.i156) #11
  %245 = getelementptr inbounds %struct.userfaultfd_wake_range, ptr %range.i156, i32 0, i32 1
  %246 = inttoptr i32 %arg to ptr
  %mmap_changing.i157 = getelementptr inbounds %struct.userfaultfd_ctx, ptr %1, i32 0, i32 9
  %call.i.i.i158 = tail call zeroext i1 @__kasan_check_read(ptr noundef %mmap_changing.i157, i32 noundef 4) #11
  %247 = ptrtoint ptr %mmap_changing.i157 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load volatile i32, ptr %mmap_changing.i157, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %248)
  %tobool.not.i159 = icmp eq i32 %248, 0
  br i1 %tobool.not.i159, label %if.end59.i.i.i160, label %sw.bb10.userfaultfd_zeropage.exit_crit_edge

sw.bb10.userfaultfd_zeropage.exit_crit_edge:      ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #13
  br label %userfaultfd_zeropage.exit

if.end59.i.i.i160:                                ; preds = %sw.bb10
  tail call void @__might_fault(ptr noundef nonnull @.str.22, i32 noundef 156) #11
  %call.i.i95.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i95.i, label %if.end59.i.i.i160.if.then11.i.i.i174_crit_edge, label %land.lhs.true.i.i.i163

if.end59.i.i.i160.if.then11.i.i.i174_crit_edge:   ; preds = %if.end59.i.i.i160
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i174

land.lhs.true.i.i.i163:                           ; preds = %if.end59.i.i.i160
  %249 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %246, i32 24, i32 -1226833920) #16, !srcloc !143
  %asmresult.i.i.i161 = extractvalue { i32, i32 } %249, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i161)
  %cmp.i6.i.i162 = icmp eq i32 %asmresult.i.i.i161, 0
  br i1 %cmp.i6.i.i162, label %if.end.i.i.i171, label %land.lhs.true.i.i.i163.if.then11.i.i.i174_crit_edge, !prof !96

land.lhs.true.i.i.i163.if.then11.i.i.i174_crit_edge: ; preds = %land.lhs.true.i.i.i163
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i174

if.end.i.i.i171:                                  ; preds = %land.lhs.true.i.i.i163
  %call.i.i.i.i164 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %uffdio_zeropage.i, i32 noundef 24) #11
  %250 = call i32 @llvm.read_register.i32(metadata !84) #11
  %and.i.i.i.i.i.i.i165 = and i32 %250, -16384
  %251 = inttoptr i32 %and.i.i.i.i.i.i.i165 to ptr
  %cpu_domain.i.i.i.i.i.i166 = getelementptr inbounds %struct.thread_info, ptr %251, i32 0, i32 4
  %252 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i166) #5, !srcloc !136
  %and.i.i.i.i.i167 = and i32 %252, -13
  %or.i.i.i.i.i168 = or i32 %and.i.i.i.i.i167, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i168) #11, !srcloc !137
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !138
  %call1.i.i.i.i169 = call i32 @arm_copy_from_user(ptr noundef nonnull %uffdio_zeropage.i, ptr noundef %246, i32 noundef 24) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %252) #11, !srcloc !137
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !138
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i169)
  %tobool4.not.i.i.i170 = icmp eq i32 %call1.i.i.i.i169, 0
  br i1 %tobool4.not.i.i.i170, label %if.end4.i178, label %if.end.i.i.i171.if.then11.i.i.i174_crit_edge, !prof !96

if.end.i.i.i171.if.then11.i.i.i174_crit_edge:     ; preds = %if.end.i.i.i171
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i174

if.then11.i.i.i174:                               ; preds = %if.end.i.i.i171.if.then11.i.i.i174_crit_edge, %land.lhs.true.i.i.i163.if.then11.i.i.i174_crit_edge, %if.end59.i.i.i160.if.then11.i.i.i174_crit_edge
  %res.0.i.i105.i = phi i32 [ %call1.i.i.i.i169, %if.end.i.i.i171.if.then11.i.i.i174_crit_edge ], [ 24, %if.end59.i.i.i160.if.then11.i.i.i174_crit_edge ], [ 24, %land.lhs.true.i.i.i163.if.then11.i.i.i174_crit_edge ]
  %sub.i.i.i172 = sub i32 24, %res.0.i.i105.i
  %add.ptr.i.i.i173 = getelementptr i8, ptr %uffdio_zeropage.i, i32 %sub.i.i.i172
  %253 = call ptr @memset(ptr %add.ptr.i.i.i173, i32 0, i32 %res.0.i.i105.i)
  br label %userfaultfd_zeropage.exit

if.end4.i178:                                     ; preds = %if.end.i.i.i171
  %mm.i175 = getelementptr inbounds %struct.userfaultfd_ctx, ptr %1, i32 0, i32 10
  %254 = ptrtoint ptr %mm.i175 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %mm.i175, align 4
  %256 = ptrtoint ptr %uffdio_zeropage.i to i32
  call void @__asan_load8_noabort(i32 %256)
  %257 = load i64, ptr %uffdio_zeropage.i, align 8
  %258 = ptrtoint ptr %242 to i32
  call void @__asan_load8_noabort(i32 %258)
  %259 = load i64, ptr %242, align 8
  %260 = or i64 %259, %257
  %261 = and i64 %260, 4095
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %261)
  %262 = icmp ne i64 %261, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %259)
  %tobool6.not.i.i176 = icmp eq i64 %259, 0
  %or.cond27.i.i177 = or i1 %tobool6.not.i.i176, %262
  br i1 %or.cond27.i.i177, label %if.end4.i178.userfaultfd_zeropage.exit_crit_edge, label %if.end8.i.i188

if.end4.i178.userfaultfd_zeropage.exit_crit_edge: ; preds = %if.end4.i178
  call void @__sanitizer_cov_trace_pc() #13
  br label %userfaultfd_zeropage.exit

if.end8.i.i188:                                   ; preds = %if.end4.i178
  %task_size1.i.i179 = getelementptr inbounds %struct.anon.0, ptr %255, i32 0, i32 6
  %263 = ptrtoint ptr %task_size1.i.i179 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %task_size1.i.i179, align 4
  %conv.i.i180 = zext i32 %264 to i64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmap_min_addr to i32))
  %265 = load i32, ptr @mmap_min_addr, align 4
  %conv9.i.i181 = zext i32 %265 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %257, i64 %conv9.i.i181)
  %cmp.i.i182 = icmp ult i64 %257, %conv9.i.i181
  call void @__sanitizer_cov_trace_cmp8(i64 %257, i64 %conv.i.i180)
  %cmp13.not.i.i183 = icmp uge i64 %257, %conv.i.i180
  %or.cond28.i.i184 = select i1 %cmp.i.i182, i1 true, i1 %cmp13.not.i.i183
  %sub.i.i185 = sub i64 %conv.i.i180, %257
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i.i185, i64 %259)
  %cmp17.i.i186 = icmp ult i64 %sub.i.i185, %259
  %or.cond.i187 = select i1 %or.cond28.i.i184, i1 true, i1 %cmp17.i.i186
  br i1 %or.cond.i187, label %if.end8.i.i188.userfaultfd_zeropage.exit_crit_edge, label %if.end10.i

if.end8.i.i188.userfaultfd_zeropage.exit_crit_edge: ; preds = %if.end8.i.i188
  call void @__sanitizer_cov_trace_pc() #13
  br label %userfaultfd_zeropage.exit

if.end10.i:                                       ; preds = %if.end8.i.i188
  %266 = ptrtoint ptr %243 to i32
  call void @__asan_load8_noabort(i32 %266)
  %267 = load i64, ptr %243, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %267)
  %tobool11.not.i189 = icmp ult i64 %267, 2
  br i1 %tobool11.not.i189, label %if.end13.i193, label %if.end10.i.userfaultfd_zeropage.exit_crit_edge

if.end10.i.userfaultfd_zeropage.exit_crit_edge:   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %userfaultfd_zeropage.exit

if.end13.i193:                                    ; preds = %if.end10.i
  %mm_users.i.i190 = getelementptr inbounds %struct.anon.0, ptr %255, i32 0, i32 10
  %call.i.i.i102.i = call zeroext i1 @__kasan_check_write(ptr noundef %mm_users.i.i190, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !144
  call void @llvm.prefetch.p0(ptr %mm_users.i.i190, i32 1, i32 3, i32 1) #11
  %268 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %mm_users.i.i190, ptr %mm_users.i.i190, i32 0, i32 1, ptr elementtype(i32) %mm_users.i.i190) #11, !srcloc !145
  %asmresult.i.i.i.i.i.i191 = extractvalue { i32, i32, i32 } %268, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i191)
  %cmp.not.i.i.i.i.i.i192 = icmp eq i32 %asmresult.i.i.i.i.i.i191, 0
  br i1 %cmp.not.i.i.i.i.i.i192, label %if.end13.i193.userfaultfd_zeropage.exit_crit_edge, label %if.then16.i

if.end13.i193.userfaultfd_zeropage.exit_crit_edge: ; preds = %if.end13.i193
  call void @__sanitizer_cov_trace_pc() #13
  br label %userfaultfd_zeropage.exit

if.then16.i:                                      ; preds = %if.end13.i193
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !146
  %269 = ptrtoint ptr %mm.i175 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %mm.i175, align 4
  %271 = ptrtoint ptr %uffdio_zeropage.i to i32
  call void @__asan_load8_noabort(i32 %271)
  %272 = load i64, ptr %uffdio_zeropage.i, align 8
  %conv20.i = trunc i64 %272 to i32
  %273 = ptrtoint ptr %242 to i32
  call void @__asan_load8_noabort(i32 %273)
  %274 = load i64, ptr %242, align 8
  %conv23.i = trunc i64 %274 to i32
  %call25.i = call i32 @mfill_zeropage(ptr noundef %270, i32 noundef %conv20.i, i32 noundef %conv23.i, ptr noundef %mmap_changing.i157) #11
  %conv26.i194 = sext i32 %call25.i to i64
  %275 = ptrtoint ptr %mm.i175 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %mm.i175, align 4
  call void @mmput(ptr noundef %276) #11
  %zeropage.i = getelementptr inbounds %struct.uffdio_zeropage, ptr %246, i32 0, i32 2
  call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 1783) #11
  %277 = call i32 @llvm.read_register.i32(metadata !84) #11
  %and.i.i.i.i195 = and i32 %277, -16384
  %278 = inttoptr i32 %and.i.i.i.i195 to ptr
  %cpu_domain.i.i.i196 = getelementptr inbounds %struct.thread_info, ptr %278, i32 0, i32 4
  %279 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i196) #5, !srcloc !136
  %and.i.i197 = and i32 %279, -13
  %or.i.i198 = or i32 %and.i.i197, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i198) #11, !srcloc !137
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !138
  %280 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_8", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %zeropage.i, i64 %conv26.i194, i32 -1226833921) #11, !srcloc !163
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %279) #11, !srcloc !137
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !138
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %280)
  %tobool31.not.i = icmp eq i32 %280, 0
  br i1 %tobool31.not.i, label %if.end35.i, label %if.then16.i.userfaultfd_zeropage.exit_crit_edge, !prof !96

if.then16.i.userfaultfd_zeropage.exit_crit_edge:  ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %userfaultfd_zeropage.exit

if.end35.i:                                       ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %cmp.i = icmp slt i32 %call25.i, 0
  br i1 %cmp.i, label %if.end35.i.userfaultfd_zeropage.exit_crit_edge, label %do.body39.i

if.end35.i.userfaultfd_zeropage.exit_crit_edge:   ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %userfaultfd_zeropage.exit

do.body39.i:                                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool40.not.i199 = icmp eq i32 %call25.i, 0
  br i1 %tobool40.not.i199, label %do.body50.i, label %do.end58.i, !prof !94

do.body50.i:                                      ; preds = %do.body39.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/userfaultfd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1788, 0\0A.popsection", ""() #11, !srcloc !164
  unreachable

do.end58.i:                                       ; preds = %do.body39.i
  %281 = ptrtoint ptr %245 to i32
  call void @__asan_store4_noabort(i32 %281)
  store i32 %call25.i, ptr %245, align 4
  %282 = ptrtoint ptr %243 to i32
  call void @__asan_load8_noabort(i32 %282)
  %283 = load i64, ptr %243, align 8
  %and62.i = and i64 %283, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and62.i)
  %tobool63.not.i = icmp eq i64 %and62.i, 0
  br i1 %tobool63.not.i, label %if.then64.i, label %do.end58.i.if.end69.i_crit_edge

do.end58.i.if.end69.i_crit_edge:                  ; preds = %do.end58.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69.i

if.then64.i:                                      ; preds = %do.end58.i
  %284 = ptrtoint ptr %uffdio_zeropage.i to i32
  call void @__asan_load8_noabort(i32 %284)
  %285 = load i64, ptr %uffdio_zeropage.i, align 8
  %conv67.i = trunc i64 %285 to i32
  %286 = ptrtoint ptr %range.i156 to i32
  call void @__asan_store4_noabort(i32 %286)
  store i32 %conv67.i, ptr %range.i156, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !153
  %refile_seq.i.i200 = getelementptr inbounds %struct.userfaultfd_ctx, ptr %1, i32 0, i32 4
  %dep_map.c48.i.i.i201 = getelementptr inbounds %struct.userfaultfd_ctx, ptr %1, i32 0, i32 4, i32 0, i32 1
  %head.i.i.i202 = getelementptr inbounds %struct.wait_queue_head, ptr %1, i32 0, i32 1
  %head.i42.i.i203 = getelementptr inbounds %struct.userfaultfd_ctx, ptr %1, i32 0, i32 1, i32 1
  br label %do.body4.i.i205

do.body4.i.i205:                                  ; preds = %lor.end.i.i221.do.body4.i.i205_crit_edge, %if.then64.i
  %287 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !154
  %and.i.i.i96.i = and i32 %287, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i96.i)
  %tobool.not.i.i.i204 = icmp eq i32 %and.i.i.i96.i, 0
  br i1 %tobool.not.i.i.i204, label %if.then.i.i97.i, label %do.body24.critedge.i.i.i206

if.then.i.i97.i:                                  ; preds = %do.body4.i.i205
  call void @__sanitizer_cov_trace_pc() #13
  call void @trace_hardirqs_off() #11
  %288 = call ptr @llvm.returnaddress(i32 0) #11
  %289 = ptrtoint ptr %288 to i32
  call void @lock_acquire(ptr noundef %dep_map.c48.i.i.i201, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %289) #11
  call void @lock_release(ptr noundef %dep_map.c48.i.i.i201, i32 noundef %289) #11
  call void @trace_hardirqs_on() #11
  br label %do.body24.i.i.i208

do.body24.critedge.i.i.i206:                      ; preds = %do.body4.i.i205
  call void @__sanitizer_cov_trace_pc() #13
  %290 = call ptr @llvm.returnaddress(i32 0) #11
  %291 = ptrtoint ptr %290 to i32
  call void @lock_acquire(ptr noundef %dep_map.c48.i.i.i201, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %291) #11
  call void @lock_release(ptr noundef %dep_map.c48.i.i.i201, i32 noundef %291) #11
  br label %do.body24.i.i.i208

do.body24.i.i.i208:                               ; preds = %do.body24.critedge.i.i.i206, %if.then.i.i97.i
  %292 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !155
  %and.i.i.i.i98.i = and i32 %292, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i98.i)
  %tobool32.not.i.i.i207 = icmp eq i32 %and.i.i.i.i98.i, 0
  br i1 %tobool32.not.i.i.i207, label %if.then36.i.i.i209, label %do.body24.i.i.i208.seqcount_lockdep_reader_access.exit.i.i212_crit_edge, !prof !94

do.body24.i.i.i208.seqcount_lockdep_reader_access.exit.i.i212_crit_edge: ; preds = %do.body24.i.i.i208
  call void @__sanitizer_cov_trace_pc() #13
  br label %seqcount_lockdep_reader_access.exit.i.i212

if.then36.i.i.i209:                               ; preds = %do.body24.i.i.i208
  call void @__sanitizer_cov_trace_pc() #13
  call void @warn_bogus_irq_restore() #11
  br label %seqcount_lockdep_reader_access.exit.i.i212

seqcount_lockdep_reader_access.exit.i.i212:       ; preds = %if.then36.i.i.i209, %do.body24.i.i.i208.seqcount_lockdep_reader_access.exit.i.i212_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %287) #11, !srcloc !156
  %293 = ptrtoint ptr %refile_seq.i.i200 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load volatile i32, ptr %refile_seq.i.i200, align 4
  %and48.i.i210 = and i32 %294, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48.i.i210)
  %tobool.not49.i.i211 = icmp eq i32 %and48.i.i210, 0
  br i1 %tobool.not49.i.i211, label %seqcount_lockdep_reader_access.exit.i.i212.while.end.i.i217_crit_edge, label %seqcount_lockdep_reader_access.exit.i.i212.do.end11.i.i214_crit_edge

seqcount_lockdep_reader_access.exit.i.i212.do.end11.i.i214_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i.i212
  br label %do.end11.i.i214

seqcount_lockdep_reader_access.exit.i.i212.while.end.i.i217_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i.i212
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i.i217

do.end11.i.i214:                                  ; preds = %do.end11.i.i214.do.end11.i.i214_crit_edge, %seqcount_lockdep_reader_access.exit.i.i212.do.end11.i.i214_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !157
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !158
  %295 = ptrtoint ptr %refile_seq.i.i200 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load volatile i32, ptr %refile_seq.i.i200, align 4
  %and.i99.i = and i32 %296, 1
  %tobool.not.i.i213 = icmp eq i32 %and.i99.i, 0
  br i1 %tobool.not.i.i213, label %do.end11.i.i214.while.end.i.i217_crit_edge, label %do.end11.i.i214.do.end11.i.i214_crit_edge

do.end11.i.i214.do.end11.i.i214_crit_edge:        ; preds = %do.end11.i.i214
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end11.i.i214

do.end11.i.i214.while.end.i.i217_crit_edge:       ; preds = %do.end11.i.i214
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i.i217

while.end.i.i217:                                 ; preds = %do.end11.i.i214.while.end.i.i217_crit_edge, %seqcount_lockdep_reader_access.exit.i.i212.while.end.i.i217_crit_edge
  %.lcssa.i.i215 = phi i32 [ %294, %seqcount_lockdep_reader_access.exit.i.i212.while.end.i.i217_crit_edge ], [ %296, %do.end11.i.i214.while.end.i.i217_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !159
  %297 = ptrtoint ptr %head.i.i.i202 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load volatile ptr, ptr %head.i.i.i202, align 4
  %cmp.i.i.not.i.i216 = icmp eq ptr %298, %head.i.i.i202
  br i1 %cmp.i.i.not.i.i216, label %lor.rhs.i.i219, label %while.end.i.i217.lor.end.i.i221_crit_edge

while.end.i.i217.lor.end.i.i221_crit_edge:        ; preds = %while.end.i.i217
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.end.i.i221

lor.rhs.i.i219:                                   ; preds = %while.end.i.i217
  call void @__sanitizer_cov_trace_pc() #13
  %299 = ptrtoint ptr %head.i42.i.i203 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load volatile ptr, ptr %head.i42.i.i203, align 4
  %cmp.i.i43.i.i218 = icmp ne ptr %300, %head.i42.i.i203
  br label %lor.end.i.i221

lor.end.i.i221:                                   ; preds = %lor.rhs.i.i219, %while.end.i.i217.lor.end.i.i221_crit_edge
  %301 = phi i1 [ true, %while.end.i.i217.lor.end.i.i221_crit_edge ], [ %cmp.i.i43.i.i218, %lor.rhs.i.i219 ]
  call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 1229, i32 noundef 0) #11
  %call.i.i100.i = call i32 @__cond_resched() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !160
  %302 = ptrtoint ptr %refile_seq.i.i200 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load volatile i32, ptr %refile_seq.i.i200, align 4
  %cmp.i.i45.not.i.i220 = icmp eq i32 %303, %.lcssa.i.i215
  br i1 %cmp.i.i45.not.i.i220, label %do.end35.i.i222, label %lor.end.i.i221.do.body4.i.i205_crit_edge

lor.end.i.i221.do.body4.i.i205_crit_edge:         ; preds = %lor.end.i.i221
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body4.i.i205

do.end35.i.i222:                                  ; preds = %lor.end.i.i221
  br i1 %301, label %if.then.i.i224, label %do.end35.i.i222.if.end69.i_crit_edge

do.end35.i.i222.if.end69.i_crit_edge:             ; preds = %do.end35.i.i222
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69.i

if.then.i.i224:                                   ; preds = %do.end35.i.i222
  call void @_raw_spin_lock_irq(ptr noundef %1) #11
  %304 = ptrtoint ptr %head.i.i.i202 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load volatile ptr, ptr %head.i.i.i202, align 4
  %cmp.i.i.not.i.i.i223 = icmp eq ptr %305, %head.i.i.i202
  br i1 %cmp.i.i.not.i.i.i223, label %if.then.i.i224.if.end.i.i101.i_crit_edge, label %if.then.i46.i.i225

if.then.i.i224.if.end.i.i101.i_crit_edge:         ; preds = %if.then.i.i224
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i101.i

if.then.i46.i.i225:                               ; preds = %if.then.i.i224
  call void @__sanitizer_cov_trace_pc() #13
  call void @__wake_up_locked_key(ptr noundef %1, i32 noundef 3, ptr noundef nonnull %range.i156) #11
  br label %if.end.i.i101.i

if.end.i.i101.i:                                  ; preds = %if.then.i46.i.i225, %if.then.i.i224.if.end.i.i101.i_crit_edge
  %306 = ptrtoint ptr %head.i42.i.i203 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load volatile ptr, ptr %head.i42.i.i203, align 4
  %cmp.i.i17.not.i.i.i226 = icmp eq ptr %307, %head.i42.i.i203
  br i1 %cmp.i.i17.not.i.i.i226, label %if.end.i.i101.i.__wake_userfault.exit.i.i229_crit_edge, label %if.then5.i.i.i228

if.end.i.i101.i.__wake_userfault.exit.i.i229_crit_edge: ; preds = %if.end.i.i101.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__wake_userfault.exit.i.i229

if.then5.i.i.i228:                                ; preds = %if.end.i.i101.i
  call void @__sanitizer_cov_trace_pc() #13
  %fault_wqh.i.i.i227 = getelementptr inbounds %struct.userfaultfd_ctx, ptr %1, i32 0, i32 1
  call void @__wake_up(ptr noundef %fault_wqh.i.i.i227, i32 noundef 3, i32 noundef 1, ptr noundef nonnull %range.i156) #11
  br label %__wake_userfault.exit.i.i229

__wake_userfault.exit.i.i229:                     ; preds = %if.then5.i.i.i228, %if.end.i.i101.i.__wake_userfault.exit.i.i229_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef %1) #11
  br label %if.end69.i

if.end69.i:                                       ; preds = %__wake_userfault.exit.i.i229, %do.end35.i.i222.if.end69.i_crit_edge, %do.end58.i.if.end69.i_crit_edge
  %308 = ptrtoint ptr %245 to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %245, align 4
  %conv71.i230 = zext i32 %309 to i64
  %310 = ptrtoint ptr %242 to i32
  call void @__asan_load8_noabort(i32 %310)
  %311 = load i64, ptr %242, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %311, i64 %conv71.i230)
  %cmp74.i = icmp eq i64 %311, %conv71.i230
  %extract.t94.i = select i1 %cmp74.i, i32 0, i32 -11
  br label %userfaultfd_zeropage.exit

userfaultfd_zeropage.exit:                        ; preds = %if.end69.i, %if.end35.i.userfaultfd_zeropage.exit_crit_edge, %if.then16.i.userfaultfd_zeropage.exit_crit_edge, %if.end13.i193.userfaultfd_zeropage.exit_crit_edge, %if.end10.i.userfaultfd_zeropage.exit_crit_edge, %if.end8.i.i188.userfaultfd_zeropage.exit_crit_edge, %if.end4.i178.userfaultfd_zeropage.exit_crit_edge, %if.then11.i.i.i174, %sw.bb10.userfaultfd_zeropage.exit_crit_edge
  %retval.0.i231 = phi i32 [ -14, %if.then16.i.userfaultfd_zeropage.exit_crit_edge ], [ -11, %sw.bb10.userfaultfd_zeropage.exit_crit_edge ], [ -22, %if.end10.i.userfaultfd_zeropage.exit_crit_edge ], [ %call25.i, %if.end35.i.userfaultfd_zeropage.exit_crit_edge ], [ %extract.t94.i, %if.end69.i ], [ -3, %if.end13.i193.userfaultfd_zeropage.exit_crit_edge ], [ -14, %if.then11.i.i.i174 ], [ -22, %if.end4.i178.userfaultfd_zeropage.exit_crit_edge ], [ -22, %if.end8.i.i188.userfaultfd_zeropage.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %range.i156) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %uffdio_zeropage.i) #11
  br label %cleanup

sw.bb12:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %uffdio_wp.i) #11
  %312 = getelementptr inbounds %struct.uffdio_range, ptr %uffdio_wp.i, i32 0, i32 1
  %313 = getelementptr inbounds %struct.uffdio_writeprotect, ptr %uffdio_wp.i, i32 0, i32 1
  %314 = call ptr @memset(ptr %uffdio_wp.i, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %range.i232) #11
  %315 = getelementptr inbounds %struct.userfaultfd_wake_range, ptr %range.i232, i32 0, i32 1
  %mmap_changing.i233 = getelementptr inbounds %struct.userfaultfd_ctx, ptr %1, i32 0, i32 9
  %call.i.i.i234 = tail call zeroext i1 @__kasan_check_read(ptr noundef %mmap_changing.i233, i32 noundef 4) #11
  %316 = ptrtoint ptr %mmap_changing.i233 to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load volatile i32, ptr %mmap_changing.i233, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %317)
  %tobool.not.i235 = icmp eq i32 %317, 0
  br i1 %tobool.not.i235, label %if.end.i236, label %sw.bb12.userfaultfd_writeprotect.exit_crit_edge

sw.bb12.userfaultfd_writeprotect.exit_crit_edge:  ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #13
  br label %userfaultfd_writeprotect.exit

if.end.i236:                                      ; preds = %sw.bb12
  %318 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.22, i32 noundef 156) #11
  %call.i.i74.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i74.i, label %if.end.i236.if.then11.i.i.i250_crit_edge, label %land.lhs.true.i.i.i239

if.end.i236.if.then11.i.i.i250_crit_edge:         ; preds = %if.end.i236
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i250

land.lhs.true.i.i.i239:                           ; preds = %if.end.i236
  %319 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %318, i32 24, i32 -1226833920) #16, !srcloc !143
  %asmresult.i.i.i237 = extractvalue { i32, i32 } %319, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i237)
  %cmp.i6.i.i238 = icmp eq i32 %asmresult.i.i.i237, 0
  br i1 %cmp.i6.i.i238, label %if.end.i.i.i247, label %land.lhs.true.i.i.i239.if.then11.i.i.i250_crit_edge, !prof !96

land.lhs.true.i.i.i239.if.then11.i.i.i250_crit_edge: ; preds = %land.lhs.true.i.i.i239
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i250

if.end.i.i.i247:                                  ; preds = %land.lhs.true.i.i.i239
  %call.i.i.i.i240 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %uffdio_wp.i, i32 noundef 24) #11
  %320 = call i32 @llvm.read_register.i32(metadata !84) #11
  %and.i.i.i.i.i.i.i241 = and i32 %320, -16384
  %321 = inttoptr i32 %and.i.i.i.i.i.i.i241 to ptr
  %cpu_domain.i.i.i.i.i.i242 = getelementptr inbounds %struct.thread_info, ptr %321, i32 0, i32 4
  %322 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i242) #5, !srcloc !136
  %and.i.i.i.i.i243 = and i32 %322, -13
  %or.i.i.i.i.i244 = or i32 %and.i.i.i.i.i243, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i244) #11, !srcloc !137
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !138
  %call1.i.i.i.i245 = call i32 @arm_copy_from_user(ptr noundef nonnull %uffdio_wp.i, ptr noundef %318, i32 noundef 24) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %322) #11, !srcloc !137
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !138
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i245)
  %tobool4.not.i.i.i246 = icmp eq i32 %call1.i.i.i.i245, 0
  br i1 %tobool4.not.i.i.i246, label %if.end4.i254, label %if.end.i.i.i247.if.then11.i.i.i250_crit_edge, !prof !96

if.end.i.i.i247.if.then11.i.i.i250_crit_edge:     ; preds = %if.end.i.i.i247
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i250

if.then11.i.i.i250:                               ; preds = %if.end.i.i.i247.if.then11.i.i.i250_crit_edge, %land.lhs.true.i.i.i239.if.then11.i.i.i250_crit_edge, %if.end.i236.if.then11.i.i.i250_crit_edge
  %res.0.i.i81.i = phi i32 [ %call1.i.i.i.i245, %if.end.i.i.i247.if.then11.i.i.i250_crit_edge ], [ 24, %if.end.i236.if.then11.i.i.i250_crit_edge ], [ 24, %land.lhs.true.i.i.i239.if.then11.i.i.i250_crit_edge ]
  %sub.i.i.i248 = sub i32 24, %res.0.i.i81.i
  %add.ptr.i.i.i249 = getelementptr i8, ptr %uffdio_wp.i, i32 %sub.i.i.i248
  %323 = call ptr @memset(ptr %add.ptr.i.i.i249, i32 0, i32 %res.0.i.i81.i)
  br label %userfaultfd_writeprotect.exit

if.end4.i254:                                     ; preds = %if.end.i.i.i247
  %mm.i251 = getelementptr inbounds %struct.userfaultfd_ctx, ptr %1, i32 0, i32 10
  %324 = ptrtoint ptr %mm.i251 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %mm.i251, align 4
  %326 = ptrtoint ptr %uffdio_wp.i to i32
  call void @__asan_load8_noabort(i32 %326)
  %327 = load i64, ptr %uffdio_wp.i, align 8
  %328 = ptrtoint ptr %312 to i32
  call void @__asan_load8_noabort(i32 %328)
  %329 = load i64, ptr %312, align 8
  %330 = or i64 %329, %327
  %331 = and i64 %330, 4095
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %331)
  %332 = icmp ne i64 %331, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %329)
  %tobool6.not.i.i252 = icmp eq i64 %329, 0
  %or.cond27.i.i253 = or i1 %tobool6.not.i.i252, %332
  br i1 %or.cond27.i.i253, label %if.end4.i254.userfaultfd_writeprotect.exit_crit_edge, label %if.end8.i.i264

if.end4.i254.userfaultfd_writeprotect.exit_crit_edge: ; preds = %if.end4.i254
  call void @__sanitizer_cov_trace_pc() #13
  br label %userfaultfd_writeprotect.exit

if.end8.i.i264:                                   ; preds = %if.end4.i254
  %task_size1.i.i255 = getelementptr inbounds %struct.anon.0, ptr %325, i32 0, i32 6
  %333 = ptrtoint ptr %task_size1.i.i255 to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %task_size1.i.i255, align 4
  %conv.i.i256 = zext i32 %334 to i64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmap_min_addr to i32))
  %335 = load i32, ptr @mmap_min_addr, align 4
  %conv9.i.i257 = zext i32 %335 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %327, i64 %conv9.i.i257)
  %cmp.i.i258 = icmp ult i64 %327, %conv9.i.i257
  call void @__sanitizer_cov_trace_cmp8(i64 %327, i64 %conv.i.i256)
  %cmp13.not.i.i259 = icmp uge i64 %327, %conv.i.i256
  %or.cond28.i.i260 = select i1 %cmp.i.i258, i1 true, i1 %cmp13.not.i.i259
  %sub.i.i261 = sub i64 %conv.i.i256, %327
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i.i261, i64 %329)
  %cmp17.i.i262 = icmp ult i64 %sub.i.i261, %329
  %or.cond.i263 = select i1 %or.cond28.i.i260, i1 true, i1 %cmp17.i.i262
  br i1 %or.cond.i263, label %if.end8.i.i264.userfaultfd_writeprotect.exit_crit_edge, label %if.end10.i266

if.end8.i.i264.userfaultfd_writeprotect.exit_crit_edge: ; preds = %if.end8.i.i264
  call void @__sanitizer_cov_trace_pc() #13
  br label %userfaultfd_writeprotect.exit

if.end10.i266:                                    ; preds = %if.end8.i.i264
  %336 = ptrtoint ptr %313 to i32
  call void @__asan_load8_noabort(i32 %336)
  %337 = load i64, ptr %313, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4, i64 %337)
  %tobool11.not.i265 = icmp ult i64 %337, 4
  br i1 %tobool11.not.i265, label %if.end13.i268, label %if.end10.i266.userfaultfd_writeprotect.exit_crit_edge

if.end10.i266.userfaultfd_writeprotect.exit_crit_edge: ; preds = %if.end10.i266
  call void @__sanitizer_cov_trace_pc() #13
  br label %userfaultfd_writeprotect.exit

if.end13.i268:                                    ; preds = %if.end10.i266
  %and15.i = and i64 %337, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and15.i)
  %tobool16.i = icmp ne i64 %and15.i, 0
  %and18.i = and i64 %337, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and18.i)
  %tobool19.not.i = icmp eq i64 %and18.i, 0
  %tobool16.not.i267 = xor i1 %tobool16.i, true
  %brmerge.i = select i1 %tobool16.not.i267, i1 true, i1 %tobool19.not.i
  br i1 %brmerge.i, label %if.end24.i, label %if.end13.i268.userfaultfd_writeprotect.exit_crit_edge

if.end13.i268.userfaultfd_writeprotect.exit_crit_edge: ; preds = %if.end13.i268
  call void @__sanitizer_cov_trace_pc() #13
  br label %userfaultfd_writeprotect.exit

if.end24.i:                                       ; preds = %if.end13.i268
  %call26.i = call fastcc zeroext i1 @mmget_not_zero(ptr noundef %325) #11
  br i1 %call26.i, label %if.then27.i, label %if.end24.i.userfaultfd_writeprotect.exit_crit_edge

if.end24.i.userfaultfd_writeprotect.exit_crit_edge: ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %userfaultfd_writeprotect.exit

if.then27.i:                                      ; preds = %if.end24.i
  %338 = ptrtoint ptr %mm.i251 to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %mm.i251, align 4
  %340 = ptrtoint ptr %uffdio_wp.i to i32
  call void @__asan_load8_noabort(i32 %340)
  %341 = load i64, ptr %uffdio_wp.i, align 8
  %conv.i269 = trunc i64 %341 to i32
  %342 = ptrtoint ptr %312 to i32
  call void @__asan_load8_noabort(i32 %342)
  %343 = load i64, ptr %312, align 8
  %conv33.i = trunc i64 %343 to i32
  %call36.i = call i32 @mwriteprotect_range(ptr noundef %339, i32 noundef %conv.i269, i32 noundef %conv33.i, i1 noundef zeroext %tobool16.i, ptr noundef %mmap_changing.i233) #11
  %344 = ptrtoint ptr %mm.i251 to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %mm.i251, align 4
  call void @mmput(ptr noundef %345) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %tobool39.not.i = icmp eq i32 %call36.i, 0
  br i1 %tobool39.not.i, label %if.end41.i, label %if.then27.i.userfaultfd_writeprotect.exit_crit_edge

if.then27.i.userfaultfd_writeprotect.exit_crit_edge: ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %userfaultfd_writeprotect.exit

if.end41.i:                                       ; preds = %if.then27.i
  %tobool19.not.not.i = xor i1 %tobool19.not.i, true
  %brmerge73.i = select i1 %tobool16.i, i1 true, i1 %tobool19.not.not.i
  br i1 %brmerge73.i, label %if.end41.i.userfaultfd_writeprotect.exit_crit_edge, label %if.then45.i

if.end41.i.userfaultfd_writeprotect.exit_crit_edge: ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %userfaultfd_writeprotect.exit

if.then45.i:                                      ; preds = %if.end41.i
  %346 = ptrtoint ptr %uffdio_wp.i to i32
  call void @__asan_load8_noabort(i32 %346)
  %347 = load i64, ptr %uffdio_wp.i, align 8
  %conv48.i = trunc i64 %347 to i32
  %348 = ptrtoint ptr %range.i232 to i32
  call void @__asan_store4_noabort(i32 %348)
  store i32 %conv48.i, ptr %range.i232, align 4
  %349 = ptrtoint ptr %312 to i32
  call void @__asan_load8_noabort(i32 %349)
  %350 = load i64, ptr %312, align 8
  %conv52.i = trunc i64 %350 to i32
  %351 = ptrtoint ptr %315 to i32
  call void @__asan_store4_noabort(i32 %351)
  store i32 %conv52.i, ptr %315, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !153
  %refile_seq.i.i270 = getelementptr inbounds %struct.userfaultfd_ctx, ptr %1, i32 0, i32 4
  %dep_map.c48.i.i.i271 = getelementptr inbounds %struct.userfaultfd_ctx, ptr %1, i32 0, i32 4, i32 0, i32 1
  %head.i.i.i272 = getelementptr inbounds %struct.wait_queue_head, ptr %1, i32 0, i32 1
  %head.i42.i.i273 = getelementptr inbounds %struct.userfaultfd_ctx, ptr %1, i32 0, i32 1, i32 1
  br label %do.body4.i.i276

do.body4.i.i276:                                  ; preds = %lor.end.i.i293.do.body4.i.i276_crit_edge, %if.then45.i
  %352 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !154
  %and.i.i.i.i274 = and i32 %352, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i274)
  %tobool.not.i.i.i275 = icmp eq i32 %and.i.i.i.i274, 0
  br i1 %tobool.not.i.i.i275, label %if.then.i.i75.i, label %do.body24.critedge.i.i.i277

if.then.i.i75.i:                                  ; preds = %do.body4.i.i276
  call void @__sanitizer_cov_trace_pc() #13
  call void @trace_hardirqs_off() #11
  %353 = call ptr @llvm.returnaddress(i32 0) #11
  %354 = ptrtoint ptr %353 to i32
  call void @lock_acquire(ptr noundef %dep_map.c48.i.i.i271, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %354) #11
  call void @lock_release(ptr noundef %dep_map.c48.i.i.i271, i32 noundef %354) #11
  call void @trace_hardirqs_on() #11
  br label %do.body24.i.i.i279

do.body24.critedge.i.i.i277:                      ; preds = %do.body4.i.i276
  call void @__sanitizer_cov_trace_pc() #13
  %355 = call ptr @llvm.returnaddress(i32 0) #11
  %356 = ptrtoint ptr %355 to i32
  call void @lock_acquire(ptr noundef %dep_map.c48.i.i.i271, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %356) #11
  call void @lock_release(ptr noundef %dep_map.c48.i.i.i271, i32 noundef %356) #11
  br label %do.body24.i.i.i279

do.body24.i.i.i279:                               ; preds = %do.body24.critedge.i.i.i277, %if.then.i.i75.i
  %357 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !155
  %and.i.i.i.i76.i = and i32 %357, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i76.i)
  %tobool32.not.i.i.i278 = icmp eq i32 %and.i.i.i.i76.i, 0
  br i1 %tobool32.not.i.i.i278, label %if.then36.i.i.i280, label %do.body24.i.i.i279.seqcount_lockdep_reader_access.exit.i.i283_crit_edge, !prof !94

do.body24.i.i.i279.seqcount_lockdep_reader_access.exit.i.i283_crit_edge: ; preds = %do.body24.i.i.i279
  call void @__sanitizer_cov_trace_pc() #13
  br label %seqcount_lockdep_reader_access.exit.i.i283

if.then36.i.i.i280:                               ; preds = %do.body24.i.i.i279
  call void @__sanitizer_cov_trace_pc() #13
  call void @warn_bogus_irq_restore() #11
  br label %seqcount_lockdep_reader_access.exit.i.i283

seqcount_lockdep_reader_access.exit.i.i283:       ; preds = %if.then36.i.i.i280, %do.body24.i.i.i279.seqcount_lockdep_reader_access.exit.i.i283_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %352) #11, !srcloc !156
  %358 = ptrtoint ptr %refile_seq.i.i270 to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load volatile i32, ptr %refile_seq.i.i270, align 4
  %and48.i.i281 = and i32 %359, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48.i.i281)
  %tobool.not49.i.i282 = icmp eq i32 %and48.i.i281, 0
  br i1 %tobool.not49.i.i282, label %seqcount_lockdep_reader_access.exit.i.i283.while.end.i.i289_crit_edge, label %seqcount_lockdep_reader_access.exit.i.i283.do.end11.i.i286_crit_edge

seqcount_lockdep_reader_access.exit.i.i283.do.end11.i.i286_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i.i283
  br label %do.end11.i.i286

seqcount_lockdep_reader_access.exit.i.i283.while.end.i.i289_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i.i283
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i.i289

do.end11.i.i286:                                  ; preds = %do.end11.i.i286.do.end11.i.i286_crit_edge, %seqcount_lockdep_reader_access.exit.i.i283.do.end11.i.i286_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !157
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !158
  %360 = ptrtoint ptr %refile_seq.i.i270 to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load volatile i32, ptr %refile_seq.i.i270, align 4
  %and.i.i284 = and i32 %361, 1
  %tobool.not.i.i285 = icmp eq i32 %and.i.i284, 0
  br i1 %tobool.not.i.i285, label %do.end11.i.i286.while.end.i.i289_crit_edge, label %do.end11.i.i286.do.end11.i.i286_crit_edge

do.end11.i.i286.do.end11.i.i286_crit_edge:        ; preds = %do.end11.i.i286
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end11.i.i286

do.end11.i.i286.while.end.i.i289_crit_edge:       ; preds = %do.end11.i.i286
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i.i289

while.end.i.i289:                                 ; preds = %do.end11.i.i286.while.end.i.i289_crit_edge, %seqcount_lockdep_reader_access.exit.i.i283.while.end.i.i289_crit_edge
  %.lcssa.i.i287 = phi i32 [ %359, %seqcount_lockdep_reader_access.exit.i.i283.while.end.i.i289_crit_edge ], [ %361, %do.end11.i.i286.while.end.i.i289_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !159
  %362 = ptrtoint ptr %head.i.i.i272 to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load volatile ptr, ptr %head.i.i.i272, align 4
  %cmp.i.i.not.i.i288 = icmp eq ptr %363, %head.i.i.i272
  br i1 %cmp.i.i.not.i.i288, label %lor.rhs.i.i291, label %while.end.i.i289.lor.end.i.i293_crit_edge

while.end.i.i289.lor.end.i.i293_crit_edge:        ; preds = %while.end.i.i289
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.end.i.i293

lor.rhs.i.i291:                                   ; preds = %while.end.i.i289
  call void @__sanitizer_cov_trace_pc() #13
  %364 = ptrtoint ptr %head.i42.i.i273 to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load volatile ptr, ptr %head.i42.i.i273, align 4
  %cmp.i.i43.i.i290 = icmp ne ptr %365, %head.i42.i.i273
  br label %lor.end.i.i293

lor.end.i.i293:                                   ; preds = %lor.rhs.i.i291, %while.end.i.i289.lor.end.i.i293_crit_edge
  %366 = phi i1 [ true, %while.end.i.i289.lor.end.i.i293_crit_edge ], [ %cmp.i.i43.i.i290, %lor.rhs.i.i291 ]
  call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 1229, i32 noundef 0) #11
  %call.i.i77.i = call i32 @__cond_resched() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !160
  %367 = ptrtoint ptr %refile_seq.i.i270 to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load volatile i32, ptr %refile_seq.i.i270, align 4
  %cmp.i.i45.not.i.i292 = icmp eq i32 %368, %.lcssa.i.i287
  br i1 %cmp.i.i45.not.i.i292, label %do.end35.i.i294, label %lor.end.i.i293.do.body4.i.i276_crit_edge

lor.end.i.i293.do.body4.i.i276_crit_edge:         ; preds = %lor.end.i.i293
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body4.i.i276

do.end35.i.i294:                                  ; preds = %lor.end.i.i293
  br i1 %366, label %if.then.i.i296, label %do.end35.i.i294.userfaultfd_writeprotect.exit_crit_edge

do.end35.i.i294.userfaultfd_writeprotect.exit_crit_edge: ; preds = %do.end35.i.i294
  call void @__sanitizer_cov_trace_pc() #13
  br label %userfaultfd_writeprotect.exit

if.then.i.i296:                                   ; preds = %do.end35.i.i294
  call void @_raw_spin_lock_irq(ptr noundef %1) #11
  %369 = ptrtoint ptr %head.i.i.i272 to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load volatile ptr, ptr %head.i.i.i272, align 4
  %cmp.i.i.not.i.i.i295 = icmp eq ptr %370, %head.i.i.i272
  br i1 %cmp.i.i.not.i.i.i295, label %if.then.i.i296.if.end.i.i78.i_crit_edge, label %if.then.i46.i.i297

if.then.i.i296.if.end.i.i78.i_crit_edge:          ; preds = %if.then.i.i296
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i78.i

if.then.i46.i.i297:                               ; preds = %if.then.i.i296
  call void @__sanitizer_cov_trace_pc() #13
  call void @__wake_up_locked_key(ptr noundef %1, i32 noundef 3, ptr noundef nonnull %range.i232) #11
  br label %if.end.i.i78.i

if.end.i.i78.i:                                   ; preds = %if.then.i46.i.i297, %if.then.i.i296.if.end.i.i78.i_crit_edge
  %371 = ptrtoint ptr %head.i42.i.i273 to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load volatile ptr, ptr %head.i42.i.i273, align 4
  %cmp.i.i17.not.i.i.i298 = icmp eq ptr %372, %head.i42.i.i273
  br i1 %cmp.i.i17.not.i.i.i298, label %if.end.i.i78.i.__wake_userfault.exit.i.i301_crit_edge, label %if.then5.i.i.i300

if.end.i.i78.i.__wake_userfault.exit.i.i301_crit_edge: ; preds = %if.end.i.i78.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__wake_userfault.exit.i.i301

if.then5.i.i.i300:                                ; preds = %if.end.i.i78.i
  call void @__sanitizer_cov_trace_pc() #13
  %fault_wqh.i.i.i299 = getelementptr inbounds %struct.userfaultfd_ctx, ptr %1, i32 0, i32 1
  call void @__wake_up(ptr noundef %fault_wqh.i.i.i299, i32 noundef 3, i32 noundef 1, ptr noundef nonnull %range.i232) #11
  br label %__wake_userfault.exit.i.i301

__wake_userfault.exit.i.i301:                     ; preds = %if.then5.i.i.i300, %if.end.i.i78.i.__wake_userfault.exit.i.i301_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef %1) #11
  br label %userfaultfd_writeprotect.exit

userfaultfd_writeprotect.exit:                    ; preds = %__wake_userfault.exit.i.i301, %do.end35.i.i294.userfaultfd_writeprotect.exit_crit_edge, %if.end41.i.userfaultfd_writeprotect.exit_crit_edge, %if.then27.i.userfaultfd_writeprotect.exit_crit_edge, %if.end24.i.userfaultfd_writeprotect.exit_crit_edge, %if.end13.i268.userfaultfd_writeprotect.exit_crit_edge, %if.end10.i266.userfaultfd_writeprotect.exit_crit_edge, %if.end8.i.i264.userfaultfd_writeprotect.exit_crit_edge, %if.end4.i254.userfaultfd_writeprotect.exit_crit_edge, %if.then11.i.i.i250, %sw.bb12.userfaultfd_writeprotect.exit_crit_edge
  %retval.0.i302 = phi i32 [ -11, %sw.bb12.userfaultfd_writeprotect.exit_crit_edge ], [ -22, %if.end10.i266.userfaultfd_writeprotect.exit_crit_edge ], [ -22, %if.end13.i268.userfaultfd_writeprotect.exit_crit_edge ], [ -3, %if.end24.i.userfaultfd_writeprotect.exit_crit_edge ], [ %call36.i, %if.then27.i.userfaultfd_writeprotect.exit_crit_edge ], [ 0, %if.end41.i.userfaultfd_writeprotect.exit_crit_edge ], [ 0, %do.end35.i.i294.userfaultfd_writeprotect.exit_crit_edge ], [ 0, %__wake_userfault.exit.i.i301 ], [ -14, %if.then11.i.i.i250 ], [ -22, %if.end4.i254.userfaultfd_writeprotect.exit_crit_edge ], [ -22, %if.end8.i.i264.userfaultfd_writeprotect.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %range.i232) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %uffdio_wp.i) #11
  br label %cleanup

sw.bb14:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %uffdio_continue.i) #11
  %373 = getelementptr inbounds %struct.uffdio_range, ptr %uffdio_continue.i, i32 0, i32 1
  %374 = getelementptr inbounds %struct.uffdio_continue, ptr %uffdio_continue.i, i32 0, i32 1
  %375 = call ptr @memset(ptr %uffdio_continue.i, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %range.i303) #11
  %376 = getelementptr inbounds %struct.userfaultfd_wake_range, ptr %range.i303, i32 0, i32 1
  %377 = inttoptr i32 %arg to ptr
  %mmap_changing.i304 = getelementptr inbounds %struct.userfaultfd_ctx, ptr %1, i32 0, i32 9
  %call.i.i.i305 = tail call zeroext i1 @__kasan_check_read(ptr noundef %mmap_changing.i304, i32 noundef 4) #11
  %378 = ptrtoint ptr %mmap_changing.i304 to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load volatile i32, ptr %mmap_changing.i304, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %379)
  %tobool.not.i306 = icmp eq i32 %379, 0
  br i1 %tobool.not.i306, label %if.end59.i.i.i307, label %sw.bb14.userfaultfd_continue.exit_crit_edge

sw.bb14.userfaultfd_continue.exit_crit_edge:      ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #13
  br label %userfaultfd_continue.exit

if.end59.i.i.i307:                                ; preds = %sw.bb14
  tail call void @__might_fault(ptr noundef nonnull @.str.22, i32 noundef 156) #11
  %call.i.i105.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i105.i, label %if.end59.i.i.i307.if.then11.i.i.i321_crit_edge, label %land.lhs.true.i.i.i310

if.end59.i.i.i307.if.then11.i.i.i321_crit_edge:   ; preds = %if.end59.i.i.i307
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i321

land.lhs.true.i.i.i310:                           ; preds = %if.end59.i.i.i307
  %380 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %377, i32 24, i32 -1226833920) #16, !srcloc !143
  %asmresult.i.i.i308 = extractvalue { i32, i32 } %380, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i308)
  %cmp.i6.i.i309 = icmp eq i32 %asmresult.i.i.i308, 0
  br i1 %cmp.i6.i.i309, label %if.end.i.i.i318, label %land.lhs.true.i.i.i310.if.then11.i.i.i321_crit_edge, !prof !96

land.lhs.true.i.i.i310.if.then11.i.i.i321_crit_edge: ; preds = %land.lhs.true.i.i.i310
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i321

if.end.i.i.i318:                                  ; preds = %land.lhs.true.i.i.i310
  %call.i.i.i.i311 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %uffdio_continue.i, i32 noundef 24) #11
  %381 = call i32 @llvm.read_register.i32(metadata !84) #11
  %and.i.i.i.i.i.i.i312 = and i32 %381, -16384
  %382 = inttoptr i32 %and.i.i.i.i.i.i.i312 to ptr
  %cpu_domain.i.i.i.i.i.i313 = getelementptr inbounds %struct.thread_info, ptr %382, i32 0, i32 4
  %383 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i313) #5, !srcloc !136
  %and.i.i.i.i.i314 = and i32 %383, -13
  %or.i.i.i.i.i315 = or i32 %and.i.i.i.i.i314, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i315) #11, !srcloc !137
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !138
  %call1.i.i.i.i316 = call i32 @arm_copy_from_user(ptr noundef nonnull %uffdio_continue.i, ptr noundef %377, i32 noundef 24) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %383) #11, !srcloc !137
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !138
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i316)
  %tobool4.not.i.i.i317 = icmp eq i32 %call1.i.i.i.i316, 0
  br i1 %tobool4.not.i.i.i317, label %if.end4.i325, label %if.end.i.i.i318.if.then11.i.i.i321_crit_edge, !prof !96

if.end.i.i.i318.if.then11.i.i.i321_crit_edge:     ; preds = %if.end.i.i.i318
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i321

if.then11.i.i.i321:                               ; preds = %if.end.i.i.i318.if.then11.i.i.i321_crit_edge, %land.lhs.true.i.i.i310.if.then11.i.i.i321_crit_edge, %if.end59.i.i.i307.if.then11.i.i.i321_crit_edge
  %res.0.i.i114.i = phi i32 [ %call1.i.i.i.i316, %if.end.i.i.i318.if.then11.i.i.i321_crit_edge ], [ 24, %if.end59.i.i.i307.if.then11.i.i.i321_crit_edge ], [ 24, %land.lhs.true.i.i.i310.if.then11.i.i.i321_crit_edge ]
  %sub.i.i.i319 = sub i32 24, %res.0.i.i114.i
  %add.ptr.i.i.i320 = getelementptr i8, ptr %uffdio_continue.i, i32 %sub.i.i.i319
  %384 = call ptr @memset(ptr %add.ptr.i.i.i320, i32 0, i32 %res.0.i.i114.i)
  br label %userfaultfd_continue.exit

if.end4.i325:                                     ; preds = %if.end.i.i.i318
  %mm.i322 = getelementptr inbounds %struct.userfaultfd_ctx, ptr %1, i32 0, i32 10
  %385 = ptrtoint ptr %mm.i322 to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %mm.i322, align 4
  %387 = ptrtoint ptr %uffdio_continue.i to i32
  call void @__asan_load8_noabort(i32 %387)
  %388 = load i64, ptr %uffdio_continue.i, align 8
  %389 = ptrtoint ptr %373 to i32
  call void @__asan_load8_noabort(i32 %389)
  %390 = load i64, ptr %373, align 8
  %391 = or i64 %390, %388
  %392 = and i64 %391, 4095
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %392)
  %393 = icmp ne i64 %392, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %390)
  %tobool6.not.i.i323 = icmp eq i64 %390, 0
  %or.cond27.i.i324 = or i1 %tobool6.not.i.i323, %393
  br i1 %or.cond27.i.i324, label %if.end4.i325.userfaultfd_continue.exit_crit_edge, label %if.end8.i.i337

if.end4.i325.userfaultfd_continue.exit_crit_edge: ; preds = %if.end4.i325
  call void @__sanitizer_cov_trace_pc() #13
  br label %userfaultfd_continue.exit

if.end8.i.i337:                                   ; preds = %if.end4.i325
  %task_size1.i.i326 = getelementptr inbounds %struct.anon.0, ptr %386, i32 0, i32 6
  %394 = ptrtoint ptr %task_size1.i.i326 to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load i32, ptr %task_size1.i.i326, align 4
  %conv.i.i327 = zext i32 %395 to i64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmap_min_addr to i32))
  %396 = load i32, ptr @mmap_min_addr, align 4
  %conv9.i.i328 = zext i32 %396 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %388, i64 %conv9.i.i328)
  %cmp.i.i329 = icmp uge i64 %388, %conv9.i.i328
  call void @__sanitizer_cov_trace_cmp8(i64 %388, i64 %conv.i.i327)
  %cmp13.not.i.i330 = icmp ult i64 %388, %conv.i.i327
  %or.cond28.i.i331 = select i1 %cmp.i.i329, i1 %cmp13.not.i.i330, i1 false
  %sub.i.i332 = sub i64 %conv.i.i327, %388
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i.i332, i64 %390)
  %cmp17.i.i333 = icmp uge i64 %sub.i.i332, %390
  %or.cond.i334 = select i1 %or.cond28.i.i331, i1 %cmp17.i.i333, i1 false
  %add.i335 = add i64 %390, %388
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i335, i64 %388)
  %cmp.not.i336 = icmp ugt i64 %add.i335, %388
  %or.cond119.i = select i1 %or.cond.i334, i1 %cmp.not.i336, i1 false
  br i1 %or.cond119.i, label %if.end19.i, label %if.end8.i.i337.userfaultfd_continue.exit_crit_edge

if.end8.i.i337.userfaultfd_continue.exit_crit_edge: ; preds = %if.end8.i.i337
  call void @__sanitizer_cov_trace_pc() #13
  br label %userfaultfd_continue.exit

if.end19.i:                                       ; preds = %if.end8.i.i337
  %397 = ptrtoint ptr %374 to i32
  call void @__asan_load8_noabort(i32 %397)
  %398 = load i64, ptr %374, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %398)
  %tobool20.not.i = icmp ult i64 %398, 2
  br i1 %tobool20.not.i, label %if.end22.i, label %if.end19.i.userfaultfd_continue.exit_crit_edge

if.end19.i.userfaultfd_continue.exit_crit_edge:   ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %userfaultfd_continue.exit

if.end22.i:                                       ; preds = %if.end19.i
  %call24.i = call fastcc zeroext i1 @mmget_not_zero(ptr noundef %386) #11
  br i1 %call24.i, label %if.then25.i, label %if.end22.i.userfaultfd_continue.exit_crit_edge

if.end22.i.userfaultfd_continue.exit_crit_edge:   ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %userfaultfd_continue.exit

if.then25.i:                                      ; preds = %if.end22.i
  %399 = ptrtoint ptr %mm.i322 to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %mm.i322, align 4
  %401 = ptrtoint ptr %uffdio_continue.i to i32
  call void @__asan_load8_noabort(i32 %401)
  %402 = load i64, ptr %uffdio_continue.i, align 8
  %conv29.i = trunc i64 %402 to i32
  %403 = ptrtoint ptr %373 to i32
  call void @__asan_load8_noabort(i32 %403)
  %404 = load i64, ptr %373, align 8
  %conv32.i = trunc i64 %404 to i32
  %call34.i = call i32 @mcopy_continue(ptr noundef %400, i32 noundef %conv29.i, i32 noundef %conv32.i, ptr noundef %mmap_changing.i304) #11
  %conv35.i338 = sext i32 %call34.i to i64
  %405 = ptrtoint ptr %mm.i322 to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %mm.i322, align 4
  call void @mmput(ptr noundef %406) #11
  %mapped.i = getelementptr inbounds %struct.uffdio_continue, ptr %377, i32 0, i32 2
  call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 1894) #11
  %407 = call i32 @llvm.read_register.i32(metadata !84) #11
  %and.i.i.i.i339 = and i32 %407, -16384
  %408 = inttoptr i32 %and.i.i.i.i339 to ptr
  %cpu_domain.i.i.i340 = getelementptr inbounds %struct.thread_info, ptr %408, i32 0, i32 4
  %409 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i340) #5, !srcloc !136
  %and.i.i341 = and i32 %409, -13
  %or.i.i342 = or i32 %and.i.i341, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i342) #11, !srcloc !137
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !138
  %410 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_8", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %mapped.i, i64 %conv35.i338, i32 -1226833921) #11, !srcloc !165
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %409) #11, !srcloc !137
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !138
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %410)
  %tobool40.not.i343 = icmp eq i32 %410, 0
  br i1 %tobool40.not.i343, label %if.end44.i, label %if.then25.i.userfaultfd_continue.exit_crit_edge, !prof !96

if.then25.i.userfaultfd_continue.exit_crit_edge:  ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %userfaultfd_continue.exit

if.end44.i:                                       ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %cmp45.i = icmp slt i32 %call34.i, 0
  br i1 %cmp45.i, label %if.end44.i.userfaultfd_continue.exit_crit_edge, label %do.body49.i

if.end44.i.userfaultfd_continue.exit_crit_edge:   ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %userfaultfd_continue.exit

do.body49.i:                                      ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %tobool50.not.i = icmp eq i32 %call34.i, 0
  br i1 %tobool50.not.i, label %do.body60.i, label %do.end68.i, !prof !94

do.body60.i:                                      ; preds = %do.body49.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/userfaultfd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1900, 0\0A.popsection", ""() #11, !srcloc !166
  unreachable

do.end68.i:                                       ; preds = %do.body49.i
  %411 = ptrtoint ptr %376 to i32
  call void @__asan_store4_noabort(i32 %411)
  store i32 %call34.i, ptr %376, align 4
  %412 = ptrtoint ptr %374 to i32
  call void @__asan_load8_noabort(i32 %412)
  %413 = load i64, ptr %374, align 8
  %and72.i = and i64 %413, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and72.i)
  %tobool73.not.i = icmp eq i64 %and72.i, 0
  br i1 %tobool73.not.i, label %if.then74.i, label %do.end68.i.if.end79.i_crit_edge

do.end68.i.if.end79.i_crit_edge:                  ; preds = %do.end68.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end79.i

if.then74.i:                                      ; preds = %do.end68.i
  %414 = ptrtoint ptr %uffdio_continue.i to i32
  call void @__asan_load8_noabort(i32 %414)
  %415 = load i64, ptr %uffdio_continue.i, align 8
  %conv77.i = trunc i64 %415 to i32
  %416 = ptrtoint ptr %range.i303 to i32
  call void @__asan_store4_noabort(i32 %416)
  store i32 %conv77.i, ptr %range.i303, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !153
  %refile_seq.i.i344 = getelementptr inbounds %struct.userfaultfd_ctx, ptr %1, i32 0, i32 4
  %dep_map.c48.i.i.i345 = getelementptr inbounds %struct.userfaultfd_ctx, ptr %1, i32 0, i32 4, i32 0, i32 1
  %head.i.i.i346 = getelementptr inbounds %struct.wait_queue_head, ptr %1, i32 0, i32 1
  %head.i42.i.i347 = getelementptr inbounds %struct.userfaultfd_ctx, ptr %1, i32 0, i32 1, i32 1
  br label %do.body4.i.i349

do.body4.i.i349:                                  ; preds = %lor.end.i.i365.do.body4.i.i349_crit_edge, %if.then74.i
  %417 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !154
  %and.i.i.i106.i = and i32 %417, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i106.i)
  %tobool.not.i.i.i348 = icmp eq i32 %and.i.i.i106.i, 0
  br i1 %tobool.not.i.i.i348, label %if.then.i.i107.i, label %do.body24.critedge.i.i.i350

if.then.i.i107.i:                                 ; preds = %do.body4.i.i349
  call void @__sanitizer_cov_trace_pc() #13
  call void @trace_hardirqs_off() #11
  %418 = call ptr @llvm.returnaddress(i32 0) #11
  %419 = ptrtoint ptr %418 to i32
  call void @lock_acquire(ptr noundef %dep_map.c48.i.i.i345, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %419) #11
  call void @lock_release(ptr noundef %dep_map.c48.i.i.i345, i32 noundef %419) #11
  call void @trace_hardirqs_on() #11
  br label %do.body24.i.i.i352

do.body24.critedge.i.i.i350:                      ; preds = %do.body4.i.i349
  call void @__sanitizer_cov_trace_pc() #13
  %420 = call ptr @llvm.returnaddress(i32 0) #11
  %421 = ptrtoint ptr %420 to i32
  call void @lock_acquire(ptr noundef %dep_map.c48.i.i.i345, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %421) #11
  call void @lock_release(ptr noundef %dep_map.c48.i.i.i345, i32 noundef %421) #11
  br label %do.body24.i.i.i352

do.body24.i.i.i352:                               ; preds = %do.body24.critedge.i.i.i350, %if.then.i.i107.i
  %422 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !155
  %and.i.i.i.i108.i = and i32 %422, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i108.i)
  %tobool32.not.i.i.i351 = icmp eq i32 %and.i.i.i.i108.i, 0
  br i1 %tobool32.not.i.i.i351, label %if.then36.i.i.i353, label %do.body24.i.i.i352.seqcount_lockdep_reader_access.exit.i.i356_crit_edge, !prof !94

do.body24.i.i.i352.seqcount_lockdep_reader_access.exit.i.i356_crit_edge: ; preds = %do.body24.i.i.i352
  call void @__sanitizer_cov_trace_pc() #13
  br label %seqcount_lockdep_reader_access.exit.i.i356

if.then36.i.i.i353:                               ; preds = %do.body24.i.i.i352
  call void @__sanitizer_cov_trace_pc() #13
  call void @warn_bogus_irq_restore() #11
  br label %seqcount_lockdep_reader_access.exit.i.i356

seqcount_lockdep_reader_access.exit.i.i356:       ; preds = %if.then36.i.i.i353, %do.body24.i.i.i352.seqcount_lockdep_reader_access.exit.i.i356_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %417) #11, !srcloc !156
  %423 = ptrtoint ptr %refile_seq.i.i344 to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load volatile i32, ptr %refile_seq.i.i344, align 4
  %and48.i.i354 = and i32 %424, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48.i.i354)
  %tobool.not49.i.i355 = icmp eq i32 %and48.i.i354, 0
  br i1 %tobool.not49.i.i355, label %seqcount_lockdep_reader_access.exit.i.i356.while.end.i.i361_crit_edge, label %seqcount_lockdep_reader_access.exit.i.i356.do.end11.i.i358_crit_edge

seqcount_lockdep_reader_access.exit.i.i356.do.end11.i.i358_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i.i356
  br label %do.end11.i.i358

seqcount_lockdep_reader_access.exit.i.i356.while.end.i.i361_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i.i356
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i.i361

do.end11.i.i358:                                  ; preds = %do.end11.i.i358.do.end11.i.i358_crit_edge, %seqcount_lockdep_reader_access.exit.i.i356.do.end11.i.i358_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !157
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !158
  %425 = ptrtoint ptr %refile_seq.i.i344 to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load volatile i32, ptr %refile_seq.i.i344, align 4
  %and.i109.i = and i32 %426, 1
  %tobool.not.i.i357 = icmp eq i32 %and.i109.i, 0
  br i1 %tobool.not.i.i357, label %do.end11.i.i358.while.end.i.i361_crit_edge, label %do.end11.i.i358.do.end11.i.i358_crit_edge

do.end11.i.i358.do.end11.i.i358_crit_edge:        ; preds = %do.end11.i.i358
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end11.i.i358

do.end11.i.i358.while.end.i.i361_crit_edge:       ; preds = %do.end11.i.i358
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i.i361

while.end.i.i361:                                 ; preds = %do.end11.i.i358.while.end.i.i361_crit_edge, %seqcount_lockdep_reader_access.exit.i.i356.while.end.i.i361_crit_edge
  %.lcssa.i.i359 = phi i32 [ %424, %seqcount_lockdep_reader_access.exit.i.i356.while.end.i.i361_crit_edge ], [ %426, %do.end11.i.i358.while.end.i.i361_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !159
  %427 = ptrtoint ptr %head.i.i.i346 to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load volatile ptr, ptr %head.i.i.i346, align 4
  %cmp.i.i.not.i.i360 = icmp eq ptr %428, %head.i.i.i346
  br i1 %cmp.i.i.not.i.i360, label %lor.rhs.i.i363, label %while.end.i.i361.lor.end.i.i365_crit_edge

while.end.i.i361.lor.end.i.i365_crit_edge:        ; preds = %while.end.i.i361
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.end.i.i365

lor.rhs.i.i363:                                   ; preds = %while.end.i.i361
  call void @__sanitizer_cov_trace_pc() #13
  %429 = ptrtoint ptr %head.i42.i.i347 to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load volatile ptr, ptr %head.i42.i.i347, align 4
  %cmp.i.i43.i.i362 = icmp ne ptr %430, %head.i42.i.i347
  br label %lor.end.i.i365

lor.end.i.i365:                                   ; preds = %lor.rhs.i.i363, %while.end.i.i361.lor.end.i.i365_crit_edge
  %431 = phi i1 [ true, %while.end.i.i361.lor.end.i.i365_crit_edge ], [ %cmp.i.i43.i.i362, %lor.rhs.i.i363 ]
  call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 1229, i32 noundef 0) #11
  %call.i.i110.i = call i32 @__cond_resched() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !160
  %432 = ptrtoint ptr %refile_seq.i.i344 to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load volatile i32, ptr %refile_seq.i.i344, align 4
  %cmp.i.i45.not.i.i364 = icmp eq i32 %433, %.lcssa.i.i359
  br i1 %cmp.i.i45.not.i.i364, label %do.end35.i.i366, label %lor.end.i.i365.do.body4.i.i349_crit_edge

lor.end.i.i365.do.body4.i.i349_crit_edge:         ; preds = %lor.end.i.i365
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body4.i.i349

do.end35.i.i366:                                  ; preds = %lor.end.i.i365
  br i1 %431, label %if.then.i.i368, label %do.end35.i.i366.if.end79.i_crit_edge

do.end35.i.i366.if.end79.i_crit_edge:             ; preds = %do.end35.i.i366
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end79.i

if.then.i.i368:                                   ; preds = %do.end35.i.i366
  call void @_raw_spin_lock_irq(ptr noundef %1) #11
  %434 = ptrtoint ptr %head.i.i.i346 to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load volatile ptr, ptr %head.i.i.i346, align 4
  %cmp.i.i.not.i.i.i367 = icmp eq ptr %435, %head.i.i.i346
  br i1 %cmp.i.i.not.i.i.i367, label %if.then.i.i368.if.end.i.i111.i_crit_edge, label %if.then.i46.i.i369

if.then.i.i368.if.end.i.i111.i_crit_edge:         ; preds = %if.then.i.i368
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i111.i

if.then.i46.i.i369:                               ; preds = %if.then.i.i368
  call void @__sanitizer_cov_trace_pc() #13
  call void @__wake_up_locked_key(ptr noundef %1, i32 noundef 3, ptr noundef nonnull %range.i303) #11
  br label %if.end.i.i111.i

if.end.i.i111.i:                                  ; preds = %if.then.i46.i.i369, %if.then.i.i368.if.end.i.i111.i_crit_edge
  %436 = ptrtoint ptr %head.i42.i.i347 to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load volatile ptr, ptr %head.i42.i.i347, align 4
  %cmp.i.i17.not.i.i.i370 = icmp eq ptr %437, %head.i42.i.i347
  br i1 %cmp.i.i17.not.i.i.i370, label %if.end.i.i111.i.__wake_userfault.exit.i.i373_crit_edge, label %if.then5.i.i.i372

if.end.i.i111.i.__wake_userfault.exit.i.i373_crit_edge: ; preds = %if.end.i.i111.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__wake_userfault.exit.i.i373

if.then5.i.i.i372:                                ; preds = %if.end.i.i111.i
  call void @__sanitizer_cov_trace_pc() #13
  %fault_wqh.i.i.i371 = getelementptr inbounds %struct.userfaultfd_ctx, ptr %1, i32 0, i32 1
  call void @__wake_up(ptr noundef %fault_wqh.i.i.i371, i32 noundef 3, i32 noundef 1, ptr noundef nonnull %range.i303) #11
  br label %__wake_userfault.exit.i.i373

__wake_userfault.exit.i.i373:                     ; preds = %if.then5.i.i.i372, %if.end.i.i111.i.__wake_userfault.exit.i.i373_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef %1) #11
  br label %if.end79.i

if.end79.i:                                       ; preds = %__wake_userfault.exit.i.i373, %do.end35.i.i366.if.end79.i_crit_edge, %do.end68.i.if.end79.i_crit_edge
  %438 = ptrtoint ptr %376 to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load i32, ptr %376, align 4
  %conv81.i = zext i32 %439 to i64
  %440 = ptrtoint ptr %373 to i32
  call void @__asan_load8_noabort(i32 %440)
  %441 = load i64, ptr %373, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %441, i64 %conv81.i)
  %cmp84.i = icmp eq i64 %441, %conv81.i
  %extract.t104.i = select i1 %cmp84.i, i32 0, i32 -11
  br label %userfaultfd_continue.exit

userfaultfd_continue.exit:                        ; preds = %if.end79.i, %if.end44.i.userfaultfd_continue.exit_crit_edge, %if.then25.i.userfaultfd_continue.exit_crit_edge, %if.end22.i.userfaultfd_continue.exit_crit_edge, %if.end19.i.userfaultfd_continue.exit_crit_edge, %if.end8.i.i337.userfaultfd_continue.exit_crit_edge, %if.end4.i325.userfaultfd_continue.exit_crit_edge, %if.then11.i.i.i321, %sw.bb14.userfaultfd_continue.exit_crit_edge
  %retval.0.i374 = phi i32 [ -3, %if.end22.i.userfaultfd_continue.exit_crit_edge ], [ -14, %if.then25.i.userfaultfd_continue.exit_crit_edge ], [ -11, %sw.bb14.userfaultfd_continue.exit_crit_edge ], [ -22, %if.end19.i.userfaultfd_continue.exit_crit_edge ], [ %call34.i, %if.end44.i.userfaultfd_continue.exit_crit_edge ], [ %extract.t104.i, %if.end79.i ], [ -14, %if.then11.i.i.i321 ], [ -22, %if.end4.i325.userfaultfd_continue.exit_crit_edge ], [ -22, %if.end8.i.i337.userfaultfd_continue.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %range.i303) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %uffdio_continue.i) #11
  br label %cleanup

cleanup:                                          ; preds = %userfaultfd_continue.exit, %userfaultfd_writeprotect.exit, %userfaultfd_zeropage.exit, %userfaultfd_copy.exit, %userfaultfd_wake.exit, %sw.bb4, %userfaultfd_register.exit, %userfaultfd_api.exit, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %retval.0.i374, %userfaultfd_continue.exit ], [ %retval.0.i302, %userfaultfd_writeprotect.exit ], [ %retval.0.i231, %userfaultfd_zeropage.exit ], [ %retval.0.i, %userfaultfd_copy.exit ], [ %ret.0.i88, %userfaultfd_wake.exit ], [ %call5, %sw.bb4 ], [ %ret.7.i, %userfaultfd_register.exit ], [ %ret.0.i, %userfaultfd_api.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @userfaultfd_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %file) #0 align 64 {
entry:
  %range = alloca %struct.userfaultfd_wake_range, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %mm1 = getelementptr inbounds %struct.userfaultfd_ctx, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %mm1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mm1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %range) #11
  %4 = ptrtoint ptr %range to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %range, align 8
  %released = getelementptr inbounds %struct.userfaultfd_ctx, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %released to i32
  call void @__asan_store1_noabort(i32 %5)
  store volatile i8 1, ptr %released, align 4
  %mm_users.i = getelementptr inbounds %struct.anon.0, ptr %3, i32 0, i32 10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %mm_users.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !144
  tail call void @llvm.prefetch.p0(ptr %mm_users.i, i32 1, i32 3, i32 1) #11
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %mm_users.i, ptr %mm_users.i, i32 0, i32 1, ptr elementtype(i32) %mm_users.i) #11, !srcloc !145
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %entry.wakeup_crit_edge, label %if.end

entry.wakeup_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %wakeup

if.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !146
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@userfaultfd_release, %if.then.i.i)) #11
          to label %__mmap_lock_trace_start_locking.exit.i [label %if.then.i.i], !srcloc !113

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %3, i1 noundef zeroext true) #11
  br label %__mmap_lock_trace_start_locking.exit.i

__mmap_lock_trace_start_locking.exit.i:           ; preds = %if.then.i.i, %if.end
  %mmap_lock.i = getelementptr inbounds %struct.anon.0, ptr %3, i32 0, i32 15
  tail call void @down_write(ptr noundef %mmap_lock.i) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@userfaultfd_release, %if.then.i3.i)) #11
          to label %mmap_write_lock.exit [label %if.then.i3.i], !srcloc !113

if.then.i3.i:                                     ; preds = %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %3, i1 noundef zeroext true, i1 noundef zeroext true) #11
  br label %mmap_write_lock.exit

mmap_write_lock.exit:                             ; preds = %if.then.i3.i, %__mmap_lock_trace_start_locking.exit.i
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %vma.089 = load ptr, ptr %3, align 4
  %tobool.not90 = icmp eq ptr %vma.089, null
  br i1 %tobool.not90, label %mmap_write_lock.exit.for.end_crit_edge, label %mmap_write_lock.exit.for.body_crit_edge

mmap_write_lock.exit.for.body_crit_edge:          ; preds = %mmap_write_lock.exit
  br label %for.body

mmap_write_lock.exit.for.end_crit_edge:           ; preds = %mmap_write_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %mmap_write_lock.exit.for.body_crit_edge
  %vma.092 = phi ptr [ %vma.0, %for.inc.for.body_crit_edge ], [ %vma.089, %mmap_write_lock.exit.for.body_crit_edge ]
  %prev.091 = phi ptr [ %vma.2, %for.inc.for.body_crit_edge ], [ null, %mmap_write_lock.exit.for.body_crit_edge ]
  tail call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 869, i32 noundef 0) #11
  %call.i = tail call i32 @__cond_resched() #11
  %vm_userfaultfd_ctx = getelementptr inbounds %struct.vm_area_struct, ptr %vma.092, i32 0, i32 17
  %8 = ptrtoint ptr %vm_userfaultfd_ctx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vm_userfaultfd_ctx, align 4
  %tobool11 = icmp ne ptr %9, null
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %vma.092, i32 0, i32 8
  %10 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vm_flags, align 4
  %and = and i32 %11, 4608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13 = icmp ne i32 %and, 0
  %xor85 = xor i1 %tobool11, %tobool13
  br i1 %xor85, label %do.body25, label %do.end33, !prof !94

do.body25:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/userfaultfd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 871, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

do.end33:                                         ; preds = %for.body
  %cmp.not = icmp eq ptr %9, %1
  br i1 %cmp.not, label %if.end37, label %do.end33.for.inc_crit_edge

do.end33.for.inc_crit_edge:                       ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end37:                                         ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #13
  %and39 = and i32 %11, -4609
  %12 = ptrtoint ptr %vma.092 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vma.092, align 4
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %vma.092, i32 0, i32 1
  %14 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vm_end, align 4
  %anon_vma = getelementptr inbounds %struct.vm_area_struct, ptr %vma.092, i32 0, i32 11
  %16 = ptrtoint ptr %anon_vma to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %anon_vma, align 4
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %vma.092, i32 0, i32 14
  %18 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %vm_file, align 4
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %vma.092, i32 0, i32 13
  %20 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %vm_pgoff, align 4
  %call41 = tail call ptr @anon_vma_name(ptr noundef nonnull %vma.092) #11
  %call42 = tail call ptr @vma_merge(ptr noundef %3, ptr noundef %prev.091, i32 noundef %13, i32 noundef %15, i32 noundef %and39, ptr noundef %17, ptr noundef %19, i32 noundef %21, ptr noundef null, [1 x i32] zeroinitializer, ptr noundef %call41) #11
  %tobool43.not = icmp eq ptr %call42, null
  %vma.0.call42 = select i1 %tobool43.not, ptr %vma.092, ptr %call42
  %vm_flags46 = getelementptr inbounds %struct.vm_area_struct, ptr %vma.0.call42, i32 0, i32 8
  %22 = ptrtoint ptr %vm_flags46 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %and39, ptr %vm_flags46, align 4
  %vm_userfaultfd_ctx47 = getelementptr inbounds %struct.vm_area_struct, ptr %vma.0.call42, i32 0, i32 17
  %23 = ptrtoint ptr %vm_userfaultfd_ctx47 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %vm_userfaultfd_ctx47, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end37, %do.end33.for.inc_crit_edge
  %vma.2 = phi ptr [ %vma.0.call42, %if.end37 ], [ %vma.092, %do.end33.for.inc_crit_edge ]
  %vm_next = getelementptr inbounds %struct.vm_area_struct, ptr %vma.2, i32 0, i32 2
  %24 = ptrtoint ptr %vm_next to i32
  call void @__asan_load4_noabort(i32 %24)
  %vma.0 = load ptr, ptr %vm_next, align 4
  %tobool.not = icmp eq ptr %vma.0, null
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %mmap_write_lock.exit.for.end_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@userfaultfd_release, %if.then.i.i86)) #11
          to label %mmap_write_unlock.exit [label %if.then.i.i86], !srcloc !113

if.then.i.i86:                                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__mmap_lock_do_trace_released(ptr noundef %3, i1 noundef zeroext true) #11
  br label %mmap_write_unlock.exit

mmap_write_unlock.exit:                           ; preds = %if.then.i.i86, %for.end
  tail call void @up_write(ptr noundef %mmap_lock.i) #11
  tail call void @mmput(ptr noundef %3) #11
  br label %wakeup

wakeup:                                           ; preds = %mmap_write_unlock.exit, %entry.wakeup_crit_edge
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #11
  call void @__wake_up_locked_key(ptr noundef %1, i32 noundef 3, ptr noundef nonnull %range) #11
  %fault_wqh = getelementptr inbounds %struct.userfaultfd_ctx, ptr %1, i32 0, i32 1
  call void @__wake_up(ptr noundef %fault_wqh, i32 noundef 3, i32 noundef 1, ptr noundef nonnull %range) #11
  call void @_raw_spin_unlock_irq(ptr noundef %1) #11
  %event_wqh = getelementptr inbounds %struct.userfaultfd_ctx, ptr %1, i32 0, i32 3
  call void @__wake_up(ptr noundef %event_wqh, i32 noundef 3, i32 noundef 0, ptr noundef null) #11
  %fd_wqh = getelementptr inbounds %struct.userfaultfd_ctx, ptr %1, i32 0, i32 2
  call void @__wake_up(ptr noundef %fd_wqh, i32 noundef 3, i32 noundef 1, ptr noundef nonnull inttoptr (i32 16 to ptr)) #11
  call fastcc void @userfaultfd_ctx_put(ptr noundef %1)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %range) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @userfaultfd_show_fdinfo(ptr noundef %m, ptr nocapture noundef readonly %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #11
  %head = getelementptr inbounds %struct.wait_queue_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn46 = load ptr, ptr %head, align 4
  %cmp.not47 = icmp eq ptr %.pn46, %head
  br i1 %cmp.not47, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn50 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn46, %entry.for.body_crit_edge ]
  %pending.049 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %inc = add i32 %pending.049, 1
  %3 = ptrtoint ptr %.pn50 to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn = load ptr, ptr %.pn50, align 4
  %cmp.not = icmp eq ptr %.pn, %head
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %total.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %inc, %for.body.for.end_crit_edge ]
  %head12 = getelementptr inbounds %struct.userfaultfd_ctx, ptr %1, i32 0, i32 1, i32 1
  br label %for.cond16

for.cond16:                                       ; preds = %for.cond16.for.cond16_crit_edge, %for.end
  %total.1 = phi i32 [ %total.0.lcssa, %for.end ], [ %inc23, %for.cond16.for.cond16_crit_edge ]
  %.pn45.in = phi ptr [ %head12, %for.end ], [ %.pn45, %for.cond16.for.cond16_crit_edge ]
  %4 = ptrtoint ptr %.pn45.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn45 = load ptr, ptr %.pn45.in, align 4
  %cmp20.not = icmp eq ptr %.pn45, %head12
  %inc23 = add i32 %total.1, 1
  br i1 %cmp20.not, label %for.end30, label %for.cond16.for.cond16_crit_edge

for.cond16.for.cond16_crit_edge:                  ; preds = %for.cond16
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond16

for.end30:                                        ; preds = %for.cond16
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #11
  %features = getelementptr inbounds %struct.userfaultfd_ctx, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %features, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.23, i32 noundef %total.0.lcssa, i32 noundef %total.1, i64 noundef 170, i32 noundef %6, i64 noundef -9223372036854775585) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @userfaultfd_ctx_read(ptr noundef %ctx, i32 noundef %no_wait, ptr nocapture noundef %msg, ptr noundef %inode) #0 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  %fork_event = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #11
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wait, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !84) #11
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %0, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @default_wake_function, ptr %1, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %fork_event) #11
  %13 = getelementptr inbounds %struct.list_head, ptr %fork_event, i32 0, i32 1
  %14 = ptrtoint ptr %fork_event to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %fork_event, ptr %fork_event, align 4
  %15 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %fork_event, ptr %13, align 4
  %fd_wqh = getelementptr inbounds %struct.userfaultfd_ctx, ptr %ctx, i32 0, i32 2
  call void @_raw_spin_lock_irq(ptr noundef %fd_wqh) #11
  %head1.i = getelementptr inbounds %struct.userfaultfd_ctx, ptr %ctx, i32 0, i32 2, i32 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %head.0.i = phi ptr [ %head1.i, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %16 = ptrtoint ptr %head.0.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn.i = load ptr, ptr %head.0.i, align 4
  %cmp.not.i296 = icmp eq ptr %.pn.i, %head1.i
  br i1 %cmp.not.i296, label %for.cond.i.for.end.i_crit_edge, label %for.body.i

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i:                                       ; preds = %for.cond.i
  %wq.0.i = getelementptr i8, ptr %.pn.i, i32 -12
  %17 = ptrtoint ptr %wq.0.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %wq.0.i, align 4
  %and.i297 = and i32 %18, 32
  %tobool.not.i298 = icmp eq i32 %and.i297, 0
  br i1 %tobool.not.i298, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.i.for.end.i_crit_edge
  %.pn.lcssa.i = phi ptr [ %.pn.i, %for.body.i.for.end.i_crit_edge ], [ %head1.i, %for.cond.i.for.end.i_crit_edge ]
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %2, ptr noundef %head.0.i, ptr noundef %.pn.lcssa.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.end.i.__add_wait_queue.exit_crit_edge

for.end.i.__add_wait_queue.exit_crit_edge:        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__add_wait_queue.exit

if.end.i.i.i:                                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.lcssa.i, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %2, ptr %prev1.i.i.i, align 4
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %.pn.lcssa.i, ptr %2, align 4
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %head.0.i, ptr %3, align 4
  %22 = ptrtoint ptr %head.0.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %2, ptr %head.0.i, align 4
  br label %__add_wait_queue.exit

__add_wait_queue.exit:                            ; preds = %if.end.i.i.i, %for.end.i.__add_wait_queue.exit_crit_edge
  %dep_map.i.i = getelementptr inbounds %struct.anon.4, ptr %ctx, i32 0, i32 1
  %head.i.i.i = getelementptr inbounds %struct.wait_queue_head, ptr %ctx, i32 0, i32 1
  %prev.i.i = getelementptr inbounds %struct.wait_queue_head, ptr %ctx, i32 0, i32 1, i32 1
  %event_wqh = getelementptr inbounds %struct.userfaultfd_ctx, ptr %ctx, i32 0, i32 3
  %dep_map.i.i307 = getelementptr inbounds %struct.userfaultfd_ctx, ptr %ctx, i32 0, i32 3, i32 0, i32 0, i32 0, i32 4
  %head.i.i.i312 = getelementptr inbounds %struct.userfaultfd_ctx, ptr %ctx, i32 0, i32 3, i32 1
  %prev.i.i315 = getelementptr inbounds %struct.userfaultfd_ctx, ptr %ctx, i32 0, i32 3, i32 1, i32 1
  br label %__here

__here:                                           ; preds = %if.end130, %__add_wait_queue.exit
  %23 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 212
  %25 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 ptrtoint (ptr blockaddress(@userfaultfd_ctx_read, %__here) to i32), ptr %task_state_change, align 4
  %26 = load ptr, ptr %task, align 8
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile i32 1, ptr %26, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !168
  call void @_raw_spin_lock(ptr noundef %ctx) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %28 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i.i, label %__here.if.end.i.i_crit_edge, label %land.rhs.i.i

__here.if.end.i.i_crit_edge:                      ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

land.rhs.i.i:                                     ; preds = %__here
  %call.i.i.i299 = call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i299)
  %cmp.not.i.i = icmp eq i32 %call.i.i.i299, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %land.rhs.i.i.if.end.i.i_crit_edge, !prof !94

land.rhs.i.i.if.end.i.i_crit_edge:                ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 917, i32 noundef 9, ptr noundef null) #11
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %land.rhs.i.i.if.end.i.i_crit_edge, %__here.if.end.i.i_crit_edge
  %29 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %head.i.i.i, align 4
  %cmp.i.i.not.i.i = icmp eq ptr %30, %head.i.i.i
  br i1 %cmp.i.i.not.i.i, label %if.end.i.i.if.end99_crit_edge, label %find_userfault.exit

if.end.i.i.if.end99_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end99

find_userfault.exit:                              ; preds = %if.end.i.i
  %31 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev.i.i, align 4
  %add.ptr31.i.i = getelementptr i8, ptr %32, i32 -44
  %tobool68.not = icmp eq ptr %add.ptr31.i.i, null
  br i1 %tobool68.not, label %find_userfault.exit.if.end99_crit_edge, label %do.body70

find_userfault.exit.if.end99_crit_edge:           ; preds = %find_userfault.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end99

do.body70:                                        ; preds = %find_userfault.exit
  %refile_seq = getelementptr inbounds %struct.userfaultfd_ctx, ptr %ctx, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %33 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i = icmp eq i32 %33, 0
  br i1 %tobool.not.i, label %do.body70.__seqprop_spinlock_assert.exit_crit_edge, label %land.rhs.i

do.body70.__seqprop_spinlock_assert.exit_crit_edge: ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #13
  br label %__seqprop_spinlock_assert.exit

land.rhs.i:                                       ; preds = %do.body70
  %lock.i = getelementptr inbounds %struct.userfaultfd_ctx, ptr %ctx, i32 0, i32 4, i32 1
  %34 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %lock.i, align 4
  %dep_map.i = getelementptr inbounds %struct.anon.4, ptr %35, i32 0, i32 1
  %call.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.__seqprop_spinlock_assert.exit_crit_edge, !prof !94

land.rhs.i.__seqprop_spinlock_assert.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__seqprop_spinlock_assert.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 277, i32 noundef 9, ptr noundef null) #11
  br label %__seqprop_spinlock_assert.exit

__seqprop_spinlock_assert.exit:                   ; preds = %do.end.i, %land.rhs.i.__seqprop_spinlock_assert.exit_crit_edge, %do.body70.__seqprop_spinlock_assert.exit_crit_edge
  %36 = ptrtoint ptr %refile_seq to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %refile_seq, align 4
  %inc.i.i.i = add i32 %37, 1
  store i32 %inc.i.i.i, ptr %refile_seq, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !169
  %dep_map.i.i300 = getelementptr inbounds %struct.userfaultfd_ctx, ptr %ctx, i32 0, i32 4, i32 0, i32 1
  %38 = call ptr @llvm.returnaddress(i32 0) #11
  %39 = ptrtoint ptr %38 to i32
  call void @lock_acquire(ptr noundef %dep_map.i.i300, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %39) #11
  %wq = getelementptr i8, ptr %32, i32 -12
  %call.i.i301 = call zeroext i1 @__list_del_entry_valid(ptr noundef %32) #11
  br i1 %call.i.i301, label %if.end.i.i304, label %__seqprop_spinlock_assert.exit.list_del.exit_crit_edge

__seqprop_spinlock_assert.exit.list_del.exit_crit_edge: ; preds = %__seqprop_spinlock_assert.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i304:                                    ; preds = %__seqprop_spinlock_assert.exit
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i302 = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %40 = ptrtoint ptr %prev.i.i302 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prev.i.i302, align 4
  %42 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %32, align 4
  %prev1.i.i.i303 = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %prev1.i.i.i303 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %prev1.i.i.i303, align 4
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %43, ptr %41, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i304, %__seqprop_spinlock_assert.exit.list_del.exit_crit_edge
  %46 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr inttoptr (i32 256 to ptr), ptr %32, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %47 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %fault_wqh = getelementptr inbounds %struct.userfaultfd_ctx, ptr %ctx, i32 0, i32 1
  call void @add_wait_queue(ptr noundef %fault_wqh, ptr noundef %wq) #11
  call void @lock_release(ptr noundef %dep_map.i.i300, i32 noundef %39) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !170
  %48 = ptrtoint ptr %refile_seq to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %refile_seq, align 4
  %inc.i.i = add i32 %49, 1
  store i32 %inc.i.i, ptr %refile_seq, align 4
  %50 = call ptr @memcpy(ptr %msg, ptr %add.ptr31.i.i, i32 32)
  call void @_raw_spin_unlock(ptr noundef %ctx) #11
  br label %for.end

if.end99:                                         ; preds = %find_userfault.exit.if.end99_crit_edge, %if.end.i.i.if.end99_crit_edge
  call void @_raw_spin_unlock(ptr noundef %ctx) #11
  call void @_raw_spin_lock(ptr noundef %event_wqh) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %51 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not.i.i306 = icmp eq i32 %51, 0
  br i1 %tobool.not.i.i306, label %if.end99.if.end.i.i314_crit_edge, label %land.rhs.i.i310

if.end99.if.end.i.i314_crit_edge:                 ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i314

land.rhs.i.i310:                                  ; preds = %if.end99
  %call.i.i.i308 = call i32 @lock_is_held_type(ptr noundef %dep_map.i.i307, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i308)
  %cmp.not.i.i309 = icmp eq i32 %call.i.i.i308, 0
  br i1 %cmp.not.i.i309, label %do.end.i.i311, label %land.rhs.i.i310.if.end.i.i314_crit_edge, !prof !94

land.rhs.i.i310.if.end.i.i314_crit_edge:          ; preds = %land.rhs.i.i310
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i314

do.end.i.i311:                                    ; preds = %land.rhs.i.i310
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 917, i32 noundef 9, ptr noundef null) #11
  br label %if.end.i.i314

if.end.i.i314:                                    ; preds = %do.end.i.i311, %land.rhs.i.i310.if.end.i.i314_crit_edge, %if.end99.if.end.i.i314_crit_edge
  %52 = ptrtoint ptr %head.i.i.i312 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile ptr, ptr %head.i.i.i312, align 4
  %cmp.i.i.not.i.i313 = icmp eq ptr %53, %head.i.i.i312
  br i1 %cmp.i.i.not.i.i313, label %if.end.i.i314.if.end119_crit_edge, label %find_userfault_evt.exit

if.end.i.i314.if.end119_crit_edge:                ; preds = %if.end.i.i314
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end119

find_userfault_evt.exit:                          ; preds = %if.end.i.i314
  %54 = ptrtoint ptr %prev.i.i315 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %prev.i.i315, align 4
  %add.ptr31.i.i316 = getelementptr i8, ptr %55, i32 -44
  %tobool104.not = icmp eq ptr %add.ptr31.i.i316, null
  br i1 %tobool104.not, label %find_userfault_evt.exit.if.end119_crit_edge, label %if.then105

find_userfault_evt.exit.if.end119_crit_edge:      ; preds = %find_userfault_evt.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end119

if.then105:                                       ; preds = %find_userfault_evt.exit
  %56 = call ptr @memcpy(ptr %msg, ptr %add.ptr31.i.i316, i32 32)
  %57 = ptrtoint ptr %add.ptr31.i.i316 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %add.ptr31.i.i316, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %58)
  %cmp = icmp eq i8 %58, 19
  br i1 %cmp, label %if.then109, label %if.end116

if.then109:                                       ; preds = %if.then105
  %arg = getelementptr i8, ptr %55, i32 -36
  %59 = ptrtoint ptr %arg to i32
  call void @__asan_loadN_noabort(i32 %59, i32 8)
  %60 = load i64, ptr %arg, align 4
  %conv111 = trunc i64 %60 to i32
  %61 = inttoptr i32 %conv111 to ptr
  %call.i.i319 = call zeroext i1 @__list_del_entry_valid(ptr noundef %55) #11
  br i1 %call.i.i319, label %if.end.i.i322, label %if.then109.__list_del_entry.exit.i_crit_edge

if.then109.__list_del_entry.exit.i_crit_edge:     ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #13
  br label %__list_del_entry.exit.i

if.end.i.i322:                                    ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i320 = getelementptr inbounds %struct.list_head, ptr %55, i32 0, i32 1
  %62 = ptrtoint ptr %prev.i.i320 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %prev.i.i320, align 4
  %64 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %55, align 4
  %prev1.i.i.i321 = getelementptr inbounds %struct.list_head, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %prev1.i.i.i321 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %63, ptr %prev1.i.i.i321, align 4
  %67 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %65, ptr %63, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i322, %if.then109.__list_del_entry.exit.i_crit_edge
  %68 = ptrtoint ptr %fork_event to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %fork_event, align 4
  %call.i.i.i323 = call zeroext i1 @__list_add_valid(ptr noundef %55, ptr noundef nonnull %fork_event, ptr noundef %69) #11
  br i1 %call.i.i.i323, label %if.end.i.i.i325, label %__list_del_entry.exit.i.list_move.exit_crit_edge

__list_del_entry.exit.i.list_move.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_move.exit

if.end.i.i.i325:                                  ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i2.i = getelementptr inbounds %struct.list_head, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %prev1.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %55, ptr %prev1.i.i2.i, align 4
  %71 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %69, ptr %55, align 4
  %prev3.i.i.i324 = getelementptr inbounds %struct.list_head, ptr %55, i32 0, i32 1
  %72 = ptrtoint ptr %prev3.i.i.i324 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %fork_event, ptr %prev3.i.i.i324, align 4
  %73 = ptrtoint ptr %fork_event to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr %55, ptr %fork_event, align 4
  br label %list_move.exit

list_move.exit:                                   ; preds = %if.end.i.i.i325, %__list_del_entry.exit.i.list_move.exit_crit_edge
  %refcount.i = getelementptr inbounds %struct.userfaultfd_ctx, ptr %61, i32 0, i32 5
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #11
  %74 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #11, !srcloc !104
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %74, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %list_move.exit.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !94

list_move.exit.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %list_move.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %list_move.exit
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %75 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %75)
  %.not.i.i.i.i = icmp sgt i32 %75, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.userfaultfd_ctx_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !96

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.userfaultfd_ctx_get.exit_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %userfaultfd_ctx_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %list_move.exit.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %list_move.exit.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef %.sink.i.i.i.i) #11
  br label %userfaultfd_ctx_get.exit

userfaultfd_ctx_get.exit:                         ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.userfaultfd_ctx_get.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %event_wqh) #11
  br label %for.end

if.end116:                                        ; preds = %if.then105
  %76 = ptrtoint ptr %add.ptr31.i.i316 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 0, ptr %add.ptr31.i.i316, align 4
  call void @__wake_up_locked(ptr noundef %event_wqh, i32 noundef 3, i32 noundef 1) #11
  %call.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %55) #11
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end116.userfaultfd_event_complete.exit_crit_edge

if.end116.userfaultfd_event_complete.exit_crit_edge: ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #13
  br label %userfaultfd_event_complete.exit

if.end.i.i.i.i:                                   ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i.i = getelementptr i8, ptr %55, i32 4
  %77 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %prev.i.i.i.i, align 4
  %79 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %55, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %78, ptr %prev1.i.i.i.i.i, align 4
  %82 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile ptr %80, ptr %78, align 4
  br label %userfaultfd_event_complete.exit

userfaultfd_event_complete.exit:                  ; preds = %if.end.i.i.i.i, %if.end116.userfaultfd_event_complete.exit_crit_edge
  %83 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr inttoptr (i32 256 to ptr), ptr %55, align 4
  %prev.i.i.i = getelementptr i8, ptr %55, i32 4
  %84 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  call void @_raw_spin_unlock(ptr noundef %event_wqh) #11
  br label %for.end

if.end119:                                        ; preds = %find_userfault_evt.exit.if.end119_crit_edge, %if.end.i.i314.if.end119_crit_edge
  call void @_raw_spin_unlock(ptr noundef %event_wqh) #11
  %85 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %stack.i.i, align 4
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %88, align 4
  %91 = and i32 %90, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool.not.i326 = icmp eq i32 %91, 0
  br i1 %tobool.not.i326, label %signal_pending.exit, label %if.end119.for.end_crit_edge, !prof !96

if.end119.for.end_crit_edge:                      ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

signal_pending.exit:                              ; preds = %if.end119
  %92 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load volatile i32, ptr %88, align 4
  %and1.i.i.i.i.i = and i32 %93, 1
  %94 = or i32 %and1.i.i.i.i.i, %no_wait
  %.not = icmp eq i32 %94, 0
  br i1 %.not, label %if.end130, label %for.end.loopexit.split.loop.exit

if.end130:                                        ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void @_raw_spin_unlock_irq(ptr noundef %fd_wqh) #11
  call void @schedule() #11
  call void @_raw_spin_lock_irq(ptr noundef %fd_wqh) #11
  br label %__here

for.end.loopexit.split.loop.exit:                 ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool125.not.not.le = icmp eq i32 %and1.i.i.i.i.i, 0
  %.mux.le = select i1 %tobool125.not.not.le, i32 -11, i32 -512
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit.split.loop.exit, %if.end119.for.end_crit_edge, %userfaultfd_event_complete.exit, %userfaultfd_ctx_get.exit, %list_del.exit
  %fork_nctx.0 = phi ptr [ null, %list_del.exit ], [ %61, %userfaultfd_ctx_get.exit ], [ null, %userfaultfd_event_complete.exit ], [ null, %for.end.loopexit.split.loop.exit ], [ null, %if.end119.for.end_crit_edge ]
  %tobool210.not = phi i1 [ true, %list_del.exit ], [ true, %userfaultfd_ctx_get.exit ], [ true, %userfaultfd_event_complete.exit ], [ false, %for.end.loopexit.split.loop.exit ], [ false, %if.end119.for.end_crit_edge ]
  %ret.0 = phi i32 [ 0, %list_del.exit ], [ 0, %userfaultfd_ctx_get.exit ], [ 0, %userfaultfd_event_complete.exit ], [ %.mux.le, %for.end.loopexit.split.loop.exit ], [ -512, %if.end119.for.end_crit_edge ]
  %call.i.i.i327 = call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #11
  br i1 %call.i.i.i327, label %if.end.i.i.i329, label %for.end.__remove_wait_queue.exit_crit_edge

for.end.__remove_wait_queue.exit_crit_edge:       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %__remove_wait_queue.exit

if.end.i.i.i329:                                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %95 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %3, align 4
  %97 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %2, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %98, i32 0, i32 1
  %99 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %96, ptr %prev1.i.i.i.i, align 4
  %100 = ptrtoint ptr %96 to i32
  call void @__asan_store4_noabort(i32 %100)
  store volatile ptr %98, ptr %96, align 4
  br label %__remove_wait_queue.exit

__remove_wait_queue.exit:                         ; preds = %if.end.i.i.i329, %for.end.__remove_wait_queue.exit_crit_edge
  %101 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr inttoptr (i32 256 to ptr), ptr %2, align 4
  %102 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr inttoptr (i32 290 to ptr), ptr %3, align 4
  br label %__here187

__here187:                                        ; preds = %__remove_wait_queue.exit
  %103 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %task, align 8
  %task_state_change191 = getelementptr inbounds %struct.task_struct, ptr %104, i32 0, i32 212
  %105 = ptrtoint ptr %task_state_change191 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 ptrtoint (ptr blockaddress(@userfaultfd_ctx_read, %__here187) to i32), ptr %task_state_change191, align 4
  %106 = load ptr, ptr %task, align 8
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_store4_noabort(i32 %107)
  store volatile i32 0, ptr %106, align 128
  call void @_raw_spin_unlock_irq(ptr noundef %fd_wqh) #11
  br i1 %tobool210.not, label %land.lhs.true, label %__here187.if.end245_crit_edge

__here187.if.end245_crit_edge:                    ; preds = %__here187
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end245

land.lhs.true:                                    ; preds = %__here187
  %108 = ptrtoint ptr %msg to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %msg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %109)
  %cmp213 = icmp eq i8 %109, 19
  br i1 %cmp213, label %if.then215, label %land.lhs.true.if.end245_crit_edge

land.lhs.true.if.end245_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end245

if.then215:                                       ; preds = %land.lhs.true
  %flags.i = getelementptr inbounds %struct.userfaultfd_ctx, ptr %fork_nctx.0, i32 0, i32 6
  %110 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %flags.i, align 4
  %and.i331 = and i32 %111, 526336
  %or.i = or i32 %and.i331, 2
  %call.i = call i32 @anon_inode_getfd_secure(ptr noundef nonnull @.str.17, ptr noundef nonnull @userfaultfd_fops, ptr noundef %fork_nctx.0, i32 noundef %or.i, ptr noundef %inode) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then215.resolve_userfault_fork.exit_crit_edge, label %if.end.i332

if.then215.resolve_userfault_fork.exit_crit_edge: ; preds = %if.then215
  call void @__sanitizer_cov_trace_pc() #13
  br label %resolve_userfault_fork.exit

if.end.i332:                                      ; preds = %if.then215
  call void @__sanitizer_cov_trace_pc() #13
  %arg.i = getelementptr inbounds %struct.uffd_msg, ptr %msg, i32 0, i32 4
  %112 = ptrtoint ptr %arg.i to i32
  call void @__asan_storeN_noabort(i32 %112, i32 8)
  store i64 0, ptr %arg.i, align 1
  store i32 %call.i, ptr %arg.i, align 1
  br label %resolve_userfault_fork.exit

resolve_userfault_fork.exit:                      ; preds = %if.end.i332, %if.then215.resolve_userfault_fork.exit_crit_edge
  %retval.0.i333 = phi i32 [ 0, %if.end.i332 ], [ %call.i, %if.then215.resolve_userfault_fork.exit_crit_edge ]
  call void @_raw_spin_lock_irq(ptr noundef %event_wqh) #11
  %113 = ptrtoint ptr %fork_event to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load volatile ptr, ptr %fork_event, align 4
  %cmp.i334.not = icmp eq ptr %114, %fork_event
  br i1 %cmp.i334.not, label %if.else, label %if.then221

if.then221:                                       ; preds = %resolve_userfault_fork.exit
  call fastcc void @userfaultfd_ctx_put(ptr noundef %fork_nctx.0)
  %115 = ptrtoint ptr %fork_event to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %fork_event, align 4
  %call.i.i335 = call zeroext i1 @__list_del_entry_valid(ptr noundef %116) #11
  br i1 %call.i.i335, label %if.end.i.i338, label %if.then221.list_del.exit341_crit_edge

if.then221.list_del.exit341_crit_edge:            ; preds = %if.then221
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit341

if.end.i.i338:                                    ; preds = %if.then221
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i336 = getelementptr inbounds %struct.list_head, ptr %116, i32 0, i32 1
  %117 = ptrtoint ptr %prev.i.i336 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %prev.i.i336, align 4
  %119 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %116, align 4
  %prev1.i.i.i337 = getelementptr inbounds %struct.list_head, ptr %120, i32 0, i32 1
  %121 = ptrtoint ptr %prev1.i.i.i337 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %118, ptr %prev1.i.i.i337, align 4
  %122 = ptrtoint ptr %118 to i32
  call void @__asan_store4_noabort(i32 %122)
  store volatile ptr %120, ptr %118, align 4
  br label %list_del.exit341

list_del.exit341:                                 ; preds = %if.end.i.i338, %if.then221.list_del.exit341_crit_edge
  %123 = ptrtoint ptr %116 to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr inttoptr (i32 256 to ptr), ptr %116, align 4
  %prev.i339 = getelementptr %struct.list_head, ptr %116, i32 0, i32 1
  %124 = ptrtoint ptr %prev.i339 to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i339, align 4
  br label %for.cond.i346

for.cond.i346:                                    ; preds = %for.body.i350.for.cond.i346_crit_edge, %list_del.exit341
  %head.0.i343 = phi ptr [ %head.i.i.i312, %list_del.exit341 ], [ %.pn.i344, %for.body.i350.for.cond.i346_crit_edge ]
  %125 = ptrtoint ptr %head.0.i343 to i32
  call void @__asan_load4_noabort(i32 %125)
  %.pn.i344 = load ptr, ptr %head.0.i343, align 4
  %cmp.not.i345 = icmp eq ptr %.pn.i344, %head.i.i.i312
  br i1 %cmp.not.i345, label %for.cond.i346.for.end.i354_crit_edge, label %for.body.i350

for.cond.i346.for.end.i354_crit_edge:             ; preds = %for.cond.i346
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i354

for.body.i350:                                    ; preds = %for.cond.i346
  %wq.0.i347 = getelementptr i8, ptr %.pn.i344, i32 -12
  %126 = ptrtoint ptr %wq.0.i347 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %wq.0.i347, align 4
  %and.i348 = and i32 %127, 32
  %tobool.not.i349 = icmp eq i32 %and.i348, 0
  br i1 %tobool.not.i349, label %for.body.i350.for.end.i354_crit_edge, label %for.body.i350.for.cond.i346_crit_edge

for.body.i350.for.cond.i346_crit_edge:            ; preds = %for.body.i350
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i346

for.body.i350.for.end.i354_crit_edge:             ; preds = %for.body.i350
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i354

for.end.i354:                                     ; preds = %for.body.i350.for.end.i354_crit_edge, %for.cond.i346.for.end.i354_crit_edge
  %.pn.lcssa.i351 = phi ptr [ %.pn.i344, %for.body.i350.for.end.i354_crit_edge ], [ %head.i.i.i312, %for.cond.i346.for.end.i354_crit_edge ]
  %call.i.i.i353 = call zeroext i1 @__list_add_valid(ptr noundef %116, ptr noundef %head.0.i343, ptr noundef %.pn.lcssa.i351) #11
  br i1 %call.i.i.i353, label %if.end.i.i.i357, label %for.end.i354.__add_wait_queue.exit358_crit_edge

for.end.i354.__add_wait_queue.exit358_crit_edge:  ; preds = %for.end.i354
  call void @__sanitizer_cov_trace_pc() #13
  br label %__add_wait_queue.exit358

if.end.i.i.i357:                                  ; preds = %for.end.i354
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i.i355 = getelementptr inbounds %struct.list_head, ptr %.pn.lcssa.i351, i32 0, i32 1
  %128 = ptrtoint ptr %prev1.i.i.i355 to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %116, ptr %prev1.i.i.i355, align 4
  %129 = ptrtoint ptr %116 to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %.pn.lcssa.i351, ptr %116, align 4
  %130 = ptrtoint ptr %prev.i339 to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %head.0.i343, ptr %prev.i339, align 4
  %131 = ptrtoint ptr %head.0.i343 to i32
  call void @__asan_store4_noabort(i32 %131)
  store volatile ptr %116, ptr %head.0.i343, align 4
  br label %__add_wait_queue.exit358

__add_wait_queue.exit358:                         ; preds = %if.end.i.i.i357, %for.end.i354.__add_wait_queue.exit358_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i333)
  %tobool228.not = icmp eq i32 %retval.0.i333, 0
  br i1 %tobool228.not, label %if.then237, label %__add_wait_queue.exit358.if.end242_crit_edge, !prof !96

__add_wait_queue.exit358.if.end242_crit_edge:     ; preds = %__add_wait_queue.exit358
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end242

if.then237:                                       ; preds = %__add_wait_queue.exit358
  %add.ptr = getelementptr i8, ptr %116, i32 -44
  %132 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 0, ptr %add.ptr, align 4
  call void @__wake_up_locked(ptr noundef %event_wqh, i32 noundef 3, i32 noundef 1) #11
  %call.i.i.i.i361 = call zeroext i1 @__list_del_entry_valid(ptr noundef %116) #11
  br i1 %call.i.i.i.i361, label %if.end.i.i.i.i364, label %if.then237.userfaultfd_event_complete.exit366_crit_edge

if.then237.userfaultfd_event_complete.exit366_crit_edge: ; preds = %if.then237
  call void @__sanitizer_cov_trace_pc() #13
  br label %userfaultfd_event_complete.exit366

if.end.i.i.i.i364:                                ; preds = %if.then237
  call void @__sanitizer_cov_trace_pc() #13
  %133 = ptrtoint ptr %prev.i339 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %prev.i339, align 4
  %135 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %116, align 4
  %prev1.i.i.i.i.i363 = getelementptr inbounds %struct.list_head, ptr %136, i32 0, i32 1
  %137 = ptrtoint ptr %prev1.i.i.i.i.i363 to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %134, ptr %prev1.i.i.i.i.i363, align 4
  %138 = ptrtoint ptr %134 to i32
  call void @__asan_store4_noabort(i32 %138)
  store volatile ptr %136, ptr %134, align 4
  br label %userfaultfd_event_complete.exit366

userfaultfd_event_complete.exit366:               ; preds = %if.end.i.i.i.i364, %if.then237.userfaultfd_event_complete.exit366_crit_edge
  %139 = ptrtoint ptr %116 to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr inttoptr (i32 256 to ptr), ptr %116, align 4
  %140 = ptrtoint ptr %prev.i339 to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i339, align 4
  br label %if.end242

if.else:                                          ; preds = %resolve_userfault_fork.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i333)
  %tobool239.not = icmp eq i32 %retval.0.i333, 0
  br i1 %tobool239.not, label %if.else.if.end242_crit_edge, label %if.then240

if.else.if.end242_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end242

if.then240:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @userfaultfd_ctx_put(ptr noundef %fork_nctx.0)
  br label %if.end242

if.end242:                                        ; preds = %if.then240, %if.else.if.end242_crit_edge, %userfaultfd_event_complete.exit366, %__add_wait_queue.exit358.if.end242_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef %event_wqh) #11
  br label %if.end245

if.end245:                                        ; preds = %if.end242, %land.lhs.true.if.end245_crit_edge, %__here187.if.end245_crit_edge
  %ret.1 = phi i32 [ %ret.0, %__here187.if.end245_crit_edge ], [ %retval.0.i333, %if.end242 ], [ 0, %land.lhs.true.if.end245_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %fork_event) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #11
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up_locked(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @userfaultfd_unregister(ptr nocapture noundef readonly %ctx, i32 noundef %arg) unnamed_addr #0 align 64 {
entry:
  %prev = alloca ptr, align 4
  %uffdio_unregister = alloca %struct.uffdio_range, align 8
  %range = alloca %struct.userfaultfd_wake_range, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mm1 = getelementptr inbounds %struct.userfaultfd_ctx, ptr %ctx, i32 0, i32 10
  %0 = ptrtoint ptr %mm1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mm1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prev) #11
  %2 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %prev, align 4, !annotation !142
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %uffdio_unregister) #11
  %3 = getelementptr inbounds %struct.uffdio_range, ptr %uffdio_unregister, i32 0, i32 1
  %4 = inttoptr i32 %arg to ptr
  %5 = call ptr @memset(ptr %uffdio_unregister, i32 255, i32 16)
  tail call void @__might_fault(ptr noundef nonnull @.str.22, i32 noundef 156) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %6 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %4, i32 16, i32 -1226833920) #16, !srcloc !143
  %asmresult.i.i = extractvalue { i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !96

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %uffdio_unregister, i32 noundef 16) #11
  %7 = call i32 @llvm.read_register.i32(metadata !84) #11
  %and.i.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 4
  %9 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #5, !srcloc !136
  %and.i.i.i.i = and i32 %9, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !137
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !138
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %uffdio_unregister, ptr noundef %4, i32 noundef 16) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %9) #11, !srcloc !137
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !138
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !96

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.0.i.i315 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 16, %entry.if.then11.i.i_crit_edge ], [ 16, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 16, %res.0.i.i315
  %add.ptr.i.i = getelementptr i8, ptr %uffdio_unregister, i32 %sub.i.i
  %10 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i315)
  br label %cleanup205

if.end:                                           ; preds = %if.end.i.i
  %11 = ptrtoint ptr %uffdio_unregister to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %uffdio_unregister, align 8
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %3, align 8
  %15 = or i64 %14, %12
  %16 = and i64 %15, 4095
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %16)
  %17 = icmp ne i64 %16, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %14)
  %tobool6.not.i = icmp eq i64 %14, 0
  %or.cond27.i = or i1 %tobool6.not.i, %17
  br i1 %or.cond27.i, label %if.end.cleanup205_crit_edge, label %if.end8.i

if.end.cleanup205_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup205

if.end8.i:                                        ; preds = %if.end
  %task_size1.i = getelementptr inbounds %struct.anon.0, ptr %1, i32 0, i32 6
  %18 = ptrtoint ptr %task_size1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %task_size1.i, align 4
  %conv.i = zext i32 %19 to i64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmap_min_addr to i32))
  %20 = load i32, ptr @mmap_min_addr, align 4
  %conv9.i = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %12, i64 %conv9.i)
  %cmp.i = icmp ult i64 %12, %conv9.i
  call void @__sanitizer_cov_trace_cmp8(i64 %12, i64 %conv.i)
  %cmp13.not.i = icmp uge i64 %12, %conv.i
  %or.cond28.i = select i1 %cmp.i, i1 true, i1 %cmp13.not.i
  %sub.i = sub i64 %conv.i, %12
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i, i64 %14)
  %cmp17.i = icmp ult i64 %sub.i, %14
  %or.cond = select i1 %or.cond28.i, i1 true, i1 %cmp17.i
  br i1 %or.cond, label %if.end8.i.cleanup205_crit_edge, label %if.end6

if.end8.i.cleanup205_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup205

if.end6:                                          ; preds = %if.end8.i
  %conv = trunc i64 %12 to i32
  %add = add i64 %14, %12
  %conv10 = trunc i64 %add to i32
  %mm_users.i = getelementptr inbounds %struct.anon.0, ptr %1, i32 0, i32 10
  %call.i.i.i291 = call zeroext i1 @__kasan_check_write(ptr noundef %mm_users.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !144
  call void @llvm.prefetch.p0(ptr %mm_users.i, i32 1, i32 3, i32 1) #11
  %21 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %mm_users.i, ptr %mm_users.i, i32 0, i32 1, ptr elementtype(i32) %mm_users.i) #11, !srcloc !145
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.end6.cleanup205_crit_edge, label %if.end13

if.end6.cleanup205_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup205

if.end13:                                         ; preds = %if.end6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !146
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@userfaultfd_unregister, %if.then.i.i292)) #11
          to label %__mmap_lock_trace_start_locking.exit.i [label %if.then.i.i292], !srcloc !113

if.then.i.i292:                                   ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  call void @__mmap_lock_do_trace_start_locking(ptr noundef %1, i1 noundef zeroext true) #11
  br label %__mmap_lock_trace_start_locking.exit.i

__mmap_lock_trace_start_locking.exit.i:           ; preds = %if.then.i.i292, %if.end13
  %mmap_lock.i = getelementptr inbounds %struct.anon.0, ptr %1, i32 0, i32 15
  call void @down_write(ptr noundef %mmap_lock.i) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@userfaultfd_unregister, %if.then.i3.i)) #11
          to label %mmap_write_lock.exit [label %if.then.i3.i], !srcloc !113

if.then.i3.i:                                     ; preds = %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %1, i1 noundef zeroext true, i1 noundef zeroext true) #11
  br label %mmap_write_lock.exit

mmap_write_lock.exit:                             ; preds = %if.then.i3.i, %__mmap_lock_trace_start_locking.exit.i
  %call14 = call ptr @find_vma_prev(ptr noundef %1, i32 noundef %conv, ptr noundef nonnull %prev) #11
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %mmap_write_lock.exit.out_unlock_crit_edge, label %if.end17

mmap_write_lock.exit.out_unlock_crit_edge:        ; preds = %mmap_write_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

if.end17:                                         ; preds = %mmap_write_lock.exit
  %22 = ptrtoint ptr %call14 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %call14, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %conv10)
  %cmp.not = icmp ult i32 %23, %conv10
  br i1 %cmp.not, label %land.rhs.preheader, label %if.end17.out_unlock_crit_edge

if.end17.out_unlock_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

land.rhs.preheader:                               ; preds = %if.end17
  %24 = ptrtoint ptr %call14 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %call14, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %conv10)
  %cmp30351 = icmp ult i32 %25, %conv10
  br i1 %cmp30351, label %land.rhs.preheader.for.body_crit_edge, label %land.rhs.preheader.do.body71_crit_edge

land.rhs.preheader.do.body71_crit_edge:           ; preds = %land.rhs.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body71

land.rhs.preheader.for.body_crit_edge:            ; preds = %land.rhs.preheader
  br label %for.body

land.rhs:                                         ; preds = %if.end59
  %26 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %35, align 4
  %cmp30 = icmp ult i32 %27, %conv10
  br i1 %cmp30, label %land.rhs.for.body_crit_edge, label %do.body60

land.rhs.for.body_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body:                                         ; preds = %land.rhs.for.body_crit_edge, %land.rhs.preheader.for.body_crit_edge
  %cur.0333352 = phi ptr [ %35, %land.rhs.for.body_crit_edge ], [ %call14, %land.rhs.preheader.for.body_crit_edge ]
  call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 1560, i32 noundef 0) #11
  %call.i = call i32 @__cond_resched() #11
  %vm_userfaultfd_ctx = getelementptr inbounds %struct.vm_area_struct, ptr %cur.0333352, i32 0, i32 17
  %28 = ptrtoint ptr %vm_userfaultfd_ctx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %vm_userfaultfd_ctx, align 4
  %tobool34 = icmp ne ptr %29, null
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %cur.0333352, i32 0, i32 8
  %30 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %vm_flags, align 4
  %and36 = and i32 %31, 4608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37 = icmp ne i32 %and36, 0
  %xor286 = xor i1 %tobool34, %tobool37
  br i1 %xor286, label %do.body49, label %do.end55, !prof !94

do.body49:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/userfaultfd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1563, 0\0A.popsection", ""() #11, !srcloc !171
  unreachable

do.end55:                                         ; preds = %for.body
  %and.i293 = and i32 %31, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i293)
  %tobool.not.i294 = icmp eq i32 %and.i293, 0
  br i1 %tobool.not.i294, label %do.end55.if.end12.i_crit_edge, label %if.then.i295

do.end55.if.end12.i_crit_edge:                    ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.i

if.then.i295:                                     ; preds = %do.end55
  %call1.i = call zeroext i1 @vma_is_shmem(ptr noundef nonnull %cur.0333352) #11
  br i1 %call1.i, label %if.then.i295.out_unlock_crit_edge, label %if.then.i295.if.end12.i_crit_edge

if.then.i295.if.end12.i_crit_edge:                ; preds = %if.then.i295
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.i

if.then.i295.out_unlock_crit_edge:                ; preds = %if.then.i295
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

if.end12.i:                                       ; preds = %if.then.i295.if.end12.i_crit_edge, %do.end55.if.end12.i_crit_edge
  %vm_ops.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %cur.0333352, i32 0, i32 12
  %32 = ptrtoint ptr %vm_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %vm_ops.i.i, align 4
  %tobool.not.i.i296 = icmp eq ptr %33, null
  br i1 %tobool.not.i.i296, label %if.end12.i.if.end59_crit_edge, label %vma_can_userfault.exit

if.end12.i.if.end59_crit_edge:                    ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59

vma_can_userfault.exit:                           ; preds = %if.end12.i
  %call16.i = call zeroext i1 @vma_is_shmem(ptr noundef nonnull %cur.0333352) #11
  br i1 %call16.i, label %vma_can_userfault.exit.if.end59_crit_edge, label %vma_can_userfault.exit.out_unlock_crit_edge

vma_can_userfault.exit.out_unlock_crit_edge:      ; preds = %vma_can_userfault.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

vma_can_userfault.exit.if.end59_crit_edge:        ; preds = %vma_can_userfault.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59

if.end59:                                         ; preds = %vma_can_userfault.exit.if.end59_crit_edge, %if.end12.i.if.end59_crit_edge
  %vm_next = getelementptr inbounds %struct.vm_area_struct, ptr %cur.0333352, i32 0, i32 2
  %34 = ptrtoint ptr %vm_next to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %vm_next, align 4
  %tobool28.not = icmp eq ptr %35, null
  br i1 %tobool28.not, label %if.end59.do.end79_crit_edge, label %land.rhs

if.end59.do.end79_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end79

do.body60:                                        ; preds = %land.rhs
  br i1 %cmp30351, label %do.body60.do.end79_crit_edge, label %do.body60.do.body71_crit_edge, !prof !96

do.body60.do.body71_crit_edge:                    ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body71

do.body60.do.end79_crit_edge:                     ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end79

do.body71:                                        ; preds = %do.body60.do.body71_crit_edge, %land.rhs.preheader.do.body71_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/userfaultfd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1577, 0\0A.popsection", ""() #11, !srcloc !172
  unreachable

do.end79:                                         ; preds = %do.body60.do.end79_crit_edge, %if.end59.do.end79_crit_edge
  %36 = ptrtoint ptr %call14 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %call14, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %conv)
  %cmp81 = icmp ult i32 %37, %conv
  br i1 %cmp81, label %if.then83, label %do.end79.if.end84_crit_edge

do.end79.if.end84_crit_edge:                      ; preds = %do.end79
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end84

if.then83:                                        ; preds = %do.end79
  call void @__sanitizer_cov_trace_pc() #13
  %38 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call14, ptr %prev, align 4
  br label %if.end84

if.end84:                                         ; preds = %if.then83, %do.end79.if.end84_crit_edge
  %39 = getelementptr inbounds %struct.userfaultfd_wake_range, ptr %range, i32 0, i32 1
  br label %do.body85

do.body85:                                        ; preds = %land.rhs199.do.body85_crit_edge, %if.end84
  %start.0 = phi i32 [ %conv, %if.end84 ], [ %102, %land.rhs199.do.body85_crit_edge ]
  %vma.0 = phi ptr [ %call14, %if.end84 ], [ %100, %land.rhs199.do.body85_crit_edge ]
  call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 1584, i32 noundef 0) #11
  %call.i298 = call i32 @__cond_resched() #11
  %vm_flags89 = getelementptr inbounds %struct.vm_area_struct, ptr %vma.0, i32 0, i32 8
  %40 = ptrtoint ptr %vm_flags89 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %vm_flags89, align 4
  %and.i299 = and i32 %41, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i299)
  %tobool.not.i300 = icmp eq i32 %and.i299, 0
  br i1 %tobool.not.i300, label %do.body85.if.end12.i305_crit_edge, label %if.then.i302

do.body85.if.end12.i305_crit_edge:                ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.i305

if.then.i302:                                     ; preds = %do.body85
  %call1.i301 = call zeroext i1 @vma_is_shmem(ptr noundef nonnull %vma.0) #11
  br i1 %call1.i301, label %if.then.i302.do.body100_crit_edge, label %if.then.i302.if.end12.i305_crit_edge, !prof !173

if.then.i302.if.end12.i305_crit_edge:             ; preds = %if.then.i302
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.i305

if.then.i302.do.body100_crit_edge:                ; preds = %if.then.i302
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body100

if.end12.i305:                                    ; preds = %if.then.i302.if.end12.i305_crit_edge, %do.body85.if.end12.i305_crit_edge
  %vm_ops.i.i303 = getelementptr inbounds %struct.vm_area_struct, ptr %vma.0, i32 0, i32 12
  %42 = ptrtoint ptr %vm_ops.i.i303 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %vm_ops.i.i303, align 4
  %tobool.not.i.i304 = icmp eq ptr %43, null
  br i1 %tobool.not.i.i304, label %if.end12.i305.do.end108_crit_edge, label %vma_can_userfault.exit309

if.end12.i305.do.end108_crit_edge:                ; preds = %if.end12.i305
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end108

vma_can_userfault.exit309:                        ; preds = %if.end12.i305
  %call16.i306 = call zeroext i1 @vma_is_shmem(ptr noundef nonnull %vma.0) #11
  br i1 %call16.i306, label %vma_can_userfault.exit309.do.end108_crit_edge, label %vma_can_userfault.exit309.do.body100_crit_edge, !prof !96

vma_can_userfault.exit309.do.body100_crit_edge:   ; preds = %vma_can_userfault.exit309
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body100

vma_can_userfault.exit309.do.end108_crit_edge:    ; preds = %vma_can_userfault.exit309
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end108

do.body100:                                       ; preds = %vma_can_userfault.exit309.do.body100_crit_edge, %if.then.i302.do.body100_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/userfaultfd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1586, 0\0A.popsection", ""() #11, !srcloc !174
  unreachable

do.end108:                                        ; preds = %vma_can_userfault.exit309.do.end108_crit_edge, %if.end12.i305.do.end108_crit_edge
  %vm_userfaultfd_ctx109 = getelementptr inbounds %struct.vm_area_struct, ptr %vma.0, i32 0, i32 17
  %44 = ptrtoint ptr %vm_userfaultfd_ctx109 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %vm_userfaultfd_ctx109, align 4
  %tobool111.not = icmp eq ptr %45, null
  br i1 %tobool111.not, label %do.end108.skip_crit_edge, label %if.end113

do.end108.skip_crit_edge:                         ; preds = %do.end108
  call void @__sanitizer_cov_trace_pc() #13
  br label %skip

if.end113:                                        ; preds = %do.end108
  %46 = ptrtoint ptr %vm_flags89 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %vm_flags89, align 4
  %and115 = and i32 %47, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and115)
  %tobool116.not = icmp eq i32 %and115, 0
  br i1 %tobool116.not, label %do.end134, label %if.end113.if.end140_crit_edge, !prof !94

if.end113.if.end140_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end140

do.end134:                                        ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1595, i32 noundef 9, ptr noundef null) #11
  br label %if.end140

if.end140:                                        ; preds = %do.end134, %if.end113.if.end140_crit_edge
  %48 = ptrtoint ptr %vma.0 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %vma.0, align 4
  %50 = call i32 @llvm.umax.i32(i32 %49, i32 %start.0)
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %vma.0, i32 0, i32 1
  %51 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %vm_end, align 4
  %53 = call i32 @llvm.umin.i32(i32 %52, i32 %conv10)
  %54 = ptrtoint ptr %vm_flags89 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %vm_flags89, align 4
  %and.i310 = and i32 %55, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i310)
  %tobool.i.not = icmp eq i32 %and.i310, 0
  br i1 %tobool.i.not, label %if.end140.if.end164_crit_edge, label %if.then158

if.end140.if.end164_crit_edge:                    ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end164

if.then158:                                       ; preds = %if.end140
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %range) #11
  %56 = ptrtoint ptr %range to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %50, ptr %range, align 4
  %sub160 = sub i32 %53, %50
  %57 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %sub160, ptr %39, align 4
  %58 = ptrtoint ptr %vm_userfaultfd_ctx109 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %vm_userfaultfd_ctx109, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !153
  %refile_seq.i = getelementptr inbounds %struct.userfaultfd_ctx, ptr %59, i32 0, i32 4
  %dep_map.c48.i.i = getelementptr inbounds %struct.userfaultfd_ctx, ptr %59, i32 0, i32 4, i32 0, i32 1
  %head.i.i = getelementptr inbounds %struct.wait_queue_head, ptr %59, i32 0, i32 1
  %head.i42.i = getelementptr inbounds %struct.userfaultfd_ctx, ptr %59, i32 0, i32 1, i32 1
  br label %do.body4.i

do.body4.i:                                       ; preds = %lor.end.i.do.body4.i_crit_edge, %if.then158
  %60 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !154
  %and.i.i.i = and i32 %60, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i287, label %do.body24.critedge.i.i

if.then.i.i287:                                   ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @trace_hardirqs_off() #11
  %61 = call ptr @llvm.returnaddress(i32 0) #11
  %62 = ptrtoint ptr %61 to i32
  call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %62) #11
  call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %62) #11
  call void @trace_hardirqs_on() #11
  br label %do.body24.i.i

do.body24.critedge.i.i:                           ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #13
  %63 = call ptr @llvm.returnaddress(i32 0) #11
  %64 = ptrtoint ptr %63 to i32
  call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %64) #11
  call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %64) #11
  br label %do.body24.i.i

do.body24.i.i:                                    ; preds = %do.body24.critedge.i.i, %if.then.i.i287
  %65 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !155
  %and.i.i.i.i288 = and i32 %65, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i288)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i288, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge, !prof !94

do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge: ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %seqcount_lockdep_reader_access.exit.i

if.then36.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @warn_bogus_irq_restore() #11
  br label %seqcount_lockdep_reader_access.exit.i

seqcount_lockdep_reader_access.exit.i:            ; preds = %if.then36.i.i, %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %60) #11, !srcloc !156
  %66 = ptrtoint ptr %refile_seq.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %refile_seq.i, align 4
  %and48.i = and i32 %67, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48.i)
  %tobool.not49.i = icmp eq i32 %and48.i, 0
  br i1 %tobool.not49.i, label %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge, label %seqcount_lockdep_reader_access.exit.i.do.end11.i_crit_edge

seqcount_lockdep_reader_access.exit.i.do.end11.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  br label %do.end11.i

seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

do.end11.i:                                       ; preds = %do.end11.i.do.end11.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.do.end11.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !157
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !158
  %68 = ptrtoint ptr %refile_seq.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %refile_seq.i, align 4
  %and.i = and i32 %69, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end11.i.while.end.i_crit_edge, label %do.end11.i.do.end11.i_crit_edge

do.end11.i.do.end11.i_crit_edge:                  ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end11.i

do.end11.i.while.end.i_crit_edge:                 ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

while.end.i:                                      ; preds = %do.end11.i.while.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge
  %.lcssa.i = phi i32 [ %67, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge ], [ %69, %do.end11.i.while.end.i_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !159
  %70 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile ptr, ptr %head.i.i, align 4
  %cmp.i.i.not.i = icmp eq ptr %71, %head.i.i
  br i1 %cmp.i.i.not.i, label %lor.rhs.i, label %while.end.i.lor.end.i_crit_edge

while.end.i.lor.end.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.end.i

lor.rhs.i:                                        ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %72 = ptrtoint ptr %head.i42.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile ptr, ptr %head.i42.i, align 4
  %cmp.i.i43.i = icmp ne ptr %73, %head.i42.i
  br label %lor.end.i

lor.end.i:                                        ; preds = %lor.rhs.i, %while.end.i.lor.end.i_crit_edge
  %74 = phi i1 [ true, %while.end.i.lor.end.i_crit_edge ], [ %cmp.i.i43.i, %lor.rhs.i ]
  call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 1229, i32 noundef 0) #11
  %call.i.i289 = call i32 @__cond_resched() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !160
  %75 = ptrtoint ptr %refile_seq.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %refile_seq.i, align 4
  %cmp.i.i45.not.i = icmp eq i32 %76, %.lcssa.i
  br i1 %cmp.i.i45.not.i, label %do.end35.i, label %lor.end.i.do.body4.i_crit_edge

lor.end.i.do.body4.i_crit_edge:                   ; preds = %lor.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body4.i

do.end35.i:                                       ; preds = %lor.end.i
  br i1 %74, label %if.then.i, label %do.end35.i.wake_userfault.exit_crit_edge

do.end35.i.wake_userfault.exit_crit_edge:         ; preds = %do.end35.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %wake_userfault.exit

if.then.i:                                        ; preds = %do.end35.i
  call void @_raw_spin_lock_irq(ptr noundef %59) #11
  %77 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile ptr, ptr %head.i.i, align 4
  %cmp.i.i.not.i.i = icmp eq ptr %78, %head.i.i
  br i1 %cmp.i.i.not.i.i, label %if.then.i.if.end.i.i290_crit_edge, label %if.then.i46.i

if.then.i.if.end.i.i290_crit_edge:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i290

if.then.i46.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__wake_up_locked_key(ptr noundef %59, i32 noundef 3, ptr noundef nonnull %range) #11
  br label %if.end.i.i290

if.end.i.i290:                                    ; preds = %if.then.i46.i, %if.then.i.if.end.i.i290_crit_edge
  %79 = ptrtoint ptr %head.i42.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile ptr, ptr %head.i42.i, align 4
  %cmp.i.i17.not.i.i = icmp eq ptr %80, %head.i42.i
  br i1 %cmp.i.i17.not.i.i, label %if.end.i.i290.__wake_userfault.exit.i_crit_edge, label %if.then5.i.i

if.end.i.i290.__wake_userfault.exit.i_crit_edge:  ; preds = %if.end.i.i290
  call void @__sanitizer_cov_trace_pc() #13
  br label %__wake_userfault.exit.i

if.then5.i.i:                                     ; preds = %if.end.i.i290
  call void @__sanitizer_cov_trace_pc() #13
  %fault_wqh.i.i = getelementptr inbounds %struct.userfaultfd_ctx, ptr %59, i32 0, i32 1
  call void @__wake_up(ptr noundef %fault_wqh.i.i, i32 noundef 3, i32 noundef 1, ptr noundef nonnull %range) #11
  br label %__wake_userfault.exit.i

__wake_userfault.exit.i:                          ; preds = %if.then5.i.i, %if.end.i.i290.__wake_userfault.exit.i_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef %59) #11
  br label %wake_userfault.exit

wake_userfault.exit:                              ; preds = %__wake_userfault.exit.i, %do.end35.i.wake_userfault.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %range) #11
  br label %if.end164

if.end164:                                        ; preds = %wake_userfault.exit, %if.end140.if.end164_crit_edge
  %81 = ptrtoint ptr %vm_flags89 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %vm_flags89, align 4
  %and166 = and i32 %82, -4609
  %83 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %prev, align 4
  %anon_vma = getelementptr inbounds %struct.vm_area_struct, ptr %vma.0, i32 0, i32 11
  %85 = ptrtoint ptr %anon_vma to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %anon_vma, align 4
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %vma.0, i32 0, i32 14
  %87 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %vm_file, align 4
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %vma.0, i32 0, i32 13
  %89 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %vm_pgoff, align 4
  %call168 = call ptr @anon_vma_name(ptr noundef nonnull %vma.0) #11
  %call169 = call ptr @vma_merge(ptr noundef %1, ptr noundef %84, i32 noundef %50, i32 noundef %53, i32 noundef %and166, ptr noundef %86, ptr noundef %88, i32 noundef %90, ptr noundef null, [1 x i32] zeroinitializer, ptr noundef %call168) #11
  %91 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %call169, ptr %prev, align 4
  %tobool170.not = icmp eq ptr %call169, null
  br i1 %tobool170.not, label %if.end172, label %if.end164.next_crit_edge

if.end164.next_crit_edge:                         ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #13
  br label %next

if.end172:                                        ; preds = %if.end164
  %92 = ptrtoint ptr %vma.0 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %vma.0, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %93, i32 %50)
  %cmp174 = icmp ult i32 %93, %50
  br i1 %cmp174, label %if.then176, label %if.end172.if.end181_crit_edge

if.end172.if.end181_crit_edge:                    ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end181

if.then176:                                       ; preds = %if.end172
  %call177 = call i32 @split_vma(ptr noundef %1, ptr noundef nonnull %vma.0, i32 noundef %50, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call177)
  %tobool178.not = icmp eq i32 %call177, 0
  br i1 %tobool178.not, label %if.then176.if.end181_crit_edge, label %if.then176.out_unlock_crit_edge

if.then176.out_unlock_crit_edge:                  ; preds = %if.then176
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

if.then176.if.end181_crit_edge:                   ; preds = %if.then176
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end181

if.end181:                                        ; preds = %if.then176.if.end181_crit_edge, %if.end172.if.end181_crit_edge
  %94 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %vm_end, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %95, i32 %conv10)
  %cmp183 = icmp ugt i32 %95, %conv10
  br i1 %cmp183, label %if.then185, label %if.end181.next_crit_edge

if.end181.next_crit_edge:                         ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #13
  br label %next

if.then185:                                       ; preds = %if.end181
  %call186 = call i32 @split_vma(ptr noundef %1, ptr noundef nonnull %vma.0, i32 noundef %conv10, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call186)
  %tobool187.not = icmp eq i32 %call186, 0
  br i1 %tobool187.not, label %if.then185.next_crit_edge, label %if.then185.out_unlock_crit_edge

if.then185.out_unlock_crit_edge:                  ; preds = %if.then185
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

if.then185.next_crit_edge:                        ; preds = %if.then185
  call void @__sanitizer_cov_trace_pc() #13
  br label %next

next:                                             ; preds = %if.then185.next_crit_edge, %if.end181.next_crit_edge, %if.end164.next_crit_edge
  %vma.1 = phi ptr [ %vma.0, %if.then185.next_crit_edge ], [ %vma.0, %if.end181.next_crit_edge ], [ %call169, %if.end164.next_crit_edge ]
  %vm_flags191 = getelementptr inbounds %struct.vm_area_struct, ptr %vma.1, i32 0, i32 8
  %96 = ptrtoint ptr %vm_flags191 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %and166, ptr %vm_flags191, align 4
  %vm_userfaultfd_ctx192 = getelementptr inbounds %struct.vm_area_struct, ptr %vma.1, i32 0, i32 17
  %97 = ptrtoint ptr %vm_userfaultfd_ctx192 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr null, ptr %vm_userfaultfd_ctx192, align 4
  br label %skip

skip:                                             ; preds = %next, %do.end108.skip_crit_edge
  %vma.2 = phi ptr [ %vma.1, %next ], [ %vma.0, %do.end108.skip_crit_edge ]
  %98 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %vma.2, ptr %prev, align 4
  %vm_next196 = getelementptr inbounds %struct.vm_area_struct, ptr %vma.2, i32 0, i32 2
  %99 = ptrtoint ptr %vm_next196 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %vm_next196, align 4
  %tobool198.not = icmp eq ptr %100, null
  br i1 %tobool198.not, label %skip.out_unlock_crit_edge, label %land.rhs199

skip.out_unlock_crit_edge:                        ; preds = %skip
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

land.rhs199:                                      ; preds = %skip
  %vm_end195 = getelementptr inbounds %struct.vm_area_struct, ptr %vma.2, i32 0, i32 1
  %101 = ptrtoint ptr %vm_end195 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %vm_end195, align 4
  %103 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %100, align 4
  %cmp201 = icmp ult i32 %104, %conv10
  br i1 %cmp201, label %land.rhs199.do.body85_crit_edge, label %land.rhs199.out_unlock_crit_edge

land.rhs199.out_unlock_crit_edge:                 ; preds = %land.rhs199
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

land.rhs199.do.body85_crit_edge:                  ; preds = %land.rhs199
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body85

out_unlock:                                       ; preds = %land.rhs199.out_unlock_crit_edge, %skip.out_unlock_crit_edge, %if.then185.out_unlock_crit_edge, %if.then176.out_unlock_crit_edge, %vma_can_userfault.exit.out_unlock_crit_edge, %if.then.i295.out_unlock_crit_edge, %if.end17.out_unlock_crit_edge, %mmap_write_lock.exit.out_unlock_crit_edge
  %ret.4 = phi i32 [ -22, %if.end17.out_unlock_crit_edge ], [ -12, %mmap_write_lock.exit.out_unlock_crit_edge ], [ %call186, %if.then185.out_unlock_crit_edge ], [ %call177, %if.then176.out_unlock_crit_edge ], [ 0, %skip.out_unlock_crit_edge ], [ 0, %land.rhs199.out_unlock_crit_edge ], [ -22, %vma_can_userfault.exit.out_unlock_crit_edge ], [ -22, %if.then.i295.out_unlock_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@userfaultfd_unregister, %if.then.i.i311)) #11
          to label %mmap_write_unlock.exit [label %if.then.i.i311], !srcloc !113

if.then.i.i311:                                   ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #13
  call void @__mmap_lock_do_trace_released(ptr noundef %1, i1 noundef zeroext true) #11
  br label %mmap_write_unlock.exit

mmap_write_unlock.exit:                           ; preds = %if.then.i.i311, %out_unlock
  call void @up_write(ptr noundef %mmap_lock.i) #11
  call void @mmput(ptr noundef %1) #11
  br label %cleanup205

cleanup205:                                       ; preds = %mmap_write_unlock.exit, %if.end6.cleanup205_crit_edge, %if.end8.i.cleanup205_crit_edge, %if.end.cleanup205_crit_edge, %if.then11.i.i
  %ret.5 = phi i32 [ %ret.4, %mmap_write_unlock.exit ], [ -12, %if.end6.cleanup205_crit_edge ], [ -14, %if.then11.i.i ], [ -22, %if.end.cleanup205_crit_edge ], [ -22, %if.end8.i.cleanup205_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %uffdio_unregister) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prev) #11
  ret i32 %ret.5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @mmget_not_zero(ptr noundef %mm) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %mm_users = getelementptr inbounds %struct.anon.0, ptr %mm, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %mm_users, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !144
  tail call void @llvm.prefetch.p0(ptr %mm_users, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %mm_users, ptr %mm_users, i32 0, i32 1, ptr elementtype(i32) %mm_users) #11, !srcloc !145
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %entry.atomic_inc_not_zero.exit_crit_edge, label %do.end11.i.i.i.i

entry.atomic_inc_not_zero.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %atomic_inc_not_zero.exit

do.end11.i.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !146
  br label %atomic_inc_not_zero.exit

atomic_inc_not_zero.exit:                         ; preds = %do.end11.i.i.i.i, %entry.atomic_inc_not_zero.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i.i.i = icmp ne i32 %asmresult.i.i.i.i, 0
  ret i1 %cmp.i.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_vma_prev(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vma_merge(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, [1 x i32], ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @anon_vma_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @split_vma(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmput(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @vma_is_shmem(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up_locked_key(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mcopy_atomic(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mfill_zeropage(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwriteprotect_range(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mcopy_continue(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @init_once_userfaultfd_ctx(ptr noundef %mem) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__init_waitqueue_head(ptr noundef %mem, ptr noundef nonnull @.str.25, ptr noundef nonnull @init_once_userfaultfd_ctx.__key) #11
  %fault_wqh = getelementptr inbounds %struct.userfaultfd_ctx, ptr %mem, i32 0, i32 1
  tail call void @__init_waitqueue_head(ptr noundef %fault_wqh, ptr noundef nonnull @.str.27, ptr noundef nonnull @init_once_userfaultfd_ctx.__key.26) #11
  %event_wqh = getelementptr inbounds %struct.userfaultfd_ctx, ptr %mem, i32 0, i32 3
  tail call void @__init_waitqueue_head(ptr noundef %event_wqh, ptr noundef nonnull @.str.29, ptr noundef nonnull @init_once_userfaultfd_ctx.__key.28) #11
  %fd_wqh = getelementptr inbounds %struct.userfaultfd_ctx, ptr %mem, i32 0, i32 2
  tail call void @__init_waitqueue_head(ptr noundef %fd_wqh, ptr noundef nonnull @.str.31, ptr noundef nonnull @init_once_userfaultfd_ctx.__key.30) #11
  %refile_seq = getelementptr inbounds %struct.userfaultfd_ctx, ptr %mem, i32 0, i32 4
  %dep_map.i = getelementptr inbounds %struct.userfaultfd_ctx, ptr %mem, i32 0, i32 4, i32 0, i32 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i, ptr noundef nonnull @.str.33, ptr noundef nonnull @init_once_userfaultfd_ctx.__key.32, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %0 = ptrtoint ptr %refile_seq to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %refile_seq, align 4
  %lock15 = getelementptr inbounds %struct.userfaultfd_ctx, ptr %mem, i32 0, i32 4, i32 1
  %1 = ptrtoint ptr %lock15 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %mem, ptr %lock15, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !10, !11, !13, !15, !17, !18, !19, !20, !21, !22, !23, !24, !25, !27, !29, !31, !33, !35, !37, !39, !40, !41, !42, !43, !45, !46, !47, !48, !50, !52, !54, !56, !58, !60, !61, !63, !65, !67, !69, !71, !72, !74, !75, !77, !78, !80, !81, !83}
!llvm.named.register.sp = !{!84}
!llvm.module.flags = !{!85, !86, !87, !88, !89, !90, !91, !92}
!llvm.ident = !{!93}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../fs/userfaultfd.c", i32 412, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @handle_userfault._entry, !1, !"_entry", i1 false, i1 false}
!6 = !{ptr @handle_userfault._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/userfaultfd.c", i32 463, i32 4}
!9 = !{ptr @handle_userfault._entry.3, !8, !"_entry", i1 false, i1 false}
!10 = !{ptr @handle_userfault._entry_ptr.5, !8, !"_entry_ptr", i1 false, i1 false}
!11 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!12 = !{!"../fs/userfaultfd.c", i32 503, i32 2}
!13 = distinct !{null, !14, !"__already_done", i1 false, i1 false}
!14 = !{!"../fs/userfaultfd.c", i32 520, i32 2}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/userfaultfd.c", i32 2064, i32 1}
!17 = !{ptr @event_enter__userfaultfd, !16, !"event_enter__userfaultfd", i1 false, i1 false}
!18 = !{ptr @__event_enter__userfaultfd, !16, !"__event_enter__userfaultfd", i1 false, i1 false}
!19 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @event_exit__userfaultfd, !16, !"event_exit__userfaultfd", i1 false, i1 false}
!21 = !{ptr @__event_exit__userfaultfd, !16, !"__event_exit__userfaultfd", i1 false, i1 false}
!22 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @__syscall_meta__userfaultfd, !16, !"__syscall_meta__userfaultfd", i1 false, i1 false}
!24 = !{ptr @__p_syscall_meta__userfaultfd, !16, !"__p_syscall_meta__userfaultfd", i1 false, i1 false}
!25 = !{ptr @__initcall__kmod_userfaultfd__330_2119_userfaultfd_init6, !26, !"__initcall__kmod_userfaultfd__330_2119_userfaultfd_init6", i1 false, i1 false}
!26 = !{!"../fs/userfaultfd.c", i32 2119, i32 1}
!27 = !{ptr @sysctl_unprivileged_userfaultfd, !28, !"sysctl_unprivileged_userfaultfd", i1 false, i1 false}
!28 = !{!"../fs/userfaultfd.c", i32 33, i32 5}
!29 = !{ptr @userfaultfd_ctx_cachep, !30, !"userfaultfd_ctx_cachep", i1 false, i1 false}
!30 = !{!"../fs/userfaultfd.c", i32 35, i32 27}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../include/linux/mmap_lock.h", i32 155, i32 2}
!33 = distinct !{null, !34, !"__already_done", i1 false, i1 false}
!34 = !{!"../fs/userfaultfd.c", i32 560, i32 6}
!35 = distinct !{null, !36, !"__already_done", i1 false, i1 false}
!36 = !{!"../fs/userfaultfd.c", i32 574, i32 3}
!37 = distinct !{null, !38, !"__already_done", i1 false, i1 false}
!38 = !{!"../fs/userfaultfd.c", i32 604, i32 2}
!39 = !{ptr @.str.14, !16, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @types__userfaultfd, !16, !"types__userfaultfd", i1 false, i1 false}
!41 = !{ptr @.str.15, !16, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @args__userfaultfd, !16, !"args__userfaultfd", i1 false, i1 false}
!43 = distinct !{null, !44, !"__already_done", i1 false, i1 false}
!44 = !{!"../fs/userfaultfd.c", i32 2072, i32 3}
!45 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @__do_sys_userfaultfd._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @__do_sys_userfaultfd._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/userfaultfd.c", i32 2101, i32 31}
!50 = !{ptr @userfaultfd_fops, !51, !"userfaultfd_fops", i1 false, i1 false}
!51 = !{!"../fs/userfaultfd.c", i32 2041, i32 37}
!52 = distinct !{null, !53, !"__already_done", i1 false, i1 false}
!53 = !{!"../fs/userfaultfd.c", i32 1015, i32 3}
!54 = distinct !{null, !55, !"__already_done", i1 false, i1 false}
!55 = !{!"../fs/userfaultfd.c", i32 1103, i32 2}
!56 = !{ptr @.str.19, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../include/linux/seqlock.h", i32 277, i32 1}
!58 = distinct !{null, !59, !"__already_done", i1 false, i1 false}
!59 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!60 = distinct !{null, !59, !"<string literal>", i1 false, i1 false}
!61 = distinct !{null, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!63 = !{ptr @.str.22, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!65 = !{ptr @.str.23, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../fs/userfaultfd.c", i32 2035, i32 16}
!67 = !{ptr @.str.24, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../fs/userfaultfd.c", i32 2112, i32 45}
!69 = !{ptr @init_once_userfaultfd_ctx.__key, !70, !"__key", i1 false, i1 false}
!70 = !{!"../fs/userfaultfd.c", i32 2057, i32 2}
!71 = !{ptr @.str.25, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @init_once_userfaultfd_ctx.__key.26, !73, !"__key", i1 false, i1 false}
!73 = !{!"../fs/userfaultfd.c", i32 2058, i32 2}
!74 = !{ptr @.str.27, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @init_once_userfaultfd_ctx.__key.28, !76, !"__key", i1 false, i1 false}
!76 = !{!"../fs/userfaultfd.c", i32 2059, i32 2}
!77 = !{ptr @.str.29, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @init_once_userfaultfd_ctx.__key.30, !79, !"__key", i1 false, i1 false}
!79 = !{!"../fs/userfaultfd.c", i32 2060, i32 2}
!80 = !{ptr @.str.31, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @init_once_userfaultfd_ctx.__key.32, !82, !"__key", i1 false, i1 false}
!82 = !{!"../fs/userfaultfd.c", i32 2061, i32 2}
!83 = !{ptr @.str.33, !82, !"<string literal>", i1 false, i1 false}
!84 = !{!"sp"}
!85 = !{i32 1, !"wchar_size", i32 2}
!86 = !{i32 1, !"min_enum_size", i32 4}
!87 = !{i32 8, !"branch-target-enforcement", i32 0}
!88 = !{i32 8, !"sign-return-address", i32 0}
!89 = !{i32 8, !"sign-return-address-all", i32 0}
!90 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!91 = !{i32 7, !"uwtable", i32 1}
!92 = !{i32 7, !"frame-pointer", i32 2}
!93 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!94 = !{!"branch_weights", i32 1, i32 2000}
!95 = !{i64 2152216783, i64 2152217273, i64 2152216820, i64 2152216876, i64 2152216910, i64 2152216934, i64 2152216975, i64 2152216996, i64 2152217024, i64 2152217058}
!96 = !{!"branch_weights", i32 2000, i32 1}
!97 = !{i64 2155751969, i64 2155752450, i64 2155752006, i64 2155752062, i64 2155752096, i64 2155752120, i64 2155752161, i64 2155752182, i64 2155752210, i64 2155752244}
!98 = !{i64 2155753771, i64 2155754252, i64 2155753808, i64 2155753864, i64 2155753898, i64 2155753922, i64 2155753963, i64 2155753984, i64 2155754012, i64 2155754046}
!99 = !{i32 0, i32 33}
!100 = !{!"branch_weights", i32 4000000, i32 4001}
!101 = !{i64 2155755434, i64 2155755915, i64 2155755471, i64 2155755527, i64 2155755561, i64 2155755585, i64 2155755626, i64 2155755647, i64 2155755675, i64 2155755709}
!102 = !{i8 0, i8 2}
!103 = !{i64 2155764087, i64 2155764568, i64 2155764124, i64 2155764180, i64 2155764214, i64 2155764238, i64 2155764279, i64 2155764300, i64 2155764328, i64 2155764362}
!104 = !{i64 2148365790, i64 2148365822, i64 2148365851, i64 2148365885, i64 2148365916, i64 2148365939}
!105 = !{!106}
!106 = distinct !{!106, !107, !"userfault_msg: %agg.result"}
!107 = distinct !{!107, !"userfault_msg"}
!108 = !{i64 2155771684}
!109 = !{i64 2154314911}
!110 = !{i64 2150620503}
!111 = !{i64 2150620710}
!112 = !{i64 2154317682}
!113 = !{i64 2148846135, i64 2148846140, i64 2148846153, i64 2148846197, i64 2148846231, i64 2148846252}
!114 = !{i64 2148143420}
!115 = !{i64 2148453815}
!116 = !{i64 2148368255, i64 2148368287, i64 2148368316, i64 2148368350, i64 2148368381, i64 2148368404}
!117 = !{i64 2149687954}
!118 = !{i64 2155727227, i64 2155727708, i64 2155727264, i64 2155727320, i64 2155727354, i64 2155727378, i64 2155727419, i64 2155727440, i64 2155727468, i64 2155727502}
!119 = !{i64 2155728911, i64 2155729392, i64 2155728948, i64 2155729004, i64 2155729038, i64 2155729062, i64 2155729103, i64 2155729124, i64 2155729152, i64 2155729186}
!120 = !{i64 2155730580, i64 2155731061, i64 2155730617, i64 2155730673, i64 2155730707, i64 2155730731, i64 2155730772, i64 2155730793, i64 2155730821, i64 2155730855}
!121 = !{i64 2155732240, i64 2155732721, i64 2155732277, i64 2155732333, i64 2155732367, i64 2155732391, i64 2155732432, i64 2155732453, i64 2155732481, i64 2155732515}
!122 = !{i64 2155733909, i64 2155734390, i64 2155733946, i64 2155734002, i64 2155734036, i64 2155734060, i64 2155734101, i64 2155734122, i64 2155734150, i64 2155734184}
!123 = !{i64 2155739630, i64 2155740111, i64 2155739667, i64 2155739723, i64 2155739757, i64 2155739781, i64 2155739822, i64 2155739843, i64 2155739871, i64 2155739905}
!124 = !{i64 2155741290, i64 2155741771, i64 2155741327, i64 2155741383, i64 2155741417, i64 2155741441, i64 2155741482, i64 2155741503, i64 2155741531, i64 2155741565}
!125 = !{i64 2155742941, i64 2155743422, i64 2155742978, i64 2155743034, i64 2155743068, i64 2155743092, i64 2155743133, i64 2155743154, i64 2155743182, i64 2155743216}
!126 = !{i64 2148452736}
!127 = !{i64 2148367445, i64 2148367477, i64 2148367506, i64 2148367540, i64 2148367571, i64 2148367594}
!128 = !{i64 2148452965}
!129 = !{i64 2148364260, i64 2148364286, i64 2148364315, i64 2148364349, i64 2148364380, i64 2148364403}
!130 = !{i64 2155786287}
!131 = !{i64 2148366725, i64 2148366751, i64 2148366780, i64 2148366814, i64 2148366845, i64 2148366868}
!132 = !{i64 2155794395, i64 2155794876, i64 2155794432, i64 2155794488, i64 2155794522, i64 2155794546, i64 2155794587, i64 2155794608, i64 2155794636, i64 2155794670}
!133 = !{i64 2155966275, i64 2155966757, i64 2155966312, i64 2155966368, i64 2155966402, i64 2155966426, i64 2155966467, i64 2155966488, i64 2155966516, i64 2155966550}
!134 = !{i64 2150618367, i64 2150618392}
!135 = !{i64 2155825169}
!136 = !{i64 3113241}
!137 = !{i64 3113438}
!138 = !{i64 2150598671}
!139 = !{i64 2155938279}
!140 = !{i64 873752, i64 873773, i64 873796, i64 873815, i64 873834}
!141 = !{i64 2155938691}
!142 = !{!"auto-init"}
!143 = !{i64 2150617686, i64 2150617711}
!144 = !{i64 2148363679}
!145 = !{i64 848502, i64 848527, i64 848549, i64 848565, i64 848577, i64 848597, i64 848621, i64 848637, i64 848649}
!146 = !{i64 2148363867}
!147 = !{i64 2155854483, i64 2155854965, i64 2155854520, i64 2155854576, i64 2155854610, i64 2155854634, i64 2155854675, i64 2155854696, i64 2155854724, i64 2155854758}
!148 = !{i64 2155856147, i64 2155856629, i64 2155856184, i64 2155856240, i64 2155856274, i64 2155856298, i64 2155856339, i64 2155856360, i64 2155856388, i64 2155856422}
!149 = !{i64 2155857862, i64 2155858344, i64 2155857899, i64 2155857955, i64 2155857989, i64 2155858013, i64 2155858054, i64 2155858075, i64 2155858103, i64 2155858137}
!150 = !{i64 2155859560, i64 2155860042, i64 2155859597, i64 2155859653, i64 2155859687, i64 2155859711, i64 2155859752, i64 2155859773, i64 2155859801, i64 2155859835}
!151 = !{i64 2155871120, i64 2155871400, i64 2155871734, i64 2155872068}
!152 = !{i64 2155879746, i64 2155880228, i64 2155879783, i64 2155879839, i64 2155879873, i64 2155879897, i64 2155879938, i64 2155879959, i64 2155879987, i64 2155880021}
!153 = !{i64 2155844111}
!154 = !{i64 767163, i64 767224}
!155 = !{i64 769895}
!156 = !{i64 770180}
!157 = !{i64 2155851490}
!158 = !{i64 2155851332}
!159 = !{i64 2155851660}
!160 = !{i64 2150307530}
!161 = !{i64 2155895182, i64 2155895492, i64 2155895806, i64 2155896120}
!162 = !{i64 2155896661, i64 2155897143, i64 2155896698, i64 2155896754, i64 2155896788, i64 2155896812, i64 2155896853, i64 2155896874, i64 2155896902, i64 2155896936}
!163 = !{i64 2155912172, i64 2155912482, i64 2155912796, i64 2155913110}
!164 = !{i64 2155913651, i64 2155914133, i64 2155913688, i64 2155913744, i64 2155913778, i64 2155913802, i64 2155913843, i64 2155913864, i64 2155913892, i64 2155913926}
!165 = !{i64 2155933275, i64 2155933585, i64 2155933899, i64 2155934213}
!166 = !{i64 2155934754, i64 2155935236, i64 2155934791, i64 2155934847, i64 2155934881, i64 2155934905, i64 2155934946, i64 2155934967, i64 2155934995, i64 2155935029}
!167 = !{i64 2155814983, i64 2155815464, i64 2155815020, i64 2155815076, i64 2155815110, i64 2155815134, i64 2155815175, i64 2155815196, i64 2155815224, i64 2155815258}
!168 = !{i64 2155830426}
!169 = !{i64 2150307855}
!170 = !{i64 2150308180}
!171 = !{i64 2155872773, i64 2155873255, i64 2155872810, i64 2155872866, i64 2155872900, i64 2155872924, i64 2155872965, i64 2155872986, i64 2155873014, i64 2155873048}
!172 = !{i64 2155874335, i64 2155874817, i64 2155874372, i64 2155874428, i64 2155874462, i64 2155874486, i64 2155874527, i64 2155874548, i64 2155874576, i64 2155874610}
!173 = !{!"branch_weights", i32 1073205, i32 2146410443}
!174 = !{i64 2155876060, i64 2155876542, i64 2155876097, i64 2155876153, i64 2155876187, i64 2155876211, i64 2155876252, i64 2155876273, i64 2155876301, i64 2155876335}
