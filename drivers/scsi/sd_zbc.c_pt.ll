; ModuleID = '/llk/IR_all_yes/drivers/scsi/sd_zbc.c_pt.bc'
source_filename = "../drivers/scsi/sd_zbc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.scsi_disk = type <{ ptr, ptr, %struct.device, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.spinlock, ptr, %struct.mutex, %struct.work_struct, ptr, %struct.atomic_t, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i24, [2 x i8] }>
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x i8], %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.execute_work = type { %struct.work_struct }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.scsi_sense_hdr = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.blk_zone = type { i64, i64, i64, i8, i8, i8, i8, [4 x i8], i64, [24 x i8] }
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.65, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.33 }
%struct.llist_node = type { ptr }
%union.anon.33 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.46 }
%union.anon.46 = type { %struct.anon.47 }
%struct.anon.47 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.65 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"REPORT ZONES start lba %llu failed\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"REPORT ZONES\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"REPORT ZONES report invalid length %u\0A\00", [57 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@sd_zbc_init_disk.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&sdkp->zones_wp_offset_lock\00", [36 x i8] zeroinitializer }, align 32
@sd_zbc_init_disk.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&sdkp->rev_mutex\00", [47 x i8] zeroinitializer }, align 32
@sd_zbc_init_disk.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"(work_completion)(&sdkp->zone_wp_offset_work)\00", [50 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/scsi/sd_zbc.c\00", [42 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%u zones of %u logical blocks + 1 runt zone\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%u zones of %u logical blocks\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Read zoned characteristics VPD page failed\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"constrained reads devices are not supported\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Changing capacity from %llu to max LBA+1 %llu\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Zone size too large\0A\00", [43 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 2, i64 3, i64 4, i64 14]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 32, i64 4294967294, i64 4294967295]
@__sancov_gen_cov_switch_values.19 = internal global [6 x i64] [i64 4, i64 8, i64 10, i64 11, i64 12, i64 15]
@__sancov_gen_cov_switch_values.20 = internal global [9 x i64] [i64 7, i64 8, i64 1, i64 7, i64 9, i64 12, i64 13, i64 15, i64 17]
@__sancov_gen_cov_switch_values.21 = internal global [9 x i64] [i64 7, i64 8, i64 1, i64 7, i64 9, i64 12, i64 13, i64 15, i64 17]
@__sancov_gen_cov_switch_values.22 = internal global [6 x i64] [i64 4, i64 8, i64 2, i64 3, i64 4, i64 14]
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 116, i32 3 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 118, i32 25 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 126, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 659, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 661, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 662, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 272, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 645, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 650, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 552, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 578, i32 4 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 616, i32 5 }
@___asan_gen_.77 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.78 = private constant [25 x i8] c"../drivers/scsi/sd_zbc.c\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 629, i32 4 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @sd_zbc_init_disk.__key, ptr @.str.4, ptr @sd_zbc_init_disk.__key.5, ptr @.str.6, ptr @sd_zbc_init_disk.__key.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_zbc_init_disk.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_zbc_init_disk.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_zbc_init_disk.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sd_zbc_report_zones(ptr nocapture noundef readonly %disk, i64 noundef %sector, i32 noundef %nr_zones, ptr nocapture noundef readonly %cb, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 10
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 8
  %device = getelementptr inbounds %struct.scsi_disk, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %capacity1 = getelementptr inbounds %struct.scsi_disk, ptr %1, i32 0, i32 19
  %4 = ptrtoint ptr %capacity1 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %capacity1, align 8
  %sector_size.i = getelementptr inbounds %struct.scsi_device, ptr %3, i32 0, i32 20
  %6 = ptrtoint ptr %sector_size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sector_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i.i.i = icmp eq i32 %7, 0
  %8 = tail call i32 @llvm.ctlz.i32(i32 %7, i1 true) #9, !range !42
  %sub.i.op.i.i.op = sub nsw i32 22, %8
  %sub8.i = select i1 %tobool.not.i.i.i, i32 -10, i32 %sub.i.op.i.i.op
  %sh_prom.i = zext i32 %sub8.i to i64
  %shl.i = shl i64 %5, %sh_prom.i
  %zoned.i = getelementptr inbounds %struct.scsi_disk, ptr %1, i32 0, i32 37
  %9 = ptrtoint ptr %zoned.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %bf.load.i = load i32, ptr %zoned.i, align 2
  %10 = and i32 %bf.load.i, 49152
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %10)
  %cmp.i73 = icmp eq i32 %10, 16384
  br i1 %cmp.i73, label %entry.if.end_crit_edge, label %sd_is_zoned.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

sd_is_zoned.exit:                                 ; preds = %entry
  %type.i = getelementptr inbounds %struct.scsi_device, ptr %3, i32 0, i32 22
  %11 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %12)
  %cmp1.i.not = icmp eq i8 %12, 20
  br i1 %cmp1.i.not, label %sd_is_zoned.exit.if.end_crit_edge, label %sd_is_zoned.exit.cleanup_crit_edge

sd_is_zoned.exit.cleanup_crit_edge:               ; preds = %sd_is_zoned.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sd_is_zoned.exit.if.end_crit_edge:                ; preds = %sd_is_zoned.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %sd_is_zoned.exit.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i)
  %tobool4.not = icmp eq i64 %shl.i, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %disk.i = getelementptr inbounds %struct.scsi_disk, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %disk.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %disk.i, align 8
  %queue.i = getelementptr inbounds %struct.gendisk, ptr %14, i32 0, i32 9
  %15 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %queue.i, align 4
  %nr_zones1.i = getelementptr inbounds %struct.scsi_disk, ptr %1, i32 0, i32 5
  %17 = ptrtoint ptr %nr_zones1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nr_zones1.i, align 8
  %19 = tail call i32 @llvm.umin.i32(i32 %18, i32 %nr_zones) #9
  %add.i = shl i32 %19, 6
  %add3.i = add i32 %add.i, 575
  %div45.i = and i32 %add3.i, -512
  %max_hw_sectors.i.i = getelementptr inbounds %struct.request_queue, ptr %16, i32 0, i32 37, i32 3
  %20 = ptrtoint ptr %max_hw_sectors.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %max_hw_sectors.i.i, align 4
  %shl.i74 = shl i32 %21, 9
  %22 = tail call i32 @llvm.umin.i32(i32 %div45.i, i32 %shl.i74) #9
  %max_segments.i.i = getelementptr inbounds %struct.request_queue, ptr %16, i32 0, i32 37, i32 21
  %23 = ptrtoint ptr %max_segments.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %max_segments.i.i, align 4
  %conv.i = zext i16 %24 to i32
  %shl12.i = shl nuw nsw i32 %conv.i, 12
  %25 = tail call i32 @llvm.umin.i32(i32 %22, i32 %shl12.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp2047.not.i = icmp eq i32 %25, 0
  br i1 %cmp2047.not.i, label %if.end6.cleanup_crit_edge, label %if.end6.while.body.i_crit_edge

if.end6.while.body.i_crit_edge:                   ; preds = %if.end6
  br label %while.body.i

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %if.end6.while.body.i_crit_edge
  %bufsize.048.i = phi i32 [ %sub24.i, %if.end.i.while.body.i_crit_edge ], [ %25, %if.end6.while.body.i_crit_edge ]
  %call22.i = tail call noalias ptr @__vmalloc(i32 noundef %bufsize.048.i, i32 noundef 69056) #12
  %tobool.not.i = icmp eq ptr %call22.i, null
  br i1 %tobool.not.i, label %if.end.i, label %while.cond.preheader

while.cond.preheader:                             ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_zones)
  %cmp108 = icmp ne i32 %nr_zones, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i, i64 %sector)
  %cmp11109 = icmp ugt i64 %shl.i, %sector
  %or.cond110 = select i1 %cmp108, i1 %cmp11109, i1 false
  br i1 %or.cond110, label %while.body.lr.ph, label %while.cond.preheader.out_crit_edge

while.cond.preheader.out_crit_edge:               ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %zone_blocks.i = getelementptr inbounds %struct.scsi_disk, ptr %1, i32 0, i32 7
  br label %sectors_to_logical.exit

if.end.i:                                         ; preds = %while.body.i
  %shr.i = lshr i32 %bufsize.048.i, 1
  %sub24.i = and i32 %shr.i, 2147483136
  %cmp20.not.i = icmp eq i32 %sub24.i, 0
  br i1 %cmp20.not.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sectors_to_logical.exit:                          ; preds = %for.end.sectors_to_logical.exit_crit_edge, %while.body.lr.ph
  %zone_idx.0112 = phi i32 [ 0, %while.body.lr.ph ], [ %zone_idx.1.lcssa, %for.end.sectors_to_logical.exit_crit_edge ]
  %sector.addr.0111 = phi i64 [ %sector, %while.body.lr.ph ], [ %add33, %for.end.sectors_to_logical.exit_crit_edge ]
  %26 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %device, align 4
  %sector_size.i75 = getelementptr inbounds %struct.scsi_device, ptr %27, i32 0, i32 20
  %28 = ptrtoint ptr %sector_size.i75 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sector_size.i75, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i.i.i80 = icmp eq i32 %29, 0
  %30 = tail call i32 @llvm.ctlz.i32(i32 %29, i1 true) #9, !range !42
  %sub.i.op.i.i81.op = sub nsw i32 22, %30
  %sub8.i85 = select i1 %tobool.not.i.i.i80, i32 -10, i32 %sub.i.op.i.i81.op
  %sh_prom.i86 = zext i32 %sub8.i85 to i64
  %shr.i87 = lshr i64 %sector.addr.0111, %sh_prom.i86
  %call14 = tail call fastcc i32 @sd_zbc_do_report_zones(ptr noundef %1, ptr noundef nonnull %call22.i, i32 noundef %bufsize.048.i, i64 noundef %shr.i87, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %sectors_to_logical.exit.out_crit_edge

sectors_to_logical.exit.out_crit_edge:            ; preds = %sectors_to_logical.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end17:                                         ; preds = %sectors_to_logical.exit
  %31 = ptrtoint ptr %call22.i to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %call22.i, align 1
  %div71 = lshr i32 %32, 6
  %33 = tail call i32 @llvm.umin.i32(i32 %div71, i32 %nr_zones)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool20.not = icmp eq i32 %33, 0
  br i1 %tobool20.not, label %if.end17.out_crit_edge, label %for.cond.preheader

if.end17.out_crit_edge:                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.cond.preheader:                               ; preds = %if.end17
  call void @__sanitizer_cov_trace_cmp4(i32 %zone_idx.0112, i32 %nr_zones)
  %cmp25102 = icmp ult i32 %zone_idx.0112, %nr_zones
  br i1 %cmp25102, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %if.end30.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %zone_idx.1106 = phi i32 [ %inc, %if.end30.for.body_crit_edge ], [ %zone_idx.0112, %for.cond.preheader.for.body_crit_edge ]
  %offset.0105 = phi i32 [ %add, %if.end30.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %i.0104 = phi i32 [ %inc31, %if.end30.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %add = add nuw i32 %offset.0105, 64
  %add.ptr = getelementptr i8, ptr %call22.i, i32 %add
  %call27 = tail call fastcc i32 @sd_zbc_parse_report(ptr noundef %1, ptr noundef %add.ptr, i32 noundef %zone_idx.1106, ptr noundef %cb, ptr noundef %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %for.body.out_crit_edge

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end30:                                         ; preds = %for.body
  %inc = add nuw i32 %zone_idx.1106, 1
  %inc31 = add nuw nsw i32 %i.0104, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc31, i32 %33)
  %cmp23 = icmp ult i32 %inc31, %33
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %nr_zones)
  %cmp25 = icmp ult i32 %inc, %nr_zones
  %or.cond72 = select i1 %cmp23, i1 %cmp25, i1 false
  br i1 %or.cond72, label %if.end30.for.body_crit_edge, label %if.end30.for.end_crit_edge

if.end30.for.end_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end30.for.body_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %if.end30.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %inc31, %if.end30.for.end_crit_edge ]
  %zone_idx.1.lcssa = phi i32 [ %zone_idx.0112, %for.cond.preheader.for.end_crit_edge ], [ %inc, %if.end30.for.end_crit_edge ]
  %34 = ptrtoint ptr %zone_blocks.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %zone_blocks.i, align 8
  %36 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %device, align 4
  %sector_size.i.i = getelementptr inbounds %struct.scsi_device, ptr %37, i32 0, i32 20
  %38 = ptrtoint ptr %sector_size.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %sector_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i.i.i.i = icmp eq i32 %39, 0
  %40 = tail call i32 @llvm.ctlz.i32(i32 %39, i1 true) #9, !range !42
  %conv.i90 = zext i32 %35 to i64
  %sub.i.op.i.i.i.op = sub nsw i32 22, %40
  %sub8.i.i = select i1 %tobool.not.i.i.i.i, i32 -10, i32 %sub.i.op.i.i.i.op
  %sh_prom.i.i = zext i32 %sub8.i.i to i64
  %shl.i.i = shl i64 %conv.i90, %sh_prom.i.i
  %conv = zext i32 %i.0.lcssa to i64
  %mul = mul i64 %shl.i.i, %conv
  %add33 = add i64 %mul, %sector.addr.0111
  call void @__sanitizer_cov_trace_cmp4(i32 %zone_idx.1.lcssa, i32 %nr_zones)
  %cmp = icmp ult i32 %zone_idx.1.lcssa, %nr_zones
  call void @__sanitizer_cov_trace_cmp8(i64 %add33, i64 %shl.i)
  %cmp11 = icmp ult i64 %add33, %shl.i
  %or.cond = select i1 %cmp, i1 %cmp11, i1 false
  br i1 %or.cond, label %for.end.sectors_to_logical.exit_crit_edge, label %for.end.out_crit_edge

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.end.sectors_to_logical.exit_crit_edge:        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sectors_to_logical.exit

out:                                              ; preds = %for.end.out_crit_edge, %for.body.out_crit_edge, %if.end17.out_crit_edge, %sectors_to_logical.exit.out_crit_edge, %while.cond.preheader.out_crit_edge
  %ret.0 = phi i32 [ 0, %while.cond.preheader.out_crit_edge ], [ %call27, %for.body.out_crit_edge ], [ %call14, %sectors_to_logical.exit.out_crit_edge ], [ %zone_idx.1.lcssa, %for.end.out_crit_edge ], [ %zone_idx.0112, %if.end17.out_crit_edge ]
  tail call void @kvfree(ptr noundef nonnull %call22.i) #9
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.i.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %sd_is_zoned.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -95, %sd_is_zoned.exit.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -12, %if.end6.cleanup_crit_edge ], [ -12, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sd_zbc_do_report_zones(ptr noundef %sdkp, ptr noundef %buf, i32 noundef %buflen, i64 noundef %lba, i1 noundef zeroext %partial) unnamed_addr #0 align 64 {
entry:
  %sshdr = alloca %struct.scsi_sense_hdr, align 8
  %cmd = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %request_queue = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %request_queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %request_queue, align 4
  %rq_timeout = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 25
  %4 = ptrtoint ptr %rq_timeout to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rq_timeout, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sshdr) #9
  %6 = ptrtoint ptr %sshdr to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 -1, ptr %sshdr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cmd) #9
  %7 = getelementptr inbounds [16 x i8], ptr %cmd, i32 0, i32 1
  %8 = getelementptr inbounds [16 x i8], ptr %cmd, i32 0, i32 2
  %9 = getelementptr inbounds [16 x i8], ptr %cmd, i32 0, i32 10
  %10 = getelementptr inbounds i8, ptr %cmd, i32 14
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 0, ptr %10, align 1
  %12 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -107, ptr %cmd, align 1
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %7, align 1
  %14 = ptrtoint ptr %8 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 8)
  store i64 %lba, ptr %8, align 1
  %15 = ptrtoint ptr %9 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 %buflen, ptr %9, align 1
  br i1 %partial, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %16 = getelementptr inbounds [16 x i8], ptr %cmd, i32 0, i32 14
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -128, ptr %16, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call.i = call i32 @__scsi_execute(ptr noundef %1, ptr noundef nonnull %cmd, i32 noundef 2, ptr noundef %buf, i32 noundef %buflen, ptr noundef null, ptr noundef nonnull %sshdr, i32 noundef %5, i32 noundef 5, i64 noundef 0, i32 noundef 0, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not = icmp eq i32 %call.i, 0
  br i1 %tobool6.not, label %if.end16, label %if.then7

if.then7:                                         ; preds = %if.end
  %disk = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 3
  %18 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %disk, align 8
  %tobool8.not = icmp eq ptr %19, null
  %20 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %device, align 4
  %disk_name = getelementptr inbounds %struct.gendisk, ptr %19, i32 0, i32 3
  %.sink = select i1 %tobool8.not, ptr null, ptr %disk_name
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str, ptr noundef %21, ptr noundef %.sink, ptr noundef nonnull @.str.1, i64 noundef %lba) #9
  call void @sd_print_result(ptr noundef %sdkp, ptr noundef nonnull @.str.2, i32 noundef %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp sgt i32 %call.i, 0
  br i1 %cmp, label %land.lhs.true, label %if.then7.cleanup_crit_edge

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %if.then7
  %22 = ptrtoint ptr %sshdr to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %sshdr, align 8
  %24 = and i8 %23, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 112, i8 %24)
  %cmp.i = icmp eq i8 %24, 112
  br i1 %cmp.i, label %if.then14, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then14:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  call void @sd_print_sense_hdr(ptr noundef %sdkp, ptr noundef nonnull %sshdr) #9
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %25 = ptrtoint ptr %buf to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %26)
  %cmp19 = icmp ult i32 %26, 64
  br i1 %cmp19, label %if.then20, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then20:                                        ; preds = %if.end16
  %disk21 = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 3
  %27 = ptrtoint ptr %disk21 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %disk21, align 8
  %tobool22.not = icmp eq ptr %28, null
  %29 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %device, align 4
  br i1 %tobool22.not, label %cond.false28, label %cond.true23

cond.true23:                                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  %disk_name26 = getelementptr inbounds %struct.gendisk, ptr %28, i32 0, i32 3
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str, ptr noundef %30, ptr noundef %disk_name26, ptr noundef nonnull @.str.3, i32 noundef %26) #9
  br label %cleanup

cond.false28:                                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str, ptr noundef %30, ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef %26) #9
  br label %cleanup

cleanup:                                          ; preds = %cond.false28, %cond.true23, %if.end16.cleanup_crit_edge, %if.then14, %land.lhs.true.cleanup_crit_edge, %if.then7.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %if.then14 ], [ -5, %land.lhs.true.cleanup_crit_edge ], [ -5, %if.then7.cleanup_crit_edge ], [ -5, %cond.false28 ], [ -5, %cond.true23 ], [ 0, %if.end16.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cmd) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sshdr) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sd_zbc_parse_report(ptr nocapture noundef readonly %sdkp, ptr nocapture noundef readonly %buf, i32 noundef %idx, ptr nocapture noundef readonly %cb, ptr noundef %data) unnamed_addr #0 align 64 {
entry:
  %zone = alloca %struct.blk_zone, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %zone) #9
  %2 = call ptr @memset(ptr %zone, i32 0, i32 64)
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %buf, align 1
  %5 = and i8 %4, 15
  %type = getelementptr inbounds %struct.blk_zone, ptr %zone, i32 0, i32 3
  %6 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %type, align 8
  %arrayidx2 = getelementptr i8, ptr %buf, i32 1
  %7 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx2, align 1
  %9 = lshr i8 %8, 4
  %cond = getelementptr inbounds %struct.blk_zone, ptr %zone, i32 0, i32 4
  %10 = ptrtoint ptr %cond to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %cond, align 1
  %11 = and i8 %8, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %reset = getelementptr inbounds %struct.blk_zone, ptr %zone, i32 0, i32 6
  %12 = ptrtoint ptr %reset to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %reset, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %13 = and i8 %8, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool12.not = icmp eq i8 %13, 0
  br i1 %tobool12.not, label %if.end.if.end14_crit_edge, label %if.then13

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %non_seq = getelementptr inbounds %struct.blk_zone, ptr %zone, i32 0, i32 5
  %14 = ptrtoint ptr %non_seq to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %non_seq, align 2
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end.if.end14_crit_edge
  %arrayidx15 = getelementptr i8, ptr %buf, i32 8
  %15 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 8)
  %16 = load i64, ptr %arrayidx15, align 1
  %sector_size.i = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 20
  %17 = ptrtoint ptr %sector_size.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sector_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i.i.i = icmp eq i32 %18, 0
  %19 = tail call i32 @llvm.ctlz.i32(i32 %18, i1 true) #9, !range !42
  %sub.i.op.i.i.op = sub nsw i32 22, %19
  %sub8.i = select i1 %tobool.not.i.i.i, i32 -10, i32 %sub.i.op.i.i.op
  %sh_prom.i = zext i32 %sub8.i to i64
  %shl.i = shl i64 %16, %sh_prom.i
  %len = getelementptr inbounds %struct.blk_zone, ptr %zone, i32 0, i32 1
  %20 = ptrtoint ptr %len to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %shl.i, ptr %len, align 8
  %capacity = getelementptr inbounds %struct.blk_zone, ptr %zone, i32 0, i32 8
  %21 = ptrtoint ptr %capacity to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %shl.i, ptr %capacity, align 8
  %arrayidx18 = getelementptr i8, ptr %buf, i32 16
  %22 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 8)
  %23 = load i64, ptr %arrayidx18, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i.i.i61 = icmp eq i32 %18, 0
  %24 = tail call i32 @llvm.ctlz.i32(i32 %18, i1 true) #9, !range !42
  %sub.i.op.i.i62.op = sub nsw i32 22, %24
  %sub8.i6687 = select i1 %tobool.not.i.i.i61, i32 -10, i32 %sub.i.op.i.i62.op
  %sh_prom.i6788 = zext i32 %sub8.i6687 to i64
  %shl.i6889 = shl i64 %23, %sh_prom.i6788
  %25 = ptrtoint ptr %zone to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %shl.i6889, ptr %zone, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %9)
  %cmp90 = icmp eq i8 %9, 14
  br i1 %cmp90, label %if.then24, label %logical_to_sectors.exit83

if.then24:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %add = add i64 %shl.i6889, %shl.i
  br label %if.end31

logical_to_sectors.exit83:                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i.i.i75 = icmp eq i32 %18, 0
  %.in = getelementptr i8, ptr %buf, i32 24
  %26 = ptrtoint ptr %.in to i32
  call void @__asan_loadN_noabort(i32 %26, i32 8)
  %27 = load i64, ptr %.in, align 1
  %sub.i.op.i.i76.op = sub nsw i32 22, %24
  %sub8.i80 = select i1 %tobool.not.i.i.i75, i32 -10, i32 %sub.i.op.i.i76.op
  %sh_prom.i81 = zext i32 %sub8.i80 to i64
  %shl.i82 = shl i64 %27, %sh_prom.i81
  br label %if.end31

if.end31:                                         ; preds = %logical_to_sectors.exit83, %if.then24
  %shl.i82.sink = phi i64 [ %shl.i82, %logical_to_sectors.exit83 ], [ %add, %if.then24 ]
  %wp30 = getelementptr inbounds %struct.blk_zone, ptr %zone, i32 0, i32 2
  %28 = ptrtoint ptr %wp30 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %shl.i82.sink, ptr %wp30, align 8
  %call32 = call i32 %cb(ptr noundef nonnull %zone, i32 noundef %idx, ptr noundef %data) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end35:                                         ; preds = %if.end31
  %rev_wp_offset = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 14
  %29 = ptrtoint ptr %rev_wp_offset to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rev_wp_offset, align 4
  %tobool36.not = icmp eq ptr %30, null
  br i1 %tobool36.not, label %if.end35.cleanup_crit_edge, label %if.then37

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then37:                                        ; preds = %if.end35
  %31 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %32)
  %cmp.i84 = icmp eq i8 %32, 1
  br i1 %cmp.i84, label %if.then37.sd_zbc_get_zone_wp_offset.exit_crit_edge, label %if.end.i

if.then37.sd_zbc_get_zone_wp_offset.exit_crit_edge: ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #11
  br label %sd_zbc_get_zone_wp_offset.exit

if.end.i:                                         ; preds = %if.then37
  %33 = ptrtoint ptr %cond to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %cond, align 1
  %35 = zext i8 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values)
  switch i8 %34, label %if.end.i.sd_zbc_get_zone_wp_offset.exit_crit_edge [
    i8 2, label %if.end.i.sw.bb.i_crit_edge
    i8 3, label %if.end.i.sw.bb.i_crit_edge93
    i8 4, label %if.end.i.sw.bb.i_crit_edge94
    i8 14, label %sw.bb4.i
  ]

if.end.i.sw.bb.i_crit_edge94:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

if.end.i.sw.bb.i_crit_edge93:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

if.end.i.sw.bb.i_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

if.end.i.sd_zbc_get_zone_wp_offset.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sd_zbc_get_zone_wp_offset.exit

sw.bb.i:                                          ; preds = %if.end.i.sw.bb.i_crit_edge, %if.end.i.sw.bb.i_crit_edge93, %if.end.i.sw.bb.i_crit_edge94
  %wp.i = getelementptr inbounds %struct.blk_zone, ptr %zone, i32 0, i32 2
  %36 = ptrtoint ptr %wp.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %wp.i, align 8
  %38 = ptrtoint ptr %zone to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %zone, align 8
  %sub.i85 = sub i64 %37, %39
  %conv3.i = trunc i64 %sub.i85 to i32
  br label %sd_zbc_get_zone_wp_offset.exit

sw.bb4.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %len, align 8
  %conv5.i = trunc i64 %41 to i32
  br label %sd_zbc_get_zone_wp_offset.exit

sd_zbc_get_zone_wp_offset.exit:                   ; preds = %sw.bb4.i, %sw.bb.i, %if.end.i.sd_zbc_get_zone_wp_offset.exit_crit_edge, %if.then37.sd_zbc_get_zone_wp_offset.exit_crit_edge
  %retval.0.i = phi i32 [ %conv5.i, %sw.bb4.i ], [ %conv3.i, %sw.bb.i ], [ 0, %if.then37.sd_zbc_get_zone_wp_offset.exit_crit_edge ], [ 0, %if.end.i.sd_zbc_get_zone_wp_offset.exit_crit_edge ]
  %arrayidx40 = getelementptr i32, ptr %30, i32 %idx
  %42 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %retval.0.i, ptr %arrayidx40, align 4
  br label %cleanup

cleanup:                                          ; preds = %sd_zbc_get_zone_wp_offset.exit, %if.end35.cleanup_crit_edge, %if.end31.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %zone) #9
  ret i32 %call32
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @sd_zbc_prepare_zone_append(ptr noundef %cmd, ptr nocapture noundef %lba, i32 noundef %nr_blocks) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %cmd, i32 -192
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 8
  %disk = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %disk, align 8
  %private_data.i = getelementptr inbounds %struct.gendisk, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data.i, align 8
  %__sector.i.i = getelementptr i8, ptr %cmd, i32 -152
  %6 = ptrtoint ptr %__sector.i.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %__sector.i.i, align 8
  %zoned.i.i.i.i = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 37, i32 27
  %8 = ptrtoint ptr %zoned.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %zoned.i.i.i.i, align 4
  %call.off.i.i.i = add i32 %9, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.off.i.i.i)
  %switch.i.i.i = icmp ult i32 %call.off.i.i.i, 2
  br i1 %switch.i.i.i, label %cond.end10.i.i, label %entry.blk_rq_zone_no.exit_crit_edge

entry.blk_rq_zone_no.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %blk_rq_zone_no.exit

cond.end10.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %chunk_sectors.i.i = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 37, i32 5
  %10 = ptrtoint ptr %chunk_sectors.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %chunk_sectors.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i.i.i.i = icmp eq i32 %11, 0
  %12 = tail call i32 @llvm.ctlz.i32(i32 %11, i1 true) #9, !range !42
  %sub.i.op.i.i.i = xor i32 %12, 31
  %sub.i.i.i = select i1 %tobool.not.i.i.i.i, i32 -1, i32 %sub.i.op.i.i.i
  %sh_prom.i.i = zext i32 %sub.i.i.i to i64
  %shr.i.i = lshr i64 %7, %sh_prom.i.i
  %conv12.i.i = trunc i64 %shr.i.i to i32
  br label %blk_rq_zone_no.exit

blk_rq_zone_no.exit:                              ; preds = %cond.end10.i.i, %entry.blk_rq_zone_no.exit_crit_edge
  %retval.0.i.i = phi i32 [ %conv12.i.i, %cond.end10.i.i ], [ 0, %entry.blk_rq_zone_no.exit_crit_edge ]
  %13 = ptrtoint ptr %__sector.i.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %__sector.i.i, align 8
  %zoned.i.i = getelementptr inbounds %struct.scsi_disk, ptr %5, i32 0, i32 37
  %15 = ptrtoint ptr %zoned.i.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %bf.load.i.i = load i32, ptr %zoned.i.i, align 2
  %16 = and i32 %bf.load.i.i, 49152
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %16)
  %cmp.i.i65 = icmp eq i32 %16, 16384
  br i1 %cmp.i.i65, label %blk_rq_zone_no.exit.if.end.i_crit_edge, label %sd_is_zoned.exit.i

blk_rq_zone_no.exit.if.end.i_crit_edge:           ; preds = %blk_rq_zone_no.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

sd_is_zoned.exit.i:                               ; preds = %blk_rq_zone_no.exit
  %device.i.i = getelementptr inbounds %struct.scsi_disk, ptr %5, i32 0, i32 1
  %17 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %device.i.i, align 4
  %type.i.i = getelementptr inbounds %struct.scsi_device, ptr %18, i32 0, i32 22
  %19 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %20)
  %cmp1.i.not.i = icmp eq i8 %20, 20
  br i1 %cmp1.i.not.i, label %sd_is_zoned.exit.i.if.end.i_crit_edge, label %sd_is_zoned.exit.i.cleanup_crit_edge

sd_is_zoned.exit.i.cleanup_crit_edge:             ; preds = %sd_is_zoned.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sd_is_zoned.exit.i.if.end.i_crit_edge:            ; preds = %sd_is_zoned.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end.i:                                         ; preds = %sd_is_zoned.exit.i.if.end.i_crit_edge, %blk_rq_zone_no.exit.if.end.i_crit_edge
  %device.i = getelementptr inbounds %struct.scsi_disk, ptr %5, i32 0, i32 1
  %21 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %device.i, align 4
  %changed.i = getelementptr inbounds %struct.scsi_device, ptr %22, i32 0, i32 41
  %23 = ptrtoint ptr %changed.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 8)
  %bf.load.i = load i64, ptr %changed.i, align 4
  %24 = and i64 %bf.load.i, 4611686018427387904
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %24)
  %tobool4.not.i = icmp eq i64 %24, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6.i:                                        ; preds = %if.end.i
  %zone_blocks.i.i = getelementptr inbounds %struct.scsi_disk, ptr %5, i32 0, i32 7
  %25 = ptrtoint ptr %zone_blocks.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %zone_blocks.i.i, align 8
  %sector_size.i.i.i = getelementptr inbounds %struct.scsi_device, ptr %22, i32 0, i32 20
  %27 = ptrtoint ptr %sector_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sector_size.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i.i.i.i.i = icmp eq i32 %28, 0
  %29 = tail call i32 @llvm.ctlz.i32(i32 %28, i1 true) #9, !range !42
  %conv.i.i = zext i32 %26 to i64
  %sub.i.op.i.i.i.i.op = sub nsw i32 22, %29
  %sub8.i.i.i = select i1 %tobool.not.i.i.i.i.i, i32 -10, i32 %sub.i.op.i.i.i.i.op
  %sh_prom.i.i.i = zext i32 %sub8.i.i.i to i64
  %shl.i.i.i = shl i64 %conv.i.i, %sh_prom.i.i.i
  %sub.i = add i64 %shl.i.i.i, -1
  %and.i = and i64 %sub.i, %14
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool8.not.i = icmp ne i64 %and.i, 0
  %switch.i.i.i.not = xor i1 %switch.i.i.i, true
  %brmerge = select i1 %tobool8.not.i, i1 true, i1 %switch.i.i.i.not
  br i1 %brmerge, label %if.end6.i.cleanup_crit_edge, label %if.end.i.i71

if.end6.i.cleanup_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i71:                                     ; preds = %if.end6.i
  %conv_zones_bitmap.i.i = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 40
  %30 = ptrtoint ptr %conv_zones_bitmap.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %conv_zones_bitmap.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %31, null
  br i1 %tobool.not.i.i, label %if.end.i.i71.if.end7_crit_edge, label %blk_rq_zone_is_seq.exit

if.end.i.i71.if.end7_crit_edge:                   ; preds = %if.end.i.i71
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

blk_rq_zone_is_seq.exit:                          ; preds = %if.end.i.i71
  %chunk_sectors.i.i.i = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 37, i32 5
  %32 = ptrtoint ptr %chunk_sectors.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %chunk_sectors.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i.i.i.i.i76 = icmp eq i32 %33, 0
  %34 = tail call i32 @llvm.ctlz.i32(i32 %33, i1 true) #9, !range !42
  %sub.i.op.i.i.i.i77 = xor i32 %34, 31
  %sub.i.i.i.i78 = select i1 %tobool.not.i.i.i.i.i76, i32 -1, i32 %sub.i.op.i.i.i.i77
  %sh_prom.i.i.i79 = zext i32 %sub.i.i.i.i78 to i64
  %shr.i10.i.i = lshr i64 %7, %sh_prom.i.i.i79
  %conv12.i.i.i = trunc i64 %shr.i10.i.i to i32
  %div3.i.i.i = lshr i32 %conv12.i.i.i, 5
  %arrayidx.i.i.i = getelementptr i32, ptr %31, i32 %div3.i.i.i
  %35 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %conv12.i.i.i, 31
  %37 = shl nuw i32 1, %and.i.i.i
  %38 = and i32 %37, %36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.not = icmp eq i32 %38, 0
  br i1 %tobool.not.not, label %blk_rq_zone_is_seq.exit.if.end7_crit_edge, label %blk_rq_zone_is_seq.exit.cleanup_crit_edge

blk_rq_zone_is_seq.exit.cleanup_crit_edge:        ; preds = %blk_rq_zone_is_seq.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

blk_rq_zone_is_seq.exit.if.end7_crit_edge:        ; preds = %blk_rq_zone_is_seq.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.end7:                                          ; preds = %blk_rq_zone_is_seq.exit.if.end7_crit_edge, %if.end.i.i71.if.end7_crit_edge
  %call8 = tail call zeroext i1 @blk_req_zone_write_trylock(ptr noundef %add.ptr.i.i) #9
  br i1 %call8, label %do.body11, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body11:                                        ; preds = %if.end7
  %zones_wp_offset_lock = getelementptr inbounds %struct.scsi_disk, ptr %5, i32 0, i32 13
  %call15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %zones_wp_offset_lock) #9
  %zones_wp_offset = getelementptr inbounds %struct.scsi_disk, ptr %5, i32 0, i32 12
  %39 = ptrtoint ptr %zones_wp_offset to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %zones_wp_offset, align 4
  %arrayidx = getelementptr i32, ptr %40, i32 %retval.0.i.i
  %41 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx, align 4
  %43 = zext i32 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %42, label %sw.default [
    i32 -1, label %sw.bb
    i32 -2, label %do.body11.if.then38_crit_edge
  ]

do.body11.if.then38_crit_edge:                    ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then38

sw.bb:                                            ; preds = %do.body11
  %44 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %device.i, align 4
  %call18 = tail call i32 @scsi_device_get(ptr noundef %45) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %sw.bb.if.then38_crit_edge

sw.bb.if.then38_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then38

if.end21:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %zones_wp_offset to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %zones_wp_offset, align 4
  %arrayidx23 = getelementptr i32, ptr %47, i32 %retval.0.i.i
  %48 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 -2, ptr %arrayidx23, align 4
  %zone_wp_offset_work = getelementptr inbounds %struct.scsi_disk, ptr %5, i32 0, i32 16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %49 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %49, ptr noundef %zone_wp_offset_work) #9
  br label %if.then38

sw.default:                                       ; preds = %do.body11
  %conv27 = zext i32 %42 to i64
  %50 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %device.i, align 4
  %sector_size.i = getelementptr inbounds %struct.scsi_device, ptr %51, i32 0, i32 20
  %52 = ptrtoint ptr %sector_size.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %sector_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.not.i.i.i = icmp eq i32 %53, 0
  %54 = tail call i32 @llvm.ctlz.i32(i32 %53, i1 true) #9, !range !42
  %sub.i.op.i.i.op = sub nsw i32 22, %54
  %sub8.i = select i1 %tobool.not.i.i.i, i32 -10, i32 %sub.i.op.i.i.op
  %sh_prom.i = zext i32 %sub8.i to i64
  %shr.i = lshr i64 %conv27, %sh_prom.i
  %conv29 = trunc i64 %shr.i to i32
  %add = add i32 %conv29, %nr_blocks
  %55 = ptrtoint ptr %zone_blocks.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %zone_blocks.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %56)
  %cmp30 = icmp ugt i32 %add, %56
  br i1 %cmp30, label %sw.default.if.then38_crit_edge, label %sw.epilog

sw.default.if.then38_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then38

sw.epilog:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  %57 = ptrtoint ptr %lba to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %lba, align 8
  %add35 = add i64 %58, %shr.i
  store i64 %add35, ptr %lba, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %zones_wp_offset_lock, i32 noundef %call15) #9
  br label %cleanup

if.then38:                                        ; preds = %sw.default.if.then38_crit_edge, %if.end21, %sw.bb.if.then38_crit_edge, %do.body11.if.then38_crit_edge
  %ret.0.ph = phi i8 [ 10, %sw.default.if.then38_crit_edge ], [ 13, %if.end21 ], [ 13, %do.body11.if.then38_crit_edge ], [ 10, %sw.bb.if.then38_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %zones_wp_offset_lock, i32 noundef %call15) #9
  %rq_flags.i = getelementptr i8, ptr %cmd, i32 -176
  %59 = ptrtoint ptr %rq_flags.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %rq_flags.i, align 8
  %and.i83 = and i32 %60, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i83)
  %tobool.not.i = icmp eq i32 %and.i83, 0
  br i1 %tobool.not.i, label %if.then38.cleanup_crit_edge, label %if.then.i

if.then38.cleanup_crit_edge:                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__blk_req_zone_write_unlock(ptr noundef %add.ptr.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then38.cleanup_crit_edge, %sw.epilog, %if.end7.cleanup_crit_edge, %blk_rq_zone_is_seq.exit.cleanup_crit_edge, %if.end6.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %sd_is_zoned.exit.i.cleanup_crit_edge
  %retval.0 = phi i8 [ 10, %blk_rq_zone_is_seq.exit.cleanup_crit_edge ], [ 14, %if.end7.cleanup_crit_edge ], [ 0, %sw.epilog ], [ %ret.0.ph, %if.then38.cleanup_crit_edge ], [ %ret.0.ph, %if.then.i ], [ 10, %sd_is_zoned.exit.i.cleanup_crit_edge ], [ 10, %if.end.i.cleanup_crit_edge ], [ 10, %if.end6.i.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @blk_req_zone_write_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_device_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @sd_zbc_setup_zone_mgmt_cmnd(ptr nocapture noundef %cmd, i8 noundef zeroext %op, i1 noundef zeroext %all) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %cmd, i32 -192
  %__sector.i = getelementptr i8, ptr %cmd, i32 -152
  %0 = ptrtoint ptr %__sector.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %__sector.i, align 8
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i.i, align 8
  %disk = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %disk, align 8
  %private_data.i = getelementptr inbounds %struct.gendisk, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private_data.i, align 8
  %device = getelementptr inbounds %struct.scsi_disk, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device, align 4
  %sector_size.i = getelementptr inbounds %struct.scsi_device, ptr %9, i32 0, i32 20
  %10 = ptrtoint ptr %sector_size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sector_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i.i.i = icmp eq i32 %11, 0
  %12 = tail call i32 @llvm.ctlz.i32(i32 %11, i1 true) #9, !range !42
  %sub.i.op.i.i.op = sub nsw i32 22, %12
  %sub8.i = select i1 %tobool.not.i.i.i, i32 -10, i32 %sub.i.op.i.i.op
  %sh_prom.i = zext i32 %sub8.i to i64
  %shr.i = lshr i64 %1, %sh_prom.i
  %13 = ptrtoint ptr %__sector.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %__sector.i, align 8
  %zoned.i.i = getelementptr inbounds %struct.scsi_disk, ptr %7, i32 0, i32 37
  %15 = ptrtoint ptr %zoned.i.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %bf.load.i.i = load i32, ptr %zoned.i.i, align 2
  %16 = and i32 %bf.load.i.i, 49152
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %16)
  %cmp.i.i = icmp eq i32 %16, 16384
  br i1 %cmp.i.i, label %entry.if.end.i_crit_edge, label %sd_is_zoned.exit.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

sd_is_zoned.exit.i:                               ; preds = %entry
  %type.i.i = getelementptr inbounds %struct.scsi_device, ptr %9, i32 0, i32 22
  %17 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %18)
  %cmp1.i.not.i = icmp eq i8 %18, 20
  br i1 %cmp1.i.not.i, label %sd_is_zoned.exit.i.if.end.i_crit_edge, label %sd_is_zoned.exit.i.cleanup_crit_edge

sd_is_zoned.exit.i.cleanup_crit_edge:             ; preds = %sd_is_zoned.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sd_is_zoned.exit.i.if.end.i_crit_edge:            ; preds = %sd_is_zoned.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end.i:                                         ; preds = %sd_is_zoned.exit.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %changed.i = getelementptr inbounds %struct.scsi_device, ptr %9, i32 0, i32 41
  %19 = ptrtoint ptr %changed.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 8)
  %bf.load.i = load i64, ptr %changed.i, align 4
  %20 = and i64 %bf.load.i, 4611686018427387904
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %20)
  %tobool4.not.i = icmp eq i64 %20, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6.i:                                        ; preds = %if.end.i
  %zone_blocks.i.i = getelementptr inbounds %struct.scsi_disk, ptr %7, i32 0, i32 7
  %21 = ptrtoint ptr %zone_blocks.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %zone_blocks.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i.i.i.i.i = icmp eq i32 %11, 0
  %23 = tail call i32 @llvm.ctlz.i32(i32 %11, i1 true) #9, !range !42
  %conv.i.i = zext i32 %22 to i64
  %sub.i.op.i.i.i.i.op = sub nsw i32 22, %23
  %sub8.i.i.i = select i1 %tobool.not.i.i.i.i.i, i32 -10, i32 %sub.i.op.i.i.i.i.op
  %sh_prom.i.i.i = zext i32 %sub8.i.i.i to i64
  %shl.i.i.i = shl i64 %conv.i.i, %sh_prom.i.i.i
  %sub.i35 = add i64 %shl.i.i.i, -1
  %and.i = and i64 %sub.i35, %14
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool8.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool8.not.i, label %if.end, label %if.end6.i.cleanup_crit_edge

if.end6.i.cleanup_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.end6.i
  %cmd_len = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 14
  %24 = ptrtoint ptr %cmd_len to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 16, ptr %cmd_len, align 4
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 16
  %25 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cmnd, align 4
  %27 = call ptr @memset(ptr %26, i32 0, i32 16)
  %28 = load ptr, ptr %cmnd, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -108, ptr %28, align 1
  %30 = load ptr, ptr %cmnd, align 4
  %arrayidx10 = getelementptr i8, ptr %30, i32 1
  %31 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %op, ptr %arrayidx10, align 1
  %32 = load ptr, ptr %cmnd, align 4
  br i1 %all, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx13 = getelementptr i8, ptr %32, i32 14
  %33 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %arrayidx13, align 1
  br label %if.end16

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx15 = getelementptr i8, ptr %32, i32 2
  %34 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_storeN_noabort(i32 %34, i32 8)
  store i64 %shr.i, ptr %arrayidx15, align 1
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then11
  %timeout = getelementptr i8, ptr %cmd, i32 -164
  %35 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 3000, ptr %timeout, align 4
  %sc_data_direction = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 15
  %36 = ptrtoint ptr %sc_data_direction to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 3, ptr %sc_data_direction, align 4
  %transfersize = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 20
  %37 = ptrtoint ptr %transfersize to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %transfersize, align 4
  %allowed = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 9
  %38 = ptrtoint ptr %allowed to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %allowed, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end6.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %sd_is_zoned.exit.i.cleanup_crit_edge
  %retval.0 = phi i8 [ 0, %if.end16 ], [ 10, %sd_is_zoned.exit.i.cleanup_crit_edge ], [ 10, %if.end.i.cleanup_crit_edge ], [ 10, %if.end6.i.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sd_zbc_complete(ptr noundef %cmd, i32 noundef %good_bytes, ptr nocapture noundef readonly %sshdr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %result1 = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 24
  %0 = ptrtoint ptr %result1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %result1, align 4
  %add.ptr.i.i = getelementptr i8, ptr %cmd, i32 -192
  %cmd_flags = getelementptr i8, ptr %cmd, i32 -180
  %2 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cmd_flags, align 4
  %trunc.i = trunc i32 %3 to i8
  %4 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.19)
  switch i8 %trunc.i, label %op_is_zone_mgmt.exit.thread [
    i8 15, label %entry.op_is_zone_mgmt.exit_crit_edge
    i8 10, label %entry.op_is_zone_mgmt.exit_crit_edge51
    i8 11, label %entry.op_is_zone_mgmt.exit_crit_edge52
    i8 12, label %entry.op_is_zone_mgmt.exit_crit_edge53
  ]

entry.op_is_zone_mgmt.exit_crit_edge53:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %op_is_zone_mgmt.exit

entry.op_is_zone_mgmt.exit_crit_edge52:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %op_is_zone_mgmt.exit

entry.op_is_zone_mgmt.exit_crit_edge51:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %op_is_zone_mgmt.exit

entry.op_is_zone_mgmt.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %op_is_zone_mgmt.exit

op_is_zone_mgmt.exit.thread:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not44 = icmp eq i32 %1, 0
  br label %if.else

op_is_zone_mgmt.exit:                             ; preds = %entry.op_is_zone_mgmt.exit_crit_edge, %entry.op_is_zone_mgmt.exit_crit_edge51, %entry.op_is_zone_mgmt.exit_crit_edge52, %entry.op_is_zone_mgmt.exit_crit_edge53
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %op_is_zone_mgmt.exit.if.else_crit_edge, label %land.lhs.true3

op_is_zone_mgmt.exit.if.else_crit_edge:           ; preds = %op_is_zone_mgmt.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true3:                                   ; preds = %op_is_zone_mgmt.exit
  %sense_key = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sshdr, i32 0, i32 1
  %5 = ptrtoint ptr %sense_key to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %sense_key, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %6)
  %cmp = icmp eq i8 %6, 5
  br i1 %cmp, label %land.lhs.true5, label %land.lhs.true3.if.else_crit_edge

land.lhs.true3.if.else_crit_edge:                 ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true5:                                   ; preds = %land.lhs.true3
  %asc = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sshdr, i32 0, i32 2
  %7 = ptrtoint ptr %asc to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %asc, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 36, i8 %8)
  %cmp7 = icmp eq i8 %8, 36
  br i1 %cmp7, label %if.then, label %land.lhs.true5.if.else_crit_edge

land.lhs.true5.if.else_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  %rq_flags = getelementptr i8, ptr %cmd, i32 -176
  %9 = ptrtoint ptr %rq_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rq_flags, align 8
  %or = or i32 %10, 2048
  store i32 %or, ptr %rq_flags, align 8
  br label %if.end12

if.else:                                          ; preds = %land.lhs.true5.if.else_crit_edge, %land.lhs.true3.if.else_crit_edge, %op_is_zone_mgmt.exit.if.else_crit_edge, %op_is_zone_mgmt.exit.thread
  %tobool.not46 = phi i1 [ %tobool.not44, %op_is_zone_mgmt.exit.thread ], [ false, %land.lhs.true5.if.else_crit_edge ], [ false, %land.lhs.true3.if.else_crit_edge ], [ true, %op_is_zone_mgmt.exit.if.else_crit_edge ]
  %11 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.20)
  switch i8 %trunc.i, label %if.else.if.end12_crit_edge [
    i8 13, label %if.else.if.then10_crit_edge
    i8 12, label %if.else.if.then10_crit_edge54
    i8 15, label %if.else.if.then10_crit_edge55
    i8 17, label %if.else.if.then10_crit_edge56
    i8 1, label %if.else.sw.bb1.i_crit_edge
    i8 9, label %if.else.sw.bb1.i_crit_edge57
    i8 7, label %if.else.sw.bb1.i_crit_edge58
  ]

if.else.sw.bb1.i_crit_edge58:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1.i

if.else.sw.bb1.i_crit_edge57:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1.i

if.else.sw.bb1.i_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1.i

if.else.if.then10_crit_edge56:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10

if.else.if.then10_crit_edge55:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10

if.else.if.then10_crit_edge54:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10

if.else.if.then10_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10

if.else.if.end12_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

sw.bb1.i:                                         ; preds = %if.else.sw.bb1.i_crit_edge, %if.else.sw.bb1.i_crit_edge57, %if.else.sw.bb1.i_crit_edge58
  %12 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i.i, align 8
  %__sector.i.i.i = getelementptr i8, ptr %cmd, i32 -152
  %14 = ptrtoint ptr %__sector.i.i.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %__sector.i.i.i, align 8
  %zoned.i.i.i.i.i = getelementptr inbounds %struct.request_queue, ptr %13, i32 0, i32 37, i32 27
  %16 = ptrtoint ptr %zoned.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %zoned.i.i.i.i.i, align 4
  %call.off.i.i.i.i = add i32 %17, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.off.i.i.i.i)
  %switch.i.i.i.i = icmp ult i32 %call.off.i.i.i.i, 2
  br i1 %switch.i.i.i.i, label %if.end.i.i.i, label %sw.bb1.i.if.end12_crit_edge

sw.bb1.i.if.end12_crit_edge:                      ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.end.i.i.i:                                     ; preds = %sw.bb1.i
  %conv_zones_bitmap.i.i.i = getelementptr inbounds %struct.request_queue, ptr %13, i32 0, i32 40
  %18 = ptrtoint ptr %conv_zones_bitmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %conv_zones_bitmap.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %19, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i.if.then10_crit_edge, label %sd_zbc_need_zone_wp_update.exit

if.end.i.i.i.if.then10_crit_edge:                 ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10

sd_zbc_need_zone_wp_update.exit:                  ; preds = %if.end.i.i.i
  %chunk_sectors.i.i.i.i = getelementptr inbounds %struct.request_queue, ptr %13, i32 0, i32 37, i32 5
  %20 = ptrtoint ptr %chunk_sectors.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %chunk_sectors.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %21, 0
  %22 = tail call i32 @llvm.ctlz.i32(i32 %21, i1 true) #9, !range !42
  %sub.i.op.i.i.i.i.i = xor i32 %22, 31
  %sub.i.i.i.i.i = select i1 %tobool.not.i.i.i.i.i.i, i32 -1, i32 %sub.i.op.i.i.i.i.i
  %sh_prom.i.i.i.i = zext i32 %sub.i.i.i.i.i to i64
  %shr.i10.i.i.i = lshr i64 %15, %sh_prom.i.i.i.i
  %conv12.i.i.i.i = trunc i64 %shr.i10.i.i.i to i32
  %div3.i.i.i.i = lshr i32 %conv12.i.i.i.i, 5
  %arrayidx.i.i.i.i = getelementptr i32, ptr %19, i32 %div3.i.i.i.i
  %23 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %arrayidx.i.i.i.i, align 4
  %and.i.i.i.i = and i32 %conv12.i.i.i.i, 31
  %25 = shl nuw i32 1, %and.i.i.i.i
  %26 = and i32 %25, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %phi.cmp.i = icmp eq i32 %26, 0
  br i1 %phi.cmp.i, label %sd_zbc_need_zone_wp_update.exit.if.then10_crit_edge, label %sd_zbc_need_zone_wp_update.exit.if.end12_crit_edge

sd_zbc_need_zone_wp_update.exit.if.end12_crit_edge: ; preds = %sd_zbc_need_zone_wp_update.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

sd_zbc_need_zone_wp_update.exit.if.then10_crit_edge: ; preds = %sd_zbc_need_zone_wp_update.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10

if.then10:                                        ; preds = %sd_zbc_need_zone_wp_update.exit.if.then10_crit_edge, %if.end.i.i.i.if.then10_crit_edge, %if.else.if.then10_crit_edge, %if.else.if.then10_crit_edge54, %if.else.if.then10_crit_edge55, %if.else.if.then10_crit_edge56
  %27 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %add.ptr.i.i, align 8
  %disk.i = getelementptr inbounds %struct.request_queue, ptr %28, i32 0, i32 15
  %29 = ptrtoint ptr %disk.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %disk.i, align 8
  %private_data.i.i = getelementptr inbounds %struct.gendisk, ptr %30, i32 0, i32 10
  %31 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %private_data.i.i, align 8
  %__sector.i.i.i30 = getelementptr i8, ptr %cmd, i32 -152
  %zoned.i.i.i.i.i31 = getelementptr inbounds %struct.request_queue, ptr %28, i32 0, i32 37, i32 27
  %33 = ptrtoint ptr %zoned.i.i.i.i.i31 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %zoned.i.i.i.i.i31, align 4
  %call.off.i.i.i.i32 = add i32 %34, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.off.i.i.i.i32)
  %switch.i.i.i.i33 = icmp ult i32 %call.off.i.i.i.i32, 2
  br i1 %switch.i.i.i.i33, label %cond.end10.i.i.i, label %if.then10.blk_rq_zone_no.exit.i_crit_edge

if.then10.blk_rq_zone_no.exit.i_crit_edge:        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %blk_rq_zone_no.exit.i

cond.end10.i.i.i:                                 ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %__sector.i.i.i30 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %__sector.i.i.i30, align 8
  %chunk_sectors.i.i.i = getelementptr inbounds %struct.request_queue, ptr %28, i32 0, i32 37, i32 5
  %37 = ptrtoint ptr %chunk_sectors.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %chunk_sectors.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i.i.i.i.i = icmp eq i32 %38, 0
  %39 = tail call i32 @llvm.ctlz.i32(i32 %38, i1 true) #9, !range !42
  %sub.i.op.i.i.i.i = xor i32 %39, 31
  %sub.i.i.i.i35 = select i1 %tobool.not.i.i.i.i.i, i32 -1, i32 %sub.i.op.i.i.i.i
  %sh_prom.i.i.i = zext i32 %sub.i.i.i.i35 to i64
  %shr.i.i.i = lshr i64 %36, %sh_prom.i.i.i
  %conv12.i.i.i = trunc i64 %shr.i.i.i to i32
  br label %blk_rq_zone_no.exit.i

blk_rq_zone_no.exit.i:                            ; preds = %cond.end10.i.i.i, %if.then10.blk_rq_zone_no.exit.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %conv12.i.i.i, %cond.end10.i.i.i ], [ 0, %if.then10.blk_rq_zone_no.exit.i_crit_edge ]
  %40 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cmd_flags, align 4
  %and.i = and i32 %41, 255
  %zones_wp_offset_lock.i = getelementptr inbounds %struct.scsi_disk, ptr %32, i32 0, i32 13
  %call6.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %zones_wp_offset_lock.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %and.i)
  %cmp9.not.i = icmp eq i32 %and.i, 17
  %or.cond.i = select i1 %tobool.not46, i1 true, i1 %cmp9.not.i
  br i1 %or.cond.i, label %if.end21.i, label %if.then.i

if.then.i:                                        ; preds = %blk_rq_zone_no.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %and.i)
  %cmp11.i = icmp eq i32 %and.i, 13
  br i1 %cmp11.i, label %if.then13.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then13.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %__data_len.i.i = getelementptr i8, ptr %cmd, i32 -160
  %42 = ptrtoint ptr %__data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %__data_len.i.i, align 8
  %resid_len.i.i = getelementptr inbounds %struct.scsi_request, ptr %cmd, i32 0, i32 5
  %44 = ptrtoint ptr %resid_len.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %resid_len.i.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then13.i, %if.then.i.if.end.i_crit_edge
  %good_bytes.addr.0.i = phi i32 [ 0, %if.then13.i ], [ %good_bytes, %if.then.i.if.end.i_crit_edge ]
  %zones_wp_offset.i = getelementptr inbounds %struct.scsi_disk, ptr %32, i32 0, i32 12
  %45 = ptrtoint ptr %zones_wp_offset.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %zones_wp_offset.i, align 4
  %arrayidx.i = getelementptr i32, ptr %46, i32 %retval.0.i.i.i
  %47 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %48)
  %cmp15.not.i = icmp eq i32 %48, -2
  br i1 %cmp15.not.i, label %if.end.i.sd_zbc_zone_wp_update.exit_crit_edge, label %if.then17.i

if.end.i.sd_zbc_zone_wp_update.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sd_zbc_zone_wp_update.exit

if.then17.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -1, ptr %arrayidx.i, align 4
  br label %sd_zbc_zone_wp_update.exit

if.end21.i:                                       ; preds = %blk_rq_zone_no.exit.i
  %trunc.i37 = trunc i32 %41 to i8
  %50 = zext i8 %trunc.i37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.21)
  switch i8 %trunc.i37, label %if.end21.i.sd_zbc_zone_wp_update.exit_crit_edge [
    i8 13, label %sw.bb.i
    i8 9, label %if.end21.i.sw.bb25.i_crit_edge
    i8 7, label %if.end21.i.sw.bb25.i_crit_edge59
    i8 1, label %if.end21.i.sw.bb25.i_crit_edge60
    i8 15, label %sw.bb37.i
    i8 12, label %sw.bb40.i
    i8 17, label %sw.bb45.i
  ]

if.end21.i.sw.bb25.i_crit_edge60:                 ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb25.i

if.end21.i.sw.bb25.i_crit_edge59:                 ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb25.i

if.end21.i.sw.bb25.i_crit_edge:                   ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb25.i

if.end21.i.sd_zbc_zone_wp_update.exit_crit_edge:  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sd_zbc_zone_wp_update.exit

sw.bb.i:                                          ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  %zones_wp_offset22.i = getelementptr inbounds %struct.scsi_disk, ptr %32, i32 0, i32 12
  %51 = ptrtoint ptr %zones_wp_offset22.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %zones_wp_offset22.i, align 4
  %arrayidx23.i = getelementptr i32, ptr %52, i32 %retval.0.i.i.i
  %53 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx23.i, align 4
  %conv24.i = zext i32 %54 to i64
  %55 = ptrtoint ptr %__sector.i.i.i30 to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %__sector.i.i.i30, align 8
  %add.i = add i64 %56, %conv24.i
  store i64 %add.i, ptr %__sector.i.i.i30, align 8
  br label %sw.bb25.i

sw.bb25.i:                                        ; preds = %sw.bb.i, %if.end21.i.sw.bb25.i_crit_edge, %if.end21.i.sw.bb25.i_crit_edge59, %if.end21.i.sw.bb25.i_crit_edge60
  %zones_wp_offset26.i = getelementptr inbounds %struct.scsi_disk, ptr %32, i32 0, i32 12
  %57 = ptrtoint ptr %zones_wp_offset26.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %zones_wp_offset26.i, align 4
  %arrayidx27.i = getelementptr i32, ptr %58, i32 %retval.0.i.i.i
  %59 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx27.i, align 4
  %conv28.i = zext i32 %60 to i64
  %zone_blocks.i.i = getelementptr inbounds %struct.scsi_disk, ptr %32, i32 0, i32 7
  %61 = ptrtoint ptr %zone_blocks.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %zone_blocks.i.i, align 8
  %device.i.i = getelementptr inbounds %struct.scsi_disk, ptr %32, i32 0, i32 1
  %63 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %device.i.i, align 4
  %sector_size.i.i.i = getelementptr inbounds %struct.scsi_device, ptr %64, i32 0, i32 20
  %65 = ptrtoint ptr %sector_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %sector_size.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool.not.i.i.i.i79.i = icmp eq i32 %66, 0
  %67 = tail call i32 @llvm.ctlz.i32(i32 %66, i1 true) #9, !range !42
  %conv.i.i = zext i32 %62 to i64
  %sub.i.op.i.i.i80.i.op = sub nsw i32 22, %67
  %sub8.i.i.i = select i1 %tobool.not.i.i.i.i79.i, i32 -10, i32 %sub.i.op.i.i.i80.i.op
  %sh_prom.i.i82.i = zext i32 %sub8.i.i.i to i64
  %shl.i.i.i = shl i64 %conv.i.i, %sh_prom.i.i82.i
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i.i.i, i64 %conv28.i)
  %cmp30.i = icmp ugt i64 %shl.i.i.i, %conv28.i
  br i1 %cmp30.i, label %if.then32.i, label %sw.bb25.i.sd_zbc_zone_wp_update.exit_crit_edge

sw.bb25.i.sd_zbc_zone_wp_update.exit_crit_edge:   ; preds = %sw.bb25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sd_zbc_zone_wp_update.exit

if.then32.i:                                      ; preds = %sw.bb25.i
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i = lshr i32 %good_bytes, 9
  %add35.i = add i32 %60, %shr.i
  %68 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %add35.i, ptr %arrayidx27.i, align 4
  br label %sd_zbc_zone_wp_update.exit

sw.bb37.i:                                        ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  %zones_wp_offset38.i = getelementptr inbounds %struct.scsi_disk, ptr %32, i32 0, i32 12
  %69 = ptrtoint ptr %zones_wp_offset38.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %zones_wp_offset38.i, align 4
  %arrayidx39.i = getelementptr i32, ptr %70, i32 %retval.0.i.i.i
  %71 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %arrayidx39.i, align 4
  br label %sd_zbc_zone_wp_update.exit

sw.bb40.i:                                        ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  %zone_blocks.i84.i = getelementptr inbounds %struct.scsi_disk, ptr %32, i32 0, i32 7
  %72 = ptrtoint ptr %zone_blocks.i84.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %zone_blocks.i84.i, align 8
  %device.i83.i = getelementptr inbounds %struct.scsi_disk, ptr %32, i32 0, i32 1
  %74 = ptrtoint ptr %device.i83.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %device.i83.i, align 4
  %sector_size.i.i85.i = getelementptr inbounds %struct.scsi_device, ptr %75, i32 0, i32 20
  %76 = ptrtoint ptr %sector_size.i.i85.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %sector_size.i.i85.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool.not.i.i.i.i90.i = icmp eq i32 %77, 0
  %78 = tail call i32 @llvm.ctlz.i32(i32 %77, i1 true) #9, !range !42
  %conv.i95.i = zext i32 %73 to i64
  %sub.i.op.i.i.i91.i.op = sub nsw i32 22, %78
  %sub8.i.i96.i = select i1 %tobool.not.i.i.i.i90.i, i32 -10, i32 %sub.i.op.i.i.i91.i.op
  %sh_prom.i.i97.i = zext i32 %sub8.i.i96.i to i64
  %shl.i.i98.i = shl i64 %conv.i95.i, %sh_prom.i.i97.i
  %conv42.i = trunc i64 %shl.i.i98.i to i32
  %zones_wp_offset43.i = getelementptr inbounds %struct.scsi_disk, ptr %32, i32 0, i32 12
  %79 = ptrtoint ptr %zones_wp_offset43.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %zones_wp_offset43.i, align 4
  %arrayidx44.i = getelementptr i32, ptr %80, i32 %retval.0.i.i.i
  %81 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %conv42.i, ptr %arrayidx44.i, align 4
  br label %sd_zbc_zone_wp_update.exit

sw.bb45.i:                                        ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  %zones_wp_offset46.i = getelementptr inbounds %struct.scsi_disk, ptr %32, i32 0, i32 12
  %82 = ptrtoint ptr %zones_wp_offset46.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %zones_wp_offset46.i, align 4
  %nr_zones.i = getelementptr inbounds %struct.scsi_disk, ptr %32, i32 0, i32 5
  %84 = ptrtoint ptr %nr_zones.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %nr_zones.i, align 8
  %mul.i = shl i32 %85, 2
  %86 = call ptr @memset(ptr %83, i32 0, i32 %mul.i)
  br label %sd_zbc_zone_wp_update.exit

sd_zbc_zone_wp_update.exit:                       ; preds = %sw.bb45.i, %sw.bb40.i, %sw.bb37.i, %if.then32.i, %sw.bb25.i.sd_zbc_zone_wp_update.exit_crit_edge, %if.end21.i.sd_zbc_zone_wp_update.exit_crit_edge, %if.then17.i, %if.end.i.sd_zbc_zone_wp_update.exit_crit_edge
  %good_bytes.addr.1.i = phi i32 [ %good_bytes.addr.0.i, %if.then17.i ], [ %good_bytes.addr.0.i, %if.end.i.sd_zbc_zone_wp_update.exit_crit_edge ], [ %good_bytes, %if.end21.i.sd_zbc_zone_wp_update.exit_crit_edge ], [ %good_bytes, %sw.bb45.i ], [ %good_bytes, %sw.bb40.i ], [ %good_bytes, %sw.bb37.i ], [ %good_bytes, %if.then32.i ], [ %good_bytes, %sw.bb25.i.sd_zbc_zone_wp_update.exit_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %zones_wp_offset_lock.i, i32 noundef %call6.i) #9
  br label %if.end12

if.end12:                                         ; preds = %sd_zbc_zone_wp_update.exit, %sd_zbc_need_zone_wp_update.exit.if.end12_crit_edge, %sw.bb1.i.if.end12_crit_edge, %if.else.if.end12_crit_edge, %if.then
  %good_bytes.addr.0 = phi i32 [ %good_bytes, %if.then ], [ %good_bytes.addr.1.i, %sd_zbc_zone_wp_update.exit ], [ %good_bytes, %sd_zbc_need_zone_wp_update.exit.if.end12_crit_edge ], [ %good_bytes, %sw.bb1.i.if.end12_crit_edge ], [ %good_bytes, %if.else.if.end12_crit_edge ]
  %87 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %cmd_flags, align 4
  %and14 = and i32 %88, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %and14)
  %cmp15 = icmp eq i32 %and14, 13
  br i1 %cmp15, label %if.then17, label %if.end12.if.end18_crit_edge

if.end12.if.end18_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then17:                                        ; preds = %if.end12
  %rq_flags.i = getelementptr i8, ptr %cmd, i32 -176
  %89 = ptrtoint ptr %rq_flags.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %rq_flags.i, align 8
  %and.i38 = and i32 %90, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i38)
  %tobool.not.i39 = icmp eq i32 %and.i38, 0
  br i1 %tobool.not.i39, label %if.then17.if.end18_crit_edge, label %if.then.i40

if.then17.if.end18_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then.i40:                                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__blk_req_zone_write_unlock(ptr noundef %add.ptr.i.i) #9
  br label %if.end18

if.end18:                                         ; preds = %if.then.i40, %if.then17.if.end18_crit_edge, %if.end12.if.end18_crit_edge
  ret i32 %good_bytes.addr.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sd_zbc_release_disk(ptr noundef %sdkp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %zoned.i = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 37
  %0 = ptrtoint ptr %zoned.i to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %bf.load.i = load i32, ptr %zoned.i, align 2
  %1 = and i32 %bf.load.i, 49152
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %1)
  %cmp.i = icmp eq i32 %1, 16384
  br i1 %cmp.i, label %entry.if.then_crit_edge, label %sd_is_zoned.exit

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

sd_is_zoned.exit:                                 ; preds = %entry
  %device.i = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 1
  %2 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device.i, align 4
  %type.i = getelementptr inbounds %struct.scsi_device, ptr %3, i32 0, i32 22
  %4 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %5)
  %cmp1.i.not = icmp eq i8 %5, 20
  br i1 %cmp1.i.not, label %sd_is_zoned.exit.if.then_crit_edge, label %sd_is_zoned.exit.if.end_crit_edge

sd_is_zoned.exit.if.end_crit_edge:                ; preds = %sd_is_zoned.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

sd_is_zoned.exit.if.then_crit_edge:               ; preds = %sd_is_zoned.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %sd_is_zoned.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %rev_mutex.i = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %rev_mutex.i, i32 noundef 0) #9
  %zones_wp_offset.i = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 12
  %6 = ptrtoint ptr %zones_wp_offset.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %zones_wp_offset.i, align 4
  tail call void @kvfree(ptr noundef %7) #9
  %8 = ptrtoint ptr %zones_wp_offset.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %zones_wp_offset.i, align 4
  %zone_wp_update_buf.i = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 17
  %9 = ptrtoint ptr %zone_wp_update_buf.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %zone_wp_update_buf.i, align 8
  tail call void @kfree(ptr noundef %10) #9
  %11 = ptrtoint ptr %zone_wp_update_buf.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %zone_wp_update_buf.i, align 8
  %nr_zones.i = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 5
  %12 = call ptr @memset(ptr %nr_zones.i, i32 0, i32 16)
  tail call void @mutex_unlock(ptr noundef %rev_mutex.i) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %sd_is_zoned.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sd_zbc_revalidate_zones(ptr noundef %sdkp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %disk1 = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 3
  %0 = ptrtoint ptr %disk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disk1, align 8
  %queue = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %queue, align 4
  %rev_zone_blocks = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 8
  %4 = ptrtoint ptr %rev_zone_blocks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rev_zone_blocks, align 4
  %rev_nr_zones = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 6
  %6 = ptrtoint ptr %rev_nr_zones to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rev_nr_zones, align 4
  %zoned.i = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 37
  %8 = ptrtoint ptr %zoned.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %bf.load.i = load i32, ptr %zoned.i, align 2
  %9 = and i32 %bf.load.i, 49152
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %9)
  %cmp.i = icmp eq i32 %9, 16384
  br i1 %cmp.i, label %entry.land.lhs.true_crit_edge, label %sd_is_zoned.exit

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

sd_is_zoned.exit:                                 ; preds = %entry
  %device.i = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 1
  %10 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device.i, align 4
  %type.i = getelementptr inbounds %struct.scsi_device, ptr %11, i32 0, i32 22
  %12 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %13)
  %cmp1.i.not = icmp eq i8 %13, 20
  br i1 %cmp1.i.not, label %sd_is_zoned.exit.land.lhs.true_crit_edge, label %sd_is_zoned.exit.if.end6_crit_edge

sd_is_zoned.exit.if.end6_crit_edge:               ; preds = %sd_is_zoned.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

sd_is_zoned.exit.land.lhs.true_crit_edge:         ; preds = %sd_is_zoned.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %sd_is_zoned.exit.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %zone_wp_update_buf = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 17
  %14 = ptrtoint ptr %zone_wp_update_buf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %zone_wp_update_buf, align 8
  %tobool2.not = icmp eq ptr %15, null
  br i1 %tobool2.not, label %if.then, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then:                                          ; preds = %land.lhs.true
  %zones_wp_offset.i = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 12
  %16 = ptrtoint ptr %zones_wp_offset.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %zones_wp_offset.i, align 4
  %zones_wp_offset_lock.i = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 13
  tail call void @__raw_spin_lock_init(ptr noundef %zones_wp_offset_lock.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @sd_zbc_init_disk.__key, i16 noundef signext 3) #9
  %rev_wp_offset.i = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 14
  %17 = ptrtoint ptr %rev_wp_offset.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %rev_wp_offset.i, align 4
  %rev_mutex.i = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 15
  tail call void @__mutex_init(ptr noundef %rev_mutex.i, ptr noundef nonnull @.str.6, ptr noundef nonnull @sd_zbc_init_disk.__key.5) #9
  %zone_wp_offset_work.i = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 16
  tail call void @__init_work(ptr noundef %zone_wp_offset_work.i, i32 noundef 0) #9
  %18 = ptrtoint ptr %zone_wp_offset_work.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -64, ptr %zone_wp_offset_work.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 16, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.8, ptr noundef nonnull @sd_zbc_init_disk.__key.7, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry7.i = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 16, i32 1
  %19 = ptrtoint ptr %entry7.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %entry7.i, ptr %entry7.i, align 4
  %prev.i.i = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 16, i32 1, i32 1
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %entry7.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 16, i32 2
  %21 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @sd_zbc_update_wp_offset_workfn, ptr %func.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %22 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 3520, i32 noundef 512) #13
  %23 = ptrtoint ptr %zone_wp_update_buf to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call7.i.i.i, ptr %zone_wp_update_buf, align 8
  %tobool.not.i.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i.not, label %if.then.cleanup_crit_edge, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.then.if.end6_crit_edge, %land.lhs.true.if.end6_crit_edge, %sd_is_zoned.exit.if.end6_crit_edge
  %zoned.i.i = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 37, i32 27
  %24 = ptrtoint ptr %zoned.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %zoned.i.i, align 4
  %call.off.i = add i32 %25, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.off.i)
  %switch.i = icmp ult i32 %call.off.i, 2
  br i1 %switch.i, label %if.end9, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  %rev_mutex = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %rev_mutex, i32 noundef 0) #9
  %zone_blocks10 = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 7
  %26 = ptrtoint ptr %zone_blocks10 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %zone_blocks10, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %5)
  %cmp = icmp eq i32 %27, %5
  br i1 %cmp, label %land.lhs.true11, label %if.end9.if.end19_crit_edge

if.end9.if.end19_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

land.lhs.true11:                                  ; preds = %if.end9
  %nr_zones12 = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 5
  %28 = ptrtoint ptr %nr_zones12 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nr_zones12, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %7)
  %cmp13 = icmp eq i32 %29, %7
  br i1 %cmp13, label %land.lhs.true14, label %land.lhs.true11.if.end19_crit_edge

land.lhs.true11.if.end19_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

land.lhs.true14:                                  ; preds = %land.lhs.true11
  %30 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %queue, align 4
  %nr_zones16 = getelementptr inbounds %struct.request_queue, ptr %31, i32 0, i32 39
  %32 = ptrtoint ptr %nr_zones16 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %nr_zones16, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %7)
  %cmp17 = icmp eq i32 %33, %7
  br i1 %cmp17, label %land.lhs.true14.unlock_crit_edge, label %land.lhs.true14.if.end19_crit_edge

land.lhs.true14.if.end19_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

land.lhs.true14.unlock_crit_edge:                 ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

if.end19:                                         ; preds = %land.lhs.true14.if.end19_crit_edge, %land.lhs.true11.if.end19_crit_edge, %if.end9.if.end19_crit_edge
  %34 = tail call i32 @llvm.read_register.i32(metadata !32) #9
  %and.i.i = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %task.i, align 8
  %flags1.i = getelementptr inbounds %struct.task_struct, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flags1.i, align 4
  %and.i = and i32 %39, 524288
  %or.i = or i32 %39, 524288
  store i32 %or.i, ptr %flags1.i, align 4
  %40 = ptrtoint ptr %zone_blocks10 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %5, ptr %zone_blocks10, align 8
  %nr_zones22 = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 5
  %41 = ptrtoint ptr %nr_zones22 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %7, ptr %nr_zones22, align 8
  %42 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %7, i32 4) #9
  %43 = extractvalue { i32, i1 } %42, 1
  br i1 %43, label %kvcalloc.exit.thread, label %kvcalloc.exit, !prof !43

kvcalloc.exit.thread:                             ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %rev_wp_offset113 = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 14
  %44 = ptrtoint ptr %rev_wp_offset113 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %rev_wp_offset113, align 4
  br label %if.then26

kvcalloc.exit:                                    ; preds = %if.end19
  %45 = extractvalue { i32, i1 } %42, 0
  %call.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %45, i32 noundef 3520, i32 noundef -1) #12
  %rev_wp_offset = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 14
  %46 = ptrtoint ptr %rev_wp_offset to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call.i.i.i, ptr %rev_wp_offset, align 4
  %tobool25.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool25.not, label %kvcalloc.exit.if.then26_crit_edge, label %if.end27

kvcalloc.exit.if.then26_crit_edge:                ; preds = %kvcalloc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then26

if.then26:                                        ; preds = %kvcalloc.exit.if.then26_crit_edge, %kvcalloc.exit.thread
  %47 = tail call i32 @llvm.read_register.i32(metadata !32) #9
  %and.i.i95 = and i32 %47, -16384
  %48 = inttoptr i32 %and.i.i95 to ptr
  %task.i96 = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %task.i96 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %task.i96, align 8
  %flags1.i97 = getelementptr inbounds %struct.task_struct, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %flags1.i97 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %flags1.i97, align 4
  %and.i98 = and i32 %52, -524289
  %or.i99 = or i32 %and.i98, %and.i
  store i32 %or.i99, ptr %flags1.i97, align 4
  br label %unlock

if.end27:                                         ; preds = %kvcalloc.exit
  %call28 = tail call i32 @blk_revalidate_disk_zones(ptr noundef %1, ptr noundef nonnull @sd_zbc_revalidate_zones_cb) #9
  %53 = tail call i32 @llvm.read_register.i32(metadata !32) #9
  %and.i.i100 = and i32 %53, -16384
  %54 = inttoptr i32 %and.i.i100 to ptr
  %task.i101 = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %task.i101 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %task.i101, align 8
  %flags1.i102 = getelementptr inbounds %struct.task_struct, ptr %56, i32 0, i32 3
  %57 = ptrtoint ptr %flags1.i102 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %flags1.i102, align 4
  %and.i103 = and i32 %58, -524289
  %or.i104 = or i32 %and.i103, %and.i
  store i32 %or.i104, ptr %flags1.i102, align 4
  %59 = ptrtoint ptr %rev_wp_offset to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %rev_wp_offset, align 4
  tail call void @kvfree(ptr noundef %60) #9
  %61 = ptrtoint ptr %rev_wp_offset to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %rev_wp_offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool31.not = icmp eq i32 %call28, 0
  br i1 %tobool31.not, label %if.end35, label %if.then32

if.then32:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  %62 = ptrtoint ptr %zone_blocks10 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %zone_blocks10, align 8
  %63 = ptrtoint ptr %nr_zones22 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %nr_zones22, align 8
  %capacity = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 19
  %64 = ptrtoint ptr %capacity to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 0, ptr %capacity, align 8
  br label %unlock

if.end35:                                         ; preds = %if.end27
  %device = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 1
  %conv = zext i32 %5 to i64
  %65 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %device, align 4
  %sector_size.i = getelementptr inbounds %struct.scsi_device, ptr %66, i32 0, i32 20
  %67 = ptrtoint ptr %sector_size.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %sector_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool.not.i.i.i = icmp eq i32 %68, 0
  %69 = tail call i32 @llvm.ctlz.i32(i32 %68, i1 true) #9, !range !42
  %sub.i.op.i.i.op = sub nsw i32 22, %69
  %sub8.i = select i1 %tobool.not.i.i.i, i32 -10, i32 %sub.i.op.i.i.op
  %sh_prom.i = zext i32 %sub8.i to i64
  %shl.i = shl i64 %conv, %sh_prom.i
  %conv37 = trunc i64 %shl.i to i32
  %max_segments = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 37, i32 21
  %70 = ptrtoint ptr %max_segments to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %max_segments, align 4
  %conv38 = zext i16 %71 to i32
  %shl = shl nuw nsw i32 %conv38, 3
  %72 = tail call i32 @llvm.umin.i32(i32 %shl, i32 %conv37)
  %max_hw_sectors.i = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 37, i32 3
  %73 = ptrtoint ptr %max_hw_sectors.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %max_hw_sectors.i, align 4
  %75 = tail call i32 @llvm.umin.i32(i32 %72, i32 %74)
  tail call void @blk_queue_max_zone_append_sectors(ptr noundef %3, i32 noundef %75) #9
  %76 = ptrtoint ptr %zoned.i to i32
  call void @__asan_loadN_noabort(i32 %76, i32 4)
  %bf.load.i.i = load i32, ptr %zoned.i, align 2
  %77 = and i32 %bf.load.i.i, 49152
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %77)
  %cmp.i.i = icmp eq i32 %77, 16384
  br i1 %cmp.i.i, label %if.end35.lor.lhs.false.i_crit_edge, label %sd_is_zoned.exit.i

if.end35.lor.lhs.false.i_crit_edge:               ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false.i

sd_is_zoned.exit.i:                               ; preds = %if.end35
  %78 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %device, align 4
  %type.i.i = getelementptr inbounds %struct.scsi_device, ptr %79, i32 0, i32 22
  %80 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %81)
  %cmp1.i.not.i = icmp eq i8 %81, 20
  br i1 %cmp1.i.not.i, label %sd_is_zoned.exit.i.lor.lhs.false.i_crit_edge, label %sd_is_zoned.exit.i.unlock_crit_edge

sd_is_zoned.exit.i.unlock_crit_edge:              ; preds = %sd_is_zoned.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

sd_is_zoned.exit.i.lor.lhs.false.i_crit_edge:     ; preds = %sd_is_zoned.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %sd_is_zoned.exit.i.lor.lhs.false.i_crit_edge, %if.end35.lor.lhs.false.i_crit_edge
  %capacity.i = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 19
  %82 = ptrtoint ptr %capacity.i to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %capacity.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %83)
  %tobool1.not.i = icmp eq i64 %83, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.unlock_crit_edge, label %if.end.i

lor.lhs.false.i.unlock_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

if.end.i:                                         ; preds = %lor.lhs.false.i
  %84 = ptrtoint ptr %zone_blocks10 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %zone_blocks10, align 8
  %sub.i107 = add i32 %85, -1
  %conv.i = zext i32 %sub.i107 to i64
  %and.i108 = and i64 %83, %conv.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i108)
  %tobool3.not.i = icmp eq i64 %and.i108, 0
  %86 = ptrtoint ptr %disk1 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %disk1, align 8
  %tobool14.not.i = icmp eq ptr %87, null
  %88 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %device, align 4
  br i1 %tobool3.not.i, label %if.else.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i
  br i1 %tobool14.not.i, label %cond.false.i110, label %cond.true.i109

cond.true.i109:                                   ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #11
  %disk_name.i = getelementptr inbounds %struct.gendisk, ptr %87, i32 0, i32 3
  %90 = ptrtoint ptr %nr_zones22 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %nr_zones22, align 8
  %sub7.i = add i32 %91, -1
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.10, ptr noundef %89, ptr noundef %disk_name.i, ptr noundef nonnull @.str.11, i32 noundef %sub7.i, i32 noundef %85) #9
  br label %unlock

cond.false.i110:                                  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #11
  %92 = ptrtoint ptr %nr_zones22 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %nr_zones22, align 8
  %sub11.i = add i32 %93, -1
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.10, ptr noundef %89, ptr noundef null, ptr noundef nonnull @.str.11, i32 noundef %sub11.i, i32 noundef %85) #9
  br label %unlock

if.else.i:                                        ; preds = %if.end.i
  br i1 %tobool14.not.i, label %cond.false22.i, label %cond.true15.i

cond.true15.i:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %disk_name18.i = getelementptr inbounds %struct.gendisk, ptr %87, i32 0, i32 3
  %94 = ptrtoint ptr %nr_zones22 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %nr_zones22, align 8
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.10, ptr noundef %89, ptr noundef %disk_name18.i, ptr noundef nonnull @.str.12, i32 noundef %95, i32 noundef %85) #9
  br label %unlock

cond.false22.i:                                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %96 = ptrtoint ptr %nr_zones22 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %nr_zones22, align 8
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.10, ptr noundef %89, ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef %97, i32 noundef %85) #9
  br label %unlock

unlock:                                           ; preds = %cond.false22.i, %cond.true15.i, %cond.false.i110, %cond.true.i109, %lor.lhs.false.i.unlock_crit_edge, %sd_is_zoned.exit.i.unlock_crit_edge, %if.then32, %if.then26, %land.lhs.true14.unlock_crit_edge
  %ret.1 = phi i32 [ 0, %land.lhs.true14.unlock_crit_edge ], [ %call28, %if.then32 ], [ -12, %if.then26 ], [ 0, %sd_is_zoned.exit.i.unlock_crit_edge ], [ 0, %lor.lhs.false.i.unlock_crit_edge ], [ 0, %cond.true.i109 ], [ 0, %cond.false.i110 ], [ 0, %cond.true15.i ], [ 0, %cond.false22.i ]
  tail call void @mutex_unlock(ptr noundef %rev_mutex) #9
  br label %cleanup

cleanup:                                          ; preds = %unlock, %if.end6.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %unlock ], [ -12, %if.then.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_revalidate_disk_zones(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sd_zbc_revalidate_zones_cb(ptr nocapture noundef readonly %disk) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 10
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 8
  %zones_wp_offset = getelementptr inbounds %struct.scsi_disk, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %zones_wp_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %zones_wp_offset, align 4
  %rev_wp_offset = getelementptr inbounds %struct.scsi_disk, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %rev_wp_offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rev_wp_offset, align 4
  store ptr %5, ptr %zones_wp_offset, align 4
  store ptr %3, ptr %rev_wp_offset, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_max_zone_append_sectors(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sd_zbc_read_zones(ptr noundef %sdkp, ptr noundef %buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %disk1 = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 3
  %0 = ptrtoint ptr %disk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disk1, align 8
  %queue = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %queue, align 4
  %zoned.i = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 37
  %4 = ptrtoint ptr %zoned.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %bf.load.i = load i32, ptr %zoned.i, align 2
  %5 = and i32 %bf.load.i, 49152
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %5)
  %cmp.i = icmp eq i32 %5, 16384
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %sd_is_zoned.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

sd_is_zoned.exit:                                 ; preds = %entry
  %device.i = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 1
  %6 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device.i, align 4
  %type.i = getelementptr inbounds %struct.scsi_device, ptr %7, i32 0, i32 22
  %8 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %9)
  %cmp1.i.not = icmp eq i8 %9, 20
  br i1 %cmp1.i.not, label %sd_is_zoned.exit.if.end_crit_edge, label %sd_is_zoned.exit.cleanup_crit_edge

sd_is_zoned.exit.cleanup_crit_edge:               ; preds = %sd_is_zoned.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sd_is_zoned.exit.if.end_crit_edge:                ; preds = %sd_is_zoned.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %sd_is_zoned.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %device = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 1
  %10 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device, align 4
  %use_16_for_rw = getelementptr inbounds %struct.scsi_device, ptr %11, i32 0, i32 41
  %12 = ptrtoint ptr %use_16_for_rw to i32
  call void @__asan_loadN_noabort(i32 %12, i32 8)
  %bf.load = load i64, ptr %use_16_for_rw, align 4
  %bf.set = or i64 %bf.load, 8796093022208
  store i64 %bf.set, ptr %use_16_for_rw, align 4
  %13 = load ptr, ptr %device, align 4
  %use_10_for_rw = getelementptr inbounds %struct.scsi_device, ptr %13, i32 0, i32 41
  %14 = ptrtoint ptr %use_10_for_rw to i32
  call void @__asan_loadN_noabort(i32 %14, i32 8)
  %bf.load3 = load i64, ptr %use_10_for_rw, align 4
  %bf.clear4 = and i64 %bf.load3, -281474976710657
  store i64 %bf.clear4, ptr %use_10_for_rw, align 4
  %zoned.i.i = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 37, i32 27
  %15 = ptrtoint ptr %zoned.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %zoned.i.i, align 4
  %call.off.i = add i32 %16, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.off.i)
  %switch.i = icmp ult i32 %call.off.i, 2
  br i1 %switch.i, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %rev_mutex.i = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %rev_mutex.i, i32 noundef 0) #9
  %zones_wp_offset.i = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 12
  %17 = ptrtoint ptr %zones_wp_offset.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %zones_wp_offset.i, align 4
  tail call void @kvfree(ptr noundef %18) #9
  %19 = ptrtoint ptr %zones_wp_offset.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %zones_wp_offset.i, align 4
  %zone_wp_update_buf.i = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 17
  %20 = ptrtoint ptr %zone_wp_update_buf.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %zone_wp_update_buf.i, align 8
  tail call void @kfree(ptr noundef %21) #9
  %22 = ptrtoint ptr %zone_wp_update_buf.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %zone_wp_update_buf.i, align 8
  %nr_zones.i = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 5
  %23 = call ptr @memset(ptr %nr_zones.i, i32 0, i32 16)
  tail call void @mutex_unlock(ptr noundef %rev_mutex.i) #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %24 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %device, align 4
  %call.i = tail call i32 @scsi_get_vpd_page(ptr noundef %25, i8 noundef zeroext -74, ptr noundef %buf, i32 noundef 64) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end8
  %26 = ptrtoint ptr %disk1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %disk1, align 8
  %tobool1.not.i = icmp eq ptr %27, null
  %28 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %device, align 4
  br i1 %tobool1.not.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %disk_name.i = getelementptr inbounds %struct.gendisk, ptr %27, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.10, ptr noundef %29, ptr noundef %disk_name.i, ptr noundef nonnull @.str.13) #9
  br label %err

cond.false.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.10, ptr noundef %29, ptr noundef null, ptr noundef nonnull @.str.13) #9
  br label %err

if.end.i:                                         ; preds = %if.end8
  %30 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %device, align 4
  %type.i66 = getelementptr inbounds %struct.scsi_device, ptr %31, i32 0, i32 22
  %32 = ptrtoint ptr %type.i66 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %type.i66, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %33)
  %cmp.not.i = icmp eq i8 %33, 20
  br i1 %cmp.not.i, label %if.else.i, label %if.then7.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %zoned.i to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %bf.load.i67 = load i32, ptr %zoned.i, align 2
  %bf.set.i = or i32 %bf.load.i67, 8192
  store i32 %bf.set.i, ptr %zoned.i, align 2
  %arrayidx.i = getelementptr i8, ptr %buf, i32 8
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %arrayidx.i, align 1
  %zones_optimal_open.i = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 9
  %37 = ptrtoint ptr %zones_optimal_open.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %zones_optimal_open.i, align 8
  %arrayidx9.i = getelementptr i8, ptr %buf, i32 12
  %38 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %arrayidx9.i, align 1
  %zones_optimal_nonseq.i = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 10
  %40 = ptrtoint ptr %zones_optimal_nonseq.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %zones_optimal_nonseq.i, align 4
  br label %if.end22.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx11.i = getelementptr i8, ptr %buf, i32 4
  %41 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx11.i, align 1
  %43 = and i8 %42, 1
  %and.i = zext i8 %43 to i32
  %44 = ptrtoint ptr %zoned.i to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %bf.load14.i = load i32, ptr %zoned.i, align 2
  %bf.shl.i = shl nuw nsw i32 %and.i, 13
  %bf.clear15.i = and i32 %bf.load14.i, -8193
  %bf.set16.i = or i32 %bf.shl.i, %bf.clear15.i
  store i32 %bf.set16.i, ptr %zoned.i, align 2
  %zones_optimal_open17.i = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 9
  %45 = ptrtoint ptr %zones_optimal_open17.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %zones_optimal_open17.i, align 8
  %zones_optimal_nonseq18.i = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 10
  %46 = ptrtoint ptr %zones_optimal_nonseq18.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %zones_optimal_nonseq18.i, align 4
  %arrayidx19.i = getelementptr i8, ptr %buf, i32 16
  %47 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %arrayidx19.i, align 1
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.else.i, %if.then7.i
  %.sink.i = phi i32 [ %48, %if.else.i ], [ 0, %if.then7.i ]
  %49 = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 11
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %.sink.i, ptr %49, align 8
  %51 = ptrtoint ptr %zoned.i to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %bf.load24.i = load i32, ptr %zoned.i, align 2
  %52 = and i32 %bf.load24.i, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool26.not.i = icmp eq i32 %52, 0
  br i1 %tobool26.not.i, label %if.then27.i, label %if.end12

if.then27.i:                                      ; preds = %if.end22.i
  %53 = and i32 %bf.load24.i, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool31.not.i = icmp eq i32 %53, 0
  br i1 %tobool31.not.i, label %if.then27.i.err_crit_edge, label %if.then32.i

if.then27.i.err_crit_edge:                        ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.then32.i:                                      ; preds = %if.then27.i
  %54 = ptrtoint ptr %disk1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %disk1, align 8
  %tobool34.not.i = icmp eq ptr %55, null
  br i1 %tobool34.not.i, label %cond.false40.i, label %cond.true35.i

cond.true35.i:                                    ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #11
  %disk_name38.i = getelementptr inbounds %struct.gendisk, ptr %55, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.10, ptr noundef %31, ptr noundef %disk_name38.i, ptr noundef nonnull @.str.14) #9
  br label %err

cond.false40.i:                                   ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.10, ptr noundef %31, ptr noundef null, ptr noundef nonnull @.str.14) #9
  br label %err

if.end12:                                         ; preds = %if.end22.i
  %call.i68 = tail call fastcc i32 @sd_zbc_do_report_zones(ptr noundef %sdkp, ptr noundef %buf, i32 noundef 512, i64 noundef 0, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i68)
  %tobool.not.i69 = icmp eq i32 %call.i68, 0
  br i1 %tobool.not.i69, label %if.end.i72, label %if.end12.err_crit_edge

if.end12.err_crit_edge:                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end.i72:                                       ; preds = %if.end12
  %56 = ptrtoint ptr %zoned.i to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %bf.load.i70 = load i32, ptr %zoned.i, align 2
  %57 = and i32 %bf.load.i70, 196608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp.i71 = icmp eq i32 %57, 0
  br i1 %cmp.i71, label %if.then1.i, label %if.end.i72.if.end21.i_crit_edge

if.end.i72.if.end21.i_crit_edge:                  ; preds = %if.end.i72
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21.i

if.then1.i:                                       ; preds = %if.end.i72
  %arrayidx.i73 = getelementptr i8, ptr %buf, i32 8
  %58 = ptrtoint ptr %arrayidx.i73 to i32
  call void @__asan_loadN_noabort(i32 %58, i32 8)
  %59 = load i64, ptr %arrayidx.i73, align 1
  %capacity.i = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 19
  %60 = ptrtoint ptr %capacity.i to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %capacity.i, align 8
  %add.i = add i64 %59, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %61, i64 %add.i)
  %cmp3.not.i = icmp eq i64 %61, %add.i
  br i1 %cmp3.not.i, label %if.then1.i.if.end21.i_crit_edge, label %if.then4.i

if.then1.i.if.end21.i_crit_edge:                  ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21.i

if.then4.i:                                       ; preds = %if.then1.i
  %62 = and i32 %bf.load.i70, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool8.not.i = icmp eq i32 %62, 0
  br i1 %tobool8.not.i, label %if.then4.i.if.end17.i_crit_edge, label %if.then9.i

if.then4.i.if.end17.i_crit_edge:                  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.i

if.then9.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #11
  %63 = ptrtoint ptr %disk1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %disk1, align 8
  %tobool10.not.i = icmp eq ptr %64, null
  %65 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %device, align 4
  %disk_name.i75 = getelementptr inbounds %struct.gendisk, ptr %64, i32 0, i32 3
  %disk_name.sink.i = select i1 %tobool10.not.i, ptr null, ptr %disk_name.i75
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.15, ptr noundef %66, ptr noundef %disk_name.sink.i, ptr noundef nonnull @.str.16, i64 noundef %61, i64 noundef %add.i) #9
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then9.i, %if.then4.i.if.end17.i_crit_edge
  %67 = ptrtoint ptr %capacity.i to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 %add.i, ptr %capacity.i, align 8
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.end17.i, %if.then1.i.if.end21.i_crit_edge, %if.end.i72.if.end21.i_crit_edge
  %arrayidx22.i = getelementptr i8, ptr %buf, i32 72
  %68 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_loadN_noabort(i32 %68, i32 8)
  %69 = load i64, ptr %arrayidx22.i, align 1
  %70 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %device, align 4
  %sector_size.i.i = getelementptr inbounds %struct.scsi_device, ptr %71, i32 0, i32 20
  %72 = ptrtoint ptr %sector_size.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %sector_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool.not.i.i.i.i = icmp eq i32 %73, 0
  %74 = tail call i32 @llvm.ctlz.i32(i32 %73, i1 true) #9, !range !42
  %sub.i.op.i.i.i.op = sub nsw i32 22, %74
  %sub8.i.i = select i1 %tobool.not.i.i.i.i, i32 -10, i32 %sub.i.op.i.i.i.op
  %sh_prom.i.i = zext i32 %sub8.i.i to i64
  %shl.i.i = shl i64 %69, %sh_prom.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %shl.i.i)
  %cmp26.i = icmp ugt i64 %shl.i.i, 4294967295
  br i1 %cmp26.i, label %if.then27.i76, label %if.end15

if.then27.i76:                                    ; preds = %if.end21.i
  %75 = ptrtoint ptr %zoned.i to i32
  call void @__asan_loadN_noabort(i32 %75, i32 4)
  %bf.load29.i = load i32, ptr %zoned.i, align 2
  %76 = and i32 %bf.load29.i, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool32.not.i = icmp eq i32 %76, 0
  br i1 %tobool32.not.i, label %if.then27.i76.err_crit_edge, label %if.then33.i

if.then27.i76.err_crit_edge:                      ; preds = %if.then27.i76
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.then33.i:                                      ; preds = %if.then27.i76
  %77 = ptrtoint ptr %disk1 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %disk1, align 8
  %tobool35.not.i = icmp eq ptr %78, null
  br i1 %tobool35.not.i, label %cond.false41.i, label %cond.true36.i

cond.true36.i:                                    ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #11
  %disk_name39.i = getelementptr inbounds %struct.gendisk, ptr %78, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.10, ptr noundef %71, ptr noundef %disk_name39.i, ptr noundef nonnull @.str.17) #9
  br label %err

cond.false41.i:                                   ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.10, ptr noundef %71, ptr noundef null, ptr noundef nonnull @.str.17) #9
  br label %err

if.end15:                                         ; preds = %if.end21.i
  %conv.i = trunc i64 %69 to i32
  tail call void @blk_queue_flag_set(i32 noundef 26, ptr noundef %3) #9
  tail call void @blk_queue_required_elevator_features(ptr noundef %3, i32 noundef 1) #9
  %79 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %49, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %80)
  %cmp16 = icmp eq i32 %80, -1
  %spec.select = select i1 %cmp16, i32 0, i32 %80
  %81 = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 42
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %spec.select, ptr %81, align 8
  %max_active_zones1.i = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 43
  %83 = ptrtoint ptr %max_active_zones1.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %max_active_zones1.i, align 4
  %capacity = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 19
  %84 = ptrtoint ptr %capacity to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %capacity, align 8
  %sub = add i64 %85, -1
  %sub20 = add i32 %conv.i, -1
  %conv = zext i32 %sub20 to i64
  %or = or i64 %sub, %conv
  %add = add i64 %or, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i)
  %tobool.not.i.i = icmp eq i32 %conv.i, 0
  %86 = tail call i32 @llvm.ctlz.i32(i32 %conv.i, i1 true) #9, !range !42
  %sub.i.op.i = xor i32 %86, 31
  %sub.i = select i1 %tobool.not.i.i, i32 -1, i32 %sub.i.op.i
  %sh_prom = zext i32 %sub.i to i64
  %shr = lshr i64 %add, %sh_prom
  %conv30 = trunc i64 %shr to i32
  %87 = ptrtoint ptr %zoned.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %zoned.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %88)
  %cmp32 = icmp eq i32 %88, 2
  br i1 %cmp32, label %if.then34, label %if.end15.if.end35_crit_edge

if.end15.if.end35_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

if.then34:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %physical_block_size = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 28
  %89 = ptrtoint ptr %physical_block_size to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %physical_block_size, align 8
  tail call void @blk_queue_zone_write_granularity(ptr noundef %3, i32 noundef %90) #9
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %if.end15.if.end35_crit_edge
  %rev_nr_zones = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 6
  %91 = ptrtoint ptr %rev_nr_zones to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %conv30, ptr %rev_nr_zones, align 4
  %rev_zone_blocks = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 8
  %92 = ptrtoint ptr %rev_zone_blocks to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %conv.i, ptr %rev_zone_blocks, align 4
  br label %cleanup

err:                                              ; preds = %cond.false41.i, %cond.true36.i, %if.then27.i76.err_crit_edge, %if.end12.err_crit_edge, %cond.false40.i, %cond.true35.i, %if.then27.i.err_crit_edge, %cond.false.i, %cond.true.i
  %ret.0 = phi i32 [ -19, %cond.false.i ], [ -19, %cond.true.i ], [ -19, %cond.true35.i ], [ -19, %cond.false40.i ], [ -19, %if.then27.i.err_crit_edge ], [ -27, %if.then27.i76.err_crit_edge ], [ -27, %cond.false41.i ], [ -27, %cond.true36.i ], [ %call.i68, %if.end12.err_crit_edge ]
  %capacity36 = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 19
  %93 = ptrtoint ptr %capacity36 to i32
  call void @__asan_store8_noabort(i32 %93)
  store i64 0, ptr %capacity36, align 8
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end35, %if.then7, %sd_is_zoned.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err ], [ 0, %if.end35 ], [ 0, %if.then7 ], [ 0, %sd_is_zoned.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_flag_set(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_required_elevator_features(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_zone_write_granularity(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__vmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdev_prefix_printk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sd_print_result(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sd_print_sense_hdr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__scsi_execute(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__blk_req_zone_write_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_zbc_update_wp_offset_workfn(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1116
  %zones_wp_offset_lock = getelementptr i8, ptr %work, i32 -140
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %zones_wp_offset_lock) #9
  %nr_zones = getelementptr i8, ptr %work, i32 -172
  %0 = ptrtoint ptr %nr_zones to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_zones, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp753.not = icmp eq i32 %1, 0
  br i1 %cmp753.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %zones_wp_offset = getelementptr i8, ptr %work, i32 -144
  %zone_wp_update_buf = getelementptr i8, ptr %work, i32 44
  %zone_blocks = getelementptr i8, ptr %work, i32 -164
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %flags.055 = phi i32 [ %call3, %for.body.lr.ph ], [ %flags.1, %for.inc.for.body_crit_edge ]
  %zno.054 = phi i64 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %zones_wp_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %zones_wp_offset, align 4
  %idxprom = trunc i64 %zno.054 to i32
  %arrayidx = getelementptr i32, ptr %3, i32 %idxprom
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %5)
  %cmp9.not = icmp eq i32 %5, -2
  br i1 %cmp9.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end:                                           ; preds = %for.body
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %zones_wp_offset_lock, i32 noundef %flags.055) #9
  %6 = ptrtoint ptr %zone_wp_update_buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %zone_wp_update_buf, align 8
  %8 = ptrtoint ptr %zone_blocks to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %zone_blocks, align 8
  %conv12 = zext i32 %9 to i64
  %mul = mul i64 %zno.054, %conv12
  %call13 = tail call fastcc i32 @sd_zbc_do_report_zones(ptr noundef %add.ptr, ptr noundef %7, i32 noundef 512, i64 noundef %mul, i1 noundef zeroext true)
  %call23 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %zones_wp_offset_lock) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool.not = icmp eq i32 %call13, 0
  br i1 %tobool.not, label %if.then28, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then28:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %zone_wp_update_buf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %zone_wp_update_buf, align 8
  %add.ptr30 = getelementptr i8, ptr %11, i32 64
  %call32 = tail call fastcc i32 @sd_zbc_parse_report(ptr noundef %add.ptr, ptr noundef %add.ptr30, i32 noundef %idxprom, ptr noundef nonnull @sd_zbc_update_wp_offset_cb, ptr noundef %add.ptr)
  br label %for.inc

for.inc:                                          ; preds = %if.then28, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %flags.1 = phi i32 [ %flags.055, %for.body.for.inc_crit_edge ], [ %call23, %if.end.for.inc_crit_edge ], [ %call23, %if.then28 ]
  %inc = add nuw nsw i64 %zno.054, 1
  %12 = ptrtoint ptr %nr_zones to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nr_zones, align 8
  %conv6 = zext i32 %13 to i64
  %cmp7 = icmp ult i64 %inc, %conv6
  br i1 %cmp7, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %flags.0.lcssa = phi i32 [ %call3, %entry.for.end_crit_edge ], [ %flags.1, %for.inc.for.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %zones_wp_offset_lock, i32 noundef %flags.0.lcssa) #9
  %device = getelementptr i8, ptr %work, i32 -1112
  %14 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device, align 4
  tail call void @scsi_device_put(ptr noundef %15) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_zbc_update_wp_offset_cb(ptr nocapture noundef readonly %zone, i32 noundef %idx, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.scsi_disk, ptr %data, i32 0, i32 13, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !43

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 272, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %type.i = getelementptr inbounds %struct.blk_zone, ptr %zone, i32 0, i32 3
  %1 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %2)
  %cmp.i = icmp eq i8 %2, 1
  br i1 %cmp.i, label %if.end.sd_zbc_get_zone_wp_offset.exit_crit_edge, label %if.end.i

if.end.sd_zbc_get_zone_wp_offset.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sd_zbc_get_zone_wp_offset.exit

if.end.i:                                         ; preds = %if.end
  %cond.i = getelementptr inbounds %struct.blk_zone, ptr %zone, i32 0, i32 4
  %3 = ptrtoint ptr %cond.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %cond.i, align 1
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.22)
  switch i8 %4, label %if.end.i.sd_zbc_get_zone_wp_offset.exit_crit_edge [
    i8 2, label %if.end.i.sw.bb.i_crit_edge
    i8 3, label %if.end.i.sw.bb.i_crit_edge27
    i8 4, label %if.end.i.sw.bb.i_crit_edge28
    i8 14, label %sw.bb4.i
  ]

if.end.i.sw.bb.i_crit_edge28:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

if.end.i.sw.bb.i_crit_edge27:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

if.end.i.sw.bb.i_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

if.end.i.sd_zbc_get_zone_wp_offset.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sd_zbc_get_zone_wp_offset.exit

sw.bb.i:                                          ; preds = %if.end.i.sw.bb.i_crit_edge, %if.end.i.sw.bb.i_crit_edge27, %if.end.i.sw.bb.i_crit_edge28
  %wp.i = getelementptr inbounds %struct.blk_zone, ptr %zone, i32 0, i32 2
  %6 = ptrtoint ptr %wp.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %wp.i, align 8
  %8 = ptrtoint ptr %zone to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %zone, align 8
  %sub.i = sub i64 %7, %9
  %conv3.i = trunc i64 %sub.i to i32
  br label %sd_zbc_get_zone_wp_offset.exit

sw.bb4.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %len.i = getelementptr inbounds %struct.blk_zone, ptr %zone, i32 0, i32 1
  %10 = ptrtoint ptr %len.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %len.i, align 8
  %conv5.i = trunc i64 %11 to i32
  br label %sd_zbc_get_zone_wp_offset.exit

sd_zbc_get_zone_wp_offset.exit:                   ; preds = %sw.bb4.i, %sw.bb.i, %if.end.i.sd_zbc_get_zone_wp_offset.exit_crit_edge, %if.end.sd_zbc_get_zone_wp_offset.exit_crit_edge
  %retval.0.i = phi i32 [ %conv5.i, %sw.bb4.i ], [ %conv3.i, %sw.bb.i ], [ 0, %if.end.sd_zbc_get_zone_wp_offset.exit_crit_edge ], [ 0, %if.end.i.sd_zbc_get_zone_wp_offset.exit_crit_edge ]
  %zones_wp_offset = getelementptr inbounds %struct.scsi_disk, ptr %data, i32 0, i32 12
  %12 = ptrtoint ptr %zones_wp_offset to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %zones_wp_offset, align 4
  %arrayidx = getelementptr i32, ptr %13, i32 %idx
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %retval.0.i, ptr %arrayidx, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_device_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_get_vpd_page(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !13, !15, !16, !18, !20, !21, !23, !25, !27, !29, !30}
!llvm.named.register.sp = !{!32}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/sd_zbc.c", i32 116, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/scsi/sd_zbc.c", i32 118, i32 25}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/scsi/sd_zbc.c", i32 126, i32 3}
!7 = !{ptr @sd_zbc_init_disk.__key, !8, !"__key", i1 false, i1 false}
!8 = !{!"../drivers/scsi/sd_zbc.c", i32 659, i32 2}
!9 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @sd_zbc_init_disk.__key.5, !11, !"__key", i1 false, i1 false}
!11 = !{!"../drivers/scsi/sd_zbc.c", i32 661, i32 2}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @sd_zbc_init_disk.__key.7, !14, !"__key", i1 false, i1 false}
!14 = !{!"../drivers/scsi/sd_zbc.c", i32 662, i32 2}
!15 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/scsi/sd_zbc.c", i32 272, i32 2}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/scsi/sd_zbc.c", i32 645, i32 3}
!20 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/scsi/sd_zbc.c", i32 650, i32 3}
!23 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/scsi/sd_zbc.c", i32 552, i32 3}
!25 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/scsi/sd_zbc.c", i32 578, i32 4}
!27 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/scsi/sd_zbc.c", i32 616, i32 5}
!29 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/scsi/sd_zbc.c", i32 629, i32 4}
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
!42 = !{i32 0, i32 33}
!43 = !{!"branch_weights", i32 1, i32 2000}
