; ModuleID = '/llk/IR_all_yes/drivers/char/tpm/tpm-dev-common.c_pt.bc'
source_filename = "../drivers/char/tpm/tpm-dev-common.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.file_priv = type { ptr, ptr, %struct.mutex, %struct.timer_list, %struct.work_struct, %struct.work_struct, %struct.wait_queue_head, i32, i8, i8, [4096 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.50, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.rb_node = type { i32, ptr, ptr }
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
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.50 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.tpm_header = type <{ i16, i32, %union.anon.71 }>
%union.anon.71 = type { i32 }

@tpm_common_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&priv->buffer_mutex\00", [44 x i8] zeroinitializer }, align 32
@tpm_common_open.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"(&priv->user_read_timer)\00", [39 x i8] zeroinitializer }, align 32
@tpm_common_open.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(work_completion)(&priv->timeout_work)\00", [57 x i8] zeroinitializer }, align 32
@tpm_common_open.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(work_completion)(&priv->async_work)\00", [59 x i8] zeroinitializer }, align 32
@tpm_common_open.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&priv->async_wait\00", [46 x i8] zeroinitializer }, align 32
@tpm_dev_wq = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tpm_dev_wq\00", [21 x i8] zeroinitializer }, align 32
@user_reader_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.12, i32 86, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014TPM user space timeout is deprecated (pid=%d)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"user_reader_timeout\00", [44 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/char/tpm/tpm-dev-common.c\00", [62 x i8] zeroinitializer }, align 32
@user_reader_timeout._entry_ptr = internal global ptr @user_reader_timeout._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967201]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967201]
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 111, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 112, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 113, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 114, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 115, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant [11 x i8] c"tpm_dev_wq\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 22, i32 33 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 267, i32 31 }
@___asan_gen_.53 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.63 = private constant [37 x i8] c"../drivers/char/tpm/tpm-dev-common.c\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 85, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 230, i32 6 }
@___asan_gen_.69 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 214, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.72 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 174, i32 2 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @tpm_dev_common_exit, ptr @user_reader_timeout._entry, ptr @user_reader_timeout._entry_ptr, ptr @tpm_common_open.__key, ptr @.str, ptr @tpm_common_open.__key.1, ptr @.str.2, ptr @tpm_common_open.__key.3, ptr @.str.4, ptr @tpm_common_open.__key.5, ptr @.str.6, ptr @tpm_common_open.__key.7, ptr @.str.8, ptr @tpm_dev_wq, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm_common_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm_common_open.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm_common_open.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm_common_open.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm_common_open.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm_dev_wq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @user_reader_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tpm_common_open(ptr nocapture noundef writeonly %file, ptr noundef %chip, ptr noundef %priv, ptr noundef %space) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %chip, ptr %priv, align 4
  %space2 = getelementptr inbounds %struct.file_priv, ptr %priv, i32 0, i32 1
  %1 = ptrtoint ptr %space2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %space, ptr %space2, align 4
  %response_read = getelementptr inbounds %struct.file_priv, ptr %priv, i32 0, i32 8
  %2 = ptrtoint ptr %response_read to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %response_read, align 4
  %buffer_mutex = getelementptr inbounds %struct.file_priv, ptr %priv, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %buffer_mutex, ptr noundef nonnull @.str, ptr noundef nonnull @tpm_common_open.__key) #7
  %user_read_timer = getelementptr inbounds %struct.file_priv, ptr %priv, i32 0, i32 3
  tail call void @init_timer_key(ptr noundef %user_read_timer, ptr noundef nonnull @user_reader_timeout, i32 noundef 0, ptr noundef nonnull @.str.2, ptr noundef nonnull @tpm_common_open.__key.1) #7
  %timeout_work = getelementptr inbounds %struct.file_priv, ptr %priv, i32 0, i32 4
  tail call void @__init_work(ptr noundef %timeout_work, i32 noundef 0) #7
  %3 = ptrtoint ptr %timeout_work to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -64, ptr %timeout_work, align 4
  %lockdep_map = getelementptr inbounds %struct.file_priv, ptr %priv, i32 0, i32 4, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.4, ptr noundef nonnull @tpm_common_open.__key.3, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry9 = getelementptr inbounds %struct.file_priv, ptr %priv, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %entry9 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %entry9, ptr %entry9, align 4
  %prev.i = getelementptr inbounds %struct.file_priv, ptr %priv, i32 0, i32 4, i32 1, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %entry9, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.file_priv, ptr %priv, i32 0, i32 4, i32 2
  %6 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @tpm_timeout_work, ptr %func, align 4
  %async_work = getelementptr inbounds %struct.file_priv, ptr %priv, i32 0, i32 5
  tail call void @__init_work(ptr noundef %async_work, i32 noundef 0) #7
  %7 = ptrtoint ptr %async_work to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -64, ptr %async_work, align 4
  %lockdep_map18 = getelementptr inbounds %struct.file_priv, ptr %priv, i32 0, i32 5, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map18, ptr noundef nonnull @.str.6, ptr noundef nonnull @tpm_common_open.__key.5, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry20 = getelementptr inbounds %struct.file_priv, ptr %priv, i32 0, i32 5, i32 1
  %8 = ptrtoint ptr %entry20 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %entry20, ptr %entry20, align 4
  %prev.i42 = getelementptr inbounds %struct.file_priv, ptr %priv, i32 0, i32 5, i32 1, i32 1
  %9 = ptrtoint ptr %prev.i42 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %entry20, ptr %prev.i42, align 4
  %func22 = getelementptr inbounds %struct.file_priv, ptr %priv, i32 0, i32 5, i32 2
  %10 = ptrtoint ptr %func22 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @tpm_dev_async_work, ptr %func22, align 4
  %async_wait = getelementptr inbounds %struct.file_priv, ptr %priv, i32 0, i32 6
  tail call void @__init_waitqueue_head(ptr noundef %async_wait, ptr noundef nonnull @.str.8, ptr noundef nonnull @tpm_common_open.__key.7) #7
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %11 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %priv, ptr %private_data, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @user_reader_timeout(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !32) #7
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %tgid.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 69
  %4 = ptrtoint ptr %tgid.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tgid.i, align 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %5) #10
  %timeout_work = getelementptr i8, ptr %t, i32 48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %6 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %6, ptr noundef %timeout_work) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tpm_timeout_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %buffer_mutex = getelementptr i8, ptr %work, i32 -140
  tail call void @mutex_lock_nested(ptr noundef %buffer_mutex, i32 noundef 0) #7
  %response_read = getelementptr i8, ptr %work, i32 144
  %0 = ptrtoint ptr %response_read to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %response_read, align 4
  %response_length = getelementptr i8, ptr %work, i32 140
  %1 = ptrtoint ptr %response_length to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %response_length, align 4
  %data_buffer = getelementptr i8, ptr %work, i32 146
  %2 = call ptr @memset(ptr %data_buffer, i32 0, i32 4096)
  tail call void @mutex_unlock(ptr noundef %buffer_mutex) #7
  %async_wait = getelementptr i8, ptr %work, i32 88
  tail call void @__wake_up(ptr noundef %async_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tpm_dev_async_work(ptr noundef %work) #0 align 64 {
entry:
  %len.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -192
  %buffer_mutex = getelementptr i8, ptr %work, i32 -184
  tail call void @mutex_lock_nested(ptr noundef %buffer_mutex, i32 noundef 0) #7
  %command_enqueued = getelementptr i8, ptr %work, i32 101
  %0 = ptrtoint ptr %command_enqueued to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %command_enqueued, align 1
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr, align 4
  %call = tail call i32 @tpm_try_get_ops(ptr noundef %2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %response_length = getelementptr i8, ptr %work, i32 96
  %3 = ptrtoint ptr %response_length to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call, ptr %response_length, align 4
  br label %out

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  %space = getelementptr i8, ptr %work, i32 -188
  %6 = ptrtoint ptr %space to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %space, align 4
  %data_buffer = getelementptr i8, ptr %work, i32 102
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i) #7
  %call.i = tail call i32 @tpm2_prepare_space(ptr noundef %5, ptr noundef %7, ptr noundef %data_buffer, i32 noundef 4096) #7
  %8 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i, label %if.end.tpm_dev_transmit.exit_crit_edge [
    i32 -95, label %tpm_dev_transmit.exit.thread
    i32 0, label %if.end2.i
  ]

if.end.tpm_dev_transmit.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %tpm_dev_transmit.exit

tpm_dev_transmit.exit.thread:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %length.i = getelementptr i8, ptr %work, i32 104
  %9 = ptrtoint ptr %length.i to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 10, ptr %length.i, align 1
  %10 = ptrtoint ptr %data_buffer to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 -32767, ptr %data_buffer, align 1
  %11 = getelementptr i8, ptr %work, i32 108
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 721219, ptr %11, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #7
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr, align 4
  tail call void @tpm_put_ops(ptr noundef %14) #7
  br label %if.then4

if.end2.i:                                        ; preds = %if.end
  %call3.i = tail call i32 @tpm_transmit(ptr noundef %5, ptr noundef %data_buffer, i32 noundef 4096) #7
  %15 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call3.i, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call3.i)
  %tobool7.not.i = icmp sgt i32 %call3.i, -1
  br i1 %tobool7.not.i, label %out_rc.i, label %tpm_dev_transmit.exit.thread26

tpm_dev_transmit.exit.thread26:                   ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #7
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr, align 4
  tail call void @tpm_put_ops(ptr noundef %17) #7
  br label %out

out_rc.i:                                         ; preds = %if.end2.i
  %call9.i = call i32 @tpm2_commit_space(ptr noundef %5, ptr noundef %7, ptr noundef %data_buffer, ptr noundef nonnull %len.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool11.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool11.not.i, label %cond.false.i, label %out_rc.i.tpm_dev_transmit.exit_crit_edge

out_rc.i.tpm_dev_transmit.exit_crit_edge:         ; preds = %out_rc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tpm_dev_transmit.exit

cond.false.i:                                     ; preds = %out_rc.i
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len.i, align 4
  br label %tpm_dev_transmit.exit

tpm_dev_transmit.exit:                            ; preds = %cond.false.i, %out_rc.i.tpm_dev_transmit.exit_crit_edge, %if.end.tpm_dev_transmit.exit_crit_edge
  %cond.i = phi i32 [ %19, %cond.false.i ], [ %call9.i, %out_rc.i.tpm_dev_transmit.exit_crit_edge ], [ %call.i, %if.end.tpm_dev_transmit.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #7
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr, align 4
  call void @tpm_put_ops(ptr noundef %21) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %cmp = icmp sgt i32 %cond.i, 0
  br i1 %cmp, label %tpm_dev_transmit.exit.if.then4_crit_edge, label %tpm_dev_transmit.exit.out_crit_edge

tpm_dev_transmit.exit.out_crit_edge:              ; preds = %tpm_dev_transmit.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

tpm_dev_transmit.exit.if.then4_crit_edge:         ; preds = %tpm_dev_transmit.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4

if.then4:                                         ; preds = %tpm_dev_transmit.exit.if.then4_crit_edge, %tpm_dev_transmit.exit.thread
  %cond.i25 = phi i32 [ 10, %tpm_dev_transmit.exit.thread ], [ %cond.i, %tpm_dev_transmit.exit.if.then4_crit_edge ]
  %response_length5 = getelementptr i8, ptr %work, i32 96
  %22 = ptrtoint ptr %response_length5 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %cond.i25, ptr %response_length5, align 4
  %user_read_timer = getelementptr i8, ptr %work, i32 -92
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %23 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %23, 12000
  %call6 = call i32 @mod_timer(ptr noundef %user_read_timer, i32 noundef %add) #7
  br label %out

out:                                              ; preds = %if.then4, %tpm_dev_transmit.exit.out_crit_edge, %tpm_dev_transmit.exit.thread26, %if.then
  call void @mutex_unlock(ptr noundef %buffer_mutex) #7
  %async_wait = getelementptr i8, ptr %work, i32 44
  call void @__wake_up(ptr noundef %async_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tpm_common_read(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %size, ptr nocapture noundef %off) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %buffer_mutex = getelementptr inbounds %struct.file_priv, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %buffer_mutex, i32 noundef 0) #7
  %response_length = getelementptr inbounds %struct.file_priv, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %response_length to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %response_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.then19_crit_edge, label %if.then

entry.if.then19_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then19

if.then:                                          ; preds = %entry
  %response_read = getelementptr inbounds %struct.file_priv, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %response_read to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %response_read, align 4
  %5 = tail call i32 @llvm.smin.i32(i32 %3, i32 %size)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp2 = icmp slt i32 %5, 1
  br i1 %cmp2, label %if.then.if.then19.sink.split_crit_edge, label %if.end

if.then.if.then19.sink.split_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then19.sink.split

if.end:                                           ; preds = %if.then
  %data_buffer = getelementptr inbounds %struct.file_priv, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %off to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %off, align 8
  %idx.ext = trunc i64 %7 to i32
  %add.ptr = getelementptr i8, ptr %data_buffer, i32 %idx.ext
  tail call void @__check_object_size(ptr noundef %add.ptr, i32 noundef %5, i1 noundef zeroext true) #7
  tail call void @__might_fault(ptr noundef nonnull @.str.15, i32 noundef 174) #7
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i, label %if.end.if.then6_crit_edge, label %if.end.i.i

if.end.if.then6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6

if.end.i.i:                                       ; preds = %if.end
  %8 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %5, i32 -1226833920) #11, !srcloc !42
  %asmresult.i.i = extractvalue { i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.if.then6_crit_edge

if.end.i.i.if.then6_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr, i32 noundef %5) #7
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef %add.ptr, i32 noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool5.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool5.not, label %out, label %copy_to_user.exit.if.then6_crit_edge

copy_to_user.exit.if.then6_crit_edge:             ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6

if.then6:                                         ; preds = %copy_to_user.exit.if.then6_crit_edge, %if.end.i.i.if.then6_crit_edge, %if.end.if.then6_crit_edge
  %9 = call ptr @memset(ptr %data_buffer, i32 0, i32 4096)
  br label %if.then19.sink.split

out:                                              ; preds = %copy_to_user.exit
  %10 = ptrtoint ptr %off to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %off, align 8
  %idx.ext12 = trunc i64 %11 to i32
  %add.ptr13 = getelementptr i8, ptr %data_buffer, i32 %idx.ext12
  %12 = call ptr @memset(ptr %add.ptr13, i32 0, i32 %5)
  %13 = ptrtoint ptr %response_length to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %response_length, align 4
  %sub = sub i32 %14, %5
  store i32 %sub, ptr %response_length, align 4
  %conv53 = zext i32 %5 to i64
  %15 = load i64, ptr %off, align 8
  %add = add i64 %15, %conv53
  store i64 %add, ptr %off, align 8
  %.pr = load i32, ptr %response_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool18.not = icmp eq i32 %.pr, 0
  br i1 %tobool18.not, label %out.if.then19_crit_edge, label %out.if.end22_crit_edge

out.if.end22_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

out.if.then19_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then19

if.then19.sink.split:                             ; preds = %if.then6, %if.then.if.then19.sink.split_crit_edge
  %ret_size.052.ph = phi i32 [ -14, %if.then6 ], [ %5, %if.then.if.then19.sink.split_crit_edge ]
  %16 = ptrtoint ptr %response_length to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %response_length, align 4
  br label %if.then19

if.then19:                                        ; preds = %if.then19.sink.split, %out.if.then19_crit_edge, %entry.if.then19_crit_edge
  %ret_size.052 = phi i32 [ %5, %out.if.then19_crit_edge ], [ 0, %entry.if.then19_crit_edge ], [ %ret_size.052.ph, %if.then19.sink.split ]
  %17 = ptrtoint ptr %off to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 0, ptr %off, align 8
  %user_read_timer = getelementptr inbounds %struct.file_priv, ptr %1, i32 0, i32 3
  %call20 = tail call i32 @del_timer_sync(ptr noundef %user_read_timer) #7
  %timeout_work = getelementptr inbounds %struct.file_priv, ptr %1, i32 0, i32 4
  %call21 = tail call zeroext i1 @flush_work(ptr noundef %timeout_work) #7
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %out.if.end22_crit_edge
  %ret_size.051 = phi i32 [ %ret_size.052, %if.then19 ], [ %5, %out.if.end22_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %buffer_mutex) #7
  ret i32 %ret_size.051
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tpm_common_write(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %size, ptr nocapture noundef writeonly %off) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %size)
  %cmp = icmp ugt i32 %size, 4096
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %buffer_mutex = getelementptr inbounds %struct.file_priv, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %buffer_mutex, i32 noundef 0) #7
  %response_read = getelementptr inbounds %struct.file_priv, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %response_read to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %response_read, align 4, !range !43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end.lor.lhs.false_crit_edge

if.end.lor.lhs.false_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.end
  %response_length = getelementptr inbounds %struct.file_priv, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %response_length to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %response_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not = icmp eq i32 %5, 0
  br i1 %tobool1.not, label %land.lhs.true.lor.lhs.false_crit_edge, label %land.lhs.true.cleanup.sink.split_crit_edge

land.lhs.true.cleanup.sink.split_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.lor.lhs.false_crit_edge, %if.end.lor.lhs.false_crit_edge
  %command_enqueued = getelementptr inbounds %struct.file_priv, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %command_enqueued to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %command_enqueued, align 1, !range !43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not = icmp eq i8 %7, 0
  br i1 %tobool2.not, label %if.end4, label %lor.lhs.false.cleanup.sink.split_crit_edge

lor.lhs.false.cleanup.sink.split_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end4:                                          ; preds = %lor.lhs.false
  %data_buffer = getelementptr inbounds %struct.file_priv, ptr %1, i32 0, i32 10
  tail call void @__check_object_size(ptr noundef %data_buffer, i32 noundef %size, i1 noundef zeroext false) #7
  tail call void @__might_fault(ptr noundef nonnull @.str.15, i32 noundef 156) #7
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i, label %if.end4.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.end4.if.end.i.i_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.end4
  %8 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %size, i32 -1226833920) #11, !srcloc !44
  %asmresult.i.i = extractvalue { i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !45

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %data_buffer, i32 noundef %size) #7
  %9 = tail call i32 @llvm.read_register.i32(metadata !32) #7
  %and.i.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 4
  %11 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #5, !srcloc !46
  %and.i.i.i.i = and i32 %11, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #7, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %data_buffer, ptr noundef %buf, i32 noundef %size) #7
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #7, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.end4.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %size, %if.end4.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %size, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end7, label %if.then11.i.i, !prof !45

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i = sub i32 %size, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %data_buffer, i32 %sub.i.i
  %12 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup.sink.split

if.end7:                                          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %size)
  %cmp8 = icmp ult i32 %size, 6
  br i1 %cmp8, label %if.end7.cleanup.sink.split_crit_edge, label %lor.lhs.false9

if.end7.cleanup.sink.split_crit_edge:             ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

lor.lhs.false9:                                   ; preds = %if.end7
  %add.ptr = getelementptr %struct.file_priv, ptr %1, i32 0, i32 10, i32 2
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %size)
  %cmp12 = icmp ugt i32 %14, %size
  br i1 %cmp12, label %lor.lhs.false9.cleanup.sink.split_crit_edge, label %if.end14

lor.lhs.false9.cleanup.sink.split_crit_edge:      ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end14:                                         ; preds = %lor.lhs.false9
  %response_length15 = getelementptr inbounds %struct.file_priv, ptr %1, i32 0, i32 7
  %15 = ptrtoint ptr %response_length15 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %response_length15, align 4
  %16 = ptrtoint ptr %response_read to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %response_read, align 4
  %17 = ptrtoint ptr %off to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 0, ptr %off, align 8
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %18 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %f_flags, align 4
  %and = and i32 %19, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool17.not = icmp eq i32 %and, 0
  br i1 %tobool17.not, label %if.end22, label %if.then18

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %command_enqueued to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %command_enqueued, align 1
  %21 = load ptr, ptr @tpm_dev_wq, align 4
  %async_work = getelementptr inbounds %struct.file_priv, ptr %1, i32 0, i32 5
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %21, ptr noundef %async_work) #7
  br label %cleanup.sink.split

if.end22:                                         ; preds = %if.end14
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %call23 = tail call i32 @tpm_try_get_ops(ptr noundef %23) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end22.cleanup.sink.split_crit_edge

if.end22.cleanup.sink.split_crit_edge:            ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end26:                                         ; preds = %if.end22
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %space = getelementptr inbounds %struct.file_priv, ptr %1, i32 0, i32 1
  %26 = ptrtoint ptr %space to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %space, align 4
  %call30 = tail call fastcc i32 @tpm_dev_transmit(ptr noundef %25, ptr noundef %27, ptr noundef %data_buffer)
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  tail call void @tpm_put_ops(ptr noundef %29) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp32 = icmp sgt i32 %call30, 0
  br i1 %cmp32, label %if.then33, label %if.end26.cleanup.sink.split_crit_edge

if.end26.cleanup.sink.split_crit_edge:            ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then33:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %response_length15 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %call30, ptr %response_length15, align 4
  %user_read_timer = getelementptr inbounds %struct.file_priv, ptr %1, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %31 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %31, 12000
  %call35 = tail call i32 @mod_timer(ptr noundef %user_read_timer, i32 noundef %add) #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then33, %if.end26.cleanup.sink.split_crit_edge, %if.end22.cleanup.sink.split_crit_edge, %if.then18, %lor.lhs.false9.cleanup.sink.split_crit_edge, %if.end7.cleanup.sink.split_crit_edge, %if.then11.i.i, %lor.lhs.false.cleanup.sink.split_crit_edge, %land.lhs.true.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %size, %if.then18 ], [ %size, %if.then33 ], [ %call30, %if.end26.cleanup.sink.split_crit_edge ], [ -16, %lor.lhs.false.cleanup.sink.split_crit_edge ], [ -16, %land.lhs.true.cleanup.sink.split_crit_edge ], [ -22, %lor.lhs.false9.cleanup.sink.split_crit_edge ], [ -22, %if.end7.cleanup.sink.split_crit_edge ], [ -32, %if.end22.cleanup.sink.split_crit_edge ], [ -14, %if.then11.i.i ]
  tail call void @mutex_unlock(ptr noundef %buffer_mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -7, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpm_try_get_ops(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tpm_dev_transmit(ptr noundef %chip, ptr noundef %space, ptr noundef %buf) unnamed_addr #0 align 64 {
entry:
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #7
  %call = tail call i32 @tpm2_prepare_space(ptr noundef %chip, ptr noundef %space, ptr noundef %buf, i32 noundef 4096) #7
  %0 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %call, label %entry.cond.end_crit_edge [
    i32 -95, label %if.end.thread
    i32 0, label %if.end2
  ]

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %length = getelementptr inbounds %struct.tpm_header, ptr %buf, i32 0, i32 1
  %1 = ptrtoint ptr %length to i32
  call void @__asan_storeN_noabort(i32 %1, i32 4)
  store i32 10, ptr %length, align 1
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_storeN_noabort(i32 %2, i32 2)
  store i16 -32767, ptr %buf, align 1
  %3 = getelementptr inbounds %struct.tpm_header, ptr %buf, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 721219, ptr %3, align 1
  br label %cond.end

if.end2:                                          ; preds = %entry
  %call3 = tail call i32 @tpm_transmit(ptr noundef %chip, ptr noundef %buf, i32 noundef 4096) #7
  %5 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call3, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call3)
  %tobool7.not = icmp sgt i32 %call3, -1
  br i1 %tobool7.not, label %out_rc, label %if.end2.cond.end_crit_edge

if.end2.cond.end_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

out_rc:                                           ; preds = %if.end2
  %call9 = call i32 @tpm2_commit_space(ptr noundef %chip, ptr noundef %space, ptr noundef %buf, ptr noundef nonnull %len) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool11.not = icmp eq i32 %call9, 0
  br i1 %tobool11.not, label %cond.false, label %out_rc.cond.end_crit_edge

out_rc.cond.end_crit_edge:                        ; preds = %out_rc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.false:                                       ; preds = %out_rc
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %out_rc.cond.end_crit_edge, %if.end2.cond.end_crit_edge, %if.end.thread, %entry.cond.end_crit_edge
  %cond = phi i32 [ %7, %cond.false ], [ %call9, %out_rc.cond.end_crit_edge ], [ 10, %if.end.thread ], [ %call3, %if.end2.cond.end_crit_edge ], [ %call, %entry.cond.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #7
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tpm_put_ops(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tpm_common_poll(ptr noundef %file, ptr noundef %wait) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %async_wait = getelementptr inbounds %struct.file_priv, ptr %1, i32 0, i32 6
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %entry.poll_wait.exit_crit_edge, label %land.lhs.true.i

entry.poll_wait.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  %tobool3.not.i = icmp eq ptr %async_wait, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %3(ptr noundef %file, ptr noundef nonnull %async_wait, ptr noundef nonnull %wait) #7
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %entry.poll_wait.exit_crit_edge
  %buffer_mutex = getelementptr inbounds %struct.file_priv, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %buffer_mutex, i32 noundef 0) #7
  %response_length = getelementptr inbounds %struct.file_priv, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %response_length to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %response_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %. = select i1 %tobool.not, i32 260, i32 65
  tail call void @mutex_unlock(ptr noundef %buffer_mutex) #7
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tpm_common_release(ptr nocapture noundef writeonly %file, ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %async_work = getelementptr inbounds %struct.file_priv, ptr %priv, i32 0, i32 5
  %call = tail call zeroext i1 @flush_work(ptr noundef %async_work) #7
  %user_read_timer = getelementptr inbounds %struct.file_priv, ptr %priv, i32 0, i32 3
  %call1 = tail call i32 @del_timer_sync(ptr noundef %user_read_timer) #7
  %timeout_work = getelementptr inbounds %struct.file_priv, ptr %priv, i32 0, i32 4
  %call2 = tail call zeroext i1 @flush_work(ptr noundef %timeout_work) #7
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %private_data, align 4
  %response_length = getelementptr inbounds %struct.file_priv, ptr %priv, i32 0, i32 7
  %1 = ptrtoint ptr %response_length to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %response_length, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tpm_dev_common_init() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.9, i32 noundef 8, i32 noundef 0) #7
  store ptr %call, ptr @tpm_dev_wq, align 4
  %tobool.not = icmp eq ptr %call, null
  %cond = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @tpm_dev_common_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = load ptr, ptr @tpm_dev_wq, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @destroy_workqueue(ptr noundef nonnull %0) #7
  store ptr null, ptr @tpm_dev_wq, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpm2_prepare_space(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpm_transmit(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpm2_commit_space(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !12, !14, !15, !17, !19, !21, !22, !23, !24, !25, !27, !28, !30}
!llvm.named.register.sp = !{!32}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !{ptr @tpm_common_open.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/char/tpm/tpm-dev-common.c", i32 111, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @tpm_common_open.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/char/tpm/tpm-dev-common.c", i32 112, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @tpm_common_open.__key.3, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/char/tpm/tpm-dev-common.c", i32 113, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @tpm_common_open.__key.5, !10, !"__key", i1 false, i1 false}
!10 = !{!"../drivers/char/tpm/tpm-dev-common.c", i32 114, i32 2}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @tpm_common_open.__key.7, !13, !"__key", i1 false, i1 false}
!13 = !{!"../drivers/char/tpm/tpm-dev-common.c", i32 115, i32 2}
!14 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/char/tpm/tpm-dev-common.c", i32 267, i32 31}
!17 = !{ptr @tpm_dev_wq, !18, !"tpm_dev_wq", i1 false, i1 false}
!18 = !{!"../drivers/char/tpm/tpm-dev-common.c", i32 22, i32 33}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/char/tpm/tpm-dev-common.c", i32 85, i32 2}
!21 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @user_reader_timeout._entry, !20, !"_entry", i1 false, i1 false}
!24 = !{ptr @user_reader_timeout._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!25 = distinct !{null, !26, !"__already_done", i1 false, i1 false}
!26 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!27 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!32 = !{!"sp"}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 1, !"min_enum_size", i32 4}
!35 = !{i32 8, !"branch-target-enforcement", i32 0}
!36 = !{i32 8, !"sign-return-address", i32 0}
!37 = !{i32 8, !"sign-return-address-all", i32 0}
!38 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!39 = !{i32 7, !"uwtable", i32 1}
!40 = !{i32 7, !"frame-pointer", i32 2}
!41 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!42 = !{i64 2152174374, i64 2152174399}
!43 = !{i8 0, i8 2}
!44 = !{i64 2152173693, i64 2152173718}
!45 = !{!"branch_weights", i32 2000, i32 1}
!46 = !{i64 4669248}
!47 = !{i64 4669445}
!48 = !{i64 2152154678}
