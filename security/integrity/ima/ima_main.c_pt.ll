; ModuleID = '/llk/IR_all_yes/security/integrity/ima/ima_main.c_pt.bc'
source_filename = "../security/integrity/ima/ima_main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+ima_file_check\22, \22a\22\09"
module asm "\09.weak\09__crc_ima_file_check\09\09\09\09"
module asm "\09.long\09__crc_ima_file_check\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ima_file_check:\09\09\09\09\09"
module asm "\09.asciz \09\22ima_file_check\22\09\09\09\09\09"
module asm "__kstrtabns_ima_file_check:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ima_file_hash\22, \22a\22\09"
module asm "\09.weak\09__crc_ima_file_hash\09\09\09\09"
module asm "\09.long\09__crc_ima_file_hash\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ima_file_hash:\09\09\09\09\09"
module asm "\09.asciz \09\22ima_file_hash\22\09\09\09\09\09"
module asm "__kstrtabns_ima_file_hash:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ima_inode_hash\22, \22a\22\09"
module asm "\09.weak\09__crc_ima_inode_hash\09\09\09\09"
module asm "\09.long\09__crc_ima_inode_hash\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ima_inode_hash:\09\09\09\09\09"
module asm "\09.asciz \09\22ima_inode_hash\22\09\09\09\09\09"
module asm "__kstrtabns_ima_inode_hash:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ima_measure_critical_data\22, \22a\22\09"
module asm "\09.weak\09__crc_ima_measure_critical_data\09\09\09\09"
module asm "\09.long\09__crc_ima_measure_critical_data\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ima_measure_critical_data:\09\09\09\09\09"
module asm "\09.asciz \09\22ima_measure_critical_data\22\09\09\09\09\09"
module asm "__kstrtabns_ima_measure_critical_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.5 }
%union.anon.5 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.15, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.15 = type { %struct.anon.16 }
%struct.anon.16 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.ima_template_desc = type { %struct.list_head, ptr, ptr, i32, ptr }
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.integrity_iint_cache = type { %struct.rb_node, %struct.mutex, ptr, i64, i32, i32, i32, i24, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.68, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.69, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.70, ptr, %struct.address_space, %struct.list_head, %union.anon.73, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.68 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.69 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.70 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.73 = type { ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
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
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.54, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.43 }
%struct.llist_node = type { ptr }
%union.anon.43 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.45 }
%union.anon.45 = type { %struct.anon.46 }
%struct.anon.46 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.54 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.76, %struct.list_head, %struct.list_head, %union.anon.77 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.3, ptr }
%union.anon.3 = type { i64 }
%struct.lockref = type { %union.anon.74 }
%union.anon.74 = type { %struct.anon.75 }
%struct.anon.75 = type { %struct.spinlock, i32 }
%union.anon.76 = type { %struct.list_head }
%union.anon.77 = type { %struct.hlist_node }
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [76 x i8] }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.26, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.26 = type { %struct.anon.27 }
%struct.anon.27 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.linux_binprm = type { ptr, i32, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, %struct.rlimit, [256 x i8] }
%struct.rlimit = type { i32, i32 }
%struct.ima_digest_data = type { i8, i8, %union.anon.78, [0 x i8] }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { i8, i8 }
%struct.ima_event_data = type { ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32 }
%struct.anon.81 = type { %struct.ima_digest_data, [64 x i8] }

@ima_appraise = dso_local global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@ima_hash_algo = dso_local local_unnamed_addr global i32 2, section ".data..ro_after_init", align 4
@__setup_str_hash_setup = internal constant [10 x i8] c"ima_hash=\00", section ".init.rodata", align 1
@__setup_hash_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_hash_setup, ptr @hash_setup, i32 0 }, section ".init.setup", align 4
@ima_policy_flag = external dso_local local_unnamed_addr global i32, align 4
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"collect_data\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"failed-mprotect\00", [16 x i8] zeroinitializer }, align 32
@names_cachep = external dso_local local_unnamed_addr global ptr, align 4
@__kstrtab_ima_file_check = external dso_local constant [0 x i8], align 1
@__kstrtabns_ima_file_check = external dso_local constant [0 x i8], align 1
@__ksymtab_ima_file_check = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ima_file_check to i32), ptr @__kstrtab_ima_file_check, ptr @__kstrtabns_ima_file_check }, section "___ksymtab_gpl+ima_file_check", align 4
@__kstrtab_ima_file_hash = external dso_local constant [0 x i8], align 1
@__kstrtabns_ima_file_hash = external dso_local constant [0 x i8], align 1
@__ksymtab_ima_file_hash = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ima_file_hash to i32), ptr @__kstrtab_ima_file_hash, ptr @__kstrtabns_ima_file_hash }, section "___ksymtab_gpl+ima_file_hash", align 4
@__kstrtab_ima_inode_hash = external dso_local constant [0 x i8], align 1
@__kstrtabns_ima_inode_hash = external dso_local constant [0 x i8], align 1
@__ksymtab_ima_inode_hash = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ima_inode_hash to i32), ptr @__kstrtab_ima_inode_hash, ptr @__kstrtabns_ima_inode_hash }, section "___ksymtab_gpl+ima_inode_hash", align 4
@read_idmap = dso_local constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 0, i32 7, i32 6, i32 8, i32 9, i32 10, i32 0], [36 x i8] zeroinitializer }, align 32
@ima_load_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 788, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [108 x i8], [52 x i8] } { [108 x i8] c"\013ima: impossible to appraise a kernel image without a file descriptor; try using kexec_file_load syscall.\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ima_load_data\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"security/integrity/ima/ima_main.c\00", [62 x i8] zeroinitializer }, align 32
@ima_load_data._entry_ptr = internal global ptr @ima_load_data._entry, section ".printk_index", align 4
@ima_load_data._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.4, ptr @.str.5, i32 794, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013ima: Prevent firmware sysfs fallback loading.\0A\00", [47 x i8] zeroinitializer }, align 32
@ima_load_data._entry_ptr.8 = internal global ptr @ima_load_data._entry.6, section ".printk_index", align 4
@ima_load_data._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.5, i32 803, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [107 x i8], [53 x i8] } { [107 x i8] c"\013ima: impossible to appraise a module without a file descriptor. sig_enforce kernel parameter might help\0A\00", [53 x i8] zeroinitializer }, align 32
@ima_load_data._entry_ptr.11 = internal global ptr @ima_load_data._entry.9, section ".printk_index", align 4
@ima_post_load_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.5, i32 833, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013ima: Prevent firmware loading_store.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ima_post_load_data\00", [45 x i8] zeroinitializer }, align 32
@ima_post_load_data._entry_ptr = internal global ptr @ima_post_load_data._entry, section ".printk_index", align 4
@hash_digest_size = external dso_local local_unnamed_addr constant [20 x i32], align 4
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ima_template_desc_buf\00", [42 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hashing_error\00", [18 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"alloc_entry\00", [20 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"store_entry\00", [20 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"kexec-cmdline\00", [18 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@__kstrtab_ima_measure_critical_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_ima_measure_critical_data = external dso_local constant [0 x i8], align 1
@__ksymtab_ima_measure_critical_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ima_measure_critical_data to i32), ptr @__kstrtab_ima_measure_critical_data, ptr @__kstrtabns_ima_measure_critical_data }, section "___ksymtab_gpl+ima_measure_critical_data", align 4
@__initcall__kmod_ima__248_1060_init_ima7 = internal global ptr @init_ima, section ".initcall7.init", align 4
@hash_setup_done = internal global { i1, [31 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ima\00", [28 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sha1\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"md5\00", [28 x i8] zeroinitializer }, align 32
@hash_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.5, i32 60, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013ima: invalid hash algorithm \22%s\22 for template \22%s\22\00", [43 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hash_setup\00", [21 x i8] zeroinitializer }, align 32
@hash_setup._entry_ptr = internal global ptr @hash_setup._entry, section ".printk_index", align 4
@hash_algo_name = external dso_local constant [20 x ptr], align 4
@hash_setup._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.5, i32 68, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013ima: invalid hash algorithm \22%s\22\00", [61 x i8] zeroinitializer }, align 32
@hash_setup._entry_ptr.27 = internal global ptr @hash_setup._entry.25, section ".printk_index", align 4
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"denied-hash-algorithm\00", [42 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"invalid_pcr\00", [20 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ToMToU\00", [25 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"open_writers\00", [19 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mmap_file\00", [22 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mmapped_writers\00", [16 x i8] zeroinitializer }, align 32
@ima_hooks_measure_str = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.34], [32 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"measuring_none\00", [17 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"measuring_file\00", [17 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"measuring_mmap\00", [17 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"measuring_bprm\00", [17 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"measuring_creds\00", [16 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"measuring_post_setattr\00", [41 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"measuring_module\00", [47 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"measuring_firmware\00", [45 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"measuring_kexec_kernel\00", [41 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"measuring_kexec_initramfs\00", [38 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"measuring_policy\00", [47 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"measuring_kexec_cmdline\00", [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"measuring_key\00", [18 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"measuring_critical_data\00", [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"measuring_setxattr_check\00", [39 x i8] zeroinitializer }, align 32
@init_ima._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.5, i32 1041, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\016ima: Allocating %s failed, going to use default hash algorithm %s\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"init_ima\00", [23 x i8] zeroinitializer }, align 32
@init_ima._entry_ptr = internal global ptr @init_ima._entry, section ".printk_index", align 4
@ima_lsm_policy_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @ima_lsm_policy_change, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@init_ima._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.50, ptr @.str.5, i32 1052, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014ima: Couldn't register LSM notifier, error %d\0A\00", [47 x i8] zeroinitializer }, align 32
@init_ima._entry_ptr.53 = internal global ptr @init_ima._entry.51, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967274, i64 4294967287]
@__sancov_gen_cov_switch_values.54 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.55 = private unnamed_addr constant [13 x i8] c"ima_appraise\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 33, i32 5 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 465, i32 8 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 465, i32 24 }
@___asan_gen_.64 = private unnamed_addr constant [11 x i8] c"read_idmap\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 717, i32 11 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 788, i32 4 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 794, i32 4 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 803, i32 4 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 833, i32 4 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 896, i32 17 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 925, i32 17 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 951, i32 17 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 957, i32 17 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 990, i32 19 }
@___asan_gen_.115 = private unnamed_addr constant [16 x i8] c"hash_setup_done\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 53, i32 34 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 54, i32 20 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 56, i32 27 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 59, i32 4 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 68, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 374, i32 9 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 149, i32 7 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 149, i32 22 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 152, i32 22 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 100, i32 9 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 100, i32 22 }
@___asan_gen_.158 = private unnamed_addr constant [22 x i8] c"ima_hooks_measure_str\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 216, i32 27 }
@___asan_gen_.204 = private unnamed_addr constant [32 x i8] c"../security/integrity/ima/ima.h\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 217, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 1040, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant [24 x i8] c"ima_lsm_policy_notifier\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 41, i32 30 }
@___asan_gen_.218 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.221 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.222 = private constant [37 x i8] c"../security/integrity/ima/ima_main.c\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 1052, i32 3 }
@llvm.compiler.used = appending global [71 x ptr] [ptr @__initcall__kmod_ima__248_1060_init_ima7, ptr @__ksymtab_ima_file_check, ptr @__ksymtab_ima_file_hash, ptr @__ksymtab_ima_inode_hash, ptr @__ksymtab_ima_measure_critical_data, ptr @__setup_hash_setup, ptr @hash_setup._entry, ptr @hash_setup._entry.25, ptr @hash_setup._entry_ptr, ptr @hash_setup._entry_ptr.27, ptr @ima_load_data._entry, ptr @ima_load_data._entry.6, ptr @ima_load_data._entry.9, ptr @ima_load_data._entry_ptr, ptr @ima_load_data._entry_ptr.11, ptr @ima_load_data._entry_ptr.8, ptr @ima_post_load_data._entry, ptr @ima_post_load_data._entry_ptr, ptr @init_ima._entry, ptr @init_ima._entry.51, ptr @init_ima._entry_ptr, ptr @init_ima._entry_ptr.53, ptr @ima_appraise, ptr @.str, ptr @.str.1, ptr @read_idmap, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @hash_setup_done, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @ima_hooks_measure_str, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @ima_lsm_policy_notifier, ptr @.str.52], section "llvm.metadata"
@0 = internal global [57 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ima_appraise to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_idmap to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ima_load_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ima_load_data._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ima_load_data._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 107, i32 160, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ima_post_load_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hash_setup_done to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hash_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hash_setup._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ima_hooks_measure_str to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_ima._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ima_lsm_policy_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_ima._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hash_setup(ptr noundef %str) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ima_template_desc_current() #9
  %.b = load i1, ptr @hash_setup_done, align 4
  br i1 %.b, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %name = getelementptr inbounds %struct.ima_template_desc, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 4
  %call1 = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(4) @.str.20) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %if.then2, label %if.end13

if.then2:                                         ; preds = %if.end
  %call3 = tail call i32 @strncmp(ptr noundef %str, ptr noundef nonnull dereferenceable(5) @.str.21, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.then2.out_crit_edge, label %if.else

if.then2.out_crit_edge:                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.else:                                          ; preds = %if.then2
  %call6 = tail call i32 @strncmp(ptr noundef %str, ptr noundef nonnull dereferenceable(4) @.str.22, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.else.out_crit_edge, label %do.end

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %str, ptr noundef nonnull @.str.20) #13
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %call14 = tail call i32 @match_string(ptr noundef nonnull @hash_algo_name, i32 noundef 20, ptr noundef %str) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %do.end19, label %if.end13.out_crit_edge

if.end13.out_crit_edge:                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.end19:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %str) #13
  br label %cleanup

out:                                              ; preds = %if.end13.out_crit_edge, %if.else.out_crit_edge, %if.then2.out_crit_edge
  %.sink = phi i32 [ 2, %if.then2.out_crit_edge ], [ 1, %if.else.out_crit_edge ], [ %call14, %if.end13.out_crit_edge ]
  store i32 %.sink, ptr @ima_hash_algo, align 4
  store i1 true, ptr @hash_setup_done, align 4
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end19, %do.end, %entry.cleanup_crit_edge
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ima_get_current_hash_algo() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @ima_hash_algo, align 4
  ret i32 %0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ima_file_free(ptr noundef %file) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ima_policy_flag to i32))
  %2 = load i32, ptr @ima_policy_flag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %1, align 8
  %5 = and i16 %4, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %5)
  %cmp = icmp eq i16 %5, -32768
  br i1 %cmp, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call2 = tail call ptr @integrity_iint_find(ptr noundef %1) #9
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %f_mode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %6 = ptrtoint ptr %f_mode.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %f_mode.i, align 8
  %and.i = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end5.cleanup_crit_edge, label %if.end.i

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.end5
  %mutex.i = getelementptr inbounds %struct.integrity_iint_cache, ptr %call2, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #9
  %i_writecount.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 42
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_writecount.i, i32 noundef 4) #9
  %8 = ptrtoint ptr %i_writecount.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %i_writecount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.i = icmp eq i32 %9, 1
  br i1 %cmp.i, label %if.then1.i, label %if.end.i.if.end17.i_crit_edge

if.end.i.if.end17.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.i

if.then1.i:                                       ; preds = %if.end.i
  %atomic_flags.i = getelementptr inbounds %struct.integrity_iint_cache, ptr %call2, i32 0, i32 6
  %call2.i = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %atomic_flags.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_sb.i, align 4
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 10
  %12 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_flags.i, align 4
  %and4.i = and i32 %13, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %if.then1.i.if.then10.i_crit_edge, label %lor.lhs.false.i

if.then1.i.if.then10.i_crit_edge:                 ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10.i

lor.lhs.false.i:                                  ; preds = %if.then1.i
  %version.i = getelementptr inbounds %struct.integrity_iint_cache, ptr %call2, i32 0, i32 3
  %14 = ptrtoint ptr %version.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %version.i, align 8
  %i_version.i.i.i.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 38
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_version.i.i.i.i, i32 noundef 8) #9
  %call.i.i.i.i.i = tail call i64 @generic_atomic64_read(ptr noundef %i_version.i.i.i.i) #9
  %shr.i.i.i = lshr i64 %call.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %shr.i.i.i, i64 %15)
  %cmp.i.i = icmp eq i64 %shr.i.i.i, %15
  br i1 %cmp.i.i, label %lor.lhs.false7.i, label %lor.lhs.false.i.if.then10.i_crit_edge

lor.lhs.false.i.if.then10.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10.i

lor.lhs.false7.i:                                 ; preds = %lor.lhs.false.i
  %flags.i = getelementptr inbounds %struct.integrity_iint_cache, ptr %call2, i32 0, i32 4
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags.i, align 8
  %and8.i = and i32 %17, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %lor.lhs.false7.i.if.end17.i_crit_edge, label %lor.lhs.false7.i.if.then10.i_crit_edge

lor.lhs.false7.i.if.then10.i_crit_edge:           ; preds = %lor.lhs.false7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10.i

lor.lhs.false7.i.if.end17.i_crit_edge:            ; preds = %lor.lhs.false7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.i

if.then10.i:                                      ; preds = %lor.lhs.false7.i.if.then10.i_crit_edge, %lor.lhs.false.i.if.then10.i_crit_edge, %if.then1.i.if.then10.i_crit_edge
  %flags11.i = getelementptr inbounds %struct.integrity_iint_cache, ptr %call2, i32 0, i32 4
  %18 = ptrtoint ptr %flags11.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags11.i, align 8
  %and12.i = and i32 %19, -69903019
  store i32 %and12.i, ptr %flags11.i, align 8
  %measured_pcrs.i = getelementptr inbounds %struct.integrity_iint_cache, ptr %call2, i32 0, i32 5
  %20 = ptrtoint ptr %measured_pcrs.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %measured_pcrs.i, align 4
  br i1 %tobool3.not.i, label %if.then10.i.if.end17.i_crit_edge, label %if.then14.i

if.then10.i.if.end17.i_crit_edge:                 ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.i

if.then14.i:                                      ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ima_update_xattr(ptr noundef nonnull %call2, ptr noundef %file) #9
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then14.i, %if.then10.i.if.end17.i_crit_edge, %lor.lhs.false7.i.if.end17.i_crit_edge, %if.end.i.if.end17.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end17.i, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @integrity_iint_find(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ima_file_mmap(ptr noundef %file, i32 noundef %prot) local_unnamed_addr #2 align 64 {
entry:
  %secid = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %secid) #9
  %0 = ptrtoint ptr %secid to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %secid, align 4, !annotation !136
  %tobool.not = icmp eq ptr %file, null
  %and = and i32 %prot, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @security_current_getsecid_subj(ptr noundef nonnull %secid) #9
  %1 = call i32 @llvm.read_register.i32(metadata !126) #9
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 99
  %5 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cred, align 16
  %7 = ptrtoint ptr %secid to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %secid, align 4
  %call2 = call fastcc i32 @process_measurement(ptr noundef nonnull %file, ptr noundef %6, i32 noundef %8, ptr noundef null, i64 noundef 0, i32 noundef 1, i32 noundef 2)
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %secid) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @security_current_getsecid_subj(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @process_measurement(ptr noundef %file, ptr noundef %cred, i32 noundef %secid, ptr noundef %buf, i64 noundef %size, i32 noundef %mask, i32 noundef %func) unnamed_addr #2 align 64 {
entry:
  %template_desc = alloca ptr, align 4
  %pathbuf = alloca ptr, align 4
  %filename = alloca [255 x i8], align 1
  %pathname = alloca ptr, align 4
  %pcr = alloca i32, align 4
  %xattr_value = alloca ptr, align 4
  %modsig = alloca ptr, align 4
  %allowed_algos = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %template_desc) #9
  %2 = ptrtoint ptr %template_desc to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %template_desc, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pathbuf) #9
  %3 = ptrtoint ptr %pathbuf to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %pathbuf, align 4
  call void @llvm.lifetime.start.p0(i64 255, ptr nonnull %filename) #9
  %4 = call ptr @memset(ptr %filename, i32 255, i32 255)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pathname) #9
  %5 = ptrtoint ptr %pathname to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %pathname, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcr) #9
  %6 = ptrtoint ptr %pcr to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 10, ptr %pcr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %xattr_value) #9
  %7 = ptrtoint ptr %xattr_value to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %xattr_value, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %modsig) #9
  %8 = ptrtoint ptr %modsig to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %modsig, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %allowed_algos) #9
  %9 = ptrtoint ptr %allowed_algos to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %allowed_algos, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ima_policy_flag to i32))
  %10 = load i32, ptr @ima_policy_flag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %1, align 8
  %13 = and i16 %12, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %13)
  %cmp = icmp eq i16 %13, -32768
  br i1 %cmp, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %f_path.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1
  %14 = ptrtoint ptr %f_path.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %f_path.i, align 8
  %mnt_userns.i.i = getelementptr inbounds %struct.vfsmount, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %mnt_userns.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %mnt_userns.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !137
  %call3 = call i32 @ima_get_action(ptr noundef %17, ptr noundef %1, ptr noundef %cred, i32 noundef %secid, i32 noundef %mask, i32 noundef %func, ptr noundef nonnull %pcr, ptr noundef nonnull %template_desc, ptr noundef null, ptr noundef nonnull %allowed_algos) #9
  %func.off = add i32 %func, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %func.off)
  %switch = icmp ult i32 %func.off, 2
  br i1 %switch, label %land.rhs, label %if.end.land.end_crit_edge

if.end.land.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end

land.rhs:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ima_policy_flag to i32))
  %18 = load i32, ptr @ima_policy_flag, align 4
  %and9 = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10 = icmp ne i32 %and9, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.land.end_crit_edge
  %19 = phi i1 [ %tobool10, %land.rhs ], [ false, %if.end.land.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool11.not = icmp eq i32 %call3, 0
  %tobool11.not.not = xor i1 %tobool11.not, true
  %brmerge = select i1 %tobool11.not.not, i1 true, i1 %19
  br i1 %brmerge, label %if.end14, label %land.end.cleanup_crit_edge

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14:                                         ; preds = %land.end
  %and15 = and i32 %call3, 4
  %and16 = and i32 %call3, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  %spec.select = select i1 %tobool17.not, i32 %func, i32 1
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 25
  call void @down_write(ptr noundef %i_rwsem.i) #9
  br i1 %tobool11.not, label %if.end14.if.end26_crit_edge, label %if.then21

if.end14.if.end26_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then21:                                        ; preds = %if.end14
  %call22 = call ptr @integrity_inode_get(ptr noundef %1) #9
  %tobool23.not = icmp eq ptr %call22, null
  br i1 %tobool23.not, label %.thread, label %if.then21.if.end26_crit_edge

if.then21.if.end26_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

.thread:                                          ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  call void @up_write(ptr noundef %i_rwsem.i) #9
  br label %out

if.end26:                                         ; preds = %if.then21.if.end26_crit_edge, %if.end14.if.end26_crit_edge
  %iint.0 = phi ptr [ %call22, %if.then21.if.end26_crit_edge ], [ null, %if.end14.if.end26_crit_edge ]
  br i1 %19, label %if.then31, label %if.end26.if.end33_crit_edge

if.end26.if.end33_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

if.then31:                                        ; preds = %if.end26
  %20 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %f_inode.i, align 8
  %f_mode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %22 = ptrtoint ptr %f_mode.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %f_mode.i, align 8
  %and.i = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then31
  %i_readcount.i = getelementptr inbounds %struct.inode, ptr %21, i32 0, i32 43
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %i_readcount.i, i32 noundef 4) #9
  %24 = ptrtoint ptr %i_readcount.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %i_readcount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool2.not.i = icmp eq i32 %25, 0
  br i1 %tobool2.not.i, label %if.then.i.if.end25.i_crit_edge, label %land.lhs.true.i

if.then.i.if.end25.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25.i

land.lhs.true.i:                                  ; preds = %if.then.i
  %i_flags.i = getelementptr inbounds %struct.inode, ptr %21, i32 0, i32 4
  %26 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %i_flags.i, align 4
  %and3.i = and i32 %27, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.if.end25.i_crit_edge, label %if.then5.i

land.lhs.true.i.if.end25.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25.i

if.then5.i:                                       ; preds = %land.lhs.true.i
  %tobool6.not.i = icmp eq ptr %iint.0, null
  br i1 %tobool6.not.i, label %if.end.i, label %if.then5.i.land.lhs.true10.i_crit_edge

if.then5.i.land.lhs.true10.i_crit_edge:           ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true10.i

if.end.i:                                         ; preds = %if.then5.i
  %call8.i = call ptr @integrity_iint_find(ptr noundef %21) #9
  %tobool9.not.i = icmp eq ptr %call8.i, null
  br i1 %tobool9.not.i, label %if.end.i.if.end25.i_crit_edge, label %if.end.i.land.lhs.true10.i_crit_edge

if.end.i.land.lhs.true10.i_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true10.i

if.end.i.if.end25.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25.i

land.lhs.true10.i:                                ; preds = %if.end.i.land.lhs.true10.i_crit_edge, %if.then5.i.land.lhs.true10.i_crit_edge
  %iint.addr.062.i = phi ptr [ %call8.i, %if.end.i.land.lhs.true10.i_crit_edge ], [ %iint.0, %if.then5.i.land.lhs.true10.i_crit_edge ]
  %atomic_flags.i = getelementptr inbounds %struct.integrity_iint_cache, ptr %iint.addr.062.i, i32 0, i32 6
  %28 = ptrtoint ptr %atomic_flags.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %atomic_flags.i, align 4
  %30 = and i32 %29, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool12.not.i = icmp ne i32 %30, 0
  br label %if.end25.i

if.else.i:                                        ; preds = %if.then31
  %and32 = and i32 %call3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool16.not.i = icmp eq i32 %and32, 0
  br i1 %tobool16.not.i, label %if.else.i.if.end19.i_crit_edge, label %if.then17.i

if.else.i.if.end19.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19.i

if.then17.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %atomic_flags18.i = getelementptr inbounds %struct.integrity_iint_cache, ptr %iint.0, i32 0, i32 6
  call void @_set_bit(i32 noundef 4, ptr noundef %atomic_flags18.i) #9
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then17.i, %if.else.i.if.end19.i_crit_edge
  %i_writecount.i.i = getelementptr inbounds %struct.inode, ptr %21, i32 0, i32 42
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %i_writecount.i.i, i32 noundef 4) #9
  %31 = ptrtoint ptr %i_writecount.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %i_writecount.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp.i.i = icmp sgt i32 %32, 0
  %not.tobool16.not.i = xor i1 %tobool16.not.i, true
  %spec.select59.i = and i1 %cmp.i.i, %not.tobool16.not.i
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.end19.i, %land.lhs.true10.i, %if.end.i.if.end25.i_crit_edge, %land.lhs.true.i.if.end25.i_crit_edge, %if.then.i.if.end25.i_crit_edge
  %iint.addr.1.i = phi ptr [ null, %if.end.i.if.end25.i_crit_edge ], [ %iint.0, %land.lhs.true.i.if.end25.i_crit_edge ], [ %iint.0, %if.then.i.if.end25.i_crit_edge ], [ %iint.addr.062.i, %land.lhs.true10.i ], [ %iint.0, %if.end19.i ]
  %send_tomtou.0.off0.i = phi i1 [ false, %if.end.i.if.end25.i_crit_edge ], [ false, %land.lhs.true.i.if.end25.i_crit_edge ], [ false, %if.then.i.if.end25.i_crit_edge ], [ %tobool12.not.i, %land.lhs.true10.i ], [ false, %if.end19.i ]
  %send_writers.0.off0.i = phi i1 [ false, %if.end.i.if.end25.i_crit_edge ], [ false, %land.lhs.true.i.if.end25.i_crit_edge ], [ false, %if.then.i.if.end25.i_crit_edge ], [ false, %land.lhs.true10.i ], [ %spec.select59.i, %if.end19.i ]
  %brmerge.i = or i1 %send_tomtou.0.off0.i, %send_writers.0.off0.i
  br i1 %brmerge.i, label %if.end30.i, label %if.end25.i.if.end33_crit_edge

if.end25.i.if.end33_crit_edge:                    ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

if.end30.i:                                       ; preds = %if.end25.i
  %call31.i = call ptr @ima_d_path(ptr noundef %f_path.i, ptr noundef nonnull %pathbuf, ptr noundef nonnull %filename) #9
  %33 = ptrtoint ptr %pathname to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call31.i, ptr %pathname, align 4
  br i1 %send_tomtou.0.off0.i, label %if.then33.i, label %if.end30.i.if.end34.i_crit_edge

if.end30.i.if.end34.i_crit_edge:                  ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.i

if.then33.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @ima_add_violation(ptr noundef %file, ptr noundef %call31.i, ptr noundef %iint.addr.1.i, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30) #9
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then33.i, %if.end30.i.if.end34.i_crit_edge
  br i1 %send_writers.0.off0.i, label %if.then36.i, label %if.end34.i.if.end33_crit_edge

if.end34.i.if.end33_crit_edge:                    ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

if.then36.i:                                      ; preds = %if.end34.i
  call void @ima_add_violation(ptr noundef %file, ptr noundef %call31.i, ptr noundef %iint.addr.1.i, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.31) #9
  call void @up_write(ptr noundef %i_rwsem.i) #9
  br i1 %tobool11.not, label %if.then36.i.out_crit_edge, label %if.then36.i.if.end39_crit_edge

if.then36.i.if.end39_crit_edge:                   ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

if.then36.i.out_crit_edge:                        ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end33:                                         ; preds = %if.end34.i.if.end33_crit_edge, %if.end25.i.if.end33_crit_edge, %if.end26.if.end33_crit_edge
  call void @up_write(ptr noundef %i_rwsem.i) #9
  br i1 %tobool11.not, label %if.end33.out_crit_edge, label %if.end33.if.end39_crit_edge

if.end33.if.end39_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

if.end33.out_crit_edge:                           ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end39:                                         ; preds = %if.end33.if.end39_crit_edge, %if.then36.i.if.end39_crit_edge
  %mutex = getelementptr inbounds %struct.integrity_iint_cache, ptr %iint.0, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %atomic_flags = getelementptr inbounds %struct.integrity_iint_cache, ptr %iint.0, i32 0, i32 6
  %call40 = call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %atomic_flags) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end39.if.end44_crit_edge, label %if.then42

if.end39.if.end44_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

if.then42:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  %flags = getelementptr inbounds %struct.integrity_iint_cache, ptr %iint.0, i32 0, i32 4
  %34 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags, align 8
  %and43 = and i32 %35, 12586995
  store i32 %and43, ptr %flags, align 8
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %if.end39.if.end44_crit_edge
  %call46 = call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %atomic_flags) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %lor.lhs.false48, label %if.end44.if.then59_crit_edge

if.end44.if.then59_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then59

lor.lhs.false48:                                  ; preds = %if.end44
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %36 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %i_sb, align 4
  %s_iflags = getelementptr inbounds %struct.super_block, ptr %37, i32 0, i32 11
  %38 = ptrtoint ptr %s_iflags to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %s_iflags, align 8
  %40 = and i32 %39, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %40)
  %41 = icmp eq i32 %40, 32
  %and57 = and i32 %call3, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  %or.cond352 = select i1 %41, i1 %tobool58.not, i1 false
  br i1 %or.cond352, label %lor.lhs.false48.if.then59_crit_edge, label %lor.lhs.false48.if.end62_crit_edge

lor.lhs.false48.if.end62_crit_edge:               ; preds = %lor.lhs.false48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

lor.lhs.false48.if.then59_crit_edge:              ; preds = %lor.lhs.false48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then59

if.then59:                                        ; preds = %lor.lhs.false48.if.then59_crit_edge, %if.end44.if.then59_crit_edge
  %flags60 = getelementptr inbounds %struct.integrity_iint_cache, ptr %iint.0, i32 0, i32 4
  %42 = ptrtoint ptr %flags60 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %flags60, align 8
  %and61 = and i32 %43, -2794155
  store i32 %and61, ptr %flags60, align 8
  %measured_pcrs = getelementptr inbounds %struct.integrity_iint_cache, ptr %iint.0, i32 0, i32 5
  %44 = ptrtoint ptr %measured_pcrs to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %measured_pcrs, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.then59, %lor.lhs.false48.if.end62_crit_edge
  %flags63 = getelementptr inbounds %struct.integrity_iint_cache, ptr %iint.0, i32 0, i32 4
  %45 = ptrtoint ptr %flags63 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %flags63, align 8
  %or = or i32 %46, %call3
  store i32 %or, ptr %flags63, align 8
  %and64 = and i32 %call3, 1397061
  %and66 = lshr i32 %or, 1
  %shr = and i32 %and66, 1397076
  %neg = xor i32 %shr, -1
  %and67 = and i32 %and64, %neg
  %and68 = and i32 %call3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %if.end62.if.end75_crit_edge, label %land.lhs.true70

if.end62.if.end75_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

land.lhs.true70:                                  ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  %measured_pcrs71 = getelementptr inbounds %struct.integrity_iint_cache, ptr %iint.0, i32 0, i32 5
  %47 = ptrtoint ptr %measured_pcrs71 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %measured_pcrs71, align 4
  %49 = ptrtoint ptr %pcr to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %pcr, align 4
  %51 = lshr i32 %48, %50
  %52 = and i32 %51, 1
  %spec.select353 = xor i32 %52, %and67
  br label %if.end75

if.end75:                                         ; preds = %land.lhs.true70, %if.end62.if.end75_crit_edge
  %action.0 = phi i32 [ %and67, %if.end62.if.end75_crit_edge ], [ %spec.select353, %land.lhs.true70 ]
  %and76 = and i32 %action.0, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %if.end75.if.end100_crit_edge, label %land.lhs.true78

if.end75.if.end100_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end100

land.lhs.true78:                                  ; preds = %if.end75
  %53 = ptrtoint ptr %atomic_flags to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %atomic_flags, align 4
  %55 = and i32 %54, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool81.not = icmp eq i32 %55, 0
  br i1 %tobool81.not, label %if.then82, label %land.lhs.true78.if.end112_crit_edge

land.lhs.true78.if.end112_crit_edge:              ; preds = %land.lhs.true78
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end112

if.then82:                                        ; preds = %land.lhs.true78
  %dentry.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %56 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dentry.i, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %57, align 8
  %and.i.i = and i32 %59, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then82.file_dentry.exit_crit_edge, label %if.then.i.i, !prof !138

if.then82.file_dentry.exit_crit_edge:             ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #11
  br label %file_dentry.exit

if.then.i.i:                                      ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #11
  %60 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %f_inode.i, align 8
  %d_op.i.i = getelementptr inbounds %struct.dentry, ptr %57, i32 0, i32 8
  %62 = ptrtoint ptr %d_op.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %d_op.i.i, align 8
  %d_real.i.i = getelementptr inbounds %struct.dentry_operations, ptr %63, i32 0, i32 12
  %64 = ptrtoint ptr %d_real.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %d_real.i.i, align 16
  %call.i.i = call ptr %65(ptr noundef %57, ptr noundef %61) #9
  br label %file_dentry.exit

file_dentry.exit:                                 ; preds = %if.then.i.i, %if.then82.file_dentry.exit_crit_edge
  %retval.0.i.i = phi ptr [ %call.i.i, %if.then.i.i ], [ %57, %if.then82.file_dentry.exit_crit_edge ]
  %call84 = call i32 @ima_read_xattr(ptr noundef %retval.0.i.i, ptr noundef nonnull %xattr_value) #9
  %66 = ptrtoint ptr %xattr_value to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %xattr_value, align 4
  %tobool85.not = icmp ne ptr %67, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call84)
  %cmp87 = icmp sgt i32 %call84, 2
  %or.cond354 = select i1 %tobool85.not, i1 %cmp87, i1 false
  br i1 %or.cond354, label %land.lhs.true89, label %file_dentry.exit.if.end95_crit_edge

file_dentry.exit.if.end95_crit_edge:              ; preds = %file_dentry.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end95

land.lhs.true89:                                  ; preds = %file_dentry.exit
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %67, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %69)
  %cmp91 = icmp eq i8 %69, 3
  br i1 %cmp91, label %if.then93, label %land.lhs.true89.if.end95_crit_edge

land.lhs.true89.if.end95_crit_edge:               ; preds = %land.lhs.true89
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end95

if.then93:                                        ; preds = %land.lhs.true89
  call void @__sanitizer_cov_trace_pc() #11
  call void @_set_bit(i32 noundef 3, ptr noundef %atomic_flags) #9
  br label %if.end95

if.end95:                                         ; preds = %if.then93, %land.lhs.true89.if.end95_crit_edge, %file_dentry.exit.if.end95_crit_edge
  %70 = ptrtoint ptr %flags63 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %flags63, align 8
  %or97 = or i32 %71, 512
  store i32 %or97, ptr %flags63, align 8
  %xor98 = xor i32 %action.0, 256
  call void @_set_bit(i32 noundef 1, ptr noundef %atomic_flags) #9
  br label %if.end100

if.end100:                                        ; preds = %if.end95, %if.end75.if.end100_crit_edge
  %action.1 = phi i32 [ %xor98, %if.end95 ], [ %action.0, %if.end75.if.end100_crit_edge ]
  %xattr_len.0 = phi i32 [ %call84, %if.end95 ], [ 0, %if.end75.if.end100_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %action.1)
  %tobool101.not = icmp eq i32 %action.1, 0
  br i1 %tobool101.not, label %if.then102, label %if.end100.if.end112_crit_edge

if.end100.if.end112_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end112

if.then102:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool103.not = icmp eq i32 %and15, 0
  br i1 %tobool103.not, label %if.then102.out_locked_crit_edge, label %if.then104

if.then102.out_locked_crit_edge:                  ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_locked

if.then104:                                       ; preds = %if.then102
  %call106 = call fastcc i32 @mmap_violation_check(i32 noundef %spec.select, ptr noundef %file, ptr noundef nonnull %pathbuf, ptr noundef nonnull %pathname, ptr noundef nonnull %filename)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %if.then108, label %if.then104.out_locked_crit_edge

if.then104.out_locked_crit_edge:                  ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_locked

if.then108:                                       ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #11
  %call109 = call i32 @ima_get_cache_status(ptr noundef %iint.0, i32 noundef %spec.select) #9
  br label %out_locked

if.end112:                                        ; preds = %if.end100.if.end112_crit_edge, %land.lhs.true78.if.end112_crit_edge
  %xattr_len.0401 = phi i32 [ %xattr_len.0, %if.end100.if.end112_crit_edge ], [ 0, %land.lhs.true78.if.end112_crit_edge ]
  %action.1400 = phi i32 [ %action.1, %if.end100.if.end112_crit_edge ], [ %action.0, %land.lhs.true78.if.end112_crit_edge ]
  %and113 = and i32 %action.1400, 1396736
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and113)
  %tobool114.not = icmp eq i32 %and113, 0
  br i1 %tobool114.not, label %lor.lhs.false115, label %if.end112.if.then119_crit_edge

if.end112.if.then119_crit_edge:                   ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then119

lor.lhs.false115:                                 ; preds = %if.end112
  %72 = ptrtoint ptr %template_desc to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %template_desc, align 4
  %name = getelementptr inbounds %struct.ima_template_desc, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %name, align 4
  %call116 = call i32 @strcmp(ptr noundef %75, ptr noundef nonnull dereferenceable(4) @.str.20) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %cmp117.not = icmp eq i32 %call116, 0
  br i1 %cmp117.not, label %lor.lhs.false115.if.end139_crit_edge, label %lor.lhs.false115.if.then119_crit_edge

lor.lhs.false115.if.then119_crit_edge:            ; preds = %lor.lhs.false115
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then119

lor.lhs.false115.if.end139_crit_edge:             ; preds = %lor.lhs.false115
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end139

if.then119:                                       ; preds = %lor.lhs.false115.if.then119_crit_edge, %if.end112.if.then119_crit_edge
  %dentry.i363 = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %76 = ptrtoint ptr %dentry.i363 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dentry.i363, align 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %77, align 8
  %and.i.i364 = and i32 %79, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i364)
  %tobool.not.i.i365 = icmp eq i32 %and.i.i364, 0
  br i1 %tobool.not.i.i365, label %if.then119.file_dentry.exit372_crit_edge, label %if.then.i.i370, !prof !138

if.then119.file_dentry.exit372_crit_edge:         ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #11
  br label %file_dentry.exit372

if.then.i.i370:                                   ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #11
  %80 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %f_inode.i, align 8
  %d_op.i.i367 = getelementptr inbounds %struct.dentry, ptr %77, i32 0, i32 8
  %82 = ptrtoint ptr %d_op.i.i367 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %d_op.i.i367, align 8
  %d_real.i.i368 = getelementptr inbounds %struct.dentry_operations, ptr %83, i32 0, i32 12
  %84 = ptrtoint ptr %d_real.i.i368 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %d_real.i.i368, align 16
  %call.i.i369 = call ptr %85(ptr noundef %77, ptr noundef %81) #9
  br label %file_dentry.exit372

file_dentry.exit372:                              ; preds = %if.then.i.i370, %if.then119.file_dentry.exit372_crit_edge
  %retval.0.i.i371 = phi ptr [ %call.i.i369, %if.then.i.i370 ], [ %77, %if.then119.file_dentry.exit372_crit_edge ]
  %call121 = call i32 @ima_read_xattr(ptr noundef %retval.0.i.i371, ptr noundef nonnull %xattr_value) #9
  %86 = ptrtoint ptr %flags63 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %flags63, align 8
  %and123 = and i32 %87, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and123)
  %tobool124.not = icmp eq i32 %and123, 0
  br i1 %tobool124.not, label %file_dentry.exit372.if.end139_crit_edge, label %if.then125

file_dentry.exit372.if.end139_crit_edge:          ; preds = %file_dentry.exit372
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end139

if.then125:                                       ; preds = %file_dentry.exit372
  %call126 = call i32 @ima_read_modsig(i32 noundef %spec.select, ptr noundef %buf, i64 noundef %size, ptr noundef nonnull %modsig) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126)
  %tobool127.not = icmp eq i32 %call126, 0
  br i1 %tobool127.not, label %land.lhs.true128, label %if.then125.if.end139_crit_edge

if.then125.if.end139_crit_edge:                   ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end139

land.lhs.true128:                                 ; preds = %if.then125
  %88 = ptrtoint ptr %template_desc to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %template_desc, align 4
  %call129 = call zeroext i1 @ima_template_has_modsig(ptr noundef %89) #9
  br i1 %call129, label %land.lhs.true131, label %land.lhs.true128.if.end139_crit_edge

land.lhs.true128.if.end139_crit_edge:             ; preds = %land.lhs.true128
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end139

land.lhs.true131:                                 ; preds = %land.lhs.true128
  call void @__sanitizer_cov_trace_pc() #11
  %90 = ptrtoint ptr %flags63 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %flags63, align 8
  %and133 = lshr i32 %91, 1
  %92 = and i32 %and133, 1
  %93 = or i32 %92, %action.1400
  br label %if.end139

if.end139:                                        ; preds = %land.lhs.true131, %land.lhs.true128.if.end139_crit_edge, %if.then125.if.end139_crit_edge, %file_dentry.exit372.if.end139_crit_edge, %lor.lhs.false115.if.end139_crit_edge
  %action.2 = phi i32 [ %action.1400, %if.then125.if.end139_crit_edge ], [ %action.1400, %land.lhs.true128.if.end139_crit_edge ], [ %action.1400, %file_dentry.exit372.if.end139_crit_edge ], [ %action.1400, %lor.lhs.false115.if.end139_crit_edge ], [ %93, %land.lhs.true131 ]
  %xattr_len.1 = phi i32 [ %call121, %if.then125.if.end139_crit_edge ], [ %call121, %land.lhs.true128.if.end139_crit_edge ], [ %call121, %file_dentry.exit372.if.end139_crit_edge ], [ %xattr_len.0401, %lor.lhs.false115.if.end139_crit_edge ], [ %call121, %land.lhs.true131 ]
  %94 = ptrtoint ptr %xattr_value to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %xattr_value, align 4
  %call140 = call i32 @ima_get_hash_algo(ptr noundef %95, i32 noundef %xattr_len.1) #9
  %96 = ptrtoint ptr %modsig to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %modsig, align 4
  %call141 = call i32 @ima_collect_measurement(ptr noundef %iint.0, ptr noundef %file, ptr noundef %buf, i64 noundef %size, i32 noundef %call140, ptr noundef %97) #9
  %98 = zext i32 %call141 to i64
  call void @__sanitizer_cov_trace_switch(i64 %98, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call141, label %if.end139.out_locked_crit_edge [
    i32 0, label %if.end139.if.end151_crit_edge
    i32 -9, label %if.end139.if.end151_crit_edge412
    i32 -22, label %if.end139.if.end151_crit_edge413
  ]

if.end139.if.end151_crit_edge413:                 ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end151

if.end139.if.end151_crit_edge412:                 ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end151

if.end139.if.end151_crit_edge:                    ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end151

if.end139.out_locked_crit_edge:                   ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_locked

if.end151:                                        ; preds = %if.end139.if.end151_crit_edge, %if.end139.if.end151_crit_edge412, %if.end139.if.end151_crit_edge413
  %99 = ptrtoint ptr %pathbuf to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %pathbuf, align 4
  %tobool152.not = icmp eq ptr %100, null
  br i1 %tobool152.not, label %if.then153, label %if.end151.if.end156_crit_edge

if.end151.if.end156_crit_edge:                    ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end156

if.then153:                                       ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #11
  %call155 = call ptr @ima_d_path(ptr noundef %f_path.i, ptr noundef nonnull %pathbuf, ptr noundef nonnull %filename) #9
  %101 = ptrtoint ptr %pathname to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %call155, ptr %pathname, align 4
  br label %if.end156

if.end156:                                        ; preds = %if.then153, %if.end151.if.end156_crit_edge
  %and157 = and i32 %action.2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and157)
  %tobool158.not = icmp eq i32 %and157, 0
  br i1 %tobool158.not, label %if.end156.if.end160_crit_edge, label %if.then159

if.end156.if.end160_crit_edge:                    ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end160

if.then159:                                       ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #11
  %102 = ptrtoint ptr %pathname to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %pathname, align 4
  %104 = ptrtoint ptr %xattr_value to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %xattr_value, align 4
  %106 = ptrtoint ptr %modsig to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %modsig, align 4
  %108 = ptrtoint ptr %pcr to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %pcr, align 4
  %110 = ptrtoint ptr %template_desc to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %template_desc, align 4
  call void @ima_store_measurement(ptr noundef %iint.0, ptr noundef %file, ptr noundef %103, ptr noundef %105, i32 noundef %xattr_len.1, ptr noundef %107, i32 noundef %109, ptr noundef %111) #9
  br label %if.end160

if.end160:                                        ; preds = %if.then159, %if.end156.if.end160_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call141)
  %cmp161 = icmp eq i32 %call141, 0
  br i1 %cmp161, label %land.lhs.true163, label %if.end160.if.end178_crit_edge

if.end160.if.end178_crit_edge:                    ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end178

land.lhs.true163:                                 ; preds = %if.end160
  %and164 = and i32 %action.2, 1396736
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and164)
  %tobool165.not = icmp eq i32 %and164, 0
  br i1 %tobool165.not, label %land.lhs.true163.if.end178_crit_edge, label %if.then166

land.lhs.true163.if.end178_crit_edge:             ; preds = %land.lhs.true163
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end178

if.then166:                                       ; preds = %land.lhs.true163
  %112 = ptrtoint ptr %modsig to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %modsig, align 4
  %114 = ptrtoint ptr %pcr to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %pcr, align 4
  %call167 = call i32 @ima_check_blacklist(ptr noundef %iint.0, ptr noundef %113, i32 noundef %115) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call167)
  %cmp168.not = icmp eq i32 %call167, -1
  br i1 %cmp168.not, label %if.then166.if.end178_crit_edge, label %if.end172

if.then166.if.end178_crit_edge:                   ; preds = %if.then166
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end178

if.end172:                                        ; preds = %if.then166
  call void @down_write(ptr noundef %i_rwsem.i) #9
  %116 = ptrtoint ptr %pathname to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %pathname, align 4
  %118 = ptrtoint ptr %xattr_value to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %xattr_value, align 4
  %120 = ptrtoint ptr %modsig to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %modsig, align 4
  %call171 = call i32 @ima_appraise_measurement(i32 noundef %spec.select, ptr noundef %iint.0, ptr noundef %file, ptr noundef %117, ptr noundef %119, i32 noundef %xattr_len.1, ptr noundef %121) #9
  call void @up_write(ptr noundef %i_rwsem.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call171)
  %tobool173.not = icmp eq i32 %call171, 0
  br i1 %tobool173.not, label %if.then174, label %if.end172.if.end178_crit_edge

if.end172.if.end178_crit_edge:                    ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end178

if.then174:                                       ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #11
  %call176 = call fastcc i32 @mmap_violation_check(i32 noundef %spec.select, ptr noundef %file, ptr noundef nonnull %pathbuf, ptr noundef nonnull %pathname, ptr noundef nonnull %filename)
  br label %if.end178

if.end178:                                        ; preds = %if.then174, %if.end172.if.end178_crit_edge, %if.then166.if.end178_crit_edge, %land.lhs.true163.if.end178_crit_edge, %if.end160.if.end178_crit_edge
  %rc.2 = phi i32 [ %call171, %if.end172.if.end178_crit_edge ], [ %call176, %if.then174 ], [ 0, %land.lhs.true163.if.end178_crit_edge ], [ %call141, %if.end160.if.end178_crit_edge ], [ -1, %if.then166.if.end178_crit_edge ]
  %and179 = and i32 %action.2, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and179)
  %tobool180.not = icmp eq i32 %and179, 0
  br i1 %tobool180.not, label %if.end178.if.end182_crit_edge, label %if.then181

if.end178.if.end182_crit_edge:                    ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end182

if.then181:                                       ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #11
  %122 = ptrtoint ptr %pathname to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %pathname, align 4
  call void @ima_audit_measurement(ptr noundef %iint.0, ptr noundef %123) #9
  br label %if.end182

if.end182:                                        ; preds = %if.then181, %if.end178.if.end182_crit_edge
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %124 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %f_flags, align 4
  %and183 = and i32 %125, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and183)
  %tobool184.not = icmp eq i32 %and183, 0
  br i1 %tobool184.not, label %if.end190, label %land.lhs.true185

land.lhs.true185:                                 ; preds = %if.end182
  %126 = ptrtoint ptr %flags63 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %flags63, align 8
  %and187 = and i32 %127, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and187)
  %tobool188.not = icmp ne i32 %and187, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.2)
  %cmp191 = icmp eq i32 %rc.2, 0
  %or.cond411 = select i1 %tobool188.not, i1 true, i1 %cmp191
  br i1 %or.cond411, label %land.lhs.true185.land.lhs.true193_crit_edge, label %land.lhs.true185.out_locked_crit_edge

land.lhs.true185.out_locked_crit_edge:            ; preds = %land.lhs.true185
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_locked

land.lhs.true185.land.lhs.true193_crit_edge:      ; preds = %land.lhs.true185
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true193

if.end190:                                        ; preds = %if.end182
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.2)
  %cmp191.old = icmp eq i32 %rc.2, 0
  br i1 %cmp191.old, label %if.end190.land.lhs.true193_crit_edge, label %if.end190.out_locked_crit_edge

if.end190.out_locked_crit_edge:                   ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_locked

if.end190.land.lhs.true193_crit_edge:             ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true193

land.lhs.true193:                                 ; preds = %if.end190.land.lhs.true193_crit_edge, %land.lhs.true185.land.lhs.true193_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool194.not = icmp eq i32 %and15, 0
  br i1 %tobool194.not, label %land.lhs.true193.out_locked_crit_edge, label %land.lhs.true195

land.lhs.true193.out_locked_crit_edge:            ; preds = %land.lhs.true193
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_locked

land.lhs.true195:                                 ; preds = %land.lhs.true193
  %128 = ptrtoint ptr %allowed_algos to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %allowed_algos, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %cmp196.not = icmp eq i32 %129, 0
  br i1 %cmp196.not, label %land.lhs.true195.out_locked_crit_edge, label %land.lhs.true198

land.lhs.true195.out_locked_crit_edge:            ; preds = %land.lhs.true195
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_locked

land.lhs.true198:                                 ; preds = %land.lhs.true195
  %shl199 = shl nuw i32 1, %call140
  %and200 = and i32 %129, %shl199
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and200)
  %cmp201 = icmp eq i32 %and200, 0
  br i1 %cmp201, label %if.then203, label %land.lhs.true198.out_locked_crit_edge

land.lhs.true198.out_locked_crit_edge:            ; preds = %land.lhs.true198
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_locked

if.then203:                                       ; preds = %land.lhs.true198
  call void @__sanitizer_cov_trace_pc() #11
  %130 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %f_inode.i, align 8
  %132 = ptrtoint ptr %pathname to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %pathname, align 4
  call void @integrity_audit_msg(i32 noundef 1800, ptr noundef %131, ptr noundef %133, ptr noundef nonnull @.str, ptr noundef nonnull @.str.28, i32 noundef -13, i32 noundef 0) #9
  br label %out_locked

out_locked:                                       ; preds = %if.then203, %land.lhs.true198.out_locked_crit_edge, %land.lhs.true195.out_locked_crit_edge, %land.lhs.true193.out_locked_crit_edge, %if.end190.out_locked_crit_edge, %land.lhs.true185.out_locked_crit_edge, %if.end139.out_locked_crit_edge, %if.then108, %if.then104.out_locked_crit_edge, %if.then102.out_locked_crit_edge
  %rc.4 = phi i32 [ -13, %if.then203 ], [ 0, %land.lhs.true198.out_locked_crit_edge ], [ 0, %land.lhs.true195.out_locked_crit_edge ], [ 0, %land.lhs.true193.out_locked_crit_edge ], [ %rc.2, %if.end190.out_locked_crit_edge ], [ %call106, %if.then104.out_locked_crit_edge ], [ %call109, %if.then108 ], [ 0, %if.then102.out_locked_crit_edge ], [ %call141, %if.end139.out_locked_crit_edge ], [ %rc.2, %land.lhs.true185.out_locked_crit_edge ]
  %and206 = and i32 %mask, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and206)
  %tobool207.not = icmp eq i32 %and206, 0
  br i1 %tobool207.not, label %out_locked.if.end217_crit_edge, label %land.lhs.true208

out_locked.if.end217_crit_edge:                   ; preds = %out_locked
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end217

land.lhs.true208:                                 ; preds = %out_locked
  %134 = ptrtoint ptr %atomic_flags to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load volatile i32, ptr %atomic_flags, align 4
  %136 = and i32 %135, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %136)
  %tobool211.not = icmp eq i32 %136, 0
  br i1 %tobool211.not, label %land.lhs.true208.if.end217_crit_edge, label %land.lhs.true212

land.lhs.true208.if.end217_crit_edge:             ; preds = %land.lhs.true208
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end217

land.lhs.true212:                                 ; preds = %land.lhs.true208
  call void @__sanitizer_cov_trace_pc() #11
  %137 = ptrtoint ptr %flags63 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %flags63, align 8
  %and214 = and i32 %138, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and214)
  %tobool215.not = icmp eq i32 %and214, 0
  %spec.select357 = select i1 %tobool215.not, i32 -13, i32 %rc.4
  br label %if.end217

if.end217:                                        ; preds = %land.lhs.true212, %land.lhs.true208.if.end217_crit_edge, %out_locked.if.end217_crit_edge
  %rc.5 = phi i32 [ %rc.4, %land.lhs.true208.if.end217_crit_edge ], [ %rc.4, %out_locked.if.end217_crit_edge ], [ %spec.select357, %land.lhs.true212 ]
  call void @mutex_unlock(ptr noundef %mutex) #9
  %139 = ptrtoint ptr %xattr_value to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %xattr_value, align 4
  call void @kfree(ptr noundef %140) #9
  %141 = ptrtoint ptr %modsig to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %modsig, align 4
  call void @ima_free_modsig(ptr noundef %142) #9
  br label %out

out:                                              ; preds = %if.end217, %if.end33.out_crit_edge, %if.then36.i.out_crit_edge, %.thread
  %iint.0382390396 = phi ptr [ %iint.0, %if.end217 ], [ null, %.thread ], [ %iint.0, %if.then36.i.out_crit_edge ], [ %iint.0, %if.end33.out_crit_edge ]
  %rc.6 = phi i32 [ %rc.5, %if.end217 ], [ -12, %.thread ], [ 0, %if.then36.i.out_crit_edge ], [ 0, %if.end33.out_crit_edge ]
  %143 = ptrtoint ptr %pathbuf to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %pathbuf, align 4
  %tobool219.not = icmp eq ptr %144, null
  br i1 %tobool219.not, label %out.if.end221_crit_edge, label %if.then220

out.if.end221_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end221

if.then220:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @names_cachep to i32))
  %145 = load ptr, ptr @names_cachep, align 4
  call void @kmem_cache_free(ptr noundef %145, ptr noundef nonnull %144) #9
  br label %if.end221

if.end221:                                        ; preds = %if.then220, %out.if.end221_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool222.not = icmp eq i32 %and15, 0
  br i1 %tobool222.not, label %if.end221.cleanup_crit_edge, label %if.then223

if.end221.cleanup_crit_edge:                      ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then223:                                       ; preds = %if.end221
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.6)
  %tobool224.not = icmp eq i32 %rc.6, 0
  br i1 %tobool224.not, label %if.then223.if.end229_crit_edge, label %land.lhs.true225

if.then223.if.end229_crit_edge:                   ; preds = %if.then223
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end229

land.lhs.true225:                                 ; preds = %if.then223
  %146 = load i32, ptr @ima_appraise, align 4
  %and226 = and i32 %146, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and226)
  %tobool227.not = icmp eq i32 %and226, 0
  br i1 %tobool227.not, label %land.lhs.true225.if.end229_crit_edge, label %land.lhs.true225.cleanup_crit_edge

land.lhs.true225.cleanup_crit_edge:               ; preds = %land.lhs.true225
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true225.if.end229_crit_edge:             ; preds = %land.lhs.true225
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end229

if.end229:                                        ; preds = %land.lhs.true225.if.end229_crit_edge, %if.then223.if.end229_crit_edge
  %f_mode = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %147 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %f_mode, align 8
  %and230 = and i32 %148, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and230)
  %tobool231.not = icmp eq i32 %and230, 0
  br i1 %tobool231.not, label %if.end229.cleanup_crit_edge, label %if.then232

if.end229.cleanup_crit_edge:                      ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then232:                                       ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #11
  %atomic_flags233 = getelementptr inbounds %struct.integrity_iint_cache, ptr %iint.0382390396, i32 0, i32 6
  call void @_set_bit(i32 noundef 1, ptr noundef %atomic_flags233) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then232, %if.end229.cleanup_crit_edge, %land.lhs.true225.cleanup_crit_edge, %if.end221.cleanup_crit_edge, %land.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %land.end.cleanup_crit_edge ], [ -13, %land.lhs.true225.cleanup_crit_edge ], [ 0, %if.end229.cleanup_crit_edge ], [ 0, %if.then232 ], [ 0, %if.end221.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %allowed_algos) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %modsig) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %xattr_value) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcr) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pathname) #9
  call void @llvm.lifetime.end.p0(i64 255, ptr nonnull %filename) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pathbuf) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %template_desc) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ima_file_mprotect(ptr nocapture noundef readonly %vma, i32 noundef %prot) local_unnamed_addr #2 align 64 {
entry:
  %template = alloca ptr, align 4
  %filename = alloca [255 x i8], align 1
  %pathbuf = alloca ptr, align 4
  %secid = alloca i32, align 4
  %pcr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %template) #9
  %0 = ptrtoint ptr %template to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %template, align 4
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 14
  call void @llvm.lifetime.start.p0(i64 255, ptr nonnull %filename) #9
  %1 = call ptr @memset(ptr %filename, i32 255, i32 255)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pathbuf) #9
  %2 = ptrtoint ptr %pathbuf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %pathbuf, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %secid) #9
  %3 = ptrtoint ptr %secid to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %secid, align 4, !annotation !136
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcr) #9
  %4 = ptrtoint ptr %pcr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %pcr, align 4, !annotation !136
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ima_policy_flag to i32))
  %5 = load i32, ptr @ima_policy_flag, align 4
  %and = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %6 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vm_file, align 4
  %tobool2.not = icmp eq ptr %7, null
  %and4 = and i32 %prot, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  %or.cond = or i1 %tobool5.not, %tobool2.not
  br i1 %or.cond, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false6

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %8 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vm_flags, align 4
  %and7 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end, label %lor.lhs.false6.cleanup_crit_edge

lor.lhs.false6.cleanup_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false6
  call void @security_current_getsecid_subj(ptr noundef nonnull %secid) #9
  %10 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vm_file, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %f_inode.i, align 8
  %f_path.i = getelementptr inbounds %struct.file, ptr %11, i32 0, i32 1
  %14 = ptrtoint ptr %f_path.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %f_path.i, align 8
  %mnt_userns.i.i = getelementptr inbounds %struct.vfsmount, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %mnt_userns.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %mnt_userns.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !137
  %18 = call i32 @llvm.read_register.i32(metadata !126) #9
  %and.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 99
  %22 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cred, align 16
  %24 = ptrtoint ptr %secid to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %secid, align 4
  %call13 = call i32 @ima_get_action(ptr noundef %17, ptr noundef %13, ptr noundef %23, i32 noundef %25, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %pcr, ptr noundef nonnull %template, ptr noundef null, ptr noundef null) #9
  %and14 = and i32 %call13, 1396737
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end.cleanup_crit_edge, label %if.end17

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end17:                                         ; preds = %if.end
  %and18 = and i32 %call13, 1396736
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp ne i32 %and18, 0
  %spec.select = sext i1 %tobool19.not to i32
  %26 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %vm_file, align 4
  %f_path = getelementptr inbounds %struct.file, ptr %27, i32 0, i32 1
  %call23 = call ptr @ima_d_path(ptr noundef %f_path, ptr noundef nonnull %pathbuf, ptr noundef nonnull %filename) #9
  call void @integrity_audit_msg(i32 noundef 1800, ptr noundef %13, ptr noundef %call23, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %spec.select, i32 noundef 0) #9
  %28 = ptrtoint ptr %pathbuf to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pathbuf, align 4
  %tobool24.not = icmp eq ptr %29, null
  br i1 %tobool24.not, label %if.end17.cleanup_crit_edge, label %if.then25

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then25:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @names_cachep to i32))
  %30 = load ptr, ptr @names_cachep, align 4
  call void @kmem_cache_free(ptr noundef %30, ptr noundef nonnull %29) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %if.end17.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false6.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false6.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %spec.select, %if.then25 ], [ %spec.select, %if.end17.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcr) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %secid) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pathbuf) #9
  call void @llvm.lifetime.end.p0(i64 255, ptr nonnull %filename) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %template) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ima_get_action(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ima_d_path(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @integrity_audit_msg(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ima_bprm_check(ptr nocapture noundef readonly %bprm) local_unnamed_addr #2 align 64 {
entry:
  %secid = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %secid) #9
  %0 = ptrtoint ptr %secid to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %secid, align 4, !annotation !136
  call void @security_current_getsecid_subj(ptr noundef nonnull %secid) #9
  %file = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 8
  %1 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %file, align 4
  %3 = call i32 @llvm.read_register.i32(metadata !126) #9
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 99
  %7 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cred, align 16
  %9 = ptrtoint ptr %secid to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %secid, align 4
  %call1 = call fastcc i32 @process_measurement(ptr noundef %2, ptr noundef %8, i32 noundef %10, ptr noundef null, i64 noundef 0, i32 noundef 1, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %cred2 = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 9
  %11 = ptrtoint ptr %cred2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cred2, align 4
  call void @security_cred_getsecid(ptr noundef %12, ptr noundef nonnull %secid) #9
  %13 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %file, align 4
  %15 = ptrtoint ptr %cred2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cred2, align 4
  %17 = ptrtoint ptr %secid to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %secid, align 4
  %call5 = call fastcc i32 @process_measurement(ptr noundef %14, ptr noundef %16, i32 noundef %18, ptr noundef null, i64 noundef 0, i32 noundef 1, i32 noundef 4)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %secid) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @security_cred_getsecid(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ima_file_check(ptr noundef %file, i32 noundef %mask) #2 align 64 {
entry:
  %secid = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %secid) #9
  %0 = ptrtoint ptr %secid to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %secid, align 4, !annotation !136
  call void @security_current_getsecid_subj(ptr noundef nonnull %secid) #9
  %1 = call i32 @llvm.read_register.i32(metadata !126) #9
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 99
  %5 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cred, align 16
  %7 = ptrtoint ptr %secid to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %secid, align 4
  %and = and i32 %mask, 15
  %call1 = call fastcc i32 @process_measurement(ptr noundef %file, ptr noundef %6, i32 noundef %8, ptr noundef null, i64 noundef 0, i32 noundef %and, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %secid) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ima_file_hash(ptr noundef readonly %file, ptr noundef writeonly %buf, i32 noundef %buf_size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %file, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ima_policy_flag to i32))
  %0 = load i32, ptr @ima_policy_flag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %if.end.return_crit_edge, label %if.end.i

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end.i:                                         ; preds = %if.end
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %1 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %f_inode.i, align 8
  %call.i = tail call ptr @integrity_iint_find(ptr noundef %2) #9
  %tobool1.not.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i, label %if.end.i.return_crit_edge, label %if.end3.i

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end3.i:                                        ; preds = %if.end.i
  %mutex.i = getelementptr inbounds %struct.integrity_iint_cache, ptr %call.i, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #9
  %ima_hash.i = getelementptr inbounds %struct.integrity_iint_cache, ptr %call.i, i32 0, i32 8
  %3 = ptrtoint ptr %ima_hash.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ima_hash.i, align 8
  %tobool4.not.i = icmp eq ptr %4, null
  br i1 %tobool4.not.i, label %if.end3.i.cleanup.sink.split.i_crit_edge, label %if.end7.i

if.end3.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i

if.end7.i:                                        ; preds = %if.end3.i
  %tobool8.not.i = icmp eq ptr %buf, null
  br i1 %tobool8.not.i, label %if.end7.i.if.end13.i_crit_edge, label %if.then9.i

if.end7.i.if.end13.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i

if.then9.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  %length.i = getelementptr inbounds %struct.ima_digest_data, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %length.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %length.i, align 1
  %conv.i = zext i8 %6 to i32
  %7 = tail call i32 @llvm.umin.i32(i32 %conv.i, i32 %buf_size) #9
  %digest.i = getelementptr inbounds %struct.ima_digest_data, ptr %4, i32 0, i32 3
  %8 = call ptr @memcpy(ptr %buf, ptr %digest.i, i32 %7)
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then9.i, %if.end7.i.if.end13.i_crit_edge
  %9 = ptrtoint ptr %ima_hash.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ima_hash.i, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 1
  %conv15.i = zext i8 %12 to i32
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end13.i, %if.end3.i.cleanup.sink.split.i_crit_edge
  %retval.0.ph.i = phi i32 [ %conv15.i, %if.end13.i ], [ -95, %if.end3.i.cleanup.sink.split.i_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex.i) #9
  br label %return

return:                                           ; preds = %cleanup.sink.split.i, %if.end.i.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ -95, %if.end.return_crit_edge ], [ -95, %if.end.i.return_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ima_inode_hash(ptr noundef %inode, ptr noundef writeonly %buf, i32 noundef %buf_size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %inode, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ima_policy_flag to i32))
  %0 = load i32, ptr @ima_policy_flag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %if.end.return_crit_edge, label %if.end.i

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end.i:                                         ; preds = %if.end
  %call.i = tail call ptr @integrity_iint_find(ptr noundef nonnull %inode) #9
  %tobool1.not.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i, label %if.end.i.return_crit_edge, label %if.end3.i

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end3.i:                                        ; preds = %if.end.i
  %mutex.i = getelementptr inbounds %struct.integrity_iint_cache, ptr %call.i, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #9
  %ima_hash.i = getelementptr inbounds %struct.integrity_iint_cache, ptr %call.i, i32 0, i32 8
  %1 = ptrtoint ptr %ima_hash.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ima_hash.i, align 8
  %tobool4.not.i = icmp eq ptr %2, null
  br i1 %tobool4.not.i, label %if.end3.i.cleanup.sink.split.i_crit_edge, label %if.end7.i

if.end3.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i

if.end7.i:                                        ; preds = %if.end3.i
  %tobool8.not.i = icmp eq ptr %buf, null
  br i1 %tobool8.not.i, label %if.end7.i.if.end13.i_crit_edge, label %if.then9.i

if.end7.i.if.end13.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i

if.then9.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  %length.i = getelementptr inbounds %struct.ima_digest_data, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %length.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %length.i, align 1
  %conv.i = zext i8 %4 to i32
  %5 = tail call i32 @llvm.umin.i32(i32 %conv.i, i32 %buf_size) #9
  %digest.i = getelementptr inbounds %struct.ima_digest_data, ptr %2, i32 0, i32 3
  %6 = call ptr @memcpy(ptr %buf, ptr %digest.i, i32 %5)
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then9.i, %if.end7.i.if.end13.i_crit_edge
  %7 = ptrtoint ptr %ima_hash.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ima_hash.i, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 1
  %conv15.i = zext i8 %10 to i32
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end13.i, %if.end3.i.cleanup.sink.split.i_crit_edge
  %retval.0.ph.i = phi i32 [ %conv15.i, %if.end13.i ], [ -95, %if.end3.i.cleanup.sink.split.i_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex.i) #9
  br label %return

return:                                           ; preds = %cleanup.sink.split.i, %if.end.i.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ -95, %if.end.return_crit_edge ], [ -95, %if.end.i.return_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ima_post_create_tmpfile(ptr noundef %mnt_userns, ptr noundef %inode) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ima_policy_flag to i32))
  %0 = load i32, ptr @ima_policy_flag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %1 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %inode, align 8
  %3 = and i16 %2, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %3)
  %cmp = icmp eq i16 %3, -32768
  br i1 %cmp, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call i32 @ima_must_appraise(ptr noundef %mnt_userns, ptr noundef %inode, i32 noundef 16, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call ptr @integrity_inode_get(ptr noundef %inode) #9
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %atomic_flags = getelementptr inbounds %struct.integrity_iint_cache, ptr %call5, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 1, ptr noundef %atomic_flags) #9
  %ima_file_status = getelementptr inbounds %struct.integrity_iint_cache, ptr %call5, i32 0, i32 7
  %4 = ptrtoint ptr %ima_file_status to i32
  call void @__asan_load4_noabort(i32 %4)
  %bf.load = load i32, ptr %ima_file_status, align 4
  %bf.clear = and i32 %bf.load, 268435455
  store i32 %bf.clear, ptr %ima_file_status, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ima_must_appraise(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @integrity_inode_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ima_post_path_mknod(ptr noundef %mnt_userns, ptr nocapture noundef readonly %dentry) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ima_policy_flag to i32))
  %2 = load i32, ptr @ima_policy_flag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %1, align 8
  %5 = and i16 %4, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %5)
  %cmp = icmp eq i16 %5, -32768
  br i1 %cmp, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call i32 @ima_must_appraise(ptr noundef %mnt_userns, ptr noundef %1, i32 noundef 16, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call ptr @integrity_inode_get(ptr noundef %1) #9
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %flags = getelementptr inbounds %struct.integrity_iint_cache, ptr %call5, i32 0, i32 4
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 8
  %or = or i32 %7, 67108864
  store i32 %or, ptr %flags, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ima_read_file(ptr noundef %file, i32 noundef %read_id, i1 noundef zeroext %contents) local_unnamed_addr #2 align 64 {
entry:
  %secid = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %secid) #9
  %0 = ptrtoint ptr %secid to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %secid, align 4, !annotation !136
  br i1 %contents, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr [0 x i32], ptr @read_idmap, i32 0, i32 %read_id
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool1.not = icmp eq i32 %2, 0
  %. = select i1 %tobool1.not, i32 1, i32 %2
  call void @security_current_getsecid_subj(ptr noundef nonnull %secid) #9
  %3 = call i32 @llvm.read_register.i32(metadata !126) #9
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 99
  %7 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cred, align 16
  %9 = ptrtoint ptr %secid to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %secid, align 4
  %call2 = call fastcc i32 @process_measurement(ptr noundef %file, ptr noundef %8, i32 noundef %10, ptr noundef null, i64 noundef 0, i32 noundef 4, i32 noundef %.)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %secid) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ima_post_read_file(ptr noundef %file, ptr noundef %buf, i64 noundef %size, i32 noundef %read_id) local_unnamed_addr #2 align 64 {
entry:
  %secid = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %secid) #9
  %0 = ptrtoint ptr %secid to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %secid, align 4, !annotation !136
  %tobool.not = icmp eq ptr %file, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %read_id)
  %cmp = icmp eq i32 %read_id, 6
  %or.cond = and i1 %tobool.not, %cmp
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool2.not = icmp eq ptr %buf, null
  %or.cond18 = or i1 %tobool.not, %tobool2.not
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %size)
  %cmp4 = icmp eq i64 %size, 0
  %or.cond19 = or i1 %or.cond18, %cmp4
  br i1 %or.cond19, label %if.then5, label %if.end9

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %1 = load i32, ptr @ima_appraise, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  %.20 = select i1 %tobool6.not, i32 0, i32 -13
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr [7 x i32], ptr @read_idmap, i32 0, i32 %read_id
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %4 = and i32 %read_id, 1073741823
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %5 = icmp eq i32 %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %4)
  %6 = icmp eq i32 %4, 6
  %tobool10.not = or i1 %5, %6
  %. = select i1 %tobool10.not, i32 1, i32 %3
  call void @security_current_getsecid_subj(ptr noundef nonnull %secid) #9
  %7 = call i32 @llvm.read_register.i32(metadata !126) #9
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 99
  %11 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cred, align 16
  %13 = ptrtoint ptr %secid to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %secid, align 4
  %call11 = call fastcc i32 @process_measurement(ptr noundef nonnull %file, ptr noundef %12, i32 noundef %14, ptr noundef nonnull %buf, i64 noundef %size, i32 noundef 4, i32 noundef %.)
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %if.end9 ], [ 0, %entry.cleanup_crit_edge ], [ %.20, %if.then5 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %secid) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ima_load_data(i32 noundef %id, i1 noundef zeroext %contents) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @ima_appraise, align 4
  %1 = zext i32 %id to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %id, label %entry.cleanup_crit_edge [
    i32 3, label %sw.bb
    i32 1, label %sw.bb4
    i32 2, label %sw.bb18
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %2 = and i32 %0, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %2)
  %.not = icmp eq i32 %2, 65
  br i1 %.not, label %sw.bb.cleanup.sink.split_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb.cleanup.sink.split_crit_edge:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

sw.bb4:                                           ; preds = %entry
  %3 = and i32 %0, 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %3)
  %4 = icmp ne i32 %3, 17
  %brmerge = or i1 %4, %contents
  br i1 %brmerge, label %sw.bb4.cleanup_crit_edge, label %sw.bb4.cleanup.sink.split_crit_edge

sw.bb4.cleanup.sink.split_crit_edge:              ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb18:                                          ; preds = %entry
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  %call19 = tail call zeroext i1 @is_module_sig_enforced() #9
  %brmerge38 = select i1 %cmp.not, i1 true, i1 %call19
  br i1 %brmerge38, label %sw.bb18.cleanup_crit_edge, label %land.lhs.true24

sw.bb18.cleanup_crit_edge:                        ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true24:                                  ; preds = %sw.bb18
  %5 = load i32, ptr @ima_appraise, align 4
  %and25 = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %land.lhs.true24.cleanup_crit_edge, label %land.lhs.true24.cleanup.sink.split_crit_edge

land.lhs.true24.cleanup.sink.split_crit_edge:     ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

land.lhs.true24.cleanup_crit_edge:                ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.sink.split:                               ; preds = %land.lhs.true24.cleanup.sink.split_crit_edge, %sw.bb4.cleanup.sink.split_crit_edge, %sw.bb.cleanup.sink.split_crit_edge
  %.str.10.sink = phi ptr [ @.str.3, %sw.bb.cleanup.sink.split_crit_edge ], [ @.str.7, %sw.bb4.cleanup.sink.split_crit_edge ], [ @.str.10, %land.lhs.true24.cleanup.sink.split_crit_edge ]
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.10.sink) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true24.cleanup_crit_edge, %sw.bb18.cleanup_crit_edge, %sw.bb4.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb18.cleanup_crit_edge ], [ 0, %sw.bb4.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %land.lhs.true24.cleanup_crit_edge ], [ 0, %sw.bb.cleanup_crit_edge ], [ -13, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_module_sig_enforced() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ima_post_load_data(ptr nocapture noundef readnone %buf, i64 noundef %size, i32 noundef %load_id, ptr nocapture noundef readnone %description) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %load_id)
  %cmp = icmp eq i32 %load_id, 1
  br i1 %cmp, label %if.then, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then:                                          ; preds = %entry
  %0 = load i32, ptr @ima_appraise, align 4
  %1 = and i32 %0, 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %1)
  %.not = icmp eq i32 %1, 17
  br i1 %.not, label %do.end, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #13
  br label %return

return:                                           ; preds = %do.end, %if.then.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -13, %do.end ], [ 0, %if.then.return_crit_edge ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @process_buffer_measurement(ptr noundef %mnt_userns, ptr noundef %inode, ptr noundef %buf, i32 noundef %size, ptr noundef %eventname, i32 noundef %func, i32 noundef %pcr, ptr noundef %func_data, i1 noundef zeroext %buf_hash, ptr noundef writeonly %digest, i32 noundef %digest_len) local_unnamed_addr #2 align 64 {
entry:
  %pcr.addr = alloca i32, align 4
  %entry1 = alloca ptr, align 4
  %iint = alloca %struct.integrity_iint_cache, align 8
  %event_data = alloca %struct.ima_event_data, align 4
  %template = alloca ptr, align 4
  %hash = alloca %struct.anon.81, align 1
  %digest_hash = alloca [64 x i8], align 1
  %secid = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pcr.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %pcr, ptr %pcr.addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %entry1) #9
  %1 = ptrtoint ptr %entry1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %entry1, align 4
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %iint) #9
  %2 = call ptr @memset(ptr %iint, i32 0, i32 144)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %event_data) #9
  %3 = ptrtoint ptr %event_data to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %iint, ptr %event_data, align 4
  %file = getelementptr inbounds %struct.ima_event_data, ptr %event_data, i32 0, i32 1
  %4 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %file, align 4
  %filename = getelementptr inbounds %struct.ima_event_data, ptr %event_data, i32 0, i32 2
  %5 = ptrtoint ptr %filename to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %eventname, ptr %filename, align 4
  %xattr_value = getelementptr inbounds %struct.ima_event_data, ptr %event_data, i32 0, i32 3
  %buf3 = getelementptr inbounds %struct.ima_event_data, ptr %event_data, i32 0, i32 7
  %6 = call ptr @memset(ptr %xattr_value, i32 0, i32 16)
  %7 = ptrtoint ptr %buf3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %buf, ptr %buf3, align 4
  %buf_len = getelementptr inbounds %struct.ima_event_data, ptr %event_data, i32 0, i32 8
  %8 = ptrtoint ptr %buf_len to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %size, ptr %buf_len, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %template) #9
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %hash) #9
  %9 = call ptr @memset(ptr %hash, i32 0, i32 68)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %digest_hash) #9
  %10 = call ptr @memset(ptr %digest_hash, i32 255, i32 64)
  %11 = load i32, ptr @ima_hash_algo, align 4
  %arrayidx = getelementptr [20 x i32], ptr @hash_digest_size, i32 0, i32 %11
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %secid) #9
  %14 = ptrtoint ptr %secid to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %secid, align 4, !annotation !136
  %tobool.not = icmp eq ptr %digest, null
  %tobool.not.not = xor i1 %tobool.not, true
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %digest_len)
  %cmp = icmp ugt i32 %13, %digest_len
  %or.cond = select i1 %tobool.not.not, i1 %cmp, i1 false
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ima_policy_flag to i32))
  %15 = load i32, ptr @ima_policy_flag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool5.not = icmp eq i32 %15, 0
  %16 = and i1 %tobool.not, %tobool5.not
  br i1 %16, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call = call ptr @ima_template_desc_buf() #9
  %17 = ptrtoint ptr %template to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call, ptr %template, align 4
  %tobool10.not = icmp eq ptr %call, null
  br i1 %tobool10.not, label %if.end9.if.then80_crit_edge, label %if.end12

if.end9.if.then80_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then80

if.end12:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %func)
  %tobool13.not = icmp eq i32 %func, 0
  br i1 %tobool13.not, label %if.end12.if.end22_crit_edge, label %if.then14

if.end12.if.end22_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then14:                                        ; preds = %if.end12
  call void @security_current_getsecid_subj(ptr noundef nonnull %secid) #9
  %18 = call i32 @llvm.read_register.i32(metadata !126) #9
  %and.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 99
  %22 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cred, align 16
  %24 = ptrtoint ptr %secid to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %secid, align 4
  %call16 = call i32 @ima_get_action(ptr noundef %mnt_userns, ptr noundef %inode, ptr noundef %23, i32 noundef %25, i32 noundef 0, i32 noundef %func, ptr noundef nonnull %pcr.addr, ptr noundef nonnull %template, ptr noundef %func_data, ptr noundef null) #9
  %and = and i32 %call16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool17.not = icmp eq i32 %and, 0
  %26 = and i1 %tobool.not, %tobool17.not
  br i1 %26, label %if.then14.cleanup_crit_edge, label %if.then14.if.end22_crit_edge

if.then14.if.end22_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end22:                                         ; preds = %if.then14.if.end22_crit_edge, %if.end12.if.end22_crit_edge
  %action.0 = phi i32 [ %call16, %if.then14.if.end22_crit_edge ], [ 0, %if.end12.if.end22_crit_edge ]
  %27 = ptrtoint ptr %pcr.addr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pcr.addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool23.not = icmp eq i32 %28, 0
  br i1 %tobool23.not, label %if.then24, label %if.end22.if.end25_crit_edge

if.end22.if.end25_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then24:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %pcr.addr to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 10, ptr %pcr.addr, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end22.if.end25_crit_edge
  %ima_hash = getelementptr inbounds %struct.integrity_iint_cache, ptr %iint, i32 0, i32 8
  %30 = ptrtoint ptr %ima_hash to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %hash, ptr %ima_hash, align 8
  %31 = load i32, ptr @ima_hash_algo, align 4
  %conv = trunc i32 %31 to i8
  %32 = ptrtoint ptr %hash to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv, ptr %hash, align 1
  %arrayidx27 = getelementptr [20 x i32], ptr @hash_digest_size, i32 0, i32 %31
  %33 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx27, align 4
  %conv28 = trunc i32 %34 to i8
  %length = getelementptr inbounds %struct.ima_digest_data, ptr %hash, i32 0, i32 1
  %35 = ptrtoint ptr %length to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv28, ptr %length, align 1
  %conv30 = sext i32 %size to i64
  %call32 = call i32 @ima_calc_buffer_hash(ptr noundef %buf, i64 noundef %conv30, ptr noundef nonnull %hash) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %if.end25.if.then80_crit_edge, label %if.end36

if.end25.if.then80_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then80

if.end36:                                         ; preds = %if.end25
  br i1 %buf_hash, label %if.then38, label %if.end36.if.end53_crit_edge

if.end36.if.end53_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

if.then38:                                        ; preds = %if.end36
  %digest40 = getelementptr inbounds %struct.ima_digest_data, ptr %hash, i32 0, i32 3
  %36 = call ptr @memcpy(ptr %digest_hash, ptr %digest40, i32 %13)
  %conv43 = sext i32 %13 to i64
  %37 = ptrtoint ptr %ima_hash to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ima_hash, align 8
  %call45 = call i32 @ima_calc_buffer_hash(ptr noundef nonnull %digest_hash, i64 noundef %conv43, ptr noundef %38) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %if.then38.if.then80_crit_edge, label %if.end49

if.then38.if.then80_crit_edge:                    ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then80

if.end49:                                         ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %buf3 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %digest_hash, ptr %buf3, align 4
  %40 = ptrtoint ptr %buf_len to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %13, ptr %buf_len, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.end49, %if.end36.if.end53_crit_edge
  br i1 %tobool.not, label %if.end53.if.end59_crit_edge, label %if.then55

if.end53.if.end59_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

if.then55:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %ima_hash to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ima_hash, align 8
  %digest57 = getelementptr inbounds %struct.ima_digest_data, ptr %42, i32 0, i32 3
  %43 = call ptr @memcpy(ptr %digest, ptr %digest57, i32 %13)
  br label %if.end59

if.end59:                                         ; preds = %if.then55, %if.end53.if.end59_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ima_policy_flag to i32))
  %44 = load i32, ptr @ima_policy_flag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool60.not = icmp eq i32 %44, 0
  br i1 %tobool60.not, label %if.end59.cleanup_crit_edge, label %lor.lhs.false

if.end59.cleanup_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end59
  %tobool13.not.not = xor i1 %tobool13.not, true
  %and63 = and i32 %action.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  %or.cond119 = select i1 %tobool13.not.not, i1 %tobool64.not, i1 false
  br i1 %or.cond119, label %lor.lhs.false.cleanup_crit_edge, label %if.end66

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end66:                                         ; preds = %lor.lhs.false
  %45 = ptrtoint ptr %template to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %template, align 4
  %call67 = call i32 @ima_alloc_init_template(ptr noundef nonnull %event_data, ptr noundef nonnull %entry1, ptr noundef %46) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %cmp68 = icmp slt i32 %call67, 0
  br i1 %cmp68, label %if.end66.if.then80_crit_edge, label %if.end71

if.end66.if.then80_crit_edge:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then80

if.end71:                                         ; preds = %if.end66
  %47 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %entry1, align 4
  %49 = ptrtoint ptr %buf3 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %buf3, align 4
  %51 = ptrtoint ptr %pcr.addr to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %pcr.addr, align 4
  %call73 = call i32 @ima_store_template(ptr noundef %48, i32 noundef 0, ptr noundef null, ptr noundef %50, i32 noundef %52) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %cmp74 = icmp slt i32 %call73, 0
  br i1 %cmp74, label %if.then76, label %if.end71.cleanup_crit_edge

if.end71.cleanup_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then76:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #11
  %53 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %entry1, align 4
  call void @ima_free_template_entry(ptr noundef %54) #9
  br label %if.then80

if.then80:                                        ; preds = %if.then76, %if.end66.if.then80_crit_edge, %if.then38.if.then80_crit_edge, %if.end25.if.then80_crit_edge, %if.end9.if.then80_crit_edge
  %ret.0.ph = phi i32 [ %call67, %if.end66.if.then80_crit_edge ], [ %call45, %if.then38.if.then80_crit_edge ], [ %call32, %if.end25.if.then80_crit_edge ], [ -22, %if.end9.if.then80_crit_edge ], [ %call73, %if.then76 ]
  %audit_cause.0.ph = phi ptr [ @.str.17, %if.end66.if.then80_crit_edge ], [ @.str.16, %if.then38.if.then80_crit_edge ], [ @.str.16, %if.end25.if.then80_crit_edge ], [ @.str.15, %if.end9.if.then80_crit_edge ], [ @.str.18, %if.then76 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %func)
  %cmp.i = icmp ugt i32 %func, 14
  br i1 %cmp.i, label %if.then80.func_measure_str.exit_crit_edge, label %if.end.i

if.then80.func_measure_str.exit_crit_edge:        ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #11
  br label %func_measure_str.exit

if.end.i:                                         ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr [16 x ptr], ptr @ima_hooks_measure_str, i32 0, i32 %func
  %55 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx.i, align 4
  br label %func_measure_str.exit

func_measure_str.exit:                            ; preds = %if.end.i, %if.then80.func_measure_str.exit_crit_edge
  %retval.0.i = phi ptr [ %56, %if.end.i ], [ @.str.34, %if.then80.func_measure_str.exit_crit_edge ]
  call void @integrity_audit_message(i32 noundef 1804, ptr noundef null, ptr noundef %eventname, ptr noundef %retval.0.i, ptr noundef nonnull %audit_cause.0.ph, i32 noundef %ret.0.ph, i32 noundef 0, i32 noundef %ret.0.ph) #9
  br label %cleanup

cleanup:                                          ; preds = %func_measure_str.exit, %if.end71.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end59.cleanup_crit_edge, %if.then14.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -2, %if.end.cleanup_crit_edge ], [ -2, %if.then14.cleanup_crit_edge ], [ 1, %lor.lhs.false.cleanup_crit_edge ], [ 1, %if.end59.cleanup_crit_edge ], [ %ret.0.ph, %func_measure_str.exit ], [ %call73, %if.end71.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %secid) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %digest_hash) #9
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %hash) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %template) #9
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %event_data) #9
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %iint) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %entry1) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ima_template_desc_buf() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ima_calc_buffer_hash(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ima_alloc_init_template(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ima_store_template(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ima_free_template_entry(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @integrity_audit_message(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ima_kexec_cmdline(i32 noundef %kernel_fd, ptr noundef %buf, i32 noundef %size) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %buf, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool1.not = icmp eq i32 %size, 0
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @__fdget(i32 noundef %kernel_fd) #9, !noalias !139
  %and.i.i = and i32 %call.i, -4
  %0 = inttoptr i32 %and.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool2.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %f_path.i = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %f_path.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %f_path.i, align 8
  %mnt_userns.i.i = getelementptr inbounds %struct.vfsmount, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %mnt_userns.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %mnt_userns.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !137
  %f_inode.i = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %5 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %f_inode.i, align 8
  %call8 = tail call i32 @process_buffer_measurement(ptr noundef %4, ptr noundef %6, ptr noundef nonnull %buf, i32 noundef %size, ptr noundef nonnull @.str.19, i32 noundef 11, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, ptr noundef null, i32 noundef 0)
  %and.i = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end4.cleanup_crit_edge, label %if.then.i

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @fput(ptr noundef nonnull %0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ima_measure_critical_data(ptr noundef %event_label, ptr noundef %event_name, ptr noundef %buf, i32 noundef %buf_len, i1 noundef zeroext %hash, ptr noundef %digest, i32 noundef %digest_len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %event_name, null
  %tobool1.not = icmp eq ptr %event_label, null
  %or.cond = or i1 %tobool1.not, %tobool.not
  %tobool3.not = icmp eq ptr %buf, null
  %or.cond11 = or i1 %or.cond, %tobool3.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buf_len)
  %tobool5.not = icmp eq i32 %buf_len, 0
  %or.cond12 = or i1 %or.cond11, %tobool5.not
  br i1 %or.cond12, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @process_buffer_measurement(ptr noundef nonnull @init_user_ns, ptr noundef null, ptr noundef nonnull %buf, i32 noundef %buf_len, ptr noundef nonnull %event_name, i32 noundef 13, i32 noundef 0, ptr noundef nonnull %event_label, i1 noundef zeroext %hash, ptr noundef %digest, i32 noundef %digest_len)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -519, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_ima() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ima_appraise_parse_cmdline() #9
  tail call void @ima_init_template_list() #9
  %call = tail call i32 @hash_setup(ptr noundef nonnull @.str.21) #14
  %call1 = tail call i32 @ima_init() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %land.lhs.true

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

land.lhs.true:                                    ; preds = %entry
  %0 = load i32, ptr @ima_hash_algo, align 4
  %arrayidx = getelementptr [20 x ptr], ptr @hash_algo_name, i32 0, i32 %0
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %call2 = tail call i32 @strcmp(ptr noundef %2, ptr noundef nonnull dereferenceable(5) @.str.21) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp.not = icmp eq i32 %call2, 0
  br i1 %cmp.not, label %land.lhs.true.cleanup_crit_edge, label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef %2, ptr noundef nonnull @.str.21) #13
  store i1 false, ptr @hash_setup_done, align 4
  %call5 = tail call i32 @hash_setup(ptr noundef nonnull @.str.21) #14
  %call6 = tail call i32 @ima_init() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end.if.end9_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.end9:                                          ; preds = %if.end.if.end9_crit_edge, %entry.if.end9_crit_edge
  %call10 = tail call i32 @register_blocking_lsm_notifier(ptr noundef nonnull @ima_lsm_policy_notifier) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then20.critedge, label %do.end15

do.end15:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, i32 noundef %call10) #13
  br label %cleanup

if.then20.critedge:                               ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ima_update_policy_flags() #9
  br label %cleanup

cleanup:                                          ; preds = %if.then20.critedge, %do.end15, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end.cleanup_crit_edge ], [ %call10, %do.end15 ], [ 0, %if.then20.critedge ], [ %call1, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ima_template_desc_current() local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_string(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ima_update_xattr(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ima_read_xattr(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mmap_violation_check(i32 noundef %func, ptr noundef %file, ptr noundef %pathbuf, ptr nocapture noundef %pathname, ptr noundef %filename) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %func)
  %cmp = icmp eq i32 %func, 2
  br i1 %cmp, label %land.lhs.true, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

land.lhs.true:                                    ; preds = %entry
  %f_mapping = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 18
  %0 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_mapping, align 4
  %i_mmap_writable.i = getelementptr inbounds %struct.address_space, ptr %1, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_mmap_writable.i, i32 noundef 4) #9
  %2 = ptrtoint ptr %i_mmap_writable.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %i_mmap_writable.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp slt i32 %3, 1
  br i1 %cmp.i, label %land.lhs.true.if.end5_crit_edge, label %if.then

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then:                                          ; preds = %land.lhs.true
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %4 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %f_inode.i, align 8
  %6 = ptrtoint ptr %pathbuf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pathbuf, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %if.then3, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %f_path = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1
  %call4 = tail call ptr @ima_d_path(ptr noundef %f_path, ptr noundef %pathbuf, ptr noundef %filename) #9
  %8 = ptrtoint ptr %pathname to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call4, ptr %pathname, align 4
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  %9 = ptrtoint ptr %pathname to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pathname, align 4
  tail call void @integrity_audit_msg(i32 noundef 1800, ptr noundef %5, ptr noundef %10, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, i32 noundef -26, i32 noundef 0) #9
  br label %if.end5

if.end5:                                          ; preds = %if.end, %land.lhs.true.if.end5_crit_edge, %entry.if.end5_crit_edge
  %rc.0 = phi i32 [ -26, %if.end ], [ 0, %land.lhs.true.if.end5_crit_edge ], [ 0, %entry.if.end5_crit_edge ]
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ima_get_cache_status(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ima_read_modsig(i32 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ima_template_has_modsig(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ima_get_hash_algo(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ima_collect_measurement(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ima_store_measurement(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ima_check_blacklist(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ima_appraise_measurement(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ima_audit_measurement(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ima_free_modsig(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ima_add_violation(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fdget(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ima_appraise_parse_cmdline() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ima_init_template_list() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ima_init() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_blocking_lsm_notifier(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ima_update_policy_flags() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ima_lsm_policy_change(ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nobuiltin }
attributes #13 = { cold nounwind }
attributes #14 = { cold }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !33, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !68, !70, !72, !74, !76, !77, !78, !79, !81, !82, !83, !85, !87, !89, !91, !93, !95, !97, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !115, !117, !118, !119, !120, !122, !123, !124}
!llvm.named.register.sp = !{!126}
!llvm.module.flags = !{!127, !128, !129, !130, !131, !132, !133, !134}
!llvm.ident = !{!135}

!0 = !{ptr @ima_appraise, !1, !"ima_appraise", i1 false, i1 false}
!1 = !{!"../security/integrity/ima/ima_main.c", i32 33, i32 5}
!2 = !{ptr @ima_hash_algo, !3, !"ima_hash_algo", i1 false, i1 false}
!3 = !{!"../security/integrity/ima/ima_main.c", i32 38, i32 21}
!4 = !{ptr @__setup_hash_setup, !5, !"__setup_hash_setup", i1 false, i1 false}
!5 = !{!"../security/integrity/ima/ima_main.c", i32 77, i32 1}
!6 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!7 = !{!"../security/integrity/ima/ima_main.c", i32 412, i32 36}
!8 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!9 = !{!"../security/integrity/ima/ima_main.c", i32 452, i32 5}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../security/integrity/ima/ima_main.c", i32 465, i32 8}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../security/integrity/ima/ima_main.c", i32 465, i32 24}
!14 = distinct !{null, !15, !"__warned", i1 false, i1 false}
!15 = !{!"../security/integrity/ima/ima_main.c", i32 491, i32 40}
!16 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!17 = !{!"../security/integrity/ima/ima_main.c", i32 516, i32 35}
!18 = !{ptr @__ksymtab_ima_file_check, !19, !"__ksymtab_ima_file_check", i1 false, i1 false}
!19 = !{!"../security/integrity/ima/ima_main.c", i32 520, i32 1}
!20 = !{ptr @__ksymtab_ima_file_hash, !21, !"__ksymtab_ima_file_hash", i1 false, i1 false}
!21 = !{!"../security/integrity/ima/ima_main.c", i32 582, i32 1}
!22 = !{ptr @__ksymtab_ima_inode_hash, !23, !"__ksymtab_ima_inode_hash", i1 false, i1 false}
!23 = !{!"../security/integrity/ima/ima_main.c", i32 609, i32 1}
!24 = distinct !{null, !25, !"__warned", i1 false, i1 false}
!25 = !{!"../security/integrity/ima/ima_main.c", i32 713, i32 35}
!26 = !{ptr @read_idmap, !27, !"read_idmap", i1 false, i1 false}
!27 = !{!"../security/integrity/ima/ima_main.c", i32 717, i32 11}
!28 = distinct !{null, !29, !"__warned", i1 false, i1 false}
!29 = !{!"../security/integrity/ima/ima_main.c", i32 756, i32 35}
!30 = !{ptr @.str.3, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../security/integrity/ima/ima_main.c", i32 788, i32 4}
!32 = !{ptr @.str.4, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.5, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @ima_load_data._entry, !31, !"_entry", i1 false, i1 false}
!35 = !{ptr @ima_load_data._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.7, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../security/integrity/ima/ima_main.c", i32 794, i32 4}
!38 = !{ptr @ima_load_data._entry.6, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @ima_load_data._entry_ptr.8, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../security/integrity/ima/ima_main.c", i32 803, i32 4}
!42 = !{ptr @ima_load_data._entry.9, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @ima_load_data._entry_ptr.11, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.12, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../security/integrity/ima/ima_main.c", i32 833, i32 4}
!46 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @ima_post_load_data._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @ima_post_load_data._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = distinct !{null, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../security/integrity/ima/ima_main.c", i32 869, i32 28}
!51 = !{ptr @.str.15, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../security/integrity/ima/ima_main.c", i32 896, i32 17}
!53 = distinct !{null, !54, !"__warned", i1 false, i1 false}
!54 = !{!"../security/integrity/ima/ima_main.c", i32 909, i32 46}
!55 = !{ptr @.str.16, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../security/integrity/ima/ima_main.c", i32 925, i32 17}
!57 = !{ptr @.str.17, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../security/integrity/ima/ima_main.c", i32 951, i32 17}
!59 = !{ptr @.str.18, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../security/integrity/ima/ima_main.c", i32 957, i32 17}
!61 = !{ptr @.str.19, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../security/integrity/ima/ima_main.c", i32 990, i32 19}
!63 = !{ptr @__ksymtab_ima_measure_critical_data, !64, !"__ksymtab_ima_measure_critical_data", i1 false, i1 false}
!64 = !{!"../security/integrity/ima/ima_main.c", i32 1027, i32 1}
!65 = !{ptr @__initcall__kmod_ima__248_1060_init_ima7, !66, !"__initcall__kmod_ima__248_1060_init_ima7", i1 false, i1 false}
!66 = !{!"../security/integrity/ima/ima_main.c", i32 1060, i32 1}
!67 = !{ptr @__setup_str_hash_setup, !5, !"__setup_str_hash_setup", i1 false, i1 false}
!68 = !{ptr @.str.20, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../security/integrity/ima/ima_main.c", i32 53, i32 34}
!70 = !{ptr @.str.21, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../security/integrity/ima/ima_main.c", i32 54, i32 20}
!72 = !{ptr @.str.22, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../security/integrity/ima/ima_main.c", i32 56, i32 27}
!74 = !{ptr @.str.23, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../security/integrity/ima/ima_main.c", i32 59, i32 4}
!76 = !{ptr @.str.24, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @hash_setup._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @hash_setup._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.26, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../security/integrity/ima/ima_main.c", i32 68, i32 3}
!81 = !{ptr @hash_setup._entry.25, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @hash_setup._entry_ptr.27, !80, !"_entry_ptr", i1 false, i1 false}
!83 = distinct !{null, !84, !"hash_setup_done", i1 false, i1 false}
!84 = !{!"../security/integrity/ima/ima_main.c", i32 39, i32 12}
!85 = !{ptr @.str.28, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../security/integrity/ima/ima_main.c", i32 374, i32 9}
!87 = !{ptr @.str.29, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../security/integrity/ima/ima_main.c", i32 149, i32 7}
!89 = !{ptr @.str.30, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../security/integrity/ima/ima_main.c", i32 149, i32 22}
!91 = !{ptr @.str.31, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../security/integrity/ima/ima_main.c", i32 152, i32 22}
!93 = !{ptr @.str.32, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../security/integrity/ima/ima_main.c", i32 100, i32 9}
!95 = !{ptr @.str.33, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../security/integrity/ima/ima_main.c", i32 100, i32 22}
!97 = !{ptr @.str.34, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../security/integrity/ima/ima.h", i32 217, i32 2}
!99 = !{ptr @.str.35, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.36, !98, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.37, !98, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.38, !98, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @.str.39, !98, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.40, !98, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.41, !98, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @.str.42, !98, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.43, !98, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @.str.44, !98, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.45, !98, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.46, !98, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @.str.47, !98, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.48, !98, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @ima_hooks_measure_str, !114, !"ima_hooks_measure_str", i1 false, i1 false}
!114 = !{!"../security/integrity/ima/ima.h", i32 216, i32 27}
!115 = !{ptr @.str.49, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../security/integrity/ima/ima_main.c", i32 1040, i32 3}
!117 = !{ptr @.str.50, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @init_ima._entry, !116, !"_entry", i1 false, i1 false}
!119 = !{ptr @init_ima._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.52, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../security/integrity/ima/ima_main.c", i32 1052, i32 3}
!122 = !{ptr @init_ima._entry.51, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @init_ima._entry_ptr.53, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @ima_lsm_policy_notifier, !125, !"ima_lsm_policy_notifier", i1 false, i1 false}
!125 = !{!"../security/integrity/ima/ima_main.c", i32 41, i32 30}
!126 = !{!"sp"}
!127 = !{i32 1, !"wchar_size", i32 2}
!128 = !{i32 1, !"min_enum_size", i32 4}
!129 = !{i32 8, !"branch-target-enforcement", i32 0}
!130 = !{i32 8, !"sign-return-address", i32 0}
!131 = !{i32 8, !"sign-return-address-all", i32 0}
!132 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!133 = !{i32 7, !"uwtable", i32 1}
!134 = !{i32 7, !"frame-pointer", i32 2}
!135 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!136 = !{!"auto-init"}
!137 = !{i64 2152084205}
!138 = !{!"branch_weights", i32 2000, i32 1}
!139 = !{!140}
!140 = distinct !{!140, !141, !"fdget: %agg.result"}
!141 = distinct !{!141, !"fdget"}
