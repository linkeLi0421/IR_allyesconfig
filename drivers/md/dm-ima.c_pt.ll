; ModuleID = '/llk/IR_all_yes/drivers/md/dm-ima.c_pt.bc'
source_filename = "../drivers/md/dm-ima.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mapped_device = type { %struct.mutex, %struct.mutex, %struct.list_head, ptr, i32, %struct.mutex, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, [16 x i8], ptr, ptr, %struct.work_struct, %struct.wait_queue_head, %struct.spinlock, %struct.bio_list, ptr, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.spinlock, i32, %struct.bio_set, %struct.bio_set, ptr, %struct.hd_geometry, %struct.dm_kobject_holder, i32, %struct.semaphore, %struct.mutex, %struct.dm_stats, ptr, i8, %struct.srcu_struct, i32, ptr, %struct.dm_ima_measurements }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.bio_list = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.hlist_node = type { ptr, ptr }
%struct.hd_geometry = type { i8, i8, i16, i32 }
%struct.dm_kobject_holder = type { %struct.kobject, %struct.completion }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dm_stats = type { %struct.mutex, %struct.list_head, ptr, i64, i32 }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.dm_ima_measurements = type { %struct.dm_ima_device_table_metadata, %struct.dm_ima_device_table_metadata, i32 }
%struct.dm_ima_device_table_metadata = type { ptr, i32, i32, ptr, i32 }
%struct.crypto_shash = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.dm_target = type { ptr, ptr, i64, i64, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i8 }
%struct.target_type = type { i64, ptr, ptr, [3 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.58, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.21 }
%struct.llist_node = type { ptr }
%union.anon.21 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.23 }
%union.anon.23 = type { %struct.anon.24 }
%struct.anon.24 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.58 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }

@__const.dm_ima_measure_on_table_load.table_load_event_name = private unnamed_addr constant [14 x i8] c"dm_table_load\00", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sha256\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dm_version=4.45.0;\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"target_index=%d,target_begin=%llu,target_len=%llu,\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s:\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%02x\00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%sname=%s,uuid=%s;device_resume=no_data;\00", [55 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dm_device_resume\00", [47 x i8] zeroinitializer }, align 32
@__const.dm_ima_measure_on_device_remove.active_table_str = private unnamed_addr constant [19 x i8] c"active_table_hash=\00", align 1
@__const.dm_ima_measure_on_device_remove.device_active_str = private unnamed_addr constant [24 x i8] c"device_active_metadata=\00", align 1
@__const.dm_ima_measure_on_device_remove.device_inactive_str = private unnamed_addr constant [26 x i8] c"device_inactive_metadata=\00", align 1
@__const.dm_ima_measure_on_device_remove.remove_all_str = private unnamed_addr constant [12 x i8] c"remove_all=\00", align 1
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%sname=%s,uuid=%s;device_remove=no_data;\00", [55 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dm_device_remove\00", [47 x i8] zeroinitializer }, align 32
@__const.dm_ima_measure_on_table_clear.inactive_str = private unnamed_addr constant [21 x i8] c"inactive_table_hash=\00", align 1
@.str.13 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%sname=%s,uuid=%s;table_clear=no_data;\00", [57 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dm_table_clear\00", [17 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s%snew_name=%s,new_uuid=%s;%s\00", [33 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dm_device_rename\00", [47 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.17 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"name=%s,uuid=%s,major=%d,minor=%d,minor_count=%d,num_targets=%u;\00", [63 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"device-mapper\00", [18 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"current_device_capacity=%llu;\00", [34 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 44, i64 59, i64 61, i64 92]
@__sancov_gen_cov_switch_values.20 = internal global [6 x i64] [i64 4, i64 8, i64 44, i64 59, i64 61, i64 92]
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 216, i32 27 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 230, i32 22 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 249, i32 6 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 338, i32 48 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 341, i32 59 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 456, i32 6 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 466, i32 22 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 569, i32 6 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 583, i32 22 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 655, i32 6 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 664, i32 22 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 736, i32 5 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 739, i32 22 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 120, i32 5 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 140, i32 28 }
@___asan_gen_.66 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.67 = private constant [23 x i8] c"../drivers/md/dm-ima.c\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 161, i32 50 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @dm_ima_reset_data(ptr nocapture noundef writeonly %md) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ima = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 41
  %0 = call ptr @memset(ptr %ima, i32 0, i32 40)
  %dm_version_str_len = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 41, i32 2
  %1 = ptrtoint ptr %dm_version_str_len to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 18, ptr %dm_version_str_len, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dm_ima_measure_on_table_load(ptr noundef %table, i32 noundef %status_flags) local_unnamed_addr #1 align 64 {
entry:
  %device_data_buf = alloca ptr, align 4
  %__shash_desc = alloca [376 x i8], align 8
  %table_load_event_name = alloca [14 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %device_data_buf) #10
  %0 = ptrtoint ptr %device_data_buf to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %device_data_buf, align 4
  call void @llvm.lifetime.start.p0(i64 376, ptr nonnull %__shash_desc) #10
  %1 = call ptr @memset(ptr %__shash_desc, i32 255, i32 376)
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %table_load_event_name) #10
  %2 = call ptr @memcpy(ptr %table_load_event_name, ptr @__const.dm_ima_measure_on_table_load.table_load_event_name, i32 14)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 4096) #13
  %tobool1.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool1.not, label %entry.cleanup162_crit_edge, label %if.end

entry.cleanup162_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup162

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i294 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 128) #13
  %tobool4.not = icmp eq ptr %call7.i.i.i294, null
  br i1 %tobool4.not, label %if.end.error_crit_edge, label %if.end6

if.end.error_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end6:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i295 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 2048) #13
  %tobool9.not = icmp eq ptr %call7.i.i.i295, null
  br i1 %tobool9.not, label %if.end6.error_crit_edge, label %if.end11

if.end6.error_crit_edge:                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end11:                                         ; preds = %if.end6
  %call12 = tail call i32 @dm_table_get_num_targets(ptr noundef %table) #10
  %6 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %table, align 4
  %call14 = call fastcc i32 @dm_ima_alloc_and_copy_device_data(ptr noundef %7, ptr noundef nonnull %device_data_buf, i32 noundef %call12, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end11.error_crit_edge

if.end11.error_crit_edge:                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end17:                                         ; preds = %if.end11
  %call18 = tail call ptr @crypto_alloc_shash(ptr noundef nonnull @.str, i32 noundef 0, i32 noundef 0) #10
  %cmp.i = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end17.error_crit_edge, label %if.end21

if.end17.error_crit_edge:                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end21:                                         ; preds = %if.end17
  %8 = ptrtoint ptr %__shash_desc to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call18, ptr %__shash_desc, align 8
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_shash, ptr %call18, i32 0, i32 2, i32 3
  %9 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %__crt_alg.i.i, align 4
  %digestsize.i = getelementptr i8, ptr %10, i32 -128
  %11 = ptrtoint ptr %digestsize.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %digestsize.i, align 128
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %12, i32 noundef 3520) #14
  %tobool26.not = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool26.not, label %if.end21.error_crit_edge, label %if.end28

if.end21.error_crit_edge:                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end28:                                         ; preds = %if.end21
  %13 = ptrtoint ptr %__shash_desc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %__shash_desc, align 8
  %base.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %base.i.i.i, align 128
  %and.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %crypto_shash_init.exit, label %if.end28.error_crit_edge

if.end28.error_crit_edge:                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

crypto_shash_init.exit:                           ; preds = %if.end28
  %__crt_alg.i.i297 = getelementptr inbounds %struct.crypto_shash, ptr %14, i32 0, i32 2, i32 3
  %17 = ptrtoint ptr %__crt_alg.i.i297 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %__crt_alg.i.i297, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %18, i32 -256
  %19 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr.i.i.i, align 128
  %call3.i = call i32 %20(ptr noundef nonnull %__shash_desc) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool30.not = icmp eq i32 %call3.i, 0
  br i1 %tobool30.not, label %if.end32, label %crypto_shash_init.exit.error_crit_edge

crypto_shash_init.exit.error_crit_edge:           ; preds = %crypto_shash_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end32:                                         ; preds = %crypto_shash_init.exit
  %21 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %table, align 4
  %dm_version_str_len = getelementptr inbounds %struct.mapped_device, ptr %22, i32 0, i32 41, i32 2
  %23 = ptrtoint ptr %dm_version_str_len to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dm_version_str_len, align 8
  %25 = call ptr @memcpy(ptr %call7.i.i.i, ptr @.str.1, i32 %24)
  %26 = load i32, ptr %dm_version_str_len, align 8
  %27 = ptrtoint ptr %device_data_buf to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %device_data_buf, align 4
  %call37 = call i32 @strlen(ptr noundef %28) #15
  %add.ptr38 = getelementptr i8, ptr %call7.i.i.i, i32 %26
  %29 = call ptr @memcpy(ptr %add.ptr38, ptr %28, i32 %call37)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp346.not = icmp eq i32 %call12, 0
  br i1 %cmp346.not, label %if.end32.if.end88_crit_edge, label %for.body.preheader

if.end32.if.end88_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end88

for.body.preheader:                               ; preds = %if.end32
  %add39 = add i32 %call37, %26
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.0348 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %l.0347 = phi i32 [ %add79.pre-phi, %for.inc.for.body_crit_edge ], [ %add39, %for.body.preheader ]
  %call40 = call ptr @dm_table_get_target(ptr noundef %table, i32 noundef %i.0348) #10
  %tobool41.not = icmp eq ptr %call40, null
  br i1 %tobool41.not, label %for.body.error_crit_edge, label %if.end43

for.body.error_crit_edge:                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end43:                                         ; preds = %for.body
  %begin = getelementptr inbounds %struct.dm_target, ptr %call40, i32 0, i32 2
  %30 = ptrtoint ptr %begin to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %begin, align 8
  %len = getelementptr inbounds %struct.dm_target, ptr %call40, i32 0, i32 3
  %32 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %len, align 8
  %call44 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %call7.i.i.i294, i32 noundef 128, ptr noundef nonnull @.str.2, i32 noundef %i.0348, i64 noundef %31, i64 noundef %33) #10
  %call45 = call i32 @strlen(ptr noundef nonnull %call7.i.i.i294) #15
  %type46 = getelementptr inbounds %struct.dm_target, ptr %call40, i32 0, i32 1
  %34 = ptrtoint ptr %type46 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %type46, align 4
  %status = getelementptr inbounds %struct.target_type, ptr %35, i32 0, i32 16
  %36 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %status, align 4
  %tobool47.not = icmp eq ptr %37, null
  br i1 %tobool47.not, label %if.else, label %if.then48

if.then48:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  call void %37(ptr noundef nonnull %call40, i32 noundef 2, i32 noundef %status_flags, ptr noundef nonnull %call7.i.i.i295, i32 noundef 2048) #10
  br label %if.end51

if.else:                                          ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %call7.i.i.i295 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %call7.i.i.i295, align 8
  br label %if.end51

if.end51:                                         ; preds = %if.else, %if.then48
  %call52 = call i32 @strlen(ptr noundef nonnull %call7.i.i.i295) #15
  %add53 = add i32 %call45, %l.0347
  %add54 = add i32 %add53, %call52
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %add54)
  %cmp55 = icmp ugt i32 %add54, 4095
  br i1 %cmp55, label %if.then58, label %if.end51.for.inc_crit_edge, !prof !50

if.end51.for.inc_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then58:                                        ; preds = %if.end51
  %call1.i = call i32 @ima_measure_critical_data(ptr noundef nonnull @.str.18, ptr noundef nonnull %table_load_event_name, ptr noundef nonnull %call7.i.i.i, i32 noundef %l.0347, i1 noundef zeroext false, ptr noundef null, i32 noundef 0) #10
  %call61 = call i32 @crypto_shash_update(ptr noundef nonnull %__shash_desc, ptr noundef nonnull %call7.i.i.i, i32 noundef %l.0347) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %cmp62 = icmp slt i32 %call61, 0
  br i1 %cmp62, label %if.then58.error_crit_edge, label %if.end64

if.then58.error_crit_edge:                        ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end64:                                         ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #12
  %39 = call ptr @memset(ptr %call7.i.i.i, i32 0, i32 4096)
  %40 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %table, align 4
  %dm_version_str_len68 = getelementptr inbounds %struct.mapped_device, ptr %41, i32 0, i32 41, i32 2
  %42 = ptrtoint ptr %dm_version_str_len68 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dm_version_str_len68, align 8
  %44 = call ptr @memcpy(ptr %call7.i.i.i, ptr @.str.1, i32 %43)
  %45 = load i32, ptr %dm_version_str_len68, align 8
  %add.ptr73 = getelementptr i8, ptr %call7.i.i.i, i32 %45
  %46 = call ptr @memcpy(ptr %add.ptr73, ptr %28, i32 %call37)
  %add74 = add i32 %45, %call37
  %.pre = add i32 %add74, %call45
  %.pre353 = add i32 %.pre, %call52
  br label %for.inc

for.inc:                                          ; preds = %if.end64, %if.end51.for.inc_crit_edge
  %add79.pre-phi = phi i32 [ %.pre353, %if.end64 ], [ %add54, %if.end51.for.inc_crit_edge ]
  %add77.pre-phi = phi i32 [ %.pre, %if.end64 ], [ %add53, %if.end51.for.inc_crit_edge ]
  %l.1 = phi i32 [ %add74, %if.end64 ], [ %l.0347, %if.end51.for.inc_crit_edge ]
  %add.ptr76 = getelementptr i8, ptr %call7.i.i.i, i32 %l.1
  %47 = call ptr @memcpy(ptr %add.ptr76, ptr %call7.i.i.i294, i32 %call45)
  %add.ptr78 = getelementptr i8, ptr %call7.i.i.i, i32 %add77.pre-phi
  %48 = call ptr @memcpy(ptr %add.ptr78, ptr %call7.i.i.i295, i32 %call52)
  %inc = add nuw i32 %i.0348, 1
  %exitcond.not = icmp eq i32 %inc, %call12
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc
  br i1 %cmp55, label %for.end.if.end88_crit_edge, label %if.then81

for.end.if.end88_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end88

if.then81:                                        ; preds = %for.end
  %call1.i299 = call i32 @ima_measure_critical_data(ptr noundef nonnull @.str.18, ptr noundef nonnull %table_load_event_name, ptr noundef nonnull %call7.i.i.i, i32 noundef %add79.pre-phi, i1 noundef zeroext false, ptr noundef null, i32 noundef 0) #10
  %call84 = call i32 @crypto_shash_update(ptr noundef nonnull %__shash_desc, ptr noundef nonnull %call7.i.i.i, i32 noundef %add79.pre-phi) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %cmp85 = icmp slt i32 %call84, 0
  br i1 %cmp85, label %if.then81.error_crit_edge, label %if.then81.if.end88_crit_edge

if.then81.if.end88_crit_edge:                     ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end88

if.then81.error_crit_edge:                        ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end88:                                         ; preds = %if.then81.if.end88_crit_edge, %for.end.if.end88_crit_edge, %if.end32.if.end88_crit_edge
  %call89 = call i32 @crypto_shash_final(ptr noundef nonnull %__shash_desc, ptr noundef nonnull %call9.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %cmp90 = icmp slt i32 %call89, 0
  br i1 %cmp90, label %if.end88.error_crit_edge, label %if.end8.i.i.i328

if.end88.error_crit_edge:                         ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end8.i.i.i328:                                 ; preds = %if.end88
  %mul = shl i32 %12, 1
  %add94 = add i32 %mul, 8
  %call9.i.i.i327 = call noalias align 128 ptr @__kmalloc(i32 noundef %add94, i32 noundef 3520) #14
  %tobool97.not = icmp eq ptr %call9.i.i.i327, null
  br i1 %tobool97.not, label %if.end8.i.i.i328.error_crit_edge, label %if.end99

if.end8.i.i.i328.error_crit_edge:                 ; preds = %if.end8.i.i.i328
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end99:                                         ; preds = %if.end8.i.i.i328
  %call100 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call9.i.i.i327, i32 noundef 8, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp102350.not = icmp eq i32 %12, 0
  br i1 %cmp102350.not, label %if.end99.for.end111_crit_edge, label %for.body103.lr.ph

if.end99.for.end111_crit_edge:                    ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end111

for.body103.lr.ph:                                ; preds = %if.end99
  %add.ptr104 = getelementptr i8, ptr %call9.i.i.i327, i32 7
  br label %for.body103

for.body103:                                      ; preds = %for.body103.for.body103_crit_edge, %for.body103.lr.ph
  %i.1351 = phi i32 [ 0, %for.body103.lr.ph ], [ %inc110, %for.body103.for.body103_crit_edge ]
  %mul105 = shl i32 %i.1351, 1
  %add.ptr106 = getelementptr i8, ptr %add.ptr104, i32 %mul105
  %arrayidx107 = getelementptr i8, ptr %call9.i.i.i, i32 %i.1351
  %49 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx107, align 1
  %conv = zext i8 %50 to i32
  %call108 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr106, i32 noundef 3, ptr noundef nonnull @.str.4, i32 noundef %conv)
  %inc110 = add nuw i32 %i.1351, 1
  %exitcond352.not = icmp eq i32 %inc110, %12
  br i1 %exitcond352.not, label %for.body103.for.end111_crit_edge, label %for.body103.for.body103_crit_edge

for.body103.for.body103_crit_edge:                ; preds = %for.body103
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body103

for.body103.for.end111_crit_edge:                 ; preds = %for.body103
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end111

for.end111:                                       ; preds = %for.body103.for.end111_crit_edge, %if.end99.for.end111_crit_edge
  %51 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %table, align 4
  %hash = getelementptr inbounds %struct.mapped_device, ptr %52, i32 0, i32 41, i32 0, i32 3
  %53 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %hash, align 4
  %hash116 = getelementptr inbounds %struct.mapped_device, ptr %52, i32 0, i32 41, i32 1, i32 3
  %55 = ptrtoint ptr %hash116 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %hash116, align 4
  %cmp117.not = icmp eq ptr %54, %56
  br i1 %cmp117.not, label %for.end111.if.end124_crit_edge, label %if.then119

for.end111.if.end124_crit_edge:                   ; preds = %for.end111
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end124

if.then119:                                       ; preds = %for.end111
  call void @__sanitizer_cov_trace_pc() #12
  call void @kfree(ptr noundef %56) #10
  br label %if.end124

if.end124:                                        ; preds = %if.then119, %for.end111.if.end124_crit_edge
  %57 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %table, align 4
  %hash128 = getelementptr inbounds %struct.mapped_device, ptr %58, i32 0, i32 41, i32 1, i32 3
  %59 = ptrtoint ptr %hash128 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call9.i.i.i327, ptr %hash128, align 4
  %call129 = call i32 @strlen(ptr noundef nonnull %call9.i.i.i327) #15
  %60 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %table, align 4
  %hash_len = getelementptr inbounds %struct.mapped_device, ptr %61, i32 0, i32 41, i32 1, i32 4
  %62 = ptrtoint ptr %hash_len to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %call129, ptr %hash_len, align 4
  %63 = load ptr, ptr %table, align 4
  %num_targets136 = getelementptr inbounds %struct.mapped_device, ptr %63, i32 0, i32 41, i32 1, i32 2
  %64 = ptrtoint ptr %num_targets136 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %call12, ptr %num_targets136, align 4
  %65 = load ptr, ptr %table, align 4
  %ima138 = getelementptr inbounds %struct.mapped_device, ptr %65, i32 0, i32 41
  %66 = ptrtoint ptr %ima138 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ima138, align 8
  %inactive_table142 = getelementptr inbounds %struct.mapped_device, ptr %65, i32 0, i32 41, i32 1
  %68 = ptrtoint ptr %inactive_table142 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %inactive_table142, align 4
  %cmp144.not = icmp eq ptr %67, %69
  br i1 %cmp144.not, label %if.end124.if.end151_crit_edge, label %if.then146

if.end124.if.end151_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end151

if.then146:                                       ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #12
  call void @kfree(ptr noundef %69) #10
  br label %if.end151

if.end151:                                        ; preds = %if.then146, %if.end124.if.end151_crit_edge
  %70 = ptrtoint ptr %device_data_buf to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %device_data_buf, align 4
  %72 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %table, align 4
  %inactive_table154 = getelementptr inbounds %struct.mapped_device, ptr %73, i32 0, i32 41, i32 1
  %74 = ptrtoint ptr %inactive_table154 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %71, ptr %inactive_table154, align 4
  %75 = load ptr, ptr %table, align 4
  %device_metadata_len = getelementptr inbounds %struct.mapped_device, ptr %75, i32 0, i32 41, i32 1, i32 1
  %76 = ptrtoint ptr %device_metadata_len to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %call37, ptr %device_metadata_len, align 4
  br label %exit

error:                                            ; preds = %if.end8.i.i.i328.error_crit_edge, %if.end88.error_crit_edge, %if.then81.error_crit_edge, %if.then58.error_crit_edge, %for.body.error_crit_edge, %crypto_shash_init.exit.error_crit_edge, %if.end28.error_crit_edge, %if.end21.error_crit_edge, %if.end17.error_crit_edge, %if.end11.error_crit_edge, %if.end6.error_crit_edge, %if.end.error_crit_edge
  %target_data_buf.0 = phi ptr [ %call7.i.i.i295, %if.end11.error_crit_edge ], [ %call7.i.i.i295, %if.end17.error_crit_edge ], [ %call7.i.i.i295, %crypto_shash_init.exit.error_crit_edge ], [ %call7.i.i.i295, %if.end88.error_crit_edge ], [ %call7.i.i.i295, %if.end8.i.i.i328.error_crit_edge ], [ %call7.i.i.i295, %if.then81.error_crit_edge ], [ %call7.i.i.i295, %if.end21.error_crit_edge ], [ null, %if.end6.error_crit_edge ], [ null, %if.end.error_crit_edge ], [ %call7.i.i.i295, %if.end28.error_crit_edge ], [ %call7.i.i.i295, %for.body.error_crit_edge ], [ %call7.i.i.i295, %if.then58.error_crit_edge ]
  %tfm.0 = phi ptr [ null, %if.end11.error_crit_edge ], [ %call18, %if.end17.error_crit_edge ], [ %call18, %crypto_shash_init.exit.error_crit_edge ], [ %call18, %if.end88.error_crit_edge ], [ %call18, %if.end8.i.i.i328.error_crit_edge ], [ %call18, %if.then81.error_crit_edge ], [ %call18, %if.end21.error_crit_edge ], [ null, %if.end6.error_crit_edge ], [ null, %if.end.error_crit_edge ], [ %call18, %if.end28.error_crit_edge ], [ %call18, %for.body.error_crit_edge ], [ %call18, %if.then58.error_crit_edge ]
  %digest.0 = phi ptr [ null, %if.end11.error_crit_edge ], [ null, %if.end17.error_crit_edge ], [ %call9.i.i.i, %crypto_shash_init.exit.error_crit_edge ], [ %call9.i.i.i, %if.end88.error_crit_edge ], [ %call9.i.i.i, %if.end8.i.i.i328.error_crit_edge ], [ %call9.i.i.i, %if.then81.error_crit_edge ], [ null, %if.end21.error_crit_edge ], [ null, %if.end6.error_crit_edge ], [ null, %if.end.error_crit_edge ], [ %call9.i.i.i, %if.end28.error_crit_edge ], [ %call9.i.i.i, %for.body.error_crit_edge ], [ %call9.i.i.i, %if.then58.error_crit_edge ]
  call void @kfree(ptr noundef null) #10
  %77 = ptrtoint ptr %device_data_buf to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %device_data_buf, align 4
  call void @kfree(ptr noundef %78) #10
  br label %exit

exit:                                             ; preds = %error, %if.end151
  %target_data_buf.1 = phi ptr [ %target_data_buf.0, %error ], [ %call7.i.i.i295, %if.end151 ]
  %tfm.1 = phi ptr [ %tfm.0, %error ], [ %call18, %if.end151 ]
  %digest.1 = phi ptr [ %digest.0, %error ], [ %call9.i.i.i, %if.end151 ]
  call void @kfree(ptr noundef %digest.1) #10
  %tobool159.not = icmp eq ptr %tfm.1, null
  br i1 %tobool159.not, label %exit.if.end161_crit_edge, label %if.then160

exit.if.end161_crit_edge:                         ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end161

if.then160:                                       ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #12
  %base.i.i = getelementptr inbounds %struct.crypto_shash, ptr %tfm.1, i32 0, i32 2
  call void @crypto_destroy_tfm(ptr noundef nonnull %tfm.1, ptr noundef %base.i.i) #10
  br label %if.end161

if.end161:                                        ; preds = %if.then160, %exit.if.end161_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  call void @kfree(ptr noundef %call7.i.i.i294) #10
  call void @kfree(ptr noundef %target_data_buf.1) #10
  br label %cleanup162

cleanup162:                                       ; preds = %if.end161, %entry.cleanup162_crit_edge
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %table_load_event_name) #10
  call void @llvm.lifetime.end.p0(i64 376, ptr nonnull %__shash_desc) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %device_data_buf) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_table_get_num_targets(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dm_ima_alloc_and_copy_device_data(ptr noundef %md, ptr nocapture noundef writeonly %device_data, i32 noundef %num_targets, i1 noundef zeroext %noio) unnamed_addr #1 align 64 {
entry:
  %dev_name = alloca ptr, align 4
  %dev_uuid = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dev_name) #10
  %0 = ptrtoint ptr %dev_name to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %dev_name, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dev_uuid) #10
  %1 = ptrtoint ptr %dev_uuid to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %dev_uuid, align 4
  %call = call fastcc i32 @dm_ima_alloc_and_copy_name_uuid(ptr noundef %md, ptr noundef nonnull %dev_name, ptr noundef nonnull %dev_uuid, i1 noundef zeroext %noio)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %noio, label %if.then3.i, label %if.end.i

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 1024) #13
  br label %dm_ima_alloc.exit

if.then3.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %3 = tail call i32 @llvm.read_register.i32(metadata !40) #10
  %and.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task.i.i, align 8
  %flags1.i.i = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %flags1.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags1.i.i, align 4
  %and.i.i = and i32 %8, 524288
  %or.i.i = or i32 %8, 524288
  store i32 %or.i.i, ptr %flags1.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i21 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 1024) #13
  %10 = tail call i32 @llvm.read_register.i32(metadata !40) #10
  %and.i.i1.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i1.i to ptr
  %task.i2.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task.i2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task.i2.i, align 8
  %flags1.i3.i = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %flags1.i3.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags1.i3.i, align 4
  %and.i4.i = and i32 %15, -524289
  %or.i5.i = or i32 %and.i4.i, %and.i.i
  store i32 %or.i5.i, ptr %flags1.i3.i, align 4
  br label %dm_ima_alloc.exit

dm_ima_alloc.exit:                                ; preds = %if.then3.i, %if.end.i
  %call7.i.i.i23 = phi ptr [ %call7.i.i.i, %if.end.i ], [ %call7.i.i.i21, %if.then3.i ]
  %16 = ptrtoint ptr %device_data to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i.i.i23, ptr %device_data, align 4
  %tobool4.not = icmp eq ptr %call7.i.i.i23, null
  br i1 %tobool4.not, label %dm_ima_alloc.exit.error_crit_edge, label %if.end6

dm_ima_alloc.exit.error_crit_edge:                ; preds = %dm_ima_alloc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end6:                                          ; preds = %dm_ima_alloc.exit
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %dev_name to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev_name, align 4
  %19 = ptrtoint ptr %dev_uuid to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev_uuid, align 4
  %disk = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 14
  %21 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %disk, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 8
  %first_minor = getelementptr inbounds %struct.gendisk, ptr %22, i32 0, i32 1
  %25 = ptrtoint ptr %first_minor to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %first_minor, align 4
  %minors = getelementptr inbounds %struct.gendisk, ptr %22, i32 0, i32 2
  %27 = ptrtoint ptr %minors to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %minors, align 8
  %call9 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %call7.i.i.i23, i32 noundef 1024, ptr noundef nonnull @.str.17, ptr noundef %18, ptr noundef %20, i32 noundef %24, i32 noundef %26, i32 noundef %28, i32 noundef %num_targets) #10
  br label %error

error:                                            ; preds = %if.end6, %dm_ima_alloc.exit.error_crit_edge
  %r.0 = phi i32 [ 0, %if.end6 ], [ -12, %dm_ima_alloc.exit.error_crit_edge ]
  %29 = ptrtoint ptr %dev_name to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev_name, align 4
  tail call void @kfree(ptr noundef %30) #10
  %31 = ptrtoint ptr %dev_uuid to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev_uuid, align 4
  tail call void @kfree(ptr noundef %32) #10
  br label %cleanup

cleanup:                                          ; preds = %error, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %r.0, %error ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dev_uuid) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dev_name) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_shash(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_table_get_target(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_final(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dm_ima_measure_on_device_resume(ptr noundef %md, i1 noundef zeroext %swap) local_unnamed_addr #1 align 64 {
entry:
  %dev_name = alloca ptr, align 4
  %dev_uuid = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dev_name) #10
  %0 = ptrtoint ptr %dev_name to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %dev_name, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dev_uuid) #10
  %1 = ptrtoint ptr %dev_uuid to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %dev_uuid, align 4
  %2 = tail call i32 @llvm.read_register.i32(metadata !40) #10
  %and.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task.i.i, align 8
  %flags1.i.i = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %flags1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags1.i.i, align 4
  %and.i.i = and i32 %7, 524288
  %or.i.i = or i32 %7, 524288
  store i32 %or.i.i, ptr %flags1.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 1024) #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !40) #10
  %and.i.i1.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i1.i to ptr
  %task.i2.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task.i2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task.i2.i, align 8
  %flags1.i3.i = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %flags1.i3.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags1.i3.i, align 4
  %and.i4.i = and i32 %14, -524289
  %or.i5.i = or i32 %and.i4.i, %and.i.i
  store i32 %or.i5.i, ptr %flags1.i3.i, align 4
  %tobool2.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool2.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %disk.i = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 14
  %15 = ptrtoint ptr %disk.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %disk.i, align 8
  %part0.i.i = getelementptr inbounds %struct.gendisk, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %part0.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %part0.i.i, align 4
  %bd_nr_sectors.i.i.i = getelementptr inbounds %struct.block_device, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %bd_nr_sectors.i.i.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %bd_nr_sectors.i.i.i, align 8
  %21 = tail call i32 @llvm.read_register.i32(metadata !40) #10
  %and.i.i.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %task.i.i.i, align 8
  %flags1.i.i.i = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %flags1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags1.i.i.i, align 4
  %and.i.i.i236 = and i32 %26, 524288
  %or.i.i.i = or i32 %26, 524288
  store i32 %or.i.i.i, ptr %flags1.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %27 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %27, i32 noundef 3520, i32 noundef 128) #13
  %28 = tail call i32 @llvm.read_register.i32(metadata !40) #10
  %and.i.i1.i.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i1.i.i to ptr
  %task.i2.i.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %task.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %task.i2.i.i, align 8
  %flags1.i3.i.i = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %flags1.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flags1.i3.i.i, align 4
  %and.i4.i.i = and i32 %33, -524289
  %or.i5.i.i = or i32 %and.i4.i.i, %and.i.i.i236
  store i32 %or.i5.i.i, ptr %flags1.i3.i.i, align 4
  %tobool2.not.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool2.not.i, label %if.end.error_crit_edge, label %if.end7

if.end.error_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end7:                                          ; preds = %if.end
  %call3.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %call7.i.i.i.i, i32 noundef 1024, ptr noundef nonnull @.str.19, i64 noundef %20) #10
  %ima = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 41
  %dm_version_str_len = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 41, i32 2
  %34 = ptrtoint ptr %dm_version_str_len to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dm_version_str_len, align 8
  %36 = call ptr @memcpy(ptr %call7.i.i.i, ptr @.str.1, i32 %35)
  br i1 %swap, label %if.then11, label %if.end7.if.end100_crit_edge

if.end7.if.end100_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end100

if.then11:                                        ; preds = %if.end7
  %hash = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 41, i32 0, i32 3
  %37 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hash, align 4
  %inactive_table = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 41, i32 1
  %hash14 = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 41, i32 1, i32 3
  %39 = ptrtoint ptr %hash14 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hash14, align 4
  %cmp.not = icmp eq ptr %38, %40
  br i1 %cmp.not, label %if.then11.if.end19_crit_edge, label %if.then15

if.then11.if.end19_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then15:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef %38) #10
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %if.then11.if.end19_crit_edge
  %41 = ptrtoint ptr %hash to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %hash, align 4
  %hash_len = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 41, i32 0, i32 4
  %42 = ptrtoint ptr %hash_len to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %hash_len, align 8
  %43 = ptrtoint ptr %ima to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ima, align 8
  %45 = ptrtoint ptr %inactive_table to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %inactive_table, align 4
  %cmp30.not = icmp eq ptr %44, %46
  br i1 %cmp30.not, label %if.end19.if.end35_crit_edge, label %if.then31

if.end19.if.end35_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.then31:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef %44) #10
  br label %if.end35

if.end35:                                         ; preds = %if.then31, %if.end19.if.end35_crit_edge
  %47 = ptrtoint ptr %ima to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %ima, align 8
  %device_metadata_len = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 41, i32 0, i32 1
  %48 = ptrtoint ptr %device_metadata_len to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %device_metadata_len, align 4
  %num_targets = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 41, i32 0, i32 2
  %49 = ptrtoint ptr %num_targets to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %num_targets, align 8
  %50 = ptrtoint ptr %hash14 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %hash14, align 4
  %tobool46.not = icmp eq ptr %51, null
  br i1 %tobool46.not, label %if.end35.if.end66_crit_edge, label %if.then47

if.end35.if.end66_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66

if.then47:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  %52 = ptrtoint ptr %hash to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %51, ptr %hash, align 4
  %hash_len56 = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 41, i32 1, i32 4
  %53 = ptrtoint ptr %hash_len56 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %hash_len56, align 4
  %55 = ptrtoint ptr %hash_len to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %hash_len, align 8
  %56 = ptrtoint ptr %hash14 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %hash14, align 4
  store i32 0, ptr %hash_len56, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.then47, %if.end35.if.end66_crit_edge
  %57 = ptrtoint ptr %inactive_table to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %inactive_table, align 4
  %tobool70.not = icmp eq ptr %58, null
  br i1 %tobool70.not, label %if.end66.if.end100_crit_edge, label %if.then71

if.end66.if.end100_crit_edge:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end100

if.then71:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  %59 = ptrtoint ptr %ima to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %58, ptr %ima, align 8
  %device_metadata_len80 = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 41, i32 1, i32 1
  %60 = ptrtoint ptr %device_metadata_len80 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %device_metadata_len80, align 4
  %62 = ptrtoint ptr %device_metadata_len to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %device_metadata_len, align 4
  %num_targets86 = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 41, i32 1, i32 2
  %63 = ptrtoint ptr %num_targets86 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %num_targets86, align 4
  %65 = ptrtoint ptr %num_targets to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %num_targets, align 8
  %66 = ptrtoint ptr %inactive_table to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %inactive_table, align 4
  store i32 0, ptr %device_metadata_len80, align 4
  store i32 0, ptr %num_targets86, align 4
  br label %if.end100

if.end100:                                        ; preds = %if.then71, %if.end66.if.end100_crit_edge, %if.end7.if.end100_crit_edge
  %67 = ptrtoint ptr %ima to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ima, align 8
  %tobool104.not = icmp eq ptr %68, null
  br i1 %tobool104.not, label %if.end117, label %if.end117.thread

if.end117:                                        ; preds = %if.end100
  %hash120 = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 41, i32 0, i32 3
  %69 = ptrtoint ptr %hash120 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %hash120, align 4
  %tobool121.not = icmp eq ptr %70, null
  br i1 %tobool121.not, label %if.then140, label %if.end117.if.end138.thread_crit_edge

if.end117.if.end138.thread_crit_edge:             ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end138.thread

if.end117.thread:                                 ; preds = %if.end100
  %add.ptr106 = getelementptr i8, ptr %call7.i.i.i, i32 %35
  %device_metadata_len112 = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 41, i32 0, i32 1
  %71 = ptrtoint ptr %device_metadata_len112 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %device_metadata_len112, align 4
  %73 = call ptr @memcpy(ptr %add.ptr106, ptr %68, i32 %72)
  %add116 = add i32 %72, %35
  %hash120248 = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 41, i32 0, i32 3
  %74 = ptrtoint ptr %hash120248 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %hash120248, align 4
  %tobool121.not249 = icmp eq ptr %75, null
  br i1 %tobool121.not249, label %if.end117.thread.if.end149_crit_edge, label %if.end117.thread.if.end138.thread_crit_edge

if.end117.thread.if.end138.thread_crit_edge:      ; preds = %if.end117.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end138.thread

if.end117.thread.if.end149_crit_edge:             ; preds = %if.end117.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end149

if.end138.thread:                                 ; preds = %if.end117.thread.if.end138.thread_crit_edge, %if.end117.if.end138.thread_crit_edge
  %76 = phi ptr [ %75, %if.end117.thread.if.end138.thread_crit_edge ], [ %70, %if.end117.if.end138.thread_crit_edge ]
  %l.0250 = phi i32 [ %add116, %if.end117.thread.if.end138.thread_crit_edge ], [ %35, %if.end117.if.end138.thread_crit_edge ]
  %add.ptr123 = getelementptr i8, ptr %call7.i.i.i, i32 %l.0250
  %77 = call ptr @memcpy(ptr %add.ptr123, ptr @__const.dm_ima_measure_on_device_remove.active_table_str, i32 18)
  %add125 = add i32 %l.0250, 18
  %add.ptr126 = getelementptr i8, ptr %call7.i.i.i, i32 %add125
  %hash_len132 = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 41, i32 0, i32 4
  %78 = ptrtoint ptr %hash_len132 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %hash_len132, align 8
  %80 = call ptr @memcpy(ptr %add.ptr126, ptr %76, i32 %79)
  %add136 = add i32 %79, %add125
  %add.ptr137 = getelementptr i8, ptr %call7.i.i.i, i32 %add136
  %81 = ptrtoint ptr %add.ptr137 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 59, ptr %add.ptr137, align 1
  %inc = add i32 %add136, 1
  br label %if.end149

if.then140:                                       ; preds = %if.end117
  %call142 = call fastcc i32 @dm_ima_alloc_and_copy_name_uuid(ptr noundef %md, ptr noundef nonnull %dev_name, ptr noundef nonnull %dev_uuid, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call142)
  %tobool143.not = icmp eq i32 %call142, 0
  br i1 %tobool143.not, label %if.end145, label %if.then140.error_crit_edge

if.then140.error_crit_edge:                       ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end145:                                        ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #12
  %82 = ptrtoint ptr %dev_name to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev_name, align 4
  %84 = ptrtoint ptr %dev_uuid to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev_uuid, align 4
  %call146 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %call7.i.i.i, i32 noundef 1024, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, ptr noundef %83, ptr noundef %85) #10
  %call147 = tail call i32 @strlen(ptr noundef nonnull %call7.i.i.i) #15
  %add148 = add i32 %call147, %35
  br label %if.end149

if.end149:                                        ; preds = %if.end145, %if.end138.thread, %if.end117.thread.if.end149_crit_edge
  %l.2 = phi i32 [ %add148, %if.end145 ], [ %inc, %if.end138.thread ], [ %add116, %if.end117.thread.if.end149_crit_edge ]
  %call150 = tail call i32 @strlen(ptr noundef nonnull %call7.i.i.i.i) #15
  %add.ptr151 = getelementptr i8, ptr %call7.i.i.i, i32 %l.2
  %86 = call ptr @memcpy(ptr %add.ptr151, ptr %call7.i.i.i.i, i32 %call150)
  %add152 = add i32 %call150, %l.2
  %87 = tail call i32 @llvm.read_register.i32(metadata !40) #10
  %and.i.i.i237 = and i32 %87, -16384
  %88 = inttoptr i32 %and.i.i.i237 to ptr
  %task.i.i238 = getelementptr inbounds %struct.thread_info, ptr %88, i32 0, i32 2
  %89 = ptrtoint ptr %task.i.i238 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %task.i.i238, align 8
  %flags1.i.i239 = getelementptr inbounds %struct.task_struct, ptr %90, i32 0, i32 3
  %91 = ptrtoint ptr %flags1.i.i239 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %flags1.i.i239, align 4
  %and.i.i240 = and i32 %92, 524288
  %or.i.i241 = or i32 %92, 524288
  store i32 %or.i.i241, ptr %flags1.i.i239, align 4
  %call112.i = tail call i32 @ima_measure_critical_data(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.7, ptr noundef nonnull %call7.i.i.i, i32 noundef %add152, i1 noundef zeroext false, ptr noundef null, i32 noundef 0) #10
  %93 = tail call i32 @llvm.read_register.i32(metadata !40) #10
  %and.i.i6.i = and i32 %93, -16384
  %94 = inttoptr i32 %and.i.i6.i to ptr
  %task.i7.i = getelementptr inbounds %struct.thread_info, ptr %94, i32 0, i32 2
  %95 = ptrtoint ptr %task.i7.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %task.i7.i, align 8
  %flags1.i8.i = getelementptr inbounds %struct.task_struct, ptr %96, i32 0, i32 3
  %97 = ptrtoint ptr %flags1.i8.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %flags1.i8.i, align 4
  %and.i9.i = and i32 %98, -524289
  %or.i10.i = or i32 %and.i9.i, %and.i.i240
  store i32 %or.i10.i, ptr %flags1.i8.i, align 4
  %99 = ptrtoint ptr %dev_name to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dev_name, align 4
  tail call void @kfree(ptr noundef %100) #10
  %101 = ptrtoint ptr %dev_uuid to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dev_uuid, align 4
  tail call void @kfree(ptr noundef %102) #10
  br label %error

error:                                            ; preds = %if.end149, %if.then140.error_crit_edge, %if.end.error_crit_edge
  tail call void @kfree(ptr noundef %call7.i.i.i.i) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %error, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dev_uuid) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dev_name) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dm_ima_alloc_and_copy_name_uuid(ptr noundef %md, ptr nocapture noundef %dev_name, ptr nocapture noundef %dev_uuid, i1 noundef zeroext %noio) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %noio, label %dm_ima_alloc.exit, label %dm_ima_alloc.exit.thread

dm_ima_alloc.exit:                                ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !40) #10
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i.i, align 8
  %flags1.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %flags1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags1.i.i, align 4
  %and.i.i = and i32 %5, 524288
  %or.i.i = or i32 %5, 524288
  store i32 %or.i.i, ptr %flags1.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i40 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 256) #13
  %7 = tail call i32 @llvm.read_register.i32(metadata !40) #10
  %and.i.i1.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i1.i to ptr
  %task.i2.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task.i2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task.i2.i, align 8
  %flags1.i3.i = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %flags1.i3.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags1.i3.i, align 4
  %and.i4.i = and i32 %12, -524289
  %or.i5.i = or i32 %and.i4.i, %and.i.i
  store i32 %or.i5.i, ptr %flags1.i3.i, align 4
  %13 = ptrtoint ptr %dev_name to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i.i40, ptr %dev_name, align 4
  %tobool1.not = icmp eq ptr %call7.i.i.i40, null
  br i1 %tobool1.not, label %dm_ima_alloc.exit.error_crit_edge, label %if.then3.i37

dm_ima_alloc.exit.error_crit_edge:                ; preds = %dm_ima_alloc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

dm_ima_alloc.exit.thread:                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 256) #13
  %15 = ptrtoint ptr %dev_name to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7.i.i.i, ptr %dev_name, align 4
  %tobool1.not45 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool1.not45, label %dm_ima_alloc.exit.thread.error_crit_edge, label %if.end.i30.thread

dm_ima_alloc.exit.thread.error_crit_edge:         ; preds = %dm_ima_alloc.exit.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end.i30.thread:                                ; preds = %dm_ima_alloc.exit.thread
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i3147 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 258) #13
  br label %dm_ima_alloc.exit38

if.then3.i37:                                     ; preds = %dm_ima_alloc.exit
  call void @__sanitizer_cov_trace_pc() #12
  %17 = tail call i32 @llvm.read_register.i32(metadata !40) #10
  %and.i.i.i23 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i23 to ptr
  %task.i.i24 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %task.i.i24 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task.i.i24, align 8
  %flags1.i.i25 = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %flags1.i.i25 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags1.i.i25, align 4
  %and.i.i26 = and i32 %22, 524288
  %or.i.i27 = or i32 %22, 524288
  store i32 %or.i.i27, ptr %flags1.i.i25, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %23 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i31 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %23, i32 noundef 3520, i32 noundef 258) #13
  %24 = tail call i32 @llvm.read_register.i32(metadata !40) #10
  %and.i.i1.i32 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i1.i32 to ptr
  %task.i2.i33 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %task.i2.i33 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %task.i2.i33, align 8
  %flags1.i3.i34 = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %flags1.i3.i34 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags1.i3.i34, align 4
  %and.i4.i35 = and i32 %29, -524289
  %or.i5.i36 = or i32 %and.i4.i35, %and.i.i26
  store i32 %or.i5.i36, ptr %flags1.i3.i34, align 4
  br label %dm_ima_alloc.exit38

dm_ima_alloc.exit38:                              ; preds = %if.then3.i37, %if.end.i30.thread
  %call7.i.i.i3148 = phi ptr [ %call7.i.i.i3147, %if.end.i30.thread ], [ %call7.i.i.i31, %if.then3.i37 ]
  %30 = ptrtoint ptr %dev_uuid to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call7.i.i.i3148, ptr %dev_uuid, align 4
  %tobool4.not = icmp eq ptr %call7.i.i.i3148, null
  br i1 %tobool4.not, label %dm_ima_alloc.exit38.error_crit_edge, label %if.end6

dm_ima_alloc.exit38.error_crit_edge:              ; preds = %dm_ima_alloc.exit38
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end6:                                          ; preds = %dm_ima_alloc.exit38
  %31 = ptrtoint ptr %dev_name to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev_name, align 4
  %call7 = tail call i32 @dm_copy_name_and_uuid(ptr noundef %md, ptr noundef %32, ptr noundef nonnull %call7.i.i.i3148) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.error_crit_edge

if.end6.error_crit_edge:                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end10:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @fix_separator_chars(ptr noundef %dev_name)
  tail call fastcc void @fix_separator_chars(ptr noundef %dev_uuid)
  br label %cleanup

error:                                            ; preds = %if.end6.error_crit_edge, %dm_ima_alloc.exit38.error_crit_edge, %dm_ima_alloc.exit.thread.error_crit_edge, %dm_ima_alloc.exit.error_crit_edge
  %r.0 = phi i32 [ %call7, %if.end6.error_crit_edge ], [ -12, %dm_ima_alloc.exit.error_crit_edge ], [ -12, %dm_ima_alloc.exit38.error_crit_edge ], [ -12, %dm_ima_alloc.exit.thread.error_crit_edge ]
  %33 = ptrtoint ptr %dev_name to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev_name, align 4
  tail call void @kfree(ptr noundef %34) #10
  %35 = ptrtoint ptr %dev_uuid to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev_uuid, align 4
  tail call void @kfree(ptr noundef %36) #10
  %37 = ptrtoint ptr %dev_name to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %dev_name, align 4
  %38 = ptrtoint ptr %dev_uuid to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %dev_uuid, align 4
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end10
  %retval.0 = phi i32 [ %r.0, %error ], [ 0, %if.end10 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dm_ima_measure_on_device_remove(ptr noundef %md, i1 noundef zeroext %remove_all) local_unnamed_addr #1 align 64 {
entry:
  %dev_name = alloca ptr, align 4
  %dev_uuid = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dev_name) #10
  %0 = ptrtoint ptr %dev_name to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %dev_name, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dev_uuid) #10
  %1 = ptrtoint ptr %dev_uuid to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %dev_uuid, align 4
  %2 = tail call i32 @llvm.read_register.i32(metadata !40) #10
  %and.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task.i.i, align 8
  %flags1.i.i = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %flags1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags1.i.i, align 4
  %and.i.i = and i32 %7, 524288
  %or.i.i = or i32 %7, 524288
  store i32 %or.i.i, ptr %flags1.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 2048) #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !40) #10
  %and.i.i1.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i1.i to ptr
  %task.i2.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task.i2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task.i2.i, align 8
  %flags1.i3.i = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %flags1.i3.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags1.i3.i, align 4
  %and.i4.i = and i32 %14, -524289
  %or.i5.i = or i32 %and.i4.i, %and.i.i
  store i32 %or.i5.i, ptr %flags1.i3.i, align 4
  %tobool10.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool10.not, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit

if.end:                                           ; preds = %entry
  %disk.i = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 14
  %15 = ptrtoint ptr %disk.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %disk.i, align 8
  %part0.i.i = getelementptr inbounds %struct.gendisk, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %part0.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %part0.i.i, align 4
  %bd_nr_sectors.i.i.i = getelementptr inbounds %struct.block_device, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %bd_nr_sectors.i.i.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %bd_nr_sectors.i.i.i, align 8
  %21 = tail call i32 @llvm.read_register.i32(metadata !40) #10
  %and.i.i.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %task.i.i.i, align 8
  %flags1.i.i.i = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %flags1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags1.i.i.i, align 4
  %and.i.i.i233 = and i32 %26, 524288
  %or.i.i.i = or i32 %26, 524288
  store i32 %or.i.i.i, ptr %flags1.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %27 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %27, i32 noundef 3520, i32 noundef 128) #13
  %28 = tail call i32 @llvm.read_register.i32(metadata !40) #10
  %and.i.i1.i.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i1.i.i to ptr
  %task.i2.i.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %task.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %task.i2.i.i, align 8
  %flags1.i3.i.i = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %flags1.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flags1.i3.i.i, align 4
  %and.i4.i.i = and i32 %33, -524289
  %or.i5.i.i = or i32 %and.i4.i.i, %and.i.i.i233
  store i32 %or.i5.i.i, ptr %flags1.i3.i.i, align 4
  %tobool2.not.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool2.not.i, label %if.end.exit.sink.split_crit_edge, label %if.end15

if.end.exit.sink.split_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit.sink.split

if.end15:                                         ; preds = %if.end
  %call3.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %call7.i.i.i.i, i32 noundef 1024, ptr noundef nonnull @.str.19, i64 noundef %20) #10
  %ima = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 41
  %dm_version_str_len = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 41, i32 2
  %34 = ptrtoint ptr %dm_version_str_len to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dm_version_str_len, align 8
  %36 = call ptr @memcpy(ptr %call7.i.i.i, ptr @.str.1, i32 %35)
  %37 = ptrtoint ptr %ima to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ima, align 8
  %tobool19.not = icmp eq ptr %38, null
  br i1 %tobool19.not, label %if.end15.if.end34_crit_edge, label %if.then20

if.end15.if.end34_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.then20:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr21 = getelementptr i8, ptr %call7.i.i.i, i32 %35
  %39 = call ptr @memcpy(ptr %add.ptr21, ptr @__const.dm_ima_measure_on_device_remove.device_active_str, i32 23)
  %add23 = add i32 %35, 23
  %add.ptr24 = getelementptr i8, ptr %call7.i.i.i, i32 %add23
  %device_metadata_len = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 41, i32 0, i32 1
  %40 = ptrtoint ptr %device_metadata_len to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %device_metadata_len, align 4
  %42 = call ptr @memcpy(ptr %add.ptr24, ptr %38, i32 %41)
  %add33 = add i32 %41, %add23
  br label %if.end34

if.end34:                                         ; preds = %if.then20, %if.end15.if.end34_crit_edge
  %l.0 = phi i32 [ %add33, %if.then20 ], [ %35, %if.end15.if.end34_crit_edge ]
  %inactive_table = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 41, i32 1
  %43 = ptrtoint ptr %inactive_table to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %inactive_table, align 4
  %tobool37.not = icmp eq ptr %44, null
  br i1 %tobool37.not, label %if.end34.if.end53_crit_edge, label %if.then38

if.end34.if.end53_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

if.then38:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr39 = getelementptr i8, ptr %call7.i.i.i, i32 %l.0
  %45 = call ptr @memcpy(ptr %add.ptr39, ptr @__const.dm_ima_measure_on_device_remove.device_inactive_str, i32 25)
  %add41 = add i32 %l.0, 25
  %add.ptr42 = getelementptr i8, ptr %call7.i.i.i, i32 %add41
  %device_metadata_len48 = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 41, i32 1, i32 1
  %46 = ptrtoint ptr %device_metadata_len48 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %device_metadata_len48, align 4
  %48 = call ptr @memcpy(ptr %add.ptr42, ptr %44, i32 %47)
  %add52 = add i32 %47, %add41
  br label %if.end53

if.end53:                                         ; preds = %if.then38, %if.end34.if.end53_crit_edge
  %l.1 = phi i32 [ %add52, %if.then38 ], [ %l.0, %if.end34.if.end53_crit_edge ]
  %nodata.1.off0 = phi i1 [ false, %if.then38 ], [ %tobool19.not, %if.end34.if.end53_crit_edge ]
  %hash = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 41, i32 0, i32 3
  %49 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %hash, align 4
  %tobool56.not = icmp eq ptr %50, null
  br i1 %tobool56.not, label %if.end72, label %if.end72.thread

if.end72:                                         ; preds = %if.end53
  %hash75 = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 41, i32 1, i32 3
  %51 = ptrtoint ptr %hash75 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %hash75, align 4
  %tobool76.not = icmp eq ptr %52, null
  br i1 %tobool76.not, label %if.end94, label %if.end72.if.end94.thread_crit_edge

if.end72.if.end94.thread_crit_edge:               ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end94.thread

if.end72.thread:                                  ; preds = %if.end53
  %add.ptr58 = getelementptr i8, ptr %call7.i.i.i, i32 %l.1
  %53 = call ptr @memcpy(ptr %add.ptr58, ptr @__const.dm_ima_measure_on_device_remove.active_table_str, i32 18)
  %add60 = add i32 %l.1, 18
  %add.ptr61 = getelementptr i8, ptr %call7.i.i.i, i32 %add60
  %hash_len = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 41, i32 0, i32 4
  %54 = ptrtoint ptr %hash_len to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %hash_len, align 8
  %56 = call ptr @memcpy(ptr %add.ptr61, ptr %50, i32 %55)
  %add70 = add i32 %55, %add60
  %add.ptr71 = getelementptr i8, ptr %call7.i.i.i, i32 %add70
  %57 = ptrtoint ptr %add.ptr71 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 44, ptr %add.ptr71, align 1
  %inc = add i32 %add70, 1
  %hash75246 = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 41, i32 1, i32 3
  %58 = ptrtoint ptr %hash75246 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %hash75246, align 4
  %tobool76.not247 = icmp eq ptr %59, null
  br i1 %tobool76.not247, label %if.end72.thread.if.end105_crit_edge, label %if.end72.thread.if.end94.thread_crit_edge

if.end72.thread.if.end94.thread_crit_edge:        ; preds = %if.end72.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end94.thread

if.end72.thread.if.end105_crit_edge:              ; preds = %if.end72.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end105

if.end94.thread:                                  ; preds = %if.end72.thread.if.end94.thread_crit_edge, %if.end72.if.end94.thread_crit_edge
  %60 = phi ptr [ %59, %if.end72.thread.if.end94.thread_crit_edge ], [ %52, %if.end72.if.end94.thread_crit_edge ]
  %l.2248 = phi i32 [ %inc, %if.end72.thread.if.end94.thread_crit_edge ], [ %l.1, %if.end72.if.end94.thread_crit_edge ]
  %add.ptr78 = getelementptr i8, ptr %call7.i.i.i, i32 %l.2248
  %61 = call ptr @memcpy(ptr %add.ptr78, ptr @__const.dm_ima_measure_on_table_clear.inactive_str, i32 20)
  %add80 = add i32 %l.2248, 20
  %add.ptr81 = getelementptr i8, ptr %call7.i.i.i, i32 %add80
  %hash_len87 = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 41, i32 1, i32 4
  %62 = ptrtoint ptr %hash_len87 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %hash_len87, align 4
  %64 = call ptr @memcpy(ptr %add.ptr81, ptr %60, i32 %63)
  %add91 = add i32 %63, %add80
  %add.ptr92 = getelementptr i8, ptr %call7.i.i.i, i32 %add91
  %65 = ptrtoint ptr %add.ptr92 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 44, ptr %add.ptr92, align 1
  %inc93 = add i32 %add91, 1
  br label %if.end105

if.end94:                                         ; preds = %if.end72
  br i1 %nodata.1.off0, label %if.then96, label %if.end94.if.end105_crit_edge

if.end94.if.end105_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end105

if.then96:                                        ; preds = %if.end94
  %call98 = call fastcc i32 @dm_ima_alloc_and_copy_name_uuid(ptr noundef %md, ptr noundef nonnull %dev_name, ptr noundef nonnull %dev_uuid, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %if.end101, label %if.then96.error_crit_edge

if.then96.error_crit_edge:                        ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end101:                                        ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #12
  %66 = ptrtoint ptr %dev_name to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev_name, align 4
  %68 = ptrtoint ptr %dev_uuid to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev_uuid, align 4
  %call102 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %call7.i.i.i, i32 noundef 1024, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, ptr noundef %67, ptr noundef %69) #10
  %call103 = tail call i32 @strlen(ptr noundef nonnull %call7.i.i.i) #15
  %add104 = add i32 %call103, %l.1
  br label %if.end105

if.end105:                                        ; preds = %if.end101, %if.end94.if.end105_crit_edge, %if.end94.thread, %if.end72.thread.if.end105_crit_edge
  %l.4 = phi i32 [ %add104, %if.end101 ], [ %l.1, %if.end94.if.end105_crit_edge ], [ %inc93, %if.end94.thread ], [ %inc, %if.end72.thread.if.end105_crit_edge ]
  %add.ptr106 = getelementptr i8, ptr %call7.i.i.i, i32 %l.4
  %70 = call ptr @memcpy(ptr %add.ptr106, ptr @__const.dm_ima_measure_on_device_remove.remove_all_str, i32 11)
  %add108 = add i32 %l.4, 11
  %add.ptr109 = getelementptr i8, ptr %call7.i.i.i, i32 %add108
  %71 = select i1 %remove_all, i16 31035, i16 28219
  %72 = ptrtoint ptr %add.ptr109 to i32
  call void @__asan_storeN_noabort(i32 %72, i32 2)
  store i16 %71, ptr %add.ptr109, align 1
  %add111 = add i32 %l.4, 13
  %call112 = tail call i32 @strlen(ptr noundef nonnull %call7.i.i.i.i) #15
  %add.ptr113 = getelementptr i8, ptr %call7.i.i.i, i32 %add111
  %73 = call ptr @memcpy(ptr %add.ptr113, ptr %call7.i.i.i.i, i32 %call112)
  %add114 = add i32 %call112, %add111
  %74 = tail call i32 @llvm.read_register.i32(metadata !40) #10
  %and.i.i.i234 = and i32 %74, -16384
  %75 = inttoptr i32 %and.i.i.i234 to ptr
  %task.i.i235 = getelementptr inbounds %struct.thread_info, ptr %75, i32 0, i32 2
  %76 = ptrtoint ptr %task.i.i235 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %task.i.i235, align 8
  %flags1.i.i236 = getelementptr inbounds %struct.task_struct, ptr %77, i32 0, i32 3
  %78 = ptrtoint ptr %flags1.i.i236 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %flags1.i.i236, align 4
  %and.i.i237 = and i32 %79, 524288
  %or.i.i238 = or i32 %79, 524288
  store i32 %or.i.i238, ptr %flags1.i.i236, align 4
  %call112.i = tail call i32 @ima_measure_critical_data(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.12, ptr noundef nonnull %call7.i.i.i, i32 noundef %add114, i1 noundef zeroext false, ptr noundef null, i32 noundef 0) #10
  %80 = tail call i32 @llvm.read_register.i32(metadata !40) #10
  %and.i.i6.i = and i32 %80, -16384
  %81 = inttoptr i32 %and.i.i6.i to ptr
  %task.i7.i = getelementptr inbounds %struct.thread_info, ptr %81, i32 0, i32 2
  %82 = ptrtoint ptr %task.i7.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %task.i7.i, align 8
  %flags1.i8.i = getelementptr inbounds %struct.task_struct, ptr %83, i32 0, i32 3
  %84 = ptrtoint ptr %flags1.i8.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %flags1.i8.i, align 4
  %and.i9.i = and i32 %85, -524289
  %or.i10.i = or i32 %and.i9.i, %and.i.i237
  store i32 %or.i10.i, ptr %flags1.i8.i, align 4
  br label %error

error:                                            ; preds = %if.end105, %if.then96.error_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  br label %exit.sink.split

exit.sink.split:                                  ; preds = %error, %if.end.exit.sink.split_crit_edge
  %call7.i.i.i.i.sink = phi ptr [ %call7.i.i.i.i, %error ], [ %call7.i.i.i, %if.end.exit.sink.split_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i.sink) #10
  br label %exit

exit:                                             ; preds = %exit.sink.split, %entry.exit_crit_edge
  %ima116 = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 41
  %86 = ptrtoint ptr %ima116 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ima116, align 8
  tail call void @kfree(ptr noundef %87) #10
  %88 = ptrtoint ptr %ima116 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ima116, align 8
  %inactive_table123 = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 41, i32 1
  %90 = ptrtoint ptr %inactive_table123 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %inactive_table123, align 4
  %cmp.not = icmp eq ptr %89, %91
  br i1 %cmp.not, label %exit.if.end129_crit_edge, label %if.then125

exit.if.end129_crit_edge:                         ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end129

if.then125:                                       ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef %91) #10
  br label %if.end129

if.end129:                                        ; preds = %if.then125, %exit.if.end129_crit_edge
  %hash132 = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 41, i32 0, i32 3
  %92 = ptrtoint ptr %hash132 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %hash132, align 4
  tail call void @kfree(ptr noundef %93) #10
  %94 = ptrtoint ptr %hash132 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %hash132, align 4
  %hash138 = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 41, i32 1, i32 3
  %96 = ptrtoint ptr %hash138 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %hash138, align 4
  %cmp139.not = icmp eq ptr %95, %97
  br i1 %cmp139.not, label %if.end129.if.end144_crit_edge, label %if.then140

if.end129.if.end144_crit_edge:                    ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end144

if.then140:                                       ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef %97) #10
  br label %if.end144

if.end144:                                        ; preds = %if.then140, %if.end129.if.end144_crit_edge
  %98 = call ptr @memset(ptr %ima116, i32 0, i32 40)
  %dm_version_str_len.i = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 41, i32 2
  %99 = ptrtoint ptr %dm_version_str_len.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 18, ptr %dm_version_str_len.i, align 8
  %100 = ptrtoint ptr %dev_name to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dev_name, align 4
  tail call void @kfree(ptr noundef %101) #10
  %102 = ptrtoint ptr %dev_uuid to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dev_uuid, align 4
  tail call void @kfree(ptr noundef %103) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dev_uuid) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dev_name) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dm_ima_measure_on_table_clear(ptr noundef %md, i1 noundef zeroext %new_map) local_unnamed_addr #1 align 64 {
entry:
  %dev_name = alloca ptr, align 4
  %dev_uuid = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dev_name) #10
  %0 = ptrtoint ptr %dev_name to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %dev_name, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dev_uuid) #10
  %1 = ptrtoint ptr %dev_uuid to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %dev_uuid, align 4
  %2 = tail call i32 @llvm.read_register.i32(metadata !40) #10
  %and.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task.i.i, align 8
  %flags1.i.i = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %flags1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags1.i.i, align 4
  %and.i.i = and i32 %7, 524288
  %or.i.i = or i32 %7, 524288
  store i32 %or.i.i, ptr %flags1.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 1024) #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !40) #10
  %and.i.i1.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i1.i to ptr
  %task.i2.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task.i2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task.i2.i, align 8
  %flags1.i3.i = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %flags1.i3.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags1.i3.i, align 4
  %and.i4.i = and i32 %14, -524289
  %or.i5.i = or i32 %and.i4.i, %and.i.i
  store i32 %or.i5.i, ptr %flags1.i3.i, align 4
  %tobool2.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool2.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %disk.i = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 14
  %15 = ptrtoint ptr %disk.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %disk.i, align 8
  %part0.i.i = getelementptr inbounds %struct.gendisk, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %part0.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %part0.i.i, align 4
  %bd_nr_sectors.i.i.i = getelementptr inbounds %struct.block_device, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %bd_nr_sectors.i.i.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %bd_nr_sectors.i.i.i, align 8
  %21 = tail call i32 @llvm.read_register.i32(metadata !40) #10
  %and.i.i.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %task.i.i.i, align 8
  %flags1.i.i.i = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %flags1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags1.i.i.i, align 4
  %and.i.i.i225 = and i32 %26, 524288
  %or.i.i.i = or i32 %26, 524288
  store i32 %or.i.i.i, ptr %flags1.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %27 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %27, i32 noundef 3520, i32 noundef 128) #13
  %28 = tail call i32 @llvm.read_register.i32(metadata !40) #10
  %and.i.i1.i.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i1.i.i to ptr
  %task.i2.i.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %task.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %task.i2.i.i, align 8
  %flags1.i3.i.i = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %flags1.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flags1.i3.i.i, align 4
  %and.i4.i.i = and i32 %33, -524289
  %or.i5.i.i = or i32 %and.i4.i.i, %and.i.i.i225
  store i32 %or.i5.i.i, ptr %flags1.i3.i.i, align 4
  %tobool2.not.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool2.not.i, label %if.end.error1_crit_edge, label %if.end7

if.end.error1_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %error1

if.end7:                                          ; preds = %if.end
  %call3.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %call7.i.i.i.i, i32 noundef 1024, ptr noundef nonnull @.str.19, i64 noundef %20) #10
  %ima = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 41
  %dm_version_str_len = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 41, i32 2
  %34 = ptrtoint ptr %dm_version_str_len to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dm_version_str_len, align 8
  %36 = call ptr @memcpy(ptr %call7.i.i.i, ptr @.str.1, i32 %35)
  %inactive_table = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 41, i32 1
  %device_metadata_len = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 41, i32 1, i32 1
  %37 = ptrtoint ptr %device_metadata_len to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %device_metadata_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool11.not = icmp eq i32 %38, 0
  br i1 %tobool11.not, label %if.end7.if.then42_crit_edge, label %land.lhs.true

if.end7.if.then42_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then42

land.lhs.true:                                    ; preds = %if.end7
  %hash_len = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 41, i32 1, i32 4
  %39 = ptrtoint ptr %hash_len to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %hash_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool14.not = icmp eq i32 %40, 0
  br i1 %tobool14.not, label %land.lhs.true.if.then42_crit_edge, label %if.end40

land.lhs.true.if.then42_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then42

if.end40:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr16 = getelementptr i8, ptr %call7.i.i.i, i32 %35
  %41 = ptrtoint ptr %inactive_table to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %inactive_table, align 4
  %43 = call ptr @memcpy(ptr %add.ptr16, ptr %42, i32 %38)
  %add25 = add i32 %38, %35
  %add.ptr26 = getelementptr i8, ptr %call7.i.i.i, i32 %add25
  %44 = call ptr @memcpy(ptr %add.ptr26, ptr @__const.dm_ima_measure_on_table_clear.inactive_str, i32 20)
  %add28 = add i32 %add25, 20
  %add.ptr29 = getelementptr i8, ptr %call7.i.i.i, i32 %add28
  %hash = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 41, i32 1, i32 3
  %45 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hash, align 4
  %47 = call ptr @memcpy(ptr %add.ptr29, ptr %46, i32 %40)
  %add38 = add i32 %40, %add28
  %add.ptr39 = getelementptr i8, ptr %call7.i.i.i, i32 %add38
  %48 = ptrtoint ptr %add.ptr39 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 59, ptr %add.ptr39, align 1
  %inc = add i32 %add38, 1
  br label %if.end51

if.then42:                                        ; preds = %land.lhs.true.if.then42_crit_edge, %if.end7.if.then42_crit_edge
  %call44 = call fastcc i32 @dm_ima_alloc_and_copy_name_uuid(ptr noundef %md, ptr noundef nonnull %dev_name, ptr noundef nonnull %dev_uuid, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %if.then42.error2_crit_edge

if.then42.error2_crit_edge:                       ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #12
  br label %error2

if.end47:                                         ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %dev_name to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev_name, align 4
  %51 = ptrtoint ptr %dev_uuid to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev_uuid, align 4
  %call48 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %call7.i.i.i, i32 noundef 1024, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, ptr noundef %50, ptr noundef %52) #10
  %call49 = tail call i32 @strlen(ptr noundef nonnull %call7.i.i.i) #15
  %add50 = add i32 %call49, %35
  br label %if.end51

if.end51:                                         ; preds = %if.end47, %if.end40
  %l.1 = phi i32 [ %add50, %if.end47 ], [ %inc, %if.end40 ]
  %call52 = tail call i32 @strlen(ptr noundef nonnull %call7.i.i.i.i) #15
  %add.ptr53 = getelementptr i8, ptr %call7.i.i.i, i32 %l.1
  %53 = call ptr @memcpy(ptr %add.ptr53, ptr %call7.i.i.i.i, i32 %call52)
  %add54 = add i32 %call52, %l.1
  %54 = tail call i32 @llvm.read_register.i32(metadata !40) #10
  %and.i.i.i226 = and i32 %54, -16384
  %55 = inttoptr i32 %and.i.i.i226 to ptr
  %task.i.i227 = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %task.i.i227 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %task.i.i227, align 8
  %flags1.i.i228 = getelementptr inbounds %struct.task_struct, ptr %57, i32 0, i32 3
  %58 = ptrtoint ptr %flags1.i.i228 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %flags1.i.i228, align 4
  %and.i.i229 = and i32 %59, 524288
  %or.i.i230 = or i32 %59, 524288
  store i32 %or.i.i230, ptr %flags1.i.i228, align 4
  %call112.i = tail call i32 @ima_measure_critical_data(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.14, ptr noundef nonnull %call7.i.i.i, i32 noundef %add54, i1 noundef zeroext false, ptr noundef null, i32 noundef 0) #10
  %60 = tail call i32 @llvm.read_register.i32(metadata !40) #10
  %and.i.i6.i = and i32 %60, -16384
  %61 = inttoptr i32 %and.i.i6.i to ptr
  %task.i7.i = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %task.i7.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %task.i7.i, align 8
  %flags1.i8.i = getelementptr inbounds %struct.task_struct, ptr %63, i32 0, i32 3
  %64 = ptrtoint ptr %flags1.i8.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %flags1.i8.i, align 4
  %and.i9.i = and i32 %65, -524289
  %or.i10.i = or i32 %and.i9.i, %and.i.i229
  store i32 %or.i10.i, ptr %flags1.i8.i, align 4
  br i1 %new_map, label %if.then57, label %if.end51.if.end146_crit_edge

if.end51.if.end146_crit_edge:                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end146

if.then57:                                        ; preds = %if.end51
  %hash60 = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 41, i32 1, i32 3
  %66 = ptrtoint ptr %hash60 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %hash60, align 4
  %tobool61.not = icmp eq ptr %67, null
  br i1 %tobool61.not, label %if.then57.if.end72_crit_edge, label %land.lhs.true62

if.then57.if.end72_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72

land.lhs.true62:                                  ; preds = %if.then57
  %hash67 = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 41, i32 0, i32 3
  %68 = ptrtoint ptr %hash67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %hash67, align 4
  %cmp.not = icmp eq ptr %67, %69
  br i1 %cmp.not, label %land.lhs.true62.if.end72_crit_edge, label %if.then68

land.lhs.true62.if.end72_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72

if.then68:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %67) #10
  br label %if.end72

if.end72:                                         ; preds = %if.then68, %land.lhs.true62.if.end72_crit_edge, %if.then57.if.end72_crit_edge
  %70 = ptrtoint ptr %hash60 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr null, ptr %hash60, align 4
  %hash_len78 = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 41, i32 1, i32 4
  %71 = ptrtoint ptr %hash_len78 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %hash_len78, align 4
  %72 = ptrtoint ptr %inactive_table to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %inactive_table, align 4
  %tobool82.not = icmp eq ptr %73, null
  br i1 %tobool82.not, label %if.end72.if.end95_crit_edge, label %land.lhs.true83

if.end72.if.end95_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end95

land.lhs.true83:                                  ; preds = %if.end72
  %74 = ptrtoint ptr %ima to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ima, align 8
  %cmp90.not = icmp eq ptr %73, %75
  br i1 %cmp90.not, label %land.lhs.true83.if.end95_crit_edge, label %if.then91

land.lhs.true83.if.end95_crit_edge:               ; preds = %land.lhs.true83
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end95

if.then91:                                        ; preds = %land.lhs.true83
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %73) #10
  br label %if.end95

if.end95:                                         ; preds = %if.then91, %land.lhs.true83.if.end95_crit_edge, %if.end72.if.end95_crit_edge
  %76 = ptrtoint ptr %inactive_table to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %inactive_table, align 4
  %77 = ptrtoint ptr %device_metadata_len to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %device_metadata_len, align 4
  %num_targets = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 41, i32 1, i32 2
  %78 = ptrtoint ptr %num_targets to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %num_targets, align 4
  %hash106 = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 41, i32 0, i32 3
  %79 = ptrtoint ptr %hash106 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %hash106, align 4
  %tobool107.not = icmp eq ptr %80, null
  br i1 %tobool107.not, label %if.end95.if.end121_crit_edge, label %if.then108

if.end95.if.end121_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end121

if.then108:                                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #12
  %81 = ptrtoint ptr %hash60 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %80, ptr %hash60, align 4
  %hash_len117 = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 41, i32 0, i32 4
  %82 = ptrtoint ptr %hash_len117 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %hash_len117, align 8
  %84 = ptrtoint ptr %hash_len78 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %hash_len78, align 4
  br label %if.end121

if.end121:                                        ; preds = %if.then108, %if.end95.if.end121_crit_edge
  %85 = ptrtoint ptr %ima to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %ima, align 8
  %tobool125.not = icmp eq ptr %86, null
  br i1 %tobool125.not, label %if.end121.if.end146_crit_edge, label %if.then126

if.end121.if.end146_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end146

if.then126:                                       ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #12
  %87 = ptrtoint ptr %inactive_table to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %86, ptr %inactive_table, align 4
  %device_metadata_len135 = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 41, i32 0, i32 1
  %88 = ptrtoint ptr %device_metadata_len135 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %device_metadata_len135, align 4
  %90 = ptrtoint ptr %device_metadata_len to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %device_metadata_len, align 4
  %num_targets141 = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 41, i32 0, i32 2
  %91 = ptrtoint ptr %num_targets141 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %num_targets141, align 8
  %93 = ptrtoint ptr %num_targets to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %num_targets, align 4
  br label %if.end146

if.end146:                                        ; preds = %if.then126, %if.end121.if.end146_crit_edge, %if.end51.if.end146_crit_edge
  %94 = ptrtoint ptr %dev_name to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dev_name, align 4
  tail call void @kfree(ptr noundef %95) #10
  %96 = ptrtoint ptr %dev_uuid to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dev_uuid, align 4
  tail call void @kfree(ptr noundef %97) #10
  br label %error2

error2:                                           ; preds = %if.end146, %if.then42.error2_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #10
  br label %error1

error1:                                           ; preds = %error2, %if.end.error1_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %error1, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dev_uuid) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dev_name) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dm_ima_measure_on_device_rename(ptr noundef %md) local_unnamed_addr #1 align 64 {
entry:
  %new_device_data = alloca ptr, align 4
  %new_dev_name = alloca ptr, align 4
  %new_dev_uuid = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_device_data) #10
  %0 = ptrtoint ptr %new_device_data to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %new_device_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_dev_name) #10
  %1 = ptrtoint ptr %new_dev_name to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %new_dev_name, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_dev_uuid) #10
  %2 = ptrtoint ptr %new_dev_uuid to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %new_dev_uuid, align 4
  %ima = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 41
  %num_targets = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 41, i32 0, i32 2
  %3 = ptrtoint ptr %num_targets to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_targets, align 8
  %call = call fastcc i32 @dm_ima_alloc_and_copy_device_data(ptr noundef %md, ptr noundef nonnull %new_device_data, i32 noundef %4, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call fastcc i32 @dm_ima_alloc_and_copy_name_uuid(ptr noundef %md, ptr noundef nonnull %new_dev_name, ptr noundef nonnull %new_dev_uuid, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.error_crit_edge

if.end.error_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end6:                                          ; preds = %if.end
  %5 = tail call i32 @llvm.read_register.i32(metadata !40) #10
  %and.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task.i.i, align 8
  %flags1.i.i = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %flags1.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags1.i.i, align 4
  %and.i.i = and i32 %10, 524288
  %or.i.i = or i32 %10, 524288
  store i32 %or.i.i, ptr %flags1.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 2048) #13
  %12 = tail call i32 @llvm.read_register.i32(metadata !40) #10
  %and.i.i1.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i1.i to ptr
  %task.i2.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task.i2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task.i2.i, align 8
  %flags1.i3.i = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %flags1.i3.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags1.i3.i, align 4
  %and.i4.i = and i32 %17, -524289
  %or.i5.i = or i32 %and.i4.i, %and.i.i
  store i32 %or.i5.i, ptr %flags1.i3.i, align 4
  %tobool9.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool9.not, label %if.end6.error_crit_edge, label %if.end11

if.end6.error_crit_edge:                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end11:                                         ; preds = %if.end6
  %disk.i = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 14
  %18 = ptrtoint ptr %disk.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %disk.i, align 8
  %part0.i.i = getelementptr inbounds %struct.gendisk, ptr %19, i32 0, i32 7
  %20 = ptrtoint ptr %part0.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %part0.i.i, align 4
  %bd_nr_sectors.i.i.i = getelementptr inbounds %struct.block_device, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %bd_nr_sectors.i.i.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %bd_nr_sectors.i.i.i, align 8
  %24 = tail call i32 @llvm.read_register.i32(metadata !40) #10
  %and.i.i.i.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %task.i.i.i, align 8
  %flags1.i.i.i = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %flags1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags1.i.i.i, align 4
  %and.i.i.i50 = and i32 %29, 524288
  %or.i.i.i = or i32 %29, 524288
  store i32 %or.i.i.i, ptr %flags1.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %30 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %30, i32 noundef 3520, i32 noundef 128) #13
  %31 = tail call i32 @llvm.read_register.i32(metadata !40) #10
  %and.i.i1.i.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i1.i.i to ptr
  %task.i2.i.i = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %task.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %task.i2.i.i, align 8
  %flags1.i3.i.i = getelementptr inbounds %struct.task_struct, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %flags1.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flags1.i3.i.i, align 4
  %and.i4.i.i = and i32 %36, -524289
  %or.i5.i.i = or i32 %and.i4.i.i, %and.i.i.i50
  store i32 %or.i5.i.i, ptr %flags1.i3.i.i, align 4
  %tobool2.not.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool2.not.i, label %if.end11.error_crit_edge, label %if.end16

if.end11.error_crit_edge:                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end16:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %call7.i.i.i.i, i32 noundef 1024, ptr noundef nonnull @.str.19, i64 noundef %23) #10
  %37 = ptrtoint ptr %ima to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ima, align 8
  %39 = ptrtoint ptr %new_device_data to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %new_device_data, align 4
  store ptr %40, ptr %ima, align 8
  %call22 = tail call i32 @strlen(ptr noundef %40) #15
  %device_metadata_len = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 41, i32 0, i32 1
  %41 = ptrtoint ptr %device_metadata_len to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %call22, ptr %device_metadata_len, align 4
  %42 = ptrtoint ptr %new_dev_name to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %new_dev_name, align 4
  %44 = ptrtoint ptr %new_dev_uuid to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %new_dev_uuid, align 4
  %call25 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %call7.i.i.i, i32 noundef 2048, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, ptr noundef %38, ptr noundef %43, ptr noundef %45, ptr noundef nonnull %call7.i.i.i.i) #10
  %call26 = tail call i32 @strlen(ptr noundef nonnull %call7.i.i.i) #15
  %46 = tail call i32 @llvm.read_register.i32(metadata !40) #10
  %and.i.i.i51 = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i.i51 to ptr
  %task.i.i52 = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %task.i.i52 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %task.i.i52, align 8
  %flags1.i.i53 = getelementptr inbounds %struct.task_struct, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %flags1.i.i53 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %flags1.i.i53, align 4
  %and.i.i54 = and i32 %51, 524288
  %or.i.i55 = or i32 %51, 524288
  store i32 %or.i.i55, ptr %flags1.i.i53, align 4
  %call112.i = tail call i32 @ima_measure_critical_data(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.16, ptr noundef nonnull %call7.i.i.i, i32 noundef %call26, i1 noundef zeroext false, ptr noundef null, i32 noundef 0) #10
  %52 = tail call i32 @llvm.read_register.i32(metadata !40) #10
  %and.i.i6.i = and i32 %52, -16384
  %53 = inttoptr i32 %and.i.i6.i to ptr
  %task.i7.i = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %task.i7.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %task.i7.i, align 8
  %flags1.i8.i = getelementptr inbounds %struct.task_struct, ptr %55, i32 0, i32 3
  %56 = ptrtoint ptr %flags1.i8.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %flags1.i8.i, align 4
  %and.i9.i = and i32 %57, -524289
  %or.i10.i = or i32 %and.i9.i, %and.i.i54
  store i32 %or.i10.i, ptr %flags1.i8.i, align 4
  br label %exit

error:                                            ; preds = %if.end11.error_crit_edge, %if.end6.error_crit_edge, %if.end.error_crit_edge
  %combined_device_data.0 = phi ptr [ null, %if.end.error_crit_edge ], [ null, %if.end6.error_crit_edge ], [ %call7.i.i.i, %if.end11.error_crit_edge ]
  %58 = ptrtoint ptr %new_device_data to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %new_device_data, align 4
  tail call void @kfree(ptr noundef %59) #10
  br label %exit

exit:                                             ; preds = %error, %if.end16
  %capacity_str.1 = phi ptr [ null, %error ], [ %call7.i.i.i.i, %if.end16 ]
  %old_device_data.0 = phi ptr [ null, %error ], [ %38, %if.end16 ]
  %combined_device_data.1 = phi ptr [ %combined_device_data.0, %error ], [ %call7.i.i.i, %if.end16 ]
  tail call void @kfree(ptr noundef %capacity_str.1) #10
  tail call void @kfree(ptr noundef %combined_device_data.1) #10
  tail call void @kfree(ptr noundef %old_device_data.0) #10
  %60 = ptrtoint ptr %new_dev_name to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %new_dev_name, align 4
  tail call void @kfree(ptr noundef %61) #10
  %62 = ptrtoint ptr %new_dev_uuid to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %new_dev_uuid, align 4
  tail call void @kfree(ptr noundef %63) #10
  br label %cleanup

cleanup:                                          ; preds = %exit, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_dev_uuid) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_dev_name) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_device_data) #10
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ima_measure_critical_data(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_copy_name_and_uuid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fix_separator_chars(ptr nocapture noundef readonly %buf) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buf, align 4
  %call = tail call i32 @strlen(ptr noundef %1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp83 = icmp sgt i32 %call, 0
  br i1 %cmp83, label %entry.for.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %sp.085 = phi i32 [ %sp.1, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %i.084 = phi i32 [ %inc17, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %1, i32 %i.084
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i8 %3, label %for.body.for.inc_crit_edge [
    i8 92, label %for.body.if.then_crit_edge
    i8 59, label %for.body.if.then_crit_edge91
    i8 61, label %for.body.if.then_crit_edge92
    i8 44, label %for.body.if.then_crit_edge93
  ]

for.body.if.then_crit_edge93:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

for.body.if.then_crit_edge92:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

for.body.if.then_crit_edge91:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

for.body.if.then_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then:                                          ; preds = %for.body.if.then_crit_edge, %for.body.if.then_crit_edge91, %for.body.if.then_crit_edge92, %for.body.if.then_crit_edge93
  %inc = add i32 %sp.085, 1
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %sp.1 = phi i32 [ %inc, %if.then ], [ %sp.085, %for.body.for.inc_crit_edge ]
  %inc17 = add nuw nsw i32 %i.084, 1
  %exitcond.not = icmp eq i32 %inc17, %call
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sp.1)
  %tobool.not = icmp eq i32 %sp.1, 0
  br i1 %tobool.not, label %for.end.cleanup_crit_edge, label %if.end19

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end19:                                         ; preds = %for.end
  %sub = add i32 %call, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp2186 = icmp sgt i32 %sub, -1
  br i1 %cmp2186, label %for.body23.preheader, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body23.preheader:                             ; preds = %if.end19
  %add = add i32 %sp.1, %sub
  br label %for.body23

for.body23:                                       ; preds = %for.inc49.for.body23_crit_edge, %for.body23.preheader
  %j.088 = phi i32 [ %j.1, %for.inc49.for.body23_crit_edge ], [ %add, %for.body23.preheader ]
  %i.187 = phi i32 [ %dec50, %for.inc49.for.body23_crit_edge ], [ %sub, %for.body23.preheader ]
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %buf, align 4
  %arrayidx24 = getelementptr i8, ptr %6, i32 %i.187
  %7 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx24, align 1
  %dec = add i32 %j.088, -1
  %arrayidx25 = getelementptr i8, ptr %6, i32 %j.088
  %9 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %arrayidx25, align 1
  %10 = load ptr, ptr %buf, align 4
  %arrayidx26 = getelementptr i8, ptr %10, i32 %i.187
  %11 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx26, align 1
  %13 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.20)
  switch i8 %12, label %for.body23.for.inc49_crit_edge [
    i8 92, label %for.body23.if.then45_crit_edge
    i8 59, label %for.body23.if.then45_crit_edge94
    i8 61, label %for.body23.if.then45_crit_edge95
    i8 44, label %for.body23.if.then45_crit_edge96
  ]

for.body23.if.then45_crit_edge96:                 ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then45

for.body23.if.then45_crit_edge95:                 ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then45

for.body23.if.then45_crit_edge94:                 ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then45

for.body23.if.then45_crit_edge:                   ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then45

for.body23.for.inc49_crit_edge:                   ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc49

if.then45:                                        ; preds = %for.body23.if.then45_crit_edge, %for.body23.if.then45_crit_edge94, %for.body23.if.then45_crit_edge95, %for.body23.if.then45_crit_edge96
  %dec46 = add i32 %j.088, -2
  %arrayidx47 = getelementptr i8, ptr %10, i32 %dec
  %14 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 92, ptr %arrayidx47, align 1
  br label %for.inc49

for.inc49:                                        ; preds = %if.then45, %for.body23.for.inc49_crit_edge
  %j.1 = phi i32 [ %dec46, %if.then45 ], [ %dec, %for.body23.for.inc49_crit_edge ]
  %dec50 = add nsw i32 %i.187, -1
  %cmp21 = icmp sgt i32 %i.187, 0
  br i1 %cmp21, label %for.inc49.for.body23_crit_edge, label %for.inc49.cleanup_crit_edge

for.inc49.cleanup_crit_edge:                      ; preds = %for.inc49
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc49.for.body23_crit_edge:                   ; preds = %for.inc49
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body23

cleanup:                                          ; preds = %for.inc49.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38}
!llvm.named.register.sp = !{!40}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/md/dm-ima.c", i32 216, i32 27}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/md/dm-ima.c", i32 230, i32 22}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/md/dm-ima.c", i32 249, i32 6}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/md/dm-ima.c", i32 338, i32 48}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/md/dm-ima.c", i32 341, i32 59}
!10 = distinct !{null, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/md/dm-ima.c", i32 444, i32 33}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/md/dm-ima.c", i32 456, i32 6}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/md/dm-ima.c", i32 466, i32 22}
!16 = distinct !{null, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/md/dm-ima.c", i32 540, i32 33}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/md/dm-ima.c", i32 569, i32 6}
!20 = distinct !{null, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/md/dm-ima.c", i32 576, i32 45}
!22 = distinct !{null, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/md/dm-ima.c", i32 576, i32 52}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/md/dm-ima.c", i32 583, i32 22}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/md/dm-ima.c", i32 655, i32 6}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/md/dm-ima.c", i32 664, i32 22}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/md/dm-ima.c", i32 736, i32 5}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/md/dm-ima.c", i32 739, i32 22}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/md/dm-ima.c", i32 120, i32 5}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/md/dm-ima.c", i32 140, i32 28}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/md/dm-ima.c", i32 161, i32 50}
!40 = !{!"sp"}
!41 = !{i32 1, !"wchar_size", i32 2}
!42 = !{i32 1, !"min_enum_size", i32 4}
!43 = !{i32 8, !"branch-target-enforcement", i32 0}
!44 = !{i32 8, !"sign-return-address", i32 0}
!45 = !{i32 8, !"sign-return-address-all", i32 0}
!46 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!47 = !{i32 7, !"uwtable", i32 1}
!48 = !{i32 7, !"frame-pointer", i32 2}
!49 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!50 = !{!"branch_weights", i32 1, i32 2000}
