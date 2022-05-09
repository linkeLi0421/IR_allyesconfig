; ModuleID = '/llk/IR_all_yes/fs/ocfs2/dlm/dlmdebug.c_pt.bc'
source_filename = "../fs/ocfs2/dlm/dlmdebug.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+dlm_print_one_lock\22, \22a\22\09"
module asm "\09.weak\09__crc_dlm_print_one_lock\09\09\09\09"
module asm "\09.long\09__crc_dlm_print_one_lock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dlm_print_one_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22dlm_print_one_lock\22\09\09\09\09\09"
module asm "__kstrtabns_dlm_print_one_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dlm_errmsg\22, \22a\22\09"
module asm "\09.weak\09__crc_dlm_errmsg\09\09\09\09"
module asm "\09.long\09__crc_dlm_errmsg\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dlm_errmsg:\09\09\09\09\09"
module asm "\09.asciz \09\22dlm_errmsg\22\09\09\09\09\09"
module asm "__kstrtabns_dlm_errmsg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dlm_errname\22, \22a\22\09"
module asm "\09.weak\09__crc_dlm_errname\09\09\09\09"
module asm "\09.long\09__crc_dlm_errname\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dlm_errname:\09\09\09\09\09"
module asm "\09.asciz \09\22dlm_errname\22\09\09\09\09\09"
module asm "__kstrtabns_dlm_errname:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.dlm_lock_resource = type { %struct.hlist_node, %struct.qstr, %struct.kref, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, ptr, i8, %struct.atomic_t, %struct.spinlock, %struct.wait_queue_head, i8, i16, [64 x i8], i32, i32, [8 x i32] }
%struct.hlist_node = type { ptr, ptr }
%struct.qstr = type { %union.anon, ptr }
%union.anon = type { i64 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dlm_lock = type { %struct.dlm_migratable_lock, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.spinlock, %struct.kref, ptr, ptr, ptr, ptr, i8 }
%struct.dlm_migratable_lock = type { i64, i16, i8, i8, i8, i8, i8, i8 }
%struct.dlm_master_list_entry = type { %struct.hlist_node, %struct.list_head, ptr, %struct.spinlock, %struct.wait_queue_head, %struct.atomic_t, %struct.kref, i32, [8 x i32], [8 x i32], [8 x i32], [8 x i32], i8, i8, i32, %struct.o2hb_callback_func, %struct.o2hb_callback_func, ptr, [32 x i8], i32, i32 }
%struct.o2hb_callback_func = type { i32, %struct.list_head, ptr, ptr, i32, i32 }
%struct.dlm_ctxt = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, ptr, i8, i32, i8, i8, %struct.wait_queue_head, [8 x i32], [8 x i32], [8 x i32], [8 x i32], %struct.dlm_recovery_ctxt, %struct.spinlock, ptr, %struct.list_head, [3 x %struct.atomic_t], [3 x %struct.atomic_t], %struct.atomic_t, %struct.atomic_t, ptr, %struct.kref, i32, i32, %struct.o2hb_callback_func, %struct.o2hb_callback_func, ptr, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.dlm_protocol_version, %struct.dlm_protocol_version }
%struct.dlm_recovery_ctxt = type { %struct.list_head, %struct.list_head, i8, i8, i16, [8 x i32], %struct.wait_queue_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dlm_protocol_version = type { i8, i8 }
%struct.file = type { %union.anon.16, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.16 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.122, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.123, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.124, ptr, %struct.address_space, %struct.list_head, %union.anon.125, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.122 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.123 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.124 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.125 = type { ptr }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.110, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%struct.rb_node = type { i32, ptr, ptr }
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
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.110 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.debug_lockres = type { i32, ptr, ptr, ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.hlist_head = type { ptr }

@__dlm_print_one_lock_resource._entry = internal constant %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 90, ptr null, ptr null }, align 1
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"lockres: %s, owner=%u, state=%u\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"__dlm_print_one_lock_resource\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"fs/ocfs2/dlm/dlmdebug.c\00", [40 x i8] zeroinitializer }, align 32
@__dlm_print_one_lock_resource._entry_ptr = internal global ptr @__dlm_print_one_lock_resource._entry, section ".printk_index", align 4
@__dlm_print_one_lock_resource._entry.3 = internal constant %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 93, ptr null, ptr null }, align 1
@.str.4 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"  last used: %lu, refcnt: %u, on purge list: %s\0A\00", [47 x i8] zeroinitializer }, align 32
@__dlm_print_one_lock_resource._entry_ptr.5 = internal global ptr @__dlm_print_one_lock_resource._entry.3, section ".printk_index", align 4
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"no\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"yes\00", [28 x i8] zeroinitializer }, align 32
@__dlm_print_one_lock_resource._entry.8 = internal constant %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 98, ptr null, ptr null }, align 1
@.str.9 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"  on dirty list: %s, on reco list: %s, migrating pending: %s\0A\00", [34 x i8] zeroinitializer }, align 32
@__dlm_print_one_lock_resource._entry_ptr.10 = internal global ptr @__dlm_print_one_lock_resource._entry.8, section ".printk_index", align 4
@__dlm_print_one_lock_resource._entry.11 = internal constant %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 100, ptr null, ptr null }, align 1
@.str.12 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"  inflight locks: %d, asts reserved: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@__dlm_print_one_lock_resource._entry_ptr.13 = internal global ptr @__dlm_print_one_lock_resource._entry.11, section ".printk_index", align 4
@__dlm_print_one_lock_resource._entry.14 = internal constant %struct.pi_entry { ptr @.str.15, ptr @.str.1, ptr @.str.2, i32 102, ptr null, ptr null }, align 1
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"  granted queue:\0A\00", [46 x i8] zeroinitializer }, align 32
@__dlm_print_one_lock_resource._entry_ptr.16 = internal global ptr @__dlm_print_one_lock_resource._entry.14, section ".printk_index", align 4
@__dlm_print_one_lock_resource._entry.17 = internal constant %struct.pi_entry { ptr @.str.18, ptr @.str.1, ptr @.str.2, i32 106, ptr null, ptr null }, align 1
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"  converting queue:\0A\00", [43 x i8] zeroinitializer }, align 32
@__dlm_print_one_lock_resource._entry_ptr.19 = internal global ptr @__dlm_print_one_lock_resource._entry.17, section ".printk_index", align 4
@__dlm_print_one_lock_resource._entry.20 = internal constant %struct.pi_entry { ptr @.str.21, ptr @.str.1, ptr @.str.2, i32 110, ptr null, ptr null }, align 1
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"  blocked queue:\0A\00", [46 x i8] zeroinitializer }, align 32
@__dlm_print_one_lock_resource._entry_ptr.22 = internal global ptr @__dlm_print_one_lock_resource._entry.20, section ".printk_index", align 4
@__kstrtab_dlm_print_one_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns_dlm_print_one_lock = external dso_local constant [0 x i8], align 1
@__ksymtab_dlm_print_one_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dlm_print_one_lock to i32), ptr @__kstrtab_dlm_print_one_lock, ptr @__kstrtabns_dlm_print_one_lock }, section "___ksymtab_gpl+dlm_print_one_lock", align 4
@dlm_errmsgs = internal constant { [42 x ptr], [56 x i8] } { [42 x ptr] [ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79], [56 x i8] zeroinitializer }, align 32
@__kstrtab_dlm_errmsg = external dso_local constant [0 x i8], align 1
@__kstrtabns_dlm_errmsg = external dso_local constant [0 x i8], align 1
@__ksymtab_dlm_errmsg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dlm_errmsg to i32), ptr @__kstrtab_dlm_errmsg, ptr @__kstrtabns_dlm_errmsg }, section "___ksymtab_gpl+dlm_errmsg", align 4
@dlm_errnames = internal constant { [42 x ptr], [56 x i8] } { [42 x ptr] [ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121], [56 x i8] zeroinitializer }, align 32
@__kstrtab_dlm_errname = external dso_local constant [0 x i8], align 1
@__kstrtabns_dlm_errname = external dso_local constant [0 x i8], align 1
@__ksymtab_dlm_errname = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dlm_errname to i32), ptr @__kstrtab_dlm_errname, ptr @__kstrtabns_dlm_errname }, section "___ksymtab_gpl+dlm_errname", align 4
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dlm_state\00", [22 x i8] zeroinitializer }, align 32
@debug_state_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @debug_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @debug_state_open, ptr null, ptr @debug_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"locking_state\00", [18 x i8] zeroinitializer }, align 32
@debug_lockres_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @debug_lockres_open, ptr null, ptr @debug_lockres_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mle_state\00", [22 x i8] zeroinitializer }, align 32
@debug_mle_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @debug_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @debug_mle_open, ptr null, ptr @debug_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"purge_list\00", [21 x i8] zeroinitializer }, align 32
@debug_purgelist_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @debug_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @debug_purgelist_open, ptr null, ptr @debug_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@dlm_debugfs_root = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"o2dlm\00", [26 x i8] zeroinitializer }, align 32
@dlm_print_lockres_refmap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 45, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"  refmap nodes: [ \00", [45 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dlm_print_lockres_refmap\00", [39 x i8] zeroinitializer }, align 32
@dlm_print_lockres_refmap._entry_ptr = internal global ptr @dlm_print_lockres_refmap._entry, section ".printk_index", align 4
@dlm_print_lockres_refmap._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.2, i32 51, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u \00", [28 x i8] zeroinitializer }, align 32
@dlm_print_lockres_refmap._entry_ptr.32 = internal global ptr @dlm_print_lockres_refmap._entry.30, section ".printk_index", align 4
@dlm_print_lockres_refmap._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.29, ptr @.str.2, i32 54, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"], inflight=%u\0A\00", [16 x i8] zeroinitializer }, align 32
@dlm_print_lockres_refmap._entry_ptr.35 = internal global ptr @dlm_print_lockres_refmap._entry.33, section ".printk_index", align 4
@__dlm_print_lock._entry = internal constant %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 75, ptr null, ptr null }, align 1
@.str.36 = internal constant { [151 x i8], [41 x i8] } { [151 x i8] c"    type=%d, conv=%d, node=%u, cookie=%u:%llu, ref=%u, ast=(empty=%c,pend=%c), bast=(empty=%c,pend=%c), pending=(conv=%c,lock=%c,cancel=%c,unlock=%c)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"__dlm_print_lock\00", [47 x i8] zeroinitializer }, align 32
@__dlm_print_lock._entry_ptr = internal global ptr @__dlm_print_lock._entry, section ".printk_index", align 4
@.str.38 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"request in progress\00", [44 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"request granted\00", [16 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"request denied\00", [17 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"request denied, out of system resources\00", [56 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"async request in progress\00", [38 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"lock request blocked\00", [43 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"lock request blocked by a orphan lock\00", [58 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"topological change in progress\00", [33 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"system error\00", [19 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"unsupported\00", [20 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"can't cancel convert: already granted\00", [58 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bad lockid\00", [21 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"synchronous request granted\00", [36 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bad resource type\00", [46 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bad resource handle\00", [44 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"no more resource handles\00", [39 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"can't contact cluster manager\00", [34 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"can't contact lock manager\00", [37 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"can't contact purge daemon\00", [37 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bad api args\00", [19 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"no status\00", [22 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"NOQUEUE was specified and request failed\00", [55 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"invalid resource name length\00", [35 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"attempted to convert ungranted lock\00", [60 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"invalid lock mode specified\00", [36 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"value block has been invalidated\00", [63 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"request rejected, unrecognized client\00", [58 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"blocked lock request cancelled\00", [33 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"conversion request cancelled\00", [35 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"invalid resource handle\00", [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"deadlock recovery refused this request\00", [57 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to allocate AST\00", [41 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"request must wait for primary's response\00", [55 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"timeout value for lock has expired\00", [61 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"invalid group specification\00", [36 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"version conflicts prevent request handling\00", [53 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Locks device does not exist or path wrong\00", [54 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Client has insufficient perms for device\00", [55 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Cannot set options on opened device \00", [59 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"lock resource being recovered\00", [34 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"lock resource being migrated\00", [35 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"invalid error number\00", [43 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DLM_NORMAL\00", [21 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DLM_GRANTED\00", [20 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DLM_DENIED\00", [21 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DLM_DENIED_NOLOCKS\00", [45 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DLM_WORKING\00", [20 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DLM_BLOCKED\00", [20 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DLM_BLOCKED_ORPHAN\00", [45 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DLM_DENIED_GRACE_PERIOD\00", [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DLM_SYSERR\00", [21 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DLM_NOSUPPORT\00", [18 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DLM_CANCELGRANT\00", [16 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DLM_IVLOCKID\00", [19 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DLM_SYNC\00", [23 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DLM_BADTYPE\00", [20 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DLM_BADRESOURCE\00", [16 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DLM_MAXHANDLES\00", [17 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DLM_NOCLINFO\00", [19 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DLM_NOLOCKMGR\00", [18 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DLM_NOPURGED\00", [19 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DLM_BADARGS\00", [20 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DLM_VOID\00", [23 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DLM_NOTQUEUED\00", [18 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DLM_IVBUFLEN\00", [19 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DLM_CVTUNGRANT\00", [17 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DLM_BADPARAM\00", [19 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DLM_VALNOTVALID\00", [16 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DLM_REJECTED\00", [19 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DLM_ABORT\00", [22 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DLM_CANCEL\00", [21 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DLM_IVRESHANDLE\00", [16 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DLM_DEADLOCK\00", [19 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DLM_DENIED_NOASTS\00", [46 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DLM_FORWARD\00", [20 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DLM_TIMEOUT\00", [20 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DLM_IVGROUPID\00", [18 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DLM_VERS_CONFLICT\00", [46 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DLM_BAD_DEVICE_PATH\00", [44 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"DLM_NO_DEVICE_PERMISSION\00", [39 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"DLM_NO_CONTROL_DEVICE \00", [41 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DLM_RECOVERING\00", [17 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DLM_MIGRATING\00", [18 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DLM_MAXSTATS\00", [19 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%.*s%08x\00", [23 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%.*s\00", [27 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"BLK\00", [28 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MAS\00", [28 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MIG\00", [28 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\09%3s\09mas=%3u\09new=%3u\09evt=%1d\09use=%1d\09ref=%3d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Maybe=\00", [25 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Vote=\00", [26 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Response=\00", [22 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Node=\00", [26 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d \00", [28 x i8] zeroinitializer }, align 32
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.134 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"NEW\00", [28 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"JOINED\00", [25 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SHUTDOWN\00", [23 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LEAVING\00", [24 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UNKNOWN\00", [24 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Domain: %s  Key: 0x%08x  Protocol: %d.%d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Thread Pid: %d  Node: %d  State: %s\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Number of Joins: %d  Joining Node: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Domain Map: \00", [19 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Exit Domain Map: \00", [46 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Live Map: \00", [21 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Lock Resources: %d (%d)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"MLEs: %d (%d)\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"  Blocking: %d (%d)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"  Mastery: %d (%d)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"  Migration: %d (%d)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Lists: Dirty=%s  Purge=%s  PendingASTs=%s  PendingBASTs=%s\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Empty\00", [26 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"InUse\00", [26 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Purge Count: %d  Refs: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Dead Node: %d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ACTIVE\00", [25 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"INACTIVE\00", [23 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Recovery Pid: %d  Master: %d  State: %s\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Recovery Map: \00", [17 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Recovery Node State:\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"INIT\00", [27 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"REQUESTING\00", [21 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DEAD\00", [27 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"RECEIVING\00", [22 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"REQUESTED\00", [22 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DONE\00", [27 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"FINALIZE-SENT\00", [18 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"BAD\00", [28 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\09%u - %s\0A\00", [22 x i8] zeroinitializer }, align 32
@debug_lockres_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @lockres_seq_start, ptr @lockres_seq_stop, ptr @lockres_seq_next, ptr @lockres_seq_show }, [16 x i8] zeroinitializer }, align 32
@__func__.debug_lockres_open = private unnamed_addr constant [19 x i8] c"debug_lockres_open\00", align 1
@.str.170 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"status = %lld\0A\00", [17 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.171 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"NAME:\00", [26 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"LRES:%d,%d,%d,%ld,%d,%d,%d,%d,%d,%d,%d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RMAP:\00", [26 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LVBX:\00", [26 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%02x\00", [27 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"LOCK:%d,%d,%d,%d,%d,%d:%lld,%d,%d,%d,%d,%d,%d,%d,%d,%d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Dumping MLEs for Domain: %s\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Total: %lu, Longest: %lu\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Dumping Purgelist for Domain: %s\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\09%ld\0A\00", [26 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.182 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Total on list: %lu\0A\00", [44 x i8] zeroinitializer }, align 32
@switch.table.debug_state_open = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138], [16 x i8] zeroinitializer }, align 32
@switch.table.debug_state_open.183 = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.163, ptr @.str.161, ptr @.str.162, ptr @.str.165, ptr @.str.164, ptr @.str.166, ptr @.str.167], [36 x i8] zeroinitializer }, align 32
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 89, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 91, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 94, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 99, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 102, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 106, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 110, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant [12 x i8] c"dlm_errmsgs\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 167, i32 20 }
@___asan_gen_.220 = private unnamed_addr constant [13 x i8] c"dlm_errnames\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 122, i32 20 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 855, i32 22 }
@___asan_gen_.226 = private unnamed_addr constant [17 x i8] c"debug_state_fops\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 843, i32 37 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 859, i32 22 }
@___asan_gen_.232 = private unnamed_addr constant [19 x i8] c"debug_lockres_fops\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 651, i32 37 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 863, i32 22 }
@___asan_gen_.238 = private unnamed_addr constant [15 x i8] c"debug_mle_fops\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 452, i32 37 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 867, i32 22 }
@___asan_gen_.244 = private unnamed_addr constant [21 x i8] c"debug_purgelist_fops\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 395, i32 37 }
@___asan_gen_.247 = private unnamed_addr constant [17 x i8] c"dlm_debugfs_root\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 324, i32 23 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 887, i32 40 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 45, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 51, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 54, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 61, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 168, i32 20 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 169, i32 20 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 170, i32 20 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 171, i32 27 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 172, i32 20 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 173, i32 20 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 174, i32 27 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 175, i32 31 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 176, i32 20 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 177, i32 22 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 178, i32 24 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 179, i32 21 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 180, i32 18 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 181, i32 20 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 182, i32 24 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 183, i32 23 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 184, i32 21 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 185, i32 22 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 186, i32 21 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 187, i32 20 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 188, i32 18 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 189, i32 22 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 190, i32 21 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 191, i32 23 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 192, i32 21 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 193, i32 24 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 194, i32 21 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 195, i32 19 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 196, i32 20 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 197, i32 24 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 198, i32 21 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 199, i32 26 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 200, i32 20 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 201, i32 20 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 202, i32 22 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 203, i32 26 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 204, i32 27 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 205, i32 32 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 206, i32 29 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 207, i32 23 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 208, i32 22 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 209, i32 21 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 123, i32 19 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 124, i32 20 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 125, i32 19 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 126, i32 26 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 127, i32 20 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 128, i32 20 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 129, i32 26 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 130, i32 30 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 131, i32 19 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 132, i32 21 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 133, i32 23 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 134, i32 20 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 135, i32 17 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 136, i32 20 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 137, i32 23 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 138, i32 22 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 139, i32 20 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 140, i32 21 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 141, i32 20 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 142, i32 20 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 143, i32 17 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 144, i32 21 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 145, i32 20 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 146, i32 22 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 147, i32 20 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 148, i32 23 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 149, i32 20 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 150, i32 18 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 151, i32 19 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 152, i32 23 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 153, i32 20 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 154, i32 25 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 155, i32 20 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 156, i32 20 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 157, i32 21 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 158, i32 25 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 159, i32 27 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 160, i32 31 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 161, i32 29 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 162, i32 22 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 163, i32 21 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 164, i32 20 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 245, i32 42 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 249, i32 42 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 272, i32 14 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 274, i32 14 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 276, i32 14 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 280, i32 4 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 286, i32 41 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 289, i32 41 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 291, i32 41 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 296, i32 41 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 301, i32 41 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 261, i32 42 }
@___asan_gen_.569 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 271, i32 2 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 672, i32 11 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 674, i32 11 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 676, i32 11 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 678, i32 11 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 680, i32 11 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 685, i32 4 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 691, i32 4 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 696, i32 4 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 700, i32 41 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 706, i32 41 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 712, i32 41 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 719, i32 4 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 731, i32 4 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 735, i32 4 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 741, i32 4 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 747, i32 4 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 753, i32 4 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 755, i32 36 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 755, i32 46 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 762, i32 4 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 767, i32 4 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 771, i32 11 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 773, i32 11 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 777, i32 4 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 782, i32 41 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 788, i32 41 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 792, i32 12 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 795, i32 12 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 798, i32 12 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 801, i32 12 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 804, i32 12 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 807, i32 12 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 810, i32 12 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 813, i32 12 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 816, i32 42 }
@___asan_gen_.676 = private unnamed_addr constant [18 x i8] c"debug_lockres_ops\00", align 1
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 603, i32 36 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 635, i32 2 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 492, i32 41 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 499, i32 4 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 510, i32 41 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 516, i32 41 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 519, i32 6 }
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 468, i32 28 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 598, i32 16 }
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 412, i32 4 }
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 430, i32 4 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 355, i32 4 }
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 366, i32 42 }
@___asan_gen_.715 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.716 = private constant [27 x i8] c"../fs/ocfs2/dlm/dlmdebug.c\00", align 1
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.716, i32 372, i32 41 }
@___asan_gen_.718 = private unnamed_addr constant [30 x i8] c"switch.table.debug_state_open\00", align 1
@___asan_gen_.719 = private unnamed_addr constant [34 x i8] c"switch.table.debug_state_open.183\00", align 1
@llvm.compiler.used = appending global [202 x ptr] [ptr @__dlm_print_lock._entry, ptr @__dlm_print_lock._entry_ptr, ptr @__dlm_print_one_lock_resource._entry, ptr @__dlm_print_one_lock_resource._entry.11, ptr @__dlm_print_one_lock_resource._entry.14, ptr @__dlm_print_one_lock_resource._entry.17, ptr @__dlm_print_one_lock_resource._entry.20, ptr @__dlm_print_one_lock_resource._entry.3, ptr @__dlm_print_one_lock_resource._entry.8, ptr @__dlm_print_one_lock_resource._entry_ptr, ptr @__dlm_print_one_lock_resource._entry_ptr.10, ptr @__dlm_print_one_lock_resource._entry_ptr.13, ptr @__dlm_print_one_lock_resource._entry_ptr.16, ptr @__dlm_print_one_lock_resource._entry_ptr.19, ptr @__dlm_print_one_lock_resource._entry_ptr.22, ptr @__dlm_print_one_lock_resource._entry_ptr.5, ptr @__ksymtab_dlm_errmsg, ptr @__ksymtab_dlm_errname, ptr @__ksymtab_dlm_print_one_lock, ptr @dlm_print_lockres_refmap._entry, ptr @dlm_print_lockres_refmap._entry.30, ptr @dlm_print_lockres_refmap._entry.33, ptr @dlm_print_lockres_refmap._entry_ptr, ptr @dlm_print_lockres_refmap._entry_ptr.32, ptr @dlm_print_lockres_refmap._entry_ptr.35, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @dlm_errmsgs, ptr @dlm_errnames, ptr @.str.23, ptr @debug_state_fops, ptr @.str.24, ptr @debug_lockres_fops, ptr @.str.25, ptr @debug_mle_fops, ptr @.str.26, ptr @debug_purgelist_fops, ptr @dlm_debugfs_root, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @debug_lockres_ops, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @switch.table.debug_state_open, ptr @switch.table.debug_state_open.183], section "llvm.metadata"
@0 = internal global [180 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_errmsgs to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_errnames to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug_state_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug_lockres_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug_mle_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug_purgelist_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_debugfs_root to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_print_lockres_refmap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_print_lockres_refmap._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_print_lockres_refmap._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 151, i32 192, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug_lockres_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.debug_state_open to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.debug_state_open.183 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_print_one_lock_resource(ptr noundef %res) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %spinlock = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 14
  tail call void @_raw_spin_lock(ptr noundef %spinlock) #11
  tail call void @__dlm_print_one_lock_resource(ptr noundef %res)
  tail call void @_raw_spin_unlock(ptr noundef %spinlock) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__dlm_print_one_lock_resource(ptr noundef %res) local_unnamed_addr #0 align 64 {
entry:
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  %agg.tmp.sroa.0.i = alloca i32, align 4
  %buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #11
  %spinlock = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 14
  %0 = call ptr @memset(ptr %buf, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  %1 = ptrtoint ptr %spinlock to i32
  call void @__asan_load4_noabort(i32 %1)
  %agg.tmp.sroa.0.0.copyload.i = load volatile i32, ptr %spinlock, align 4
  %2 = ptrtoint ptr %agg.tmp.sroa.0.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i, ptr %agg.tmp.sroa.0.i, align 4
  %lock.sroa.0.0.extract.shift.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i, 16
  %conv.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %lock.sroa.0.0.extract.shift.i.i)
  %cmp.i.i.not = icmp eq i32 %conv.i.i, %lock.sroa.0.0.extract.shift.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  br i1 %cmp.i.i.not, label %do.body4, label %do.end9, !prof !384

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmdebug.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 85, 0\0A.popsection", ""() #11, !srcloc !385
  unreachable

do.end9:                                          ; preds = %entry
  %name = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %name, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 78, i8 %6)
  %cmp.i = icmp eq i8 %6, 78
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i = getelementptr i8, ptr %4, i32 18
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_loadN_noabort(i32 %7, i32 8)
  %inode_blkno_be.0.copyload.i = load i64, ptr %arrayidx.i, align 1
  %conv2.i = trunc i64 %inode_blkno_be.0.copyload.i to i32
  %call.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 32, ptr noundef nonnull @.str.122, i32 noundef 17, ptr noundef %4, i32 noundef %conv2.i) #11
  br label %stringify_lockname.exit

if.else.i:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #13
  %lockname = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 1
  %8 = ptrtoint ptr %lockname to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %lockname, align 8
  %call5.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 32, ptr noundef nonnull @.str.123, i32 noundef %9, ptr noundef %4) #11
  br label %stringify_lockname.exit

stringify_lockname.exit:                          ; preds = %if.else.i, %if.then.i
  %owner = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 16
  %10 = ptrtoint ptr %owner to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %owner, align 4
  %conv = zext i8 %11 to i32
  %state = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 17
  %12 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %state, align 2
  %conv16 = zext i16 %13 to i32
  %call17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull %buf, i32 noundef %conv, i32 noundef %conv16) #14
  %last_used = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 10
  %14 = ptrtoint ptr %last_used to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %last_used, align 4
  %refs = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 2
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %refs, i32 noundef 4) #11
  %16 = ptrtoint ptr %refs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %refs, align 4
  %purge = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 6
  %18 = ptrtoint ptr %purge to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %purge, align 4
  %cmp.i137.not = icmp eq ptr %19, %purge
  %cond = select i1 %cmp.i137.not, ptr @.str.6, ptr @.str.7
  %call25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %15, i32 noundef %17, ptr noundef nonnull %cond) #14
  %dirty = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 7
  %20 = ptrtoint ptr %dirty to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %dirty, align 4
  %cmp.i138.not = icmp eq ptr %21, %dirty
  %cond32 = select i1 %cmp.i138.not, ptr @.str.6, ptr @.str.7
  %recovering = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 8
  %22 = ptrtoint ptr %recovering to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %recovering, align 4
  %cmp.i140.not = icmp eq ptr %23, %recovering
  %cond35 = select i1 %cmp.i140.not, ptr @.str.6, ptr @.str.7
  %migration_pending = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 12
  %24 = ptrtoint ptr %migration_pending to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load = load i8, ptr %migration_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool36.not = icmp sgt i8 %bf.load, -1
  %cond37 = select i1 %tobool36.not, ptr @.str.6, ptr @.str.7
  %call38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull %cond32, ptr noundef nonnull %cond35, ptr noundef nonnull %cond37) #14
  %inflight_locks = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 19
  %25 = ptrtoint ptr %inflight_locks to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %inflight_locks, align 8
  %asts_reserved = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 13
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %asts_reserved, i32 noundef 4) #11
  %27 = ptrtoint ptr %asts_reserved to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %asts_reserved, align 4
  %call44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %26, i32 noundef %28) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %29 = ptrtoint ptr %spinlock to i32
  call void @__asan_load4_noabort(i32 %29)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr %spinlock, align 4
  %30 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %do.body4.i, label %do.end12.i, !prof !384

do.body4.i:                                       ; preds = %stringify_lockname.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/dlm/dlmdebug.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 43, 0\0A.popsection", ""() #11, !srcloc !386
  unreachable

do.end12.i:                                       ; preds = %stringify_lockname.exit
  %call13.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #14
  %refmap.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 21
  %call1432.i = call i32 @_find_next_bit_be(ptr noundef %refmap.i, i32 noundef 255, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %call1432.i)
  %cmp33.i = icmp sgt i32 %call1432.i, 254
  br i1 %cmp33.i, label %do.end12.i.dlm_print_lockres_refmap.exit_crit_edge, label %do.end12.i.do.end19.i_crit_edge

do.end12.i.do.end19.i_crit_edge:                  ; preds = %do.end12.i
  br label %do.end19.i

do.end12.i.dlm_print_lockres_refmap.exit_crit_edge: ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dlm_print_lockres_refmap.exit

do.end19.i:                                       ; preds = %do.end19.i.do.end19.i_crit_edge, %do.end12.i.do.end19.i_crit_edge
  %call1434.i = phi i32 [ %call14.i, %do.end19.i.do.end19.i_crit_edge ], [ %call1432.i, %do.end12.i.do.end19.i_crit_edge ]
  %call21.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef %call1434.i) #14
  %inc.i = add nsw i32 %call1434.i, 1
  %call14.i = call i32 @_find_next_bit_be(ptr noundef %refmap.i, i32 noundef 255, i32 noundef %inc.i) #11
  %cmp.i142 = icmp sgt i32 %call14.i, 254
  br i1 %cmp.i142, label %do.end19.i.dlm_print_lockres_refmap.exit_crit_edge, label %do.end19.i.do.end19.i_crit_edge

do.end19.i.do.end19.i_crit_edge:                  ; preds = %do.end19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end19.i

do.end19.i.dlm_print_lockres_refmap.exit_crit_edge: ; preds = %do.end19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dlm_print_lockres_refmap.exit

dlm_print_lockres_refmap.exit:                    ; preds = %do.end19.i.dlm_print_lockres_refmap.exit_crit_edge, %do.end12.i.dlm_print_lockres_refmap.exit_crit_edge
  %31 = ptrtoint ptr %inflight_locks to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %inflight_locks, align 8
  %call26.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef %32) #14
  %call49 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #14
  %granted = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 3
  %33 = ptrtoint ptr %granted to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pn213 = load ptr, ptr %granted, align 4
  %cmp.not214 = icmp eq ptr %.pn213, %granted
  br i1 %cmp.not214, label %dlm_print_lockres_refmap.exit.do.end62_crit_edge, label %dlm_print_lockres_refmap.exit.for.body_crit_edge

dlm_print_lockres_refmap.exit.for.body_crit_edge: ; preds = %dlm_print_lockres_refmap.exit
  br label %for.body

dlm_print_lockres_refmap.exit.do.end62_crit_edge: ; preds = %dlm_print_lockres_refmap.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end62

for.body:                                         ; preds = %for.body.for.body_crit_edge, %dlm_print_lockres_refmap.exit.for.body_crit_edge
  %.pn215 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn213, %dlm_print_lockres_refmap.exit.for.body_crit_edge ]
  %lock.0 = getelementptr i8, ptr %.pn215, i32 -16
  %spinlock.i143 = getelementptr i8, ptr %.pn215, i32 28
  call void @_raw_spin_lock(ptr noundef %spinlock.i143) #11
  %type.i = getelementptr i8, ptr %.pn215, i32 -4
  %34 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %type.i, align 4
  %conv.i144 = sext i8 %35 to i32
  %convert_type.i = getelementptr i8, ptr %.pn215, i32 -3
  %36 = ptrtoint ptr %convert_type.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %convert_type.i, align 1
  %conv2.i145 = sext i8 %37 to i32
  %node.i = getelementptr i8, ptr %.pn215, i32 -1
  %38 = ptrtoint ptr %node.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %node.i, align 1
  %conv4.i = zext i8 %39 to i32
  %40 = ptrtoint ptr %lock.0 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %lock.0, align 8
  %shr.i.i = lshr i64 %41, 56
  %conv.i.i146 = trunc i64 %shr.i.i to i32
  %and.i.i = and i64 %41, 72057594037927935
  %lock_refs.i = getelementptr i8, ptr %.pn215, i32 72
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %lock_refs.i, i32 noundef 4) #11
  %42 = ptrtoint ptr %lock_refs.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %lock_refs.i, align 4
  %ast_list.i = getelementptr i8, ptr %.pn215, i32 8
  %44 = ptrtoint ptr %ast_list.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %ast_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %45, %ast_list.i
  %cond.i = select i1 %cmp.i.not.i, i32 121, i32 110
  %ast_pending.i = getelementptr i8, ptr %.pn215, i32 92
  %46 = ptrtoint ptr %ast_pending.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %bf.load.i = load i8, ptr %ast_pending.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool12.not.i = icmp sgt i8 %bf.load.i, -1
  %cond13.i = select i1 %tobool12.not.i, i32 110, i32 121
  %bast_list.i = getelementptr i8, ptr %.pn215, i32 16
  %47 = ptrtoint ptr %bast_list.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile ptr, ptr %bast_list.i, align 4
  %cmp.i64.not.i = icmp eq ptr %48, %bast_list.i
  %cond16.i = select i1 %cmp.i64.not.i, i32 121, i32 110
  %49 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool20.not.i = icmp eq i8 %49, 0
  %cond21.i = select i1 %tobool20.not.i, i32 110, i32 121
  %50 = and i8 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool26.not.i = icmp eq i8 %50, 0
  %cond27.i = select i1 %tobool26.not.i, i32 110, i32 121
  %51 = and i8 %bf.load.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool32.not.i = icmp eq i8 %51, 0
  %cond33.i = select i1 %tobool32.not.i, i32 110, i32 121
  %52 = and i8 %bf.load.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool38.not.i = icmp eq i8 %52, 0
  %cond39.i = select i1 %tobool38.not.i, i32 110, i32 121
  %53 = and i8 %bf.load.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool44.not.i = icmp eq i8 %53, 0
  %cond45.i = select i1 %tobool44.not.i, i32 110, i32 121
  %call46.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %conv.i144, i32 noundef %conv2.i145, i32 noundef %conv4.i, i32 noundef %conv.i.i146, i64 noundef %and.i.i, i32 noundef %43, i32 noundef %cond.i, i32 noundef %cond13.i, i32 noundef %cond16.i, i32 noundef %cond21.i, i32 noundef %cond27.i, i32 noundef %cond33.i, i32 noundef %cond39.i, i32 noundef %cond45.i) #14
  call void @_raw_spin_unlock(ptr noundef %spinlock.i143) #11
  %54 = ptrtoint ptr %.pn215 to i32
  call void @__asan_load4_noabort(i32 %54)
  %.pn = load ptr, ptr %.pn215, align 4
  %cmp.not = icmp eq ptr %.pn, %granted
  br i1 %cmp.not, label %for.body.do.end62_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.do.end62_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end62

do.end62:                                         ; preds = %for.body.do.end62_crit_edge, %dlm_print_lockres_refmap.exit.do.end62_crit_edge
  %call64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #14
  %converting = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 4
  %55 = ptrtoint ptr %converting to i32
  call void @__asan_load4_noabort(i32 %55)
  %.pn135216 = load ptr, ptr %converting, align 4
  %cmp72.not217 = icmp eq ptr %.pn135216, %converting
  br i1 %cmp72.not217, label %do.end62.do.end86_crit_edge, label %do.end62.for.body76_crit_edge

do.end62.for.body76_crit_edge:                    ; preds = %do.end62
  br label %for.body76

do.end62.do.end86_crit_edge:                      ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end86

for.body76:                                       ; preds = %for.body76.for.body76_crit_edge, %do.end62.for.body76_crit_edge
  %.pn135218 = phi ptr [ %.pn135, %for.body76.for.body76_crit_edge ], [ %.pn135216, %do.end62.for.body76_crit_edge ]
  %lock.1 = getelementptr i8, ptr %.pn135218, i32 -16
  %spinlock.i147 = getelementptr i8, ptr %.pn135218, i32 28
  call void @_raw_spin_lock(ptr noundef %spinlock.i147) #11
  %type.i148 = getelementptr i8, ptr %.pn135218, i32 -4
  %56 = ptrtoint ptr %type.i148 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %type.i148, align 4
  %conv.i149 = sext i8 %57 to i32
  %convert_type.i150 = getelementptr i8, ptr %.pn135218, i32 -3
  %58 = ptrtoint ptr %convert_type.i150 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %convert_type.i150, align 1
  %conv2.i151 = sext i8 %59 to i32
  %node.i152 = getelementptr i8, ptr %.pn135218, i32 -1
  %60 = ptrtoint ptr %node.i152 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %node.i152, align 1
  %conv4.i153 = zext i8 %61 to i32
  %62 = ptrtoint ptr %lock.1 to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %lock.1, align 8
  %shr.i.i154 = lshr i64 %63, 56
  %conv.i.i155 = trunc i64 %shr.i.i154 to i32
  %and.i.i156 = and i64 %63, 72057594037927935
  %lock_refs.i157 = getelementptr i8, ptr %.pn135218, i32 72
  %call.i.i.i.i.i158 = call zeroext i1 @__kasan_check_read(ptr noundef %lock_refs.i157, i32 noundef 4) #11
  %64 = ptrtoint ptr %lock_refs.i157 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %lock_refs.i157, align 4
  %ast_list.i159 = getelementptr i8, ptr %.pn135218, i32 8
  %66 = ptrtoint ptr %ast_list.i159 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile ptr, ptr %ast_list.i159, align 4
  %cmp.i.not.i160 = icmp eq ptr %67, %ast_list.i159
  %cond.i161 = select i1 %cmp.i.not.i160, i32 121, i32 110
  %ast_pending.i162 = getelementptr i8, ptr %.pn135218, i32 92
  %68 = ptrtoint ptr %ast_pending.i162 to i32
  call void @__asan_load1_noabort(i32 %68)
  %bf.load.i163 = load i8, ptr %ast_pending.i162, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i163)
  %tobool12.not.i164 = icmp sgt i8 %bf.load.i163, -1
  %cond13.i165 = select i1 %tobool12.not.i164, i32 110, i32 121
  %bast_list.i166 = getelementptr i8, ptr %.pn135218, i32 16
  %69 = ptrtoint ptr %bast_list.i166 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile ptr, ptr %bast_list.i166, align 4
  %cmp.i64.not.i167 = icmp eq ptr %70, %bast_list.i166
  %cond16.i168 = select i1 %cmp.i64.not.i167, i32 121, i32 110
  %71 = and i8 %bf.load.i163, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool20.not.i169 = icmp eq i8 %71, 0
  %cond21.i170 = select i1 %tobool20.not.i169, i32 110, i32 121
  %72 = and i8 %bf.load.i163, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool26.not.i171 = icmp eq i8 %72, 0
  %cond27.i172 = select i1 %tobool26.not.i171, i32 110, i32 121
  %73 = and i8 %bf.load.i163, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool32.not.i173 = icmp eq i8 %73, 0
  %cond33.i174 = select i1 %tobool32.not.i173, i32 110, i32 121
  %74 = and i8 %bf.load.i163, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool38.not.i175 = icmp eq i8 %74, 0
  %cond39.i176 = select i1 %tobool38.not.i175, i32 110, i32 121
  %75 = and i8 %bf.load.i163, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool44.not.i177 = icmp eq i8 %75, 0
  %cond45.i178 = select i1 %tobool44.not.i177, i32 110, i32 121
  %call46.i179 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %conv.i149, i32 noundef %conv2.i151, i32 noundef %conv4.i153, i32 noundef %conv.i.i155, i64 noundef %and.i.i156, i32 noundef %65, i32 noundef %cond.i161, i32 noundef %cond13.i165, i32 noundef %cond16.i168, i32 noundef %cond21.i170, i32 noundef %cond27.i172, i32 noundef %cond33.i174, i32 noundef %cond39.i176, i32 noundef %cond45.i178) #14
  call void @_raw_spin_unlock(ptr noundef %spinlock.i147) #11
  %76 = ptrtoint ptr %.pn135218 to i32
  call void @__asan_load4_noabort(i32 %76)
  %.pn135 = load ptr, ptr %.pn135218, align 4
  %cmp72.not = icmp eq ptr %.pn135, %converting
  br i1 %cmp72.not, label %for.body76.do.end86_crit_edge, label %for.body76.for.body76_crit_edge

for.body76.for.body76_crit_edge:                  ; preds = %for.body76
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body76

for.body76.do.end86_crit_edge:                    ; preds = %for.body76
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end86

do.end86:                                         ; preds = %for.body76.do.end86_crit_edge, %do.end62.do.end86_crit_edge
  %call88 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #14
  %blocked = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 5
  %77 = ptrtoint ptr %blocked to i32
  call void @__asan_load4_noabort(i32 %77)
  %.pn136219 = load ptr, ptr %blocked, align 4
  %cmp96.not220 = icmp eq ptr %.pn136219, %blocked
  br i1 %cmp96.not220, label %do.end86.for.end107_crit_edge, label %do.end86.for.body100_crit_edge

do.end86.for.body100_crit_edge:                   ; preds = %do.end86
  br label %for.body100

do.end86.for.end107_crit_edge:                    ; preds = %do.end86
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end107

for.body100:                                      ; preds = %for.body100.for.body100_crit_edge, %do.end86.for.body100_crit_edge
  %.pn136221 = phi ptr [ %.pn136, %for.body100.for.body100_crit_edge ], [ %.pn136219, %do.end86.for.body100_crit_edge ]
  %lock.2 = getelementptr i8, ptr %.pn136221, i32 -16
  %spinlock.i180 = getelementptr i8, ptr %.pn136221, i32 28
  call void @_raw_spin_lock(ptr noundef %spinlock.i180) #11
  %type.i181 = getelementptr i8, ptr %.pn136221, i32 -4
  %78 = ptrtoint ptr %type.i181 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %type.i181, align 4
  %conv.i182 = sext i8 %79 to i32
  %convert_type.i183 = getelementptr i8, ptr %.pn136221, i32 -3
  %80 = ptrtoint ptr %convert_type.i183 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %convert_type.i183, align 1
  %conv2.i184 = sext i8 %81 to i32
  %node.i185 = getelementptr i8, ptr %.pn136221, i32 -1
  %82 = ptrtoint ptr %node.i185 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %node.i185, align 1
  %conv4.i186 = zext i8 %83 to i32
  %84 = ptrtoint ptr %lock.2 to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %lock.2, align 8
  %shr.i.i187 = lshr i64 %85, 56
  %conv.i.i188 = trunc i64 %shr.i.i187 to i32
  %and.i.i189 = and i64 %85, 72057594037927935
  %lock_refs.i190 = getelementptr i8, ptr %.pn136221, i32 72
  %call.i.i.i.i.i191 = call zeroext i1 @__kasan_check_read(ptr noundef %lock_refs.i190, i32 noundef 4) #11
  %86 = ptrtoint ptr %lock_refs.i190 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile i32, ptr %lock_refs.i190, align 4
  %ast_list.i192 = getelementptr i8, ptr %.pn136221, i32 8
  %88 = ptrtoint ptr %ast_list.i192 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile ptr, ptr %ast_list.i192, align 4
  %cmp.i.not.i193 = icmp eq ptr %89, %ast_list.i192
  %cond.i194 = select i1 %cmp.i.not.i193, i32 121, i32 110
  %ast_pending.i195 = getelementptr i8, ptr %.pn136221, i32 92
  %90 = ptrtoint ptr %ast_pending.i195 to i32
  call void @__asan_load1_noabort(i32 %90)
  %bf.load.i196 = load i8, ptr %ast_pending.i195, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i196)
  %tobool12.not.i197 = icmp sgt i8 %bf.load.i196, -1
  %cond13.i198 = select i1 %tobool12.not.i197, i32 110, i32 121
  %bast_list.i199 = getelementptr i8, ptr %.pn136221, i32 16
  %91 = ptrtoint ptr %bast_list.i199 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load volatile ptr, ptr %bast_list.i199, align 4
  %cmp.i64.not.i200 = icmp eq ptr %92, %bast_list.i199
  %cond16.i201 = select i1 %cmp.i64.not.i200, i32 121, i32 110
  %93 = and i8 %bf.load.i196, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool20.not.i202 = icmp eq i8 %93, 0
  %cond21.i203 = select i1 %tobool20.not.i202, i32 110, i32 121
  %94 = and i8 %bf.load.i196, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool26.not.i204 = icmp eq i8 %94, 0
  %cond27.i205 = select i1 %tobool26.not.i204, i32 110, i32 121
  %95 = and i8 %bf.load.i196, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool32.not.i206 = icmp eq i8 %95, 0
  %cond33.i207 = select i1 %tobool32.not.i206, i32 110, i32 121
  %96 = and i8 %bf.load.i196, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %tobool38.not.i208 = icmp eq i8 %96, 0
  %cond39.i209 = select i1 %tobool38.not.i208, i32 110, i32 121
  %97 = and i8 %bf.load.i196, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool44.not.i210 = icmp eq i8 %97, 0
  %cond45.i211 = select i1 %tobool44.not.i210, i32 110, i32 121
  %call46.i212 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %conv.i182, i32 noundef %conv2.i184, i32 noundef %conv4.i186, i32 noundef %conv.i.i188, i64 noundef %and.i.i189, i32 noundef %87, i32 noundef %cond.i194, i32 noundef %cond13.i198, i32 noundef %cond16.i201, i32 noundef %cond21.i203, i32 noundef %cond27.i205, i32 noundef %cond33.i207, i32 noundef %cond39.i209, i32 noundef %cond45.i211) #14
  call void @_raw_spin_unlock(ptr noundef %spinlock.i180) #11
  %98 = ptrtoint ptr %.pn136221 to i32
  call void @__asan_load4_noabort(i32 %98)
  %.pn136 = load ptr, ptr %.pn136221, align 4
  %cmp96.not = icmp eq ptr %.pn136, %blocked
  br i1 %cmp96.not, label %for.body100.for.end107_crit_edge, label %for.body100.for.body100_crit_edge

for.body100.for.body100_crit_edge:                ; preds = %for.body100
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body100

for.body100.for.end107_crit_edge:                 ; preds = %for.body100
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end107

for.end107:                                       ; preds = %for.body100.for.end107_crit_edge, %do.end86.for.end107_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_print_one_lock(ptr nocapture noundef readonly %lockid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %lockres = getelementptr inbounds %struct.dlm_lock, ptr %lockid, i32 0, i32 4
  %0 = ptrtoint ptr %lockres to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lockres, align 8
  %spinlock.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %1, i32 0, i32 14
  tail call void @_raw_spin_lock(ptr noundef %spinlock.i) #11
  tail call void @__dlm_print_one_lock_resource(ptr noundef %1) #11
  tail call void @_raw_spin_unlock(ptr noundef %spinlock.i) #11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @dlm_errmsg(i32 noundef %err) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %err)
  %cmp = icmp ugt i32 %err, 40
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx = getelementptr [42 x ptr], ptr @dlm_errmsgs, i32 0, i32 %err
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi ptr [ %1, %if.end ], [ @.str.79, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @dlm_errname(i32 noundef %err) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %err)
  %cmp = icmp ugt i32 %err, 40
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx = getelementptr [42 x ptr], ptr @dlm_errnames, i32 0, i32 %err
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi ptr [ %1, %if.end ], [ @.str.121, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_print_one_mle(ptr noundef %mle) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @get_zeroed_page(i32 noundef 2592) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = inttoptr i32 %call to ptr
  %call1 = tail call fastcc i32 @dump_mle(ptr noundef %mle, ptr noundef nonnull %0, i32 noundef 4095)
  tail call void @free_pages(i32 noundef %call, i32 noundef 0) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_zeroed_page(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dump_mle(ptr noundef %mle, ptr noundef %buf, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.dlm_master_list_entry, ptr %mle, i32 0, i32 14
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %switch.selectcmp = icmp eq i32 %1, 1
  %switch.select = select i1 %switch.selectcmp, ptr @.str.125, ptr @.str.126
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %switch.selectcmp159 = icmp eq i32 %1, 0
  %switch.select160 = select i1 %switch.selectcmp159, ptr @.str.124, ptr %switch.select
  %mname = getelementptr inbounds %struct.dlm_master_list_entry, ptr %mle, i32 0, i32 18
  %2 = ptrtoint ptr %mname to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mname, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 78, i8 %3)
  %cmp.i = icmp eq i8 %3, 78
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i = getelementptr %struct.dlm_master_list_entry, ptr %mle, i32 0, i32 18, i32 18
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 8)
  %inode_blkno_be.0.copyload.i = load i64, ptr %arrayidx.i, align 1
  %conv2.i = trunc i64 %inode_blkno_be.0.copyload.i to i32
  %call.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef %len, ptr noundef nonnull @.str.122, i32 noundef 17, ptr noundef %mname, i32 noundef %conv2.i) #11
  br label %stringify_lockname.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %mnamelen = getelementptr inbounds %struct.dlm_master_list_entry, ptr %mle, i32 0, i32 19
  %5 = ptrtoint ptr %mnamelen to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mnamelen, align 4
  %call5.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef %len, ptr noundef nonnull @.str.123, i32 noundef %6, ptr noundef %mname) #11
  br label %stringify_lockname.exit

stringify_lockname.exit:                          ; preds = %if.else.i, %if.then.i
  %out.0.i = phi i32 [ %call.i, %if.then.i ], [ %call5.i, %if.else.i ]
  %add.ptr6 = getelementptr i8, ptr %buf, i32 %out.0.i
  %sub7 = sub i32 %len, %out.0.i
  %master = getelementptr inbounds %struct.dlm_master_list_entry, ptr %mle, i32 0, i32 12
  %7 = ptrtoint ptr %master to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %master, align 4
  %conv = zext i8 %8 to i32
  %new_master = getelementptr inbounds %struct.dlm_master_list_entry, ptr %mle, i32 0, i32 13
  %9 = ptrtoint ptr %new_master to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %new_master, align 1
  %conv8 = zext i8 %10 to i32
  %hb_events = getelementptr inbounds %struct.dlm_master_list_entry, ptr %mle, i32 0, i32 1
  %11 = ptrtoint ptr %hb_events to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %hb_events, align 4
  %cmp.i161 = icmp ne ptr %12, %hb_events
  %lnot.ext = zext i1 %cmp.i161 to i32
  %inuse = getelementptr inbounds %struct.dlm_master_list_entry, ptr %mle, i32 0, i32 7
  %13 = ptrtoint ptr %inuse to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %inuse, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool10 = icmp ne i32 %14, 0
  %lnot.ext14 = zext i1 %tobool10 to i32
  %mle_refs = getelementptr inbounds %struct.dlm_master_list_entry, ptr %mle, i32 0, i32 6
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %mle_refs, i32 noundef 4) #11
  %15 = ptrtoint ptr %mle_refs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %mle_refs, align 4
  %call16 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr6, i32 noundef %sub7, ptr noundef nonnull @.str.127, ptr noundef nonnull %switch.select160, i32 noundef %conv, i32 noundef %conv8, i32 noundef %lnot.ext, i32 noundef %lnot.ext14, i32 noundef %16) #11
  %add17 = add i32 %call16, %out.0.i
  %add.ptr18 = getelementptr i8, ptr %buf, i32 %add17
  %sub19 = sub i32 %len, %add17
  %call20 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr18, i32 noundef %sub19, ptr noundef nonnull @.str.128) #11
  %add21 = add i32 %add17, %call20
  %maybe_map = getelementptr inbounds %struct.dlm_master_list_entry, ptr %mle, i32 0, i32 8
  %add.ptr23 = getelementptr i8, ptr %buf, i32 %add21
  %call2.i = tail call i32 @_find_next_bit_be(ptr noundef %maybe_map, i32 noundef 255, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 255
  br i1 %cmp3.i, label %stringify_lockname.exit.while.body.i_crit_edge, label %stringify_lockname.exit.stringify_nodemap.exit_crit_edge

stringify_lockname.exit.stringify_nodemap.exit_crit_edge: ; preds = %stringify_lockname.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %stringify_nodemap.exit

stringify_lockname.exit.while.body.i_crit_edge:   ; preds = %stringify_lockname.exit
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %stringify_lockname.exit.while.body.i_crit_edge
  %call5.i162 = phi i32 [ %call.i163, %while.body.i.while.body.i_crit_edge ], [ %call2.i, %stringify_lockname.exit.while.body.i_crit_edge ]
  %out.04.i = phi i32 [ %add2.i, %while.body.i.while.body.i_crit_edge ], [ 0, %stringify_lockname.exit.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %add.ptr23, i32 %out.04.i
  %17 = add i32 %add21, %out.04.i
  %sub.i = sub i32 %len, %17
  %call1.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i, i32 noundef %sub.i, ptr noundef nonnull @.str.133, i32 noundef %call5.i162) #11
  %add2.i = add i32 %call1.i, %out.04.i
  %add.i = add nsw i32 %call5.i162, 1
  %call.i163 = tail call i32 @_find_next_bit_be(ptr noundef %maybe_map, i32 noundef 255, i32 noundef %add.i) #11
  %cmp.i164 = icmp slt i32 %call.i163, 255
  br i1 %cmp.i164, label %while.body.i.while.body.i_crit_edge, label %while.body.i.stringify_nodemap.exit_crit_edge

while.body.i.stringify_nodemap.exit_crit_edge:    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %stringify_nodemap.exit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

stringify_nodemap.exit:                           ; preds = %while.body.i.stringify_nodemap.exit_crit_edge, %stringify_lockname.exit.stringify_nodemap.exit_crit_edge
  %out.0.lcssa.i = phi i32 [ 0, %stringify_lockname.exit.stringify_nodemap.exit_crit_edge ], [ %add2.i, %while.body.i.stringify_nodemap.exit_crit_edge ]
  %add26 = add i32 %out.0.lcssa.i, %add21
  %add.ptr27 = getelementptr i8, ptr %buf, i32 %add26
  %sub28 = sub i32 %len, %add26
  %call29 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr27, i32 noundef %sub28, ptr noundef nonnull @.str.129) #11
  %add30 = add i32 %add26, %call29
  %add.ptr31 = getelementptr i8, ptr %buf, i32 %add30
  %sub32 = sub i32 %len, %add30
  %call33 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr31, i32 noundef %sub32, ptr noundef nonnull @.str.130) #11
  %add34 = add i32 %add30, %call33
  %vote_map = getelementptr inbounds %struct.dlm_master_list_entry, ptr %mle, i32 0, i32 9
  %add.ptr36 = getelementptr i8, ptr %buf, i32 %add34
  %call2.i165 = tail call i32 @_find_next_bit_be(ptr noundef %vote_map, i32 noundef 255, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call2.i165)
  %cmp3.i166 = icmp slt i32 %call2.i165, 255
  br i1 %cmp3.i166, label %stringify_nodemap.exit.while.body.i176_crit_edge, label %stringify_nodemap.exit.stringify_nodemap.exit178_crit_edge

stringify_nodemap.exit.stringify_nodemap.exit178_crit_edge: ; preds = %stringify_nodemap.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %stringify_nodemap.exit178

stringify_nodemap.exit.while.body.i176_crit_edge: ; preds = %stringify_nodemap.exit
  br label %while.body.i176

while.body.i176:                                  ; preds = %while.body.i176.while.body.i176_crit_edge, %stringify_nodemap.exit.while.body.i176_crit_edge
  %call5.i167 = phi i32 [ %call.i174, %while.body.i176.while.body.i176_crit_edge ], [ %call2.i165, %stringify_nodemap.exit.while.body.i176_crit_edge ]
  %out.04.i168 = phi i32 [ %add2.i172, %while.body.i176.while.body.i176_crit_edge ], [ 0, %stringify_nodemap.exit.while.body.i176_crit_edge ]
  %add.ptr.i169 = getelementptr i8, ptr %add.ptr36, i32 %out.04.i168
  %18 = add i32 %add34, %out.04.i168
  %sub.i170 = sub i32 %len, %18
  %call1.i171 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i169, i32 noundef %sub.i170, ptr noundef nonnull @.str.133, i32 noundef %call5.i167) #11
  %add2.i172 = add i32 %call1.i171, %out.04.i168
  %add.i173 = add nsw i32 %call5.i167, 1
  %call.i174 = tail call i32 @_find_next_bit_be(ptr noundef %vote_map, i32 noundef 255, i32 noundef %add.i173) #11
  %cmp.i175 = icmp slt i32 %call.i174, 255
  br i1 %cmp.i175, label %while.body.i176.while.body.i176_crit_edge, label %while.body.i176.stringify_nodemap.exit178_crit_edge

while.body.i176.stringify_nodemap.exit178_crit_edge: ; preds = %while.body.i176
  call void @__sanitizer_cov_trace_pc() #13
  br label %stringify_nodemap.exit178

while.body.i176.while.body.i176_crit_edge:        ; preds = %while.body.i176
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i176

stringify_nodemap.exit178:                        ; preds = %while.body.i176.stringify_nodemap.exit178_crit_edge, %stringify_nodemap.exit.stringify_nodemap.exit178_crit_edge
  %out.0.lcssa.i177 = phi i32 [ 0, %stringify_nodemap.exit.stringify_nodemap.exit178_crit_edge ], [ %add2.i172, %while.body.i176.stringify_nodemap.exit178_crit_edge ]
  %add39 = add i32 %out.0.lcssa.i177, %add34
  %add.ptr40 = getelementptr i8, ptr %buf, i32 %add39
  %sub41 = sub i32 %len, %add39
  %call42 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr40, i32 noundef %sub41, ptr noundef nonnull @.str.129) #11
  %add43 = add i32 %add39, %call42
  %add.ptr44 = getelementptr i8, ptr %buf, i32 %add43
  %sub45 = sub i32 %len, %add43
  %call46 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr44, i32 noundef %sub45, ptr noundef nonnull @.str.131) #11
  %add47 = add i32 %add43, %call46
  %response_map = getelementptr inbounds %struct.dlm_master_list_entry, ptr %mle, i32 0, i32 10
  %add.ptr49 = getelementptr i8, ptr %buf, i32 %add47
  %call2.i179 = tail call i32 @_find_next_bit_be(ptr noundef %response_map, i32 noundef 255, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call2.i179)
  %cmp3.i180 = icmp slt i32 %call2.i179, 255
  br i1 %cmp3.i180, label %stringify_nodemap.exit178.while.body.i190_crit_edge, label %stringify_nodemap.exit178.stringify_nodemap.exit192_crit_edge

stringify_nodemap.exit178.stringify_nodemap.exit192_crit_edge: ; preds = %stringify_nodemap.exit178
  call void @__sanitizer_cov_trace_pc() #13
  br label %stringify_nodemap.exit192

stringify_nodemap.exit178.while.body.i190_crit_edge: ; preds = %stringify_nodemap.exit178
  br label %while.body.i190

while.body.i190:                                  ; preds = %while.body.i190.while.body.i190_crit_edge, %stringify_nodemap.exit178.while.body.i190_crit_edge
  %call5.i181 = phi i32 [ %call.i188, %while.body.i190.while.body.i190_crit_edge ], [ %call2.i179, %stringify_nodemap.exit178.while.body.i190_crit_edge ]
  %out.04.i182 = phi i32 [ %add2.i186, %while.body.i190.while.body.i190_crit_edge ], [ 0, %stringify_nodemap.exit178.while.body.i190_crit_edge ]
  %add.ptr.i183 = getelementptr i8, ptr %add.ptr49, i32 %out.04.i182
  %19 = add i32 %add47, %out.04.i182
  %sub.i184 = sub i32 %len, %19
  %call1.i185 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i183, i32 noundef %sub.i184, ptr noundef nonnull @.str.133, i32 noundef %call5.i181) #11
  %add2.i186 = add i32 %call1.i185, %out.04.i182
  %add.i187 = add nsw i32 %call5.i181, 1
  %call.i188 = tail call i32 @_find_next_bit_be(ptr noundef %response_map, i32 noundef 255, i32 noundef %add.i187) #11
  %cmp.i189 = icmp slt i32 %call.i188, 255
  br i1 %cmp.i189, label %while.body.i190.while.body.i190_crit_edge, label %while.body.i190.stringify_nodemap.exit192_crit_edge

while.body.i190.stringify_nodemap.exit192_crit_edge: ; preds = %while.body.i190
  call void @__sanitizer_cov_trace_pc() #13
  br label %stringify_nodemap.exit192

while.body.i190.while.body.i190_crit_edge:        ; preds = %while.body.i190
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i190

stringify_nodemap.exit192:                        ; preds = %while.body.i190.stringify_nodemap.exit192_crit_edge, %stringify_nodemap.exit178.stringify_nodemap.exit192_crit_edge
  %out.0.lcssa.i191 = phi i32 [ 0, %stringify_nodemap.exit178.stringify_nodemap.exit192_crit_edge ], [ %add2.i186, %while.body.i190.stringify_nodemap.exit192_crit_edge ]
  %add52 = add i32 %out.0.lcssa.i191, %add47
  %add.ptr53 = getelementptr i8, ptr %buf, i32 %add52
  %sub54 = sub i32 %len, %add52
  %call55 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr53, i32 noundef %sub54, ptr noundef nonnull @.str.129) #11
  %add56 = add i32 %add52, %call55
  %add.ptr57 = getelementptr i8, ptr %buf, i32 %add56
  %sub58 = sub i32 %len, %add56
  %call59 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr57, i32 noundef %sub58, ptr noundef nonnull @.str.132) #11
  %add60 = add i32 %add56, %call59
  %node_map = getelementptr inbounds %struct.dlm_master_list_entry, ptr %mle, i32 0, i32 11
  %add.ptr62 = getelementptr i8, ptr %buf, i32 %add60
  %call2.i193 = tail call i32 @_find_next_bit_be(ptr noundef %node_map, i32 noundef 255, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call2.i193)
  %cmp3.i194 = icmp slt i32 %call2.i193, 255
  br i1 %cmp3.i194, label %stringify_nodemap.exit192.while.body.i204_crit_edge, label %stringify_nodemap.exit192.stringify_nodemap.exit206_crit_edge

stringify_nodemap.exit192.stringify_nodemap.exit206_crit_edge: ; preds = %stringify_nodemap.exit192
  call void @__sanitizer_cov_trace_pc() #13
  br label %stringify_nodemap.exit206

stringify_nodemap.exit192.while.body.i204_crit_edge: ; preds = %stringify_nodemap.exit192
  br label %while.body.i204

while.body.i204:                                  ; preds = %while.body.i204.while.body.i204_crit_edge, %stringify_nodemap.exit192.while.body.i204_crit_edge
  %call5.i195 = phi i32 [ %call.i202, %while.body.i204.while.body.i204_crit_edge ], [ %call2.i193, %stringify_nodemap.exit192.while.body.i204_crit_edge ]
  %out.04.i196 = phi i32 [ %add2.i200, %while.body.i204.while.body.i204_crit_edge ], [ 0, %stringify_nodemap.exit192.while.body.i204_crit_edge ]
  %add.ptr.i197 = getelementptr i8, ptr %add.ptr62, i32 %out.04.i196
  %20 = add i32 %add60, %out.04.i196
  %sub.i198 = sub i32 %len, %20
  %call1.i199 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i197, i32 noundef %sub.i198, ptr noundef nonnull @.str.133, i32 noundef %call5.i195) #11
  %add2.i200 = add i32 %call1.i199, %out.04.i196
  %add.i201 = add nsw i32 %call5.i195, 1
  %call.i202 = tail call i32 @_find_next_bit_be(ptr noundef %node_map, i32 noundef 255, i32 noundef %add.i201) #11
  %cmp.i203 = icmp slt i32 %call.i202, 255
  br i1 %cmp.i203, label %while.body.i204.while.body.i204_crit_edge, label %while.body.i204.stringify_nodemap.exit206_crit_edge

while.body.i204.stringify_nodemap.exit206_crit_edge: ; preds = %while.body.i204
  call void @__sanitizer_cov_trace_pc() #13
  br label %stringify_nodemap.exit206

while.body.i204.while.body.i204_crit_edge:        ; preds = %while.body.i204
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i204

stringify_nodemap.exit206:                        ; preds = %while.body.i204.stringify_nodemap.exit206_crit_edge, %stringify_nodemap.exit192.stringify_nodemap.exit206_crit_edge
  %out.0.lcssa.i205 = phi i32 [ 0, %stringify_nodemap.exit192.stringify_nodemap.exit206_crit_edge ], [ %add2.i200, %while.body.i204.stringify_nodemap.exit206_crit_edge ]
  %add65 = add i32 %out.0.lcssa.i205, %add60
  %add.ptr66 = getelementptr i8, ptr %buf, i32 %add65
  %sub67 = sub i32 %len, %add65
  %call68 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr66, i32 noundef %sub67, ptr noundef nonnull @.str.129) #11
  %add69 = add i32 %add65, %call68
  %add.ptr70 = getelementptr i8, ptr %buf, i32 %add69
  %sub71 = sub i32 %len, %add69
  %call72 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr70, i32 noundef %sub71, ptr noundef nonnull @.str.129) #11
  %add73 = add i32 %add69, %call72
  ret i32 %add73
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_debug_init(ptr noundef %dlm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dlm_debugfs_subroot = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 29
  %0 = ptrtoint ptr %dlm_debugfs_subroot to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dlm_debugfs_subroot, align 4
  %call = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.23, i16 noundef zeroext -32512, ptr noundef %1, ptr noundef %dlm, ptr noundef nonnull @debug_state_fops) #11
  %2 = ptrtoint ptr %dlm_debugfs_subroot to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dlm_debugfs_subroot, align 4
  %call2 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.24, i16 noundef zeroext -32512, ptr noundef %3, ptr noundef %dlm, ptr noundef nonnull @debug_lockres_fops) #11
  %4 = ptrtoint ptr %dlm_debugfs_subroot to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dlm_debugfs_subroot, align 4
  %call4 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.25, i16 noundef zeroext -32512, ptr noundef %5, ptr noundef %dlm, ptr noundef nonnull @debug_mle_fops) #11
  %6 = ptrtoint ptr %dlm_debugfs_subroot to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dlm_debugfs_subroot, align 4
  %call6 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.26, i16 noundef zeroext -32512, ptr noundef %7, ptr noundef %dlm, ptr noundef nonnull @debug_purgelist_fops) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_create_debugfs_subroot(ptr nocapture noundef %dlm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 11
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 4
  %2 = load ptr, ptr @dlm_debugfs_root, align 4
  %call = tail call ptr @debugfs_create_dir(ptr noundef %1, ptr noundef %2) #11
  %dlm_debugfs_subroot = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 29
  %3 = ptrtoint ptr %dlm_debugfs_subroot to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %dlm_debugfs_subroot, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_destroy_debugfs_subroot(ptr nocapture noundef readonly %dlm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dlm_debugfs_subroot = getelementptr inbounds %struct.dlm_ctxt, ptr %dlm, i32 0, i32 29
  %0 = ptrtoint ptr %dlm_debugfs_subroot to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dlm_debugfs_subroot, align 4
  tail call void @debugfs_remove(ptr noundef %1) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_create_debugfs_root() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.27, ptr noundef null) #11
  store ptr %call, ptr @dlm_debugfs_root, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_destroy_debugfs_root() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @dlm_debugfs_root, align 4
  tail call void @debugfs_remove(ptr noundef %0) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @debug_read(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %nbytes, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %f_mapping = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 18
  %2 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_mapping, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %i_size_seqcount.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 23
  %dep_map.c48.i.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 23, i32 1
  %i_size18.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 14
  br label %do.body.i

do.body.i:                                        ; preds = %while.end.i.do.body.i_crit_edge, %entry
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !387
  %and.i.i.i = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body24.critedge.i.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @trace_hardirqs_off() #11
  %7 = tail call ptr @llvm.returnaddress(i32 0) #11
  %8 = ptrtoint ptr %7 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %8) #11
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %8) #11
  tail call void @trace_hardirqs_on() #11
  br label %do.body24.i.i

do.body24.critedge.i.i:                           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call ptr @llvm.returnaddress(i32 0) #11
  %10 = ptrtoint ptr %9 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %10) #11
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %10) #11
  br label %do.body24.i.i

do.body24.i.i:                                    ; preds = %do.body24.critedge.i.i, %if.then.i.i
  %11 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !388
  %and.i.i.i.i = and i32 %11, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge, !prof !384

do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge: ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %seqcount_lockdep_reader_access.exit.i

if.then36.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %seqcount_lockdep_reader_access.exit.i

seqcount_lockdep_reader_access.exit.i:            ; preds = %if.then36.i.i, %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %6) #11, !srcloc !389
  %12 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and29.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool.not30.i = icmp eq i32 %and29.i, 0
  br i1 %tobool.not30.i, label %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge, label %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge

seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  br label %do.end.i

seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !390
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !391
  %14 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and.i = and i32 %15, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i.while.end.i_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

do.end.i.while.end.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

while.end.i:                                      ; preds = %do.end.i.while.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge
  %.lcssa.i = phi i32 [ %13, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge ], [ %15, %do.end.i.while.end.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !392
  %16 = ptrtoint ptr %i_size18.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %i_size18.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !393
  %18 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %cmp.i.i.not.i = icmp eq i32 %19, %.lcssa.i
  br i1 %cmp.i.i.not.i, label %i_size_read.exit, label %while.end.i.do.body.i_crit_edge

while.end.i.do.body.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

i_size_read.exit:                                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv = trunc i64 %17 to i32
  %call1 = tail call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %nbytes, ptr noundef %ppos, ptr noundef %1, i32 noundef %conv) #11
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @debug_state_open(ptr noundef %inode, ptr nocapture noundef writeonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @get_zeroed_page(i32 noundef 3136) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = inttoptr i32 %call to ptr
  %spinlock.i = getelementptr inbounds %struct.dlm_ctxt, ptr %1, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %spinlock.i) #11
  %dlm_state.i = getelementptr inbounds %struct.dlm_ctxt, ptr %1, i32 0, i32 31
  %3 = ptrtoint ptr %dlm_state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dlm_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %5 = icmp ult i32 %4, 4
  br i1 %5, label %switch.lookup, label %if.end.sw.epilog.i_crit_edge

if.end.sw.epilog.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.debug_state_open, i32 0, i32 %4
  %6 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %switch.lookup, %if.end.sw.epilog.i_crit_edge
  %state.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.139, %if.end.sw.epilog.i_crit_edge ]
  %name.i = getelementptr inbounds %struct.dlm_ctxt, ptr %1, i32 0, i32 11
  %7 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name.i, align 4
  %key.i = getelementptr inbounds %struct.dlm_ctxt, ptr %1, i32 0, i32 13
  %9 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %key.i, align 4
  %dlm_locking_proto.i = getelementptr inbounds %struct.dlm_ctxt, ptr %1, i32 0, i32 48
  %11 = ptrtoint ptr %dlm_locking_proto.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %dlm_locking_proto.i, align 2
  %conv.i = zext i8 %12 to i32
  %pv_minor.i = getelementptr inbounds %struct.dlm_ctxt, ptr %1, i32 0, i32 48, i32 1
  %13 = ptrtoint ptr %pv_minor.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %pv_minor.i, align 1
  %conv5.i = zext i8 %14 to i32
  %call.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %2, i32 noundef 4095, ptr noundef nonnull @.str.140, ptr noundef %8, i32 noundef %10, i32 noundef %conv.i, i32 noundef %conv5.i) #11
  %add.ptr6.i = getelementptr i8, ptr %2, i32 %call.i
  %sub7.i = sub i32 4095, %call.i
  %dlm_thread_task.i = getelementptr inbounds %struct.dlm_ctxt, ptr %1, i32 0, i32 35
  %15 = ptrtoint ptr %dlm_thread_task.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dlm_thread_task.i, align 4
  %pid.i.i = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 68
  %17 = ptrtoint ptr %pid.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pid.i.i, align 8
  %node_num.i = getelementptr inbounds %struct.dlm_ctxt, ptr %1, i32 0, i32 12
  %19 = ptrtoint ptr %node_num.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %node_num.i, align 4
  %conv9.i = zext i8 %20 to i32
  %call10.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr6.i, i32 noundef %sub7.i, ptr noundef nonnull @.str.141, i32 noundef %18, i32 noundef %conv9.i, ptr noundef nonnull %state.0.i) #11
  %add11.i = add i32 %call10.i, %call.i
  %add.ptr12.i = getelementptr i8, ptr %2, i32 %add11.i
  %sub13.i = sub i32 4095, %add11.i
  %num_joins.i = getelementptr inbounds %struct.dlm_ctxt, ptr %1, i32 0, i32 32
  %21 = ptrtoint ptr %num_joins.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_joins.i, align 4
  %joining_node.i = getelementptr inbounds %struct.dlm_ctxt, ptr %1, i32 0, i32 14
  %23 = ptrtoint ptr %joining_node.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %joining_node.i, align 4
  %conv14.i = zext i8 %24 to i32
  %call15.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr12.i, i32 noundef %sub13.i, ptr noundef nonnull @.str.142, i32 noundef %22, i32 noundef %conv14.i) #11
  %add16.i = add i32 %call15.i, %add11.i
  %add.ptr17.i = getelementptr i8, ptr %2, i32 %add16.i
  %sub18.i = sub i32 4095, %add16.i
  %call19.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr17.i, i32 noundef %sub18.i, ptr noundef nonnull @.str.143) #11
  %add20.i = add i32 %add16.i, %call19.i
  %domain_map.i = getelementptr inbounds %struct.dlm_ctxt, ptr %1, i32 0, i32 18
  %add.ptr21.i = getelementptr i8, ptr %2, i32 %add20.i
  %call2.i.i = tail call i32 @_find_next_bit_be(ptr noundef %domain_map.i, i32 noundef 255, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call2.i.i)
  %cmp3.i.i = icmp slt i32 %call2.i.i, 255
  br i1 %cmp3.i.i, label %sw.epilog.i.while.body.i.i_crit_edge, label %sw.epilog.i.stringify_nodemap.exit.i_crit_edge

sw.epilog.i.stringify_nodemap.exit.i_crit_edge:   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %stringify_nodemap.exit.i

sw.epilog.i.while.body.i.i_crit_edge:             ; preds = %sw.epilog.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %sw.epilog.i.while.body.i.i_crit_edge
  %call5.i.i = phi i32 [ %call.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %call2.i.i, %sw.epilog.i.while.body.i.i_crit_edge ]
  %out.04.i.i = phi i32 [ %add2.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ 0, %sw.epilog.i.while.body.i.i_crit_edge ]
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr21.i, i32 %out.04.i.i
  %25 = add i32 %add20.i, %out.04.i.i
  %sub.i.i = sub i32 4095, %25
  %call1.i.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @.str.133, i32 noundef %call5.i.i) #11
  %add2.i.i = add i32 %call1.i.i, %out.04.i.i
  %add.i.i = add nsw i32 %call5.i.i, 1
  %call.i.i = tail call i32 @_find_next_bit_be(ptr noundef %domain_map.i, i32 noundef 255, i32 noundef %add.i.i) #11
  %cmp.i.i = icmp slt i32 %call.i.i, 255
  br i1 %cmp.i.i, label %while.body.i.i.while.body.i.i_crit_edge, label %while.body.i.i.stringify_nodemap.exit.i_crit_edge

while.body.i.i.stringify_nodemap.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %stringify_nodemap.exit.i

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i.i

stringify_nodemap.exit.i:                         ; preds = %while.body.i.i.stringify_nodemap.exit.i_crit_edge, %sw.epilog.i.stringify_nodemap.exit.i_crit_edge
  %out.0.lcssa.i.i = phi i32 [ 0, %sw.epilog.i.stringify_nodemap.exit.i_crit_edge ], [ %add2.i.i, %while.body.i.i.stringify_nodemap.exit.i_crit_edge ]
  %add24.i = add i32 %out.0.lcssa.i.i, %add20.i
  %add.ptr25.i = getelementptr i8, ptr %2, i32 %add24.i
  %sub26.i = sub i32 4095, %add24.i
  %call27.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr25.i, i32 noundef %sub26.i, ptr noundef nonnull @.str.129) #11
  %add28.i = add i32 %add24.i, %call27.i
  %add.ptr29.i = getelementptr i8, ptr %2, i32 %add28.i
  %sub30.i = sub i32 4095, %add28.i
  %call31.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr29.i, i32 noundef %sub30.i, ptr noundef nonnull @.str.144) #11
  %add32.i = add i32 %add28.i, %call31.i
  %exit_domain_map.i = getelementptr inbounds %struct.dlm_ctxt, ptr %1, i32 0, i32 19
  %add.ptr34.i = getelementptr i8, ptr %2, i32 %add32.i
  %call2.i10.i = tail call i32 @_find_next_bit_be(ptr noundef %exit_domain_map.i, i32 noundef 255, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call2.i10.i)
  %cmp3.i11.i = icmp slt i32 %call2.i10.i, 255
  br i1 %cmp3.i11.i, label %stringify_nodemap.exit.i.while.body.i21.i_crit_edge, label %stringify_nodemap.exit.i.stringify_nodemap.exit23.i_crit_edge

stringify_nodemap.exit.i.stringify_nodemap.exit23.i_crit_edge: ; preds = %stringify_nodemap.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %stringify_nodemap.exit23.i

stringify_nodemap.exit.i.while.body.i21.i_crit_edge: ; preds = %stringify_nodemap.exit.i
  br label %while.body.i21.i

while.body.i21.i:                                 ; preds = %while.body.i21.i.while.body.i21.i_crit_edge, %stringify_nodemap.exit.i.while.body.i21.i_crit_edge
  %call5.i12.i = phi i32 [ %call.i19.i, %while.body.i21.i.while.body.i21.i_crit_edge ], [ %call2.i10.i, %stringify_nodemap.exit.i.while.body.i21.i_crit_edge ]
  %out.04.i13.i = phi i32 [ %add2.i17.i, %while.body.i21.i.while.body.i21.i_crit_edge ], [ 0, %stringify_nodemap.exit.i.while.body.i21.i_crit_edge ]
  %add.ptr.i14.i = getelementptr i8, ptr %add.ptr34.i, i32 %out.04.i13.i
  %26 = add i32 %add32.i, %out.04.i13.i
  %sub.i15.i = sub i32 4095, %26
  %call1.i16.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i14.i, i32 noundef %sub.i15.i, ptr noundef nonnull @.str.133, i32 noundef %call5.i12.i) #11
  %add2.i17.i = add i32 %call1.i16.i, %out.04.i13.i
  %add.i18.i = add nsw i32 %call5.i12.i, 1
  %call.i19.i = tail call i32 @_find_next_bit_be(ptr noundef %exit_domain_map.i, i32 noundef 255, i32 noundef %add.i18.i) #11
  %cmp.i20.i = icmp slt i32 %call.i19.i, 255
  br i1 %cmp.i20.i, label %while.body.i21.i.while.body.i21.i_crit_edge, label %while.body.i21.i.stringify_nodemap.exit23.i_crit_edge

while.body.i21.i.stringify_nodemap.exit23.i_crit_edge: ; preds = %while.body.i21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %stringify_nodemap.exit23.i

while.body.i21.i.while.body.i21.i_crit_edge:      ; preds = %while.body.i21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i21.i

stringify_nodemap.exit23.i:                       ; preds = %while.body.i21.i.stringify_nodemap.exit23.i_crit_edge, %stringify_nodemap.exit.i.stringify_nodemap.exit23.i_crit_edge
  %out.0.lcssa.i22.i = phi i32 [ 0, %stringify_nodemap.exit.i.stringify_nodemap.exit23.i_crit_edge ], [ %add2.i17.i, %while.body.i21.i.stringify_nodemap.exit23.i_crit_edge ]
  %add37.i = add i32 %out.0.lcssa.i22.i, %add32.i
  %add.ptr38.i = getelementptr i8, ptr %2, i32 %add37.i
  %sub39.i = sub i32 4095, %add37.i
  %call40.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr38.i, i32 noundef %sub39.i, ptr noundef nonnull @.str.129) #11
  %add41.i = add i32 %add37.i, %call40.i
  %add.ptr42.i = getelementptr i8, ptr %2, i32 %add41.i
  %sub43.i = sub i32 4095, %add41.i
  %call44.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr42.i, i32 noundef %sub43.i, ptr noundef nonnull @.str.145) #11
  %add45.i = add i32 %add41.i, %call44.i
  %live_nodes_map.i = getelementptr inbounds %struct.dlm_ctxt, ptr %1, i32 0, i32 17
  %add.ptr47.i = getelementptr i8, ptr %2, i32 %add45.i
  %call2.i24.i = tail call i32 @_find_next_bit_be(ptr noundef %live_nodes_map.i, i32 noundef 255, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call2.i24.i)
  %cmp3.i25.i = icmp slt i32 %call2.i24.i, 255
  br i1 %cmp3.i25.i, label %stringify_nodemap.exit23.i.while.body.i35.i_crit_edge, label %stringify_nodemap.exit23.i.stringify_nodemap.exit37.i_crit_edge

stringify_nodemap.exit23.i.stringify_nodemap.exit37.i_crit_edge: ; preds = %stringify_nodemap.exit23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %stringify_nodemap.exit37.i

stringify_nodemap.exit23.i.while.body.i35.i_crit_edge: ; preds = %stringify_nodemap.exit23.i
  br label %while.body.i35.i

while.body.i35.i:                                 ; preds = %while.body.i35.i.while.body.i35.i_crit_edge, %stringify_nodemap.exit23.i.while.body.i35.i_crit_edge
  %call5.i26.i = phi i32 [ %call.i33.i, %while.body.i35.i.while.body.i35.i_crit_edge ], [ %call2.i24.i, %stringify_nodemap.exit23.i.while.body.i35.i_crit_edge ]
  %out.04.i27.i = phi i32 [ %add2.i31.i, %while.body.i35.i.while.body.i35.i_crit_edge ], [ 0, %stringify_nodemap.exit23.i.while.body.i35.i_crit_edge ]
  %add.ptr.i28.i = getelementptr i8, ptr %add.ptr47.i, i32 %out.04.i27.i
  %27 = add i32 %add45.i, %out.04.i27.i
  %sub.i29.i = sub i32 4095, %27
  %call1.i30.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i28.i, i32 noundef %sub.i29.i, ptr noundef nonnull @.str.133, i32 noundef %call5.i26.i) #11
  %add2.i31.i = add i32 %call1.i30.i, %out.04.i27.i
  %add.i32.i = add nsw i32 %call5.i26.i, 1
  %call.i33.i = tail call i32 @_find_next_bit_be(ptr noundef %live_nodes_map.i, i32 noundef 255, i32 noundef %add.i32.i) #11
  %cmp.i34.i = icmp slt i32 %call.i33.i, 255
  br i1 %cmp.i34.i, label %while.body.i35.i.while.body.i35.i_crit_edge, label %while.body.i35.i.stringify_nodemap.exit37.i_crit_edge

while.body.i35.i.stringify_nodemap.exit37.i_crit_edge: ; preds = %while.body.i35.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %stringify_nodemap.exit37.i

while.body.i35.i.while.body.i35.i_crit_edge:      ; preds = %while.body.i35.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i35.i

stringify_nodemap.exit37.i:                       ; preds = %while.body.i35.i.stringify_nodemap.exit37.i_crit_edge, %stringify_nodemap.exit23.i.stringify_nodemap.exit37.i_crit_edge
  %out.0.lcssa.i36.i = phi i32 [ 0, %stringify_nodemap.exit23.i.stringify_nodemap.exit37.i_crit_edge ], [ %add2.i31.i, %while.body.i35.i.stringify_nodemap.exit37.i_crit_edge ]
  %add50.i = add i32 %out.0.lcssa.i36.i, %add45.i
  %add.ptr51.i = getelementptr i8, ptr %2, i32 %add50.i
  %sub52.i = sub i32 4095, %add50.i
  %call53.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr51.i, i32 noundef %sub52.i, ptr noundef nonnull @.str.129) #11
  %add54.i = add i32 %add50.i, %call53.i
  %add.ptr55.i = getelementptr i8, ptr %2, i32 %add54.i
  %sub56.i = sub i32 4095, %add54.i
  %res_cur_count.i = getelementptr inbounds %struct.dlm_ctxt, ptr %1, i32 0, i32 28
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %res_cur_count.i, i32 noundef 4) #11
  %28 = ptrtoint ptr %res_cur_count.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %res_cur_count.i, align 4
  %res_tot_count.i = getelementptr inbounds %struct.dlm_ctxt, ptr %1, i32 0, i32 27
  %call.i.i1.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %res_tot_count.i, i32 noundef 4) #11
  %30 = ptrtoint ptr %res_tot_count.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %res_tot_count.i, align 4
  %call59.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr55.i, i32 noundef %sub56.i, ptr noundef nonnull @.str.146, i32 noundef %29, i32 noundef %31) #11
  %arrayidx.i = getelementptr %struct.dlm_ctxt, ptr %1, i32 0, i32 25, i32 0
  %call.i.i2.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i, i32 noundef 4) #11
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %arrayidx.i, align 4
  %arrayidx.1.i = getelementptr %struct.dlm_ctxt, ptr %1, i32 0, i32 25, i32 1
  %call.i.i2.1.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.1.i, i32 noundef 4) #11
  %34 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %arrayidx.1.i, align 4
  %add63.1.i = add i32 %35, %33
  %arrayidx.2.i = getelementptr %struct.dlm_ctxt, ptr %1, i32 0, i32 25, i32 2
  %call.i.i2.2.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.2.i, i32 noundef 4) #11
  %36 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %arrayidx.2.i, align 4
  %add63.2.i = add i32 %add63.1.i, %37
  %arrayidx68.i = getelementptr %struct.dlm_ctxt, ptr %1, i32 0, i32 26, i32 0
  %call.i.i3.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx68.i, i32 noundef 4) #11
  %38 = ptrtoint ptr %arrayidx68.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %arrayidx68.i, align 4
  %arrayidx68.1.i = getelementptr %struct.dlm_ctxt, ptr %1, i32 0, i32 26, i32 1
  %call.i.i3.1.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx68.1.i, i32 noundef 4) #11
  %40 = ptrtoint ptr %arrayidx68.1.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %arrayidx68.1.i, align 4
  %add70.1.i = add i32 %41, %39
  %arrayidx68.2.i = getelementptr %struct.dlm_ctxt, ptr %1, i32 0, i32 26, i32 2
  %call.i.i3.2.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx68.2.i, i32 noundef 4) #11
  %42 = ptrtoint ptr %arrayidx68.2.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %arrayidx68.2.i, align 4
  %add70.2.i = add i32 %add70.1.i, %43
  %add60.i = add i32 %call59.i, %add54.i
  %add.ptr74.i = getelementptr i8, ptr %2, i32 %add60.i
  %sub75.i = sub i32 4095, %add60.i
  %call76.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr74.i, i32 noundef %sub75.i, ptr noundef nonnull @.str.147, i32 noundef %add70.2.i, i32 noundef %add63.2.i) #11
  %add77.i = add i32 %call76.i, %add60.i
  %add.ptr78.i = getelementptr i8, ptr %2, i32 %add77.i
  %sub79.i = sub i32 4095, %add77.i
  %call.i.i4.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx68.i, i32 noundef 4) #11
  %44 = ptrtoint ptr %arrayidx68.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %arrayidx68.i, align 4
  %call.i.i5.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i, i32 noundef 4) #11
  %46 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %arrayidx.i, align 4
  %call86.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr78.i, i32 noundef %sub79.i, ptr noundef nonnull @.str.148, i32 noundef %45, i32 noundef %47) #11
  %add87.i = add i32 %call86.i, %add77.i
  %add.ptr88.i = getelementptr i8, ptr %2, i32 %add87.i
  %sub89.i = sub i32 4095, %add87.i
  %call.i.i6.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx68.1.i, i32 noundef 4) #11
  %48 = ptrtoint ptr %arrayidx68.1.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %arrayidx68.1.i, align 4
  %call.i.i7.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.1.i, i32 noundef 4) #11
  %50 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %arrayidx.1.i, align 4
  %call96.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr88.i, i32 noundef %sub89.i, ptr noundef nonnull @.str.149, i32 noundef %49, i32 noundef %51) #11
  %add97.i = add i32 %call96.i, %add87.i
  %add.ptr98.i = getelementptr i8, ptr %2, i32 %add97.i
  %sub99.i = sub i32 4095, %add97.i
  %call.i.i8.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx68.2.i, i32 noundef 4) #11
  %52 = ptrtoint ptr %arrayidx68.2.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %arrayidx68.2.i, align 4
  %call.i.i9.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.2.i, i32 noundef 4) #11
  %54 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %arrayidx.2.i, align 4
  %call106.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr98.i, i32 noundef %sub99.i, ptr noundef nonnull @.str.150, i32 noundef %53, i32 noundef %55) #11
  %add107.i = add i32 %call106.i, %add97.i
  %add.ptr108.i = getelementptr i8, ptr %2, i32 %add107.i
  %sub109.i = sub i32 4095, %add107.i
  %dirty_list.i = getelementptr inbounds %struct.dlm_ctxt, ptr %1, i32 0, i32 2
  %56 = ptrtoint ptr %dirty_list.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile ptr, ptr %dirty_list.i, align 4
  %cmp.i38.not.i = icmp eq ptr %57, %dirty_list.i
  %cond.i = select i1 %cmp.i38.not.i, ptr @.str.152, ptr @.str.153
  %purge_list.i = getelementptr inbounds %struct.dlm_ctxt, ptr %1, i32 0, i32 3
  %58 = ptrtoint ptr %purge_list.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile ptr, ptr %purge_list.i, align 4
  %cmp.i39.not.i = icmp eq ptr %59, %purge_list.i
  %cond113.i = select i1 %cmp.i39.not.i, ptr @.str.152, ptr @.str.153
  %pending_asts.i = getelementptr inbounds %struct.dlm_ctxt, ptr %1, i32 0, i32 4
  %60 = ptrtoint ptr %pending_asts.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile ptr, ptr %pending_asts.i, align 4
  %cmp.i41.not.i = icmp eq ptr %61, %pending_asts.i
  %cond116.i = select i1 %cmp.i41.not.i, ptr @.str.152, ptr @.str.153
  %pending_basts.i = getelementptr inbounds %struct.dlm_ctxt, ptr %1, i32 0, i32 5
  %62 = ptrtoint ptr %pending_basts.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile ptr, ptr %pending_basts.i, align 4
  %cmp.i43.not.i = icmp eq ptr %63, %pending_basts.i
  %cond119.i = select i1 %cmp.i43.not.i, ptr @.str.152, ptr @.str.153
  %call120.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr108.i, i32 noundef %sub109.i, ptr noundef nonnull @.str.151, ptr noundef nonnull %cond.i, ptr noundef nonnull %cond113.i, ptr noundef nonnull %cond116.i, ptr noundef nonnull %cond119.i) #11
  %add121.i = add i32 %call120.i, %add107.i
  %add.ptr122.i = getelementptr i8, ptr %2, i32 %add121.i
  %sub123.i = sub i32 4095, %add121.i
  %purge_count.i = getelementptr inbounds %struct.dlm_ctxt, ptr %1, i32 0, i32 7
  %64 = ptrtoint ptr %purge_count.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %purge_count.i, align 4
  %dlm_refs.i = getelementptr inbounds %struct.dlm_ctxt, ptr %1, i32 0, i32 30
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dlm_refs.i, i32 noundef 4) #11
  %66 = ptrtoint ptr %dlm_refs.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %dlm_refs.i, align 4
  %call125.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr122.i, i32 noundef %sub123.i, ptr noundef nonnull @.str.154, i32 noundef %65, i32 noundef %67) #11
  %add126.i = add i32 %call125.i, %add121.i
  %add.ptr127.i = getelementptr i8, ptr %2, i32 %add126.i
  %sub128.i = sub i32 4095, %add126.i
  %dead_node.i = getelementptr inbounds %struct.dlm_ctxt, ptr %1, i32 0, i32 21, i32 3
  %68 = ptrtoint ptr %dead_node.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %dead_node.i, align 1
  %conv129.i = zext i8 %69 to i32
  %call130.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr127.i, i32 noundef %sub128.i, ptr noundef nonnull @.str.155, i32 noundef %conv129.i) #11
  %add131.i = add i32 %call130.i, %add126.i
  %state133.i = getelementptr inbounds %struct.dlm_ctxt, ptr %1, i32 0, i32 21, i32 4
  %70 = ptrtoint ptr %state133.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %state133.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %71)
  %cmp135.i = icmp eq i16 %71, 1
  %.str.156..str.157.i = select i1 %cmp135.i, ptr @.str.156, ptr @.str.157
  %add.ptr137.i = getelementptr i8, ptr %2, i32 %add131.i
  %sub138.i = sub i32 4095, %add131.i
  %dlm_reco_thread_task.i = getelementptr inbounds %struct.dlm_ctxt, ptr %1, i32 0, i32 36
  %72 = ptrtoint ptr %dlm_reco_thread_task.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dlm_reco_thread_task.i, align 4
  %pid.i45.i = getelementptr inbounds %struct.task_struct, ptr %73, i32 0, i32 68
  %74 = ptrtoint ptr %pid.i45.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %pid.i45.i, align 8
  %new_master.i = getelementptr inbounds %struct.dlm_ctxt, ptr %1, i32 0, i32 21, i32 2
  %76 = ptrtoint ptr %new_master.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %new_master.i, align 4
  %conv141.i = zext i8 %77 to i32
  %call142.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr137.i, i32 noundef %sub138.i, ptr noundef nonnull @.str.158, i32 noundef %75, i32 noundef %conv141.i, ptr noundef nonnull %.str.156..str.157.i) #11
  %add143.i = add i32 %call142.i, %add131.i
  %add.ptr144.i = getelementptr i8, ptr %2, i32 %add143.i
  %sub145.i = sub i32 4095, %add143.i
  %call146.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr144.i, i32 noundef %sub145.i, ptr noundef nonnull @.str.159) #11
  %add147.i = add i32 %add143.i, %call146.i
  %recovery_map.i = getelementptr inbounds %struct.dlm_ctxt, ptr %1, i32 0, i32 20
  %add.ptr149.i = getelementptr i8, ptr %2, i32 %add147.i
  %call2.i46.i = tail call i32 @_find_next_bit_be(ptr noundef %recovery_map.i, i32 noundef 255, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call2.i46.i)
  %cmp3.i47.i = icmp slt i32 %call2.i46.i, 255
  br i1 %cmp3.i47.i, label %stringify_nodemap.exit37.i.while.body.i57.i_crit_edge, label %stringify_nodemap.exit37.i.stringify_nodemap.exit59.i_crit_edge

stringify_nodemap.exit37.i.stringify_nodemap.exit59.i_crit_edge: ; preds = %stringify_nodemap.exit37.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %stringify_nodemap.exit59.i

stringify_nodemap.exit37.i.while.body.i57.i_crit_edge: ; preds = %stringify_nodemap.exit37.i
  br label %while.body.i57.i

while.body.i57.i:                                 ; preds = %while.body.i57.i.while.body.i57.i_crit_edge, %stringify_nodemap.exit37.i.while.body.i57.i_crit_edge
  %call5.i48.i = phi i32 [ %call.i55.i, %while.body.i57.i.while.body.i57.i_crit_edge ], [ %call2.i46.i, %stringify_nodemap.exit37.i.while.body.i57.i_crit_edge ]
  %out.04.i49.i = phi i32 [ %add2.i53.i, %while.body.i57.i.while.body.i57.i_crit_edge ], [ 0, %stringify_nodemap.exit37.i.while.body.i57.i_crit_edge ]
  %add.ptr.i50.i = getelementptr i8, ptr %add.ptr149.i, i32 %out.04.i49.i
  %78 = add i32 %add147.i, %out.04.i49.i
  %sub.i51.i = sub i32 4095, %78
  %call1.i52.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i50.i, i32 noundef %sub.i51.i, ptr noundef nonnull @.str.133, i32 noundef %call5.i48.i) #11
  %add2.i53.i = add i32 %call1.i52.i, %out.04.i49.i
  %add.i54.i = add nsw i32 %call5.i48.i, 1
  %call.i55.i = tail call i32 @_find_next_bit_be(ptr noundef %recovery_map.i, i32 noundef 255, i32 noundef %add.i54.i) #11
  %cmp.i56.i = icmp slt i32 %call.i55.i, 255
  br i1 %cmp.i56.i, label %while.body.i57.i.while.body.i57.i_crit_edge, label %while.body.i57.i.stringify_nodemap.exit59.i_crit_edge

while.body.i57.i.stringify_nodemap.exit59.i_crit_edge: ; preds = %while.body.i57.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %stringify_nodemap.exit59.i

while.body.i57.i.while.body.i57.i_crit_edge:      ; preds = %while.body.i57.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i57.i

stringify_nodemap.exit59.i:                       ; preds = %while.body.i57.i.stringify_nodemap.exit59.i_crit_edge, %stringify_nodemap.exit37.i.stringify_nodemap.exit59.i_crit_edge
  %out.0.lcssa.i58.i = phi i32 [ 0, %stringify_nodemap.exit37.i.stringify_nodemap.exit59.i_crit_edge ], [ %add2.i53.i, %while.body.i57.i.stringify_nodemap.exit59.i_crit_edge ]
  %add152.i = add i32 %out.0.lcssa.i58.i, %add147.i
  %add.ptr153.i = getelementptr i8, ptr %2, i32 %add152.i
  %sub154.i = sub i32 4095, %add152.i
  %call155.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr153.i, i32 noundef %sub154.i, ptr noundef nonnull @.str.129) #11
  %add156.i = add i32 %add152.i, %call155.i
  %add.ptr157.i = getelementptr i8, ptr %2, i32 %add156.i
  %sub158.i = sub i32 4095, %add156.i
  %call159.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr157.i, i32 noundef %sub158.i, ptr noundef nonnull @.str.160) #11
  %add160.i = add i32 %add156.i, %call159.i
  %node_data.i = getelementptr inbounds %struct.dlm_ctxt, ptr %1, i32 0, i32 21, i32 1
  %79 = ptrtoint ptr %node_data.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %.pn67.i = load ptr, ptr %node_data.i, align 4
  %cmp166.not68.i = icmp eq ptr %.pn67.i, %node_data.i
  br i1 %cmp166.not68.i, label %stringify_nodemap.exit59.i.debug_state_print.exit_crit_edge, label %stringify_nodemap.exit59.i.for.body168.i_crit_edge

stringify_nodemap.exit59.i.for.body168.i_crit_edge: ; preds = %stringify_nodemap.exit59.i
  br label %for.body168.i

stringify_nodemap.exit59.i.debug_state_print.exit_crit_edge: ; preds = %stringify_nodemap.exit59.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_state_print.exit

for.body168.i:                                    ; preds = %sw.epilog178.i.for.body168.i_crit_edge, %stringify_nodemap.exit59.i.for.body168.i_crit_edge
  %.pn70.i = phi ptr [ %.pn.i, %sw.epilog178.i.for.body168.i_crit_edge ], [ %.pn67.i, %stringify_nodemap.exit59.i.for.body168.i_crit_edge ]
  %out.069.i = phi i32 [ %add184.i, %sw.epilog178.i.for.body168.i_crit_edge ], [ %add160.i, %stringify_nodemap.exit59.i.for.body168.i_crit_edge ]
  %node.0.i = getelementptr i8, ptr %.pn70.i, i32 -8
  %80 = ptrtoint ptr %node.0.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %node.0.i, align 4
  %switch.tableidx = add i32 %81, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx)
  %82 = icmp ult i32 %switch.tableidx, 7
  br i1 %82, label %switch.lookup9, label %for.body168.i.sw.epilog178.i_crit_edge

for.body168.i.sw.epilog178.i_crit_edge:           ; preds = %for.body168.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog178.i

switch.lookup9:                                   ; preds = %for.body168.i
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep10 = getelementptr inbounds [7 x ptr], ptr @switch.table.debug_state_open.183, i32 0, i32 %switch.tableidx
  %83 = ptrtoint ptr %switch.gep10 to i32
  call void @__asan_load4_noabort(i32 %83)
  %switch.load11 = load ptr, ptr %switch.gep10, align 4
  br label %sw.epilog178.i

sw.epilog178.i:                                   ; preds = %switch.lookup9, %for.body168.i.sw.epilog178.i_crit_edge
  %state.2.i = phi ptr [ %switch.load11, %switch.lookup9 ], [ @.str.168, %for.body168.i.sw.epilog178.i_crit_edge ]
  %add.ptr179.i = getelementptr i8, ptr %2, i32 %out.069.i
  %sub180.i = sub i32 4095, %out.069.i
  %node_num181.i = getelementptr i8, ptr %.pn70.i, i32 -4
  %84 = ptrtoint ptr %node_num181.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %node_num181.i, align 4
  %conv182.i = zext i8 %85 to i32
  %call183.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr179.i, i32 noundef %sub180.i, ptr noundef nonnull @.str.169, i32 noundef %conv182.i, ptr noundef nonnull %state.2.i) #11
  %add184.i = add i32 %call183.i, %out.069.i
  %86 = ptrtoint ptr %.pn70.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %.pn.i = load ptr, ptr %.pn70.i, align 4
  %cmp166.not.i = icmp eq ptr %.pn.i, %node_data.i
  br i1 %cmp166.not.i, label %sw.epilog178.i.debug_state_print.exit_crit_edge, label %sw.epilog178.i.for.body168.i_crit_edge

sw.epilog178.i.for.body168.i_crit_edge:           ; preds = %sw.epilog178.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body168.i

sw.epilog178.i.debug_state_print.exit_crit_edge:  ; preds = %sw.epilog178.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_state_print.exit

debug_state_print.exit:                           ; preds = %sw.epilog178.i.debug_state_print.exit_crit_edge, %stringify_nodemap.exit59.i.debug_state_print.exit_crit_edge
  %out.0.lcssa.i = phi i32 [ %add160.i, %stringify_nodemap.exit59.i.debug_state_print.exit_crit_edge ], [ %add184.i, %sw.epilog178.i.debug_state_print.exit_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %spinlock.i) #11
  %conv = sext i32 %out.0.lcssa.i to i64
  tail call fastcc void @i_size_write(ptr noundef %inode, i64 noundef %conv)
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %87 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %2, ptr %private_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %debug_state_print.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %debug_state_print.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @debug_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  tail call void @free_pages(i32 noundef %2, i32 noundef 0) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @i_size_write(ptr noundef %inode, i64 noundef %i_size) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = tail call i32 @llvm.read_register.i32(metadata !374) #11
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %3, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !394
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %entry.__seqprop_assert.exit_crit_edge, label %land.lhs.true.i

entry.__seqprop_assert.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %__seqprop_assert.exit

land.lhs.true.i:                                  ; preds = %entry
  %5 = tail call i32 @llvm.read_register.i32(metadata !374) #11
  %and.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %8, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !395
  %9 = tail call i32 @llvm.read_register.i32(metadata !374) #11
  %and.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 4
  %add.i28 = add i32 %14, ptrtoint (ptr @lockdep_recursion to i32)
  %15 = inttoptr i32 %add.i28 to ptr
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %15, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !396
  %18 = tail call i32 @llvm.read_register.i32(metadata !374) #11
  %and.i.i.i7.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i7.i to ptr
  %preempt_count.i.i8.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i8.i, align 4
  %sub.i.i = add i32 %21, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool20.not.i = icmp eq i32 %17, 0
  br i1 %tobool20.not.i, label %land.rhs.i, label %land.lhs.true.i.__seqprop_assert.exit_crit_edge

land.lhs.true.i.__seqprop_assert.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__seqprop_assert.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %22 = tail call i32 @llvm.read_register.i32(metadata !374) #11
  %and.i.i.i29 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i29 to ptr
  %preempt_count.i.i30 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i30 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.i = icmp eq i32 %25, 0
  br i1 %cmp.i, label %land.rhs22.i, label %land.rhs.i.__seqprop_assert.exit_crit_edge

land.rhs.i.__seqprop_assert.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__seqprop_assert.exit

land.rhs22.i:                                     ; preds = %land.rhs.i
  %26 = tail call i32 @llvm.read_register.i32(metadata !374) #11
  %and.i.i.i9.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i9.i to ptr
  %preempt_count.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i10.i, align 4
  %add.i11.i = add i32 %29, 1
  store volatile i32 %add.i11.i, ptr %preempt_count.i.i10.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !397
  %30 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cpu.i, align 4
  %arrayidx46.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %31
  %32 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx46.i, align 4
  %add47.i = add i32 %33, ptrtoint (ptr @hardirqs_enabled to i32)
  %34 = inttoptr i32 %add47.i to ptr
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %34, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !398
  %37 = tail call i32 @llvm.read_register.i32(metadata !374) #11
  %and.i.i.i12.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i12.i to ptr
  %preempt_count.i.i13.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %preempt_count.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %preempt_count.i.i13.i, align 4
  %sub.i14.i = add i32 %40, -1
  store volatile i32 %sub.i14.i, ptr %preempt_count.i.i13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool54.not.i = icmp eq i32 %36, 0
  br i1 %tobool54.not.i, label %land.rhs22.i.__seqprop_assert.exit_crit_edge, label %land.rhs58.i

land.rhs22.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__seqprop_assert.exit

land.rhs58.i:                                     ; preds = %land.rhs22.i
  %.b1.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i, label %land.rhs58.i.__seqprop_assert.exit_crit_edge, label %if.then.i, !prof !399

land.rhs58.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__seqprop_assert.exit

if.then.i:                                        ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.134, i32 noundef 271, i32 noundef 9, ptr noundef null) #11
  br label %__seqprop_assert.exit

__seqprop_assert.exit:                            ; preds = %if.then.i, %land.rhs58.i.__seqprop_assert.exit_crit_edge, %land.rhs22.i.__seqprop_assert.exit_crit_edge, %land.rhs.i.__seqprop_assert.exit_crit_edge, %land.lhs.true.i.__seqprop_assert.exit_crit_edge, %entry.__seqprop_assert.exit_crit_edge
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %41 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %i_size_seqcount, align 4
  %inc.i.i.i = add i32 %42, 1
  store i32 %inc.i.i.i, ptr %i_size_seqcount, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !400
  %dep_map.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %43 = tail call ptr @llvm.returnaddress(i32 0) #11
  %44 = ptrtoint ptr %43 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %44) #11
  %i_size8 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %45 = ptrtoint ptr %i_size8 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %i_size, ptr %i_size8, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %44) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !401
  %46 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %i_size_seqcount, align 4
  %inc.i.i = add i32 %47, 1
  store i32 %inc.i.i, ptr %i_size_seqcount, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !402
  %48 = tail call i32 @llvm.read_register.i32(metadata !374) #11
  %and.i.i.i26 = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i26 to ptr
  %preempt_count.i.i27 = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %preempt_count.i.i27 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %preempt_count.i.i27, align 4
  %sub.i = add i32 %51, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i27, align 4
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @debug_lockres_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 4096) #15
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %if.end

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @__seq_open_private(ptr noundef %file, ptr noundef nonnull @debug_lockres_ops, i32 noundef 16) #11
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %bailfree, label %if.end4

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 4096, ptr %call1, align 4
  %dl_buf = getelementptr inbounds %struct.debug_lockres, ptr %call1, i32 0, i32 1
  %4 = ptrtoint ptr %dl_buf to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i, ptr %dl_buf, align 4
  %call5 = tail call ptr @dlm_grab(ptr noundef %1) #11
  %dl_ctxt = getelementptr inbounds %struct.debug_lockres, ptr %call1, i32 0, i32 2
  %5 = ptrtoint ptr %dl_ctxt to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %1, ptr %dl_ctxt, align 4
  br label %cleanup

bailfree:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i) #11
  br label %do.body

do.body:                                          ; preds = %bailfree, %entry.do.body_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #11
  %6 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 1152921504606847040, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.debug_lockres_open, i32 noundef 635, ptr noundef nonnull @.str.170, i64 noundef -12) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #11
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.end4
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -12, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @debug_lockres_release(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  %dl_res = getelementptr inbounds %struct.debug_lockres, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dl_res to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dl_res, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dlm_lockres_put(ptr noundef nonnull %5) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dl_ctxt = getelementptr inbounds %struct.debug_lockres, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %dl_ctxt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dl_ctxt, align 4
  tail call void @dlm_put(ptr noundef %7) #11
  %dl_buf = getelementptr inbounds %struct.debug_lockres, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %dl_buf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dl_buf, align 4
  tail call void @kfree(ptr noundef %9) #11
  %call = tail call i32 @seq_release_private(ptr noundef %inode, ptr noundef %file) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__seq_open_private(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dlm_grab(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mlog_printk(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @lockres_seq_start(ptr nocapture noundef readonly %m, ptr nocapture noundef readnone %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %dl_ctxt = getelementptr inbounds %struct.debug_lockres, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dl_ctxt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dl_ctxt, align 4
  %dl_res = getelementptr inbounds %struct.debug_lockres, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %dl_res to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dl_res, align 4
  %track_lock = getelementptr inbounds %struct.dlm_ctxt, ptr %3, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %track_lock) #11
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %tracking = getelementptr inbounds %struct.dlm_lock_resource, ptr %5, i32 0, i32 9
  br label %if.end4

if.else:                                          ; preds = %entry
  %tracking_list = getelementptr inbounds %struct.dlm_ctxt, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %tracking_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %tracking_list, align 4
  %cmp.i.not = icmp eq ptr %7, %tracking_list
  br i1 %cmp.i.not, label %if.else.bail.sink.split_crit_edge, label %if.else.if.end4_crit_edge

if.else.if.end4_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.else.bail.sink.split_crit_edge:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %bail.sink.split

if.end4:                                          ; preds = %if.else.if.end4_crit_edge, %if.then
  %track_list.0 = phi ptr [ %tracking, %if.then ], [ %tracking_list, %if.else.if.end4_crit_edge ]
  %8 = ptrtoint ptr %track_list.0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %track_list.0, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 -76
  %cmp.not = icmp eq ptr %9, %track_list.0
  br i1 %cmp.not, label %if.end4.for.end_crit_edge, label %for.body

if.end4.for.end_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %if.end4
  %tracking_list7 = getelementptr inbounds %struct.dlm_ctxt, ptr %3, i32 0, i32 6
  %cmp8 = icmp eq ptr %9, %tracking_list7
  br i1 %cmp8, label %for.body.for.end_crit_edge, label %if.else10

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.else10:                                        ; preds = %for.body
  %refs.i = getelementptr i8, ptr %9, i32 -52
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %refs.i, i32 1, i32 3, i32 1) #11
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs.i, ptr %refs.i, i32 1, ptr elementtype(i32) %refs.i) #11, !srcloc !403
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.else10.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !384

if.else10.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.else10
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %11 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %.not.i.i.i.i.i = icmp sgt i32 %11, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.for.end_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !399

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.for.end_crit_edge:              ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.else10.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.else10.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refs.i, i32 noundef %.sink.i.i.i.i.i) #11
  br label %for.end

for.end:                                          ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.for.end_crit_edge, %for.body.for.end_crit_edge, %if.end4.for.end_crit_edge
  %res.0 = phi ptr [ %add.ptr, %if.end4.for.end_crit_edge ], [ null, %for.body.for.end_crit_edge ], [ %add.ptr, %if.else.i.i.i.i.i.for.end_crit_edge ], [ %add.ptr, %if.end15.sink.split.i.i.i.i.i ]
  tail call void @_raw_spin_unlock(ptr noundef %track_lock) #11
  br i1 %tobool.not, label %for.end.if.end20_crit_edge, label %if.then19

for.end.if.end20_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.then19:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dlm_lockres_put(ptr noundef nonnull %5) #11
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %for.end.if.end20_crit_edge
  %12 = ptrtoint ptr %dl_res to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %res.0, ptr %dl_res, align 4
  %tobool22.not = icmp eq ptr %res.0, null
  br i1 %tobool22.not, label %if.end20.bail_crit_edge, label %if.then23

if.end20.bail_crit_edge:                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %bail

if.then23:                                        ; preds = %if.end20
  %spinlock = getelementptr inbounds %struct.dlm_lock_resource, ptr %res.0, i32 0, i32 14
  tail call void @_raw_spin_lock(ptr noundef %spinlock) #11
  %dl_buf = getelementptr inbounds %struct.debug_lockres, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %dl_buf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dl_buf, align 4
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %1, align 4
  %sub = add i32 %16, -1
  %call.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %14, i32 noundef %sub, ptr noundef nonnull @.str.171) #11
  %name.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res.0, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %name.i, align 8
  %add.ptr3.i = getelementptr i8, ptr %14, i32 %call.i
  %sub4.i = sub i32 %sub, %call.i
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %18, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 78, i8 %20)
  %cmp.i.i = icmp eq i8 %20, 78
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.i = getelementptr i8, ptr %18, i32 18
  %21 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 8)
  %inode_blkno_be.0.copyload.i.i = load i64, ptr %arrayidx.i.i, align 1
  %conv2.i.i = trunc i64 %inode_blkno_be.0.copyload.i.i to i32
  %call.i.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr3.i, i32 noundef %sub4.i, ptr noundef nonnull @.str.122, i32 noundef 17, ptr noundef %18, i32 noundef %conv2.i.i) #11
  br label %stringify_lockname.exit.i

if.else.i.i:                                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  %lockname.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res.0, i32 0, i32 1
  %22 = ptrtoint ptr %lockname.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %lockname.i, align 8
  %call5.i.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr3.i, i32 noundef %sub4.i, ptr noundef nonnull @.str.123, i32 noundef %23, ptr noundef %18) #11
  br label %stringify_lockname.exit.i

stringify_lockname.exit.i:                        ; preds = %if.else.i.i, %if.then.i.i
  %out.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %call5.i.i, %if.else.i.i ]
  %add6.i = add i32 %out.0.i.i, %call.i
  %add.ptr7.i = getelementptr i8, ptr %14, i32 %add6.i
  %sub8.i = sub i32 %sub, %add6.i
  %call9.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr7.i, i32 noundef %sub8.i, ptr noundef nonnull @.str.129) #11
  %add10.i = add i32 %add6.i, %call9.i
  %add.ptr11.i = getelementptr i8, ptr %14, i32 %add10.i
  %sub12.i = sub i32 %sub, %add10.i
  %owner.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res.0, i32 0, i32 16
  %24 = ptrtoint ptr %owner.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %owner.i, align 4
  %conv.i49 = zext i8 %25 to i32
  %state.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res.0, i32 0, i32 17
  %26 = ptrtoint ptr %state.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %state.i, align 2
  %conv13.i = zext i16 %27 to i32
  %last_used.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res.0, i32 0, i32 10
  %28 = ptrtoint ptr %last_used.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %last_used.i, align 4
  %purge.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res.0, i32 0, i32 6
  %30 = ptrtoint ptr %purge.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %purge.i, align 4
  %cmp.i3.i = icmp ne ptr %31, %purge.i
  %lnot.ext.i = zext i1 %cmp.i3.i to i32
  %dirty.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res.0, i32 0, i32 7
  %32 = ptrtoint ptr %dirty.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %dirty.i, align 4
  %cmp.i4.i = icmp ne ptr %33, %dirty.i
  %lnot.ext18.i = zext i1 %cmp.i4.i to i32
  %recovering.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res.0, i32 0, i32 8
  %34 = ptrtoint ptr %recovering.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile ptr, ptr %recovering.i, align 4
  %cmp.i6.i = icmp ne ptr %35, %recovering.i
  %lnot.ext22.i = zext i1 %cmp.i6.i to i32
  %inflight_locks.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res.0, i32 0, i32 19
  %36 = ptrtoint ptr %inflight_locks.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %inflight_locks.i, align 8
  %migration_pending.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res.0, i32 0, i32 12
  %38 = ptrtoint ptr %migration_pending.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load.i = load i8, ptr %migration_pending.i, align 4
  %bf.lshr.i = lshr i8 %bf.load.i, 7
  %bf.cast.i = zext i8 %bf.lshr.i to i32
  %asts_reserved.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res.0, i32 0, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %asts_reserved.i, i32 noundef 4) #11
  %39 = ptrtoint ptr %asts_reserved.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %asts_reserved.i, align 4
  %refs.i50 = getelementptr inbounds %struct.dlm_lock_resource, ptr %res.0, i32 0, i32 2
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refs.i50, i32 noundef 4) #11
  %41 = ptrtoint ptr %refs.i50 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %refs.i50, align 4
  %call25.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr11.i, i32 noundef %sub12.i, ptr noundef nonnull @.str.172, i32 noundef 1, i32 noundef %conv.i49, i32 noundef %conv13.i, i32 noundef %29, i32 noundef %lnot.ext.i, i32 noundef %lnot.ext18.i, i32 noundef %lnot.ext22.i, i32 noundef %37, i32 noundef %bf.cast.i, i32 noundef %40, i32 noundef %42) #11
  %add26.i = add i32 %call25.i, %add10.i
  %add.ptr27.i = getelementptr i8, ptr %14, i32 %add26.i
  %sub28.i = sub i32 %sub, %add26.i
  %call29.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr27.i, i32 noundef %sub28.i, ptr noundef nonnull @.str.173) #11
  %add30.i = add i32 %add26.i, %call29.i
  %refmap.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res.0, i32 0, i32 21
  %add.ptr31.i = getelementptr i8, ptr %14, i32 %add30.i
  %call2.i.i = tail call i32 @_find_next_bit_be(ptr noundef %refmap.i, i32 noundef 255, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call2.i.i)
  %cmp3.i.i = icmp slt i32 %call2.i.i, 255
  br i1 %cmp3.i.i, label %stringify_lockname.exit.i.while.body.i.i_crit_edge, label %stringify_lockname.exit.i.stringify_nodemap.exit.i_crit_edge

stringify_lockname.exit.i.stringify_nodemap.exit.i_crit_edge: ; preds = %stringify_lockname.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %stringify_nodemap.exit.i

stringify_lockname.exit.i.while.body.i.i_crit_edge: ; preds = %stringify_lockname.exit.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %stringify_lockname.exit.i.while.body.i.i_crit_edge
  %call5.i8.i = phi i32 [ %call.i9.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %call2.i.i, %stringify_lockname.exit.i.while.body.i.i_crit_edge ]
  %out.04.i.i = phi i32 [ %add2.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ 0, %stringify_lockname.exit.i.while.body.i.i_crit_edge ]
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr31.i, i32 %out.04.i.i
  %43 = add i32 %add30.i, %out.04.i.i
  %sub.i.i = sub i32 %sub, %43
  %call1.i.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @.str.133, i32 noundef %call5.i8.i) #11
  %add2.i.i = add i32 %call1.i.i, %out.04.i.i
  %add.i.i = add nsw i32 %call5.i8.i, 1
  %call.i9.i = tail call i32 @_find_next_bit_be(ptr noundef %refmap.i, i32 noundef 255, i32 noundef %add.i.i) #11
  %cmp.i10.i = icmp slt i32 %call.i9.i, 255
  br i1 %cmp.i10.i, label %while.body.i.i.while.body.i.i_crit_edge, label %while.body.i.i.stringify_nodemap.exit.i_crit_edge

while.body.i.i.stringify_nodemap.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %stringify_nodemap.exit.i

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i.i

stringify_nodemap.exit.i:                         ; preds = %while.body.i.i.stringify_nodemap.exit.i_crit_edge, %stringify_lockname.exit.i.stringify_nodemap.exit.i_crit_edge
  %out.0.lcssa.i.i = phi i32 [ 0, %stringify_lockname.exit.i.stringify_nodemap.exit.i_crit_edge ], [ %add2.i.i, %while.body.i.i.stringify_nodemap.exit.i_crit_edge ]
  %add34.i = add i32 %out.0.lcssa.i.i, %add30.i
  %add.ptr35.i = getelementptr i8, ptr %14, i32 %add34.i
  %sub36.i = sub i32 %sub, %add34.i
  %call37.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr35.i, i32 noundef %sub36.i, ptr noundef nonnull @.str.129) #11
  %add38.i = add i32 %add34.i, %call37.i
  %add.ptr39.i = getelementptr i8, ptr %14, i32 %add38.i
  %sub40.i = sub i32 %sub, %add38.i
  %call41.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr39.i, i32 noundef %sub40.i, ptr noundef nonnull @.str.174) #11
  %add42.i = add i32 %add38.i, %call41.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %stringify_nodemap.exit.i
  %i.012.i = phi i32 [ 0, %stringify_nodemap.exit.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %out.011.i = phi i32 [ %add42.i, %stringify_nodemap.exit.i ], [ %add48.i, %for.body.i.for.body.i_crit_edge ]
  %add.ptr44.i = getelementptr i8, ptr %14, i32 %out.011.i
  %sub45.i = sub i32 %sub, %out.011.i
  %arrayidx.i = getelementptr %struct.dlm_lock_resource, ptr %res.0, i32 0, i32 18, i32 %i.012.i
  %44 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx.i, align 1
  %conv46.i = zext i8 %45 to i32
  %call47.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr44.i, i32 noundef %sub45.i, ptr noundef nonnull @.str.175, i32 noundef %conv46.i) #11
  %add48.i = add i32 %call47.i, %out.011.i
  %inc.i = add nuw nsw i32 %i.012.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 64
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  %add.ptr49.i = getelementptr i8, ptr %14, i32 %add48.i
  %sub50.i = sub i32 %sub, %add48.i
  %call51.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr49.i, i32 noundef %sub50.i, ptr noundef nonnull @.str.129) #11
  %add52.i = add i32 %call51.i, %add48.i
  %granted.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res.0, i32 0, i32 3
  %46 = ptrtoint ptr %granted.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %.pn13.i = load ptr, ptr %granted.i, align 4
  %cmp56.not14.i = icmp eq ptr %.pn13.i, %granted.i
  br i1 %cmp56.not14.i, label %for.end.i.for.end71.i_crit_edge, label %for.end.i.for.body60.i_crit_edge

for.end.i.for.body60.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body60.i

for.end.i.for.end71.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end71.i

for.body60.i:                                     ; preds = %for.body60.i.for.body60.i_crit_edge, %for.end.i.for.body60.i_crit_edge
  %.pn16.i = phi ptr [ %.pn.i, %for.body60.i.for.body60.i_crit_edge ], [ %.pn13.i, %for.end.i.for.body60.i_crit_edge ]
  %out.115.i = phi i32 [ %add64.i, %for.body60.i.for.body60.i_crit_edge ], [ %add52.i, %for.end.i.for.body60.i_crit_edge ]
  %lock.0.i = getelementptr i8, ptr %.pn16.i, i32 -16
  %add.ptr61.i = getelementptr i8, ptr %14, i32 %out.115.i
  %sub62.i = sub i32 %sub, %out.115.i
  %call63.i = tail call fastcc i32 @dump_lock(ptr noundef %lock.0.i, i32 noundef 0, ptr noundef %add.ptr61.i, i32 noundef %sub62.i) #11
  %add64.i = add i32 %call63.i, %out.115.i
  %47 = ptrtoint ptr %.pn16.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %.pn.i = load ptr, ptr %.pn16.i, align 4
  %cmp56.not.i = icmp eq ptr %.pn.i, %granted.i
  br i1 %cmp56.not.i, label %for.body60.i.for.end71.i_crit_edge, label %for.body60.i.for.body60.i_crit_edge

for.body60.i.for.body60.i_crit_edge:              ; preds = %for.body60.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body60.i

for.body60.i.for.end71.i_crit_edge:               ; preds = %for.body60.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end71.i

for.end71.i:                                      ; preds = %for.body60.i.for.end71.i_crit_edge, %for.end.i.for.end71.i_crit_edge
  %out.1.lcssa.i = phi i32 [ %add52.i, %for.end.i.for.end71.i_crit_edge ], [ %add64.i, %for.body60.i.for.end71.i_crit_edge ]
  %converting.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res.0, i32 0, i32 4
  %48 = ptrtoint ptr %converting.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %.pn117.i = load ptr, ptr %converting.i, align 4
  %cmp79.not18.i = icmp eq ptr %.pn117.i, %converting.i
  br i1 %cmp79.not18.i, label %for.end71.i.for.end94.i_crit_edge, label %for.end71.i.for.body83.i_crit_edge

for.end71.i.for.body83.i_crit_edge:               ; preds = %for.end71.i
  br label %for.body83.i

for.end71.i.for.end94.i_crit_edge:                ; preds = %for.end71.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end94.i

for.body83.i:                                     ; preds = %for.body83.i.for.body83.i_crit_edge, %for.end71.i.for.body83.i_crit_edge
  %.pn120.i = phi ptr [ %.pn1.i, %for.body83.i.for.body83.i_crit_edge ], [ %.pn117.i, %for.end71.i.for.body83.i_crit_edge ]
  %out.219.i = phi i32 [ %add87.i, %for.body83.i.for.body83.i_crit_edge ], [ %out.1.lcssa.i, %for.end71.i.for.body83.i_crit_edge ]
  %lock.1.i = getelementptr i8, ptr %.pn120.i, i32 -16
  %add.ptr84.i = getelementptr i8, ptr %14, i32 %out.219.i
  %sub85.i = sub i32 %sub, %out.219.i
  %call86.i = tail call fastcc i32 @dump_lock(ptr noundef %lock.1.i, i32 noundef 1, ptr noundef %add.ptr84.i, i32 noundef %sub85.i) #11
  %add87.i = add i32 %call86.i, %out.219.i
  %49 = ptrtoint ptr %.pn120.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %.pn1.i = load ptr, ptr %.pn120.i, align 4
  %cmp79.not.i = icmp eq ptr %.pn1.i, %converting.i
  br i1 %cmp79.not.i, label %for.body83.i.for.end94.i_crit_edge, label %for.body83.i.for.body83.i_crit_edge

for.body83.i.for.body83.i_crit_edge:              ; preds = %for.body83.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body83.i

for.body83.i.for.end94.i_crit_edge:               ; preds = %for.body83.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end94.i

for.end94.i:                                      ; preds = %for.body83.i.for.end94.i_crit_edge, %for.end71.i.for.end94.i_crit_edge
  %out.2.lcssa.i = phi i32 [ %out.1.lcssa.i, %for.end71.i.for.end94.i_crit_edge ], [ %add87.i, %for.body83.i.for.end94.i_crit_edge ]
  %blocked.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %res.0, i32 0, i32 5
  %50 = ptrtoint ptr %blocked.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %.pn222.i = load ptr, ptr %blocked.i, align 4
  %cmp102.not23.i = icmp eq ptr %.pn222.i, %blocked.i
  br i1 %cmp102.not23.i, label %for.end94.i.dump_lockres.exit_crit_edge, label %for.end94.i.for.body106.i_crit_edge

for.end94.i.for.body106.i_crit_edge:              ; preds = %for.end94.i
  br label %for.body106.i

for.end94.i.dump_lockres.exit_crit_edge:          ; preds = %for.end94.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dump_lockres.exit

for.body106.i:                                    ; preds = %for.body106.i.for.body106.i_crit_edge, %for.end94.i.for.body106.i_crit_edge
  %.pn225.i = phi ptr [ %.pn2.i, %for.body106.i.for.body106.i_crit_edge ], [ %.pn222.i, %for.end94.i.for.body106.i_crit_edge ]
  %out.324.i = phi i32 [ %add110.i, %for.body106.i.for.body106.i_crit_edge ], [ %out.2.lcssa.i, %for.end94.i.for.body106.i_crit_edge ]
  %lock.2.i = getelementptr i8, ptr %.pn225.i, i32 -16
  %add.ptr107.i = getelementptr i8, ptr %14, i32 %out.324.i
  %sub108.i = sub i32 %sub, %out.324.i
  %call109.i = tail call fastcc i32 @dump_lock(ptr noundef %lock.2.i, i32 noundef 2, ptr noundef %add.ptr107.i, i32 noundef %sub108.i) #11
  %add110.i = add i32 %call109.i, %out.324.i
  %51 = ptrtoint ptr %.pn225.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %.pn2.i = load ptr, ptr %.pn225.i, align 4
  %cmp102.not.i = icmp eq ptr %.pn2.i, %blocked.i
  br i1 %cmp102.not.i, label %for.body106.i.dump_lockres.exit_crit_edge, label %for.body106.i.for.body106.i_crit_edge

for.body106.i.for.body106.i_crit_edge:            ; preds = %for.body106.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body106.i

for.body106.i.dump_lockres.exit_crit_edge:        ; preds = %for.body106.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dump_lockres.exit

dump_lockres.exit:                                ; preds = %for.body106.i.dump_lockres.exit_crit_edge, %for.end94.i.dump_lockres.exit_crit_edge
  %out.3.lcssa.i = phi i32 [ %out.2.lcssa.i, %for.end94.i.dump_lockres.exit_crit_edge ], [ %add110.i, %for.body106.i.dump_lockres.exit_crit_edge ]
  %add.ptr118.i = getelementptr i8, ptr %14, i32 %out.3.lcssa.i
  %sub119.i = sub i32 %sub, %out.3.lcssa.i
  %call120.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr118.i, i32 noundef %sub119.i, ptr noundef nonnull @.str.129) #11
  br label %bail.sink.split

bail.sink.split:                                  ; preds = %dump_lockres.exit, %if.else.bail.sink.split_crit_edge
  %spinlock.sink = phi ptr [ %spinlock, %dump_lockres.exit ], [ %track_lock, %if.else.bail.sink.split_crit_edge ]
  %dl.0.ph = phi ptr [ %1, %dump_lockres.exit ], [ null, %if.else.bail.sink.split_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %spinlock.sink) #11
  br label %bail

bail:                                             ; preds = %bail.sink.split, %if.end20.bail_crit_edge
  %dl.0 = phi ptr [ null, %if.end20.bail_crit_edge ], [ %dl.0.ph, %bail.sink.split ]
  ret ptr %dl.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @lockres_seq_stop(ptr nocapture noundef %m, ptr nocapture noundef %v) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal noalias ptr @lockres_seq_next(ptr nocapture noundef readnone %m, ptr nocapture noundef readnone %v, ptr nocapture noundef readnone %pos) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr null
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lockres_seq_show(ptr noundef %s, ptr nocapture noundef readonly %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dl_buf = getelementptr inbounds %struct.debug_lockres, ptr %v, i32 0, i32 1
  %0 = ptrtoint ptr %dl_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dl_buf, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.177, ptr noundef %1) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_lockres_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dump_lock(ptr noundef %lock, i32 noundef %list_type, ptr noundef %buf, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %spinlock = getelementptr inbounds %struct.dlm_lock, ptr %lock, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %spinlock) #11
  %type = getelementptr inbounds %struct.dlm_migratable_lock, ptr %lock, i32 0, i32 4
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %type, align 4
  %conv = sext i8 %1 to i32
  %convert_type = getelementptr inbounds %struct.dlm_migratable_lock, ptr %lock, i32 0, i32 5
  %2 = ptrtoint ptr %convert_type to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %convert_type, align 1
  %conv2 = sext i8 %3 to i32
  %node = getelementptr inbounds %struct.dlm_migratable_lock, ptr %lock, i32 0, i32 7
  %4 = ptrtoint ptr %node to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %node, align 1
  %conv4 = zext i8 %5 to i32
  %6 = ptrtoint ptr %lock to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %lock, align 8
  %shr.i = lshr i64 %7, 56
  %conv.i = trunc i64 %shr.i to i32
  %and.i = and i64 %7, 72057594037927935
  %ast_list = getelementptr inbounds %struct.dlm_lock, ptr %lock, i32 0, i32 2
  %8 = ptrtoint ptr %ast_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %ast_list, align 4
  %cmp.i = icmp ne ptr %9, %ast_list
  %lnot.ext = zext i1 %cmp.i to i32
  %bast_list = getelementptr inbounds %struct.dlm_lock, ptr %lock, i32 0, i32 3
  %10 = ptrtoint ptr %bast_list to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %bast_list, align 4
  %cmp.i53 = icmp ne ptr %11, %bast_list
  %lnot.ext14 = zext i1 %cmp.i53 to i32
  %ast_pending = getelementptr inbounds %struct.dlm_lock, ptr %lock, i32 0, i32 11
  %12 = ptrtoint ptr %ast_pending to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load = load i8, ptr %ast_pending, align 4
  %bf.lshr = lshr i8 %bf.load, 7
  %bf.cast = zext i8 %bf.lshr to i32
  %bf.lshr16 = lshr i8 %bf.load, 6
  %bf.clear = and i8 %bf.lshr16, 1
  %bf.cast17 = zext i8 %bf.clear to i32
  %bf.lshr19 = lshr i8 %bf.load, 5
  %bf.clear20 = and i8 %bf.lshr19, 1
  %bf.cast21 = zext i8 %bf.clear20 to i32
  %bf.lshr23 = lshr i8 %bf.load, 4
  %bf.clear24 = and i8 %bf.lshr23, 1
  %bf.cast25 = zext i8 %bf.clear24 to i32
  %bf.lshr27 = lshr i8 %bf.load, 3
  %bf.clear28 = and i8 %bf.lshr27, 1
  %bf.cast29 = zext i8 %bf.clear28 to i32
  %bf.lshr31 = lshr i8 %bf.load, 2
  %bf.clear32 = and i8 %bf.lshr31, 1
  %bf.cast33 = zext i8 %bf.clear32 to i32
  %lock_refs = getelementptr inbounds %struct.dlm_lock, ptr %lock, i32 0, i32 6
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %lock_refs, i32 noundef 4) #11
  %13 = ptrtoint ptr %lock_refs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %lock_refs, align 4
  %call35 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef %len, ptr noundef nonnull @.str.176, i32 noundef 1, i32 noundef %list_type, i32 noundef %conv, i32 noundef %conv2, i32 noundef %conv4, i32 noundef %conv.i, i64 noundef %and.i, i32 noundef %lnot.ext, i32 noundef %lnot.ext14, i32 noundef %bf.cast, i32 noundef %bf.cast17, i32 noundef %bf.cast21, i32 noundef %bf.cast25, i32 noundef %bf.cast29, i32 noundef %bf.cast33, i32 noundef %14) #11
  tail call void @_raw_spin_unlock(ptr noundef %spinlock) #11
  ret i32 %call35
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_release_private(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @debug_mle_open(ptr noundef %inode, ptr nocapture noundef writeonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @get_zeroed_page(i32 noundef 3136) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = inttoptr i32 %call to ptr
  %name.i = getelementptr inbounds %struct.dlm_ctxt, ptr %1, i32 0, i32 11
  %3 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %name.i, align 4
  %call.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %2, i32 noundef 4095, ptr noundef nonnull @.str.178, ptr noundef %4) #11
  %master_lock.i = getelementptr inbounds %struct.dlm_ctxt, ptr %1, i32 0, i32 22
  tail call void @_raw_spin_lock(ptr noundef %master_lock.i) #11
  %master_hash.i.i = getelementptr inbounds %struct.dlm_ctxt, ptr %1, i32 0, i32 23
  br label %for.body.i

for.body.i:                                       ; preds = %for.end.i.for.body.i_crit_edge, %if.end
  %i.013.i = phi i32 [ 0, %if.end ], [ %inc31.i, %for.end.i.for.body.i_crit_edge ]
  %out.012.i = phi i32 [ %call.i, %if.end ], [ %out.1.lcssa.i, %for.end.i.for.body.i_crit_edge ]
  %total.011.i = phi i32 [ 0, %if.end ], [ %total.1.lcssa.i, %for.end.i.for.body.i_crit_edge ]
  %longest.010.i = phi i32 [ 0, %if.end ], [ %11, %for.end.i.for.body.i_crit_edge ]
  %5 = ptrtoint ptr %master_hash.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %master_hash.i.i, align 4
  %div3.i.i = lshr i32 %i.013.i, 10
  %arrayidx.i.i = getelementptr ptr, ptr %6, i32 %div3.i.i
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i.i, align 4
  %rem1.i.i = and i32 %i.013.i, 1023
  %add.ptr.i.i = getelementptr %struct.hlist_head, ptr %8, i32 %rem1.i.i
  %9 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %mle.02.i = load ptr, ptr %add.ptr.i.i, align 4
  %tobool5.not3.i = icmp eq ptr %mle.02.i, null
  br i1 %tobool5.not3.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body6.i_crit_edge

for.body.i.for.body6.i_crit_edge:                 ; preds = %for.body.i
  br label %for.body6.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body6.i:                                      ; preds = %for.inc.i.for.body6.i_crit_edge, %for.body.i.for.body6.i_crit_edge
  %mle.07.i = phi ptr [ %mle.0.i, %for.inc.i.for.body6.i_crit_edge ], [ %mle.02.i, %for.body.i.for.body6.i_crit_edge ]
  %out.16.i = phi i32 [ %out.2.i, %for.inc.i.for.body6.i_crit_edge ], [ %out.012.i, %for.body.i.for.body6.i_crit_edge ]
  %total.15.i = phi i32 [ %inc.i, %for.inc.i.for.body6.i_crit_edge ], [ %total.011.i, %for.body.i.for.body6.i_crit_edge ]
  %bucket_count.14.i = phi i32 [ %inc7.i, %for.inc.i.for.body6.i_crit_edge ], [ 0, %for.body.i.for.body6.i_crit_edge ]
  %inc.i = add i32 %total.15.i, 1
  %inc7.i = add i32 %bucket_count.14.i, 1
  %sub8.i = sub i32 4095, %out.16.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %sub8.i)
  %cmp9.i = icmp slt i32 %sub8.i, 200
  br i1 %cmp9.i, label %for.body6.i.for.inc.i_crit_edge, label %if.end.i

for.body6.i.for.inc.i_crit_edge:                  ; preds = %for.body6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body6.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr10.i = getelementptr i8, ptr %2, i32 %out.16.i
  %call12.i = tail call fastcc i32 @dump_mle(ptr noundef nonnull %mle.07.i, ptr noundef %add.ptr10.i, i32 noundef %sub8.i) #11
  %add13.i = add i32 %call12.i, %out.16.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %for.body6.i.for.inc.i_crit_edge
  %out.2.i = phi i32 [ %out.16.i, %for.body6.i.for.inc.i_crit_edge ], [ %add13.i, %if.end.i ]
  %10 = ptrtoint ptr %mle.07.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %mle.0.i = load ptr, ptr %mle.07.i, align 4
  %tobool5.not.i = icmp eq ptr %mle.0.i, null
  br i1 %tobool5.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body6.i_crit_edge

for.inc.i.for.body6.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body6.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge
  %bucket_count.1.lcssa.i = phi i32 [ 0, %for.body.i.for.end.i_crit_edge ], [ %inc7.i, %for.inc.i.for.end.i_crit_edge ]
  %total.1.lcssa.i = phi i32 [ %total.011.i, %for.body.i.for.end.i_crit_edge ], [ %inc.i, %for.inc.i.for.end.i_crit_edge ]
  %out.1.lcssa.i = phi i32 [ %out.012.i, %for.body.i.for.end.i_crit_edge ], [ %out.2.i, %for.inc.i.for.end.i_crit_edge ]
  %11 = tail call i32 @llvm.umax.i32(i32 %longest.010.i, i32 %bucket_count.1.lcssa.i) #11
  %inc31.i = add nuw nsw i32 %i.013.i, 1
  %exitcond.not.i = icmp eq i32 %inc31.i, 32768
  br i1 %exitcond.not.i, label %debug_mle_print.exit, label %for.end.i.for.body.i_crit_edge

for.end.i.for.body.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

debug_mle_print.exit:                             ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock(ptr noundef %master_lock.i) #11
  %add.ptr34.i = getelementptr i8, ptr %2, i32 %out.1.lcssa.i
  %sub35.i = sub i32 4095, %out.1.lcssa.i
  %call36.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr34.i, i32 noundef %sub35.i, ptr noundef nonnull @.str.179, i32 noundef %total.1.lcssa.i, i32 noundef %11) #11
  %add37.i = add i32 %call36.i, %out.1.lcssa.i
  %conv = sext i32 %add37.i to i64
  tail call fastcc void @i_size_write(ptr noundef %inode, i64 noundef %conv)
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %12 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %2, ptr %private_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %debug_mle_print.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %debug_mle_print.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @debug_purgelist_open(ptr noundef %inode, ptr nocapture noundef writeonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @get_zeroed_page(i32 noundef 3136) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = inttoptr i32 %call to ptr
  %name.i = getelementptr inbounds %struct.dlm_ctxt, ptr %1, i32 0, i32 11
  %3 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %name.i, align 4
  %call.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %2, i32 noundef 4095, ptr noundef nonnull @.str.180, ptr noundef %4) #11
  %spinlock.i = getelementptr inbounds %struct.dlm_ctxt, ptr %1, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %spinlock.i) #11
  %purge_list.i = getelementptr inbounds %struct.dlm_ctxt, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %purge_list.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn1.i = load ptr, ptr %purge_list.i, align 4
  %cmp.not2.i = icmp eq ptr %.pn1.i, %purge_list.i
  br i1 %cmp.not2.i, label %if.end.debug_purgelist_print.exit_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.debug_purgelist_print.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_purgelist_print.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %.pn5.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn1.i, %if.end.for.body.i_crit_edge ]
  %out.04.i = phi i32 [ %out.1.i, %for.inc.i.for.body.i_crit_edge ], [ %call.i, %if.end.for.body.i_crit_edge ]
  %total.03.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %inc.i = add i32 %total.03.i, 1
  %sub3.i = sub i32 4095, %out.04.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %sub3.i)
  %cmp4.i = icmp slt i32 %sub3.i, 100
  br i1 %cmp4.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %spinlock5.i = getelementptr i8, ptr %.pn5.i, i32 48
  tail call void @_raw_spin_lock(ptr noundef %spinlock5.i) #11
  %name6.i = getelementptr i8, ptr %.pn5.i, i32 -36
  %6 = ptrtoint ptr %name6.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name6.i, align 8
  %add.ptr9.i = getelementptr i8, ptr %2, i32 %out.04.i
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 78, i8 %9)
  %cmp.i.i = icmp eq i8 %9, 78
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.i = getelementptr i8, ptr %7, i32 18
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 8)
  %inode_blkno_be.0.copyload.i.i = load i64, ptr %arrayidx.i.i, align 1
  %conv2.i.i = trunc i64 %inode_blkno_be.0.copyload.i.i to i32
  %call.i.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr9.i, i32 noundef %sub3.i, ptr noundef nonnull @.str.122, i32 noundef 17, ptr noundef %7, i32 noundef %conv2.i.i) #11
  br label %stringify_lockname.exit.i

if.else.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %lockname.i = getelementptr i8, ptr %.pn5.i, i32 -44
  %11 = ptrtoint ptr %lockname.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %lockname.i, align 8
  %call5.i.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr9.i, i32 noundef %sub3.i, ptr noundef nonnull @.str.123, i32 noundef %12, ptr noundef %7) #11
  br label %stringify_lockname.exit.i

stringify_lockname.exit.i:                        ; preds = %if.else.i.i, %if.then.i.i
  %out.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %call5.i.i, %if.else.i.i ]
  %add12.i = add i32 %out.0.i.i, %out.04.i
  %add.ptr13.i = getelementptr i8, ptr %2, i32 %add12.i
  %sub14.i = sub i32 4095, %add12.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %last_used.i = getelementptr i8, ptr %.pn5.i, i32 32
  %14 = ptrtoint ptr %last_used.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %last_used.i, align 4
  %sub15.i = sub i32 %13, %15
  %div.i = udiv i32 %sub15.i, 100
  %call16.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr13.i, i32 noundef %sub14.i, ptr noundef nonnull @.str.181, i32 noundef %div.i) #11
  %add17.i = add i32 %call16.i, %add12.i
  tail call void @_raw_spin_unlock(ptr noundef %spinlock5.i) #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %stringify_lockname.exit.i, %for.body.i.for.inc.i_crit_edge
  %out.1.i = phi i32 [ %out.04.i, %for.body.i.for.inc.i_crit_edge ], [ %add17.i, %stringify_lockname.exit.i ]
  %16 = ptrtoint ptr %.pn5.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn.i = load ptr, ptr %.pn5.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %purge_list.i
  br i1 %cmp.not.i, label %for.inc.i.debug_purgelist_print.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.debug_purgelist_print.exit_crit_edge:   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_purgelist_print.exit

debug_purgelist_print.exit:                       ; preds = %for.inc.i.debug_purgelist_print.exit_crit_edge, %if.end.debug_purgelist_print.exit_crit_edge
  %total.0.lcssa.i = phi i32 [ 0, %if.end.debug_purgelist_print.exit_crit_edge ], [ %inc.i, %for.inc.i.debug_purgelist_print.exit_crit_edge ]
  %out.0.lcssa.i = phi i32 [ %call.i, %if.end.debug_purgelist_print.exit_crit_edge ], [ %out.1.i, %for.inc.i.debug_purgelist_print.exit_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %spinlock.i) #11
  %add.ptr25.i = getelementptr i8, ptr %2, i32 %out.0.lcssa.i
  %sub26.i = sub i32 4095, %out.0.lcssa.i
  %call27.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr25.i, i32 noundef %sub26.i, ptr noundef nonnull @.str.182, i32 noundef %total.0.lcssa.i) #11
  %add28.i = add i32 %call27.i, %out.0.lcssa.i
  %conv = sext i32 %add28.i to i64
  tail call fastcc void @i_size_write(ptr noundef %inode, i64 noundef %conv)
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %17 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %2, ptr %private_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %debug_purgelist_print.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %debug_purgelist_print.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 180)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 180)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !341, !343, !344, !346, !348, !350, !352, !354, !356, !358, !360, !362, !364, !366, !368, !370, !372}
!llvm.named.register.sp = !{!374}
!llvm.module.flags = !{!375, !376, !377, !378, !379, !380, !381, !382}
!llvm.ident = !{!383}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 89, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @__dlm_print_one_lock_resource._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @__dlm_print_one_lock_resource._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 91, i32 2}
!8 = !{ptr @__dlm_print_one_lock_resource._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @__dlm_print_one_lock_resource._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 94, i32 2}
!14 = !{ptr @__dlm_print_one_lock_resource._entry.8, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @__dlm_print_one_lock_resource._entry_ptr.10, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.12, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 99, i32 2}
!18 = !{ptr @__dlm_print_one_lock_resource._entry.11, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @__dlm_print_one_lock_resource._entry_ptr.13, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.15, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 102, i32 2}
!22 = !{ptr @__dlm_print_one_lock_resource._entry.14, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @__dlm_print_one_lock_resource._entry_ptr.16, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.18, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 106, i32 2}
!26 = !{ptr @__dlm_print_one_lock_resource._entry.17, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @__dlm_print_one_lock_resource._entry_ptr.19, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.21, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 110, i32 2}
!30 = !{ptr @__dlm_print_one_lock_resource._entry.20, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @__dlm_print_one_lock_resource._entry_ptr.22, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @__ksymtab_dlm_print_one_lock, !33, !"__ksymtab_dlm_print_one_lock", i1 false, i1 false}
!33 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 120, i32 1}
!34 = !{ptr @__ksymtab_dlm_errmsg, !35, !"__ksymtab_dlm_errmsg", i1 false, i1 false}
!35 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 218, i32 1}
!36 = !{ptr @__ksymtab_dlm_errname, !37, !"__ksymtab_dlm_errname", i1 false, i1 false}
!37 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 226, i32 1}
!38 = !{ptr @.str.23, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 855, i32 22}
!40 = !{ptr @.str.24, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 859, i32 22}
!42 = !{ptr @.str.25, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 863, i32 22}
!44 = !{ptr @.str.26, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 867, i32 22}
!46 = !{ptr @.str.27, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 887, i32 40}
!48 = !{ptr @dlm_debugfs_root, !49, !"dlm_debugfs_root", i1 false, i1 false}
!49 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 324, i32 23}
!50 = !{ptr @.str.28, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 45, i32 2}
!52 = !{ptr @.str.29, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @dlm_print_lockres_refmap._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @dlm_print_lockres_refmap._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.31, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 51, i32 3}
!57 = !{ptr @dlm_print_lockres_refmap._entry.30, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @dlm_print_lockres_refmap._entry_ptr.32, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.34, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 54, i32 2}
!61 = !{ptr @dlm_print_lockres_refmap._entry.33, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @dlm_print_lockres_refmap._entry_ptr.35, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.36, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 61, i32 2}
!65 = !{ptr @.str.37, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @__dlm_print_lock._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @__dlm_print_lock._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.38, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 168, i32 20}
!70 = !{ptr @.str.39, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 169, i32 20}
!72 = !{ptr @.str.40, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 170, i32 20}
!74 = !{ptr @.str.41, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 171, i32 27}
!76 = !{ptr @.str.42, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 172, i32 20}
!78 = !{ptr @.str.43, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 173, i32 20}
!80 = !{ptr @.str.44, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 174, i32 27}
!82 = !{ptr @.str.45, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 175, i32 31}
!84 = !{ptr @.str.46, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 176, i32 20}
!86 = !{ptr @.str.47, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 177, i32 22}
!88 = !{ptr @.str.48, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 178, i32 24}
!90 = !{ptr @.str.49, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 179, i32 21}
!92 = !{ptr @.str.50, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 180, i32 18}
!94 = !{ptr @.str.51, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 181, i32 20}
!96 = !{ptr @.str.52, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 182, i32 24}
!98 = !{ptr @.str.53, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 183, i32 23}
!100 = !{ptr @.str.54, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 184, i32 21}
!102 = !{ptr @.str.55, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 185, i32 22}
!104 = !{ptr @.str.56, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 186, i32 21}
!106 = !{ptr @.str.57, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 187, i32 20}
!108 = !{ptr @.str.58, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 188, i32 18}
!110 = !{ptr @.str.59, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 189, i32 22}
!112 = !{ptr @.str.60, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 190, i32 21}
!114 = !{ptr @.str.61, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 191, i32 23}
!116 = !{ptr @.str.62, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 192, i32 21}
!118 = !{ptr @.str.63, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 193, i32 24}
!120 = !{ptr @.str.64, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 194, i32 21}
!122 = !{ptr @.str.65, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 195, i32 19}
!124 = !{ptr @.str.66, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 196, i32 20}
!126 = !{ptr @.str.67, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 197, i32 24}
!128 = !{ptr @.str.68, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 198, i32 21}
!130 = !{ptr @.str.69, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 199, i32 26}
!132 = !{ptr @.str.70, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 200, i32 20}
!134 = !{ptr @.str.71, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 201, i32 20}
!136 = !{ptr @.str.72, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 202, i32 22}
!138 = !{ptr @.str.73, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 203, i32 26}
!140 = !{ptr @.str.74, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 204, i32 27}
!142 = !{ptr @.str.75, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 205, i32 32}
!144 = !{ptr @.str.76, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 206, i32 29}
!146 = !{ptr @.str.77, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 207, i32 23}
!148 = !{ptr @.str.78, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 208, i32 22}
!150 = !{ptr @.str.79, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 209, i32 21}
!152 = !{ptr @dlm_errmsgs, !153, !"dlm_errmsgs", i1 false, i1 false}
!153 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 167, i32 20}
!154 = !{ptr @.str.80, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 123, i32 19}
!156 = !{ptr @.str.81, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 124, i32 20}
!158 = !{ptr @.str.82, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 125, i32 19}
!160 = !{ptr @.str.83, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 126, i32 26}
!162 = !{ptr @.str.84, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 127, i32 20}
!164 = !{ptr @.str.85, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 128, i32 20}
!166 = !{ptr @.str.86, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 129, i32 26}
!168 = !{ptr @.str.87, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 130, i32 30}
!170 = !{ptr @.str.88, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 131, i32 19}
!172 = !{ptr @.str.89, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 132, i32 21}
!174 = !{ptr @.str.90, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 133, i32 23}
!176 = !{ptr @.str.91, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 134, i32 20}
!178 = !{ptr @.str.92, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 135, i32 17}
!180 = !{ptr @.str.93, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 136, i32 20}
!182 = !{ptr @.str.94, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 137, i32 23}
!184 = !{ptr @.str.95, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 138, i32 22}
!186 = !{ptr @.str.96, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 139, i32 20}
!188 = !{ptr @.str.97, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 140, i32 21}
!190 = !{ptr @.str.98, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 141, i32 20}
!192 = !{ptr @.str.99, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 142, i32 20}
!194 = !{ptr @.str.100, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 143, i32 17}
!196 = !{ptr @.str.101, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 144, i32 21}
!198 = !{ptr @.str.102, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 145, i32 20}
!200 = !{ptr @.str.103, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 146, i32 22}
!202 = !{ptr @.str.104, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 147, i32 20}
!204 = !{ptr @.str.105, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 148, i32 23}
!206 = !{ptr @.str.106, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 149, i32 20}
!208 = !{ptr @.str.107, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 150, i32 18}
!210 = !{ptr @.str.108, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 151, i32 19}
!212 = !{ptr @.str.109, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 152, i32 23}
!214 = !{ptr @.str.110, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 153, i32 20}
!216 = !{ptr @.str.111, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 154, i32 25}
!218 = !{ptr @.str.112, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 155, i32 20}
!220 = !{ptr @.str.113, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 156, i32 20}
!222 = !{ptr @.str.114, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 157, i32 21}
!224 = !{ptr @.str.115, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 158, i32 25}
!226 = !{ptr @.str.116, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 159, i32 27}
!228 = !{ptr @.str.117, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 160, i32 31}
!230 = !{ptr @.str.118, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 161, i32 29}
!232 = !{ptr @.str.119, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 162, i32 22}
!234 = !{ptr @.str.120, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 163, i32 21}
!236 = !{ptr @.str.121, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 164, i32 20}
!238 = !{ptr @dlm_errnames, !239, !"dlm_errnames", i1 false, i1 false}
!239 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 122, i32 20}
!240 = !{ptr @.str.122, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 245, i32 42}
!242 = !{ptr @.str.123, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 249, i32 42}
!244 = !{ptr @.str.124, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 272, i32 14}
!246 = !{ptr @.str.125, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 274, i32 14}
!248 = !{ptr @.str.126, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 276, i32 14}
!250 = !{ptr @.str.127, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 280, i32 4}
!252 = !{ptr @.str.128, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 286, i32 41}
!254 = !{ptr @.str.129, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 289, i32 41}
!256 = !{ptr @.str.130, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 291, i32 41}
!258 = !{ptr @.str.131, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 296, i32 41}
!260 = !{ptr @.str.132, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 301, i32 41}
!262 = !{ptr @.str.133, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 261, i32 42}
!264 = !{ptr @debug_state_fops, !265, !"debug_state_fops", i1 false, i1 false}
!265 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 843, i32 37}
!266 = distinct !{null, !267, !"__already_done", i1 false, i1 false}
!267 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!268 = !{ptr @.str.134, !267, !"<string literal>", i1 false, i1 false}
!269 = !{ptr @.str.135, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 672, i32 11}
!271 = !{ptr @.str.136, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 674, i32 11}
!273 = !{ptr @.str.137, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 676, i32 11}
!275 = !{ptr @.str.138, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 678, i32 11}
!277 = !{ptr @.str.139, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 680, i32 11}
!279 = !{ptr @.str.140, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 685, i32 4}
!281 = !{ptr @.str.141, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 691, i32 4}
!283 = !{ptr @.str.142, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 696, i32 4}
!285 = !{ptr @.str.143, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 700, i32 41}
!287 = !{ptr @.str.144, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 706, i32 41}
!289 = !{ptr @.str.145, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 712, i32 41}
!291 = !{ptr @.str.146, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 719, i32 4}
!293 = !{ptr @.str.147, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 731, i32 4}
!295 = !{ptr @.str.148, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 735, i32 4}
!297 = !{ptr @.str.149, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 741, i32 4}
!299 = !{ptr @.str.150, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 747, i32 4}
!301 = !{ptr @.str.151, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 753, i32 4}
!303 = !{ptr @.str.152, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 755, i32 36}
!305 = !{ptr @.str.153, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 755, i32 46}
!307 = !{ptr @.str.154, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 762, i32 4}
!309 = !{ptr @.str.155, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 767, i32 4}
!311 = !{ptr @.str.156, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 771, i32 11}
!313 = !{ptr @.str.157, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 773, i32 11}
!315 = !{ptr @.str.158, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 777, i32 4}
!317 = !{ptr @.str.159, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 782, i32 41}
!319 = !{ptr @.str.160, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 788, i32 41}
!321 = !{ptr @.str.161, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 792, i32 12}
!323 = !{ptr @.str.162, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 795, i32 12}
!325 = !{ptr @.str.163, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 798, i32 12}
!327 = !{ptr @.str.164, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 801, i32 12}
!329 = !{ptr @.str.165, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 804, i32 12}
!331 = !{ptr @.str.166, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 807, i32 12}
!333 = !{ptr @.str.167, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 810, i32 12}
!335 = !{ptr @.str.168, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 813, i32 12}
!337 = !{ptr @.str.169, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 816, i32 42}
!339 = !{ptr @debug_lockres_fops, !340, !"debug_lockres_fops", i1 false, i1 false}
!340 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 651, i32 37}
!341 = !{ptr @__func__.debug_lockres_open, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 635, i32 2}
!343 = !{ptr @.str.170, !342, !"<string literal>", i1 false, i1 false}
!344 = !{ptr @debug_lockres_ops, !345, !"debug_lockres_ops", i1 false, i1 false}
!345 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 603, i32 36}
!346 = !{ptr @.str.171, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 492, i32 41}
!348 = !{ptr @.str.172, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 499, i32 4}
!350 = !{ptr @.str.173, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 510, i32 41}
!352 = !{ptr @.str.174, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 516, i32 41}
!354 = !{ptr @.str.175, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 519, i32 6}
!356 = !{ptr @.str.176, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 468, i32 28}
!358 = !{ptr @.str.177, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 598, i32 16}
!360 = !{ptr @debug_mle_fops, !361, !"debug_mle_fops", i1 false, i1 false}
!361 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 452, i32 37}
!362 = !{ptr @.str.178, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 412, i32 4}
!364 = !{ptr @.str.179, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 430, i32 4}
!366 = !{ptr @debug_purgelist_fops, !367, !"debug_purgelist_fops", i1 false, i1 false}
!367 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 395, i32 37}
!368 = !{ptr @.str.180, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 355, i32 4}
!370 = !{ptr @.str.181, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 366, i32 42}
!372 = !{ptr @.str.182, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../fs/ocfs2/dlm/dlmdebug.c", i32 372, i32 41}
!374 = !{!"sp"}
!375 = !{i32 1, !"wchar_size", i32 2}
!376 = !{i32 1, !"min_enum_size", i32 4}
!377 = !{i32 8, !"branch-target-enforcement", i32 0}
!378 = !{i32 8, !"sign-return-address", i32 0}
!379 = !{i32 8, !"sign-return-address-all", i32 0}
!380 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!381 = !{i32 7, !"uwtable", i32 1}
!382 = !{i32 7, !"frame-pointer", i32 2}
!383 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!384 = !{!"branch_weights", i32 1, i32 2000}
!385 = !{i64 2157075135, i64 2157075622, i64 2157075172, i64 2157075228, i64 2157075262, i64 2157075286, i64 2157075327, i64 2157075348, i64 2157075376, i64 2157075410}
!386 = !{i64 2157066013, i64 2157066500, i64 2157066050, i64 2157066106, i64 2157066140, i64 2157066164, i64 2157066205, i64 2157066226, i64 2157066254, i64 2157066288}
!387 = !{i64 1008474, i64 1008535}
!388 = !{i64 1011206}
!389 = !{i64 1011491}
!390 = !{i64 2152934930}
!391 = !{i64 2152934772}
!392 = !{i64 2152935100}
!393 = !{i64 2149783193}
!394 = !{i64 2152936861}
!395 = !{i64 2149675525}
!396 = !{i64 2149680457}
!397 = !{i64 2149702169}
!398 = !{i64 2149707061}
!399 = !{!"branch_weights", i32 2000, i32 1}
!400 = !{i64 2149783518}
!401 = !{i64 2149783843}
!402 = !{i64 2152948723}
!403 = !{i64 2148605324, i64 2148605356, i64 2148605385, i64 2148605419, i64 2148605450, i64 2148605473}
