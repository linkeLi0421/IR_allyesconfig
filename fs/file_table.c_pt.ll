; ModuleID = '/llk/IR_all_yes/fs/file_table.c_pt.bc'
source_filename = "../fs/file_table.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+get_max_files\22, \22a\22\09"
module asm "\09.weak\09__crc_get_max_files\09\09\09\09"
module asm "\09.long\09__crc_get_max_files\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_max_files:\09\09\09\09\09"
module asm "\09.asciz \09\22get_max_files\22\09\09\09\09\09"
module asm "__kstrtabns_get_max_files:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+alloc_file_pseudo\22, \22a\22\09"
module asm "\09.weak\09__crc_alloc_file_pseudo\09\09\09\09"
module asm "\09.long\09__crc_alloc_file_pseudo\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_alloc_file_pseudo:\09\09\09\09\09"
module asm "\09.asciz \09\22alloc_file_pseudo\22\09\09\09\09\09"
module asm "__kstrtabns_alloc_file_pseudo:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+flush_delayed_fput\22, \22a\22\09"
module asm "\09.weak\09__crc_flush_delayed_fput\09\09\09\09"
module asm "\09.long\09__crc_flush_delayed_fput\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_flush_delayed_fput:\09\09\09\09\09"
module asm "\09.asciz \09\22flush_delayed_fput\22\09\09\09\09\09"
module asm "__kstrtabns_flush_delayed_fput:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+fput\22, \22a\22\09"
module asm "\09.weak\09__crc_fput\09\09\09\09"
module asm "\09.long\09__crc_fput\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fput:\09\09\09\09\09"
module asm "\09.asciz \09\22fput\22\09\09\09\09\09"
module asm "__kstrtabns_fput:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.files_stat_struct = type { i32, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [76 x i8] }
%struct.llist_head = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.37 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.37 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.qstr = type { %union.anon.3, ptr }
%union.anon.3 = type { i64 }
%struct.anon.4 = type { i32, i32 }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.57, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.57 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.83, %struct.list_head, %struct.list_head, %union.anon.84 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.lockref = type { %union.anon.81 }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { %struct.spinlock, i32 }
%union.anon.83 = type { %struct.list_head }
%union.anon.84 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.75, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.76, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.77, ptr, %struct.address_space, %struct.list_head, %union.anon.80, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.75 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.76 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.77 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.80 = type { ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@files_stat = internal global { %struct.files_stat_struct, [20 x i8] } { %struct.files_stat_struct { i32 0, i32 0, i32 8192 }, [20 x i8] zeroinitializer }, align 32
@__kstrtab_get_max_files = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_max_files = external dso_local constant [0 x i8], align 1
@__ksymtab_get_max_files = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_max_files to i32), ptr @__kstrtab_get_max_files, ptr @__kstrtabns_get_max_files }, section "___ksymtab_gpl+get_max_files", align 4
@__initcall__kmod_file_table__298_130_init_fs_stat_sysctls5 = internal global ptr @init_fs_stat_sysctls, section ".initcall5.init", align 4
@alloc_empty_file.old_max = internal global { i32, [28 x i8] } zeroinitializer, align 32
@nr_files = internal global %struct.percpu_counter zeroinitializer, section ".data..cacheline_aligned", align 128
@alloc_empty_file._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 196, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016VFS: file-max limit %lu reached\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"alloc_empty_file\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/file_table.c\00", [16 x i8] zeroinitializer }, align 32
@alloc_empty_file._entry_ptr = internal global ptr @alloc_empty_file._entry, section ".printk_index", align 4
@alloc_file_pseudo.anon_ops = internal constant %struct.dentry_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @simple_dname, ptr null, ptr null, ptr null, [76 x i8] undef }, align 128
@__kstrtab_alloc_file_pseudo = external dso_local constant [0 x i8], align 1
@__kstrtabns_alloc_file_pseudo = external dso_local constant [0 x i8], align 1
@__ksymtab_alloc_file_pseudo = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @alloc_file_pseudo to i32), ptr @__kstrtab_alloc_file_pseudo, ptr @__kstrtabns_alloc_file_pseudo }, section "___ksymtab+alloc_file_pseudo", align 4
@__kstrtab_flush_delayed_fput = external dso_local constant [0 x i8], align 1
@__kstrtabns_flush_delayed_fput = external dso_local constant [0 x i8], align 1
@__ksymtab_flush_delayed_fput = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @flush_delayed_fput to i32), ptr @__kstrtab_flush_delayed_fput, ptr @__kstrtabns_flush_delayed_fput }, section "___ksymtab_gpl+flush_delayed_fput", align 4
@delayed_fput_list = internal global { %struct.llist_head, [28 x i8] } zeroinitializer, align 32
@delayed_fput_work = internal global { %struct.delayed_work, [60 x i8] } { %struct.delayed_work { %struct.work_struct { %struct.atomic_t { i32 -48 }, %struct.list_head { ptr getelementptr (i8, ptr @delayed_fput_work, i64 4), ptr getelementptr (i8, ptr @delayed_fput_work, i64 4) }, ptr @delayed_fput, %struct.lockdep_map { ptr @delayed_fput_work, [2 x ptr] zeroinitializer, ptr @.str.16, i8 0, i8 0, i8 0, i32 0, i32 0 } }, %struct.timer_list { %struct.hlist_node { ptr inttoptr (i32 768 to ptr), ptr null }, i32 0, ptr @delayed_work_timer_fn, i32 2097152, %struct.lockdep_map { ptr @.str.17, [2 x ptr] zeroinitializer, ptr @.str.17, i8 0, i8 0, i8 0, i32 0, i32 0 } }, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__kstrtab_fput = external dso_local constant [0 x i8], align 1
@__kstrtabns_fput = external dso_local constant [0 x i8], align 1
@__ksymtab_fput = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fput to i32), ptr @__kstrtab_fput, ptr @__kstrtabns_fput }, section "___ksymtab+fput", align 4
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"filp\00", [27 x i8] zeroinitializer }, align 32
@filp_cachep = internal unnamed_addr global ptr null, section ".data..read_mostly", align 4
@files_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"fs\00", [29 x i8] zeroinitializer }, align 32
@fs_stat_sysctls = internal global { [4 x %struct.ctl_table], [48 x i8] } { [4 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.7, ptr @files_stat, i32 12, i16 292, ptr null, ptr @proc_nr_files, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.8, ptr getelementptr (i8, ptr @files_stat, i64 8), i32 4, i16 420, ptr null, ptr @proc_doulongvec_minmax, ptr null, ptr @sysctl_long_vals, ptr getelementptr (i8, ptr @sysctl_long_vals, i64 8) }, %struct.ctl_table { ptr @.str.9, ptr @sysctl_nr_open, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr @sysctl_nr_open_min, ptr @sysctl_nr_open_max }, %struct.ctl_table zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs_stat_sysctls\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/binfmt_misc\00", [17 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"file-nr\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"file-max\00", [23 x i8] zeroinitializer }, align 32
@sysctl_long_vals = external dso_local constant [0 x i32], align 4
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"nr_open\00", [24 x i8] zeroinitializer }, align 32
@sysctl_nr_open = external dso_local global i32, align 4
@sysctl_nr_open_min = external dso_local global i32, align 4
@sysctl_nr_open_max = external dso_local global i32, align 4
@__alloc_file.__key = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&f->f_owner.lock\00", [47 x i8] zeroinitializer }, align 32
@__alloc_file.__key.11 = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&f->f_lock\00", [21 x i8] zeroinitializer }, align 32
@__alloc_file.__key.13 = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&f->f_pos_lock\00", [17 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/linux/cred.h\00", [43 x i8] zeroinitializer }, align 32
@percpu_counter_batch = external dso_local local_unnamed_addr global i32, align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"(delayed_fput_work).work\00", [39 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fs/file_table.c:369\00", [44 x i8] zeroinitializer }, align 32
@_totalram_pages = external dso_local global %struct.atomic_t, align 4
@vm_zone_stat = external dso_local global [11 x %struct.atomic_t], align 4
@___asan_gen_.18 = private unnamed_addr constant [11 x i8] c"files_stat\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 37, i32 33 }
@___asan_gen_.21 = private unnamed_addr constant [8 x i8] c"old_max\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 172, i32 14 }
@___asan_gen_.24 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 196, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant [18 x i8] c"delayed_fput_list\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 338, i32 8 }
@___asan_gen_.39 = private unnamed_addr constant [18 x i8] c"delayed_fput_work\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 418, i32 34 }
@___asan_gen_.45 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 420, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant [16 x i8] c"fs_stat_sysctls\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 91, i32 25 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 122, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 125, i32 37 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 93, i32 15 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 100, i32 15 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 109, i32 15 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 150, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 151, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 152, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant [24 x i8] c"../include/linux/cred.h\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 253, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.85 = private constant [19 x i8] c"../fs/file_table.c\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 369, i32 8 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @__initcall__kmod_file_table__298_130_init_fs_stat_sysctls5, ptr @__ksymtab_alloc_file_pseudo, ptr @__ksymtab_flush_delayed_fput, ptr @__ksymtab_fput, ptr @__ksymtab_get_max_files, ptr @alloc_empty_file._entry, ptr @alloc_empty_file._entry_ptr, ptr @files_stat, ptr @alloc_empty_file.old_max, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @delayed_fput_list, ptr @delayed_fput_work, ptr @.str.3, ptr @files_init.__key, ptr @.str.4, ptr @fs_stat_sysctls, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @files_stat to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_empty_file.old_max to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_empty_file._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delayed_fput_list to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delayed_fput_work to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @files_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fs_stat_sysctls to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @get_max_files() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr getelementptr inbounds (%struct.files_stat_struct, ptr @files_stat, i32 0, i32 2), align 4
  ret i32 %0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_fs_stat_sysctls() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__register_sysctl_init(ptr noundef nonnull @.str.4, ptr noundef nonnull @fs_stat_sysctls, ptr noundef nonnull @.str.5) #10
  %call = tail call ptr @register_sysctl_mount_point(ptr noundef nonnull @.str.6) #10
  tail call void @kmemleak_not_leak(ptr noundef %call) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @alloc_empty_file(i32 noundef %flags, ptr noundef %cred) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile i64, ptr getelementptr inbounds (%struct.percpu_counter, ptr @nr_files, i32 0, i32 1), align 16
  %1 = tail call i64 @llvm.smax.i64(i64 %0, i64 0) #10
  %conv.i = trunc i64 %1 to i32
  %2 = load i32, ptr getelementptr inbounds (%struct.files_stat_struct, ptr @files_stat, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %conv.i)
  %cmp.not = icmp ugt i32 %2, %conv.i
  br i1 %cmp.not, label %entry.if.end6_crit_edge, label %land.lhs.true

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call zeroext i1 @capable(i32 noundef 21) #10
  br i1 %call1, label %land.lhs.true.if.end6_crit_edge, label %if.then

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then:                                          ; preds = %land.lhs.true
  %call.i = tail call i64 @__percpu_counter_sum(ptr noundef nonnull @nr_files) #10
  %3 = tail call i64 @llvm.smax.i64(i64 %call.i, i64 0) #10
  %4 = load i32, ptr getelementptr inbounds (%struct.files_stat_struct, ptr @files_stat, i32 0, i32 2), align 4
  %conv = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %conv)
  %cmp3.not = icmp ult i64 %3, %conv
  br i1 %cmp3.not, label %if.then.if.end6_crit_edge, label %over

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.end6:                                          ; preds = %if.then.if.end6_crit_edge, %land.lhs.true.if.end6_crit_edge, %entry.if.end6_crit_edge
  %call7 = tail call fastcc ptr @__alloc_file(i32 noundef %flags, ptr noundef %cred)
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end6.cleanup_crit_edge, label %if.then9

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %5 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef nonnull @nr_files, i64 noundef 1, i32 noundef %5) #10
  br label %cleanup

over:                                             ; preds = %if.then
  %6 = load volatile i64, ptr getelementptr inbounds (%struct.percpu_counter, ptr @nr_files, i32 0, i32 1), align 16
  %7 = tail call i64 @llvm.smax.i64(i64 %6, i64 0) #10
  %conv.i21 = trunc i64 %7 to i32
  %8 = load i32, ptr @alloc_empty_file.old_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %conv.i21)
  %cmp12 = icmp slt i32 %8, %conv.i21
  br i1 %cmp12, label %do.end, label %over.cleanup_crit_edge

over.cleanup_crit_edge:                           ; preds = %over
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %over
  call void @__sanitizer_cov_trace_pc() #12
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %4) #13
  %9 = load volatile i64, ptr getelementptr inbounds (%struct.percpu_counter, ptr @nr_files, i32 0, i32 1), align 16
  %10 = tail call i64 @llvm.smax.i64(i64 %9, i64 0) #10
  %conv.i22 = trunc i64 %10 to i32
  store i32 %conv.i22, ptr @alloc_empty_file.old_max, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %over.cleanup_crit_edge, %if.then9, %if.end6.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7, %if.then9 ], [ %call7, %if.end6.cleanup_crit_edge ], [ inttoptr (i32 -23 to ptr), %do.end ], [ inttoptr (i32 -23 to ptr), %over.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__alloc_file(i32 noundef %flags, ptr noundef %cred) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @filp_cachep, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !72

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not.i = icmp eq ptr %cred, null
  br i1 %tobool.not.i, label %if.end.get_cred.exit_crit_edge, label %do.body.i

if.end.get_cred.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_cred.exit

do.body.i:                                        ; preds = %if.end
  %call.i.i39 = tail call zeroext i1 @creds_are_invalid(ptr noundef nonnull %cred) #10
  br i1 %call.i.i39, label %if.then.i.i, label %do.body.i.__validate_creds.exit.i_crit_edge, !prof !72

do.body.i.__validate_creds.exit.i_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__validate_creds.exit.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__invalid_creds(ptr noundef nonnull %cred, ptr noundef nonnull @.str.15, i32 noundef 253) #10
  br label %__validate_creds.exit.i

__validate_creds.exit.i:                          ; preds = %if.then.i.i, %do.body.i.__validate_creds.exit.i_crit_edge
  %1 = getelementptr inbounds %struct.cred, ptr %cred, i32 0, i32 28
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %1, align 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %cred, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr nonnull %cred, i32 1, i32 3, i32 1) #10
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %cred, ptr nonnull %cred, i32 1, ptr nonnull elementtype(i32) %cred) #10, !srcloc !73
  br label %get_cred.exit

get_cred.exit:                                    ; preds = %__validate_creds.exit.i, %if.end.get_cred.exit_crit_edge
  %f_cred = getelementptr inbounds %struct.file, ptr %call.i, i32 0, i32 12
  %4 = ptrtoint ptr %f_cred to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %cred, ptr %f_cred, align 8
  %call6 = tail call i32 @security_file_alloc(ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end16, label %if.then14, !prof !74

if.then14:                                        ; preds = %get_cred.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @file_free_rcu(ptr noundef nonnull %call.i)
  %5 = inttoptr i32 %call6 to ptr
  br label %cleanup

if.end16:                                         ; preds = %get_cred.exit
  call void @__sanitizer_cov_trace_pc() #12
  %f_count = getelementptr inbounds %struct.file, ptr %call.i, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %f_count, i32 noundef 4) #10
  %6 = ptrtoint ptr %f_count to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 1, ptr %f_count, align 8
  %f_owner = getelementptr inbounds %struct.file, ptr %call.i, i32 0, i32 11
  tail call void @__rwlock_init(ptr noundef %f_owner, ptr noundef nonnull @.str.10, ptr noundef nonnull @__alloc_file.__key) #10
  %f_lock = getelementptr inbounds %struct.file, ptr %call.i, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %f_lock, ptr noundef nonnull @.str.12, ptr noundef nonnull @__alloc_file.__key.11, i16 noundef signext 3) #10
  %f_pos_lock = getelementptr inbounds %struct.file, ptr %call.i, i32 0, i32 9
  tail call void @__mutex_init(ptr noundef %f_pos_lock, ptr noundef nonnull @.str.14, ptr noundef nonnull @__alloc_file.__key.13) #10
  %f_flags = getelementptr inbounds %struct.file, ptr %call.i, i32 0, i32 7
  %7 = ptrtoint ptr %f_flags to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %flags, ptr %f_flags, align 4
  %add = add i32 %flags, 1
  %and = and i32 %add, 3
  %and24 = and i32 %flags, 67108864
  %or = or i32 %and, %and24
  %f_mode = getelementptr inbounds %struct.file, ptr %call.i, i32 0, i32 8
  %8 = ptrtoint ptr %f_mode to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or, ptr %f_mode, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then14, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %5, %if.then14 ], [ %call.i, %if.end16 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @alloc_empty_file_noaccount(i32 noundef %flags, ptr noundef %cred) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @__alloc_file(i32 noundef %flags, ptr noundef %cred)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %f_mode = getelementptr inbounds %struct.file, ptr %call, i32 0, i32 8
  %0 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f_mode, align 8
  %or = or i32 %1, 536870912
  store i32 %or, ptr %f_mode, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @alloc_file_pseudo(ptr noundef %inode, ptr noundef %mnt, ptr noundef %name, i32 noundef %flags, ptr noundef %fops) #2 align 64 {
entry:
  %this = alloca %struct.qstr, align 8
  %path = alloca %struct.path, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %this) #10
  %0 = getelementptr inbounds i8, ptr %this, i32 8
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %0, align 8
  %call = tail call i32 @strlen(ptr noundef %name) #14
  %2 = ptrtoint ptr %this to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call, ptr %this, align 8
  %hash = getelementptr inbounds %struct.anon.4, ptr %this, i32 0, i32 1
  %3 = ptrtoint ptr %hash to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %hash, align 4
  %name1 = getelementptr inbounds %struct.qstr, ptr %this, i32 0, i32 1
  %4 = ptrtoint ptr %name1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %name, ptr %name1, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path) #10
  %5 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %mnt_sb = getelementptr inbounds %struct.vfsmount, ptr %mnt, i32 0, i32 1
  %6 = ptrtoint ptr %mnt_sb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mnt_sb, align 4
  %call2 = call ptr @d_alloc_pseudo(ptr noundef %7, ptr noundef nonnull %this) #10
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call2, ptr %5, align 4
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %mnt_sb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mnt_sb, align 4
  %s_d_op = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 45
  %11 = ptrtoint ptr %s_d_op to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_d_op, align 8
  %tobool6.not = icmp eq ptr %12, null
  br i1 %tobool6.not, label %if.then7, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @d_set_d_op(ptr noundef nonnull %call2, ptr noundef nonnull @alloc_file_pseudo.anon_ops) #10
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end.if.end9_crit_edge
  %call10 = call ptr @mntget(ptr noundef %mnt) #10
  %13 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call10, ptr %path, align 4
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %5, align 4
  call void @d_instantiate(ptr noundef %15, ptr noundef %inode) #10
  %call13 = call fastcc ptr @alloc_file(ptr noundef nonnull %path, i32 noundef %flags, ptr noundef %fops)
  %cmp.i = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then15, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then15:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  call void @ihold(ptr noundef %inode) #10
  call void @path_put(ptr noundef nonnull %path) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %if.end9.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call13, %if.then15 ], [ %call13, %if.end9.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %this) #10
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @simple_dname(ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_alloc_pseudo(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_set_d_op(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mntget(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_instantiate(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @alloc_file(ptr nocapture noundef readonly %path, i32 noundef %flags, ptr noundef %fop) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !62) #10
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 99
  %4 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cred, align 16
  %call1 = tail call ptr @alloc_empty_file(i32 noundef %flags, ptr noundef %5)
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %f_path = getelementptr inbounds %struct.file, ptr %call1, i32 0, i32 1
  %6 = ptrtoint ptr %path to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %7 = load i64, ptr %path, align 4
  %8 = ptrtoint ptr %f_path to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %f_path, align 8
  %dentry = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %9 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dentry, align 4
  %d_inode = getelementptr inbounds %struct.dentry, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %d_inode to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %d_inode, align 8
  %f_inode = getelementptr inbounds %struct.file, ptr %call1, i32 0, i32 2
  %13 = ptrtoint ptr %f_inode to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %f_inode, align 8
  %14 = load ptr, ptr %dentry, align 4
  %d_inode4 = getelementptr inbounds %struct.dentry, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %d_inode4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %d_inode4, align 8
  %i_mapping = getelementptr inbounds %struct.inode, ptr %16, i32 0, i32 9
  %17 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i_mapping, align 8
  %f_mapping = getelementptr inbounds %struct.file, ptr %call1, i32 0, i32 18
  %19 = ptrtoint ptr %f_mapping to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %f_mapping, align 4
  %wb_err.i = getelementptr inbounds %struct.address_space, ptr %18, i32 0, i32 11
  %call.i = tail call i32 @errseq_sample(ptr noundef %wb_err.i) #10
  %f_wb_err = getelementptr inbounds %struct.file, ptr %call1, i32 0, i32 19
  %20 = ptrtoint ptr %f_wb_err to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call.i, ptr %f_wb_err, align 8
  %dentry.i = getelementptr inbounds %struct.file, ptr %call1, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dentry.i, align 4
  %d_sb.i = getelementptr inbounds %struct.dentry, ptr %22, i32 0, i32 9
  %23 = ptrtoint ptr %d_sb.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %d_sb.i, align 4
  %s_wb_err.i = getelementptr inbounds %struct.super_block, ptr %24, i32 0, i32 50
  %call.i64 = tail call i32 @errseq_sample(ptr noundef %s_wb_err.i) #10
  %f_sb_err = getelementptr inbounds %struct.file, ptr %call1, i32 0, i32 20
  %25 = ptrtoint ptr %f_sb_err to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call.i64, ptr %f_sb_err, align 4
  %f_mode = getelementptr inbounds %struct.file, ptr %call1, i32 0, i32 8
  %26 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %f_mode, align 8
  %and = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end14_crit_edge, label %land.lhs.true

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

land.lhs.true:                                    ; preds = %if.end
  %read = getelementptr inbounds %struct.file_operations, ptr %fop, i32 0, i32 2
  %28 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %read, align 4
  %tobool8.not = icmp eq ptr %29, null
  br i1 %tobool8.not, label %lor.rhs, label %land.lhs.true.if.then12_crit_edge

land.lhs.true.if.then12_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then12

lor.rhs:                                          ; preds = %land.lhs.true
  %read_iter = getelementptr inbounds %struct.file_operations, ptr %fop, i32 0, i32 4
  %30 = ptrtoint ptr %read_iter to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %read_iter, align 4
  %tobool9.not = icmp eq ptr %31, null
  br i1 %tobool9.not, label %lor.rhs.if.end14_crit_edge, label %lor.rhs.if.then12_crit_edge, !prof !72

lor.rhs.if.then12_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then12

lor.rhs.if.end14_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then12:                                        ; preds = %lor.rhs.if.then12_crit_edge, %land.lhs.true.if.then12_crit_edge
  %or = or i32 %27, 131072
  %32 = ptrtoint ptr %f_mode to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %or, ptr %f_mode, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %lor.rhs.if.end14_crit_edge, %if.end.if.end14_crit_edge
  %33 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %f_mode, align 8
  %and16 = and i32 %34, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end14.if.end32_crit_edge, label %land.lhs.true18

if.end14.if.end32_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

land.lhs.true18:                                  ; preds = %if.end14
  %write = getelementptr inbounds %struct.file_operations, ptr %fop, i32 0, i32 3
  %35 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %write, align 4
  %tobool19.not = icmp eq ptr %36, null
  br i1 %tobool19.not, label %lor.rhs20, label %land.lhs.true18.if.then29_crit_edge

land.lhs.true18.if.then29_crit_edge:              ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then29

lor.rhs20:                                        ; preds = %land.lhs.true18
  %write_iter = getelementptr inbounds %struct.file_operations, ptr %fop, i32 0, i32 5
  %37 = ptrtoint ptr %write_iter to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %write_iter, align 4
  %tobool21.not = icmp eq ptr %38, null
  br i1 %tobool21.not, label %lor.rhs20.if.end32_crit_edge, label %lor.rhs20.if.then29_crit_edge, !prof !72

lor.rhs20.if.then29_crit_edge:                    ; preds = %lor.rhs20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then29

lor.rhs20.if.end32_crit_edge:                     ; preds = %lor.rhs20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.then29:                                        ; preds = %lor.rhs20.if.then29_crit_edge, %land.lhs.true18.if.then29_crit_edge
  %or31 = or i32 %34, 262144
  %39 = ptrtoint ptr %f_mode to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %or31, ptr %f_mode, align 8
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %lor.rhs20.if.end32_crit_edge, %if.end14.if.end32_crit_edge
  %40 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %f_mode, align 8
  %or34 = or i32 %41, 524288
  store i32 %or34, ptr %f_mode, align 8
  %f_op = getelementptr inbounds %struct.file, ptr %call1, i32 0, i32 3
  %42 = ptrtoint ptr %f_op to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %fop, ptr %f_op, align 4
  %and36 = and i32 %41, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and36)
  %cmp = icmp eq i32 %and36, 1
  br i1 %cmp, label %if.then37, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then37:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dentry, align 4
  %d_inode39 = getelementptr inbounds %struct.dentry, ptr %44, i32 0, i32 5
  %45 = ptrtoint ptr %d_inode39 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %d_inode39, align 8
  %i_readcount.i = getelementptr inbounds %struct.inode, ptr %46, i32 0, i32 43
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_readcount.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %i_readcount.i, i32 1, i32 3, i32 1) #10
  %47 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %i_readcount.i, ptr %i_readcount.i, i32 1, ptr elementtype(i32) %i_readcount.i) #10, !srcloc !73
  br label %cleanup

cleanup:                                          ; preds = %if.then37, %if.end32.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret ptr %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ihold(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @alloc_file_clone(ptr nocapture noundef readonly %base, i32 noundef %flags, ptr noundef %fops) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %f_path = getelementptr inbounds %struct.file, ptr %base, i32 0, i32 1
  %call = tail call fastcc ptr @alloc_file(ptr noundef %f_path, i32 noundef %flags, ptr noundef %fops)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %f_path2 = getelementptr inbounds %struct.file, ptr %call, i32 0, i32 1
  tail call void @path_get(ptr noundef %f_path2) #10
  %f_mapping = getelementptr inbounds %struct.file, ptr %base, i32 0, i32 18
  %0 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_mapping, align 4
  %f_mapping3 = getelementptr inbounds %struct.file, ptr %call, i32 0, i32 18
  %2 = ptrtoint ptr %f_mapping3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %f_mapping3, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @flush_delayed_fput() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @delayed_fput_list, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !75
  tail call void @llvm.prefetch.p0(ptr nonnull @delayed_fput_list, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr nonnull @delayed_fput_list) #10, !srcloc !76
  %asmresult.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !77
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.not6.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.not6.i, label %entry.delayed_fput.exit_crit_edge, label %land.rhs.preheader.i

entry.delayed_fput.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %delayed_fput.exit

land.rhs.preheader.i:                             ; preds = %entry
  %1 = inttoptr i32 %asmresult.i.i.i to ptr
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %land.rhs.i.land.rhs.i_crit_edge, %land.rhs.preheader.i
  %f.07.i = phi ptr [ %3, %land.rhs.i.land.rhs.i_crit_edge ], [ %1, %land.rhs.preheader.i ]
  %2 = ptrtoint ptr %f.07.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f.07.i, align 8
  tail call fastcc void @__fput(ptr noundef nonnull %f.07.i) #10
  %cmp.not.i = icmp eq ptr %3, null
  br i1 %cmp.not.i, label %land.rhs.i.delayed_fput.exit_crit_edge, label %land.rhs.i.land.rhs.i_crit_edge

land.rhs.i.land.rhs.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.i

land.rhs.i.delayed_fput.exit_crit_edge:           ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %delayed_fput.exit

delayed_fput.exit:                                ; preds = %land.rhs.i.delayed_fput.exit_crit_edge, %entry.delayed_fput.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @delayed_fput(ptr nocapture noundef readnone %unused) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @delayed_fput_list, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !75
  tail call void @llvm.prefetch.p0(ptr nonnull @delayed_fput_list, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr nonnull @delayed_fput_list) #10, !srcloc !76
  %asmresult.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !77
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.not6 = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.not6, label %entry.for.end_crit_edge, label %land.rhs.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

land.rhs.preheader:                               ; preds = %entry
  %1 = inttoptr i32 %asmresult.i.i to ptr
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.land.rhs_crit_edge, %land.rhs.preheader
  %f.07 = phi ptr [ %3, %land.rhs.land.rhs_crit_edge ], [ %1, %land.rhs.preheader ]
  %2 = ptrtoint ptr %f.07 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f.07, align 8
  tail call fastcc void @__fput(ptr noundef nonnull %f.07)
  %cmp.not = icmp eq ptr %3, null
  br i1 %cmp.not, label %land.rhs.for.end_crit_edge, label %land.rhs.land.rhs_crit_edge

land.rhs.land.rhs_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %land.rhs.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fput_many(ptr noundef %file, i32 noundef %refs) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %f_count = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %f_count, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !78
  tail call void @llvm.prefetch.p0(ptr %f_count, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %f_count, ptr %f_count, i32 %refs, ptr elementtype(i32) %f_count) #10, !srcloc !79
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then, label %entry.if.end25_crit_edge

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then:                                          ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !62) #10
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task2 = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task2, align 8
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i, align 4
  %and = and i32 %6, 15728640
  %7 = tail call i32 @llvm.read_register.i32(metadata !62) #10
  %and.i.i30 = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i30 to ptr
  %preempt_count.i31 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i31 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i31, align 4
  %and5 = and i32 %10, 983040
  %or = or i32 %and5, %and
  %11 = tail call i32 @llvm.read_register.i32(metadata !62) #10
  %and.i.i32 = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i32 to ptr
  %preempt_count.i33 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i33 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i33, align 4
  %and7 = and i32 %14, 65280
  %or8 = or i32 %or, %and7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8)
  %tobool.not = icmp eq i32 %or8, 0
  br i1 %tobool.not, label %land.rhs, label %if.then.if.end19_crit_edge, !prof !74

if.then.if.end19_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

land.rhs:                                         ; preds = %if.then
  %flags = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 3
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags, align 4
  %and9 = and i32 %16, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.then14, label %land.rhs.if.end19_crit_edge, !prof !74

land.rhs.if.end19_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then14:                                        ; preds = %land.rhs
  %func1.i = getelementptr inbounds %struct.callback_head, ptr %file, i32 0, i32 1
  %17 = ptrtoint ptr %func1.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @____fput, ptr %func1.i, align 4
  %call16 = tail call i32 @task_work_add(ptr noundef %4, ptr noundef %file, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then14.if.end25_crit_edge, label %if.then14.if.end19_crit_edge

if.then14.if.end19_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then14.if.end25_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.end19:                                         ; preds = %if.then14.if.end19_crit_edge, %land.rhs.if.end19_crit_edge, %if.then.if.end19_crit_edge
  %call.i = tail call zeroext i1 @llist_add_batch(ptr noundef %file, ptr noundef %file, ptr noundef nonnull @delayed_fput_list) #10
  br i1 %call.i, label %if.then22, label %if.end19.if.end25_crit_edge

if.end19.if.end25_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %18 = load ptr, ptr @system_wq, align 4
  %call.i.i34 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %18, ptr noundef nonnull @delayed_fput_work, i32 noundef 1) #10
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %if.end19.if.end25_crit_edge, %if.then14.if.end25_crit_edge, %entry.if.end25_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @____fput(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @__fput(ptr noundef %work)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @task_work_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fput(ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @fput_many(ptr noundef %file, i32 noundef 1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__fput_sync(ptr noundef %file) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %f_count = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %f_count, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !78
  tail call void @llvm.prefetch.p0(ptr %f_count, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %f_count, ptr %f_count, i32 1, ptr elementtype(i32) %f_count) #10, !srcloc !79
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then, label %entry.if.end13_crit_edge

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then:                                          ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !62) #10
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task2 = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task2, align 8
  %flags = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %and = and i32 %6, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body7, label %do.end12, !prof !72

do.body7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/file_table.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 409, 0\0A.popsection", ""() #10, !srcloc !81
  unreachable

do.end12:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @__fput(ptr noundef %file)
  br label %if.end13

if.end13:                                         ; preds = %do.end12, %entry.if.end13_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__fput(ptr noundef %file) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %f_path = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1
  %dentry1 = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %dentry1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry1, align 4
  %2 = ptrtoint ptr %f_path to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_path, align 8
  %f_inode = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %4 = ptrtoint ptr %f_inode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %f_inode, align 8
  %f_mode = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %6 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %f_mode, align 8
  %and = and i32 %7, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.out_crit_edge, label %do.body, !prof !72

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.body:                                          ; preds = %entry
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 301) #10
  %8 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %f_mode, align 8
  %and.i = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool.not.i, i32 16, i32 8
  %and.i.i = and i32 %9, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.body.fsnotify_close.exit_crit_edge

do.body.fsnotify_close.exit_crit_edge:            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %fsnotify_close.exit

if.end.i.i:                                       ; preds = %do.body
  %10 = ptrtoint ptr %dentry1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dentry1, align 4
  %d_inode.i.i.i.i = getelementptr inbounds %struct.dentry, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %d_inode.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %d_inode.i.i.i.i, align 8
  %i_sb.i.i.i = getelementptr inbounds %struct.inode, ptr %13, i32 0, i32 8
  %14 = ptrtoint ptr %i_sb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i_sb.i.i.i, align 4
  %s_fsnotify_connectors.i.i.i = getelementptr inbounds %struct.super_block, ptr %15, i32 0, i32 48
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %s_fsnotify_connectors.i.i.i, i32 noundef 4) #10
  %16 = ptrtoint ptr %s_fsnotify_connectors.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %s_fsnotify_connectors.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.i.i.i = icmp eq i32 %17, 0
  br i1 %cmp.i.i.i, label %if.end.i.i.fsnotify_close.exit_crit_edge, label %if.end.i.i.i

if.end.i.i.fsnotify_close.exit_crit_edge:         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fsnotify_close.exit

if.end.i.i.i:                                     ; preds = %if.end.i.i
  %18 = ptrtoint ptr %13 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %13, align 8
  %20 = and i16 %19, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %20)
  %cmp2.i.i.i = icmp eq i16 %20, 16384
  br i1 %cmp2.i.i.i, label %if.then4.i.i.i, label %if.end.i.i.i.if.end8.i.i.i_crit_edge

if.end.i.i.i.if.end8.i.i.i_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i.i.i

if.then4.i.i.i:                                   ; preds = %if.end.i.i.i
  %or.i.i.i = or i32 %cond.i, 1073741824
  %21 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %11, align 8
  %and5.i.i.i = and i32 %22, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and5.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then4.i.i.i.notify_child.i.i.i_crit_edge, label %if.then4.i.i.i.if.end8.i.i.i_crit_edge

if.then4.i.i.i.if.end8.i.i.i_crit_edge:           ; preds = %if.then4.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i.i.i

if.then4.i.i.i.notify_child.i.i.i_crit_edge:      ; preds = %if.then4.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %notify_child.i.i.i

if.end8.i.i.i:                                    ; preds = %if.then4.i.i.i.if.end8.i.i.i_crit_edge, %if.end.i.i.i.if.end8.i.i.i_crit_edge
  %mask.addr.0.i.i.i = phi i32 [ %or.i.i.i, %if.then4.i.i.i.if.end8.i.i.i_crit_edge ], [ %cond.i, %if.end.i.i.i.if.end8.i.i.i_crit_edge ]
  %d_parent.i.i.i = getelementptr inbounds %struct.dentry, ptr %11, i32 0, i32 3
  %23 = ptrtoint ptr %d_parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %d_parent.i.i.i, align 8
  %cmp9.i.i.i = icmp eq ptr %24, %11
  br i1 %cmp9.i.i.i, label %if.end8.i.i.i.notify_child.i.i.i_crit_edge, label %if.end12.i.i.i

if.end8.i.i.i.notify_child.i.i.i_crit_edge:       ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %notify_child.i.i.i

if.end12.i.i.i:                                   ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call13.i.i.i = tail call i32 @__fsnotify_parent(ptr noundef %11, i32 noundef %mask.addr.0.i.i.i, ptr noundef %f_path, i32 noundef 1) #10
  br label %fsnotify_close.exit

notify_child.i.i.i:                               ; preds = %if.end8.i.i.i.notify_child.i.i.i_crit_edge, %if.then4.i.i.i.notify_child.i.i.i_crit_edge
  %mask.addr.1.i.i.i = phi i32 [ %mask.addr.0.i.i.i, %if.end8.i.i.i.notify_child.i.i.i_crit_edge ], [ %or.i.i.i, %if.then4.i.i.i.notify_child.i.i.i_crit_edge ]
  %call14.i.i.i = tail call i32 @fsnotify(i32 noundef %mask.addr.1.i.i.i, ptr noundef %f_path, i32 noundef 1, ptr noundef null, ptr noundef null, ptr noundef %13, i32 noundef 0) #10
  br label %fsnotify_close.exit

fsnotify_close.exit:                              ; preds = %notify_child.i.i.i, %if.end12.i.i.i, %if.end.i.i.fsnotify_close.exit_crit_edge, %do.body.fsnotify_close.exit_crit_edge
  %f_ep.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 17
  %25 = ptrtoint ptr %f_ep.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %f_ep.i, align 8
  %tobool.not.i108 = icmp eq ptr %26, null
  br i1 %tobool.not.i108, label %fsnotify_close.exit.eventpoll_release.exit_crit_edge, label %if.end.i, !prof !74

fsnotify_close.exit.eventpoll_release.exit_crit_edge: ; preds = %fsnotify_close.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %eventpoll_release.exit

if.end.i:                                         ; preds = %fsnotify_close.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @eventpoll_release_file(ptr noundef %file) #10
  br label %eventpoll_release.exit

eventpoll_release.exit:                           ; preds = %if.end.i, %fsnotify_close.exit.eventpoll_release.exit_crit_edge
  tail call void @locks_remove_file(ptr noundef %file) #10
  tail call void @ima_file_free(ptr noundef %file) #10
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %27 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %f_flags, align 4
  %and11 = and i32 %28, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %eventpoll_release.exit.if.end25_crit_edge, label %if.then19, !prof !74

eventpoll_release.exit.if.end25_crit_edge:        ; preds = %eventpoll_release.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then19:                                        ; preds = %eventpoll_release.exit
  %f_op = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 3
  %29 = ptrtoint ptr %f_op to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %f_op, align 4
  %fasync = getelementptr inbounds %struct.file_operations, ptr %30, i32 0, i32 18
  %31 = ptrtoint ptr %fasync to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %fasync, align 4
  %tobool20.not = icmp eq ptr %32, null
  br i1 %tobool20.not, label %if.then19.if.end25_crit_edge, label %if.then21

if.then19.if.end25_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then21:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 %32(i32 noundef -1, ptr noundef %file, i32 noundef 0) #10
  br label %if.end25

if.end25:                                         ; preds = %if.then21, %if.then19.if.end25_crit_edge, %eventpoll_release.exit.if.end25_crit_edge
  %f_op26 = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 3
  %33 = ptrtoint ptr %f_op26 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %f_op26, align 4
  %release = getelementptr inbounds %struct.file_operations, ptr %34, i32 0, i32 16
  %35 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %release, align 4
  %tobool27.not = icmp eq ptr %36, null
  br i1 %tobool27.not, label %if.end25.if.end32_crit_edge, label %if.then28

if.end25.if.end32_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  %call31 = tail call i32 %36(ptr noundef %5, ptr noundef %file) #10
  br label %if.end32

if.end32:                                         ; preds = %if.then28, %if.end25.if.end32_crit_edge
  %37 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %5, align 8
  %39 = and i16 %38, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %39)
  %cmp = icmp eq i16 %39, 8192
  br i1 %cmp, label %land.lhs.true, label %if.end32.do.body49_crit_edge

if.end32.do.body49_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body49

land.lhs.true:                                    ; preds = %if.end32
  %40 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 48
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %cmp35.not = icmp ne ptr %42, null
  %and37 = and i32 %7, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  %or.cond = select i1 %cmp35.not, i1 %tobool38.not, i1 false
  br i1 %or.cond, label %if.then47, label %land.lhs.true.do.body49_crit_edge, !prof !82

land.lhs.true.do.body49_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body49

if.then47:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @cdev_put(ptr noundef nonnull %42) #10
  br label %do.body49

do.body49:                                        ; preds = %if.then47, %land.lhs.true.do.body49_crit_edge, %if.end32.do.body49_crit_edge
  %43 = ptrtoint ptr %f_op26 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %f_op26, align 4
  %tobool51.not = icmp eq ptr %44, null
  br i1 %tobool51.not, label %do.body49.do.end56_crit_edge, label %if.then52

do.body49.do.end56_crit_edge:                     ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end56

if.then52:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  tail call void @module_put(ptr noundef %46) #10
  br label %do.end56

do.end56:                                         ; preds = %if.then52, %do.body49.do.end56_crit_edge
  %pid = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 11, i32 1
  %47 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pid, align 4
  tail call void @put_pid(ptr noundef %48) #10
  %and57 = and i32 %7, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and57)
  %cmp58 = icmp eq i32 %and57, 1
  br i1 %cmp58, label %if.then60, label %do.end56.if.end61_crit_edge

do.end56.if.end61_crit_edge:                      ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end61

if.then60:                                        ; preds = %do.end56
  %i_readcount.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 43
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_readcount.i, i32 noundef 4) #10
  %49 = ptrtoint ptr %i_readcount.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %i_readcount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.not.i109 = icmp eq i32 %50, 0
  br i1 %tobool.not.i109, label %do.body4.i, label %i_readcount_dec.exit, !prof !72

do.body4.i:                                       ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/fs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3001, 0\0A.popsection", ""() #10, !srcloc !83
  unreachable

i_readcount_dec.exit:                             ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i10.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_readcount.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %i_readcount.i, i32 1, i32 3, i32 1) #10
  %51 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %i_readcount.i, ptr %i_readcount.i, i32 1, ptr elementtype(i32) %i_readcount.i) #10, !srcloc !84
  br label %if.end61

if.end61:                                         ; preds = %i_readcount_dec.exit, %do.end56.if.end61_crit_edge
  %and62 = and i32 %7, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %if.end61.if.end65_crit_edge, label %if.then64

if.end61.if.end65_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

if.then64:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  %i_writecount.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 42
  %call.i.i.i110 = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_writecount.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %i_writecount.i, i32 1, i32 3, i32 1) #10
  %52 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %i_writecount.i, ptr %i_writecount.i, i32 1, ptr elementtype(i32) %i_writecount.i) #10, !srcloc !84
  tail call void @__mnt_drop_write(ptr noundef %3) #10
  br label %if.end65

if.end65:                                         ; preds = %if.then64, %if.end61.if.end65_crit_edge
  tail call void @dput(ptr noundef %1) #10
  %and66 = and i32 %7, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %if.end65.if.end75_crit_edge, label %if.then74, !prof !74

if.end65.if.end75_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end75

if.then74:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dissolve_on_fput(ptr noundef %3) #10
  br label %if.end75

if.end75:                                         ; preds = %if.then74, %if.end65.if.end75_crit_edge
  tail call void @mntput(ptr noundef %3) #10
  br label %out

out:                                              ; preds = %if.end75, %entry.out_crit_edge
  tail call void @security_file_free(ptr noundef %file) #10
  %53 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %f_mode, align 8
  %and.i112 = and i32 %54, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i112)
  %tobool.not.i113 = icmp eq i32 %and.i112, 0
  br i1 %tobool.not.i113, label %if.then.i, label %out.file_free.exit_crit_edge

out.file_free.exit_crit_edge:                     ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %file_free.exit

if.then.i:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %55 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef nonnull @nr_files, i64 noundef -1, i32 noundef %55) #10
  br label %file_free.exit

file_free.exit:                                   ; preds = %if.then.i, %out.file_free.exit_crit_edge
  tail call void @call_rcu(ptr noundef %file, ptr noundef nonnull @file_free_rcu) #10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @files_init() local_unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.3, i32 noundef 320, i32 noundef 0, i32 noundef 67379200, ptr noundef null) #10
  store ptr %call, ptr @filp_cachep, align 4
  %call1 = tail call i32 @__percpu_counter_init(ptr noundef nonnull @nr_files, i64 noundef 0, i32 noundef 3264, ptr noundef nonnull @files_init.__key) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__percpu_counter_init(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @files_maxfiles_init() local_unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @_totalram_pages, i32 noundef 4) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @_totalram_pages to i32))
  %0 = load volatile i32, ptr @_totalram_pages, align 4
  %call.i.i.i20 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @vm_zone_stat, i32 noundef 4) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vm_zone_stat to i32))
  %1 = load volatile i32, ptr @vm_zone_stat, align 4
  %2 = tail call i32 @llvm.smax.i32(i32 %1, i32 0) #10
  %sub = sub i32 %0, %2
  %mul = mul i32 %sub, 3
  %div19 = lshr i32 %mul, 1
  %sub2 = add i32 %0, -1
  %3 = tail call i32 @llvm.umin.i32(i32 %div19, i32 %sub2)
  %sub3 = sub i32 %0, %3
  %mul4 = shl i32 %sub3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 81929, i32 %mul4)
  %cmp7 = icmp ugt i32 %mul4, 81929
  %div5 = udiv i32 %mul4, 10
  %cond11 = select i1 %cmp7, i32 %div5, i32 8192
  store i32 %cond11, ptr getelementptr inbounds (%struct.files_stat_struct, ptr @files_stat, i32 0, i32 2), align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__register_sysctl_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @register_sysctl_mount_point(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmemleak_not_leak(ptr noundef) local_unnamed_addr #4 section ".ref.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_nr_files(ptr noundef %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile i64, ptr getelementptr inbounds (%struct.percpu_counter, ptr @nr_files, i32 0, i32 1), align 16
  %1 = tail call i64 @llvm.smax.i64(i64 %0, i64 0) #10
  %conv.i = trunc i64 %1 to i32
  store i32 %conv.i, ptr @files_stat, align 4
  %call1 = tail call i32 @proc_doulongvec_minmax(ptr noundef %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #10
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_doulongvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__percpu_counter_sum(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_file_alloc(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @file_free_rcu(ptr noundef %head) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %f_cred = getelementptr inbounds %struct.file, ptr %head, i32 0, i32 12
  %0 = ptrtoint ptr %f_cred to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_cred, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.put_cred.exit_crit_edge, label %do.body.i

entry.put_cred.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %put_cred.exit

do.body.i:                                        ; preds = %entry
  %call.i.i = tail call zeroext i1 @creds_are_invalid(ptr noundef nonnull %1) #10
  br i1 %call.i.i, label %if.then.i.i, label %do.body.i.__validate_creds.exit.i_crit_edge, !prof !72

do.body.i.__validate_creds.exit.i_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__validate_creds.exit.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__invalid_creds(ptr noundef nonnull %1, ptr noundef nonnull @.str.15, i32 noundef 286) #10
  br label %__validate_creds.exit.i

__validate_creds.exit.i:                          ; preds = %if.then.i.i, %do.body.i.__validate_creds.exit.i_crit_edge
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %1, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !78
  tail call void @llvm.prefetch.p0(ptr nonnull %1, i32 1, i32 3, i32 1) #10
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %1, ptr nonnull %1, i32 1, ptr nonnull elementtype(i32) %1) #10, !srcloc !79
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then1.i, label %__validate_creds.exit.i.put_cred.exit_crit_edge

__validate_creds.exit.i.put_cred.exit_crit_edge:  ; preds = %__validate_creds.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %put_cred.exit

if.then1.i:                                       ; preds = %__validate_creds.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__put_cred(ptr noundef nonnull %1) #10
  br label %put_cred.exit

put_cred.exit:                                    ; preds = %if.then1.i, %__validate_creds.exit.i.put_cred.exit_crit_edge, %entry.put_cred.exit_crit_edge
  %3 = load ptr, ptr @filp_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %3, ptr noundef %head) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rwlock_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @creds_are_invalid(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__invalid_creds(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_cred(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_add_batch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @errseq_sample(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @llist_add_batch(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @locks_remove_file(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ima_file_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_pid(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mnt_drop_write(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dissolve_on_fput(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mntput(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fsnotify_parent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsnotify(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @eventpoll_release_file(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @security_file_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !33, !35, !37, !39, !41, !43, !45, !46, !48, !49, !51, !52, !54, !56, !58, !60, !61}
!llvm.named.register.sp = !{!62}
!llvm.module.flags = !{!63, !64, !65, !66, !67, !68, !69, !70}
!llvm.ident = !{!71}

!0 = !{ptr @__ksymtab_get_max_files, !1, !"__ksymtab_get_max_files", i1 false, i1 false}
!1 = !{!"../fs/file_table.c", i32 77, i32 1}
!2 = !{ptr @__initcall__kmod_file_table__298_130_init_fs_stat_sysctls5, !3, !"__initcall__kmod_file_table__298_130_init_fs_stat_sysctls5", i1 false, i1 false}
!3 = !{!"../fs/file_table.c", i32 130, i32 1}
!4 = !{ptr @alloc_empty_file.old_max, !5, !"old_max", i1 false, i1 false}
!5 = !{!"../fs/file_table.c", i32 172, i32 14}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/file_table.c", i32 196, i32 3}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @alloc_empty_file._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @alloc_empty_file._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @alloc_file_pseudo.anon_ops, !13, !"anon_ops", i1 false, i1 false}
!13 = !{!"../fs/file_table.c", i32 255, i32 40}
!14 = !{ptr @__ksymtab_alloc_file_pseudo, !15, !"__ksymtab_alloc_file_pseudo", i1 false, i1 false}
!15 = !{!"../fs/file_table.c", i32 276, i32 1}
!16 = !{ptr @__ksymtab_flush_delayed_fput, !17, !"__ksymtab_flush_delayed_fput", i1 false, i1 false}
!17 = !{!"../fs/file_table.c", i32 367, i32 1}
!18 = !{ptr @__ksymtab_fput, !19, !"__ksymtab_fput", i1 false, i1 false}
!19 = !{!"../fs/file_table.c", i32 414, i32 1}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/file_table.c", i32 418, i32 34}
!22 = !{ptr @files_init.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../fs/file_table.c", i32 420, i32 2}
!24 = !{ptr @filp_cachep, !25, !"filp_cachep", i1 false, i1 false}
!25 = !{!"../fs/file_table.c", i32 42, i32 27}
!26 = !{ptr @nr_files, !27, !"nr_files", i1 false, i1 false}
!27 = !{!"../fs/file_table.c", i32 44, i32 30}
!28 = !{ptr @files_stat, !29, !"files_stat", i1 false, i1 false}
!29 = !{!"../fs/file_table.c", i32 37, i32 33}
!30 = !{ptr @.str.4, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/file_table.c", i32 122, i32 2}
!32 = !{ptr @.str.5, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.6, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/file_table.c", i32 125, i32 37}
!35 = !{ptr @.str.7, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/file_table.c", i32 93, i32 15}
!37 = !{ptr @.str.8, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/file_table.c", i32 100, i32 15}
!39 = !{ptr @.str.9, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/file_table.c", i32 109, i32 15}
!41 = !{ptr @fs_stat_sysctls, !42, !"fs_stat_sysctls", i1 false, i1 false}
!42 = !{!"../fs/file_table.c", i32 91, i32 25}
!43 = !{ptr @__alloc_file.__key, !44, !"__key", i1 false, i1 false}
!44 = !{!"../fs/file_table.c", i32 150, i32 2}
!45 = !{ptr @.str.10, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @__alloc_file.__key.11, !47, !"__key", i1 false, i1 false}
!47 = !{!"../fs/file_table.c", i32 151, i32 2}
!48 = !{ptr @.str.12, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @__alloc_file.__key.13, !50, !"__key", i1 false, i1 false}
!50 = !{!"../fs/file_table.c", i32 152, i32 2}
!51 = !{ptr @.str.14, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.15, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../include/linux/cred.h", i32 253, i32 2}
!54 = distinct !{null, !55, !"__warned", i1 false, i1 false}
!55 = !{!"../fs/file_table.c", i32 229, i32 33}
!56 = !{ptr @delayed_fput_list, !57, !"delayed_fput_list", i1 false, i1 false}
!57 = !{!"../fs/file_table.c", i32 338, i32 8}
!58 = !{ptr @.str.16, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../fs/file_table.c", i32 369, i32 8}
!60 = !{ptr @.str.17, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @delayed_fput_work, !59, !"delayed_fput_work", i1 false, i1 false}
!62 = !{!"sp"}
!63 = !{i32 1, !"wchar_size", i32 2}
!64 = !{i32 1, !"min_enum_size", i32 4}
!65 = !{i32 8, !"branch-target-enforcement", i32 0}
!66 = !{i32 8, !"sign-return-address", i32 0}
!67 = !{i32 8, !"sign-return-address-all", i32 0}
!68 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!69 = !{i32 7, !"uwtable", i32 1}
!70 = !{i32 7, !"frame-pointer", i32 2}
!71 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!72 = !{!"branch_weights", i32 1, i32 2000}
!73 = !{i64 2148605210, i64 2148605236, i64 2148605265, i64 2148605299, i64 2148605330, i64 2148605353}
!74 = !{!"branch_weights", i32 2000, i32 1}
!75 = !{i64 2149207871}
!76 = !{i64 1111978, i64 1111995, i64 1112019, i64 1112045, i64 1112063}
!77 = !{i64 2149208224}
!78 = !{i64 2148693686}
!79 = !{i64 2148608395, i64 2148608427, i64 2148608456, i64 2148608490, i64 2148608521, i64 2148608544}
!80 = !{i64 2148693915}
!81 = !{i64 2155270394, i64 2155270874, i64 2155270431, i64 2155270487, i64 2155270521, i64 2155270545, i64 2155270586, i64 2155270607, i64 2155270635, i64 2155270669}
!82 = !{!"branch_weights", i32 1, i32 4001}
!83 = !{i64 2152951559, i64 2152952043, i64 2152951596, i64 2152951652, i64 2152951686, i64 2152951710, i64 2152951751, i64 2152951772, i64 2152951800, i64 2152951834}
!84 = !{i64 2148607675, i64 2148607701, i64 2148607730, i64 2148607764, i64 2148607795, i64 2148607818}
