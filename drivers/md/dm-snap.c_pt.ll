; ModuleID = '/llk/IR_all_yes/drivers/md/dm-snap.c_pt.bc'
source_filename = "../drivers/md/dm-snap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+dm_snap_origin\22, \22a\22\09"
module asm "\09.weak\09__crc_dm_snap_origin\09\09\09\09"
module asm "\09.long\09__crc_dm_snap_origin\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dm_snap_origin:\09\09\09\09\09"
module asm "\09.asciz \09\22dm_snap_origin\22\09\09\09\09\09"
module asm "__kstrtabns_dm_snap_origin:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dm_snap_cow\22, \22a\22\09"
module asm "\09.weak\09__crc_dm_snap_cow\09\09\09\09"
module asm "\09.long\09__crc_dm_snap_cow\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dm_snap_cow:\09\09\09\09\09"
module asm "\09.asciz \09\22dm_snap_cow\22\09\09\09\09\09"
module asm "__kstrtabns_dm_snap_cow:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.74 }
%union.anon.74 = type { ptr }
%struct.dm_kcopyd_throttle = type { i32, i32, i32, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.target_type = type { i64, ptr, ptr, [3 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dm_arg = type { i32, i32, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dm_snapshot = type { %struct.rw_semaphore, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, %struct.atomic_t, %struct.spinlock, i64, i64, %struct.rb_root, %struct.mempool_s, %struct.dm_exception_table, %struct.dm_exception_table, %struct.spinlock, %struct.spinlock, [16 x %struct.hlist_head], ptr, i32, %struct.wait_queue_head, ptr, i32, i64, i32, i8, %struct.bio_list, %struct.bio }
%struct.rb_root = type { ptr }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.dm_exception_table = type { i32, i32, ptr }
%struct.hlist_head = type { ptr }
%struct.bio_list = type { ptr, ptr }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.40, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.40 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.dm_arg_set = type { i32, ptr }
%struct.dm_target = type { ptr, ptr, i64, i64, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i8 }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dm_exception_store = type { ptr, ptr, i32, i32, i32, ptr, i8 }
%struct.dm_exception_store_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.hlist_bl_head = type { ptr }
%struct.dm_exception_table_lock = type { ptr, ptr }
%struct.dm_exception = type { %struct.hlist_bl_node, i64, i64 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.dm_snap_pending_exception = type { %struct.dm_exception, %struct.bio_list, %struct.bio_list, ptr, i32, i32, i64, %struct.rb_node, ptr, ptr }
%struct.dm_snap_tracked_chunk = type { %struct.hlist_node, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.origin = type { ptr, %struct.list_head, %struct.list_head }
%struct.dm_dev = type { ptr, ptr, i32, [16 x i8] }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.57, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.22 }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.57 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.dm_io_region = type { ptr, i64, i64 }
%struct.dm_origin = type { ptr, ptr, i32, %struct.list_head }

@__param_str_snapshot_cow_threshold = internal constant [35 x i8] c"dm_snapshot.snapshot_cow_threshold\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@cow_threshold = internal global { i32, [28 x i8] } { i32 2048, [28 x i8] zeroinitializer }, align 32
@__param_snapshot_cow_threshold = internal constant %struct.kernel_param { ptr @__param_str_snapshot_cow_threshold, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.74 { ptr @cow_threshold } }, section "__param", align 4
@__UNIQUE_ID_snapshot_cow_thresholdtype283 = internal constant [49 x i8] c"dm_snapshot.parmtype=snapshot_cow_threshold:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_snapshot_cow_threshold284 = internal constant [87 x i8] c"dm_snapshot.parm=snapshot_cow_threshold:Maximum number of chunks being copied on write\00", section ".modinfo", align 1
@__param_str_snapshot_copy_throttle = internal constant [35 x i8] c"dm_snapshot.snapshot_copy_throttle\00", align 1
@dm_kcopyd_throttle = internal global { %struct.dm_kcopyd_throttle, [44 x i8] } { %struct.dm_kcopyd_throttle { i32 100, i32 0, i32 0, i32 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@__param_snapshot_copy_throttle = internal constant %struct.kernel_param { ptr @__param_str_snapshot_copy_throttle, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.74 { ptr @dm_kcopyd_throttle } }, section "__param", align 4
@__UNIQUE_ID_snapshot_copy_throttletype285 = internal constant [49 x i8] c"dm_snapshot.parmtype=snapshot_copy_throttle:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_snapshot_copy_throttle286 = internal constant [89 x i8] c"dm_snapshot.parm=snapshot_copy_throttle:A percentage of time allocated for copy on write\00", section ".modinfo", align 1
@__kstrtab_dm_snap_origin = external dso_local constant [0 x i8], align 1
@__kstrtabns_dm_snap_origin = external dso_local constant [0 x i8], align 1
@__ksymtab_dm_snap_origin = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dm_snap_origin to i32), ptr @__kstrtab_dm_snap_origin, ptr @__kstrtabns_dm_snap_origin }, section "___ksymtab+dm_snap_origin", align 4
@__kstrtab_dm_snap_cow = external dso_local constant [0 x i8], align 1
@__kstrtabns_dm_snap_cow = external dso_local constant [0 x i8], align 1
@__ksymtab_dm_snap_cow = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dm_snap_cow to i32), ptr @__kstrtab_dm_snap_cow, ptr @__kstrtabns_dm_snap_cow }, section "___ksymtab+dm_snap_cow", align 4
@snapshot_target = internal global { %struct.target_type, [40 x i8] } { %struct.target_type { i64 0, ptr @.str, ptr null, [3 x i32] [i32 1, i32 16, i32 0], ptr @snapshot_ctr, ptr @snapshot_dtr, ptr @snapshot_map, ptr null, ptr null, ptr @snapshot_end_io, ptr null, ptr null, ptr null, ptr null, ptr @snapshot_preresume, ptr @snapshot_resume, ptr @snapshot_status, ptr null, ptr null, ptr null, ptr null, ptr @snapshot_iterate_devices, ptr @snapshot_io_hints, ptr null, ptr null, %struct.list_head zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@origin_target = internal global { %struct.target_type, [40 x i8] } { %struct.target_type { i64 0, ptr @.str.87, ptr null, [3 x i32] [i32 1, i32 9, i32 0], ptr @origin_ctr, ptr @origin_dtr, ptr @origin_map, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @origin_postsuspend, ptr null, ptr @origin_resume, ptr @origin_status, ptr null, ptr null, ptr null, ptr null, ptr @origin_iterate_devices, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@merge_target = internal global { %struct.target_type, [40 x i8] } { %struct.target_type { i64 0, ptr @dm_snapshot_merge_target_name, ptr null, [3 x i32] [i32 1, i32 5, i32 0], ptr @snapshot_ctr, ptr @snapshot_dtr, ptr @snapshot_merge_map, ptr null, ptr null, ptr @snapshot_end_io, ptr null, ptr @snapshot_merge_presuspend, ptr null, ptr null, ptr @snapshot_preresume, ptr @snapshot_merge_resume, ptr @snapshot_status, ptr null, ptr null, ptr null, ptr null, ptr @snapshot_iterate_devices, ptr @snapshot_io_hints, ptr null, ptr null, %struct.list_head zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@pending_cache = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@exception_cache = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_dm_snapshot__296_2885_dm_snapshot_init6 = internal global ptr @dm_snapshot_init, section ".initcall6.init", align 4
@__exitcall_dm_snapshot_exit = internal global ptr @dm_snapshot_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description297 = internal constant [54 x i8] c"dm_snapshot.description=device-mapper snapshot target\00", section ".modinfo", align 1
@__UNIQUE_ID_author298 = internal constant [32 x i8] c"dm_snapshot.author=Joe Thornber\00", section ".modinfo", align 1
@__UNIQUE_ID_file299 = internal constant [40 x i8] c"dm_snapshot.file=drivers/md/dm-snapshot\00", section ".modinfo", align 1
@__UNIQUE_ID_license300 = internal constant [24 x i8] c"dm_snapshot.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias301 = internal constant [37 x i8] c"dm_snapshot.alias=dm-snapshot-origin\00", section ".modinfo", align 1
@__UNIQUE_ID_alias302 = internal constant [36 x i8] c"dm_snapshot.alias=dm-snapshot-merge\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"snapshot\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"requires 4 or more arguments\00", [35 x i8] zeroinitializer }, align 32
@dm_snapshot_merge_target_name = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"snapshot-merge\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Cannot allocate private snapshot structure\00", [53 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Cannot get origin device\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"COW device cannot be the same as origin device\00", [49 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Cannot get COW device\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Couldn't create exception store\00", [32 x i8] zeroinitializer }, align 32
@snapshot_ctr.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&s->pe_allocation_lock\00", [41 x i8] zeroinitializer }, align 32
@snapshot_ctr.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&s->lock\00", [23 x i8] zeroinitializer }, align 32
@snapshot_ctr.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&s->pe_lock\00", [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Unable to allocate hash table space\00", [60 x i8] zeroinitializer }, align 32
@snapshot_ctr.__key.13 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&s->in_progress_wait\00", [43 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Could not create kcopyd client\00", [33 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Could not allocate mempool for pending exceptions\00", [46 x i8] zeroinitializer }, align 32
@snapshot_ctr.__key.17 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&s->tracked_chunk_lock\00", [41 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Snapshot origin struct allocation failed\00", [55 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to read snapshot metadata\00", [63 x i8] zeroinitializer }, align 32
@snapshot_ctr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.23, i32 1407, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\014device-mapper: snapshots: Snapshot is marked invalid.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"snapshot_ctr\00", [19 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"drivers/md/dm-snap.c\00", [43 x i8] zeroinitializer }, align 32
@snapshot_ctr._entry_ptr = internal global ptr @snapshot_ctr._entry, section ".printk_index", align 4
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Chunk size not set\00", [45 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@parse_snapshot_features._args = internal constant { [1 x %struct.dm_arg], [20 x i8] } { [1 x %struct.dm_arg] [%struct.dm_arg { i32 0, i32 2, ptr @.str.25 }], [20 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Invalid number of feature arguments\00", [60 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"discard_zeroes_cow\00", [45 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"discard_passdown_origin\00", [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Unrecognised feature requested\00", [33 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"discard_passdown_origin feature depends on discard_zeroes_cow\00", [34 x i8] zeroinitializer }, align 32
@_origins_lock = internal global { %struct.rw_semaphore, [32 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Snapshot cow pairing for exception table handover failed\00", [39 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"A snapshot is already merging.\00", [33 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Snapshot exception store does not support snapshot-merge.\00", [38 x i8] zeroinitializer }, align 32
@_origins = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@snapshot_dtr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.23, i32 1501, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013device-mapper: snapshots: Cancelling snapshot handover.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"snapshot_dtr\00", [19 x i8] zeroinitializer }, align 32
@snapshot_dtr._entry_ptr = internal global ptr @snapshot_dtr._entry, section ".printk_index", align 4
@.str.35 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/wait_bit.h\00", [39 x i8] zeroinitializer }, align 32
@snapshot_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.23, i32 2074, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\013device-mapper: snapshots: Snapshot overflowed: Unable to allocate exception.\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"snapshot_map\00", [19 x i8] zeroinitializer }, align 32
@snapshot_map._entry_ptr = internal global ptr @snapshot_map._entry, section ".printk_index", align 4
@zero_exception.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__invalidate_snapshot._entry = internal constant %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.23, i32 1643, ptr null, ptr null }, align 1
@.str.38 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\013device-mapper: snapshots: Invalidating snapshot: Error reading/writing.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"__invalidate_snapshot\00", [42 x i8] zeroinitializer }, align 32
@__invalidate_snapshot._entry_ptr = internal global ptr @__invalidate_snapshot._entry, section ".printk_index", align 4
@__invalidate_snapshot._entry.40 = internal constant %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.23, i32 1645, ptr null, ptr null }, align 1
@.str.41 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"\013device-mapper: snapshots: Invalidating snapshot: Unable to allocate exception.\0A\00", [46 x i8] zeroinitializer }, align 32
@__invalidate_snapshot._entry_ptr.42 = internal global ptr @__invalidate_snapshot._entry.40, section ".printk_index", align 4
@_pending_exceptions_done_spinlock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.43, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@_pending_exceptions_done_count = internal global { i64, [24 x i8] } zeroinitializer, align 32
@_pending_exceptions_done = internal global { %struct.wait_queue_head, [44 x i8] } { %struct.wait_queue_head { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.44, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, %struct.list_head { ptr getelementptr (i8, ptr @_pending_exceptions_done, i64 44), ptr getelementptr (i8, ptr @_pending_exceptions_done, i64 44) } }, [44 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"_pending_exceptions_done_spinlock\00", [62 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"_pending_exceptions_done.lock\00", [34 x i8] zeroinitializer }, align 32
@snapshot_preresume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.23, i32 2231, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"\013device-mapper: snapshots: Unable to resume snapshot source until handover completes.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"snapshot_preresume\00", [45 x i8] zeroinitializer }, align 32
@snapshot_preresume._entry_ptr = internal global ptr @snapshot_preresume._entry, section ".printk_index", align 4
@snapshot_preresume._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.23, i32 2235, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"\013device-mapper: snapshots: Unable to perform snapshot handover until source is suspended.\0A\00", [36 x i8] zeroinitializer }, align 32
@snapshot_preresume._entry_ptr.49 = internal global ptr @snapshot_preresume._entry.47, section ".printk_index", align 4
@_dm_origins = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@snapshot_merge_next_chunks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.23, i32 1059, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013device-mapper: snapshots: Snapshot is invalid: can't merge\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"snapshot_merge_next_chunks\00", [37 x i8] zeroinitializer }, align 32
@snapshot_merge_next_chunks._entry_ptr = internal global ptr @snapshot_merge_next_chunks._entry, section ".printk_index", align 4
@snapshot_merge_next_chunks._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.51, ptr @.str.23, i32 1068, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\013device-mapper: snapshots: Read error in exception store: shutting down merge\0A\00", [48 x i8] zeroinitializer }, align 32
@snapshot_merge_next_chunks._entry_ptr.54 = internal global ptr @snapshot_merge_next_chunks._entry.52, section ".printk_index", align 4
@merge_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.23, i32 1148, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013device-mapper: snapshots: Read error: shutting down merge.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"merge_callback\00", [17 x i8] zeroinitializer }, align 32
@merge_callback._entry_ptr = internal global ptr @merge_callback._entry, section ".printk_index", align 4
@merge_callback._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.56, ptr @.str.23, i32 1150, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013device-mapper: snapshots: Write error: shutting down merge.\0A\00", [33 x i8] zeroinitializer }, align 32
@merge_callback._entry_ptr.59 = internal global ptr @merge_callback._entry.57, section ".printk_index", align 4
@merge_callback._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.56, ptr @.str.23, i32 1155, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\013device-mapper: snapshots: Flush after merge failed: shutting down merge\0A\00", [53 x i8] zeroinitializer }, align 32
@merge_callback._entry_ptr.62 = internal global ptr @merge_callback._entry.60, section ".printk_index", align 4
@merge_callback._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.56, ptr @.str.23, i32 1161, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\013device-mapper: snapshots: Write error in exception store: shutting down merge\0A\00", [47 x i8] zeroinitializer }, align 32
@merge_callback._entry_ptr.65 = internal global ptr @merge_callback._entry.63, section ".printk_index", align 4
@__remove_single_exception_chunk._entry = internal constant %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.23, i32 947, ptr null, ptr null }, align 1
@.str.66 = internal constant { [104 x i8], [56 x i8] } { [104 x i8] c"\013device-mapper: snapshots: Corruption detected: exception for block %llu is on disk but not in memory\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"__remove_single_exception_chunk\00", [32 x i8] zeroinitializer }, align 32
@__remove_single_exception_chunk._entry_ptr = internal global ptr @__remove_single_exception_chunk._entry, section ".printk_index", align 4
@__remove_single_exception_chunk._entry.68 = internal constant %struct.pi_entry { ptr @.str.69, ptr @.str.67, ptr @.str.23, i32 978, ptr null, ptr null }, align 1
@.str.69 = internal constant { [104 x i8], [56 x i8] } { [104 x i8] c"\013device-mapper: snapshots: Attempt to merge block %llu from the middle of a chunk range [%llu - %llu]\0A\00", [56 x i8] zeroinitializer }, align 32
@__remove_single_exception_chunk._entry_ptr.70 = internal global ptr @__remove_single_exception_chunk._entry.68, section ".printk_index", align 4
@.str.71 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Invalid\00", [24 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Merge failed\00", [19 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Overflow\00", [23 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%llu/%llu %llu\00", [17 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s %s\00", [26 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" %u\00", [28 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c" discard_zeroes_cow\00", [44 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c" discard_passdown_origin\00", [39 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"target_name=%s,target_version=%u.%u.%u\00", [57 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c",snap_origin_name=%s\00", [43 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c",snap_cow_name=%s\00", [46 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c",snap_valid=%c\00", [17 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c",snap_merge_failed=%c\00", [42 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c",snapshot_overflowed=%c\00", [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c";\00", [30 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"snapshot-origin\00", [16 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"origin: incorrect number of arguments\00", [58 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Cannot allocate private origin structure\00", [55 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Cannot get target device\00", [39 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@dm_snapshot_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.93, ptr @.str.23, i32 2811, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013device-mapper: snapshots: Failed to initialize exception stores\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dm_snapshot_init\00", [47 x i8] zeroinitializer }, align 32
@dm_snapshot_init._entry_ptr = internal global ptr @dm_snapshot_init._entry, section ".printk_index", align 4
@dm_snapshot_init._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.93, ptr @.str.23, i32 2817, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013device-mapper: snapshots: init_origin_hash failed.\0A\00", [42 x i8] zeroinitializer }, align 32
@dm_snapshot_init._entry_ptr.96 = internal global ptr @dm_snapshot_init._entry.94, section ".printk_index", align 4
@.str.97 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dm_exception\00", [19 x i8] zeroinitializer }, align 32
@dm_snapshot_init._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.93, ptr @.str.23, i32 2823, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013device-mapper: snapshots: Couldn't create exception cache.\0A\00", [34 x i8] zeroinitializer }, align 32
@dm_snapshot_init._entry_ptr.100 = internal global ptr @dm_snapshot_init._entry.98, section ".printk_index", align 4
@.str.101 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dm_snap_pending_exception\00", [38 x i8] zeroinitializer }, align 32
@dm_snapshot_init._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.93, ptr @.str.23, i32 2830, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013device-mapper: snapshots: Couldn't create pending cache.\0A\00", [36 x i8] zeroinitializer }, align 32
@dm_snapshot_init._entry_ptr.104 = internal global ptr @dm_snapshot_init._entry.102, section ".printk_index", align 4
@dm_snapshot_init._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.93, ptr @.str.23, i32 2837, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013device-mapper: snapshots: snapshot target register failed %d\0A\00", [32 x i8] zeroinitializer }, align 32
@dm_snapshot_init._entry_ptr.107 = internal global ptr @dm_snapshot_init._entry.105, section ".printk_index", align 4
@dm_snapshot_init._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.93, ptr @.str.23, i32 2843, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013device-mapper: snapshots: Origin target register failed %d\0A\00", [34 x i8] zeroinitializer }, align 32
@dm_snapshot_init._entry_ptr.110 = internal global ptr @dm_snapshot_init._entry.108, section ".printk_index", align 4
@dm_snapshot_init._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.93, ptr @.str.23, i32 2849, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013device-mapper: snapshots: Merge target register failed %d\0A\00", [35 x i8] zeroinitializer }, align 32
@dm_snapshot_init._entry_ptr.113 = internal global ptr @dm_snapshot_init._entry.111, section ".printk_index", align 4
@init_origin_hash._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.115, ptr @.str.23, i32 357, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013device-mapper: snapshots: unable to allocate memory for _origins\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"init_origin_hash\00", [47 x i8] zeroinitializer }, align 32
@init_origin_hash._entry_ptr = internal global ptr @init_origin_hash._entry, section ".printk_index", align 4
@init_origin_hash._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.115, ptr @.str.23, i32 367, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\013device-mapper: snapshots: unable to allocate memory for _dm_origins\0A\00", [57 x i8] zeroinitializer }, align 32
@init_origin_hash._entry_ptr.118 = internal global ptr @init_origin_hash._entry.116, section ".printk_index", align 4
@init_origin_hash.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.119 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&_origins_lock\00", [17 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.120 = internal global [4 x i64] [i64 2, i64 32, i64 4294967284, i64 4294967291]
@__sancov_gen_cov_switch_values.121 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.122 = private unnamed_addr constant [14 x i8] c"cow_threshold\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 169, i32 17 }
@___asan_gen_.125 = private unnamed_addr constant [19 x i8] c"dm_kcopyd_throttle\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 173, i32 1 }
@___asan_gen_.128 = private unnamed_addr constant [16 x i8] c"snapshot_target\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 2774, i32 27 }
@___asan_gen_.131 = private unnamed_addr constant [14 x i8] c"origin_target\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 2761, i32 27 }
@___asan_gen_.134 = private unnamed_addr constant [13 x i8] c"merge_target\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 2789, i32 27 }
@___asan_gen_.137 = private unnamed_addr constant [14 x i8] c"pending_cache\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 242, i32 27 }
@___asan_gen_.140 = private unnamed_addr constant [16 x i8] c"exception_cache\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 241, i32 27 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 2775, i32 13 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1264, i32 15 }
@___asan_gen_.149 = private unnamed_addr constant [30 x i8] c"dm_snapshot_merge_target_name\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 28, i32 19 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1276, i32 15 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1294, i32 15 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1305, i32 15 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1312, i32 15 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1318, i32 15 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1331, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1335, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1337, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1347, i32 15 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1352, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1357, i32 15 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1363, i32 15 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1370, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1382, i32 15 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1403, i32 15 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1407, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1411, i32 15 }
@___asan_gen_.227 = private unnamed_addr constant [6 x i8] c"_args\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1205, i32 29 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1206, i32 10 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1223, i32 29 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1226, i32 34 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1230, i32 16 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1241, i32 15 }
@___asan_gen_.245 = private unnamed_addr constant [14 x i8] c"_origins_lock\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 344, i32 28 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 498, i32 21 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 520, i32 21 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 526, i32 21 }
@___asan_gen_.257 = private unnamed_addr constant [9 x i8] c"_origins\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 342, i32 26 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1501, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant [28 x i8] c"../include/linux/wait_bit.h\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 73, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 2074, i32 7 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1643, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1645, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant [34 x i8] c"_pending_exceptions_done_spinlock\00", align 1
@___asan_gen_.293 = private unnamed_addr constant [31 x i8] c"_pending_exceptions_done_count\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 348, i32 17 }
@___asan_gen_.296 = private unnamed_addr constant [25 x i8] c"_pending_exceptions_done\00", align 1
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 347, i32 8 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 346, i32 8 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 2230, i32 4 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 2234, i32 4 }
@___asan_gen_.320 = private unnamed_addr constant [12 x i8] c"_dm_origins\00", align 1
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 343, i32 26 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1059, i32 3 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1067, i32 4 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1148, i32 4 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1150, i32 4 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1155, i32 3 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 1161, i32 3 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 945, i32 3 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 973, i32 3 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 2349, i32 4 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 2351, i32 4 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 2353, i32 4 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 2362, i32 5 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 2368, i32 5 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 2381, i32 3 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 2386, i32 4 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 2388, i32 5 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 2390, i32 5 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 2395, i32 3 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 2396, i32 3 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 2397, i32 3 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 2398, i32 3 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 2399, i32 3 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 2400, i32 3 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 2401, i32 3 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 2762, i32 13 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 2650, i32 15 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 2656, i32 15 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 2663, i32 15 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 2745, i32 28 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 2811, i32 3 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 2817, i32 3 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 2821, i32 20 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 2823, i32 3 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 2828, i32 18 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 2830, i32 3 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 2837, i32 3 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 2843, i32 3 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 2849, i32 3 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 357, i32 3 }
@___asan_gen_.497 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 367, i32 3 }
@___asan_gen_.503 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.506 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.507 = private constant [24 x i8] c"../drivers/md/dm-snap.c\00", align 1
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.507, i32 374, i32 2 }
@llvm.compiler.used = appending global [174 x ptr] [ptr @__UNIQUE_ID_alias301, ptr @__UNIQUE_ID_alias302, ptr @__UNIQUE_ID_author298, ptr @__UNIQUE_ID_description297, ptr @__UNIQUE_ID_file299, ptr @__UNIQUE_ID_license300, ptr @__UNIQUE_ID_snapshot_copy_throttle286, ptr @__UNIQUE_ID_snapshot_copy_throttletype285, ptr @__UNIQUE_ID_snapshot_cow_threshold284, ptr @__UNIQUE_ID_snapshot_cow_thresholdtype283, ptr @__exitcall_dm_snapshot_exit, ptr @__initcall__kmod_dm_snapshot__296_2885_dm_snapshot_init6, ptr @__invalidate_snapshot._entry, ptr @__invalidate_snapshot._entry.40, ptr @__invalidate_snapshot._entry_ptr, ptr @__invalidate_snapshot._entry_ptr.42, ptr @__ksymtab_dm_snap_cow, ptr @__ksymtab_dm_snap_origin, ptr @__param_snapshot_copy_throttle, ptr @__param_snapshot_cow_threshold, ptr @__remove_single_exception_chunk._entry, ptr @__remove_single_exception_chunk._entry.68, ptr @__remove_single_exception_chunk._entry_ptr, ptr @__remove_single_exception_chunk._entry_ptr.70, ptr @dm_snapshot_exit, ptr @dm_snapshot_init._entry, ptr @dm_snapshot_init._entry.102, ptr @dm_snapshot_init._entry.105, ptr @dm_snapshot_init._entry.108, ptr @dm_snapshot_init._entry.111, ptr @dm_snapshot_init._entry.94, ptr @dm_snapshot_init._entry.98, ptr @dm_snapshot_init._entry_ptr, ptr @dm_snapshot_init._entry_ptr.100, ptr @dm_snapshot_init._entry_ptr.104, ptr @dm_snapshot_init._entry_ptr.107, ptr @dm_snapshot_init._entry_ptr.110, ptr @dm_snapshot_init._entry_ptr.113, ptr @dm_snapshot_init._entry_ptr.96, ptr @init_origin_hash._entry, ptr @init_origin_hash._entry.116, ptr @init_origin_hash._entry_ptr, ptr @init_origin_hash._entry_ptr.118, ptr @merge_callback._entry, ptr @merge_callback._entry.57, ptr @merge_callback._entry.60, ptr @merge_callback._entry.63, ptr @merge_callback._entry_ptr, ptr @merge_callback._entry_ptr.59, ptr @merge_callback._entry_ptr.62, ptr @merge_callback._entry_ptr.65, ptr @snapshot_ctr._entry, ptr @snapshot_ctr._entry_ptr, ptr @snapshot_dtr._entry, ptr @snapshot_dtr._entry_ptr, ptr @snapshot_map._entry, ptr @snapshot_map._entry_ptr, ptr @snapshot_merge_next_chunks._entry, ptr @snapshot_merge_next_chunks._entry.52, ptr @snapshot_merge_next_chunks._entry_ptr, ptr @snapshot_merge_next_chunks._entry_ptr.54, ptr @snapshot_preresume._entry, ptr @snapshot_preresume._entry.47, ptr @snapshot_preresume._entry_ptr, ptr @snapshot_preresume._entry_ptr.49, ptr @cow_threshold, ptr @dm_kcopyd_throttle, ptr @snapshot_target, ptr @origin_target, ptr @merge_target, ptr @pending_cache, ptr @exception_cache, ptr @.str, ptr @.str.1, ptr @dm_snapshot_merge_target_name, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @snapshot_ctr.__key, ptr @.str.7, ptr @snapshot_ctr.__key.8, ptr @.str.9, ptr @snapshot_ctr.__key.10, ptr @.str.11, ptr @.str.12, ptr @snapshot_ctr.__key.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @snapshot_ctr.__key.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @parse_snapshot_features._args, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @_origins_lock, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @_origins, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @_pending_exceptions_done_spinlock, ptr @_pending_exceptions_done_count, ptr @_pending_exceptions_done, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @_dm_origins, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.61, ptr @.str.64, ptr @.str.66, ptr @.str.67, ptr @.str.69, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.95, ptr @.str.97, ptr @.str.99, ptr @.str.101, ptr @.str.103, ptr @.str.106, ptr @.str.109, ptr @.str.112, ptr @.str.114, ptr @.str.115, ptr @.str.117, ptr @init_origin_hash.__key, ptr @.str.119], section "llvm.metadata"
@0 = internal global [129 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cow_threshold to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_kcopyd_throttle to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snapshot_target to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @origin_target to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @merge_target to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pending_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exception_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_snapshot_merge_target_name to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snapshot_ctr.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snapshot_ctr.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snapshot_ctr.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snapshot_ctr.__key.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snapshot_ctr.__key.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snapshot_ctr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_snapshot_features._args to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_origins_lock to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_origins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snapshot_dtr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snapshot_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_pending_exceptions_done_spinlock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_pending_exceptions_done_count to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_pending_exceptions_done to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snapshot_preresume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snapshot_preresume._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_dm_origins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snapshot_merge_next_chunks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snapshot_merge_next_chunks._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @merge_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @merge_callback._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @merge_callback._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @merge_callback._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_snapshot_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_snapshot_init._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_snapshot_init._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_snapshot_init._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_snapshot_init._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_snapshot_init._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_snapshot_init._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_origin_hash._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_origin_hash._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_origin_hash.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @dm_snap_origin(ptr nocapture noundef readonly %s) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %origin = getelementptr inbounds %struct.dm_snapshot, ptr %s, i32 0, i32 1
  %0 = ptrtoint ptr %origin to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %origin, align 8
  ret ptr %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @dm_snap_cow(ptr nocapture noundef readonly %s) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %cow = getelementptr inbounds %struct.dm_snapshot, ptr %s, i32 0, i32 2
  %0 = ptrtoint ptr %cow to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cow, align 4
  ret ptr %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dm_snapshot_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @dm_unregister_target(ptr noundef nonnull @snapshot_target) #16
  tail call void @dm_unregister_target(ptr noundef nonnull @origin_target) #16
  tail call void @dm_unregister_target(ptr noundef nonnull @merge_target) #16
  %0 = load ptr, ptr @_origins, align 4
  tail call void @kfree(ptr noundef %0) #16
  %1 = load ptr, ptr @_dm_origins, align 4
  tail call void @kfree(ptr noundef %1) #16
  %2 = load ptr, ptr @pending_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %2) #16
  %3 = load ptr, ptr @exception_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %3) #16
  tail call void @dm_exception_store_exit() #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_unregister_target(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_exception_store_exit() local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dm_snapshot_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @dm_exception_store_init() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92) #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 2048) #20
  store ptr %call7.i.i.i, ptr @_origins, align 4
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114) #19
  br label %do.end7

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %i.028.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %add.ptr.i = getelementptr %struct.list_head, ptr %call7.i.i.i, i32 %i.028.i
  %1 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %add.ptr.i, ptr %add.ptr.i, align 8
  %prev.i.i = getelementptr %struct.list_head, ptr %call7.i.i.i, i32 %i.028.i, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %add.ptr.i, ptr %prev.i.i, align 4
  %inc.i = add nuw nsw i32 %i.028.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i26.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3264, i32 noundef 2048) #20
  store ptr %call7.i.i26.i, ptr @_dm_origins, align 4
  %tobool3.not.i = icmp eq ptr %call7.i.i26.i, null
  br i1 %tobool3.not.i, label %do.end7.i, label %for.end.i.for.body13.i_crit_edge

for.end.i.for.body13.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body13.i

do.end7.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117) #19
  %4 = load ptr, ptr @_origins, align 4
  tail call void @kfree(ptr noundef %4) #16
  br label %do.end7

for.body13.i:                                     ; preds = %for.body13.i.for.body13.i_crit_edge, %for.end.i.for.body13.i_crit_edge
  %i.129.i = phi i32 [ %inc16.i, %for.body13.i.for.body13.i_crit_edge ], [ 0, %for.end.i.for.body13.i_crit_edge ]
  %add.ptr14.i = getelementptr %struct.list_head, ptr %call7.i.i26.i, i32 %i.129.i
  %5 = ptrtoint ptr %add.ptr14.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %add.ptr14.i, ptr %add.ptr14.i, align 8
  %prev.i27.i = getelementptr %struct.list_head, ptr %call7.i.i26.i, i32 %i.129.i, i32 1
  %6 = ptrtoint ptr %prev.i27.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr14.i, ptr %prev.i27.i, align 4
  %inc16.i = add nuw nsw i32 %i.129.i, 1
  %exitcond30.not.i = icmp eq i32 %inc16.i, 256
  br i1 %exitcond30.not.i, label %if.end10, label %for.body13.i.for.body13.i_crit_edge

for.body13.i.for.body13.i_crit_edge:              ; preds = %for.body13.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body13.i

do.end7:                                          ; preds = %do.end7.i, %do.end.i
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95) #19
  br label %bad_origin_hash

if.end10:                                         ; preds = %for.body13.i
  tail call void @__init_rwsem(ptr noundef nonnull @_origins_lock, ptr noundef nonnull @.str.119, ptr noundef nonnull @init_origin_hash.__key) #16
  %call11 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.97, i32 noundef 24, i32 noundef 8, i32 noundef 0, ptr noundef null) #16
  store ptr %call11, ptr @exception_cache, align 4
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %do.end16, label %if.end19

do.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.99) #19
  br label %bad_exception_cache

if.end19:                                         ; preds = %if.end10
  %call20 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.101, i32 noundef 88, i32 noundef 8, i32 noundef 0, ptr noundef null) #16
  store ptr %call20, ptr @pending_cache, align 4
  %tobool21.not = icmp eq ptr %call20, null
  br i1 %tobool21.not, label %do.end25, label %if.end28

do.end25:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #18
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103) #19
  br label %bad_pending_cache

if.end28:                                         ; preds = %if.end19
  %call29 = tail call i32 @dm_register_target(ptr noundef nonnull @snapshot_target) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp = icmp slt i32 %call29, 0
  br i1 %cmp, label %do.end33, label %if.end36

do.end33:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #18
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, i32 noundef %call29) #19
  br label %bad_register_snapshot_target

if.end36:                                         ; preds = %if.end28
  %call37 = tail call i32 @dm_register_target(ptr noundef nonnull @origin_target) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %do.end42, label %if.end45

do.end42:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #18
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109, i32 noundef %call37) #19
  br label %bad_register_origin_target

if.end45:                                         ; preds = %if.end36
  %call46 = tail call i32 @dm_register_target(ptr noundef nonnull @merge_target) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %do.end51, label %if.end45.cleanup_crit_edge

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end51:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #18
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, i32 noundef %call46) #19
  tail call void @dm_unregister_target(ptr noundef nonnull @origin_target) #16
  br label %bad_register_origin_target

bad_register_origin_target:                       ; preds = %do.end51, %do.end42
  %r.0 = phi i32 [ %call37, %do.end42 ], [ %call46, %do.end51 ]
  tail call void @dm_unregister_target(ptr noundef nonnull @snapshot_target) #16
  br label %bad_register_snapshot_target

bad_register_snapshot_target:                     ; preds = %bad_register_origin_target, %do.end33
  %r.1 = phi i32 [ %call29, %do.end33 ], [ %r.0, %bad_register_origin_target ]
  %7 = load ptr, ptr @pending_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %7) #16
  br label %bad_pending_cache

bad_pending_cache:                                ; preds = %bad_register_snapshot_target, %do.end25
  %r.2 = phi i32 [ %r.1, %bad_register_snapshot_target ], [ -12, %do.end25 ]
  %8 = load ptr, ptr @exception_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %8) #16
  br label %bad_exception_cache

bad_exception_cache:                              ; preds = %bad_pending_cache, %do.end16
  %r.3 = phi i32 [ %r.2, %bad_pending_cache ], [ -12, %do.end16 ]
  %9 = load ptr, ptr @_origins, align 4
  tail call void @kfree(ptr noundef %9) #16
  %10 = load ptr, ptr @_dm_origins, align 4
  tail call void @kfree(ptr noundef %10) #16
  br label %bad_origin_hash

bad_origin_hash:                                  ; preds = %bad_exception_cache, %do.end7
  %r.4 = phi i32 [ -12, %do.end7 ], [ %r.3, %bad_exception_cache ]
  tail call void @dm_exception_store_exit() #16
  br label %cleanup

cleanup:                                          ; preds = %bad_origin_hash, %if.end45.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %r.4, %bad_origin_hash ], [ 0, %if.end45.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snapshot_ctr(ptr noundef %ti, i32 noundef %argc, ptr noundef %argv) #3 align 64 {
entry:
  %argc.i = alloca i32, align 4
  %as = alloca %struct.dm_arg_set, align 4
  %args_used = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %as) #16
  %0 = getelementptr inbounds %struct.dm_arg_set, ptr %as, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args_used) #16
  %1 = ptrtoint ptr %args_used to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %args_used, align 4, !annotation !290
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %argc)
  %cmp = icmp ult i32 %argc, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %error = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %2 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str.1, ptr %error, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 1
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %type, align 4
  %name = getelementptr inbounds %struct.target_type, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name, align 8
  %cmp1 = icmp eq ptr %6, @dm_snapshot_merge_target_name
  %spec.select = select i1 %cmp1, i32 2, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 688) #20
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %error5 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %8 = ptrtoint ptr %error5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @.str.2, ptr %error5, align 8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %9 = ptrtoint ptr %as to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %argc, ptr %as, align 4
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %argv, ptr %0, align 4
  call void @dm_consume_args(ptr noundef nonnull %as, i32 noundef 4) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %argc.i) #16
  %11 = ptrtoint ptr %argc.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %argc.i, align 4, !annotation !290
  %12 = ptrtoint ptr %as to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %as, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %parse_snapshot_features.exit.thread246, label %if.end.i

parse_snapshot_features.exit.thread246:           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %argc.i) #16
  br label %if.end12

if.end.i:                                         ; preds = %if.end6
  %error.i = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %call.i = call i32 @dm_read_arg_group(ptr noundef nonnull @parse_snapshot_features._args, ptr noundef nonnull %as, ptr noundef nonnull %argc.i, ptr noundef %error.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %while.cond.preheader.i, label %if.end.i.parse_snapshot_features.exit.thread_crit_edge

if.end.i.parse_snapshot_features.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %parse_snapshot_features.exit.thread

while.cond.preheader.i:                           ; preds = %if.end.i
  %14 = ptrtoint ptr %argc.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %argc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool5.not44.i = icmp eq i32 %15, 0
  br i1 %tobool5.not44.i, label %while.cond.preheader.i.while.end.i_crit_edge, label %while.body.critedge.lr.ph.i

while.cond.preheader.i.while.end.i_crit_edge:     ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

while.body.critedge.lr.ph.i:                      ; preds = %while.cond.preheader.i
  %discard_passdown_origin.i = getelementptr inbounds %struct.dm_snapshot, ptr %call7.i.i, i32 0, i32 26
  br label %while.body.critedge.i

while.body.critedge.i:                            ; preds = %if.end20.i.while.body.critedge.i_crit_edge, %while.body.critedge.lr.ph.i
  %call7.i = call ptr @dm_shift_arg(ptr noundef nonnull %as) #16
  %16 = ptrtoint ptr %argc.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %argc.i, align 4
  %dec.i = add i32 %17, -1
  store i32 %dec.i, ptr %argc.i, align 4
  %call8.i = call i32 @strcasecmp(ptr noundef %call7.i, ptr noundef nonnull @.str.26) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %while.body.critedge.i.if.end20.i_crit_edge, label %if.else.i

while.body.critedge.i.if.end20.i_crit_edge:       ; preds = %while.body.critedge.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end20.i

if.else.i:                                        ; preds = %while.body.critedge.i
  %call11.i = call i32 @strcasecmp(ptr noundef %call7.i, ptr noundef nonnull @.str.27) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.else.i.if.end20.i_crit_edge, label %while.end.i.thread

if.else.i.if.end20.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.else.i.if.end20.i_crit_edge, %while.body.critedge.i.if.end20.i_crit_edge
  %.sink.i = phi i8 [ 64, %while.body.critedge.i.if.end20.i_crit_edge ], [ 32, %if.else.i.if.end20.i_crit_edge ]
  %18 = ptrtoint ptr %discard_passdown_origin.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load14.i = load i8, ptr %discard_passdown_origin.i, align 4
  %bf.set16.i = or i8 %bf.load14.i, %.sink.i
  store i8 %bf.set16.i, ptr %discard_passdown_origin.i, align 4
  %tobool5.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool5.not.i, label %if.end20.i.while.end.i_crit_edge, label %if.end20.i.while.body.critedge.i_crit_edge

if.end20.i.while.body.critedge.i_crit_edge:       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.critedge.i

if.end20.i.while.end.i_crit_edge:                 ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

while.end.i:                                      ; preds = %if.end20.i.while.end.i_crit_edge, %while.cond.preheader.i.while.end.i_crit_edge
  %discard_zeroes_cow21.i = getelementptr inbounds %struct.dm_snapshot, ptr %call7.i.i, i32 0, i32 26
  %19 = ptrtoint ptr %discard_zeroes_cow21.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load22.i = load i8, ptr %discard_zeroes_cow21.i, align 4
  %20 = and i8 %bf.load22.i, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %20)
  %.not.i = icmp eq i8 %20, 32
  br i1 %.not.i, label %while.end.i.if.then29.i_crit_edge, label %parse_snapshot_features.exit

while.end.i.if.then29.i_crit_edge:                ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then29.i

while.end.i.thread:                               ; preds = %if.else.i
  %21 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @.str.28, ptr %error.i, align 8
  %discard_zeroes_cow21.i252 = getelementptr inbounds %struct.dm_snapshot, ptr %call7.i.i, i32 0, i32 26
  %22 = ptrtoint ptr %discard_zeroes_cow21.i252 to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load22.i253 = load i8, ptr %discard_zeroes_cow21.i252, align 4
  %23 = and i8 %bf.load22.i253, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %23)
  %.not.i254 = icmp eq i8 %23, 32
  br i1 %.not.i254, label %while.end.i.thread.if.then29.i_crit_edge, label %parse_snapshot_features.exit.thread257

while.end.i.thread.if.then29.i_crit_edge:         ; preds = %while.end.i.thread
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then29.i

parse_snapshot_features.exit.thread257:           ; preds = %while.end.i.thread
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %argc.i) #16
  br label %bad_features

if.then29.i:                                      ; preds = %while.end.i.thread.if.then29.i_crit_edge, %while.end.i.if.then29.i_crit_edge
  %24 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @.str.29, ptr %error.i, align 8
  br label %parse_snapshot_features.exit.thread

parse_snapshot_features.exit.thread:              ; preds = %if.then29.i, %if.end.i.parse_snapshot_features.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %argc.i) #16
  br label %bad_features

parse_snapshot_features.exit:                     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %argc.i) #16
  br label %if.end12

if.end12:                                         ; preds = %parse_snapshot_features.exit, %parse_snapshot_features.exit.thread246
  %25 = ptrtoint ptr %argv to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %argv, align 4
  %origin = getelementptr inbounds %struct.dm_snapshot, ptr %call7.i.i, i32 0, i32 1
  %call13 = call i32 @dm_get_device(ptr noundef %ti, ptr noundef %26, i32 noundef %spec.select, ptr noundef %origin) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end17, label %if.then15

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  %error16 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %27 = ptrtoint ptr %error16 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @.str.3, ptr %error16, align 8
  br label %bad_features

if.end17:                                         ; preds = %if.end12
  %incdec.ptr = getelementptr ptr, ptr %argv, i32 1
  %28 = ptrtoint ptr %origin to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %origin, align 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %bd_dev = getelementptr inbounds %struct.block_device, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %bd_dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bd_dev, align 4
  %34 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %incdec.ptr, align 4
  %incdec.ptr20 = getelementptr ptr, ptr %argv, i32 2
  %dec21 = add i32 %argc, -2
  %call22 = call i32 @dm_get_dev_t(ptr noundef %35) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp ne i32 %call22, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %call22, i32 %33)
  %cmp24 = icmp eq i32 %call22, %33
  %or.cond = select i1 %tobool23.not, i1 %cmp24, i1 false
  br i1 %or.cond, label %if.then25, label %if.end27

if.then25:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #18
  %error26 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %36 = ptrtoint ptr %error26 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @.str.4, ptr %error26, align 8
  br label %bad_cow

if.end27:                                         ; preds = %if.end17
  %37 = ptrtoint ptr %ti to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ti, align 8
  %call28 = call i32 @dm_table_get_mode(ptr noundef %38) #16
  %cow = getelementptr inbounds %struct.dm_snapshot, ptr %call7.i.i, i32 0, i32 2
  %call29 = call i32 @dm_get_device(ptr noundef %ti, ptr noundef %35, i32 noundef %call28, ptr noundef %cow) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end33, label %if.then31

if.then31:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #18
  %error32 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %39 = ptrtoint ptr %error32 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @.str.5, ptr %error32, align 8
  br label %bad_cow

if.end33:                                         ; preds = %if.end27
  %store = getelementptr inbounds %struct.dm_snapshot, ptr %call7.i.i, i32 0, i32 19
  %call34 = call i32 @dm_exception_store_create(ptr noundef %ti, i32 noundef %dec21, ptr noundef %incdec.ptr20, ptr noundef nonnull %call7.i.i, ptr noundef nonnull %args_used, ptr noundef %store) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end38, label %if.then36

if.then36:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #18
  %error37 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %40 = ptrtoint ptr %error37 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @.str.6, ptr %error37, align 8
  br label %bad_store

if.end38:                                         ; preds = %if.end33
  %ti39 = getelementptr inbounds %struct.dm_snapshot, ptr %call7.i.i, i32 0, i32 3
  %41 = ptrtoint ptr %ti39 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %ti, ptr %ti39, align 8
  %valid = getelementptr inbounds %struct.dm_snapshot, ptr %call7.i.i, i32 0, i32 5
  %42 = ptrtoint ptr %valid to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %valid, align 4
  %snapshot_overflowed = getelementptr inbounds %struct.dm_snapshot, ptr %call7.i.i, i32 0, i32 6
  %43 = ptrtoint ptr %snapshot_overflowed to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %snapshot_overflowed, align 8
  %active = getelementptr inbounds %struct.dm_snapshot, ptr %call7.i.i, i32 0, i32 7
  %44 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %active, align 4
  %pending_exceptions_count = getelementptr inbounds %struct.dm_snapshot, ptr %call7.i.i, i32 0, i32 8
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %pending_exceptions_count, i32 noundef 4) #16
  %45 = ptrtoint ptr %pending_exceptions_count to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile i32 0, ptr %pending_exceptions_count, align 8
  %pe_allocation_lock = getelementptr inbounds %struct.dm_snapshot, ptr %call7.i.i, i32 0, i32 9
  call void @__raw_spin_lock_init(ptr noundef %pe_allocation_lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @snapshot_ctr.__key, i16 noundef signext 3) #16
  %exception_start_sequence = getelementptr inbounds %struct.dm_snapshot, ptr %call7.i.i, i32 0, i32 10
  %46 = call ptr @memset(ptr %exception_start_sequence, i32 0, i32 20)
  call void @__init_rwsem(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.9, ptr noundef nonnull @snapshot_ctr.__key.8) #16
  %list = getelementptr inbounds %struct.dm_snapshot, ptr %call7.i.i, i32 0, i32 4
  %47 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.dm_snapshot, ptr %call7.i.i, i32 0, i32 4, i32 1
  %48 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %list, ptr %prev.i, align 8
  %pe_lock = getelementptr inbounds %struct.dm_snapshot, ptr %call7.i.i, i32 0, i32 16
  call void @__raw_spin_lock_init(ptr noundef %pe_lock, ptr noundef nonnull @.str.11, ptr noundef nonnull @snapshot_ctr.__key.10, i16 noundef signext 3) #16
  %state_bits = getelementptr inbounds %struct.dm_snapshot, ptr %call7.i.i, i32 0, i32 23
  %49 = ptrtoint ptr %state_bits to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %state_bits, align 4
  %merge_failed = getelementptr inbounds %struct.dm_snapshot, ptr %call7.i.i, i32 0, i32 26
  %50 = ptrtoint ptr %merge_failed to i32
  call void @__asan_load1_noabort(i32 %50)
  %bf.load = load i8, ptr %merge_failed, align 4
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %merge_failed, align 4
  %first_merging_chunk = getelementptr inbounds %struct.dm_snapshot, ptr %call7.i.i, i32 0, i32 24
  %51 = ptrtoint ptr %first_merging_chunk to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 0, ptr %first_merging_chunk, align 8
  %num_merging_chunks = getelementptr inbounds %struct.dm_snapshot, ptr %call7.i.i, i32 0, i32 25
  %52 = ptrtoint ptr %num_merging_chunks to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %num_merging_chunks, align 8
  %bios_queued_during_merge = getelementptr inbounds %struct.dm_snapshot, ptr %call7.i.i, i32 0, i32 27
  %tail.i = getelementptr inbounds %struct.dm_snapshot, ptr %call7.i.i, i32 0, i32 27, i32 1
  %53 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %tail.i, align 4
  %54 = ptrtoint ptr %bios_queued_during_merge to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %bios_queued_during_merge, align 8
  %flush_bio = getelementptr inbounds %struct.dm_snapshot, ptr %call7.i.i, i32 0, i32 28
  call void @bio_init(ptr noundef %flush_bio, ptr noundef null, i16 noundef zeroext 0) #16
  %call48 = call fastcc i32 @init_hash_tables(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %do.body53, label %if.then50

if.then50:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #18
  %error51 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %55 = ptrtoint ptr %error51 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @.str.12, ptr %error51, align 8
  br label %bad_hash_tables

do.body53:                                        ; preds = %if.end38
  %in_progress_wait = getelementptr inbounds %struct.dm_snapshot, ptr %call7.i.i, i32 0, i32 21
  call void @__init_waitqueue_head(ptr noundef %in_progress_wait, ptr noundef nonnull @.str.14, ptr noundef nonnull @snapshot_ctr.__key.13) #16
  %call56 = call ptr @dm_kcopyd_client_create(ptr noundef nonnull @dm_kcopyd_throttle) #16
  %kcopyd_client = getelementptr inbounds %struct.dm_snapshot, ptr %call7.i.i, i32 0, i32 22
  %56 = ptrtoint ptr %kcopyd_client to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call56, ptr %kcopyd_client, align 8
  %cmp.i = icmp ugt ptr %call56, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then59, label %if.end63

if.then59:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #18
  %57 = ptrtoint ptr %call56 to i32
  %error62 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %58 = ptrtoint ptr %error62 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @.str.15, ptr %error62, align 8
  br label %bad_kcopyd

if.end63:                                         ; preds = %do.body53
  %pending_pool = getelementptr inbounds %struct.dm_snapshot, ptr %call7.i.i, i32 0, i32 13
  %59 = load ptr, ptr @pending_cache, align 4
  %call.i243 = call i32 @mempool_init(ptr noundef %pending_pool, i32 noundef 256, ptr noundef nonnull @mempool_alloc_slab, ptr noundef nonnull @mempool_free_slab, ptr noundef %59) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i243)
  %tobool65.not = icmp eq i32 %call.i243, 0
  br i1 %tobool65.not, label %for.body.preheader, label %if.then66

for.body.preheader:                               ; preds = %if.end63
  %uglygep = getelementptr i8, ptr %call7.i.i, i32 428
  %60 = call ptr @memset(ptr %uglygep, i32 0, i32 64)
  %tracked_chunk_lock = getelementptr inbounds %struct.dm_snapshot, ptr %call7.i.i, i32 0, i32 17
  call void @__raw_spin_lock_init(ptr noundef %tracked_chunk_lock, ptr noundef nonnull @.str.18, ptr noundef nonnull @snapshot_ctr.__key.17, i16 noundef signext 3) #16
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %61 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call7.i.i, ptr %private, align 4
  %num_flush_bios75 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 5
  %62 = ptrtoint ptr %num_flush_bios75 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %spec.select, ptr %num_flush_bios75, align 4
  %63 = ptrtoint ptr %merge_failed to i32
  call void @__asan_load1_noabort(i32 %63)
  %bf.load76 = load i8, ptr %merge_failed, align 4
  %64 = and i8 %bf.load76, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %bf.cast.not = icmp eq i8 %64, 0
  br i1 %bf.cast.not, label %for.body.preheader.if.end83_crit_edge, label %if.then78

for.body.preheader.if.end83_crit_edge:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end83

if.then66:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #18
  %error67 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %65 = ptrtoint ptr %error67 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @.str.16, ptr %error67, align 8
  br label %bad_pending_pool

if.then78:                                        ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #18
  %66 = and i8 %bf.load76, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %bf.cast82.not = icmp eq i8 %66, 0
  %cond = select i1 %bf.cast82.not, i32 1, i32 2
  %num_discard_bios = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 6
  %67 = ptrtoint ptr %num_discard_bios to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %cond, ptr %num_discard_bios, align 8
  br label %if.end83

if.end83:                                         ; preds = %if.then78, %for.body.preheader.if.end83_crit_edge
  %per_io_data_size = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 10
  %68 = ptrtoint ptr %per_io_data_size to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 16, ptr %per_io_data_size, align 8
  %call84 = call fastcc i32 @register_snapshot(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %call84)
  %cmp85 = icmp eq i32 %call84, -12
  br i1 %cmp85, label %if.then86, label %if.else

if.then86:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #18
  %error87 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %69 = ptrtoint ptr %error87 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @.str.19, ptr %error87, align 8
  br label %bad_load_and_register

if.else:                                          ; preds = %if.end83
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %cmp88 = icmp slt i32 %call84, 0
  br i1 %cmp88, label %if.else.bad_load_and_register_crit_edge, label %if.end91

if.else.bad_load_and_register_crit_edge:          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %bad_load_and_register

if.end91:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %cmp92.not = icmp eq i32 %call84, 0
  %70 = ptrtoint ptr %store to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %store, align 4
  br i1 %cmp92.not, label %if.end95, label %if.then93

if.then93:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #18
  %chunk_size = getelementptr inbounds %struct.dm_exception_store, ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %chunk_size to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %chunk_size, align 4
  br label %cleanup

if.end95:                                         ; preds = %if.end91
  %73 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %71, align 4
  %read_metadata = getelementptr inbounds %struct.dm_exception_store_type, ptr %74, i32 0, i32 4
  %75 = ptrtoint ptr %read_metadata to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %read_metadata, align 4
  %call99 = call i32 %76(ptr noundef %71, ptr noundef nonnull @dm_add_exception, ptr noundef nonnull %call7.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %cmp100 = icmp slt i32 %call99, 0
  br i1 %cmp100, label %if.end95.bad_read_metadata.sink.split_crit_edge, label %if.else103

if.end95.bad_read_metadata.sink.split_crit_edge:  ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #18
  br label %bad_read_metadata.sink.split

if.else103:                                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %cmp104.not = icmp eq i32 %call99, 0
  br i1 %cmp104.not, label %if.else103.if.end112_crit_edge, label %if.then105

if.else103.if.end112_crit_edge:                   ; preds = %if.else103
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end112

if.then105:                                       ; preds = %if.else103
  call void @__sanitizer_cov_trace_pc() #18
  %77 = ptrtoint ptr %valid to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %valid, align 4
  %call110 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #19
  br label %if.end112

if.end112:                                        ; preds = %if.then105, %if.else103.if.end112_crit_edge
  %78 = ptrtoint ptr %store to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %store, align 4
  %chunk_size114 = getelementptr inbounds %struct.dm_exception_store, ptr %79, i32 0, i32 2
  %80 = ptrtoint ptr %chunk_size114 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %chunk_size114, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool115.not = icmp eq i32 %81, 0
  br i1 %tobool115.not, label %if.end112.bad_read_metadata.sink.split_crit_edge, label %if.end118

if.end112.bad_read_metadata.sink.split_crit_edge: ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #18
  br label %bad_read_metadata.sink.split

if.end118:                                        ; preds = %if.end112
  %conv = zext i32 %81 to i64
  %call121 = call i32 @dm_set_target_max_io_len(ptr noundef %ti, i64 noundef %conv) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121)
  %tobool122.not = icmp eq i32 %call121, 0
  br i1 %tobool122.not, label %if.end118.cleanup_crit_edge, label %if.end118.bad_read_metadata_crit_edge

if.end118.bad_read_metadata_crit_edge:            ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #18
  br label %bad_read_metadata

if.end118.cleanup_crit_edge:                      ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

bad_read_metadata.sink.split:                     ; preds = %if.end112.bad_read_metadata.sink.split_crit_edge, %if.end95.bad_read_metadata.sink.split_crit_edge
  %.str.24.sink = phi ptr [ @.str.20, %if.end95.bad_read_metadata.sink.split_crit_edge ], [ @.str.24, %if.end112.bad_read_metadata.sink.split_crit_edge ]
  %r.0.ph = phi i32 [ %call99, %if.end95.bad_read_metadata.sink.split_crit_edge ], [ -22, %if.end112.bad_read_metadata.sink.split_crit_edge ]
  %error117 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %82 = ptrtoint ptr %error117 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %.str.24.sink, ptr %error117, align 8
  br label %bad_read_metadata

bad_read_metadata:                                ; preds = %bad_read_metadata.sink.split, %if.end118.bad_read_metadata_crit_edge
  %r.0 = phi i32 [ %call121, %if.end118.bad_read_metadata_crit_edge ], [ %r.0.ph, %bad_read_metadata.sink.split ]
  call fastcc void @unregister_snapshot(ptr noundef nonnull %call7.i.i)
  br label %bad_load_and_register

bad_load_and_register:                            ; preds = %bad_read_metadata, %if.else.bad_load_and_register_crit_edge, %if.then86
  %r.1 = phi i32 [ -12, %if.then86 ], [ %call84, %if.else.bad_load_and_register_crit_edge ], [ %r.0, %bad_read_metadata ]
  call void @mempool_exit(ptr noundef %pending_pool) #16
  br label %bad_pending_pool

bad_pending_pool:                                 ; preds = %bad_load_and_register, %if.then66
  %r.2 = phi i32 [ %call.i243, %if.then66 ], [ %r.1, %bad_load_and_register ]
  %83 = ptrtoint ptr %kcopyd_client to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %kcopyd_client, align 8
  call void @dm_kcopyd_client_destroy(ptr noundef %84) #16
  br label %bad_kcopyd

bad_kcopyd:                                       ; preds = %bad_pending_pool, %if.then59
  %r.3 = phi i32 [ %57, %if.then59 ], [ %r.2, %bad_pending_pool ]
  %pending = getelementptr inbounds %struct.dm_snapshot, ptr %call7.i.i, i32 0, i32 14
  %85 = load ptr, ptr @pending_cache, align 4
  call fastcc void @dm_exception_table_exit(ptr noundef %pending, ptr noundef %85)
  %complete = getelementptr inbounds %struct.dm_snapshot, ptr %call7.i.i, i32 0, i32 15
  %86 = load ptr, ptr @exception_cache, align 4
  call fastcc void @dm_exception_table_exit(ptr noundef %complete, ptr noundef %86)
  br label %bad_hash_tables

bad_hash_tables:                                  ; preds = %bad_kcopyd, %if.then50
  %r.4 = phi i32 [ -12, %if.then50 ], [ %r.3, %bad_kcopyd ]
  %87 = ptrtoint ptr %store to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %store, align 4
  call void @dm_exception_store_destroy(ptr noundef %88) #16
  br label %bad_store

bad_store:                                        ; preds = %bad_hash_tables, %if.then36
  %r.5 = phi i32 [ -22, %if.then36 ], [ %r.4, %bad_hash_tables ]
  %89 = ptrtoint ptr %cow to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %cow, align 4
  call void @dm_put_device(ptr noundef %ti, ptr noundef %90) #16
  br label %bad_cow

bad_cow:                                          ; preds = %bad_store, %if.then31, %if.then25
  %r.6 = phi i32 [ -22, %if.then25 ], [ %call29, %if.then31 ], [ %r.5, %bad_store ]
  %91 = ptrtoint ptr %origin to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %origin, align 8
  call void @dm_put_device(ptr noundef %ti, ptr noundef %92) #16
  br label %bad_features

bad_features:                                     ; preds = %bad_cow, %if.then15, %parse_snapshot_features.exit.thread, %parse_snapshot_features.exit.thread257
  %r.7 = phi i32 [ %call13, %if.then15 ], [ %r.6, %bad_cow ], [ -22, %parse_snapshot_features.exit.thread ], [ -22, %parse_snapshot_features.exit.thread257 ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #16
  br label %cleanup

cleanup:                                          ; preds = %bad_features, %if.end118.cleanup_crit_edge, %if.then93, %if.then4, %if.then
  %retval.0 = phi i32 [ 0, %if.then93 ], [ 0, %if.end118.cleanup_crit_edge ], [ -22, %if.then ], [ %r.7, %bad_features ], [ -12, %if.then4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args_used) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %as) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snapshot_dtr(ptr noundef %ti) #3 align 64 {
entry:
  %snap_src = alloca ptr, align 4
  %snap_dest = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %snap_src)
  %2 = ptrtoint ptr %snap_src to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %snap_src, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %snap_dest)
  %3 = ptrtoint ptr %snap_dest to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %snap_dest, align 4
  tail call void @down_read(ptr noundef nonnull @_origins_lock) #16
  %origin.i = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %origin.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %origin.i, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %8 = load ptr, ptr @_origins, align 4
  %bd_dev.i.i.i = getelementptr inbounds %struct.block_device, ptr %7, i32 0, i32 5
  %9 = ptrtoint ptr %bd_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bd_dev.i.i.i, align 4
  %and.i.i.i = and i32 %10, 255
  %arrayidx.i.i = getelementptr %struct.list_head, ptr %8, i32 %and.i.i.i
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %entry
  %.pn.in.i.i = phi ptr [ %arrayidx.i.i, %entry ], [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %11 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %arrayidx.i.i
  br i1 %cmp.not.i.i, label %for.cond.i.i.__find_snapshots_sharing_cow.exit_crit_edge, label %for.body.i.i

for.cond.i.i.__find_snapshots_sharing_cow.exit_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__find_snapshots_sharing_cow.exit

for.body.i.i:                                     ; preds = %for.cond.i.i
  %o.0.i.i = getelementptr i8, ptr %.pn.i.i, i32 -4
  %12 = ptrtoint ptr %o.0.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %o.0.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %13, %7
  br i1 %cmp.i.not.i.i, label %__lookup_origin.exit.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i.i

__lookup_origin.exit.i:                           ; preds = %for.body.i.i
  %o.0.i.i.le = getelementptr i8, ptr %.pn.i.i, i32 -4
  %tobool.not.i = icmp eq ptr %o.0.i.i.le, null
  br i1 %tobool.not.i, label %__lookup_origin.exit.i.__find_snapshots_sharing_cow.exit_crit_edge, label %if.end.i

__lookup_origin.exit.i.__find_snapshots_sharing_cow.exit_crit_edge: ; preds = %__lookup_origin.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__find_snapshots_sharing_cow.exit

if.end.i:                                         ; preds = %__lookup_origin.exit.i
  %snapshots.i = getelementptr i8, ptr %.pn.i.i, i32 8
  %14 = ptrtoint ptr %snapshots.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn49.i = load ptr, ptr %snapshots.i, align 4
  %cmp.not51.i = icmp eq ptr %.pn49.i, %snapshots.i
  br i1 %cmp.not51.i, label %if.end.i.__find_snapshots_sharing_cow.exit_crit_edge, label %for.body.lr.ph.i

if.end.i.__find_snapshots_sharing_cow.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__find_snapshots_sharing_cow.exit

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %cow7.i = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn53.i = phi ptr [ %.pn49.i, %for.body.lr.ph.i ], [ %.pn.i, %for.inc.i.for.body.i_crit_edge ]
  %cow.i = getelementptr i8, ptr %.pn53.i, i32 -8
  %15 = ptrtoint ptr %cow.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cow.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %19 = ptrtoint ptr %cow7.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cow7.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %cmp.i.not.i = icmp eq ptr %18, %22
  br i1 %cmp.i.not.i, label %if.end12.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

if.end12.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %s.054.i = getelementptr i8, ptr %.pn53.i, i32 -108
  tail call void @down_read(ptr noundef %s.054.i) #16
  %active13.i = getelementptr i8, ptr %.pn53.i, i32 16
  %23 = ptrtoint ptr %active13.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %active13.i, align 4
  tail call void @up_read(ptr noundef %s.054.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool15.not.i = icmp eq i32 %24, 0
  %spec.select = select i1 %tobool15.not.i, ptr %snap_dest, ptr %snap_src
  %25 = ptrtoint ptr %spec.select to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %s.054.i, ptr %spec.select, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end12.i, %for.body.i.for.inc.i_crit_edge
  %26 = ptrtoint ptr %.pn53.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pn.i = load ptr, ptr %.pn53.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %snapshots.i
  br i1 %cmp.not.i, label %for.inc.i.__find_snapshots_sharing_cow.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.inc.i.__find_snapshots_sharing_cow.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__find_snapshots_sharing_cow.exit

__find_snapshots_sharing_cow.exit:                ; preds = %for.inc.i.__find_snapshots_sharing_cow.exit_crit_edge, %if.end.i.__find_snapshots_sharing_cow.exit_crit_edge, %__lookup_origin.exit.i.__find_snapshots_sharing_cow.exit_crit_edge, %for.cond.i.i.__find_snapshots_sharing_cow.exit_crit_edge
  %27 = ptrtoint ptr %snap_src to i32
  call void @__asan_load4_noabort(i32 %27)
  %snap_src.0.snap_src.0. = load ptr, ptr %snap_src, align 4
  %tobool.not = icmp eq ptr %snap_src.0.snap_src.0., null
  br i1 %tobool.not, label %__find_snapshots_sharing_cow.exit.if.end_crit_edge, label %land.lhs.true

__find_snapshots_sharing_cow.exit.if.end_crit_edge: ; preds = %__find_snapshots_sharing_cow.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.lhs.true:                                    ; preds = %__find_snapshots_sharing_cow.exit
  %28 = ptrtoint ptr %snap_dest to i32
  call void @__asan_load4_noabort(i32 %28)
  %snap_dest.0.snap_dest.0. = load ptr, ptr %snap_dest, align 4
  %tobool1.not = icmp ne ptr %snap_dest.0.snap_dest.0., null
  %cmp = icmp eq ptr %1, %snap_src.0.snap_src.0.
  %or.cond = select i1 %tobool1.not, i1 %cmp, i1 false
  br i1 %or.cond, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @down_write(ptr noundef nonnull %snap_dest.0.snap_dest.0.) #16
  %valid = getelementptr inbounds %struct.dm_snapshot, ptr %snap_dest.0.snap_dest.0., i32 0, i32 5
  %29 = ptrtoint ptr %valid to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %valid, align 4
  tail call void @up_write(ptr noundef nonnull %snap_dest.0.snap_dest.0.) #16
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #19
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %__find_snapshots_sharing_cow.exit.if.end_crit_edge
  tail call void @up_read(ptr noundef nonnull @_origins_lock) #16
  %type = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 1
  %30 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %type, align 4
  %name = getelementptr inbounds %struct.target_type, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %name, align 8
  %cmp5 = icmp eq ptr %33, @dm_snapshot_merge_target_name
  br i1 %cmp5, label %if.then6, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7

if.then6:                                         ; preds = %if.end
  %state_bits.i = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 23
  tail call void @_set_bit(i32 noundef 1, ptr noundef %state_bits.i) #16
  tail call void @__might_sleep(ptr noundef nonnull @.str.35, i32 noundef 73) #16
  %34 = ptrtoint ptr %state_bits.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %state_bits.i, align 4
  %and1.i.i.i = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then6.stop_merge.exit_crit_edge, label %if.end.i.i

if.then6.stop_merge.exit_crit_edge:               ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #18
  br label %stop_merge.exit

if.end.i.i:                                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #18
  %call3.i.i = tail call i32 @out_of_line_wait_on_bit(ptr noundef %state_bits.i, i32 noundef 0, ptr noundef nonnull @bit_wait, i32 noundef 2) #16
  br label %stop_merge.exit

stop_merge.exit:                                  ; preds = %if.end.i.i, %if.then6.stop_merge.exit_crit_edge
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state_bits.i) #16
  br label %if.end7

if.end7:                                          ; preds = %stop_merge.exit, %if.end.if.end7_crit_edge
  tail call fastcc void @unregister_snapshot(ptr noundef %1)
  %pending_exceptions_count = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 8
  %call.i.i90 = tail call zeroext i1 @__kasan_check_read(ptr noundef %pending_exceptions_count, i32 noundef 4) #16
  %36 = ptrtoint ptr %pending_exceptions_count to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %pending_exceptions_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool9.not91 = icmp eq i32 %37, 0
  br i1 %tobool9.not91, label %if.end7.do.end13_crit_edge, label %if.end7.while.body_crit_edge

if.end7.while.body_crit_edge:                     ; preds = %if.end7
  br label %while.body

if.end7.do.end13_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end13

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end7.while.body_crit_edge
  tail call void @msleep(i32 noundef 1) #16
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %pending_exceptions_count, i32 noundef 4) #16
  %38 = ptrtoint ptr %pending_exceptions_count to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %pending_exceptions_count, align 4
  %tobool9.not = icmp eq i32 %39, 0
  br i1 %tobool9.not, label %while.body.do.end13_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body

while.body.do.end13_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end13

do.end13:                                         ; preds = %while.body.do.end13_crit_edge, %if.end7.do.end13_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !291
  %arrayidx = getelementptr %struct.dm_snapshot, ptr %1, i32 0, i32 18, i32 0
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile ptr, ptr %arrayidx, align 4
  %tobool.not.i83.not = icmp eq ptr %41, null
  br i1 %tobool.not.i83.not, label %for.cond, label %do.end13.do.body24_crit_edge, !prof !292

do.end13.do.body24_crit_edge:                     ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body24

for.cond:                                         ; preds = %do.end13
  %arrayidx.1 = getelementptr %struct.dm_snapshot, ptr %1, i32 0, i32 18, i32 1
  %42 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile ptr, ptr %arrayidx.1, align 4
  %tobool.not.i83.not.1 = icmp eq ptr %43, null
  br i1 %tobool.not.i83.not.1, label %for.cond.1, label %for.cond.do.body24_crit_edge, !prof !292

for.cond.do.body24_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body24

for.cond.1:                                       ; preds = %for.cond
  %arrayidx.2 = getelementptr %struct.dm_snapshot, ptr %1, i32 0, i32 18, i32 2
  %44 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %arrayidx.2, align 4
  %tobool.not.i83.not.2 = icmp eq ptr %45, null
  br i1 %tobool.not.i83.not.2, label %for.cond.2, label %for.cond.1.do.body24_crit_edge, !prof !292

for.cond.1.do.body24_crit_edge:                   ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body24

for.cond.2:                                       ; preds = %for.cond.1
  %arrayidx.3 = getelementptr %struct.dm_snapshot, ptr %1, i32 0, i32 18, i32 3
  %46 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile ptr, ptr %arrayidx.3, align 4
  %tobool.not.i83.not.3 = icmp eq ptr %47, null
  br i1 %tobool.not.i83.not.3, label %for.cond.3, label %for.cond.2.do.body24_crit_edge, !prof !292

for.cond.2.do.body24_crit_edge:                   ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body24

for.cond.3:                                       ; preds = %for.cond.2
  %arrayidx.4 = getelementptr %struct.dm_snapshot, ptr %1, i32 0, i32 18, i32 4
  %48 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile ptr, ptr %arrayidx.4, align 4
  %tobool.not.i83.not.4 = icmp eq ptr %49, null
  br i1 %tobool.not.i83.not.4, label %for.cond.4, label %for.cond.3.do.body24_crit_edge, !prof !292

for.cond.3.do.body24_crit_edge:                   ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body24

for.cond.4:                                       ; preds = %for.cond.3
  %arrayidx.5 = getelementptr %struct.dm_snapshot, ptr %1, i32 0, i32 18, i32 5
  %50 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile ptr, ptr %arrayidx.5, align 4
  %tobool.not.i83.not.5 = icmp eq ptr %51, null
  br i1 %tobool.not.i83.not.5, label %for.cond.5, label %for.cond.4.do.body24_crit_edge, !prof !292

for.cond.4.do.body24_crit_edge:                   ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body24

for.cond.5:                                       ; preds = %for.cond.4
  %arrayidx.6 = getelementptr %struct.dm_snapshot, ptr %1, i32 0, i32 18, i32 6
  %52 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile ptr, ptr %arrayidx.6, align 4
  %tobool.not.i83.not.6 = icmp eq ptr %53, null
  br i1 %tobool.not.i83.not.6, label %for.cond.6, label %for.cond.5.do.body24_crit_edge, !prof !292

for.cond.5.do.body24_crit_edge:                   ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body24

for.cond.6:                                       ; preds = %for.cond.5
  %arrayidx.7 = getelementptr %struct.dm_snapshot, ptr %1, i32 0, i32 18, i32 7
  %54 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile ptr, ptr %arrayidx.7, align 4
  %tobool.not.i83.not.7 = icmp eq ptr %55, null
  br i1 %tobool.not.i83.not.7, label %for.cond.7, label %for.cond.6.do.body24_crit_edge, !prof !292

for.cond.6.do.body24_crit_edge:                   ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body24

for.cond.7:                                       ; preds = %for.cond.6
  %arrayidx.8 = getelementptr %struct.dm_snapshot, ptr %1, i32 0, i32 18, i32 8
  %56 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile ptr, ptr %arrayidx.8, align 4
  %tobool.not.i83.not.8 = icmp eq ptr %57, null
  br i1 %tobool.not.i83.not.8, label %for.cond.8, label %for.cond.7.do.body24_crit_edge, !prof !292

for.cond.7.do.body24_crit_edge:                   ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body24

for.cond.8:                                       ; preds = %for.cond.7
  %arrayidx.9 = getelementptr %struct.dm_snapshot, ptr %1, i32 0, i32 18, i32 9
  %58 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile ptr, ptr %arrayidx.9, align 4
  %tobool.not.i83.not.9 = icmp eq ptr %59, null
  br i1 %tobool.not.i83.not.9, label %for.cond.9, label %for.cond.8.do.body24_crit_edge, !prof !292

for.cond.8.do.body24_crit_edge:                   ; preds = %for.cond.8
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body24

for.cond.9:                                       ; preds = %for.cond.8
  %arrayidx.10 = getelementptr %struct.dm_snapshot, ptr %1, i32 0, i32 18, i32 10
  %60 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile ptr, ptr %arrayidx.10, align 4
  %tobool.not.i83.not.10 = icmp eq ptr %61, null
  br i1 %tobool.not.i83.not.10, label %for.cond.10, label %for.cond.9.do.body24_crit_edge, !prof !292

for.cond.9.do.body24_crit_edge:                   ; preds = %for.cond.9
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body24

for.cond.10:                                      ; preds = %for.cond.9
  %arrayidx.11 = getelementptr %struct.dm_snapshot, ptr %1, i32 0, i32 18, i32 11
  %62 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile ptr, ptr %arrayidx.11, align 4
  %tobool.not.i83.not.11 = icmp eq ptr %63, null
  br i1 %tobool.not.i83.not.11, label %for.cond.11, label %for.cond.10.do.body24_crit_edge, !prof !292

for.cond.10.do.body24_crit_edge:                  ; preds = %for.cond.10
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body24

for.cond.11:                                      ; preds = %for.cond.10
  %arrayidx.12 = getelementptr %struct.dm_snapshot, ptr %1, i32 0, i32 18, i32 12
  %64 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile ptr, ptr %arrayidx.12, align 4
  %tobool.not.i83.not.12 = icmp eq ptr %65, null
  br i1 %tobool.not.i83.not.12, label %for.cond.12, label %for.cond.11.do.body24_crit_edge, !prof !292

for.cond.11.do.body24_crit_edge:                  ; preds = %for.cond.11
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body24

for.cond.12:                                      ; preds = %for.cond.11
  %arrayidx.13 = getelementptr %struct.dm_snapshot, ptr %1, i32 0, i32 18, i32 13
  %66 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile ptr, ptr %arrayidx.13, align 4
  %tobool.not.i83.not.13 = icmp eq ptr %67, null
  br i1 %tobool.not.i83.not.13, label %for.cond.13, label %for.cond.12.do.body24_crit_edge, !prof !292

for.cond.12.do.body24_crit_edge:                  ; preds = %for.cond.12
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body24

for.cond.13:                                      ; preds = %for.cond.12
  %arrayidx.14 = getelementptr %struct.dm_snapshot, ptr %1, i32 0, i32 18, i32 14
  %68 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile ptr, ptr %arrayidx.14, align 4
  %tobool.not.i83.not.14 = icmp eq ptr %69, null
  br i1 %tobool.not.i83.not.14, label %for.cond.14, label %for.cond.13.do.body24_crit_edge, !prof !292

for.cond.13.do.body24_crit_edge:                  ; preds = %for.cond.13
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body24

for.cond.14:                                      ; preds = %for.cond.13
  %arrayidx.15 = getelementptr %struct.dm_snapshot, ptr %1, i32 0, i32 18, i32 15
  %70 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile ptr, ptr %arrayidx.15, align 4
  %tobool.not.i83.not.15 = icmp eq ptr %71, null
  br i1 %tobool.not.i83.not.15, label %for.cond.15, label %for.cond.14.do.body24_crit_edge, !prof !292

for.cond.14.do.body24_crit_edge:                  ; preds = %for.cond.14
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body24

for.cond.15:                                      ; preds = %for.cond.14
  %kcopyd_client.i = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 22
  %72 = ptrtoint ptr %kcopyd_client.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %kcopyd_client.i, align 8
  tail call void @dm_kcopyd_client_destroy(ptr noundef %73) #16
  %74 = ptrtoint ptr %kcopyd_client.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr null, ptr %kcopyd_client.i, align 8
  %pending.i = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 14
  %75 = load ptr, ptr @pending_cache, align 4
  %76 = ptrtoint ptr %pending.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %pending.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %77)
  %cmp20.i.i = icmp ult i32 %77, 2147483647
  br i1 %cmp20.i.i, label %for.body.lr.ph.i.i, label %for.cond.15.dm_exception_table_exit.exit.i_crit_edge

for.cond.15.dm_exception_table_exit.exit.i_crit_edge: ; preds = %for.cond.15
  call void @__sanitizer_cov_trace_pc() #18
  br label %dm_exception_table_exit.exit.i

do.body24:                                        ; preds = %for.cond.14.do.body24_crit_edge, %for.cond.13.do.body24_crit_edge, %for.cond.12.do.body24_crit_edge, %for.cond.11.do.body24_crit_edge, %for.cond.10.do.body24_crit_edge, %for.cond.9.do.body24_crit_edge, %for.cond.8.do.body24_crit_edge, %for.cond.7.do.body24_crit_edge, %for.cond.6.do.body24_crit_edge, %for.cond.5.do.body24_crit_edge, %for.cond.4.do.body24_crit_edge, %for.cond.3.do.body24_crit_edge, %for.cond.2.do.body24_crit_edge, %for.cond.1.do.body24_crit_edge, %for.cond.do.body24_crit_edge, %do.end13.do.body24_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-snap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1522, 0\0A.popsection", ""() #16, !srcloc !293
  unreachable

for.body.lr.ph.i.i:                               ; preds = %for.cond.15
  %table.i.i = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 14, i32 2
  br label %for.body.i.i85

for.body.i.i85:                                   ; preds = %for.inc8.i.i.for.body.i.i85_crit_edge, %for.body.lr.ph.i.i
  %i.021.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc8.i.i.for.body.i.i85_crit_edge ]
  %78 = ptrtoint ptr %table.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %table.i.i, align 4
  %add.ptr.i.i = getelementptr %struct.hlist_bl_head, ptr %79, i32 %i.021.i.i
  %80 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %add.ptr.i.i, align 4
  %82 = ptrtoint ptr %81 to i32
  %and.i.i.i84 = and i32 %82, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i84)
  %tobool.not18.i.i = icmp eq i32 %and.i.i.i84, 0
  br i1 %tobool.not18.i.i, label %for.body.i.i85.for.inc8.i.i_crit_edge, label %land.lhs.true.preheader.i.i

for.body.i.i85.for.inc8.i.i_crit_edge:            ; preds = %for.body.i.i85
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc8.i.i

land.lhs.true.preheader.i.i:                      ; preds = %for.body.i.i85
  %83 = inttoptr i32 %and.i.i.i84 to ptr
  br label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %land.lhs.true.i.i.land.lhs.true.i.i_crit_edge, %land.lhs.true.preheader.i.i
  %pos.019.i.i = phi ptr [ %85, %land.lhs.true.i.i.land.lhs.true.i.i_crit_edge ], [ %83, %land.lhs.true.preheader.i.i ]
  %84 = ptrtoint ptr %pos.019.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %pos.019.i.i, align 4
  tail call void @kmem_cache_free(ptr noundef %75, ptr noundef nonnull %pos.019.i.i) #16
  %tobool.not.i.i86 = icmp eq ptr %85, null
  br i1 %tobool.not.i.i86, label %land.lhs.true.i.i.for.inc8.i.i_crit_edge, label %land.lhs.true.i.i.land.lhs.true.i.i_crit_edge

land.lhs.true.i.i.land.lhs.true.i.i_crit_edge:    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true.i.i

land.lhs.true.i.i.for.inc8.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc8.i.i

for.inc8.i.i:                                     ; preds = %land.lhs.true.i.i.for.inc8.i.i_crit_edge, %for.body.i.i85.for.inc8.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.021.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %i.021.i.i, %77
  br i1 %exitcond.not.i.i, label %for.inc8.i.i.dm_exception_table_exit.exit.i_crit_edge, label %for.inc8.i.i.for.body.i.i85_crit_edge

for.inc8.i.i.for.body.i.i85_crit_edge:            ; preds = %for.inc8.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i85

for.inc8.i.i.dm_exception_table_exit.exit.i_crit_edge: ; preds = %for.inc8.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %dm_exception_table_exit.exit.i

dm_exception_table_exit.exit.i:                   ; preds = %for.inc8.i.i.dm_exception_table_exit.exit.i_crit_edge, %for.cond.15.dm_exception_table_exit.exit.i_crit_edge
  %table10.i.i = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 14, i32 2
  %86 = ptrtoint ptr %table10.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %table10.i.i, align 4
  tail call void @kvfree(ptr noundef %87) #16
  %complete.i = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 15
  %88 = load ptr, ptr @exception_cache, align 4
  %89 = ptrtoint ptr %complete.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %complete.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %90)
  %cmp20.i5.i = icmp ult i32 %90, 2147483647
  br i1 %cmp20.i5.i, label %for.body.lr.ph.i7.i, label %dm_exception_table_exit.exit.i.__free_exceptions.exit_crit_edge

dm_exception_table_exit.exit.i.__free_exceptions.exit_crit_edge: ; preds = %dm_exception_table_exit.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__free_exceptions.exit

for.body.lr.ph.i7.i:                              ; preds = %dm_exception_table_exit.exit.i
  %table.i6.i = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 15, i32 2
  br label %for.body.i12.i

for.body.i12.i:                                   ; preds = %for.inc8.i19.i.for.body.i12.i_crit_edge, %for.body.lr.ph.i7.i
  %i.021.i8.i = phi i32 [ 0, %for.body.lr.ph.i7.i ], [ %inc.i17.i, %for.inc8.i19.i.for.body.i12.i_crit_edge ]
  %91 = ptrtoint ptr %table.i6.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %table.i6.i, align 4
  %add.ptr.i9.i = getelementptr %struct.hlist_bl_head, ptr %92, i32 %i.021.i8.i
  %93 = ptrtoint ptr %add.ptr.i9.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %add.ptr.i9.i, align 4
  %95 = ptrtoint ptr %94 to i32
  %and.i.i10.i = and i32 %95, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i10.i)
  %tobool.not18.i11.i = icmp eq i32 %and.i.i10.i, 0
  br i1 %tobool.not18.i11.i, label %for.body.i12.i.for.inc8.i19.i_crit_edge, label %land.lhs.true.preheader.i13.i

for.body.i12.i.for.inc8.i19.i_crit_edge:          ; preds = %for.body.i12.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc8.i19.i

land.lhs.true.preheader.i13.i:                    ; preds = %for.body.i12.i
  %96 = inttoptr i32 %and.i.i10.i to ptr
  br label %land.lhs.true.i16.i

land.lhs.true.i16.i:                              ; preds = %land.lhs.true.i16.i.land.lhs.true.i16.i_crit_edge, %land.lhs.true.preheader.i13.i
  %pos.019.i14.i = phi ptr [ %98, %land.lhs.true.i16.i.land.lhs.true.i16.i_crit_edge ], [ %96, %land.lhs.true.preheader.i13.i ]
  %97 = ptrtoint ptr %pos.019.i14.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %pos.019.i14.i, align 4
  tail call void @kmem_cache_free(ptr noundef %88, ptr noundef nonnull %pos.019.i14.i) #16
  %tobool.not.i15.i = icmp eq ptr %98, null
  br i1 %tobool.not.i15.i, label %land.lhs.true.i16.i.for.inc8.i19.i_crit_edge, label %land.lhs.true.i16.i.land.lhs.true.i16.i_crit_edge

land.lhs.true.i16.i.land.lhs.true.i16.i_crit_edge: ; preds = %land.lhs.true.i16.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true.i16.i

land.lhs.true.i16.i.for.inc8.i19.i_crit_edge:     ; preds = %land.lhs.true.i16.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc8.i19.i

for.inc8.i19.i:                                   ; preds = %land.lhs.true.i16.i.for.inc8.i19.i_crit_edge, %for.body.i12.i.for.inc8.i19.i_crit_edge
  %inc.i17.i = add nuw nsw i32 %i.021.i8.i, 1
  %exitcond.not.i18.i = icmp eq i32 %i.021.i8.i, %90
  br i1 %exitcond.not.i18.i, label %for.inc8.i19.i.__free_exceptions.exit_crit_edge, label %for.inc8.i19.i.for.body.i12.i_crit_edge

for.inc8.i19.i.for.body.i12.i_crit_edge:          ; preds = %for.inc8.i19.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i12.i

for.inc8.i19.i.__free_exceptions.exit_crit_edge:  ; preds = %for.inc8.i19.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__free_exceptions.exit

__free_exceptions.exit:                           ; preds = %for.inc8.i19.i.__free_exceptions.exit_crit_edge, %dm_exception_table_exit.exit.i.__free_exceptions.exit_crit_edge
  %table10.i20.i = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 15, i32 2
  %99 = ptrtoint ptr %table10.i20.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %table10.i20.i, align 4
  tail call void @kvfree(ptr noundef %100) #16
  %pending_pool = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 13
  tail call void @mempool_exit(ptr noundef %pending_pool) #16
  %store = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 19
  %101 = ptrtoint ptr %store to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %store, align 4
  tail call void @dm_exception_store_destroy(ptr noundef %102) #16
  %flush_bio = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 28
  tail call void @bio_uninit(ptr noundef %flush_bio) #16
  %cow = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 2
  %103 = ptrtoint ptr %cow to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %cow, align 4
  tail call void @dm_put_device(ptr noundef %ti, ptr noundef %104) #16
  %105 = ptrtoint ptr %origin.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %origin.i, align 8
  tail call void @dm_put_device(ptr noundef %ti, ptr noundef %106) #16
  %in_progress = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 20
  %107 = ptrtoint ptr %in_progress to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %in_progress, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool33.not = icmp eq i32 %108, 0
  br i1 %tobool33.not, label %__free_exceptions.exit.if.end55_crit_edge, label %do.end49, !prof !292

__free_exceptions.exit.if.end55_crit_edge:        ; preds = %__free_exceptions.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end55

do.end49:                                         ; preds = %__free_exceptions.exit
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 1537, i32 noundef 9, ptr noundef null) #16
  br label %if.end55

if.end55:                                         ; preds = %do.end49, %__free_exceptions.exit.if.end55_crit_edge
  tail call void @kfree(ptr noundef %1) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %snap_dest)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %snap_src)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snapshot_map(ptr nocapture noundef readonly %ti, ptr noundef %bio) #3 align 64 {
entry:
  %lock = alloca %struct.dm_exception_table_lock, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %lock) #16
  %call.i = tail call ptr @dm_per_bio_data(ptr noundef %bio, i32 noundef 16) #16
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %call.i, align 4
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %pprev.i.i, align 4
  %bi_opf = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %4 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bi_opf, align 8
  %6 = and i32 %5, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %cow = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %cow to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cow, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %bi_flags.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 3
  %11 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %bi_flags.i.i, align 4
  %conv1.i.i = and i16 %12, -2049
  store i16 %conv1.i.i, ptr %bi_flags.i.i, align 4
  %bi_bdev.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 1
  %13 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bi_bdev.i, align 4
  %cmp.not.i = icmp eq ptr %14, %10
  br i1 %cmp.not.i, label %if.then.bio_set_dev.exit_crit_edge, label %if.then.i

if.then.bio_set_dev.exit_crit_edge:               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %bio_set_dev.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %conv1.i8.i = and i16 %12, -2177
  %15 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv1.i8.i, ptr %bi_flags.i.i, align 4
  br label %bio_set_dev.exit

bio_set_dev.exit:                                 ; preds = %if.then.i, %if.then.bio_set_dev.exit_crit_edge
  %16 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %10, ptr %bi_bdev.i, align 4
  tail call void @bio_associate_blkg(ptr noundef %bio) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %17 = getelementptr inbounds %struct.dm_exception_table_lock, ptr %lock, i32 0, i32 1
  %store = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 19
  %18 = ptrtoint ptr %store to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %store, align 4
  %bi_iter = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8
  %20 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %bi_iter, align 8
  %chunk_shift.i = getelementptr inbounds %struct.dm_exception_store, ptr %19, i32 0, i32 4
  %22 = ptrtoint ptr %chunk_shift.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %chunk_shift.i, align 4
  %sh_prom.i = zext i32 %23 to i64
  %shr.i = lshr i64 %21, %sh_prom.i
  %complete1.i = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 15
  %pending2.i = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 14
  %table.i = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 15, i32 2
  %24 = ptrtoint ptr %table.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %table.i, align 4
  %hash_shift.i.i = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 15, i32 1
  %26 = ptrtoint ptr %hash_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %hash_shift.i.i, align 4
  %sh_prom.i.i = zext i32 %27 to i64
  %shr.i.i = lshr i64 %shr.i, %sh_prom.i.i
  %28 = ptrtoint ptr %complete1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %complete1.i, align 4
  %30 = trunc i64 %shr.i.i to i32
  %conv1.i.i231 = and i32 %29, %30
  %arrayidx.i = getelementptr %struct.hlist_bl_head, ptr %25, i32 %conv1.i.i231
  %31 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %arrayidx.i, ptr %lock, align 4
  %table3.i = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 14, i32 2
  %32 = ptrtoint ptr %table3.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %table3.i, align 4
  %hash_shift.i11.i = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 14, i32 1
  %34 = ptrtoint ptr %hash_shift.i11.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %hash_shift.i11.i, align 4
  %sh_prom.i12.i = zext i32 %35 to i64
  %shr.i13.i = lshr i64 %shr.i, %sh_prom.i12.i
  %36 = ptrtoint ptr %pending2.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pending2.i, align 4
  %38 = trunc i64 %shr.i13.i to i32
  %conv1.i14.i = and i32 %37, %38
  %arrayidx5.i = getelementptr %struct.hlist_bl_head, ptr %33, i32 %conv1.i14.i
  %39 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %arrayidx5.i, ptr %17, align 4
  %valid = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 5
  %40 = ptrtoint ptr %valid to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %valid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool1.not = icmp eq i32 %41, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %and.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end3.if.end14_crit_edge, label %if.end3.while.cond_crit_edge

if.end3.while.cond_crit_edge:                     ; preds = %if.end3
  br label %while.cond

if.end3.if.end14_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %if.end3.while.cond_crit_edge
  %call10 = tail call fastcc zeroext i1 @wait_for_in_progress(ptr noundef %1, i1 noundef zeroext false)
  br i1 %call10, label %while.cond.if.end14_crit_edge, label %while.cond.while.cond_crit_edge, !prof !292

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond

while.cond.if.end14_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14

if.end14:                                         ; preds = %while.cond.if.end14_crit_edge, %if.end3.if.end14_crit_edge
  tail call void @down_read(ptr noundef %1) #16
  call fastcc void @dm_exception_table_lock(ptr noundef nonnull %lock)
  %42 = ptrtoint ptr %valid to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %valid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool17.not = icmp eq i32 %43, 0
  br i1 %tobool17.not, label %if.end14.out_unlock_crit_edge, label %lor.lhs.false

if.end14.out_unlock_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_unlock

lor.lhs.false:                                    ; preds = %if.end14
  %snapshot_overflowed = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 6
  %44 = ptrtoint ptr %snapshot_overflowed to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %snapshot_overflowed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool18.not = icmp eq i32 %45, 0
  br i1 %tobool18.not, label %lor.lhs.false.if.end33_crit_edge, label %land.lhs.true, !prof !292

lor.lhs.false.if.end33_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end33

land.lhs.true:                                    ; preds = %lor.lhs.false
  %46 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %bi_opf, align 8
  %and.i232 = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i232)
  %tobool.i233.not = icmp eq i32 %and.i232, 0
  br i1 %tobool.i233.not, label %land.lhs.true.if.end33_crit_edge, label %land.lhs.true.out_unlock_crit_edge

land.lhs.true.out_unlock_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_unlock

land.lhs.true.if.end33_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end33

if.end33:                                         ; preds = %land.lhs.true.if.end33_crit_edge, %lor.lhs.false.if.end33_crit_edge
  %48 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %bi_opf, align 8
  %and35 = and i32 %49, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and35)
  %cmp36 = icmp eq i32 %and35, 3
  br i1 %cmp36, label %if.then44, label %if.end33.if.end52_crit_edge, !prof !294

if.end33.if.end52_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end52

if.then44:                                        ; preds = %if.end33
  %discard_passdown_origin = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 26
  %50 = ptrtoint ptr %discard_passdown_origin to i32
  call void @__asan_load1_noabort(i32 %50)
  %bf.load = load i8, ptr %discard_passdown_origin, align 4
  %51 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %bf.cast.not = icmp eq i8 %51, 0
  br i1 %bf.cast.not, label %if.then44.if.end52_crit_edge, label %land.lhs.true46

if.then44.if.end52_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end52

land.lhs.true46:                                  ; preds = %if.then44
  %call47 = tail call i32 @dm_bio_get_target_bio_nr(ptr noundef %bio) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %land.lhs.true46.if.end52_crit_edge, label %if.then49

land.lhs.true46.if.end52_crit_edge:               ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end52

if.then49:                                        ; preds = %land.lhs.true46
  %origin = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 1
  %52 = ptrtoint ptr %origin to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %origin, align 8
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 4
  %bi_flags.i.i234 = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 3
  %56 = ptrtoint ptr %bi_flags.i.i234 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %bi_flags.i.i234, align 4
  %conv1.i.i235 = and i16 %57, -2049
  store i16 %conv1.i.i235, ptr %bi_flags.i.i234, align 4
  %bi_bdev.i236 = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 1
  %58 = ptrtoint ptr %bi_bdev.i236 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %bi_bdev.i236, align 4
  %cmp.not.i237 = icmp eq ptr %59, %55
  br i1 %cmp.not.i237, label %if.then49.bio_set_dev.exit240_crit_edge, label %if.then.i239

if.then49.bio_set_dev.exit240_crit_edge:          ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #18
  br label %bio_set_dev.exit240

if.then.i239:                                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #18
  %conv1.i8.i238 = and i16 %57, -2177
  %60 = ptrtoint ptr %bi_flags.i.i234 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %conv1.i8.i238, ptr %bi_flags.i.i234, align 4
  br label %bio_set_dev.exit240

bio_set_dev.exit240:                              ; preds = %if.then.i239, %if.then49.bio_set_dev.exit240_crit_edge
  %61 = ptrtoint ptr %bi_bdev.i236 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %55, ptr %bi_bdev.i236, align 4
  tail call void @bio_associate_blkg(ptr noundef %bio) #16
  tail call fastcc void @track_chunk(ptr noundef %1, ptr noundef %bio, i64 noundef %shr.i)
  br label %out_unlock

if.end52:                                         ; preds = %land.lhs.true46.if.end52_crit_edge, %if.then44.if.end52_crit_edge, %if.end33.if.end52_crit_edge
  %62 = ptrtoint ptr %table.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %table.i, align 4
  %64 = ptrtoint ptr %hash_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %hash_shift.i.i, align 4
  %sh_prom.i.i243 = zext i32 %65 to i64
  %shr.i.i244 = lshr i64 %shr.i, %sh_prom.i.i243
  %66 = ptrtoint ptr %complete1.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %complete1.i, align 4
  %68 = trunc i64 %shr.i.i244 to i32
  %conv1.i.i245 = and i32 %67, %68
  %arrayidx.i246 = getelementptr %struct.hlist_bl_head, ptr %63, i32 %conv1.i.i245
  %69 = ptrtoint ptr %arrayidx.i246 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx.i246, align 4
  %71 = ptrtoint ptr %70 to i32
  %and.i.i = and i32 %71, -2
  %72 = inttoptr i32 %and.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not19.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not19.i, label %if.end52.dm_lookup_exception.exit_crit_edge, label %if.end52.for.body.i_crit_edge

if.end52.for.body.i_crit_edge:                    ; preds = %if.end52
  br label %for.body.i

if.end52.dm_lookup_exception.exit_crit_edge:      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #18
  br label %dm_lookup_exception.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end52.for.body.i_crit_edge
  %pos.020.i = phi ptr [ %78, %for.inc.i.for.body.i_crit_edge ], [ %72, %if.end52.for.body.i_crit_edge ]
  %old_chunk.i = getelementptr inbounds %struct.dm_exception, ptr %pos.020.i, i32 0, i32 1
  %73 = ptrtoint ptr %old_chunk.i to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %old_chunk.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %74, i64 %shr.i)
  %cmp.not.i247 = icmp ugt i64 %74, %shr.i
  br i1 %cmp.not.i247, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %new_chunk.i.i = getelementptr inbounds %struct.dm_exception, ptr %pos.020.i, i32 0, i32 2
  %75 = ptrtoint ptr %new_chunk.i.i to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %new_chunk.i.i, align 8
  %shr.i18.i = lshr i64 %76, 56
  %add.i = add i64 %shr.i18.i, %74
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %shr.i)
  %cmp6.not.i = icmp ult i64 %add.i, %shr.i
  br i1 %cmp6.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %land.lhs.true.i.dm_lookup_exception.exit_crit_edge

land.lhs.true.i.dm_lookup_exception.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %dm_lookup_exception.exit

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %77 = ptrtoint ptr %pos.020.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %pos.020.i, align 4
  %tobool.not.i = icmp eq ptr %78, null
  br i1 %tobool.not.i, label %for.inc.i.if.end72_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.inc.i.if.end72_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end72

dm_lookup_exception.exit:                         ; preds = %land.lhs.true.i.dm_lookup_exception.exit_crit_edge, %if.end52.dm_lookup_exception.exit_crit_edge
  %pos.0.lcssa.i = phi ptr [ %72, %if.end52.dm_lookup_exception.exit_crit_edge ], [ %pos.020.i, %land.lhs.true.i.dm_lookup_exception.exit_crit_edge ]
  %tobool54.not = icmp eq ptr %pos.0.lcssa.i, null
  br i1 %tobool54.not, label %dm_lookup_exception.exit.if.end72_crit_edge, label %if.then55

dm_lookup_exception.exit.if.end72_crit_edge:      ; preds = %dm_lookup_exception.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end72

if.then55:                                        ; preds = %dm_lookup_exception.exit
  %cow.i = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 2
  %79 = ptrtoint ptr %cow.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %cow.i, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %80, align 4
  %bi_flags.i.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 3
  %83 = ptrtoint ptr %bi_flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %bi_flags.i.i.i, align 4
  %conv1.i.i.i = and i16 %84, -2049
  store i16 %conv1.i.i.i, ptr %bi_flags.i.i.i, align 4
  %bi_bdev.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 1
  %85 = ptrtoint ptr %bi_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %bi_bdev.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %86, %82
  br i1 %cmp.not.i.i, label %if.then55.remap_exception.exit_crit_edge, label %if.then.i.i

if.then55.remap_exception.exit_crit_edge:         ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #18
  br label %remap_exception.exit

if.then.i.i:                                      ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #18
  %conv1.i8.i.i = and i16 %84, -2177
  %87 = ptrtoint ptr %bi_flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %conv1.i8.i.i, ptr %bi_flags.i.i.i, align 4
  br label %remap_exception.exit

remap_exception.exit:                             ; preds = %if.then.i.i, %if.then55.remap_exception.exit_crit_edge
  %88 = ptrtoint ptr %bi_bdev.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %82, ptr %bi_bdev.i.i, align 4
  tail call void @bio_associate_blkg(ptr noundef %bio) #16
  %89 = ptrtoint ptr %store to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %store, align 4
  %new_chunk.i = getelementptr inbounds %struct.dm_exception, ptr %pos.0.lcssa.i, i32 0, i32 2
  %91 = ptrtoint ptr %new_chunk.i to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %new_chunk.i, align 8
  %and.i.i248 = and i64 %92, 72057594037927935
  %old_chunk.i249 = getelementptr inbounds %struct.dm_exception, ptr %pos.0.lcssa.i, i32 0, i32 1
  %93 = ptrtoint ptr %old_chunk.i249 to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %old_chunk.i249, align 8
  %sub.i = sub i64 %shr.i, %94
  %add.i250 = add i64 %sub.i, %and.i.i248
  %chunk_shift.i.i = getelementptr inbounds %struct.dm_exception_store, ptr %90, i32 0, i32 4
  %95 = ptrtoint ptr %chunk_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %chunk_shift.i.i, align 4
  %sh_prom.i.i251 = zext i32 %96 to i64
  %shl.i.i = shl i64 %add.i250, %sh_prom.i.i251
  %97 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %bi_iter, align 8
  %chunk_mask.i = getelementptr inbounds %struct.dm_exception_store, ptr %90, i32 0, i32 3
  %99 = ptrtoint ptr %chunk_mask.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %chunk_mask.i, align 4
  %conv.i = zext i32 %100 to i64
  %and.i252 = and i64 %98, %conv.i
  %add3.i = add i64 %and.i252, %shl.i.i
  store i64 %add3.i, ptr %bi_iter, align 8
  %101 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %bi_opf, align 8
  %and57 = and i32 %102, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and57)
  %cmp58 = icmp eq i32 %and57, 3
  br i1 %cmp58, label %land.lhs.true66, label %remap_exception.exit.out_unlock_crit_edge, !prof !294

remap_exception.exit.out_unlock_crit_edge:        ; preds = %remap_exception.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_unlock

land.lhs.true66:                                  ; preds = %remap_exception.exit
  %bi_size.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 1
  %103 = ptrtoint ptr %bi_size.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %bi_size.i, align 8
  %105 = ptrtoint ptr %store to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %store, align 4
  %chunk_size.i = getelementptr inbounds %struct.dm_exception_store, ptr %106, i32 0, i32 2
  %107 = ptrtoint ptr %chunk_size.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %chunk_size.i, align 4
  %shl.i = shl i32 %108, 9
  call void @__sanitizer_cov_trace_cmp4(i32 %104, i32 %shl.i)
  %cmp.i = icmp eq i32 %104, %shl.i
  br i1 %cmp.i, label %if.then69, label %land.lhs.true66.out_unlock_crit_edge

land.lhs.true66.out_unlock_crit_edge:             ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_unlock

if.then69:                                        ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #18
  call fastcc void @dm_exception_table_unlock(ptr noundef nonnull %lock)
  tail call void @up_read(ptr noundef %1) #16
  tail call fastcc void @zero_exception(ptr noundef %1, ptr noundef %bio)
  br label %cleanup

if.end72:                                         ; preds = %dm_lookup_exception.exit.if.end72_crit_edge, %for.inc.i.if.end72_crit_edge
  %109 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %bi_opf, align 8
  %and74 = and i32 %110, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and74)
  %cmp75 = icmp eq i32 %and74, 3
  br i1 %cmp75, label %if.then83, label %if.end84, !prof !294

if.then83:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @bio_endio(ptr noundef %bio) #16
  br label %out_unlock

if.end84:                                         ; preds = %if.end72
  %and.i254 = and i32 %110, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i254)
  %tobool.i255.not = icmp eq i32 %and.i254, 0
  br i1 %tobool.i255.not, label %if.else138, label %if.then92

if.then92:                                        ; preds = %if.end84
  %111 = ptrtoint ptr %table3.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %table3.i, align 4
  %113 = ptrtoint ptr %hash_shift.i11.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %hash_shift.i11.i, align 4
  %sh_prom.i.i.i = zext i32 %114 to i64
  %shr.i.i.i = lshr i64 %shr.i, %sh_prom.i.i.i
  %115 = ptrtoint ptr %pending2.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %pending2.i, align 4
  %117 = trunc i64 %shr.i.i.i to i32
  %conv1.i.i.i256 = and i32 %116, %117
  %arrayidx.i.i = getelementptr %struct.hlist_bl_head, ptr %112, i32 %conv1.i.i.i256
  %118 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %arrayidx.i.i, align 4
  %120 = ptrtoint ptr %119 to i32
  %and.i.i.i = and i32 %120, -2
  %121 = inttoptr i32 %and.i.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not19.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not19.i.i, label %if.then92.__lookup_pending_exception.exit_crit_edge, label %if.then92.for.body.i.i_crit_edge

if.then92.for.body.i.i_crit_edge:                 ; preds = %if.then92
  br label %for.body.i.i

if.then92.__lookup_pending_exception.exit_crit_edge: ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #18
  br label %__lookup_pending_exception.exit

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then92.for.body.i.i_crit_edge
  %pos.020.i.i = phi ptr [ %127, %for.inc.i.i.for.body.i.i_crit_edge ], [ %121, %if.then92.for.body.i.i_crit_edge ]
  %old_chunk.i.i = getelementptr inbounds %struct.dm_exception, ptr %pos.020.i.i, i32 0, i32 1
  %122 = ptrtoint ptr %old_chunk.i.i to i32
  call void @__asan_load8_noabort(i32 %122)
  %123 = load i64, ptr %old_chunk.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %123, i64 %shr.i)
  %cmp.not.i.i257 = icmp ugt i64 %123, %shr.i
  br i1 %cmp.not.i.i257, label %for.body.i.i.for.inc.i.i_crit_edge, label %land.lhs.true.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %new_chunk.i.i.i = getelementptr inbounds %struct.dm_exception, ptr %pos.020.i.i, i32 0, i32 2
  %124 = ptrtoint ptr %new_chunk.i.i.i to i32
  call void @__asan_load8_noabort(i32 %124)
  %125 = load i64, ptr %new_chunk.i.i.i, align 8
  %shr.i18.i.i = lshr i64 %125, 56
  %add.i.i = add i64 %shr.i18.i.i, %123
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i, i64 %shr.i)
  %cmp6.not.i.i = icmp ult i64 %add.i.i, %shr.i
  br i1 %cmp6.not.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge, label %land.lhs.true.i.i.__lookup_pending_exception.exit_crit_edge

land.lhs.true.i.i.__lookup_pending_exception.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__lookup_pending_exception.exit

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %126 = ptrtoint ptr %pos.020.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %pos.020.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %127, null
  br i1 %tobool.not.i.i, label %for.inc.i.i.if.then95_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i

for.inc.i.i.if.then95_crit_edge:                  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then95

__lookup_pending_exception.exit:                  ; preds = %land.lhs.true.i.i.__lookup_pending_exception.exit_crit_edge, %if.then92.__lookup_pending_exception.exit_crit_edge
  %pos.0.lcssa.i.i = phi ptr [ %121, %if.then92.__lookup_pending_exception.exit_crit_edge ], [ %pos.020.i.i, %land.lhs.true.i.i.__lookup_pending_exception.exit_crit_edge ]
  %tobool94.not = icmp eq ptr %pos.0.lcssa.i.i, null
  br i1 %tobool94.not, label %__lookup_pending_exception.exit.if.then95_crit_edge, label %__lookup_pending_exception.exit.if.end122_crit_edge

__lookup_pending_exception.exit.if.end122_crit_edge: ; preds = %__lookup_pending_exception.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end122

__lookup_pending_exception.exit.if.then95_crit_edge: ; preds = %__lookup_pending_exception.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then95

if.then95:                                        ; preds = %__lookup_pending_exception.exit.if.then95_crit_edge, %for.inc.i.i.if.then95_crit_edge
  call fastcc void @dm_exception_table_unlock(ptr noundef nonnull %lock)
  %call96 = tail call fastcc ptr @alloc_pending_exception(ptr noundef %1)
  call fastcc void @dm_exception_table_lock(ptr noundef nonnull %lock)
  %call98 = tail call fastcc ptr @dm_lookup_exception(ptr noundef %complete1.i, i64 noundef %shr.i)
  %tobool99.not = icmp eq ptr %call98, null
  br i1 %tobool99.not, label %if.end101, label %if.then100

if.then100:                                       ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @free_pending_exception(ptr noundef %call96)
  tail call fastcc void @remap_exception(ptr noundef %1, ptr noundef nonnull %call98, ptr noundef %bio, i64 noundef %shr.i)
  br label %out_unlock

if.end101:                                        ; preds = %if.then95
  %call102 = tail call fastcc ptr @__find_pending_exception(ptr noundef %1, ptr noundef %call96, i64 noundef %shr.i)
  %tobool103.not = icmp eq ptr %call102, null
  br i1 %tobool103.not, label %if.then104, label %if.end101.if.end122_crit_edge

if.end101.if.end122_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end122

if.then104:                                       ; preds = %if.end101
  call fastcc void @dm_exception_table_unlock(ptr noundef nonnull %lock)
  tail call void @up_read(ptr noundef %1) #16
  tail call void @down_write(ptr noundef %1) #16
  %128 = ptrtoint ptr %store to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %store, align 4
  %userspace_supports_overflow = getelementptr inbounds %struct.dm_exception_store, ptr %129, i32 0, i32 6
  %130 = ptrtoint ptr %userspace_supports_overflow to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %userspace_supports_overflow, align 4, !range !295
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %tobool108.not = icmp eq i8 %131, 0
  br i1 %tobool108.not, label %if.else, label %if.then109

if.then109:                                       ; preds = %if.then104
  %132 = ptrtoint ptr %valid to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %valid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %tobool111.not = icmp eq i32 %133, 0
  br i1 %tobool111.not, label %if.then109.if.end119_crit_edge, label %land.lhs.true112

if.then109.if.end119_crit_edge:                   ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end119

land.lhs.true112:                                 ; preds = %if.then109
  %134 = ptrtoint ptr %snapshot_overflowed to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %snapshot_overflowed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %tobool114.not = icmp eq i32 %135, 0
  br i1 %tobool114.not, label %if.then115, label %land.lhs.true112.if.end119_crit_edge

land.lhs.true112.if.end119_crit_edge:             ; preds = %land.lhs.true112
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end119

if.then115:                                       ; preds = %land.lhs.true112
  call void @__sanitizer_cov_trace_pc() #18
  %136 = ptrtoint ptr %snapshot_overflowed to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 1, ptr %snapshot_overflowed, align 8
  %call117 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #19
  br label %if.end119

if.else:                                          ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @__invalidate_snapshot(ptr noundef %1, i32 noundef -12)
  br label %if.end119

if.end119:                                        ; preds = %if.else, %if.then115, %land.lhs.true112.if.end119_crit_edge, %if.then109.if.end119_crit_edge
  tail call void @up_write(ptr noundef %1) #16
  br label %cleanup

if.end122:                                        ; preds = %if.end101.if.end122_crit_edge, %__lookup_pending_exception.exit.if.end122_crit_edge
  %pe.0 = phi ptr [ %pos.0.lcssa.i.i, %__lookup_pending_exception.exit.if.end122_crit_edge ], [ %call102, %if.end101.if.end122_crit_edge ]
  %cow.i258 = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 2
  %137 = ptrtoint ptr %cow.i258 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %cow.i258, align 4
  %139 = ptrtoint ptr %138 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %138, align 4
  %bi_flags.i.i.i259 = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 3
  %141 = ptrtoint ptr %bi_flags.i.i.i259 to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %bi_flags.i.i.i259, align 4
  %conv1.i.i.i260 = and i16 %142, -2049
  store i16 %conv1.i.i.i260, ptr %bi_flags.i.i.i259, align 4
  %bi_bdev.i.i261 = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 1
  %143 = ptrtoint ptr %bi_bdev.i.i261 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %bi_bdev.i.i261, align 4
  %cmp.not.i.i262 = icmp eq ptr %144, %140
  br i1 %cmp.not.i.i262, label %if.end122.remap_exception.exit279_crit_edge, label %if.then.i.i264

if.end122.remap_exception.exit279_crit_edge:      ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #18
  br label %remap_exception.exit279

if.then.i.i264:                                   ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #18
  %conv1.i8.i.i263 = and i16 %142, -2177
  %145 = ptrtoint ptr %bi_flags.i.i.i259 to i32
  call void @__asan_store2_noabort(i32 %145)
  store i16 %conv1.i8.i.i263, ptr %bi_flags.i.i.i259, align 4
  br label %remap_exception.exit279

remap_exception.exit279:                          ; preds = %if.then.i.i264, %if.end122.remap_exception.exit279_crit_edge
  %146 = ptrtoint ptr %bi_bdev.i.i261 to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %140, ptr %bi_bdev.i.i261, align 4
  tail call void @bio_associate_blkg(ptr noundef %bio) #16
  %147 = ptrtoint ptr %store to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %store, align 4
  %new_chunk.i266 = getelementptr inbounds %struct.dm_exception, ptr %pe.0, i32 0, i32 2
  %149 = ptrtoint ptr %new_chunk.i266 to i32
  call void @__asan_load8_noabort(i32 %149)
  %150 = load i64, ptr %new_chunk.i266, align 8
  %and.i.i267 = and i64 %150, 72057594037927935
  %old_chunk.i268 = getelementptr inbounds %struct.dm_exception, ptr %pe.0, i32 0, i32 1
  %151 = ptrtoint ptr %old_chunk.i268 to i32
  call void @__asan_load8_noabort(i32 %151)
  %152 = load i64, ptr %old_chunk.i268, align 8
  %sub.i269 = sub i64 %shr.i, %152
  %add.i270 = add i64 %sub.i269, %and.i.i267
  %chunk_shift.i.i271 = getelementptr inbounds %struct.dm_exception_store, ptr %148, i32 0, i32 4
  %153 = ptrtoint ptr %chunk_shift.i.i271 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %chunk_shift.i.i271, align 4
  %sh_prom.i.i272 = zext i32 %154 to i64
  %shl.i.i273 = shl i64 %add.i270, %sh_prom.i.i272
  %155 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %155)
  %156 = load i64, ptr %bi_iter, align 8
  %chunk_mask.i275 = getelementptr inbounds %struct.dm_exception_store, ptr %148, i32 0, i32 3
  %157 = ptrtoint ptr %chunk_mask.i275 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %chunk_mask.i275, align 4
  %conv.i276 = zext i32 %158 to i64
  %and.i277 = and i64 %156, %conv.i276
  %add3.i278 = add i64 %and.i277, %shl.i.i273
  store i64 %add3.i278, ptr %bi_iter, align 8
  %started = getelementptr inbounds %struct.dm_snap_pending_exception, ptr %pe.0, i32 0, i32 4
  %159 = ptrtoint ptr %started to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %started, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %160)
  %tobool124.not = icmp eq i32 %160, 0
  br i1 %tobool124.not, label %land.lhs.true125, label %remap_exception.exit279.if.end131_crit_edge

remap_exception.exit279.if.end131_crit_edge:      ; preds = %remap_exception.exit279
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end131

land.lhs.true125:                                 ; preds = %remap_exception.exit279
  %bi_size.i280 = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 1
  %161 = ptrtoint ptr %bi_size.i280 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %bi_size.i280, align 8
  %163 = ptrtoint ptr %store to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %store, align 4
  %chunk_size.i282 = getelementptr inbounds %struct.dm_exception_store, ptr %164, i32 0, i32 2
  %165 = ptrtoint ptr %chunk_size.i282 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %chunk_size.i282, align 4
  %shl.i283 = shl i32 %166, 9
  call void @__sanitizer_cov_trace_cmp4(i32 %162, i32 %shl.i283)
  %cmp.i284 = icmp eq i32 %162, %shl.i283
  br i1 %cmp.i284, label %if.then128, label %land.lhs.true125.if.end131_crit_edge

land.lhs.true125.if.end131_crit_edge:             ; preds = %land.lhs.true125
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end131

if.then128:                                       ; preds = %land.lhs.true125
  call void @__sanitizer_cov_trace_pc() #18
  %167 = ptrtoint ptr %started to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 1, ptr %started, align 4
  call fastcc void @dm_exception_table_unlock(ptr noundef nonnull %lock)
  tail call void @up_read(ptr noundef %1) #16
  tail call fastcc void @start_full_bio(ptr noundef nonnull %pe.0, ptr noundef %bio)
  br label %cleanup

if.end131:                                        ; preds = %land.lhs.true125.if.end131_crit_edge, %remap_exception.exit279.if.end131_crit_edge
  %168 = ptrtoint ptr %bio to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr null, ptr %bio, align 8
  %tail.i = getelementptr inbounds %struct.dm_snap_pending_exception, ptr %pe.0, i32 0, i32 2, i32 1
  %169 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %tail.i, align 4
  %tobool.not.i285 = icmp eq ptr %170, null
  br i1 %tobool.not.i285, label %if.else.i, label %if.then.i286

if.then.i286:                                     ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #18
  %171 = ptrtoint ptr %170 to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr %bio, ptr %170, align 8
  br label %bio_list_add.exit

if.else.i:                                        ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #18
  %snapshot_bios = getelementptr inbounds %struct.dm_snap_pending_exception, ptr %pe.0, i32 0, i32 2
  %172 = ptrtoint ptr %snapshot_bios to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr %bio, ptr %snapshot_bios, align 4
  br label %bio_list_add.exit

bio_list_add.exit:                                ; preds = %if.else.i, %if.then.i286
  %173 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr %bio, ptr %tail.i, align 4
  %174 = ptrtoint ptr %started to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %started, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %175)
  %tobool133.not = icmp eq i32 %175, 0
  br i1 %tobool133.not, label %if.then134, label %bio_list_add.exit.out_unlock_crit_edge

bio_list_add.exit.out_unlock_crit_edge:           ; preds = %bio_list_add.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_unlock

if.then134:                                       ; preds = %bio_list_add.exit
  call void @__sanitizer_cov_trace_pc() #18
  %176 = ptrtoint ptr %started to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 1, ptr %started, align 4
  call fastcc void @dm_exception_table_unlock(ptr noundef nonnull %lock)
  tail call void @up_read(ptr noundef %1) #16
  tail call fastcc void @start_copy(ptr noundef nonnull %pe.0)
  br label %cleanup

if.else138:                                       ; preds = %if.end84
  %origin139 = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 1
  %177 = ptrtoint ptr %origin139 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %origin139, align 8
  %179 = ptrtoint ptr %178 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %178, align 4
  %bi_flags.i.i287 = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 3
  %181 = ptrtoint ptr %bi_flags.i.i287 to i32
  call void @__asan_load2_noabort(i32 %181)
  %182 = load i16, ptr %bi_flags.i.i287, align 4
  %conv1.i.i288 = and i16 %182, -2049
  store i16 %conv1.i.i288, ptr %bi_flags.i.i287, align 4
  %bi_bdev.i289 = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 1
  %183 = ptrtoint ptr %bi_bdev.i289 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %bi_bdev.i289, align 4
  %cmp.not.i290 = icmp eq ptr %184, %180
  br i1 %cmp.not.i290, label %if.else138.bio_set_dev.exit293_crit_edge, label %if.then.i292

if.else138.bio_set_dev.exit293_crit_edge:         ; preds = %if.else138
  call void @__sanitizer_cov_trace_pc() #18
  br label %bio_set_dev.exit293

if.then.i292:                                     ; preds = %if.else138
  call void @__sanitizer_cov_trace_pc() #18
  %conv1.i8.i291 = and i16 %182, -2177
  %185 = ptrtoint ptr %bi_flags.i.i287 to i32
  call void @__asan_store2_noabort(i32 %185)
  store i16 %conv1.i8.i291, ptr %bi_flags.i.i287, align 4
  br label %bio_set_dev.exit293

bio_set_dev.exit293:                              ; preds = %if.then.i292, %if.else138.bio_set_dev.exit293_crit_edge
  %186 = ptrtoint ptr %bi_bdev.i289 to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr %180, ptr %bi_bdev.i289, align 4
  tail call void @bio_associate_blkg(ptr noundef %bio) #16
  %call.i294 = tail call ptr @dm_per_bio_data(ptr noundef %bio, i32 noundef 16) #16
  %chunk1.i = getelementptr inbounds %struct.dm_snap_tracked_chunk, ptr %call.i294, i32 0, i32 1
  %187 = ptrtoint ptr %chunk1.i to i32
  call void @__asan_store8_noabort(i32 %187)
  store i64 %shr.i, ptr %chunk1.i, align 8
  %tracked_chunk_lock.i = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 17
  tail call void @_raw_spin_lock_irq(ptr noundef %tracked_chunk_lock.i) #16
  %conv.i295 = trunc i64 %shr.i to i32
  %and.i296 = and i32 %conv.i295, 15
  %arrayidx.i297 = getelementptr %struct.dm_snapshot, ptr %1, i32 0, i32 18, i32 %and.i296
  %188 = ptrtoint ptr %arrayidx.i297 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %arrayidx.i297, align 4
  %190 = ptrtoint ptr %call.i294 to i32
  call void @__asan_store4_noabort(i32 %190)
  store volatile ptr %189, ptr %call.i294, align 4
  %tobool.not.i.i298 = icmp eq ptr %189, null
  br i1 %tobool.not.i.i298, label %bio_set_dev.exit293.track_chunk.exit_crit_edge, label %do.body12.i.i

bio_set_dev.exit293.track_chunk.exit_crit_edge:   ; preds = %bio_set_dev.exit293
  call void @__sanitizer_cov_trace_pc() #18
  br label %track_chunk.exit

do.body12.i.i:                                    ; preds = %bio_set_dev.exit293
  call void @__sanitizer_cov_trace_pc() #18
  %pprev.i.i299 = getelementptr inbounds %struct.hlist_node, ptr %189, i32 0, i32 1
  %191 = ptrtoint ptr %pprev.i.i299 to i32
  call void @__asan_store4_noabort(i32 %191)
  store volatile ptr %call.i294, ptr %pprev.i.i299, align 4
  br label %track_chunk.exit

track_chunk.exit:                                 ; preds = %do.body12.i.i, %bio_set_dev.exit293.track_chunk.exit_crit_edge
  %192 = ptrtoint ptr %arrayidx.i297 to i32
  call void @__asan_store4_noabort(i32 %192)
  store volatile ptr %call.i294, ptr %arrayidx.i297, align 4
  %pprev34.i.i = getelementptr inbounds %struct.hlist_node, ptr %call.i294, i32 0, i32 1
  %193 = ptrtoint ptr %pprev34.i.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store volatile ptr %arrayidx.i297, ptr %pprev34.i.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %tracked_chunk_lock.i) #16
  br label %out_unlock

out_unlock:                                       ; preds = %track_chunk.exit, %bio_list_add.exit.out_unlock_crit_edge, %if.then100, %if.then83, %land.lhs.true66.out_unlock_crit_edge, %remap_exception.exit.out_unlock_crit_edge, %bio_set_dev.exit240, %land.lhs.true.out_unlock_crit_edge, %if.end14.out_unlock_crit_edge
  %r.0 = phi i32 [ 1, %bio_set_dev.exit240 ], [ 1, %land.lhs.true66.out_unlock_crit_edge ], [ 1, %remap_exception.exit.out_unlock_crit_edge ], [ 0, %if.then83 ], [ 0, %bio_list_add.exit.out_unlock_crit_edge ], [ 1, %if.then100 ], [ 1, %track_chunk.exit ], [ 4, %land.lhs.true.out_unlock_crit_edge ], [ 4, %if.end14.out_unlock_crit_edge ]
  %194 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load volatile i32, ptr %arrayidx5.i, align 4
  %and1.i.i.i.i = and i32 %195, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %do.body4.i.i.i, label %hlist_bl_unlock.exit.i, !prof !294

do.body4.i.i.i:                                   ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/bit_spinlock.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #16, !srcloc !296
  unreachable

hlist_bl_unlock.exit.i:                           ; preds = %out_unlock
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx5.i, i32 noundef 4) #16
  %196 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load volatile i32, ptr %arrayidx5.i, align 4
  %and.i.i.i.i.i = and i32 %197, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !297
  %198 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store volatile i32 %and.i.i.i.i.i, ptr %arrayidx5.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !298
  %199 = tail call i32 @llvm.read_register.i32(metadata !280) #16
  %and.i.i.i.i.i.i = and i32 %199, -16384
  %200 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %200, i32 0, i32 1
  %201 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %sub.i.i.i.i = add i32 %202, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  %203 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load volatile i32, ptr %arrayidx.i, align 4
  %and1.i.i.i2.i = and i32 %204, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i2.i)
  %tobool.not.i.i3.i = icmp eq i32 %and1.i.i.i2.i, 0
  br i1 %tobool.not.i.i3.i, label %do.body4.i.i4.i, label %dm_exception_table_unlock.exit, !prof !294

do.body4.i.i4.i:                                  ; preds = %hlist_bl_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/bit_spinlock.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #16, !srcloc !296
  unreachable

dm_exception_table_unlock.exit:                   ; preds = %hlist_bl_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i.i.i5.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i, i32 noundef 4) #16
  %205 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i.i.i.i6.i = and i32 %206, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !297
  %207 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store volatile i32 %and.i.i.i.i6.i, ptr %arrayidx.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !298
  %208 = tail call i32 @llvm.read_register.i32(metadata !280) #16
  %and.i.i.i.i.i7.i = and i32 %208, -16384
  %209 = inttoptr i32 %and.i.i.i.i.i7.i to ptr
  %preempt_count.i.i.i.i8.i = getelementptr inbounds %struct.thread_info, ptr %209, i32 0, i32 1
  %210 = ptrtoint ptr %preempt_count.i.i.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load volatile i32, ptr %preempt_count.i.i.i.i8.i, align 4
  %sub.i.i.i9.i = add i32 %211, -1
  store volatile i32 %sub.i.i.i9.i, ptr %preempt_count.i.i.i.i8.i, align 4
  tail call void @up_read(ptr noundef %1) #16
  br label %cleanup

cleanup:                                          ; preds = %dm_exception_table_unlock.exit, %if.then134, %if.then128, %if.end119, %if.then69, %if.end.cleanup_crit_edge, %bio_set_dev.exit
  %retval.0 = phi i32 [ 1, %bio_set_dev.exit ], [ 4, %if.end.cleanup_crit_edge ], [ %r.0, %dm_exception_table_unlock.exit ], [ 0, %if.then69 ], [ 0, %if.then134 ], [ 0, %if.then128 ], [ 4, %if.end119 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %lock) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snapshot_end_io(ptr nocapture noundef readonly %ti, ptr noundef %bio, ptr nocapture noundef readnone %error) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %call.i = tail call ptr @dm_per_bio_data(ptr noundef %bio, i32 noundef 16) #16
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %3, null
  br i1 %tobool.not.i.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  %call.i2 = tail call ptr @dm_per_bio_data(ptr noundef %bio, i32 noundef 16) #16
  %tracked_chunk_lock.i = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 17
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tracked_chunk_lock.i) #16
  %4 = ptrtoint ptr %call.i2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call.i2, align 4
  %pprev2.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %call.i2, i32 0, i32 1
  %6 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pprev2.i.i.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %5, ptr %7, align 4
  %tobool.not.i.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i.i, label %if.then.stop_tracking_chunk.exit_crit_edge, label %do.body13.i.i.i

if.then.stop_tracking_chunk.exit_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %stop_tracking_chunk.exit

do.body13.i.i.i:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %5, i32 0, i32 1
  %9 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %pprev14.i.i.i, align 4
  br label %stop_tracking_chunk.exit

stop_tracking_chunk.exit:                         ; preds = %do.body13.i.i.i, %if.then.stop_tracking_chunk.exit_crit_edge
  %10 = ptrtoint ptr %call.i2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %call.i2, align 4
  %11 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tracked_chunk_lock.i, i32 noundef %call3.i) #16
  br label %if.end

if.end:                                           ; preds = %stop_tracking_chunk.exit, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snapshot_preresume(ptr nocapture noundef readonly %ti) #3 align 64 {
entry:
  %snap_src = alloca ptr, align 4
  %snap_dest = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %snap_src)
  %2 = ptrtoint ptr %snap_src to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %snap_src, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %snap_dest)
  %3 = ptrtoint ptr %snap_dest to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %snap_dest, align 4
  tail call void @down_read(ptr noundef nonnull @_origins_lock) #16
  %origin.i = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %origin.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %origin.i, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %8 = load ptr, ptr @_origins, align 4
  %bd_dev.i.i.i = getelementptr inbounds %struct.block_device, ptr %7, i32 0, i32 5
  %9 = ptrtoint ptr %bd_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bd_dev.i.i.i, align 4
  %and.i.i.i = and i32 %10, 255
  %arrayidx.i.i = getelementptr %struct.list_head, ptr %8, i32 %and.i.i.i
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %entry
  %.pn.in.i.i = phi ptr [ %arrayidx.i.i, %entry ], [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %11 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %arrayidx.i.i
  br i1 %cmp.not.i.i, label %for.cond.i.i.__find_snapshots_sharing_cow.exit_crit_edge, label %for.body.i.i

for.cond.i.i.__find_snapshots_sharing_cow.exit_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__find_snapshots_sharing_cow.exit

for.body.i.i:                                     ; preds = %for.cond.i.i
  %o.0.i.i = getelementptr i8, ptr %.pn.i.i, i32 -4
  %12 = ptrtoint ptr %o.0.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %o.0.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %13, %7
  br i1 %cmp.i.not.i.i, label %__lookup_origin.exit.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i.i

__lookup_origin.exit.i:                           ; preds = %for.body.i.i
  %o.0.i.i.le = getelementptr i8, ptr %.pn.i.i, i32 -4
  %tobool.not.i = icmp eq ptr %o.0.i.i.le, null
  br i1 %tobool.not.i, label %__lookup_origin.exit.i.__find_snapshots_sharing_cow.exit_crit_edge, label %if.end.i

__lookup_origin.exit.i.__find_snapshots_sharing_cow.exit_crit_edge: ; preds = %__lookup_origin.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__find_snapshots_sharing_cow.exit

if.end.i:                                         ; preds = %__lookup_origin.exit.i
  %snapshots.i = getelementptr i8, ptr %.pn.i.i, i32 8
  %14 = ptrtoint ptr %snapshots.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn49.i = load ptr, ptr %snapshots.i, align 4
  %cmp.not51.i = icmp eq ptr %.pn49.i, %snapshots.i
  br i1 %cmp.not51.i, label %if.end.i.__find_snapshots_sharing_cow.exit_crit_edge, label %for.body.lr.ph.i

if.end.i.__find_snapshots_sharing_cow.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__find_snapshots_sharing_cow.exit

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %cow7.i = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn53.i = phi ptr [ %.pn49.i, %for.body.lr.ph.i ], [ %.pn.i, %for.inc.i.for.body.i_crit_edge ]
  %cow.i = getelementptr i8, ptr %.pn53.i, i32 -8
  %15 = ptrtoint ptr %cow.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cow.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %19 = ptrtoint ptr %cow7.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cow7.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %cmp.i.not.i = icmp eq ptr %18, %22
  br i1 %cmp.i.not.i, label %if.end12.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

if.end12.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %s.054.i = getelementptr i8, ptr %.pn53.i, i32 -108
  tail call void @down_read(ptr noundef %s.054.i) #16
  %active13.i = getelementptr i8, ptr %.pn53.i, i32 16
  %23 = ptrtoint ptr %active13.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %active13.i, align 4
  tail call void @up_read(ptr noundef %s.054.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool15.not.i = icmp eq i32 %24, 0
  %spec.select = select i1 %tobool15.not.i, ptr %snap_dest, ptr %snap_src
  %25 = ptrtoint ptr %spec.select to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %s.054.i, ptr %spec.select, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end12.i, %for.body.i.for.inc.i_crit_edge
  %26 = ptrtoint ptr %.pn53.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pn.i = load ptr, ptr %.pn53.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %snapshots.i
  br i1 %cmp.not.i, label %for.inc.i.__find_snapshots_sharing_cow.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.inc.i.__find_snapshots_sharing_cow.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__find_snapshots_sharing_cow.exit

__find_snapshots_sharing_cow.exit:                ; preds = %for.inc.i.__find_snapshots_sharing_cow.exit_crit_edge, %if.end.i.__find_snapshots_sharing_cow.exit_crit_edge, %__lookup_origin.exit.i.__find_snapshots_sharing_cow.exit_crit_edge, %for.cond.i.i.__find_snapshots_sharing_cow.exit_crit_edge
  %27 = ptrtoint ptr %snap_src to i32
  call void @__asan_load4_noabort(i32 %27)
  %snap_src.0.snap_src.0. = load ptr, ptr %snap_src, align 4
  %tobool.not = icmp eq ptr %snap_src.0.snap_src.0., null
  br i1 %tobool.not, label %__find_snapshots_sharing_cow.exit.if.end15_crit_edge, label %land.lhs.true

__find_snapshots_sharing_cow.exit.if.end15_crit_edge: ; preds = %__find_snapshots_sharing_cow.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15

land.lhs.true:                                    ; preds = %__find_snapshots_sharing_cow.exit
  %28 = ptrtoint ptr %snap_dest to i32
  call void @__asan_load4_noabort(i32 %28)
  %snap_dest.0.snap_dest.0. = load ptr, ptr %snap_dest, align 4
  %tobool1.not = icmp eq ptr %snap_dest.0.snap_dest.0., null
  br i1 %tobool1.not, label %land.lhs.true.if.end15_crit_edge, label %if.then

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15

if.then:                                          ; preds = %land.lhs.true
  tail call void @down_read(ptr noundef nonnull %snap_src.0.snap_src.0.) #16
  %cmp = icmp eq ptr %1, %snap_src.0.snap_src.0.
  br i1 %cmp, label %if.then.if.end13.sink.split_crit_edge, label %if.else

if.then.if.end13.sink.split_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13.sink.split

if.else:                                          ; preds = %if.then
  %ti4 = getelementptr inbounds %struct.dm_snapshot, ptr %snap_src.0.snap_src.0., i32 0, i32 3
  %29 = ptrtoint ptr %ti4 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ti4, align 8
  %call5 = tail call i32 @dm_suspended(ptr noundef %30) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.else.if.end13.sink.split_crit_edge, label %if.else.if.end13_crit_edge

if.else.if.end13_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13

if.else.if.end13.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13.sink.split

if.end13.sink.split:                              ; preds = %if.else.if.end13.sink.split_crit_edge, %if.then.if.end13.sink.split_crit_edge
  %.str.48.sink = phi ptr [ @.str.45, %if.then.if.end13.sink.split_crit_edge ], [ @.str.48, %if.else.if.end13.sink.split_crit_edge ]
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.48.sink) #19
  br label %if.end13

if.end13:                                         ; preds = %if.end13.sink.split, %if.else.if.end13_crit_edge
  %r.0 = phi i32 [ 0, %if.else.if.end13_crit_edge ], [ -22, %if.end13.sink.split ]
  tail call void @up_read(ptr noundef nonnull %snap_src.0.snap_src.0.) #16
  br label %if.end15

if.end15:                                         ; preds = %if.end13, %land.lhs.true.if.end15_crit_edge, %__find_snapshots_sharing_cow.exit.if.end15_crit_edge
  %r.1 = phi i32 [ %r.0, %if.end13 ], [ 0, %land.lhs.true.if.end15_crit_edge ], [ 0, %__find_snapshots_sharing_cow.exit.if.end15_crit_edge ]
  tail call void @up_read(ptr noundef nonnull @_origins_lock) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %snap_dest)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %snap_src)
  ret i32 %r.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snapshot_resume(ptr nocapture noundef readonly %ti) #3 align 64 {
entry:
  %snap_src = alloca ptr, align 4
  %snap_dest = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %snap_src)
  %2 = ptrtoint ptr %snap_src to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %snap_src, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %snap_dest)
  %3 = ptrtoint ptr %snap_dest to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %snap_dest, align 4
  tail call void @down_read(ptr noundef nonnull @_origins_lock) #16
  %origin = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %origin to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %origin, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %8 = load ptr, ptr @_dm_origins, align 4
  %bd_dev.i.i = getelementptr inbounds %struct.block_device, ptr %7, i32 0, i32 5
  %9 = ptrtoint ptr %bd_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bd_dev.i.i, align 4
  %and.i.i = and i32 %10, 255
  %arrayidx.i = getelementptr %struct.list_head, ptr %8, i32 %and.i.i
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ %arrayidx.i, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %11 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %arrayidx.i
  br i1 %cmp.not.i, label %for.cond.i.if.then4_crit_edge, label %for.body.i

for.cond.i.if.then4_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then4

for.body.i:                                       ; preds = %for.cond.i
  %o.0.i = getelementptr i8, ptr %.pn.i, i32 -12
  %12 = ptrtoint ptr %o.0.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %o.0.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %cmp.i.not.i = icmp eq ptr %15, %7
  br i1 %cmp.i.not.i, label %__lookup_dm_origin.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i

__lookup_dm_origin.exit:                          ; preds = %for.body.i
  %o.0.i.le = getelementptr i8, ptr %.pn.i, i32 -12
  %tobool.not = icmp eq ptr %o.0.i.le, null
  br i1 %tobool.not, label %__lookup_dm_origin.exit.if.then4_crit_edge, label %if.end

__lookup_dm_origin.exit.if.then4_crit_edge:       ; preds = %__lookup_dm_origin.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then4

if.end:                                           ; preds = %__lookup_dm_origin.exit
  %ti1 = getelementptr i8, ptr %.pn.i, i32 -8
  %16 = ptrtoint ptr %ti1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ti1, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 8
  %call2 = tail call ptr @dm_table_get_md(ptr noundef %19) #16
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.if.then4_crit_edge, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then4

if.then4:                                         ; preds = %if.end.if.then4_crit_edge, %__lookup_dm_origin.exit.if.then4_crit_edge, %for.cond.i.if.then4_crit_edge
  %20 = ptrtoint ptr %origin to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %origin, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %24 = load ptr, ptr @_origins, align 4
  %bd_dev.i.i.i = getelementptr inbounds %struct.block_device, ptr %23, i32 0, i32 5
  %25 = ptrtoint ptr %bd_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bd_dev.i.i.i, align 4
  %and.i.i.i = and i32 %26, 255
  %arrayidx.i.i = getelementptr %struct.list_head, ptr %24, i32 %and.i.i.i
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.then4
  %.pn.in.i.i = phi ptr [ %arrayidx.i.i, %if.then4 ], [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %27 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %arrayidx.i.i
  br i1 %cmp.not.i.i, label %for.cond.i.i.if.end12_crit_edge, label %for.body.i.i

for.cond.i.i.if.end12_crit_edge:                  ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12

for.body.i.i:                                     ; preds = %for.cond.i.i
  %o.0.i.i = getelementptr i8, ptr %.pn.i.i, i32 -4
  %28 = ptrtoint ptr %o.0.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %o.0.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %29, %23
  br i1 %cmp.i.not.i.i, label %__lookup_origin.exit.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i.i

__lookup_origin.exit.i:                           ; preds = %for.body.i.i
  %o.0.i.i.le = getelementptr i8, ptr %.pn.i.i, i32 -4
  %tobool.not.i = icmp eq ptr %o.0.i.i.le, null
  br i1 %tobool.not.i, label %__lookup_origin.exit.i.if.end12_crit_edge, label %if.end.i

__lookup_origin.exit.i.if.end12_crit_edge:        ; preds = %__lookup_origin.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12

if.end.i:                                         ; preds = %__lookup_origin.exit.i
  %snapshots.i = getelementptr i8, ptr %.pn.i.i, i32 8
  %30 = ptrtoint ptr %snapshots.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pn49.i = load ptr, ptr %snapshots.i, align 4
  %cmp.not51.i = icmp eq ptr %.pn49.i, %snapshots.i
  br i1 %cmp.not51.i, label %if.end.i.if.end12_crit_edge, label %for.body.lr.ph.i

if.end.i.if.end12_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %cow7.i = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 2
  br label %for.body.i68

for.body.i68:                                     ; preds = %for.inc.i.for.body.i68_crit_edge, %for.body.lr.ph.i
  %snap_merging.0 = phi ptr [ null, %for.body.lr.ph.i ], [ %spec.select151, %for.inc.i.for.body.i68_crit_edge ]
  %.pn53.i = phi ptr [ %.pn49.i, %for.body.lr.ph.i ], [ %.pn.i70, %for.inc.i.for.body.i68_crit_edge ]
  %s.054.i = getelementptr i8, ptr %.pn53.i, i32 -108
  %ti.i = getelementptr i8, ptr %.pn53.i, i32 -4
  %31 = ptrtoint ptr %ti.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ti.i, align 8
  %type.i = getelementptr inbounds %struct.dm_target, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %type.i, align 4
  %name.i = getelementptr inbounds %struct.target_type, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %name.i, align 8
  %cmp2.i.not = icmp eq ptr %36, @dm_snapshot_merge_target_name
  %spec.select151 = select i1 %cmp2.i.not, ptr %s.054.i, ptr %snap_merging.0
  %cow.i = getelementptr i8, ptr %.pn53.i, i32 -8
  %37 = ptrtoint ptr %cow.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cow.i, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  %41 = ptrtoint ptr %cow7.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cow7.i, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  %cmp.i.not.i69 = icmp eq ptr %40, %44
  br i1 %cmp.i.not.i69, label %if.end12.i, label %for.body.i68.for.inc.i_crit_edge

for.body.i68.for.inc.i_crit_edge:                 ; preds = %for.body.i68
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

if.end12.i:                                       ; preds = %for.body.i68
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @down_read(ptr noundef %s.054.i) #16
  tail call void @up_read(ptr noundef %s.054.i) #16
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end12.i, %for.body.i68.for.inc.i_crit_edge
  %45 = ptrtoint ptr %.pn53.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %.pn.i70 = load ptr, ptr %.pn53.i, align 4
  %cmp.not.i71 = icmp eq ptr %.pn.i70, %snapshots.i
  br i1 %cmp.not.i71, label %__find_snapshots_sharing_cow.exit, label %for.inc.i.for.body.i68_crit_edge

for.inc.i.for.body.i68_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i68

__find_snapshots_sharing_cow.exit:                ; preds = %for.inc.i
  %tobool6.not = icmp eq ptr %spec.select151, null
  br i1 %tobool6.not, label %__find_snapshots_sharing_cow.exit.if.end12_crit_edge, label %if.then7

__find_snapshots_sharing_cow.exit.if.end12_crit_edge: ; preds = %__find_snapshots_sharing_cow.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12

if.then7:                                         ; preds = %__find_snapshots_sharing_cow.exit
  call void @__sanitizer_cov_trace_pc() #18
  %ti8 = getelementptr inbounds %struct.dm_snapshot, ptr %spec.select151, i32 0, i32 3
  %46 = ptrtoint ptr %ti8 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ti8, align 8
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 8
  %call10 = tail call ptr @dm_table_get_md(ptr noundef %49) #16
  br label %if.end12

if.end12:                                         ; preds = %if.then7, %__find_snapshots_sharing_cow.exit.if.end12_crit_edge, %if.end.i.if.end12_crit_edge, %__lookup_origin.exit.i.if.end12_crit_edge, %for.cond.i.i.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %snap_merging.3 = phi ptr [ null, %__find_snapshots_sharing_cow.exit.if.end12_crit_edge ], [ %spec.select151, %if.then7 ], [ null, %if.end.if.end12_crit_edge ], [ null, %__lookup_origin.exit.i.if.end12_crit_edge ], [ null, %if.end.i.if.end12_crit_edge ], [ null, %for.cond.i.i.if.end12_crit_edge ]
  %origin_md.1 = phi ptr [ null, %__find_snapshots_sharing_cow.exit.if.end12_crit_edge ], [ %call10, %if.then7 ], [ %call2, %if.end.if.end12_crit_edge ], [ null, %__lookup_origin.exit.i.if.end12_crit_edge ], [ null, %if.end.i.if.end12_crit_edge ], [ null, %for.cond.i.i.if.end12_crit_edge ]
  %50 = ptrtoint ptr %ti to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ti, align 8
  %call14 = tail call ptr @dm_table_get_md(ptr noundef %51) #16
  %cmp = icmp eq ptr %origin_md.1, %call14
  %tobool17.not153 = icmp eq ptr %origin_md.1, null
  %tobool17.not = or i1 %tobool17.not153, %cmp
  br i1 %tobool17.not, label %if.end12.if.end23.thread_crit_edge, label %if.then18

if.end12.if.end23.thread_crit_edge:               ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end23.thread

if.then18:                                        ; preds = %if.end12
  %call19 = tail call i32 @dm_hold(ptr noundef nonnull %origin_md.1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then25, label %if.then18.if.end23.thread_crit_edge

if.then18.if.end23.thread_crit_edge:              ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end23.thread

if.end23.thread:                                  ; preds = %if.then18.if.end23.thread_crit_edge, %if.end12.if.end23.thread_crit_edge
  tail call void @up_read(ptr noundef nonnull @_origins_lock) #16
  br label %if.end31

if.then25:                                        ; preds = %if.then18
  tail call void @up_read(ptr noundef nonnull @_origins_lock) #16
  tail call void @dm_internal_suspend_fast(ptr noundef nonnull %origin_md.1) #16
  %tobool26.not = icmp eq ptr %snap_merging.3, null
  br i1 %tobool26.not, label %if.then25.if.end31_crit_edge, label %land.lhs.true

if.then25.if.end31_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end31

land.lhs.true:                                    ; preds = %if.then25
  %state_bits = getelementptr inbounds %struct.dm_snapshot, ptr %snap_merging.3, i32 0, i32 23
  %52 = ptrtoint ptr %state_bits to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %state_bits, align 4
  %and1.i = and i32 %53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool28.not = icmp eq i32 %and1.i, 0
  br i1 %tobool28.not, label %land.lhs.true.if.end31_crit_edge, label %if.then29

land.lhs.true.if.end31_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end31

if.then29:                                        ; preds = %land.lhs.true
  tail call void @_set_bit(i32 noundef 1, ptr noundef %state_bits) #16
  tail call void @__might_sleep(ptr noundef nonnull @.str.35, i32 noundef 73) #16
  %54 = ptrtoint ptr %state_bits to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %state_bits, align 4
  %and1.i.i.i = and i32 %55, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then29.stop_merge.exit_crit_edge, label %if.end.i.i

if.then29.stop_merge.exit_crit_edge:              ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #18
  br label %stop_merge.exit

if.end.i.i:                                       ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #18
  %call3.i.i = tail call i32 @out_of_line_wait_on_bit(ptr noundef %state_bits, i32 noundef 0, ptr noundef nonnull @bit_wait, i32 noundef 2) #16
  br label %stop_merge.exit

stop_merge.exit:                                  ; preds = %if.end.i.i, %if.then29.stop_merge.exit_crit_edge
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state_bits) #16
  br label %if.end31

if.end31:                                         ; preds = %stop_merge.exit, %land.lhs.true.if.end31_crit_edge, %if.then25.if.end31_crit_edge, %if.end23.thread
  %tobool24.not150 = phi i1 [ false, %stop_merge.exit ], [ false, %land.lhs.true.if.end31_crit_edge ], [ false, %if.then25.if.end31_crit_edge ], [ true, %if.end23.thread ]
  %origin_md.3149 = phi ptr [ %origin_md.1, %stop_merge.exit ], [ %origin_md.1, %land.lhs.true.if.end31_crit_edge ], [ %origin_md.1, %if.then25.if.end31_crit_edge ], [ null, %if.end23.thread ]
  %must_restart_merging.0.off0 = phi i1 [ true, %stop_merge.exit ], [ false, %land.lhs.true.if.end31_crit_edge ], [ false, %if.then25.if.end31_crit_edge ], [ false, %if.end23.thread ]
  tail call void @down_read(ptr noundef nonnull @_origins_lock) #16
  %56 = ptrtoint ptr %origin to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %origin, align 8
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 4
  %60 = load ptr, ptr @_origins, align 4
  %bd_dev.i.i.i73 = getelementptr inbounds %struct.block_device, ptr %59, i32 0, i32 5
  %61 = ptrtoint ptr %bd_dev.i.i.i73 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %bd_dev.i.i.i73, align 4
  %and.i.i.i74 = and i32 %62, 255
  %arrayidx.i.i75 = getelementptr %struct.list_head, ptr %60, i32 %and.i.i.i74
  br label %for.cond.i.i79

for.cond.i.i79:                                   ; preds = %for.body.i.i82.for.cond.i.i79_crit_edge, %if.end31
  %.pn.in.i.i76 = phi ptr [ %arrayidx.i.i75, %if.end31 ], [ %.pn.i.i77, %for.body.i.i82.for.cond.i.i79_crit_edge ]
  %63 = ptrtoint ptr %.pn.in.i.i76 to i32
  call void @__asan_load4_noabort(i32 %63)
  %.pn.i.i77 = load ptr, ptr %.pn.in.i.i76, align 4
  %cmp.not.i.i78 = icmp eq ptr %.pn.i.i77, %arrayidx.i.i75
  br i1 %cmp.not.i.i78, label %for.cond.i.i79.__find_snapshots_sharing_cow.exit115_crit_edge, label %for.body.i.i82

for.cond.i.i79.__find_snapshots_sharing_cow.exit115_crit_edge: ; preds = %for.cond.i.i79
  call void @__sanitizer_cov_trace_pc() #18
  br label %__find_snapshots_sharing_cow.exit115

for.body.i.i82:                                   ; preds = %for.cond.i.i79
  %o.0.i.i80 = getelementptr i8, ptr %.pn.i.i77, i32 -4
  %64 = ptrtoint ptr %o.0.i.i80 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %o.0.i.i80, align 4
  %cmp.i.not.i.i81 = icmp eq ptr %65, %59
  br i1 %cmp.i.not.i.i81, label %__lookup_origin.exit.i85, label %for.body.i.i82.for.cond.i.i79_crit_edge

for.body.i.i82.for.cond.i.i79_crit_edge:          ; preds = %for.body.i.i82
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i.i79

__lookup_origin.exit.i85:                         ; preds = %for.body.i.i82
  %o.0.i.i80.le = getelementptr i8, ptr %.pn.i.i77, i32 -4
  %tobool.not.i84 = icmp eq ptr %o.0.i.i80.le, null
  br i1 %tobool.not.i84, label %__lookup_origin.exit.i85.__find_snapshots_sharing_cow.exit115_crit_edge, label %if.end.i89

__lookup_origin.exit.i85.__find_snapshots_sharing_cow.exit115_crit_edge: ; preds = %__lookup_origin.exit.i85
  call void @__sanitizer_cov_trace_pc() #18
  br label %__find_snapshots_sharing_cow.exit115

if.end.i89:                                       ; preds = %__lookup_origin.exit.i85
  %snapshots.i86 = getelementptr i8, ptr %.pn.i.i77, i32 8
  %66 = ptrtoint ptr %snapshots.i86 to i32
  call void @__asan_load4_noabort(i32 %66)
  %.pn49.i87 = load ptr, ptr %snapshots.i86, align 4
  %cmp.not51.i88 = icmp eq ptr %.pn49.i87, %snapshots.i86
  br i1 %cmp.not51.i88, label %if.end.i89.__find_snapshots_sharing_cow.exit115_crit_edge, label %for.body.lr.ph.i91

if.end.i89.__find_snapshots_sharing_cow.exit115_crit_edge: ; preds = %if.end.i89
  call void @__sanitizer_cov_trace_pc() #18
  br label %__find_snapshots_sharing_cow.exit115

for.body.lr.ph.i91:                               ; preds = %if.end.i89
  %cow7.i90 = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 2
  br label %for.body.i99

for.body.i99:                                     ; preds = %for.inc.i113.for.body.i99_crit_edge, %for.body.lr.ph.i91
  %.pn53.i92 = phi ptr [ %.pn49.i87, %for.body.lr.ph.i91 ], [ %.pn.i111, %for.inc.i113.for.body.i99_crit_edge ]
  %cow.i100 = getelementptr i8, ptr %.pn53.i92, i32 -8
  %67 = ptrtoint ptr %cow.i100 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %cow.i100, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %68, align 4
  %71 = ptrtoint ptr %cow7.i90 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %cow7.i90, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %72, align 4
  %cmp.i.not.i101 = icmp eq ptr %70, %74
  br i1 %cmp.i.not.i101, label %if.end12.i105, label %for.body.i99.for.inc.i113_crit_edge

for.body.i99.for.inc.i113_crit_edge:              ; preds = %for.body.i99
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i113

if.end12.i105:                                    ; preds = %for.body.i99
  call void @__sanitizer_cov_trace_pc() #18
  %s.054.i94 = getelementptr i8, ptr %.pn53.i92, i32 -108
  tail call void @down_read(ptr noundef %s.054.i94) #16
  %active13.i103 = getelementptr i8, ptr %.pn53.i92, i32 16
  %75 = ptrtoint ptr %active13.i103 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %active13.i103, align 4
  tail call void @up_read(ptr noundef %s.054.i94) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool15.not.i104 = icmp eq i32 %76, 0
  %spec.select152 = select i1 %tobool15.not.i104, ptr %snap_dest, ptr %snap_src
  %77 = ptrtoint ptr %spec.select152 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %s.054.i94, ptr %spec.select152, align 4
  br label %for.inc.i113

for.inc.i113:                                     ; preds = %if.end12.i105, %for.body.i99.for.inc.i113_crit_edge
  %78 = ptrtoint ptr %.pn53.i92 to i32
  call void @__asan_load4_noabort(i32 %78)
  %.pn.i111 = load ptr, ptr %.pn53.i92, align 4
  %cmp.not.i112 = icmp eq ptr %.pn.i111, %snapshots.i86
  br i1 %cmp.not.i112, label %for.inc.i113.__find_snapshots_sharing_cow.exit115_crit_edge, label %for.inc.i113.for.body.i99_crit_edge

for.inc.i113.for.body.i99_crit_edge:              ; preds = %for.inc.i113
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i99

for.inc.i113.__find_snapshots_sharing_cow.exit115_crit_edge: ; preds = %for.inc.i113
  call void @__sanitizer_cov_trace_pc() #18
  br label %__find_snapshots_sharing_cow.exit115

__find_snapshots_sharing_cow.exit115:             ; preds = %for.inc.i113.__find_snapshots_sharing_cow.exit115_crit_edge, %if.end.i89.__find_snapshots_sharing_cow.exit115_crit_edge, %__lookup_origin.exit.i85.__find_snapshots_sharing_cow.exit115_crit_edge, %for.cond.i.i79.__find_snapshots_sharing_cow.exit115_crit_edge
  %79 = ptrtoint ptr %snap_src to i32
  call void @__asan_load4_noabort(i32 %79)
  %snap_src.0.snap_src.0. = load ptr, ptr %snap_src, align 4
  %tobool33.not = icmp eq ptr %snap_src.0.snap_src.0., null
  br i1 %tobool33.not, label %__find_snapshots_sharing_cow.exit115.if.end40_crit_edge, label %land.lhs.true34

__find_snapshots_sharing_cow.exit115.if.end40_crit_edge: ; preds = %__find_snapshots_sharing_cow.exit115
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end40

land.lhs.true34:                                  ; preds = %__find_snapshots_sharing_cow.exit115
  %80 = ptrtoint ptr %snap_dest to i32
  call void @__asan_load4_noabort(i32 %80)
  %snap_dest.0.snap_dest.0. = load ptr, ptr %snap_dest, align 4
  %tobool35.not = icmp eq ptr %snap_dest.0.snap_dest.0., null
  br i1 %tobool35.not, label %land.lhs.true34.if.end40_crit_edge, label %if.then36

land.lhs.true34.if.end40_crit_edge:               ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end40

if.then36:                                        ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @down_write(ptr noundef nonnull %snap_src.0.snap_src.0.) #16
  tail call void @down_write_nested(ptr noundef nonnull %snap_dest.0.snap_dest.0., i32 noundef 1) #16
  %complete.i = getelementptr inbounds %struct.dm_snapshot, ptr %snap_dest.0.snap_dest.0., i32 0, i32 15
  %81 = ptrtoint ptr %complete.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %u.sroa.0.0.copyload.i = load i32, ptr %complete.i, align 8
  %u.sroa.8.0.complete.sroa_idx.i = getelementptr inbounds %struct.dm_snapshot, ptr %snap_dest.0.snap_dest.0., i32 0, i32 15, i32 1
  %82 = ptrtoint ptr %u.sroa.8.0.complete.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %u.sroa.8.0.copyload.i = load i32, ptr %u.sroa.8.0.complete.sroa_idx.i, align 4
  %u.sroa.9.0.complete.sroa_idx.i = getelementptr inbounds %struct.dm_snapshot, ptr %snap_dest.0.snap_dest.0., i32 0, i32 15, i32 2
  %83 = ptrtoint ptr %u.sroa.9.0.complete.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %u.sroa.9.0.copyload.i = load ptr, ptr %u.sroa.9.0.complete.sroa_idx.i, align 8
  %complete2.i = getelementptr inbounds %struct.dm_snapshot, ptr %snap_src.0.snap_src.0., i32 0, i32 15
  %84 = call ptr @memcpy(ptr %complete.i, ptr %complete2.i, i32 12)
  %85 = ptrtoint ptr %complete2.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %u.sroa.0.0.copyload.i, ptr %complete2.i, align 8
  %u.sroa.8.0.complete3.sroa_idx.i = getelementptr inbounds %struct.dm_snapshot, ptr %snap_src.0.snap_src.0., i32 0, i32 15, i32 1
  %86 = ptrtoint ptr %u.sroa.8.0.complete3.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %u.sroa.8.0.copyload.i, ptr %u.sroa.8.0.complete3.sroa_idx.i, align 4
  %u.sroa.9.0.complete3.sroa_idx.i = getelementptr inbounds %struct.dm_snapshot, ptr %snap_src.0.snap_src.0., i32 0, i32 15, i32 2
  %87 = ptrtoint ptr %u.sroa.9.0.complete3.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %u.sroa.9.0.copyload.i, ptr %u.sroa.9.0.complete3.sroa_idx.i, align 8
  %store.i = getelementptr inbounds %struct.dm_snapshot, ptr %snap_dest.0.snap_dest.0., i32 0, i32 19
  %88 = ptrtoint ptr %store.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %store.i, align 4
  %store4.i = getelementptr inbounds %struct.dm_snapshot, ptr %snap_src.0.snap_src.0., i32 0, i32 19
  %90 = ptrtoint ptr %store4.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %store4.i, align 4
  store ptr %91, ptr %store.i, align 4
  %userspace_supports_overflow.i = getelementptr inbounds %struct.dm_exception_store, ptr %89, i32 0, i32 6
  %92 = ptrtoint ptr %userspace_supports_overflow.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %userspace_supports_overflow.i, align 4, !range !295
  %userspace_supports_overflow7.i = getelementptr inbounds %struct.dm_exception_store, ptr %91, i32 0, i32 6
  %94 = ptrtoint ptr %userspace_supports_overflow7.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %93, ptr %userspace_supports_overflow7.i, align 4
  store ptr %89, ptr %store4.i, align 4
  %95 = load ptr, ptr %store.i, align 4
  %snap.i = getelementptr inbounds %struct.dm_exception_store, ptr %95, i32 0, i32 1
  %96 = ptrtoint ptr %snap.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %snap_dest.0.snap_dest.0., ptr %snap.i, align 4
  %97 = load ptr, ptr %store4.i, align 4
  %snap11.i = getelementptr inbounds %struct.dm_exception_store, ptr %97, i32 0, i32 1
  %98 = ptrtoint ptr %snap11.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %snap_src.0.snap_src.0., ptr %snap11.i, align 4
  %99 = load ptr, ptr %store.i, align 4
  %chunk_size.i = getelementptr inbounds %struct.dm_exception_store, ptr %99, i32 0, i32 2
  %100 = ptrtoint ptr %chunk_size.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %chunk_size.i, align 4
  %ti.i116 = getelementptr inbounds %struct.dm_snapshot, ptr %snap_dest.0.snap_dest.0., i32 0, i32 3
  %102 = ptrtoint ptr %ti.i116 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %ti.i116, align 8
  %max_io_len.i = getelementptr inbounds %struct.dm_target, ptr %103, i32 0, i32 4
  %104 = ptrtoint ptr %max_io_len.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %101, ptr %max_io_len.i, align 8
  %valid.i = getelementptr inbounds %struct.dm_snapshot, ptr %snap_src.0.snap_src.0., i32 0, i32 5
  %105 = ptrtoint ptr %valid.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %valid.i, align 4
  %valid13.i = getelementptr inbounds %struct.dm_snapshot, ptr %snap_dest.0.snap_dest.0., i32 0, i32 5
  %107 = ptrtoint ptr %valid13.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %106, ptr %valid13.i, align 4
  %snapshot_overflowed.i = getelementptr inbounds %struct.dm_snapshot, ptr %snap_src.0.snap_src.0., i32 0, i32 6
  %108 = ptrtoint ptr %snapshot_overflowed.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %snapshot_overflowed.i, align 8
  %snapshot_overflowed14.i = getelementptr inbounds %struct.dm_snapshot, ptr %snap_dest.0.snap_dest.0., i32 0, i32 6
  %110 = ptrtoint ptr %snapshot_overflowed14.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %109, ptr %snapshot_overflowed14.i, align 8
  store i32 0, ptr %valid.i, align 4
  tail call void @up_write(ptr noundef nonnull %snap_dest.0.snap_dest.0.) #16
  tail call void @up_write(ptr noundef nonnull %snap_src.0.snap_src.0.) #16
  br label %if.end40

if.end40:                                         ; preds = %if.then36, %land.lhs.true34.if.end40_crit_edge, %__find_snapshots_sharing_cow.exit115.if.end40_crit_edge
  tail call void @up_read(ptr noundef nonnull @_origins_lock) #16
  br i1 %tobool24.not150, label %if.end40.if.end46_crit_edge, label %if.then42

if.end40.if.end46_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end46

if.then42:                                        ; preds = %if.end40
  br i1 %must_restart_merging.0.off0, label %if.then44, label %if.then42.if.end45_crit_edge

if.then42.if.end45_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end45

if.then44:                                        ; preds = %if.then42
  %state_bits.i117 = getelementptr inbounds %struct.dm_snapshot, ptr %snap_merging.3, i32 0, i32 23
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state_bits.i117) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i118 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i118, label %if.then.i, label %if.then44.if.end45_crit_edge

if.then44.if.end45_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end45

if.then.i:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @snapshot_merge_next_chunks(ptr noundef %snap_merging.3) #16
  br label %if.end45

if.end45:                                         ; preds = %if.then.i, %if.then44.if.end45_crit_edge, %if.then42.if.end45_crit_edge
  tail call void @dm_internal_resume_fast(ptr noundef nonnull %origin_md.3149) #16
  tail call void @dm_put(ptr noundef nonnull %origin_md.3149) #16
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %if.end40.if.end46_crit_edge
  %111 = ptrtoint ptr %origin to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %origin, align 8
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %112, align 4
  tail call void @down_write(ptr noundef nonnull @_origins_lock) #16
  %list.i = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i) #16
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end46.list_del.exit.i_crit_edge

if.end46.list_del.exit.i_crit_edge:               ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i.i = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 4, i32 1
  %115 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %prev.i.i.i, align 4
  %117 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %118, i32 0, i32 1
  %119 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %116, ptr %prev1.i.i.i.i, align 4
  %120 = ptrtoint ptr %116 to i32
  call void @__asan_store4_noabort(i32 %120)
  store volatile ptr %118, ptr %116, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end46.list_del.exit.i_crit_edge
  %121 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr inttoptr (i32 256 to ptr), ptr %list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 4, i32 1
  %122 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %123 = load ptr, ptr @_origins, align 4
  %bd_dev.i.i.i121 = getelementptr inbounds %struct.block_device, ptr %114, i32 0, i32 5
  %124 = ptrtoint ptr %bd_dev.i.i.i121 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %bd_dev.i.i.i121, align 4
  %and.i.i.i122 = and i32 %125, 255
  %arrayidx.i.i123 = getelementptr %struct.list_head, ptr %123, i32 %and.i.i.i122
  br label %for.cond.i.i127

for.cond.i.i127:                                  ; preds = %for.body.i.i130.for.cond.i.i127_crit_edge, %list_del.exit.i
  %.pn.in.i.i124 = phi ptr [ %arrayidx.i.i123, %list_del.exit.i ], [ %.pn.i.i125, %for.body.i.i130.for.cond.i.i127_crit_edge ]
  %126 = ptrtoint ptr %.pn.in.i.i124 to i32
  call void @__asan_load4_noabort(i32 %126)
  %.pn.i.i125 = load ptr, ptr %.pn.in.i.i124, align 4
  %cmp.not.i.i126 = icmp eq ptr %.pn.i.i125, %arrayidx.i.i123
  br i1 %cmp.not.i.i126, label %for.cond.i.i127.__lookup_origin.exit.i132_crit_edge, label %for.body.i.i130

for.cond.i.i127.__lookup_origin.exit.i132_crit_edge: ; preds = %for.cond.i.i127
  call void @__sanitizer_cov_trace_pc() #18
  br label %__lookup_origin.exit.i132

for.body.i.i130:                                  ; preds = %for.cond.i.i127
  %o.0.i.i128 = getelementptr i8, ptr %.pn.i.i125, i32 -4
  %127 = ptrtoint ptr %o.0.i.i128 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %o.0.i.i128, align 4
  %cmp.i.not.i.i129 = icmp eq ptr %128, %114
  br i1 %cmp.i.not.i.i129, label %__lookup_origin.exit.i132.split.loop.exit169, label %for.body.i.i130.for.cond.i.i127_crit_edge

for.body.i.i130.for.cond.i.i127_crit_edge:        ; preds = %for.body.i.i130
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i.i127

__lookup_origin.exit.i132.split.loop.exit169:     ; preds = %for.body.i.i130
  call void @__sanitizer_cov_trace_pc() #18
  %o.0.i.i128.le = getelementptr i8, ptr %.pn.i.i125, i32 -4
  br label %__lookup_origin.exit.i132

__lookup_origin.exit.i132:                        ; preds = %__lookup_origin.exit.i132.split.loop.exit169, %for.cond.i.i127.__lookup_origin.exit.i132_crit_edge
  %retval.0.i.i = phi ptr [ %o.0.i.i128.le, %__lookup_origin.exit.i132.split.loop.exit169 ], [ null, %for.cond.i.i127.__lookup_origin.exit.i132_crit_edge ]
  %snapshots.i.i = getelementptr inbounds %struct.origin, ptr %retval.0.i.i, i32 0, i32 2
  %store2.i.i = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 19
  br label %for.cond.i7.i

for.cond.i7.i:                                    ; preds = %for.body.i8.i.for.cond.i7.i_crit_edge, %__lookup_origin.exit.i132
  %.pn.in.i4.i = phi ptr [ %snapshots.i.i, %__lookup_origin.exit.i132 ], [ %.pn.i5.i, %for.body.i8.i.for.cond.i7.i_crit_edge ]
  %129 = ptrtoint ptr %.pn.in.i4.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %.pn.i5.i = load ptr, ptr %.pn.in.i4.i, align 4
  %cmp.not.i6.i = icmp eq ptr %.pn.i5.i, %snapshots.i.i
  br i1 %cmp.not.i6.i, label %for.cond.i7.i.for.end.i.i_crit_edge, label %for.body.i8.i

for.cond.i7.i.for.end.i.i_crit_edge:              ; preds = %for.cond.i7.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i.i

for.body.i8.i:                                    ; preds = %for.cond.i7.i
  %store.i.i = getelementptr i8, ptr %.pn.i5.i, i32 384
  %130 = ptrtoint ptr %store.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %store.i.i, align 4
  %chunk_size.i.i = getelementptr inbounds %struct.dm_exception_store, ptr %131, i32 0, i32 2
  %132 = ptrtoint ptr %chunk_size.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %chunk_size.i.i, align 4
  %134 = ptrtoint ptr %store2.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %store2.i.i, align 4
  %chunk_size3.i.i = getelementptr inbounds %struct.dm_exception_store, ptr %135, i32 0, i32 2
  %136 = ptrtoint ptr %chunk_size3.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %chunk_size3.i.i, align 4
  %cmp4.i.i = icmp ult i32 %133, %137
  br i1 %cmp4.i.i, label %for.body.i8.i.for.end.i.i_crit_edge, label %for.body.i8.i.for.cond.i7.i_crit_edge

for.body.i8.i.for.cond.i7.i_crit_edge:            ; preds = %for.body.i8.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i7.i

for.body.i8.i.for.end.i.i_crit_edge:              ; preds = %for.body.i8.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.body.i8.i.for.end.i.i_crit_edge, %for.cond.i7.i.for.end.i.i_crit_edge
  %.pn.lcssa.i.i = phi ptr [ %.pn.i5.i, %for.body.i8.i.for.end.i.i_crit_edge ], [ %snapshots.i.i, %for.cond.i7.i.for.end.i.i_crit_edge ]
  %prev.i.i9.i = getelementptr inbounds %struct.list_head, ptr %.pn.lcssa.i.i, i32 0, i32 1
  %138 = ptrtoint ptr %prev.i.i9.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %prev.i.i9.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %139, ptr noundef %.pn.lcssa.i.i) #16
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %for.end.i.i.reregister_snapshot.exit_crit_edge

for.end.i.i.reregister_snapshot.exit_crit_edge:   ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %reregister_snapshot.exit

if.end.i.i.i.i:                                   ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %140 = ptrtoint ptr %prev.i.i9.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %list.i, ptr %prev.i.i9.i, align 4
  %141 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %.pn.lcssa.i.i, ptr %list.i, align 4
  %142 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %139, ptr %prev.i.i, align 4
  %143 = ptrtoint ptr %139 to i32
  call void @__asan_store4_noabort(i32 %143)
  store volatile ptr %list.i, ptr %139, align 4
  br label %reregister_snapshot.exit

reregister_snapshot.exit:                         ; preds = %if.end.i.i.i.i, %for.end.i.i.reregister_snapshot.exit_crit_edge
  tail call void @up_write(ptr noundef nonnull @_origins_lock) #16
  tail call void @down_write(ptr noundef %1) #16
  %active = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 7
  %144 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 1, ptr %active, align 4
  tail call void @up_write(ptr noundef %1) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %snap_dest)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %snap_src)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snapshot_status(ptr nocapture noundef readonly %ti, i32 noundef %type, i32 noundef %status_flags, ptr noundef %result, i32 noundef %maxlen) #3 align 64 {
entry:
  %total_sectors = alloca i64, align 8
  %sectors_allocated = alloca i64, align 8
  %metadata_sectors = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %2 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb54
    i32 2, label %sw.bb129
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  tail call void @down_write(ptr noundef %1) #16
  %valid = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %valid to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %valid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxlen)
  %cmp = icmp eq i32 %maxlen, 0
  br i1 %cmp, label %if.then.if.end52_crit_edge, label %cond.false

if.then.if.end52_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end52

cond.false:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %result, i32 noundef %maxlen, ptr noundef nonnull @.str.71) #16
  br label %if.end52

if.else:                                          ; preds = %sw.bb
  %merge_failed = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 26
  %5 = ptrtoint ptr %merge_failed to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %merge_failed, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %if.else11, label %if.then1

if.then1:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxlen)
  %cmp2 = icmp eq i32 %maxlen, 0
  br i1 %cmp2, label %if.then1.if.end52_crit_edge, label %cond.false4

if.then1.if.end52_crit_edge:                      ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end52

cond.false4:                                      ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #18
  %call7 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %result, i32 noundef %maxlen, ptr noundef nonnull @.str.72) #16
  br label %if.end52

if.else11:                                        ; preds = %if.else
  %snapshot_overflowed = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %snapshot_overflowed to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %snapshot_overflowed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool12.not = icmp eq i32 %7, 0
  br i1 %tobool12.not, label %if.else23, label %if.then13

if.then13:                                        ; preds = %if.else11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxlen)
  %cmp14 = icmp eq i32 %maxlen, 0
  br i1 %cmp14, label %if.then13.if.end52_crit_edge, label %cond.false16

if.then13.if.end52_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end52

cond.false16:                                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #18
  %call19 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %result, i32 noundef %maxlen, ptr noundef nonnull @.str.73) #16
  br label %if.end52

if.else23:                                        ; preds = %if.else11
  %store = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 19
  %8 = ptrtoint ptr %store to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %store, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %usage = getelementptr inbounds %struct.dm_exception_store_type, ptr %11, i32 0, i32 11
  %12 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %usage, align 4
  %tobool25.not = icmp eq ptr %13, null
  br i1 %tobool25.not, label %if.else40, label %if.then26

if.then26:                                        ; preds = %if.else23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %total_sectors) #16
  %14 = ptrtoint ptr %total_sectors to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 -1, ptr %total_sectors, align 8, !annotation !290
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sectors_allocated) #16
  %15 = ptrtoint ptr %sectors_allocated to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 -1, ptr %sectors_allocated, align 8, !annotation !290
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %metadata_sectors) #16
  %16 = ptrtoint ptr %metadata_sectors to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 -1, ptr %metadata_sectors, align 8, !annotation !290
  %17 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %9, align 4
  %usage29 = getelementptr inbounds %struct.dm_exception_store_type, ptr %18, i32 0, i32 11
  %19 = ptrtoint ptr %usage29 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %usage29, align 4
  call void %20(ptr noundef %9, ptr noundef nonnull %total_sectors, ptr noundef nonnull %sectors_allocated, ptr noundef nonnull %metadata_sectors) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxlen)
  %cmp31 = icmp eq i32 %maxlen, 0
  br i1 %cmp31, label %if.then26.cond.end37_crit_edge, label %cond.false33

if.then26.cond.end37_crit_edge:                   ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end37

cond.false33:                                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #18
  %21 = ptrtoint ptr %sectors_allocated to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %sectors_allocated, align 8
  %23 = ptrtoint ptr %total_sectors to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %total_sectors, align 8
  %25 = ptrtoint ptr %metadata_sectors to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %metadata_sectors, align 8
  %call36 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %result, i32 noundef %maxlen, ptr noundef nonnull @.str.74, i64 noundef %22, i64 noundef %24, i64 noundef %26) #16
  br label %cond.end37

cond.end37:                                       ; preds = %cond.false33, %if.then26.cond.end37_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %metadata_sectors) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sectors_allocated) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %total_sectors) #16
  br label %if.end52

if.else40:                                        ; preds = %if.else23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxlen)
  %cmp41 = icmp eq i32 %maxlen, 0
  br i1 %cmp41, label %if.else40.if.end52_crit_edge, label %cond.false43

if.else40.if.end52_crit_edge:                     ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end52

cond.false43:                                     ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #18
  %call46 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %result, i32 noundef %maxlen, ptr noundef nonnull @.str.75) #16
  br label %if.end52

if.end52:                                         ; preds = %cond.false43, %if.else40.if.end52_crit_edge, %cond.end37, %cond.false16, %if.then13.if.end52_crit_edge, %cond.false4, %if.then1.if.end52_crit_edge, %cond.false, %if.then.if.end52_crit_edge
  call void @up_write(ptr noundef %1) #16
  br label %sw.epilog

sw.bb54:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxlen)
  %cmp55 = icmp eq i32 %maxlen, 0
  br i1 %cmp55, label %sw.bb54.cond.end63_crit_edge, label %cond.false57

sw.bb54.cond.end63_crit_edge:                     ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end63

cond.false57:                                     ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #18
  %origin = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 1
  %27 = ptrtoint ptr %origin to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %origin, align 8
  %name = getelementptr inbounds %struct.dm_dev, ptr %28, i32 0, i32 3
  %cow = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 2
  %29 = ptrtoint ptr %cow to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cow, align 4
  %name60 = getelementptr inbounds %struct.dm_dev, ptr %30, i32 0, i32 3
  %call62 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %result, i32 noundef %maxlen, ptr noundef nonnull @.str.76, ptr noundef %name, ptr noundef %name60) #16
  br label %cond.end63

cond.end63:                                       ; preds = %cond.false57, %sw.bb54.cond.end63_crit_edge
  %cond64 = phi i32 [ %call62, %cond.false57 ], [ 0, %sw.bb54.cond.end63_crit_edge ]
  %store66 = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 19
  %31 = ptrtoint ptr %store66 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %store66, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %status = getelementptr inbounds %struct.dm_exception_store_type, ptr %34, i32 0, i32 10
  %35 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %status, align 4
  %add.ptr69 = getelementptr i8, ptr %result, i32 %cond64
  %sub70 = sub i32 %maxlen, %cond64
  %call71 = tail call i32 %36(ptr noundef %32, i32 noundef 1, ptr noundef %add.ptr69, i32 noundef %sub70) #16
  %add72 = add i32 %call71, %cond64
  %discard_zeroes_cow = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 26
  %37 = ptrtoint ptr %discard_zeroes_cow to i32
  call void @__asan_load1_noabort(i32 %37)
  %bf.load73 = load i8, ptr %discard_zeroes_cow, align 4
  %38 = lshr i8 %bf.load73, 6
  %.lobit = and i8 %38, 1
  %39 = lshr i8 %bf.load73, 5
  %.lobit367 = and i8 %39, 1
  %narrow = add nuw nsw i8 %.lobit, %.lobit367
  %add81 = zext i8 %narrow to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %narrow)
  %tobool82.not = icmp eq i8 %narrow, 0
  br i1 %tobool82.not, label %cond.end63.sw.epilog_crit_edge, label %if.then83

cond.end63.sw.epilog_crit_edge:                   ; preds = %cond.end63
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

if.then83:                                        ; preds = %cond.end63
  call void @__sanitizer_cov_trace_cmp4(i32 %add72, i32 %maxlen)
  %cmp84.not = icmp ult i32 %add72, %maxlen
  br i1 %cmp84.not, label %cond.false87, label %if.then83.cond.end91_crit_edge

if.then83.cond.end91_crit_edge:                   ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end91

cond.false87:                                     ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr88 = getelementptr i8, ptr %result, i32 %add72
  %sub89 = sub i32 %maxlen, %add72
  %call90 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr88, i32 noundef %sub89, ptr noundef nonnull @.str.77, i32 noundef %add81) #16
  br label %cond.end91

cond.end91:                                       ; preds = %cond.false87, %if.then83.cond.end91_crit_edge
  %cond92 = phi i32 [ %call90, %cond.false87 ], [ 0, %if.then83.cond.end91_crit_edge ]
  %add93 = add i32 %cond92, %add72
  %40 = ptrtoint ptr %discard_zeroes_cow to i32
  call void @__asan_load1_noabort(i32 %40)
  %bf.load95 = load i8, ptr %discard_zeroes_cow, align 4
  %41 = and i8 %bf.load95, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %bf.cast98.not = icmp eq i8 %41, 0
  br i1 %bf.cast98.not, label %cond.end91.if.end110_crit_edge, label %if.then99

cond.end91.if.end110_crit_edge:                   ; preds = %cond.end91
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end110

if.then99:                                        ; preds = %cond.end91
  call void @__sanitizer_cov_trace_cmp4(i32 %add93, i32 %maxlen)
  %cmp100.not = icmp ult i32 %add93, %maxlen
  br i1 %cmp100.not, label %cond.false103, label %if.then99.cond.end107_crit_edge

if.then99.cond.end107_crit_edge:                  ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end107

cond.false103:                                    ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr104 = getelementptr i8, ptr %result, i32 %add93
  %sub105 = sub i32 %maxlen, %add93
  %call106 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr104, i32 noundef %sub105, ptr noundef nonnull @.str.78) #16
  br label %cond.end107

cond.end107:                                      ; preds = %cond.false103, %if.then99.cond.end107_crit_edge
  %cond108 = phi i32 [ %call106, %cond.false103 ], [ 0, %if.then99.cond.end107_crit_edge ]
  %add109 = add i32 %cond108, %add93
  br label %if.end110

if.end110:                                        ; preds = %cond.end107, %cond.end91.if.end110_crit_edge
  %sz.0 = phi i32 [ %add109, %cond.end107 ], [ %add93, %cond.end91.if.end110_crit_edge ]
  %42 = ptrtoint ptr %discard_zeroes_cow to i32
  call void @__asan_load1_noabort(i32 %42)
  %bf.load112 = load i8, ptr %discard_zeroes_cow, align 4
  %43 = and i8 %bf.load112, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %bf.cast115.not = icmp ne i8 %43, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.0, i32 %maxlen)
  %cmp117.not = icmp ult i32 %sz.0, %maxlen
  %or.cond = select i1 %bf.cast115.not, i1 %cmp117.not, i1 false
  br i1 %or.cond, label %cond.false120, label %if.end110.sw.epilog_crit_edge

if.end110.sw.epilog_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

cond.false120:                                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr121 = getelementptr i8, ptr %result, i32 %sz.0
  %sub122 = sub i32 %maxlen, %sz.0
  %call123 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr121, i32 noundef %sub122, ptr noundef nonnull @.str.79) #16
  br label %sw.epilog

sw.bb129:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxlen)
  %cmp130 = icmp eq i32 %maxlen, 0
  br i1 %cmp130, label %sw.bb129.cond.end146_crit_edge, label %cond.false133

sw.bb129.cond.end146_crit_edge:                   ; preds = %sw.bb129
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end146

cond.false133:                                    ; preds = %sw.bb129
  call void @__sanitizer_cov_trace_pc() #18
  %type136 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 1
  %44 = ptrtoint ptr %type136 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %type136, align 4
  %name137 = getelementptr inbounds %struct.target_type, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %name137 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %name137, align 8
  %version = getelementptr inbounds %struct.target_type, ptr %45, i32 0, i32 3
  %48 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %version, align 8
  %arrayidx141 = getelementptr %struct.target_type, ptr %45, i32 0, i32 3, i32 1
  %50 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx141, align 4
  %arrayidx144 = getelementptr %struct.target_type, ptr %45, i32 0, i32 3, i32 2
  %52 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx144, align 8
  %call145 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %result, i32 noundef %maxlen, ptr noundef nonnull @.str.80, ptr noundef %47, i32 noundef %49, i32 noundef %51, i32 noundef %53) #16
  br label %cond.end146

cond.end146:                                      ; preds = %cond.false133, %sw.bb129.cond.end146_crit_edge
  %cond147 = phi i32 [ %call145, %cond.false133 ], [ 0, %sw.bb129.cond.end146_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond147, i32 %maxlen)
  %cmp149.not = icmp ult i32 %cond147, %maxlen
  br i1 %cmp149.not, label %cond.false152, label %cond.end146.cond.end159_crit_edge

cond.end146.cond.end159_crit_edge:                ; preds = %cond.end146
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end159

cond.false152:                                    ; preds = %cond.end146
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr153 = getelementptr i8, ptr %result, i32 %cond147
  %sub154 = sub i32 %maxlen, %cond147
  %origin155 = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 1
  %54 = ptrtoint ptr %origin155 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %origin155, align 8
  %name156 = getelementptr inbounds %struct.dm_dev, ptr %55, i32 0, i32 3
  %call158 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr153, i32 noundef %sub154, ptr noundef nonnull @.str.81, ptr noundef %name156) #16
  br label %cond.end159

cond.end159:                                      ; preds = %cond.false152, %cond.end146.cond.end159_crit_edge
  %cond160 = phi i32 [ %call158, %cond.false152 ], [ 0, %cond.end146.cond.end159_crit_edge ]
  %add161 = add i32 %cond160, %cond147
  call void @__sanitizer_cov_trace_cmp4(i32 %add161, i32 %maxlen)
  %cmp162.not = icmp ult i32 %add161, %maxlen
  br i1 %cmp162.not, label %cond.false165, label %cond.end159.cond.end172_crit_edge

cond.end159.cond.end172_crit_edge:                ; preds = %cond.end159
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end172

cond.false165:                                    ; preds = %cond.end159
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr166 = getelementptr i8, ptr %result, i32 %add161
  %sub167 = sub i32 %maxlen, %add161
  %cow168 = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 2
  %56 = ptrtoint ptr %cow168 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %cow168, align 4
  %name169 = getelementptr inbounds %struct.dm_dev, ptr %57, i32 0, i32 3
  %call171 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr166, i32 noundef %sub167, ptr noundef nonnull @.str.82, ptr noundef %name169) #16
  br label %cond.end172

cond.end172:                                      ; preds = %cond.false165, %cond.end159.cond.end172_crit_edge
  %cond173 = phi i32 [ %call171, %cond.false165 ], [ 0, %cond.end159.cond.end172_crit_edge ]
  %add174 = add i32 %cond173, %add161
  call void @__sanitizer_cov_trace_cmp4(i32 %add174, i32 %maxlen)
  %cmp175.not = icmp ult i32 %add174, %maxlen
  br i1 %cmp175.not, label %cond.false178, label %cond.end172.cond.end185_crit_edge

cond.end172.cond.end185_crit_edge:                ; preds = %cond.end172
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end185

cond.false178:                                    ; preds = %cond.end172
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr179 = getelementptr i8, ptr %result, i32 %add174
  %sub180 = sub i32 %maxlen, %add174
  %valid181 = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 5
  %58 = ptrtoint ptr %valid181 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %valid181, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool182.not = icmp eq i32 %59, 0
  %cond183 = select i1 %tobool182.not, i32 110, i32 121
  %call184 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr179, i32 noundef %sub180, ptr noundef nonnull @.str.83, i32 noundef %cond183) #16
  br label %cond.end185

cond.end185:                                      ; preds = %cond.false178, %cond.end172.cond.end185_crit_edge
  %cond186 = phi i32 [ %call184, %cond.false178 ], [ 0, %cond.end172.cond.end185_crit_edge ]
  %add187 = add i32 %cond186, %add174
  call void @__sanitizer_cov_trace_cmp4(i32 %add187, i32 %maxlen)
  %cmp188.not = icmp ult i32 %add187, %maxlen
  br i1 %cmp188.not, label %cond.false191, label %cond.end185.cond.end201_crit_edge

cond.end185.cond.end201_crit_edge:                ; preds = %cond.end185
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end201

cond.false191:                                    ; preds = %cond.end185
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr192 = getelementptr i8, ptr %result, i32 %add187
  %sub193 = sub i32 %maxlen, %add187
  %merge_failed194 = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 26
  %60 = ptrtoint ptr %merge_failed194 to i32
  call void @__asan_load1_noabort(i32 %60)
  %bf.load195 = load i8, ptr %merge_failed194, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load195)
  %bf.cast197.not = icmp sgt i8 %bf.load195, -1
  %cond199 = select i1 %bf.cast197.not, i32 110, i32 121
  %call200 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr192, i32 noundef %sub193, ptr noundef nonnull @.str.84, i32 noundef %cond199) #16
  br label %cond.end201

cond.end201:                                      ; preds = %cond.false191, %cond.end185.cond.end201_crit_edge
  %cond202 = phi i32 [ %call200, %cond.false191 ], [ 0, %cond.end185.cond.end201_crit_edge ]
  %add203 = add i32 %cond202, %add187
  call void @__sanitizer_cov_trace_cmp4(i32 %add203, i32 %maxlen)
  %cmp204.not = icmp ult i32 %add203, %maxlen
  br i1 %cmp204.not, label %cond.false207, label %cond.end201.cond.end214_crit_edge

cond.end201.cond.end214_crit_edge:                ; preds = %cond.end201
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end214

cond.false207:                                    ; preds = %cond.end201
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr208 = getelementptr i8, ptr %result, i32 %add203
  %sub209 = sub i32 %maxlen, %add203
  %snapshot_overflowed210 = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 6
  %61 = ptrtoint ptr %snapshot_overflowed210 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %snapshot_overflowed210, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool211.not = icmp eq i32 %62, 0
  %cond212 = select i1 %tobool211.not, i32 110, i32 121
  %call213 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr208, i32 noundef %sub209, ptr noundef nonnull @.str.85, i32 noundef %cond212) #16
  br label %cond.end214

cond.end214:                                      ; preds = %cond.false207, %cond.end201.cond.end214_crit_edge
  %cond215 = phi i32 [ %call213, %cond.false207 ], [ 0, %cond.end201.cond.end214_crit_edge ]
  %add216 = add i32 %cond215, %add203
  call void @__sanitizer_cov_trace_cmp4(i32 %add216, i32 %maxlen)
  %cmp217.not = icmp ult i32 %add216, %maxlen
  br i1 %cmp217.not, label %cond.false220, label %cond.end214.sw.epilog_crit_edge

cond.end214.sw.epilog_crit_edge:                  ; preds = %cond.end214
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

cond.false220:                                    ; preds = %cond.end214
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr221 = getelementptr i8, ptr %result, i32 %add216
  %sub222 = sub i32 %maxlen, %add216
  %call223 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr221, i32 noundef %sub222, ptr noundef nonnull @.str.86) #16
  br label %sw.epilog

sw.epilog:                                        ; preds = %cond.false220, %cond.end214.sw.epilog_crit_edge, %cond.false120, %if.end110.sw.epilog_crit_edge, %cond.end63.sw.epilog_crit_edge, %if.end52, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snapshot_iterate_devices(ptr noundef %ti, ptr nocapture noundef readonly %fn, ptr noundef %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %origin = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %origin to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %origin, align 8
  %len = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 3
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %len, align 8
  %call = tail call i32 %fn(ptr noundef %ti, ptr noundef %3, i64 noundef 0, i64 noundef %5, ptr noundef %data) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %cow = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %cow to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cow, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %bd_nr_sectors.i.i = getelementptr inbounds %struct.block_device, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %bd_nr_sectors.i.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %bd_nr_sectors.i.i, align 8
  %call3 = tail call i32 %fn(ptr noundef %ti, ptr noundef %7, i64 noundef 0, i64 noundef %11, ptr noundef %data) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %r.0 = phi i32 [ %call, %entry.if.end_crit_edge ], [ %call3, %if.then ]
  ret i32 %r.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snapshot_io_hints(ptr nocapture noundef readonly %ti, ptr nocapture noundef writeonly %limits) #3 align 64 {
entry:
  %snap_src = alloca ptr, align 4
  %snap_dest = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %discard_zeroes_cow = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %discard_zeroes_cow to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %discard_zeroes_cow, align 4
  %3 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %bf.cast.not = icmp eq i8 %3, 0
  br i1 %bf.cast.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end5

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %snap_src)
  %4 = ptrtoint ptr %snap_src to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %snap_src, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %snap_dest)
  %5 = ptrtoint ptr %snap_dest to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %snap_dest, align 4
  tail call void @down_read(ptr noundef nonnull @_origins_lock) #16
  %origin.i = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %origin.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %origin.i, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %10 = load ptr, ptr @_origins, align 4
  %bd_dev.i.i.i = getelementptr inbounds %struct.block_device, ptr %9, i32 0, i32 5
  %11 = ptrtoint ptr %bd_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bd_dev.i.i.i, align 4
  %and.i.i.i = and i32 %12, 255
  %arrayidx.i.i = getelementptr %struct.list_head, ptr %10, i32 %and.i.i.i
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.then
  %.pn.in.i.i = phi ptr [ %arrayidx.i.i, %if.then ], [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %13 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %arrayidx.i.i
  br i1 %cmp.not.i.i, label %for.cond.i.i.__find_snapshots_sharing_cow.exit_crit_edge, label %for.body.i.i

for.cond.i.i.__find_snapshots_sharing_cow.exit_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__find_snapshots_sharing_cow.exit

for.body.i.i:                                     ; preds = %for.cond.i.i
  %o.0.i.i = getelementptr i8, ptr %.pn.i.i, i32 -4
  %14 = ptrtoint ptr %o.0.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %o.0.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %15, %9
  br i1 %cmp.i.not.i.i, label %__lookup_origin.exit.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i.i

__lookup_origin.exit.i:                           ; preds = %for.body.i.i
  %o.0.i.i.le = getelementptr i8, ptr %.pn.i.i, i32 -4
  %tobool.not.i = icmp eq ptr %o.0.i.i.le, null
  br i1 %tobool.not.i, label %__lookup_origin.exit.i.__find_snapshots_sharing_cow.exit_crit_edge, label %if.end.i

__lookup_origin.exit.i.__find_snapshots_sharing_cow.exit_crit_edge: ; preds = %__lookup_origin.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__find_snapshots_sharing_cow.exit

if.end.i:                                         ; preds = %__lookup_origin.exit.i
  %snapshots.i = getelementptr i8, ptr %.pn.i.i, i32 8
  %16 = ptrtoint ptr %snapshots.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn49.i = load ptr, ptr %snapshots.i, align 4
  %cmp.not51.i = icmp eq ptr %.pn49.i, %snapshots.i
  br i1 %cmp.not51.i, label %if.end.i.__find_snapshots_sharing_cow.exit_crit_edge, label %for.body.lr.ph.i

if.end.i.__find_snapshots_sharing_cow.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__find_snapshots_sharing_cow.exit

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %cow7.i = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn53.i = phi ptr [ %.pn49.i, %for.body.lr.ph.i ], [ %.pn.i, %for.inc.i.for.body.i_crit_edge ]
  %cow.i = getelementptr i8, ptr %.pn53.i, i32 -8
  %17 = ptrtoint ptr %cow.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cow.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %21 = ptrtoint ptr %cow7.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cow7.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %cmp.i.not.i = icmp eq ptr %20, %24
  br i1 %cmp.i.not.i, label %if.end12.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

if.end12.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %s.054.i = getelementptr i8, ptr %.pn53.i, i32 -108
  tail call void @down_read(ptr noundef %s.054.i) #16
  %active13.i = getelementptr i8, ptr %.pn53.i, i32 16
  %25 = ptrtoint ptr %active13.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %active13.i, align 4
  tail call void @up_read(ptr noundef %s.054.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool15.not.i = icmp eq i32 %26, 0
  %spec.select10 = select i1 %tobool15.not.i, ptr %snap_dest, ptr %snap_src
  %27 = ptrtoint ptr %spec.select10 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %s.054.i, ptr %spec.select10, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end12.i, %for.body.i.for.inc.i_crit_edge
  %28 = ptrtoint ptr %.pn53.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pn.i = load ptr, ptr %.pn53.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %snapshots.i
  br i1 %cmp.not.i, label %for.inc.i.__find_snapshots_sharing_cow.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.inc.i.__find_snapshots_sharing_cow.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__find_snapshots_sharing_cow.exit

__find_snapshots_sharing_cow.exit:                ; preds = %for.inc.i.__find_snapshots_sharing_cow.exit_crit_edge, %if.end.i.__find_snapshots_sharing_cow.exit_crit_edge, %__lookup_origin.exit.i.__find_snapshots_sharing_cow.exit_crit_edge, %for.cond.i.i.__find_snapshots_sharing_cow.exit_crit_edge
  %29 = ptrtoint ptr %snap_src to i32
  call void @__asan_load4_noabort(i32 %29)
  %snap_src.0.snap_src.0. = load ptr, ptr %snap_src, align 4
  %tobool.not = icmp eq ptr %snap_src.0.snap_src.0., null
  br i1 %tobool.not, label %__find_snapshots_sharing_cow.exit.if.end_crit_edge, label %land.lhs.true

__find_snapshots_sharing_cow.exit.if.end_crit_edge: ; preds = %__find_snapshots_sharing_cow.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.lhs.true:                                    ; preds = %__find_snapshots_sharing_cow.exit
  call void @__sanitizer_cov_trace_pc() #18
  %30 = ptrtoint ptr %snap_dest to i32
  call void @__asan_load4_noabort(i32 %30)
  %snap_dest.0.snap_dest.0. = load ptr, ptr %snap_dest, align 4
  %tobool1.not = icmp eq ptr %snap_dest.0.snap_dest.0., null
  %spec.select = select i1 %tobool1.not, ptr %1, ptr %snap_src.0.snap_src.0.
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %__find_snapshots_sharing_cow.exit.if.end_crit_edge
  %snap.0 = phi ptr [ %1, %__find_snapshots_sharing_cow.exit.if.end_crit_edge ], [ %spec.select, %land.lhs.true ]
  %store = getelementptr inbounds %struct.dm_snapshot, ptr %snap.0, i32 0, i32 19
  %31 = ptrtoint ptr %store to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %store, align 4
  %chunk_size = getelementptr inbounds %struct.dm_exception_store, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %chunk_size to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %chunk_size, align 4
  %discard_granularity = getelementptr inbounds %struct.queue_limits, ptr %limits, i32 0, i32 18
  %35 = ptrtoint ptr %discard_granularity to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %discard_granularity, align 4
  %36 = load ptr, ptr %store, align 4
  %chunk_size4 = getelementptr inbounds %struct.dm_exception_store, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %chunk_size4 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %chunk_size4, align 4
  %max_discard_sectors = getelementptr inbounds %struct.queue_limits, ptr %limits, i32 0, i32 13
  %39 = ptrtoint ptr %max_discard_sectors to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %max_discard_sectors, align 4
  tail call void @up_read(ptr noundef nonnull @_origins_lock) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %snap_dest)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %snap_src)
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry.if.end5_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_consume_args(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_get_device(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_get_dev_t(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_table_get_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_exception_store_create(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_init(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @init_hash_tables(ptr nocapture noundef %s) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %cow = getelementptr inbounds %struct.dm_snapshot, ptr %s, i32 0, i32 2
  %0 = ptrtoint ptr %cow to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cow, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %bd_nr_sectors.i.i = getelementptr inbounds %struct.block_device, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %bd_nr_sectors.i.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %bd_nr_sectors.i.i, align 8
  %store = getelementptr inbounds %struct.dm_snapshot, ptr %s, i32 0, i32 19
  %6 = ptrtoint ptr %store to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %store, align 4
  %chunk_shift = getelementptr inbounds %struct.dm_exception_store, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %chunk_shift to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %chunk_shift, align 4
  %sh_prom = zext i32 %9 to i64
  %shr = lshr i64 %5, %sh_prom
  %10 = tail call i64 @llvm.umin.i64(i64 %shr, i64 524288)
  %11 = tail call i64 @llvm.umax.i64(i64 %10, i64 64)
  %conv18 = trunc i64 %11 to i32
  %12 = tail call i32 @llvm.ctlz.i32(i32 %conv18, i1 true) #16, !range !299
  %sub.i.i.op.i = xor i32 %12, 31
  %cond21 = shl nuw i32 1, %sub.i.i.op.i
  %complete = getelementptr inbounds %struct.dm_snapshot, ptr %s, i32 0, i32 15
  %hash_shift1.i = getelementptr inbounds %struct.dm_snapshot, ptr %s, i32 0, i32 15, i32 1
  %13 = ptrtoint ptr %hash_shift1.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 8, ptr %hash_shift1.i, align 4
  %sub.i = add i32 %cond21, -1
  %14 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %sub.i, ptr %complete, align 4
  %15 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %cond21, i32 4) #16
  %16 = extractvalue { i32, i1 } %15, 1
  br i1 %16, label %kvmalloc_array.exit.thread.i, label %kvmalloc_array.exit.i, !prof !294

kvmalloc_array.exit.thread.i:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %table13.i = getelementptr inbounds %struct.dm_snapshot, ptr %s, i32 0, i32 15, i32 2
  %17 = ptrtoint ptr %table13.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %table13.i, align 4
  br label %cleanup

kvmalloc_array.exit.i:                            ; preds = %entry
  %18 = extractvalue { i32, i1 } %15, 0
  %call.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %18, i32 noundef 3264, i32 noundef -1) #21
  %table.i = getelementptr inbounds %struct.dm_snapshot, ptr %s, i32 0, i32 15, i32 2
  %19 = ptrtoint ptr %table.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i.i.i, ptr %table.i, align 4
  %tobool.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i, label %kvmalloc_array.exit.i.cleanup_crit_edge, label %kvmalloc_array.exit.i.for.body.i_crit_edge

kvmalloc_array.exit.i.for.body.i_crit_edge:       ; preds = %kvmalloc_array.exit.i
  br label %for.body.i

kvmalloc_array.exit.i.cleanup_crit_edge:          ; preds = %kvmalloc_array.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %kvmalloc_array.exit.i.for.body.i_crit_edge
  %i.016.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %kvmalloc_array.exit.i.for.body.i_crit_edge ]
  %20 = ptrtoint ptr %table.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %table.i, align 4
  %add.ptr.i = getelementptr %struct.hlist_bl_head, ptr %21, i32 %i.016.i
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %add.ptr.i, align 4
  %inc.i = add nuw i32 %i.016.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %cond21
  br i1 %exitcond.not.i, label %if.end26, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

if.end26:                                         ; preds = %for.body.i
  %23 = lshr i32 %cond21, 3
  %24 = tail call i32 @llvm.umax.i32(i32 %23, i32 64)
  %pending = getelementptr inbounds %struct.dm_snapshot, ptr %s, i32 0, i32 14
  %hash_shift1.i58 = getelementptr inbounds %struct.dm_snapshot, ptr %s, i32 0, i32 14, i32 1
  %25 = ptrtoint ptr %hash_shift1.i58 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %hash_shift1.i58, align 4
  %sub.i59 = add nsw i32 %24, -1
  %26 = ptrtoint ptr %pending to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %sub.i59, ptr %pending, align 4
  %27 = shl nuw nsw i32 %24, 2
  %call.i.i.i62 = tail call noalias ptr @kvmalloc_node(i32 noundef %27, i32 noundef 3264, i32 noundef -1) #21
  %table.i63 = getelementptr inbounds %struct.dm_snapshot, ptr %s, i32 0, i32 14, i32 2
  %28 = ptrtoint ptr %table.i63 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i.i.i62, ptr %table.i63, align 4
  %tobool.not.i64 = icmp eq ptr %call.i.i.i62, null
  br i1 %tobool.not.i64, label %if.then35, label %if.end26.for.body.i71_crit_edge

if.end26.for.body.i71_crit_edge:                  ; preds = %if.end26
  br label %for.body.i71

for.body.i71:                                     ; preds = %for.body.i71.for.body.i71_crit_edge, %if.end26.for.body.i71_crit_edge
  %i.016.i67 = phi i32 [ %inc.i69, %for.body.i71.for.body.i71_crit_edge ], [ 0, %if.end26.for.body.i71_crit_edge ]
  %29 = ptrtoint ptr %table.i63 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %table.i63, align 4
  %add.ptr.i68 = getelementptr %struct.hlist_bl_head, ptr %30, i32 %i.016.i67
  %31 = ptrtoint ptr %add.ptr.i68 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %add.ptr.i68, align 4
  %inc.i69 = add nuw nsw i32 %i.016.i67, 1
  %exitcond.not.i70 = icmp eq i32 %inc.i69, %24
  br i1 %exitcond.not.i70, label %for.body.i71.cleanup_crit_edge, label %for.body.i71.for.body.i71_crit_edge

for.body.i71.for.body.i71_crit_edge:              ; preds = %for.body.i71
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i71

for.body.i71.cleanup_crit_edge:                   ; preds = %for.body.i71
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then35:                                        ; preds = %if.end26
  %32 = load ptr, ptr @exception_cache, align 4
  %33 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %complete, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %34)
  %cmp20.i = icmp ult i32 %34, 2147483647
  br i1 %cmp20.i, label %if.then35.for.body.i76_crit_edge, label %if.then35.dm_exception_table_exit.exit_crit_edge

if.then35.dm_exception_table_exit.exit_crit_edge: ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #18
  br label %dm_exception_table_exit.exit

if.then35.for.body.i76_crit_edge:                 ; preds = %if.then35
  br label %for.body.i76

for.body.i76:                                     ; preds = %for.inc8.i.for.body.i76_crit_edge, %if.then35.for.body.i76_crit_edge
  %i.021.i = phi i32 [ %inc.i78, %for.inc8.i.for.body.i76_crit_edge ], [ 0, %if.then35.for.body.i76_crit_edge ]
  %35 = ptrtoint ptr %table.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %table.i, align 4
  %add.ptr.i75 = getelementptr %struct.hlist_bl_head, ptr %36, i32 %i.021.i
  %37 = ptrtoint ptr %add.ptr.i75 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %add.ptr.i75, align 4
  %39 = ptrtoint ptr %38 to i32
  %and.i.i = and i32 %39, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not18.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not18.i, label %for.body.i76.for.inc8.i_crit_edge, label %land.lhs.true.preheader.i

for.body.i76.for.inc8.i_crit_edge:                ; preds = %for.body.i76
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc8.i

land.lhs.true.preheader.i:                        ; preds = %for.body.i76
  %40 = inttoptr i32 %and.i.i to ptr
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %land.lhs.true.i.land.lhs.true.i_crit_edge, %land.lhs.true.preheader.i
  %pos.019.i = phi ptr [ %42, %land.lhs.true.i.land.lhs.true.i_crit_edge ], [ %40, %land.lhs.true.preheader.i ]
  %41 = ptrtoint ptr %pos.019.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pos.019.i, align 4
  tail call void @kmem_cache_free(ptr noundef %32, ptr noundef nonnull %pos.019.i) #16
  %tobool.not.i77 = icmp eq ptr %42, null
  br i1 %tobool.not.i77, label %land.lhs.true.i.for.inc8.i_crit_edge, label %land.lhs.true.i.land.lhs.true.i_crit_edge

land.lhs.true.i.land.lhs.true.i_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true.i

land.lhs.true.i.for.inc8.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc8.i

for.inc8.i:                                       ; preds = %land.lhs.true.i.for.inc8.i_crit_edge, %for.body.i76.for.inc8.i_crit_edge
  %inc.i78 = add nuw nsw i32 %i.021.i, 1
  %exitcond.not.i79 = icmp eq i32 %i.021.i, %34
  br i1 %exitcond.not.i79, label %for.inc8.i.dm_exception_table_exit.exit_crit_edge, label %for.inc8.i.for.body.i76_crit_edge

for.inc8.i.for.body.i76_crit_edge:                ; preds = %for.inc8.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i76

for.inc8.i.dm_exception_table_exit.exit_crit_edge: ; preds = %for.inc8.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %dm_exception_table_exit.exit

dm_exception_table_exit.exit:                     ; preds = %for.inc8.i.dm_exception_table_exit.exit_crit_edge, %if.then35.dm_exception_table_exit.exit_crit_edge
  %43 = ptrtoint ptr %table.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %table.i, align 4
  tail call void @kvfree(ptr noundef %44) #16
  br label %cleanup

cleanup:                                          ; preds = %dm_exception_table_exit.exit, %for.body.i71.cleanup_crit_edge, %kvmalloc_array.exit.i.cleanup_crit_edge, %kvmalloc_array.exit.thread.i
  %retval.0 = phi i32 [ -12, %dm_exception_table_exit.exit ], [ -12, %kvmalloc_array.exit.i.cleanup_crit_edge ], [ -12, %kvmalloc_array.exit.thread.i ], [ 0, %for.body.i71.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_kcopyd_client_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @register_snapshot(ptr noundef %snap) unnamed_addr #3 align 64 {
entry:
  %snap_src.i = alloca ptr, align 4
  %snap_dest.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %origin = getelementptr inbounds %struct.dm_snapshot, ptr %snap, i32 0, i32 1
  %0 = ptrtoint ptr %origin to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %origin, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 20) #20
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @down_write(ptr noundef nonnull @_origins_lock) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %snap_src.i)
  %5 = ptrtoint ptr %snap_src.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %snap_src.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %snap_dest.i)
  %6 = ptrtoint ptr %snap_dest.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %snap_dest.i, align 4
  %7 = ptrtoint ptr %origin to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %origin, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %11 = load ptr, ptr @_origins, align 4
  %bd_dev.i.i.i.i = getelementptr inbounds %struct.block_device, ptr %10, i32 0, i32 5
  %12 = ptrtoint ptr %bd_dev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bd_dev.i.i.i.i, align 4
  %and.i.i.i.i = and i32 %13, 255
  %arrayidx.i.i.i = getelementptr %struct.list_head, ptr %11, i32 %and.i.i.i.i
  br label %for.cond.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i.for.cond.i.i.i_crit_edge, %if.end
  %.pn.in.i.i.i = phi ptr [ %arrayidx.i.i.i, %if.end ], [ %.pn.i.i.i, %for.body.i.i.i.for.cond.i.i.i_crit_edge ]
  %14 = ptrtoint ptr %.pn.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn.i.i.i = load ptr, ptr %.pn.in.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %.pn.i.i.i, %arrayidx.i.i.i
  br i1 %cmp.not.i.i.i, label %for.cond.i.i.i.lor.lhs.false.i_crit_edge, label %for.body.i.i.i

for.cond.i.i.i.lor.lhs.false.i_crit_edge:         ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i
  %o.0.i.i.i = getelementptr i8, ptr %.pn.i.i.i, i32 -4
  %15 = ptrtoint ptr %o.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %o.0.i.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %16, %10
  br i1 %cmp.i.not.i.i.i, label %__lookup_origin.exit.i.i, label %for.body.i.i.i.for.cond.i.i.i_crit_edge

for.body.i.i.i.for.cond.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i.i.i

__lookup_origin.exit.i.i:                         ; preds = %for.body.i.i.i
  %o.0.i.i.i.le = getelementptr i8, ptr %.pn.i.i.i, i32 -4
  %tobool.not.i.i = icmp eq ptr %o.0.i.i.i.le, null
  br i1 %tobool.not.i.i, label %__lookup_origin.exit.i.i.lor.lhs.false.i_crit_edge, label %if.end.i.i

__lookup_origin.exit.i.i.lor.lhs.false.i_crit_edge: ; preds = %__lookup_origin.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false.i

if.end.i.i:                                       ; preds = %__lookup_origin.exit.i.i
  %snapshots.i.i = getelementptr i8, ptr %.pn.i.i.i, i32 8
  %17 = ptrtoint ptr %snapshots.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn49.i.i = load ptr, ptr %snapshots.i.i, align 4
  %cmp.not51.i.i = icmp eq ptr %.pn49.i.i, %snapshots.i.i
  br i1 %cmp.not51.i.i, label %if.end.i.i.lor.lhs.false.i_crit_edge, label %for.body.lr.ph.i.i

if.end.i.i.lor.lhs.false.i_crit_edge:             ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false.i

for.body.lr.ph.i.i:                               ; preds = %if.end.i.i
  %cow7.i.i = getelementptr inbounds %struct.dm_snapshot, ptr %snap, i32 0, i32 2
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %snap_merge.0.i = phi ptr [ null, %for.body.lr.ph.i.i ], [ %spec.select.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %.pn53.i.i = phi ptr [ %.pn49.i.i, %for.body.lr.ph.i.i ], [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %count.052.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %count.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %s.054.i.i = getelementptr i8, ptr %.pn53.i.i, i32 -108
  %ti.i.i = getelementptr i8, ptr %.pn53.i.i, i32 -4
  %18 = ptrtoint ptr %ti.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ti.i.i, align 8
  %type.i.i = getelementptr inbounds %struct.dm_target, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %type.i.i, align 4
  %name.i.i = getelementptr inbounds %struct.target_type, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %name.i.i, align 8
  %cmp2.i.not.i = icmp eq ptr %23, @dm_snapshot_merge_target_name
  %spec.select.i = select i1 %cmp2.i.not.i, ptr %s.054.i.i, ptr %snap_merge.0.i
  %cow.i.i = getelementptr i8, ptr %.pn53.i.i, i32 -8
  %24 = ptrtoint ptr %cow.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cow.i.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %28 = ptrtoint ptr %cow7.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cow7.i.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %cmp.i.not.i.i = icmp eq ptr %27, %31
  br i1 %cmp.i.not.i.i, label %if.end12.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i.i

if.end12.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @down_read(ptr noundef %s.054.i.i) #16
  %active13.i.i = getelementptr i8, ptr %.pn53.i.i, i32 16
  %32 = ptrtoint ptr %active13.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %active13.i.i, align 4
  tail call void @up_read(ptr noundef %s.054.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool15.not.i.i = icmp eq i32 %33, 0
  %spec.select33.i = select i1 %tobool15.not.i.i, ptr %snap_dest.i, ptr %snap_src.i
  %34 = ptrtoint ptr %spec.select33.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %s.054.i.i, ptr %spec.select33.i, align 4
  %inc.i.i = add i32 %count.052.i.i, 1
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end12.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %count.1.i.i = phi i32 [ %inc.i.i, %if.end12.i.i ], [ %count.052.i.i, %for.body.i.i.for.inc.i.i_crit_edge ]
  %35 = ptrtoint ptr %.pn53.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pn.i.i = load ptr, ptr %.pn53.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %snapshots.i.i
  br i1 %cmp.not.i.i, label %__find_snapshots_sharing_cow.exit.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i

__find_snapshots_sharing_cow.exit.i:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %count.1.i.i)
  %cmp.i = icmp eq i32 %count.1.i.i, 2
  br i1 %cmp.i, label %__find_snapshots_sharing_cow.exit.i.if.then.i_crit_edge, label %__find_snapshots_sharing_cow.exit.i.lor.lhs.false.i_crit_edge

__find_snapshots_sharing_cow.exit.i.lor.lhs.false.i_crit_edge: ; preds = %__find_snapshots_sharing_cow.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false.i

__find_snapshots_sharing_cow.exit.i.if.then.i_crit_edge: ; preds = %__find_snapshots_sharing_cow.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %__find_snapshots_sharing_cow.exit.i.lor.lhs.false.i_crit_edge, %if.end.i.i.lor.lhs.false.i_crit_edge, %__lookup_origin.exit.i.i.lor.lhs.false.i_crit_edge, %for.cond.i.i.i.lor.lhs.false.i_crit_edge
  %snap_merge.232.i = phi ptr [ %spec.select.i, %__find_snapshots_sharing_cow.exit.i.lor.lhs.false.i_crit_edge ], [ null, %__lookup_origin.exit.i.i.lor.lhs.false.i_crit_edge ], [ null, %if.end.i.i.lor.lhs.false.i_crit_edge ], [ null, %for.cond.i.i.i.lor.lhs.false.i_crit_edge ]
  %36 = ptrtoint ptr %snap_dest.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %snap_dest.i.0.snap_dest.i.0.snap_dest.0.snap_dest.0..i = load ptr, ptr %snap_dest.i, align 4
  %tobool.not.i = icmp eq ptr %snap_dest.i.0.snap_dest.i.0.snap_dest.0.snap_dest.0..i, null
  br i1 %tobool.not.i, label %if.end.i, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %__find_snapshots_sharing_cow.exit.i.if.then.i_crit_edge
  %ti.i = getelementptr inbounds %struct.dm_snapshot, ptr %snap, i32 0, i32 3
  %37 = ptrtoint ptr %ti.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ti.i, align 8
  br label %if.then3

if.end.i:                                         ; preds = %lor.lhs.false.i
  %39 = ptrtoint ptr %snap_src.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %snap_src.i.0.snap_src.i.0.snap_src.0.snap_src.0..i = load ptr, ptr %snap_src.i, align 4
  %tobool1.not.i = icmp eq ptr %snap_src.i.0.snap_src.i.0.snap_src.0.snap_src.0..i, null
  br i1 %tobool1.not.i, label %if.end.i.if.end4_crit_edge, label %if.end3.i

if.end.i.if.end4_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4

if.end3.i:                                        ; preds = %if.end.i
  %ti4.i = getelementptr inbounds %struct.dm_snapshot, ptr %snap, i32 0, i32 3
  %40 = ptrtoint ptr %ti4.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ti4.i, align 8
  %type.i = getelementptr inbounds %struct.dm_target, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %type.i, align 4
  %name.i = getelementptr inbounds %struct.target_type, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %name.i, align 8
  %cmp5.i = icmp eq ptr %45, @dm_snapshot_merge_target_name
  br i1 %cmp5.i, label %if.end7.i, label %if.end3.i.if.end4_crit_edge

if.end3.i.if.end4_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4

if.end7.i:                                        ; preds = %if.end3.i
  %tobool8.not.i = icmp eq ptr %snap_merge.232.i, null
  br i1 %tobool8.not.i, label %if.end12.i, label %if.end7.i.if.then3_crit_edge

if.end7.i.if.then3_crit_edge:                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then3

if.end12.i:                                       ; preds = %if.end7.i
  %store.i = getelementptr inbounds %struct.dm_snapshot, ptr %snap_src.i.0.snap_src.i.0.snap_src.0.snap_src.0..i, i32 0, i32 19
  %46 = ptrtoint ptr %store.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %store.i, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 4
  %prepare_merge.i = getelementptr inbounds %struct.dm_exception_store_type, ptr %49, i32 0, i32 7
  %50 = ptrtoint ptr %prepare_merge.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %prepare_merge.i, align 4
  %tobool14.not.i = icmp eq ptr %51, null
  br i1 %tobool14.not.i, label %if.end12.i.if.then3_crit_edge, label %lor.lhs.false15.i

if.end12.i.if.then3_crit_edge:                    ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then3

lor.lhs.false15.i:                                ; preds = %if.end12.i
  %commit_merge.i = getelementptr inbounds %struct.dm_exception_store_type, ptr %49, i32 0, i32 8
  %52 = ptrtoint ptr %commit_merge.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %commit_merge.i, align 4
  %tobool18.not.i = icmp eq ptr %53, null
  br i1 %tobool18.not.i, label %lor.lhs.false15.i.if.then3_crit_edge, label %lor.lhs.false15.i.if.end4_crit_edge

lor.lhs.false15.i.if.end4_crit_edge:              ; preds = %lor.lhs.false15.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4

lor.lhs.false15.i.if.then3_crit_edge:             ; preds = %lor.lhs.false15.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then3

if.then3:                                         ; preds = %lor.lhs.false15.i.if.then3_crit_edge, %if.end12.i.if.then3_crit_edge, %if.end7.i.if.then3_crit_edge, %if.then.i
  %.sink.i = phi ptr [ %38, %if.then.i ], [ %41, %if.end7.i.if.then3_crit_edge ], [ %41, %lor.lhs.false15.i.if.then3_crit_edge ], [ %41, %if.end12.i.if.then3_crit_edge ]
  %.str.32.sink.i = phi ptr [ @.str.30, %if.then.i ], [ @.str.31, %if.end7.i.if.then3_crit_edge ], [ @.str.32, %lor.lhs.false15.i.if.then3_crit_edge ], [ @.str.32, %if.end12.i.if.then3_crit_edge ]
  %error21.i = getelementptr inbounds %struct.dm_target, ptr %.sink.i, i32 0, i32 12
  %54 = ptrtoint ptr %error21.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %.str.32.sink.i, ptr %error21.i, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %snap_dest.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %snap_src.i)
  tail call void @kfree(ptr noundef nonnull %call7.i) #16
  br label %out

if.end4:                                          ; preds = %lor.lhs.false15.i.if.end4_crit_edge, %if.end3.i.if.end4_crit_edge, %if.end.i.if.end4_crit_edge
  %retval.0.i.ph = phi i32 [ 1, %lor.lhs.false15.i.if.end4_crit_edge ], [ 1, %if.end3.i.if.end4_crit_edge ], [ 0, %if.end.i.if.end4_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %snap_dest.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %snap_src.i)
  %55 = load ptr, ptr @_origins, align 4
  %bd_dev.i.i = getelementptr inbounds %struct.block_device, ptr %3, i32 0, i32 5
  %56 = ptrtoint ptr %bd_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %bd_dev.i.i, align 4
  %and.i.i = and i32 %57, 255
  %arrayidx.i = getelementptr %struct.list_head, ptr %55, i32 %and.i.i
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end4
  %.pn.in.i = phi ptr [ %arrayidx.i, %if.end4 ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %58 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %arrayidx.i
  br i1 %cmp.not.i, label %for.cond.i.if.else_crit_edge, label %for.body.i

for.cond.i.if.else_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else

for.body.i:                                       ; preds = %for.cond.i
  %o.0.i = getelementptr i8, ptr %.pn.i, i32 -4
  %59 = ptrtoint ptr %o.0.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %o.0.i, align 4
  %cmp.i.not.i = icmp eq ptr %60, %3
  br i1 %cmp.i.not.i, label %__lookup_origin.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i

__lookup_origin.exit:                             ; preds = %for.body.i
  %o.0.i.le = getelementptr i8, ptr %.pn.i, i32 -4
  %tobool6.not = icmp eq ptr %o.0.i.le, null
  br i1 %tobool6.not, label %__lookup_origin.exit.if.else_crit_edge, label %if.then7

__lookup_origin.exit.if.else_crit_edge:           ; preds = %__lookup_origin.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else

if.then7:                                         ; preds = %__lookup_origin.exit
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @kfree(ptr noundef nonnull %call7.i) #16
  br label %if.end9

if.else:                                          ; preds = %__lookup_origin.exit.if.else_crit_edge, %for.cond.i.if.else_crit_edge
  %snapshots = getelementptr inbounds %struct.origin, ptr %call7.i, i32 0, i32 2
  %61 = ptrtoint ptr %snapshots to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %snapshots, ptr %snapshots, align 4
  %prev.i = getelementptr inbounds %struct.origin, ptr %call7.i, i32 0, i32 2, i32 1
  %62 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %snapshots, ptr %prev.i, align 8
  %63 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %3, ptr %call7.i, align 8
  %64 = ptrtoint ptr %bd_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %bd_dev.i.i, align 4
  %and.i.i26 = and i32 %65, 255
  %arrayidx.i27 = getelementptr %struct.list_head, ptr %55, i32 %and.i.i26
  %hash_list.i = getelementptr inbounds %struct.origin, ptr %call7.i, i32 0, i32 1
  %prev.i.i = getelementptr %struct.list_head, ptr %55, i32 %and.i.i26, i32 1
  %66 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %hash_list.i, ptr noundef %67, ptr noundef %arrayidx.i27) #16
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.else.if.end9_crit_edge

if.else.if.end9_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9

if.end.i.i.i:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %68 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %hash_list.i, ptr %prev.i.i, align 4
  %69 = ptrtoint ptr %hash_list.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %arrayidx.i27, ptr %hash_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.origin, ptr %call7.i, i32 0, i32 1, i32 1
  %70 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %67, ptr %prev3.i.i.i, align 8
  %71 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile ptr %hash_list.i, ptr %67, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.end.i.i.i, %if.else.if.end9_crit_edge, %if.then7
  %o.0 = phi ptr [ %o.0.i.le, %if.then7 ], [ %call7.i, %if.else.if.end9_crit_edge ], [ %call7.i, %if.end.i.i.i ]
  %snapshots.i = getelementptr inbounds %struct.origin, ptr %o.0, i32 0, i32 2
  %store2.i = getelementptr inbounds %struct.dm_snapshot, ptr %snap, i32 0, i32 19
  br label %for.cond.i31

for.cond.i31:                                     ; preds = %for.body.i33.for.cond.i31_crit_edge, %if.end9
  %.pn.in.i28 = phi ptr [ %snapshots.i, %if.end9 ], [ %.pn.i29, %for.body.i33.for.cond.i31_crit_edge ]
  %72 = ptrtoint ptr %.pn.in.i28 to i32
  call void @__asan_load4_noabort(i32 %72)
  %.pn.i29 = load ptr, ptr %.pn.in.i28, align 4
  %cmp.not.i30 = icmp eq ptr %.pn.i29, %snapshots.i
  br i1 %cmp.not.i30, label %for.cond.i31.for.end.i_crit_edge, label %for.body.i33

for.cond.i31.for.end.i_crit_edge:                 ; preds = %for.cond.i31
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i

for.body.i33:                                     ; preds = %for.cond.i31
  %store.i32 = getelementptr i8, ptr %.pn.i29, i32 384
  %73 = ptrtoint ptr %store.i32 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %store.i32, align 4
  %chunk_size.i = getelementptr inbounds %struct.dm_exception_store, ptr %74, i32 0, i32 2
  %75 = ptrtoint ptr %chunk_size.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %chunk_size.i, align 4
  %77 = ptrtoint ptr %store2.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %store2.i, align 4
  %chunk_size3.i = getelementptr inbounds %struct.dm_exception_store, ptr %78, i32 0, i32 2
  %79 = ptrtoint ptr %chunk_size3.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %chunk_size3.i, align 4
  %cmp4.i = icmp ult i32 %76, %80
  br i1 %cmp4.i, label %for.body.i33.for.end.i_crit_edge, label %for.body.i33.for.cond.i31_crit_edge

for.body.i33.for.cond.i31_crit_edge:              ; preds = %for.body.i33
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i31

for.body.i33.for.end.i_crit_edge:                 ; preds = %for.body.i33
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i33.for.end.i_crit_edge, %for.cond.i31.for.end.i_crit_edge
  %.pn.lcssa.i = phi ptr [ %.pn.i29, %for.body.i33.for.end.i_crit_edge ], [ %snapshots.i, %for.cond.i31.for.end.i_crit_edge ]
  %list10.i = getelementptr inbounds %struct.dm_snapshot, ptr %snap, i32 0, i32 4
  %prev.i.i34 = getelementptr inbounds %struct.list_head, ptr %.pn.lcssa.i, i32 0, i32 1
  %81 = ptrtoint ptr %prev.i.i34 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %prev.i.i34, align 4
  %call.i.i.i35 = tail call zeroext i1 @__list_add_valid(ptr noundef %list10.i, ptr noundef %82, ptr noundef %.pn.lcssa.i) #16
  br i1 %call.i.i.i35, label %if.end.i.i.i37, label %for.end.i.out_crit_edge

for.end.i.out_crit_edge:                          ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end.i.i.i37:                                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %83 = ptrtoint ptr %prev.i.i34 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %list10.i, ptr %prev.i.i34, align 4
  %84 = ptrtoint ptr %list10.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %.pn.lcssa.i, ptr %list10.i, align 4
  %prev3.i.i.i36 = getelementptr inbounds %struct.dm_snapshot, ptr %snap, i32 0, i32 4, i32 1
  %85 = ptrtoint ptr %prev3.i.i.i36 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %82, ptr %prev3.i.i.i36, align 4
  %86 = ptrtoint ptr %82 to i32
  call void @__asan_store4_noabort(i32 %86)
  store volatile ptr %list10.i, ptr %82, align 4
  br label %out

out:                                              ; preds = %if.end.i.i.i37, %for.end.i.out_crit_edge, %if.then3
  %retval.0.i40 = phi i32 [ -22, %if.then3 ], [ %retval.0.i.ph, %for.end.i.out_crit_edge ], [ %retval.0.i.ph, %if.end.i.i.i37 ]
  tail call void @up_write(ptr noundef nonnull @_origins_lock) #16
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i40, %out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dm_add_exception(ptr nocapture noundef readonly %context, i64 noundef %old, i64 noundef %new) #3 align 64 {
entry:
  %lock = alloca %struct.dm_exception_table_lock, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %lock) #16
  %0 = load ptr, ptr @exception_cache, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3264) #16
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = getelementptr inbounds %struct.dm_exception_table_lock, ptr %lock, i32 0, i32 1
  %old_chunk = getelementptr inbounds %struct.dm_exception, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %old_chunk to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %old, ptr %old_chunk, align 8
  %new_chunk = getelementptr inbounds %struct.dm_exception, ptr %call.i, i32 0, i32 2
  %3 = ptrtoint ptr %new_chunk to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %new, ptr %new_chunk, align 8
  %complete1.i = getelementptr inbounds %struct.dm_snapshot, ptr %context, i32 0, i32 15
  %pending2.i = getelementptr inbounds %struct.dm_snapshot, ptr %context, i32 0, i32 14
  %table.i = getelementptr inbounds %struct.dm_snapshot, ptr %context, i32 0, i32 15, i32 2
  %4 = ptrtoint ptr %table.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %table.i, align 4
  %hash_shift.i.i = getelementptr inbounds %struct.dm_snapshot, ptr %context, i32 0, i32 15, i32 1
  %6 = ptrtoint ptr %hash_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hash_shift.i.i, align 4
  %sh_prom.i.i = zext i32 %7 to i64
  %shr.i.i = lshr i64 %old, %sh_prom.i.i
  %8 = ptrtoint ptr %complete1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %complete1.i, align 4
  %10 = trunc i64 %shr.i.i to i32
  %conv1.i.i = and i32 %9, %10
  %arrayidx.i = getelementptr %struct.hlist_bl_head, ptr %5, i32 %conv1.i.i
  %11 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %arrayidx.i, ptr %lock, align 4
  %table3.i = getelementptr inbounds %struct.dm_snapshot, ptr %context, i32 0, i32 14, i32 2
  %12 = ptrtoint ptr %table3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %table3.i, align 4
  %hash_shift.i11.i = getelementptr inbounds %struct.dm_snapshot, ptr %context, i32 0, i32 14, i32 1
  %14 = ptrtoint ptr %hash_shift.i11.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %hash_shift.i11.i, align 4
  %sh_prom.i12.i = zext i32 %15 to i64
  %shr.i13.i = lshr i64 %old, %sh_prom.i12.i
  %16 = ptrtoint ptr %pending2.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pending2.i, align 4
  %18 = trunc i64 %shr.i13.i to i32
  %conv1.i14.i = and i32 %17, %18
  %arrayidx5.i = getelementptr %struct.hlist_bl_head, ptr %13, i32 %conv1.i14.i
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %arrayidx5.i, ptr %1, align 4
  call fastcc void @dm_exception_table_lock(ptr noundef nonnull %lock)
  tail call fastcc void @dm_insert_exception(ptr noundef %complete1.i, ptr noundef nonnull %call.i)
  %20 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %arrayidx5.i, align 4
  %and1.i.i.i.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %do.body4.i.i.i, label %hlist_bl_unlock.exit.i, !prof !294

do.body4.i.i.i:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/bit_spinlock.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #16, !srcloc !296
  unreachable

hlist_bl_unlock.exit.i:                           ; preds = %if.end
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx5.i, i32 noundef 4) #16
  %22 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx5.i, align 4
  %and.i.i.i.i.i = and i32 %23, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !297
  %24 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile i32 %and.i.i.i.i.i, ptr %arrayidx5.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !298
  %25 = tail call i32 @llvm.read_register.i32(metadata !280) #16
  %and.i.i.i.i.i.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %sub.i.i.i.i = add i32 %28, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx.i, align 4
  %and1.i.i.i2.i = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i2.i)
  %tobool.not.i.i3.i = icmp eq i32 %and1.i.i.i2.i, 0
  br i1 %tobool.not.i.i3.i, label %do.body4.i.i4.i, label %dm_exception_table_unlock.exit, !prof !294

do.body4.i.i4.i:                                  ; preds = %hlist_bl_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/bit_spinlock.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #16, !srcloc !296
  unreachable

dm_exception_table_unlock.exit:                   ; preds = %hlist_bl_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i.i.i5.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i, i32 noundef 4) #16
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i.i.i.i6.i = and i32 %32, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !297
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile i32 %and.i.i.i.i6.i, ptr %arrayidx.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !298
  %34 = tail call i32 @llvm.read_register.i32(metadata !280) #16
  %and.i.i.i.i.i7.i = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i.i.i7.i to ptr
  %preempt_count.i.i.i.i8.i = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %preempt_count.i.i.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %preempt_count.i.i.i.i8.i, align 4
  %sub.i.i.i9.i = add i32 %37, -1
  store volatile i32 %sub.i.i.i9.i, ptr %preempt_count.i.i.i.i8.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %dm_exception_table_unlock.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %dm_exception_table_unlock.exit ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %lock) #16
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_set_target_max_io_len(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @unregister_snapshot(ptr noundef %s) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @down_write(ptr noundef nonnull @_origins_lock) #16
  %origin = getelementptr inbounds %struct.dm_snapshot, ptr %s, i32 0, i32 1
  %0 = ptrtoint ptr %origin to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %origin, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = load ptr, ptr @_origins, align 4
  %bd_dev.i.i = getelementptr inbounds %struct.block_device, ptr %3, i32 0, i32 5
  %5 = ptrtoint ptr %bd_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bd_dev.i.i, align 4
  %and.i.i = and i32 %6, 255
  %arrayidx.i = getelementptr %struct.list_head, ptr %4, i32 %and.i.i
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ %arrayidx.i, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %7 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %arrayidx.i
  br i1 %cmp.not.i, label %for.cond.i.__lookup_origin.exit_crit_edge, label %for.body.i

for.cond.i.__lookup_origin.exit_crit_edge:        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__lookup_origin.exit

for.body.i:                                       ; preds = %for.cond.i
  %o.0.i = getelementptr i8, ptr %.pn.i, i32 -4
  %8 = ptrtoint ptr %o.0.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %o.0.i, align 4
  %cmp.i.not.i = icmp eq ptr %9, %3
  br i1 %cmp.i.not.i, label %__lookup_origin.exit.split.loop.exit16, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i

__lookup_origin.exit.split.loop.exit16:           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %o.0.i.le = getelementptr i8, ptr %.pn.i, i32 -4
  br label %__lookup_origin.exit

__lookup_origin.exit:                             ; preds = %__lookup_origin.exit.split.loop.exit16, %for.cond.i.__lookup_origin.exit_crit_edge
  %retval.0.i = phi ptr [ %o.0.i.le, %__lookup_origin.exit.split.loop.exit16 ], [ null, %for.cond.i.__lookup_origin.exit_crit_edge ]
  %list = getelementptr inbounds %struct.dm_snapshot, ptr %s, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #16
  br i1 %call.i.i, label %if.end.i.i, label %__lookup_origin.exit.list_del.exit_crit_edge

__lookup_origin.exit.list_del.exit_crit_edge:     ; preds = %__lookup_origin.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit

if.end.i.i:                                       ; preds = %__lookup_origin.exit
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i = getelementptr inbounds %struct.dm_snapshot, ptr %s, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %__lookup_origin.exit.list_del.exit_crit_edge
  %16 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.dm_snapshot, ptr %s, i32 0, i32 4, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %list_del.exit.if.end_crit_edge, label %land.lhs.true

list_del.exit.if.end_crit_edge:                   ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.lhs.true:                                    ; preds = %list_del.exit
  %snapshots = getelementptr inbounds %struct.origin, ptr %retval.0.i, i32 0, i32 2
  %18 = ptrtoint ptr %snapshots to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %snapshots, align 4
  %cmp.i.not = icmp eq ptr %19, %snapshots
  br i1 %cmp.i.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %hash_list = getelementptr inbounds %struct.origin, ptr %retval.0.i, i32 0, i32 1
  %call.i.i7 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %hash_list) #16
  br i1 %call.i.i7, label %if.end.i.i10, label %if.then.list_del.exit12_crit_edge

if.then.list_del.exit12_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit12

if.end.i.i10:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i8 = getelementptr inbounds %struct.origin, ptr %retval.0.i, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %prev.i.i8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i8, align 4
  %22 = ptrtoint ptr %hash_list to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hash_list, align 4
  %prev1.i.i.i9 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i9 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev1.i.i.i9, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %21, align 4
  br label %list_del.exit12

list_del.exit12:                                  ; preds = %if.end.i.i10, %if.then.list_del.exit12_crit_edge
  %26 = ptrtoint ptr %hash_list to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 256 to ptr), ptr %hash_list, align 4
  %prev.i11 = getelementptr inbounds %struct.origin, ptr %retval.0.i, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %prev.i11 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i11, align 4
  tail call void @kfree(ptr noundef nonnull %retval.0.i) #16
  br label %if.end

if.end:                                           ; preds = %list_del.exit12, %land.lhs.true.if.end_crit_edge, %list_del.exit.if.end_crit_edge
  tail call void @up_write(ptr noundef nonnull @_origins_lock) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_kcopyd_client_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dm_exception_table_exit(ptr nocapture noundef readonly %et, ptr noundef %mem) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %et to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %et, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %1)
  %cmp20 = icmp ult i32 %1, 2147483647
  br i1 %cmp20, label %for.body.lr.ph, label %entry.for.end9_crit_edge

entry.for.end9_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end9

for.body.lr.ph:                                   ; preds = %entry
  %table = getelementptr inbounds %struct.dm_exception_table, ptr %et, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc8.for.body_crit_edge, %for.body.lr.ph
  %i.021 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc8.for.body_crit_edge ]
  %2 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %table, align 4
  %add.ptr = getelementptr %struct.hlist_bl_head, ptr %3, i32 %i.021
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  %6 = ptrtoint ptr %5 to i32
  %and.i = and i32 %6, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not18 = icmp eq i32 %and.i, 0
  br i1 %tobool.not18, label %for.body.for.inc8_crit_edge, label %land.lhs.true.preheader

for.body.for.inc8_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc8

land.lhs.true.preheader:                          ; preds = %for.body
  %7 = inttoptr i32 %and.i to ptr
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %land.lhs.true.land.lhs.true_crit_edge, %land.lhs.true.preheader
  %pos.019 = phi ptr [ %9, %land.lhs.true.land.lhs.true_crit_edge ], [ %7, %land.lhs.true.preheader ]
  %8 = ptrtoint ptr %pos.019 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pos.019, align 4
  tail call void @kmem_cache_free(ptr noundef %mem, ptr noundef nonnull %pos.019) #16
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %land.lhs.true.for.inc8_crit_edge, label %land.lhs.true.land.lhs.true_crit_edge

land.lhs.true.land.lhs.true_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true

land.lhs.true.for.inc8_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc8

for.inc8:                                         ; preds = %land.lhs.true.for.inc8_crit_edge, %for.body.for.inc8_crit_edge
  %inc = add nuw nsw i32 %i.021, 1
  %exitcond.not = icmp eq i32 %i.021, %1
  br i1 %exitcond.not, label %for.inc8.for.end9_crit_edge, label %for.inc8.for.body_crit_edge

for.inc8.for.body_crit_edge:                      ; preds = %for.inc8
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc8.for.end9_crit_edge:                      ; preds = %for.inc8
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end9

for.end9:                                         ; preds = %for.inc8.for.end9_crit_edge, %entry.for.end9_crit_edge
  %table10 = getelementptr inbounds %struct.dm_exception_table, ptr %et, i32 0, i32 2
  %10 = ptrtoint ptr %table10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %table10, align 4
  tail call void @kvfree(ptr noundef %11) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_exception_store_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_put_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_read_arg_group(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_shift_arg(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mempool_init(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mempool_alloc_slab(i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free_slab(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dm_exception_table_lock(ptr nocapture noundef readonly %lock) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lock, align 4
  %2 = tail call i32 @llvm.read_register.i32(metadata !280) #16
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !300
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %do.body14.i.i, %entry
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %1, i32 noundef 4) #16
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %1, align 4
  %and.i.i.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %test_and_set_bit_lock.exit.i.i, label %while.cond.i.i.do.body2.i.i_crit_edge, !prof !301

while.cond.i.i.do.body2.i.i_crit_edge:            ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body2.i.i

test_and_set_bit_lock.exit.i.i:                   ; preds = %while.cond.i.i
  tail call void @llvm.prefetch.p0(ptr %1, i32 1, i32 3, i32 1) #16
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %1, ptr %1, i32 1, ptr elementtype(i32) %1) #16, !srcloc !302
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !303
  %and1.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %phi.cmp.i.not.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %phi.cmp.i.not.i.i, label %hlist_bl_lock.exit, label %test_and_set_bit_lock.exit.i.i.do.body2.i.i_crit_edge, !prof !292

test_and_set_bit_lock.exit.i.i.do.body2.i.i_crit_edge: ; preds = %test_and_set_bit_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body2.i.i

do.body2.i.i:                                     ; preds = %test_and_set_bit_lock.exit.i.i.do.body2.i.i_crit_edge, %while.cond.i.i.do.body2.i.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !304
  %9 = tail call i32 @llvm.read_register.i32(metadata !280) #16
  %and.i.i.i1.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %preempt_count.i.i2.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i2.i.i, align 4
  %sub.i.i.i = add i32 %12, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i2.i.i, align 4
  br label %do.body4.i.i

do.body4.i.i:                                     ; preds = %do.body4.i.i.do.body4.i.i_crit_edge, %do.body2.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !305
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #16, !srcloc !306
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %1, align 4
  %and1.i.i.i = and i32 %14, 1
  %tobool12.not.i.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool12.not.i.i, label %do.body14.i.i, label %do.body4.i.i.do.body4.i.i_crit_edge

do.body4.i.i.do.body4.i.i_crit_edge:              ; preds = %do.body4.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body4.i.i

do.body14.i.i:                                    ; preds = %do.body4.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %15 = tail call i32 @llvm.read_register.i32(metadata !280) #16
  %and.i.i.i3.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i3.i.i to ptr
  %preempt_count.i.i4.i.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %preempt_count.i.i4.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %preempt_count.i.i4.i.i, align 4
  %add.i5.i.i = add i32 %18, 1
  store volatile i32 %add.i5.i.i, ptr %preempt_count.i.i4.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !307
  br label %while.cond.i.i

hlist_bl_lock.exit:                               ; preds = %test_and_set_bit_lock.exit.i.i
  %pending_slot = getelementptr inbounds %struct.dm_exception_table_lock, ptr %lock, i32 0, i32 1
  %19 = ptrtoint ptr %pending_slot to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pending_slot, align 4
  %21 = tail call i32 @llvm.read_register.i32(metadata !280) #16
  %and.i.i.i.i.i2 = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i.i.i2 to ptr
  %preempt_count.i.i.i.i3 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %preempt_count.i.i.i.i3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %preempt_count.i.i.i.i3, align 4
  %add.i.i.i4 = add i32 %24, 1
  store volatile i32 %add.i.i.i4, ptr %preempt_count.i.i.i.i3, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !300
  br label %while.cond.i.i8

while.cond.i.i8:                                  ; preds = %do.body14.i.i23, %hlist_bl_lock.exit
  %call.i.i.i.i5 = tail call zeroext i1 @__kasan_check_write(ptr noundef %20, i32 noundef 4) #16
  %25 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %20, align 4
  %and.i.i.i.i6 = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i6)
  %tobool.not.i.i.i.i7 = icmp eq i32 %and.i.i.i.i6, 0
  br i1 %tobool.not.i.i.i.i7, label %test_and_set_bit_lock.exit.i.i12, label %while.cond.i.i8.do.body2.i.i16_crit_edge, !prof !301

while.cond.i.i8.do.body2.i.i16_crit_edge:         ; preds = %while.cond.i.i8
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body2.i.i16

test_and_set_bit_lock.exit.i.i12:                 ; preds = %while.cond.i.i8
  tail call void @llvm.prefetch.p0(ptr %20, i32 1, i32 3, i32 1) #16
  %27 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %20, ptr %20, i32 1, ptr elementtype(i32) %20) #16, !srcloc !302
  %asmresult.i.i.i.i.i.i.i9 = extractvalue { i32, i32, i32 } %27, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !303
  %and1.i.i.i.i10 = and i32 %asmresult.i.i.i.i.i.i.i9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i10)
  %phi.cmp.i.not.i.i11 = icmp eq i32 %and1.i.i.i.i10, 0
  br i1 %phi.cmp.i.not.i.i11, label %hlist_bl_lock.exit24, label %test_and_set_bit_lock.exit.i.i12.do.body2.i.i16_crit_edge, !prof !292

test_and_set_bit_lock.exit.i.i12.do.body2.i.i16_crit_edge: ; preds = %test_and_set_bit_lock.exit.i.i12
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body2.i.i16

do.body2.i.i16:                                   ; preds = %test_and_set_bit_lock.exit.i.i12.do.body2.i.i16_crit_edge, %while.cond.i.i8.do.body2.i.i16_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !304
  %28 = tail call i32 @llvm.read_register.i32(metadata !280) #16
  %and.i.i.i1.i.i13 = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i1.i.i13 to ptr
  %preempt_count.i.i2.i.i14 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %preempt_count.i.i2.i.i14 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %preempt_count.i.i2.i.i14, align 4
  %sub.i.i.i15 = add i32 %31, -1
  store volatile i32 %sub.i.i.i15, ptr %preempt_count.i.i2.i.i14, align 4
  br label %do.body4.i.i19

do.body4.i.i19:                                   ; preds = %do.body4.i.i19.do.body4.i.i19_crit_edge, %do.body2.i.i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !305
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #16, !srcloc !306
  %32 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %20, align 4
  %and1.i.i.i17 = and i32 %33, 1
  %tobool12.not.i.i18 = icmp eq i32 %and1.i.i.i17, 0
  br i1 %tobool12.not.i.i18, label %do.body14.i.i23, label %do.body4.i.i19.do.body4.i.i19_crit_edge

do.body4.i.i19.do.body4.i.i19_crit_edge:          ; preds = %do.body4.i.i19
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body4.i.i19

do.body14.i.i23:                                  ; preds = %do.body4.i.i19
  call void @__sanitizer_cov_trace_pc() #18
  %34 = tail call i32 @llvm.read_register.i32(metadata !280) #16
  %and.i.i.i3.i.i20 = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i3.i.i20 to ptr
  %preempt_count.i.i4.i.i21 = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %preempt_count.i.i4.i.i21 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %preempt_count.i.i4.i.i21, align 4
  %add.i5.i.i22 = add i32 %37, 1
  store volatile i32 %add.i5.i.i22, ptr %preempt_count.i.i4.i.i21, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !307
  br label %while.cond.i.i8

hlist_bl_lock.exit24:                             ; preds = %test_and_set_bit_lock.exit.i.i12
  call void @__sanitizer_cov_trace_pc() #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dm_insert_exception(ptr nocapture noundef readonly %eh, ptr noundef %new_e) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %table = getelementptr inbounds %struct.dm_exception_table, ptr %eh, i32 0, i32 2
  %0 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %table, align 4
  %old_chunk = getelementptr inbounds %struct.dm_exception, ptr %new_e, i32 0, i32 1
  %2 = ptrtoint ptr %old_chunk to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %old_chunk, align 8
  %hash_shift.i = getelementptr inbounds %struct.dm_exception_table, ptr %eh, i32 0, i32 1
  %4 = ptrtoint ptr %hash_shift.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hash_shift.i, align 4
  %sh_prom.i = zext i32 %5 to i64
  %shr.i = lshr i64 %3, %sh_prom.i
  %6 = ptrtoint ptr %eh to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %eh, align 4
  %8 = trunc i64 %shr.i to i32
  %conv1.i = and i32 %7, %8
  %arrayidx = getelementptr %struct.hlist_bl_head, ptr %1, i32 %conv1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.then43_crit_edge, label %if.end

entry.if.then43_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then43

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %11 = ptrtoint ptr %10 to i32
  %and.i = and i32 %11, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not125 = icmp eq i32 %and.i, 0
  br i1 %tobool2.not125, label %if.end.if.then43_crit_edge, label %for.body.lr.ph

if.end.if.then43_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then43

for.body.lr.ph:                                   ; preds = %if.end
  %12 = inttoptr i32 %and.i to ptr
  %new_chunk = getelementptr inbounds %struct.dm_exception, ptr %new_e, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %pos.0126 = phi ptr [ %12, %for.body.lr.ph ], [ %28, %for.inc.for.body_crit_edge ]
  %old_chunk6 = getelementptr inbounds %struct.dm_exception, ptr %pos.0126, i32 0, i32 1
  %13 = ptrtoint ptr %old_chunk6 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %old_chunk6, align 8
  %new_chunk.i = getelementptr inbounds %struct.dm_exception, ptr %pos.0126, i32 0, i32 2
  %15 = ptrtoint ptr %new_chunk.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %new_chunk.i, align 8
  %shr.i88 = lshr i64 %16, 56
  %add = add nuw nsw i64 %shr.i88, 1
  %add8 = add i64 %add, %14
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %add8)
  %cmp = icmp eq i64 %3, %add8
  br i1 %cmp, label %land.lhs.true, label %for.body.if.end19_crit_edge

for.body.if.end19_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end19

land.lhs.true:                                    ; preds = %for.body
  %17 = ptrtoint ptr %new_chunk to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %new_chunk, align 8
  %and.i89 = and i64 %16, 72057594037927935
  %add15 = add nuw nsw i64 %add, %and.i89
  call void @__sanitizer_cov_trace_cmp8(i64 %18, i64 %add15)
  %cmp16 = icmp eq i64 %18, %add15
  br i1 %cmp16, label %if.then18, label %land.lhs.true.if.end19_crit_edge

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end19

if.then18:                                        ; preds = %land.lhs.true
  %add.i = add i64 %16, 72057594037927936
  %19 = ptrtoint ptr %new_chunk.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %add.i, ptr %new_chunk.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -72057594037927937, i64 %16)
  %tobool.not.i = icmp ugt i64 %16, -72057594037927937
  br i1 %tobool.not.i, label %do.body4.i, label %dm_consecutive_chunk_count_inc.exit, !prof !294

do.body4.i:                                       ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-exception-store.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 156, 0\0A.popsection", ""() #16, !srcloc !308
  unreachable

dm_consecutive_chunk_count_inc.exit:              ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #18
  %20 = load ptr, ptr @exception_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %20, ptr noundef %new_e) #16
  br label %cleanup

if.end19:                                         ; preds = %land.lhs.true.if.end19_crit_edge, %for.body.if.end19_crit_edge
  %sub = add i64 %14, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %sub)
  %cmp22 = icmp eq i64 %3, %sub
  br i1 %cmp22, label %land.lhs.true24, label %if.end19.if.end35_crit_edge

if.end19.if.end35_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end35

land.lhs.true24:                                  ; preds = %if.end19
  %21 = ptrtoint ptr %new_chunk to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %new_chunk, align 8
  %and.i94 = and i64 %16, 72057594037927935
  %sub28 = add nsw i64 %and.i94, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %22, i64 %sub28)
  %cmp29 = icmp eq i64 %22, %sub28
  br i1 %cmp29, label %if.then31, label %land.lhs.true24.if.end35_crit_edge

land.lhs.true24.if.end35_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end35

if.then31:                                        ; preds = %land.lhs.true24
  %add.i96 = add i64 %16, 72057594037927936
  %23 = ptrtoint ptr %new_chunk.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %add.i96, ptr %new_chunk.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -72057594037927937, i64 %16)
  %tobool.not.i97 = icmp ugt i64 %16, -72057594037927937
  br i1 %tobool.not.i97, label %do.body4.i98, label %dm_consecutive_chunk_count_inc.exit99, !prof !294

do.body4.i98:                                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-exception-store.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 156, 0\0A.popsection", ""() #16, !srcloc !308
  unreachable

dm_consecutive_chunk_count_inc.exit99:            ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #18
  %24 = ptrtoint ptr %old_chunk6 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %3, ptr %old_chunk6, align 8
  %dec34 = add nuw i64 %16, 72057594037927935
  %25 = ptrtoint ptr %new_chunk.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %dec34, ptr %new_chunk.i, align 8
  %26 = load ptr, ptr @exception_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %26, ptr noundef %new_e) #16
  br label %cleanup

if.end35:                                         ; preds = %land.lhs.true24.if.end35_crit_edge, %if.end19.if.end35_crit_edge
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %14)
  %cmp38 = icmp ult i64 %3, %14
  br i1 %cmp38, label %if.end35.if.else_crit_edge, label %for.inc

if.end35.if.else_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else

for.inc:                                          ; preds = %if.end35
  %27 = ptrtoint ptr %pos.0126 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pos.0126, align 4
  %tobool2.not = icmp eq ptr %28, null
  br i1 %tobool2.not, label %out, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

out:                                              ; preds = %for.inc
  %tobool42.not = icmp eq ptr %pos.0126, null
  br i1 %tobool42.not, label %out.if.then43_crit_edge, label %out.if.else_crit_edge

out.if.else_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else

out.if.then43_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then43

if.then43:                                        ; preds = %out.if.then43_crit_edge, %if.end.if.then43_crit_edge, %entry.if.then43_crit_edge
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx, align 4
  %31 = ptrtoint ptr %30 to i32
  %and.i.i = and i32 %31, -2
  %32 = inttoptr i32 %and.i.i to ptr
  %33 = ptrtoint ptr %new_e to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %new_e, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i100 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i100, label %if.then43.if.end.i_crit_edge, label %if.then.i

if.then43.if.end.i_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

if.then.i:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #18
  %pprev.i = getelementptr inbounds %struct.hlist_bl_node, ptr %32, i32 0, i32 1
  %34 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %new_e, ptr %pprev.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then43.if.end.i_crit_edge
  %pprev3.i = getelementptr inbounds %struct.hlist_bl_node, ptr %new_e, i32 0, i32 1
  %35 = ptrtoint ptr %pprev3.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %arrayidx, ptr %pprev3.i, align 4
  %36 = ptrtoint ptr %new_e to i32
  %and.i11.i = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i11.i)
  %tobool.not.i.i = icmp eq i32 %and.i11.i, 0
  br i1 %tobool.not.i.i, label %do.body7.i.i, label %do.body3.i.i, !prof !292

do.body3.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/list_bl.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 66, 0\0A.popsection", ""() #16, !srcloc !309
  unreachable

do.body7.i.i:                                     ; preds = %if.end.i
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx, align 4
  %39 = ptrtoint ptr %38 to i32
  %and8.i.i = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i)
  %cmp.not.not.i.i = icmp eq i32 %and8.i.i, 0
  br i1 %cmp.not.not.i.i, label %do.body16.i.i, label %hlist_bl_add_head.exit, !prof !294

do.body16.i.i:                                    ; preds = %do.body7.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/list_bl.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 68, 0\0A.popsection", ""() #16, !srcloc !310
  unreachable

hlist_bl_add_head.exit:                           ; preds = %do.body7.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %or.i.i = or i32 %36, 1
  %40 = inttoptr i32 %or.i.i to ptr
  %41 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %40, ptr %arrayidx, align 4
  br label %cleanup

if.else:                                          ; preds = %out.if.else_crit_edge, %if.end35.if.else_crit_edge
  %old_chunk45 = getelementptr inbounds %struct.dm_exception, ptr %pos.0126, i32 0, i32 1
  %42 = ptrtoint ptr %old_chunk45 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %old_chunk45, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %43)
  %cmp46 = icmp ult i64 %3, %43
  br i1 %cmp46, label %if.then48, label %if.else51

if.then48:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %pprev1.i = getelementptr inbounds %struct.hlist_bl_node, ptr %pos.0126, i32 0, i32 1
  %44 = ptrtoint ptr %pprev1.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pprev1.i, align 4
  %pprev2.i = getelementptr inbounds %struct.hlist_bl_node, ptr %new_e, i32 0, i32 1
  %46 = ptrtoint ptr %pprev2.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %45, ptr %pprev2.i, align 4
  %47 = ptrtoint ptr %new_e to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %pos.0126, ptr %new_e, align 4
  store ptr %new_e, ptr %pprev1.i, align 4
  %48 = ptrtoint ptr %new_e to i32
  %49 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %45, align 4
  %51 = ptrtoint ptr %50 to i32
  %and.i101 = and i32 %51, 1
  %or.i = or i32 %and.i101, %48
  %52 = inttoptr i32 %or.i to ptr
  store volatile ptr %52, ptr %45, align 4
  br label %cleanup

if.else51:                                        ; preds = %if.else
  %53 = ptrtoint ptr %pos.0126 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pos.0126, align 4
  %55 = ptrtoint ptr %new_e to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %54, ptr %new_e, align 4
  %pprev.i102 = getelementptr inbounds %struct.hlist_bl_node, ptr %new_e, i32 0, i32 1
  %56 = ptrtoint ptr %pprev.i102 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %pos.0126, ptr %pprev.i102, align 4
  store ptr %new_e, ptr %pos.0126, align 4
  %57 = load ptr, ptr %new_e, align 4
  %tobool.not.i103 = icmp eq ptr %57, null
  br i1 %tobool.not.i103, label %if.else51.cleanup_crit_edge, label %if.then.i104

if.else51.cleanup_crit_edge:                      ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then.i104:                                     ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #18
  %pprev7.i = getelementptr inbounds %struct.hlist_bl_node, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %pprev7.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %new_e, ptr %pprev7.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then.i104, %if.else51.cleanup_crit_edge, %if.then48, %hlist_bl_add_head.exit, %dm_consecutive_chunk_count_inc.exit99, %dm_consecutive_chunk_count_inc.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dm_exception_table_unlock(ptr nocapture noundef readonly %lock) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %pending_slot = getelementptr inbounds %struct.dm_exception_table_lock, ptr %lock, i32 0, i32 1
  %0 = ptrtoint ptr %pending_slot to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pending_slot, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %1, align 4
  %and1.i.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %hlist_bl_unlock.exit, !prof !294

do.body4.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/bit_spinlock.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #16, !srcloc !296
  unreachable

hlist_bl_unlock.exit:                             ; preds = %entry
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %1, i32 noundef 4) #16
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %1, align 4
  %and.i.i.i.i = and i32 %5, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !297
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 %and.i.i.i.i, ptr %1, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !298
  %7 = tail call i32 @llvm.read_register.i32(metadata !280) #16
  %and.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %10, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  %11 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %lock, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %12, align 4
  %and1.i.i.i2 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i2)
  %tobool.not.i.i3 = icmp eq i32 %and1.i.i.i2, 0
  br i1 %tobool.not.i.i3, label %do.body4.i.i4, label %hlist_bl_unlock.exit10, !prof !294

do.body4.i.i4:                                    ; preds = %hlist_bl_unlock.exit
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/bit_spinlock.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #16, !srcloc !296
  unreachable

hlist_bl_unlock.exit10:                           ; preds = %hlist_bl_unlock.exit
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i.i.i5 = tail call zeroext i1 @__kasan_check_write(ptr noundef %12, i32 noundef 4) #16
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %12, align 4
  %and.i.i.i.i6 = and i32 %16, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !297
  %17 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile i32 %and.i.i.i.i6, ptr %12, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !298
  %18 = tail call i32 @llvm.read_register.i32(metadata !280) #16
  %and.i.i.i.i.i7 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i7 to ptr
  %preempt_count.i.i.i.i8 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i.i8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i.i8, align 4
  %sub.i.i.i9 = add i32 %21, -1
  store volatile i32 %sub.i.i.i9, ptr %preempt_count.i.i.i.i8, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_uninit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @out_of_line_wait_on_bit(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bit_wait(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @wait_for_in_progress(ptr noundef %s, i1 noundef zeroext %unlock_origins) #3 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %in_progress = getelementptr inbounds %struct.dm_snapshot, ptr %s, i32 0, i32 20
  %0 = ptrtoint ptr %in_progress to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %in_progress, align 8
  %2 = load i32, ptr @cow_threshold, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %2)
  %cmp = icmp ugt i32 %1, %2
  br i1 %cmp, label %if.then, label %entry.return_crit_edge, !prof !294

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.then:                                          ; preds = %entry
  %in_progress_wait = getelementptr inbounds %struct.dm_snapshot, ptr %s, i32 0, i32 21
  tail call void @_raw_spin_lock(ptr noundef %in_progress_wait) #16
  %3 = ptrtoint ptr %in_progress to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %in_progress, align 8
  %5 = load i32, ptr @cow_threshold, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %5)
  %cmp3 = icmp ugt i32 %4, %5
  br i1 %cmp3, label %if.then10, label %if.end78, !prof !292

if.then10:                                        ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #16
  %6 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %7 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %8 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %9 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %wait, align 4
  %11 = tail call i32 @llvm.read_register.i32(metadata !280) #16
  %and.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task, align 8
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %6, align 4
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @default_wake_function, ptr %7, align 4
  %17 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %8, align 4
  %18 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %9, align 4
  call fastcc void @__add_wait_queue(ptr noundef %in_progress_wait, ptr noundef nonnull %wait)
  br label %__here

__here:                                           ; preds = %if.then10
  %19 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 212
  %21 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 ptrtoint (ptr blockaddress(@wait_for_in_progress, %__here) to i32), ptr %task_state_change, align 4
  %22 = load ptr, ptr %task, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile i32 2, ptr %22, align 128
  call void @_raw_spin_unlock(ptr noundef %in_progress_wait) #16
  br i1 %unlock_origins, label %if.then75, label %__here.if.end76_crit_edge

__here.if.end76_crit_edge:                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end76

if.then75:                                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #18
  call void @up_read(ptr noundef nonnull @_origins_lock) #16
  br label %if.end76

if.end76:                                         ; preds = %if.then75, %__here.if.end76_crit_edge
  call void @io_schedule() #16
  call void @remove_wait_queue(ptr noundef %in_progress_wait, ptr noundef nonnull %wait) #16
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #16
  br label %return

if.end78:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_raw_spin_unlock(ptr noundef %in_progress_wait) #16
  br label %return

return:                                           ; preds = %if.end78, %if.end76, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %if.end76 ], [ true, %if.end78 ], [ true, %entry.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_bio_get_target_bio_nr(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @track_chunk(ptr noundef %s, ptr noundef %bio, i64 noundef %chunk) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @dm_per_bio_data(ptr noundef %bio, i32 noundef 16) #16
  %chunk1 = getelementptr inbounds %struct.dm_snap_tracked_chunk, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %chunk1 to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %chunk, ptr %chunk1, align 8
  %tracked_chunk_lock = getelementptr inbounds %struct.dm_snapshot, ptr %s, i32 0, i32 17
  tail call void @_raw_spin_lock_irq(ptr noundef %tracked_chunk_lock) #16
  %conv = trunc i64 %chunk to i32
  %and = and i32 %conv, 15
  %arrayidx = getelementptr %struct.dm_snapshot, ptr %s, i32 0, i32 18, i32 %and
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %3 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %2, ptr %call, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %entry.hlist_add_head.exit_crit_edge, label %do.body12.i

entry.hlist_add_head.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %hlist_add_head.exit

do.body12.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %2, i32 0, i32 1
  %4 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %call, ptr %pprev.i, align 4
  br label %hlist_add_head.exit

hlist_add_head.exit:                              ; preds = %do.body12.i, %entry.hlist_add_head.exit_crit_edge
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %call, ptr %arrayidx, align 4
  %pprev34.i = getelementptr inbounds %struct.hlist_node, ptr %call, i32 0, i32 1
  %6 = ptrtoint ptr %pprev34.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %arrayidx, ptr %pprev34.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %tracked_chunk_lock) #16
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @dm_lookup_exception(ptr nocapture noundef readonly %et, i64 noundef %chunk) unnamed_addr #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %table = getelementptr inbounds %struct.dm_exception_table, ptr %et, i32 0, i32 2
  %0 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %table, align 4
  %hash_shift.i = getelementptr inbounds %struct.dm_exception_table, ptr %et, i32 0, i32 1
  %2 = ptrtoint ptr %hash_shift.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hash_shift.i, align 4
  %sh_prom.i = zext i32 %3 to i64
  %shr.i = lshr i64 %chunk, %sh_prom.i
  %4 = ptrtoint ptr %et to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %et, align 4
  %6 = trunc i64 %shr.i to i32
  %conv1.i = and i32 %5, %6
  %arrayidx = getelementptr %struct.hlist_bl_head, ptr %1, i32 %conv1.i
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %9 = ptrtoint ptr %8 to i32
  %and.i = and i32 %9, -2
  %10 = inttoptr i32 %and.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not19 = icmp eq i32 %and.i, 0
  br i1 %tobool.not19, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %pos.020 = phi ptr [ %16, %for.inc.for.body_crit_edge ], [ %10, %entry.for.body_crit_edge ]
  %old_chunk = getelementptr inbounds %struct.dm_exception, ptr %pos.020, i32 0, i32 1
  %11 = ptrtoint ptr %old_chunk to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %old_chunk, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %12, i64 %chunk)
  %cmp.not = icmp ugt i64 %12, %chunk
  br i1 %cmp.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %new_chunk.i = getelementptr inbounds %struct.dm_exception, ptr %pos.020, i32 0, i32 2
  %13 = ptrtoint ptr %new_chunk.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %new_chunk.i, align 8
  %shr.i18 = lshr i64 %14, 56
  %add = add i64 %shr.i18, %12
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %chunk)
  %cmp6.not = icmp ult i64 %add, %chunk
  br i1 %cmp6.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %15 = ptrtoint ptr %pos.020 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pos.020, align 4
  %tobool.not = icmp eq ptr %16, null
  br i1 %tobool.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %pos.0.lcssa = phi ptr [ %10, %entry.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ], [ %pos.020, %land.lhs.true.cleanup_crit_edge ]
  ret ptr %pos.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @remap_exception(ptr nocapture noundef readonly %s, ptr nocapture noundef readonly %e, ptr noundef %bio, i64 noundef %chunk) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %cow = getelementptr inbounds %struct.dm_snapshot, ptr %s, i32 0, i32 2
  %0 = ptrtoint ptr %cow to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cow, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %bi_flags.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 3
  %4 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %bi_flags.i.i, align 4
  %conv1.i.i = and i16 %5, -2049
  store i16 %conv1.i.i, ptr %bi_flags.i.i, align 4
  %bi_bdev.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 1
  %6 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bi_bdev.i, align 4
  %cmp.not.i = icmp eq ptr %7, %3
  br i1 %cmp.not.i, label %entry.bio_set_dev.exit_crit_edge, label %if.then.i

entry.bio_set_dev.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %bio_set_dev.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %conv1.i8.i = and i16 %5, -2177
  %8 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv1.i8.i, ptr %bi_flags.i.i, align 4
  br label %bio_set_dev.exit

bio_set_dev.exit:                                 ; preds = %if.then.i, %entry.bio_set_dev.exit_crit_edge
  %9 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %3, ptr %bi_bdev.i, align 4
  tail call void @bio_associate_blkg(ptr noundef %bio) #16
  %store = getelementptr inbounds %struct.dm_snapshot, ptr %s, i32 0, i32 19
  %10 = ptrtoint ptr %store to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %store, align 4
  %new_chunk = getelementptr inbounds %struct.dm_exception, ptr %e, i32 0, i32 2
  %12 = ptrtoint ptr %new_chunk to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %new_chunk, align 8
  %and.i = and i64 %13, 72057594037927935
  %old_chunk = getelementptr inbounds %struct.dm_exception, ptr %e, i32 0, i32 1
  %14 = ptrtoint ptr %old_chunk to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %old_chunk, align 8
  %sub = sub i64 %chunk, %15
  %add = add i64 %sub, %and.i
  %chunk_shift.i = getelementptr inbounds %struct.dm_exception_store, ptr %11, i32 0, i32 4
  %16 = ptrtoint ptr %chunk_shift.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %chunk_shift.i, align 4
  %sh_prom.i = zext i32 %17 to i64
  %shl.i = shl i64 %add, %sh_prom.i
  %bi_iter = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8
  %18 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %bi_iter, align 8
  %chunk_mask = getelementptr inbounds %struct.dm_exception_store, ptr %11, i32 0, i32 3
  %20 = ptrtoint ptr %chunk_mask to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %chunk_mask, align 4
  %conv = zext i32 %21 to i64
  %and = and i64 %19, %conv
  %add3 = add i64 %and, %shl.i
  store i64 %add3, ptr %bi_iter, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @zero_exception(ptr noundef %s, ptr noundef %bio) unnamed_addr #3 align 64 {
entry:
  %dest = alloca %struct.dm_io_region, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %dest) #16
  %0 = ptrtoint ptr %dest to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %dest, align 8
  %cow = getelementptr inbounds %struct.dm_snapshot, ptr %s, i32 0, i32 2
  %1 = ptrtoint ptr %cow to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cow, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  store ptr %4, ptr %dest, align 8
  %bi_iter = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8
  %5 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %bi_iter, align 8
  %sector = getelementptr inbounds %struct.dm_io_region, ptr %dest, i32 0, i32 1
  %7 = ptrtoint ptr %sector to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %sector, align 8
  %store = getelementptr inbounds %struct.dm_snapshot, ptr %s, i32 0, i32 19
  %8 = ptrtoint ptr %store to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %store, align 4
  %chunk_size = getelementptr inbounds %struct.dm_exception_store, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %chunk_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %chunk_size, align 4
  %conv = zext i32 %11 to i64
  %count = getelementptr inbounds %struct.dm_io_region, ptr %dest, i32 0, i32 2
  %12 = ptrtoint ptr %count to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %conv, ptr %count, align 8
  %in_progress_wait.i = getelementptr inbounds %struct.dm_snapshot, ptr %s, i32 0, i32 21
  tail call void @_raw_spin_lock(ptr noundef %in_progress_wait.i) #16
  %in_progress.i = getelementptr inbounds %struct.dm_snapshot, ptr %s, i32 0, i32 20
  %13 = ptrtoint ptr %in_progress.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %in_progress.i, align 8
  %inc.i = add i32 %14, 1
  store i32 %inc.i, ptr %in_progress.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %in_progress_wait.i) #16
  %bi_private = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 11
  %15 = ptrtoint ptr %bi_private to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bi_private, align 4
  %tobool.not = icmp eq ptr %16, null
  br i1 %tobool.not, label %entry.if.end30_crit_edge, label %land.rhs

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end30

land.rhs:                                         ; preds = %entry
  %.b1 = load i1, ptr @zero_exception.__already_done, align 1
  br i1 %.b1, label %land.rhs.if.end30_crit_edge, label %if.then, !prof !292

land.rhs.if.end30_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end30

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @zero_exception.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 1956, i32 noundef 9, ptr noundef null) #16
  br label %if.end30

if.end30:                                         ; preds = %if.then, %land.rhs.if.end30_crit_edge, %entry.if.end30_crit_edge
  %17 = ptrtoint ptr %bi_private to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %s, ptr %bi_private, align 4
  %kcopyd_client = getelementptr inbounds %struct.dm_snapshot, ptr %s, i32 0, i32 22
  %18 = ptrtoint ptr %kcopyd_client to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %kcopyd_client, align 8
  call void @dm_kcopyd_zero(ptr noundef %19, i32 noundef 1, ptr noundef nonnull %dest, i32 noundef 0, ptr noundef nonnull @zero_callback, ptr noundef %bio) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %dest) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_endio(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @alloc_pending_exception(ptr noundef %s) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %pending_pool = getelementptr inbounds %struct.dm_snapshot, ptr %s, i32 0, i32 13
  %call = tail call noalias ptr @mempool_alloc(ptr noundef %pending_pool, i32 noundef 3072) #16
  %pending_exceptions_count = getelementptr inbounds %struct.dm_snapshot, ptr %s, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pending_exceptions_count, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %pending_exceptions_count, i32 1, i32 3, i32 1) #16
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pending_exceptions_count, ptr %pending_exceptions_count, i32 1, ptr elementtype(i32) %pending_exceptions_count) #16, !srcloc !311
  %snap = getelementptr inbounds %struct.dm_snap_pending_exception, ptr %call, i32 0, i32 3
  %1 = ptrtoint ptr %snap to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %s, ptr %snap, align 8
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @free_pending_exception(ptr noundef %pe) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %snap = getelementptr inbounds %struct.dm_snap_pending_exception, ptr %pe, i32 0, i32 3
  %0 = ptrtoint ptr %snap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %snap, align 8
  %pending_pool = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 13
  tail call void @mempool_free(ptr noundef %pe, ptr noundef %pending_pool) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !312
  %pending_exceptions_count = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pending_exceptions_count, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %pending_exceptions_count, i32 1, i32 3, i32 1) #16
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pending_exceptions_count, ptr %pending_exceptions_count, i32 1, ptr elementtype(i32) %pending_exceptions_count) #16, !srcloc !313
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__find_pending_exception(ptr noundef %s, ptr noundef %pe, i64 noundef %chunk) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %pending.i = getelementptr inbounds %struct.dm_snapshot, ptr %s, i32 0, i32 14
  %table.i.i = getelementptr inbounds %struct.dm_snapshot, ptr %s, i32 0, i32 14, i32 2
  %0 = ptrtoint ptr %table.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %table.i.i, align 4
  %hash_shift.i.i.i = getelementptr inbounds %struct.dm_snapshot, ptr %s, i32 0, i32 14, i32 1
  %2 = ptrtoint ptr %hash_shift.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hash_shift.i.i.i, align 4
  %sh_prom.i.i.i = zext i32 %3 to i64
  %shr.i.i.i = lshr i64 %chunk, %sh_prom.i.i.i
  %4 = ptrtoint ptr %pending.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pending.i, align 4
  %6 = trunc i64 %shr.i.i.i to i32
  %conv1.i.i.i = and i32 %5, %6
  %arrayidx.i.i = getelementptr %struct.hlist_bl_head, ptr %1, i32 %conv1.i.i.i
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i.i, align 4
  %9 = ptrtoint ptr %8 to i32
  %and.i.i.i = and i32 %9, -2
  %10 = inttoptr i32 %and.i.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not19.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not19.i.i, label %entry.__lookup_pending_exception.exit_crit_edge, label %entry.for.body.i.i_crit_edge

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

entry.__lookup_pending_exception.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %__lookup_pending_exception.exit

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %pos.020.i.i = phi ptr [ %16, %for.inc.i.i.for.body.i.i_crit_edge ], [ %10, %entry.for.body.i.i_crit_edge ]
  %old_chunk.i.i = getelementptr inbounds %struct.dm_exception, ptr %pos.020.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %old_chunk.i.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %old_chunk.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %12, i64 %chunk)
  %cmp.not.i.i = icmp ugt i64 %12, %chunk
  br i1 %cmp.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %land.lhs.true.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %new_chunk.i.i.i = getelementptr inbounds %struct.dm_exception, ptr %pos.020.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %new_chunk.i.i.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %new_chunk.i.i.i, align 8
  %shr.i18.i.i = lshr i64 %14, 56
  %add.i.i = add i64 %shr.i18.i.i, %12
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i, i64 %chunk)
  %cmp6.not.i.i = icmp ult i64 %add.i.i, %chunk
  br i1 %cmp6.not.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge, label %land.lhs.true.i.i.__lookup_pending_exception.exit_crit_edge

land.lhs.true.i.i.__lookup_pending_exception.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__lookup_pending_exception.exit

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %15 = ptrtoint ptr %pos.020.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pos.020.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %16, null
  br i1 %tobool.not.i.i, label %for.inc.i.i.if.end_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i

for.inc.i.i.if.end_crit_edge:                     ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

__lookup_pending_exception.exit:                  ; preds = %land.lhs.true.i.i.__lookup_pending_exception.exit_crit_edge, %entry.__lookup_pending_exception.exit_crit_edge
  %pos.0.lcssa.i.i = phi ptr [ %10, %entry.__lookup_pending_exception.exit_crit_edge ], [ %pos.020.i.i, %land.lhs.true.i.i.__lookup_pending_exception.exit_crit_edge ]
  %tobool.not = icmp eq ptr %pos.0.lcssa.i.i, null
  br i1 %tobool.not, label %__lookup_pending_exception.exit.if.end_crit_edge, label %if.then

__lookup_pending_exception.exit.if.end_crit_edge: ; preds = %__lookup_pending_exception.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %__lookup_pending_exception.exit
  call void @__sanitizer_cov_trace_pc() #18
  %snap.i = getelementptr inbounds %struct.dm_snap_pending_exception, ptr %pe, i32 0, i32 3
  %17 = ptrtoint ptr %snap.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %snap.i, align 8
  %pending_pool.i = getelementptr inbounds %struct.dm_snapshot, ptr %18, i32 0, i32 13
  tail call void @mempool_free(ptr noundef %pe, ptr noundef %pending_pool.i) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !312
  %pending_exceptions_count.i = getelementptr inbounds %struct.dm_snapshot, ptr %18, i32 0, i32 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pending_exceptions_count.i, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %pending_exceptions_count.i, i32 1, i32 3, i32 1) #16
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pending_exceptions_count.i, ptr %pending_exceptions_count.i, i32 1, ptr elementtype(i32) %pending_exceptions_count.i) #16, !srcloc !313
  br label %cleanup

if.end:                                           ; preds = %__lookup_pending_exception.exit.if.end_crit_edge, %for.inc.i.i.if.end_crit_edge
  %call1 = tail call fastcc ptr @__insert_pending_exception(ptr noundef %s, ptr noundef %pe, i64 noundef %chunk)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi ptr [ %pos.0.lcssa.i.i, %if.then ], [ %call1, %if.end ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__invalidate_snapshot(ptr nocapture noundef %s, i32 noundef %err) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %valid = getelementptr inbounds %struct.dm_snapshot, ptr %s, i32 0, i32 5
  %0 = ptrtoint ptr %valid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %valid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end:                                           ; preds = %entry
  %2 = zext i32 %err to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.120)
  switch i32 %err, label %if.end.if.end9_crit_edge [
    i32 -5, label %if.end.if.end9.sink.split_crit_edge
    i32 -12, label %do.end5
  ]

if.end.if.end9.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9.sink.split

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9.sink.split

if.end9.sink.split:                               ; preds = %do.end5, %if.end.if.end9.sink.split_crit_edge
  %.str.41.sink = phi ptr [ @.str.41, %do.end5 ], [ @.str.38, %if.end.if.end9.sink.split_crit_edge ]
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.41.sink) #19
  br label %if.end9

if.end9:                                          ; preds = %if.end9.sink.split, %if.end.if.end9_crit_edge
  %store = getelementptr inbounds %struct.dm_snapshot, ptr %s, i32 0, i32 19
  %3 = ptrtoint ptr %store to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %store, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %drop_snapshot = getelementptr inbounds %struct.dm_exception_store_type, ptr %6, i32 0, i32 9
  %7 = ptrtoint ptr %drop_snapshot to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %drop_snapshot, align 4
  %tobool10.not = icmp eq ptr %8, null
  br i1 %tobool10.not, label %if.end9.if.end16_crit_edge, label %if.then11

if.end9.if.end16_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  tail call void %8(ptr noundef %4) #16
  br label %if.end16

if.end16:                                         ; preds = %if.then11, %if.end9.if.end16_crit_edge
  %9 = ptrtoint ptr %valid to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %valid, align 4
  %ti = getelementptr inbounds %struct.dm_snapshot, ptr %s, i32 0, i32 3
  %10 = ptrtoint ptr %ti to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ti, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  tail call void @dm_table_event(ptr noundef %13) #16
  br label %return

return:                                           ; preds = %if.end16, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @start_full_bio(ptr noundef %pe, ptr noundef %bio) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %snap = getelementptr inbounds %struct.dm_snap_pending_exception, ptr %pe, i32 0, i32 3
  %0 = ptrtoint ptr %snap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %snap, align 8
  %full_bio = getelementptr inbounds %struct.dm_snap_pending_exception, ptr %pe, i32 0, i32 8
  %2 = ptrtoint ptr %full_bio to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %bio, ptr %full_bio, align 4
  %bi_end_io = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 10
  %3 = ptrtoint ptr %bi_end_io to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bi_end_io, align 8
  %full_bio_end_io = getelementptr inbounds %struct.dm_snap_pending_exception, ptr %pe, i32 0, i32 9
  %5 = ptrtoint ptr %full_bio_end_io to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %full_bio_end_io, align 8
  %in_progress_wait.i = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 21
  tail call void @_raw_spin_lock(ptr noundef %in_progress_wait.i) #16
  %in_progress.i = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 20
  %6 = ptrtoint ptr %in_progress.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %in_progress.i, align 8
  %inc.i = add i32 %7, 1
  store i32 %inc.i, ptr %in_progress.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %in_progress_wait.i) #16
  %kcopyd_client = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 22
  %8 = ptrtoint ptr %kcopyd_client to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %kcopyd_client, align 8
  %call = tail call ptr @dm_kcopyd_prepare_callback(ptr noundef %9, ptr noundef nonnull @copy_callback, ptr noundef %pe) #16
  %10 = ptrtoint ptr %bi_end_io to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @full_bio_end_io, ptr %bi_end_io, align 8
  %bi_private = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 11
  %11 = ptrtoint ptr %bi_private to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call, ptr %bi_private, align 4
  tail call void @submit_bio_noacct(ptr noundef %bio) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @start_copy(ptr noundef %pe) unnamed_addr #3 align 64 {
entry:
  %src = alloca %struct.dm_io_region, align 8
  %dest = alloca %struct.dm_io_region, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %snap = getelementptr inbounds %struct.dm_snap_pending_exception, ptr %pe, i32 0, i32 3
  %0 = ptrtoint ptr %snap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %snap, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %src) #16
  %2 = ptrtoint ptr %src to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %src, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %dest) #16
  %3 = ptrtoint ptr %dest to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %dest, align 8
  %origin = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %origin to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %origin, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %bd_nr_sectors.i.i = getelementptr inbounds %struct.block_device, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %bd_nr_sectors.i.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %bd_nr_sectors.i.i, align 8
  %10 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %src, align 8
  %store = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 19
  %11 = ptrtoint ptr %store to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %store, align 4
  %old_chunk = getelementptr inbounds %struct.dm_exception, ptr %pe, i32 0, i32 1
  %13 = ptrtoint ptr %old_chunk to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %old_chunk, align 8
  %chunk_shift.i = getelementptr inbounds %struct.dm_exception_store, ptr %12, i32 0, i32 4
  %15 = ptrtoint ptr %chunk_shift.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %chunk_shift.i, align 4
  %sh_prom.i = zext i32 %16 to i64
  %shl.i = shl i64 %14, %sh_prom.i
  %sector = getelementptr inbounds %struct.dm_io_region, ptr %src, i32 0, i32 1
  %17 = ptrtoint ptr %sector to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %shl.i, ptr %sector, align 8
  %chunk_size = getelementptr inbounds %struct.dm_exception_store, ptr %12, i32 0, i32 2
  %18 = ptrtoint ptr %chunk_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %chunk_size, align 4
  %conv = zext i32 %19 to i64
  %sub = sub i64 %9, %shl.i
  %20 = tail call i64 @llvm.umin.i64(i64 %sub, i64 %conv)
  %count = getelementptr inbounds %struct.dm_io_region, ptr %src, i32 0, i32 2
  %21 = ptrtoint ptr %count to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %count, align 8
  %cow = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %cow to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cow, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %26 = ptrtoint ptr %dest to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %dest, align 8
  %new_chunk = getelementptr inbounds %struct.dm_exception, ptr %pe, i32 0, i32 2
  %27 = ptrtoint ptr %new_chunk to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %new_chunk, align 8
  %29 = ptrtoint ptr %chunk_shift.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %chunk_shift.i, align 4
  %sh_prom.i28 = zext i32 %30 to i64
  %shl.i29 = shl i64 %28, %sh_prom.i28
  %sector12 = getelementptr inbounds %struct.dm_io_region, ptr %dest, i32 0, i32 1
  %31 = ptrtoint ptr %sector12 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %shl.i29, ptr %sector12, align 8
  %count14 = getelementptr inbounds %struct.dm_io_region, ptr %dest, i32 0, i32 2
  %32 = ptrtoint ptr %count14 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %20, ptr %count14, align 8
  %in_progress_wait.i = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 21
  tail call void @_raw_spin_lock(ptr noundef %in_progress_wait.i) #16
  %in_progress.i = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 20
  %33 = ptrtoint ptr %in_progress.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %in_progress.i, align 8
  %inc.i = add i32 %34, 1
  store i32 %inc.i, ptr %in_progress.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %in_progress_wait.i) #16
  %kcopyd_client = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 22
  %35 = ptrtoint ptr %kcopyd_client to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %kcopyd_client, align 8
  call void @dm_kcopyd_copy(ptr noundef %36, ptr noundef nonnull %src, i32 noundef 1, ptr noundef nonnull %dest, i32 noundef 0, ptr noundef nonnull @copy_callback, ptr noundef %pe) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %dest) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %src) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_per_bio_data(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_associate_blkg(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__add_wait_queue(ptr noundef %wq_head, ptr noundef %wq_entry) unnamed_addr #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %head1 = getelementptr inbounds %struct.wait_queue_head, ptr %wq_head, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %head.0 = phi ptr [ %head1, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %head.0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %head.0, align 4
  %cmp.not = icmp eq ptr %.pn, %head1
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body:                                         ; preds = %for.cond
  %wq.0 = getelementptr i8, ptr %.pn, i32 -12
  %1 = ptrtoint ptr %wq.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %wq.0, align 4
  %and = and i32 %2, 32
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %.pn.lcssa = phi ptr [ %.pn, %for.body.for.end_crit_edge ], [ %head1, %for.cond.for.end_crit_edge ]
  %entry11 = getelementptr inbounds %struct.wait_queue_entry, ptr %wq_entry, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %entry11, ptr noundef %head.0, ptr noundef %.pn.lcssa) #16
  br i1 %call.i.i, label %if.end.i.i, label %for.end.list_add.exit_crit_edge

for.end.list_add.exit_crit_edge:                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_add.exit

if.end.i.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.lcssa, i32 0, i32 1
  %3 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %entry11, ptr %prev1.i.i, align 4
  %4 = ptrtoint ptr %entry11 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %.pn.lcssa, ptr %entry11, align 4
  %prev3.i.i = getelementptr inbounds %struct.wait_queue_entry, ptr %wq_entry, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %head.0, ptr %prev3.i.i, align 4
  %6 = ptrtoint ptr %head.0 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %entry11, ptr %head.0, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %for.end.list_add.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @io_schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_kcopyd_zero(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @zero_callback(i32 noundef %read_err, i32 noundef %write_err, ptr noundef %context) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_private = getelementptr inbounds %struct.bio, ptr %context, i32 0, i32 11
  %0 = ptrtoint ptr %bi_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_private, align 4
  %in_progress_wait.i = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 21
  tail call void @_raw_spin_lock(ptr noundef %in_progress_wait.i) #16
  %in_progress.i = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %in_progress.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %in_progress.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %do.body4.i, label %do.end7.i, !prof !294

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-snap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1552, 0\0A.popsection", ""() #16, !srcloc !314
  unreachable

do.end7.i:                                        ; preds = %entry
  %dec.i = add i32 %3, -1
  %4 = ptrtoint ptr %in_progress.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %dec.i, ptr %in_progress.i, align 8
  %5 = load i32, ptr @cow_threshold, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %dec.i, i32 %5)
  %cmp.not.i = icmp ugt i32 %dec.i, %5
  br i1 %cmp.not.i, label %do.end7.i.account_end_copy.exit_crit_edge, label %land.lhs.true.i, !prof !294

do.end7.i.account_end_copy.exit_crit_edge:        ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %account_end_copy.exit

land.lhs.true.i:                                  ; preds = %do.end7.i
  %head.i.i = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 21, i32 1
  %6 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %head.i.i, align 4
  %cmp.i.i.not.i = icmp eq ptr %7, %head.i.i
  br i1 %cmp.i.i.not.i, label %land.lhs.true.i.account_end_copy.exit_crit_edge, label %if.then24.i, !prof !292

land.lhs.true.i.account_end_copy.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %account_end_copy.exit

if.then24.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__wake_up_locked(ptr noundef %in_progress_wait.i, i32 noundef 3, i32 noundef 1) #16
  br label %account_end_copy.exit

account_end_copy.exit:                            ; preds = %if.then24.i, %land.lhs.true.i.account_end_copy.exit_crit_edge, %do.end7.i.account_end_copy.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %in_progress_wait.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write_err)
  %tobool.not = icmp eq i32 %write_err, 0
  %conv = select i1 %tobool.not, i8 0, i8 10
  %bi_status = getelementptr inbounds %struct.bio, ptr %context, i32 0, i32 6
  %8 = ptrtoint ptr %bi_status to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %bi_status, align 2
  tail call void @bio_endio(ptr noundef %context) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up_locked(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @mempool_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__insert_pending_exception(ptr noundef %s, ptr noundef %pe, i64 noundef %chunk) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %old_chunk = getelementptr inbounds %struct.dm_exception, ptr %pe, i32 0, i32 1
  %0 = ptrtoint ptr %old_chunk to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %chunk, ptr %old_chunk, align 8
  %origin_bios = getelementptr inbounds %struct.dm_snap_pending_exception, ptr %pe, i32 0, i32 1
  %started = getelementptr inbounds %struct.dm_snap_pending_exception, ptr %pe, i32 0, i32 4
  %1 = ptrtoint ptr %started to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %started, align 4
  %full_bio = getelementptr inbounds %struct.dm_snap_pending_exception, ptr %pe, i32 0, i32 8
  %2 = ptrtoint ptr %full_bio to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %full_bio, align 4
  %pe_allocation_lock = getelementptr inbounds %struct.dm_snapshot, ptr %s, i32 0, i32 9
  %3 = call ptr @memset(ptr %origin_bios, i32 0, i32 16)
  tail call void @_raw_spin_lock(ptr noundef %pe_allocation_lock) #16
  %store = getelementptr inbounds %struct.dm_snapshot, ptr %s, i32 0, i32 19
  %4 = ptrtoint ptr %store to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %store, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %prepare_exception = getelementptr inbounds %struct.dm_exception_store_type, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %prepare_exception to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prepare_exception, align 4
  %call = tail call i32 %9(ptr noundef %5, ptr noundef %pe) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_raw_spin_unlock(ptr noundef %pe_allocation_lock) #16
  %snap.i = getelementptr inbounds %struct.dm_snap_pending_exception, ptr %pe, i32 0, i32 3
  %10 = ptrtoint ptr %snap.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %snap.i, align 8
  %pending_pool.i = getelementptr inbounds %struct.dm_snapshot, ptr %11, i32 0, i32 13
  tail call void @mempool_free(ptr noundef %pe, ptr noundef %pending_pool.i) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !312
  %pending_exceptions_count.i = getelementptr inbounds %struct.dm_snapshot, ptr %11, i32 0, i32 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pending_exceptions_count.i, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %pending_exceptions_count.i, i32 1, i32 3, i32 1) #16
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pending_exceptions_count.i, ptr %pending_exceptions_count.i, i32 1, ptr elementtype(i32) %pending_exceptions_count.i) #16, !srcloc !313
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %exception_start_sequence = getelementptr inbounds %struct.dm_snapshot, ptr %s, i32 0, i32 10
  %13 = ptrtoint ptr %exception_start_sequence to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %exception_start_sequence, align 8
  %inc = add i64 %14, 1
  store i64 %inc, ptr %exception_start_sequence, align 8
  %exception_sequence = getelementptr inbounds %struct.dm_snap_pending_exception, ptr %pe, i32 0, i32 6
  %15 = ptrtoint ptr %exception_sequence to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %exception_sequence, align 8
  tail call void @_raw_spin_unlock(ptr noundef %pe_allocation_lock) #16
  %pending = getelementptr inbounds %struct.dm_snapshot, ptr %s, i32 0, i32 14
  tail call fastcc void @dm_insert_exception(ptr noundef %pending, ptr noundef %pe)
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi ptr [ null, %if.then ], [ %pe, %if.end ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_table_event(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_kcopyd_prepare_callback(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @copy_callback(i32 noundef %read_err, i32 noundef %write_err, ptr noundef %context) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %snap = getelementptr inbounds %struct.dm_snap_pending_exception, ptr %context, i32 0, i32 3
  %0 = ptrtoint ptr %snap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %snap, align 8
  %2 = or i32 %write_err, %read_err
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %3 = icmp ne i32 %2, 0
  %4 = zext i1 %3 to i32
  %copy_error = getelementptr inbounds %struct.dm_snap_pending_exception, ptr %context, i32 0, i32 5
  %5 = ptrtoint ptr %copy_error to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %copy_error, align 8
  %exception_sequence = getelementptr inbounds %struct.dm_snap_pending_exception, ptr %context, i32 0, i32 6
  %6 = ptrtoint ptr %exception_sequence to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %exception_sequence, align 8
  %exception_complete_sequence = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 11
  %8 = ptrtoint ptr %exception_complete_sequence to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %exception_complete_sequence, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %9)
  %cmp = icmp eq i64 %7, %9
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %inc = add i64 %7, 1
  %10 = ptrtoint ptr %exception_complete_sequence to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %inc, ptr %exception_complete_sequence, align 8
  %11 = ptrtoint ptr %snap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %snap, align 8
  %store.i = getelementptr inbounds %struct.dm_snapshot, ptr %12, i32 0, i32 19
  %13 = ptrtoint ptr %store.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %store.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %commit_exception.i = getelementptr inbounds %struct.dm_exception_store_type, ptr %16, i32 0, i32 6
  %17 = ptrtoint ptr %commit_exception.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %commit_exception.i, align 4
  %19 = ptrtoint ptr %copy_error to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %copy_error, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i = icmp eq i32 %20, 0
  %lnot.ext.i = zext i1 %tobool.not.i to i32
  tail call void %18(ptr noundef %14, ptr noundef %context, i32 noundef %lnot.ext.i, ptr noundef nonnull @pending_complete, ptr noundef %context) #16
  %out_of_order_tree = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 12
  %call = tail call ptr @rb_first(ptr noundef %out_of_order_tree) #16
  %tobool3.not85 = icmp eq ptr %call, null
  br i1 %tobool3.not85, label %if.then.if.end44_crit_edge, label %if.then.while.body_crit_edge

if.then.while.body_crit_edge:                     ; preds = %if.then
  br label %while.body

if.then.if.end44_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end44

while.body:                                       ; preds = %if.end.while.body_crit_edge, %if.then.while.body_crit_edge
  %next.086 = phi ptr [ %call8, %if.end.while.body_crit_edge ], [ %call, %if.then.while.body_crit_edge ]
  %exception_sequence4 = getelementptr i8, ptr %next.086, i32 -8
  %21 = ptrtoint ptr %exception_sequence4 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %exception_sequence4, align 8
  %23 = ptrtoint ptr %exception_complete_sequence to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %exception_complete_sequence, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %22, i64 %24)
  %cmp6.not = icmp eq i64 %22, %24
  br i1 %cmp6.not, label %if.end, label %while.body.if.end44_crit_edge

while.body.if.end44_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end44

if.end:                                           ; preds = %while.body
  %add.ptr = getelementptr i8, ptr %next.086, i32 -64
  %call8 = tail call ptr @rb_next(ptr noundef nonnull %next.086) #16
  %25 = ptrtoint ptr %exception_complete_sequence to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %exception_complete_sequence, align 8
  %inc10 = add i64 %26, 1
  store i64 %inc10, ptr %exception_complete_sequence, align 8
  tail call void @rb_erase(ptr noundef nonnull %next.086, ptr noundef %out_of_order_tree) #16
  %snap.i74 = getelementptr i8, ptr %next.086, i32 -24
  %27 = ptrtoint ptr %snap.i74 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %snap.i74, align 8
  %store.i75 = getelementptr inbounds %struct.dm_snapshot, ptr %28, i32 0, i32 19
  %29 = ptrtoint ptr %store.i75 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %store.i75, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %commit_exception.i76 = getelementptr inbounds %struct.dm_exception_store_type, ptr %32, i32 0, i32 6
  %33 = ptrtoint ptr %commit_exception.i76 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %commit_exception.i76, align 4
  %copy_error.i77 = getelementptr i8, ptr %next.086, i32 -16
  %35 = ptrtoint ptr %copy_error.i77 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %copy_error.i77, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i78 = icmp eq i32 %36, 0
  %lnot.ext.i79 = zext i1 %tobool.not.i78 to i32
  tail call void %34(ptr noundef %30, ptr noundef %add.ptr, i32 noundef %lnot.ext.i79, ptr noundef nonnull @pending_complete, ptr noundef %add.ptr) #16
  tail call void @__might_resched(ptr noundef nonnull @.str.23, i32 noundef 1786, i32 noundef 0) #16
  %call.i = tail call i32 @__cond_resched() #16
  %tobool3.not = icmp eq ptr %call8, null
  br i1 %tobool3.not, label %if.end.if.end44_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body

if.end.if.end44_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end44

if.else:                                          ; preds = %entry
  %out_of_order_tree14 = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 12
  %37 = ptrtoint ptr %out_of_order_tree14 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %out_of_order_tree14, align 4
  %tobool16.not83 = icmp eq ptr %38, null
  br i1 %tobool16.not83, label %if.else.while.end40_crit_edge, label %if.else.while.body17_crit_edge

if.else.while.body17_crit_edge:                   ; preds = %if.else
  br label %while.body17

if.else.while.end40_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end40

while.body17:                                     ; preds = %do.end33.while.body17_crit_edge, %if.else.while.body17_crit_edge
  %39 = phi ptr [ %43, %do.end33.while.body17_crit_edge ], [ %38, %if.else.while.body17_crit_edge ]
  %exception_sequence22 = getelementptr i8, ptr %39, i32 -8
  %40 = ptrtoint ptr %exception_sequence22 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %exception_sequence22, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %41)
  %cmp23 = icmp eq i64 %7, %41
  br i1 %cmp23, label %do.body27, label %do.end33, !prof !294

do.body27:                                        ; preds = %while.body17
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-snap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1797, 0\0A.popsection", ""() #16, !srcloc !315
  unreachable

do.end33:                                         ; preds = %while.body17
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %41)
  %cmp36 = icmp ult i64 %7, %41
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %39, i32 0, i32 2
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %39, i32 0, i32 1
  %p.1 = select i1 %cmp36, ptr %rb_left, ptr %rb_right
  %42 = ptrtoint ptr %p.1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %p.1, align 4
  %tobool16.not = icmp eq ptr %43, null
  br i1 %tobool16.not, label %while.cond15.while.end40_crit_edge, label %do.end33.while.body17_crit_edge

do.end33.while.body17_crit_edge:                  ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body17

while.cond15.while.end40_crit_edge:               ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #18
  %phi.cast.le = ptrtoint ptr %39 to i32
  br label %while.end40

while.end40:                                      ; preds = %while.cond15.while.end40_crit_edge, %if.else.while.end40_crit_edge
  %parent.0.lcssa = phi i32 [ %phi.cast.le, %while.cond15.while.end40_crit_edge ], [ 0, %if.else.while.end40_crit_edge ]
  %p.0.lcssa = phi ptr [ %p.1, %while.cond15.while.end40_crit_edge ], [ %out_of_order_tree14, %if.else.while.end40_crit_edge ]
  %out_of_order_node41 = getelementptr inbounds %struct.dm_snap_pending_exception, ptr %context, i32 0, i32 7
  %44 = ptrtoint ptr %out_of_order_node41 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %parent.0.lcssa, ptr %out_of_order_node41, align 4
  %rb_right.i = getelementptr inbounds %struct.dm_snap_pending_exception, ptr %context, i32 0, i32 7, i32 1
  %45 = ptrtoint ptr %rb_right.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %rb_right.i, align 4
  %rb_left.i = getelementptr inbounds %struct.dm_snap_pending_exception, ptr %context, i32 0, i32 7, i32 2
  %46 = ptrtoint ptr %rb_left.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %rb_left.i, align 4
  %47 = ptrtoint ptr %p.0.lcssa to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %out_of_order_node41, ptr %p.0.lcssa, align 4
  tail call void @rb_insert_color(ptr noundef %out_of_order_node41, ptr noundef %out_of_order_tree14) #16
  br label %if.end44

if.end44:                                         ; preds = %while.end40, %if.end.if.end44_crit_edge, %while.body.if.end44_crit_edge, %if.then.if.end44_crit_edge
  %in_progress_wait.i = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 21
  tail call void @_raw_spin_lock(ptr noundef %in_progress_wait.i) #16
  %in_progress.i = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 20
  %48 = ptrtoint ptr %in_progress.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %in_progress.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not.i80 = icmp eq i32 %49, 0
  br i1 %tobool.not.i80, label %do.body4.i, label %do.end7.i, !prof !294

do.body4.i:                                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-snap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1552, 0\0A.popsection", ""() #16, !srcloc !314
  unreachable

do.end7.i:                                        ; preds = %if.end44
  %dec.i = add i32 %49, -1
  %50 = ptrtoint ptr %in_progress.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %dec.i, ptr %in_progress.i, align 8
  %51 = load i32, ptr @cow_threshold, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %dec.i, i32 %51)
  %cmp.not.i = icmp ugt i32 %dec.i, %51
  br i1 %cmp.not.i, label %do.end7.i.account_end_copy.exit_crit_edge, label %land.lhs.true.i, !prof !294

do.end7.i.account_end_copy.exit_crit_edge:        ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %account_end_copy.exit

land.lhs.true.i:                                  ; preds = %do.end7.i
  %head.i.i = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 21, i32 1
  %52 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile ptr, ptr %head.i.i, align 4
  %cmp.i.i.not.i = icmp eq ptr %53, %head.i.i
  br i1 %cmp.i.i.not.i, label %land.lhs.true.i.account_end_copy.exit_crit_edge, label %if.then24.i, !prof !292

land.lhs.true.i.account_end_copy.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %account_end_copy.exit

if.then24.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__wake_up_locked(ptr noundef %in_progress_wait.i, i32 noundef 3, i32 noundef 1) #16
  br label %account_end_copy.exit

account_end_copy.exit:                            ; preds = %if.then24.i, %land.lhs.true.i.account_end_copy.exit_crit_edge, %do.end7.i.account_end_copy.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %in_progress_wait.i) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @full_bio_end_io(ptr nocapture noundef readonly %bio) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_private = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 11
  %0 = ptrtoint ptr %bi_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_private, align 4
  %bi_status = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 6
  %2 = ptrtoint ptr %bi_status to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bi_status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp ne i8 %3, 0
  %cond = zext i1 %tobool.not to i32
  tail call void @dm_kcopyd_do_callback(ptr noundef %1, i32 noundef 0, i32 noundef %cond) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @submit_bio_noacct(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pending_complete(ptr noundef %context, i32 noundef %success) #3 align 64 {
entry:
  %lock = alloca %struct.dm_exception_table_lock, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %snap = getelementptr inbounds %struct.dm_snap_pending_exception, ptr %context, i32 0, i32 3
  %0 = ptrtoint ptr %snap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %snap, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %lock) #16
  %2 = getelementptr inbounds %struct.dm_exception_table_lock, ptr %lock, i32 0, i32 1
  %old_chunk = getelementptr inbounds %struct.dm_exception, ptr %context, i32 0, i32 1
  %3 = ptrtoint ptr %old_chunk to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %old_chunk, align 8
  %complete1.i = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 15
  %pending2.i = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 14
  %table.i = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 15, i32 2
  %5 = ptrtoint ptr %table.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %table.i, align 4
  %hash_shift.i.i = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 15, i32 1
  %7 = ptrtoint ptr %hash_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hash_shift.i.i, align 4
  %sh_prom.i.i = zext i32 %8 to i64
  %shr.i.i = lshr i64 %4, %sh_prom.i.i
  %9 = ptrtoint ptr %complete1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %complete1.i, align 4
  %11 = trunc i64 %shr.i.i to i32
  %conv1.i.i = and i32 %10, %11
  %arrayidx.i = getelementptr %struct.hlist_bl_head, ptr %6, i32 %conv1.i.i
  %12 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %arrayidx.i, ptr %lock, align 4
  %table3.i = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 14, i32 2
  %13 = ptrtoint ptr %table3.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %table3.i, align 4
  %hash_shift.i11.i = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 14, i32 1
  %15 = ptrtoint ptr %hash_shift.i11.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %hash_shift.i11.i, align 4
  %sh_prom.i12.i = zext i32 %16 to i64
  %shr.i13.i = lshr i64 %4, %sh_prom.i12.i
  %17 = ptrtoint ptr %pending2.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pending2.i, align 4
  %19 = trunc i64 %shr.i13.i to i32
  %conv1.i14.i = and i32 %18, %19
  %arrayidx5.i = getelementptr %struct.hlist_bl_head, ptr %14, i32 %conv1.i14.i
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %arrayidx5.i, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %success)
  %tobool.not = icmp eq i32 %success, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @down_write(ptr noundef %1) #16
  %valid.i.i = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 5
  %21 = ptrtoint ptr %valid.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %valid.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i.i, label %if.then.invalidate_snapshot.exit_crit_edge, label %if.end.i.i

if.then.invalidate_snapshot.exit_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %invalidate_snapshot.exit

if.end.i.i:                                       ; preds = %if.then
  %call7.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38) #19
  %store.i.i = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 19
  %23 = ptrtoint ptr %store.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %store.i.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %drop_snapshot.i.i = getelementptr inbounds %struct.dm_exception_store_type, ptr %26, i32 0, i32 9
  %27 = ptrtoint ptr %drop_snapshot.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %drop_snapshot.i.i, align 4
  %tobool10.not.i.i = icmp eq ptr %28, null
  br i1 %tobool10.not.i.i, label %if.end.i.i.if.end16.i.i_crit_edge, label %if.then11.i.i

if.end.i.i.if.end16.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void %28(ptr noundef %24) #16
  br label %if.end16.i.i

if.end16.i.i:                                     ; preds = %if.then11.i.i, %if.end.i.i.if.end16.i.i_crit_edge
  %29 = ptrtoint ptr %valid.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %valid.i.i, align 4
  %ti.i.i = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 3
  %30 = ptrtoint ptr %ti.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ti.i.i, align 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 8
  tail call void @dm_table_event(ptr noundef %33) #16
  br label %invalidate_snapshot.exit

invalidate_snapshot.exit:                         ; preds = %if.end16.i.i, %if.then.invalidate_snapshot.exit_crit_edge
  tail call void @up_write(ptr noundef %1) #16
  call fastcc void @dm_exception_table_lock(ptr noundef nonnull %lock)
  br label %out

if.end:                                           ; preds = %entry
  %34 = load ptr, ptr @exception_cache, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %34, i32 noundef 3072) #16
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %alloc_completed_exception.exit, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4

alloc_completed_exception.exit:                   ; preds = %if.end
  %35 = load ptr, ptr @exception_cache, align 4
  %call1.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %35, i32 noundef 2592) #16
  %tobool2.not = icmp eq ptr %call1.i, null
  br i1 %tobool2.not, label %if.then3, label %alloc_completed_exception.exit.if.end4_crit_edge

alloc_completed_exception.exit.if.end4_crit_edge: ; preds = %alloc_completed_exception.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4

if.then3:                                         ; preds = %alloc_completed_exception.exit
  tail call void @down_write(ptr noundef %1) #16
  %valid.i.i67 = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 5
  %36 = ptrtoint ptr %valid.i.i67 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %valid.i.i67, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i.i68 = icmp eq i32 %37, 0
  br i1 %tobool.not.i.i68, label %if.then3.invalidate_snapshot.exit77_crit_edge, label %if.end.i.i69

if.then3.invalidate_snapshot.exit77_crit_edge:    ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #18
  br label %invalidate_snapshot.exit77

if.end.i.i69:                                     ; preds = %if.then3
  %call7.i.i70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #19
  %store.i.i71 = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 19
  %38 = ptrtoint ptr %store.i.i71 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %store.i.i71, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %drop_snapshot.i.i72 = getelementptr inbounds %struct.dm_exception_store_type, ptr %41, i32 0, i32 9
  %42 = ptrtoint ptr %drop_snapshot.i.i72 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %drop_snapshot.i.i72, align 4
  %tobool10.not.i.i73 = icmp eq ptr %43, null
  br i1 %tobool10.not.i.i73, label %if.end.i.i69.if.end16.i.i76_crit_edge, label %if.then11.i.i74

if.end.i.i69.if.end16.i.i76_crit_edge:            ; preds = %if.end.i.i69
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16.i.i76

if.then11.i.i74:                                  ; preds = %if.end.i.i69
  call void @__sanitizer_cov_trace_pc() #18
  tail call void %43(ptr noundef %39) #16
  br label %if.end16.i.i76

if.end16.i.i76:                                   ; preds = %if.then11.i.i74, %if.end.i.i69.if.end16.i.i76_crit_edge
  %44 = ptrtoint ptr %valid.i.i67 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %valid.i.i67, align 4
  %ti.i.i75 = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 3
  %45 = ptrtoint ptr %ti.i.i75 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ti.i.i75, align 8
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 8
  tail call void @dm_table_event(ptr noundef %48) #16
  br label %invalidate_snapshot.exit77

invalidate_snapshot.exit77:                       ; preds = %if.end16.i.i76, %if.then3.invalidate_snapshot.exit77_crit_edge
  tail call void @up_write(ptr noundef %1) #16
  call fastcc void @dm_exception_table_lock(ptr noundef nonnull %lock)
  br label %out

if.end4:                                          ; preds = %alloc_completed_exception.exit.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %e.0.i113 = phi ptr [ %call1.i, %alloc_completed_exception.exit.if.end4_crit_edge ], [ %call.i, %if.end.if.end4_crit_edge ]
  %49 = call ptr @memcpy(ptr %e.0.i113, ptr %context, i32 24)
  tail call void @down_read(ptr noundef %1) #16
  call fastcc void @dm_exception_table_lock(ptr noundef nonnull %lock)
  %valid = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 5
  %50 = ptrtoint ptr %valid to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %valid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool7.not = icmp eq i32 %51, 0
  br i1 %tobool7.not, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @up_read(ptr noundef %1) #16
  %52 = load ptr, ptr @exception_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %52, ptr noundef nonnull %e.0.i113) #16
  br label %out

if.end10:                                         ; preds = %if.end4
  tail call fastcc void @dm_insert_exception(ptr noundef %complete1.i, ptr noundef nonnull %e.0.i113)
  tail call void @up_read(ptr noundef %1) #16
  %53 = ptrtoint ptr %old_chunk to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %old_chunk, align 8
  %tracked_chunk_lock.i = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 17
  tail call void @_raw_spin_lock_irq(ptr noundef %tracked_chunk_lock.i) #16
  %conv.i = trunc i64 %54 to i32
  %and.i = and i32 %conv.i, 15
  %arrayidx.i78 = getelementptr %struct.dm_snapshot, ptr %1, i32 0, i32 18, i32 %and.i
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end10
  %c.0.in.i = phi ptr [ %arrayidx.i78, %if.end10 ], [ %c.0.i, %for.body.i.for.cond.i_crit_edge ]
  %55 = ptrtoint ptr %c.0.in.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %c.0.i = load ptr, ptr %c.0.in.i, align 4
  %tobool2.not.i = icmp eq ptr %c.0.i, null
  br i1 %tobool2.not.i, label %__chunk_is_tracked.exit.thread, label %for.body.i

__chunk_is_tracked.exit.thread:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_raw_spin_unlock_irq(ptr noundef %tracked_chunk_lock.i) #16
  br label %out

for.body.i:                                       ; preds = %for.cond.i
  %chunk3.i = getelementptr inbounds %struct.dm_snap_tracked_chunk, ptr %c.0.i, i32 0, i32 1
  %56 = ptrtoint ptr %chunk3.i to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %chunk3.i, align 8
  %cmp.i = icmp eq i64 %57, %54
  br i1 %cmp.i, label %if.then16, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i

if.then16:                                        ; preds = %for.body.i
  tail call void @_raw_spin_unlock_irq(ptr noundef %tracked_chunk_lock.i) #16
  %58 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %arrayidx5.i, align 4
  %and1.i.i.i.i = and i32 %59, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %do.body4.i.i.i, label %hlist_bl_unlock.exit.i, !prof !294

do.body4.i.i.i:                                   ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/bit_spinlock.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #16, !srcloc !296
  unreachable

hlist_bl_unlock.exit.i:                           ; preds = %if.then16
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx5.i, i32 noundef 4) #16
  %60 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %arrayidx5.i, align 4
  %and.i.i.i.i.i = and i32 %61, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !297
  %62 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile i32 %and.i.i.i.i.i, ptr %arrayidx5.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !298
  %63 = tail call i32 @llvm.read_register.i32(metadata !280) #16
  %and.i.i.i.i.i.i = and i32 %63, -16384
  %64 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %sub.i.i.i.i = add i32 %66, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  %67 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %arrayidx.i, align 4
  %and1.i.i.i2.i = and i32 %68, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i2.i)
  %tobool.not.i.i3.i = icmp eq i32 %and1.i.i.i2.i, 0
  br i1 %tobool.not.i.i3.i, label %do.body4.i.i4.i, label %dm_exception_table_unlock.exit, !prof !294

do.body4.i.i4.i:                                  ; preds = %hlist_bl_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/bit_spinlock.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #16, !srcloc !296
  unreachable

dm_exception_table_unlock.exit:                   ; preds = %hlist_bl_unlock.exit.i
  %call.i.i.i.i5.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i, i32 noundef 4) #16
  %69 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i.i.i.i6.i = and i32 %70, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !297
  %71 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile i32 %and.i.i.i.i6.i, ptr %arrayidx.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !298
  %72 = tail call i32 @llvm.read_register.i32(metadata !280) #16
  %and.i.i.i.i.i7.i = and i32 %72, -16384
  %73 = inttoptr i32 %and.i.i.i.i.i7.i to ptr
  %preempt_count.i.i.i.i8.i = getelementptr inbounds %struct.thread_info, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %preempt_count.i.i.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %preempt_count.i.i.i.i8.i, align 4
  %sub.i.i.i9.i = add i32 %75, -1
  store volatile i32 %sub.i.i.i9.i, ptr %preempt_count.i.i.i.i8.i, align 4
  %76 = ptrtoint ptr %old_chunk to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %old_chunk, align 8
  %conv.i.i = trunc i64 %77 to i32
  %and.i.i = and i32 %conv.i.i, 15
  %arrayidx.i.i = getelementptr %struct.dm_snapshot, ptr %1, i32 0, i32 18, i32 %and.i.i
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i, %dm_exception_table_unlock.exit
  tail call void @_raw_spin_lock_irq(ptr noundef %tracked_chunk_lock.i) #16
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %while.cond.i
  %c.0.in.i.i = phi ptr [ %arrayidx.i.i, %while.cond.i ], [ %c.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %78 = ptrtoint ptr %c.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %c.0.i.i = load ptr, ptr %c.0.in.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %c.0.i.i, null
  br i1 %tobool2.not.i.i, label %__check_for_conflicting_io.exit, label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %chunk3.i.i = getelementptr inbounds %struct.dm_snap_tracked_chunk, ptr %c.0.i.i, i32 0, i32 1
  %79 = ptrtoint ptr %chunk3.i.i to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %chunk3.i.i, align 8
  %cmp.i.i = icmp eq i64 %80, %77
  br i1 %cmp.i.i, label %while.body.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i.i

while.body.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_raw_spin_unlock_irq(ptr noundef %tracked_chunk_lock.i) #16
  tail call void @msleep(i32 noundef 1) #16
  br label %while.cond.i

__check_for_conflicting_io.exit:                  ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_raw_spin_unlock_irq(ptr noundef %tracked_chunk_lock.i) #16
  call fastcc void @dm_exception_table_lock(ptr noundef nonnull %lock)
  br label %out

out:                                              ; preds = %__check_for_conflicting_io.exit, %__chunk_is_tracked.exit.thread, %if.then8, %invalidate_snapshot.exit77, %invalidate_snapshot.exit
  %tobool29.not = phi i1 [ true, %__check_for_conflicting_io.exit ], [ false, %if.then8 ], [ false, %invalidate_snapshot.exit77 ], [ false, %invalidate_snapshot.exit ], [ true, %__chunk_is_tracked.exit.thread ]
  %81 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %context, align 4
  %pprev2.i.i.i = getelementptr inbounds %struct.hlist_bl_node, ptr %context, i32 0, i32 1
  %83 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %pprev2.i.i.i, align 4
  %85 = ptrtoint ptr %context to i32
  %and.i.i.i = and i32 %85, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i80 = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i80, label %do.body15.i.i.i, label %do.body5.i.i.i, !prof !292

do.body5.i.i.i:                                   ; preds = %out
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/list_bl.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 120, 0\0A.popsection", ""() #16, !srcloc !316
  unreachable

do.body15.i.i.i:                                  ; preds = %out
  %86 = ptrtoint ptr %82 to i32
  %87 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %84, align 4
  %89 = ptrtoint ptr %88 to i32
  %and16.i.i.i = and i32 %89, 1
  %or.i.i.i = or i32 %and16.i.i.i, %86
  %90 = inttoptr i32 %or.i.i.i to ptr
  store volatile ptr %90, ptr %84, align 4
  %tobool21.not.i.i.i = icmp eq ptr %82, null
  br i1 %tobool21.not.i.i.i, label %do.body15.i.i.i.dm_remove_exception.exit_crit_edge, label %if.then22.i.i.i

do.body15.i.i.i.dm_remove_exception.exit_crit_edge: ; preds = %do.body15.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %dm_remove_exception.exit

if.then22.i.i.i:                                  ; preds = %do.body15.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %pprev23.i.i.i = getelementptr inbounds %struct.hlist_bl_node, ptr %82, i32 0, i32 1
  %91 = ptrtoint ptr %pprev23.i.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %84, ptr %pprev23.i.i.i, align 4
  br label %dm_remove_exception.exit

dm_remove_exception.exit:                         ; preds = %if.then22.i.i.i, %do.body15.i.i.i.dm_remove_exception.exit_crit_edge
  %92 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr inttoptr (i32 256 to ptr), ptr %context, align 4
  %93 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i, align 4
  %94 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile i32, ptr %arrayidx5.i, align 4
  %and1.i.i.i.i82 = and i32 %95, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i82)
  %tobool.not.i.i.i83 = icmp eq i32 %and1.i.i.i.i82, 0
  br i1 %tobool.not.i.i.i83, label %do.body4.i.i.i84, label %hlist_bl_unlock.exit.i92, !prof !294

do.body4.i.i.i84:                                 ; preds = %dm_remove_exception.exit
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/bit_spinlock.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #16, !srcloc !296
  unreachable

hlist_bl_unlock.exit.i92:                         ; preds = %dm_remove_exception.exit
  %call.i.i.i.i.i85 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx5.i, i32 noundef 4) #16
  %96 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load volatile i32, ptr %arrayidx5.i, align 4
  %and.i.i.i.i.i86 = and i32 %97, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !297
  %98 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store volatile i32 %and.i.i.i.i.i86, ptr %arrayidx5.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !298
  %99 = tail call i32 @llvm.read_register.i32(metadata !280) #16
  %and.i.i.i.i.i.i87 = and i32 %99, -16384
  %100 = inttoptr i32 %and.i.i.i.i.i.i87 to ptr
  %preempt_count.i.i.i.i.i88 = getelementptr inbounds %struct.thread_info, ptr %100, i32 0, i32 1
  %101 = ptrtoint ptr %preempt_count.i.i.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load volatile i32, ptr %preempt_count.i.i.i.i.i88, align 4
  %sub.i.i.i.i89 = add i32 %102, -1
  store volatile i32 %sub.i.i.i.i89, ptr %preempt_count.i.i.i.i.i88, align 4
  %103 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load volatile i32, ptr %arrayidx.i, align 4
  %and1.i.i.i2.i90 = and i32 %104, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i2.i90)
  %tobool.not.i.i3.i91 = icmp eq i32 %and1.i.i.i2.i90, 0
  br i1 %tobool.not.i.i3.i91, label %do.body4.i.i4.i93, label %dm_exception_table_unlock.exit99, !prof !294

do.body4.i.i4.i93:                                ; preds = %hlist_bl_unlock.exit.i92
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/bit_spinlock.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #16, !srcloc !296
  unreachable

dm_exception_table_unlock.exit99:                 ; preds = %hlist_bl_unlock.exit.i92
  %call.i.i.i.i5.i94 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i, i32 noundef 4) #16
  %105 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i.i.i.i6.i95 = and i32 %106, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !297
  %107 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store volatile i32 %and.i.i.i.i6.i95, ptr %arrayidx.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !298
  %108 = tail call i32 @llvm.read_register.i32(metadata !280) #16
  %and.i.i.i.i.i7.i96 = and i32 %108, -16384
  %109 = inttoptr i32 %and.i.i.i.i.i7.i96 to ptr
  %preempt_count.i.i.i.i8.i97 = getelementptr inbounds %struct.thread_info, ptr %109, i32 0, i32 1
  %110 = ptrtoint ptr %preempt_count.i.i.i.i8.i97 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load volatile i32, ptr %preempt_count.i.i.i.i8.i97, align 4
  %sub.i.i.i9.i98 = add i32 %111, -1
  store volatile i32 %sub.i.i.i9.i98, ptr %preempt_count.i.i.i.i8.i97, align 4
  %snapshot_bios21 = getelementptr inbounds %struct.dm_snap_pending_exception, ptr %context, i32 0, i32 2
  %112 = ptrtoint ptr %snapshot_bios21 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %snapshot_bios21, align 4
  %tail.i = getelementptr inbounds %struct.dm_snap_pending_exception, ptr %context, i32 0, i32 2, i32 1
  %114 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr null, ptr %tail.i, align 4
  store ptr null, ptr %snapshot_bios21, align 4
  %origin_bios23 = getelementptr inbounds %struct.dm_snap_pending_exception, ptr %context, i32 0, i32 1
  %115 = ptrtoint ptr %origin_bios23 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %origin_bios23, align 4
  %tail.i100 = getelementptr inbounds %struct.dm_snap_pending_exception, ptr %context, i32 0, i32 1, i32 1
  %117 = ptrtoint ptr %tail.i100 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr null, ptr %tail.i100, align 4
  store ptr null, ptr %origin_bios23, align 4
  %full_bio25 = getelementptr inbounds %struct.dm_snap_pending_exception, ptr %context, i32 0, i32 8
  %118 = ptrtoint ptr %full_bio25 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %full_bio25, align 4
  %tobool26.not = icmp eq ptr %119, null
  br i1 %tobool26.not, label %dm_exception_table_unlock.exit99.if.end28_crit_edge, label %if.then27

dm_exception_table_unlock.exit99.if.end28_crit_edge: ; preds = %dm_exception_table_unlock.exit99
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end28

if.then27:                                        ; preds = %dm_exception_table_unlock.exit99
  call void @__sanitizer_cov_trace_pc() #18
  %full_bio_end_io = getelementptr inbounds %struct.dm_snap_pending_exception, ptr %context, i32 0, i32 9
  %120 = ptrtoint ptr %full_bio_end_io to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %full_bio_end_io, align 8
  %bi_end_io = getelementptr inbounds %struct.bio, ptr %119, i32 0, i32 10
  %122 = ptrtoint ptr %bi_end_io to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %121, ptr %bi_end_io, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %dm_exception_table_unlock.exit99.if.end28_crit_edge
  tail call void @_raw_spin_lock(ptr noundef nonnull @_pending_exceptions_done_spinlock) #16
  %123 = load i64, ptr @_pending_exceptions_done_count, align 8
  %inc.i = add i64 %123, 1
  store i64 %inc.i, ptr @_pending_exceptions_done_count, align 8
  tail call void @_raw_spin_unlock(ptr noundef nonnull @_pending_exceptions_done_spinlock) #16
  tail call void @__wake_up(ptr noundef nonnull @_pending_exceptions_done, i32 noundef 3, i32 noundef 0, ptr noundef null) #16
  br i1 %tobool29.not, label %if.else, label %if.then30

if.then30:                                        ; preds = %if.end28
  br i1 %tobool26.not, label %if.then30.if.end33_crit_edge, label %if.then32

if.then30.if.end33_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end33

if.then32:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #18
  %bi_status.i = getelementptr inbounds %struct.bio, ptr %119, i32 0, i32 6
  %124 = ptrtoint ptr %bi_status.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 10, ptr %bi_status.i, align 2
  tail call void @bio_endio(ptr noundef nonnull %119) #16
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.then30.if.end33_crit_edge
  %tobool.not5.i = icmp eq ptr %113, null
  br i1 %tobool.not5.i, label %if.end33.if.end37_crit_edge, label %if.end33.while.body.i102_crit_edge

if.end33.while.body.i102_crit_edge:               ; preds = %if.end33
  br label %while.body.i102

if.end33.if.end37_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end37

while.body.i102:                                  ; preds = %while.body.i102.while.body.i102_crit_edge, %if.end33.while.body.i102_crit_edge
  %bio.addr.06.i = phi ptr [ %126, %while.body.i102.while.body.i102_crit_edge ], [ %113, %if.end33.while.body.i102_crit_edge ]
  %125 = ptrtoint ptr %bio.addr.06.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %bio.addr.06.i, align 8
  store ptr null, ptr %bio.addr.06.i, align 8
  %bi_status.i.i = getelementptr inbounds %struct.bio, ptr %bio.addr.06.i, i32 0, i32 6
  %127 = ptrtoint ptr %bi_status.i.i to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 10, ptr %bi_status.i.i, align 2
  tail call void @bio_endio(ptr noundef nonnull %bio.addr.06.i) #16
  %tobool.not.i101 = icmp eq ptr %126, null
  br i1 %tobool.not.i101, label %while.body.i102.if.end37_crit_edge, label %while.body.i102.while.body.i102_crit_edge

while.body.i102.while.body.i102_crit_edge:        ; preds = %while.body.i102
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i102

while.body.i102.if.end37_crit_edge:               ; preds = %while.body.i102
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end37

if.else:                                          ; preds = %if.end28
  br i1 %tobool26.not, label %if.else.if.end36_crit_edge, label %if.then35

if.else.if.end36_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end36

if.then35:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @bio_endio(ptr noundef nonnull %119) #16
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %if.else.if.end36_crit_edge
  %tobool.not5.i103 = icmp eq ptr %113, null
  br i1 %tobool.not5.i103, label %if.end36.if.end37_crit_edge, label %if.end36.while.body.i106_crit_edge

if.end36.while.body.i106_crit_edge:               ; preds = %if.end36
  br label %while.body.i106

if.end36.if.end37_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end37

while.body.i106:                                  ; preds = %while.body.i106.while.body.i106_crit_edge, %if.end36.while.body.i106_crit_edge
  %bio.addr.06.i104 = phi ptr [ %129, %while.body.i106.while.body.i106_crit_edge ], [ %113, %if.end36.while.body.i106_crit_edge ]
  %128 = ptrtoint ptr %bio.addr.06.i104 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %bio.addr.06.i104, align 8
  store ptr null, ptr %bio.addr.06.i104, align 8
  tail call void @submit_bio_noacct(ptr noundef nonnull %bio.addr.06.i104) #16
  %tobool.not.i105 = icmp eq ptr %129, null
  br i1 %tobool.not.i105, label %while.body.i106.if.end37_crit_edge, label %while.body.i106.while.body.i106_crit_edge

while.body.i106.while.body.i106_crit_edge:        ; preds = %while.body.i106
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i106

while.body.i106.if.end37_crit_edge:               ; preds = %while.body.i106
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end37

if.end37:                                         ; preds = %while.body.i106.if.end37_crit_edge, %if.end36.if.end37_crit_edge, %while.body.i102.if.end37_crit_edge, %if.end33.if.end37_crit_edge
  %tobool.not9.i = icmp eq ptr %116, null
  br i1 %tobool.not9.i, label %if.end37.retry_origin_bios.exit_crit_edge, label %while.body.lr.ph.i

if.end37.retry_origin_bios.exit_crit_edge:        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #18
  br label %retry_origin_bios.exit

while.body.lr.ph.i:                               ; preds = %if.end37
  %origin.i = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 1
  br label %while.body.i107

while.body.i107:                                  ; preds = %if.end.i.while.body.i107_crit_edge, %while.body.lr.ph.i
  %bio.addr.010.i = phi ptr [ %116, %while.body.lr.ph.i ], [ %131, %if.end.i.while.body.i107_crit_edge ]
  %130 = ptrtoint ptr %bio.addr.010.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %bio.addr.010.i, align 8
  store ptr null, ptr %bio.addr.010.i, align 8
  %132 = ptrtoint ptr %origin.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %origin.i, align 8
  tail call void @down_read(ptr noundef nonnull @_origins_lock) #16
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %133, align 4
  %136 = load ptr, ptr @_origins, align 4
  %bd_dev.i.i.i.i = getelementptr inbounds %struct.block_device, ptr %135, i32 0, i32 5
  %137 = ptrtoint ptr %bd_dev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %bd_dev.i.i.i.i, align 4
  %and.i.i.i.i = and i32 %138, 255
  %arrayidx.i.i.i = getelementptr %struct.list_head, ptr %136, i32 %and.i.i.i.i
  br label %for.cond.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i.for.cond.i.i.i_crit_edge, %while.body.i107
  %.pn.in.i.i.i = phi ptr [ %arrayidx.i.i.i, %while.body.i107 ], [ %.pn.i.i.i, %for.body.i.i.i.for.cond.i.i.i_crit_edge ]
  %139 = ptrtoint ptr %.pn.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %.pn.i.i.i = load ptr, ptr %.pn.in.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %.pn.i.i.i, %arrayidx.i.i.i
  br i1 %cmp.not.i.i.i, label %for.cond.i.i.i.do_origin.exit.thread.i_crit_edge, label %for.body.i.i.i

for.cond.i.i.i.do_origin.exit.thread.i_crit_edge: ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do_origin.exit.thread.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i
  %o.0.i.i.i = getelementptr i8, ptr %.pn.i.i.i, i32 -4
  %140 = ptrtoint ptr %o.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %o.0.i.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %141, %135
  br i1 %cmp.i.not.i.i.i, label %__lookup_origin.exit.i.i, label %for.body.i.i.i.for.cond.i.i.i_crit_edge

for.body.i.i.i.for.cond.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i.i.i

__lookup_origin.exit.i.i:                         ; preds = %for.body.i.i.i
  %o.0.i.i.i.le = getelementptr i8, ptr %.pn.i.i.i, i32 -4
  %tobool.not.i.i108 = icmp eq ptr %o.0.i.i.i.le, null
  br i1 %tobool.not.i.i108, label %__lookup_origin.exit.i.i.do_origin.exit.thread.i_crit_edge, label %do_origin.exit.i

__lookup_origin.exit.i.i.do_origin.exit.thread.i_crit_edge: ; preds = %__lookup_origin.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do_origin.exit.thread.i

do_origin.exit.thread.i:                          ; preds = %__lookup_origin.exit.i.i.do_origin.exit.thread.i_crit_edge, %for.cond.i.i.i.do_origin.exit.thread.i_crit_edge
  tail call void @up_read(ptr noundef nonnull @_origins_lock) #16
  br label %if.then.i

do_origin.exit.i:                                 ; preds = %__lookup_origin.exit.i.i
  %snapshots16.i.i = getelementptr i8, ptr %.pn.i.i.i, i32 8
  %bi_iter.i.i = getelementptr inbounds %struct.bio, ptr %bio.addr.010.i, i32 0, i32 8
  %142 = ptrtoint ptr %bi_iter.i.i to i32
  call void @__asan_load8_noabort(i32 %142)
  %143 = load i64, ptr %bi_iter.i.i, align 8
  %call17.i.i = tail call fastcc i32 @__origin_write(ptr noundef %snapshots16.i.i, i64 noundef %143, ptr noundef nonnull %bio.addr.010.i) #16
  tail call void @up_read(ptr noundef nonnull @_origins_lock) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call17.i.i)
  %cmp.i109 = icmp eq i32 %call17.i.i, 1
  br i1 %cmp.i109, label %do_origin.exit.i.if.then.i_crit_edge, label %do_origin.exit.i.if.end.i_crit_edge

do_origin.exit.i.if.end.i_crit_edge:              ; preds = %do_origin.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

do_origin.exit.i.if.then.i_crit_edge:             ; preds = %do_origin.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i

if.then.i:                                        ; preds = %do_origin.exit.i.if.then.i_crit_edge, %do_origin.exit.thread.i
  tail call void @submit_bio_noacct(ptr noundef nonnull %bio.addr.010.i) #16
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %do_origin.exit.i.if.end.i_crit_edge
  %tobool.not.i110 = icmp eq ptr %131, null
  br i1 %tobool.not.i110, label %if.end.i.retry_origin_bios.exit_crit_edge, label %if.end.i.while.body.i107_crit_edge

if.end.i.while.body.i107_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i107

if.end.i.retry_origin_bios.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %retry_origin_bios.exit

retry_origin_bios.exit:                           ; preds = %if.end.i.retry_origin_bios.exit_crit_edge, %if.end37.retry_origin_bios.exit_crit_edge
  %144 = ptrtoint ptr %snap to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %snap, align 8
  %pending_pool.i = getelementptr inbounds %struct.dm_snapshot, ptr %145, i32 0, i32 13
  tail call void @mempool_free(ptr noundef %context, ptr noundef %pending_pool.i) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !312
  %pending_exceptions_count.i = getelementptr inbounds %struct.dm_snapshot, ptr %145, i32 0, i32 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pending_exceptions_count.i, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %pending_exceptions_count.i, i32 1, i32 3, i32 1) #16
  %146 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pending_exceptions_count.i, ptr %pending_exceptions_count.i, i32 1, ptr elementtype(i32) %pending_exceptions_count.i) #16, !srcloc !313
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %lock) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__origin_write(ptr noundef readonly %snapshots, i64 noundef %sector, ptr noundef %bio) unnamed_addr #3 align 64 {
entry:
  %src.i199 = alloca %struct.dm_io_region, align 8
  %dest.i200 = alloca %struct.dm_io_region, align 8
  %src.i = alloca %struct.dm_io_region, align 8
  %dest.i = alloca %struct.dm_io_region, align 8
  %lock = alloca %struct.dm_exception_table_lock, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %lock) #16
  %0 = getelementptr inbounds %struct.dm_exception_table_lock, ptr %lock, i32 0, i32 1
  %1 = ptrtoint ptr %snapshots to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn248 = load ptr, ptr %snapshots, align 4
  %cmp.not250 = icmp eq ptr %.pn248, %snapshots
  br i1 %cmp.not250, label %entry.if.end57_crit_edge, label %for.body.lr.ph

entry.if.end57_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end57

for.body.lr.ph:                                   ; preds = %entry
  %sector.i = getelementptr inbounds %struct.dm_io_region, ptr %src.i, i32 0, i32 1
  %count.i = getelementptr inbounds %struct.dm_io_region, ptr %src.i, i32 0, i32 2
  %sector12.i = getelementptr inbounds %struct.dm_io_region, ptr %dest.i, i32 0, i32 1
  %count14.i = getelementptr inbounds %struct.dm_io_region, ptr %dest.i, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn256 = phi ptr [ %.pn248, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %bio.addr.0254 = phi ptr [ %bio, %for.body.lr.ph ], [ %bio.addr.3, %for.inc.for.body_crit_edge ]
  %r.0253 = phi i32 [ 1, %for.body.lr.ph ], [ %r.2, %for.inc.for.body_crit_edge ]
  %pe_to_start_last.0251 = phi ptr [ null, %for.body.lr.ph ], [ %pe_to_start_last.3, %for.inc.for.body_crit_edge ]
  %snap.0257 = getelementptr i8, ptr %.pn256, i32 -108
  %ti = getelementptr i8, ptr %.pn256, i32 -4
  %2 = ptrtoint ptr %ti to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ti, align 8
  %type = getelementptr inbounds %struct.dm_target, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %type, align 4
  %name = getelementptr inbounds %struct.target_type, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 8
  %cmp1 = icmp eq ptr %7, @dm_snapshot_merge_target_name
  br i1 %cmp1, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end:                                           ; preds = %for.body
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 8
  %call = call i64 @dm_table_get_size(ptr noundef %9) #16
  call void @__sanitizer_cov_trace_cmp8(i64 %call, i64 %sector)
  %cmp3.not = icmp ugt i64 %call, %sector
  br i1 %cmp3.not, label %if.end5, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end5:                                          ; preds = %if.end
  %store = getelementptr i8, ptr %.pn256, i32 384
  %10 = ptrtoint ptr %store to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %store, align 4
  %chunk_shift.i = getelementptr inbounds %struct.dm_exception_store, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %chunk_shift.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %chunk_shift.i, align 4
  %sh_prom.i = zext i32 %13 to i64
  %shr.i = lshr i64 %sector, %sh_prom.i
  %complete1.i = getelementptr i8, ptr %.pn256, i32 220
  %pending2.i = getelementptr i8, ptr %.pn256, i32 208
  %table.i = getelementptr i8, ptr %.pn256, i32 228
  %14 = ptrtoint ptr %table.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %table.i, align 4
  %hash_shift.i.i = getelementptr i8, ptr %.pn256, i32 224
  %16 = ptrtoint ptr %hash_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %hash_shift.i.i, align 4
  %sh_prom.i.i = zext i32 %17 to i64
  %shr.i.i = lshr i64 %shr.i, %sh_prom.i.i
  %18 = ptrtoint ptr %complete1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %complete1.i, align 4
  %20 = trunc i64 %shr.i.i to i32
  %conv1.i.i = and i32 %19, %20
  %arrayidx.i = getelementptr %struct.hlist_bl_head, ptr %15, i32 %conv1.i.i
  %21 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %arrayidx.i, ptr %lock, align 4
  %table3.i = getelementptr i8, ptr %.pn256, i32 216
  %22 = ptrtoint ptr %table3.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %table3.i, align 4
  %hash_shift.i11.i = getelementptr i8, ptr %.pn256, i32 212
  %24 = ptrtoint ptr %hash_shift.i11.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %hash_shift.i11.i, align 4
  %sh_prom.i12.i = zext i32 %25 to i64
  %shr.i13.i = lshr i64 %shr.i, %sh_prom.i12.i
  %26 = ptrtoint ptr %pending2.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pending2.i, align 4
  %28 = trunc i64 %shr.i13.i to i32
  %conv1.i14.i = and i32 %27, %28
  %arrayidx5.i = getelementptr %struct.hlist_bl_head, ptr %23, i32 %conv1.i14.i
  %29 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %arrayidx5.i, ptr %0, align 4
  call void @down_read(ptr noundef %snap.0257) #16
  call fastcc void @dm_exception_table_lock(ptr noundef nonnull %lock)
  %valid = getelementptr i8, ptr %.pn256, i32 8
  %30 = ptrtoint ptr %valid to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %valid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not = icmp eq i32 %31, 0
  br i1 %tobool.not, label %if.end5.next_snapshot_crit_edge, label %lor.lhs.false

if.end5.next_snapshot_crit_edge:                  ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  br label %next_snapshot

lor.lhs.false:                                    ; preds = %if.end5
  %active = getelementptr i8, ptr %.pn256, i32 16
  %32 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool8.not = icmp eq i32 %33, 0
  br i1 %tobool8.not, label %lor.lhs.false.next_snapshot_crit_edge, label %if.end10

lor.lhs.false.next_snapshot_crit_edge:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %next_snapshot

if.end10:                                         ; preds = %lor.lhs.false
  %34 = ptrtoint ptr %table3.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %table3.i, align 4
  %36 = ptrtoint ptr %hash_shift.i11.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %hash_shift.i11.i, align 4
  %sh_prom.i.i.i = zext i32 %37 to i64
  %shr.i.i.i = lshr i64 %shr.i, %sh_prom.i.i.i
  %38 = ptrtoint ptr %pending2.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pending2.i, align 4
  %40 = trunc i64 %shr.i.i.i to i32
  %conv1.i.i.i = and i32 %39, %40
  %arrayidx.i.i = getelementptr %struct.hlist_bl_head, ptr %35, i32 %conv1.i.i.i
  %41 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx.i.i, align 4
  %43 = ptrtoint ptr %42 to i32
  %and.i.i.i = and i32 %43, -2
  %44 = inttoptr i32 %and.i.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not19.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not19.i.i, label %if.end10.__lookup_pending_exception.exit_crit_edge, label %if.end10.for.body.i.i_crit_edge

if.end10.for.body.i.i_crit_edge:                  ; preds = %if.end10
  br label %for.body.i.i

if.end10.__lookup_pending_exception.exit_crit_edge: ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  br label %__lookup_pending_exception.exit

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end10.for.body.i.i_crit_edge
  %pos.020.i.i = phi ptr [ %50, %for.inc.i.i.for.body.i.i_crit_edge ], [ %44, %if.end10.for.body.i.i_crit_edge ]
  %old_chunk.i.i = getelementptr inbounds %struct.dm_exception, ptr %pos.020.i.i, i32 0, i32 1
  %45 = ptrtoint ptr %old_chunk.i.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %old_chunk.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %46, i64 %shr.i)
  %cmp.not.i.i = icmp ugt i64 %46, %shr.i
  br i1 %cmp.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %land.lhs.true.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %new_chunk.i.i.i = getelementptr inbounds %struct.dm_exception, ptr %pos.020.i.i, i32 0, i32 2
  %47 = ptrtoint ptr %new_chunk.i.i.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %new_chunk.i.i.i, align 8
  %shr.i18.i.i = lshr i64 %48, 56
  %add.i.i = add i64 %shr.i18.i.i, %46
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i, i64 %shr.i)
  %cmp6.not.i.i = icmp ult i64 %add.i.i, %shr.i
  br i1 %cmp6.not.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge, label %land.lhs.true.i.i.__lookup_pending_exception.exit_crit_edge

land.lhs.true.i.i.__lookup_pending_exception.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__lookup_pending_exception.exit

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %49 = ptrtoint ptr %pos.020.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pos.020.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %50, null
  br i1 %tobool.not.i.i, label %for.inc.i.i.if.then13_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i

for.inc.i.i.if.then13_crit_edge:                  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then13

__lookup_pending_exception.exit:                  ; preds = %land.lhs.true.i.i.__lookup_pending_exception.exit_crit_edge, %if.end10.__lookup_pending_exception.exit_crit_edge
  %pos.0.lcssa.i.i = phi ptr [ %44, %if.end10.__lookup_pending_exception.exit_crit_edge ], [ %pos.020.i.i, %land.lhs.true.i.i.__lookup_pending_exception.exit_crit_edge ]
  %tobool12.not = icmp eq ptr %pos.0.lcssa.i.i, null
  br i1 %tobool12.not, label %__lookup_pending_exception.exit.if.then13_crit_edge, label %__lookup_pending_exception.exit.if.end33_crit_edge

__lookup_pending_exception.exit.if.end33_crit_edge: ; preds = %__lookup_pending_exception.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end33

__lookup_pending_exception.exit.if.then13_crit_edge: ; preds = %__lookup_pending_exception.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then13

if.then13:                                        ; preds = %__lookup_pending_exception.exit.if.then13_crit_edge, %for.inc.i.i.if.then13_crit_edge
  %51 = ptrtoint ptr %table.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %table.i, align 4
  %53 = ptrtoint ptr %hash_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %hash_shift.i.i, align 4
  %sh_prom.i.i100 = zext i32 %54 to i64
  %shr.i.i101 = lshr i64 %shr.i, %sh_prom.i.i100
  %55 = ptrtoint ptr %complete1.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %complete1.i, align 4
  %57 = trunc i64 %shr.i.i101 to i32
  %conv1.i.i102 = and i32 %56, %57
  %arrayidx.i103 = getelementptr %struct.hlist_bl_head, ptr %52, i32 %conv1.i.i102
  %58 = ptrtoint ptr %arrayidx.i103 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx.i103, align 4
  %60 = ptrtoint ptr %59 to i32
  %and.i.i = and i32 %60, -2
  %61 = inttoptr i32 %and.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not19.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not19.i, label %if.then13.dm_lookup_exception.exit_crit_edge, label %if.then13.for.body.i_crit_edge

if.then13.for.body.i_crit_edge:                   ; preds = %if.then13
  br label %for.body.i

if.then13.dm_lookup_exception.exit_crit_edge:     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #18
  br label %dm_lookup_exception.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then13.for.body.i_crit_edge
  %pos.020.i = phi ptr [ %67, %for.inc.i.for.body.i_crit_edge ], [ %61, %if.then13.for.body.i_crit_edge ]
  %old_chunk.i = getelementptr inbounds %struct.dm_exception, ptr %pos.020.i, i32 0, i32 1
  %62 = ptrtoint ptr %old_chunk.i to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %old_chunk.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %63, i64 %shr.i)
  %cmp.not.i = icmp ugt i64 %63, %shr.i
  br i1 %cmp.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %new_chunk.i.i = getelementptr inbounds %struct.dm_exception, ptr %pos.020.i, i32 0, i32 2
  %64 = ptrtoint ptr %new_chunk.i.i to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %new_chunk.i.i, align 8
  %shr.i18.i = lshr i64 %65, 56
  %add.i = add i64 %shr.i18.i, %63
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %shr.i)
  %cmp6.not.i = icmp ult i64 %add.i, %shr.i
  br i1 %cmp6.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %land.lhs.true.i.dm_lookup_exception.exit_crit_edge

land.lhs.true.i.dm_lookup_exception.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %dm_lookup_exception.exit

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %66 = ptrtoint ptr %pos.020.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pos.020.i, align 4
  %tobool.not.i = icmp eq ptr %67, null
  br i1 %tobool.not.i, label %for.inc.i.if.end17_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.inc.i.if.end17_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end17

dm_lookup_exception.exit:                         ; preds = %land.lhs.true.i.dm_lookup_exception.exit_crit_edge, %if.then13.dm_lookup_exception.exit_crit_edge
  %pos.0.lcssa.i = phi ptr [ %61, %if.then13.dm_lookup_exception.exit_crit_edge ], [ %pos.020.i, %land.lhs.true.i.dm_lookup_exception.exit_crit_edge ]
  %tobool15.not = icmp eq ptr %pos.0.lcssa.i, null
  br i1 %tobool15.not, label %dm_lookup_exception.exit.if.end17_crit_edge, label %dm_lookup_exception.exit.next_snapshot_crit_edge

dm_lookup_exception.exit.next_snapshot_crit_edge: ; preds = %dm_lookup_exception.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %next_snapshot

dm_lookup_exception.exit.if.end17_crit_edge:      ; preds = %dm_lookup_exception.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end17

if.end17:                                         ; preds = %dm_lookup_exception.exit.if.end17_crit_edge, %for.inc.i.if.end17_crit_edge
  %68 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %arrayidx5.i, align 4
  %and1.i.i.i.i = and i32 %69, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %do.body4.i.i.i, label %hlist_bl_unlock.exit.i, !prof !294

do.body4.i.i.i:                                   ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/bit_spinlock.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #16, !srcloc !296
  unreachable

hlist_bl_unlock.exit.i:                           ; preds = %if.end17
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx5.i, i32 noundef 4) #16
  %70 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %arrayidx5.i, align 4
  %and.i.i.i.i.i = and i32 %71, -2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !297
  %72 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile i32 %and.i.i.i.i.i, ptr %arrayidx5.i, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !298
  %73 = call i32 @llvm.read_register.i32(metadata !280) #16
  %and.i.i.i.i.i.i = and i32 %73, -16384
  %74 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %sub.i.i.i.i = add i32 %76, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  %77 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %arrayidx.i, align 4
  %and1.i.i.i2.i = and i32 %78, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i2.i)
  %tobool.not.i.i3.i = icmp eq i32 %and1.i.i.i2.i, 0
  br i1 %tobool.not.i.i3.i, label %do.body4.i.i4.i, label %dm_exception_table_unlock.exit, !prof !294

do.body4.i.i4.i:                                  ; preds = %hlist_bl_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/bit_spinlock.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #16, !srcloc !296
  unreachable

dm_exception_table_unlock.exit:                   ; preds = %hlist_bl_unlock.exit.i
  %call.i.i.i.i5.i = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i, i32 noundef 4) #16
  %79 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i.i.i.i6.i = and i32 %80, -2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !297
  %81 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile i32 %and.i.i.i.i6.i, ptr %arrayidx.i, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !298
  %82 = call i32 @llvm.read_register.i32(metadata !280) #16
  %and.i.i.i.i.i7.i = and i32 %82, -16384
  %83 = inttoptr i32 %and.i.i.i.i.i7.i to ptr
  %preempt_count.i.i.i.i8.i = getelementptr inbounds %struct.thread_info, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %preempt_count.i.i.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %preempt_count.i.i.i.i8.i, align 4
  %sub.i.i.i9.i = add i32 %85, -1
  store volatile i32 %sub.i.i.i9.i, ptr %preempt_count.i.i.i.i8.i, align 4
  %pending_pool.i = getelementptr i8, ptr %.pn256, i32 88
  %call.i = call noalias ptr @mempool_alloc(ptr noundef %pending_pool.i, i32 noundef 3072) #16
  %pending_exceptions_count.i = getelementptr i8, ptr %.pn256, i32 20
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %pending_exceptions_count.i, i32 noundef 4) #16
  call void @llvm.prefetch.p0(ptr %pending_exceptions_count.i, i32 1, i32 3, i32 1) #16
  %86 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pending_exceptions_count.i, ptr %pending_exceptions_count.i, i32 1, ptr elementtype(i32) %pending_exceptions_count.i) #16, !srcloc !311
  %snap.i = getelementptr inbounds %struct.dm_snap_pending_exception, ptr %call.i, i32 0, i32 3
  %87 = ptrtoint ptr %snap.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %snap.0257, ptr %snap.i, align 8
  call fastcc void @dm_exception_table_lock(ptr noundef nonnull %lock)
  %88 = ptrtoint ptr %table3.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %table3.i, align 4
  %90 = ptrtoint ptr %hash_shift.i11.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %hash_shift.i11.i, align 4
  %sh_prom.i.i.i108 = zext i32 %91 to i64
  %shr.i.i.i109 = lshr i64 %shr.i, %sh_prom.i.i.i108
  %92 = ptrtoint ptr %pending2.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %pending2.i, align 4
  %94 = trunc i64 %shr.i.i.i109 to i32
  %conv1.i.i.i110 = and i32 %93, %94
  %arrayidx.i.i111 = getelementptr %struct.hlist_bl_head, ptr %89, i32 %conv1.i.i.i110
  %95 = ptrtoint ptr %arrayidx.i.i111 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %arrayidx.i.i111, align 4
  %97 = ptrtoint ptr %96 to i32
  %and.i.i.i112 = and i32 %97, -2
  %98 = inttoptr i32 %and.i.i.i112 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i112)
  %tobool.not19.i.i113 = icmp eq i32 %and.i.i.i112, 0
  br i1 %tobool.not19.i.i113, label %dm_exception_table_unlock.exit.__lookup_pending_exception.exit126_crit_edge, label %dm_exception_table_unlock.exit.for.body.i.i117_crit_edge

dm_exception_table_unlock.exit.for.body.i.i117_crit_edge: ; preds = %dm_exception_table_unlock.exit
  br label %for.body.i.i117

dm_exception_table_unlock.exit.__lookup_pending_exception.exit126_crit_edge: ; preds = %dm_exception_table_unlock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %__lookup_pending_exception.exit126

for.body.i.i117:                                  ; preds = %for.inc.i.i124.for.body.i.i117_crit_edge, %dm_exception_table_unlock.exit.for.body.i.i117_crit_edge
  %pos.020.i.i114 = phi ptr [ %104, %for.inc.i.i124.for.body.i.i117_crit_edge ], [ %98, %dm_exception_table_unlock.exit.for.body.i.i117_crit_edge ]
  %old_chunk.i.i115 = getelementptr inbounds %struct.dm_exception, ptr %pos.020.i.i114, i32 0, i32 1
  %99 = ptrtoint ptr %old_chunk.i.i115 to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %old_chunk.i.i115, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %100, i64 %shr.i)
  %cmp.not.i.i116 = icmp ugt i64 %100, %shr.i
  br i1 %cmp.not.i.i116, label %for.body.i.i117.for.inc.i.i124_crit_edge, label %land.lhs.true.i.i122

for.body.i.i117.for.inc.i.i124_crit_edge:         ; preds = %for.body.i.i117
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i.i124

land.lhs.true.i.i122:                             ; preds = %for.body.i.i117
  %new_chunk.i.i.i118 = getelementptr inbounds %struct.dm_exception, ptr %pos.020.i.i114, i32 0, i32 2
  %101 = ptrtoint ptr %new_chunk.i.i.i118 to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %new_chunk.i.i.i118, align 8
  %shr.i18.i.i119 = lshr i64 %102, 56
  %add.i.i120 = add i64 %shr.i18.i.i119, %100
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i120, i64 %shr.i)
  %cmp6.not.i.i121 = icmp ult i64 %add.i.i120, %shr.i
  br i1 %cmp6.not.i.i121, label %land.lhs.true.i.i122.for.inc.i.i124_crit_edge, label %land.lhs.true.i.i122.__lookup_pending_exception.exit126_crit_edge

land.lhs.true.i.i122.__lookup_pending_exception.exit126_crit_edge: ; preds = %land.lhs.true.i.i122
  call void @__sanitizer_cov_trace_pc() #18
  br label %__lookup_pending_exception.exit126

land.lhs.true.i.i122.for.inc.i.i124_crit_edge:    ; preds = %land.lhs.true.i.i122
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i.i124

for.inc.i.i124:                                   ; preds = %land.lhs.true.i.i122.for.inc.i.i124_crit_edge, %for.body.i.i117.for.inc.i.i124_crit_edge
  %103 = ptrtoint ptr %pos.020.i.i114 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %pos.020.i.i114, align 4
  %tobool.not.i.i123 = icmp eq ptr %104, null
  br i1 %tobool.not.i.i123, label %for.inc.i.i124.if.then21_crit_edge, label %for.inc.i.i124.for.body.i.i117_crit_edge

for.inc.i.i124.for.body.i.i117_crit_edge:         ; preds = %for.inc.i.i124
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i117

for.inc.i.i124.if.then21_crit_edge:               ; preds = %for.inc.i.i124
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then21

__lookup_pending_exception.exit126:               ; preds = %land.lhs.true.i.i122.__lookup_pending_exception.exit126_crit_edge, %dm_exception_table_unlock.exit.__lookup_pending_exception.exit126_crit_edge
  %pos.0.lcssa.i.i125 = phi ptr [ %98, %dm_exception_table_unlock.exit.__lookup_pending_exception.exit126_crit_edge ], [ %pos.020.i.i114, %land.lhs.true.i.i122.__lookup_pending_exception.exit126_crit_edge ]
  %tobool20.not = icmp eq ptr %pos.0.lcssa.i.i125, null
  br i1 %tobool20.not, label %__lookup_pending_exception.exit126.if.then21_crit_edge, label %if.else

__lookup_pending_exception.exit126.if.then21_crit_edge: ; preds = %__lookup_pending_exception.exit126
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then21

if.then21:                                        ; preds = %__lookup_pending_exception.exit126.if.then21_crit_edge, %for.inc.i.i124.if.then21_crit_edge
  %105 = ptrtoint ptr %table.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %table.i, align 4
  %107 = ptrtoint ptr %hash_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %hash_shift.i.i, align 4
  %sh_prom.i.i129 = zext i32 %108 to i64
  %shr.i.i130 = lshr i64 %shr.i, %sh_prom.i.i129
  %109 = ptrtoint ptr %complete1.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %complete1.i, align 4
  %111 = trunc i64 %shr.i.i130 to i32
  %conv1.i.i131 = and i32 %110, %111
  %arrayidx.i132 = getelementptr %struct.hlist_bl_head, ptr %106, i32 %conv1.i.i131
  %112 = ptrtoint ptr %arrayidx.i132 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %arrayidx.i132, align 4
  %114 = ptrtoint ptr %113 to i32
  %and.i.i133 = and i32 %114, -2
  %115 = inttoptr i32 %and.i.i133 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i133)
  %tobool.not19.i134 = icmp eq i32 %and.i.i133, 0
  br i1 %tobool.not19.i134, label %if.then21.dm_lookup_exception.exit147_crit_edge, label %if.then21.for.body.i138_crit_edge

if.then21.for.body.i138_crit_edge:                ; preds = %if.then21
  br label %for.body.i138

if.then21.dm_lookup_exception.exit147_crit_edge:  ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #18
  br label %dm_lookup_exception.exit147

for.body.i138:                                    ; preds = %for.inc.i145.for.body.i138_crit_edge, %if.then21.for.body.i138_crit_edge
  %pos.020.i135 = phi ptr [ %121, %for.inc.i145.for.body.i138_crit_edge ], [ %115, %if.then21.for.body.i138_crit_edge ]
  %old_chunk.i136 = getelementptr inbounds %struct.dm_exception, ptr %pos.020.i135, i32 0, i32 1
  %116 = ptrtoint ptr %old_chunk.i136 to i32
  call void @__asan_load8_noabort(i32 %116)
  %117 = load i64, ptr %old_chunk.i136, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %117, i64 %shr.i)
  %cmp.not.i137 = icmp ugt i64 %117, %shr.i
  br i1 %cmp.not.i137, label %for.body.i138.for.inc.i145_crit_edge, label %land.lhs.true.i143

for.body.i138.for.inc.i145_crit_edge:             ; preds = %for.body.i138
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i145

land.lhs.true.i143:                               ; preds = %for.body.i138
  %new_chunk.i.i139 = getelementptr inbounds %struct.dm_exception, ptr %pos.020.i135, i32 0, i32 2
  %118 = ptrtoint ptr %new_chunk.i.i139 to i32
  call void @__asan_load8_noabort(i32 %118)
  %119 = load i64, ptr %new_chunk.i.i139, align 8
  %shr.i18.i140 = lshr i64 %119, 56
  %add.i141 = add i64 %shr.i18.i140, %117
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i141, i64 %shr.i)
  %cmp6.not.i142 = icmp ult i64 %add.i141, %shr.i
  br i1 %cmp6.not.i142, label %land.lhs.true.i143.for.inc.i145_crit_edge, label %land.lhs.true.i143.dm_lookup_exception.exit147_crit_edge

land.lhs.true.i143.dm_lookup_exception.exit147_crit_edge: ; preds = %land.lhs.true.i143
  call void @__sanitizer_cov_trace_pc() #18
  br label %dm_lookup_exception.exit147

land.lhs.true.i143.for.inc.i145_crit_edge:        ; preds = %land.lhs.true.i143
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i145

for.inc.i145:                                     ; preds = %land.lhs.true.i143.for.inc.i145_crit_edge, %for.body.i138.for.inc.i145_crit_edge
  %120 = ptrtoint ptr %pos.020.i135 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %pos.020.i135, align 4
  %tobool.not.i144 = icmp eq ptr %121, null
  br i1 %tobool.not.i144, label %for.inc.i145.if.end26_crit_edge, label %for.inc.i145.for.body.i138_crit_edge

for.inc.i145.for.body.i138_crit_edge:             ; preds = %for.inc.i145
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i138

for.inc.i145.if.end26_crit_edge:                  ; preds = %for.inc.i145
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end26

dm_lookup_exception.exit147:                      ; preds = %land.lhs.true.i143.dm_lookup_exception.exit147_crit_edge, %if.then21.dm_lookup_exception.exit147_crit_edge
  %pos.0.lcssa.i146 = phi ptr [ %115, %if.then21.dm_lookup_exception.exit147_crit_edge ], [ %pos.020.i135, %land.lhs.true.i143.dm_lookup_exception.exit147_crit_edge ]
  %tobool24.not = icmp eq ptr %pos.0.lcssa.i146, null
  br i1 %tobool24.not, label %dm_lookup_exception.exit147.if.end26_crit_edge, label %if.then25

dm_lookup_exception.exit147.if.end26_crit_edge:   ; preds = %dm_lookup_exception.exit147
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end26

if.then25:                                        ; preds = %dm_lookup_exception.exit147
  call void @__sanitizer_cov_trace_pc() #18
  %122 = ptrtoint ptr %snap.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %snap.i, align 8
  %pending_pool.i149 = getelementptr inbounds %struct.dm_snapshot, ptr %123, i32 0, i32 13
  call void @mempool_free(ptr noundef %call.i, ptr noundef %pending_pool.i149) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !312
  %pending_exceptions_count.i150 = getelementptr inbounds %struct.dm_snapshot, ptr %123, i32 0, i32 8
  %call.i.i.i151 = call zeroext i1 @__kasan_check_write(ptr noundef %pending_exceptions_count.i150, i32 noundef 4) #16
  call void @llvm.prefetch.p0(ptr %pending_exceptions_count.i150, i32 1, i32 3, i32 1) #16
  %124 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pending_exceptions_count.i150, ptr %pending_exceptions_count.i150, i32 1, ptr elementtype(i32) %pending_exceptions_count.i150) #16, !srcloc !313
  br label %next_snapshot

if.end26:                                         ; preds = %dm_lookup_exception.exit147.if.end26_crit_edge, %for.inc.i145.if.end26_crit_edge
  %call27 = call fastcc ptr @__insert_pending_exception(ptr noundef %snap.0257, ptr noundef %call.i, i64 noundef %shr.i)
  %tobool28.not = icmp eq ptr %call27, null
  br i1 %tobool28.not, label %if.then29, label %if.end26.if.end33_crit_edge

if.end26.if.end33_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end33

if.then29:                                        ; preds = %if.end26
  %125 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load volatile i32, ptr %arrayidx5.i, align 4
  %and1.i.i.i.i153 = and i32 %126, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i153)
  %tobool.not.i.i.i154 = icmp eq i32 %and1.i.i.i.i153, 0
  br i1 %tobool.not.i.i.i154, label %do.body4.i.i.i155, label %hlist_bl_unlock.exit.i163, !prof !294

do.body4.i.i.i155:                                ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/bit_spinlock.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #16, !srcloc !296
  unreachable

hlist_bl_unlock.exit.i163:                        ; preds = %if.then29
  %call.i.i.i.i.i156 = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx5.i, i32 noundef 4) #16
  %127 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load volatile i32, ptr %arrayidx5.i, align 4
  %and.i.i.i.i.i157 = and i32 %128, -2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !297
  %129 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store volatile i32 %and.i.i.i.i.i157, ptr %arrayidx5.i, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !298
  %130 = call i32 @llvm.read_register.i32(metadata !280) #16
  %and.i.i.i.i.i.i158 = and i32 %130, -16384
  %131 = inttoptr i32 %and.i.i.i.i.i.i158 to ptr
  %preempt_count.i.i.i.i.i159 = getelementptr inbounds %struct.thread_info, ptr %131, i32 0, i32 1
  %132 = ptrtoint ptr %preempt_count.i.i.i.i.i159 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load volatile i32, ptr %preempt_count.i.i.i.i.i159, align 4
  %sub.i.i.i.i160 = add i32 %133, -1
  store volatile i32 %sub.i.i.i.i160, ptr %preempt_count.i.i.i.i.i159, align 4
  %134 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load volatile i32, ptr %arrayidx.i, align 4
  %and1.i.i.i2.i161 = and i32 %135, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i2.i161)
  %tobool.not.i.i3.i162 = icmp eq i32 %and1.i.i.i2.i161, 0
  br i1 %tobool.not.i.i3.i162, label %do.body4.i.i4.i164, label %dm_exception_table_unlock.exit170, !prof !294

do.body4.i.i4.i164:                               ; preds = %hlist_bl_unlock.exit.i163
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/bit_spinlock.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #16, !srcloc !296
  unreachable

dm_exception_table_unlock.exit170:                ; preds = %hlist_bl_unlock.exit.i163
  %call.i.i.i.i5.i165 = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i, i32 noundef 4) #16
  %136 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i.i.i.i6.i166 = and i32 %137, -2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !297
  %138 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store volatile i32 %and.i.i.i.i6.i166, ptr %arrayidx.i, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !298
  %139 = call i32 @llvm.read_register.i32(metadata !280) #16
  %and.i.i.i.i.i7.i167 = and i32 %139, -16384
  %140 = inttoptr i32 %and.i.i.i.i.i7.i167 to ptr
  %preempt_count.i.i.i.i8.i168 = getelementptr inbounds %struct.thread_info, ptr %140, i32 0, i32 1
  %141 = ptrtoint ptr %preempt_count.i.i.i.i8.i168 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load volatile i32, ptr %preempt_count.i.i.i.i8.i168, align 4
  %sub.i.i.i9.i169 = add i32 %142, -1
  store volatile i32 %sub.i.i.i9.i169, ptr %preempt_count.i.i.i.i8.i168, align 4
  call void @up_read(ptr noundef %snap.0257) #16
  call void @down_write(ptr noundef %snap.0257) #16
  %143 = ptrtoint ptr %valid to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %valid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %tobool.not.i.i171 = icmp eq i32 %144, 0
  br i1 %tobool.not.i.i171, label %dm_exception_table_unlock.exit170.invalidate_snapshot.exit_crit_edge, label %if.end.i.i

dm_exception_table_unlock.exit170.invalidate_snapshot.exit_crit_edge: ; preds = %dm_exception_table_unlock.exit170
  call void @__sanitizer_cov_trace_pc() #18
  br label %invalidate_snapshot.exit

if.end.i.i:                                       ; preds = %dm_exception_table_unlock.exit170
  %call7.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #19
  %145 = ptrtoint ptr %store to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %store, align 4
  %147 = ptrtoint ptr %146 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %146, align 4
  %drop_snapshot.i.i = getelementptr inbounds %struct.dm_exception_store_type, ptr %148, i32 0, i32 9
  %149 = ptrtoint ptr %drop_snapshot.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %drop_snapshot.i.i, align 4
  %tobool10.not.i.i = icmp eq ptr %150, null
  br i1 %tobool10.not.i.i, label %if.end.i.i.if.end16.i.i_crit_edge, label %if.then11.i.i

if.end.i.i.if.end16.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void %150(ptr noundef %146) #16
  br label %if.end16.i.i

if.end16.i.i:                                     ; preds = %if.then11.i.i, %if.end.i.i.if.end16.i.i_crit_edge
  %151 = ptrtoint ptr %valid to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 0, ptr %valid, align 4
  %152 = ptrtoint ptr %ti to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %ti, align 8
  %154 = ptrtoint ptr %153 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %153, align 8
  call void @dm_table_event(ptr noundef %155) #16
  br label %invalidate_snapshot.exit

invalidate_snapshot.exit:                         ; preds = %if.end16.i.i, %dm_exception_table_unlock.exit170.invalidate_snapshot.exit_crit_edge
  call void @up_write(ptr noundef %snap.0257) #16
  br label %for.inc

if.else:                                          ; preds = %__lookup_pending_exception.exit126
  call void @__sanitizer_cov_trace_pc() #18
  %156 = ptrtoint ptr %snap.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %snap.i, align 8
  %pending_pool.i173 = getelementptr inbounds %struct.dm_snapshot, ptr %157, i32 0, i32 13
  call void @mempool_free(ptr noundef %call.i, ptr noundef %pending_pool.i173) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !312
  %pending_exceptions_count.i174 = getelementptr inbounds %struct.dm_snapshot, ptr %157, i32 0, i32 8
  %call.i.i.i175 = call zeroext i1 @__kasan_check_write(ptr noundef %pending_exceptions_count.i174, i32 noundef 4) #16
  call void @llvm.prefetch.p0(ptr %pending_exceptions_count.i174, i32 1, i32 3, i32 1) #16
  %158 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pending_exceptions_count.i174, ptr %pending_exceptions_count.i174, i32 1, ptr elementtype(i32) %pending_exceptions_count.i174) #16, !srcloc !313
  br label %if.end33

if.end33:                                         ; preds = %if.else, %if.end26.if.end33_crit_edge, %__lookup_pending_exception.exit.if.end33_crit_edge
  %pe.0 = phi ptr [ %pos.0.lcssa.i.i, %__lookup_pending_exception.exit.if.end33_crit_edge ], [ %pos.0.lcssa.i.i125, %if.else ], [ %call27, %if.end26.if.end33_crit_edge ]
  %tobool34.not = icmp eq ptr %bio.addr.0254, null
  br i1 %tobool34.not, label %if.end33.if.end40_crit_edge, label %if.then35

if.end33.if.end40_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end40

if.then35:                                        ; preds = %if.end33
  %159 = ptrtoint ptr %bio.addr.0254 to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr null, ptr %bio.addr.0254, align 8
  %tail.i = getelementptr inbounds %struct.dm_snap_pending_exception, ptr %pe.0, i32 0, i32 1, i32 1
  %160 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %tail.i, align 4
  %tobool.not.i176 = icmp eq ptr %161, null
  br i1 %tobool.not.i176, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #18
  %162 = ptrtoint ptr %161 to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %bio.addr.0254, ptr %161, align 8
  br label %bio_list_add.exit

if.else.i:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #18
  %origin_bios = getelementptr inbounds %struct.dm_snap_pending_exception, ptr %pe.0, i32 0, i32 1
  %163 = ptrtoint ptr %origin_bios to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr %bio.addr.0254, ptr %origin_bios, align 4
  br label %bio_list_add.exit

bio_list_add.exit:                                ; preds = %if.else.i, %if.then.i
  %164 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr %bio.addr.0254, ptr %tail.i, align 4
  %started = getelementptr inbounds %struct.dm_snap_pending_exception, ptr %pe.0, i32 0, i32 4
  %165 = ptrtoint ptr %started to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %started, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %166)
  %tobool36.not = icmp eq i32 %166, 0
  br i1 %tobool36.not, label %if.then37, label %bio_list_add.exit.if.end40_crit_edge

bio_list_add.exit.if.end40_crit_edge:             ; preds = %bio_list_add.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end40

if.then37:                                        ; preds = %bio_list_add.exit
  call void @__sanitizer_cov_trace_pc() #18
  %167 = ptrtoint ptr %started to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 1, ptr %started, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then37, %bio_list_add.exit.if.end40_crit_edge, %if.end33.if.end40_crit_edge
  %pe_to_start_last.1 = phi ptr [ %pe_to_start_last.0251, %bio_list_add.exit.if.end40_crit_edge ], [ %pe.0, %if.then37 ], [ %pe_to_start_last.0251, %if.end33.if.end40_crit_edge ]
  %started41 = getelementptr inbounds %struct.dm_snap_pending_exception, ptr %pe.0, i32 0, i32 4
  %168 = ptrtoint ptr %started41 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %started41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %169)
  %tobool42.not = icmp eq i32 %169, 0
  br i1 %tobool42.not, label %if.then43, label %if.end40.next_snapshot_crit_edge

if.end40.next_snapshot_crit_edge:                 ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #18
  br label %next_snapshot

if.then43:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #18
  %170 = ptrtoint ptr %started41 to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 1, ptr %started41, align 4
  br label %next_snapshot

next_snapshot:                                    ; preds = %if.then43, %if.end40.next_snapshot_crit_edge, %if.then25, %dm_lookup_exception.exit.next_snapshot_crit_edge, %lor.lhs.false.next_snapshot_crit_edge, %if.end5.next_snapshot_crit_edge
  %pe_to_start_now.1 = phi ptr [ null, %if.end40.next_snapshot_crit_edge ], [ %pe.0, %if.then43 ], [ null, %dm_lookup_exception.exit.next_snapshot_crit_edge ], [ null, %if.then25 ], [ null, %lor.lhs.false.next_snapshot_crit_edge ], [ null, %if.end5.next_snapshot_crit_edge ]
  %pe_to_start_last.2 = phi ptr [ %pe_to_start_last.1, %if.end40.next_snapshot_crit_edge ], [ %pe_to_start_last.1, %if.then43 ], [ %pe_to_start_last.0251, %dm_lookup_exception.exit.next_snapshot_crit_edge ], [ %pe_to_start_last.0251, %if.then25 ], [ %pe_to_start_last.0251, %lor.lhs.false.next_snapshot_crit_edge ], [ %pe_to_start_last.0251, %if.end5.next_snapshot_crit_edge ]
  %r.1 = phi i32 [ 0, %if.end40.next_snapshot_crit_edge ], [ 0, %if.then43 ], [ %r.0253, %dm_lookup_exception.exit.next_snapshot_crit_edge ], [ %r.0253, %if.then25 ], [ %r.0253, %lor.lhs.false.next_snapshot_crit_edge ], [ %r.0253, %if.end5.next_snapshot_crit_edge ]
  %bio.addr.2 = phi ptr [ null, %if.end40.next_snapshot_crit_edge ], [ null, %if.then43 ], [ %bio.addr.0254, %dm_lookup_exception.exit.next_snapshot_crit_edge ], [ %bio.addr.0254, %if.then25 ], [ %bio.addr.0254, %lor.lhs.false.next_snapshot_crit_edge ], [ %bio.addr.0254, %if.end5.next_snapshot_crit_edge ]
  %171 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %0, align 4
  %173 = ptrtoint ptr %172 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load volatile i32, ptr %172, align 4
  %and1.i.i.i.i178 = and i32 %174, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i178)
  %tobool.not.i.i.i179 = icmp eq i32 %and1.i.i.i.i178, 0
  br i1 %tobool.not.i.i.i179, label %do.body4.i.i.i180, label %hlist_bl_unlock.exit.i188, !prof !294

do.body4.i.i.i180:                                ; preds = %next_snapshot
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/bit_spinlock.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #16, !srcloc !296
  unreachable

hlist_bl_unlock.exit.i188:                        ; preds = %next_snapshot
  %call.i.i.i.i.i181 = call zeroext i1 @__kasan_check_write(ptr noundef %172, i32 noundef 4) #16
  %175 = ptrtoint ptr %172 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load volatile i32, ptr %172, align 4
  %and.i.i.i.i.i182 = and i32 %176, -2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !297
  %177 = ptrtoint ptr %172 to i32
  call void @__asan_store4_noabort(i32 %177)
  store volatile i32 %and.i.i.i.i.i182, ptr %172, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !298
  %178 = call i32 @llvm.read_register.i32(metadata !280) #16
  %and.i.i.i.i.i.i183 = and i32 %178, -16384
  %179 = inttoptr i32 %and.i.i.i.i.i.i183 to ptr
  %preempt_count.i.i.i.i.i184 = getelementptr inbounds %struct.thread_info, ptr %179, i32 0, i32 1
  %180 = ptrtoint ptr %preempt_count.i.i.i.i.i184 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load volatile i32, ptr %preempt_count.i.i.i.i.i184, align 4
  %sub.i.i.i.i185 = add i32 %181, -1
  store volatile i32 %sub.i.i.i.i185, ptr %preempt_count.i.i.i.i.i184, align 4
  %182 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %lock, align 4
  %184 = ptrtoint ptr %183 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load volatile i32, ptr %183, align 4
  %and1.i.i.i2.i186 = and i32 %185, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i2.i186)
  %tobool.not.i.i3.i187 = icmp eq i32 %and1.i.i.i2.i186, 0
  br i1 %tobool.not.i.i3.i187, label %do.body4.i.i4.i189, label %dm_exception_table_unlock.exit195, !prof !294

do.body4.i.i4.i189:                               ; preds = %hlist_bl_unlock.exit.i188
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/bit_spinlock.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #16, !srcloc !296
  unreachable

dm_exception_table_unlock.exit195:                ; preds = %hlist_bl_unlock.exit.i188
  %call.i.i.i.i5.i190 = call zeroext i1 @__kasan_check_write(ptr noundef %183, i32 noundef 4) #16
  %186 = ptrtoint ptr %183 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load volatile i32, ptr %183, align 4
  %and.i.i.i.i6.i191 = and i32 %187, -2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !297
  %188 = ptrtoint ptr %183 to i32
  call void @__asan_store4_noabort(i32 %188)
  store volatile i32 %and.i.i.i.i6.i191, ptr %183, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !298
  %189 = call i32 @llvm.read_register.i32(metadata !280) #16
  %and.i.i.i.i.i7.i192 = and i32 %189, -16384
  %190 = inttoptr i32 %and.i.i.i.i.i7.i192 to ptr
  %preempt_count.i.i.i.i8.i193 = getelementptr inbounds %struct.thread_info, ptr %190, i32 0, i32 1
  %191 = ptrtoint ptr %preempt_count.i.i.i.i8.i193 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load volatile i32, ptr %preempt_count.i.i.i.i8.i193, align 4
  %sub.i.i.i9.i194 = add i32 %192, -1
  store volatile i32 %sub.i.i.i9.i194, ptr %preempt_count.i.i.i.i8.i193, align 4
  call void @up_read(ptr noundef %snap.0257) #16
  %tobool47.not = icmp eq ptr %pe_to_start_now.1, null
  br i1 %tobool47.not, label %dm_exception_table_unlock.exit195.for.inc_crit_edge, label %if.then48

dm_exception_table_unlock.exit195.for.inc_crit_edge: ; preds = %dm_exception_table_unlock.exit195
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then48:                                        ; preds = %dm_exception_table_unlock.exit195
  call void @__sanitizer_cov_trace_pc() #18
  %snap.i196 = getelementptr inbounds %struct.dm_snap_pending_exception, ptr %pe_to_start_now.1, i32 0, i32 3
  %193 = ptrtoint ptr %snap.i196 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %snap.i196, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %src.i) #16
  %195 = ptrtoint ptr %src.i to i32
  call void @__asan_store8_noabort(i32 %195)
  store i64 -1, ptr %src.i, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %dest.i) #16
  %196 = ptrtoint ptr %dest.i to i32
  call void @__asan_store8_noabort(i32 %196)
  store i64 -1, ptr %dest.i, align 8
  %origin.i = getelementptr inbounds %struct.dm_snapshot, ptr %194, i32 0, i32 1
  %197 = ptrtoint ptr %origin.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %origin.i, align 8
  %199 = ptrtoint ptr %198 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %198, align 4
  %bd_nr_sectors.i.i.i = getelementptr inbounds %struct.block_device, ptr %200, i32 0, i32 1
  %201 = ptrtoint ptr %bd_nr_sectors.i.i.i to i32
  call void @__asan_load8_noabort(i32 %201)
  %202 = load i64, ptr %bd_nr_sectors.i.i.i, align 8
  %203 = ptrtoint ptr %src.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store ptr %200, ptr %src.i, align 8
  %store.i = getelementptr inbounds %struct.dm_snapshot, ptr %194, i32 0, i32 19
  %204 = ptrtoint ptr %store.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %store.i, align 4
  %old_chunk.i197 = getelementptr inbounds %struct.dm_exception, ptr %pe_to_start_now.1, i32 0, i32 1
  %206 = ptrtoint ptr %old_chunk.i197 to i32
  call void @__asan_load8_noabort(i32 %206)
  %207 = load i64, ptr %old_chunk.i197, align 8
  %chunk_shift.i.i = getelementptr inbounds %struct.dm_exception_store, ptr %205, i32 0, i32 4
  %208 = ptrtoint ptr %chunk_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %chunk_shift.i.i, align 4
  %sh_prom.i.i198 = zext i32 %209 to i64
  %shl.i.i = shl i64 %207, %sh_prom.i.i198
  %210 = ptrtoint ptr %sector.i to i32
  call void @__asan_store8_noabort(i32 %210)
  store i64 %shl.i.i, ptr %sector.i, align 8
  %chunk_size.i = getelementptr inbounds %struct.dm_exception_store, ptr %205, i32 0, i32 2
  %211 = ptrtoint ptr %chunk_size.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %chunk_size.i, align 4
  %conv.i = zext i32 %212 to i64
  %sub.i = sub i64 %202, %shl.i.i
  %213 = call i64 @llvm.umin.i64(i64 %sub.i, i64 %conv.i) #16
  %214 = ptrtoint ptr %count.i to i32
  call void @__asan_store8_noabort(i32 %214)
  store i64 %213, ptr %count.i, align 8
  %cow.i = getelementptr inbounds %struct.dm_snapshot, ptr %194, i32 0, i32 2
  %215 = ptrtoint ptr %cow.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %cow.i, align 4
  %217 = ptrtoint ptr %216 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %216, align 4
  %219 = ptrtoint ptr %dest.i to i32
  call void @__asan_store4_noabort(i32 %219)
  store ptr %218, ptr %dest.i, align 8
  %new_chunk.i = getelementptr inbounds %struct.dm_exception, ptr %pe_to_start_now.1, i32 0, i32 2
  %220 = ptrtoint ptr %new_chunk.i to i32
  call void @__asan_load8_noabort(i32 %220)
  %221 = load i64, ptr %new_chunk.i, align 8
  %222 = ptrtoint ptr %chunk_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %chunk_shift.i.i, align 4
  %sh_prom.i28.i = zext i32 %223 to i64
  %shl.i29.i = shl i64 %221, %sh_prom.i28.i
  %224 = ptrtoint ptr %sector12.i to i32
  call void @__asan_store8_noabort(i32 %224)
  store i64 %shl.i29.i, ptr %sector12.i, align 8
  %225 = ptrtoint ptr %count14.i to i32
  call void @__asan_store8_noabort(i32 %225)
  store i64 %213, ptr %count14.i, align 8
  %in_progress_wait.i.i = getelementptr inbounds %struct.dm_snapshot, ptr %194, i32 0, i32 21
  call void @_raw_spin_lock(ptr noundef %in_progress_wait.i.i) #16
  %in_progress.i.i = getelementptr inbounds %struct.dm_snapshot, ptr %194, i32 0, i32 20
  %226 = ptrtoint ptr %in_progress.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %in_progress.i.i, align 8
  %inc.i.i = add i32 %227, 1
  store i32 %inc.i.i, ptr %in_progress.i.i, align 8
  call void @_raw_spin_unlock(ptr noundef %in_progress_wait.i.i) #16
  %kcopyd_client.i = getelementptr inbounds %struct.dm_snapshot, ptr %194, i32 0, i32 22
  %228 = ptrtoint ptr %kcopyd_client.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %kcopyd_client.i, align 8
  call void @dm_kcopyd_copy(ptr noundef %229, ptr noundef nonnull %src.i, i32 noundef 1, ptr noundef nonnull %dest.i, i32 noundef 0, ptr noundef nonnull @copy_callback, ptr noundef nonnull %pe_to_start_now.1) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %dest.i) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %src.i) #16
  br label %for.inc

for.inc:                                          ; preds = %if.then48, %dm_exception_table_unlock.exit195.for.inc_crit_edge, %invalidate_snapshot.exit, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %pe_to_start_last.3 = phi ptr [ %pe_to_start_last.0251, %for.body.for.inc_crit_edge ], [ %pe_to_start_last.0251, %if.end.for.inc_crit_edge ], [ %pe_to_start_last.2, %if.then48 ], [ %pe_to_start_last.2, %dm_exception_table_unlock.exit195.for.inc_crit_edge ], [ %pe_to_start_last.0251, %invalidate_snapshot.exit ]
  %r.2 = phi i32 [ %r.0253, %for.body.for.inc_crit_edge ], [ %r.0253, %if.end.for.inc_crit_edge ], [ %r.1, %if.then48 ], [ %r.1, %dm_exception_table_unlock.exit195.for.inc_crit_edge ], [ %r.0253, %invalidate_snapshot.exit ]
  %bio.addr.3 = phi ptr [ %bio.addr.0254, %for.body.for.inc_crit_edge ], [ %bio.addr.0254, %if.end.for.inc_crit_edge ], [ %bio.addr.2, %if.then48 ], [ %bio.addr.2, %dm_exception_table_unlock.exit195.for.inc_crit_edge ], [ %bio.addr.0254, %invalidate_snapshot.exit ]
  %230 = ptrtoint ptr %.pn256 to i32
  call void @__asan_load4_noabort(i32 %230)
  %.pn = load ptr, ptr %.pn256, align 4
  %cmp.not = icmp eq ptr %.pn, %snapshots
  br i1 %cmp.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %for.inc
  %tobool55.not = icmp eq ptr %pe_to_start_last.3, null
  br i1 %tobool55.not, label %for.end.if.end57_crit_edge, label %if.then56

for.end.if.end57_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end57

if.then56:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  %snap.i201 = getelementptr inbounds %struct.dm_snap_pending_exception, ptr %pe_to_start_last.3, i32 0, i32 3
  %231 = ptrtoint ptr %snap.i201 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %snap.i201, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %src.i199) #16
  %233 = ptrtoint ptr %src.i199 to i32
  call void @__asan_store8_noabort(i32 %233)
  store i64 -1, ptr %src.i199, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %dest.i200) #16
  %234 = ptrtoint ptr %dest.i200 to i32
  call void @__asan_store8_noabort(i32 %234)
  store i64 -1, ptr %dest.i200, align 8
  %origin.i202 = getelementptr inbounds %struct.dm_snapshot, ptr %232, i32 0, i32 1
  %235 = ptrtoint ptr %origin.i202 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %origin.i202, align 8
  %237 = ptrtoint ptr %236 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %236, align 4
  %bd_nr_sectors.i.i.i203 = getelementptr inbounds %struct.block_device, ptr %238, i32 0, i32 1
  %239 = ptrtoint ptr %bd_nr_sectors.i.i.i203 to i32
  call void @__asan_load8_noabort(i32 %239)
  %240 = load i64, ptr %bd_nr_sectors.i.i.i203, align 8
  %241 = ptrtoint ptr %src.i199 to i32
  call void @__asan_store4_noabort(i32 %241)
  store ptr %238, ptr %src.i199, align 8
  %store.i204 = getelementptr inbounds %struct.dm_snapshot, ptr %232, i32 0, i32 19
  %242 = ptrtoint ptr %store.i204 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %store.i204, align 4
  %old_chunk.i205 = getelementptr inbounds %struct.dm_exception, ptr %pe_to_start_last.3, i32 0, i32 1
  %244 = ptrtoint ptr %old_chunk.i205 to i32
  call void @__asan_load8_noabort(i32 %244)
  %245 = load i64, ptr %old_chunk.i205, align 8
  %chunk_shift.i.i206 = getelementptr inbounds %struct.dm_exception_store, ptr %243, i32 0, i32 4
  %246 = ptrtoint ptr %chunk_shift.i.i206 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %chunk_shift.i.i206, align 4
  %sh_prom.i.i207 = zext i32 %247 to i64
  %shl.i.i208 = shl i64 %245, %sh_prom.i.i207
  %sector.i209 = getelementptr inbounds %struct.dm_io_region, ptr %src.i199, i32 0, i32 1
  %248 = ptrtoint ptr %sector.i209 to i32
  call void @__asan_store8_noabort(i32 %248)
  store i64 %shl.i.i208, ptr %sector.i209, align 8
  %chunk_size.i210 = getelementptr inbounds %struct.dm_exception_store, ptr %243, i32 0, i32 2
  %249 = ptrtoint ptr %chunk_size.i210 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %chunk_size.i210, align 4
  %conv.i211 = zext i32 %250 to i64
  %sub.i212 = sub i64 %240, %shl.i.i208
  %251 = call i64 @llvm.umin.i64(i64 %sub.i212, i64 %conv.i211) #16
  %count.i213 = getelementptr inbounds %struct.dm_io_region, ptr %src.i199, i32 0, i32 2
  %252 = ptrtoint ptr %count.i213 to i32
  call void @__asan_store8_noabort(i32 %252)
  store i64 %251, ptr %count.i213, align 8
  %cow.i214 = getelementptr inbounds %struct.dm_snapshot, ptr %232, i32 0, i32 2
  %253 = ptrtoint ptr %cow.i214 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %cow.i214, align 4
  %255 = ptrtoint ptr %254 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %254, align 4
  %257 = ptrtoint ptr %dest.i200 to i32
  call void @__asan_store4_noabort(i32 %257)
  store ptr %256, ptr %dest.i200, align 8
  %new_chunk.i215 = getelementptr inbounds %struct.dm_exception, ptr %pe_to_start_last.3, i32 0, i32 2
  %258 = ptrtoint ptr %new_chunk.i215 to i32
  call void @__asan_load8_noabort(i32 %258)
  %259 = load i64, ptr %new_chunk.i215, align 8
  %260 = ptrtoint ptr %chunk_shift.i.i206 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %chunk_shift.i.i206, align 4
  %sh_prom.i28.i216 = zext i32 %261 to i64
  %shl.i29.i217 = shl i64 %259, %sh_prom.i28.i216
  %sector12.i218 = getelementptr inbounds %struct.dm_io_region, ptr %dest.i200, i32 0, i32 1
  %262 = ptrtoint ptr %sector12.i218 to i32
  call void @__asan_store8_noabort(i32 %262)
  store i64 %shl.i29.i217, ptr %sector12.i218, align 8
  %count14.i219 = getelementptr inbounds %struct.dm_io_region, ptr %dest.i200, i32 0, i32 2
  %263 = ptrtoint ptr %count14.i219 to i32
  call void @__asan_store8_noabort(i32 %263)
  store i64 %251, ptr %count14.i219, align 8
  %in_progress_wait.i.i220 = getelementptr inbounds %struct.dm_snapshot, ptr %232, i32 0, i32 21
  call void @_raw_spin_lock(ptr noundef %in_progress_wait.i.i220) #16
  %in_progress.i.i221 = getelementptr inbounds %struct.dm_snapshot, ptr %232, i32 0, i32 20
  %264 = ptrtoint ptr %in_progress.i.i221 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %in_progress.i.i221, align 8
  %inc.i.i222 = add i32 %265, 1
  store i32 %inc.i.i222, ptr %in_progress.i.i221, align 8
  call void @_raw_spin_unlock(ptr noundef %in_progress_wait.i.i220) #16
  %kcopyd_client.i223 = getelementptr inbounds %struct.dm_snapshot, ptr %232, i32 0, i32 22
  %266 = ptrtoint ptr %kcopyd_client.i223 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %kcopyd_client.i223, align 8
  call void @dm_kcopyd_copy(ptr noundef %267, ptr noundef nonnull %src.i199, i32 noundef 1, ptr noundef nonnull %dest.i200, i32 noundef 0, ptr noundef nonnull @copy_callback, ptr noundef nonnull %pe_to_start_last.3) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %dest.i200) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %src.i199) #16
  br label %if.end57

if.end57:                                         ; preds = %if.then56, %for.end.if.end57_crit_edge, %entry.if.end57_crit_edge
  %r.0.lcssa268 = phi i32 [ %r.2, %if.then56 ], [ %r.2, %for.end.if.end57_crit_edge ], [ 1, %entry.if.end57_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %lock) #16
  ret i32 %r.0.lcssa268
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @dm_table_get_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_kcopyd_do_callback(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_kcopyd_copy(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_suspended(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_table_get_md(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_hold(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_internal_suspend_fast(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_internal_resume_fast(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snapshot_merge_next_chunks(ptr noundef %s) unnamed_addr #3 align 64 {
entry:
  %old_chunk = alloca i64, align 8
  %new_chunk = alloca i64, align 8
  %src = alloca %struct.dm_io_region, align 8
  %dest = alloca %struct.dm_io_region, align 8
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %old_chunk) #16
  %0 = ptrtoint ptr %old_chunk to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %old_chunk, align 8, !annotation !290
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %new_chunk) #16
  %1 = ptrtoint ptr %new_chunk to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %new_chunk, align 8, !annotation !290
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %src) #16
  %2 = ptrtoint ptr %src to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %src, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %dest) #16
  %3 = ptrtoint ptr %dest to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %dest, align 8
  %state_bits = getelementptr inbounds %struct.dm_snapshot, ptr %s, i32 0, i32 23
  %4 = ptrtoint ptr %state_bits to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state_bits, align 4
  %and1.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !294

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-snap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1051, 0\0A.popsection", ""() #16, !srcloc !317
  unreachable

do.end9:                                          ; preds = %entry
  %6 = ptrtoint ptr %state_bits to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state_bits, align 4
  %8 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool12.not = icmp eq i32 %8, 0
  br i1 %tobool12.not, label %if.end20, label %do.end9.shut_crit_edge, !prof !292

do.end9.shut_crit_edge:                           ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %shut

if.end20:                                         ; preds = %do.end9
  %valid = getelementptr inbounds %struct.dm_snapshot, ptr %s, i32 0, i32 5
  %9 = ptrtoint ptr %valid to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %valid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool21.not = icmp eq i32 %10, 0
  br i1 %tobool21.not, label %do.end25, label %if.end27

do.end25:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50) #19
  br label %shut

if.end27:                                         ; preds = %if.end20
  %store = getelementptr inbounds %struct.dm_snapshot, ptr %s, i32 0, i32 19
  %11 = ptrtoint ptr %store to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %store, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %prepare_merge = getelementptr inbounds %struct.dm_exception_store_type, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %prepare_merge to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prepare_merge, align 4
  %call29 = call i32 %16(ptr noundef %12, ptr noundef nonnull %old_chunk, ptr noundef nonnull %new_chunk) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call29)
  %cmp = icmp slt i32 %call29, 1
  br i1 %cmp, label %if.then30, label %if.end40

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp31 = icmp slt i32 %call29, 0
  br i1 %cmp31, label %do.end35, label %if.then30.shut_crit_edge

if.then30.shut_crit_edge:                         ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #18
  br label %shut

do.end35:                                         ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #18
  %call37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53) #19
  call void @down_write(ptr noundef %s) #16
  %merge_failed = getelementptr inbounds %struct.dm_snapshot, ptr %s, i32 0, i32 26
  %17 = ptrtoint ptr %merge_failed to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load = load i8, ptr %merge_failed, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %merge_failed, align 4
  call void @up_write(ptr noundef %s) #16
  br label %shut

if.end40:                                         ; preds = %if.end27
  %18 = ptrtoint ptr %old_chunk to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %old_chunk, align 8
  %conv152 = zext i32 %call29 to i64
  %add = sub nsw i64 1, %conv152
  %sub = add i64 %add, %19
  store i64 %sub, ptr %old_chunk, align 8
  %20 = ptrtoint ptr %new_chunk to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %new_chunk, align 8
  %sub43 = add i64 %add, %21
  store i64 %sub43, ptr %new_chunk, align 8
  %22 = ptrtoint ptr %store to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %store, align 4
  %chunk_size = getelementptr inbounds %struct.dm_exception_store, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %chunk_size to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %chunk_size, align 4
  %mul = mul i32 %25, %call29
  %conv45 = zext i32 %mul to i64
  %origin = getelementptr inbounds %struct.dm_snapshot, ptr %s, i32 0, i32 1
  %26 = ptrtoint ptr %origin to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %origin, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %30 = ptrtoint ptr %dest to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %dest, align 8
  %chunk_shift.i = getelementptr inbounds %struct.dm_exception_store, ptr %23, i32 0, i32 4
  %31 = ptrtoint ptr %chunk_shift.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %chunk_shift.i, align 4
  %sh_prom.i = zext i32 %32 to i64
  %shl.i = shl i64 %sub, %sh_prom.i
  %sector = getelementptr inbounds %struct.dm_io_region, ptr %dest, i32 0, i32 1
  %33 = ptrtoint ptr %sector to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %shl.i, ptr %sector, align 8
  %bd_nr_sectors.i.i = getelementptr inbounds %struct.block_device, ptr %29, i32 0, i32 1
  %34 = ptrtoint ptr %bd_nr_sectors.i.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %bd_nr_sectors.i.i, align 8
  %sub52 = sub i64 %35, %shl.i
  %36 = call i64 @llvm.umin.i64(i64 %sub52, i64 %conv45)
  %count = getelementptr inbounds %struct.dm_io_region, ptr %dest, i32 0, i32 2
  %37 = ptrtoint ptr %count to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %36, ptr %count, align 8
  %cow = getelementptr inbounds %struct.dm_snapshot, ptr %s, i32 0, i32 2
  %38 = ptrtoint ptr %cow to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cow, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %42 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %41, ptr %src, align 8
  %43 = ptrtoint ptr %chunk_shift.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %chunk_shift.i, align 4
  %sh_prom.i143 = zext i32 %44 to i64
  %shl.i144 = shl i64 %sub43, %sh_prom.i143
  %sector60 = getelementptr inbounds %struct.dm_io_region, ptr %src, i32 0, i32 1
  %45 = ptrtoint ptr %sector60 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %shl.i144, ptr %sector60, align 8
  %count62 = getelementptr inbounds %struct.dm_io_region, ptr %src, i32 0, i32 2
  %46 = ptrtoint ptr %count62 to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %36, ptr %count62, align 8
  call void @_raw_spin_lock(ptr noundef nonnull @_pending_exceptions_done_spinlock) #16
  %47 = load i64, ptr @_pending_exceptions_done_count, align 8
  call void @_raw_spin_unlock(ptr noundef nonnull @_pending_exceptions_done_spinlock) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp12.not.i = icmp eq i32 %mul, 0
  %ti.i = getelementptr inbounds %struct.dm_snapshot, ptr %s, i32 0, i32 3
  br label %while.cond

while.cond:                                       ; preds = %do.end88, %if.end40
  %previous_count.0 = phi i64 [ %47, %if.end40 ], [ %68, %do.end88 ]
  %48 = ptrtoint ptr %sector to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %sector, align 8
  call void @down_read(ptr noundef nonnull @_origins_lock) #16
  %50 = ptrtoint ptr %origin to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %origin, align 8
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 4
  %54 = load ptr, ptr @_origins, align 4
  %bd_dev.i.i.i = getelementptr inbounds %struct.block_device, ptr %53, i32 0, i32 5
  %55 = ptrtoint ptr %bd_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %bd_dev.i.i.i, align 4
  %and.i.i.i = and i32 %56, 255
  %arrayidx.i.i = getelementptr %struct.list_head, ptr %54, i32 %and.i.i.i
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %while.cond
  %.pn.in.i.i = phi ptr [ %arrayidx.i.i, %while.cond ], [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %57 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %arrayidx.i.i
  br i1 %cmp.not.i.i, label %for.cond.i.i.__lookup_origin.exit.i_crit_edge, label %for.body.i.i

for.cond.i.i.__lookup_origin.exit.i_crit_edge:    ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__lookup_origin.exit.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %o.0.i.i = getelementptr i8, ptr %.pn.i.i, i32 -4
  %58 = ptrtoint ptr %o.0.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %o.0.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %59, %53
  br i1 %cmp.i.not.i.i, label %__lookup_origin.exit.i.split.loop.exit160, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i.i

__lookup_origin.exit.i.split.loop.exit160:        ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %o.0.i.i.le = getelementptr i8, ptr %.pn.i.i, i32 -4
  br label %__lookup_origin.exit.i

__lookup_origin.exit.i:                           ; preds = %__lookup_origin.exit.i.split.loop.exit160, %for.cond.i.i.__lookup_origin.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %o.0.i.i.le, %__lookup_origin.exit.i.split.loop.exit160 ], [ null, %for.cond.i.i.__lookup_origin.exit.i_crit_edge ]
  br i1 %cmp12.not.i, label %origin_write_extent.exit.thread, label %for.body.lr.ph.i

origin_write_extent.exit.thread:                  ; preds = %__lookup_origin.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @up_read(ptr noundef nonnull @_origins_lock) #16
  br label %while.end

for.body.lr.ph.i:                                 ; preds = %__lookup_origin.exit.i
  %snapshots.i = getelementptr inbounds %struct.origin, ptr %retval.0.i.i, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %n.014.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %add6.i, %for.body.i.for.body.i_crit_edge ]
  %must_wait.013.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %spec.select.i, %for.body.i.for.body.i_crit_edge ]
  %add.i = add i64 %n.014.i, %49
  %call2.i = call fastcc i32 @__origin_write(ptr noundef %snapshots.i, i64 noundef %add.i, ptr noundef null) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp eq i32 %call2.i, 0
  %spec.select.i = select i1 %cmp3.i, i32 1, i32 %must_wait.013.i
  %60 = ptrtoint ptr %ti.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ti.i, align 8
  %max_io_len.i = getelementptr inbounds %struct.dm_target, ptr %61, i32 0, i32 4
  %62 = ptrtoint ptr %max_io_len.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %max_io_len.i, align 8
  %conv5.i = zext i32 %63 to i64
  %add6.i = add i64 %n.014.i, %conv5.i
  %cmp.i = icmp ult i64 %add6.i, %conv45
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %origin_write_extent.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

origin_write_extent.exit:                         ; preds = %for.body.i
  call void @up_read(ptr noundef nonnull @_origins_lock) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %tobool67.not = icmp eq i32 %spec.select.i, 0
  br i1 %tobool67.not, label %origin_write_extent.exit.while.end_crit_edge, label %do.body69

origin_write_extent.exit.while.end_crit_edge:     ; preds = %origin_write_extent.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

do.body69:                                        ; preds = %origin_write_extent.exit
  call void @__might_sleep(ptr noundef nonnull @.str.23, i32 noundef 1107) #16
  call void @_raw_spin_lock(ptr noundef nonnull @_pending_exceptions_done_spinlock) #16
  %64 = load i64, ptr @_pending_exceptions_done_count, align 8
  call void @_raw_spin_unlock(ptr noundef nonnull @_pending_exceptions_done_spinlock) #16
  call void @__sanitizer_cov_trace_cmp8(i64 %64, i64 %previous_count.0)
  %cmp76.not = icmp eq i64 %64, %previous_count.0
  br i1 %cmp76.not, label %if.end79, label %do.body69.do.end88_crit_edge

do.body69.do.end88_crit_edge:                     ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end88

if.end79:                                         ; preds = %do.body69
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #16
  %65 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #16
  %call80155 = call i32 @prepare_to_wait_event(ptr noundef nonnull @_pending_exceptions_done, ptr noundef nonnull %__wq_entry, i32 noundef 2) #16
  call void @_raw_spin_lock(ptr noundef nonnull @_pending_exceptions_done_spinlock) #16
  %66 = load i64, ptr @_pending_exceptions_done_count, align 8
  call void @_raw_spin_unlock(ptr noundef nonnull @_pending_exceptions_done_spinlock) #16
  call void @__sanitizer_cov_trace_cmp8(i64 %66, i64 %previous_count.0)
  %cmp82.not156 = icmp eq i64 %66, %previous_count.0
  br i1 %cmp82.not156, label %if.end79.cleanup_crit_edge, label %if.end79.for.end_crit_edge

if.end79.for.end_crit_edge:                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

if.end79.cleanup_crit_edge:                       ; preds = %if.end79
  br label %cleanup

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end79.cleanup_crit_edge
  call void @schedule() #16
  %call80 = call i32 @prepare_to_wait_event(ptr noundef nonnull @_pending_exceptions_done, ptr noundef nonnull %__wq_entry, i32 noundef 2) #16
  call void @_raw_spin_lock(ptr noundef nonnull @_pending_exceptions_done_spinlock) #16
  %67 = load i64, ptr @_pending_exceptions_done_count, align 8
  call void @_raw_spin_unlock(ptr noundef nonnull @_pending_exceptions_done_spinlock) #16
  %cmp82.not = icmp eq i64 %67, %previous_count.0
  br i1 %cmp82.not, label %cleanup.cleanup_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end79.for.end_crit_edge
  call void @finish_wait(ptr noundef nonnull @_pending_exceptions_done, ptr noundef nonnull %__wq_entry) #16
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #16
  br label %do.end88

do.end88:                                         ; preds = %for.end, %do.body69.do.end88_crit_edge
  call void @_raw_spin_lock(ptr noundef nonnull @_pending_exceptions_done_spinlock) #16
  %68 = load i64, ptr @_pending_exceptions_done_count, align 8
  call void @_raw_spin_unlock(ptr noundef nonnull @_pending_exceptions_done_spinlock) #16
  br label %while.cond

while.end:                                        ; preds = %origin_write_extent.exit.while.end_crit_edge, %origin_write_extent.exit.thread
  call void @down_write(ptr noundef %s) #16
  %69 = ptrtoint ptr %old_chunk to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %old_chunk, align 8
  %first_merging_chunk = getelementptr inbounds %struct.dm_snapshot, ptr %s, i32 0, i32 24
  %71 = ptrtoint ptr %first_merging_chunk to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %70, ptr %first_merging_chunk, align 8
  %num_merging_chunks = getelementptr inbounds %struct.dm_snapshot, ptr %s, i32 0, i32 25
  %72 = ptrtoint ptr %num_merging_chunks to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %call29, ptr %num_merging_chunks, align 8
  call void @up_write(ptr noundef %s) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp93157 = icmp sgt i32 %call29, 0
  br i1 %cmp93157, label %for.body.lr.ph, label %while.end.for.end97_crit_edge

while.end.for.end97_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end97

for.body.lr.ph:                                   ; preds = %while.end
  %tracked_chunk_lock.i.i = getelementptr inbounds %struct.dm_snapshot, ptr %s, i32 0, i32 17
  br label %for.body

for.body:                                         ; preds = %__check_for_conflicting_io.exit.for.body_crit_edge, %for.body.lr.ph
  %i.0158 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %__check_for_conflicting_io.exit.for.body_crit_edge ]
  %73 = ptrtoint ptr %old_chunk to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %old_chunk, align 8
  %conv95 = zext i32 %i.0158 to i64
  %add96 = add i64 %74, %conv95
  %conv.i.i = trunc i64 %add96 to i32
  %and.i.i = and i32 %conv.i.i, 15
  %arrayidx.i.i145 = getelementptr %struct.dm_snapshot, ptr %s, i32 0, i32 18, i32 %and.i.i
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i, %for.body
  call void @_raw_spin_lock_irq(ptr noundef %tracked_chunk_lock.i.i) #16
  br label %for.cond.i.i146

for.cond.i.i146:                                  ; preds = %for.body.i.i147.for.cond.i.i146_crit_edge, %while.cond.i
  %c.0.in.i.i = phi ptr [ %arrayidx.i.i145, %while.cond.i ], [ %c.0.i.i, %for.body.i.i147.for.cond.i.i146_crit_edge ]
  %75 = ptrtoint ptr %c.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %c.0.i.i = load ptr, ptr %c.0.in.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %c.0.i.i, null
  br i1 %tobool2.not.i.i, label %__check_for_conflicting_io.exit, label %for.body.i.i147

for.body.i.i147:                                  ; preds = %for.cond.i.i146
  %chunk3.i.i = getelementptr inbounds %struct.dm_snap_tracked_chunk, ptr %c.0.i.i, i32 0, i32 1
  %76 = ptrtoint ptr %chunk3.i.i to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %chunk3.i.i, align 8
  %cmp.i.i = icmp eq i64 %77, %add96
  br i1 %cmp.i.i, label %while.body.i, label %for.body.i.i147.for.cond.i.i146_crit_edge

for.body.i.i147.for.cond.i.i146_crit_edge:        ; preds = %for.body.i.i147
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i.i146

while.body.i:                                     ; preds = %for.body.i.i147
  call void @__sanitizer_cov_trace_pc() #18
  call void @_raw_spin_unlock_irq(ptr noundef %tracked_chunk_lock.i.i) #16
  call void @msleep(i32 noundef 1) #16
  br label %while.cond.i

__check_for_conflicting_io.exit:                  ; preds = %for.cond.i.i146
  call void @_raw_spin_unlock_irq(ptr noundef %tracked_chunk_lock.i.i) #16
  %inc = add nuw nsw i32 %i.0158, 1
  %exitcond.not = icmp eq i32 %inc, %call29
  br i1 %exitcond.not, label %__check_for_conflicting_io.exit.for.end97_crit_edge, label %__check_for_conflicting_io.exit.for.body_crit_edge

__check_for_conflicting_io.exit.for.body_crit_edge: ; preds = %__check_for_conflicting_io.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

__check_for_conflicting_io.exit.for.end97_crit_edge: ; preds = %__check_for_conflicting_io.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end97

for.end97:                                        ; preds = %__check_for_conflicting_io.exit.for.end97_crit_edge, %while.end.for.end97_crit_edge
  %kcopyd_client = getelementptr inbounds %struct.dm_snapshot, ptr %s, i32 0, i32 22
  %78 = ptrtoint ptr %kcopyd_client to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %kcopyd_client, align 8
  call void @dm_kcopyd_copy(ptr noundef %79, ptr noundef nonnull %src, i32 noundef 1, ptr noundef nonnull %dest, i32 noundef 0, ptr noundef nonnull @merge_callback, ptr noundef %s) #16
  br label %cleanup98

shut:                                             ; preds = %do.end35, %if.then30.shut_crit_edge, %do.end25, %do.end9.shut_crit_edge
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %state_bits, i32 noundef 4) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !318
  call void @llvm.prefetch.p0(ptr %state_bits, i32 1, i32 3, i32 1) #16
  %80 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %state_bits, ptr %state_bits, i32 1, ptr elementtype(i32) %state_bits) #16, !srcloc !319
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !320
  call void @wake_up_bit(ptr noundef %state_bits, i32 noundef 0) #16
  br label %cleanup98

cleanup98:                                        ; preds = %shut, %for.end97
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %dest) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %src) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %new_chunk) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %old_chunk) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @merge_callback(i32 noundef %read_err, i32 noundef %write_err, ptr noundef %context) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = or i32 %write_err, %read_err
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %if.end9, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %read_err)
  %tobool.not = icmp eq i32 %read_err, 0
  br i1 %tobool.not, label %do.end6, label %do.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55) #19
  br label %shut

do.end6:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58) #19
  br label %shut

if.end9:                                          ; preds = %entry
  %flush_bio1.i = getelementptr inbounds %struct.dm_snapshot, ptr %context, i32 0, i32 28
  tail call void @bio_reset(ptr noundef %flush_bio1.i) #16
  %origin.i = getelementptr inbounds %struct.dm_snapshot, ptr %context, i32 0, i32 1
  %2 = ptrtoint ptr %origin.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %origin.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %bi_flags.i.i.i = getelementptr inbounds %struct.dm_snapshot, ptr %context, i32 0, i32 28, i32 3
  %6 = ptrtoint ptr %bi_flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %bi_flags.i.i.i, align 4
  %conv1.i.i.i = and i16 %7, -2049
  store i16 %conv1.i.i.i, ptr %bi_flags.i.i.i, align 4
  %bi_bdev.i.i = getelementptr inbounds %struct.dm_snapshot, ptr %context, i32 0, i32 28, i32 1
  %8 = ptrtoint ptr %bi_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bi_bdev.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %9, %5
  br i1 %cmp.not.i.i, label %if.end9.flush_data.exit_crit_edge, label %if.then.i.i

if.end9.flush_data.exit_crit_edge:                ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %flush_data.exit

if.then.i.i:                                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  %conv1.i8.i.i = and i16 %7, -2177
  %10 = ptrtoint ptr %bi_flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv1.i8.i.i, ptr %bi_flags.i.i.i, align 4
  br label %flush_data.exit

flush_data.exit:                                  ; preds = %if.then.i.i, %if.end9.flush_data.exit_crit_edge
  %11 = ptrtoint ptr %bi_bdev.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %5, ptr %bi_bdev.i.i, align 4
  tail call void @bio_associate_blkg(ptr noundef %flush_bio1.i) #16
  %bi_opf.i = getelementptr inbounds %struct.dm_snapshot, ptr %context, i32 0, i32 28, i32 2
  %12 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 262145, ptr %bi_opf.i, align 8
  %call.i = tail call i32 @submit_bio_wait(ptr noundef %flush_bio1.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end14, label %if.end17

do.end14:                                         ; preds = %flush_data.exit
  call void @__sanitizer_cov_trace_pc() #18
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61) #19
  br label %shut

if.end17:                                         ; preds = %flush_data.exit
  %store = getelementptr inbounds %struct.dm_snapshot, ptr %context, i32 0, i32 19
  %13 = ptrtoint ptr %store to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %store, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %commit_merge = getelementptr inbounds %struct.dm_exception_store_type, ptr %16, i32 0, i32 8
  %17 = ptrtoint ptr %commit_merge to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %commit_merge, align 4
  %num_merging_chunks = getelementptr inbounds %struct.dm_snapshot, ptr %context, i32 0, i32 25
  %19 = ptrtoint ptr %num_merging_chunks to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_merging_chunks, align 8
  %call19 = tail call i32 %18(ptr noundef %14, i32 noundef %20) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %do.end24, label %if.end27

do.end24:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #18
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64) #19
  br label %shut

if.end27:                                         ; preds = %if.end17
  %first_merging_chunk.i = getelementptr inbounds %struct.dm_snapshot, ptr %context, i32 0, i32 24
  %21 = ptrtoint ptr %first_merging_chunk.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %first_merging_chunk.i, align 8
  %23 = ptrtoint ptr %num_merging_chunks to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_merging_chunks, align 8
  %conv.i = sext i32 %24 to i64
  %add.i = add i64 %22, %conv.i
  tail call void @down_write(ptr noundef %context) #16
  %complete.i.i = getelementptr inbounds %struct.dm_snapshot, ptr %context, i32 0, i32 15
  %table.i.i.i = getelementptr inbounds %struct.dm_snapshot, ptr %context, i32 0, i32 15, i32 2
  %hash_shift.i.i.i.i = getelementptr inbounds %struct.dm_snapshot, ptr %context, i32 0, i32 15, i32 1
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %if.end27
  %old_chunk.0.in.i = phi i64 [ %add.i, %if.end27 ], [ %old_chunk.0.i, %do.cond.i.do.body.i_crit_edge ]
  %old_chunk.0.i = add i64 %old_chunk.0.in.i, -1
  %25 = ptrtoint ptr %table.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %table.i.i.i, align 4
  %27 = ptrtoint ptr %hash_shift.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %hash_shift.i.i.i.i, align 4
  %sh_prom.i.i.i.i = zext i32 %28 to i64
  %shr.i.i.i.i = lshr i64 %old_chunk.0.i, %sh_prom.i.i.i.i
  %29 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %complete.i.i, align 4
  %31 = trunc i64 %shr.i.i.i.i to i32
  %conv1.i.i.i.i = and i32 %30, %31
  %arrayidx.i.i.i = getelementptr %struct.hlist_bl_head, ptr %26, i32 %conv1.i.i.i.i
  %32 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.i.i.i, align 4
  %34 = ptrtoint ptr %33 to i32
  %and.i.i.i.i = and i32 %34, -2
  %35 = inttoptr i32 %and.i.i.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not19.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not19.i.i.i, label %do.body.i.dm_lookup_exception.exit.i.i_crit_edge, label %do.body.i.for.body.i.i.i_crit_edge

do.body.i.for.body.i.i.i_crit_edge:               ; preds = %do.body.i
  br label %for.body.i.i.i

do.body.i.dm_lookup_exception.exit.i.i_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %dm_lookup_exception.exit.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %do.body.i.for.body.i.i.i_crit_edge
  %pos.020.i.i.i = phi ptr [ %41, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %35, %do.body.i.for.body.i.i.i_crit_edge ]
  %old_chunk.i.i.i = getelementptr inbounds %struct.dm_exception, ptr %pos.020.i.i.i, i32 0, i32 1
  %36 = ptrtoint ptr %old_chunk.i.i.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %old_chunk.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %37, i64 %old_chunk.0.i)
  %cmp.not.i.i.i = icmp ugt i64 %37, %old_chunk.0.i
  br i1 %cmp.not.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge, label %land.lhs.true.i.i.i

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i.i.i

land.lhs.true.i.i.i:                              ; preds = %for.body.i.i.i
  %new_chunk.i.i.i.i = getelementptr inbounds %struct.dm_exception, ptr %pos.020.i.i.i, i32 0, i32 2
  %38 = ptrtoint ptr %new_chunk.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %new_chunk.i.i.i.i, align 8
  %shr.i18.i.i.i = lshr i64 %39, 56
  %add.i.i.i = add i64 %shr.i18.i.i.i, %37
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i.i, i64 %old_chunk.0.i)
  %cmp6.not.i.i.i = icmp ult i64 %add.i.i.i, %old_chunk.0.i
  br i1 %cmp6.not.i.i.i, label %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge, label %land.lhs.true.i.i.i.dm_lookup_exception.exit.i.i_crit_edge

land.lhs.true.i.i.i.dm_lookup_exception.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %dm_lookup_exception.exit.i.i

land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %40 = ptrtoint ptr %pos.020.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pos.020.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %41, null
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i.do.end.i.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i.i

for.inc.i.i.i.do.end.i.i_crit_edge:               ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i.i

dm_lookup_exception.exit.i.i:                     ; preds = %land.lhs.true.i.i.i.dm_lookup_exception.exit.i.i_crit_edge, %do.body.i.dm_lookup_exception.exit.i.i_crit_edge
  %pos.0.lcssa.i.i.i = phi ptr [ %35, %do.body.i.dm_lookup_exception.exit.i.i_crit_edge ], [ %pos.020.i.i.i, %land.lhs.true.i.i.i.dm_lookup_exception.exit.i.i_crit_edge ]
  %tobool.not.i.i = icmp eq ptr %pos.0.lcssa.i.i.i, null
  br i1 %tobool.not.i.i, label %dm_lookup_exception.exit.i.i.do.end.i.i_crit_edge, label %if.end.i.i

dm_lookup_exception.exit.i.i.do.end.i.i_crit_edge: ; preds = %dm_lookup_exception.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %dm_lookup_exception.exit.i.i.do.end.i.i_crit_edge, %for.inc.i.i.i.do.end.i.i_crit_edge
  %call1.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, i64 noundef %old_chunk.0.i) #19
  br label %remove_single_exception_chunk.exit

if.end.i.i:                                       ; preds = %dm_lookup_exception.exit.i.i
  %new_chunk.i.i.i = getelementptr inbounds %struct.dm_exception, ptr %pos.0.lcssa.i.i.i, i32 0, i32 2
  %42 = ptrtoint ptr %new_chunk.i.i.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %new_chunk.i.i.i, align 8
  %shr.i.i.i = lshr i64 %43, 56
  call void @__sanitizer_cov_trace_const_cmp8(i64 72057594037927936, i64 %43)
  %tobool3.not.i.i = icmp ult i64 %43, 72057594037927936
  br i1 %tobool3.not.i.i, label %if.then4.i.i, label %if.end5.i.i

if.then4.i.i:                                     ; preds = %if.end.i.i
  %44 = ptrtoint ptr %pos.0.lcssa.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pos.0.lcssa.i.i.i, align 4
  %pprev2.i.i.i.i.i = getelementptr inbounds %struct.hlist_bl_node, ptr %pos.0.lcssa.i.i.i, i32 0, i32 1
  %46 = ptrtoint ptr %pprev2.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pprev2.i.i.i.i.i, align 4
  %48 = ptrtoint ptr %pos.0.lcssa.i.i.i to i32
  %and.i.i.i.i.i = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %do.body15.i.i.i.i.i, label %do.body5.i.i.i.i.i, !prof !292

do.body5.i.i.i.i.i:                               ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/list_bl.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 120, 0\0A.popsection", ""() #16, !srcloc !316
  unreachable

do.body15.i.i.i.i.i:                              ; preds = %if.then4.i.i
  %49 = ptrtoint ptr %45 to i32
  %50 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %47, align 4
  %52 = ptrtoint ptr %51 to i32
  %and16.i.i.i.i.i = and i32 %52, 1
  %or.i.i.i.i.i = or i32 %and16.i.i.i.i.i, %49
  %53 = inttoptr i32 %or.i.i.i.i.i to ptr
  store volatile ptr %53, ptr %47, align 4
  %tobool21.not.i.i.i.i.i = icmp eq ptr %45, null
  br i1 %tobool21.not.i.i.i.i.i, label %do.body15.i.i.i.i.i.dm_remove_exception.exit.i.i_crit_edge, label %if.then22.i.i.i.i.i

do.body15.i.i.i.i.i.dm_remove_exception.exit.i.i_crit_edge: ; preds = %do.body15.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %dm_remove_exception.exit.i.i

if.then22.i.i.i.i.i:                              ; preds = %do.body15.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %pprev23.i.i.i.i.i = getelementptr inbounds %struct.hlist_bl_node, ptr %45, i32 0, i32 1
  %54 = ptrtoint ptr %pprev23.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %47, ptr %pprev23.i.i.i.i.i, align 4
  br label %dm_remove_exception.exit.i.i

dm_remove_exception.exit.i.i:                     ; preds = %if.then22.i.i.i.i.i, %do.body15.i.i.i.i.i.dm_remove_exception.exit.i.i_crit_edge
  %55 = ptrtoint ptr %pos.0.lcssa.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr inttoptr (i32 256 to ptr), ptr %pos.0.lcssa.i.i.i, align 4
  %56 = ptrtoint ptr %pprev2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i.i.i, align 4
  %57 = load ptr, ptr @exception_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %57, ptr noundef nonnull %pos.0.lcssa.i.i.i) #16
  br label %do.cond.i

if.end5.i.i:                                      ; preds = %if.end.i.i
  %old_chunk6.i.i = getelementptr inbounds %struct.dm_exception, ptr %pos.0.lcssa.i.i.i, i32 0, i32 1
  %58 = ptrtoint ptr %old_chunk6.i.i to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %old_chunk6.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %59, i64 %old_chunk.0.i)
  %cmp.i.i = icmp eq i64 %59, %old_chunk.0.i
  br i1 %cmp.i.i, label %if.end26.i.i, label %if.else.i.i

if.else.i.i:                                      ; preds = %if.end5.i.i
  %add.i.i = add i64 %59, %shr.i.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i, i64 %old_chunk.0.i)
  %cmp12.not.i.i = icmp eq i64 %add.i.i, %old_chunk.0.i
  br i1 %cmp12.not.i.i, label %if.else.i.i.dm_consecutive_chunk_count_dec.exit.i.i_crit_edge, label %do.end17.i.i

if.else.i.i.dm_consecutive_chunk_count_dec.exit.i.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %dm_consecutive_chunk_count_dec.exit.i.i

do.end17.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %call24.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, i64 noundef %old_chunk.0.i, i64 noundef %59, i64 noundef %add.i.i) #19
  br label %remove_single_exception_chunk.exit

if.end26.i.i:                                     ; preds = %if.end5.i.i
  %60 = ptrtoint ptr %old_chunk6.i.i to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %old_chunk.0.in.i, ptr %old_chunk6.i.i, align 8
  %inc9.i.i = add i64 %43, 1
  %61 = ptrtoint ptr %new_chunk.i.i.i to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %inc9.i.i, ptr %new_chunk.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 72057594037927936, i64 %inc9.i.i)
  %tobool.not.i50.i.i = icmp ult i64 %inc9.i.i, 72057594037927936
  br i1 %tobool.not.i50.i.i, label %do.body4.i.i.i, label %if.end26.i.i.dm_consecutive_chunk_count_dec.exit.i.i_crit_edge, !prof !294

if.end26.i.i.dm_consecutive_chunk_count_dec.exit.i.i_crit_edge: ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %dm_consecutive_chunk_count_dec.exit.i.i

do.body4.i.i.i:                                   ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-exception-store.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 161, 0\0A.popsection", ""() #16, !srcloc !321
  unreachable

dm_consecutive_chunk_count_dec.exit.i.i:          ; preds = %if.end26.i.i.dm_consecutive_chunk_count_dec.exit.i.i_crit_edge, %if.else.i.i.dm_consecutive_chunk_count_dec.exit.i.i_crit_edge
  %62 = phi i64 [ %inc9.i.i, %if.end26.i.i.dm_consecutive_chunk_count_dec.exit.i.i_crit_edge ], [ %43, %if.else.i.i.dm_consecutive_chunk_count_dec.exit.i.i_crit_edge ]
  %sub.i.i.i = add i64 %62, -72057594037927936
  %63 = ptrtoint ptr %new_chunk.i.i.i to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %sub.i.i.i, ptr %new_chunk.i.i.i, align 8
  br label %do.cond.i

do.cond.i:                                        ; preds = %dm_consecutive_chunk_count_dec.exit.i.i, %dm_remove_exception.exit.i.i
  %64 = ptrtoint ptr %first_merging_chunk.i to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %first_merging_chunk.i, align 8
  %cmp.i = icmp ugt i64 %old_chunk.0.i, %65
  br i1 %cmp.i, label %do.cond.i.do.body.i_crit_edge, label %out.i

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i

out.i:                                            ; preds = %do.cond.i
  %66 = ptrtoint ptr %first_merging_chunk.i to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 0, ptr %first_merging_chunk.i, align 8
  %67 = ptrtoint ptr %num_merging_chunks to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %num_merging_chunks, align 8
  %bios_queued_during_merge.i.i = getelementptr inbounds %struct.dm_snapshot, ptr %context, i32 0, i32 27
  %68 = ptrtoint ptr %bios_queued_during_merge.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %bios_queued_during_merge.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.dm_snapshot, ptr %context, i32 0, i32 27, i32 1
  %70 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr null, ptr %tail.i.i.i, align 4
  store ptr null, ptr %bios_queued_during_merge.i.i, align 4
  tail call void @up_write(ptr noundef %context) #16
  %tobool5.not.i = icmp eq ptr %69, null
  br i1 %tobool5.not.i, label %out.i.if.end31_crit_edge, label %out.i.while.body.i.i_crit_edge

out.i.while.body.i.i_crit_edge:                   ; preds = %out.i
  br label %while.body.i.i

out.i.if.end31_crit_edge:                         ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end31

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %out.i.while.body.i.i_crit_edge
  %bio.addr.06.i.i = phi ptr [ %72, %while.body.i.i.while.body.i.i_crit_edge ], [ %69, %out.i.while.body.i.i_crit_edge ]
  %71 = ptrtoint ptr %bio.addr.06.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %bio.addr.06.i.i, align 8
  store ptr null, ptr %bio.addr.06.i.i, align 8
  tail call void @submit_bio_noacct(ptr noundef nonnull %bio.addr.06.i.i) #16
  %tobool.not.i17.i = icmp eq ptr %72, null
  br i1 %tobool.not.i17.i, label %while.body.i.i.if.end31_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i.i

while.body.i.i.if.end31_crit_edge:                ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end31

remove_single_exception_chunk.exit:               ; preds = %do.end17.i.i, %do.end.i.i
  tail call void @up_write(ptr noundef %context) #16
  br label %shut

if.end31:                                         ; preds = %while.body.i.i.if.end31_crit_edge, %out.i.if.end31_crit_edge
  tail call fastcc void @snapshot_merge_next_chunks(ptr noundef %context)
  br label %cleanup

shut:                                             ; preds = %remove_single_exception_chunk.exit, %do.end24, %do.end14, %do.end6, %do.end
  tail call void @down_write(ptr noundef %context) #16
  %merge_failed = getelementptr inbounds %struct.dm_snapshot, ptr %context, i32 0, i32 26
  %73 = ptrtoint ptr %merge_failed to i32
  call void @__asan_load1_noabort(i32 %73)
  %bf.load = load i8, ptr %merge_failed, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %merge_failed, align 4
  %first_merging_chunk.i46 = getelementptr inbounds %struct.dm_snapshot, ptr %context, i32 0, i32 24
  %74 = ptrtoint ptr %first_merging_chunk.i46 to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 0, ptr %first_merging_chunk.i46, align 8
  %num_merging_chunks.i47 = getelementptr inbounds %struct.dm_snapshot, ptr %context, i32 0, i32 25
  %75 = ptrtoint ptr %num_merging_chunks.i47 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %num_merging_chunks.i47, align 8
  %bios_queued_during_merge.i = getelementptr inbounds %struct.dm_snapshot, ptr %context, i32 0, i32 27
  %76 = ptrtoint ptr %bios_queued_during_merge.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %bios_queued_during_merge.i, align 4
  %tail.i.i = getelementptr inbounds %struct.dm_snapshot, ptr %context, i32 0, i32 27, i32 1
  %78 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr null, ptr %tail.i.i, align 4
  store ptr null, ptr %bios_queued_during_merge.i, align 4
  tail call void @up_write(ptr noundef %context) #16
  %tobool.not5.i = icmp eq ptr %77, null
  br i1 %tobool.not5.i, label %shut.error_bios.exit_crit_edge, label %shut.while.body.i_crit_edge

shut.while.body.i_crit_edge:                      ; preds = %shut
  br label %while.body.i

shut.error_bios.exit_crit_edge:                   ; preds = %shut
  call void @__sanitizer_cov_trace_pc() #18
  br label %error_bios.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %shut.while.body.i_crit_edge
  %bio.addr.06.i = phi ptr [ %80, %while.body.i.while.body.i_crit_edge ], [ %77, %shut.while.body.i_crit_edge ]
  %79 = ptrtoint ptr %bio.addr.06.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %bio.addr.06.i, align 8
  store ptr null, ptr %bio.addr.06.i, align 8
  %bi_status.i.i = getelementptr inbounds %struct.bio, ptr %bio.addr.06.i, i32 0, i32 6
  %81 = ptrtoint ptr %bi_status.i.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 10, ptr %bi_status.i.i, align 2
  tail call void @bio_endio(ptr noundef nonnull %bio.addr.06.i) #16
  %tobool.not.i = icmp eq ptr %80, null
  br i1 %tobool.not.i, label %while.body.i.error_bios.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i

while.body.i.error_bios.exit_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %error_bios.exit

error_bios.exit:                                  ; preds = %while.body.i.error_bios.exit_crit_edge, %shut.error_bios.exit_crit_edge
  %state_bits.i = getelementptr inbounds %struct.dm_snapshot, ptr %context, i32 0, i32 23
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %state_bits.i, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !318
  tail call void @llvm.prefetch.p0(ptr %state_bits.i, i32 1, i32 3, i32 1) #16
  %82 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %state_bits.i, ptr %state_bits.i, i32 1, ptr elementtype(i32) %state_bits.i) #16, !srcloc !319
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !320
  tail call void @wake_up_bit(ptr noundef %state_bits.i, i32 noundef 0) #16
  br label %cleanup

cleanup:                                          ; preds = %error_bios.exit, %if.end31
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @submit_bio_wait(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @origin_ctr(ptr noundef %ti, i32 noundef %argc, ptr nocapture noundef readonly %argv) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %argc)
  %cmp.not = icmp eq i32 %argc, 1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %error = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %0 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @.str.88, ptr %error, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 20) #20
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %if.then1, label %if.end3

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %error2 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %2 = ptrtoint ptr %error2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str.89, ptr %error2, align 8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %3 = ptrtoint ptr %argv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %argv, align 4
  %5 = ptrtoint ptr %ti to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ti, align 8
  %call4 = tail call i32 @dm_table_get_mode(ptr noundef %6) #16
  %call5 = tail call i32 @dm_get_device(ptr noundef %ti, ptr noundef %4, i32 noundef %call4, ptr noundef nonnull %call7.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end9, label %if.then7

if.then7:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  %error8 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %7 = ptrtoint ptr %error8 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str.90, ptr %error8, align 8
  tail call void @kfree(ptr noundef nonnull %call7.i) #16
  br label %cleanup

if.end9:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  %ti10 = getelementptr inbounds %struct.dm_origin, ptr %call7.i, i32 0, i32 1
  %8 = ptrtoint ptr %ti10 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %ti, ptr %ti10, align 4
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %9 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i, ptr %private, align 4
  %num_flush_bios = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 5
  %10 = ptrtoint ptr %num_flush_bios to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %num_flush_bios, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then7, %if.then1, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ 0, %if.end9 ], [ %call5, %if.then7 ], [ -12, %if.then1 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @origin_dtr(ptr noundef %ti) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @dm_put_device(ptr noundef %ti, ptr noundef %3) #16
  tail call void @kfree(ptr noundef %1) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @origin_map(ptr nocapture noundef readonly %ti, ptr noundef %bio) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %bi_flags.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 3
  %6 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %bi_flags.i.i, align 4
  %conv1.i.i = and i16 %7, -2049
  store i16 %conv1.i.i, ptr %bi_flags.i.i, align 4
  %bi_bdev.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 1
  %8 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bi_bdev.i, align 4
  %cmp.not.i = icmp eq ptr %9, %5
  br i1 %cmp.not.i, label %entry.bio_set_dev.exit_crit_edge, label %if.then.i

entry.bio_set_dev.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %bio_set_dev.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %conv1.i8.i = and i16 %7, -2177
  %10 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv1.i8.i, ptr %bi_flags.i.i, align 4
  br label %bio_set_dev.exit

bio_set_dev.exit:                                 ; preds = %if.then.i, %entry.bio_set_dev.exit_crit_edge
  %11 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %5, ptr %bi_bdev.i, align 4
  tail call void @bio_associate_blkg(ptr noundef %bio) #16
  %bi_opf = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %12 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bi_opf, align 8
  %14 = and i32 %13, 262145
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %.not = icmp eq i32 %14, 1
  br i1 %.not, label %if.end8, label %bio_set_dev.exit.cleanup_crit_edge, !prof !322

bio_set_dev.exit.cleanup_crit_edge:               ; preds = %bio_set_dev.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end8:                                          ; preds = %bio_set_dev.exit
  %split_boundary = getelementptr inbounds %struct.dm_origin, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %split_boundary to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %split_boundary, align 4
  %bi_iter = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8
  %17 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %bi_iter, align 8
  %conv9 = trunc i64 %18 to i32
  %sub = add i32 %16, -1
  %and11 = and i32 %sub, %conv9
  %sub12 = sub i32 %16, %and11
  %bi_size = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 1
  %19 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bi_size, align 8
  %shr = lshr i32 %20, 9
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %sub12)
  %cmp14 = icmp ugt i32 %shr, %sub12
  br i1 %cmp14, label %if.then16, label %if.end8.if.end17_crit_edge

if.end8.if.end17_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end17

if.then16:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @dm_accept_partial_bio(ptr noundef %bio, i32 noundef %sub12) #16
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end8.if.end17_crit_edge
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  br label %again.i

again.i:                                          ; preds = %for.body.i.again.i_crit_edge, %if.end17
  tail call void @down_read(ptr noundef nonnull @_origins_lock) #16
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %25 = load ptr, ptr @_origins, align 4
  %bd_dev.i.i.i = getelementptr inbounds %struct.block_device, ptr %24, i32 0, i32 5
  %26 = ptrtoint ptr %bd_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bd_dev.i.i.i, align 4
  %and.i.i.i = and i32 %27, 255
  %arrayidx.i.i = getelementptr %struct.list_head, ptr %25, i32 %and.i.i.i
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %again.i
  %.pn.in.i.i = phi ptr [ %arrayidx.i.i, %again.i ], [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %28 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %arrayidx.i.i
  br i1 %cmp.not.i.i, label %for.cond.i.i.do_origin.exit_crit_edge, label %for.body.i.i

for.cond.i.i.do_origin.exit_crit_edge:            ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do_origin.exit

for.body.i.i:                                     ; preds = %for.cond.i.i
  %o.0.i.i = getelementptr i8, ptr %.pn.i.i, i32 -4
  %29 = ptrtoint ptr %o.0.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %o.0.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %30, %24
  br i1 %cmp.i.not.i.i, label %__lookup_origin.exit.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i.i

__lookup_origin.exit.i:                           ; preds = %for.body.i.i
  %o.0.i.i.le = getelementptr i8, ptr %.pn.i.i, i32 -4
  %tobool.not.i = icmp eq ptr %o.0.i.i.le, null
  br i1 %tobool.not.i, label %__lookup_origin.exit.i.do_origin.exit_crit_edge, label %if.then.i31

__lookup_origin.exit.i.do_origin.exit_crit_edge:  ; preds = %__lookup_origin.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do_origin.exit

if.then.i31:                                      ; preds = %__lookup_origin.exit.i
  %snapshots.i = getelementptr i8, ptr %.pn.i.i, i32 8
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.then.i31
  %.pn.in.i = phi ptr [ %snapshots.i, %if.then.i31 ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %31 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i32 = icmp eq ptr %.pn.i, %snapshots.i
  br i1 %cmp.not.i32, label %if.end15.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %s.0.i = getelementptr i8, ptr %.pn.i, i32 -108
  %call4.i = tail call fastcc zeroext i1 @wait_for_in_progress(ptr noundef %s.0.i, i1 noundef zeroext true) #16
  br i1 %call4.i, label %for.body.i.for.cond.i_crit_edge, label %for.body.i.again.i_crit_edge, !prof !292

for.body.i.again.i_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %again.i

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i

if.end15.i:                                       ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  %32 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %bi_iter, align 8
  %call17.i = tail call fastcc i32 @__origin_write(ptr noundef %snapshots.i, i64 noundef %33, ptr noundef %bio) #16
  br label %do_origin.exit

do_origin.exit:                                   ; preds = %if.end15.i, %__lookup_origin.exit.i.do_origin.exit_crit_edge, %for.cond.i.i.do_origin.exit_crit_edge
  %r.0.i = phi i32 [ %call17.i, %if.end15.i ], [ 1, %for.cond.i.i.do_origin.exit_crit_edge ], [ 1, %__lookup_origin.exit.i.do_origin.exit_crit_edge ]
  tail call void @up_read(ptr noundef nonnull @_origins_lock) #16
  br label %cleanup

cleanup:                                          ; preds = %do_origin.exit, %bio_set_dev.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %r.0.i, %do_origin.exit ], [ 1, %bio_set_dev.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @origin_postsuspend(ptr nocapture noundef readonly %ti) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  tail call void @down_write(ptr noundef nonnull @_origins_lock) #16
  %hash_list.i = getelementptr inbounds %struct.dm_origin, ptr %1, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %hash_list.i) #16
  br i1 %call.i.i.i, label %if.end.i.i.i, label %entry.__remove_dm_origin.exit_crit_edge

entry.__remove_dm_origin.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %__remove_dm_origin.exit

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i.i = getelementptr inbounds %struct.dm_origin, ptr %1, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i.i, align 4
  %4 = ptrtoint ptr %hash_list.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hash_list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %__remove_dm_origin.exit

__remove_dm_origin.exit:                          ; preds = %if.end.i.i.i, %entry.__remove_dm_origin.exit_crit_edge
  %8 = ptrtoint ptr %hash_list.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %hash_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.dm_origin, ptr %1, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @up_write(ptr noundef nonnull @_origins_lock) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @origin_resume(ptr nocapture noundef readonly %ti) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void @down_read(ptr noundef nonnull @_origins_lock) #16
  %6 = load ptr, ptr @_origins, align 4
  %bd_dev.i.i.i = getelementptr inbounds %struct.block_device, ptr %5, i32 0, i32 5
  %7 = ptrtoint ptr %bd_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bd_dev.i.i.i, align 4
  %and.i.i.i = and i32 %8, 255
  %arrayidx.i.i = getelementptr %struct.list_head, ptr %6, i32 %and.i.i.i
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %entry
  %.pn.in.i.i = phi ptr [ %arrayidx.i.i, %entry ], [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %9 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %arrayidx.i.i
  br i1 %cmp.not.i.i, label %for.cond.i.i.get_origin_minimum_chunksize.exit_crit_edge, label %for.body.i.i

for.cond.i.i.get_origin_minimum_chunksize.exit_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_origin_minimum_chunksize.exit

for.body.i.i:                                     ; preds = %for.cond.i.i
  %o.0.i.i = getelementptr i8, ptr %.pn.i.i, i32 -4
  %10 = ptrtoint ptr %o.0.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %o.0.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %11, %5
  br i1 %cmp.i.not.i.i, label %__lookup_origin.exit.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i.i

__lookup_origin.exit.i:                           ; preds = %for.body.i.i
  %o.0.i.i.le = getelementptr i8, ptr %.pn.i.i, i32 -4
  %tobool.not.i.i = icmp eq ptr %o.0.i.i.le, null
  br i1 %tobool.not.i.i, label %__lookup_origin.exit.i.get_origin_minimum_chunksize.exit_crit_edge, label %if.then.i.i

__lookup_origin.exit.i.get_origin_minimum_chunksize.exit_crit_edge: ; preds = %__lookup_origin.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_origin_minimum_chunksize.exit

if.then.i.i:                                      ; preds = %__lookup_origin.exit.i
  %snapshots.i.i = getelementptr i8, ptr %.pn.i.i, i32 8
  %12 = ptrtoint ptr %snapshots.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn32.i.i = load ptr, ptr %snapshots.i.i, align 4
  %cmp.not33.i.i = icmp eq ptr %.pn32.i.i, %snapshots.i.i
  br i1 %cmp.not33.i.i, label %if.then.i.i.get_origin_minimum_chunksize.exit_crit_edge, label %if.then.i.i.for.body.i4.i_crit_edge

if.then.i.i.for.body.i4.i_crit_edge:              ; preds = %if.then.i.i
  br label %for.body.i4.i

if.then.i.i.get_origin_minimum_chunksize.exit_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_origin_minimum_chunksize.exit

for.body.i4.i:                                    ; preds = %for.body.i4.i.for.body.i4.i_crit_edge, %if.then.i.i.for.body.i4.i_crit_edge
  %.pn35.i.i = phi ptr [ %.pn.i2.i, %for.body.i4.i.for.body.i4.i_crit_edge ], [ %.pn32.i.i, %if.then.i.i.for.body.i4.i_crit_edge ]
  %chunk_size.034.i.i = phi i32 [ %cond15.i.i, %for.body.i4.i.for.body.i4.i_crit_edge ], [ -2147483648, %if.then.i.i.for.body.i4.i_crit_edge ]
  %store.i.i = getelementptr i8, ptr %.pn35.i.i, i32 384
  %13 = ptrtoint ptr %store.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %store.i.i, align 4
  %chunk_size2.i.i = getelementptr inbounds %struct.dm_exception_store, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %chunk_size2.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %chunk_size2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp5.i.i = icmp eq i32 %16, 0
  %17 = tail call i32 @llvm.umin.i32(i32 %chunk_size.034.i.i, i32 %16) #16
  %cond15.i.i = select i1 %cmp5.i.i, i32 %chunk_size.034.i.i, i32 %17
  %18 = ptrtoint ptr %.pn35.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn.i2.i = load ptr, ptr %.pn35.i.i, align 4
  %cmp.not.i3.i = icmp eq ptr %.pn.i2.i, %snapshots.i.i
  br i1 %cmp.not.i3.i, label %for.body.i4.i.get_origin_minimum_chunksize.exit_crit_edge, label %for.body.i4.i.for.body.i4.i_crit_edge

for.body.i4.i.for.body.i4.i_crit_edge:            ; preds = %for.body.i4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i4.i

for.body.i4.i.get_origin_minimum_chunksize.exit_crit_edge: ; preds = %for.body.i4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_origin_minimum_chunksize.exit

get_origin_minimum_chunksize.exit:                ; preds = %for.body.i4.i.get_origin_minimum_chunksize.exit_crit_edge, %if.then.i.i.get_origin_minimum_chunksize.exit_crit_edge, %__lookup_origin.exit.i.get_origin_minimum_chunksize.exit_crit_edge, %for.cond.i.i.get_origin_minimum_chunksize.exit_crit_edge
  %chunk_size.1.i.i = phi i32 [ -2147483648, %__lookup_origin.exit.i.get_origin_minimum_chunksize.exit_crit_edge ], [ -2147483648, %if.then.i.i.get_origin_minimum_chunksize.exit_crit_edge ], [ %cond15.i.i, %for.body.i4.i.get_origin_minimum_chunksize.exit_crit_edge ], [ -2147483648, %for.cond.i.i.get_origin_minimum_chunksize.exit_crit_edge ]
  tail call void @up_read(ptr noundef nonnull @_origins_lock) #16
  %split_boundary = getelementptr inbounds %struct.dm_origin, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %split_boundary to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %chunk_size.1.i.i, ptr %split_boundary, align 4
  tail call void @down_write(ptr noundef nonnull @_origins_lock) #16
  %20 = load ptr, ptr @_dm_origins, align 4
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %bd_dev.i.i = getelementptr inbounds %struct.block_device, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %bd_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bd_dev.i.i, align 4
  %and.i.i = and i32 %26, 255
  %arrayidx.i = getelementptr %struct.list_head, ptr %20, i32 %and.i.i
  %hash_list.i = getelementptr inbounds %struct.dm_origin, ptr %1, i32 0, i32 3
  %prev.i.i = getelementptr %struct.list_head, ptr %20, i32 %and.i.i, i32 1
  %27 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %hash_list.i, ptr noundef %28, ptr noundef %arrayidx.i) #16
  br i1 %call.i.i.i, label %if.end.i.i.i, label %get_origin_minimum_chunksize.exit.__insert_dm_origin.exit_crit_edge

get_origin_minimum_chunksize.exit.__insert_dm_origin.exit_crit_edge: ; preds = %get_origin_minimum_chunksize.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %__insert_dm_origin.exit

if.end.i.i.i:                                     ; preds = %get_origin_minimum_chunksize.exit
  call void @__sanitizer_cov_trace_pc() #18
  %29 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %hash_list.i, ptr %prev.i.i, align 4
  %30 = ptrtoint ptr %hash_list.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %arrayidx.i, ptr %hash_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.dm_origin, ptr %1, i32 0, i32 3, i32 1
  %31 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev3.i.i.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %hash_list.i, ptr %28, align 4
  br label %__insert_dm_origin.exit

__insert_dm_origin.exit:                          ; preds = %if.end.i.i.i, %get_origin_minimum_chunksize.exit.__insert_dm_origin.exit_crit_edge
  tail call void @up_write(ptr noundef nonnull @_origins_lock) #16
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @origin_status(ptr nocapture noundef readonly %ti, i32 noundef %type, i32 noundef %status_flags, ptr nocapture noundef writeonly %result, i32 noundef %maxlen) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.121)
  switch i32 %type, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %1 = ptrtoint ptr %result to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %result, align 1
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %name = getelementptr inbounds %struct.dm_dev, ptr %5, i32 0, i32 3
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %result, i32 noundef %maxlen, ptr noundef nonnull @.str.91, ptr noundef %name)
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %6 = ptrtoint ptr %result to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %result, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @origin_iterate_devices(ptr noundef %ti, ptr nocapture noundef readonly %fn, ptr noundef %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %len = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 3
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %len, align 8
  %call = tail call i32 %fn(ptr noundef %ti, ptr noundef %3, i64 noundef 0, i64 noundef %5, ptr noundef %data) #16
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_accept_partial_bio(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #15

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snapshot_merge_map(ptr nocapture noundef readonly %ti, ptr noundef %bio) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %call.i = tail call ptr @dm_per_bio_data(ptr noundef %bio, i32 noundef 16) #16
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %call.i, align 4
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %pprev.i.i, align 4
  %bi_opf = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %4 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bi_opf, align 8
  %6 = and i32 %5, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end4, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @dm_bio_get_target_bio_nr(ptr noundef %bio) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %origin = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %origin to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %origin, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %bi_flags.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 3
  %11 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %bi_flags.i.i, align 4
  %conv1.i.i = and i16 %12, -2049
  store i16 %conv1.i.i, ptr %bi_flags.i.i, align 4
  %bi_bdev.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 1
  %13 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bi_bdev.i, align 4
  %cmp.not.i = icmp eq ptr %14, %10
  br i1 %cmp.not.i, label %if.then2.bio_set_dev.exit_crit_edge, label %if.then.i

if.then2.bio_set_dev.exit_crit_edge:              ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #18
  br label %bio_set_dev.exit

if.then.i:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #18
  %conv1.i8.i = and i16 %12, -2177
  %15 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv1.i8.i, ptr %bi_flags.i.i, align 4
  br label %bio_set_dev.exit

bio_set_dev.exit:                                 ; preds = %if.then.i, %if.then2.bio_set_dev.exit_crit_edge
  %16 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %10, ptr %bi_bdev.i, align 4
  tail call void @bio_associate_blkg(ptr noundef %bio) #16
  br label %cleanup

if.else:                                          ; preds = %if.then
  %cow = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %cow to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cow, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %bi_flags.i.i101 = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 3
  %21 = ptrtoint ptr %bi_flags.i.i101 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %bi_flags.i.i101, align 4
  %conv1.i.i102 = and i16 %22, -2049
  store i16 %conv1.i.i102, ptr %bi_flags.i.i101, align 4
  %bi_bdev.i103 = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 1
  %23 = ptrtoint ptr %bi_bdev.i103 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bi_bdev.i103, align 4
  %cmp.not.i104 = icmp eq ptr %24, %20
  br i1 %cmp.not.i104, label %if.else.bio_set_dev.exit107_crit_edge, label %if.then.i106

if.else.bio_set_dev.exit107_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %bio_set_dev.exit107

if.then.i106:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %conv1.i8.i105 = and i16 %22, -2177
  %25 = ptrtoint ptr %bi_flags.i.i101 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv1.i8.i105, ptr %bi_flags.i.i101, align 4
  br label %bio_set_dev.exit107

bio_set_dev.exit107:                              ; preds = %if.then.i106, %if.else.bio_set_dev.exit107_crit_edge
  %26 = ptrtoint ptr %bi_bdev.i103 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %20, ptr %bi_bdev.i103, align 4
  tail call void @bio_associate_blkg(ptr noundef %bio) #16
  br label %cleanup

if.end4:                                          ; preds = %entry
  %and6 = and i32 %5, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and6)
  %cmp = icmp eq i32 %and6, 3
  br i1 %cmp, label %if.then10, label %if.end11, !prof !294

if.then10:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @bio_endio(ptr noundef %bio) #16
  br label %cleanup

if.end11:                                         ; preds = %if.end4
  %store = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 19
  %27 = ptrtoint ptr %store to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %store, align 4
  %bi_iter = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8
  %29 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %bi_iter, align 8
  %chunk_shift.i = getelementptr inbounds %struct.dm_exception_store, ptr %28, i32 0, i32 4
  %31 = ptrtoint ptr %chunk_shift.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %chunk_shift.i, align 4
  %sh_prom.i = zext i32 %32 to i64
  %shr.i = lshr i64 %30, %sh_prom.i
  tail call void @down_write(ptr noundef %1) #16
  %valid = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 5
  %33 = ptrtoint ptr %valid to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %valid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool13.not = icmp eq i32 %34, 0
  br i1 %tobool13.not, label %if.end11.redirect_to_origin_crit_edge, label %if.end15

if.end11.redirect_to_origin_crit_edge:            ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  br label %redirect_to_origin

if.end15:                                         ; preds = %if.end11
  %complete = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 15
  %table.i = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 15, i32 2
  %35 = ptrtoint ptr %table.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %table.i, align 4
  %hash_shift.i.i = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 15, i32 1
  %37 = ptrtoint ptr %hash_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %hash_shift.i.i, align 4
  %sh_prom.i.i = zext i32 %38 to i64
  %shr.i.i = lshr i64 %shr.i, %sh_prom.i.i
  %39 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %complete, align 4
  %41 = trunc i64 %shr.i.i to i32
  %conv1.i.i108 = and i32 %40, %41
  %arrayidx.i = getelementptr %struct.hlist_bl_head, ptr %36, i32 %conv1.i.i108
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.i, align 4
  %44 = ptrtoint ptr %43 to i32
  %and.i.i = and i32 %44, -2
  %45 = inttoptr i32 %and.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not19.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not19.i, label %if.end15.dm_lookup_exception.exit_crit_edge, label %if.end15.for.body.i_crit_edge

if.end15.for.body.i_crit_edge:                    ; preds = %if.end15
  br label %for.body.i

if.end15.dm_lookup_exception.exit_crit_edge:      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  br label %dm_lookup_exception.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end15.for.body.i_crit_edge
  %pos.020.i = phi ptr [ %51, %for.inc.i.for.body.i_crit_edge ], [ %45, %if.end15.for.body.i_crit_edge ]
  %old_chunk.i = getelementptr inbounds %struct.dm_exception, ptr %pos.020.i, i32 0, i32 1
  %46 = ptrtoint ptr %old_chunk.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %old_chunk.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %47, i64 %shr.i)
  %cmp.not.i109 = icmp ugt i64 %47, %shr.i
  br i1 %cmp.not.i109, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %new_chunk.i.i = getelementptr inbounds %struct.dm_exception, ptr %pos.020.i, i32 0, i32 2
  %48 = ptrtoint ptr %new_chunk.i.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %new_chunk.i.i, align 8
  %shr.i18.i = lshr i64 %49, 56
  %add.i = add i64 %shr.i18.i, %47
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %shr.i)
  %cmp6.not.i = icmp ult i64 %add.i, %shr.i
  br i1 %cmp6.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %land.lhs.true.i.dm_lookup_exception.exit_crit_edge

land.lhs.true.i.dm_lookup_exception.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %dm_lookup_exception.exit

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %50 = ptrtoint ptr %pos.020.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pos.020.i, align 4
  %tobool.not.i = icmp eq ptr %51, null
  br i1 %tobool.not.i, label %for.inc.i.redirect_to_origin_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.inc.i.redirect_to_origin_crit_edge:           ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %redirect_to_origin

dm_lookup_exception.exit:                         ; preds = %land.lhs.true.i.dm_lookup_exception.exit_crit_edge, %if.end15.dm_lookup_exception.exit_crit_edge
  %pos.0.lcssa.i = phi ptr [ %45, %if.end15.dm_lookup_exception.exit_crit_edge ], [ %pos.020.i, %land.lhs.true.i.dm_lookup_exception.exit_crit_edge ]
  %tobool17.not = icmp eq ptr %pos.0.lcssa.i, null
  br i1 %tobool17.not, label %dm_lookup_exception.exit.redirect_to_origin_crit_edge, label %if.then18

dm_lookup_exception.exit.redirect_to_origin_crit_edge: ; preds = %dm_lookup_exception.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %redirect_to_origin

if.then18:                                        ; preds = %dm_lookup_exception.exit
  %52 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %bi_opf, align 8
  %and.i = and i32 %53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then18.if.end35_crit_edge, label %land.lhs.true

if.then18.if.end35_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end35

land.lhs.true:                                    ; preds = %if.then18
  %first_merging_chunk = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 24
  %54 = ptrtoint ptr %first_merging_chunk to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %first_merging_chunk, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %shr.i, i64 %55)
  %cmp25.not = icmp ult i64 %shr.i, %55
  br i1 %cmp25.not, label %land.lhs.true.if.end35_crit_edge, label %land.lhs.true27

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end35

land.lhs.true27:                                  ; preds = %land.lhs.true
  %num_merging_chunks = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 25
  %56 = ptrtoint ptr %num_merging_chunks to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %num_merging_chunks, align 8
  %conv29 = sext i32 %57 to i64
  %add = add i64 %55, %conv29
  call void @__sanitizer_cov_trace_cmp8(i64 %shr.i, i64 %add)
  %cmp30 = icmp ult i64 %shr.i, %add
  br i1 %cmp30, label %if.then32, label %land.lhs.true27.if.end35_crit_edge

land.lhs.true27.if.end35_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end35

if.then32:                                        ; preds = %land.lhs.true27
  %origin33 = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 1
  %58 = ptrtoint ptr %origin33 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %origin33, align 8
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 4
  %bi_flags.i.i110 = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 3
  %62 = ptrtoint ptr %bi_flags.i.i110 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %bi_flags.i.i110, align 4
  %conv1.i.i111 = and i16 %63, -2049
  store i16 %conv1.i.i111, ptr %bi_flags.i.i110, align 4
  %bi_bdev.i112 = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 1
  %64 = ptrtoint ptr %bi_bdev.i112 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %bi_bdev.i112, align 4
  %cmp.not.i113 = icmp eq ptr %65, %61
  br i1 %cmp.not.i113, label %if.then32.bio_set_dev.exit116_crit_edge, label %if.then.i115

if.then32.bio_set_dev.exit116_crit_edge:          ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #18
  br label %bio_set_dev.exit116

if.then.i115:                                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #18
  %conv1.i8.i114 = and i16 %63, -2177
  %66 = ptrtoint ptr %bi_flags.i.i110 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %conv1.i8.i114, ptr %bi_flags.i.i110, align 4
  br label %bio_set_dev.exit116

bio_set_dev.exit116:                              ; preds = %if.then.i115, %if.then32.bio_set_dev.exit116_crit_edge
  %67 = ptrtoint ptr %bi_bdev.i112 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %61, ptr %bi_bdev.i112, align 4
  tail call void @bio_associate_blkg(ptr noundef %bio) #16
  %68 = ptrtoint ptr %bio to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %bio, align 8
  %tail.i = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 27, i32 1
  %69 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %tail.i, align 4
  %tobool.not.i117 = icmp eq ptr %70, null
  br i1 %tobool.not.i117, label %if.else.i, label %if.then.i118

if.then.i118:                                     ; preds = %bio_set_dev.exit116
  call void @__sanitizer_cov_trace_pc() #18
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %bio, ptr %70, align 8
  br label %bio_list_add.exit

if.else.i:                                        ; preds = %bio_set_dev.exit116
  call void @__sanitizer_cov_trace_pc() #18
  %bios_queued_during_merge = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 27
  %72 = ptrtoint ptr %bios_queued_during_merge to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %bio, ptr %bios_queued_during_merge, align 4
  br label %bio_list_add.exit

bio_list_add.exit:                                ; preds = %if.else.i, %if.then.i118
  %73 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %bio, ptr %tail.i, align 4
  br label %out_unlock

if.end35:                                         ; preds = %land.lhs.true27.if.end35_crit_edge, %land.lhs.true.if.end35_crit_edge, %if.then18.if.end35_crit_edge
  %cow.i = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 2
  %74 = ptrtoint ptr %cow.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %cow.i, align 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %75, align 4
  %bi_flags.i.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 3
  %78 = ptrtoint ptr %bi_flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %bi_flags.i.i.i, align 4
  %conv1.i.i.i = and i16 %79, -2049
  store i16 %conv1.i.i.i, ptr %bi_flags.i.i.i, align 4
  %bi_bdev.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 1
  %80 = ptrtoint ptr %bi_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %bi_bdev.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %81, %77
  br i1 %cmp.not.i.i, label %if.end35.remap_exception.exit_crit_edge, label %if.then.i.i

if.end35.remap_exception.exit_crit_edge:          ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #18
  br label %remap_exception.exit

if.then.i.i:                                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #18
  %conv1.i8.i.i = and i16 %79, -2177
  %82 = ptrtoint ptr %bi_flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %conv1.i8.i.i, ptr %bi_flags.i.i.i, align 4
  br label %remap_exception.exit

remap_exception.exit:                             ; preds = %if.then.i.i, %if.end35.remap_exception.exit_crit_edge
  %83 = ptrtoint ptr %bi_bdev.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %77, ptr %bi_bdev.i.i, align 4
  tail call void @bio_associate_blkg(ptr noundef %bio) #16
  %84 = ptrtoint ptr %store to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %store, align 4
  %new_chunk.i = getelementptr inbounds %struct.dm_exception, ptr %pos.0.lcssa.i, i32 0, i32 2
  %86 = ptrtoint ptr %new_chunk.i to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %new_chunk.i, align 8
  %and.i.i119 = and i64 %87, 72057594037927935
  %old_chunk.i120 = getelementptr inbounds %struct.dm_exception, ptr %pos.0.lcssa.i, i32 0, i32 1
  %88 = ptrtoint ptr %old_chunk.i120 to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %old_chunk.i120, align 8
  %sub.i = sub i64 %shr.i, %89
  %add.i121 = add i64 %sub.i, %and.i.i119
  %chunk_shift.i.i = getelementptr inbounds %struct.dm_exception_store, ptr %85, i32 0, i32 4
  %90 = ptrtoint ptr %chunk_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %chunk_shift.i.i, align 4
  %sh_prom.i.i122 = zext i32 %91 to i64
  %shl.i.i = shl i64 %add.i121, %sh_prom.i.i122
  %92 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %bi_iter, align 8
  %chunk_mask.i = getelementptr inbounds %struct.dm_exception_store, ptr %85, i32 0, i32 3
  %94 = ptrtoint ptr %chunk_mask.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %chunk_mask.i, align 4
  %conv.i = zext i32 %95 to i64
  %and.i123 = and i64 %93, %conv.i
  %add3.i = add i64 %and.i123, %shl.i.i
  store i64 %add3.i, ptr %bi_iter, align 8
  %96 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %bi_opf, align 8
  %and.i124 = and i32 %97, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i124)
  %tobool.i125.not = icmp eq i32 %and.i124, 0
  br i1 %tobool.i125.not, label %remap_exception.exit.out_unlock_crit_edge, label %if.then43

remap_exception.exit.out_unlock_crit_edge:        ; preds = %remap_exception.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_unlock

if.then43:                                        ; preds = %remap_exception.exit
  %call.i126 = tail call ptr @dm_per_bio_data(ptr noundef %bio, i32 noundef 16) #16
  %chunk1.i = getelementptr inbounds %struct.dm_snap_tracked_chunk, ptr %call.i126, i32 0, i32 1
  %98 = ptrtoint ptr %chunk1.i to i32
  call void @__asan_store8_noabort(i32 %98)
  store i64 %shr.i, ptr %chunk1.i, align 8
  %tracked_chunk_lock.i = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 17
  tail call void @_raw_spin_lock_irq(ptr noundef %tracked_chunk_lock.i) #16
  %conv.i127 = trunc i64 %shr.i to i32
  %and.i128 = and i32 %conv.i127, 15
  %arrayidx.i129 = getelementptr %struct.dm_snapshot, ptr %1, i32 0, i32 18, i32 %and.i128
  %99 = ptrtoint ptr %arrayidx.i129 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %arrayidx.i129, align 4
  %101 = ptrtoint ptr %call.i126 to i32
  call void @__asan_store4_noabort(i32 %101)
  store volatile ptr %100, ptr %call.i126, align 4
  %tobool.not.i.i = icmp eq ptr %100, null
  br i1 %tobool.not.i.i, label %if.then43.track_chunk.exit_crit_edge, label %do.body12.i.i

if.then43.track_chunk.exit_crit_edge:             ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #18
  br label %track_chunk.exit

do.body12.i.i:                                    ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #18
  %pprev.i.i130 = getelementptr inbounds %struct.hlist_node, ptr %100, i32 0, i32 1
  %102 = ptrtoint ptr %pprev.i.i130 to i32
  call void @__asan_store4_noabort(i32 %102)
  store volatile ptr %call.i126, ptr %pprev.i.i130, align 4
  br label %track_chunk.exit

track_chunk.exit:                                 ; preds = %do.body12.i.i, %if.then43.track_chunk.exit_crit_edge
  %103 = ptrtoint ptr %arrayidx.i129 to i32
  call void @__asan_store4_noabort(i32 %103)
  store volatile ptr %call.i126, ptr %arrayidx.i129, align 4
  %pprev34.i.i = getelementptr inbounds %struct.hlist_node, ptr %call.i126, i32 0, i32 1
  %104 = ptrtoint ptr %pprev34.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store volatile ptr %arrayidx.i129, ptr %pprev34.i.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %tracked_chunk_lock.i) #16
  br label %out_unlock

redirect_to_origin:                               ; preds = %dm_lookup_exception.exit.redirect_to_origin_crit_edge, %for.inc.i.redirect_to_origin_crit_edge, %if.end11.redirect_to_origin_crit_edge
  %origin46 = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 1
  %105 = ptrtoint ptr %origin46 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %origin46, align 8
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %106, align 4
  %bi_flags.i.i131 = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 3
  %109 = ptrtoint ptr %bi_flags.i.i131 to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %bi_flags.i.i131, align 4
  %conv1.i.i132 = and i16 %110, -2049
  store i16 %conv1.i.i132, ptr %bi_flags.i.i131, align 4
  %bi_bdev.i133 = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 1
  %111 = ptrtoint ptr %bi_bdev.i133 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %bi_bdev.i133, align 4
  %cmp.not.i134 = icmp eq ptr %112, %108
  br i1 %cmp.not.i134, label %redirect_to_origin.bio_set_dev.exit137_crit_edge, label %if.then.i136

redirect_to_origin.bio_set_dev.exit137_crit_edge: ; preds = %redirect_to_origin
  call void @__sanitizer_cov_trace_pc() #18
  br label %bio_set_dev.exit137

if.then.i136:                                     ; preds = %redirect_to_origin
  call void @__sanitizer_cov_trace_pc() #18
  %conv1.i8.i135 = and i16 %110, -2177
  %113 = ptrtoint ptr %bi_flags.i.i131 to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 %conv1.i8.i135, ptr %bi_flags.i.i131, align 4
  br label %bio_set_dev.exit137

bio_set_dev.exit137:                              ; preds = %if.then.i136, %redirect_to_origin.bio_set_dev.exit137_crit_edge
  %114 = ptrtoint ptr %bi_bdev.i133 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %108, ptr %bi_bdev.i133, align 4
  tail call void @bio_associate_blkg(ptr noundef %bio) #16
  %115 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %bi_opf, align 8
  %and.i138 = and i32 %116, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i138)
  %tobool.i139.not = icmp eq i32 %and.i138, 0
  br i1 %tobool.i139.not, label %bio_set_dev.exit137.out_unlock_crit_edge, label %if.then55

bio_set_dev.exit137.out_unlock_crit_edge:         ; preds = %bio_set_dev.exit137
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_unlock

if.then55:                                        ; preds = %bio_set_dev.exit137
  tail call void @up_write(ptr noundef %1) #16
  %117 = ptrtoint ptr %origin46 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %origin46, align 8
  tail call void @down_read(ptr noundef nonnull @_origins_lock) #16
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %118, align 4
  %121 = load ptr, ptr @_origins, align 4
  %bd_dev.i.i.i = getelementptr inbounds %struct.block_device, ptr %120, i32 0, i32 5
  %122 = ptrtoint ptr %bd_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %bd_dev.i.i.i, align 4
  %and.i.i.i = and i32 %123, 255
  %arrayidx.i.i = getelementptr %struct.list_head, ptr %121, i32 %and.i.i.i
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.then55
  %.pn.in.i.i = phi ptr [ %arrayidx.i.i, %if.then55 ], [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %124 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i.i140 = icmp eq ptr %.pn.i.i, %arrayidx.i.i
  br i1 %cmp.not.i.i140, label %for.cond.i.i.do_origin.exit_crit_edge, label %for.body.i.i

for.cond.i.i.do_origin.exit_crit_edge:            ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do_origin.exit

for.body.i.i:                                     ; preds = %for.cond.i.i
  %o.0.i.i = getelementptr i8, ptr %.pn.i.i, i32 -4
  %125 = ptrtoint ptr %o.0.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %o.0.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %126, %120
  br i1 %cmp.i.not.i.i, label %__lookup_origin.exit.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i.i

__lookup_origin.exit.i:                           ; preds = %for.body.i.i
  %o.0.i.i.le = getelementptr i8, ptr %.pn.i.i, i32 -4
  %tobool.not.i141 = icmp eq ptr %o.0.i.i.le, null
  br i1 %tobool.not.i141, label %__lookup_origin.exit.i.do_origin.exit_crit_edge, label %if.then.i142

__lookup_origin.exit.i.do_origin.exit_crit_edge:  ; preds = %__lookup_origin.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do_origin.exit

if.then.i142:                                     ; preds = %__lookup_origin.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %snapshots16.i = getelementptr i8, ptr %.pn.i.i, i32 8
  %127 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %127)
  %128 = load i64, ptr %bi_iter, align 8
  %call17.i = tail call fastcc i32 @__origin_write(ptr noundef %snapshots16.i, i64 noundef %128, ptr noundef %bio) #16
  br label %do_origin.exit

do_origin.exit:                                   ; preds = %if.then.i142, %__lookup_origin.exit.i.do_origin.exit_crit_edge, %for.cond.i.i.do_origin.exit_crit_edge
  %r.0.i = phi i32 [ %call17.i, %if.then.i142 ], [ 1, %__lookup_origin.exit.i.do_origin.exit_crit_edge ], [ 1, %for.cond.i.i.do_origin.exit_crit_edge ]
  tail call void @up_read(ptr noundef nonnull @_origins_lock) #16
  br label %cleanup

out_unlock:                                       ; preds = %bio_set_dev.exit137.out_unlock_crit_edge, %track_chunk.exit, %remap_exception.exit.out_unlock_crit_edge, %bio_list_add.exit
  %r.0 = phi i32 [ 0, %bio_list_add.exit ], [ 1, %track_chunk.exit ], [ 1, %remap_exception.exit.out_unlock_crit_edge ], [ 1, %bio_set_dev.exit137.out_unlock_crit_edge ]
  tail call void @up_write(ptr noundef %1) #16
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %do_origin.exit, %if.then10, %bio_set_dev.exit107, %bio_set_dev.exit
  %retval.0 = phi i32 [ 0, %if.then10 ], [ %r.0, %out_unlock ], [ %r.0.i, %do_origin.exit ], [ 1, %bio_set_dev.exit107 ], [ 1, %bio_set_dev.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snapshot_merge_presuspend(ptr nocapture noundef readonly %ti) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %state_bits.i = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 23
  tail call void @_set_bit(i32 noundef 1, ptr noundef %state_bits.i) #16
  tail call void @__might_sleep(ptr noundef nonnull @.str.35, i32 noundef 73) #16
  %2 = ptrtoint ptr %state_bits.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state_bits.i, align 4
  %and1.i.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i.i, label %entry.stop_merge.exit_crit_edge, label %if.end.i.i

entry.stop_merge.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %stop_merge.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call3.i.i = tail call i32 @out_of_line_wait_on_bit(ptr noundef %state_bits.i, i32 noundef 0, ptr noundef nonnull @bit_wait, i32 noundef 2) #16
  br label %stop_merge.exit

stop_merge.exit:                                  ; preds = %if.end.i.i, %entry.stop_merge.exit_crit_edge
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state_bits.i) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snapshot_merge_resume(ptr nocapture noundef %ti) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  tail call void @snapshot_resume(ptr noundef %ti)
  %origin = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %origin to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %origin, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void @down_read(ptr noundef nonnull @_origins_lock) #16
  %6 = load ptr, ptr @_origins, align 4
  %bd_dev.i.i.i = getelementptr inbounds %struct.block_device, ptr %5, i32 0, i32 5
  %7 = ptrtoint ptr %bd_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bd_dev.i.i.i, align 4
  %and.i.i.i = and i32 %8, 255
  %arrayidx.i.i = getelementptr %struct.list_head, ptr %6, i32 %and.i.i.i
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %entry
  %.pn.in.i.i = phi ptr [ %arrayidx.i.i, %entry ], [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %9 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %arrayidx.i.i
  br i1 %cmp.not.i.i, label %for.cond.i.i.get_origin_minimum_chunksize.exit_crit_edge, label %for.body.i.i

for.cond.i.i.get_origin_minimum_chunksize.exit_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_origin_minimum_chunksize.exit

for.body.i.i:                                     ; preds = %for.cond.i.i
  %o.0.i.i = getelementptr i8, ptr %.pn.i.i, i32 -4
  %10 = ptrtoint ptr %o.0.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %o.0.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %11, %5
  br i1 %cmp.i.not.i.i, label %__lookup_origin.exit.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i.i

__lookup_origin.exit.i:                           ; preds = %for.body.i.i
  %o.0.i.i.le = getelementptr i8, ptr %.pn.i.i, i32 -4
  %tobool.not.i.i = icmp eq ptr %o.0.i.i.le, null
  br i1 %tobool.not.i.i, label %__lookup_origin.exit.i.get_origin_minimum_chunksize.exit_crit_edge, label %if.then.i.i

__lookup_origin.exit.i.get_origin_minimum_chunksize.exit_crit_edge: ; preds = %__lookup_origin.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_origin_minimum_chunksize.exit

if.then.i.i:                                      ; preds = %__lookup_origin.exit.i
  %snapshots.i.i = getelementptr i8, ptr %.pn.i.i, i32 8
  %12 = ptrtoint ptr %snapshots.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn32.i.i = load ptr, ptr %snapshots.i.i, align 4
  %cmp.not33.i.i = icmp eq ptr %.pn32.i.i, %snapshots.i.i
  br i1 %cmp.not33.i.i, label %if.then.i.i.get_origin_minimum_chunksize.exit_crit_edge, label %if.then.i.i.for.body.i4.i_crit_edge

if.then.i.i.for.body.i4.i_crit_edge:              ; preds = %if.then.i.i
  br label %for.body.i4.i

if.then.i.i.get_origin_minimum_chunksize.exit_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_origin_minimum_chunksize.exit

for.body.i4.i:                                    ; preds = %for.body.i4.i.for.body.i4.i_crit_edge, %if.then.i.i.for.body.i4.i_crit_edge
  %.pn35.i.i = phi ptr [ %.pn.i2.i, %for.body.i4.i.for.body.i4.i_crit_edge ], [ %.pn32.i.i, %if.then.i.i.for.body.i4.i_crit_edge ]
  %chunk_size.034.i.i = phi i32 [ %cond15.i.i, %for.body.i4.i.for.body.i4.i_crit_edge ], [ -2147483648, %if.then.i.i.for.body.i4.i_crit_edge ]
  %store.i.i = getelementptr i8, ptr %.pn35.i.i, i32 384
  %13 = ptrtoint ptr %store.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %store.i.i, align 4
  %chunk_size2.i.i = getelementptr inbounds %struct.dm_exception_store, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %chunk_size2.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %chunk_size2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp5.i.i = icmp eq i32 %16, 0
  %17 = tail call i32 @llvm.umin.i32(i32 %chunk_size.034.i.i, i32 %16) #16
  %cond15.i.i = select i1 %cmp5.i.i, i32 %chunk_size.034.i.i, i32 %17
  %18 = ptrtoint ptr %.pn35.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn.i2.i = load ptr, ptr %.pn35.i.i, align 4
  %cmp.not.i3.i = icmp eq ptr %.pn.i2.i, %snapshots.i.i
  br i1 %cmp.not.i3.i, label %for.body.i4.i.get_origin_minimum_chunksize.exit_crit_edge, label %for.body.i4.i.for.body.i4.i_crit_edge

for.body.i4.i.for.body.i4.i_crit_edge:            ; preds = %for.body.i4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i4.i

for.body.i4.i.get_origin_minimum_chunksize.exit_crit_edge: ; preds = %for.body.i4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_origin_minimum_chunksize.exit

get_origin_minimum_chunksize.exit:                ; preds = %for.body.i4.i.get_origin_minimum_chunksize.exit_crit_edge, %if.then.i.i.get_origin_minimum_chunksize.exit_crit_edge, %__lookup_origin.exit.i.get_origin_minimum_chunksize.exit_crit_edge, %for.cond.i.i.get_origin_minimum_chunksize.exit_crit_edge
  %chunk_size.1.i.i = phi i32 [ -2147483648, %__lookup_origin.exit.i.get_origin_minimum_chunksize.exit_crit_edge ], [ -2147483648, %if.then.i.i.get_origin_minimum_chunksize.exit_crit_edge ], [ %cond15.i.i, %for.body.i4.i.get_origin_minimum_chunksize.exit_crit_edge ], [ -2147483648, %for.cond.i.i.get_origin_minimum_chunksize.exit_crit_edge ]
  tail call void @up_read(ptr noundef nonnull @_origins_lock) #16
  %max_io_len = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 4
  %19 = ptrtoint ptr %max_io_len to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %chunk_size.1.i.i, ptr %max_io_len, align 8
  %state_bits.i = getelementptr inbounds %struct.dm_snapshot, ptr %1, i32 0, i32 23
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state_bits.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %get_origin_minimum_chunksize.exit.start_merge.exit_crit_edge

get_origin_minimum_chunksize.exit.start_merge.exit_crit_edge: ; preds = %get_origin_minimum_chunksize.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %start_merge.exit

if.then.i:                                        ; preds = %get_origin_minimum_chunksize.exit
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @snapshot_merge_next_chunks(ptr noundef %1) #16
  br label %start_merge.exit

start_merge.exit:                                 ; preds = %if.then.i, %get_origin_minimum_chunksize.exit.start_merge.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_exception_store_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_register_target(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #16

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #17 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 129)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #17 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 129)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind readonly }
attributes #11 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #12 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { nounwind }
attributes #17 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #18 = { nomerge }
attributes #19 = { cold nounwind }
attributes #20 = { nounwind allocsize(2) }
attributes #21 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !11, !13, !15, !17, !19, !21, !23, !24, !26, !28, !30, !32, !33, !35, !36, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !56, !58, !59, !61, !62, !64, !66, !67, !69, !71, !73, !74, !76, !78, !80, !81, !82, !83, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !113, !114, !115, !117, !119, !120, !121, !122, !124, !126, !128, !129, !130, !131, !133, !134, !135, !137, !138, !140, !142, !143, !145, !146, !147, !148, !150, !151, !152, !154, !156, !157, !158, !159, !161, !162, !163, !165, !166, !167, !168, !170, !171, !172, !174, !175, !176, !178, !179, !180, !182, !183, !184, !185, !187, !188, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !238, !239, !240, !242, !243, !244, !246, !248, !249, !250, !252, !254, !255, !256, !258, !259, !260, !262, !263, !264, !266, !267, !268, !270, !271, !272, !273, !275, !276, !277, !279}
!llvm.named.register.sp = !{!280}
!llvm.module.flags = !{!281, !282, !283, !284, !285, !286, !287, !288}
!llvm.ident = !{!289}

!0 = !{ptr @__param_snapshot_cow_threshold, !1, !"__param_snapshot_cow_threshold", i1 false, i1 false}
!1 = !{!"../drivers/md/dm-snap.c", i32 170, i32 1}
!2 = !{ptr @__UNIQUE_ID_snapshot_cow_thresholdtype283, !1, !"__UNIQUE_ID_snapshot_cow_thresholdtype283", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_snapshot_cow_threshold284, !4, !"__UNIQUE_ID_snapshot_cow_threshold284", i1 false, i1 false}
!4 = !{!"../drivers/md/dm-snap.c", i32 171, i32 1}
!5 = !{ptr @__param_snapshot_copy_throttle, !6, !"__param_snapshot_copy_throttle", i1 false, i1 false}
!6 = !{!"../drivers/md/dm-snap.c", i32 173, i32 1}
!7 = !{ptr @__UNIQUE_ID_snapshot_copy_throttletype285, !6, !"__UNIQUE_ID_snapshot_copy_throttletype285", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_snapshot_copy_throttle286, !6, !"__UNIQUE_ID_snapshot_copy_throttle286", i1 false, i1 false}
!9 = !{ptr @__ksymtab_dm_snap_origin, !10, !"__ksymtab_dm_snap_origin", i1 false, i1 false}
!10 = !{!"../drivers/md/dm-snap.c", i32 180, i32 1}
!11 = !{ptr @__ksymtab_dm_snap_cow, !12, !"__ksymtab_dm_snap_cow", i1 false, i1 false}
!12 = !{!"../drivers/md/dm-snap.c", i32 186, i32 1}
!13 = !{ptr @__initcall__kmod_dm_snapshot__296_2885_dm_snapshot_init6, !14, !"__initcall__kmod_dm_snapshot__296_2885_dm_snapshot_init6", i1 false, i1 false}
!14 = !{!"../drivers/md/dm-snap.c", i32 2885, i32 1}
!15 = !{ptr @__exitcall_dm_snapshot_exit, !16, !"__exitcall_dm_snapshot_exit", i1 false, i1 false}
!16 = !{!"../drivers/md/dm-snap.c", i32 2886, i32 1}
!17 = !{ptr @__UNIQUE_ID_description297, !18, !"__UNIQUE_ID_description297", i1 false, i1 false}
!18 = !{!"../drivers/md/dm-snap.c", i32 2888, i32 1}
!19 = !{ptr @__UNIQUE_ID_author298, !20, !"__UNIQUE_ID_author298", i1 false, i1 false}
!20 = !{!"../drivers/md/dm-snap.c", i32 2889, i32 1}
!21 = !{ptr @__UNIQUE_ID_file299, !22, !"__UNIQUE_ID_file299", i1 false, i1 false}
!22 = !{!"../drivers/md/dm-snap.c", i32 2890, i32 1}
!23 = !{ptr @__UNIQUE_ID_license300, !22, !"__UNIQUE_ID_license300", i1 false, i1 false}
!24 = !{ptr @__UNIQUE_ID_alias301, !25, !"__UNIQUE_ID_alias301", i1 false, i1 false}
!25 = !{!"../drivers/md/dm-snap.c", i32 2891, i32 1}
!26 = !{ptr @__UNIQUE_ID_alias302, !27, !"__UNIQUE_ID_alias302", i1 false, i1 false}
!27 = !{!"../drivers/md/dm-snap.c", i32 2892, i32 1}
!28 = !{ptr @exception_cache, !29, !"exception_cache", i1 false, i1 false}
!29 = !{!"../drivers/md/dm-snap.c", i32 241, i32 27}
!30 = !{ptr @pending_cache, !31, !"pending_cache", i1 false, i1 false}
!31 = !{!"../drivers/md/dm-snap.c", i32 242, i32 27}
!32 = !{ptr @__param_str_snapshot_cow_threshold, !1, !"__param_str_snapshot_cow_threshold", i1 false, i1 false}
!33 = !{ptr @cow_threshold, !34, !"cow_threshold", i1 false, i1 false}
!34 = !{!"../drivers/md/dm-snap.c", i32 169, i32 17}
!35 = !{ptr @__param_str_snapshot_copy_throttle, !6, !"__param_str_snapshot_copy_throttle", i1 false, i1 false}
!36 = !{ptr @dm_kcopyd_throttle, !6, !"dm_kcopyd_throttle", i1 false, i1 false}
!37 = !{ptr @.str, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/md/dm-snap.c", i32 2775, i32 13}
!39 = !{ptr @snapshot_target, !40, !"snapshot_target", i1 false, i1 false}
!40 = !{!"../drivers/md/dm-snap.c", i32 2774, i32 27}
!41 = !{ptr @.str.1, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/md/dm-snap.c", i32 1264, i32 15}
!43 = !{ptr @.str.2, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/md/dm-snap.c", i32 1276, i32 15}
!45 = !{ptr @.str.3, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/md/dm-snap.c", i32 1294, i32 15}
!47 = !{ptr @.str.4, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/md/dm-snap.c", i32 1305, i32 15}
!49 = !{ptr @.str.5, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/md/dm-snap.c", i32 1312, i32 15}
!51 = !{ptr @.str.6, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/md/dm-snap.c", i32 1318, i32 15}
!53 = !{ptr @snapshot_ctr.__key, !54, !"__key", i1 false, i1 false}
!54 = !{!"../drivers/md/dm-snap.c", i32 1331, i32 2}
!55 = !{ptr @.str.7, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @snapshot_ctr.__key.8, !57, !"__key", i1 false, i1 false}
!57 = !{!"../drivers/md/dm-snap.c", i32 1335, i32 2}
!58 = !{ptr @.str.9, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @snapshot_ctr.__key.10, !60, !"__key", i1 false, i1 false}
!60 = !{!"../drivers/md/dm-snap.c", i32 1337, i32 2}
!61 = !{ptr @.str.11, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.12, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/md/dm-snap.c", i32 1347, i32 15}
!64 = !{ptr @snapshot_ctr.__key.13, !65, !"__key", i1 false, i1 false}
!65 = !{!"../drivers/md/dm-snap.c", i32 1352, i32 2}
!66 = !{ptr @.str.14, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.15, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/md/dm-snap.c", i32 1357, i32 15}
!69 = !{ptr @.str.16, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/md/dm-snap.c", i32 1363, i32 15}
!71 = !{ptr @snapshot_ctr.__key.17, !72, !"__key", i1 false, i1 false}
!72 = !{!"../drivers/md/dm-snap.c", i32 1370, i32 2}
!73 = !{ptr @.str.18, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.19, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/md/dm-snap.c", i32 1382, i32 15}
!76 = !{ptr @.str.20, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/md/dm-snap.c", i32 1403, i32 15}
!78 = !{ptr @.str.21, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/md/dm-snap.c", i32 1407, i32 3}
!80 = !{ptr @.str.22, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.23, !79, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @snapshot_ctr._entry, !79, !"_entry", i1 false, i1 false}
!83 = !{ptr @snapshot_ctr._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.24, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/md/dm-snap.c", i32 1411, i32 15}
!86 = !{ptr @dm_snapshot_merge_target_name, !87, !"dm_snapshot_merge_target_name", i1 false, i1 false}
!87 = !{!"../drivers/md/dm-snap.c", i32 28, i32 19}
!88 = !{ptr @.str.25, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/md/dm-snap.c", i32 1206, i32 10}
!90 = !{ptr @parse_snapshot_features._args, !91, !"_args", i1 false, i1 false}
!91 = !{!"../drivers/md/dm-snap.c", i32 1205, i32 29}
!92 = !{ptr @.str.26, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/md/dm-snap.c", i32 1223, i32 29}
!94 = !{ptr @.str.27, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/md/dm-snap.c", i32 1226, i32 34}
!96 = !{ptr @.str.28, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/md/dm-snap.c", i32 1230, i32 16}
!98 = !{ptr @.str.29, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/md/dm-snap.c", i32 1241, i32 15}
!100 = !{ptr @_origins_lock, !101, !"_origins_lock", i1 false, i1 false}
!101 = !{!"../drivers/md/dm-snap.c", i32 344, i32 28}
!102 = !{ptr @.str.30, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/md/dm-snap.c", i32 498, i32 21}
!104 = !{ptr @.str.31, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/md/dm-snap.c", i32 520, i32 21}
!106 = !{ptr @.str.32, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/md/dm-snap.c", i32 526, i32 21}
!108 = !{ptr @_origins, !109, !"_origins", i1 false, i1 false}
!109 = !{!"../drivers/md/dm-snap.c", i32 342, i32 26}
!110 = !{ptr @.str.33, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/md/dm-snap.c", i32 1501, i32 3}
!112 = !{ptr @.str.34, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @snapshot_dtr._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @snapshot_dtr._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.35, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../include/linux/wait_bit.h", i32 73, i32 2}
!117 = !{ptr @.str.36, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/md/dm-snap.c", i32 2074, i32 7}
!119 = !{ptr @.str.37, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @snapshot_map._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @snapshot_map._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = distinct !{null, !123, !"__already_done", i1 false, i1 false}
!123 = !{!"../drivers/md/dm-snap.c", i32 1574, i32 4}
!124 = distinct !{null, !125, !"__already_done", i1 false, i1 false}
!125 = !{!"../drivers/md/dm-snap.c", i32 1956, i32 2}
!126 = !{ptr @.str.38, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/md/dm-snap.c", i32 1643, i32 3}
!128 = !{ptr @.str.39, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @__invalidate_snapshot._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @__invalidate_snapshot._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.41, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/md/dm-snap.c", i32 1645, i32 3}
!133 = !{ptr @__invalidate_snapshot._entry.40, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @__invalidate_snapshot._entry_ptr.42, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.43, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/md/dm-snap.c", i32 347, i32 8}
!137 = !{ptr @_pending_exceptions_done_spinlock, !136, !"_pending_exceptions_done_spinlock", i1 false, i1 false}
!138 = !{ptr @_pending_exceptions_done_count, !139, !"_pending_exceptions_done_count", i1 false, i1 false}
!139 = !{!"../drivers/md/dm-snap.c", i32 348, i32 17}
!140 = !{ptr @.str.44, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/md/dm-snap.c", i32 346, i32 8}
!142 = !{ptr @_pending_exceptions_done, !141, !"_pending_exceptions_done", i1 false, i1 false}
!143 = !{ptr @.str.45, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/md/dm-snap.c", i32 2230, i32 4}
!145 = !{ptr @.str.46, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @snapshot_preresume._entry, !144, !"_entry", i1 false, i1 false}
!147 = !{ptr @snapshot_preresume._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.48, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/md/dm-snap.c", i32 2234, i32 4}
!150 = !{ptr @snapshot_preresume._entry.47, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @snapshot_preresume._entry_ptr.49, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @_dm_origins, !153, !"_dm_origins", i1 false, i1 false}
!153 = !{!"../drivers/md/dm-snap.c", i32 343, i32 26}
!154 = !{ptr @.str.50, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/md/dm-snap.c", i32 1059, i32 3}
!156 = !{ptr @.str.51, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @snapshot_merge_next_chunks._entry, !155, !"_entry", i1 false, i1 false}
!158 = !{ptr @snapshot_merge_next_chunks._entry_ptr, !155, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.53, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/md/dm-snap.c", i32 1067, i32 4}
!161 = !{ptr @snapshot_merge_next_chunks._entry.52, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @snapshot_merge_next_chunks._entry_ptr.54, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.55, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/md/dm-snap.c", i32 1148, i32 4}
!165 = !{ptr @.str.56, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @merge_callback._entry, !164, !"_entry", i1 false, i1 false}
!167 = !{ptr @merge_callback._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.58, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/md/dm-snap.c", i32 1150, i32 4}
!170 = !{ptr @merge_callback._entry.57, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @merge_callback._entry_ptr.59, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.61, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/md/dm-snap.c", i32 1155, i32 3}
!174 = !{ptr @merge_callback._entry.60, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @merge_callback._entry_ptr.62, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.64, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/md/dm-snap.c", i32 1161, i32 3}
!178 = !{ptr @merge_callback._entry.63, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @merge_callback._entry_ptr.65, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.66, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/md/dm-snap.c", i32 945, i32 3}
!182 = !{ptr @.str.67, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @__remove_single_exception_chunk._entry, !181, !"_entry", i1 false, i1 false}
!184 = !{ptr @__remove_single_exception_chunk._entry_ptr, !181, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.69, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/md/dm-snap.c", i32 973, i32 3}
!187 = !{ptr @__remove_single_exception_chunk._entry.68, !186, !"_entry", i1 false, i1 false}
!188 = !{ptr @__remove_single_exception_chunk._entry_ptr.70, !186, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.71, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/md/dm-snap.c", i32 2349, i32 4}
!191 = !{ptr @.str.72, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/md/dm-snap.c", i32 2351, i32 4}
!193 = !{ptr @.str.73, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/md/dm-snap.c", i32 2353, i32 4}
!195 = !{ptr @.str.74, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/md/dm-snap.c", i32 2362, i32 5}
!197 = !{ptr @.str.75, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/md/dm-snap.c", i32 2368, i32 5}
!199 = !{ptr @.str.76, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/md/dm-snap.c", i32 2381, i32 3}
!201 = !{ptr @.str.77, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/md/dm-snap.c", i32 2386, i32 4}
!203 = !{ptr @.str.78, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/md/dm-snap.c", i32 2388, i32 5}
!205 = !{ptr @.str.79, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/md/dm-snap.c", i32 2390, i32 5}
!207 = !{ptr @.str.80, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/md/dm-snap.c", i32 2395, i32 3}
!209 = !{ptr @.str.81, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/md/dm-snap.c", i32 2396, i32 3}
!211 = !{ptr @.str.82, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/md/dm-snap.c", i32 2397, i32 3}
!213 = !{ptr @.str.83, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/md/dm-snap.c", i32 2398, i32 3}
!215 = !{ptr @.str.84, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/md/dm-snap.c", i32 2399, i32 3}
!217 = !{ptr @.str.85, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/md/dm-snap.c", i32 2400, i32 3}
!219 = !{ptr @.str.86, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/md/dm-snap.c", i32 2401, i32 3}
!221 = !{ptr @.str.87, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/md/dm-snap.c", i32 2762, i32 13}
!223 = !{ptr @origin_target, !224, !"origin_target", i1 false, i1 false}
!224 = !{!"../drivers/md/dm-snap.c", i32 2761, i32 27}
!225 = !{ptr @.str.88, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/md/dm-snap.c", i32 2650, i32 15}
!227 = !{ptr @.str.89, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/md/dm-snap.c", i32 2656, i32 15}
!229 = !{ptr @.str.90, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/md/dm-snap.c", i32 2663, i32 15}
!231 = !{ptr @.str.91, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/md/dm-snap.c", i32 2745, i32 28}
!233 = !{ptr @merge_target, !234, !"merge_target", i1 false, i1 false}
!234 = !{!"../drivers/md/dm-snap.c", i32 2789, i32 27}
!235 = !{ptr @.str.92, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/md/dm-snap.c", i32 2811, i32 3}
!237 = !{ptr @.str.93, !236, !"<string literal>", i1 false, i1 false}
!238 = !{ptr @dm_snapshot_init._entry, !236, !"_entry", i1 false, i1 false}
!239 = !{ptr @dm_snapshot_init._entry_ptr, !236, !"_entry_ptr", i1 false, i1 false}
!240 = !{ptr @.str.95, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/md/dm-snap.c", i32 2817, i32 3}
!242 = !{ptr @dm_snapshot_init._entry.94, !241, !"_entry", i1 false, i1 false}
!243 = !{ptr @dm_snapshot_init._entry_ptr.96, !241, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @.str.97, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/md/dm-snap.c", i32 2821, i32 20}
!246 = !{ptr @.str.99, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/md/dm-snap.c", i32 2823, i32 3}
!248 = !{ptr @dm_snapshot_init._entry.98, !247, !"_entry", i1 false, i1 false}
!249 = !{ptr @dm_snapshot_init._entry_ptr.100, !247, !"_entry_ptr", i1 false, i1 false}
!250 = !{ptr @.str.101, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/md/dm-snap.c", i32 2828, i32 18}
!252 = !{ptr @.str.103, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/md/dm-snap.c", i32 2830, i32 3}
!254 = !{ptr @dm_snapshot_init._entry.102, !253, !"_entry", i1 false, i1 false}
!255 = !{ptr @dm_snapshot_init._entry_ptr.104, !253, !"_entry_ptr", i1 false, i1 false}
!256 = !{ptr @.str.106, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/md/dm-snap.c", i32 2837, i32 3}
!258 = !{ptr @dm_snapshot_init._entry.105, !257, !"_entry", i1 false, i1 false}
!259 = !{ptr @dm_snapshot_init._entry_ptr.107, !257, !"_entry_ptr", i1 false, i1 false}
!260 = !{ptr @.str.109, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/md/dm-snap.c", i32 2843, i32 3}
!262 = !{ptr @dm_snapshot_init._entry.108, !261, !"_entry", i1 false, i1 false}
!263 = !{ptr @dm_snapshot_init._entry_ptr.110, !261, !"_entry_ptr", i1 false, i1 false}
!264 = !{ptr @.str.112, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/md/dm-snap.c", i32 2849, i32 3}
!266 = !{ptr @dm_snapshot_init._entry.111, !265, !"_entry", i1 false, i1 false}
!267 = !{ptr @dm_snapshot_init._entry_ptr.113, !265, !"_entry_ptr", i1 false, i1 false}
!268 = !{ptr @.str.114, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/md/dm-snap.c", i32 357, i32 3}
!270 = !{ptr @.str.115, !269, !"<string literal>", i1 false, i1 false}
!271 = !{ptr @init_origin_hash._entry, !269, !"_entry", i1 false, i1 false}
!272 = !{ptr @init_origin_hash._entry_ptr, !269, !"_entry_ptr", i1 false, i1 false}
!273 = !{ptr @.str.117, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/md/dm-snap.c", i32 367, i32 3}
!275 = !{ptr @init_origin_hash._entry.116, !274, !"_entry", i1 false, i1 false}
!276 = !{ptr @init_origin_hash._entry_ptr.118, !274, !"_entry_ptr", i1 false, i1 false}
!277 = !{ptr @init_origin_hash.__key, !278, !"__key", i1 false, i1 false}
!278 = !{!"../drivers/md/dm-snap.c", i32 374, i32 2}
!279 = !{ptr @.str.119, !278, !"<string literal>", i1 false, i1 false}
!280 = !{!"sp"}
!281 = !{i32 1, !"wchar_size", i32 2}
!282 = !{i32 1, !"min_enum_size", i32 4}
!283 = !{i32 8, !"branch-target-enforcement", i32 0}
!284 = !{i32 8, !"sign-return-address", i32 0}
!285 = !{i32 8, !"sign-return-address-all", i32 0}
!286 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!287 = !{i32 7, !"uwtable", i32 1}
!288 = !{i32 7, !"frame-pointer", i32 2}
!289 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!290 = !{!"auto-init"}
!291 = !{i64 2154902164}
!292 = !{!"branch_weights", i32 2000, i32 1}
!293 = !{i64 2154902561, i64 2154903047, i64 2154902598, i64 2154902654, i64 2154902688, i64 2154902712, i64 2154902753, i64 2154902774, i64 2154902802, i64 2154902836}
!294 = !{!"branch_weights", i32 1, i32 2000}
!295 = !{i8 0, i8 2}
!296 = !{i64 2150776285, i64 2150776777, i64 2150776322, i64 2150776378, i64 2150776412, i64 2150776436, i64 2150776477, i64 2150776498, i64 2150776526, i64 2150776560}
!297 = !{i64 2148609345}
!298 = !{i64 2150777680}
!299 = !{i32 0, i32 33}
!300 = !{i64 2150768543}
!301 = !{!"branch_weights", i32 2146410443, i32 1073205}
!302 = !{i64 2148536236, i64 2148536268, i64 2148536297, i64 2148536331, i64 2148536362, i64 2148536385}
!303 = !{i64 2148625317}
!304 = !{i64 2150768703}
!305 = !{i64 2150768980}
!306 = !{i64 2150768822}
!307 = !{i64 2150769185}
!308 = !{i64 2154817298, i64 2154817794, i64 2154817335, i64 2154817391, i64 2154817425, i64 2154817449, i64 2154817490, i64 2154817511, i64 2154817539, i64 2154817573}
!309 = !{i64 2150778976, i64 2150779463, i64 2150779013, i64 2150779069, i64 2150779103, i64 2150779127, i64 2150779168, i64 2150779189, i64 2150779217, i64 2150779251}
!310 = !{i64 2150780677, i64 2150781164, i64 2150780714, i64 2150780770, i64 2150780804, i64 2150780828, i64 2150780869, i64 2150780890, i64 2150780918, i64 2150780952}
!311 = !{i64 2148527378, i64 2148527404, i64 2148527433, i64 2148527467, i64 2148527498, i64 2148527521}
!312 = !{i64 2154863311}
!313 = !{i64 2148529843, i64 2148529869, i64 2148529898, i64 2148529932, i64 2148529963, i64 2148529986}
!314 = !{i64 2154904652, i64 2154905138, i64 2154904689, i64 2154904745, i64 2154904779, i64 2154904803, i64 2154904844, i64 2154904865, i64 2154904893, i64 2154904927}
!315 = !{i64 2154919120, i64 2154919606, i64 2154919157, i64 2154919213, i64 2154919247, i64 2154919271, i64 2154919312, i64 2154919333, i64 2154919361, i64 2154919395}
!316 = !{i64 2150787974, i64 2150788462, i64 2150788011, i64 2150788067, i64 2150788101, i64 2150788125, i64 2150788166, i64 2150788187, i64 2150788215, i64 2150788249}
!317 = !{i64 2154878309, i64 2154878795, i64 2154878346, i64 2154878402, i64 2154878436, i64 2154878460, i64 2154878501, i64 2154878522, i64 2154878550, i64 2154878584}
!318 = !{i64 2148624204}
!319 = !{i64 2148534623, i64 2148534655, i64 2148534684, i64 2148534718, i64 2148534749, i64 2148534772}
!320 = !{i64 2154871854}
!321 = !{i64 2154819119, i64 2154819615, i64 2154819156, i64 2154819212, i64 2154819246, i64 2154819270, i64 2154819311, i64 2154819332, i64 2154819360, i64 2154819394}
!322 = !{!"branch_weights", i32 2000, i32 2002}
