; ModuleID = '/llk/IR_all_yes/fs/crypto/keyring.c_pt.bc'
source_filename = "../fs/crypto/keyring.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+fscrypt_ioctl_add_key\22, \22a\22\09"
module asm "\09.weak\09__crc_fscrypt_ioctl_add_key\09\09\09\09"
module asm "\09.long\09__crc_fscrypt_ioctl_add_key\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fscrypt_ioctl_add_key:\09\09\09\09\09"
module asm "\09.asciz \09\22fscrypt_ioctl_add_key\22\09\09\09\09\09"
module asm "__kstrtabns_fscrypt_ioctl_add_key:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fscrypt_ioctl_remove_key\22, \22a\22\09"
module asm "\09.weak\09__crc_fscrypt_ioctl_remove_key\09\09\09\09"
module asm "\09.long\09__crc_fscrypt_ioctl_remove_key\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fscrypt_ioctl_remove_key:\09\09\09\09\09"
module asm "\09.asciz \09\22fscrypt_ioctl_remove_key\22\09\09\09\09\09"
module asm "__kstrtabns_fscrypt_ioctl_remove_key:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fscrypt_ioctl_remove_key_all_users\22, \22a\22\09"
module asm "\09.weak\09__crc_fscrypt_ioctl_remove_key_all_users\09\09\09\09"
module asm "\09.long\09__crc_fscrypt_ioctl_remove_key_all_users\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fscrypt_ioctl_remove_key_all_users:\09\09\09\09\09"
module asm "\09.asciz \09\22fscrypt_ioctl_remove_key_all_users\22\09\09\09\09\09"
module asm "__kstrtabns_fscrypt_ioctl_remove_key_all_users:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fscrypt_ioctl_get_key_status\22, \22a\22\09"
module asm "\09.weak\09__crc_fscrypt_ioctl_get_key_status\09\09\09\09"
module asm "\09.long\09__crc_fscrypt_ioctl_get_key_status\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fscrypt_ioctl_get_key_status:\09\09\09\09\09"
module asm "\09.asciz \09\22fscrypt_ioctl_get_key_status\22\09\09\09\09\09"
module asm "__kstrtabns_fscrypt_ioctl_get_key_status:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.key_type = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.lock_class_key }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.fscrypt_key_specifier = type { i32, i32, %union.anon.77 }
%union.anon.77 = type { [32 x i8] }
%struct.fscrypt_add_key_arg = type { %struct.fscrypt_key_specifier, i32, i32, [8 x i32], [0 x i8] }
%struct.fscrypt_master_key_secret = type { %struct.fscrypt_hkdf, i32, [64 x i8] }
%struct.fscrypt_hkdf = type { ptr }
%struct.file = type { %union.anon.4, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.4 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.66, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.67, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.68, ptr, %struct.address_space, %struct.list_head, %union.anon.69, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.66 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.67 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.68 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.69 = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.25, ptr, %struct.rw_semaphore, ptr, ptr, %union.anon.26, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i32, %union.anon.27, %union.anon.31, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.25 = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.26 = type { i64 }
%union.anon.27 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i32, %union.anon.28, ptr, ptr, ptr }
%union.anon.28 = type { i32 }
%union.anon.31 = type { %union.key_payload }
%union.key_payload = type { [4 x ptr] }
%struct.fscrypt_provisioning_key_payload = type { i32, i32, [0 x i8] }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.51, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.18 }
%struct.llist_node = type { ptr }
%union.anon.18 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.20 }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.51 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.fscrypt_master_key = type { %struct.fscrypt_master_key_secret, %struct.fscrypt_key_specifier, ptr, %struct.refcount_struct, %struct.list_head, %struct.spinlock, [10 x %struct.fscrypt_prepared_key], [10 x %struct.fscrypt_prepared_key], [10 x %struct.fscrypt_prepared_key], %struct.siphash_key_t, i8 }
%struct.fscrypt_prepared_key = type { ptr, ptr }
%struct.siphash_key_t = type { [2 x i64] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.33 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.33 = type { %struct.callback_head }
%struct.fscrypt_remove_key_arg = type { %struct.fscrypt_key_specifier, i32, [5 x i32] }
%struct.fscrypt_get_key_status_arg = type { %struct.fscrypt_key_specifier, [6 x i32], i32, i32, i32, [13 x i32] }
%struct.key_preparsed_payload = type { ptr, ptr, %union.key_payload, ptr, i32, i32, i64 }

@key_type_fscrypt = internal global { %struct.key_type, [36 x i8] } { %struct.key_type { ptr @.str.1, i32 0, i32 0, ptr null, ptr null, ptr null, ptr @fscrypt_key_instantiate, ptr null, ptr null, ptr null, ptr null, ptr @fscrypt_key_destroy, ptr @fscrypt_key_describe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, %struct.lock_class_key zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_fscrypt_ioctl_add_key = external dso_local constant [0 x i8], align 1
@__kstrtabns_fscrypt_ioctl_add_key = external dso_local constant [0 x i8], align 1
@__ksymtab_fscrypt_ioctl_add_key = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fscrypt_ioctl_add_key to i32), ptr @__kstrtab_fscrypt_ioctl_add_key, ptr @__kstrtabns_fscrypt_ioctl_add_key }, section "___ksymtab_gpl+fscrypt_ioctl_add_key", align 4
@fscrypt_add_test_dummy_key.test_key = internal global { [64 x i8], [32 x i8] } zeroinitializer, align 32
@fscrypt_add_test_dummy_key.___done = internal global i8 0, section ".data.once", align 1
@fscrypt_add_test_dummy_key.___once_key = internal global { { { %struct.atomic_t, { ptr } } }, [24 x i8] } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } }, [24 x i8] zeroinitializer }, align 32
@__kstrtab_fscrypt_ioctl_remove_key = external dso_local constant [0 x i8], align 1
@__kstrtabns_fscrypt_ioctl_remove_key = external dso_local constant [0 x i8], align 1
@__ksymtab_fscrypt_ioctl_remove_key = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fscrypt_ioctl_remove_key to i32), ptr @__kstrtab_fscrypt_ioctl_remove_key, ptr @__kstrtabns_fscrypt_ioctl_remove_key }, section "___ksymtab_gpl+fscrypt_ioctl_remove_key", align 4
@__kstrtab_fscrypt_ioctl_remove_key_all_users = external dso_local constant [0 x i8], align 1
@__kstrtabns_fscrypt_ioctl_remove_key_all_users = external dso_local constant [0 x i8], align 1
@__ksymtab_fscrypt_ioctl_remove_key_all_users = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fscrypt_ioctl_remove_key_all_users to i32), ptr @__kstrtab_fscrypt_ioctl_remove_key_all_users, ptr @__kstrtabns_fscrypt_ioctl_remove_key_all_users }, section "___ksymtab_gpl+fscrypt_ioctl_remove_key_all_users", align 4
@__kstrtab_fscrypt_ioctl_get_key_status = external dso_local constant [0 x i8], align 1
@__kstrtabns_fscrypt_ioctl_get_key_status = external dso_local constant [0 x i8], align 1
@__ksymtab_fscrypt_ioctl_get_key_status = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fscrypt_ioctl_get_key_status to i32), ptr @__kstrtab_fscrypt_ioctl_get_key_status, ptr @__kstrtabns_fscrypt_ioctl_get_key_status }, section "___ksymtab_gpl+fscrypt_ioctl_get_key_status", align 4
@key_type_fscrypt_user = internal global { %struct.key_type, [36 x i8] } { %struct.key_type { ptr @.str.21, i32 0, i32 0, ptr null, ptr null, ptr null, ptr @fscrypt_user_key_instantiate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fscrypt_user_key_describe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, %struct.lock_class_key zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@key_type_fscrypt_provisioning = internal global { %struct.key_type, [36 x i8] } { %struct.key_type { ptr @.str.22, i32 0, i32 0, ptr null, ptr @fscrypt_provisioning_key_preparse, ptr @fscrypt_provisioning_key_free_preparse, ptr @generic_key_instantiate, ptr null, ptr null, ptr null, ptr null, ptr @fscrypt_provisioning_key_destroy, ptr @fscrypt_provisioning_key_describe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, %struct.lock_class_key zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%*phN\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"._fscrypt\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c": secret removed\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@do_add_master_key.fscrypt_add_key_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @do_add_master_key.fscrypt_add_key_mutex, i64 52), ptr getelementptr (i8, ptr @do_add_master_key.fscrypt_add_key_mutex, i64 52) }, ptr @do_add_master_key.fscrypt_add_key_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"fscrypt_add_key_mutex.wait_lock\00", [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fscrypt_add_key_mutex\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fscrypt-%s\00", [21 x i8] zeroinitializer }, align 32
@add_new_master_key.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"&mk->mk_decrypted_inodes_lock\00", [34 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fscrypt-%*phN-users\00", [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%*phN.uid.%u\00", [19 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fs/crypto/keyring.c\00", [44 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c", including ino %lu\00", [44 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"%s: %zu inode(s) still busy after removing key with %s %*phN%s\00", [33 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"descriptor\00", [21 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"identifier\00", [21 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"[unknown]\00", [22 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c".fscrypt\00", [23 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fscrypt-provisioning\00", [43 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c": %u [%u]\00", [22 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294967168, i64 4294967285]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 4294967168, i64 4294967285]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 4294967168, i64 4294967285]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 4294967168, i64 4294967285]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 4294967168, i64 4294967285]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 4294967168, i64 4294967285]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 32, i64 4294967168, i64 4294967285]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 32, i64 4294967168, i64 4294967285]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 4294967168, i64 4294967285]
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"key_type_fscrypt\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 95, i32 24 }
@___asan_gen_.35 = private unnamed_addr constant [9 x i8] c"test_key\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 699, i32 12 }
@___asan_gen_.38 = private unnamed_addr constant [12 x i8] c"___once_key\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 703, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant [22 x i8] c"key_type_fscrypt_user\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 128, i32 24 }
@___asan_gen_.44 = private unnamed_addr constant [30 x i8] c"key_type_fscrypt_provisioning\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 550, i32 24 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 178, i32 23 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 96, i32 12 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 84, i32 16 }
@___asan_gen_.57 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 156, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant [22 x i8] c"fscrypt_add_key_mutex\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 438, i32 9 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 171, i32 23 }
@___asan_gen_.71 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 353, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 186, i32 23 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 195, i32 23 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 1003, i32 9 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 840, i32 38 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 842, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 526, i32 10 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 528, i32 10 }
@___asan_gen_.102 = private unnamed_addr constant [31 x i8] c"../fs/crypto/fscrypt_private.h\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 530, i32 9 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 129, i32 12 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 551, i32 12 }
@___asan_gen_.110 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.111 = private constant [23 x i8] c"../fs/crypto/keyring.c\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 541, i32 17 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @__ksymtab_fscrypt_ioctl_add_key, ptr @__ksymtab_fscrypt_ioctl_get_key_status, ptr @__ksymtab_fscrypt_ioctl_remove_key, ptr @__ksymtab_fscrypt_ioctl_remove_key_all_users, ptr @key_type_fscrypt, ptr @fscrypt_add_test_dummy_key.test_key, ptr @fscrypt_add_test_dummy_key.___once_key, ptr @key_type_fscrypt_user, ptr @key_type_fscrypt_provisioning, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, ptr @do_add_master_key.fscrypt_add_key_mutex, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @add_new_master_key.__key, ptr @.str.9, ptr @.str.10, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @key_type_fscrypt to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fscrypt_add_test_dummy_key.test_key to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fscrypt_add_test_dummy_key.___once_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @key_type_fscrypt_user to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @key_type_fscrypt_provisioning to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_add_master_key.fscrypt_add_key_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_new_master_key.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fscrypt_sb_free(ptr nocapture noundef %sb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %s_master_keys = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 20
  %0 = ptrtoint ptr %s_master_keys to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_master_keys, align 8
  tail call void @key_put(ptr noundef %1) #11
  %2 = ptrtoint ptr %s_master_keys to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %s_master_keys, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @fscrypt_find_master_key(ptr noundef %sb, ptr noundef %mk_spec) local_unnamed_addr #0 align 64 {
entry:
  %description = alloca [33 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %description) #11
  %0 = call ptr @memset(ptr %description, i32 255, i32 33)
  %s_master_keys = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 20
  %1 = ptrtoint ptr %s_master_keys to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %s_master_keys, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !88
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %mk_spec to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mk_spec, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %switch.selectcmp.i.i = icmp eq i32 %4, 2
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 16, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %switch.selectcmp2.i.i = icmp eq i32 %4, 1
  %switch.select3.i.i = select i1 %switch.selectcmp2.i.i, i32 8, i32 %switch.select.i.i
  %u.i = getelementptr inbounds %struct.fscrypt_key_specifier, ptr %mk_spec, i32 0, i32 2
  %call1.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %description, ptr noundef nonnull @.str, i32 noundef %switch.select3.i.i, ptr noundef %u.i) #11
  %5 = ptrtoint ptr %2 to i32
  %or.i.i = or i32 %5, 1
  %6 = inttoptr i32 %or.i.i to ptr
  %call1.i9 = call ptr @keyring_search(ptr noundef nonnull %6, ptr noundef nonnull @key_type_fscrypt, ptr noundef nonnull %description, i1 noundef zeroext false) #11
  %cmp.i.i = icmp ugt ptr %call1.i9, inttoptr (i32 -4096 to ptr)
  %magicptr.i = ptrtoint ptr %call1.i9 to i32
  br i1 %cmp.i.i, label %if.then.i, label %if.end9.i

if.then.i:                                        ; preds = %if.end
  %7 = zext i32 %magicptr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %magicptr.i, label %if.then.i.cleanup_crit_edge [
    i32 -11, label %if.then.i.if.then6.i_crit_edge
    i32 -128, label %if.then.i.if.then6.i_crit_edge10
  ]

if.then.i.if.then6.i_crit_edge10:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then6.i

if.then.i.if.then6.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then6.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then6.i:                                       ; preds = %if.then.i.if.then6.i_crit_edge, %if.then.i.if.then6.i_crit_edge10
  br label %cleanup

if.end9.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %and.i.i = and i32 %magicptr.i, -2
  %8 = inttoptr i32 %and.i.i to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.end9.i, %if.then6.i, %if.then.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -126 to ptr), %entry.cleanup_crit_edge ], [ %8, %if.end9.i ], [ inttoptr (i32 -126 to ptr), %if.then6.i ], [ %call1.i9, %if.then.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %description) #11
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fscrypt_ioctl_add_key(ptr nocapture noundef readonly %filp, ptr noundef %_uarg) #0 align 64 {
entry:
  %arg = alloca %struct.fscrypt_add_key_arg, align 4
  %secret = alloca %struct.fscrypt_master_key_secret, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %arg) #11
  %4 = call ptr @memset(ptr %arg, i32 255, i32 80)
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %secret) #11
  tail call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 156) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %5 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %_uarg, i32 80, i32 -1226833920) #14, !srcloc !89
  %asmresult.i.i = extractvalue { i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !90

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %arg, i32 noundef 80) #11
  %6 = call i32 @llvm.read_register.i32(metadata !78) #11
  %and.i.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !91
  %and.i.i.i.i = and i32 %8, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !92
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !93
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %arg, ptr noundef %_uarg, i32 noundef 80) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #11, !srcloc !92
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !93
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !90

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.0.i.i105 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 80, %entry.if.then11.i.i_crit_edge ], [ 80, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 80, %res.0.i.i105
  %add.ptr.i.i = getelementptr i8, ptr %arg, i32 %sub.i.i
  %9 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i105)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %__reserved.i = getelementptr inbounds %struct.fscrypt_key_specifier, ptr %arg, i32 0, i32 1
  %10 = ptrtoint ptr %__reserved.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %__reserved.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %valid_key_spec.exit, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

valid_key_spec.exit:                              ; preds = %if.end
  %12 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arg, align 4
  %14 = add i32 %13, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %15 = icmp ult i32 %14, 2
  br i1 %15, label %if.end4, label %valid_key_spec.exit.cleanup_crit_edge

valid_key_spec.exit.cleanup_crit_edge:            ; preds = %valid_key_spec.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %valid_key_spec.exit
  %__reserved = getelementptr inbounds %struct.fscrypt_add_key_arg, ptr %arg, i32 0, i32 3
  %call5 = call ptr @memchr_inv(ptr noundef %__reserved, i32 noundef 0, i32 noundef 32) #11
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %16 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp = icmp eq i32 %17, 1
  br i1 %cmp, label %land.lhs.true, label %if.end8.if.end12_crit_edge

if.end8.if.end12_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

land.lhs.true:                                    ; preds = %if.end8
  %call10 = call zeroext i1 @capable(i32 noundef 21) #11
  br i1 %call10, label %land.lhs.true.if.end12_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.end12:                                         ; preds = %land.lhs.true.if.end12_crit_edge, %if.end8.if.end12_crit_edge
  %18 = call ptr @memset(ptr %secret, i32 0, i32 72)
  %key_id = getelementptr inbounds %struct.fscrypt_add_key_arg, ptr %arg, i32 0, i32 2
  %19 = ptrtoint ptr %key_id to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %key_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool13.not = icmp eq i32 %20, 0
  %raw_size25 = getelementptr inbounds %struct.fscrypt_add_key_arg, ptr %arg, i32 0, i32 1
  %21 = ptrtoint ptr %raw_size25 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %raw_size25, align 4
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp15.not = icmp eq i32 %22, 0
  br i1 %cmp15.not, label %if.end17, label %if.then14.cleanup_crit_edge

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end17:                                         ; preds = %if.then14
  %23 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arg, align 4
  %call21 = call fastcc i32 @get_keyring_key(i32 noundef %20, i32 noundef %24, ptr noundef nonnull %secret)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end17.if.end40_crit_edge, label %if.end17.out_wipe_secret_crit_edge

if.end17.out_wipe_secret_crit_edge:               ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_wipe_secret

if.end17.if.end40_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

if.else:                                          ; preds = %if.end12
  %25 = add i32 %22, -65
  call void @__sanitizer_cov_trace_const_cmp4(i32 -49, i32 %25)
  %26 = icmp ult i32 %25, -49
  br i1 %26, label %if.else.cleanup_crit_edge, label %if.end59.i.i71

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end59.i.i71:                                   ; preds = %if.else
  %size = getelementptr inbounds %struct.fscrypt_master_key_secret, ptr %secret, i32 0, i32 1
  %27 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %22, ptr %size, align 4
  %raw = getelementptr inbounds %struct.fscrypt_master_key_secret, ptr %secret, i32 0, i32 2
  %raw33 = getelementptr inbounds %struct.fscrypt_add_key_arg, ptr %_uarg, i32 0, i32 4
  call void @__check_object_size(ptr noundef %raw, i32 noundef %22, i1 noundef zeroext false) #11
  call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 156) #11
  %call.i.i72 = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i72, label %if.end59.i.i71.if.then11.i.i88_crit_edge, label %land.lhs.true.i.i75

if.end59.i.i71.if.then11.i.i88_crit_edge:         ; preds = %if.end59.i.i71
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i88

land.lhs.true.i.i75:                              ; preds = %if.end59.i.i71
  %28 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %raw33, i32 %22, i32 -1226833920) #14, !srcloc !89
  %asmresult.i.i73 = extractvalue { i32, i32 } %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i73)
  %cmp.i6.i74 = icmp eq i32 %asmresult.i.i73, 0
  br i1 %cmp.i6.i74, label %if.end.i.i85, label %land.lhs.true.i.i75.if.then11.i.i88_crit_edge, !prof !90

land.lhs.true.i.i75.if.then11.i.i88_crit_edge:    ; preds = %land.lhs.true.i.i75
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i88

if.end.i.i85:                                     ; preds = %land.lhs.true.i.i75
  %call.i.i.i76 = call zeroext i1 @__kasan_check_write(ptr noundef %raw, i32 noundef %22) #11
  %29 = call i32 @llvm.read_register.i32(metadata !78) #11
  %and.i.i.i.i.i.i77 = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i.i.i.i77 to ptr
  %cpu_domain.i.i.i.i.i78 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 4
  %31 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i78) #6, !srcloc !91
  %and.i.i.i.i79 = and i32 %31, -13
  %or.i.i.i.i80 = or i32 %and.i.i.i.i79, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i80) #11, !srcloc !92
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !93
  %call1.i.i.i81 = call i32 @arm_copy_from_user(ptr noundef %raw, ptr noundef %raw33, i32 noundef %22) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %31) #11, !srcloc !92
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !93
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i81)
  %tobool4.not.i.i84 = icmp eq i32 %call1.i.i.i81, 0
  br i1 %tobool4.not.i.i84, label %if.end.i.i85.if.end40_crit_edge, label %if.end.i.i85.if.then11.i.i88_crit_edge, !prof !90

if.end.i.i85.if.then11.i.i88_crit_edge:           ; preds = %if.end.i.i85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i88

if.end.i.i85.if.end40_crit_edge:                  ; preds = %if.end.i.i85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

if.then11.i.i88:                                  ; preds = %if.end.i.i85.if.then11.i.i88_crit_edge, %land.lhs.true.i.i75.if.then11.i.i88_crit_edge, %if.end59.i.i71.if.then11.i.i88_crit_edge
  %res.0.i.i83111 = phi i32 [ %call1.i.i.i81, %if.end.i.i85.if.then11.i.i88_crit_edge ], [ %22, %if.end59.i.i71.if.then11.i.i88_crit_edge ], [ %22, %land.lhs.true.i.i75.if.then11.i.i88_crit_edge ]
  %sub.i.i86 = sub i32 %22, %res.0.i.i83111
  %add.ptr.i.i87 = getelementptr i8, ptr %raw, i32 %sub.i.i86
  %32 = call ptr @memset(ptr %add.ptr.i.i87, i32 0, i32 %res.0.i.i83111)
  br label %out_wipe_secret

if.end40:                                         ; preds = %if.end.i.i85.if.end40_crit_edge, %if.end17.if.end40_crit_edge
  %call42 = call fastcc i32 @add_master_key(ptr noundef %3, ptr noundef nonnull %secret, ptr noundef nonnull %arg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %if.end40.out_wipe_secret_crit_edge

if.end40.out_wipe_secret_crit_edge:               ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_wipe_secret

if.end45:                                         ; preds = %if.end40
  %33 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %34)
  %cmp48 = icmp eq i32 %34, 2
  br i1 %cmp48, label %land.lhs.true49, label %if.end45.if.end58_crit_edge

if.end45.if.end58_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58

land.lhs.true49:                                  ; preds = %if.end45
  %u = getelementptr inbounds %struct.fscrypt_key_specifier, ptr %_uarg, i32 0, i32 2
  %u53 = getelementptr inbounds %struct.fscrypt_key_specifier, ptr %arg, i32 0, i32 2
  call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 174) #11
  %call.i.i96 = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i96, label %land.lhs.true49.out_wipe_secret_crit_edge, label %if.end.i.i100

land.lhs.true49.out_wipe_secret_crit_edge:        ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_wipe_secret

if.end.i.i100:                                    ; preds = %land.lhs.true49
  %35 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %u, i32 16, i32 -1226833920) #14, !srcloc !94
  %asmresult.i.i98 = extractvalue { i32, i32 } %35, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i98)
  %cmp.i6.i99 = icmp eq i32 %asmresult.i.i98, 0
  br i1 %cmp.i6.i99, label %copy_to_user.exit, label %if.end.i.i100.out_wipe_secret_crit_edge

if.end.i.i100.out_wipe_secret_crit_edge:          ; preds = %if.end.i.i100
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_wipe_secret

copy_to_user.exit:                                ; preds = %if.end.i.i100
  %call.i.i.i101 = call zeroext i1 @__kasan_check_read(ptr noundef %u53, i32 noundef 16) #11
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %u, ptr noundef %u53, i32 noundef 16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool56.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool56.not, label %copy_to_user.exit.if.end58_crit_edge, label %copy_to_user.exit.out_wipe_secret_crit_edge

copy_to_user.exit.out_wipe_secret_crit_edge:      ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_wipe_secret

copy_to_user.exit.if.end58_crit_edge:             ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58

if.end58:                                         ; preds = %copy_to_user.exit.if.end58_crit_edge, %if.end45.if.end58_crit_edge
  br label %out_wipe_secret

out_wipe_secret:                                  ; preds = %if.end58, %copy_to_user.exit.out_wipe_secret_crit_edge, %if.end.i.i100.out_wipe_secret_crit_edge, %land.lhs.true49.out_wipe_secret_crit_edge, %if.end40.out_wipe_secret_crit_edge, %if.then11.i.i88, %if.end17.out_wipe_secret_crit_edge
  %err.0 = phi i32 [ %call21, %if.end17.out_wipe_secret_crit_edge ], [ %call42, %if.end40.out_wipe_secret_crit_edge ], [ -14, %copy_to_user.exit.out_wipe_secret_crit_edge ], [ 0, %if.end58 ], [ -14, %if.then11.i.i88 ], [ -14, %land.lhs.true49.out_wipe_secret_crit_edge ], [ -14, %if.end.i.i100.out_wipe_secret_crit_edge ]
  call void @fscrypt_destroy_hkdf(ptr noundef nonnull %secret) #11
  %36 = call ptr @memset(ptr %secret, i32 0, i32 72)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %secret) #11, !srcloc !95
  br label %cleanup

cleanup:                                          ; preds = %out_wipe_secret, %if.else.cleanup_crit_edge, %if.then14.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %valid_key_spec.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ %err.0, %out_wipe_secret ], [ -22, %valid_key_spec.exit.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ], [ -13, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.then14.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %secret) #11
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %arg) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memchr_inv(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_keyring_key(i32 noundef %key_id, i32 noundef %type, ptr nocapture noundef writeonly %secret) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @lookup_user_key(i32 noundef %key_id, i32 noundef 0, i32 noundef 4) #11
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  %0 = ptrtoint ptr %call to i32
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %and.i = and i32 %0, -2
  %1 = inttoptr i32 %and.i to ptr
  %type4 = getelementptr inbounds %struct.key, ptr %1, i32 0, i32 16, i32 0, i32 2
  %2 = ptrtoint ptr %type4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type4, align 8
  %cmp.not = icmp eq ptr %3, @key_type_fscrypt_provisioning
  br i1 %cmp.not, label %if.end6, label %if.end.out_put_crit_edge

if.end.out_put_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_put

if.end6:                                          ; preds = %if.end
  %4 = getelementptr inbounds %struct.key, ptr %1, i32 0, i32 17
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %type)
  %cmp8.not = icmp eq i32 %8, %type
  br i1 %cmp8.not, label %if.end10, label %if.end6.out_put_crit_edge

if.end6.out_put_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_put

if.end10:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %datalen = getelementptr inbounds %struct.key, ptr %1, i32 0, i32 13
  %9 = ptrtoint ptr %datalen to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %datalen, align 2
  %conv = zext i16 %10 to i32
  %sub = add nsw i32 %conv, -8
  %size = getelementptr inbounds %struct.fscrypt_master_key_secret, ptr %secret, i32 0, i32 1
  %11 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %sub, ptr %size, align 4
  %raw = getelementptr inbounds %struct.fscrypt_master_key_secret, ptr %secret, i32 0, i32 2
  %raw11 = getelementptr inbounds %struct.fscrypt_provisioning_key_payload, ptr %6, i32 0, i32 2
  %12 = call ptr @memcpy(ptr %raw, ptr %raw11, i32 %sub)
  br label %out_put

out_put:                                          ; preds = %if.end10, %if.end6.out_put_crit_edge, %if.end.out_put_crit_edge
  %err.0 = phi i32 [ 0, %if.end10 ], [ -129, %if.end6.out_put_crit_edge ], [ -129, %if.end.out_put_crit_edge ]
  tail call void @key_put(ptr noundef %1) #11
  br label %cleanup

cleanup:                                          ; preds = %out_put, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out_put ], [ %0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @add_master_key(ptr noundef %sb, ptr noundef %secret, ptr noundef %key_spec) unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i.i = alloca i32, align 4
  %description.i.i50.i = alloca [48 x i8], align 1
  %description.i.i.i = alloca [47 x i8], align 1
  %description.i33.i = alloca [33 x i8], align 1
  %description.i29.i = alloca [40 x i8], align 1
  %description.i.i = alloca [33 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %key_spec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %key_spec, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.then, label %entry.if.end11_crit_edge

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.then:                                          ; preds = %entry
  %raw = getelementptr inbounds %struct.fscrypt_master_key_secret, ptr %secret, i32 0, i32 2
  %size = getelementptr inbounds %struct.fscrypt_master_key_secret, ptr %secret, i32 0, i32 1
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 4
  %call = tail call i32 @fscrypt_init_hkdf(ptr noundef %secret, ptr noundef %raw, i32 noundef %3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %if.then
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size, align 4
  %6 = call ptr @memset(ptr %raw, i32 0, i32 %5)
  tail call void asm sideeffect "", "r,~{memory}"(ptr %raw) #11, !srcloc !95
  %u = getelementptr inbounds %struct.fscrypt_key_specifier, ptr %key_spec, i32 0, i32 2
  %call7 = tail call i32 @fscrypt_hkdf_expand(ptr noundef %secret, i8 noundef zeroext 1, ptr noundef null, i32 noundef 0, ptr noundef %u, i32 noundef 16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end.if.end11_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.end11:                                         ; preds = %if.end.if.end11_crit_edge, %entry.if.end11_crit_edge
  tail call void @mutex_lock_nested(ptr noundef nonnull @do_add_master_key.fscrypt_add_key_mutex, i32 noundef 0) #11
  %s_master_keys.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 20
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %description.i.i) #11
  %7 = call ptr @memset(ptr %description.i.i, i32 255, i32 33)
  %8 = ptrtoint ptr %s_master_keys.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %s_master_keys.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !88
  %cmp.i87.i = icmp eq ptr %9, null
  br i1 %cmp.i87.i, label %if.end11.if.then.thread.i_crit_edge, label %if.end.i.lr.ph.i

if.end11.if.then.thread.i_crit_edge:              ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.thread.i

if.end.i.lr.ph.i:                                 ; preds = %if.end11
  %u.i.i.i = getelementptr inbounds %struct.fscrypt_key_specifier, ptr %key_spec, i32 0, i32 2
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then11.i.if.end.i.i_crit_edge, %if.end.i.lr.ph.i
  %10 = phi ptr [ %9, %if.end.i.lr.ph.i ], [ %100, %if.then11.i.if.end.i.i_crit_edge ]
  %11 = ptrtoint ptr %key_spec to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %key_spec, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %switch.selectcmp.i.i.i.i = icmp eq i32 %12, 2
  %switch.select.i.i.i.i = select i1 %switch.selectcmp.i.i.i.i, i32 16, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %switch.selectcmp2.i.i.i.i = icmp eq i32 %12, 1
  %switch.select3.i.i.i.i = select i1 %switch.selectcmp2.i.i.i.i, i32 8, i32 %switch.select.i.i.i.i
  %call1.i.i.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %description.i.i, ptr noundef nonnull @.str, i32 noundef %switch.select3.i.i.i.i, ptr noundef %u.i.i.i) #11
  %13 = ptrtoint ptr %10 to i32
  %or.i.i.i.i = or i32 %13, 1
  %14 = inttoptr i32 %or.i.i.i.i to ptr
  %call1.i9.i.i = call ptr @keyring_search(ptr noundef nonnull %14, ptr noundef nonnull @key_type_fscrypt, ptr noundef nonnull %description.i.i, i1 noundef zeroext false) #11
  %cmp.i.i.i.i = icmp ugt ptr %call1.i9.i.i, inttoptr (i32 -4096 to ptr)
  %magicptr.i.i.i = ptrtoint ptr %call1.i9.i.i to i32
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i, label %if.end9.i.i.i

if.then.i.i.i:                                    ; preds = %if.end.i.i
  %15 = zext i32 %magicptr.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %magicptr.i.i.i, label %if.then.i.i.i.fscrypt_find_master_key.exit.i_crit_edge [
    i32 -11, label %if.then.i.i.i.if.then.thread.i_crit_edge
    i32 -128, label %if.then.i.i.i.if.then.thread.i_crit_edge90
  ]

if.then.i.i.i.if.then.thread.i_crit_edge90:       ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.thread.i

if.then.i.i.i.if.then.thread.i_crit_edge:         ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.thread.i

if.then.i.i.i.fscrypt_find_master_key.exit.i_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fscrypt_find_master_key.exit.i

if.end9.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %and.i.i.i.i = and i32 %magicptr.i.i.i, -2
  %16 = inttoptr i32 %and.i.i.i.i to ptr
  br label %fscrypt_find_master_key.exit.i

if.then.thread.i:                                 ; preds = %if.then11.i.if.then.thread.i_crit_edge, %if.then.i.i.i.if.then.thread.i_crit_edge, %if.then.i.i.i.if.then.thread.i_crit_edge90, %if.end11.if.then.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %description.i.i) #11
  br label %if.end.i

fscrypt_find_master_key.exit.i:                   ; preds = %if.end9.i.i.i, %if.then.i.i.i.fscrypt_find_master_key.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %16, %if.end9.i.i.i ], [ %call1.i9.i.i, %if.then.i.i.i.fscrypt_find_master_key.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %description.i.i) #11
  %cmp.i28.i = icmp ugt ptr %retval.0.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i28.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %fscrypt_find_master_key.exit.i
  %17 = ptrtoint ptr %retval.0.i.i to i32
  %cmp.not.i = icmp eq ptr %retval.0.i.i, inttoptr (i32 -126 to ptr)
  br i1 %cmp.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then.i.do_add_master_key.exit_crit_edge

if.then.i.do_add_master_key.exit_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do_add_master_key.exit

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i.if.end.i_crit_edge, %if.then.thread.i
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %description.i29.i) #11
  %18 = call ptr @memset(ptr %description.i29.i, i32 255, i32 40)
  %19 = ptrtoint ptr %s_master_keys.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %s_master_keys.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %20, null
  br i1 %tobool.not.i.i, label %if.end.i31.i, label %if.end.i.allocate_filesystem_keyring.exit.thread.i_crit_edge

if.end.i.allocate_filesystem_keyring.exit.thread.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %allocate_filesystem_keyring.exit.thread.i

if.end.i31.i:                                     ; preds = %if.end.i
  %s_id.i.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 39
  %call.i.i.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %description.i29.i, ptr noundef nonnull @.str.8, ptr noundef %s_id.i.i.i) #11
  %21 = call i32 @llvm.read_register.i32(metadata !78) #11
  %and.i.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %task.i.i, align 8
  %cred.i.i = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 99
  %25 = ptrtoint ptr %cred.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cred.i.i, align 16
  %call5.i.i = call ptr @keyring_alloc(ptr noundef nonnull %description.i29.i, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, ptr noundef %26, i32 noundef 134938624, i32 noundef 2, ptr noundef null, ptr noundef null) #11
  %cmp.i.i.i = icmp ugt ptr %call5.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %allocate_filesystem_keyring.exit.i, label %do.end17.i.i

do.end17.i.i:                                     ; preds = %if.end.i31.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !96
  %27 = ptrtoint ptr %s_master_keys.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %call5.i.i, ptr %s_master_keys.i.i, align 8
  br label %allocate_filesystem_keyring.exit.thread.i

allocate_filesystem_keyring.exit.thread.i:        ; preds = %do.end17.i.i, %if.end.i.allocate_filesystem_keyring.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %description.i29.i) #11
  %28 = ptrtoint ptr %s_master_keys.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %s_master_keys.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %description.i33.i) #11
  %30 = call ptr @memset(ptr %description.i33.i, i32 255, i32 33)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %31 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %31, i32 noundef 3520, i32 noundef 440) #15
  %tobool.not.i34.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i34.i, label %allocate_filesystem_keyring.exit.thread.i.add_new_master_key.exit.i_crit_edge, label %if.end.i36.i

allocate_filesystem_keyring.exit.thread.i.add_new_master_key.exit.i_crit_edge: ; preds = %allocate_filesystem_keyring.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %add_new_master_key.exit.i

allocate_filesystem_keyring.exit.i:               ; preds = %if.end.i31.i
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %call5.i.i to i32
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %description.i29.i) #11
  br label %do_add_master_key.exit

if.end.i36.i:                                     ; preds = %allocate_filesystem_keyring.exit.thread.i
  %mk_spec1.i.i = getelementptr inbounds %struct.fscrypt_master_key, ptr %call7.i.i.i.i, i32 0, i32 1
  %33 = call ptr @memcpy(ptr %mk_spec1.i.i, ptr %key_spec, i32 40)
  %34 = call ptr @memcpy(ptr %call7.i.i.i.i, ptr %secret, i32 72)
  %35 = call ptr @memset(ptr %secret, i32 0, i32 72)
  call void asm sideeffect "", "r,~{memory}"(ptr %secret) #11, !srcloc !95
  %mk_refcount.i.i = getelementptr inbounds %struct.fscrypt_master_key, ptr %call7.i.i.i.i, i32 0, i32 3
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %mk_refcount.i.i, i32 noundef 4) #11
  %36 = ptrtoint ptr %mk_refcount.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile i32 1, ptr %mk_refcount.i.i, align 4
  %mk_decrypted_inodes.i.i = getelementptr inbounds %struct.fscrypt_master_key, ptr %call7.i.i.i.i, i32 0, i32 4
  %37 = ptrtoint ptr %mk_decrypted_inodes.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %mk_decrypted_inodes.i.i, ptr %mk_decrypted_inodes.i.i, align 8
  %prev.i.i.i = getelementptr inbounds %struct.fscrypt_master_key, ptr %call7.i.i.i.i, i32 0, i32 4, i32 1
  %38 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %mk_decrypted_inodes.i.i, ptr %prev.i.i.i, align 4
  %mk_decrypted_inodes_lock.i.i = getelementptr inbounds %struct.fscrypt_master_key, ptr %call7.i.i.i.i, i32 0, i32 5
  call void @__raw_spin_lock_init(ptr noundef %mk_decrypted_inodes_lock.i.i, ptr noundef nonnull @.str.9, ptr noundef nonnull @add_new_master_key.__key, i16 noundef signext 3) #11
  %39 = ptrtoint ptr %key_spec to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %key_spec, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %40)
  %cmp.i35.i = icmp eq i32 %40, 2
  br i1 %cmp.i35.i, label %if.then3.i.i, label %if.end.i36.i.if.end12.i.i_crit_edge

if.end.i36.i.if.end12.i.i_crit_edge:              ; preds = %if.end.i36.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.i.i

if.then3.i.i:                                     ; preds = %if.end.i36.i
  call void @llvm.lifetime.start.p0(i64 47, ptr nonnull %description.i.i.i) #11
  %41 = call ptr @memset(ptr %description.i.i.i, i32 255, i32 47)
  %u.i.i37.i = getelementptr inbounds %struct.fscrypt_master_key, ptr %call7.i.i.i.i, i32 0, i32 1, i32 2
  %call.i.i.i.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %description.i.i.i, ptr noundef nonnull @.str.10, i32 noundef 16, ptr noundef %u.i.i37.i) #11
  %42 = call i32 @llvm.read_register.i32(metadata !78) #11
  %and.i.i.i38.i = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i.i38.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %task.i.i.i, align 8
  %cred.i.i.i = getelementptr inbounds %struct.task_struct, ptr %45, i32 0, i32 99
  %46 = ptrtoint ptr %cred.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cred.i.i.i, align 16
  %call6.i.i.i = call ptr @keyring_alloc(ptr noundef nonnull %description.i.i.i, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, ptr noundef %47, i32 noundef 134938624, i32 noundef 2, ptr noundef null, ptr noundef null) #11
  %cmp.i.i.i39.i = icmp ugt ptr %call6.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i39.i, label %allocate_master_key_users_keyring.exit.i.i, label %allocate_master_key_users_keyring.exit.thread.i.i

allocate_master_key_users_keyring.exit.thread.i.i: ; preds = %if.then3.i.i
  %mk_users.i.i.i = getelementptr inbounds %struct.fscrypt_master_key, ptr %call7.i.i.i.i, i32 0, i32 2
  %48 = ptrtoint ptr %mk_users.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call6.i.i.i, ptr %mk_users.i.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 47, ptr nonnull %description.i.i.i) #11
  %call8.i.i = call fastcc i32 @add_master_key_user(ptr noundef nonnull %call7.i.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %tobool9.not.i.i = icmp eq i32 %call8.i.i, 0
  br i1 %tobool9.not.i.i, label %allocate_master_key_users_keyring.exit.thread.i.i.if.end12.i.i_crit_edge, label %allocate_master_key_users_keyring.exit.thread.i.i.out_free_mk.i.i_crit_edge

allocate_master_key_users_keyring.exit.thread.i.i.out_free_mk.i.i_crit_edge: ; preds = %allocate_master_key_users_keyring.exit.thread.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_free_mk.i.i

allocate_master_key_users_keyring.exit.thread.i.i.if.end12.i.i_crit_edge: ; preds = %allocate_master_key_users_keyring.exit.thread.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.i.i

allocate_master_key_users_keyring.exit.i.i:       ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %49 = ptrtoint ptr %call6.i.i.i to i32
  call void @llvm.lifetime.end.p0(i64 47, ptr nonnull %description.i.i.i) #11
  br label %out_free_mk.i.i

if.end12.i.i:                                     ; preds = %allocate_master_key_users_keyring.exit.thread.i.i.if.end12.i.i_crit_edge, %if.end.i36.i.if.end12.i.i_crit_edge
  %50 = ptrtoint ptr %key_spec to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %key_spec, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %51)
  %switch.selectcmp.i.i.i40.i = icmp eq i32 %51, 2
  %switch.select.i.i.i41.i = select i1 %switch.selectcmp.i.i.i40.i, i32 16, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %51)
  %switch.selectcmp2.i.i.i42.i = icmp eq i32 %51, 1
  %switch.select3.i.i.i43.i = select i1 %switch.selectcmp2.i.i.i42.i, i32 8, i32 %switch.select.i.i.i41.i
  %u.i51.i.i = getelementptr inbounds %struct.fscrypt_key_specifier, ptr %key_spec, i32 0, i32 2
  %call1.i.i44.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %description.i33.i, ptr noundef nonnull @.str, i32 noundef %switch.select3.i.i.i43.i, ptr noundef %u.i51.i.i) #11
  %52 = call i32 @llvm.read_register.i32(metadata !78) #11
  %and.i.i45.i = and i32 %52, -16384
  %53 = inttoptr i32 %and.i.i45.i to ptr
  %task.i46.i = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %task.i46.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %task.i46.i, align 8
  %cred.i47.i = getelementptr inbounds %struct.task_struct, ptr %55, i32 0, i32 99
  %56 = ptrtoint ptr %cred.i47.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %cred.i47.i, align 16
  %call21.i.i = call ptr @key_alloc(ptr noundef nonnull @key_type_fscrypt, ptr noundef nonnull %description.i33.i, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, ptr noundef %57, i32 noundef 134807552, i32 noundef 2, ptr noundef null) #11
  %cmp.i.i48.i = icmp ugt ptr %call21.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i48.i, label %if.then23.i.i, label %if.end25.i.i

if.then23.i.i:                                    ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %58 = ptrtoint ptr %call21.i.i to i32
  br label %out_free_mk.i.i

if.end25.i.i:                                     ; preds = %if.end12.i.i
  %call26.i.i = call i32 @key_instantiate_and_link(ptr noundef %call21.i.i, ptr noundef nonnull %call7.i.i.i.i, i32 noundef 440, ptr noundef %29, ptr noundef null) #11
  call void @key_put(ptr noundef %call21.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i.i)
  %tobool27.not.i.i = icmp eq i32 %call26.i.i, 0
  br i1 %tobool27.not.i.i, label %if.end25.i.i.add_new_master_key.exit.i_crit_edge, label %if.end25.i.i.out_free_mk.i.i_crit_edge

if.end25.i.i.out_free_mk.i.i_crit_edge:           ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_free_mk.i.i

if.end25.i.i.add_new_master_key.exit.i_crit_edge: ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %add_new_master_key.exit.i

out_free_mk.i.i:                                  ; preds = %if.end25.i.i.out_free_mk.i.i_crit_edge, %if.then23.i.i, %allocate_master_key_users_keyring.exit.i.i, %allocate_master_key_users_keyring.exit.thread.i.i.out_free_mk.i.i_crit_edge
  %err.0.i.i = phi i32 [ %49, %allocate_master_key_users_keyring.exit.i.i ], [ %call8.i.i, %allocate_master_key_users_keyring.exit.thread.i.i.out_free_mk.i.i_crit_edge ], [ %58, %if.then23.i.i ], [ %call26.i.i, %if.end25.i.i.out_free_mk.i.i_crit_edge ]
  call fastcc void @free_master_key(ptr noundef nonnull %call7.i.i.i.i) #11
  br label %add_new_master_key.exit.i

add_new_master_key.exit.i:                        ; preds = %out_free_mk.i.i, %if.end25.i.i.add_new_master_key.exit.i_crit_edge, %allocate_filesystem_keyring.exit.thread.i.add_new_master_key.exit.i_crit_edge
  %retval.0.i49.i = phi i32 [ %err.0.i.i, %out_free_mk.i.i ], [ -12, %allocate_filesystem_keyring.exit.thread.i.add_new_master_key.exit.i_crit_edge ], [ 0, %if.end25.i.i.add_new_master_key.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %description.i33.i) #11
  br label %do_add_master_key.exit

if.else.i:                                        ; preds = %fscrypt_find_master_key.exit.i
  %sem.i = getelementptr inbounds %struct.key, ptr %retval.0.i.i, i32 0, i32 4
  call void @down_write(ptr noundef %sem.i) #11
  %59 = getelementptr inbounds %struct.key, ptr %retval.0.i.i, i32 0, i32 17
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 4
  %mk_users.i.i = getelementptr inbounds %struct.fscrypt_master_key, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %mk_users.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %mk_users.i.i, align 8
  %tobool.not.i51.i = icmp eq ptr %63, null
  br i1 %tobool.not.i51.i, label %if.else.i.if.end7.i.i_crit_edge, label %if.then.i.i

if.else.i.if.end7.i.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.i.i

if.then.i.i:                                      ; preds = %if.else.i
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %description.i.i50.i) #11
  %64 = call ptr @memset(ptr %description.i.i50.i, i32 255, i32 48)
  %u.i.i52.i = getelementptr inbounds %struct.fscrypt_master_key, ptr %61, i32 0, i32 1, i32 2
  %65 = call i32 @llvm.read_register.i32(metadata !78) #11
  %and.i.i.i.i.i = and i32 %65, -16384
  %66 = inttoptr i32 %and.i.i.i.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %task.i.i.i.i, align 8
  %cred.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %68, i32 0, i32 99
  %69 = ptrtoint ptr %cred.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %cred.i.i.i.i, align 16
  %fsuid.i.i.i.i = getelementptr inbounds %struct.cred, ptr %70, i32 0, i32 10
  %71 = ptrtoint ptr %fsuid.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %agg.tmp.sroa.0.0.copyload.i.i.i.i = load i32, ptr %fsuid.i.i.i.i, align 4
  %call2.i.i.i.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %description.i.i50.i, ptr noundef nonnull @.str.13, i32 noundef 16, ptr noundef %u.i.i52.i, i32 noundef %agg.tmp.sroa.0.0.copyload.i.i.i.i) #11
  %72 = ptrtoint ptr %mk_users.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %mk_users.i.i, align 8
  %74 = ptrtoint ptr %73 to i32
  %or.i.i.i.i.i = or i32 %74, 1
  %75 = inttoptr i32 %or.i.i.i.i.i to ptr
  %call1.i.i.i.i = call ptr @keyring_search(ptr noundef nonnull %75, ptr noundef nonnull @key_type_fscrypt_user, ptr noundef nonnull %description.i.i50.i, i1 noundef zeroext false) #11
  %cmp.i.i.i.i.i = icmp ugt ptr %call1.i.i.i.i, inttoptr (i32 -4096 to ptr)
  %magicptr.i.i.i.i = ptrtoint ptr %call1.i.i.i.i to i32
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i, label %if.end9.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.then.i.i
  %76 = zext i32 %magicptr.i.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %76, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %magicptr.i.i.i.i, label %if.then.i.i.i.i.find_master_key_user.exit.i.i_crit_edge [
    i32 -11, label %if.then.i.i.i.i.find_master_key_user.exit.thread.i.i_crit_edge
    i32 -128, label %if.then.i.i.i.i.find_master_key_user.exit.thread.i.i_crit_edge91
  ]

if.then.i.i.i.i.find_master_key_user.exit.thread.i.i_crit_edge91: ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %find_master_key_user.exit.thread.i.i

if.then.i.i.i.i.find_master_key_user.exit.thread.i.i_crit_edge: ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %find_master_key_user.exit.thread.i.i

if.then.i.i.i.i.find_master_key_user.exit.i.i_crit_edge: ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %find_master_key_user.exit.i.i

find_master_key_user.exit.thread.i.i:             ; preds = %if.then.i.i.i.i.find_master_key_user.exit.thread.i.i_crit_edge, %if.then.i.i.i.i.find_master_key_user.exit.thread.i.i_crit_edge91
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %description.i.i50.i) #11
  br label %if.end7.i.i

if.end9.i.i.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %and.i.i4.i.i.i = and i32 %magicptr.i.i.i.i, -2
  %77 = inttoptr i32 %and.i.i4.i.i.i to ptr
  br label %find_master_key_user.exit.i.i

find_master_key_user.exit.i.i:                    ; preds = %if.end9.i.i.i.i, %if.then.i.i.i.i.find_master_key_user.exit.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %77, %if.end9.i.i.i.i ], [ %call1.i.i.i.i, %if.then.i.i.i.i.find_master_key_user.exit.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %description.i.i50.i) #11
  %cmp.not.i.i = icmp eq ptr %retval.0.i.i.i.i, inttoptr (i32 -126 to ptr)
  br i1 %cmp.not.i.i, label %find_master_key_user.exit.i.i.if.end7.i.i_crit_edge, label %if.then2.i.i

find_master_key_user.exit.i.i.if.end7.i.i_crit_edge: ; preds = %find_master_key_user.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.i.i

if.then2.i.i:                                     ; preds = %find_master_key_user.exit.i.i
  %cmp.i.i53.i = icmp ugt ptr %retval.0.i.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i53.i, label %if.then4.i.i, label %if.end.i54.i

if.then4.i.i:                                     ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %78 = ptrtoint ptr %retval.0.i.i.i.i to i32
  br label %add_existing_master_key.exit.i

if.end.i54.i:                                     ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @key_put(ptr noundef %retval.0.i.i.i.i) #11
  br label %add_existing_master_key.exit.thread.i

if.end7.i.i:                                      ; preds = %find_master_key_user.exit.i.i.if.end7.i.i_crit_edge, %find_master_key_user.exit.thread.i.i, %if.else.i.if.end7.i.i_crit_edge
  %size.i.i.i = getelementptr inbounds %struct.fscrypt_master_key_secret, ptr %61, i32 0, i32 1
  %79 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %size.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %cmp.i46.not.i.i = icmp eq i32 %80, 0
  br i1 %cmp.i46.not.i.i, label %land.lhs.true.i.i, label %if.end7.i.i.if.end12.i56.i_crit_edge

if.end7.i.i.if.end12.i56.i_crit_edge:             ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.i56.i

land.lhs.true.i.i:                                ; preds = %if.end7.i.i
  %mk_refcount.i55.i = getelementptr inbounds %struct.fscrypt_master_key, ptr %61, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #11
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %mk_refcount.i55.i, i32 noundef 4) #11
  %81 = ptrtoint ptr %mk_refcount.i55.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %mk_refcount.i55.i, align 4
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %land.lhs.true.i.i
  %83 = phi i32 [ %82, %land.lhs.true.i.i ], [ %asmresult3.i.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge ]
  %84 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %old.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool.not.i.i.i.i.i = icmp eq i32 %83, 0
  br i1 %tobool.not.i.i.i.i.i, label %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %do.cond.i.i.i.i.i

do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.i.i.i.i

do.cond.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i
  %add.i.i.i.i.i = add i32 %83, 1
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %mk_refcount.i55.i, i32 noundef 4) #11
  %call.i3.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i.i, i32 noundef 4) #11
  %85 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %old.i.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %mk_refcount.i55.i, i32 1, i32 3, i32 1) #11
  br label %do.body.i.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i.i:                          ; preds = %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i.i
  %87 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %mk_refcount.i55.i, ptr %mk_refcount.i55.i, i32 %86, i32 %add.i.i.i.i.i, ptr elementtype(i32) %mk_refcount.i55.i) #11, !srcloc !97
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %87, 0
  %tobool.not.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i:   ; preds = %do.body.i.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %87, 1
  %cmp.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i.i, %86
  br i1 %cmp.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, !prof !90

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.i.i.i.i

if.end4.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge
  %88 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %old.i.i.i.i.i, align 4
  %add5.i.i.i.i.i = add i32 %89, 1
  %90 = or i32 %add5.i.i.i.i.i, %89
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %90)
  %.not.i.i.i.i.i = icmp sgt i32 %90, -1
  br i1 %.not.i.i.i.i.i, label %if.end4.i.i.i.i.i.refcount_inc_not_zero.exit.i.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !90

if.end4.i.i.i.i.i.refcount_inc_not_zero.exit.i.i_crit_edge: ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %refcount_inc_not_zero.exit.i.i

if.then10.i.i.i.i.i:                              ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %mk_refcount.i55.i, i32 noundef 0) #11
  %91 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %.pr.i.i = load i32, ptr %old.i.i.i.i.i, align 4
  br label %refcount_inc_not_zero.exit.i.i

refcount_inc_not_zero.exit.i.i:                   ; preds = %if.then10.i.i.i.i.i, %if.end4.i.i.i.i.i.refcount_inc_not_zero.exit.i.i_crit_edge
  %92 = phi i32 [ %89, %if.end4.i.i.i.i.i.refcount_inc_not_zero.exit.i.i_crit_edge ], [ %.pr.i.i, %if.then10.i.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool12.i.i.i.not.i.i = icmp eq i32 %92, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #11
  br i1 %tobool12.i.i.i.not.i.i, label %refcount_inc_not_zero.exit.i.i.add_existing_master_key.exit.thread67.i_crit_edge, label %refcount_inc_not_zero.exit.i.i.if.end12.i56.i_crit_edge

refcount_inc_not_zero.exit.i.i.if.end12.i56.i_crit_edge: ; preds = %refcount_inc_not_zero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.i56.i

refcount_inc_not_zero.exit.i.i.add_existing_master_key.exit.thread67.i_crit_edge: ; preds = %refcount_inc_not_zero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %add_existing_master_key.exit.thread67.i

if.end12.i56.i:                                   ; preds = %refcount_inc_not_zero.exit.i.i.if.end12.i56.i_crit_edge, %if.end7.i.i.if.end12.i56.i_crit_edge
  %93 = ptrtoint ptr %mk_users.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %mk_users.i.i, align 8
  %tobool14.not.i.i = icmp eq ptr %94, null
  br i1 %tobool14.not.i.i, label %if.end12.i56.i.if.end26.i.i_crit_edge, label %if.then15.i.i

if.end12.i56.i.if.end26.i.i_crit_edge:            ; preds = %if.end12.i56.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26.i.i

if.then15.i.i:                                    ; preds = %if.end12.i56.i
  %call16.i.i = call fastcc i32 @add_master_key_user(ptr noundef %61) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.i)
  %tobool17.not.i.i = icmp eq i32 %call16.i.i, 0
  br i1 %tobool17.not.i.i, label %if.then15.i.i.if.end26.i.i_crit_edge, label %if.then18.i.i

if.then15.i.i.if.end26.i.i_crit_edge:             ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26.i.i

if.then18.i.i:                                    ; preds = %if.then15.i.i
  br i1 %cmp.i46.not.i.i, label %land.lhs.true20.i.i, label %if.then18.i.i.add_existing_master_key.exit.i_crit_edge

if.then18.i.i.add_existing_master_key.exit.i_crit_edge: ; preds = %if.then18.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %add_existing_master_key.exit.i

land.lhs.true20.i.i:                              ; preds = %if.then18.i.i
  %mk_refcount21.i.i = getelementptr inbounds %struct.fscrypt_master_key, ptr %61, i32 0, i32 3
  %call.i.i.i.i.i47.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %mk_refcount21.i.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !98
  call void @llvm.prefetch.p0(ptr %mk_refcount21.i.i, i32 1, i32 3, i32 1) #11
  %95 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %mk_refcount21.i.i, ptr %mk_refcount21.i.i, i32 1, ptr elementtype(i32) %mk_refcount21.i.i) #11, !srcloc !99
  %asmresult.i.i.i.i.i.i48.i.i = extractvalue { i32, i32, i32 } %95, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i48.i.i)
  %cmp.i.i.i49.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i48.i.i, 1
  br i1 %cmp.i.i.i49.i.i, label %refcount_dec_and_test.exit.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %land.lhs.true20.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i48.i.i)
  %.not.i.i.i50.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i48.i.i, 0
  br i1 %.not.i.i.i50.i.i, label %if.end5.i.i.i.i.i.add_existing_master_key.exit.i_crit_edge, label %if.then10.i.i.i51.i.i, !prof !90

if.end5.i.i.i.i.i.add_existing_master_key.exit.i_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %add_existing_master_key.exit.i

if.then10.i.i.i51.i.i:                            ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %mk_refcount21.i.i, i32 noundef 3) #11
  br label %add_existing_master_key.exit.i

refcount_dec_and_test.exit.i.i:                   ; preds = %land.lhs.true20.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !100
  br label %add_existing_master_key.exit.thread67.i

if.end26.i.i:                                     ; preds = %if.then15.i.i.if.end26.i.i_crit_edge, %if.end12.i56.i.if.end26.i.i_crit_edge
  br i1 %cmp.i46.not.i.i, label %if.then28.i.i, label %if.end26.i.i.add_existing_master_key.exit.thread.i_crit_edge

if.end26.i.i.add_existing_master_key.exit.thread.i_crit_edge: ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %add_existing_master_key.exit.thread.i

if.then28.i.i:                                    ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %96 = call ptr @memcpy(ptr %61, ptr %secret, i32 72)
  %97 = call ptr @memset(ptr %secret, i32 0, i32 72)
  call void asm sideeffect "", "r,~{memory}"(ptr %secret) #11, !srcloc !95
  br label %add_existing_master_key.exit.thread.i

add_existing_master_key.exit.thread.i:            ; preds = %if.then28.i.i, %if.end26.i.i.add_existing_master_key.exit.thread.i_crit_edge, %if.end.i54.i
  call void @up_write(ptr noundef %sem.i) #11
  br label %if.end12.i

add_existing_master_key.exit.thread67.i:          ; preds = %refcount_dec_and_test.exit.i.i, %refcount_inc_not_zero.exit.i.i.add_existing_master_key.exit.thread67.i_crit_edge
  call void @up_write(ptr noundef %sem.i) #11
  br label %if.then11.i

add_existing_master_key.exit.i:                   ; preds = %if.then10.i.i.i51.i.i, %if.end5.i.i.i.i.i.add_existing_master_key.exit.i_crit_edge, %if.then18.i.i.add_existing_master_key.exit.i_crit_edge, %if.then4.i.i
  %retval.0.i57.i = phi i32 [ %78, %if.then4.i.i ], [ %call16.i.i, %if.then18.i.i.add_existing_master_key.exit.i_crit_edge ], [ %call16.i.i, %if.end5.i.i.i.i.i.add_existing_master_key.exit.i_crit_edge ], [ %call16.i.i, %if.then10.i.i.i51.i.i ]
  call void @up_write(ptr noundef %sem.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %retval.0.i57.i)
  %cmp10.i = icmp eq i32 %retval.0.i57.i, 1
  br i1 %cmp10.i, label %add_existing_master_key.exit.i.if.then11.i_crit_edge, label %add_existing_master_key.exit.i.if.end12.i_crit_edge

add_existing_master_key.exit.i.if.end12.i_crit_edge: ; preds = %add_existing_master_key.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.i

add_existing_master_key.exit.i.if.then11.i_crit_edge: ; preds = %add_existing_master_key.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i

if.then11.i:                                      ; preds = %add_existing_master_key.exit.i.if.then11.i_crit_edge, %add_existing_master_key.exit.thread67.i
  call void @key_invalidate(ptr noundef %retval.0.i.i) #11
  call void @key_put(ptr noundef %retval.0.i.i) #11
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %description.i.i) #11
  %98 = call ptr @memset(ptr %description.i.i, i32 255, i32 33)
  %99 = ptrtoint ptr %s_master_keys.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile ptr, ptr %s_master_keys.i.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !88
  %cmp.i.i = icmp eq ptr %100, null
  br i1 %cmp.i.i, label %if.then11.i.if.then.thread.i_crit_edge, label %if.then11.i.if.end.i.i_crit_edge

if.then11.i.if.end.i.i_crit_edge:                 ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then11.i.if.then.thread.i_crit_edge:           ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.thread.i

if.end12.i:                                       ; preds = %add_existing_master_key.exit.i.if.end12.i_crit_edge, %add_existing_master_key.exit.thread.i
  %retval.0.i5765.i = phi i32 [ 0, %add_existing_master_key.exit.thread.i ], [ %retval.0.i57.i, %add_existing_master_key.exit.i.if.end12.i_crit_edge ]
  call void @key_put(ptr noundef %retval.0.i.i) #11
  br label %do_add_master_key.exit

do_add_master_key.exit:                           ; preds = %if.end12.i, %add_new_master_key.exit.i, %allocate_filesystem_keyring.exit.i, %if.then.i.do_add_master_key.exit_crit_edge
  %err.0.i = phi i32 [ %17, %if.then.i.do_add_master_key.exit_crit_edge ], [ %32, %allocate_filesystem_keyring.exit.i ], [ %retval.0.i49.i, %add_new_master_key.exit.i ], [ %retval.0.i5765.i, %if.end12.i ]
  call void @mutex_unlock(ptr noundef nonnull @do_add_master_key.fscrypt_add_key_mutex) #11
  br label %cleanup

cleanup:                                          ; preds = %do_add_master_key.exit, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0.i, %do_add_master_key.exit ], [ %call, %if.then.cleanup_crit_edge ], [ %call7, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fscrypt_add_test_dummy_key(ptr noundef %sb, ptr noundef %key_spec) local_unnamed_addr #0 align 64 {
entry:
  %secret = alloca %struct.fscrypt_master_key_secret, align 4
  %___flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %secret) #11
  callbr void asm sideeffect "1:\0A\09b ${1:l}\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @fscrypt_add_test_dummy_key.___once_key, ptr blockaddress(@fscrypt_add_test_dummy_key, %if.then)) #11
          to label %if.end13 [label %if.then], !srcloc !101

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %___flags) #11
  %0 = ptrtoint ptr %___flags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %___flags, align 4, !annotation !102
  %call3 = call zeroext i1 @__do_once_start(ptr noundef nonnull @fscrypt_add_test_dummy_key.___done, ptr noundef nonnull %___flags) #11
  br i1 %call3, label %if.then12, label %if.then.if.end_crit_edge, !prof !103

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then12:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  call void @get_random_bytes(ptr noundef nonnull @fscrypt_add_test_dummy_key.test_key, i32 noundef 64) #11
  call void @__do_once_done(ptr noundef nonnull @fscrypt_add_test_dummy_key.___done, ptr noundef nonnull @fscrypt_add_test_dummy_key.___once_key, ptr noundef nonnull %___flags, ptr noundef null) #11
  br label %if.end

if.end:                                           ; preds = %if.then12, %if.then.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %___flags) #11
  br label %if.end13

if.end13:                                         ; preds = %if.end, %entry
  %1 = ptrtoint ptr %secret to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %secret, align 4
  %size = getelementptr inbounds %struct.fscrypt_master_key_secret, ptr %secret, i32 0, i32 1
  %2 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 64, ptr %size, align 4
  %raw = getelementptr inbounds %struct.fscrypt_master_key_secret, ptr %secret, i32 0, i32 2
  %3 = call ptr @memcpy(ptr %raw, ptr @fscrypt_add_test_dummy_key.test_key, i32 64)
  %call18 = call fastcc i32 @add_master_key(ptr noundef %sb, ptr noundef nonnull %secret, ptr noundef %key_spec)
  call void @fscrypt_destroy_hkdf(ptr noundef nonnull %secret) #11
  %4 = call ptr @memset(ptr %secret, i32 0, i32 72)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %secret) #11, !srcloc !95
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %secret) #11
  ret i32 %call18
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__do_once_start(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__do_once_done(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fscrypt_verify_key_added(ptr noundef %sb, ptr nocapture noundef readonly %identifier) local_unnamed_addr #0 align 64 {
entry:
  %description.i18 = alloca [48 x i8], align 1
  %description.i = alloca [33 x i8], align 1
  %mk_spec = alloca %struct.fscrypt_key_specifier, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %mk_spec) #11
  %0 = getelementptr inbounds i8, ptr %mk_spec, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 36)
  %2 = ptrtoint ptr %mk_spec to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %mk_spec, align 4
  %u = getelementptr inbounds %struct.fscrypt_key_specifier, ptr %mk_spec, i32 0, i32 2
  %3 = call ptr @memcpy(ptr %u, ptr %identifier, i32 16)
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %description.i) #11
  %4 = call ptr @memset(ptr %description.i, i32 255, i32 33)
  %s_master_keys.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 20
  %5 = ptrtoint ptr %s_master_keys.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %s_master_keys.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !88
  %cmp.i = icmp eq ptr %6, null
  br i1 %cmp.i, label %entry.fscrypt_find_master_key.exit.thread_crit_edge, label %if.end.i

entry.fscrypt_find_master_key.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %fscrypt_find_master_key.exit.thread

if.end.i:                                         ; preds = %entry
  %7 = ptrtoint ptr %mk_spec to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mk_spec, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %switch.selectcmp.i.i.i = icmp eq i32 %8, 2
  %switch.select.i.i.i = select i1 %switch.selectcmp.i.i.i, i32 16, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %switch.selectcmp2.i.i.i = icmp eq i32 %8, 1
  %switch.select3.i.i.i = select i1 %switch.selectcmp2.i.i.i, i32 8, i32 %switch.select.i.i.i
  %call1.i.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %description.i, ptr noundef nonnull @.str, i32 noundef %switch.select3.i.i.i, ptr noundef %u) #11
  %9 = ptrtoint ptr %6 to i32
  %or.i.i.i = or i32 %9, 1
  %10 = inttoptr i32 %or.i.i.i to ptr
  %call1.i9.i = call ptr @keyring_search(ptr noundef nonnull %10, ptr noundef nonnull @key_type_fscrypt, ptr noundef nonnull %description.i, i1 noundef zeroext false) #11
  %cmp.i.i.i = icmp ugt ptr %call1.i9.i, inttoptr (i32 -4096 to ptr)
  %magicptr.i.i = ptrtoint ptr %call1.i9.i to i32
  br i1 %cmp.i.i.i, label %if.then.i.i, label %if.end9.i.i

if.then.i.i:                                      ; preds = %if.end.i
  %11 = zext i32 %magicptr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %magicptr.i.i, label %if.then.i.i.fscrypt_find_master_key.exit_crit_edge [
    i32 -11, label %if.then.i.i.fscrypt_find_master_key.exit.thread_crit_edge
    i32 -128, label %if.then.i.i.fscrypt_find_master_key.exit.thread_crit_edge34
  ]

if.then.i.i.fscrypt_find_master_key.exit.thread_crit_edge34: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fscrypt_find_master_key.exit.thread

if.then.i.i.fscrypt_find_master_key.exit.thread_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fscrypt_find_master_key.exit.thread

if.then.i.i.fscrypt_find_master_key.exit_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fscrypt_find_master_key.exit

if.end9.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %and.i.i.i = and i32 %magicptr.i.i, -2
  %12 = inttoptr i32 %and.i.i.i to ptr
  br label %fscrypt_find_master_key.exit

fscrypt_find_master_key.exit.thread:              ; preds = %if.then.i.i.fscrypt_find_master_key.exit.thread_crit_edge, %if.then.i.i.fscrypt_find_master_key.exit.thread_crit_edge34, %entry.fscrypt_find_master_key.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %description.i) #11
  br label %if.then

fscrypt_find_master_key.exit:                     ; preds = %if.end9.i.i, %if.then.i.i.fscrypt_find_master_key.exit_crit_edge
  %retval.0.i = phi ptr [ %12, %if.end9.i.i ], [ %call1.i9.i, %if.then.i.i.fscrypt_find_master_key.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %description.i) #11
  %cmp.i17 = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i17, label %fscrypt_find_master_key.exit.if.then_crit_edge, label %if.end

fscrypt_find_master_key.exit.if.then_crit_edge:   ; preds = %fscrypt_find_master_key.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %fscrypt_find_master_key.exit.if.then_crit_edge, %fscrypt_find_master_key.exit.thread
  %retval.0.i30 = phi ptr [ inttoptr (i32 -126 to ptr), %fscrypt_find_master_key.exit.thread ], [ %retval.0.i, %fscrypt_find_master_key.exit.if.then_crit_edge ]
  %13 = ptrtoint ptr %retval.0.i30 to i32
  br label %out

if.end:                                           ; preds = %fscrypt_find_master_key.exit
  %14 = getelementptr inbounds %struct.key, ptr %retval.0.i, i32 0, i32 17
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %description.i18) #11
  %17 = call ptr @memset(ptr %description.i18, i32 255, i32 48)
  %u.i = getelementptr inbounds %struct.fscrypt_master_key, ptr %16, i32 0, i32 1, i32 2
  %18 = call i32 @llvm.read_register.i32(metadata !78) #11
  %and.i.i.i19 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i19 to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task.i.i, align 8
  %cred.i.i = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 99
  %22 = ptrtoint ptr %cred.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cred.i.i, align 16
  %fsuid.i.i = getelementptr inbounds %struct.cred, ptr %23, i32 0, i32 10
  %24 = ptrtoint ptr %fsuid.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %agg.tmp.sroa.0.0.copyload.i.i = load i32, ptr %fsuid.i.i, align 4
  %call2.i.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %description.i18, ptr noundef nonnull @.str.13, i32 noundef 16, ptr noundef %u.i, i32 noundef %agg.tmp.sroa.0.0.copyload.i.i) #11
  %mk_users.i = getelementptr inbounds %struct.fscrypt_master_key, ptr %16, i32 0, i32 2
  %25 = ptrtoint ptr %mk_users.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mk_users.i, align 8
  %27 = ptrtoint ptr %26 to i32
  %or.i.i.i20 = or i32 %27, 1
  %28 = inttoptr i32 %or.i.i.i20 to ptr
  %call1.i.i21 = call ptr @keyring_search(ptr noundef nonnull %28, ptr noundef nonnull @key_type_fscrypt_user, ptr noundef nonnull %description.i18, i1 noundef zeroext false) #11
  %cmp.i.i.i22 = icmp ugt ptr %call1.i.i21, inttoptr (i32 -4096 to ptr)
  %magicptr.i.i23 = ptrtoint ptr %call1.i.i21 to i32
  br i1 %cmp.i.i.i22, label %if.then.i.i24, label %if.end9.i.i26

if.then.i.i24:                                    ; preds = %if.end
  %29 = zext i32 %magicptr.i.i23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %magicptr.i.i23, label %if.then.i.i24.find_master_key_user.exit_crit_edge [
    i32 -11, label %if.then.i.i24.find_master_key_user.exit.thread_crit_edge
    i32 -128, label %if.then.i.i24.find_master_key_user.exit.thread_crit_edge35
  ]

if.then.i.i24.find_master_key_user.exit.thread_crit_edge35: ; preds = %if.then.i.i24
  call void @__sanitizer_cov_trace_pc() #13
  br label %find_master_key_user.exit.thread

if.then.i.i24.find_master_key_user.exit.thread_crit_edge: ; preds = %if.then.i.i24
  call void @__sanitizer_cov_trace_pc() #13
  br label %find_master_key_user.exit.thread

if.then.i.i24.find_master_key_user.exit_crit_edge: ; preds = %if.then.i.i24
  call void @__sanitizer_cov_trace_pc() #13
  br label %find_master_key_user.exit

find_master_key_user.exit.thread:                 ; preds = %if.then.i.i24.find_master_key_user.exit.thread_crit_edge, %if.then.i.i24.find_master_key_user.exit.thread_crit_edge35
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %description.i18) #11
  br label %if.then5

if.end9.i.i26:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %and.i.i4.i = and i32 %magicptr.i.i23, -2
  %30 = inttoptr i32 %and.i.i4.i to ptr
  br label %find_master_key_user.exit

find_master_key_user.exit:                        ; preds = %if.end9.i.i26, %if.then.i.i24.find_master_key_user.exit_crit_edge
  %retval.0.i.i = phi ptr [ %30, %if.end9.i.i26 ], [ %call1.i.i21, %if.then.i.i24.find_master_key_user.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %description.i18) #11
  %cmp.i27 = icmp ugt ptr %retval.0.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i27, label %find_master_key_user.exit.if.then5_crit_edge, label %if.else

find_master_key_user.exit.if.then5_crit_edge:     ; preds = %find_master_key_user.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then5

if.then5:                                         ; preds = %find_master_key_user.exit.if.then5_crit_edge, %find_master_key_user.exit.thread
  %retval.0.i.i33 = phi ptr [ inttoptr (i32 -126 to ptr), %find_master_key_user.exit.thread ], [ %retval.0.i.i, %find_master_key_user.exit.if.then5_crit_edge ]
  %31 = ptrtoint ptr %retval.0.i.i33 to i32
  br label %if.end7

if.else:                                          ; preds = %find_master_key_user.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void @key_put(ptr noundef %retval.0.i.i) #11
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then5
  %err.0 = phi i32 [ %31, %if.then5 ], [ 0, %if.else ]
  call void @key_put(ptr noundef %retval.0.i) #11
  br label %out

out:                                              ; preds = %if.end7, %if.then
  %err.1 = phi i32 [ %13, %if.then ], [ %err.0, %if.end7 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -126, i32 %err.1)
  %cmp = icmp eq i32 %err.1, -126
  br i1 %cmp, label %land.lhs.true, label %out.if.end10_crit_edge

out.if.end10_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

land.lhs.true:                                    ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  %call8 = call zeroext i1 @capable(i32 noundef 3) #11
  %spec.select = select i1 %call8, i32 0, i32 -126
  br label %if.end10

if.end10:                                         ; preds = %land.lhs.true, %out.if.end10_crit_edge
  %err.2 = phi i32 [ %err.1, %out.if.end10_crit_edge ], [ %spec.select, %land.lhs.true ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %mk_spec) #11
  ret i32 %err.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @find_master_key_user(ptr noundef %mk) unnamed_addr #0 align 64 {
entry:
  %description = alloca [48 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %description) #11
  %0 = call ptr @memset(ptr %description, i32 255, i32 48)
  %u = getelementptr inbounds %struct.fscrypt_master_key, ptr %mk, i32 0, i32 1, i32 2
  %1 = tail call i32 @llvm.read_register.i32(metadata !78) #11
  %and.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 99
  %5 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cred.i, align 16
  %fsuid.i = getelementptr inbounds %struct.cred, ptr %6, i32 0, i32 10
  %7 = ptrtoint ptr %fsuid.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %agg.tmp.sroa.0.0.copyload.i = load i32, ptr %fsuid.i, align 4
  %call2.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %description, ptr noundef nonnull @.str.13, i32 noundef 16, ptr noundef %u, i32 noundef %agg.tmp.sroa.0.0.copyload.i) #11
  %mk_users = getelementptr inbounds %struct.fscrypt_master_key, ptr %mk, i32 0, i32 2
  %8 = ptrtoint ptr %mk_users to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mk_users, align 8
  %10 = ptrtoint ptr %9 to i32
  %or.i.i = or i32 %10, 1
  %11 = inttoptr i32 %or.i.i to ptr
  %call1.i = call ptr @keyring_search(ptr noundef nonnull %11, ptr noundef nonnull @key_type_fscrypt_user, ptr noundef nonnull %description, i1 noundef zeroext false) #11
  %cmp.i.i = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  %magicptr.i = ptrtoint ptr %call1.i to i32
  br i1 %cmp.i.i, label %if.then.i, label %if.end9.i

if.then.i:                                        ; preds = %entry
  %12 = zext i32 %magicptr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %magicptr.i, label %if.then.i.search_fscrypt_keyring.exit_crit_edge [
    i32 -11, label %if.then.i.if.then6.i_crit_edge
    i32 -128, label %if.then.i.if.then6.i_crit_edge5
  ]

if.then.i.if.then6.i_crit_edge5:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then6.i

if.then.i.if.then6.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then6.i

if.then.i.search_fscrypt_keyring.exit_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %search_fscrypt_keyring.exit

if.then6.i:                                       ; preds = %if.then.i.if.then6.i_crit_edge, %if.then.i.if.then6.i_crit_edge5
  br label %search_fscrypt_keyring.exit

if.end9.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %and.i.i4 = and i32 %magicptr.i, -2
  %13 = inttoptr i32 %and.i.i4 to ptr
  br label %search_fscrypt_keyring.exit

search_fscrypt_keyring.exit:                      ; preds = %if.end9.i, %if.then6.i, %if.then.i.search_fscrypt_keyring.exit_crit_edge
  %retval.0.i = phi ptr [ %13, %if.end9.i ], [ inttoptr (i32 -126 to ptr), %if.then6.i ], [ %call1.i, %if.then.i.search_fscrypt_keyring.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %description) #11
  ret ptr %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fscrypt_ioctl_remove_key(ptr nocapture noundef readonly %filp, ptr noundef %uarg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @do_remove_key(ptr noundef %filp, ptr noundef %uarg, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_remove_key(ptr nocapture noundef readonly %filp, ptr noundef %_uarg, i1 noundef zeroext %all_users) unnamed_addr #0 align 64 {
entry:
  %description.i = alloca [33 x i8], align 1
  %arg = alloca %struct.fscrypt_remove_key_arg, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %arg) #11
  %4 = call ptr @memset(ptr %arg, i32 255, i32 64)
  tail call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 156) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %5 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %_uarg, i32 64, i32 -1226833920) #14, !srcloc !89
  %asmresult.i.i = extractvalue { i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !90

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %arg, i32 noundef 64) #11
  %6 = call i32 @llvm.read_register.i32(metadata !78) #11
  %and.i.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !91
  %and.i.i.i.i = and i32 %8, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !92
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !93
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %arg, ptr noundef %_uarg, i32 noundef 64) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #11, !srcloc !92
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !93
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !90

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.0.i.i102 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 64, %entry.if.then11.i.i_crit_edge ], [ 64, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 64, %res.0.i.i102
  %add.ptr.i.i = getelementptr i8, ptr %arg, i32 %sub.i.i
  %9 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i102)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %__reserved.i = getelementptr inbounds %struct.fscrypt_key_specifier, ptr %arg, i32 0, i32 1
  %10 = ptrtoint ptr %__reserved.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %__reserved.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %valid_key_spec.exit, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

valid_key_spec.exit:                              ; preds = %if.end
  %12 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arg, align 4
  %14 = add i32 %13, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %15 = icmp ult i32 %14, 2
  br i1 %15, label %if.end4, label %valid_key_spec.exit.cleanup_crit_edge

valid_key_spec.exit.cleanup_crit_edge:            ; preds = %valid_key_spec.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %valid_key_spec.exit
  %__reserved = getelementptr inbounds %struct.fscrypt_remove_key_arg, ptr %arg, i32 0, i32 2
  %call5 = call ptr @memchr_inv(ptr noundef %__reserved, i32 noundef 0, i32 noundef 20) #11
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %16 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp = icmp eq i32 %17, 1
  br i1 %cmp, label %land.lhs.true, label %if.end8.if.end12_crit_edge

if.end8.if.end12_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

land.lhs.true:                                    ; preds = %if.end8
  %call10 = call zeroext i1 @capable(i32 noundef 21) #11
  br i1 %call10, label %land.lhs.true.if.end12_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.end12:                                         ; preds = %land.lhs.true.if.end12_crit_edge, %if.end8.if.end12_crit_edge
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %description.i) #11
  %18 = call ptr @memset(ptr %description.i, i32 255, i32 33)
  %s_master_keys.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 20
  %19 = ptrtoint ptr %s_master_keys.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %s_master_keys.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !88
  %cmp.i = icmp eq ptr %20, null
  br i1 %cmp.i, label %if.end12.fscrypt_find_master_key.exit.thread_crit_edge, label %if.end.i94

if.end12.fscrypt_find_master_key.exit.thread_crit_edge: ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %fscrypt_find_master_key.exit.thread

if.end.i94:                                       ; preds = %if.end12
  %21 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %switch.selectcmp.i.i.i = icmp eq i32 %22, 2
  %switch.select.i.i.i = select i1 %switch.selectcmp.i.i.i, i32 16, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %switch.selectcmp2.i.i.i = icmp eq i32 %22, 1
  %switch.select3.i.i.i = select i1 %switch.selectcmp2.i.i.i, i32 8, i32 %switch.select.i.i.i
  %u.i.i = getelementptr inbounds %struct.fscrypt_key_specifier, ptr %arg, i32 0, i32 2
  %call1.i.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %description.i, ptr noundef nonnull @.str, i32 noundef %switch.select3.i.i.i, ptr noundef %u.i.i) #11
  %23 = ptrtoint ptr %20 to i32
  %or.i.i.i = or i32 %23, 1
  %24 = inttoptr i32 %or.i.i.i to ptr
  %call1.i9.i = call ptr @keyring_search(ptr noundef nonnull %24, ptr noundef nonnull @key_type_fscrypt, ptr noundef nonnull %description.i, i1 noundef zeroext false) #11
  %cmp.i.i.i = icmp ugt ptr %call1.i9.i, inttoptr (i32 -4096 to ptr)
  %magicptr.i.i = ptrtoint ptr %call1.i9.i to i32
  br i1 %cmp.i.i.i, label %if.then.i.i95, label %if.end9.i.i

if.then.i.i95:                                    ; preds = %if.end.i94
  %25 = zext i32 %magicptr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %magicptr.i.i, label %if.then.i.i95.fscrypt_find_master_key.exit_crit_edge [
    i32 -11, label %if.then.i.i95.fscrypt_find_master_key.exit.thread_crit_edge
    i32 -128, label %if.then.i.i95.fscrypt_find_master_key.exit.thread_crit_edge121
  ]

if.then.i.i95.fscrypt_find_master_key.exit.thread_crit_edge121: ; preds = %if.then.i.i95
  call void @__sanitizer_cov_trace_pc() #13
  br label %fscrypt_find_master_key.exit.thread

if.then.i.i95.fscrypt_find_master_key.exit.thread_crit_edge: ; preds = %if.then.i.i95
  call void @__sanitizer_cov_trace_pc() #13
  br label %fscrypt_find_master_key.exit.thread

if.then.i.i95.fscrypt_find_master_key.exit_crit_edge: ; preds = %if.then.i.i95
  call void @__sanitizer_cov_trace_pc() #13
  br label %fscrypt_find_master_key.exit

if.end9.i.i:                                      ; preds = %if.end.i94
  call void @__sanitizer_cov_trace_pc() #13
  %and.i.i.i96 = and i32 %magicptr.i.i, -2
  %26 = inttoptr i32 %and.i.i.i96 to ptr
  br label %fscrypt_find_master_key.exit

fscrypt_find_master_key.exit.thread:              ; preds = %if.then.i.i95.fscrypt_find_master_key.exit.thread_crit_edge, %if.then.i.i95.fscrypt_find_master_key.exit.thread_crit_edge121, %if.end12.fscrypt_find_master_key.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %description.i) #11
  br label %if.then16

fscrypt_find_master_key.exit:                     ; preds = %if.end9.i.i, %if.then.i.i95.fscrypt_find_master_key.exit_crit_edge
  %retval.0.i97 = phi ptr [ %26, %if.end9.i.i ], [ %call1.i9.i, %if.then.i.i95.fscrypt_find_master_key.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %description.i) #11
  %cmp.i98 = icmp ugt ptr %retval.0.i97, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i98, label %fscrypt_find_master_key.exit.if.then16_crit_edge, label %if.end18

fscrypt_find_master_key.exit.if.then16_crit_edge: ; preds = %fscrypt_find_master_key.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then16

if.then16:                                        ; preds = %fscrypt_find_master_key.exit.if.then16_crit_edge, %fscrypt_find_master_key.exit.thread
  %retval.0.i97110 = phi ptr [ inttoptr (i32 -126 to ptr), %fscrypt_find_master_key.exit.thread ], [ %retval.0.i97, %fscrypt_find_master_key.exit.if.then16_crit_edge ]
  %27 = ptrtoint ptr %retval.0.i97110 to i32
  br label %cleanup

if.end18:                                         ; preds = %fscrypt_find_master_key.exit
  %28 = getelementptr inbounds %struct.key, ptr %retval.0.i97, i32 0, i32 17
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %sem = getelementptr inbounds %struct.key, ptr %retval.0.i97, i32 0, i32 4
  call void @down_write(ptr noundef %sem) #11
  %mk_users = getelementptr inbounds %struct.fscrypt_master_key, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %mk_users to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mk_users, align 8
  %tobool19.not = icmp eq ptr %32, null
  br i1 %tobool19.not, label %if.end18.if.end41_crit_edge, label %land.lhs.true20

if.end18.if.end41_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

land.lhs.true20:                                  ; preds = %if.end18
  %nr_leaves_on_tree = getelementptr inbounds %struct.key, ptr %32, i32 0, i32 17, i32 0, i32 0, i32 3
  %33 = ptrtoint ptr %nr_leaves_on_tree to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %nr_leaves_on_tree, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp22.not = icmp eq i32 %34, 0
  br i1 %cmp22.not, label %land.lhs.true20.if.end41_crit_edge, label %if.then23

land.lhs.true20.if.end41_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

if.then23:                                        ; preds = %land.lhs.true20
  br i1 %all_users, label %if.then25, label %if.else

if.then25:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  %call27 = call i32 @keyring_clear(ptr noundef nonnull %32) #11
  br label %if.end29

if.else:                                          ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  %call28 = call fastcc i32 @remove_master_key_user(ptr noundef %30)
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.then25
  %err.0 = phi i32 [ %call27, %if.then25 ], [ %call28, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool30.not = icmp eq i32 %err.0, 0
  br i1 %tobool30.not, label %if.end33, label %out_put_key.thread116

out_put_key.thread116:                            ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  call void @up_write(ptr noundef %sem) #11
  call void @key_put(ptr noundef %retval.0.i97) #11
  br label %cleanup

if.end33:                                         ; preds = %if.end29
  %35 = ptrtoint ptr %mk_users to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mk_users, align 8
  %nr_leaves_on_tree36 = getelementptr inbounds %struct.key, ptr %36, i32 0, i32 17, i32 0, i32 0, i32 3
  %37 = ptrtoint ptr %nr_leaves_on_tree36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %nr_leaves_on_tree36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp37.not = icmp eq i32 %38, 0
  br i1 %cmp37.not, label %if.end33.if.end41_crit_edge, label %if.then38

if.end33.if.end41_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

if.then38:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  call void @up_write(ptr noundef %sem) #11
  br label %out_put_key.thread

if.end41:                                         ; preds = %if.end33.if.end41_crit_edge, %land.lhs.true20.if.end41_crit_edge, %if.end18.if.end41_crit_edge
  %size.i = getelementptr inbounds %struct.fscrypt_master_key_secret, ptr %30, i32 0, i32 1
  %39 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp.i99.not = icmp eq i32 %40, 0
  br i1 %cmp.i99.not, label %if.else51.critedge, label %if.then43

if.then43:                                        ; preds = %if.end41
  call void @fscrypt_destroy_hkdf(ptr noundef %30) #11
  %41 = call ptr @memset(ptr %30, i32 0, i32 72)
  call void asm sideeffect "", "r,~{memory}"(ptr %30) #11, !srcloc !95
  %mk_refcount = getelementptr inbounds %struct.fscrypt_master_key, ptr %30, i32 0, i32 3
  %call45 = call fastcc zeroext i1 @refcount_dec_and_test(ptr noundef %mk_refcount)
  call void @up_write(ptr noundef %sem) #11
  br i1 %call45, label %if.then50, label %if.then43.if.else51_crit_edge

if.then43.if.else51_crit_edge:                    ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else51

if.then50:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #13
  call void @key_invalidate(ptr noundef %retval.0.i97) #11
  br label %out_put_key.thread

if.else51.critedge:                               ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  call void @up_write(ptr noundef %sem) #11
  br label %if.else51

if.else51:                                        ; preds = %if.else51.critedge, %if.then43.if.else51_crit_edge
  %call52 = call fastcc i32 @try_to_lock_encrypted_files(ptr noundef %3, ptr noundef %30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call52)
  %cmp53 = icmp eq i32 %call52, -16
  br i1 %cmp53, label %if.else51.out_put_key.thread_crit_edge, label %out_put_key

if.else51.out_put_key.thread_crit_edge:           ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_put_key.thread

out_put_key.thread:                               ; preds = %if.else51.out_put_key.thread_crit_edge, %if.then50, %if.then38
  %status_flags.0.ph = phi i32 [ 0, %if.then50 ], [ 2, %if.then38 ], [ 1, %if.else51.out_put_key.thread_crit_edge ]
  call void @key_put(ptr noundef %retval.0.i97) #11
  br label %if.then59

out_put_key:                                      ; preds = %if.else51
  call void @key_put(ptr noundef %retval.0.i97) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %cmp58 = icmp eq i32 %call52, 0
  br i1 %cmp58, label %out_put_key.if.then59_crit_edge, label %out_put_key.cleanup_crit_edge

out_put_key.cleanup_crit_edge:                    ; preds = %out_put_key
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

out_put_key.if.then59_crit_edge:                  ; preds = %out_put_key
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then59

if.then59:                                        ; preds = %out_put_key.if.then59_crit_edge, %out_put_key.thread
  %status_flags.0115 = phi i32 [ %status_flags.0.ph, %out_put_key.thread ], [ 0, %out_put_key.if.then59_crit_edge ]
  %removal_status_flags = getelementptr inbounds %struct.fscrypt_remove_key_arg, ptr %_uarg, i32 0, i32 1
  call void @__might_fault(ptr noundef nonnull @.str.14, i32 noundef 1003) #11
  %42 = call i32 @llvm.read_register.i32(metadata !78) #11
  %and.i.i.i = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 4
  %44 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #6, !srcloc !91
  %and.i = and i32 %44, -13
  %or.i = or i32 %and.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #11, !srcloc !92
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !93
  %45 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %removal_status_flags, i32 %status_flags.0115, i32 -1226833921) #11, !srcloc !104
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %44) #11, !srcloc !92
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !93
  br label %cleanup

cleanup:                                          ; preds = %if.then59, %out_put_key.cleanup_crit_edge, %out_put_key.thread116, %if.then16, %land.lhs.true.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %valid_key_spec.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ %27, %if.then16 ], [ -22, %valid_key_spec.exit.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ], [ -13, %land.lhs.true.cleanup_crit_edge ], [ %45, %if.then59 ], [ %call52, %out_put_key.cleanup_crit_edge ], [ %err.0, %out_put_key.thread116 ], [ -14, %if.then11.i.i ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %arg) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fscrypt_ioctl_remove_key_all_users(ptr nocapture noundef readonly %filp, ptr noundef %uarg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @capable(i32 noundef 21) #11
  br i1 %call, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call fastcc i32 @do_remove_key(ptr noundef %filp, ptr noundef %uarg, i1 noundef zeroext true)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -13, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fscrypt_ioctl_get_key_status(ptr nocapture noundef readonly %filp, ptr noundef %uarg) #0 align 64 {
entry:
  %description.i = alloca [33 x i8], align 1
  %arg = alloca %struct.fscrypt_get_key_status_arg, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %arg) #11
  %4 = call ptr @memset(ptr %arg, i32 255, i32 128)
  tail call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 156) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %5 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %uarg, i32 128, i32 -1226833920) #14
  %asmresult.i.i = extractvalue { i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !90

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %arg, i32 noundef 128) #11
  %6 = call i32 @llvm.read_register.i32(metadata !78) #11
  %and.i.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !91
  %and.i.i.i.i = and i32 %8, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !92
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !93
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %arg, ptr noundef %uarg, i32 noundef 128) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #11, !srcloc !92
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !93
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !90

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.0.i.i82 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 128, %entry.if.then11.i.i_crit_edge ], [ 128, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 128, %res.0.i.i82
  %add.ptr.i.i = getelementptr i8, ptr %arg, i32 %sub.i.i
  %9 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i82)
  br label %cleanup45

if.end:                                           ; preds = %if.end.i.i
  %__reserved.i = getelementptr inbounds %struct.fscrypt_key_specifier, ptr %arg, i32 0, i32 1
  %10 = ptrtoint ptr %__reserved.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %__reserved.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %valid_key_spec.exit, label %if.end.cleanup45_crit_edge

if.end.cleanup45_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup45

valid_key_spec.exit:                              ; preds = %if.end
  %12 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arg, align 4
  %14 = add i32 %13, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %15 = icmp ult i32 %14, 2
  br i1 %15, label %if.end4, label %valid_key_spec.exit.cleanup45_crit_edge

valid_key_spec.exit.cleanup45_crit_edge:          ; preds = %valid_key_spec.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup45

if.end4:                                          ; preds = %valid_key_spec.exit
  %__reserved = getelementptr inbounds %struct.fscrypt_get_key_status_arg, ptr %arg, i32 0, i32 1
  %call5 = call ptr @memchr_inv(ptr noundef %__reserved, i32 noundef 0, i32 noundef 24) #11
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup45_crit_edge

if.end4.cleanup45_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup45

if.end8:                                          ; preds = %if.end4
  %status_flags = getelementptr inbounds %struct.fscrypt_get_key_status_arg, ptr %arg, i32 0, i32 3
  %user_count = getelementptr inbounds %struct.fscrypt_get_key_status_arg, ptr %arg, i32 0, i32 4
  %16 = call ptr @memset(ptr %status_flags, i32 0, i32 60)
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %description.i) #11
  %17 = call ptr @memset(ptr %description.i, i32 255, i32 33)
  %s_master_keys.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 20
  %18 = ptrtoint ptr %s_master_keys.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %s_master_keys.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !88
  %cmp.i = icmp eq ptr %19, null
  br i1 %cmp.i, label %if.end8.if.then13.thread_crit_edge, label %if.end.i74

if.end8.if.then13.thread_crit_edge:               ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13.thread

if.end.i74:                                       ; preds = %if.end8
  %20 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %switch.selectcmp.i.i.i = icmp eq i32 %21, 2
  %switch.select.i.i.i = select i1 %switch.selectcmp.i.i.i, i32 16, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %switch.selectcmp2.i.i.i = icmp eq i32 %21, 1
  %switch.select3.i.i.i = select i1 %switch.selectcmp2.i.i.i, i32 8, i32 %switch.select.i.i.i
  %u.i.i = getelementptr inbounds %struct.fscrypt_key_specifier, ptr %arg, i32 0, i32 2
  %call1.i.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %description.i, ptr noundef nonnull @.str, i32 noundef %switch.select3.i.i.i, ptr noundef %u.i.i) #11
  %22 = ptrtoint ptr %19 to i32
  %or.i.i.i = or i32 %22, 1
  %23 = inttoptr i32 %or.i.i.i to ptr
  %call1.i9.i = call ptr @keyring_search(ptr noundef nonnull %23, ptr noundef nonnull @key_type_fscrypt, ptr noundef nonnull %description.i, i1 noundef zeroext false) #11
  %cmp.i.i.i = icmp ugt ptr %call1.i9.i, inttoptr (i32 -4096 to ptr)
  %magicptr.i.i = ptrtoint ptr %call1.i9.i to i32
  br i1 %cmp.i.i.i, label %if.then.i.i75, label %if.end9.i.i

if.then.i.i75:                                    ; preds = %if.end.i74
  %24 = zext i32 %magicptr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %magicptr.i.i, label %if.then.i.i75.fscrypt_find_master_key.exit_crit_edge [
    i32 -11, label %if.then.i.i75.if.then13.thread_crit_edge
    i32 -128, label %if.then.i.i75.if.then13.thread_crit_edge98
  ]

if.then.i.i75.if.then13.thread_crit_edge98:       ; preds = %if.then.i.i75
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13.thread

if.then.i.i75.if.then13.thread_crit_edge:         ; preds = %if.then.i.i75
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13.thread

if.then.i.i75.fscrypt_find_master_key.exit_crit_edge: ; preds = %if.then.i.i75
  call void @__sanitizer_cov_trace_pc() #13
  br label %fscrypt_find_master_key.exit

if.end9.i.i:                                      ; preds = %if.end.i74
  call void @__sanitizer_cov_trace_pc() #13
  %and.i.i.i = and i32 %magicptr.i.i, -2
  %25 = inttoptr i32 %and.i.i.i to ptr
  br label %fscrypt_find_master_key.exit

if.then13.thread:                                 ; preds = %if.then.i.i75.if.then13.thread_crit_edge, %if.then.i.i75.if.then13.thread_crit_edge98, %if.end8.if.then13.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %description.i) #11
  br label %out.thread

fscrypt_find_master_key.exit:                     ; preds = %if.end9.i.i, %if.then.i.i75.fscrypt_find_master_key.exit_crit_edge
  %retval.0.i76 = phi ptr [ %25, %if.end9.i.i ], [ %call1.i9.i, %if.then.i.i75.fscrypt_find_master_key.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %description.i) #11
  %cmp.i77 = icmp ugt ptr %retval.0.i76, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i77, label %if.then13, label %if.end18

if.then13:                                        ; preds = %fscrypt_find_master_key.exit
  %cmp.not = icmp eq ptr %retval.0.i76, inttoptr (i32 -126 to ptr)
  br i1 %cmp.not, label %if.then13.out.thread_crit_edge, label %if.then15

if.then13.out.thread_crit_edge:                   ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.thread

if.then15:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %retval.0.i76 to i32
  br label %cleanup45

out.thread:                                       ; preds = %if.then13.out.thread_crit_edge, %if.then13.thread
  %status = getelementptr inbounds %struct.fscrypt_get_key_status_arg, ptr %arg, i32 0, i32 2
  %27 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %status, align 4
  br label %if.end59.i.i67

if.end18:                                         ; preds = %fscrypt_find_master_key.exit
  %28 = getelementptr inbounds %struct.key, ptr %retval.0.i76, i32 0, i32 17
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %sem = getelementptr inbounds %struct.key, ptr %retval.0.i76, i32 0, i32 4
  call void @down_read(ptr noundef %sem) #11
  %size.i = getelementptr inbounds %struct.fscrypt_master_key_secret, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp.i78.not = icmp eq i32 %32, 0
  %status21 = getelementptr inbounds %struct.fscrypt_get_key_status_arg, ptr %arg, i32 0, i32 2
  br i1 %cmp.i78.not, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  %33 = ptrtoint ptr %status21 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 3, ptr %status21, align 4
  br label %out

if.end22:                                         ; preds = %if.end18
  %34 = ptrtoint ptr %status21 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 2, ptr %status21, align 4
  %mk_users = getelementptr inbounds %struct.fscrypt_master_key, ptr %30, i32 0, i32 2
  %35 = ptrtoint ptr %mk_users to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mk_users, align 8
  %tobool24.not = icmp eq ptr %36, null
  br i1 %tobool24.not, label %if.end22.out_crit_edge, label %if.then25

if.end22.out_crit_edge:                           ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then25:                                        ; preds = %if.end22
  %nr_leaves_on_tree = getelementptr inbounds %struct.key, ptr %36, i32 0, i32 17, i32 0, i32 0, i32 3
  %37 = ptrtoint ptr %nr_leaves_on_tree to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %nr_leaves_on_tree, align 4
  %39 = ptrtoint ptr %user_count to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %user_count, align 4
  %call28 = call fastcc ptr @find_master_key_user(ptr noundef %30)
  %cmp.i79 = icmp ugt ptr %call28, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i79, label %if.else, label %if.then30

if.then30:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #13
  %40 = ptrtoint ptr %status_flags to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %status_flags, align 4
  %or = or i32 %41, 1
  store i32 %or, ptr %status_flags, align 4
  call void @key_put(ptr noundef %call28) #11
  br label %out

if.else:                                          ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #13
  %cmp33.not = icmp eq ptr %call28, inttoptr (i32 -126 to ptr)
  %42 = ptrtoint ptr %call28 to i32
  %spec.select = select i1 %cmp33.not, i32 0, i32 %42
  br label %out

out:                                              ; preds = %if.else, %if.then30, %if.end22.out_crit_edge, %if.then20
  %err.1 = phi i32 [ 0, %if.then20 ], [ 0, %if.end22.out_crit_edge ], [ 0, %if.then30 ], [ %spec.select, %if.else ]
  call void @up_read(ptr noundef %sem) #11
  call void @key_put(ptr noundef %retval.0.i76) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool40.not = icmp eq i32 %err.1, 0
  br i1 %tobool40.not, label %out.if.end59.i.i67_crit_edge, label %out.cleanup45_crit_edge

out.cleanup45_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup45

out.if.end59.i.i67_crit_edge:                     ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59.i.i67

if.end59.i.i67:                                   ; preds = %out.if.end59.i.i67_crit_edge, %out.thread
  call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 174) #11
  %call.i.i68 = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i68, label %if.end59.i.i67.cleanup45_crit_edge, label %copy_to_user.exit

if.end59.i.i67.cleanup45_crit_edge:               ; preds = %if.end59.i.i67
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup45

copy_to_user.exit:                                ; preds = %if.end59.i.i67
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i72 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %arg, i32 noundef 128) #11
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %uarg, ptr noundef nonnull %arg, i32 noundef 128) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool42.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select97 = select i1 %tobool42.not, i32 0, i32 -14
  br label %cleanup45

cleanup45:                                        ; preds = %copy_to_user.exit, %if.end59.i.i67.cleanup45_crit_edge, %out.cleanup45_crit_edge, %if.then15, %if.end4.cleanup45_crit_edge, %valid_key_spec.exit.cleanup45_crit_edge, %if.end.cleanup45_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ %26, %if.then15 ], [ -22, %valid_key_spec.exit.cleanup45_crit_edge ], [ -22, %if.end4.cleanup45_crit_edge ], [ %err.1, %out.cleanup45_crit_edge ], [ -14, %if.then11.i.i ], [ -22, %if.end.cleanup45_crit_edge ], [ -14, %if.end59.i.i67.cleanup45_crit_edge ], [ %spec.select97, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %arg) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fscrypt_init_keyring() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_key_type(ptr noundef nonnull @key_type_fscrypt) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @register_key_type(ptr noundef nonnull @key_type_fscrypt_user) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.err_unregister_fscrypt_crit_edge

if.end.err_unregister_fscrypt_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_unregister_fscrypt

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @register_key_type(ptr noundef nonnull @key_type_fscrypt_provisioning) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %err_unregister_fscrypt_user

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

err_unregister_fscrypt_user:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @unregister_key_type(ptr noundef nonnull @key_type_fscrypt_user) #11
  br label %err_unregister_fscrypt

err_unregister_fscrypt:                           ; preds = %err_unregister_fscrypt_user, %if.end.err_unregister_fscrypt_crit_edge
  %err.0 = phi i32 [ %call1, %if.end.err_unregister_fscrypt_crit_edge ], [ %call5, %err_unregister_fscrypt_user ]
  tail call void @unregister_key_type(ptr noundef nonnull @key_type_fscrypt) #11
  br label %cleanup

cleanup:                                          ; preds = %err_unregister_fscrypt, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %err_unregister_fscrypt ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_key_type(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_key_type(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @keyring_search(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fscrypt_key_instantiate(ptr nocapture noundef writeonly %key, ptr nocapture noundef readonly %prep) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.key_preparsed_payload, ptr %prep, i32 0, i32 3
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %2 = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 17
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %1, ptr %2, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fscrypt_key_destroy(ptr nocapture noundef readonly %key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 17
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  tail call fastcc void @free_master_key(ptr noundef %2)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fscrypt_key_describe(ptr noundef %key, ptr noundef %m) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %description = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 16, i32 0, i32 4
  %0 = ptrtoint ptr %description to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %description, align 8
  tail call void @seq_puts(ptr noundef %m, ptr noundef %1) #11
  %state.i.i = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 14
  %2 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load volatile i16, ptr %state.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !105
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %3)
  %cmp.i = icmp eq i16 %3, 1
  br i1 %cmp.i, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

if.then:                                          ; preds = %entry
  %4 = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 17
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %size.i = getelementptr inbounds %struct.fscrypt_master_key_secret, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i7.not = icmp eq i32 %8, 0
  br i1 %cmp.i7.not, label %if.then2, label %if.then.if.end3_crit_edge

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.2) #11
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @free_master_key(ptr noundef %mk) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @fscrypt_destroy_hkdf(ptr noundef %mk) #11
  %0 = call ptr @memset(ptr %mk, i32 0, i32 72)
  tail call void asm sideeffect "", "r,~{memory}"(ptr %mk) #11, !srcloc !95
  %arrayidx = getelementptr %struct.fscrypt_master_key, ptr %mk, i32 0, i32 6, i32 0
  tail call void @fscrypt_destroy_prepared_key(ptr noundef %arrayidx) #11
  %arrayidx1 = getelementptr %struct.fscrypt_master_key, ptr %mk, i32 0, i32 7, i32 0
  tail call void @fscrypt_destroy_prepared_key(ptr noundef %arrayidx1) #11
  %arrayidx2 = getelementptr %struct.fscrypt_master_key, ptr %mk, i32 0, i32 8, i32 0
  tail call void @fscrypt_destroy_prepared_key(ptr noundef %arrayidx2) #11
  %arrayidx.1 = getelementptr %struct.fscrypt_master_key, ptr %mk, i32 0, i32 6, i32 1
  tail call void @fscrypt_destroy_prepared_key(ptr noundef %arrayidx.1) #11
  %arrayidx1.1 = getelementptr %struct.fscrypt_master_key, ptr %mk, i32 0, i32 7, i32 1
  tail call void @fscrypt_destroy_prepared_key(ptr noundef %arrayidx1.1) #11
  %arrayidx2.1 = getelementptr %struct.fscrypt_master_key, ptr %mk, i32 0, i32 8, i32 1
  tail call void @fscrypt_destroy_prepared_key(ptr noundef %arrayidx2.1) #11
  %arrayidx.2 = getelementptr %struct.fscrypt_master_key, ptr %mk, i32 0, i32 6, i32 2
  tail call void @fscrypt_destroy_prepared_key(ptr noundef %arrayidx.2) #11
  %arrayidx1.2 = getelementptr %struct.fscrypt_master_key, ptr %mk, i32 0, i32 7, i32 2
  tail call void @fscrypt_destroy_prepared_key(ptr noundef %arrayidx1.2) #11
  %arrayidx2.2 = getelementptr %struct.fscrypt_master_key, ptr %mk, i32 0, i32 8, i32 2
  tail call void @fscrypt_destroy_prepared_key(ptr noundef %arrayidx2.2) #11
  %arrayidx.3 = getelementptr %struct.fscrypt_master_key, ptr %mk, i32 0, i32 6, i32 3
  tail call void @fscrypt_destroy_prepared_key(ptr noundef %arrayidx.3) #11
  %arrayidx1.3 = getelementptr %struct.fscrypt_master_key, ptr %mk, i32 0, i32 7, i32 3
  tail call void @fscrypt_destroy_prepared_key(ptr noundef %arrayidx1.3) #11
  %arrayidx2.3 = getelementptr %struct.fscrypt_master_key, ptr %mk, i32 0, i32 8, i32 3
  tail call void @fscrypt_destroy_prepared_key(ptr noundef %arrayidx2.3) #11
  %arrayidx.4 = getelementptr %struct.fscrypt_master_key, ptr %mk, i32 0, i32 6, i32 4
  tail call void @fscrypt_destroy_prepared_key(ptr noundef %arrayidx.4) #11
  %arrayidx1.4 = getelementptr %struct.fscrypt_master_key, ptr %mk, i32 0, i32 7, i32 4
  tail call void @fscrypt_destroy_prepared_key(ptr noundef %arrayidx1.4) #11
  %arrayidx2.4 = getelementptr %struct.fscrypt_master_key, ptr %mk, i32 0, i32 8, i32 4
  tail call void @fscrypt_destroy_prepared_key(ptr noundef %arrayidx2.4) #11
  %arrayidx.5 = getelementptr %struct.fscrypt_master_key, ptr %mk, i32 0, i32 6, i32 5
  tail call void @fscrypt_destroy_prepared_key(ptr noundef %arrayidx.5) #11
  %arrayidx1.5 = getelementptr %struct.fscrypt_master_key, ptr %mk, i32 0, i32 7, i32 5
  tail call void @fscrypt_destroy_prepared_key(ptr noundef %arrayidx1.5) #11
  %arrayidx2.5 = getelementptr %struct.fscrypt_master_key, ptr %mk, i32 0, i32 8, i32 5
  tail call void @fscrypt_destroy_prepared_key(ptr noundef %arrayidx2.5) #11
  %arrayidx.6 = getelementptr %struct.fscrypt_master_key, ptr %mk, i32 0, i32 6, i32 6
  tail call void @fscrypt_destroy_prepared_key(ptr noundef %arrayidx.6) #11
  %arrayidx1.6 = getelementptr %struct.fscrypt_master_key, ptr %mk, i32 0, i32 7, i32 6
  tail call void @fscrypt_destroy_prepared_key(ptr noundef %arrayidx1.6) #11
  %arrayidx2.6 = getelementptr %struct.fscrypt_master_key, ptr %mk, i32 0, i32 8, i32 6
  tail call void @fscrypt_destroy_prepared_key(ptr noundef %arrayidx2.6) #11
  %arrayidx.7 = getelementptr %struct.fscrypt_master_key, ptr %mk, i32 0, i32 6, i32 7
  tail call void @fscrypt_destroy_prepared_key(ptr noundef %arrayidx.7) #11
  %arrayidx1.7 = getelementptr %struct.fscrypt_master_key, ptr %mk, i32 0, i32 7, i32 7
  tail call void @fscrypt_destroy_prepared_key(ptr noundef %arrayidx1.7) #11
  %arrayidx2.7 = getelementptr %struct.fscrypt_master_key, ptr %mk, i32 0, i32 8, i32 7
  tail call void @fscrypt_destroy_prepared_key(ptr noundef %arrayidx2.7) #11
  %arrayidx.8 = getelementptr %struct.fscrypt_master_key, ptr %mk, i32 0, i32 6, i32 8
  tail call void @fscrypt_destroy_prepared_key(ptr noundef %arrayidx.8) #11
  %arrayidx1.8 = getelementptr %struct.fscrypt_master_key, ptr %mk, i32 0, i32 7, i32 8
  tail call void @fscrypt_destroy_prepared_key(ptr noundef %arrayidx1.8) #11
  %arrayidx2.8 = getelementptr %struct.fscrypt_master_key, ptr %mk, i32 0, i32 8, i32 8
  tail call void @fscrypt_destroy_prepared_key(ptr noundef %arrayidx2.8) #11
  %arrayidx.9 = getelementptr %struct.fscrypt_master_key, ptr %mk, i32 0, i32 6, i32 9
  tail call void @fscrypt_destroy_prepared_key(ptr noundef %arrayidx.9) #11
  %arrayidx1.9 = getelementptr %struct.fscrypt_master_key, ptr %mk, i32 0, i32 7, i32 9
  tail call void @fscrypt_destroy_prepared_key(ptr noundef %arrayidx1.9) #11
  %arrayidx2.9 = getelementptr %struct.fscrypt_master_key, ptr %mk, i32 0, i32 8, i32 9
  tail call void @fscrypt_destroy_prepared_key(ptr noundef %arrayidx2.9) #11
  %mk_users = getelementptr inbounds %struct.fscrypt_master_key, ptr %mk, i32 0, i32 2
  %1 = ptrtoint ptr %mk_users to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mk_users, align 8
  tail call void @key_put(ptr noundef %2) #11
  tail call void @kfree_sensitive(ptr noundef %mk) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fscrypt_destroy_prepared_key(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lookup_user_key(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fscrypt_init_hkdf(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fscrypt_hkdf_expand(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_invalidate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @keyring_alloc(ptr noundef, [1 x i32], [1 x i32], ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @add_master_key_user(ptr noundef %mk) unnamed_addr #0 align 64 {
entry:
  %description = alloca [48 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %description) #11
  %0 = call ptr @memset(ptr %description, i32 255, i32 48)
  %u = getelementptr inbounds %struct.fscrypt_master_key, ptr %mk, i32 0, i32 1, i32 2
  %1 = tail call i32 @llvm.read_register.i32(metadata !78) #11
  %and.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 99
  %5 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cred.i, align 16
  %fsuid.i = getelementptr inbounds %struct.cred, ptr %6, i32 0, i32 10
  %7 = ptrtoint ptr %fsuid.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %agg.tmp.sroa.0.0.copyload.i = load i32, ptr %fsuid.i, align 4
  %call2.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %description, ptr noundef nonnull @.str.13, i32 noundef 16, ptr noundef %u, i32 noundef %agg.tmp.sroa.0.0.copyload.i) #11
  %8 = tail call i32 @llvm.read_register.i32(metadata !78) #11
  %and.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 99
  %12 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cred, align 16
  %fsuid = getelementptr inbounds %struct.cred, ptr %13, i32 0, i32 10
  %14 = ptrtoint ptr %fsuid to i32
  call void @__asan_load4_noabort(i32 %14)
  %agg.tmp.sroa.0.0.copyload = load i32, ptr %fsuid, align 4
  %gid = getelementptr inbounds %struct.cred, ptr %13, i32 0, i32 5
  %15 = ptrtoint ptr %gid to i32
  call void @__asan_load4_noabort(i32 %15)
  %agg.tmp3.sroa.0.0.copyload = load i32, ptr %gid, align 4
  %.fca.0.insert25 = insertvalue [1 x i32] poison, i32 %agg.tmp.sroa.0.0.copyload, 0
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %agg.tmp3.sroa.0.0.copyload, 0
  %call19 = call ptr @key_alloc(ptr noundef nonnull @key_type_fscrypt_user, ptr noundef nonnull %description, [1 x i32] %.fca.0.insert25, [1 x i32] %.fca.0.insert, ptr noundef %13, i32 noundef 134283264, i32 noundef 0, ptr noundef null) #11
  %cmp.i = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %call19 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %mk_users = getelementptr inbounds %struct.fscrypt_master_key, ptr %mk, i32 0, i32 2
  %17 = ptrtoint ptr %mk_users to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mk_users, align 8
  %call22 = call i32 @key_instantiate_and_link(ptr noundef %call19, ptr noundef null, i32 noundef 0, ptr noundef %18, ptr noundef null) #11
  call void @key_put(ptr noundef %call19) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %16, %if.then ], [ %call22, %if.end ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %description) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @key_alloc(ptr noundef, ptr noundef, [1 x i32], [1 x i32], ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @key_instantiate_and_link(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @refcount_dec_and_test(ptr noundef %r) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %r, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !98
  tail call void @llvm.prefetch.p0(ptr %r, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %r, ptr %r, i32 1, ptr elementtype(i32) %r) #11, !srcloc !99
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 1
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end5.i.i

do.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !100
  br label %__refcount_dec_and_test.exit

if.end5.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %.not.i.i = icmp sgt i32 %asmresult.i.i.i.i.i, 0
  br i1 %.not.i.i, label %if.end5.i.i.__refcount_dec_and_test.exit_crit_edge, label %if.then10.i.i, !prof !90

if.end5.i.i.__refcount_dec_and_test.exit_crit_edge: ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__refcount_dec_and_test.exit

if.then10.i.i:                                    ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %r, i32 noundef 3) #11
  br label %__refcount_dec_and_test.exit

__refcount_dec_and_test.exit:                     ; preds = %if.then10.i.i, %if.end5.i.i.__refcount_dec_and_test.exit_crit_edge, %do.end.i.i
  ret i1 %cmp.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fscrypt_destroy_hkdf(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @keyring_clear(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @remove_master_key_user(ptr noundef %mk) unnamed_addr #0 align 64 {
entry:
  %description.i = alloca [48 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %description.i) #11
  %0 = call ptr @memset(ptr %description.i, i32 255, i32 48)
  %u.i = getelementptr inbounds %struct.fscrypt_master_key, ptr %mk, i32 0, i32 1, i32 2
  %1 = tail call i32 @llvm.read_register.i32(metadata !78) #11
  %and.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task.i.i, align 8
  %cred.i.i = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 99
  %5 = ptrtoint ptr %cred.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cred.i.i, align 16
  %fsuid.i.i = getelementptr inbounds %struct.cred, ptr %6, i32 0, i32 10
  %7 = ptrtoint ptr %fsuid.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %agg.tmp.sroa.0.0.copyload.i.i = load i32, ptr %fsuid.i.i, align 4
  %call2.i.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %description.i, ptr noundef nonnull @.str.13, i32 noundef 16, ptr noundef %u.i, i32 noundef %agg.tmp.sroa.0.0.copyload.i.i) #11
  %mk_users.i = getelementptr inbounds %struct.fscrypt_master_key, ptr %mk, i32 0, i32 2
  %8 = ptrtoint ptr %mk_users.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mk_users.i, align 8
  %10 = ptrtoint ptr %9 to i32
  %or.i.i.i = or i32 %10, 1
  %11 = inttoptr i32 %or.i.i.i to ptr
  %call1.i.i = call ptr @keyring_search(ptr noundef nonnull %11, ptr noundef nonnull @key_type_fscrypt_user, ptr noundef nonnull %description.i, i1 noundef zeroext false) #11
  %cmp.i.i.i = icmp ugt ptr %call1.i.i, inttoptr (i32 -4096 to ptr)
  %magicptr.i.i = ptrtoint ptr %call1.i.i to i32
  br i1 %cmp.i.i.i, label %if.then.i.i, label %if.end9.i.i

if.then.i.i:                                      ; preds = %entry
  %12 = zext i32 %magicptr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %magicptr.i.i, label %if.then.i.i.find_master_key_user.exit_crit_edge [
    i32 -11, label %if.then.i.i.find_master_key_user.exit.thread_crit_edge
    i32 -128, label %if.then.i.i.find_master_key_user.exit.thread_crit_edge12
  ]

if.then.i.i.find_master_key_user.exit.thread_crit_edge12: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %find_master_key_user.exit.thread

if.then.i.i.find_master_key_user.exit.thread_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %find_master_key_user.exit.thread

if.then.i.i.find_master_key_user.exit_crit_edge:  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %find_master_key_user.exit

find_master_key_user.exit.thread:                 ; preds = %if.then.i.i.find_master_key_user.exit.thread_crit_edge, %if.then.i.i.find_master_key_user.exit.thread_crit_edge12
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %description.i) #11
  br label %if.then

if.end9.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %and.i.i4.i = and i32 %magicptr.i.i, -2
  %13 = inttoptr i32 %and.i.i4.i to ptr
  br label %find_master_key_user.exit

find_master_key_user.exit:                        ; preds = %if.end9.i.i, %if.then.i.i.find_master_key_user.exit_crit_edge
  %retval.0.i.i = phi ptr [ %13, %if.end9.i.i ], [ %call1.i.i, %if.then.i.i.find_master_key_user.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %description.i) #11
  %cmp.i = icmp ugt ptr %retval.0.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %find_master_key_user.exit.if.then_crit_edge, label %if.end

find_master_key_user.exit.if.then_crit_edge:      ; preds = %find_master_key_user.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %find_master_key_user.exit.if.then_crit_edge, %find_master_key_user.exit.thread
  %retval.0.i.i11 = phi ptr [ inttoptr (i32 -126 to ptr), %find_master_key_user.exit.thread ], [ %retval.0.i.i, %find_master_key_user.exit.if.then_crit_edge ]
  %14 = ptrtoint ptr %retval.0.i.i11 to i32
  br label %cleanup

if.end:                                           ; preds = %find_master_key_user.exit
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %mk_users.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mk_users.i, align 8
  %call3 = call i32 @key_unlink(ptr noundef %16, ptr noundef %retval.0.i.i) #11
  call void @key_put(ptr noundef %retval.0.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %14, %if.then ], [ %call3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @try_to_lock_encrypted_files(ptr noundef %sb, ptr noundef %mk) unnamed_addr #0 align 64 {
entry:
  %ino_str.i = alloca [50 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %s_umount = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 14
  tail call void @down_read(ptr noundef %s_umount) #11
  %call = tail call i32 @sync_filesystem(ptr noundef %sb) #11
  tail call void @up_read(ptr noundef %s_umount) #11
  %mk_decrypted_inodes_lock.i = getelementptr inbounds %struct.fscrypt_master_key, ptr %mk, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %mk_decrypted_inodes_lock.i) #11
  %mk_decrypted_inodes.i = getelementptr inbounds %struct.fscrypt_master_key, ptr %mk, i32 0, i32 4
  %0 = ptrtoint ptr %mk_decrypted_inodes.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn26.i = load ptr, ptr %mk_decrypted_inodes.i, align 8
  %cmp.not27.i = icmp eq ptr %.pn26.i, %mk_decrypted_inodes.i
  br i1 %cmp.not27.i, label %entry.evict_dentries_for_decrypted_inodes.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.evict_dentries_for_decrypted_inodes.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %evict_dentries_for_decrypted_inodes.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn29.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn26.i, %entry.for.body.i_crit_edge ]
  %toput_inode.028.i = phi ptr [ %toput_inode.1.i, %for.inc.i.for.body.i_crit_edge ], [ null, %entry.for.body.i_crit_edge ]
  %ci_inode.i = getelementptr i8, ptr %.pn29.i, i32 -8
  %1 = ptrtoint ptr %ci_inode.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ci_inode.i, align 8
  %i_lock.i = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %i_lock.i) #11
  %i_state.i = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 24
  %3 = ptrtoint ptr %i_state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %i_state.i, align 8
  %and.i = and i32 %4, 56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock(ptr noundef %i_lock.i) #11
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  tail call void @__iget(ptr noundef %2) #11
  tail call void @_raw_spin_unlock(ptr noundef %i_lock.i) #11
  tail call void @_raw_spin_unlock(ptr noundef %mk_decrypted_inodes_lock.i) #11
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %2, align 8
  %7 = and i16 %6, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %7)
  %cmp.i.i = icmp eq i16 %7, 16384
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.shrink_dcache_inode.exit.i_crit_edge

if.end.i.shrink_dcache_inode.exit.i_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %shrink_dcache_inode.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  %call.i.i = tail call ptr @d_find_any_alias(ptr noundef %2) #11
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.then.i.i.shrink_dcache_inode.exit.i_crit_edge, label %if.then2.i.i

if.then.i.i.shrink_dcache_inode.exit.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %shrink_dcache_inode.exit.i

if.then2.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @shrink_dcache_parent(ptr noundef nonnull %call.i.i) #11
  tail call void @dput(ptr noundef nonnull %call.i.i) #11
  br label %shrink_dcache_inode.exit.i

shrink_dcache_inode.exit.i:                       ; preds = %if.then2.i.i, %if.then.i.i.shrink_dcache_inode.exit.i_crit_edge, %if.end.i.shrink_dcache_inode.exit.i_crit_edge
  tail call void @d_prune_aliases(ptr noundef %2) #11
  tail call void @iput(ptr noundef %toput_inode.028.i) #11
  tail call void @_raw_spin_lock(ptr noundef %mk_decrypted_inodes_lock.i) #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %shrink_dcache_inode.exit.i, %if.then.i
  %toput_inode.1.i = phi ptr [ %toput_inode.028.i, %if.then.i ], [ %2, %shrink_dcache_inode.exit.i ]
  %8 = ptrtoint ptr %.pn29.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn.i = load ptr, ptr %.pn29.i, align 8
  %cmp.not.i = icmp eq ptr %.pn.i, %mk_decrypted_inodes.i
  br i1 %cmp.not.i, label %for.inc.i.evict_dentries_for_decrypted_inodes.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.evict_dentries_for_decrypted_inodes.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %evict_dentries_for_decrypted_inodes.exit

evict_dentries_for_decrypted_inodes.exit:         ; preds = %for.inc.i.evict_dentries_for_decrypted_inodes.exit_crit_edge, %entry.evict_dentries_for_decrypted_inodes.exit_crit_edge
  %toput_inode.0.lcssa.i = phi ptr [ null, %entry.evict_dentries_for_decrypted_inodes.exit_crit_edge ], [ %toput_inode.1.i, %for.inc.i.evict_dentries_for_decrypted_inodes.exit_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %mk_decrypted_inodes_lock.i) #11
  tail call void @iput(ptr noundef %toput_inode.0.lcssa.i) #11
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %ino_str.i) #11
  %9 = call ptr @memset(ptr %ino_str.i, i32 0, i32 50)
  tail call void @_raw_spin_lock(ptr noundef %mk_decrypted_inodes_lock.i) #11
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %evict_dentries_for_decrypted_inodes.exit
  %busy_count.0.i = phi i32 [ 0, %evict_dentries_for_decrypted_inodes.exit ], [ %inc.i, %for.cond.i.for.cond.i_crit_edge ]
  %pos.0.in.i = phi ptr [ %mk_decrypted_inodes.i, %evict_dentries_for_decrypted_inodes.exit ], [ %pos.0.i, %for.cond.i.for.cond.i_crit_edge ]
  %10 = ptrtoint ptr %pos.0.in.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %pos.0.i = load ptr, ptr %pos.0.in.i, align 4
  %cmp.i.not.i = icmp eq ptr %pos.0.i, %mk_decrypted_inodes.i
  %inc.i = add i32 %busy_count.0.i, 1
  br i1 %cmp.i.not.i, label %for.end.i, label %for.cond.i.for.cond.i_crit_edge

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

for.end.i:                                        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %busy_count.0.i)
  %cmp.i = icmp eq i32 %busy_count.0.i, 0
  br i1 %cmp.i, label %if.then.i9, label %if.end.i11

if.then.i9:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock(ptr noundef %mk_decrypted_inodes_lock.i) #11
  br label %check_for_busy_inodes.exit

if.end.i11:                                       ; preds = %for.end.i
  %11 = ptrtoint ptr %mk_decrypted_inodes.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mk_decrypted_inodes.i, align 8
  %ci_inode.i10 = getelementptr i8, ptr %12, i32 -8
  %13 = ptrtoint ptr %ci_inode.i10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ci_inode.i10, align 8
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %14, i32 0, i32 11
  %15 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %i_ino.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %mk_decrypted_inodes_lock.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool7.not.i = icmp eq i32 %16, 0
  br i1 %tobool7.not.i, label %if.end.i11.if.end10.i_crit_edge, label %if.then8.i

if.end.i11.if.end10.i_crit_edge:                  ; preds = %if.end.i11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10.i

if.then8.i:                                       ; preds = %if.end.i11
  call void @__sanitizer_cov_trace_pc() #13
  %call9.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %ino_str.i, i32 noundef 50, ptr noundef nonnull @.str.15, i32 noundef %16) #11
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then8.i, %if.end.i11.if.end10.i_crit_edge
  %s_id.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 39
  %mk_spec.i = getelementptr inbounds %struct.fscrypt_master_key, ptr %mk, i32 0, i32 1
  %17 = ptrtoint ptr %mk_spec.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mk_spec.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %switch.selectcmp.i.i = icmp eq i32 %18, 2
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, ptr @.str.19, ptr @.str.20
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %switch.selectcmp2.i.i = icmp eq i32 %18, 1
  %switch.select3.i.i = select i1 %switch.selectcmp2.i.i, ptr @.str.18, ptr %switch.select.i.i
  %switch.select.i33.i = select i1 %switch.selectcmp.i.i, i32 16, i32 0
  %switch.select3.i35.i = select i1 %switch.selectcmp2.i.i, i32 8, i32 %switch.select.i33.i
  %u.i = getelementptr inbounds %struct.fscrypt_master_key, ptr %mk, i32 0, i32 1, i32 2
  call void (ptr, ptr, ptr, ...) @fscrypt_msg(ptr noundef null, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, ptr noundef %s_id.i, i32 noundef %busy_count.0.i, ptr noundef nonnull %switch.select3.i.i, i32 noundef %switch.select3.i35.i, ptr noundef %u.i, ptr noundef nonnull %ino_str.i) #16
  br label %check_for_busy_inodes.exit

check_for_busy_inodes.exit:                       ; preds = %if.end10.i, %if.then.i9
  %retval.0.i = phi i32 [ 0, %if.then.i9 ], [ -16, %if.end10.i ]
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %ino_str.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %spec.select = select i1 %tobool.not, i32 %retval.0.i, i32 %call
  ret i32 %spec.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @key_unlink(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_filesystem(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iget(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_find_any_alias(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @shrink_dcache_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_prune_aliases(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @fscrypt_msg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fscrypt_user_key_instantiate(ptr noundef %key, ptr nocapture noundef readnone %prep) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @key_payload_reserve(ptr noundef %key, i32 noundef 64) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fscrypt_user_key_describe(ptr nocapture noundef readonly %key, ptr noundef %m) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %description = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 16, i32 0, i32 4
  %0 = ptrtoint ptr %description to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %description, align 8
  tail call void @seq_puts(ptr noundef %m, ptr noundef %1) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @key_payload_reserve(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fscrypt_provisioning_key_preparse(ptr nocapture noundef %prep) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.key_preparsed_payload, ptr %prep, i32 0, i32 3
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %datalen = getelementptr inbounds %struct.key_preparsed_payload, ptr %prep, i32 0, i32 4
  %2 = ptrtoint ptr %datalen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %datalen, align 4
  %4 = add i32 %3, -73
  call void @__sanitizer_cov_trace_const_cmp4(i32 -49, i32 %4)
  %5 = icmp ult i32 %4, -49
  br i1 %5, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  %.off = add i32 %7, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %__reserved = getelementptr inbounds %struct.fscrypt_provisioning_key_payload, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %__reserved to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %__reserved, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %if.end9, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9:                                          ; preds = %if.end7
  %call = tail call ptr @kmemdup(ptr noundef %1, i32 noundef %3, i32 noundef 3264) #11
  %payload11 = getelementptr inbounds %struct.key_preparsed_payload, ptr %prep, i32 0, i32 2
  %10 = ptrtoint ptr %payload11 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call, ptr %payload11, align 8
  %tobool14.not = icmp eq ptr %call, null
  br i1 %tobool14.not, label %if.end9.cleanup_crit_edge, label %if.end16

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end16:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %datalen to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %datalen, align 4
  %quotalen = getelementptr inbounds %struct.key_preparsed_payload, ptr %prep, i32 0, i32 5
  %13 = ptrtoint ptr %quotalen to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %quotalen, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end9.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end16 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ], [ -12, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fscrypt_provisioning_key_free_preparse(ptr nocapture noundef readonly %prep) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %payload = getelementptr inbounds %struct.key_preparsed_payload, ptr %prep, i32 0, i32 2
  %0 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %payload, align 8
  tail call void @kfree_sensitive(ptr noundef %1) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_key_instantiate(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fscrypt_provisioning_key_destroy(ptr nocapture noundef readonly %key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 17
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  tail call void @kfree_sensitive(ptr noundef %2) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fscrypt_provisioning_key_describe(ptr noundef %key, ptr noundef %m) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %description = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 16, i32 0, i32 4
  %0 = ptrtoint ptr %description to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %description, align 8
  tail call void @seq_puts(ptr noundef %m, ptr noundef %1) #11
  %state.i.i = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 14
  %2 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load volatile i16, ptr %state.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !105
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %3)
  %cmp.i = icmp eq i16 %3, 1
  br i1 %cmp.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %4 = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 17
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %datalen = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 13
  %7 = ptrtoint ptr %datalen to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %datalen, align 2
  %conv = zext i16 %8 to i32
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %6, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.23, i32 noundef %conv, i32 noundef %10) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind readnone }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !24, !26, !28, !30, !31, !32, !34, !36, !38, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !62, !64, !66, !68, !70, !72, !74, !76}
!llvm.named.register.sp = !{!78}
!llvm.module.flags = !{!79, !80, !81, !82, !83, !84, !85, !86}
!llvm.ident = !{!87}

!0 = !{ptr @__ksymtab_fscrypt_ioctl_add_key, !1, !"__ksymtab_fscrypt_ioctl_add_key", i1 false, i1 false}
!1 = !{!"../fs/crypto/keyring.c", i32 689, i32 1}
!2 = !{ptr @fscrypt_add_test_dummy_key.test_key, !3, !"test_key", i1 false, i1 false}
!3 = !{!"../fs/crypto/keyring.c", i32 699, i32 12}
!4 = !{ptr @fscrypt_add_test_dummy_key.___done, !5, !"___done", i1 false, i1 false}
!5 = !{!"../fs/crypto/keyring.c", i32 703, i32 2}
!6 = !{ptr @fscrypt_add_test_dummy_key.___once_key, !5, !"___once_key", i1 false, i1 false}
!7 = !{ptr @__ksymtab_fscrypt_ioctl_remove_key, !8, !"__ksymtab_fscrypt_ioctl_remove_key", i1 false, i1 false}
!8 = !{!"../fs/crypto/keyring.c", i32 1011, i32 1}
!9 = !{ptr @__ksymtab_fscrypt_ioctl_remove_key_all_users, !10, !"__ksymtab_fscrypt_ioctl_remove_key_all_users", i1 false, i1 false}
!10 = !{!"../fs/crypto/keyring.c", i32 1019, i32 1}
!11 = !{ptr @__ksymtab_fscrypt_ioctl_get_key_status, !12, !"__ksymtab_fscrypt_ioctl_get_key_status", i1 false, i1 false}
!12 = !{!"../fs/crypto/keyring.c", i32 1106, i32 1}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/crypto/keyring.c", i32 178, i32 23}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/crypto/keyring.c", i32 96, i32 12}
!17 = !{ptr @key_type_fscrypt, !18, !"key_type_fscrypt", i1 false, i1 false}
!18 = !{!"../fs/crypto/keyring.c", i32 95, i32 24}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/crypto/keyring.c", i32 84, i32 16}
!21 = distinct !{null, !22, !"__already_done", i1 false, i1 false}
!22 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!23 = distinct !{null, !22, !"<string literal>", i1 false, i1 false}
!24 = distinct !{null, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!26 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!28 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/crypto/keyring.c", i32 438, i32 9}
!30 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @do_add_master_key.fscrypt_add_key_mutex, !29, !"fscrypt_add_key_mutex", i1 false, i1 false}
!32 = distinct !{null, !33, !"__warned", i1 false, i1 false}
!33 = !{!"../fs/crypto/keyring.c", i32 210, i32 5}
!34 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/crypto/keyring.c", i32 171, i32 23}
!36 = !{ptr @add_new_master_key.__key, !37, !"__key", i1 false, i1 false}
!37 = !{!"../fs/crypto/keyring.c", i32 353, i32 2}
!38 = !{ptr @.str.9, !37, !"<string literal>", i1 false, i1 false}
!39 = distinct !{null, !40, !"__warned", i1 false, i1 false}
!40 = !{!"../fs/crypto/keyring.c", i32 371, i32 38}
!41 = distinct !{null, !42, !"__warned", i1 false, i1 false}
!42 = !{!"../fs/crypto/keyring.c", i32 263, i32 5}
!43 = !{ptr @.str.10, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/crypto/keyring.c", i32 186, i32 23}
!45 = distinct !{null, !46, !"__warned", i1 false, i1 false}
!46 = !{!"../fs/crypto/keyring.c", i32 300, i32 8}
!47 = distinct !{null, !48, !"__warned", i1 false, i1 false}
!48 = !{!"../fs/crypto/keyring.c", i32 300, i32 25}
!49 = distinct !{null, !50, !"__warned", i1 false, i1 false}
!50 = !{!"../fs/crypto/keyring.c", i32 300, i32 40}
!51 = !{ptr @.str.13, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/crypto/keyring.c", i32 195, i32 23}
!53 = distinct !{null, !54, !"__warned", i1 false, i1 false}
!54 = !{!"../fs/crypto/keyring.c", i32 196, i32 29}
!55 = !{ptr @.str.14, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/crypto/keyring.c", i32 1003, i32 9}
!57 = !{ptr @.str.15, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/crypto/keyring.c", i32 840, i32 38}
!59 = !{ptr @.str.16, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../fs/crypto/keyring.c", i32 842, i32 2}
!61 = !{ptr @.str.17, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.18, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../fs/crypto/fscrypt_private.h", i32 526, i32 10}
!64 = !{ptr @.str.19, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../fs/crypto/fscrypt_private.h", i32 528, i32 10}
!66 = !{ptr @.str.20, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../fs/crypto/fscrypt_private.h", i32 530, i32 9}
!68 = !{ptr @.str.21, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../fs/crypto/keyring.c", i32 129, i32 12}
!70 = !{ptr @key_type_fscrypt_user, !71, !"key_type_fscrypt_user", i1 false, i1 false}
!71 = !{!"../fs/crypto/keyring.c", i32 128, i32 24}
!72 = !{ptr @.str.22, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../fs/crypto/keyring.c", i32 551, i32 12}
!74 = !{ptr @key_type_fscrypt_provisioning, !75, !"key_type_fscrypt_provisioning", i1 false, i1 false}
!75 = !{!"../fs/crypto/keyring.c", i32 550, i32 24}
!76 = !{ptr @.str.23, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../fs/crypto/keyring.c", i32 541, i32 17}
!78 = !{!"sp"}
!79 = !{i32 1, !"wchar_size", i32 2}
!80 = !{i32 1, !"min_enum_size", i32 4}
!81 = !{i32 8, !"branch-target-enforcement", i32 0}
!82 = !{i32 8, !"sign-return-address", i32 0}
!83 = !{i32 8, !"sign-return-address-all", i32 0}
!84 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!85 = !{i32 7, !"uwtable", i32 1}
!86 = !{i32 7, !"frame-pointer", i32 2}
!87 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!88 = !{i64 2154571289}
!89 = !{i64 2152786057, i64 2152786082}
!90 = !{!"branch_weights", i32 2000, i32 1}
!91 = !{i64 5277551}
!92 = !{i64 5277748}
!93 = !{i64 2152762981}
!94 = !{i64 2152786738, i64 2152786763}
!95 = !{i64 2149260756}
!96 = !{i64 2154562914}
!97 = !{i64 624279, i64 624303, i64 624324, i64 624341, i64 624358}
!98 = !{i64 2148302815}
!99 = !{i64 2148217279, i64 2148217311, i64 2148217340, i64 2148217374, i64 2148217405, i64 2148217428}
!100 = !{i64 2148913428}
!101 = !{i64 2148772096, i64 2148772101, i64 2148772122, i64 2148772166, i64 2148772200, i64 2148772221}
!102 = !{!"auto-init"}
!103 = !{!"branch_weights", i32 1, i32 2000}
!104 = !{i64 2154593658, i64 2154593938, i64 2154594272, i64 2154594606}
!105 = !{i64 2152197957}
