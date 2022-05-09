; ModuleID = '/llk/IR_all_yes/drivers/md/dm-zoned-metadata.c_pt.bc'
source_filename = "../drivers/md/dm-zoned-metadata.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.bio_list = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.uuid_t = type { [16 x i8] }
%struct.dm_zone = type { %struct.list_head, ptr, i32, %struct.atomic_t, i32, i32, i32, i32, ptr }
%struct.dmz_dev = type { ptr, ptr, ptr, [32 x i8], %struct.uuid_t, i64, i32, i32, i32, i32, i64, i32, %struct.atomic_t, %struct.list_head, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.list_head }
%struct.dmz_metadata = type { ptr, i32, [32 x i8], [32 x i8], %struct.uuid_t, i64, i32, i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.xarray, [2 x %struct.dmz_sb], i32, i32, i64, i32, i32, %struct.atomic_t, %struct.rw_semaphore, %struct.mutex, %struct.spinlock, %struct.rb_root, %struct.list_head, %struct.list_head, %struct.shrinker, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.list_head, %struct.wait_queue_head }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dmz_sb = type { i64, ptr, ptr, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rb_root = type { ptr }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.blk_plug = type { ptr, ptr, i16, i16, i8, i8, i8, %struct.list_head }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.41, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.41 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.dmz_super = type { i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, [32 x i8], [16 x i8], [16 x i8], [400 x i8] }
%struct.dmz_mblock = type { %struct.rb_node, %struct.list_head, i64, i32, i32, ptr, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.dmz_map = type { i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.shrink_control = type { i32, i32, i32, i32, ptr }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.58, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.34 }
%struct.llist_node = type { ptr }
%union.anon.34 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.36 }
%union.anon.36 = type { %struct.anon.37 }
%struct.anon.37 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.58 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.blk_zone = type { i64, i64, i64, i8, i8, i8, i8, [4 x i8], i64, [24 x i8] }

@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/md/dm-zoned-metadata.c\00", [33 x i8] zeroinitializer }, align 32
@dmz_alloc_zone._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 2282, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\014device-mapper: zoned metadata: (%s): Zone %u is offline\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dmz_alloc_zone\00", [17 x i8] zeroinitializer }, align 32
@dmz_alloc_zone._entry_ptr = internal global ptr @dmz_alloc_zone._entry, section ".printk_index", align 4
@dmz_alloc_zone._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.2, ptr @.str, i32 2287, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\014device-mapper: zoned metadata: (%s): Zone %u has metadata\0A\00", [35 x i8] zeroinitializer }, align 32
@dmz_alloc_zone._entry_ptr.5 = internal global ptr @dmz_alloc_zone._entry.3, section ".printk_index", align 4
@dmz_validate_blocks.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.7, ptr @.str, ptr @.str.8, i8 2, i8 113, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dm_zoned\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dmz_validate_blocks\00", [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"device-mapper: zoned metadata: (%s): => VALIDATE zone %u, block %llu, %u blocks\0A\00", [47 x i8] zeroinitializer }, align 32
@dmz_validate_blocks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str, i32 2533, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\014device-mapper: zoned metadata: (%s): Zone %u: weight %u should be <= %u\0A\00", [53 x i8] zeroinitializer }, align 32
@dmz_validate_blocks._entry_ptr = internal global ptr @dmz_validate_blocks._entry, section ".printk_index", align 4
@dmz_invalidate_blocks.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.10, ptr @.str, ptr @.str.11, i8 2, i8 -123, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dmz_invalidate_blocks\00", [42 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"device-mapper: zoned metadata: (%s): => INVALIDATE zone %u, block %llu, %u blocks\0A\00", [45 x i8] zeroinitializer }, align 32
@dmz_invalidate_blocks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str, i32 2612, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\014device-mapper: zoned metadata: (%s): Zone %u: weight %u should be >= %u\0A\00", [53 x i8] zeroinitializer }, align 32
@dmz_invalidate_blocks._entry_ptr = internal global ptr @dmz_invalidate_blocks._entry, section ".printk_index", align 4
@dmz_ctr_metadata.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&zmd->mblk_sem\00", [17 x i8] zeroinitializer }, align 32
@dmz_ctr_metadata.__key.14 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&zmd->mblk_flush_lock\00", [42 x i8] zeroinitializer }, align 32
@dmz_ctr_metadata.__key.16 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&zmd->mblk_lock\00", [16 x i8] zeroinitializer }, align 32
@dmz_ctr_metadata.__key.18 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&zmd->map_lock\00", [17 x i8] zeroinitializer }, align 32
@dmz_ctr_metadata.__key.20 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&zmd->free_wq\00", [18 x i8] zeroinitializer }, align 32
@dmz_ctr_metadata._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str, i32 2931, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\013device-mapper: zoned metadata: (%s): metadata zone %u not present\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dmz_ctr_metadata\00", [47 x i8] zeroinitializer }, align 32
@dmz_ctr_metadata._entry_ptr = internal global ptr @dmz_ctr_metadata._entry, section ".printk_index", align 4
@dmz_ctr_metadata._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str, i32 2937, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\013device-mapper: zoned metadata: (%s): metadata zone %d is not random\0A\00", [57 x i8] zeroinitializer }, align 32
@dmz_ctr_metadata._entry_ptr.26 = internal global ptr @dmz_ctr_metadata._entry.24, section ".printk_index", align 4
@dmz_ctr_metadata._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.23, ptr @.str, i32 2963, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\013device-mapper: zoned metadata: (%s): Register metadata cache shrinker failed\0A\00", [48 x i8] zeroinitializer }, align 32
@dmz_ctr_metadata._entry_ptr.29 = internal global ptr @dmz_ctr_metadata._entry.27, section ".printk_index", align 4
@dmz_ctr_metadata._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.23, ptr @.str, i32 2967, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\016device-mapper: zoned metadata: (%s): DM-Zoned metadata version %d\0A\00", [59 x i8] zeroinitializer }, align 32
@dmz_ctr_metadata._entry_ptr.32 = internal global ptr @dmz_ctr_metadata._entry.30, section ".printk_index", align 4
@dmz_ctr_metadata._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.23, ptr @.str, i32 2972, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"\016device-mapper: zoned metadata: (%s):   %u zones of %llu 512-byte logical sectors\0A\00", [44 x i8] zeroinitializer }, align 32
@dmz_ctr_metadata._entry_ptr.35 = internal global ptr @dmz_ctr_metadata._entry.33, section ".printk_index", align 4
@dmz_ctr_metadata.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.23, ptr @.str, ptr @.str.36, i8 2, i8 -25, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"device-mapper: zoned metadata: (%s):   %u metadata zones\0A\00", [38 x i8] zeroinitializer }, align 32
@dmz_ctr_metadata.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.23, ptr @.str, ptr @.str.37, i8 2, i8 -24, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"device-mapper: zoned metadata: (%s):   %u data zones for %u chunks\0A\00", [60 x i8] zeroinitializer }, align 32
@dmz_ctr_metadata.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.23, ptr @.str, ptr @.str.38, i8 2, i8 -24, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"device-mapper: zoned metadata: (%s):     %u cache zones (%u unmapped)\0A\00", [57 x i8] zeroinitializer }, align 32
@dmz_ctr_metadata.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.23, ptr @.str, ptr @.str.39, i8 2, i8 -23, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"device-mapper: zoned metadata: (%s):     %u random zones (%u unmapped)\0A\00", [56 x i8] zeroinitializer }, align 32
@dmz_ctr_metadata.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.23, ptr @.str, ptr @.str.40, i8 2, i8 -22, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"device-mapper: zoned metadata: (%s):     %u sequential zones (%u unmapped)\0A\00", [52 x i8] zeroinitializer }, align 32
@dmz_ctr_metadata.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.23, ptr @.str, ptr @.str.41, i8 2, i8 -21, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"device-mapper: zoned metadata: (%s):   %u reserved sequential data zones\0A\00", [54 x i8] zeroinitializer }, align 32
@dmz_ctr_metadata.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.23, ptr @.str, ptr @.str.42, i8 2, i8 -21, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"device-mapper: zoned metadata: (%s): Format:\0A\00", [50 x i8] zeroinitializer }, align 32
@dmz_ctr_metadata.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.23, ptr @.str, ptr @.str.43, i8 2, i8 -21, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"device-mapper: zoned metadata: (%s): %u metadata blocks per set (%u max cache)\0A\00", [48 x i8] zeroinitializer }, align 32
@dmz_ctr_metadata.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.23, ptr @.str, ptr @.str.44, i8 2, i8 -20, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"device-mapper: zoned metadata: (%s):   %u data zone mapping blocks\0A\00", [60 x i8] zeroinitializer }, align 32
@dmz_ctr_metadata.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.23, ptr @.str, ptr @.str.45, i8 2, i8 -20, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"device-mapper: zoned metadata: (%s):   %u bitmap blocks\0A\00", [39 x i8] zeroinitializer }, align 32
@dmz_resume_metadata._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str, i32 3032, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013device-mapper: zoned metadata: (%s): Unable to get zone %u\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dmz_resume_metadata\00", [44 x i8] zeroinitializer }, align 32
@dmz_resume_metadata._entry_ptr = internal global ptr @dmz_resume_metadata._entry, section ".printk_index", align 4
@dmz_resume_metadata._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str, i32 3039, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013device-mapper: zoned metadata: (%s): Broken zone %u\0A\00", [41 x i8] zeroinitializer }, align 32
@dmz_resume_metadata._entry_ptr.50 = internal global ptr @dmz_resume_metadata._entry.48, section ".printk_index", align 4
@dmz_resume_metadata._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.47, ptr @.str, i32 3044, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dmz_resume_metadata._entry_ptr.52 = internal global ptr @dmz_resume_metadata._entry.51, section ".printk_index", align 4
@dmz_resume_metadata._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.47, ptr @.str, i32 3053, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\013device-mapper: zoned metadata: (%s): Zone %u: Invalid wp (%llu / %llu)\0A\00", [54 x i8] zeroinitializer }, align 32
@dmz_resume_metadata._entry_ptr.55 = internal global ptr @dmz_resume_metadata._entry.53, section ".printk_index", align 4
@fs_bio_set = external dso_local global %struct.bio_set, align 4
@.str.56 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/wait_bit.h\00", [39 x i8] zeroinitializer }, align 32
@dmz_handle_seq_write_err._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str, i32 1648, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"\014device-mapper: zoned metadata: (%s): Processing zone %u write error (zone wp %u/%u)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dmz_handle_seq_write_err\00", [39 x i8] zeroinitializer }, align 32
@dmz_handle_seq_write_err._entry_ptr = internal global ptr @dmz_handle_seq_write_err._entry, section ".printk_index", align 4
@dmz_reset_zone._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str, i32 1682, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013device-mapper: zoned metadata: (%s): Reset zone %u failed %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dmz_reset_zone\00", [17 x i8] zeroinitializer }, align 32
@dmz_reset_zone._entry_ptr = internal global ptr @dmz_reset_zone._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@dmz_init_zones._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str, i32 1521, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013device-mapper: zoned metadata: (%s): No zones found\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dmz_init_zones\00", [17 x i8] zeroinitializer }, align 32
@dmz_init_zones._entry_ptr = internal global ptr @dmz_init_zones._entry, section ".printk_index", align 4
@dmz_init_zones.__UNIQUE_ID_ddebug283 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.63, ptr @.str, ptr @.str.64, i8 1, i8 125, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"device-mapper: zoned metadata: (%s): Using %zu B for zone information\0A\00", [57 x i8] zeroinitializer }, align 32
@dmz_init_zones.__UNIQUE_ID_ddebug284 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.63, ptr @.str, ptr @.str.65, i8 1, i8 127, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"device-mapper: zoned metadata: (%s): Failed to emulate zones, error %d\0A\00", [56 x i8] zeroinitializer }, align 32
@dmz_init_zones.__UNIQUE_ID_ddebug285 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.63, ptr @.str, ptr @.str.66, i8 1, i8 -124, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"device-mapper: zoned metadata: (%s): Failed to report zones, error %d\0A\00", [57 x i8] zeroinitializer }, align 32
@dmz_init_zones.__UNIQUE_ID_ddebug286 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.63, ptr @.str, ptr @.str.66, i8 1, i8 -120, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.67 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@dmz_load_sb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str, i32 1253, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\013device-mapper: zoned metadata: (%s): Primary super block zone not set\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dmz_load_sb\00", [20 x i8] zeroinitializer }, align 32
@dmz_load_sb._entry_ptr = internal global ptr @dmz_load_sb._entry, section ".printk_index", align 4
@dmz_load_sb._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.69, ptr @.str, i32 1262, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\013device-mapper: zoned metadata: (%s): Read primary super block failed\0A\00", [56 x i8] zeroinitializer }, align 32
@dmz_load_sb._entry_ptr.72 = internal global ptr @dmz_load_sb._entry.70, section ".printk_index", align 4
@dmz_load_sb._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.69, ptr @.str, i32 1284, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\013device-mapper: zoned metadata: (%s): Read secondary super block failed\0A\00", [54 x i8] zeroinitializer }, align 32
@dmz_load_sb._entry_ptr.75 = internal global ptr @dmz_load_sb._entry.73, section ".printk_index", align 4
@dmz_load_sb._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.69, ptr @.str, i32 1294, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013device-mapper: zoned metadata: (%s): No valid super block found\0A\00", [61 x i8] zeroinitializer }, align 32
@dmz_load_sb._entry_ptr.78 = internal global ptr @dmz_load_sb._entry.76, section ".printk_index", align 4
@dmz_load_sb._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.69, ptr @.str, i32 1304, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\013device-mapper: zoned metadata: (%s): Recovery of superblock 0 failed\0A\00", [56 x i8] zeroinitializer }, align 32
@dmz_load_sb._entry_ptr.81 = internal global ptr @dmz_load_sb._entry.79, section ".printk_index", align 4
@dmz_load_sb._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.69, ptr @.str, i32 1316, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\013device-mapper: zoned metadata: (%s): Recovery of superblock 1 failed\0A\00", [56 x i8] zeroinitializer }, align 32
@dmz_load_sb._entry_ptr.84 = internal global ptr @dmz_load_sb._entry.82, section ".printk_index", align 4
@dmz_load_sb.__UNIQUE_ID_ddebug278 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.69, ptr @.str, ptr @.str.85, i8 1, i8 76, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"device-mapper: zoned metadata: (%s): Using super block %u (gen %llu)\0A\00", [58 x i8] zeroinitializer }, align 32
@dmz_load_sb._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.69, ptr @.str, i32 1347, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [97 x i8], [63 x i8] } { [97 x i8] c"\013device-mapper: zoned metadata: (%s): Tertiary super block zone %u not marked as metadata zone\0A\00", [63 x i8] zeroinitializer }, align 32
@dmz_load_sb._entry_ptr.88 = internal global ptr @dmz_load_sb._entry.86, section ".printk_index", align 4
@dmz_load_sb._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.69, ptr @.str, i32 1354, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\013device-mapper: zoned metadata: (%s): Read tertiary super block failed\0A\00", [55 x i8] zeroinitializer }, align 32
@dmz_load_sb._entry_ptr.91 = internal global ptr @dmz_load_sb._entry.89, section ".printk_index", align 4
@dmz_read_sb.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.92, ptr @.str, ptr @.str.93, i8 1, i8 23, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dmz_read_sb\00", [20 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"device-mapper: zoned metadata: (%s): read superblock set %d dev %s block %llu\0A\00", [49 x i8] zeroinitializer }, align 32
@dmz_check_sb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.95, ptr @.str, i32 1004, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"\013device-mapper: zoned metadata: (%s): Invalid meta magic (needed 0x%08x, got 0x%08x)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dmz_check_sb\00", [19 x i8] zeroinitializer }, align 32
@dmz_check_sb._entry_ptr = internal global ptr @dmz_check_sb._entry, section ".printk_index", align 4
@dmz_check_sb._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.95, ptr @.str, i32 1011, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\013device-mapper: zoned metadata: (%s): Invalid meta version (needed %d, got %d)\0A\00", [47 x i8] zeroinitializer }, align 32
@dmz_check_sb._entry_ptr.98 = internal global ptr @dmz_check_sb._entry.96, section ".printk_index", align 4
@dmz_check_sb._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.95, ptr @.str, i32 1015, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\013device-mapper: zoned metadata: (%s): Tertiary superblocks are not supported\0A\00", [49 x i8] zeroinitializer }, align 32
@dmz_check_sb._entry_ptr.101 = internal global ptr @dmz_check_sb._entry.99, section ".printk_index", align 4
@dmz_check_sb._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.95, ptr @.str, i32 1025, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"\013device-mapper: zoned metadata: (%s): Invalid checksum (needed 0x%08x, got 0x%08x)\0A\00", [43 x i8] zeroinitializer }, align 32
@dmz_check_sb._entry_ptr.104 = internal global ptr @dmz_check_sb._entry.102, section ".printk_index", align 4
@dmz_check_sb._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.95, ptr @.str, i32 1034, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"\013device-mapper: zoned metadata: (%s): Invalid superblock position (is %llu expected %llu)\0A\00", [36 x i8] zeroinitializer }, align 32
@dmz_check_sb._entry_ptr.107 = internal global ptr @dmz_check_sb._entry.105, section ".printk_index", align 4
@dmz_check_sb._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.95, ptr @.str, i32 1042, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013device-mapper: zoned metadata: (%s): NULL DM-Zoned uuid\0A\00", [37 x i8] zeroinitializer }, align 32
@dmz_check_sb._entry_ptr.110 = internal global ptr @dmz_check_sb._entry.108, section ".printk_index", align 4
@dmz_check_sb._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.95, ptr @.str, i32 1049, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"\013device-mapper: zoned metadata: (%s): mismatching DM-Zoned uuid, is %pUl expected %pUl\0A\00", [39 x i8] zeroinitializer }, align 32
@dmz_check_sb._entry_ptr.113 = internal global ptr @dmz_check_sb._entry.111, section ".printk_index", align 4
@dmz_check_sb._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.95, ptr @.str, i32 1057, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"\013device-mapper: zoned metadata: (%s): mismatching DM-Zoned label, is %s expected %s\0A\00", [42 x i8] zeroinitializer }, align 32
@dmz_check_sb._entry_ptr.116 = internal global ptr @dmz_check_sb._entry.114, section ".printk_index", align 4
@dmz_check_sb._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.95, ptr @.str, i32 1062, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013device-mapper: zoned metadata: (%s): NULL device uuid\0A\00", [39 x i8] zeroinitializer }, align 32
@dmz_check_sb._entry_ptr.119 = internal global ptr @dmz_check_sb._entry.117, section ".printk_index", align 4
@dmz_check_sb._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.95, ptr @.str, i32 1073, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\014device-mapper: zoned metadata: (%s): Invalid generation %llu\0A\00", [32 x i8] zeroinitializer }, align 32
@dmz_check_sb._entry_ptr.122 = internal global ptr @dmz_check_sb._entry.120, section ".printk_index", align 4
@dmz_check_sb._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.95, ptr @.str, i32 1083, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\013device-mapper: zoned metadata: (%s): Invalid number of metadata blocks\0A\00", [54 x i8] zeroinitializer }, align 32
@dmz_check_sb._entry_ptr.125 = internal global ptr @dmz_check_sb._entry.123, section ".printk_index", align 4
@dmz_check_sb._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.95, ptr @.str, i32 1089, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"\013device-mapper: zoned metadata: (%s): Invalid number of reserved sequential zones\0A\00", [44 x i8] zeroinitializer }, align 32
@dmz_check_sb._entry_ptr.128 = internal global ptr @dmz_check_sb._entry.126, section ".printk_index", align 4
@dmz_check_sb._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.95, ptr @.str, i32 1097, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\013device-mapper: zoned metadata: (%s): Invalid number of chunks %u / %u\0A\00", [55 x i8] zeroinitializer }, align 32
@dmz_check_sb._entry_ptr.131 = internal global ptr @dmz_check_sb._entry.129, section ".printk_index", align 4
@uuid_null = external dso_local constant %struct.uuid_t, align 1
@dmz_recover_mblocks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.133, ptr @.str, i32 1203, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\014device-mapper: zoned metadata: (%s): Metadata set %u invalid: recovering\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dmz_recover_mblocks\00", [44 x i8] zeroinitializer }, align 32
@dmz_recover_mblocks._entry_ptr = internal global ptr @dmz_recover_mblocks._entry, section ".printk_index", align 4
@dmz_load_mapping._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.135, ptr @.str, i32 1734, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"\013device-mapper: zoned metadata: (%s): Chunk %u mapping: invalid data zone ID %u\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dmz_load_mapping\00", [47 x i8] zeroinitializer }, align 32
@dmz_load_mapping._entry_ptr = internal global ptr @dmz_load_mapping._entry, section ".printk_index", align 4
@dmz_load_mapping._entry.136 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.135, ptr @.str, i32 1741, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"\013device-mapper: zoned metadata: (%s): Chunk %u mapping: data zone %u not present\0A\00", [45 x i8] zeroinitializer }, align 32
@dmz_load_mapping._entry_ptr.138 = internal global ptr @dmz_load_mapping._entry.136, section ".printk_index", align 4
@dmz_load_mapping._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.135, ptr @.str, i32 1762, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"\013device-mapper: zoned metadata: (%s): Chunk %u mapping: invalid buffer zone ID %u\0A\00", [44 x i8] zeroinitializer }, align 32
@dmz_load_mapping._entry_ptr.141 = internal global ptr @dmz_load_mapping._entry.139, section ".printk_index", align 4
@dmz_load_mapping._entry.142 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.135, ptr @.str, i32 1769, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"\013device-mapper: zoned metadata: (%s): Chunk %u mapping: buffer zone %u not present\0A\00", [43 x i8] zeroinitializer }, align 32
@dmz_load_mapping._entry_ptr.144 = internal global ptr @dmz_load_mapping._entry.142, section ".printk_index", align 4
@dmz_load_mapping._entry.145 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.135, ptr @.str, i32 1774, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\013device-mapper: zoned metadata: (%s): Chunk %u mapping: invalid buffer zone %u\0A\00", [47 x i8] zeroinitializer }, align 32
@dmz_load_mapping._entry_ptr.147 = internal global ptr @dmz_load_mapping._entry.145, section ".printk_index", align 4
@dmz_print_dev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.149, ptr @.str, i32 2857, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\016device-mapper: zoned metadata: (%s): Regular block device\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dmz_print_dev\00", [18 x i8] zeroinitializer }, align 32
@dmz_print_dev._entry_ptr = internal global ptr @dmz_print_dev._entry, section ".printk_index", align 4
@dmz_print_dev._entry.150 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.149, ptr @.str, i32 2861, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\016device-mapper: zoned metadata: (%s): Host-%s zoned block device\0A\00", [61 x i8] zeroinitializer }, align 32
@dmz_print_dev._entry_ptr.152 = internal global ptr @dmz_print_dev._entry.150, section ".printk_index", align 4
@.str.153 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"aware\00", [26 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"managed\00", [24 x i8] zeroinitializer }, align 32
@dmz_print_dev._entry.155 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.149, ptr @.str, i32 2867, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"\016device-mapper: zoned metadata: (%s):   %llu 512-byte logical sectors (offset %llu)\0A\00", [42 x i8] zeroinitializer }, align 32
@dmz_print_dev._entry_ptr.157 = internal global ptr @dmz_print_dev._entry.155, section ".printk_index", align 4
@dmz_print_dev._entry.158 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.149, ptr @.str, i32 2870, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [98 x i8], [62 x i8] } { [98 x i8] c"\016device-mapper: zoned metadata: (%s):   %u zones of %llu 512-byte logical sectors (offset %llu)\0A\00", [62 x i8] zeroinitializer }, align 32
@dmz_print_dev._entry_ptr.160 = internal global ptr @dmz_print_dev._entry.158, section ".printk_index", align 4
@dmz_print_dev._entry.161 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.162, ptr @.str.149, ptr @.str, i32 2873, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\016device-mapper: zoned metadata: (%s):   %llu 512-byte logical sectors\0A\00", [56 x i8] zeroinitializer }, align 32
@dmz_print_dev._entry_ptr.163 = internal global ptr @dmz_print_dev._entry.161, section ".printk_index", align 4
@dmz_print_dev._entry.164 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.149, ptr @.str, i32 2875, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dmz_print_dev._entry_ptr.165 = internal global ptr @dmz_print_dev._entry.164, section ".printk_index", align 4
@dmz_cleanup_metadata._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.166, ptr @.str.167, ptr @.str, i32 2822, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\014device-mapper: zoned metadata: (%s): mblock %llu still in dirty list (ref %u)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dmz_cleanup_metadata\00", [43 x i8] zeroinitializer }, align 32
@dmz_cleanup_metadata._entry_ptr = internal global ptr @dmz_cleanup_metadata._entry, section ".printk_index", align 4
@dmz_cleanup_metadata._entry.168 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.169, ptr @.str.167, ptr @.str, i32 2840, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\014device-mapper: zoned metadata: (%s): mblock %llu ref %u still in rbtree\0A\00", [53 x i8] zeroinitializer }, align 32
@dmz_cleanup_metadata._entry_ptr.170 = internal global ptr @dmz_cleanup_metadata._entry.168, section ".printk_index", align 4
@dmz_update_zone._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.171, ptr @.str.172, ptr @.str, i32 1623, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013device-mapper: zoned metadata: (%s): Get zone %u report failed\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dmz_update_zone\00", [16 x i8] zeroinitializer }, align 32
@dmz_update_zone._entry_ptr = internal global ptr @dmz_update_zone._entry, section ".printk_index", align 4
@switch.table.dmz_init_zone = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 1, i32 2, i32 2], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 13, i64 15]
@__sancov_gen_cov_switch_values.173 = internal global [4 x i64] [i64 2, i64 8, i64 13, i64 15]
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 905, i32 6 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 2282, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 2287, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 2501, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 2531, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 2581, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 2611, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 2899, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 2900, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 2901, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 2905, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 2914, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 2930, i32 4 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 2936, i32 4 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 2963, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 2967, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 2971, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 2973, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 2975, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 2977, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 2980, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 2983, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 2987, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 2989, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 2990, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 2992, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 2994, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 3032, i32 4 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 3039, i32 4 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 3044, i32 4 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 3052, i32 4 }
@___asan_gen_.337 = private unnamed_addr constant [28 x i8] c"../include/linux/wait_bit.h\00", align 1
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 98, i32 2 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 1647, i32 2 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 1681, i32 4 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 1521, i32 3 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 1526, i32 2 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 1532, i32 4 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 1551, i32 5 }
@___asan_gen_.375 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.379 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 378, i32 2 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 1253, i32 3 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 1262, i32 3 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 1284, i32 3 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 1294, i32 3 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 1303, i32 4 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 1315, i32 4 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 1329, i32 2 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 1345, i32 5 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 1353, i32 5 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 1118, i32 2 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 1003, i32 3 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 1010, i32 3 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 1015, i32 3 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 1024, i32 3 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 1031, i32 3 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 1042, i32 4 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 1047, i32 4 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 1055, i32 4 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 1062, i32 4 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 1072, i32 5 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 1083, i32 3 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 1089, i32 3 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 1096, i32 3 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 1202, i32 2 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 1733, i32 4 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 1740, i32 4 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 1761, i32 4 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 1768, i32 4 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 1773, i32 4 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 2857, i32 3 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 2859, i32 3 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 2866, i32 3 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 2868, i32 3 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 2872, i32 3 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 2874, i32 3 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 2821, i32 3 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 2839, i32 3 }
@___asan_gen_.621 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.627 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.628 = private constant [34 x i8] c"../drivers/md/dm-zoned-metadata.c\00", align 1
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.628, i32 1622, i32 3 }
@___asan_gen_.630 = private unnamed_addr constant [27 x i8] c"switch.table.dmz_init_zone\00", align 1
@llvm.compiler.used = appending global [205 x ptr] [ptr @dmz_alloc_zone._entry, ptr @dmz_alloc_zone._entry.3, ptr @dmz_alloc_zone._entry_ptr, ptr @dmz_alloc_zone._entry_ptr.5, ptr @dmz_check_sb._entry, ptr @dmz_check_sb._entry.102, ptr @dmz_check_sb._entry.105, ptr @dmz_check_sb._entry.108, ptr @dmz_check_sb._entry.111, ptr @dmz_check_sb._entry.114, ptr @dmz_check_sb._entry.117, ptr @dmz_check_sb._entry.120, ptr @dmz_check_sb._entry.123, ptr @dmz_check_sb._entry.126, ptr @dmz_check_sb._entry.129, ptr @dmz_check_sb._entry.96, ptr @dmz_check_sb._entry.99, ptr @dmz_check_sb._entry_ptr, ptr @dmz_check_sb._entry_ptr.101, ptr @dmz_check_sb._entry_ptr.104, ptr @dmz_check_sb._entry_ptr.107, ptr @dmz_check_sb._entry_ptr.110, ptr @dmz_check_sb._entry_ptr.113, ptr @dmz_check_sb._entry_ptr.116, ptr @dmz_check_sb._entry_ptr.119, ptr @dmz_check_sb._entry_ptr.122, ptr @dmz_check_sb._entry_ptr.125, ptr @dmz_check_sb._entry_ptr.128, ptr @dmz_check_sb._entry_ptr.131, ptr @dmz_check_sb._entry_ptr.98, ptr @dmz_cleanup_metadata._entry, ptr @dmz_cleanup_metadata._entry.168, ptr @dmz_cleanup_metadata._entry_ptr, ptr @dmz_cleanup_metadata._entry_ptr.170, ptr @dmz_ctr_metadata._entry, ptr @dmz_ctr_metadata._entry.24, ptr @dmz_ctr_metadata._entry.27, ptr @dmz_ctr_metadata._entry.30, ptr @dmz_ctr_metadata._entry.33, ptr @dmz_ctr_metadata._entry_ptr, ptr @dmz_ctr_metadata._entry_ptr.26, ptr @dmz_ctr_metadata._entry_ptr.29, ptr @dmz_ctr_metadata._entry_ptr.32, ptr @dmz_ctr_metadata._entry_ptr.35, ptr @dmz_handle_seq_write_err._entry, ptr @dmz_handle_seq_write_err._entry_ptr, ptr @dmz_init_zones._entry, ptr @dmz_init_zones._entry_ptr, ptr @dmz_invalidate_blocks._entry, ptr @dmz_invalidate_blocks._entry_ptr, ptr @dmz_load_mapping._entry, ptr @dmz_load_mapping._entry.136, ptr @dmz_load_mapping._entry.139, ptr @dmz_load_mapping._entry.142, ptr @dmz_load_mapping._entry.145, ptr @dmz_load_mapping._entry_ptr, ptr @dmz_load_mapping._entry_ptr.138, ptr @dmz_load_mapping._entry_ptr.141, ptr @dmz_load_mapping._entry_ptr.144, ptr @dmz_load_mapping._entry_ptr.147, ptr @dmz_load_sb._entry, ptr @dmz_load_sb._entry.70, ptr @dmz_load_sb._entry.73, ptr @dmz_load_sb._entry.76, ptr @dmz_load_sb._entry.79, ptr @dmz_load_sb._entry.82, ptr @dmz_load_sb._entry.86, ptr @dmz_load_sb._entry.89, ptr @dmz_load_sb._entry_ptr, ptr @dmz_load_sb._entry_ptr.72, ptr @dmz_load_sb._entry_ptr.75, ptr @dmz_load_sb._entry_ptr.78, ptr @dmz_load_sb._entry_ptr.81, ptr @dmz_load_sb._entry_ptr.84, ptr @dmz_load_sb._entry_ptr.88, ptr @dmz_load_sb._entry_ptr.91, ptr @dmz_print_dev._entry, ptr @dmz_print_dev._entry.150, ptr @dmz_print_dev._entry.155, ptr @dmz_print_dev._entry.158, ptr @dmz_print_dev._entry.161, ptr @dmz_print_dev._entry.164, ptr @dmz_print_dev._entry_ptr, ptr @dmz_print_dev._entry_ptr.152, ptr @dmz_print_dev._entry_ptr.157, ptr @dmz_print_dev._entry_ptr.160, ptr @dmz_print_dev._entry_ptr.163, ptr @dmz_print_dev._entry_ptr.165, ptr @dmz_recover_mblocks._entry, ptr @dmz_recover_mblocks._entry_ptr, ptr @dmz_reset_zone._entry, ptr @dmz_reset_zone._entry_ptr, ptr @dmz_resume_metadata._entry, ptr @dmz_resume_metadata._entry.48, ptr @dmz_resume_metadata._entry.51, ptr @dmz_resume_metadata._entry.53, ptr @dmz_resume_metadata._entry_ptr, ptr @dmz_resume_metadata._entry_ptr.50, ptr @dmz_resume_metadata._entry_ptr.52, ptr @dmz_resume_metadata._entry_ptr.55, ptr @dmz_update_zone._entry, ptr @dmz_update_zone._entry_ptr, ptr @dmz_validate_blocks._entry, ptr @dmz_validate_blocks._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @dmz_ctr_metadata.__key, ptr @.str.13, ptr @dmz_ctr_metadata.__key.14, ptr @.str.15, ptr @dmz_ctr_metadata.__key.16, ptr @.str.17, ptr @dmz_ctr_metadata.__key.18, ptr @.str.19, ptr @dmz_ctr_metadata.__key.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @xa_init_flags.__key, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.71, ptr @.str.74, ptr @.str.77, ptr @.str.80, ptr @.str.83, ptr @.str.85, ptr @.str.87, ptr @.str.90, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.97, ptr @.str.100, ptr @.str.103, ptr @.str.106, ptr @.str.109, ptr @.str.112, ptr @.str.115, ptr @.str.118, ptr @.str.121, ptr @.str.124, ptr @.str.127, ptr @.str.130, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.137, ptr @.str.140, ptr @.str.143, ptr @.str.146, ptr @.str.148, ptr @.str.149, ptr @.str.151, ptr @.str.153, ptr @.str.154, ptr @.str.156, ptr @.str.159, ptr @.str.162, ptr @.str.166, ptr @.str.167, ptr @.str.169, ptr @.str.171, ptr @.str.172, ptr @switch.table.dmz_init_zone], section "llvm.metadata"
@0 = internal global [153 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmz_alloc_zone._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmz_alloc_zone._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmz_validate_blocks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmz_invalidate_blocks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmz_ctr_metadata.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmz_ctr_metadata.__key.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmz_ctr_metadata.__key.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmz_ctr_metadata.__key.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmz_ctr_metadata.__key.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmz_ctr_metadata._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmz_ctr_metadata._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmz_ctr_metadata._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmz_ctr_metadata._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmz_ctr_metadata._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmz_resume_metadata._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmz_resume_metadata._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmz_resume_metadata._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmz_resume_metadata._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmz_handle_seq_write_err._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmz_reset_zone._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmz_init_zones._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmz_load_sb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmz_load_sb._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmz_load_sb._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmz_load_sb._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmz_load_sb._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmz_load_sb._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmz_load_sb._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 97, i32 160, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmz_load_sb._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmz_check_sb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmz_check_sb._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmz_check_sb._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmz_check_sb._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmz_check_sb._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmz_check_sb._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmz_check_sb._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmz_check_sb._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmz_check_sb._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmz_check_sb._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmz_check_sb._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmz_check_sb._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmz_check_sb._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmz_recover_mblocks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmz_load_mapping._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmz_load_mapping._entry.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmz_load_mapping._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmz_load_mapping._entry.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmz_load_mapping._entry.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmz_print_dev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmz_print_dev._entry.150 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmz_print_dev._entry.155 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmz_print_dev._entry.158 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 98, i32 160, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmz_print_dev._entry.161 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmz_print_dev._entry.164 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmz_cleanup_metadata._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmz_cleanup_metadata._entry.168 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmz_update_zone._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dmz_init_zone to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @dmz_start_sect(ptr nocapture noundef readonly %zmd, ptr noundef readonly %zone) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %zone, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end23.i, !prof !312

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 223, i32 noundef 9, ptr noundef null) #15
  br label %dmz_dev_zone_id.exit

if.end23.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %id.i = getelementptr inbounds %struct.dm_zone, ptr %zone, i32 0, i32 4
  %0 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id.i, align 4
  %dev.i = getelementptr inbounds %struct.dm_zone, ptr %zone, i32 0, i32 1
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %zone_offset.i = getelementptr inbounds %struct.dmz_dev, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %zone_offset.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %zone_offset.i, align 8
  %sub.i = sub i32 %1, %5
  br label %dmz_dev_zone_id.exit

dmz_dev_zone_id.exit:                             ; preds = %if.end23.i, %do.end.i
  %retval.0.i = phi i32 [ 0, %do.end.i ], [ %sub.i, %if.end23.i ]
  %conv = zext i32 %retval.0.i to i64
  %zone_nr_sectors_shift = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 11
  %6 = ptrtoint ptr %zone_nr_sectors_shift to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %zone_nr_sectors_shift, align 8
  %shl = shl i64 %conv, %7
  ret i64 %shl
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @dmz_start_block(ptr nocapture noundef readonly %zmd, ptr noundef readonly %zone) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %zone, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end23.i, !prof !312

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 223, i32 noundef 9, ptr noundef null) #15
  br label %dmz_dev_zone_id.exit

if.end23.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %id.i = getelementptr inbounds %struct.dm_zone, ptr %zone, i32 0, i32 4
  %0 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id.i, align 4
  %dev.i = getelementptr inbounds %struct.dm_zone, ptr %zone, i32 0, i32 1
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %zone_offset.i = getelementptr inbounds %struct.dmz_dev, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %zone_offset.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %zone_offset.i, align 8
  %sub.i = sub i32 %1, %5
  br label %dmz_dev_zone_id.exit

dmz_dev_zone_id.exit:                             ; preds = %if.end23.i, %do.end.i
  %retval.0.i = phi i32 [ 0, %do.end.i ], [ %sub.i, %if.end23.i ]
  %conv = zext i32 %retval.0.i to i64
  %zone_nr_blocks_shift = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 9
  %6 = ptrtoint ptr %zone_nr_blocks_shift to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %zone_nr_blocks_shift, align 8
  %shl = shl i64 %conv, %7
  ret i64 %shl
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @dmz_zone_nr_blocks(ptr nocapture noundef readonly %zmd) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %zone_nr_blocks = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 8
  %0 = ptrtoint ptr %zone_nr_blocks to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %zone_nr_blocks, align 8
  %conv = trunc i64 %1 to i32
  ret i32 %conv
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @dmz_zone_nr_blocks_shift(ptr nocapture noundef readonly %zmd) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %zone_nr_blocks_shift = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 9
  %0 = ptrtoint ptr %zone_nr_blocks_shift to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %zone_nr_blocks_shift, align 8
  %conv = trunc i64 %1 to i32
  ret i32 %conv
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @dmz_zone_nr_sectors(ptr nocapture noundef readonly %zmd) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %zone_nr_sectors = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 10
  %0 = ptrtoint ptr %zone_nr_sectors to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %zone_nr_sectors, align 8
  %conv = trunc i64 %1 to i32
  ret i32 %conv
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @dmz_zone_nr_sectors_shift(ptr nocapture noundef readonly %zmd) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %zone_nr_sectors_shift = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 11
  %0 = ptrtoint ptr %zone_nr_sectors_shift to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %zone_nr_sectors_shift, align 8
  %conv = trunc i64 %1 to i32
  ret i32 %conv
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @dmz_nr_zones(ptr nocapture noundef readonly %zmd) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_zones = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 14
  %0 = ptrtoint ptr %nr_zones to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_zones, align 8
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @dmz_nr_chunks(ptr nocapture noundef readonly %zmd) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_chunks = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 22
  %0 = ptrtoint ptr %nr_chunks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_chunks, align 8
  ret i32 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @dmz_nr_rnd_zones(ptr nocapture noundef readonly %zmd, i32 noundef %idx) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %zmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %zmd, align 8
  %nr_rnd = getelementptr %struct.dmz_dev, ptr %1, i32 %idx, i32 11
  %2 = ptrtoint ptr %nr_rnd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_rnd, align 8
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dmz_nr_unmap_rnd_zones(ptr nocapture noundef readonly %zmd, i32 noundef %idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %zmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %zmd, align 8
  %unmap_nr_rnd = getelementptr %struct.dmz_dev, ptr %1, i32 %idx, i32 12
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %unmap_nr_rnd, i32 noundef 4) #15
  %2 = ptrtoint ptr %unmap_nr_rnd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %unmap_nr_rnd, align 4
  ret i32 %3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @dmz_nr_cache_zones(ptr nocapture noundef readonly %zmd) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_cache = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 40
  %0 = ptrtoint ptr %nr_cache to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_cache, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dmz_nr_unmap_cache_zones(ptr noundef %zmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %unmap_nr_cache = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 41
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %unmap_nr_cache, i32 noundef 4) #15
  %0 = ptrtoint ptr %unmap_nr_cache to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %unmap_nr_cache, align 4
  ret i32 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @dmz_nr_seq_zones(ptr nocapture noundef readonly %zmd, i32 noundef %idx) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %zmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %zmd, align 8
  %nr_seq = getelementptr %struct.dmz_dev, ptr %1, i32 %idx, i32 15
  %2 = ptrtoint ptr %nr_seq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_seq, align 8
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dmz_nr_unmap_seq_zones(ptr nocapture noundef readonly %zmd, i32 noundef %idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %zmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %zmd, align 8
  %unmap_nr_seq = getelementptr %struct.dmz_dev, ptr %1, i32 %idx, i32 16
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %unmap_nr_seq, i32 noundef 4) #15
  %2 = ptrtoint ptr %unmap_nr_seq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %unmap_nr_seq, align 4
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @dmz_metadata_label(ptr noundef readnone %zmd) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %label = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 3
  ret ptr %label
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dmz_check_dev(ptr nocapture noundef readonly %zmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_devs = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 1
  %0 = ptrtoint ptr %nr_devs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_devs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp4.not = icmp eq i32 %1, 0
  br i1 %cmp4.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.05, 1
  %2 = ptrtoint ptr %nr_devs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_devs, align 4
  %cmp = icmp ult i32 %inc, %3
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %i.05 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %4 = ptrtoint ptr %zmd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %zmd, align 8
  %arrayidx = getelementptr %struct.dmz_dev, ptr %5, i32 %i.05
  %call = tail call zeroext i1 @dmz_check_bdev(ptr noundef %arrayidx) #15
  br i1 %call, label %for.cond, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %cmp.lcssa = phi i1 [ true, %entry.cleanup_crit_edge ], [ %call, %for.cond.cleanup_crit_edge ], [ %call, %for.body.cleanup_crit_edge ]
  ret i1 %cmp.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dmz_check_bdev(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dmz_dev_is_dying(ptr nocapture noundef readonly %zmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_devs = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 1
  %0 = ptrtoint ptr %nr_devs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_devs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp4.not = icmp eq i32 %1, 0
  br i1 %cmp4.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.05, 1
  %2 = ptrtoint ptr %nr_devs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_devs, align 4
  %cmp = icmp ult i32 %inc, %3
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %i.05 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %4 = ptrtoint ptr %zmd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %zmd, align 8
  %arrayidx = getelementptr %struct.dmz_dev, ptr %5, i32 %i.05
  %call = tail call zeroext i1 @dmz_bdev_is_dying(ptr noundef %arrayidx) #15
  br i1 %call, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %cmp.lcssa = phi i1 [ false, %entry.cleanup_crit_edge ], [ %call, %for.cond.cleanup_crit_edge ], [ %call, %for.body.cleanup_crit_edge ]
  ret i1 %cmp.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dmz_bdev_is_dying(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dmz_lock_map(ptr noundef %zmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %map_lock = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 38
  tail call void @mutex_lock_nested(ptr noundef %map_lock, i32 noundef 0) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dmz_unlock_map(ptr noundef %zmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %map_lock = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 38
  tail call void @mutex_unlock(ptr noundef %map_lock) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dmz_lock_metadata(ptr noundef %zmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %mblk_sem = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 31
  tail call void @down_read(ptr noundef %mblk_sem) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dmz_unlock_metadata(ptr noundef %zmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %mblk_sem = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 31
  tail call void @up_read(ptr noundef %mblk_sem) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dmz_lock_flush(ptr noundef %zmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %mblk_flush_lock = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 32
  tail call void @mutex_lock_nested(ptr noundef %mblk_flush_lock, i32 noundef 0) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dmz_unlock_flush(ptr noundef %zmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %mblk_flush_lock = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 32
  tail call void @mutex_unlock(ptr noundef %mblk_flush_lock) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dmz_flush_metadata(ptr noundef %zmd) local_unnamed_addr #0 align 64 {
entry:
  %write_list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %write_list) #15
  %0 = getelementptr inbounds %struct.list_head, ptr %write_list, i32 0, i32 1
  %tobool.not = icmp eq ptr %zmd, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !312

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 905, i32 noundef 9, ptr noundef null) #15
  br label %cleanup

if.end23:                                         ; preds = %entry
  %1 = ptrtoint ptr %write_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %write_list, ptr %write_list, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %write_list, ptr %0, align 4
  %mblk_sem = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 31
  call void @down_write(ptr noundef %mblk_sem) #15
  %mblk_primary = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 25
  %3 = ptrtoint ptr %mblk_primary to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mblk_primary, align 8
  %dev24 = getelementptr %struct.dmz_metadata, ptr %zmd, i32 0, i32 24, i32 %4, i32 1
  %5 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev24, align 8
  %mblk_flush_lock.i = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 32
  call void @mutex_lock_nested(ptr noundef %mblk_flush_lock.i, i32 noundef 0) #15
  %call = call zeroext i1 @dmz_bdev_is_dying(ptr noundef %6) #15
  br i1 %call, label %if.end23.out_crit_edge, label %if.end26

if.end23.out_crit_edge:                           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end26:                                         ; preds = %if.end23
  %mblk_lock = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 33
  call void @_raw_spin_lock(ptr noundef %mblk_lock) #15
  %mblk_dirty_list = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 36
  %7 = ptrtoint ptr %mblk_dirty_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %mblk_dirty_list, align 4
  %cmp.i.not.i = icmp eq ptr %8, %mblk_dirty_list
  br i1 %cmp.i.not.i, label %if.end26.list_splice_init.exit_crit_edge, label %if.then.i

if.end26.list_splice_init.exit_crit_edge:         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_splice_init.exit

if.then.i:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #17
  %9 = ptrtoint ptr %write_list to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write_list, align 4
  %prev2.i.i = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 36, i32 1
  %11 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %13 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %write_list, ptr %prev3.i.i, align 4
  store ptr %8, ptr %write_list, align 4
  %14 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %10, ptr %12, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %15 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev6.i.i, align 4
  %16 = ptrtoint ptr %mblk_dirty_list to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %mblk_dirty_list, ptr %mblk_dirty_list, align 4
  store ptr %mblk_dirty_list, ptr %prev2.i.i, align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i, %if.end26.list_splice_init.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %mblk_lock) #15
  %17 = ptrtoint ptr %write_list to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %write_list, align 4
  %cmp.i.not = icmp eq ptr %18, %write_list
  br i1 %cmp.i.not, label %if.then30, label %if.end32

if.then30:                                        ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #17
  %19 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %6, align 8
  %call31 = call i32 @blkdev_issue_flush(ptr noundef %20) #15
  br label %err

if.end32:                                         ; preds = %list_splice_init.exit
  %21 = ptrtoint ptr %mblk_primary to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mblk_primary, align 8
  %xor.i = xor i32 %22, 1
  %call.i = call fastcc i32 @dmz_write_dirty_mblocks(ptr noundef nonnull %zmd, ptr noundef nonnull %write_list, i32 noundef %xor.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %dmz_log_dirty_mblocks.exit, label %if.end32.err_crit_edge

if.end32.err_crit_edge:                           ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #17
  br label %err

dmz_log_dirty_mblocks.exit:                       ; preds = %if.end32
  %call1.i = call fastcc i32 @dmz_write_sb(ptr noundef nonnull %zmd, i32 noundef %xor.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool34.not = icmp eq i32 %call1.i, 0
  br i1 %tobool34.not, label %if.end36, label %dmz_log_dirty_mblocks.exit.err_crit_edge

dmz_log_dirty_mblocks.exit.err_crit_edge:         ; preds = %dmz_log_dirty_mblocks.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %err

if.end36:                                         ; preds = %dmz_log_dirty_mblocks.exit
  %23 = ptrtoint ptr %mblk_primary to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mblk_primary, align 8
  %call38 = call fastcc i32 @dmz_write_dirty_mblocks(ptr noundef nonnull %zmd, ptr noundef nonnull %write_list, i32 noundef %24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %if.end36.err_crit_edge

if.end36.err_crit_edge:                           ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #17
  br label %err

if.end41:                                         ; preds = %if.end36
  %25 = ptrtoint ptr %mblk_primary to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mblk_primary, align 8
  %call43 = call fastcc i32 @dmz_write_sb(ptr noundef nonnull %zmd, i32 noundef %26)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %while.cond.preheader, label %if.end41.err_crit_edge

if.end41.err_crit_edge:                           ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #17
  br label %err

while.cond.preheader:                             ; preds = %if.end41
  %27 = ptrtoint ptr %write_list to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %write_list, align 4
  %cmp.i101.not118 = icmp eq ptr %28, %write_list
  br i1 %cmp.i101.not118, label %while.cond.preheader.while.end_crit_edge, label %while.body.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %mblk_lru_list = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 35
  %prev.i103 = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 35, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end55.while.body_crit_edge, %while.body.lr.ph
  %29 = phi ptr [ %28, %while.body.lr.ph ], [ %47, %if.end55.while.body_crit_edge ]
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %29) #15
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del_init.exit_crit_edge

while.body.list_del_init.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i.i, align 4
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %29, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev1.i.i.i, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %33, ptr %31, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %while.body.list_del_init.exit_crit_edge
  %36 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %29, ptr %29, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %37 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %29, ptr %prev.i3.i, align 4
  call void @_raw_spin_lock(ptr noundef %mblk_lock) #15
  %state = getelementptr i8, ptr %29, i32 24
  call void @_clear_bit(i32 noundef 0, ptr noundef %state) #15
  %ref = getelementptr i8, ptr %29, i32 20
  %38 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ref, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp = icmp eq i32 %39, 0
  br i1 %cmp, label %if.then53, label %list_del_init.exit.if.end55_crit_edge

list_del_init.exit.if.end55_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end55

if.then53:                                        ; preds = %list_del_init.exit
  %40 = ptrtoint ptr %prev.i103 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prev.i103, align 4
  %call.i.i104 = call zeroext i1 @__list_add_valid(ptr noundef %29, ptr noundef %41, ptr noundef %mblk_lru_list) #15
  br i1 %call.i.i104, label %if.end.i.i106, label %if.then53.if.end55_crit_edge

if.then53.if.end55_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end55

if.end.i.i106:                                    ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #17
  %42 = ptrtoint ptr %prev.i103 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %29, ptr %prev.i103, align 4
  %43 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %mblk_lru_list, ptr %29, align 4
  %44 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %prev.i3.i, align 4
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %29, ptr %41, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.end.i.i106, %if.then53.if.end55_crit_edge, %list_del_init.exit.if.end55_crit_edge
  call void @_raw_spin_unlock(ptr noundef %mblk_lock) #15
  %46 = ptrtoint ptr %write_list to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile ptr, ptr %write_list, align 4
  %cmp.i101.not = icmp eq ptr %47, %write_list
  br i1 %cmp.i101.not, label %if.end55.while.end_crit_edge, label %if.end55.while.body_crit_edge

if.end55.while.body_crit_edge:                    ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

if.end55.while.end_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.end:                                        ; preds = %if.end55.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %sb_gen = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 27
  %48 = ptrtoint ptr %sb_gen to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %sb_gen, align 8
  %inc = add i64 %49, 1
  store i64 %inc, ptr %sb_gen, align 8
  br label %out

out:                                              ; preds = %if.end64, %while.end, %if.end23.out_crit_edge
  %ret.0 = phi i32 [ 0, %while.end ], [ -5, %if.end23.out_crit_edge ], [ %spec.select, %if.end64 ]
  call void @mutex_unlock(ptr noundef %mblk_flush_lock.i) #15
  call void @up_write(ptr noundef %mblk_sem) #15
  br label %cleanup

err:                                              ; preds = %if.end41.err_crit_edge, %if.end36.err_crit_edge, %dmz_log_dirty_mblocks.exit.err_crit_edge, %if.end32.err_crit_edge, %if.then30
  %ret.1 = phi i32 [ %call31, %if.then30 ], [ %call1.i, %dmz_log_dirty_mblocks.exit.err_crit_edge ], [ %call38, %if.end36.err_crit_edge ], [ %call43, %if.end41.err_crit_edge ], [ %call.i, %if.end32.err_crit_edge ]
  %50 = ptrtoint ptr %write_list to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile ptr, ptr %write_list, align 4
  %cmp.i108.not = icmp eq ptr %51, %write_list
  br i1 %cmp.i108.not, label %err.if.end64_crit_edge, label %if.then60

err.if.end64_crit_edge:                           ; preds = %err
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end64

if.then60:                                        ; preds = %err
  call void @_raw_spin_lock(ptr noundef %mblk_lock) #15
  %52 = ptrtoint ptr %write_list to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile ptr, ptr %write_list, align 4
  %cmp.i.not.i110 = icmp eq ptr %53, %write_list
  br i1 %cmp.i.not.i110, label %if.then60.list_splice.exit_crit_edge, label %if.then.i114

if.then60.list_splice.exit_crit_edge:             ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_splice.exit

if.then.i114:                                     ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #17
  %54 = ptrtoint ptr %mblk_dirty_list to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mblk_dirty_list, align 4
  %56 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %0, align 4
  %prev3.i.i112 = getelementptr inbounds %struct.list_head, ptr %53, i32 0, i32 1
  %58 = ptrtoint ptr %prev3.i.i112 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %mblk_dirty_list, ptr %prev3.i.i112, align 4
  store ptr %53, ptr %mblk_dirty_list, align 4
  %59 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %55, ptr %57, align 4
  %prev6.i.i113 = getelementptr inbounds %struct.list_head, ptr %55, i32 0, i32 1
  %60 = ptrtoint ptr %prev6.i.i113 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %57, ptr %prev6.i.i113, align 4
  br label %list_splice.exit

list_splice.exit:                                 ; preds = %if.then.i114, %if.then60.list_splice.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %mblk_lock) #15
  br label %if.end64

if.end64:                                         ; preds = %list_splice.exit, %err.if.end64_crit_edge
  %call65 = call zeroext i1 @dmz_check_bdev(ptr noundef %6) #15
  %spec.select = select i1 %call65, i32 %ret.1, i32 -5
  br label %out

cleanup:                                          ; preds = %out, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %ret.0, %out ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %write_list) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkdev_issue_flush(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dmz_write_dirty_mblocks(ptr nocapture noundef readonly %zmd, ptr noundef readonly %write_list, i32 noundef %set) unnamed_addr #0 align 64 {
entry:
  %plug = alloca %struct.blk_plug, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr %struct.dmz_metadata, ptr %zmd, i32 0, i32 24, i32 %set, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %plug) #15
  %2 = call ptr @memset(ptr %plug, i32 255, i32 24)
  call void @blk_start_plug(ptr noundef nonnull %plug) #15
  %3 = ptrtoint ptr %write_list to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn62 = load ptr, ptr %write_list, align 4
  %cmp.not63 = icmp eq ptr %.pn62, %write_list
  br i1 %cmp.not63, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %arrayidx.i = getelementptr %struct.dmz_metadata, ptr %zmd, i32 0, i32 24, i32 %set
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %.pn65 = phi ptr [ %.pn62, %for.body.lr.ph ], [ %.pn, %if.end.for.body_crit_edge ]
  %nr_mblks_submitted.064 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %mblk.0 = getelementptr i8, ptr %.pn65, i32 -12
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 8
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %arrayidx.i, align 8
  %no.i = getelementptr i8, ptr %.pn65, i32 12
  %8 = ptrtoint ptr %no.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %no.i, align 8
  %add.i = add i64 %9, %7
  %call.i = call zeroext i1 @dmz_bdev_is_dying(ptr noundef %5) #15
  br i1 %call.i, label %for.body.for.end_crit_edge, label %if.end.i

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

if.end.i:                                         ; preds = %for.body
  %call.i.i = call ptr @bio_alloc_bioset(i32 noundef 3072, i16 noundef zeroext 1, ptr noundef nonnull @fs_bio_set) #15
  %tobool.not.i = icmp eq ptr %call.i.i, null
  %state.i = getelementptr i8, ptr %.pn65, i32 24
  br i1 %tobool.not.i, label %if.then6.i, label %if.end7.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @_set_bit(i32 noundef 3, ptr noundef %state.i) #15
  br label %for.end

if.end7.i:                                        ; preds = %if.end.i
  call void @_set_bit(i32 noundef 2, ptr noundef %state.i) #15
  %shl.i = shl i64 %add.i, 3
  %bi_iter.i = getelementptr inbounds %struct.bio, ptr %call.i.i, i32 0, i32 8
  %10 = ptrtoint ptr %bi_iter.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %shl.i, ptr %bi_iter.i, align 8
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %5, align 8
  %bi_flags.i.i.i = getelementptr inbounds %struct.bio, ptr %call.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %bi_flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %bi_flags.i.i.i, align 4
  %conv1.i.i.i = and i16 %14, -2049
  store i16 %conv1.i.i.i, ptr %bi_flags.i.i.i, align 4
  %bi_bdev.i.i = getelementptr inbounds %struct.bio, ptr %call.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %bi_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bi_bdev.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %16, %12
  br i1 %cmp.not.i.i, label %if.end7.i.if.end_crit_edge, label %if.then.i.i

if.end7.i.if.end_crit_edge:                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then.i.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv1.i8.i.i = and i16 %14, -2177
  %17 = ptrtoint ptr %bi_flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv1.i8.i.i, ptr %bi_flags.i.i.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.i.i, %if.end7.i.if.end_crit_edge
  %18 = ptrtoint ptr %bi_bdev.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %12, ptr %bi_bdev.i.i, align 4
  call void @bio_associate_blkg(ptr noundef nonnull %call.i.i) #15
  %bi_private.i = getelementptr inbounds %struct.bio, ptr %call.i.i, i32 0, i32 11
  %19 = ptrtoint ptr %bi_private.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %mblk.0, ptr %bi_private.i, align 4
  %bi_end_io.i = getelementptr inbounds %struct.bio, ptr %call.i.i, i32 0, i32 10
  %20 = ptrtoint ptr %bi_end_io.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @dmz_mblock_bio_end_io, ptr %bi_end_io.i, align 8
  %bi_opf.i.i = getelementptr inbounds %struct.bio, ptr %call.i.i, i32 0, i32 2
  %21 = ptrtoint ptr %bi_opf.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 12289, ptr %bi_opf.i.i, align 8
  %page.i = getelementptr i8, ptr %.pn65, i32 28
  %22 = ptrtoint ptr %page.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %page.i, align 8
  %call9.i = call i32 @bio_add_page(ptr noundef nonnull %call.i.i, ptr noundef %23, i32 noundef 4096, i32 noundef 0) #15
  call void @submit_bio(ptr noundef nonnull %call.i.i) #15
  %inc = add i32 %nr_mblks_submitted.064, 1
  %24 = ptrtoint ptr %.pn65 to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn = load ptr, ptr %.pn65, align 4
  %cmp.not = icmp eq ptr %.pn, %write_list
  br i1 %cmp.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %if.then6.i, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %nr_mblks_submitted.061 = phi i32 [ %nr_mblks_submitted.064, %if.then6.i ], [ 0, %entry.for.end_crit_edge ], [ %inc, %if.end.for.end_crit_edge ], [ %nr_mblks_submitted.064, %for.body.for.end_crit_edge ]
  %ret.1 = phi i32 [ -12, %if.then6.i ], [ 0, %entry.for.end_crit_edge ], [ 0, %if.end.for.end_crit_edge ], [ -5, %for.body.for.end_crit_edge ]
  call void @blk_finish_plug(ptr noundef nonnull %plug) #15
  %25 = ptrtoint ptr %write_list to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn5569 = load ptr, ptr %write_list, align 4
  %cmp13.not70 = icmp eq ptr %.pn5569, %write_list
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_mblks_submitted.061)
  %tobool16.not71 = icmp eq i32 %nr_mblks_submitted.061, 0
  %or.cond72 = select i1 %cmp13.not70, i1 true, i1 %tobool16.not71
  br i1 %or.cond72, label %for.end.for.end33_crit_edge, label %for.end.if.end18_crit_edge

for.end.if.end18_crit_edge:                       ; preds = %for.end
  br label %if.end18

for.end.for.end33_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end33

if.end18:                                         ; preds = %if.end26.if.end18_crit_edge, %for.end.if.end18_crit_edge
  %.pn5575 = phi ptr [ %.pn55, %if.end26.if.end18_crit_edge ], [ %.pn5569, %for.end.if.end18_crit_edge ]
  %ret.274 = phi i32 [ %ret.3, %if.end26.if.end18_crit_edge ], [ %ret.1, %for.end.if.end18_crit_edge ]
  %nr_mblks_submitted.173 = phi i32 [ %dec, %if.end26.if.end18_crit_edge ], [ %nr_mblks_submitted.061, %for.end.if.end18_crit_edge ]
  %state = getelementptr i8, ptr %.pn5575, i32 24
  call void @__might_sleep(ptr noundef nonnull @.str.56, i32 noundef 98) #15
  %26 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %state, align 4
  %28 = and i32 %27, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i56 = icmp eq i32 %28, 0
  br i1 %tobool.not.i56, label %if.end18.wait_on_bit_io.exit_crit_edge, label %if.end.i57

if.end18.wait_on_bit_io.exit_crit_edge:           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  br label %wait_on_bit_io.exit

if.end.i57:                                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  %call3.i = call i32 @out_of_line_wait_on_bit(ptr noundef %state, i32 noundef 2, ptr noundef nonnull @bit_wait_io, i32 noundef 2) #15
  br label %wait_on_bit_io.exit

wait_on_bit_io.exit:                              ; preds = %if.end.i57, %if.end18.wait_on_bit_io.exit_crit_edge
  %29 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %state, align 4
  %31 = and i32 %30, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool22.not = icmp eq i32 %31, 0
  br i1 %tobool22.not, label %wait_on_bit_io.exit.if.end26_crit_edge, label %if.then23

wait_on_bit_io.exit.if.end26_crit_edge:           ; preds = %wait_on_bit_io.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end26

if.then23:                                        ; preds = %wait_on_bit_io.exit
  call void @__sanitizer_cov_trace_pc() #17
  call void @_clear_bit(i32 noundef 3, ptr noundef %state) #15
  %call25 = call zeroext i1 @dmz_check_bdev(ptr noundef %1) #15
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %wait_on_bit_io.exit.if.end26_crit_edge
  %ret.3 = phi i32 [ -5, %if.then23 ], [ %ret.274, %wait_on_bit_io.exit.if.end26_crit_edge ]
  %dec = add i32 %nr_mblks_submitted.173, -1
  %32 = ptrtoint ptr %.pn5575 to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pn55 = load ptr, ptr %.pn5575, align 4
  %cmp13.not = icmp eq ptr %.pn55, %write_list
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool16.not = icmp eq i32 %dec, 0
  %or.cond = select i1 %cmp13.not, i1 true, i1 %tobool16.not
  br i1 %or.cond, label %if.end26.for.end33_crit_edge, label %if.end26.if.end18_crit_edge

if.end26.if.end18_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18

if.end26.for.end33_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end33

for.end33:                                        ; preds = %if.end26.for.end33_crit_edge, %for.end.for.end33_crit_edge
  %ret.2.lcssa = phi i32 [ %ret.1, %for.end.for.end33_crit_edge ], [ %ret.3, %if.end26.for.end33_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2.lcssa)
  %cmp34 = icmp eq i32 %ret.2.lcssa, 0
  br i1 %cmp34, label %if.then35, label %for.end33.if.end37_crit_edge

for.end33.if.end37_crit_edge:                     ; preds = %for.end33
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end37

if.then35:                                        ; preds = %for.end33
  call void @__sanitizer_cov_trace_pc() #17
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 8
  %call36 = call i32 @blkdev_issue_flush(ptr noundef %34) #15
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %for.end33.if.end37_crit_edge
  %ret.4 = phi i32 [ %call36, %if.then35 ], [ %ret.2.lcssa, %for.end33.if.end37_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %plug) #15
  ret i32 %ret.4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dmz_write_sb(ptr nocapture noundef readonly %zmd, i32 noundef %set) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.dmz_metadata, ptr %zmd, i32 0, i32 24, i32 %set
  %mblk1 = getelementptr %struct.dmz_metadata, ptr %zmd, i32 0, i32 24, i32 %set, i32 2
  %0 = ptrtoint ptr %mblk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mblk1, align 4
  %sb5 = getelementptr %struct.dmz_metadata, ptr %zmd, i32 0, i32 24, i32 %set, i32 3
  %2 = ptrtoint ptr %sb5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sb5, align 8
  %dev8 = getelementptr %struct.dmz_metadata, ptr %zmd, i32 0, i32 24, i32 %set, i32 1
  %4 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev8, align 8
  %sb_gen9 = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 27
  %6 = ptrtoint ptr %sb_gen9 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %sb_gen9, align 8
  %add = add i64 %7, 1
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1145199172, ptr %3, align 8
  %sb_version = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 26
  %9 = ptrtoint ptr %sb_version to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sb_version, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %version = getelementptr inbounds %struct.dmz_super, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %version, align 4
  %13 = ptrtoint ptr %sb_version to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sb_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp = icmp ugt i32 %14, 1
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %dmz_uuid = getelementptr inbounds %struct.dmz_super, ptr %3, i32 0, i32 11
  %uuid = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 4
  %15 = call ptr @memcpy(ptr %dmz_uuid, ptr %uuid, i32 16)
  %dmz_label = getelementptr inbounds %struct.dmz_super, ptr %3, i32 0, i32 10
  %label = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 3
  %16 = call ptr @memcpy(ptr %dmz_label, ptr %label, i32 32)
  %dev_uuid = getelementptr inbounds %struct.dmz_super, ptr %3, i32 0, i32 12
  %uuid14 = getelementptr inbounds %struct.dmz_dev, ptr %5, i32 0, i32 4
  %17 = call ptr @memcpy(ptr %dev_uuid, ptr %uuid14, i32 16)
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %18 = tail call i64 @llvm.bswap.i64(i64 %add)
  %gen = getelementptr inbounds %struct.dmz_super, ptr %3, i32 0, i32 2
  %19 = ptrtoint ptr %gen to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %gen, align 8
  %zone = getelementptr %struct.dmz_metadata, ptr %zmd, i32 0, i32 24, i32 %set, i32 4
  %20 = ptrtoint ptr %zone to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %zone, align 4
  %id = getelementptr inbounds %struct.dm_zone, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %id, align 4
  %zone_nr_blocks_shift = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 9
  %24 = ptrtoint ptr %zone_nr_blocks_shift to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %zone_nr_blocks_shift, align 8
  %sh_prom = trunc i64 %25 to i32
  %shl = shl i32 %23, %sh_prom
  %conv = zext i32 %shl to i64
  %26 = tail call i64 @llvm.bswap.i64(i64 %conv)
  %sb_block17 = getelementptr inbounds %struct.dmz_super, ptr %3, i32 0, i32 3
  %27 = ptrtoint ptr %sb_block17 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %sb_block17, align 8
  %nr_meta_blocks = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 16
  %28 = ptrtoint ptr %nr_meta_blocks to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nr_meta_blocks, align 8
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  %nr_meta_blocks18 = getelementptr inbounds %struct.dmz_super, ptr %3, i32 0, i32 4
  %31 = ptrtoint ptr %nr_meta_blocks18 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %nr_meta_blocks18, align 8
  %nr_reserved_seq = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 21
  %32 = ptrtoint ptr %nr_reserved_seq to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %nr_reserved_seq, align 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  %nr_reserved_seq19 = getelementptr inbounds %struct.dmz_super, ptr %3, i32 0, i32 5
  %35 = ptrtoint ptr %nr_reserved_seq19 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %nr_reserved_seq19, align 4
  %nr_chunks = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 22
  %36 = ptrtoint ptr %nr_chunks to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %nr_chunks, align 8
  %38 = tail call i32 @llvm.bswap.i32(i32 %37)
  %nr_chunks20 = getelementptr inbounds %struct.dmz_super, ptr %3, i32 0, i32 6
  %39 = ptrtoint ptr %nr_chunks20 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %nr_chunks20, align 8
  %nr_map_blocks = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 13
  %40 = ptrtoint ptr %nr_map_blocks to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %nr_map_blocks, align 4
  %42 = tail call i32 @llvm.bswap.i32(i32 %41)
  %nr_map_blocks21 = getelementptr inbounds %struct.dmz_super, ptr %3, i32 0, i32 7
  %43 = ptrtoint ptr %nr_map_blocks21 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %nr_map_blocks21, align 4
  %nr_bitmap_blocks = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 12
  %44 = ptrtoint ptr %nr_bitmap_blocks to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %nr_bitmap_blocks, align 8
  %46 = tail call i32 @llvm.bswap.i32(i32 %45)
  %nr_bitmap_blocks22 = getelementptr inbounds %struct.dmz_super, ptr %3, i32 0, i32 8
  %47 = ptrtoint ptr %nr_bitmap_blocks22 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %nr_bitmap_blocks22, align 8
  %crc = getelementptr inbounds %struct.dmz_super, ptr %3, i32 0, i32 9
  %48 = ptrtoint ptr %crc to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %crc, align 4
  %conv23 = trunc i64 %add to i32
  %call = tail call i32 @crc32_le(i32 noundef %conv23, ptr noundef %3, i32 noundef 4096) #18
  %49 = tail call i32 @llvm.bswap.i32(i32 %call)
  %50 = ptrtoint ptr %crc to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %crc, align 4
  %51 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %arrayidx, align 8
  %page = getelementptr inbounds %struct.dmz_mblock, ptr %1, i32 0, i32 5
  %53 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %page, align 8
  %call27 = tail call fastcc i32 @dmz_rdwr_block(ptr noundef %5, i32 noundef 1, i64 noundef %52, ptr noundef %54)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp eq i32 %call27, 0
  br i1 %cmp28, label %if.then30, label %if.end.if.end32_crit_edge

if.end.if.end32_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32

if.then30:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %55 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %5, align 8
  %call31 = tail call i32 @blkdev_issue_flush(ptr noundef %56) #15
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.end.if.end32_crit_edge
  %ret.0 = phi i32 [ %call31, %if.then30 ], [ %call27, %if.end.if.end32_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dmz_lock_zone_reclaim(ptr noundef %zone) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %refcount.i = getelementptr inbounds %struct.dm_zone, ptr %zone, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount.i, i32 noundef 4) #15
  %0 = ptrtoint ptr %refcount.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %refcount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.i.not = icmp eq i32 %1, 0
  br i1 %tobool.i.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %flags = getelementptr inbounds %struct.dm_zone, ptr %zone, i32 0, i32 2
  %call1 = tail call i32 @_test_and_set_bit(i32 noundef 9, ptr noundef %flags) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  %lnot.ext = zext i1 %tobool.not to i32
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %lnot.ext, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dmz_unlock_zone_reclaim(ptr noundef %zone) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %refcount.i = getelementptr inbounds %struct.dm_zone, ptr %zone, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount.i, i32 noundef 4) #15
  %0 = ptrtoint ptr %refcount.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %refcount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.i.not = icmp eq i32 %1, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %do.end, !prof !313

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1931, i32 noundef 9, ptr noundef null) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %flags = getelementptr inbounds %struct.dm_zone, ptr %zone, i32 0, i32 2
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %4 = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool21.not = icmp eq i32 %4, 0
  br i1 %tobool21.not, label %do.end39, label %if.end.if.end45_crit_edge, !prof !312

if.end.if.end45_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end45

do.end39:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1932, i32 noundef 9, ptr noundef null) #15
  br label %if.end45

if.end45:                                         ; preds = %do.end39, %if.end.if.end45_crit_edge
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %flags, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !314
  tail call void @llvm.prefetch.p0(ptr %flags, i32 1, i32 3, i32 1) #15
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %flags, ptr %flags, i32 512, ptr elementtype(i32) %flags) #15, !srcloc !315
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !316
  tail call void @wake_up_bit(ptr noundef %flags, i32 noundef 9) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_bit(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dmz_get_zone_for_reclaim(ptr noundef %zmd, i32 noundef %dev_idx, i1 noundef zeroext %idle) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %map_lock.i = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 38
  tail call void @mutex_lock_nested(ptr noundef %map_lock.i, i32 noundef 0) #15
  %reserved_seq_zones_list = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 45
  %0 = ptrtoint ptr %reserved_seq_zones_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %reserved_seq_zones_list, align 4
  %cmp.i.not = icmp eq ptr %1, %reserved_seq_zones_list
  br i1 %cmp.i.not, label %if.then, label %entry.if.then3_crit_edge

entry.if.then3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then3

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %zmd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %zmd, align 8
  %map_seq_list.i = getelementptr %struct.dmz_dev, ptr %3, i32 %dev_idx, i32 18
  %4 = ptrtoint ptr %map_seq_list.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %zone.020.i = load ptr, ptr %map_seq_list.i, align 4
  %cmp.not22.i = icmp eq ptr %zone.020.i, %map_seq_list.i
  br i1 %cmp.not22.i, label %if.then.if.then3_crit_edge, label %if.then.for.body.i_crit_edge

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

if.then.if.then3_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then3

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %zone.023.i = phi ptr [ %zone.0.i, %for.inc.i.for.body.i_crit_edge ], [ %zone.020.i, %if.then.for.body.i_crit_edge ]
  %bzone.i = getelementptr inbounds %struct.dm_zone, ptr %zone.023.i, i32 0, i32 8
  %5 = ptrtoint ptr %bzone.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bzone.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %refcount.i.i.i = getelementptr inbounds %struct.dm_zone, ptr %zone.023.i, i32 0, i32 3
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount.i.i.i, i32 noundef 4) #15
  %7 = ptrtoint ptr %refcount.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %refcount.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not.i.i = icmp eq i32 %8, 0
  br i1 %tobool.i.not.i.i, label %dmz_lock_zone_reclaim.exit.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

dmz_lock_zone_reclaim.exit.i:                     ; preds = %if.end.i
  %flags.i.i = getelementptr inbounds %struct.dm_zone, ptr %zone.023.i, i32 0, i32 2
  %call1.i.i = tail call i32 @_test_and_set_bit(i32 noundef 9, ptr noundef %flags.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.not.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.not.i, label %if.end, label %dmz_lock_zone_reclaim.exit.i.for.inc.i_crit_edge

dmz_lock_zone_reclaim.exit.i.for.inc.i_crit_edge: ; preds = %dmz_lock_zone_reclaim.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

for.inc.i:                                        ; preds = %dmz_lock_zone_reclaim.exit.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %9 = ptrtoint ptr %zone.023.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %zone.0.i = load ptr, ptr %zone.023.i, align 4
  %10 = ptrtoint ptr %zmd to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %zmd, align 8
  %map_seq_list3.i = getelementptr %struct.dmz_dev, ptr %11, i32 %dev_idx, i32 18
  %cmp.not.i = icmp eq ptr %zone.0.i, %map_seq_list3.i
  br i1 %cmp.not.i, label %for.inc.i.if.then3_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.inc.i.if.then3_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then3

if.end:                                           ; preds = %dmz_lock_zone_reclaim.exit.i
  %tobool2.not = icmp eq ptr %zone.023.i, null
  br i1 %tobool2.not, label %if.end.if.then3_crit_edge, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then3

if.then3:                                         ; preds = %if.end.if.then3_crit_edge, %for.inc.i.if.then3_crit_edge, %if.then.if.then3_crit_edge, %entry.if.then3_crit_edge
  %nr_cache.i = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 40
  %12 = ptrtoint ptr %nr_cache.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nr_cache.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i13 = icmp eq i32 %13, 0
  br i1 %tobool.not.i13, label %if.then3.if.end7.sink.split.i_crit_edge, label %if.then.i

if.then3.if.end7.sink.split.i_crit_edge:          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7.sink.split.i

if.then.i:                                        ; preds = %if.then3
  %map_cache_list.i = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 43
  br i1 %idle, label %land.lhs.true.i, label %if.then.i.if.end7.i_crit_edge

if.then.i.if.end7.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7.i

land.lhs.true.i:                                  ; preds = %if.then.i
  %14 = ptrtoint ptr %map_cache_list.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %map_cache_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %15, %map_cache_list.i
  br i1 %cmp.i.not.i, label %land.lhs.true.i.if.end7.sink.split.i_crit_edge, label %land.lhs.true.i.if.end7.i_crit_edge

land.lhs.true.i.if.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7.i

land.lhs.true.i.if.end7.sink.split.i_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7.sink.split.i

if.end7.sink.split.i:                             ; preds = %land.lhs.true.i.if.end7.sink.split.i_crit_edge, %if.then3.if.end7.sink.split.i_crit_edge
  %16 = ptrtoint ptr %zmd to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %zmd, align 8
  %map_rnd_list.i = getelementptr %struct.dmz_dev, ptr %17, i32 %dev_idx, i32 14
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.end7.sink.split.i, %land.lhs.true.i.if.end7.i_crit_edge, %if.then.i.if.end7.i_crit_edge
  %zone_list.0.i = phi ptr [ %map_cache_list.i, %land.lhs.true.i.if.end7.i_crit_edge ], [ %map_cache_list.i, %if.then.i.if.end7.i_crit_edge ], [ %map_rnd_list.i, %if.end7.sink.split.i ]
  %18 = ptrtoint ptr %zone_list.0.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %zone.0147.i = load ptr, ptr %zone_list.0.i, align 4
  %cmp.not148.i = icmp eq ptr %zone.0147.i, %zone_list.0.i
  br i1 %cmp.not148.i, label %if.end7.i.if.end40.i_crit_edge, label %if.end7.i.for.body.i14_crit_edge

if.end7.i.for.body.i14_crit_edge:                 ; preds = %if.end7.i
  br label %for.body.i14

if.end7.i.if.end40.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end40.i

for.body.i14:                                     ; preds = %for.inc.i24.for.body.i14_crit_edge, %if.end7.i.for.body.i14_crit_edge
  %zone.0150.i = phi ptr [ %zone.0.i22, %for.inc.i24.for.body.i14_crit_edge ], [ %zone.0147.i, %if.end7.i.for.body.i14_crit_edge ]
  %maxw_z.0149.i = phi ptr [ %maxw_z.1.i, %for.inc.i24.for.body.i14_crit_edge ], [ null, %if.end7.i.for.body.i14_crit_edge ]
  %flags.i = getelementptr inbounds %struct.dm_zone, ptr %zone.0150.i, i32 0, i32 2
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %flags.i, align 4
  %21 = and i32 %20, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool9.not.i = icmp eq i32 %21, 0
  br i1 %tobool9.not.i, label %if.else24.i, label %if.then10.i

if.then10.i:                                      ; preds = %for.body.i14
  %bzone.i15 = getelementptr inbounds %struct.dm_zone, ptr %zone.0150.i, i32 0, i32 8
  %22 = ptrtoint ptr %bzone.i15 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bzone.i15, align 4
  %flags11.i = getelementptr inbounds %struct.dm_zone, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %flags11.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %flags11.i, align 4
  %26 = and i32 %25, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool13.not.i = icmp eq i32 %26, 0
  br i1 %tobool13.not.i, label %if.then10.i.if.end18.i_crit_edge, label %land.lhs.true14.i

if.then10.i.if.end18.i_crit_edge:                 ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18.i

land.lhs.true14.i:                                ; preds = %if.then10.i
  %dev15.i = getelementptr inbounds %struct.dm_zone, ptr %23, i32 0, i32 1
  %27 = ptrtoint ptr %dev15.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev15.i, align 4
  %dev_idx.i = getelementptr inbounds %struct.dmz_dev, ptr %28, i32 0, i32 6
  %29 = ptrtoint ptr %dev_idx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dev_idx.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %dev_idx)
  %cmp16.not.i = icmp eq i32 %30, %dev_idx
  br i1 %cmp16.not.i, label %land.lhs.true14.i.if.end18.i_crit_edge, label %land.lhs.true14.i.for.inc.i24_crit_edge

land.lhs.true14.i.for.inc.i24_crit_edge:          ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i24

land.lhs.true14.i.if.end18.i_crit_edge:           ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18.i

if.end18.i:                                       ; preds = %land.lhs.true14.i.if.end18.i_crit_edge, %if.then10.i.if.end18.i_crit_edge
  %tobool19.not.i = icmp eq ptr %maxw_z.0149.i, null
  br i1 %tobool19.not.i, label %if.end18.i.if.then22.i_crit_edge, label %lor.lhs.false.i

if.end18.i.if.then22.i_crit_edge:                 ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then22.i

lor.lhs.false.i:                                  ; preds = %if.end18.i
  %weight.i = getelementptr inbounds %struct.dm_zone, ptr %maxw_z.0149.i, i32 0, i32 6
  %31 = ptrtoint ptr %weight.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %weight.i, align 4
  %weight20.i = getelementptr inbounds %struct.dm_zone, ptr %23, i32 0, i32 6
  %33 = ptrtoint ptr %weight20.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %weight20.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %34)
  %cmp21.i = icmp ult i32 %32, %34
  br i1 %cmp21.i, label %lor.lhs.false.i.if.then22.i_crit_edge, label %lor.lhs.false.i.for.inc.i24_crit_edge

lor.lhs.false.i.for.inc.i24_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i24

lor.lhs.false.i.if.then22.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then22.i

if.then22.i:                                      ; preds = %lor.lhs.false.i.if.then22.i_crit_edge, %if.end18.i.if.then22.i_crit_edge
  br label %for.inc.i24

if.else24.i:                                      ; preds = %for.body.i14
  %refcount.i.i.i16 = getelementptr inbounds %struct.dm_zone, ptr %zone.0150.i, i32 0, i32 3
  %call.i.i.i.i.i17 = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount.i.i.i16, i32 noundef 4) #15
  %35 = ptrtoint ptr %refcount.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %refcount.i.i.i16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.i.not.i.i18 = icmp eq i32 %36, 0
  br i1 %tobool.i.not.i.i18, label %dmz_lock_zone_reclaim.exit.i21, label %if.else24.i.for.inc.i24_crit_edge

if.else24.i.for.inc.i24_crit_edge:                ; preds = %if.else24.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i24

dmz_lock_zone_reclaim.exit.i21:                   ; preds = %if.else24.i
  %call1.i.i19 = tail call i32 @_test_and_set_bit(i32 noundef 9, ptr noundef %flags.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i19)
  %tobool.not.i.not.i20 = icmp eq i32 %call1.i.i19, 0
  br i1 %tobool.not.i.not.i20, label %dmz_lock_zone_reclaim.exit.i21.if.end6_crit_edge, label %dmz_lock_zone_reclaim.exit.i21.for.inc.i24_crit_edge

dmz_lock_zone_reclaim.exit.i21.for.inc.i24_crit_edge: ; preds = %dmz_lock_zone_reclaim.exit.i21
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i24

dmz_lock_zone_reclaim.exit.i21.if.end6_crit_edge: ; preds = %dmz_lock_zone_reclaim.exit.i21
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6

for.inc.i24:                                      ; preds = %dmz_lock_zone_reclaim.exit.i21.for.inc.i24_crit_edge, %if.else24.i.for.inc.i24_crit_edge, %if.then22.i, %lor.lhs.false.i.for.inc.i24_crit_edge, %land.lhs.true14.i.for.inc.i24_crit_edge
  %maxw_z.1.i = phi ptr [ %maxw_z.0149.i, %land.lhs.true14.i.for.inc.i24_crit_edge ], [ %23, %if.then22.i ], [ %maxw_z.0149.i, %lor.lhs.false.i.for.inc.i24_crit_edge ], [ %maxw_z.0149.i, %dmz_lock_zone_reclaim.exit.i21.for.inc.i24_crit_edge ], [ %maxw_z.0149.i, %if.else24.i.for.inc.i24_crit_edge ]
  %37 = ptrtoint ptr %zone.0150.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %zone.0.i22 = load ptr, ptr %zone.0150.i, align 4
  %cmp.not.i23 = icmp eq ptr %zone.0.i22, %zone_list.0.i
  br i1 %cmp.not.i23, label %for.end.i, label %for.inc.i24.for.body.i14_crit_edge

for.inc.i24.for.body.i14_crit_edge:               ; preds = %for.inc.i24
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i14

for.end.i:                                        ; preds = %for.inc.i24
  %tobool35.not.i = icmp eq ptr %maxw_z.1.i, null
  br i1 %tobool35.not.i, label %for.end.i.if.end40.i_crit_edge, label %land.lhs.true36.i

for.end.i.if.end40.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end40.i

land.lhs.true36.i:                                ; preds = %for.end.i
  %refcount.i.i118.i = getelementptr inbounds %struct.dm_zone, ptr %maxw_z.1.i, i32 0, i32 3
  %call.i.i.i.i119.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount.i.i118.i, i32 noundef 4) #15
  %38 = ptrtoint ptr %refcount.i.i118.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %refcount.i.i118.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.i.not.i120.i = icmp eq i32 %39, 0
  br i1 %tobool.i.not.i120.i, label %dmz_lock_zone_reclaim.exit127.i, label %land.lhs.true36.i.if.end40.i_crit_edge

land.lhs.true36.i.if.end40.i_crit_edge:           ; preds = %land.lhs.true36.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end40.i

dmz_lock_zone_reclaim.exit127.i:                  ; preds = %land.lhs.true36.i
  %flags.i121.i = getelementptr inbounds %struct.dm_zone, ptr %maxw_z.1.i, i32 0, i32 2
  %call1.i122.i = tail call i32 @_test_and_set_bit(i32 noundef 9, ptr noundef %flags.i121.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i122.i)
  %tobool.not.i123.not.i = icmp eq i32 %call1.i122.i, 0
  br i1 %tobool.not.i123.not.i, label %dmz_lock_zone_reclaim.exit127.i.if.end6_crit_edge, label %dmz_lock_zone_reclaim.exit127.i.if.end40.i_crit_edge

dmz_lock_zone_reclaim.exit127.i.if.end40.i_crit_edge: ; preds = %dmz_lock_zone_reclaim.exit127.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end40.i

dmz_lock_zone_reclaim.exit127.i.if.end6_crit_edge: ; preds = %dmz_lock_zone_reclaim.exit127.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6

if.end40.i:                                       ; preds = %dmz_lock_zone_reclaim.exit127.i.if.end40.i_crit_edge, %land.lhs.true36.i.if.end40.i_crit_edge, %for.end.i.if.end40.i_crit_edge, %if.end7.i.if.end40.i_crit_edge
  %40 = ptrtoint ptr %zone_list.0.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %zone.1151.i = load ptr, ptr %zone_list.0.i, align 4
  %cmp47.not152.i = icmp eq ptr %zone.1151.i, %zone_list.0.i
  br i1 %cmp47.not152.i, label %if.end40.i.if.end6_crit_edge, label %if.end40.i.for.body49.i_crit_edge

if.end40.i.for.body49.i_crit_edge:                ; preds = %if.end40.i
  br label %for.body49.i

if.end40.i.if.end6_crit_edge:                     ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6

for.body49.i:                                     ; preds = %for.inc70.i.for.body49.i_crit_edge, %if.end40.i.for.body49.i_crit_edge
  %zone.1153.i = phi ptr [ %zone.1.i, %for.inc70.i.for.body49.i_crit_edge ], [ %zone.1151.i, %if.end40.i.for.body49.i_crit_edge ]
  %flags50.i = getelementptr inbounds %struct.dm_zone, ptr %zone.1153.i, i32 0, i32 2
  %41 = ptrtoint ptr %flags50.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %flags50.i, align 4
  %43 = and i32 %42, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool52.not.i = icmp eq i32 %43, 0
  br i1 %tobool52.not.i, label %for.body49.i.if.end65.i_crit_edge, label %if.then53.i

for.body49.i.if.end65.i_crit_edge:                ; preds = %for.body49.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end65.i

if.then53.i:                                      ; preds = %for.body49.i
  %bzone54.i = getelementptr inbounds %struct.dm_zone, ptr %zone.1153.i, i32 0, i32 8
  %44 = ptrtoint ptr %bzone54.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bzone54.i, align 4
  %flags55.i = getelementptr inbounds %struct.dm_zone, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %flags55.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %flags55.i, align 4
  %48 = and i32 %47, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool57.not.i = icmp eq i32 %48, 0
  br i1 %tobool57.not.i, label %if.then53.i.if.end65.i_crit_edge, label %land.lhs.true58.i

if.then53.i.if.end65.i_crit_edge:                 ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end65.i

land.lhs.true58.i:                                ; preds = %if.then53.i
  %dev59.i = getelementptr inbounds %struct.dm_zone, ptr %45, i32 0, i32 1
  %49 = ptrtoint ptr %dev59.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev59.i, align 4
  %dev_idx60.i = getelementptr inbounds %struct.dmz_dev, ptr %50, i32 0, i32 6
  %51 = ptrtoint ptr %dev_idx60.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %dev_idx60.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %dev_idx)
  %cmp61.not.i = icmp eq i32 %52, %dev_idx
  br i1 %cmp61.not.i, label %land.lhs.true58.i.if.end65.i_crit_edge, label %land.lhs.true58.i.for.inc70.i_crit_edge

land.lhs.true58.i.for.inc70.i_crit_edge:          ; preds = %land.lhs.true58.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc70.i

land.lhs.true58.i.if.end65.i_crit_edge:           ; preds = %land.lhs.true58.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end65.i

if.end65.i:                                       ; preds = %land.lhs.true58.i.if.end65.i_crit_edge, %if.then53.i.if.end65.i_crit_edge, %for.body49.i.if.end65.i_crit_edge
  %dzone.0.i = phi ptr [ %45, %land.lhs.true58.i.if.end65.i_crit_edge ], [ %45, %if.then53.i.if.end65.i_crit_edge ], [ %zone.1153.i, %for.body49.i.if.end65.i_crit_edge ]
  %refcount.i.i128.i = getelementptr inbounds %struct.dm_zone, ptr %dzone.0.i, i32 0, i32 3
  %call.i.i.i.i129.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount.i.i128.i, i32 noundef 4) #15
  %53 = ptrtoint ptr %refcount.i.i128.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %refcount.i.i128.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool.i.not.i130.i = icmp eq i32 %54, 0
  br i1 %tobool.i.not.i130.i, label %dmz_lock_zone_reclaim.exit137.i, label %if.end65.i.for.inc70.i_crit_edge

if.end65.i.for.inc70.i_crit_edge:                 ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc70.i

dmz_lock_zone_reclaim.exit137.i:                  ; preds = %if.end65.i
  %flags.i131.i = getelementptr inbounds %struct.dm_zone, ptr %dzone.0.i, i32 0, i32 2
  %call1.i132.i = tail call i32 @_test_and_set_bit(i32 noundef 9, ptr noundef %flags.i131.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i132.i)
  %tobool.not.i133.not.i = icmp eq i32 %call1.i132.i, 0
  br i1 %tobool.not.i133.not.i, label %dmz_lock_zone_reclaim.exit137.i.if.end6_crit_edge, label %dmz_lock_zone_reclaim.exit137.i.for.inc70.i_crit_edge

dmz_lock_zone_reclaim.exit137.i.for.inc70.i_crit_edge: ; preds = %dmz_lock_zone_reclaim.exit137.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc70.i

dmz_lock_zone_reclaim.exit137.i.if.end6_crit_edge: ; preds = %dmz_lock_zone_reclaim.exit137.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6

for.inc70.i:                                      ; preds = %dmz_lock_zone_reclaim.exit137.i.for.inc70.i_crit_edge, %if.end65.i.for.inc70.i_crit_edge, %land.lhs.true58.i.for.inc70.i_crit_edge
  %55 = ptrtoint ptr %zone.1153.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %zone.1.i = load ptr, ptr %zone.1153.i, align 4
  %cmp47.not.i = icmp eq ptr %zone.1.i, %zone_list.0.i
  br i1 %cmp47.not.i, label %for.inc70.i.if.end6_crit_edge, label %for.inc70.i.for.body49.i_crit_edge

for.inc70.i.for.body49.i_crit_edge:               ; preds = %for.inc70.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body49.i

for.inc70.i.if.end6_crit_edge:                    ; preds = %for.inc70.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6

if.end6:                                          ; preds = %for.inc70.i.if.end6_crit_edge, %dmz_lock_zone_reclaim.exit137.i.if.end6_crit_edge, %if.end40.i.if.end6_crit_edge, %dmz_lock_zone_reclaim.exit127.i.if.end6_crit_edge, %dmz_lock_zone_reclaim.exit.i21.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %zone.1 = phi ptr [ %zone.023.i, %if.end.if.end6_crit_edge ], [ %maxw_z.1.i, %dmz_lock_zone_reclaim.exit127.i.if.end6_crit_edge ], [ null, %if.end40.i.if.end6_crit_edge ], [ null, %for.inc70.i.if.end6_crit_edge ], [ %dzone.0.i, %dmz_lock_zone_reclaim.exit137.i.if.end6_crit_edge ], [ %zone.0150.i, %dmz_lock_zone_reclaim.exit.i21.if.end6_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %map_lock.i) #15
  ret ptr %zone.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dmz_get_chunk_mapping(ptr noundef %zmd, i32 noundef %chunk, i32 noundef %op) local_unnamed_addr #0 align 64 {
entry:
  %wait.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %map_mblk = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 39
  %0 = ptrtoint ptr %map_mblk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %map_mblk, align 8
  %shr = lshr i32 %chunk, 9
  %arrayidx = getelementptr ptr, ptr %1, i32 %shr
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %data = getelementptr inbounds %struct.dmz_mblock, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %and = and i32 %chunk, 511
  %nr_cache = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 40
  %6 = ptrtoint ptr %nr_cache to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr_cache, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  %cond = select i1 %tobool.not, i32 1, i32 2
  %map_lock.i = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 38
  tail call void @mutex_lock_nested(ptr noundef %map_lock.i, i32 noundef 0) #15
  %arrayidx1 = getelementptr %struct.dmz_map, ptr %5, i32 %and
  %zones.i = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 23
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %op)
  %cmp3.not = icmp eq i32 %op, 1
  %mblk_sem.i.i70 = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 31
  %nr_devs.i = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 1
  %8 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 1
  %9 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 2
  %10 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 3
  %11 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 3, i32 1
  %free_wq.i = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 46
  br label %again

again:                                            ; preds = %again.backedge, %entry
  %dzone.0 = phi ptr [ null, %entry ], [ %dzone.0.be, %again.backedge ]
  %12 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp = icmp eq i32 %13, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %again
  br i1 %cmp3.not, label %if.end, label %if.then.out_crit_edge

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end:                                           ; preds = %if.then
  %call = call ptr @dmz_alloc_zone(ptr noundef %zmd, i32 noundef 0, i32 noundef %cond)
  %tobool5.not = icmp eq ptr %call, null
  br i1 %tobool5.not, label %if.then6, label %if.end11

if.then6:                                         ; preds = %if.end
  %14 = ptrtoint ptr %nr_devs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nr_devs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp4.not.i = icmp eq i32 %15, 0
  br i1 %cmp4.not.i, label %if.then6.if.end10_crit_edge, label %if.then6.for.body.i_crit_edge

if.then6.for.body.i_crit_edge:                    ; preds = %if.then6
  br label %for.body.i

if.then6.if.end10_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.05.i, 1
  %16 = ptrtoint ptr %nr_devs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nr_devs.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %17
  br i1 %cmp.i, label %for.cond.i.for.body.i_crit_edge, label %for.cond.i.if.end10_crit_edge

for.cond.i.if.end10_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.then6.for.body.i_crit_edge
  %i.05.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %if.then6.for.body.i_crit_edge ]
  %18 = ptrtoint ptr %zmd to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %zmd, align 8
  %arrayidx.i = getelementptr %struct.dmz_dev, ptr %19, i32 %i.05.i
  %call.i = call zeroext i1 @dmz_bdev_is_dying(ptr noundef %arrayidx.i) #15
  br i1 %call.i, label %for.body.i.out_crit_edge, label %for.cond.i

for.body.i.out_crit_edge:                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end10:                                         ; preds = %for.cond.i.if.end10_crit_edge, %if.then6.if.end10_crit_edge
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait.i) #15
  %20 = ptrtoint ptr %wait.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %wait.i, align 4
  %21 = call i32 @llvm.read_register.i32(metadata !302) #15
  %and.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %task.i, align 8
  %25 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %8, align 4
  %26 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @autoremove_wake_function, ptr %9, align 4
  %27 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %10, ptr %10, align 4
  %28 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %10, ptr %11, align 4
  call void @prepare_to_wait(ptr noundef %free_wq.i, ptr noundef nonnull %wait.i, i32 noundef 2) #15
  call void @mutex_unlock(ptr noundef %map_lock.i) #15
  call void @up_read(ptr noundef %mblk_sem.i.i70) #15
  %call4.i = call i32 @io_schedule_timeout(i32 noundef 100) #15
  call void @down_read(ptr noundef %mblk_sem.i.i70) #15
  call void @mutex_lock_nested(ptr noundef %map_lock.i, i32 noundef 0) #15
  call void @finish_wait(ptr noundef %free_wq.i, ptr noundef nonnull %wait.i) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait.i) #15
  br label %again.backedge

again.backedge:                                   ; preds = %dmz_wait_for_reclaim.exit, %if.end10
  %dzone.0.be = phi ptr [ %dzone.1, %dmz_wait_for_reclaim.exit ], [ null, %if.end10 ]
  br label %again

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  call void @dmz_map_zone(ptr noundef %zmd, ptr noundef nonnull %call, i32 noundef %chunk)
  br label %if.end32

if.else:                                          ; preds = %again
  %29 = call i32 @llvm.bswap.i32(i32 %13)
  %call.i66 = call ptr @xa_load(ptr noundef %zones.i, i32 noundef %29) #15
  %tobool13.not = icmp eq ptr %call.i66, null
  br i1 %tobool13.not, label %if.else.out_crit_edge, label %if.end16

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end16:                                         ; preds = %if.else
  %chunk17 = getelementptr inbounds %struct.dm_zone, ptr %call.i66, i32 0, i32 7
  %30 = ptrtoint ptr %chunk17 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %chunk17, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %chunk)
  %cmp18.not = icmp eq i32 %31, %chunk
  br i1 %cmp18.not, label %if.end21, label %if.end16.out_crit_edge

if.end16.out_crit_edge:                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end21:                                         ; preds = %if.end16
  %flags = getelementptr inbounds %struct.dm_zone, ptr %call.i66, i32 0, i32 2
  %32 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %flags, align 4
  %34 = and i32 %33, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool23.not = icmp eq i32 %34, 0
  br i1 %tobool23.not, label %if.end21.if.end32_crit_edge, label %if.then24

if.end21.if.end32_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32

if.then24:                                        ; preds = %if.end21
  %dev1.i = getelementptr inbounds %struct.dm_zone, ptr %call.i66, i32 0, i32 1
  %35 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev1.i, align 4
  %wp_block.i = getelementptr inbounds %struct.dm_zone, ptr %call.i66, i32 0, i32 5
  %37 = ptrtoint ptr %wp_block.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %wp_block.i, align 4
  %call.i67 = call fastcc i32 @dmz_update_zone(ptr noundef %zmd, ptr noundef nonnull %call.i66) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i67)
  %tobool.not.i = icmp eq i32 %call.i67, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.then24.out_crit_edge

if.then24.out_crit_edge:                          ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

do.end.i:                                         ; preds = %if.then24
  %name.i = getelementptr inbounds %struct.dmz_dev, ptr %36, i32 0, i32 3
  %id.i = getelementptr inbounds %struct.dm_zone, ptr %call.i66, i32 0, i32 4
  %39 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %id.i, align 4
  %41 = ptrtoint ptr %wp_block.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %wp_block.i, align 4
  %call3.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %name.i, i32 noundef %40, i32 noundef %42, i32 noundef %38) #19
  %43 = ptrtoint ptr %wp_block.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %wp_block.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %44)
  %cmp.i68 = icmp ugt i32 %38, %44
  br i1 %cmp.i68, label %if.then5.i, label %do.end.i.if.end29_crit_edge

do.end.i.if.end29_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end29

if.then5.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv.i = zext i32 %44 to i64
  %sub.i = sub i32 %38, %44
  %call8.i = call i32 @dmz_invalidate_blocks(ptr noundef %zmd, ptr noundef nonnull %call.i66, i64 noundef %conv.i, i32 noundef %sub.i) #15
  br label %if.end29

if.end29:                                         ; preds = %if.then5.i, %do.end.i.if.end29_crit_edge
  call void @_clear_bit(i32 noundef 10, ptr noundef %flags) #15
  br label %if.end32

if.end32:                                         ; preds = %if.end29, %if.end21.if.end32_crit_edge, %if.end11
  %dzone.1 = phi ptr [ %call, %if.end11 ], [ %call.i66, %if.end29 ], [ %call.i66, %if.end21.if.end32_crit_edge ]
  %flags33 = getelementptr inbounds %struct.dm_zone, ptr %dzone.1, i32 0, i32 2
  %45 = ptrtoint ptr %flags33 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %flags33, align 4
  %47 = and i32 %46, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool35.not = icmp eq i32 %47, 0
  br i1 %tobool35.not, label %if.end37, label %if.then36

if.then36:                                        ; preds = %if.end32
  call void @mutex_unlock(ptr noundef %map_lock.i) #15
  call void @up_read(ptr noundef %mblk_sem.i.i70) #15
  call void @_set_bit(i32 noundef 11, ptr noundef %flags33) #15
  call void @__might_sleep(ptr noundef nonnull @.str.56, i32 noundef 125) #15
  %48 = ptrtoint ptr %flags33 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %flags33, align 4
  %50 = and i32 %49, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.not.i.i = icmp eq i32 %50, 0
  br i1 %tobool.not.i.i, label %if.then36.dmz_wait_for_reclaim.exit_crit_edge, label %if.end.i.i

if.then36.dmz_wait_for_reclaim.exit_crit_edge:    ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #17
  br label %dmz_wait_for_reclaim.exit

if.end.i.i:                                       ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #17
  %call3.i.i = call i32 @out_of_line_wait_on_bit_timeout(ptr noundef %flags33, i32 noundef 9, ptr noundef nonnull @bit_wait_timeout, i32 noundef 2, i32 noundef 100) #15
  br label %dmz_wait_for_reclaim.exit

dmz_wait_for_reclaim.exit:                        ; preds = %if.end.i.i, %if.then36.dmz_wait_for_reclaim.exit_crit_edge
  call void @_clear_bit(i32 noundef 11, ptr noundef %flags33) #15
  call void @down_read(ptr noundef %mblk_sem.i.i70) #15
  call void @mutex_lock_nested(ptr noundef %map_lock.i, i32 noundef 0) #15
  br label %again.backedge

if.end37:                                         ; preds = %if.end32
  %refcount.i = getelementptr inbounds %struct.dm_zone, ptr %dzone.1, i32 0, i32 3
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #15
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #15
  %51 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #15, !srcloc !317
  call fastcc void @__dmz_lru_zone(ptr noundef %zmd, ptr noundef nonnull %dzone.1) #15
  %bzone.i = getelementptr inbounds %struct.dm_zone, ptr %dzone.1, i32 0, i32 8
  %52 = ptrtoint ptr %bzone.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bzone.i, align 4
  %tobool.not.i71 = icmp eq ptr %53, null
  br i1 %tobool.not.i71, label %if.end37.out_crit_edge, label %if.then.i

if.end37.out_crit_edge:                           ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.then.i:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #17
  call fastcc void @__dmz_lru_zone(ptr noundef %zmd, ptr noundef nonnull %53) #15
  br label %out

out:                                              ; preds = %if.then.i, %if.end37.out_crit_edge, %if.then24.out_crit_edge, %if.end16.out_crit_edge, %if.else.out_crit_edge, %for.body.i.out_crit_edge, %if.then.out_crit_edge
  %dzone.2 = phi ptr [ %dzone.1, %if.end37.out_crit_edge ], [ %dzone.1, %if.then.i ], [ inttoptr (i32 -5 to ptr), %for.body.i.out_crit_edge ], [ inttoptr (i32 -5 to ptr), %if.then24.out_crit_edge ], [ inttoptr (i32 -5 to ptr), %if.end16.out_crit_edge ], [ inttoptr (i32 -5 to ptr), %if.else.out_crit_edge ], [ %dzone.0, %if.then.out_crit_edge ]
  call void @mutex_unlock(ptr noundef %map_lock.i) #15
  ret ptr %dzone.2
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dmz_alloc_zone(ptr noundef %zmd, i32 noundef %dev_idx, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

for.cond.preheader:                               ; preds = %entry
  %nr_devs = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 1
  %0 = ptrtoint ptr %nr_devs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_devs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp131.not = icmp eq i32 %1, 0
  br i1 %cmp131.not, label %for.cond.preheader.if.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0132 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %2 = ptrtoint ptr %zmd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %zmd, align 8
  %reclaim = getelementptr %struct.dmz_dev, ptr %3, i32 %i.0132, i32 2
  %4 = ptrtoint ptr %reclaim to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reclaim, align 8
  tail call void @dmz_schedule_reclaim(ptr noundef %5) #15
  %inc = add nuw i32 %i.0132, 1
  %6 = ptrtoint ptr %nr_devs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr_devs, align 4
  %cmp = icmp ult i32 %inc, %7
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

if.end:                                           ; preds = %for.body.if.end_crit_edge, %for.cond.preheader.if.end_crit_edge, %entry.if.end_crit_edge
  %and1 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  %unmap_cache_list = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 42
  %and4 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  %unmap_nr_cache = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 41
  %label = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 3
  %nr_devs20 = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 1
  br label %again.outer

again.outer:                                      ; preds = %if.then22, %if.end
  %i.1.ph = phi i32 [ %inc24, %if.then22 ], [ 0, %if.end ]
  %dev_idx.addr.0.ph = phi i32 [ %rem, %if.then22 ], [ %dev_idx, %if.end ]
  br label %again

again:                                            ; preds = %again.backedge, %again.outer
  br i1 %tobool2.not, label %if.else, label %again.if.end13_crit_edge

again.if.end13_crit_edge:                         ; preds = %again
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13

if.else:                                          ; preds = %again
  %8 = ptrtoint ptr %zmd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %zmd, align 8
  br i1 %tobool5.not, label %if.else9, label %if.then6

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %unmap_rnd_list = getelementptr %struct.dmz_dev, ptr %9, i32 %dev_idx.addr.0.ph, i32 13
  br label %if.end13

if.else9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %unmap_seq_list = getelementptr %struct.dmz_dev, ptr %9, i32 %dev_idx.addr.0.ph, i32 17
  br label %if.end13

if.end13:                                         ; preds = %if.else9, %if.then6, %again.if.end13_crit_edge
  %list.0 = phi ptr [ %unmap_rnd_list, %if.then6 ], [ %unmap_seq_list, %if.else9 ], [ %unmap_cache_list, %again.if.end13_crit_edge ]
  %10 = ptrtoint ptr %list.0 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %list.0, align 4
  %cmp.i.not = icmp eq ptr %11, %list.0
  br i1 %cmp.i.not, label %if.then15, label %if.end32

if.then15:                                        ; preds = %if.end13
  br i1 %tobool.not, label %if.then15.cleanup_crit_edge, label %if.end19

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end19:                                         ; preds = %if.then15
  %12 = ptrtoint ptr %nr_devs20 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nr_devs20, align 4
  %cmp21 = icmp ult i32 %i.1.ph, %13
  br i1 %cmp21, label %if.then22, label %if.end25

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  %add = add i32 %dev_idx.addr.0.ph, 1
  %rem = urem i32 %add, %13
  %inc24 = add nuw i32 %i.1.ph, 1
  br label %again.outer

if.end25:                                         ; preds = %if.end19
  %reserved_seq_zones_list = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 45
  %14 = ptrtoint ptr %reserved_seq_zones_list to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %reserved_seq_zones_list, align 4
  %cmp27.not = icmp eq ptr %15, %reserved_seq_zones_list
  %tobool29.not128 = icmp eq ptr %15, null
  %tobool29.not = or i1 %cmp27.not, %tobool29.not128
  br i1 %tobool29.not, label %if.end25.cleanup_crit_edge, label %if.then30

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then30:                                        ; preds = %if.end25
  %call.i.i121 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %15) #15
  br i1 %call.i.i121, label %if.end.i.i, label %if.then30.list_del_init.exit_crit_edge

if.then30.list_del_init.exit_crit_edge:           ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i, align 4
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %15, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then30.list_del_init.exit_crit_edge
  %22 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %15, ptr %15, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %15, ptr %prev.i3.i, align 4
  %nr_reserved_seq_zones = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 44
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nr_reserved_seq_zones, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %nr_reserved_seq_zones, i32 1, i32 3, i32 1) #15
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nr_reserved_seq_zones, ptr %nr_reserved_seq_zones, i32 1, ptr elementtype(i32) %nr_reserved_seq_zones) #15, !srcloc !318
  br label %cleanup

if.end32:                                         ; preds = %if.end13
  %call.i.i122 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %11) #15
  br i1 %call.i.i122, label %if.end.i.i125, label %if.end32.list_del_init.exit127_crit_edge

if.end32.list_del_init.exit127_crit_edge:         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del_init.exit127

if.end.i.i125:                                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i123 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i.i123 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i123, align 4
  %27 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %11, align 4
  %prev1.i.i.i124 = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev1.i.i.i124 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev1.i.i.i124, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %28, ptr %26, align 4
  br label %list_del_init.exit127

list_del_init.exit127:                            ; preds = %if.end.i.i125, %if.end32.list_del_init.exit127_crit_edge
  %31 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %11, ptr %11, align 4
  %prev.i3.i126 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i3.i126 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %11, ptr %prev.i3.i126, align 4
  %flags38 = getelementptr inbounds %struct.dm_zone, ptr %11, i32 0, i32 2
  %33 = ptrtoint ptr %flags38 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %flags38, align 4
  %and1.i = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool40.not = icmp eq i32 %and1.i, 0
  br i1 %tobool40.not, label %if.else42, label %if.then41

if.then41:                                        ; preds = %list_del_init.exit127
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i113 = tail call zeroext i1 @__kasan_check_write(ptr noundef %unmap_nr_cache, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %unmap_nr_cache, i32 1, i32 3, i32 1) #15
  %35 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %unmap_nr_cache, ptr %unmap_nr_cache, i32 1, ptr elementtype(i32) %unmap_nr_cache) #15, !srcloc !318
  br label %if.end51

if.else42:                                        ; preds = %list_del_init.exit127
  %36 = ptrtoint ptr %flags38 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %flags38, align 4
  %38 = and i32 %37, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool45.not = icmp eq i32 %38, 0
  %dev49 = getelementptr inbounds %struct.dm_zone, ptr %11, i32 0, i32 1
  %39 = ptrtoint ptr %dev49 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev49, align 4
  br i1 %tobool45.not, label %if.else48, label %if.then46

if.then46:                                        ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #17
  %unmap_nr_rnd = getelementptr inbounds %struct.dmz_dev, ptr %40, i32 0, i32 12
  %call.i.i115 = tail call zeroext i1 @__kasan_check_write(ptr noundef %unmap_nr_rnd, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %unmap_nr_rnd, i32 1, i32 3, i32 1) #15
  %41 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %unmap_nr_rnd, ptr %unmap_nr_rnd, i32 1, ptr elementtype(i32) %unmap_nr_rnd) #15, !srcloc !318
  br label %if.end51

if.else48:                                        ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #17
  %unmap_nr_seq = getelementptr inbounds %struct.dmz_dev, ptr %40, i32 0, i32 16
  %call.i.i116 = tail call zeroext i1 @__kasan_check_write(ptr noundef %unmap_nr_seq, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %unmap_nr_seq, i32 1, i32 3, i32 1) #15
  %42 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %unmap_nr_seq, ptr %unmap_nr_seq, i32 1, ptr elementtype(i32) %unmap_nr_seq) #15, !srcloc !318
  br label %if.end51

if.end51:                                         ; preds = %if.else48, %if.then46, %if.then41
  %43 = ptrtoint ptr %flags38 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %flags38, align 4
  %45 = and i32 %44, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool54.not = icmp eq i32 %45, 0
  br i1 %tobool54.not, label %if.end61, label %if.end51.again.backedge_crit_edge

if.end51.again.backedge_crit_edge:                ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #17
  br label %again.backedge

again.backedge:                                   ; preds = %if.end61.again.backedge_crit_edge, %if.end51.again.backedge_crit_edge
  %.str.1.sink = phi ptr [ @.str.4, %if.end61.again.backedge_crit_edge ], [ @.str.1, %if.end51.again.backedge_crit_edge ]
  %id = getelementptr inbounds %struct.dm_zone, ptr %11, i32 0, i32 4
  %46 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %id, align 4
  %call60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.1.sink, ptr noundef %label, i32 noundef %47) #19
  br label %again

if.end61:                                         ; preds = %if.end51
  %48 = ptrtoint ptr %flags38 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %flags38, align 4
  %50 = and i32 %49, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool64.not = icmp eq i32 %50, 0
  br i1 %tobool64.not, label %if.end61.cleanup_crit_edge, label %if.end61.again.backedge_crit_edge

if.end61.again.backedge_crit_edge:                ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #17
  br label %again.backedge

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup:                                          ; preds = %if.end61.cleanup_crit_edge, %list_del_init.exit, %if.end25.cleanup_crit_edge, %if.then15.cleanup_crit_edge
  %retval.0 = phi ptr [ %15, %list_del_init.exit ], [ null, %if.end25.cleanup_crit_edge ], [ %11, %if.end61.cleanup_crit_edge ], [ null, %if.then15.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dmz_map_zone(ptr noundef %zmd, ptr noundef %dzone, i32 noundef %chunk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.dm_zone, ptr %dzone, i32 0, i32 4
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  %map_mblk.i = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 39
  %2 = ptrtoint ptr %map_mblk.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %map_mblk.i, align 8
  %shr.i22 = lshr i32 %chunk, 9
  %arrayidx.i = getelementptr ptr, ptr %3, i32 %shr.i22
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %data.i = getelementptr inbounds %struct.dmz_mblock, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i, align 4
  %and.i = and i32 %chunk, 511
  %8 = tail call i32 @llvm.bswap.i32(i32 %1) #15
  %arrayidx1.i = getelementptr %struct.dmz_map, ptr %7, i32 %and.i
  %9 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %arrayidx1.i, align 4
  %bzone_id4.i = getelementptr %struct.dmz_map, ptr %7, i32 %and.i, i32 1
  %10 = ptrtoint ptr %bzone_id4.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %bzone_id4.i, align 4
  %mblk_lock.i.i = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 33
  tail call void @_raw_spin_lock(ptr noundef %mblk_lock.i.i) #15
  %state.i.i = getelementptr inbounds %struct.dmz_mblock, ptr %5, i32 0, i32 4
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %entry.dmz_set_chunk_mapping.exit_crit_edge

entry.dmz_set_chunk_mapping.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %dmz_set_chunk_mapping.exit

if.then.i.i:                                      ; preds = %entry
  %link.i.i = getelementptr inbounds %struct.dmz_mblock, ptr %5, i32 0, i32 1
  %mblk_dirty_list.i.i = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 36
  %prev.i.i.i = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 36, i32 1
  %11 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %link.i.i, ptr noundef %12, ptr noundef %mblk_dirty_list.i.i) #15
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.dmz_set_chunk_mapping.exit_crit_edge

if.then.i.i.dmz_set_chunk_mapping.exit_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dmz_set_chunk_mapping.exit

if.end.i.i.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %13 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %link.i.i, ptr %prev.i.i.i, align 4
  %14 = ptrtoint ptr %link.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %mblk_dirty_list.i.i, ptr %link.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.dmz_mblock, ptr %5, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev3.i.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %link.i.i, ptr %12, align 4
  br label %dmz_set_chunk_mapping.exit

dmz_set_chunk_mapping.exit:                       ; preds = %if.end.i.i.i.i, %if.then.i.i.dmz_set_chunk_mapping.exit_crit_edge, %entry.dmz_set_chunk_mapping.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %mblk_lock.i.i) #15
  %chunk1 = getelementptr inbounds %struct.dm_zone, ptr %dzone, i32 0, i32 7
  %17 = ptrtoint ptr %chunk1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %chunk, ptr %chunk1, align 4
  %flags = getelementptr inbounds %struct.dm_zone, ptr %dzone, i32 0, i32 2
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %dmz_set_chunk_mapping.exit
  %map_cache_list = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 43
  %prev.i = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 43, i32 1
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i, align 4
  %call.i.i23 = tail call zeroext i1 @__list_add_valid(ptr noundef %dzone, ptr noundef %21, ptr noundef %map_cache_list) #15
  br i1 %call.i.i23, label %if.then.if.end10.sink.split_crit_edge, label %if.then.if.end10_crit_edge

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

if.then.if.end10.sink.split_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10.sink.split

if.else:                                          ; preds = %dmz_set_chunk_mapping.exit
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %flags, align 4
  %24 = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool4.not = icmp eq i32 %24, 0
  %dev9 = getelementptr inbounds %struct.dm_zone, ptr %dzone, i32 0, i32 1
  %25 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev9, align 4
  br i1 %tobool4.not, label %if.else7, label %if.then5

if.then5:                                         ; preds = %if.else
  %map_rnd_list = getelementptr inbounds %struct.dmz_dev, ptr %26, i32 0, i32 14
  %prev.i24 = getelementptr inbounds %struct.dmz_dev, ptr %26, i32 0, i32 14, i32 1
  %27 = ptrtoint ptr %prev.i24 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i24, align 4
  %call.i.i25 = tail call zeroext i1 @__list_add_valid(ptr noundef %dzone, ptr noundef %28, ptr noundef %map_rnd_list) #15
  br i1 %call.i.i25, label %if.then5.if.end10.sink.split_crit_edge, label %if.then5.if.end10_crit_edge

if.then5.if.end10_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

if.then5.if.end10.sink.split_crit_edge:           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10.sink.split

if.else7:                                         ; preds = %if.else
  %map_seq_list = getelementptr inbounds %struct.dmz_dev, ptr %26, i32 0, i32 18
  %prev.i29 = getelementptr inbounds %struct.dmz_dev, ptr %26, i32 0, i32 18, i32 1
  %29 = ptrtoint ptr %prev.i29 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i29, align 4
  %call.i.i30 = tail call zeroext i1 @__list_add_valid(ptr noundef %dzone, ptr noundef %30, ptr noundef %map_seq_list) #15
  br i1 %call.i.i30, label %if.else7.if.end10.sink.split_crit_edge, label %if.else7.if.end10_crit_edge

if.else7.if.end10_crit_edge:                      ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

if.else7.if.end10.sink.split_crit_edge:           ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10.sink.split

if.end10.sink.split:                              ; preds = %if.else7.if.end10.sink.split_crit_edge, %if.then5.if.end10.sink.split_crit_edge, %if.then.if.end10.sink.split_crit_edge
  %prev.i29.sink = phi ptr [ %prev.i, %if.then.if.end10.sink.split_crit_edge ], [ %prev.i24, %if.then5.if.end10.sink.split_crit_edge ], [ %prev.i29, %if.else7.if.end10.sink.split_crit_edge ]
  %map_seq_list.sink = phi ptr [ %map_cache_list, %if.then.if.end10.sink.split_crit_edge ], [ %map_rnd_list, %if.then5.if.end10.sink.split_crit_edge ], [ %map_seq_list, %if.else7.if.end10.sink.split_crit_edge ]
  %.sink34 = phi ptr [ %21, %if.then.if.end10.sink.split_crit_edge ], [ %28, %if.then5.if.end10.sink.split_crit_edge ], [ %30, %if.else7.if.end10.sink.split_crit_edge ]
  %31 = ptrtoint ptr %prev.i29.sink to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %dzone, ptr %prev.i29.sink, align 4
  %32 = ptrtoint ptr %dzone to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %map_seq_list.sink, ptr %dzone, align 4
  %prev3.i.i31 = getelementptr inbounds %struct.list_head, ptr %dzone, i32 0, i32 1
  %33 = ptrtoint ptr %prev3.i.i31 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %.sink34, ptr %prev3.i.i31, align 4
  %34 = ptrtoint ptr %.sink34 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %dzone, ptr %.sink34, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.end10.sink.split, %if.else7.if.end10_crit_edge, %if.then5.if.end10_crit_edge, %if.then.if.end10_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dmz_put_chunk_mapping(ptr noundef %zmd, ptr noundef %dzone) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %map_lock.i = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 38
  tail call void @mutex_lock_nested(ptr noundef %map_lock.i, i32 noundef 0) #15
  %bzone1 = getelementptr inbounds %struct.dm_zone, ptr %dzone, i32 0, i32 8
  %0 = ptrtoint ptr %bzone1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bzone1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4

if.then:                                          ; preds = %entry
  %weight = getelementptr inbounds %struct.dm_zone, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %weight to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %weight, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.then
  tail call fastcc void @__dmz_lru_zone(ptr noundef %zmd, ptr noundef nonnull %1) #15
  %bzone.i = getelementptr inbounds %struct.dm_zone, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %bzone.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bzone.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.then3.if.end4_crit_edge, label %if.then.i

if.then3.if.end4_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4

if.then.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @__dmz_lru_zone(ptr noundef %zmd, ptr noundef nonnull %5) #15
  br label %if.end4

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dmz_unmap_zone(ptr noundef %zmd, ptr noundef nonnull %1)
  tail call void @dmz_free_zone(ptr noundef %zmd, ptr noundef nonnull %1)
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then.i, %if.then3.if.end4_crit_edge, %entry.if.end4_crit_edge
  %bzone.0 = phi ptr [ null, %if.else ], [ null, %entry.if.end4_crit_edge ], [ %1, %if.then3.if.end4_crit_edge ], [ %1, %if.then.i ]
  %dev.i = getelementptr inbounds %struct.dm_zone, ptr %dzone, i32 0, i32 1
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  %reclaim.i = getelementptr inbounds %struct.dmz_dev, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %reclaim.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reclaim.i, align 8
  tail call void @dmz_reclaim_bio_acc(ptr noundef %9) #15
  %refcount.i = getelementptr inbounds %struct.dm_zone, ptr %dzone, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #15
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #15, !srcloc !318
  %call.i.i.i31 = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount.i, i32 noundef 4) #15
  %11 = ptrtoint ptr %refcount.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %refcount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.i.not = icmp eq i32 %12, 0
  %tobool5.not = icmp eq ptr %bzone.0, null
  %or.cond = select i1 %tobool.i.not, i1 %tobool5.not, i1 false
  br i1 %or.cond, label %lor.lhs.false6, label %if.end4.if.then9_crit_edge

if.end4.if.then9_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then9

lor.lhs.false6:                                   ; preds = %if.end4
  %weight7 = getelementptr inbounds %struct.dm_zone, ptr %dzone, i32 0, i32 6
  %13 = ptrtoint ptr %weight7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %weight7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool8.not = icmp eq i32 %14, 0
  br i1 %tobool8.not, label %if.else10, label %lor.lhs.false6.if.then9_crit_edge

lor.lhs.false6.if.then9_crit_edge:                ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then9

if.then9:                                         ; preds = %lor.lhs.false6.if.then9_crit_edge, %if.end4.if.then9_crit_edge
  tail call fastcc void @__dmz_lru_zone(ptr noundef %zmd, ptr noundef %dzone) #15
  %15 = ptrtoint ptr %bzone1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bzone1, align 4
  %tobool.not.i33 = icmp eq ptr %16, null
  br i1 %tobool.not.i33, label %if.then9.if.end11_crit_edge, label %if.then.i34

if.then9.if.end11_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

if.then.i34:                                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @__dmz_lru_zone(ptr noundef %zmd, ptr noundef nonnull %16) #15
  br label %if.end11

if.else10:                                        ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dmz_unmap_zone(ptr noundef %zmd, ptr noundef %dzone)
  tail call void @dmz_free_zone(ptr noundef %zmd, ptr noundef %dzone)
  br label %if.end11

if.end11:                                         ; preds = %if.else10, %if.then.i34, %if.then9.if.end11_crit_edge
  tail call void @mutex_unlock(ptr noundef %map_lock.i) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dmz_unmap_zone(ptr noundef %zmd, ptr noundef %zone) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %chunk1 = getelementptr inbounds %struct.dm_zone, ptr %zone, i32 0, i32 7
  %0 = ptrtoint ptr %chunk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chunk1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.dm_zone, ptr %zone, i32 0, i32 2
  %call = tail call i32 @_test_and_clear_bit(i32 noundef 7, ptr noundef %flags) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %bzone6 = getelementptr inbounds %struct.dm_zone, ptr %zone, i32 0, i32 8
  %2 = ptrtoint ptr %bzone6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bzone6, align 4
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %id = getelementptr inbounds %struct.dm_zone, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  br label %if.end35.sink.split

if.else:                                          ; preds = %if.end
  %tobool7.not = icmp eq ptr %3, null
  br i1 %tobool7.not, label %if.else.if.end35_crit_edge, label %do.end, !prof !313

if.else.if.end35_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end35

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2369, i32 noundef 9, ptr noundef null) #15
  %6 = ptrtoint ptr %bzone6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bzone6, align 4
  br label %if.end35.sink.split

if.end35.sink.split:                              ; preds = %do.end, %if.then2
  %.sink = phi ptr [ %7, %do.end ], [ %3, %if.then2 ]
  %dzone_id.0.ph = phi i32 [ -1, %do.end ], [ %5, %if.then2 ]
  %bzone32 = getelementptr inbounds %struct.dm_zone, ptr %.sink, i32 0, i32 8
  %8 = ptrtoint ptr %bzone32 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %bzone32, align 4
  %9 = ptrtoint ptr %bzone6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %bzone6, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.end35.sink.split, %if.else.if.end35_crit_edge
  %dzone_id.0 = phi i32 [ -1, %if.else.if.end35_crit_edge ], [ %dzone_id.0.ph, %if.end35.sink.split ]
  %map_mblk.i = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 39
  %10 = ptrtoint ptr %map_mblk.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %map_mblk.i, align 8
  %shr.i = lshr i32 %1, 9
  %arrayidx.i = getelementptr ptr, ptr %11, i32 %shr.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %data.i = getelementptr inbounds %struct.dmz_mblock, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.i, align 4
  %and.i = and i32 %1, 511
  %16 = tail call i32 @llvm.bswap.i32(i32 %dzone_id.0) #15
  %arrayidx1.i = getelementptr %struct.dmz_map, ptr %15, i32 %and.i
  %17 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %arrayidx1.i, align 4
  %bzone_id4.i = getelementptr %struct.dmz_map, ptr %15, i32 %and.i, i32 1
  %18 = ptrtoint ptr %bzone_id4.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %bzone_id4.i, align 4
  %mblk_lock.i.i = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 33
  tail call void @_raw_spin_lock(ptr noundef %mblk_lock.i.i) #15
  %state.i.i = getelementptr inbounds %struct.dmz_mblock, ptr %13, i32 0, i32 4
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end35.dmz_set_chunk_mapping.exit_crit_edge

if.end35.dmz_set_chunk_mapping.exit_crit_edge:    ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #17
  br label %dmz_set_chunk_mapping.exit

if.then.i.i:                                      ; preds = %if.end35
  %link.i.i = getelementptr inbounds %struct.dmz_mblock, ptr %13, i32 0, i32 1
  %mblk_dirty_list.i.i = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 36
  %prev.i.i.i = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 36, i32 1
  %19 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %link.i.i, ptr noundef %20, ptr noundef %mblk_dirty_list.i.i) #15
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.dmz_set_chunk_mapping.exit_crit_edge

if.then.i.i.dmz_set_chunk_mapping.exit_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dmz_set_chunk_mapping.exit

if.end.i.i.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %21 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %link.i.i, ptr %prev.i.i.i, align 4
  %22 = ptrtoint ptr %link.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %mblk_dirty_list.i.i, ptr %link.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.dmz_mblock, ptr %13, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev3.i.i.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %link.i.i, ptr %20, align 4
  br label %dmz_set_chunk_mapping.exit

dmz_set_chunk_mapping.exit:                       ; preds = %if.end.i.i.i.i, %if.then.i.i.dmz_set_chunk_mapping.exit_crit_edge, %if.end35.dmz_set_chunk_mapping.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %mblk_lock.i.i) #15
  %25 = ptrtoint ptr %chunk1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %chunk1, align 4
  %call.i.i49 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %zone) #15
  br i1 %call.i.i49, label %if.end.i.i, label %dmz_set_chunk_mapping.exit.list_del_init.exit_crit_edge

dmz_set_chunk_mapping.exit.list_del_init.exit_crit_edge: ; preds = %dmz_set_chunk_mapping.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %dmz_set_chunk_mapping.exit
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %zone, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i.i, align 4
  %28 = ptrtoint ptr %zone to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %zone, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev1.i.i.i, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %29, ptr %27, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %dmz_set_chunk_mapping.exit.list_del_init.exit_crit_edge
  %32 = ptrtoint ptr %zone to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %zone, ptr %zone, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %zone, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %zone, ptr %prev.i3.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %list_del_init.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dmz_free_zone(ptr noundef %zmd, ptr noundef %zone) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.dm_zone, ptr %zone, i32 0, i32 2
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags, align 4
  %5 = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

lor.lhs.false.i:                                  ; preds = %if.then
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags, align 4
  %8 = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool3.not.i = icmp eq i32 %8, 0
  br i1 %tobool3.not.i, label %lor.lhs.false4.i, label %lor.lhs.false.i.if.end_crit_edge

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

lor.lhs.false4.i:                                 ; preds = %lor.lhs.false.i
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %flags, align 4
  %11 = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool7.not.i = icmp eq i32 %11, 0
  br i1 %tobool7.not.i, label %if.end.i, label %lor.lhs.false4.i.if.end_crit_edge

lor.lhs.false4.i.if.end_crit_edge:                ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end.i:                                         ; preds = %lor.lhs.false4.i
  %wp_block.i = getelementptr inbounds %struct.dm_zone, ptr %zone, i32 0, i32 5
  %12 = ptrtoint ptr %wp_block.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %wp_block.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.i = icmp eq i32 %13, 0
  br i1 %cmp.i, label %lor.lhs.false8.i, label %if.end.i.if.then12.i_crit_edge

if.end.i.if.then12.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then12.i

lor.lhs.false8.i:                                 ; preds = %if.end.i
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %flags, align 4
  %16 = and i32 %15, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool11.not.i = icmp eq i32 %16, 0
  br i1 %tobool11.not.i, label %lor.lhs.false8.i.if.end20.i_crit_edge, label %lor.lhs.false8.i.if.then12.i_crit_edge

lor.lhs.false8.i.if.then12.i_crit_edge:           ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then12.i

lor.lhs.false8.i.if.end20.i_crit_edge:            ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20.i

if.then12.i:                                      ; preds = %lor.lhs.false8.i.if.then12.i_crit_edge, %if.end.i.if.then12.i_crit_edge
  %dev13.i = getelementptr inbounds %struct.dm_zone, ptr %zone, i32 0, i32 1
  %17 = ptrtoint ptr %dev13.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev13.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 8
  %tobool.not.i.i.i = icmp eq ptr %zone, null
  br i1 %tobool.not.i.i.i, label %do.end.i.i.i, label %if.end23.i.i.i, !prof !312

do.end.i.i.i:                                     ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 223, i32 noundef 9, ptr noundef null) #15
  br label %dmz_start_sect.exit.i

if.end23.i.i.i:                                   ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #17
  %id.i.i.i = getelementptr inbounds %struct.dm_zone, ptr %zone, i32 0, i32 4
  %21 = ptrtoint ptr %id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %id.i.i.i, align 4
  %zone_offset.i.i.i = getelementptr inbounds %struct.dmz_dev, ptr %18, i32 0, i32 8
  %23 = ptrtoint ptr %zone_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %zone_offset.i.i.i, align 8
  %sub.i.i.i = sub i32 %22, %24
  br label %dmz_start_sect.exit.i

dmz_start_sect.exit.i:                            ; preds = %if.end23.i.i.i, %do.end.i.i.i
  %retval.0.i.i.i = phi i32 [ 0, %do.end.i.i.i ], [ %sub.i.i.i, %if.end23.i.i.i ]
  %conv.i.i = zext i32 %retval.0.i.i.i to i64
  %zone_nr_sectors_shift.i.i = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 11
  %25 = ptrtoint ptr %zone_nr_sectors_shift.i.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %zone_nr_sectors_shift.i.i, align 8
  %shl.i.i = shl i64 %conv.i.i, %26
  %zone_nr_sectors.i = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 10
  %27 = ptrtoint ptr %zone_nr_sectors.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %zone_nr_sectors.i, align 8
  %call15.i = tail call i32 @blkdev_zone_mgmt(ptr noundef %20, i32 noundef 15, i64 noundef %shl.i.i, i64 noundef %28, i32 noundef 3072) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %dmz_start_sect.exit.i.if.end20.i_crit_edge, label %do.end.i

dmz_start_sect.exit.i.if.end20.i_crit_edge:       ; preds = %dmz_start_sect.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20.i

do.end.i:                                         ; preds = %dmz_start_sect.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %name.i = getelementptr inbounds %struct.dmz_dev, ptr %18, i32 0, i32 3
  %id.i = getelementptr inbounds %struct.dm_zone, ptr %zone, i32 0, i32 4
  %29 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %id.i, align 4
  %call18.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef %name.i, i32 noundef %30, i32 noundef %call15.i) #19
  br label %if.end

if.end20.i:                                       ; preds = %dmz_start_sect.exit.i.if.end20.i_crit_edge, %lor.lhs.false8.i.if.end20.i_crit_edge
  tail call void @_clear_bit(i32 noundef 10, ptr noundef %flags) #15
  %31 = ptrtoint ptr %wp_block.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %wp_block.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.end20.i, %do.end.i, %lor.lhs.false4.i.if.end_crit_edge, %lor.lhs.false.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %32 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %flags, align 4
  %and1.i42 = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i42)
  %tobool4.not = icmp eq i32 %and1.i42, 0
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end
  %unmap_cache_list = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 42
  %prev.i = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 42, i32 1
  %34 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i, align 4
  %call.i.i50 = tail call zeroext i1 @__list_add_valid(ptr noundef %zone, ptr noundef %35, ptr noundef %unmap_cache_list) #15
  br i1 %call.i.i50, label %if.end.i.i, label %if.then5.list_add_tail.exit_crit_edge

if.then5.list_add_tail.exit_crit_edge:            ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #17
  %36 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %zone, ptr %prev.i, align 4
  %37 = ptrtoint ptr %zone to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %unmap_cache_list, ptr %zone, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %zone, i32 0, i32 1
  %38 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %prev3.i.i, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %zone, ptr %35, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.then5.list_add_tail.exit_crit_edge
  %unmap_nr_cache = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 41
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %unmap_nr_cache, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %unmap_nr_cache, i32 1, i32 3, i32 1) #15
  %40 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %unmap_nr_cache, ptr %unmap_nr_cache, i32 1, ptr elementtype(i32) %unmap_nr_cache) #15, !srcloc !317
  br label %if.end24

if.else:                                          ; preds = %if.end
  %41 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %flags, align 4
  %43 = and i32 %42, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool8.not = icmp eq i32 %43, 0
  br i1 %tobool8.not, label %if.else12, label %if.then9

if.then9:                                         ; preds = %if.else
  %dev = getelementptr inbounds %struct.dm_zone, ptr %zone, i32 0, i32 1
  %44 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev, align 4
  %unmap_rnd_list = getelementptr inbounds %struct.dmz_dev, ptr %45, i32 0, i32 13
  %prev.i51 = getelementptr inbounds %struct.dmz_dev, ptr %45, i32 0, i32 13, i32 1
  %46 = ptrtoint ptr %prev.i51 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %prev.i51, align 4
  %call.i.i52 = tail call zeroext i1 @__list_add_valid(ptr noundef %zone, ptr noundef %47, ptr noundef %unmap_rnd_list) #15
  br i1 %call.i.i52, label %if.end.i.i54, label %if.then9.list_add_tail.exit55_crit_edge

if.then9.list_add_tail.exit55_crit_edge:          ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add_tail.exit55

if.end.i.i54:                                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #17
  %48 = ptrtoint ptr %prev.i51 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %zone, ptr %prev.i51, align 4
  %49 = ptrtoint ptr %zone to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %unmap_rnd_list, ptr %zone, align 4
  %prev3.i.i53 = getelementptr inbounds %struct.list_head, ptr %zone, i32 0, i32 1
  %50 = ptrtoint ptr %prev3.i.i53 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %47, ptr %prev3.i.i53, align 4
  %51 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %zone, ptr %47, align 4
  br label %list_add_tail.exit55

list_add_tail.exit55:                             ; preds = %if.end.i.i54, %if.then9.list_add_tail.exit55_crit_edge
  %52 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev, align 4
  %unmap_nr_rnd = getelementptr inbounds %struct.dmz_dev, ptr %53, i32 0, i32 12
  %call.i.i45 = tail call zeroext i1 @__kasan_check_write(ptr noundef %unmap_nr_rnd, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %unmap_nr_rnd, i32 1, i32 3, i32 1) #15
  %54 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %unmap_nr_rnd, ptr %unmap_nr_rnd, i32 1, ptr elementtype(i32) %unmap_nr_rnd) #15, !srcloc !317
  br label %if.end24

if.else12:                                        ; preds = %if.else
  %55 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %flags, align 4
  %57 = and i32 %56, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool15.not = icmp eq i32 %57, 0
  br i1 %tobool15.not, label %if.else18, label %if.then16

if.then16:                                        ; preds = %if.else12
  %reserved_seq_zones_list = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 45
  %prev.i56 = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 45, i32 1
  %58 = ptrtoint ptr %prev.i56 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %prev.i56, align 4
  %call.i.i57 = tail call zeroext i1 @__list_add_valid(ptr noundef %zone, ptr noundef %59, ptr noundef %reserved_seq_zones_list) #15
  br i1 %call.i.i57, label %if.end.i.i59, label %if.then16.list_add_tail.exit60_crit_edge

if.then16.list_add_tail.exit60_crit_edge:         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add_tail.exit60

if.end.i.i59:                                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #17
  %60 = ptrtoint ptr %prev.i56 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %zone, ptr %prev.i56, align 4
  %61 = ptrtoint ptr %zone to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %reserved_seq_zones_list, ptr %zone, align 4
  %prev3.i.i58 = getelementptr inbounds %struct.list_head, ptr %zone, i32 0, i32 1
  %62 = ptrtoint ptr %prev3.i.i58 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %59, ptr %prev3.i.i58, align 4
  %63 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %zone, ptr %59, align 4
  br label %list_add_tail.exit60

list_add_tail.exit60:                             ; preds = %if.end.i.i59, %if.then16.list_add_tail.exit60_crit_edge
  %nr_reserved_seq_zones = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 44
  %call.i.i48 = tail call zeroext i1 @__kasan_check_write(ptr noundef %nr_reserved_seq_zones, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %nr_reserved_seq_zones, i32 1, i32 3, i32 1) #15
  %64 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nr_reserved_seq_zones, ptr %nr_reserved_seq_zones, i32 1, ptr elementtype(i32) %nr_reserved_seq_zones) #15, !srcloc !317
  br label %if.end24

if.else18:                                        ; preds = %if.else12
  %dev20 = getelementptr inbounds %struct.dm_zone, ptr %zone, i32 0, i32 1
  %65 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev20, align 4
  %unmap_seq_list = getelementptr inbounds %struct.dmz_dev, ptr %66, i32 0, i32 17
  %prev.i61 = getelementptr inbounds %struct.dmz_dev, ptr %66, i32 0, i32 17, i32 1
  %67 = ptrtoint ptr %prev.i61 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %prev.i61, align 4
  %call.i.i62 = tail call zeroext i1 @__list_add_valid(ptr noundef %zone, ptr noundef %68, ptr noundef %unmap_seq_list) #15
  br i1 %call.i.i62, label %if.end.i.i64, label %if.else18.list_add_tail.exit65_crit_edge

if.else18.list_add_tail.exit65_crit_edge:         ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add_tail.exit65

if.end.i.i64:                                     ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #17
  %69 = ptrtoint ptr %prev.i61 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %zone, ptr %prev.i61, align 4
  %70 = ptrtoint ptr %zone to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %unmap_seq_list, ptr %zone, align 4
  %prev3.i.i63 = getelementptr inbounds %struct.list_head, ptr %zone, i32 0, i32 1
  %71 = ptrtoint ptr %prev3.i.i63 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %68, ptr %prev3.i.i63, align 4
  %72 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile ptr %zone, ptr %68, align 4
  br label %list_add_tail.exit65

list_add_tail.exit65:                             ; preds = %if.end.i.i64, %if.else18.list_add_tail.exit65_crit_edge
  %73 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev20, align 4
  %unmap_nr_seq = getelementptr inbounds %struct.dmz_dev, ptr %74, i32 0, i32 16
  %call.i.i49 = tail call zeroext i1 @__kasan_check_write(ptr noundef %unmap_nr_seq, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %unmap_nr_seq, i32 1, i32 3, i32 1) #15
  %75 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %unmap_nr_seq, ptr %unmap_nr_seq, i32 1, ptr elementtype(i32) %unmap_nr_seq) #15, !srcloc !317
  br label %if.end24

if.end24:                                         ; preds = %list_add_tail.exit65, %list_add_tail.exit60, %list_add_tail.exit55, %list_add_tail.exit
  %free_wq = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 46
  tail call void @__wake_up(ptr noundef %free_wq, i32 noundef 3, i32 noundef 0, ptr noundef null) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dmz_get_chunk_buffer(ptr noundef %zmd, ptr noundef %dzone) local_unnamed_addr #0 align 64 {
entry:
  %wait.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_cache = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 40
  %0 = ptrtoint ptr %nr_cache to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_cache, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %cond = select i1 %tobool.not, i32 1, i32 2
  %map_lock.i = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 38
  tail call void @mutex_lock_nested(ptr noundef %map_lock.i, i32 noundef 0) #15
  %bzone1 = getelementptr inbounds %struct.dm_zone, ptr %dzone, i32 0, i32 8
  %2 = ptrtoint ptr %bzone1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bzone1, align 4
  %tobool2.not59 = icmp eq ptr %3, null
  br i1 %tobool2.not59, label %if.end.lr.ph, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end.lr.ph:                                     ; preds = %entry
  %nr_devs.i = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 1
  %4 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 1
  %5 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 2
  %6 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 3
  %7 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 3, i32 1
  %free_wq.i = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 46
  %mblk_sem.i.i = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 31
  br label %if.end

if.end:                                           ; preds = %if.end8.if.end_crit_edge, %if.end.lr.ph
  %call = call ptr @dmz_alloc_zone(ptr noundef %zmd, i32 noundef 0, i32 noundef %cond)
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %if.then4, label %if.end9

if.then4:                                         ; preds = %if.end
  %8 = ptrtoint ptr %nr_devs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr_devs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp4.not.i = icmp eq i32 %9, 0
  br i1 %cmp4.not.i, label %if.then4.if.end8_crit_edge, label %if.then4.for.body.i_crit_edge

if.then4.for.body.i_crit_edge:                    ; preds = %if.then4
  br label %for.body.i

if.then4.if.end8_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.05.i, 1
  %10 = ptrtoint ptr %nr_devs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nr_devs.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %11
  br i1 %cmp.i, label %for.cond.i.for.body.i_crit_edge, label %for.cond.i.if.end8_crit_edge

for.cond.i.if.end8_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.then4.for.body.i_crit_edge
  %i.05.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %if.then4.for.body.i_crit_edge ]
  %12 = ptrtoint ptr %zmd to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %zmd, align 8
  %arrayidx.i = getelementptr %struct.dmz_dev, ptr %13, i32 %i.05.i
  %call.i = call zeroext i1 @dmz_bdev_is_dying(ptr noundef %arrayidx.i) #15
  br i1 %call.i, label %for.body.i.out_crit_edge, label %for.cond.i

for.body.i.out_crit_edge:                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end8:                                          ; preds = %for.cond.i.if.end8_crit_edge, %if.then4.if.end8_crit_edge
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait.i) #15
  %14 = ptrtoint ptr %wait.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %wait.i, align 4
  %15 = call i32 @llvm.read_register.i32(metadata !302) #15
  %and.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task.i, align 8
  %19 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %4, align 4
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @autoremove_wake_function, ptr %5, align 4
  %21 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %6, ptr %6, align 4
  %22 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %6, ptr %7, align 4
  call void @prepare_to_wait(ptr noundef %free_wq.i, ptr noundef nonnull %wait.i, i32 noundef 2) #15
  call void @mutex_unlock(ptr noundef %map_lock.i) #15
  call void @up_read(ptr noundef %mblk_sem.i.i) #15
  %call4.i = call i32 @io_schedule_timeout(i32 noundef 100) #15
  call void @down_read(ptr noundef %mblk_sem.i.i) #15
  call void @mutex_lock_nested(ptr noundef %map_lock.i, i32 noundef 0) #15
  call void @finish_wait(ptr noundef %free_wq.i, ptr noundef nonnull %wait.i) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait.i) #15
  %23 = ptrtoint ptr %bzone1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bzone1, align 4
  %tobool2.not = icmp eq ptr %24, null
  br i1 %tobool2.not, label %if.end8.if.end_crit_edge, label %if.end8.out_crit_edge

if.end8.out_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end8.if.end_crit_edge:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end9:                                          ; preds = %if.end
  %chunk = getelementptr inbounds %struct.dm_zone, ptr %dzone, i32 0, i32 7
  %25 = ptrtoint ptr %chunk to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %chunk, align 4
  %id = getelementptr inbounds %struct.dm_zone, ptr %dzone, i32 0, i32 4
  %27 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %id, align 4
  %id10 = getelementptr inbounds %struct.dm_zone, ptr %call, i32 0, i32 4
  %29 = ptrtoint ptr %id10 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %id10, align 4
  %map_mblk.i = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 39
  %31 = ptrtoint ptr %map_mblk.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %map_mblk.i, align 8
  %shr.i = lshr i32 %26, 9
  %arrayidx.i44 = getelementptr ptr, ptr %32, i32 %shr.i
  %33 = ptrtoint ptr %arrayidx.i44 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i44, align 4
  %data.i = getelementptr inbounds %struct.dmz_mblock, ptr %34, i32 0, i32 6
  %35 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data.i, align 4
  %and.i = and i32 %26, 511
  %37 = call i32 @llvm.bswap.i32(i32 %28) #15
  %arrayidx1.i = getelementptr %struct.dmz_map, ptr %36, i32 %and.i
  %38 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %arrayidx1.i, align 4
  %39 = call i32 @llvm.bswap.i32(i32 %30) #15
  %bzone_id4.i = getelementptr %struct.dmz_map, ptr %36, i32 %and.i, i32 1
  %40 = ptrtoint ptr %bzone_id4.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %bzone_id4.i, align 4
  %mblk_lock.i.i = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 33
  call void @_raw_spin_lock(ptr noundef %mblk_lock.i.i) #15
  %state.i.i = getelementptr inbounds %struct.dmz_mblock, ptr %34, i32 0, i32 4
  %call.i.i = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end9.dmz_set_chunk_mapping.exit_crit_edge

if.end9.dmz_set_chunk_mapping.exit_crit_edge:     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %dmz_set_chunk_mapping.exit

if.then.i.i:                                      ; preds = %if.end9
  %link.i.i = getelementptr inbounds %struct.dmz_mblock, ptr %34, i32 0, i32 1
  %mblk_dirty_list.i.i = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 36
  %prev.i.i.i = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 36, i32 1
  %41 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %link.i.i, ptr noundef %42, ptr noundef %mblk_dirty_list.i.i) #15
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.dmz_set_chunk_mapping.exit_crit_edge

if.then.i.i.dmz_set_chunk_mapping.exit_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dmz_set_chunk_mapping.exit

if.end.i.i.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %43 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %link.i.i, ptr %prev.i.i.i, align 4
  %44 = ptrtoint ptr %link.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %mblk_dirty_list.i.i, ptr %link.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.dmz_mblock, ptr %34, i32 0, i32 1, i32 1
  %45 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %42, ptr %prev3.i.i.i.i, align 4
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %link.i.i, ptr %42, align 4
  br label %dmz_set_chunk_mapping.exit

dmz_set_chunk_mapping.exit:                       ; preds = %if.end.i.i.i.i, %if.then.i.i.dmz_set_chunk_mapping.exit_crit_edge, %if.end9.dmz_set_chunk_mapping.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %mblk_lock.i.i) #15
  %flags = getelementptr inbounds %struct.dm_zone, ptr %call, i32 0, i32 2
  call void @_set_bit(i32 noundef 7, ptr noundef %flags) #15
  %47 = ptrtoint ptr %chunk to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %chunk, align 4
  %chunk12 = getelementptr inbounds %struct.dm_zone, ptr %call, i32 0, i32 7
  %49 = ptrtoint ptr %chunk12 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %chunk12, align 4
  %bzone13 = getelementptr inbounds %struct.dm_zone, ptr %call, i32 0, i32 8
  %50 = ptrtoint ptr %bzone13 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %dzone, ptr %bzone13, align 4
  %51 = ptrtoint ptr %bzone1 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call, ptr %bzone1, align 4
  %52 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool17.not = icmp eq i32 %and1.i, 0
  br i1 %tobool17.not, label %if.else, label %if.then18

if.then18:                                        ; preds = %dmz_set_chunk_mapping.exit
  %map_cache_list = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 43
  %prev.i = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 43, i32 1
  %54 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %prev.i, align 4
  %call.i.i45 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call, ptr noundef %55, ptr noundef %map_cache_list) #15
  br i1 %call.i.i45, label %if.then18.out.sink.split_crit_edge, label %if.then18.out_crit_edge

if.then18.out_crit_edge:                          ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.then18.out.sink.split_crit_edge:               ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.sink.split

if.else:                                          ; preds = %dmz_set_chunk_mapping.exit
  %dev = getelementptr inbounds %struct.dm_zone, ptr %call, i32 0, i32 1
  %56 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev, align 4
  %map_rnd_list = getelementptr inbounds %struct.dmz_dev, ptr %57, i32 0, i32 14
  %prev.i46 = getelementptr inbounds %struct.dmz_dev, ptr %57, i32 0, i32 14, i32 1
  %58 = ptrtoint ptr %prev.i46 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %prev.i46, align 4
  %call.i.i47 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call, ptr noundef %59, ptr noundef %map_rnd_list) #15
  br i1 %call.i.i47, label %if.else.out.sink.split_crit_edge, label %if.else.out_crit_edge

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.else.out.sink.split_crit_edge:                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.sink.split

out.sink.split:                                   ; preds = %if.else.out.sink.split_crit_edge, %if.then18.out.sink.split_crit_edge
  %prev.i46.sink = phi ptr [ %prev.i, %if.then18.out.sink.split_crit_edge ], [ %prev.i46, %if.else.out.sink.split_crit_edge ]
  %map_rnd_list.sink = phi ptr [ %map_cache_list, %if.then18.out.sink.split_crit_edge ], [ %map_rnd_list, %if.else.out.sink.split_crit_edge ]
  %.sink66 = phi ptr [ %55, %if.then18.out.sink.split_crit_edge ], [ %59, %if.else.out.sink.split_crit_edge ]
  %60 = ptrtoint ptr %prev.i46.sink to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call, ptr %prev.i46.sink, align 4
  %61 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %map_rnd_list.sink, ptr %call, align 4
  %prev3.i.i48 = getelementptr inbounds %struct.list_head, ptr %call, i32 0, i32 1
  %62 = ptrtoint ptr %prev3.i.i48 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %.sink66, ptr %prev3.i.i48, align 4
  %63 = ptrtoint ptr %.sink66 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %call, ptr %.sink66, align 4
  br label %out

out:                                              ; preds = %out.sink.split, %if.else.out_crit_edge, %if.then18.out_crit_edge, %if.end8.out_crit_edge, %for.body.i.out_crit_edge, %entry.out_crit_edge
  %bzone.0 = phi ptr [ %call, %if.then18.out_crit_edge ], [ %call, %if.else.out_crit_edge ], [ %3, %entry.out_crit_edge ], [ %call, %out.sink.split ], [ inttoptr (i32 -5 to ptr), %for.body.i.out_crit_edge ], [ %24, %if.end8.out_crit_edge ]
  call void @mutex_unlock(ptr noundef %map_lock.i) #15
  ret ptr %bzone.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dmz_schedule_reclaim(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dmz_copy_valid_blocks(ptr noundef %zmd, ptr nocapture noundef readonly %from_zone, ptr nocapture noundef %to_zone) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %zone_nr_blocks = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 8
  %0 = ptrtoint ptr %zone_nr_blocks to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %zone_nr_blocks, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %cmp46.not = icmp eq i64 %1, 0
  br i1 %cmp46.not, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %nr_map_blocks.i = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 13
  %id.i = getelementptr inbounds %struct.dm_zone, ptr %from_zone, i32 0, i32 4
  %zone_nr_bitmap_blocks.i = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 6
  %id.i35 = getelementptr inbounds %struct.dm_zone, ptr %to_zone, i32 0, i32 4
  %mblk_lock.i = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 33
  %mblk_dirty_list.i = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 36
  %prev.i.i = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 36, i32 1
  %zone_bits_per_mblk = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 7
  br label %while.body

while.body:                                       ; preds = %dmz_dirty_mblock.exit.while.body_crit_edge, %while.body.lr.ph
  %chunk_block.047 = phi i64 [ 0, %while.body.lr.ph ], [ %add, %dmz_dirty_mblock.exit.while.body_crit_edge ]
  %2 = ptrtoint ptr %nr_map_blocks.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_map_blocks.i, align 4
  %add.i = add i32 %3, 1
  %conv.i = zext i32 %add.i to i64
  %4 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id.i, align 4
  %6 = ptrtoint ptr %zone_nr_bitmap_blocks.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %zone_nr_bitmap_blocks.i, align 8
  %mul.i = mul i32 %7, %5
  %conv1.i = zext i32 %mul.i to i64
  %shr.i = lshr i64 %chunk_block.047, 15
  %add2.i = add nuw nsw i64 %shr.i, %conv.i
  %add3.i = add nuw nsw i64 %add2.i, %conv1.i
  %call.i = tail call fastcc ptr @dmz_get_mblock(ptr noundef %zmd, i64 noundef %add3.i) #15
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  %8 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.end:                                           ; preds = %while.body
  %9 = ptrtoint ptr %nr_map_blocks.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nr_map_blocks.i, align 4
  %add.i33 = add i32 %10, 1
  %conv.i34 = zext i32 %add.i33 to i64
  %11 = ptrtoint ptr %id.i35 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id.i35, align 4
  %13 = ptrtoint ptr %zone_nr_bitmap_blocks.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %zone_nr_bitmap_blocks.i, align 8
  %mul.i37 = mul i32 %14, %12
  %conv1.i38 = zext i32 %mul.i37 to i64
  %add2.i40 = add nuw nsw i64 %shr.i, %conv.i34
  %add3.i41 = add nuw nsw i64 %add2.i40, %conv1.i38
  %call.i42 = tail call fastcc ptr @dmz_get_mblock(ptr noundef %zmd, i64 noundef %add3.i41) #15
  %cmp.i43 = icmp ugt ptr %call.i42, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i43, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @dmz_release_mblock(ptr noundef %zmd, ptr noundef %call.i)
  %15 = ptrtoint ptr %call.i42 to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %data = getelementptr inbounds %struct.dmz_mblock, ptr %call.i42, i32 0, i32 6
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data, align 4
  %data8 = getelementptr inbounds %struct.dmz_mblock, ptr %call.i, i32 0, i32 6
  %18 = ptrtoint ptr %data8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data8, align 4
  %20 = call ptr @memcpy(ptr %17, ptr %19, i32 4096)
  tail call void @_raw_spin_lock(ptr noundef %mblk_lock.i) #15
  %state.i = getelementptr inbounds %struct.dmz_mblock, ptr %call.i42, i32 0, i32 4
  %call.i44 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44)
  %tobool.not.i = icmp eq i32 %call.i44, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end7.dmz_dirty_mblock.exit_crit_edge

if.end7.dmz_dirty_mblock.exit_crit_edge:          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %dmz_dirty_mblock.exit

if.then.i:                                        ; preds = %if.end7
  %link.i = getelementptr inbounds %struct.dmz_mblock, ptr %call.i42, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %link.i, ptr noundef %22, ptr noundef %mblk_dirty_list.i) #15
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.dmz_dirty_mblock.exit_crit_edge

if.then.i.dmz_dirty_mblock.exit_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dmz_dirty_mblock.exit

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %23 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %link.i, ptr %prev.i.i, align 4
  %24 = ptrtoint ptr %link.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %mblk_dirty_list.i, ptr %link.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.dmz_mblock, ptr %call.i42, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev3.i.i.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %link.i, ptr %22, align 4
  br label %dmz_dirty_mblock.exit

dmz_dirty_mblock.exit:                            ; preds = %if.end.i.i.i, %if.then.i.dmz_dirty_mblock.exit_crit_edge, %if.end7.dmz_dirty_mblock.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %mblk_lock.i) #15
  tail call fastcc void @dmz_release_mblock(ptr noundef %zmd, ptr noundef %call.i42)
  tail call fastcc void @dmz_release_mblock(ptr noundef %zmd, ptr noundef %call.i)
  %27 = ptrtoint ptr %zone_bits_per_mblk to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %zone_bits_per_mblk, align 4
  %conv = zext i32 %28 to i64
  %add = add i64 %chunk_block.047, %conv
  %29 = ptrtoint ptr %zone_nr_blocks to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %zone_nr_blocks, align 8
  %cmp = icmp ult i64 %add, %30
  br i1 %cmp, label %dmz_dirty_mblock.exit.while.body_crit_edge, label %dmz_dirty_mblock.exit.while.end_crit_edge

dmz_dirty_mblock.exit.while.end_crit_edge:        ; preds = %dmz_dirty_mblock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

dmz_dirty_mblock.exit.while.body_crit_edge:       ; preds = %dmz_dirty_mblock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

while.end:                                        ; preds = %dmz_dirty_mblock.exit.while.end_crit_edge, %entry.while.end_crit_edge
  %weight = getelementptr inbounds %struct.dm_zone, ptr %from_zone, i32 0, i32 6
  %31 = ptrtoint ptr %weight to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %weight, align 4
  %weight9 = getelementptr inbounds %struct.dm_zone, ptr %to_zone, i32 0, i32 6
  %33 = ptrtoint ptr %weight9 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %weight9, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then5, %if.then
  %retval.0 = phi i32 [ %8, %if.then ], [ %15, %if.then5 ], [ 0, %while.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dmz_release_mblock(ptr noundef %zmd, ptr noundef %mblk) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %mblk, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end:                                           ; preds = %entry
  %mblk_lock = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 33
  tail call void @_raw_spin_lock(ptr noundef %mblk_lock) #15
  %ref = getelementptr inbounds %struct.dmz_mblock, ptr %mblk, i32 0, i32 3
  %0 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ref, align 8
  %dec = add i32 %1, -1
  store i32 %dec, ptr %ref, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %if.then2, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12

if.then2:                                         ; preds = %if.end
  %state = getelementptr inbounds %struct.dmz_mblock, ptr %mblk, i32 0, i32 4
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state, align 4
  %4 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool3.not = icmp eq i32 %4, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #17
  %mblk_rbtree = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 34
  tail call void @rb_erase(ptr noundef nonnull %mblk, ptr noundef %mblk_rbtree) #15
  %page.i = getelementptr inbounds %struct.dmz_mblock, ptr %mblk, i32 0, i32 5
  %5 = ptrtoint ptr %page.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %page.i, align 8
  tail call void @__free_pages(ptr noundef %6, i32 noundef 0) #15
  tail call void @kfree(ptr noundef nonnull %mblk) #15
  %nr_mblks.i = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 30
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nr_mblks.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %nr_mblks.i, i32 1, i32 3, i32 1) #15
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nr_mblks.i, ptr %nr_mblks.i, i32 1, ptr elementtype(i32) %nr_mblks.i) #15, !srcloc !318
  br label %if.end12

if.else:                                          ; preds = %if.then2
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %state, align 4
  %and1.i26 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i26)
  %tobool7.not = icmp eq i32 %and1.i26, 0
  br i1 %tobool7.not, label %if.then8, label %if.else.if.end12_crit_edge

if.else.if.end12_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12

if.then8:                                         ; preds = %if.else
  %link = getelementptr inbounds %struct.dmz_mblock, ptr %mblk, i32 0, i32 1
  %mblk_lru_list = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 35
  %prev.i = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 35, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %link, ptr noundef %11, ptr noundef %mblk_lru_list) #15
  br i1 %call.i.i, label %if.end.i.i, label %if.then8.list_add_tail.exit_crit_edge

if.then8.list_add_tail.exit_crit_edge:            ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #17
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %link, ptr %prev.i, align 4
  %13 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %mblk_lru_list, ptr %link, align 4
  %prev3.i.i = getelementptr inbounds %struct.dmz_mblock, ptr %mblk, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev3.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %link, ptr %11, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.then8.list_add_tail.exit_crit_edge
  %call9 = tail call fastcc i32 @dmz_shrink_mblock_cache(ptr noundef %zmd, i32 noundef 1)
  br label %if.end12

if.end12:                                         ; preds = %list_add_tail.exit, %if.else.if.end12_crit_edge, %if.then4, %if.end.if.end12_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %mblk_lock) #15
  br label %return

return:                                           ; preds = %if.end12, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dmz_merge_valid_blocks(ptr noundef %zmd, ptr nocapture noundef readonly %from_zone, ptr nocapture noundef %to_zone, i64 noundef %chunk_block) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %zone_nr_blocks = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 8
  %0 = ptrtoint ptr %zone_nr_blocks to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %zone_nr_blocks, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %chunk_block)
  %cmp18 = icmp ugt i64 %1, %chunk_block
  br i1 %cmp18, label %entry.while.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.cond:                                       ; preds = %if.end
  %conv = zext i32 %call6.i to i64
  %add = add i64 %add.i, %conv
  %2 = ptrtoint ptr %zone_nr_blocks to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %zone_nr_blocks, align 8
  %cmp = icmp ugt i64 %3, %add
  br i1 %cmp, label %while.cond.while.body_crit_edge, label %while.cond.cleanup_crit_edge

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

while.body:                                       ; preds = %while.cond.while.body_crit_edge, %entry.while.body_crit_edge
  %4 = phi i64 [ %3, %while.cond.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %storemerge19 = phi i64 [ %add, %while.cond.while.body_crit_edge ], [ %chunk_block, %entry.while.body_crit_edge ]
  %sub.i = sub i64 %4, %storemerge19
  %conv.i = trunc i64 %sub.i to i32
  %call.i = tail call fastcc i32 @dmz_to_next_set_block(ptr noundef %zmd, ptr noundef %from_zone, i64 noundef %storemerge19, i32 noundef %conv.i, i32 noundef 1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %while.body.cleanup_crit_edge, label %dmz_first_valid_block.exit

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

dmz_first_valid_block.exit:                       ; preds = %while.body
  %conv220.i = zext i32 %call.i to i64
  %add.i = add i64 %storemerge19, %conv220.i
  %5 = ptrtoint ptr %zone_nr_blocks to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %zone_nr_blocks, align 8
  %sub4.i = sub i64 %6, %add.i
  %conv5.i = trunc i64 %sub4.i to i32
  %call6.i = tail call fastcc i32 @dmz_to_next_set_block(ptr noundef %zmd, ptr noundef %from_zone, i64 noundef %add.i, i32 noundef %conv5.i, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call6.i)
  %cmp1 = icmp slt i32 %call6.i, 1
  br i1 %cmp1, label %dmz_first_valid_block.exit.cleanup_crit_edge, label %if.end

dmz_first_valid_block.exit.cleanup_crit_edge:     ; preds = %dmz_first_valid_block.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %dmz_first_valid_block.exit
  %call2 = tail call i32 @dmz_validate_blocks(ptr noundef %zmd, ptr noundef %to_zone, i64 noundef %add.i, i32 noundef %call6.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %while.cond, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %dmz_first_valid_block.exit.cleanup_crit_edge, %while.body.cleanup_crit_edge, %while.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call.i, %while.body.cleanup_crit_edge ], [ 0, %while.cond.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %call6.i, %dmz_first_valid_block.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dmz_first_valid_block(ptr noundef %zmd, ptr nocapture noundef readonly %zone, ptr nocapture noundef %chunk_block) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chunk_block to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %chunk_block, align 8
  %zone_nr_blocks = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 8
  %2 = ptrtoint ptr %zone_nr_blocks to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %zone_nr_blocks, align 8
  %sub = sub i64 %3, %1
  %conv = trunc i64 %sub to i32
  %call = tail call fastcc i32 @dmz_to_next_set_block(ptr noundef %zmd, ptr noundef %zone, i64 noundef %1, i32 noundef %conv, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %conv220 = zext i32 %call to i64
  %add = add i64 %1, %conv220
  %4 = ptrtoint ptr %chunk_block to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %add, ptr %chunk_block, align 8
  %5 = ptrtoint ptr %zone_nr_blocks to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %zone_nr_blocks, align 8
  %sub4 = sub i64 %6, %add
  %conv5 = trunc i64 %sub4 to i32
  %call6 = tail call fastcc i32 @dmz_to_next_set_block(ptr noundef %zmd, ptr noundef %zone, i64 noundef %add, i32 noundef %conv5, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dmz_validate_blocks(ptr noundef %zmd, ptr nocapture noundef %zone, i64 noundef %chunk_block, i32 noundef %nr_blocks) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %zone_nr_blocks1 = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 8
  %0 = ptrtoint ptr %zone_nr_blocks1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %zone_nr_blocks1, align 8
  %conv = trunc i64 %1 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dmz_validate_blocks.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dmz_validate_blocks, %if.then)) #15
          to label %do.end [label %if.then], !srcloc !319

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %label = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 3
  %id = getelementptr inbounds %struct.dm_zone, ptr %zone, i32 0, i32 4
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dmz_validate_blocks.__UNIQUE_ID_ddebug288, ptr noundef nonnull @.str.8, ptr noundef %label, i32 noundef %3, i64 noundef %chunk_block, i32 noundef %nr_blocks) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %conv4 = zext i32 %nr_blocks to i64
  %add = add i64 %conv4, %chunk_block
  %conv5 = and i64 %1, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv5)
  %cmp = icmp ugt i64 %add, %conv5
  br i1 %cmp, label %do.end22, label %do.end.if.end28_crit_edge, !prof !312

do.end.if.end28_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end28

do.end22:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2505, i32 noundef 9, ptr noundef null) #15
  br label %if.end28

if.end28:                                         ; preds = %do.end22, %do.end.if.end28_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_blocks)
  %tobool36.not130 = icmp eq i32 %nr_blocks, 0
  br i1 %tobool36.not130, label %if.end28.while.end_crit_edge, label %while.body.lr.ph

if.end28.while.end_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end28
  %nr_map_blocks.i = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 13
  %id.i = getelementptr inbounds %struct.dm_zone, ptr %zone, i32 0, i32 4
  %zone_nr_bitmap_blocks.i = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 6
  %zone_bits_per_mblk = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 7
  %mblk_lock.i = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 33
  %mblk_dirty_list.i = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 36
  %prev.i.i = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 36, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end50.while.body_crit_edge, %while.body.lr.ph
  %chunk_block.addr.0133 = phi i64 [ %chunk_block, %while.body.lr.ph ], [ %add53, %if.end50.while.body_crit_edge ]
  %nr_blocks.addr.0132 = phi i32 [ %nr_blocks, %while.body.lr.ph ], [ %sub51, %if.end50.while.body_crit_edge ]
  %n.0131 = phi i32 [ 0, %while.body.lr.ph ], [ %n.1, %if.end50.while.body_crit_edge ]
  %4 = ptrtoint ptr %nr_map_blocks.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_map_blocks.i, align 4
  %add.i = add i32 %5, 1
  %conv.i = zext i32 %add.i to i64
  %6 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id.i, align 4
  %8 = ptrtoint ptr %zone_nr_bitmap_blocks.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %zone_nr_bitmap_blocks.i, align 8
  %mul.i = mul i32 %9, %7
  %conv1.i = zext i32 %mul.i to i64
  %shr.i = lshr i64 %chunk_block.addr.0133, 15
  %add2.i = add nuw nsw i64 %shr.i, %conv.i
  %add3.i = add nuw nsw i64 %add2.i, %conv1.i
  %call.i = tail call fastcc ptr @dmz_get_mblock(ptr noundef %zmd, i64 noundef %add3.i) #15
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then39, label %if.end41

if.then39:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  %10 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.end41:                                         ; preds = %while.body
  %11 = trunc i64 %chunk_block.addr.0133 to i32
  %conv42 = and i32 %11, 32767
  %12 = ptrtoint ptr %zone_bits_per_mblk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %zone_bits_per_mblk, align 4
  %sub = sub i32 %13, %conv42
  %14 = tail call i32 @llvm.umin.i32(i32 %nr_blocks.addr.0132, i32 %sub)
  %data = getelementptr inbounds %struct.dmz_mblock, ptr %call.i, i32 0, i32 6
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 4
  %add.i120 = add i32 %14, %conv42
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i120, i32 %conv42)
  %cmp24.i = icmp ugt i32 %add.i120, %conv42
  br i1 %cmp24.i, label %if.end41.while.body.i_crit_edge, label %if.end41.if.end50_crit_edge

if.end41.if.end50_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end50

if.end41.while.body.i_crit_edge:                  ; preds = %if.end41
  br label %while.body.i

while.body.i:                                     ; preds = %while.cond.backedge.i.while.body.i_crit_edge, %if.end41.while.body.i_crit_edge
  %n.027.i = phi i32 [ %add5.i, %while.cond.backedge.i.while.body.i_crit_edge ], [ 0, %if.end41.while.body.i_crit_edge ]
  %bit.addr.025.i = phi i32 [ %add6.i, %while.cond.backedge.i.while.body.i_crit_edge ], [ %conv42, %if.end41.while.body.i_crit_edge ]
  %and.i = and i32 %bit.addr.025.i, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp1.i = icmp eq i32 %and.i, 0
  %sub.i = sub i32 %add.i120, %bit.addr.025.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %sub.i)
  %cmp2.i = icmp ugt i32 %sub.i, 31
  %or.cond.i = and i1 %cmp1.i, %cmp2.i
  br i1 %or.cond.i, label %if.then.i, label %while.body.i.if.end7.i_crit_edge

while.body.i.if.end7.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7.i

if.then.i:                                        ; preds = %while.body.i
  %div23.i = lshr i32 %bit.addr.025.i, 5
  %add.ptr.i = getelementptr i32, ptr %16, i32 %div23.i
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp3.i = icmp eq i32 %18, 0
  br i1 %cmp3.i, label %if.then4.i, label %if.then.i.if.end7.i_crit_edge

if.then.i.if.end7.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7.i

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %add.ptr.i, align 4
  br label %while.cond.backedge.i

while.cond.backedge.i:                            ; preds = %if.end7.i, %if.then4.i
  %.sink28.i = phi i32 [ 32, %if.then4.i ], [ %inc.i, %if.end7.i ]
  %.sink.i = phi i32 [ 32, %if.then4.i ], [ 1, %if.end7.i ]
  %add5.i = add i32 %.sink28.i, %n.027.i
  %add6.i = add i32 %.sink.i, %bit.addr.025.i
  %cmp.i121 = icmp ugt i32 %add.i120, %add6.i
  br i1 %cmp.i121, label %while.cond.backedge.i.while.body.i_crit_edge, label %dmz_set_bits.exit

while.cond.backedge.i.while.body.i_crit_edge:     ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i

if.end7.i:                                        ; preds = %if.then.i.if.end7.i_crit_edge, %while.body.i.if.end7.i_crit_edge
  %call.i122 = tail call i32 @_test_and_set_bit(i32 noundef %bit.addr.025.i, ptr noundef %16) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i122)
  %tobool.not.i = icmp eq i32 %call.i122, 0
  %inc.i = zext i1 %tobool.not.i to i32
  br label %while.cond.backedge.i

dmz_set_bits.exit:                                ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add5.i)
  %tobool47.not = icmp eq i32 %add5.i, 0
  br i1 %tobool47.not, label %dmz_set_bits.exit.if.end50_crit_edge, label %if.then48

dmz_set_bits.exit.if.end50_crit_edge:             ; preds = %dmz_set_bits.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end50

if.then48:                                        ; preds = %dmz_set_bits.exit
  tail call void @_raw_spin_lock(ptr noundef %mblk_lock.i) #15
  %state.i = getelementptr inbounds %struct.dmz_mblock, ptr %call.i, i32 0, i32 4
  %call.i123 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i123)
  %tobool.not.i124 = icmp eq i32 %call.i123, 0
  br i1 %tobool.not.i124, label %if.then.i125, label %if.then48.dmz_dirty_mblock.exit_crit_edge

if.then48.dmz_dirty_mblock.exit_crit_edge:        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #17
  br label %dmz_dirty_mblock.exit

if.then.i125:                                     ; preds = %if.then48
  %link.i = getelementptr inbounds %struct.dmz_mblock, ptr %call.i, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %link.i, ptr noundef %21, ptr noundef %mblk_dirty_list.i) #15
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i125.dmz_dirty_mblock.exit_crit_edge

if.then.i125.dmz_dirty_mblock.exit_crit_edge:     ; preds = %if.then.i125
  call void @__sanitizer_cov_trace_pc() #17
  br label %dmz_dirty_mblock.exit

if.end.i.i.i:                                     ; preds = %if.then.i125
  call void @__sanitizer_cov_trace_pc() #17
  %22 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %link.i, ptr %prev.i.i, align 4
  %23 = ptrtoint ptr %link.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %mblk_dirty_list.i, ptr %link.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.dmz_mblock, ptr %call.i, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev3.i.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %link.i, ptr %21, align 4
  br label %dmz_dirty_mblock.exit

dmz_dirty_mblock.exit:                            ; preds = %if.end.i.i.i, %if.then.i125.dmz_dirty_mblock.exit_crit_edge, %if.then48.dmz_dirty_mblock.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %mblk_lock.i) #15
  %add49 = add i32 %add5.i, %n.0131
  br label %if.end50

if.end50:                                         ; preds = %dmz_dirty_mblock.exit, %dmz_set_bits.exit.if.end50_crit_edge, %if.end41.if.end50_crit_edge
  %n.1 = phi i32 [ %add49, %dmz_dirty_mblock.exit ], [ %n.0131, %dmz_set_bits.exit.if.end50_crit_edge ], [ %n.0131, %if.end41.if.end50_crit_edge ]
  tail call fastcc void @dmz_release_mblock(ptr noundef %zmd, ptr noundef %call.i)
  %sub51 = sub i32 %nr_blocks.addr.0132, %14
  %conv52 = zext i32 %14 to i64
  %add53 = add i64 %chunk_block.addr.0133, %conv52
  %tobool36.not = icmp eq i32 %sub51, 0
  br i1 %tobool36.not, label %if.end50.while.end_crit_edge, label %if.end50.while.body_crit_edge

if.end50.while.body_crit_edge:                    ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

if.end50.while.end_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.end:                                        ; preds = %if.end50.while.end_crit_edge, %if.end28.while.end_crit_edge
  %n.0.lcssa = phi i32 [ 0, %if.end28.while.end_crit_edge ], [ %n.1, %if.end50.while.end_crit_edge ]
  %weight = getelementptr inbounds %struct.dm_zone, ptr %zone, i32 0, i32 6
  %26 = ptrtoint ptr %weight to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %weight, align 4
  %add54 = add i32 %27, %n.0.lcssa
  call void @__sanitizer_cov_trace_cmp4(i32 %add54, i32 %conv)
  %cmp55.not = icmp ugt i32 %add54, %conv
  br i1 %cmp55.not, label %do.end68, label %while.end.if.end77_crit_edge, !prof !312

while.end.if.end77_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end77

do.end68:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  %label70 = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 3
  %id72 = getelementptr inbounds %struct.dm_zone, ptr %zone, i32 0, i32 4
  %28 = ptrtoint ptr %id72 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %id72, align 4
  %sub74 = sub i32 %conv, %n.0.lcssa
  %call75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %label70, i32 noundef %29, i32 noundef %27, i32 noundef %sub74) #19
  br label %if.end77

if.end77:                                         ; preds = %do.end68, %while.end.if.end77_crit_edge
  %storemerge = phi i32 [ %conv, %do.end68 ], [ %add54, %while.end.if.end77_crit_edge ]
  %30 = ptrtoint ptr %weight to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %storemerge, ptr %weight, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end77, %if.then39
  %retval.0 = phi i32 [ %10, %if.then39 ], [ 0, %if.end77 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dmz_invalidate_blocks(ptr noundef %zmd, ptr nocapture noundef %zone, i64 noundef %chunk_block, i32 noundef %nr_blocks) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dmz_invalidate_blocks.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dmz_invalidate_blocks, %if.then)) #15
          to label %do.end [label %if.then], !srcloc !319

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %label = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 3
  %id = getelementptr inbounds %struct.dm_zone, ptr %zone, i32 0, i32 4
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dmz_invalidate_blocks.__UNIQUE_ID_ddebug291, ptr noundef nonnull @.str.11, ptr noundef %label, i32 noundef %1, i64 noundef %chunk_block, i32 noundef %nr_blocks) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %conv = zext i32 %nr_blocks to i64
  %add = add i64 %conv, %chunk_block
  %zone_nr_blocks = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 8
  %2 = ptrtoint ptr %zone_nr_blocks to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %zone_nr_blocks, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %3)
  %cmp = icmp ugt i64 %add, %3
  br i1 %cmp, label %do.end19, label %do.end.if.end25_crit_edge, !prof !312

do.end.if.end25_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end25

do.end19:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2584, i32 noundef 9, ptr noundef null) #15
  br label %if.end25

if.end25:                                         ; preds = %do.end19, %do.end.if.end25_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_blocks)
  %tobool33.not115 = icmp eq i32 %nr_blocks, 0
  br i1 %tobool33.not115, label %while.end.thread, label %while.body.lr.ph

while.end.thread:                                 ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #17
  %weight121 = getelementptr inbounds %struct.dm_zone, ptr %zone, i32 0, i32 6
  %4 = ptrtoint ptr %weight121 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %weight121, align 4
  br label %if.then53

while.body.lr.ph:                                 ; preds = %if.end25
  %nr_map_blocks.i = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 13
  %id.i = getelementptr inbounds %struct.dm_zone, ptr %zone, i32 0, i32 4
  %zone_nr_bitmap_blocks.i = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 6
  %zone_bits_per_mblk = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 7
  %mblk_lock.i = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 33
  %mblk_dirty_list.i = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 36
  %prev.i.i = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 36, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end47.while.body_crit_edge, %while.body.lr.ph
  %chunk_block.addr.0118 = phi i64 [ %chunk_block, %while.body.lr.ph ], [ %add50, %if.end47.while.body_crit_edge ]
  %nr_blocks.addr.0117 = phi i32 [ %nr_blocks, %while.body.lr.ph ], [ %sub48, %if.end47.while.body_crit_edge ]
  %n.0116 = phi i32 [ 0, %while.body.lr.ph ], [ %n.1, %if.end47.while.body_crit_edge ]
  %6 = ptrtoint ptr %nr_map_blocks.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr_map_blocks.i, align 4
  %add.i = add i32 %7, 1
  %conv.i = zext i32 %add.i to i64
  %8 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id.i, align 4
  %10 = ptrtoint ptr %zone_nr_bitmap_blocks.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %zone_nr_bitmap_blocks.i, align 8
  %mul.i = mul i32 %11, %9
  %conv1.i = zext i32 %mul.i to i64
  %shr.i = lshr i64 %chunk_block.addr.0118, 15
  %add2.i = add nuw nsw i64 %shr.i, %conv.i
  %add3.i = add nuw nsw i64 %add2.i, %conv1.i
  %call.i = tail call fastcc ptr @dmz_get_mblock(ptr noundef %zmd, i64 noundef %add3.i) #15
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then36, label %if.end38

if.then36:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  %12 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.end38:                                         ; preds = %while.body
  %13 = trunc i64 %chunk_block.addr.0118 to i32
  %conv39 = and i32 %13, 32767
  %14 = ptrtoint ptr %zone_bits_per_mblk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %zone_bits_per_mblk, align 4
  %sub = sub i32 %15, %conv39
  %16 = tail call i32 @llvm.umin.i32(i32 %nr_blocks.addr.0117, i32 %sub)
  %data = getelementptr inbounds %struct.dmz_mblock, ptr %call.i, i32 0, i32 6
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data, align 4
  %add.i105 = add i32 %16, %conv39
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i105, i32 %conv39)
  %cmp23.i = icmp sgt i32 %add.i105, %conv39
  br i1 %cmp23.i, label %if.end38.while.body.i_crit_edge, label %if.end38.if.end47_crit_edge

if.end38.if.end47_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end47

if.end38.while.body.i_crit_edge:                  ; preds = %if.end38
  br label %while.body.i

while.body.i:                                     ; preds = %while.cond.backedge.i.while.body.i_crit_edge, %if.end38.while.body.i_crit_edge
  %n.026.i = phi i32 [ %add5.i, %while.cond.backedge.i.while.body.i_crit_edge ], [ 0, %if.end38.while.body.i_crit_edge ]
  %bit.addr.024.i = phi i32 [ %add6.i, %while.cond.backedge.i.while.body.i_crit_edge ], [ %conv39, %if.end38.while.body.i_crit_edge ]
  %and.i = and i32 %bit.addr.024.i, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp1.i = icmp eq i32 %and.i, 0
  %sub.i = sub i32 %add.i105, %bit.addr.024.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %sub.i)
  %cmp2.i = icmp sgt i32 %sub.i, 31
  %or.cond.i = and i1 %cmp1.i, %cmp2.i
  br i1 %or.cond.i, label %if.then.i, label %while.body.i.if.end7.i_crit_edge

while.body.i.if.end7.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7.i

if.then.i:                                        ; preds = %while.body.i
  %div.i = sdiv i32 %bit.addr.024.i, 32
  %add.ptr.i = getelementptr i32, ptr %18, i32 %div.i
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %cmp3.i = icmp eq i32 %20, -1
  br i1 %cmp3.i, label %if.then4.i, label %if.then.i.if.end7.i_crit_edge

if.then.i.if.end7.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7.i

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %add.ptr.i, align 4
  br label %while.cond.backedge.i

while.cond.backedge.i:                            ; preds = %if.end7.i, %if.then4.i
  %.sink27.i = phi i32 [ 32, %if.then4.i ], [ %inc.i, %if.end7.i ]
  %.sink.i = phi i32 [ 32, %if.then4.i ], [ 1, %if.end7.i ]
  %add5.i = add i32 %.sink27.i, %n.026.i
  %add6.i = add i32 %.sink.i, %bit.addr.024.i
  %cmp.i106 = icmp sgt i32 %add.i105, %add6.i
  br i1 %cmp.i106, label %while.cond.backedge.i.while.body.i_crit_edge, label %dmz_clear_bits.exit

while.cond.backedge.i.while.body.i_crit_edge:     ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i

if.end7.i:                                        ; preds = %if.then.i.if.end7.i_crit_edge, %while.body.i.if.end7.i_crit_edge
  %call.i107 = tail call i32 @_test_and_clear_bit(i32 noundef %bit.addr.024.i, ptr noundef %18) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i107)
  %tobool.not.i = icmp ne i32 %call.i107, 0
  %inc.i = zext i1 %tobool.not.i to i32
  br label %while.cond.backedge.i

dmz_clear_bits.exit:                              ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add5.i)
  %tobool44.not = icmp eq i32 %add5.i, 0
  br i1 %tobool44.not, label %dmz_clear_bits.exit.if.end47_crit_edge, label %if.then45

dmz_clear_bits.exit.if.end47_crit_edge:           ; preds = %dmz_clear_bits.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end47

if.then45:                                        ; preds = %dmz_clear_bits.exit
  tail call void @_raw_spin_lock(ptr noundef %mblk_lock.i) #15
  %state.i = getelementptr inbounds %struct.dmz_mblock, ptr %call.i, i32 0, i32 4
  %call.i108 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i108)
  %tobool.not.i109 = icmp eq i32 %call.i108, 0
  br i1 %tobool.not.i109, label %if.then.i110, label %if.then45.dmz_dirty_mblock.exit_crit_edge

if.then45.dmz_dirty_mblock.exit_crit_edge:        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #17
  br label %dmz_dirty_mblock.exit

if.then.i110:                                     ; preds = %if.then45
  %link.i = getelementptr inbounds %struct.dmz_mblock, ptr %call.i, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %link.i, ptr noundef %23, ptr noundef %mblk_dirty_list.i) #15
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i110.dmz_dirty_mblock.exit_crit_edge

if.then.i110.dmz_dirty_mblock.exit_crit_edge:     ; preds = %if.then.i110
  call void @__sanitizer_cov_trace_pc() #17
  br label %dmz_dirty_mblock.exit

if.end.i.i.i:                                     ; preds = %if.then.i110
  call void @__sanitizer_cov_trace_pc() #17
  %24 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %link.i, ptr %prev.i.i, align 4
  %25 = ptrtoint ptr %link.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %mblk_dirty_list.i, ptr %link.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.dmz_mblock, ptr %call.i, i32 0, i32 1, i32 1
  %26 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev3.i.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %link.i, ptr %23, align 4
  br label %dmz_dirty_mblock.exit

dmz_dirty_mblock.exit:                            ; preds = %if.end.i.i.i, %if.then.i110.dmz_dirty_mblock.exit_crit_edge, %if.then45.dmz_dirty_mblock.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %mblk_lock.i) #15
  %add46 = add i32 %add5.i, %n.0116
  br label %if.end47

if.end47:                                         ; preds = %dmz_dirty_mblock.exit, %dmz_clear_bits.exit.if.end47_crit_edge, %if.end38.if.end47_crit_edge
  %n.1 = phi i32 [ %add46, %dmz_dirty_mblock.exit ], [ %n.0116, %dmz_clear_bits.exit.if.end47_crit_edge ], [ %n.0116, %if.end38.if.end47_crit_edge ]
  tail call fastcc void @dmz_release_mblock(ptr noundef %zmd, ptr noundef %call.i)
  %sub48 = sub i32 %nr_blocks.addr.0117, %16
  %conv49 = zext i32 %16 to i64
  %add50 = add i64 %chunk_block.addr.0118, %conv49
  %tobool33.not = icmp eq i32 %sub48, 0
  br i1 %tobool33.not, label %while.end, label %if.end47.while.body_crit_edge

if.end47.while.body_crit_edge:                    ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

while.end:                                        ; preds = %if.end47
  %weight = getelementptr inbounds %struct.dm_zone, ptr %zone, i32 0, i32 6
  %28 = ptrtoint ptr %weight to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %weight, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %n.1)
  %cmp51.not = icmp ult i32 %29, %n.1
  br i1 %cmp51.not, label %do.end58, label %while.end.if.then53_crit_edge

while.end.if.then53_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then53

if.then53:                                        ; preds = %while.end.if.then53_crit_edge, %while.end.thread
  %30 = phi i32 [ %5, %while.end.thread ], [ %29, %while.end.if.then53_crit_edge ]
  %weight125 = phi ptr [ %weight121, %while.end.thread ], [ %weight, %while.end.if.then53_crit_edge ]
  %n.0.lcssa123 = phi i32 [ 0, %while.end.thread ], [ %n.1, %while.end.if.then53_crit_edge ]
  %sub55 = sub i32 %30, %n.0.lcssa123
  br label %if.end66

do.end58:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  %label60 = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 3
  %id62 = getelementptr inbounds %struct.dm_zone, ptr %zone, i32 0, i32 4
  %31 = ptrtoint ptr %id62 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %id62, align 4
  %call64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %label60, i32 noundef %32, i32 noundef %29, i32 noundef %n.1) #19
  br label %if.end66

if.end66:                                         ; preds = %do.end58, %if.then53
  %weight124 = phi ptr [ %weight, %do.end58 ], [ %weight125, %if.then53 ]
  %storemerge = phi i32 [ 0, %do.end58 ], [ %sub55, %if.then53 ]
  %33 = ptrtoint ptr %weight124 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %storemerge, ptr %weight124, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end66, %if.then36
  %retval.0 = phi i32 [ %12, %if.then36 ], [ 0, %if.end66 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dmz_block_valid(ptr noundef %zmd, ptr nocapture noundef readonly %zone, i64 noundef %chunk_block) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %zone_nr_blocks.i = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 8
  %0 = ptrtoint ptr %zone_nr_blocks.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %zone_nr_blocks.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %chunk_block)
  %cmp.not.i = icmp ugt i64 %1, %chunk_block
  br i1 %cmp.not.i, label %entry.if.end.i_crit_edge, label %do.end.i, !prof !313

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2628, i32 noundef 9, ptr noundef null) #15
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %entry.if.end.i_crit_edge
  %nr_map_blocks.i.i = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 13
  %2 = ptrtoint ptr %nr_map_blocks.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_map_blocks.i.i, align 4
  %add.i.i = add i32 %3, 1
  %conv.i.i = zext i32 %add.i.i to i64
  %id.i.i = getelementptr inbounds %struct.dm_zone, ptr %zone, i32 0, i32 4
  %4 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id.i.i, align 4
  %zone_nr_bitmap_blocks.i.i = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 6
  %6 = ptrtoint ptr %zone_nr_bitmap_blocks.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %zone_nr_bitmap_blocks.i.i, align 8
  %mul.i.i = mul i32 %7, %5
  %conv1.i.i = zext i32 %mul.i.i to i64
  %shr.i35.i = lshr i64 %chunk_block, 15
  %add2.i.i = add nuw nsw i64 %shr.i35.i, %conv.i.i
  %add3.i.i = add nuw nsw i64 %add2.i.i, %conv1.i.i
  %call.i.i = tail call fastcc ptr @dmz_get_mblock(ptr noundef %zmd, i64 noundef %add3.i.i) #15
  %cmp.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then20.i, label %if.end22.i

if.then20.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %8 = ptrtoint ptr %call.i.i to i32
  br label %dmz_test_block.exit

if.end22.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %9 = trunc i64 %chunk_block to i32
  %data.i = getelementptr inbounds %struct.dmz_mblock, ptr %call.i.i, i32 0, i32 6
  %10 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i, align 4
  %conv.i = lshr i32 %9, 5
  %div3.i.i = and i32 %conv.i, 1023
  %arrayidx.i.i = getelementptr i32, ptr %11, i32 %div3.i.i
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %9, 31
  %14 = lshr i32 %13, %and.i.i
  %15 = and i32 %14, 1
  tail call fastcc void @dmz_release_mblock(ptr noundef %zmd, ptr noundef %call.i.i) #15
  br label %dmz_test_block.exit

dmz_test_block.exit:                              ; preds = %if.end22.i, %if.then20.i
  %retval.0.i = phi i32 [ %8, %if.then20.i ], [ %15, %if.end22.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 1
  br i1 %cmp, label %dmz_test_block.exit.cleanup_crit_edge, label %if.end

dmz_test_block.exit.cleanup_crit_edge:            ; preds = %dmz_test_block.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %dmz_test_block.exit
  call void @__sanitizer_cov_trace_pc() #17
  %16 = ptrtoint ptr %zone_nr_blocks.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %zone_nr_blocks.i, align 8
  %sub = sub i64 %17, %chunk_block
  %conv = trunc i64 %sub to i32
  %call1 = tail call fastcc i32 @dmz_to_next_set_block(ptr noundef %zmd, ptr noundef %zone, i64 noundef %chunk_block, i32 noundef %conv, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %dmz_test_block.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %retval.0.i, %dmz_test_block.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dmz_to_next_set_block(ptr noundef %zmd, ptr nocapture noundef readonly %zone, i64 noundef %chunk_block, i32 noundef %nr_blocks, i32 noundef %set) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %zone_bits_per_mblk = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 7
  %0 = ptrtoint ptr %zone_bits_per_mblk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %zone_bits_per_mblk, align 4
  %conv = zext i32 %nr_blocks to i64
  %add = add i64 %conv, %chunk_block
  %zone_nr_blocks = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 8
  %2 = ptrtoint ptr %zone_nr_blocks to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %zone_nr_blocks, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %3)
  %cmp = icmp ugt i64 %add, %3
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge, !prof !312

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2658, i32 noundef 9, ptr noundef null) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_blocks)
  %tobool20.not74 = icmp eq i32 %nr_blocks, 0
  br i1 %tobool20.not74, label %if.end.cleanup_crit_edge, label %while.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

while.body.lr.ph:                                 ; preds = %if.end
  %nr_map_blocks.i = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 13
  %id.i = getelementptr inbounds %struct.dm_zone, ptr %zone, i32 0, i32 4
  %zone_nr_bitmap_blocks.i = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %set)
  %tobool29.not = icmp eq i32 %set, 0
  br label %while.body

while.body:                                       ; preds = %if.end39.while.body_crit_edge, %while.body.lr.ph
  %chunk_block.addr.077 = phi i64 [ %chunk_block, %while.body.lr.ph ], [ %add42, %if.end39.while.body_crit_edge ]
  %n.076 = phi i32 [ 0, %while.body.lr.ph ], [ %add35, %if.end39.while.body_crit_edge ]
  %nr_blocks.addr.075 = phi i32 [ %nr_blocks, %while.body.lr.ph ], [ %sub40, %if.end39.while.body_crit_edge ]
  %4 = ptrtoint ptr %nr_map_blocks.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_map_blocks.i, align 4
  %add.i = add i32 %5, 1
  %conv.i = zext i32 %add.i to i64
  %6 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id.i, align 4
  %8 = ptrtoint ptr %zone_nr_bitmap_blocks.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %zone_nr_bitmap_blocks.i, align 8
  %mul.i = mul i32 %9, %7
  %conv1.i = zext i32 %mul.i to i64
  %shr.i = lshr i64 %chunk_block.addr.077, 15
  %add2.i = add nuw nsw i64 %shr.i, %conv.i
  %add3.i = add nuw nsw i64 %add2.i, %conv1.i
  %call.i = tail call fastcc ptr @dmz_get_mblock(ptr noundef %zmd, i64 noundef %add3.i) #15
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then22, label %if.end24

if.then22:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  %10 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.end24:                                         ; preds = %while.body
  %data = getelementptr inbounds %struct.dmz_mblock, ptr %call.i, i32 0, i32 6
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  %13 = trunc i64 %chunk_block.addr.077 to i32
  %conv25 = and i32 %13, 32767
  %sub = sub i32 %1, %conv25
  %14 = tail call i32 @llvm.umin.i32(i32 %nr_blocks.addr.075, i32 %sub)
  br i1 %tobool29.not, label %if.else, label %if.then30

if.then30:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #17
  %call31 = tail call i32 @_find_next_bit_be(ptr noundef %12, i32 noundef %1, i32 noundef %conv25) #15
  br label %if.end33

if.else:                                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #17
  %call32 = tail call i32 @_find_next_zero_bit_be(ptr noundef %12, i32 noundef %1, i32 noundef %conv25) #15
  br label %if.end33

if.end33:                                         ; preds = %if.else, %if.then30
  %set_bit.0 = phi i32 [ %call31, %if.then30 ], [ %call32, %if.else ]
  tail call fastcc void @dmz_release_mblock(ptr noundef %zmd, ptr noundef %call.i)
  %sub34 = sub i32 %set_bit.0, %conv25
  %add35 = add i32 %sub34, %n.076
  call void @__sanitizer_cov_trace_cmp4(i32 %set_bit.0, i32 %1)
  %cmp36 = icmp ult i32 %set_bit.0, %1
  br i1 %cmp36, label %if.end33.cleanup_crit_edge, label %if.end39

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end39:                                         ; preds = %if.end33
  %sub40 = sub i32 %nr_blocks.addr.075, %14
  %conv41 = zext i32 %14 to i64
  %add42 = add i64 %chunk_block.addr.077, %conv41
  %tobool20.not = icmp eq i32 %sub40, 0
  br i1 %tobool20.not, label %if.end39.cleanup_crit_edge, label %if.end39.while.body_crit_edge

if.end39.while.body_crit_edge:                    ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup:                                          ; preds = %if.end39.cleanup_crit_edge, %if.end33.cleanup_crit_edge, %if.then22, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %10, %if.then22 ], [ 0, %if.end.cleanup_crit_edge ], [ %add35, %if.end39.cleanup_crit_edge ], [ %add35, %if.end33.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dmz_ctr_metadata(ptr noundef %dev, i32 noundef %num_dev, ptr nocapture noundef writeonly %metadata, ptr nocapture noundef readonly %devname) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 784) #20
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %devname1 = getelementptr inbounds %struct.dmz_metadata, ptr %call7.i.i, i32 0, i32 2
  %call2 = tail call ptr @strcpy(ptr noundef %devname1, ptr noundef %devname) #21
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %call7.i.i, align 8
  %nr_devs = getelementptr inbounds %struct.dmz_metadata, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %nr_devs to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %num_dev, ptr %nr_devs, align 4
  %mblk_rbtree = getelementptr inbounds %struct.dmz_metadata, ptr %call7.i.i, i32 0, i32 34
  %3 = ptrtoint ptr %mblk_rbtree to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %mblk_rbtree, align 4
  %mblk_sem = getelementptr inbounds %struct.dmz_metadata, ptr %call7.i.i, i32 0, i32 31
  tail call void @__init_rwsem(ptr noundef %mblk_sem, ptr noundef nonnull @.str.13, ptr noundef nonnull @dmz_ctr_metadata.__key) #15
  %mblk_flush_lock = getelementptr inbounds %struct.dmz_metadata, ptr %call7.i.i, i32 0, i32 32
  tail call void @__mutex_init(ptr noundef %mblk_flush_lock, ptr noundef nonnull @.str.15, ptr noundef nonnull @dmz_ctr_metadata.__key.14) #15
  %mblk_lock = getelementptr inbounds %struct.dmz_metadata, ptr %call7.i.i, i32 0, i32 33
  tail call void @__raw_spin_lock_init(ptr noundef %mblk_lock, ptr noundef nonnull @.str.17, ptr noundef nonnull @dmz_ctr_metadata.__key.16, i16 noundef signext 3) #15
  %mblk_lru_list = getelementptr inbounds %struct.dmz_metadata, ptr %call7.i.i, i32 0, i32 35
  %4 = ptrtoint ptr %mblk_lru_list to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %mblk_lru_list, ptr %mblk_lru_list, align 8
  %prev.i = getelementptr inbounds %struct.dmz_metadata, ptr %call7.i.i, i32 0, i32 35, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %mblk_lru_list, ptr %prev.i, align 4
  %mblk_dirty_list = getelementptr inbounds %struct.dmz_metadata, ptr %call7.i.i, i32 0, i32 36
  %6 = ptrtoint ptr %mblk_dirty_list to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %mblk_dirty_list, ptr %mblk_dirty_list, align 8
  %prev.i407 = getelementptr inbounds %struct.dmz_metadata, ptr %call7.i.i, i32 0, i32 36, i32 1
  %7 = ptrtoint ptr %prev.i407 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %mblk_dirty_list, ptr %prev.i407, align 4
  %map_lock = getelementptr inbounds %struct.dmz_metadata, ptr %call7.i.i, i32 0, i32 38
  tail call void @__mutex_init(ptr noundef %map_lock, ptr noundef nonnull @.str.19, ptr noundef nonnull @dmz_ctr_metadata.__key.18) #15
  %unmap_nr_cache = getelementptr inbounds %struct.dmz_metadata, ptr %call7.i.i, i32 0, i32 41
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %unmap_nr_cache, i32 noundef 4) #15
  %8 = ptrtoint ptr %unmap_nr_cache to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 0, ptr %unmap_nr_cache, align 8
  %unmap_cache_list = getelementptr inbounds %struct.dmz_metadata, ptr %call7.i.i, i32 0, i32 42
  %9 = ptrtoint ptr %unmap_cache_list to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %unmap_cache_list, ptr %unmap_cache_list, align 4
  %prev.i408 = getelementptr inbounds %struct.dmz_metadata, ptr %call7.i.i, i32 0, i32 42, i32 1
  %10 = ptrtoint ptr %prev.i408 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %unmap_cache_list, ptr %prev.i408, align 8
  %map_cache_list = getelementptr inbounds %struct.dmz_metadata, ptr %call7.i.i, i32 0, i32 43
  %11 = ptrtoint ptr %map_cache_list to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %map_cache_list, ptr %map_cache_list, align 4
  %prev.i409 = getelementptr inbounds %struct.dmz_metadata, ptr %call7.i.i, i32 0, i32 43, i32 1
  %12 = ptrtoint ptr %prev.i409 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %map_cache_list, ptr %prev.i409, align 8
  %nr_reserved_seq_zones = getelementptr inbounds %struct.dmz_metadata, ptr %call7.i.i, i32 0, i32 44
  %call.i.i377 = tail call zeroext i1 @__kasan_check_write(ptr noundef %nr_reserved_seq_zones, i32 noundef 4) #15
  %13 = ptrtoint ptr %nr_reserved_seq_zones to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile i32 0, ptr %nr_reserved_seq_zones, align 4
  %reserved_seq_zones_list = getelementptr inbounds %struct.dmz_metadata, ptr %call7.i.i, i32 0, i32 45
  %14 = ptrtoint ptr %reserved_seq_zones_list to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %reserved_seq_zones_list, ptr %reserved_seq_zones_list, align 8
  %prev.i410 = getelementptr inbounds %struct.dmz_metadata, ptr %call7.i.i, i32 0, i32 45, i32 1
  %15 = ptrtoint ptr %prev.i410 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %reserved_seq_zones_list, ptr %prev.i410, align 4
  %free_wq = getelementptr inbounds %struct.dmz_metadata, ptr %call7.i.i, i32 0, i32 46
  tail call void @__init_waitqueue_head(ptr noundef %free_wq, ptr noundef nonnull @.str.21, ptr noundef nonnull @dmz_ctr_metadata.__key.20) #15
  %call17 = tail call fastcc i32 @dmz_init_zones(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end.err_crit_edge

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %err

if.end20:                                         ; preds = %if.end
  %call21 = tail call fastcc i32 @dmz_load_sb(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %for.cond.preheader, label %if.end20.err_crit_edge

if.end20.err_crit_edge:                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #17
  br label %err

for.cond.preheader:                               ; preds = %if.end20
  %nr_meta_zones = getelementptr inbounds %struct.dmz_metadata, ptr %call7.i.i, i32 0, i32 17
  %16 = ptrtoint ptr %nr_meta_zones to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nr_meta_zones, align 4
  %shl459.mask = and i32 %17, 2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl459.mask)
  %cmp460.not = icmp eq i32 %shl459.mask, 0
  br i1 %cmp460.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %zone25 = getelementptr inbounds %struct.dmz_metadata, ptr %call7.i.i, i32 0, i32 24, i32 0, i32 4
  %zones.i = getelementptr inbounds %struct.dmz_metadata, ptr %call7.i.i, i32 0, i32 23
  br label %for.body

for.body:                                         ; preds = %if.end48.for.body_crit_edge, %for.body.lr.ph
  %i.0461 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end48.for.body_crit_edge ]
  %18 = ptrtoint ptr %zone25 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %zone25, align 4
  %id = getelementptr inbounds %struct.dm_zone, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %id, align 4
  %add = add i32 %21, %i.0461
  %call.i = tail call ptr @xa_load(ptr noundef %zones.i, i32 noundef %add) #15
  %tobool27.not = icmp eq ptr %call.i, null
  br i1 %tobool27.not, label %do.end31, label %if.end34

do.end31:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %label = getelementptr inbounds %struct.dmz_metadata, ptr %call7.i.i, i32 0, i32 3
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %label, i32 noundef %i.0461) #19
  br label %err

if.end34:                                         ; preds = %for.body
  %flags = getelementptr inbounds %struct.dm_zone, ptr %call.i, i32 0, i32 2
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %flags, align 4
  %24 = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool36.not = icmp eq i32 %24, 0
  br i1 %tobool36.not, label %land.lhs.true, label %if.end34.if.end48_crit_edge

if.end34.if.end48_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end48

land.lhs.true:                                    ; preds = %if.end34
  %25 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %flags, align 4
  %and1.i378 = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i378)
  %tobool39.not = icmp eq i32 %and1.i378, 0
  br i1 %tobool39.not, label %do.end43, label %land.lhs.true.if.end48_crit_edge

land.lhs.true.if.end48_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end48

do.end43:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %label45 = getelementptr inbounds %struct.dmz_metadata, ptr %call7.i.i, i32 0, i32 3
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %label45, i32 noundef %i.0461) #19
  br label %err

if.end48:                                         ; preds = %land.lhs.true.if.end48_crit_edge, %if.end34.if.end48_crit_edge
  tail call void @_set_bit(i32 noundef 5, ptr noundef %flags) #15
  %inc = add nuw i32 %i.0461, 1
  %27 = ptrtoint ptr %nr_meta_zones to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %nr_meta_zones, align 4
  %shl = shl i32 %28, 1
  %cmp = icmp ult i32 %inc, %shl
  br i1 %cmp, label %if.end48.for.body_crit_edge, label %if.end48.for.end_crit_edge

if.end48.for.end_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

if.end48.for.body_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %if.end48.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %nr_map_blocks.i = getelementptr inbounds %struct.dmz_metadata, ptr %call7.i.i, i32 0, i32 13
  %29 = ptrtoint ptr %nr_map_blocks.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %nr_map_blocks.i, align 4
  %31 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %30, i32 4) #15
  %32 = extractvalue { i32, i1 } %31, 1
  br i1 %32, label %kcalloc.exit.thread.i, label %if.end7.i.i.i, !prof !312

kcalloc.exit.thread.i:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  %map_mblk366.i = getelementptr inbounds %struct.dmz_metadata, ptr %call7.i.i, i32 0, i32 39
  %33 = ptrtoint ptr %map_mblk366.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %map_mblk366.i, align 8
  br label %err

if.end7.i.i.i:                                    ; preds = %for.end
  %34 = extractvalue { i32, i1 } %31, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %34, i32 noundef 3520) #22
  %map_mblk.i = getelementptr inbounds %struct.dmz_metadata, ptr %call7.i.i, i32 0, i32 39
  %35 = ptrtoint ptr %map_mblk.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call8.i.i.i, ptr %map_mblk.i, align 8
  %tobool.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not.i, label %if.end7.i.i.i.err_crit_edge, label %while.cond.preheader.i

if.end7.i.i.i.err_crit_edge:                      ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %err

while.cond.preheader.i:                           ; preds = %if.end7.i.i.i
  %nr_chunks.i = getelementptr inbounds %struct.dmz_metadata, ptr %call7.i.i, i32 0, i32 22
  %36 = ptrtoint ptr %nr_chunks.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %nr_chunks.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp381.not.i = icmp eq i32 %37, 0
  br i1 %cmp381.not.i, label %while.cond.preheader.i.for.cond.preheader.i_crit_edge, label %while.body.lr.ph.i

while.cond.preheader.i.for.cond.preheader.i_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.preheader.i

while.body.lr.ph.i:                               ; preds = %while.cond.preheader.i
  %nr_zones.i = getelementptr inbounds %struct.dmz_metadata, ptr %call7.i.i, i32 0, i32 14
  %zones.i.i = getelementptr inbounds %struct.dmz_metadata, ptr %call7.i.i, i32 0, i32 23
  br label %while.body.i

for.cond.preheader.i:                             ; preds = %next.i.for.cond.preheader.i_crit_edge, %while.cond.preheader.i.for.cond.preheader.i_crit_edge
  %nr_zones114.i = getelementptr inbounds %struct.dmz_metadata, ptr %call7.i.i, i32 0, i32 14
  %38 = ptrtoint ptr %nr_zones114.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %nr_zones114.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp115389.not.i = icmp eq i32 %39, 0
  br i1 %cmp115389.not.i, label %for.cond.preheader.i.if.end53_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.if.end53_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end53

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %zones.i343.i = getelementptr inbounds %struct.dmz_metadata, ptr %call7.i.i, i32 0, i32 23
  %nr_cache.i = getelementptr inbounds %struct.dmz_metadata, ptr %call7.i.i, i32 0, i32 40
  %nr_reserved_seq.i = getelementptr inbounds %struct.dmz_metadata, ptr %call7.i.i, i32 0, i32 21
  br label %for.body.i

while.body.i:                                     ; preds = %next.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %dmap_mblk.0388.i = phi ptr [ null, %while.body.lr.ph.i ], [ %spec.select.i, %next.i.while.body.i_crit_edge ]
  %dmap.0387.i = phi ptr [ inttoptr (i32 -1 to ptr), %while.body.lr.ph.i ], [ %dmap.1.i, %next.i.while.body.i_crit_edge ]
  %chunk.0384.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %inc108.i, %next.i.while.body.i_crit_edge ]
  %e.0383.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %inc109.i, %next.i.while.body.i_crit_edge ]
  %i.0382.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %i.1.i, %next.i.while.body.i_crit_edge ]
  %tobool2.not.i = icmp eq ptr %dmap_mblk.0388.i, null
  br i1 %tobool2.not.i, label %if.then3.i, label %while.body.i.if.end10.i_crit_edge

while.body.i.if.end10.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10.i

if.then3.i:                                       ; preds = %while.body.i
  %add.i = add i32 %i.0382.i, 1
  %conv.i = zext i32 %add.i to i64
  %call4.i = tail call fastcc ptr @dmz_get_mblock(ptr noundef %call7.i.i, i64 noundef %conv.i) #15
  %cmp.i.i = icmp ugt ptr %call4.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %dmz_load_mapping.exit, label %if.end8.i

if.end8.i:                                        ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #17
  %40 = ptrtoint ptr %map_mblk.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %map_mblk.i, align 8
  %arrayidx.i = getelementptr ptr, ptr %41, i32 %i.0382.i
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call4.i, ptr %arrayidx.i, align 4
  %data.i = getelementptr inbounds %struct.dmz_mblock, ptr %call4.i, i32 0, i32 6
  %43 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %data.i, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.end8.i, %while.body.i.if.end10.i_crit_edge
  %i.1.i = phi i32 [ %i.0382.i, %while.body.i.if.end10.i_crit_edge ], [ %add.i, %if.end8.i ]
  %e.1.i = phi i32 [ %e.0383.i, %while.body.i.if.end10.i_crit_edge ], [ 0, %if.end8.i ]
  %dmap.1.i = phi ptr [ %dmap.0387.i, %while.body.i.if.end10.i_crit_edge ], [ %44, %if.end8.i ]
  %dmap_mblk.1.i = phi ptr [ %dmap_mblk.0388.i, %while.body.i.if.end10.i_crit_edge ], [ %call4.i, %if.end8.i ]
  %arrayidx11.i = getelementptr %struct.dmz_map, ptr %dmap.1.i, i32 %e.1.i
  %45 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx11.i, align 4
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %46)
  %cmp13.i = icmp eq i32 %46, -1
  br i1 %cmp13.i, label %if.end10.i.next.i_crit_edge, label %if.end16.i

if.end10.i.next.i_crit_edge:                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %next.i

if.end16.i:                                       ; preds = %if.end10.i
  %48 = ptrtoint ptr %nr_zones.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %nr_zones.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %49)
  %cmp17.not.i = icmp ult i32 %47, %49
  br i1 %cmp17.not.i, label %if.end21.i, label %do.end.i

do.end.i:                                         ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #17
  %label.i = getelementptr inbounds %struct.dmz_metadata, ptr %call7.i.i, i32 0, i32 3
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.134, ptr noundef %label.i, i32 noundef %chunk.0384.i, i32 noundef %47) #19
  br label %err

if.end21.i:                                       ; preds = %if.end16.i
  %call.i.i411 = tail call ptr @xa_load(ptr noundef %zones.i.i, i32 noundef %47) #15
  %tobool23.not.i = icmp eq ptr %call.i.i411, null
  br i1 %tobool23.not.i, label %do.end27.i, label %if.end32.i

do.end27.i:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #17
  %label29.i = getelementptr inbounds %struct.dmz_metadata, ptr %call7.i.i, i32 0, i32 3
  %call31.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137, ptr noundef %label29.i, i32 noundef %chunk.0384.i, i32 noundef %47) #19
  br label %err

if.end32.i:                                       ; preds = %if.end21.i
  %flags.i = getelementptr inbounds %struct.dm_zone, ptr %call.i.i411, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 6, ptr noundef %flags.i) #15
  %chunk33.i = getelementptr inbounds %struct.dm_zone, ptr %call.i.i411, i32 0, i32 7
  %50 = ptrtoint ptr %chunk33.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %chunk.0384.i, ptr %chunk33.i, align 4
  tail call fastcc void @dmz_get_zone_weight(ptr noundef %call7.i.i, ptr noundef nonnull %call.i.i411) #15
  %51 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool36.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool36.not.i, label %if.else.i, label %if.then37.i

if.then37.i:                                      ; preds = %if.end32.i
  %53 = ptrtoint ptr %prev.i409 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %prev.i409, align 8
  %call.i.i319.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i.i411, ptr noundef %54, ptr noundef %map_cache_list) #15
  br i1 %call.i.i319.i, label %if.then37.i.if.end47.sink.split.i_crit_edge, label %if.then37.i.if.end47.i_crit_edge

if.then37.i.if.end47.i_crit_edge:                 ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end47.i

if.then37.i.if.end47.sink.split.i_crit_edge:      ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end47.sink.split.i

if.else.i:                                        ; preds = %if.end32.i
  %55 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %flags.i, align 4
  %57 = and i32 %56, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool40.not.i = icmp eq i32 %57, 0
  %dev45.i = getelementptr inbounds %struct.dm_zone, ptr %call.i.i411, i32 0, i32 1
  %58 = ptrtoint ptr %dev45.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev45.i, align 4
  br i1 %tobool40.not.i, label %if.else43.i, label %if.then41.i

if.then41.i:                                      ; preds = %if.else.i
  %map_rnd_list.i = getelementptr inbounds %struct.dmz_dev, ptr %59, i32 0, i32 14
  %prev.i321.i = getelementptr inbounds %struct.dmz_dev, ptr %59, i32 0, i32 14, i32 1
  %60 = ptrtoint ptr %prev.i321.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %prev.i321.i, align 4
  %call.i.i322.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i.i411, ptr noundef %61, ptr noundef %map_rnd_list.i) #15
  br i1 %call.i.i322.i, label %if.then41.i.if.end47.sink.split.i_crit_edge, label %if.then41.i.if.end47.i_crit_edge

if.then41.i.if.end47.i_crit_edge:                 ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end47.i

if.then41.i.if.end47.sink.split.i_crit_edge:      ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end47.sink.split.i

if.else43.i:                                      ; preds = %if.else.i
  %map_seq_list.i = getelementptr inbounds %struct.dmz_dev, ptr %59, i32 0, i32 18
  %prev.i326.i = getelementptr inbounds %struct.dmz_dev, ptr %59, i32 0, i32 18, i32 1
  %62 = ptrtoint ptr %prev.i326.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %prev.i326.i, align 4
  %call.i.i327.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i.i411, ptr noundef %63, ptr noundef %map_seq_list.i) #15
  br i1 %call.i.i327.i, label %if.else43.i.if.end47.sink.split.i_crit_edge, label %if.else43.i.if.end47.i_crit_edge

if.else43.i.if.end47.i_crit_edge:                 ; preds = %if.else43.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end47.i

if.else43.i.if.end47.sink.split.i_crit_edge:      ; preds = %if.else43.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end47.sink.split.i

if.end47.sink.split.i:                            ; preds = %if.else43.i.if.end47.sink.split.i_crit_edge, %if.then41.i.if.end47.sink.split.i_crit_edge, %if.then37.i.if.end47.sink.split.i_crit_edge
  %prev.i326.sink.i = phi ptr [ %prev.i409, %if.then37.i.if.end47.sink.split.i_crit_edge ], [ %prev.i321.i, %if.then41.i.if.end47.sink.split.i_crit_edge ], [ %prev.i326.i, %if.else43.i.if.end47.sink.split.i_crit_edge ]
  %map_seq_list.sink.i = phi ptr [ %map_cache_list, %if.then37.i.if.end47.sink.split.i_crit_edge ], [ %map_rnd_list.i, %if.then41.i.if.end47.sink.split.i_crit_edge ], [ %map_seq_list.i, %if.else43.i.if.end47.sink.split.i_crit_edge ]
  %.sink424.i = phi ptr [ %54, %if.then37.i.if.end47.sink.split.i_crit_edge ], [ %61, %if.then41.i.if.end47.sink.split.i_crit_edge ], [ %63, %if.else43.i.if.end47.sink.split.i_crit_edge ]
  %64 = ptrtoint ptr %prev.i326.sink.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call.i.i411, ptr %prev.i326.sink.i, align 4
  %65 = ptrtoint ptr %call.i.i411 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %map_seq_list.sink.i, ptr %call.i.i411, align 4
  %prev3.i.i328.i = getelementptr inbounds %struct.list_head, ptr %call.i.i411, i32 0, i32 1
  %66 = ptrtoint ptr %prev3.i.i328.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %.sink424.i, ptr %prev3.i.i328.i, align 4
  %67 = ptrtoint ptr %.sink424.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %call.i.i411, ptr %.sink424.i, align 4
  br label %if.end47.i

if.end47.i:                                       ; preds = %if.end47.sink.split.i, %if.else43.i.if.end47.i_crit_edge, %if.then41.i.if.end47.i_crit_edge, %if.then37.i.if.end47.i_crit_edge
  %bzone_id49.i = getelementptr %struct.dmz_map, ptr %dmap.1.i, i32 %e.1.i, i32 1
  %68 = ptrtoint ptr %bzone_id49.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %bzone_id49.i, align 4
  %70 = tail call i32 @llvm.bswap.i32(i32 %69) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %69)
  %cmp50.i = icmp eq i32 %69, -1
  br i1 %cmp50.i, label %if.end47.i.next.i_crit_edge, label %if.end53.i

if.end47.i.next.i_crit_edge:                      ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %next.i

if.end53.i:                                       ; preds = %if.end47.i
  %71 = ptrtoint ptr %nr_zones.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %nr_zones.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %72)
  %cmp55.not.i = icmp ult i32 %70, %72
  br i1 %cmp55.not.i, label %if.end65.i, label %do.end60.i

do.end60.i:                                       ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #17
  %label62.i = getelementptr inbounds %struct.dmz_metadata, ptr %call7.i.i, i32 0, i32 3
  %call64.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.140, ptr noundef %label62.i, i32 noundef %chunk.0384.i, i32 noundef %70) #19
  br label %err

if.end65.i:                                       ; preds = %if.end53.i
  %call.i332.i = tail call ptr @xa_load(ptr noundef %zones.i.i, i32 noundef %70) #15
  %tobool67.not.i = icmp eq ptr %call.i332.i, null
  br i1 %tobool67.not.i, label %do.end71.i, label %if.end76.i

do.end71.i:                                       ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #17
  %label73.i = getelementptr inbounds %struct.dmz_metadata, ptr %call7.i.i, i32 0, i32 3
  %call75.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.143, ptr noundef %label73.i, i32 noundef %chunk.0384.i, i32 noundef %70) #19
  br label %err

if.end76.i:                                       ; preds = %if.end65.i
  %flags77.i = getelementptr inbounds %struct.dm_zone, ptr %call.i332.i, i32 0, i32 2
  %73 = ptrtoint ptr %flags77.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %flags77.i, align 4
  %75 = and i32 %74, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool79.not.i = icmp eq i32 %75, 0
  br i1 %tobool79.not.i, label %land.lhs.true.i, label %if.end76.i.if.end91.i_crit_edge

if.end76.i.if.end91.i_crit_edge:                  ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end91.i

land.lhs.true.i:                                  ; preds = %if.end76.i
  %76 = ptrtoint ptr %flags77.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %flags77.i, align 4
  %and1.i301.i = and i32 %77, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i301.i)
  %tobool82.not.i = icmp eq i32 %and1.i301.i, 0
  br i1 %tobool82.not.i, label %do.end86.i, label %land.lhs.true.i.if.end91.i_crit_edge

land.lhs.true.i.if.end91.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end91.i

do.end86.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  %label88.i = getelementptr inbounds %struct.dmz_metadata, ptr %call7.i.i, i32 0, i32 3
  %call90.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.146, ptr noundef %label88.i, i32 noundef %chunk.0384.i, i32 noundef %70) #19
  br label %err

if.end91.i:                                       ; preds = %land.lhs.true.i.if.end91.i_crit_edge, %if.end76.i.if.end91.i_crit_edge
  tail call void @_set_bit(i32 noundef 6, ptr noundef %flags77.i) #15
  tail call void @_set_bit(i32 noundef 7, ptr noundef %flags77.i) #15
  %chunk94.i = getelementptr inbounds %struct.dm_zone, ptr %call.i332.i, i32 0, i32 7
  %78 = ptrtoint ptr %chunk94.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %chunk.0384.i, ptr %chunk94.i, align 4
  %bzone95.i = getelementptr inbounds %struct.dm_zone, ptr %call.i332.i, i32 0, i32 8
  %79 = ptrtoint ptr %bzone95.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %call.i.i411, ptr %bzone95.i, align 4
  %bzone96.i = getelementptr inbounds %struct.dm_zone, ptr %call.i.i411, i32 0, i32 8
  %80 = ptrtoint ptr %bzone96.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %call.i332.i, ptr %bzone96.i, align 4
  tail call fastcc void @dmz_get_zone_weight(ptr noundef %call7.i.i, ptr noundef nonnull %call.i332.i) #15
  %81 = ptrtoint ptr %flags77.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %flags77.i, align 4
  %and1.i302.i = and i32 %82, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i302.i)
  %tobool99.not.i = icmp eq i32 %and1.i302.i, 0
  br i1 %tobool99.not.i, label %if.else103.i, label %if.then100.i

if.then100.i:                                     ; preds = %if.end91.i
  %83 = ptrtoint ptr %prev.i409 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %prev.i409, align 8
  %call.i.i334.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i332.i, ptr noundef %84, ptr noundef %map_cache_list) #15
  br i1 %call.i.i334.i, label %if.then100.i.next.sink.split.i_crit_edge, label %if.then100.i.next.i_crit_edge

if.then100.i.next.i_crit_edge:                    ; preds = %if.then100.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %next.i

if.then100.i.next.sink.split.i_crit_edge:         ; preds = %if.then100.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %next.sink.split.i

if.else103.i:                                     ; preds = %if.end91.i
  %dev105.i = getelementptr inbounds %struct.dm_zone, ptr %call.i332.i, i32 0, i32 1
  %85 = ptrtoint ptr %dev105.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev105.i, align 4
  %map_rnd_list106.i = getelementptr inbounds %struct.dmz_dev, ptr %86, i32 0, i32 14
  %prev.i338.i = getelementptr inbounds %struct.dmz_dev, ptr %86, i32 0, i32 14, i32 1
  %87 = ptrtoint ptr %prev.i338.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %prev.i338.i, align 4
  %call.i.i339.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i332.i, ptr noundef %88, ptr noundef %map_rnd_list106.i) #15
  br i1 %call.i.i339.i, label %if.else103.i.next.sink.split.i_crit_edge, label %if.else103.i.next.i_crit_edge

if.else103.i.next.i_crit_edge:                    ; preds = %if.else103.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %next.i

if.else103.i.next.sink.split.i_crit_edge:         ; preds = %if.else103.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %next.sink.split.i

next.sink.split.i:                                ; preds = %if.else103.i.next.sink.split.i_crit_edge, %if.then100.i.next.sink.split.i_crit_edge
  %prev.i338.sink.i = phi ptr [ %prev.i409, %if.then100.i.next.sink.split.i_crit_edge ], [ %prev.i338.i, %if.else103.i.next.sink.split.i_crit_edge ]
  %map_rnd_list106.sink.i = phi ptr [ %map_cache_list, %if.then100.i.next.sink.split.i_crit_edge ], [ %map_rnd_list106.i, %if.else103.i.next.sink.split.i_crit_edge ]
  %.sink426.i = phi ptr [ %84, %if.then100.i.next.sink.split.i_crit_edge ], [ %88, %if.else103.i.next.sink.split.i_crit_edge ]
  %89 = ptrtoint ptr %prev.i338.sink.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %call.i332.i, ptr %prev.i338.sink.i, align 4
  %90 = ptrtoint ptr %call.i332.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %map_rnd_list106.sink.i, ptr %call.i332.i, align 4
  %prev3.i.i340.i = getelementptr inbounds %struct.list_head, ptr %call.i332.i, i32 0, i32 1
  %91 = ptrtoint ptr %prev3.i.i340.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %.sink426.i, ptr %prev3.i.i340.i, align 4
  %92 = ptrtoint ptr %.sink426.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store volatile ptr %call.i332.i, ptr %.sink426.i, align 4
  br label %next.i

next.i:                                           ; preds = %next.sink.split.i, %if.else103.i.next.i_crit_edge, %if.then100.i.next.i_crit_edge, %if.end47.i.next.i_crit_edge, %if.end10.i.next.i_crit_edge
  %inc108.i = add nuw i32 %chunk.0384.i, 1
  %inc109.i = add i32 %e.1.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %inc109.i)
  %cmp110.i = icmp ugt i32 %inc109.i, 511
  %spec.select.i = select i1 %cmp110.i, ptr null, ptr %dmap_mblk.1.i
  %93 = ptrtoint ptr %nr_chunks.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %nr_chunks.i, align 8
  %cmp.i = icmp ult i32 %inc108.i, %94
  br i1 %cmp.i, label %next.i.while.body.i_crit_edge, label %next.i.for.cond.preheader.i_crit_edge

next.i.for.cond.preheader.i_crit_edge:            ; preds = %next.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.preheader.i

next.i.while.body.i_crit_edge:                    ; preds = %next.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.2390.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc185.i, %for.inc.i.for.body.i_crit_edge ]
  %call.i344.i = tail call ptr @xa_load(ptr noundef %zones.i343.i, i32 noundef %i.2390.i) #15
  %tobool118.not.i = icmp eq ptr %call.i344.i, null
  br i1 %tobool118.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end120.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.end120.i:                                      ; preds = %for.body.i
  %flags121.i = getelementptr inbounds %struct.dm_zone, ptr %call.i344.i, i32 0, i32 2
  %95 = ptrtoint ptr %flags121.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load volatile i32, ptr %flags121.i, align 4
  %97 = and i32 %96, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool123.not.i = icmp eq i32 %97, 0
  br i1 %tobool123.not.i, label %if.end125.i, label %if.end120.i.for.inc.i_crit_edge

if.end120.i.for.inc.i_crit_edge:                  ; preds = %if.end120.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.end125.i:                                      ; preds = %if.end120.i
  %98 = ptrtoint ptr %flags121.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load volatile i32, ptr %flags121.i, align 4
  %100 = and i32 %99, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool128.not.i = icmp eq i32 %100, 0
  br i1 %tobool128.not.i, label %if.end130.i, label %if.end125.i.for.inc.i_crit_edge

if.end125.i.for.inc.i_crit_edge:                  ; preds = %if.end125.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.end130.i:                                      ; preds = %if.end125.i
  %101 = ptrtoint ptr %flags121.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load volatile i32, ptr %flags121.i, align 4
  %and1.i307.i = and i32 %102, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i307.i)
  %tobool133.not.i = icmp eq i32 %and1.i307.i, 0
  br i1 %tobool133.not.i, label %if.else136.i, label %if.then134.i

if.then134.i:                                     ; preds = %if.end130.i
  call void @__sanitizer_cov_trace_pc() #17
  %103 = ptrtoint ptr %nr_cache.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %nr_cache.i, align 4
  %inc135.i = add i32 %104, 1
  store i32 %inc135.i, ptr %nr_cache.i, align 4
  br label %if.end147.i

if.else136.i:                                     ; preds = %if.end130.i
  %105 = ptrtoint ptr %flags121.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load volatile i32, ptr %flags121.i, align 4
  %107 = and i32 %106, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %tobool139.not.i = icmp eq i32 %107, 0
  %dev144.i = getelementptr inbounds %struct.dm_zone, ptr %call.i344.i, i32 0, i32 1
  %108 = ptrtoint ptr %dev144.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dev144.i, align 4
  br i1 %tobool139.not.i, label %if.else143.i, label %if.then140.i

if.then140.i:                                     ; preds = %if.else136.i
  call void @__sanitizer_cov_trace_pc() #17
  %nr_rnd.i = getelementptr inbounds %struct.dmz_dev, ptr %109, i32 0, i32 11
  %110 = ptrtoint ptr %nr_rnd.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %nr_rnd.i, align 8
  %inc142.i = add i32 %111, 1
  store i32 %inc142.i, ptr %nr_rnd.i, align 8
  br label %if.end147.i

if.else143.i:                                     ; preds = %if.else136.i
  call void @__sanitizer_cov_trace_pc() #17
  %nr_seq.i = getelementptr inbounds %struct.dmz_dev, ptr %109, i32 0, i32 15
  %112 = ptrtoint ptr %nr_seq.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %nr_seq.i, align 8
  %inc145.i = add i32 %113, 1
  store i32 %inc145.i, ptr %nr_seq.i, align 8
  br label %if.end147.i

if.end147.i:                                      ; preds = %if.else143.i, %if.then140.i, %if.then134.i
  %114 = ptrtoint ptr %flags121.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load volatile i32, ptr %flags121.i, align 4
  %116 = and i32 %115, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %tobool150.not.i = icmp eq i32 %116, 0
  br i1 %tobool150.not.i, label %if.end152.i, label %if.end147.i.for.inc.i_crit_edge

if.end147.i.for.inc.i_crit_edge:                  ; preds = %if.end147.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.end152.i:                                      ; preds = %if.end147.i
  tail call void @_set_bit(i32 noundef 6, ptr noundef %flags121.i) #15
  %chunk154.i = getelementptr inbounds %struct.dm_zone, ptr %call.i344.i, i32 0, i32 7
  %117 = ptrtoint ptr %chunk154.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 -1, ptr %chunk154.i, align 4
  %118 = ptrtoint ptr %flags121.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load volatile i32, ptr %flags121.i, align 4
  %and1.i312.i = and i32 %119, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i312.i)
  %tobool157.not.i = icmp eq i32 %and1.i312.i, 0
  br i1 %tobool157.not.i, label %if.else160.i, label %if.then158.i

if.then158.i:                                     ; preds = %if.end152.i
  %120 = ptrtoint ptr %prev.i408 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %prev.i408, align 8
  %call.i.i346.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i344.i, ptr noundef %121, ptr noundef %unmap_cache_list) #15
  br i1 %call.i.i346.i, label %if.end.i.i348.i, label %if.then158.i.list_add_tail.exit349.i_crit_edge

if.then158.i.list_add_tail.exit349.i_crit_edge:   ; preds = %if.then158.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add_tail.exit349.i

if.end.i.i348.i:                                  ; preds = %if.then158.i
  call void @__sanitizer_cov_trace_pc() #17
  %122 = ptrtoint ptr %prev.i408 to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %call.i344.i, ptr %prev.i408, align 8
  %123 = ptrtoint ptr %call.i344.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %unmap_cache_list, ptr %call.i344.i, align 4
  %prev3.i.i347.i = getelementptr inbounds %struct.list_head, ptr %call.i344.i, i32 0, i32 1
  %124 = ptrtoint ptr %prev3.i.i347.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %121, ptr %prev3.i.i347.i, align 4
  %125 = ptrtoint ptr %121 to i32
  call void @__asan_store4_noabort(i32 %125)
  store volatile ptr %call.i344.i, ptr %121, align 4
  br label %list_add_tail.exit349.i

list_add_tail.exit349.i:                          ; preds = %if.end.i.i348.i, %if.then158.i.list_add_tail.exit349.i_crit_edge
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %unmap_nr_cache, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %unmap_nr_cache, i32 1, i32 3, i32 1) #15
  %126 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %unmap_nr_cache, ptr %unmap_nr_cache, i32 1, ptr elementtype(i32) %unmap_nr_cache) #15, !srcloc !317
  br label %for.inc.i

if.else160.i:                                     ; preds = %if.end152.i
  %127 = ptrtoint ptr %flags121.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load volatile i32, ptr %flags121.i, align 4
  %129 = and i32 %128, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %tobool163.not.i = icmp eq i32 %129, 0
  br i1 %tobool163.not.i, label %if.else168.i, label %if.then164.i

if.then164.i:                                     ; preds = %if.else160.i
  %dev166.i = getelementptr inbounds %struct.dm_zone, ptr %call.i344.i, i32 0, i32 1
  %130 = ptrtoint ptr %dev166.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %dev166.i, align 4
  %unmap_rnd_list.i = getelementptr inbounds %struct.dmz_dev, ptr %131, i32 0, i32 13
  %prev.i350.i = getelementptr inbounds %struct.dmz_dev, ptr %131, i32 0, i32 13, i32 1
  %132 = ptrtoint ptr %prev.i350.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %prev.i350.i, align 4
  %call.i.i351.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i344.i, ptr noundef %133, ptr noundef %unmap_rnd_list.i) #15
  br i1 %call.i.i351.i, label %if.end.i.i353.i, label %if.then164.i.list_add_tail.exit354.i_crit_edge

if.then164.i.list_add_tail.exit354.i_crit_edge:   ; preds = %if.then164.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add_tail.exit354.i

if.end.i.i353.i:                                  ; preds = %if.then164.i
  call void @__sanitizer_cov_trace_pc() #17
  %134 = ptrtoint ptr %prev.i350.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %call.i344.i, ptr %prev.i350.i, align 4
  %135 = ptrtoint ptr %call.i344.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %unmap_rnd_list.i, ptr %call.i344.i, align 4
  %prev3.i.i352.i = getelementptr inbounds %struct.list_head, ptr %call.i344.i, i32 0, i32 1
  %136 = ptrtoint ptr %prev3.i.i352.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %133, ptr %prev3.i.i352.i, align 4
  %137 = ptrtoint ptr %133 to i32
  call void @__asan_store4_noabort(i32 %137)
  store volatile ptr %call.i344.i, ptr %133, align 4
  br label %list_add_tail.exit354.i

list_add_tail.exit354.i:                          ; preds = %if.end.i.i353.i, %if.then164.i.list_add_tail.exit354.i_crit_edge
  %138 = ptrtoint ptr %dev166.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %dev166.i, align 4
  %unmap_nr_rnd.i = getelementptr inbounds %struct.dmz_dev, ptr %139, i32 0, i32 12
  %call.i.i315.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %unmap_nr_rnd.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %unmap_nr_rnd.i, i32 1, i32 3, i32 1) #15
  %140 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %unmap_nr_rnd.i, ptr %unmap_nr_rnd.i, i32 1, ptr elementtype(i32) %unmap_nr_rnd.i) #15, !srcloc !317
  br label %for.inc.i

if.else168.i:                                     ; preds = %if.else160.i
  %call.i.i316.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nr_reserved_seq_zones, i32 noundef 4) #15
  %141 = ptrtoint ptr %nr_reserved_seq_zones to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load volatile i32, ptr %nr_reserved_seq_zones, align 4
  %143 = ptrtoint ptr %nr_reserved_seq.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %nr_reserved_seq.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %142, i32 %144)
  %cmp170.i = icmp ult i32 %142, %144
  br i1 %cmp170.i, label %if.then172.i, label %if.else178.i

if.then172.i:                                     ; preds = %if.else168.i
  %145 = ptrtoint ptr %prev.i410 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %prev.i410, align 4
  %call.i.i356.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i344.i, ptr noundef %146, ptr noundef %reserved_seq_zones_list) #15
  br i1 %call.i.i356.i, label %if.end.i.i358.i, label %if.then172.i.list_add_tail.exit359.i_crit_edge

if.then172.i.list_add_tail.exit359.i_crit_edge:   ; preds = %if.then172.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add_tail.exit359.i

if.end.i.i358.i:                                  ; preds = %if.then172.i
  call void @__sanitizer_cov_trace_pc() #17
  %147 = ptrtoint ptr %prev.i410 to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %call.i344.i, ptr %prev.i410, align 4
  %148 = ptrtoint ptr %call.i344.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %reserved_seq_zones_list, ptr %call.i344.i, align 4
  %prev3.i.i357.i = getelementptr inbounds %struct.list_head, ptr %call.i344.i, i32 0, i32 1
  %149 = ptrtoint ptr %prev3.i.i357.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %146, ptr %prev3.i.i357.i, align 4
  %150 = ptrtoint ptr %146 to i32
  call void @__asan_store4_noabort(i32 %150)
  store volatile ptr %call.i344.i, ptr %146, align 4
  br label %list_add_tail.exit359.i

list_add_tail.exit359.i:                          ; preds = %if.end.i.i358.i, %if.then172.i.list_add_tail.exit359.i_crit_edge
  tail call void @_set_bit(i32 noundef 8, ptr noundef %flags121.i) #15
  %call.i.i317.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nr_reserved_seq_zones, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %nr_reserved_seq_zones, i32 1, i32 3, i32 1) #15
  %151 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nr_reserved_seq_zones, ptr %nr_reserved_seq_zones, i32 1, ptr elementtype(i32) %nr_reserved_seq_zones) #15, !srcloc !317
  %dev176.i = getelementptr inbounds %struct.dm_zone, ptr %call.i344.i, i32 0, i32 1
  %152 = ptrtoint ptr %dev176.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %dev176.i, align 4
  %nr_seq177.i = getelementptr inbounds %struct.dmz_dev, ptr %153, i32 0, i32 15
  %154 = ptrtoint ptr %nr_seq177.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %nr_seq177.i, align 8
  %dec.i = add i32 %155, -1
  store i32 %dec.i, ptr %nr_seq177.i, align 8
  br label %for.inc.i

if.else178.i:                                     ; preds = %if.else168.i
  %dev180.i = getelementptr inbounds %struct.dm_zone, ptr %call.i344.i, i32 0, i32 1
  %156 = ptrtoint ptr %dev180.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %dev180.i, align 4
  %unmap_seq_list.i = getelementptr inbounds %struct.dmz_dev, ptr %157, i32 0, i32 17
  %prev.i360.i = getelementptr inbounds %struct.dmz_dev, ptr %157, i32 0, i32 17, i32 1
  %158 = ptrtoint ptr %prev.i360.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %prev.i360.i, align 4
  %call.i.i361.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i344.i, ptr noundef %159, ptr noundef %unmap_seq_list.i) #15
  br i1 %call.i.i361.i, label %if.end.i.i363.i, label %if.else178.i.list_add_tail.exit364.i_crit_edge

if.else178.i.list_add_tail.exit364.i_crit_edge:   ; preds = %if.else178.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add_tail.exit364.i

if.end.i.i363.i:                                  ; preds = %if.else178.i
  call void @__sanitizer_cov_trace_pc() #17
  %160 = ptrtoint ptr %prev.i360.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr %call.i344.i, ptr %prev.i360.i, align 4
  %161 = ptrtoint ptr %call.i344.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr %unmap_seq_list.i, ptr %call.i344.i, align 4
  %prev3.i.i362.i = getelementptr inbounds %struct.list_head, ptr %call.i344.i, i32 0, i32 1
  %162 = ptrtoint ptr %prev3.i.i362.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %159, ptr %prev3.i.i362.i, align 4
  %163 = ptrtoint ptr %159 to i32
  call void @__asan_store4_noabort(i32 %163)
  store volatile ptr %call.i344.i, ptr %159, align 4
  br label %list_add_tail.exit364.i

list_add_tail.exit364.i:                          ; preds = %if.end.i.i363.i, %if.else178.i.list_add_tail.exit364.i_crit_edge
  %164 = ptrtoint ptr %dev180.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %dev180.i, align 4
  %unmap_nr_seq.i = getelementptr inbounds %struct.dmz_dev, ptr %165, i32 0, i32 16
  %call.i.i318.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %unmap_nr_seq.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %unmap_nr_seq.i, i32 1, i32 3, i32 1) #15
  %166 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %unmap_nr_seq.i, ptr %unmap_nr_seq.i, i32 1, ptr elementtype(i32) %unmap_nr_seq.i) #15, !srcloc !317
  br label %for.inc.i

for.inc.i:                                        ; preds = %list_add_tail.exit364.i, %list_add_tail.exit359.i, %list_add_tail.exit354.i, %list_add_tail.exit349.i, %if.end147.i.for.inc.i_crit_edge, %if.end125.i.for.inc.i_crit_edge, %if.end120.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc185.i = add nuw i32 %i.2390.i, 1
  %167 = ptrtoint ptr %nr_zones114.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %nr_zones114.i, align 8
  %cmp115.i = icmp ult i32 %inc185.i, %168
  br i1 %cmp115.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end53_crit_edge

for.inc.i.if.end53_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end53

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

dmz_load_mapping.exit:                            ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #17
  %169 = ptrtoint ptr %call4.i to i32
  br label %err

if.end53:                                         ; preds = %for.inc.i.if.end53_crit_edge, %for.cond.preheader.i.if.end53_crit_edge
  %170 = ptrtoint ptr %nr_map_blocks.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %nr_map_blocks.i, align 4
  %add54 = add i32 %171, 2
  %zone_nr_bitmap_blocks = getelementptr inbounds %struct.dmz_metadata, ptr %call7.i.i, i32 0, i32 6
  %172 = ptrtoint ptr %zone_nr_bitmap_blocks to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %zone_nr_bitmap_blocks, align 8
  %mul = shl i32 %173, 4
  %add55 = add i32 %add54, %mul
  %min_nr_mblks = getelementptr inbounds %struct.dmz_metadata, ptr %call7.i.i, i32 0, i32 28
  %174 = ptrtoint ptr %min_nr_mblks to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %add55, ptr %min_nr_mblks, align 8
  %add57 = add i32 %add55, 512
  %max_nr_mblks = getelementptr inbounds %struct.dmz_metadata, ptr %call7.i.i, i32 0, i32 29
  %175 = ptrtoint ptr %max_nr_mblks to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %add57, ptr %max_nr_mblks, align 4
  %mblk_shrinker = getelementptr inbounds %struct.dmz_metadata, ptr %call7.i.i, i32 0, i32 37
  %176 = ptrtoint ptr %mblk_shrinker to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr @dmz_mblock_shrinker_count, ptr %mblk_shrinker, align 8
  %scan_objects = getelementptr inbounds %struct.dmz_metadata, ptr %call7.i.i, i32 0, i32 37, i32 1
  %177 = ptrtoint ptr %scan_objects to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr @dmz_mblock_shrinker_scan, ptr %scan_objects, align 4
  %seeks = getelementptr inbounds %struct.dmz_metadata, ptr %call7.i.i, i32 0, i32 37, i32 3
  %178 = ptrtoint ptr %seeks to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 2, ptr %seeks, align 4
  %call61 = tail call i32 @register_shrinker(ptr noundef %mblk_shrinker) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  %label76 = getelementptr inbounds %struct.dmz_metadata, ptr %call7.i.i, i32 0, i32 3
  br i1 %tobool62.not, label %do.end74, label %do.end66

do.end66:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #17
  %call70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %label76) #19
  br label %err

do.end74:                                         ; preds = %if.end53
  %sb_version = getelementptr inbounds %struct.dmz_metadata, ptr %call7.i.i, i32 0, i32 26
  %179 = ptrtoint ptr %sb_version to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %sb_version, align 4
  %call78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %label76, i32 noundef %180) #19
  %181 = ptrtoint ptr %nr_devs to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %nr_devs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %182)
  %cmp81463.not = icmp eq i32 %182, 0
  br i1 %cmp81463.not, label %do.end74.do.end88_crit_edge, label %for.body82.lr.ph

do.end74.do.end88_crit_edge:                      ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end88

for.body82.lr.ph:                                 ; preds = %do.end74
  %zone_nr_sectors47.i = getelementptr inbounds %struct.dmz_metadata, ptr %call7.i.i, i32 0, i32 10
  %zone_nr_sectors_shift.i = getelementptr inbounds %struct.dmz_metadata, ptr %call7.i.i, i32 0, i32 11
  br label %for.body82

for.body82:                                       ; preds = %dmz_print_dev.exit.for.body82_crit_edge, %for.body82.lr.ph
  %i.1464 = phi i32 [ 0, %for.body82.lr.ph ], [ %inc84, %dmz_print_dev.exit.for.body82_crit_edge ]
  %183 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %call7.i.i, align 8
  %arrayidx.i413 = getelementptr %struct.dmz_dev, ptr %184, i32 %i.1464
  %185 = ptrtoint ptr %arrayidx.i413 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %arrayidx.i413, align 8
  %bd_queue.i.i.i = getelementptr inbounds %struct.block_device, ptr %186, i32 0, i32 18
  %187 = ptrtoint ptr %bd_queue.i.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %bd_queue.i.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %188, null
  br i1 %tobool.not.i.i, label %for.body82.do.end.i415_crit_edge, label %bdev_zoned_model.exit.i

for.body82.do.end.i415_crit_edge:                 ; preds = %for.body82
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i415

bdev_zoned_model.exit.i:                          ; preds = %for.body82
  %zoned.i.i.i = getelementptr inbounds %struct.request_queue, ptr %188, i32 0, i32 37, i32 27
  %189 = ptrtoint ptr %zoned.i.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %zoned.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %190)
  %cmp.i414 = icmp eq i32 %190, 0
  br i1 %cmp.i414, label %bdev_zoned_model.exit.i.do.end.i415_crit_edge, label %bdev_zoned_model.exit72.i

bdev_zoned_model.exit.i.do.end.i415_crit_edge:    ; preds = %bdev_zoned_model.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i415

do.end.i415:                                      ; preds = %bdev_zoned_model.exit.i.do.end.i415_crit_edge, %for.body82.do.end.i415_crit_edge
  %name.i = getelementptr %struct.dmz_dev, ptr %184, i32 %i.1464, i32 3
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.148, ptr noundef %name.i) #19
  br label %if.end.i

bdev_zoned_model.exit72.i:                        ; preds = %bdev_zoned_model.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %name7.i = getelementptr %struct.dmz_dev, ptr %184, i32 %i.1464, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %190)
  %cmp11.i = icmp eq i32 %190, 1
  %cond.i = select i1 %cmp11.i, ptr @.str.153, ptr @.str.154
  %call12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.151, ptr noundef %name7.i, ptr noundef nonnull %cond.i) #19
  br label %if.end.i

if.end.i:                                         ; preds = %bdev_zoned_model.exit72.i, %do.end.i415
  %191 = ptrtoint ptr %sb_version to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %sb_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %192)
  %cmp13.i416 = icmp ugt i32 %192, 1
  br i1 %cmp13.i416, label %if.then14.i, label %do.end34.i

if.then14.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %zone_offset.i = getelementptr %struct.dmz_dev, ptr %184, i32 %i.1464, i32 8
  %193 = ptrtoint ptr %zone_offset.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %zone_offset.i, align 8
  %195 = ptrtoint ptr %zone_nr_sectors_shift.i to i32
  call void @__asan_load8_noabort(i32 %195)
  %196 = load i64, ptr %zone_nr_sectors_shift.i, align 8
  %sh_prom.i = trunc i64 %196 to i32
  %shl.i = shl i32 %194, %sh_prom.i
  %conv.i417 = zext i32 %shl.i to i64
  %name19.i = getelementptr %struct.dmz_dev, ptr %184, i32 %i.1464, i32 3
  %capacity.i = getelementptr %struct.dmz_dev, ptr %184, i32 %i.1464, i32 5
  %197 = ptrtoint ptr %capacity.i to i32
  call void @__asan_load8_noabort(i32 %197)
  %198 = load i64, ptr %capacity.i, align 8
  %call21.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.156, ptr noundef %name19.i, i64 noundef %198, i64 noundef %conv.i417) #19
  %nr_zones.i418 = getelementptr %struct.dmz_dev, ptr %184, i32 %i.1464, i32 7
  %199 = ptrtoint ptr %nr_zones.i418 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %nr_zones.i418, align 4
  %201 = ptrtoint ptr %zone_nr_sectors47.i to i32
  call void @__asan_load8_noabort(i32 %201)
  %202 = load i64, ptr %zone_nr_sectors47.i, align 8
  %203 = ptrtoint ptr %zone_offset.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %zone_offset.i, align 8
  %conv29.i = zext i32 %204 to i64
  %call30.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef %name19.i, i32 noundef %200, i64 noundef %202, i64 noundef %conv29.i) #19
  br label %dmz_print_dev.exit

do.end34.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %name36.i = getelementptr %struct.dmz_dev, ptr %184, i32 %i.1464, i32 3
  %capacity38.i = getelementptr %struct.dmz_dev, ptr %184, i32 %i.1464, i32 5
  %205 = ptrtoint ptr %capacity38.i to i32
  call void @__asan_load8_noabort(i32 %205)
  %206 = load i64, ptr %capacity38.i, align 8
  %call39.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.162, ptr noundef %name36.i, i64 noundef %206) #19
  %nr_zones46.i = getelementptr %struct.dmz_dev, ptr %184, i32 %i.1464, i32 7
  %207 = ptrtoint ptr %nr_zones46.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %nr_zones46.i, align 4
  %209 = ptrtoint ptr %zone_nr_sectors47.i to i32
  call void @__asan_load8_noabort(i32 %209)
  %210 = load i64, ptr %zone_nr_sectors47.i, align 8
  %call48.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %name36.i, i32 noundef %208, i64 noundef %210) #19
  br label %dmz_print_dev.exit

dmz_print_dev.exit:                               ; preds = %do.end34.i, %if.then14.i
  %inc84 = add nuw i32 %i.1464, 1
  %211 = ptrtoint ptr %nr_devs to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %nr_devs, align 4
  %cmp81 = icmp ult i32 %inc84, %212
  br i1 %cmp81, label %dmz_print_dev.exit.for.body82_crit_edge, label %dmz_print_dev.exit.do.end88_crit_edge

dmz_print_dev.exit.do.end88_crit_edge:            ; preds = %dmz_print_dev.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end88

dmz_print_dev.exit.for.body82_crit_edge:          ; preds = %dmz_print_dev.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body82

do.end88:                                         ; preds = %dmz_print_dev.exit.do.end88_crit_edge, %do.end74.do.end88_crit_edge
  %213 = ptrtoint ptr %nr_zones114.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %nr_zones114.i, align 8
  %zone_nr_sectors = getelementptr inbounds %struct.dmz_metadata, ptr %call7.i.i, i32 0, i32 10
  %215 = ptrtoint ptr %zone_nr_sectors to i32
  call void @__asan_load8_noabort(i32 %215)
  %216 = load i64, ptr %zone_nr_sectors, align 8
  %call92 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %label76, i32 noundef %214, i64 noundef %216) #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dmz_ctr_metadata.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dmz_ctr_metadata, %if.then99)) #15
          to label %do.body107 [label %if.then99], !srcloc !319

if.then99:                                        ; preds = %do.end88
  call void @__sanitizer_cov_trace_pc() #17
  %217 = ptrtoint ptr %nr_meta_zones to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %nr_meta_zones, align 4
  %mul103 = shl i32 %218, 1
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dmz_ctr_metadata.__UNIQUE_ID_ddebug298, ptr noundef nonnull @.str.36, ptr noundef %label76, i32 noundef %mul103) #15
  br label %do.body107

do.body107:                                       ; preds = %if.then99, %do.end88
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dmz_ctr_metadata.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dmz_ctr_metadata, %if.then119)) #15
          to label %do.body125 [label %if.then119], !srcloc !319

if.then119:                                       ; preds = %do.body107
  call void @__sanitizer_cov_trace_pc() #17
  %nr_data_zones = getelementptr inbounds %struct.dmz_metadata, ptr %call7.i.i, i32 0, i32 18
  %219 = ptrtoint ptr %nr_data_zones to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %nr_data_zones, align 8
  %221 = ptrtoint ptr %nr_chunks.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %nr_chunks.i, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dmz_ctr_metadata.__UNIQUE_ID_ddebug299, ptr noundef nonnull @.str.37, ptr noundef %label76, i32 noundef %220, i32 noundef %222) #15
  br label %do.body125

do.body125:                                       ; preds = %if.then119, %do.body107
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dmz_ctr_metadata.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dmz_ctr_metadata, %if.then137)) #15
          to label %do.end144 [label %if.then137], !srcloc !319

if.then137:                                       ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #17
  %nr_cache = getelementptr inbounds %struct.dmz_metadata, ptr %call7.i.i, i32 0, i32 40
  %223 = ptrtoint ptr %nr_cache to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %nr_cache, align 4
  %call.i.i385 = tail call zeroext i1 @__kasan_check_read(ptr noundef %unmap_nr_cache, i32 noundef 4) #15
  %225 = ptrtoint ptr %unmap_nr_cache to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load volatile i32, ptr %unmap_nr_cache, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dmz_ctr_metadata.__UNIQUE_ID_ddebug300, ptr noundef nonnull @.str.38, ptr noundef %label76, i32 noundef %224, i32 noundef %226) #15
  br label %do.end144

do.end144:                                        ; preds = %if.then137, %do.body125
  %227 = ptrtoint ptr %nr_devs to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %nr_devs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %228)
  %cmp147467.not = icmp eq i32 %228, 0
  br i1 %cmp147467.not, label %do.end144.do.body192_crit_edge, label %do.end144.do.body149_crit_edge

do.end144.do.body149_crit_edge:                   ; preds = %do.end144
  br label %do.body149

do.end144.do.body192_crit_edge:                   ; preds = %do.end144
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body192

do.body149:                                       ; preds = %for.inc189.do.body149_crit_edge, %do.end144.do.body149_crit_edge
  %i.2468 = phi i32 [ %inc190, %for.inc189.do.body149_crit_edge ], [ 0, %do.end144.do.body149_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dmz_ctr_metadata.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dmz_ctr_metadata, %if.then161)) #15
          to label %do.body169 [label %if.then161], !srcloc !319

if.then161:                                       ; preds = %do.body149
  call void @__sanitizer_cov_trace_pc() #17
  %229 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %call7.i.i, align 8
  %nr_rnd.i419 = getelementptr %struct.dmz_dev, ptr %230, i32 %i.2468, i32 11
  %231 = ptrtoint ptr %nr_rnd.i419 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %nr_rnd.i419, align 8
  %unmap_nr_rnd.i420 = getelementptr %struct.dmz_dev, ptr %230, i32 %i.2468, i32 12
  %call.i.i.i421 = tail call zeroext i1 @__kasan_check_read(ptr noundef %unmap_nr_rnd.i420, i32 noundef 4) #15
  %233 = ptrtoint ptr %unmap_nr_rnd.i420 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load volatile i32, ptr %unmap_nr_rnd.i420, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dmz_ctr_metadata.__UNIQUE_ID_ddebug301, ptr noundef nonnull @.str.39, ptr noundef %label76, i32 noundef %232, i32 noundef %234) #15
  br label %do.body169

do.body169:                                       ; preds = %if.then161, %do.body149
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dmz_ctr_metadata.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dmz_ctr_metadata, %if.then181)) #15
          to label %for.inc189 [label %if.then181], !srcloc !319

if.then181:                                       ; preds = %do.body169
  call void @__sanitizer_cov_trace_pc() #17
  %235 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %call7.i.i, align 8
  %nr_seq.i422 = getelementptr %struct.dmz_dev, ptr %236, i32 %i.2468, i32 15
  %237 = ptrtoint ptr %nr_seq.i422 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %nr_seq.i422, align 8
  %unmap_nr_seq.i423 = getelementptr %struct.dmz_dev, ptr %236, i32 %i.2468, i32 16
  %call.i.i.i424 = tail call zeroext i1 @__kasan_check_read(ptr noundef %unmap_nr_seq.i423, i32 noundef 4) #15
  %239 = ptrtoint ptr %unmap_nr_seq.i423 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load volatile i32, ptr %unmap_nr_seq.i423, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dmz_ctr_metadata.__UNIQUE_ID_ddebug302, ptr noundef nonnull @.str.40, ptr noundef %label76, i32 noundef %238, i32 noundef %240) #15
  br label %for.inc189

for.inc189:                                       ; preds = %if.then181, %do.body169
  %inc190 = add nuw i32 %i.2468, 1
  %241 = ptrtoint ptr %nr_devs to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %nr_devs, align 4
  %cmp147 = icmp ult i32 %inc190, %242
  br i1 %cmp147, label %for.inc189.do.body149_crit_edge, label %for.inc189.do.body192_crit_edge

for.inc189.do.body192_crit_edge:                  ; preds = %for.inc189
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body192

for.inc189.do.body149_crit_edge:                  ; preds = %for.inc189
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body149

do.body192:                                       ; preds = %for.inc189.do.body192_crit_edge, %do.end144.do.body192_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dmz_ctr_metadata.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dmz_ctr_metadata, %if.then204)) #15
          to label %do.body210 [label %if.then204], !srcloc !319

if.then204:                                       ; preds = %do.body192
  call void @__sanitizer_cov_trace_pc() #17
  %nr_reserved_seq = getelementptr inbounds %struct.dmz_metadata, ptr %call7.i.i, i32 0, i32 21
  %243 = ptrtoint ptr %nr_reserved_seq to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %nr_reserved_seq, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dmz_ctr_metadata.__UNIQUE_ID_ddebug303, ptr noundef nonnull @.str.41, ptr noundef %label76, i32 noundef %244) #15
  br label %do.body210

do.body210:                                       ; preds = %if.then204, %do.body192
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dmz_ctr_metadata.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dmz_ctr_metadata, %if.then222)) #15
          to label %do.body228 [label %if.then222], !srcloc !319

if.then222:                                       ; preds = %do.body210
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dmz_ctr_metadata.__UNIQUE_ID_ddebug304, ptr noundef nonnull @.str.42, ptr noundef %label76) #15
  br label %do.body228

do.body228:                                       ; preds = %if.then222, %do.body210
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dmz_ctr_metadata.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dmz_ctr_metadata, %if.then240)) #15
          to label %do.body247 [label %if.then240], !srcloc !319

if.then240:                                       ; preds = %do.body228
  call void @__sanitizer_cov_trace_pc() #17
  %nr_meta_blocks = getelementptr inbounds %struct.dmz_metadata, ptr %call7.i.i, i32 0, i32 16
  %245 = ptrtoint ptr %nr_meta_blocks to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %nr_meta_blocks, align 8
  %247 = ptrtoint ptr %max_nr_mblks to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %max_nr_mblks, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dmz_ctr_metadata.__UNIQUE_ID_ddebug305, ptr noundef nonnull @.str.43, ptr noundef %label76, i32 noundef %246, i32 noundef %248) #15
  br label %do.body247

do.body247:                                       ; preds = %if.then240, %do.body228
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dmz_ctr_metadata.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dmz_ctr_metadata, %if.then259)) #15
          to label %do.body266 [label %if.then259], !srcloc !319

if.then259:                                       ; preds = %do.body247
  call void @__sanitizer_cov_trace_pc() #17
  %249 = ptrtoint ptr %nr_map_blocks.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %nr_map_blocks.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dmz_ctr_metadata.__UNIQUE_ID_ddebug306, ptr noundef nonnull @.str.44, ptr noundef %label76, i32 noundef %250) #15
  br label %do.body266

do.body266:                                       ; preds = %if.then259, %do.body247
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dmz_ctr_metadata.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dmz_ctr_metadata, %if.then278)) #15
          to label %cleanup.sink.split [label %if.then278], !srcloc !319

if.then278:                                       ; preds = %do.body266
  call void @__sanitizer_cov_trace_pc() #17
  %nr_bitmap_blocks = getelementptr inbounds %struct.dmz_metadata, ptr %call7.i.i, i32 0, i32 12
  %251 = ptrtoint ptr %nr_bitmap_blocks to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %nr_bitmap_blocks, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dmz_ctr_metadata.__UNIQUE_ID_ddebug307, ptr noundef nonnull @.str.45, ptr noundef %label76, i32 noundef %252) #15
  br label %cleanup.sink.split

err:                                              ; preds = %do.end66, %dmz_load_mapping.exit, %do.end86.i, %do.end71.i, %do.end60.i, %do.end27.i, %do.end.i, %if.end7.i.i.i.err_crit_edge, %kcalloc.exit.thread.i, %do.end43, %do.end31, %if.end20.err_crit_edge, %if.end.err_crit_edge
  %ret.0 = phi i32 [ %call17, %if.end.err_crit_edge ], [ %call21, %if.end20.err_crit_edge ], [ -6, %do.end43 ], [ -6, %do.end31 ], [ %169, %dmz_load_mapping.exit ], [ %call61, %do.end66 ], [ -12, %kcalloc.exit.thread.i ], [ -12, %if.end7.i.i.i.err_crit_edge ], [ -5, %do.end27.i ], [ -5, %do.end71.i ], [ -5, %do.end86.i ], [ -5, %do.end60.i ], [ -5, %do.end.i ]
  tail call fastcc void @dmz_cleanup_metadata(ptr noundef nonnull %call7.i.i)
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #15
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %err, %if.then278, %do.body266
  %.sink = phi ptr [ null, %err ], [ %call7.i.i, %do.body266 ], [ %call7.i.i, %if.then278 ]
  %retval.0.ph = phi i32 [ %ret.0, %err ], [ 0, %do.body266 ], [ 0, %if.then278 ]
  %253 = ptrtoint ptr %metadata to i32
  call void @__asan_store4_noabort(i32 %253)
  store ptr %.sink, ptr %metadata, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dmz_init_zones(ptr noundef %zmd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %zmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %zmd, align 8
  %zone_nr_sectors = getelementptr inbounds %struct.dmz_dev, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %zone_nr_sectors to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %zone_nr_sectors, align 8
  %zone_nr_sectors3 = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 10
  %4 = ptrtoint ptr %zone_nr_sectors3 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %3, ptr %zone_nr_sectors3, align 8
  %shr.i.i = lshr i64 %3, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i)
  %tobool.not.i.i = icmp eq i32 %conv.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %5 = tail call i32 @llvm.ctlz.i32(i32 %conv.i.i, i1 true) #15, !range !320
  %add.i.i = sub nuw nsw i32 64, %5
  br label %cond.end10

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %conv1.i.i = trunc i64 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i.i)
  %tobool.not.i5.i.i = icmp eq i32 %conv1.i.i, 0
  %6 = tail call i32 @llvm.ctlz.i32(i32 %conv1.i.i, i1 true) #15, !range !320
  %sub.i6.i.i = sub nuw nsw i32 32, %6
  %cond.i7.i.i = select i1 %tobool.not.i5.i.i, i32 0, i32 %sub.i6.i.i
  br label %cond.end10

cond.end10:                                       ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ %cond.i7.i.i, %if.end.i.i ]
  %sub.i = add nsw i32 %retval.0.i.i, -1
  %conv = sext i32 %sub.i to i64
  %zone_nr_sectors_shift = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 11
  %7 = ptrtoint ptr %zone_nr_sectors_shift to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %conv, ptr %zone_nr_sectors_shift, align 8
  %shr = lshr i64 %3, 3
  %zone_nr_blocks = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 8
  %8 = ptrtoint ptr %zone_nr_blocks to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %shr, ptr %zone_nr_blocks, align 8
  %shr.i.i247 = lshr i64 %3, 35
  %conv.i.i248 = trunc i64 %shr.i.i247 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i248)
  %tobool.not.i.i249 = icmp eq i32 %conv.i.i248, 0
  br i1 %tobool.not.i.i249, label %if.end.i.i256, label %if.then.i.i251

if.then.i.i251:                                   ; preds = %cond.end10
  call void @__sanitizer_cov_trace_pc() #17
  %9 = tail call i32 @llvm.ctlz.i32(i32 %conv.i.i248, i1 true) #15, !range !320
  %add.i.i250 = sub nuw nsw i32 64, %9
  br label %cond.end28

if.end.i.i256:                                    ; preds = %cond.end10
  call void @__sanitizer_cov_trace_pc() #17
  %conv1.i.i252 = trunc i64 %shr to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i.i252)
  %tobool.not.i5.i.i253 = icmp eq i32 %conv1.i.i252, 0
  %10 = tail call i32 @llvm.ctlz.i32(i32 %conv1.i.i252, i1 true) #15, !range !320
  %sub.i6.i.i254 = sub nuw nsw i32 32, %10
  %cond.i7.i.i255 = select i1 %tobool.not.i5.i.i253, i32 0, i32 %sub.i6.i.i254
  br label %cond.end28

cond.end28:                                       ; preds = %if.end.i.i256, %if.then.i.i251
  %retval.0.i.i257 = phi i32 [ %add.i.i250, %if.then.i.i251 ], [ %cond.i7.i.i255, %if.end.i.i256 ]
  %sub.i258 = add nsw i32 %retval.0.i.i257, -1
  %conv30 = sext i32 %sub.i258 to i64
  %zone_nr_blocks_shift = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 9
  %11 = ptrtoint ptr %zone_nr_blocks_shift to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %conv30, ptr %zone_nr_blocks_shift, align 8
  %shr32 = lshr i64 %3, 6
  %zone_bitmap_size = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 5
  %12 = ptrtoint ptr %zone_bitmap_size to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %shr32, ptr %zone_bitmap_size, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 262144, i64 %3)
  %cmp35 = icmp ult i64 %3, 262144
  %shr34 = lshr i64 %3, 18
  %extract.t = trunc i64 %shr34 to i32
  %cond40.off0 = select i1 %cmp35, i32 1, i32 %extract.t
  %zone_nr_bitmap_blocks = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 6
  %13 = ptrtoint ptr %zone_nr_bitmap_blocks to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %cond40.off0, ptr %zone_nr_bitmap_blocks, align 8
  %extract.t236 = trunc i64 %shr to i32
  %cond49.off0 = select i1 %cmp35, i32 %extract.t236, i32 32768
  %zone_bits_per_mblk = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 7
  %14 = ptrtoint ptr %zone_bits_per_mblk to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %cond49.off0, ptr %zone_bits_per_mblk, align 4
  %nr_zones = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 14
  %15 = ptrtoint ptr %nr_zones to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %nr_zones, align 8
  %nr_devs = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 1
  %16 = ptrtoint ptr %nr_devs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nr_devs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp51306.not = icmp eq i32 %17, 0
  br i1 %cmp51306.not, label %cond.end28.do.end_crit_edge, label %cond.end28.for.body_crit_edge

cond.end28.for.body_crit_edge:                    ; preds = %cond.end28
  br label %for.body

cond.end28.do.end_crit_edge:                      ; preds = %cond.end28
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %cond.end28.for.body_crit_edge
  %i.0307 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %cond.end28.for.body_crit_edge ]
  %18 = ptrtoint ptr %zmd to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %zmd, align 8
  %metadata = getelementptr %struct.dmz_dev, ptr %19, i32 %i.0307, i32 1
  %20 = ptrtoint ptr %metadata to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %zmd, ptr %metadata, align 4
  %nr_zones56 = getelementptr %struct.dmz_dev, ptr %19, i32 %i.0307, i32 7
  %21 = ptrtoint ptr %nr_zones56 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nr_zones56, align 4
  %23 = ptrtoint ptr %nr_zones to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nr_zones, align 8
  %add = add i32 %24, %22
  store i32 %add, ptr %nr_zones, align 8
  %unmap_nr_rnd = getelementptr %struct.dmz_dev, ptr %19, i32 %i.0307, i32 12
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %unmap_nr_rnd, i32 noundef 4) #15
  %25 = ptrtoint ptr %unmap_nr_rnd to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile i32 0, ptr %unmap_nr_rnd, align 4
  %unmap_rnd_list = getelementptr %struct.dmz_dev, ptr %19, i32 %i.0307, i32 13
  %26 = ptrtoint ptr %unmap_rnd_list to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %unmap_rnd_list, ptr %unmap_rnd_list, align 4
  %prev.i = getelementptr %struct.dmz_dev, ptr %19, i32 %i.0307, i32 13, i32 1
  %27 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %unmap_rnd_list, ptr %prev.i, align 4
  %map_rnd_list = getelementptr %struct.dmz_dev, ptr %19, i32 %i.0307, i32 14
  %28 = ptrtoint ptr %map_rnd_list to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %map_rnd_list, ptr %map_rnd_list, align 4
  %prev.i260 = getelementptr %struct.dmz_dev, ptr %19, i32 %i.0307, i32 14, i32 1
  %29 = ptrtoint ptr %prev.i260 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %map_rnd_list, ptr %prev.i260, align 4
  %unmap_nr_seq = getelementptr %struct.dmz_dev, ptr %19, i32 %i.0307, i32 16
  %call.i.i237 = tail call zeroext i1 @__kasan_check_write(ptr noundef %unmap_nr_seq, i32 noundef 4) #15
  %30 = ptrtoint ptr %unmap_nr_seq to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile i32 0, ptr %unmap_nr_seq, align 4
  %unmap_seq_list = getelementptr %struct.dmz_dev, ptr %19, i32 %i.0307, i32 17
  %31 = ptrtoint ptr %unmap_seq_list to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %unmap_seq_list, ptr %unmap_seq_list, align 4
  %prev.i261 = getelementptr %struct.dmz_dev, ptr %19, i32 %i.0307, i32 17, i32 1
  %32 = ptrtoint ptr %prev.i261 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %unmap_seq_list, ptr %prev.i261, align 4
  %map_seq_list = getelementptr %struct.dmz_dev, ptr %19, i32 %i.0307, i32 18
  %33 = ptrtoint ptr %map_seq_list to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %map_seq_list, ptr %map_seq_list, align 4
  %prev.i262 = getelementptr %struct.dmz_dev, ptr %19, i32 %i.0307, i32 18, i32 1
  %34 = ptrtoint ptr %prev.i262 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %map_seq_list, ptr %prev.i262, align 4
  %inc = add nuw i32 %i.0307, 1
  %35 = ptrtoint ptr %nr_devs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %nr_devs, align 4
  %cmp51 = icmp ult i32 %inc, %36
  br i1 %cmp51, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %for.body
  %37 = ptrtoint ptr %nr_zones to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pr = load i32, ptr %nr_zones, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool.not = icmp eq i32 %.pr, 0
  br i1 %tobool.not, label %for.end.do.end_crit_edge, label %if.end

for.end.do.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

do.end:                                           ; preds = %for.end.do.end_crit_edge, %cond.end28.do.end_crit_edge
  %devname = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 2
  %call60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef %devname) #19
  br label %cleanup

if.end:                                           ; preds = %for.end
  %zones = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 23
  tail call void @__raw_spin_lock_init(ptr noundef %zones, ptr noundef nonnull @.str.67, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #15
  %xa_flags.i.i = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 23, i32 1
  %38 = ptrtoint ptr %xa_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %xa_flags.i.i, align 4
  %xa_head.i.i = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 23, i32 2
  %39 = ptrtoint ptr %xa_head.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %xa_head.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dmz_init_zones.__UNIQUE_ID_ddebug283, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dmz_init_zones, %if.then67)) #15
          to label %do.end73 [label %if.then67], !srcloc !319

if.then67:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %devname68 = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 2
  %40 = ptrtoint ptr %nr_zones to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %nr_zones, align 8
  %mul = mul i32 %41, 40
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dmz_init_zones.__UNIQUE_ID_ddebug283, ptr noundef nonnull @.str.64, ptr noundef %devname68, i32 noundef %mul) #15
  br label %do.end73

do.end73:                                         ; preds = %if.then67, %if.end
  %42 = ptrtoint ptr %nr_devs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %nr_devs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %43)
  %cmp75 = icmp ugt i32 %43, 1
  br i1 %cmp75, label %if.then77, label %if.end138

if.then77:                                        ; preds = %do.end73
  %44 = ptrtoint ptr %zmd to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %zmd, align 8
  %nr_zones.i = getelementptr inbounds %struct.dmz_dev, ptr %45, i32 0, i32 7
  %46 = ptrtoint ptr %nr_zones.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %nr_zones.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp35.not.i = icmp eq i32 %47, 0
  br i1 %cmp35.not.i, label %if.then77.if.end102_crit_edge, label %for.body.lr.ph.i

if.then77.if.end102_crit_edge:                    ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end102

for.body.lr.ph.i:                                 ; preds = %if.then77
  %nr_cache_zones.i = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 19
  %nr_useable_zones.i = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 15
  %capacity.i = getelementptr inbounds %struct.dmz_dev, ptr %45, i32 0, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %zone_offset.037.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %add.i, %for.inc.i.for.body.i_crit_edge ]
  %idx.036.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc9.i, %for.inc.i.for.body.i_crit_edge ]
  %call.i = tail call fastcc ptr @dmz_insert(ptr noundef %zmd, i32 noundef %idx.036.i, ptr noundef %45) #15
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %dmz_emulate_zones.exit, label %if.end.i

if.end.i:                                         ; preds = %for.body.i
  %flags.i = getelementptr inbounds %struct.dm_zone, ptr %call.i, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags.i) #15
  %wp_block.i = getelementptr inbounds %struct.dm_zone, ptr %call.i, i32 0, i32 5
  %48 = ptrtoint ptr %wp_block.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %wp_block.i, align 4
  %49 = ptrtoint ptr %nr_cache_zones.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %nr_cache_zones.i, align 4
  %inc.i = add i32 %50, 1
  store i32 %inc.i, ptr %nr_cache_zones.i, align 4
  %51 = ptrtoint ptr %nr_useable_zones.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %nr_useable_zones.i, align 4
  %inc3.i = add i32 %52, 1
  store i32 %inc3.i, ptr %nr_useable_zones.i, align 4
  %53 = ptrtoint ptr %capacity.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %capacity.i, align 8
  %sub.i263 = sub i64 %54, %zone_offset.037.i
  %55 = ptrtoint ptr %zone_nr_sectors3 to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %zone_nr_sectors3, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i263, i64 %56)
  %cmp4.i = icmp ult i64 %sub.i263, %56
  br i1 %cmp4.i, label %cleanup.i, label %for.inc.i

cleanup.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_set_bit(i32 noundef 3, ptr noundef %flags.i) #15
  br label %if.end102

for.inc.i:                                        ; preds = %if.end.i
  %add.i = add i64 %56, %zone_offset.037.i
  %inc9.i = add nuw i32 %idx.036.i, 1
  %57 = ptrtoint ptr %nr_zones.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %nr_zones.i, align 4
  %cmp.i = icmp ult i32 %inc9.i, %58
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end102_crit_edge

for.inc.i.if.end102_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end102

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

dmz_emulate_zones.exit:                           ; preds = %for.body.i
  %59 = ptrtoint ptr %call.i to i32
  %cmp81 = icmp slt ptr %call.i, null
  br i1 %cmp81, label %do.body84, label %dmz_emulate_zones.exit.if.end102_crit_edge

dmz_emulate_zones.exit.if.end102_crit_edge:       ; preds = %dmz_emulate_zones.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end102

do.body84:                                        ; preds = %dmz_emulate_zones.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dmz_init_zones.__UNIQUE_ID_ddebug284, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dmz_init_zones, %if.then96)) #15
          to label %do.end101 [label %if.then96], !srcloc !319

if.then96:                                        ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #17
  %devname97 = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dmz_init_zones.__UNIQUE_ID_ddebug284, ptr noundef nonnull @.str.65, ptr noundef %devname97, i32 noundef %59) #15
  br label %do.end101

do.end101:                                        ; preds = %if.then96, %do.body84
  %60 = ptrtoint ptr %nr_zones to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %nr_zones, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp10.not.i = icmp eq i32 %61, 0
  br i1 %cmp10.not.i, label %do.end101.dmz_drop_zones.exit_crit_edge, label %do.end101.for.body.i269_crit_edge

do.end101.for.body.i269_crit_edge:                ; preds = %do.end101
  br label %for.body.i269

do.end101.dmz_drop_zones.exit_crit_edge:          ; preds = %do.end101
  call void @__sanitizer_cov_trace_pc() #17
  br label %dmz_drop_zones.exit

for.body.i269:                                    ; preds = %for.body.i269.for.body.i269_crit_edge, %do.end101.for.body.i269_crit_edge
  %idx.011.i = phi i32 [ %inc.i267, %for.body.i269.for.body.i269_crit_edge ], [ 0, %do.end101.for.body.i269_crit_edge ]
  %call.i266 = tail call ptr @xa_load(ptr noundef %zones, i32 noundef %idx.011.i) #15
  tail call void @kfree(ptr noundef %call.i266) #15
  %call2.i = tail call ptr @xa_erase(ptr noundef %zones, i32 noundef %idx.011.i) #15
  %inc.i267 = add nuw i32 %idx.011.i, 1
  %62 = ptrtoint ptr %nr_zones to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %nr_zones, align 8
  %cmp.i268 = icmp ult i32 %inc.i267, %63
  br i1 %cmp.i268, label %for.body.i269.for.body.i269_crit_edge, label %for.body.i269.dmz_drop_zones.exit_crit_edge

for.body.i269.dmz_drop_zones.exit_crit_edge:      ; preds = %for.body.i269
  call void @__sanitizer_cov_trace_pc() #17
  br label %dmz_drop_zones.exit

for.body.i269.for.body.i269_crit_edge:            ; preds = %for.body.i269
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i269

dmz_drop_zones.exit:                              ; preds = %for.body.i269.dmz_drop_zones.exit_crit_edge, %do.end101.dmz_drop_zones.exit_crit_edge
  tail call void @xa_destroy(ptr noundef %zones) #15
  br label %cleanup

if.end102:                                        ; preds = %dmz_emulate_zones.exit.if.end102_crit_edge, %for.inc.i.if.end102_crit_edge, %cleanup.i, %if.then77.if.end102_crit_edge
  %call.i271 = tail call ptr @xa_load(ptr noundef %zones, i32 noundef 0) #15
  %zone = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 24, i32 0, i32 4
  %64 = ptrtoint ptr %zone to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call.i271, ptr %zone, align 4
  %65 = ptrtoint ptr %nr_devs to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %nr_devs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %66)
  %cmp107308 = icmp ugt i32 %66, 1
  br i1 %cmp107308, label %if.end102.for.body109_crit_edge, label %if.end102.cleanup_crit_edge

if.end102.cleanup_crit_edge:                      ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end102.for.body109_crit_edge:                  ; preds = %if.end102
  br label %for.body109

for.cond105:                                      ; preds = %for.body109
  %inc136 = add nuw i32 %i.1309, 1
  %67 = ptrtoint ptr %nr_devs to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %nr_devs, align 4
  %cmp107 = icmp ult i32 %inc136, %68
  br i1 %cmp107, label %for.cond105.for.body109_crit_edge, label %for.cond105.cleanup_crit_edge

for.cond105.cleanup_crit_edge:                    ; preds = %for.cond105
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.cond105.for.body109_crit_edge:                ; preds = %for.cond105
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body109

for.body109:                                      ; preds = %for.cond105.for.body109_crit_edge, %if.end102.for.body109_crit_edge
  %i.1309 = phi i32 [ %inc136, %for.cond105.for.body109_crit_edge ], [ 1, %if.end102.for.body109_crit_edge ]
  %69 = ptrtoint ptr %zmd to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %zmd, align 8
  %arrayidx111 = getelementptr %struct.dmz_dev, ptr %70, i32 %i.1309
  %71 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx111, align 8
  %call112 = tail call i32 @blkdev_report_zones(ptr noundef %72, i64 noundef 0, i32 noundef -1, ptr noundef nonnull @dmz_init_zone, ptr noundef %arrayidx111) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112)
  %cmp113 = icmp slt i32 %call112, 0
  br i1 %cmp113, label %do.body116, label %for.cond105

do.body116:                                       ; preds = %for.body109
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dmz_init_zones.__UNIQUE_ID_ddebug285, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dmz_init_zones, %if.then128)) #15
          to label %do.end133 [label %if.then128], !srcloc !319

if.then128:                                       ; preds = %do.body116
  call void @__sanitizer_cov_trace_pc() #17
  %devname129 = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dmz_init_zones.__UNIQUE_ID_ddebug285, ptr noundef nonnull @.str.66, ptr noundef %devname129, i32 noundef %call112) #15
  br label %do.end133

do.end133:                                        ; preds = %if.then128, %do.body116
  %73 = ptrtoint ptr %nr_zones to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %nr_zones, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp10.not.i273 = icmp eq i32 %74, 0
  br i1 %cmp10.not.i273, label %do.end133.dmz_drop_zones.exit283_crit_edge, label %do.end133.for.body.i281_crit_edge

do.end133.for.body.i281_crit_edge:                ; preds = %do.end133
  br label %for.body.i281

do.end133.dmz_drop_zones.exit283_crit_edge:       ; preds = %do.end133
  call void @__sanitizer_cov_trace_pc() #17
  br label %dmz_drop_zones.exit283

for.body.i281:                                    ; preds = %for.body.i281.for.body.i281_crit_edge, %do.end133.for.body.i281_crit_edge
  %idx.011.i276 = phi i32 [ %inc.i279, %for.body.i281.for.body.i281_crit_edge ], [ 0, %do.end133.for.body.i281_crit_edge ]
  %call.i277 = tail call ptr @xa_load(ptr noundef %zones, i32 noundef %idx.011.i276) #15
  tail call void @kfree(ptr noundef %call.i277) #15
  %call2.i278 = tail call ptr @xa_erase(ptr noundef %zones, i32 noundef %idx.011.i276) #15
  %inc.i279 = add nuw i32 %idx.011.i276, 1
  %75 = ptrtoint ptr %nr_zones to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %nr_zones, align 8
  %cmp.i280 = icmp ult i32 %inc.i279, %76
  br i1 %cmp.i280, label %for.body.i281.for.body.i281_crit_edge, label %for.body.i281.dmz_drop_zones.exit283_crit_edge

for.body.i281.dmz_drop_zones.exit283_crit_edge:   ; preds = %for.body.i281
  call void @__sanitizer_cov_trace_pc() #17
  br label %dmz_drop_zones.exit283

for.body.i281.for.body.i281_crit_edge:            ; preds = %for.body.i281
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i281

dmz_drop_zones.exit283:                           ; preds = %for.body.i281.dmz_drop_zones.exit283_crit_edge, %do.end133.dmz_drop_zones.exit283_crit_edge
  tail call void @xa_destroy(ptr noundef %zones) #15
  br label %cleanup

if.end138:                                        ; preds = %do.end73
  %77 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %1, align 8
  %call140 = tail call i32 @blkdev_report_zones(ptr noundef %78, i64 noundef 0, i32 noundef -1, ptr noundef nonnull @dmz_init_zone, ptr noundef %1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140)
  %cmp141 = icmp slt i32 %call140, 0
  br i1 %cmp141, label %do.body144, label %if.end138.cleanup_crit_edge

if.end138.cleanup_crit_edge:                      ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body144:                                       ; preds = %if.end138
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dmz_init_zones.__UNIQUE_ID_ddebug286, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dmz_init_zones, %if.then156)) #15
          to label %do.end161 [label %if.then156], !srcloc !319

if.then156:                                       ; preds = %do.body144
  call void @__sanitizer_cov_trace_pc() #17
  %devname157 = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dmz_init_zones.__UNIQUE_ID_ddebug286, ptr noundef nonnull @.str.66, ptr noundef %devname157, i32 noundef %call140) #15
  br label %do.end161

do.end161:                                        ; preds = %if.then156, %do.body144
  %79 = ptrtoint ptr %nr_zones to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %nr_zones, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %cmp10.not.i285 = icmp eq i32 %80, 0
  br i1 %cmp10.not.i285, label %do.end161.dmz_drop_zones.exit295_crit_edge, label %do.end161.for.body.i293_crit_edge

do.end161.for.body.i293_crit_edge:                ; preds = %do.end161
  br label %for.body.i293

do.end161.dmz_drop_zones.exit295_crit_edge:       ; preds = %do.end161
  call void @__sanitizer_cov_trace_pc() #17
  br label %dmz_drop_zones.exit295

for.body.i293:                                    ; preds = %for.body.i293.for.body.i293_crit_edge, %do.end161.for.body.i293_crit_edge
  %idx.011.i288 = phi i32 [ %inc.i291, %for.body.i293.for.body.i293_crit_edge ], [ 0, %do.end161.for.body.i293_crit_edge ]
  %call.i289 = tail call ptr @xa_load(ptr noundef %zones, i32 noundef %idx.011.i288) #15
  tail call void @kfree(ptr noundef %call.i289) #15
  %call2.i290 = tail call ptr @xa_erase(ptr noundef %zones, i32 noundef %idx.011.i288) #15
  %inc.i291 = add nuw i32 %idx.011.i288, 1
  %81 = ptrtoint ptr %nr_zones to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %nr_zones, align 8
  %cmp.i292 = icmp ult i32 %inc.i291, %82
  br i1 %cmp.i292, label %for.body.i293.for.body.i293_crit_edge, label %for.body.i293.dmz_drop_zones.exit295_crit_edge

for.body.i293.dmz_drop_zones.exit295_crit_edge:   ; preds = %for.body.i293
  call void @__sanitizer_cov_trace_pc() #17
  br label %dmz_drop_zones.exit295

for.body.i293.for.body.i293_crit_edge:            ; preds = %for.body.i293
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i293

dmz_drop_zones.exit295:                           ; preds = %for.body.i293.dmz_drop_zones.exit295_crit_edge, %do.end161.dmz_drop_zones.exit295_crit_edge
  tail call void @xa_destroy(ptr noundef %zones) #15
  br label %cleanup

cleanup:                                          ; preds = %dmz_drop_zones.exit295, %if.end138.cleanup_crit_edge, %dmz_drop_zones.exit283, %for.cond105.cleanup_crit_edge, %if.end102.cleanup_crit_edge, %dmz_drop_zones.exit, %do.end
  %retval.0 = phi i32 [ %59, %dmz_drop_zones.exit ], [ %call112, %dmz_drop_zones.exit283 ], [ %call140, %dmz_drop_zones.exit295 ], [ -6, %do.end ], [ 0, %if.end138.cleanup_crit_edge ], [ 0, %if.end102.cleanup_crit_edge ], [ 0, %for.cond105.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dmz_load_sb(ptr noundef %zmd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %sb = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 24
  %zone = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 24, i32 0, i32 4
  %0 = ptrtoint ptr %zone to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %zone, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %dmz_start_block.exit

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %label = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 3
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef %label) #19
  br label %cleanup224

dmz_start_block.exit:                             ; preds = %entry
  %id.i.i = getelementptr inbounds %struct.dm_zone, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.dm_zone, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i.i, align 4
  %zone_offset.i.i = getelementptr inbounds %struct.dmz_dev, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %zone_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %zone_offset.i.i, align 8
  %sub.i.i = sub i32 %3, %7
  %conv.i = zext i32 %sub.i.i to i64
  %zone_nr_blocks_shift.i = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 9
  %8 = ptrtoint ptr %zone_nr_blocks_shift.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %zone_nr_blocks_shift.i, align 8
  %shl.i = shl i64 %conv.i, %9
  %10 = ptrtoint ptr %sb to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %shl.i, ptr %sb, align 8
  %11 = ptrtoint ptr %zone to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %zone, align 4
  %dev = getelementptr inbounds %struct.dm_zone, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %dev12 = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 24, i32 0, i32 1
  %15 = ptrtoint ptr %dev12 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %dev12, align 8
  %call15 = tail call fastcc i32 @dmz_get_sb(ptr noundef %zmd, ptr noundef %sb, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end27, label %do.end20

do.end20:                                         ; preds = %dmz_start_block.exit
  call void @__sanitizer_cov_trace_pc() #17
  %16 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev12, align 8
  %name = getelementptr inbounds %struct.dmz_dev, ptr %17, i32 0, i32 3
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef %name) #19
  br label %cleanup224

if.end27:                                         ; preds = %dmz_start_block.exit
  %call30 = tail call fastcc i32 @dmz_check_sb(ptr noundef %zmd, ptr noundef %sb, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp = icmp eq i32 %call30, 0
  br i1 %cmp, label %if.then31, label %if.else

if.then31:                                        ; preds = %if.end27
  %arrayidx34 = getelementptr %struct.dmz_metadata, ptr %zmd, i32 0, i32 24, i32 1
  %zone35 = getelementptr %struct.dmz_metadata, ptr %zmd, i32 0, i32 24, i32 1, i32 4
  %18 = ptrtoint ptr %zone35 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %zone35, align 4
  %tobool36.not = icmp eq ptr %19, null
  br i1 %tobool36.not, label %if.end45, label %if.then31.if.end23.i.i316_crit_edge

if.then31.if.end23.i.i316_crit_edge:              ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end23.i.i316

if.end45:                                         ; preds = %if.then31
  %20 = ptrtoint ptr %zone to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %zone, align 4
  %id = getelementptr inbounds %struct.dm_zone, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %id, align 4
  %nr_meta_zones = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 17
  %24 = ptrtoint ptr %nr_meta_zones to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nr_meta_zones, align 4
  %add = add i32 %25, %23
  %zones.i = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 23
  %call.i = tail call ptr @xa_load(ptr noundef %zones.i, i32 noundef %add) #15
  %26 = ptrtoint ptr %zone35 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i, ptr %zone35, align 4
  %tobool.not.i.i310 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i.i310, label %do.end.i.i311, label %if.end45.if.end23.i.i316_crit_edge, !prof !312

if.end45.if.end23.i.i316_crit_edge:               ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end23.i.i316

do.end.i.i311:                                    ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 223, i32 noundef 9, ptr noundef null) #15
  br label %dmz_start_block.exit321

if.end23.i.i316:                                  ; preds = %if.end45.if.end23.i.i316_crit_edge, %if.then31.if.end23.i.i316_crit_edge
  %27 = phi ptr [ %call.i, %if.end45.if.end23.i.i316_crit_edge ], [ %19, %if.then31.if.end23.i.i316_crit_edge ]
  %id.i.i312 = getelementptr inbounds %struct.dm_zone, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %id.i.i312 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %id.i.i312, align 4
  %dev.i.i313 = getelementptr inbounds %struct.dm_zone, ptr %27, i32 0, i32 1
  %30 = ptrtoint ptr %dev.i.i313 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i.i313, align 4
  %zone_offset.i.i314 = getelementptr inbounds %struct.dmz_dev, ptr %31, i32 0, i32 8
  %32 = ptrtoint ptr %zone_offset.i.i314 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %zone_offset.i.i314, align 8
  %sub.i.i315 = sub i32 %29, %33
  br label %dmz_start_block.exit321

dmz_start_block.exit321:                          ; preds = %if.end23.i.i316, %do.end.i.i311
  %retval.0.i.i317 = phi i32 [ 0, %do.end.i.i311 ], [ %sub.i.i315, %if.end23.i.i316 ]
  %conv.i318 = zext i32 %retval.0.i.i317 to i64
  %34 = ptrtoint ptr %zone_nr_blocks_shift.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %zone_nr_blocks_shift.i, align 8
  %shl.i320 = shl i64 %conv.i318, %35
  %36 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %shl.i320, ptr %arrayidx34, align 8
  %37 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev12, align 8
  %dev58 = getelementptr %struct.dmz_metadata, ptr %zmd, i32 0, i32 24, i32 1, i32 1
  %39 = ptrtoint ptr %dev58 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %38, ptr %dev58, align 8
  %call61 = tail call fastcc i32 @dmz_get_sb(ptr noundef %zmd, ptr noundef %arrayidx34, i32 noundef 1)
  br label %if.end63

if.else:                                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  %call62 = tail call fastcc i32 @dmz_lookup_secondary_sb(ptr noundef %zmd)
  br label %if.end63

if.end63:                                         ; preds = %if.else, %dmz_start_block.exit321
  %ret.0 = phi i32 [ %call61, %dmz_start_block.exit321 ], [ %call62, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool64.not = icmp eq i32 %ret.0, 0
  br i1 %tobool64.not, label %if.end76, label %do.end68

do.end68:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #17
  %dev72 = getelementptr %struct.dmz_metadata, ptr %zmd, i32 0, i32 24, i32 1, i32 1
  %40 = ptrtoint ptr %dev72 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev72, align 8
  %name73 = getelementptr inbounds %struct.dmz_dev, ptr %41, i32 0, i32 3
  %call75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef %name73) #19
  br label %cleanup224

if.end76:                                         ; preds = %if.end63
  %arrayidx78 = getelementptr %struct.dmz_metadata, ptr %zmd, i32 0, i32 24, i32 1
  %call79 = tail call fastcc i32 @dmz_check_sb(ptr noundef %zmd, ptr noundef %arrayidx78, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %cmp80 = icmp eq i32 %call79, 0
  %brmerge = select i1 %cmp, i1 true, i1 %cmp80
  br i1 %brmerge, label %if.end96, label %do.end91

do.end91:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #17
  %label93 = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 3
  %call95 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef %label93) #19
  br label %cleanup224

if.end96:                                         ; preds = %if.end76
  br i1 %cmp, label %if.then99, label %if.else104

if.then99:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #17
  %sb102 = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 24, i32 0, i32 3
  %42 = ptrtoint ptr %sb102 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sb102, align 8
  %gen = getelementptr inbounds %struct.dmz_super, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %gen to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %gen, align 8
  %46 = tail call i64 @llvm.bswap.i64(i64 %45)
  br label %if.end119

if.else104:                                       ; preds = %if.end96
  %call105 = tail call fastcc i32 @dmz_recover_mblocks(ptr noundef %zmd, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %if.else104.if.end119_crit_edge, label %do.end110

if.else104.if.end119_crit_edge:                   ; preds = %if.else104
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end119

do.end110:                                        ; preds = %if.else104
  call void @__sanitizer_cov_trace_pc() #17
  %47 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev12, align 8
  %name115 = getelementptr inbounds %struct.dmz_dev, ptr %48, i32 0, i32 3
  %call117 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef %name115) #19
  br label %cleanup224

if.end119:                                        ; preds = %if.else104.if.end119_crit_edge, %if.then99
  %ret.1 = phi i32 [ %call79, %if.then99 ], [ 0, %if.else104.if.end119_crit_edge ]
  %sb_gen.sroa.0.0 = phi i64 [ %46, %if.then99 ], [ 0, %if.else104.if.end119_crit_edge ]
  br i1 %cmp80, label %if.then122, label %if.else128

if.then122:                                       ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #17
  %sb125 = getelementptr %struct.dmz_metadata, ptr %zmd, i32 0, i32 24, i32 1, i32 3
  %49 = ptrtoint ptr %sb125 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %sb125, align 8
  %gen126 = getelementptr inbounds %struct.dmz_super, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %gen126 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %gen126, align 8
  %53 = tail call i64 @llvm.bswap.i64(i64 %52)
  br label %if.end143

if.else128:                                       ; preds = %if.end119
  %call129 = tail call fastcc i32 @dmz_recover_mblocks(ptr noundef %zmd, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129)
  %tobool130.not = icmp eq i32 %call129, 0
  br i1 %tobool130.not, label %if.else128.if.end143_crit_edge, label %do.end134

if.else128.if.end143_crit_edge:                   ; preds = %if.else128
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end143

do.end134:                                        ; preds = %if.else128
  call void @__sanitizer_cov_trace_pc() #17
  %dev138 = getelementptr %struct.dmz_metadata, ptr %zmd, i32 0, i32 24, i32 1, i32 1
  %54 = ptrtoint ptr %dev138 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev138, align 8
  %name139 = getelementptr inbounds %struct.dmz_dev, ptr %55, i32 0, i32 3
  %call141 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef %name139) #19
  br label %cleanup224

if.end143:                                        ; preds = %if.else128.if.end143_crit_edge, %if.then122
  %ret.2 = phi i32 [ %ret.1, %if.then122 ], [ 0, %if.else128.if.end143_crit_edge ]
  %sb_gen.sroa.6.0 = phi i64 [ %53, %if.then122 ], [ 0, %if.else128.if.end143_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %sb_gen.sroa.0.0, i64 %sb_gen.sroa.6.0)
  %cmp146.not = icmp ult i64 %sb_gen.sroa.0.0, %sb_gen.sroa.6.0
  %56 = call i64 @llvm.umax.i64(i64 %sb_gen.sroa.0.0, i64 %sb_gen.sroa.6.0)
  %spec.select349 = zext i1 %cmp146.not to i32
  %57 = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 27
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %56, ptr %57, align 8
  %59 = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 25
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %spec.select349, ptr %59, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dmz_load_sb.__UNIQUE_ID_ddebug278, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dmz_load_sb, %if.then161)) #15
          to label %do.end172 [label %if.then161], !srcloc !319

if.then161:                                       ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #17
  %61 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %59, align 8
  %dev165 = getelementptr %struct.dmz_metadata, ptr %zmd, i32 0, i32 24, i32 %62, i32 1
  %63 = ptrtoint ptr %dev165 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev165, align 8
  %name166 = getelementptr inbounds %struct.dmz_dev, ptr %64, i32 0, i32 3
  %65 = ptrtoint ptr %57 to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %57, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dmz_load_sb.__UNIQUE_ID_ddebug278, ptr noundef nonnull @.str.85, ptr noundef %name166, i32 noundef %62, i64 noundef %66) #15
  br label %do.end172

do.end172:                                        ; preds = %if.then161, %if.end143
  %sb_version = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 26
  %67 = ptrtoint ptr %sb_version to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %sb_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %68)
  %cmp173 = icmp ugt i32 %68, 1
  br i1 %cmp173, label %if.then174, label %do.end172.cleanup224_crit_edge

do.end172.cleanup224_crit_edge:                   ; preds = %do.end172
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup224

if.then174:                                       ; preds = %do.end172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %69 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %69, i32 noundef 3520, i32 noundef 24) #20
  %tobool177.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool177.not, label %if.then174.cleanup224_crit_edge, label %for.cond.preheader

if.then174.cleanup224_crit_edge:                  ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup224

for.cond.preheader:                               ; preds = %if.then174
  %nr_devs = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 1
  %70 = ptrtoint ptr %nr_devs to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %nr_devs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %71)
  %cmp180332 = icmp ugt i32 %71, 1
  br i1 %cmp180332, label %for.body.lr.ph, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %zones.i322 = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 23
  %zone185 = getelementptr inbounds %struct.dmz_sb, ptr %call7.i.i, i32 0, i32 4
  %dev188 = getelementptr inbounds %struct.dmz_sb, ptr %call7.i.i, i32 0, i32 1
  %mblk218 = getelementptr inbounds %struct.dmz_sb, ptr %call7.i.i, i32 0, i32 2
  %nr_mblks.i = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 30
  br label %for.body

for.cond:                                         ; preds = %if.end216
  %72 = ptrtoint ptr %nr_devs to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %nr_devs, align 4
  %cmp180 = icmp ult i32 %add204, %73
  br i1 %cmp180, label %for.cond.for.body_crit_edge, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.0333 = phi i32 [ 1, %for.body.lr.ph ], [ %add204, %for.cond.for.body_crit_edge ]
  %74 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 0, ptr %call7.i.i, align 8
  %75 = ptrtoint ptr %zmd to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %zmd, align 8
  %zone_offset = getelementptr %struct.dmz_dev, ptr %76, i32 %i.0333, i32 8
  %77 = ptrtoint ptr %zone_offset to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %zone_offset, align 8
  %call.i323 = tail call ptr @xa_load(ptr noundef %zones.i322, i32 noundef %78) #15
  %79 = ptrtoint ptr %zone185 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %call.i323, ptr %zone185, align 4
  %80 = ptrtoint ptr %zmd to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %zmd, align 8
  %arrayidx187 = getelementptr %struct.dmz_dev, ptr %81, i32 %i.0333
  %82 = ptrtoint ptr %dev188 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %arrayidx187, ptr %dev188, align 8
  %flags = getelementptr inbounds %struct.dm_zone, ptr %call.i323, i32 0, i32 2
  %83 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile i32, ptr %flags, align 4
  %85 = and i32 %84, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool191.not = icmp eq i32 %85, 0
  br i1 %tobool191.not, label %do.end195, label %if.end203

do.end195:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %name198 = getelementptr %struct.dmz_dev, ptr %81, i32 %i.0333, i32 3
  %id201 = getelementptr inbounds %struct.dm_zone, ptr %call.i323, i32 0, i32 4
  %86 = ptrtoint ptr %id201 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %id201, align 4
  %call202 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, ptr noundef %name198, i32 noundef %87) #19
  br label %cleanup

if.end203:                                        ; preds = %for.body
  %add204 = add nuw i32 %i.0333, 1
  %call205 = tail call fastcc i32 @dmz_get_sb(ptr noundef %zmd, ptr noundef nonnull %call7.i.i, i32 noundef %add204)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call205)
  %tobool206.not = icmp eq i32 %call205, 0
  br i1 %tobool206.not, label %if.end216, label %do.end210

do.end210:                                        ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #17
  %88 = ptrtoint ptr %dev188 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev188, align 8
  %name213 = getelementptr inbounds %struct.dmz_dev, ptr %89, i32 0, i32 3
  %call215 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, ptr noundef %name213) #19
  %90 = ptrtoint ptr %mblk218 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %mblk218, align 4
  tail call fastcc void @dmz_free_mblock(ptr noundef %zmd, ptr noundef %91)
  br label %cleanup

if.end216:                                        ; preds = %if.end203
  %call217 = tail call fastcc i32 @dmz_check_sb(ptr noundef %zmd, ptr noundef nonnull %call7.i.i, i1 noundef zeroext true)
  %92 = ptrtoint ptr %mblk218 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %mblk218, align 4
  %page.i = getelementptr inbounds %struct.dmz_mblock, ptr %93, i32 0, i32 5
  %94 = ptrtoint ptr %page.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %page.i, align 8
  tail call void @__free_pages(ptr noundef %95, i32 noundef 0) #15
  tail call void @kfree(ptr noundef %93) #15
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nr_mblks.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %nr_mblks.i, i32 1, i32 3, i32 1) #15
  %96 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nr_mblks.i, ptr %nr_mblks.i, i32 1, ptr elementtype(i32) %nr_mblks.i) #15, !srcloc !318
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call217)
  %cmp219 = icmp eq i32 %call217, -22
  br i1 %cmp219, label %if.end216.cleanup_crit_edge, label %for.cond

if.end216.cleanup_crit_edge:                      ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup:                                          ; preds = %if.end216.cleanup_crit_edge, %do.end210, %do.end195, %for.cond.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge
  %ret.4 = phi i32 [ %call205, %do.end210 ], [ -22, %do.end195 ], [ %ret.2, %for.cond.preheader.cleanup_crit_edge ], [ %call217, %for.cond.cleanup_crit_edge ], [ -22, %if.end216.cleanup_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #15
  br label %cleanup224

cleanup224:                                       ; preds = %cleanup, %if.then174.cleanup224_crit_edge, %do.end172.cleanup224_crit_edge, %do.end134, %do.end110, %do.end91, %do.end68, %do.end20, %do.end
  %retval.1 = phi i32 [ %call15, %do.end20 ], [ %ret.0, %do.end68 ], [ -5, %do.end134 ], [ -5, %do.end110 ], [ -5, %do.end91 ], [ -6, %do.end ], [ -12, %if.then174.cleanup224_crit_edge ], [ %ret.4, %cleanup ], [ %ret.2, %do.end172.cleanup224_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dmz_mblock_shrinker_count(ptr noundef %shrink, ptr nocapture noundef readnone %sc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_mblks = getelementptr i8, ptr %shrink, i32 -256
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nr_mblks, i32 noundef 4) #15
  %0 = ptrtoint ptr %nr_mblks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %nr_mblks, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dmz_mblock_shrinker_scan(ptr noundef %shrink, ptr nocapture noundef readonly %sc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %shrink, i32 -560
  %mblk_lock = getelementptr i8, ptr %shrink, i32 -64
  tail call void @_raw_spin_lock(ptr noundef %mblk_lock) #15
  %nr_to_scan = getelementptr inbounds %struct.shrink_control, ptr %sc, i32 0, i32 2
  %0 = ptrtoint ptr %nr_to_scan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_to_scan, align 4
  %call = tail call fastcc i32 @dmz_shrink_mblock_cache(ptr noundef %add.ptr, i32 noundef %1)
  tail call void @_raw_spin_unlock(ptr noundef %mblk_lock) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %spec.select = select i1 %tobool.not, i32 -1, i32 %call
  ret i32 %spec.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_shrinker(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dmz_cleanup_metadata(ptr noundef %zmd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %map_mblk = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 39
  %0 = ptrtoint ptr %map_mblk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %map_mblk, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %for.cond.preheader

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

for.cond.preheader:                               ; preds = %entry
  %nr_map_blocks = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 13
  %2 = ptrtoint ptr %nr_map_blocks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_map_blocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp141.not = icmp eq i32 %3, 0
  br i1 %cmp141.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0142 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %4 = ptrtoint ptr %map_mblk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map_mblk, align 8
  %arrayidx = getelementptr ptr, ptr %5, i32 %i.0142
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  tail call fastcc void @dmz_release_mblock(ptr noundef %zmd, ptr noundef %7)
  %inc = add nuw i32 %i.0142, 1
  %8 = ptrtoint ptr %nr_map_blocks to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr_map_blocks, align 4
  %cmp = icmp ult i32 %inc, %9
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %10 = ptrtoint ptr %map_mblk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %map_mblk, align 8
  tail call void @kfree(ptr noundef %11) #15
  %12 = ptrtoint ptr %map_mblk to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %map_mblk, align 8
  br label %if.end

if.end:                                           ; preds = %for.end, %entry.if.end_crit_edge
  %nr_mblks.i = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 30
  %mblk8 = getelementptr %struct.dmz_metadata, ptr %zmd, i32 0, i32 24, i32 0, i32 2
  %13 = ptrtoint ptr %mblk8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mblk8, align 4
  %tobool9.not = icmp eq ptr %14, null
  br i1 %tobool9.not, label %if.end.for.inc18_crit_edge, label %if.then10

if.end.for.inc18_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc18

while.body.lr.ph:                                 ; preds = %for.inc18.1
  %label = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 3
  %mblk_rbtree = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 34
  br label %while.body

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %page.i = getelementptr inbounds %struct.dmz_mblock, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %page.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %page.i, align 8
  tail call void @__free_pages(ptr noundef %16, i32 noundef 0) #15
  tail call void @kfree(ptr noundef nonnull %14) #15
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nr_mblks.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %nr_mblks.i, i32 1, i32 3, i32 1) #15
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nr_mblks.i, ptr %nr_mblks.i, i32 1, ptr elementtype(i32) %nr_mblks.i) #15, !srcloc !318
  %18 = ptrtoint ptr %mblk8 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %mblk8, align 4
  br label %for.inc18

for.inc18:                                        ; preds = %if.then10, %if.end.for.inc18_crit_edge
  %mblk8.1 = getelementptr %struct.dmz_metadata, ptr %zmd, i32 0, i32 24, i32 1, i32 2
  %19 = ptrtoint ptr %mblk8.1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mblk8.1, align 4
  %tobool9.not.1 = icmp eq ptr %20, null
  br i1 %tobool9.not.1, label %for.inc18.for.inc18.1_crit_edge, label %if.then10.1

for.inc18.for.inc18.1_crit_edge:                  ; preds = %for.inc18
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc18.1

if.then10.1:                                      ; preds = %for.inc18
  call void @__sanitizer_cov_trace_pc() #17
  %page.i.1 = getelementptr inbounds %struct.dmz_mblock, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %page.i.1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %page.i.1, align 8
  tail call void @__free_pages(ptr noundef %22, i32 noundef 0) #15
  tail call void @kfree(ptr noundef nonnull %20) #15
  %call.i.i.i.1 = tail call zeroext i1 @__kasan_check_write(ptr noundef %nr_mblks.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %nr_mblks.i, i32 1, i32 3, i32 1) #15
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nr_mblks.i, ptr %nr_mblks.i, i32 1, ptr elementtype(i32) %nr_mblks.i) #15, !srcloc !318
  %24 = ptrtoint ptr %mblk8.1 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %mblk8.1, align 4
  br label %for.inc18.1

for.inc18.1:                                      ; preds = %if.then10.1, %for.inc18.for.inc18.1_crit_edge
  %mblk_dirty_list = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 36
  %25 = ptrtoint ptr %mblk_dirty_list to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %mblk_dirty_list, align 4
  %cmp.i.not144 = icmp eq ptr %26, %mblk_dirty_list
  br i1 %cmp.i.not144, label %for.inc18.1.while.cond26.preheader_crit_edge, label %while.body.lr.ph

for.inc18.1.while.cond26.preheader_crit_edge:     ; preds = %for.inc18.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond26.preheader

while.cond26.preheader:                           ; preds = %list_del_init.exit.while.cond26.preheader_crit_edge, %for.inc18.1.while.cond26.preheader_crit_edge
  %mblk_lru_list = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 35
  %27 = ptrtoint ptr %mblk_lru_list to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %mblk_lru_list, align 4
  %cmp.i126.not145 = icmp eq ptr %28, %mblk_lru_list
  br i1 %cmp.i126.not145, label %while.cond26.preheader.while.end39_crit_edge, label %while.body30.lr.ph

while.cond26.preheader.while.end39_crit_edge:     ; preds = %while.cond26.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end39

while.body30.lr.ph:                               ; preds = %while.cond26.preheader
  %mblk_rbtree38 = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 34
  br label %while.body30

while.body:                                       ; preds = %list_del_init.exit.while.body_crit_edge, %while.body.lr.ph
  %29 = phi ptr [ %26, %while.body.lr.ph ], [ %46, %list_del_init.exit.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %29, i32 -12
  %no = getelementptr i8, ptr %29, i32 12
  %30 = ptrtoint ptr %no to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %no, align 8
  %ref = getelementptr i8, ptr %29, i32 20
  %32 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ref, align 8
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.166, ptr noundef %label, i64 noundef %31, i32 noundef %33) #19
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %29) #15
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del_init.exit_crit_edge

while.body.list_del_init.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %34 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i.i, align 4
  %36 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %29, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %prev1.i.i.i, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %37, ptr %35, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %while.body.list_del_init.exit_crit_edge
  %40 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %29, ptr %29, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %41 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %29, ptr %prev.i3.i, align 4
  tail call void @rb_erase(ptr noundef %add.ptr, ptr noundef %mblk_rbtree) #15
  %page.i123 = getelementptr i8, ptr %29, i32 28
  %42 = ptrtoint ptr %page.i123 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %page.i123, align 8
  tail call void @__free_pages(ptr noundef %43, i32 noundef 0) #15
  tail call void @kfree(ptr noundef %add.ptr) #15
  %call.i.i.i125 = tail call zeroext i1 @__kasan_check_write(ptr noundef %nr_mblks.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %nr_mblks.i, i32 1, i32 3, i32 1) #15
  %44 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nr_mblks.i, ptr %nr_mblks.i, i32 1, ptr elementtype(i32) %nr_mblks.i) #15, !srcloc !318
  %45 = ptrtoint ptr %mblk_dirty_list to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile ptr, ptr %mblk_dirty_list, align 4
  %cmp.i.not = icmp eq ptr %46, %mblk_dirty_list
  br i1 %cmp.i.not, label %list_del_init.exit.while.cond26.preheader_crit_edge, label %list_del_init.exit.while.body_crit_edge

list_del_init.exit.while.body_crit_edge:          ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

list_del_init.exit.while.cond26.preheader_crit_edge: ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond26.preheader

while.body30:                                     ; preds = %list_del_init.exit133.while.body30_crit_edge, %while.body30.lr.ph
  %47 = phi ptr [ %28, %while.body30.lr.ph ], [ %60, %list_del_init.exit133.while.body30_crit_edge ]
  %add.ptr35 = getelementptr i8, ptr %47, i32 -12
  %call.i.i128 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %47) #15
  br i1 %call.i.i128, label %if.end.i.i131, label %while.body30.list_del_init.exit133_crit_edge

while.body30.list_del_init.exit133_crit_edge:     ; preds = %while.body30
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del_init.exit133

if.end.i.i131:                                    ; preds = %while.body30
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i129 = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %prev.i.i129 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %prev.i.i129, align 4
  %50 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %47, align 4
  %prev1.i.i.i130 = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %prev1.i.i.i130 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %49, ptr %prev1.i.i.i130, align 4
  %53 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %51, ptr %49, align 4
  br label %list_del_init.exit133

list_del_init.exit133:                            ; preds = %if.end.i.i131, %while.body30.list_del_init.exit133_crit_edge
  %54 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %47, ptr %47, align 4
  %prev.i3.i132 = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  %55 = ptrtoint ptr %prev.i3.i132 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %47, ptr %prev.i3.i132, align 4
  tail call void @rb_erase(ptr noundef %add.ptr35, ptr noundef %mblk_rbtree38) #15
  %page.i134 = getelementptr i8, ptr %47, i32 28
  %56 = ptrtoint ptr %page.i134 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %page.i134, align 8
  tail call void @__free_pages(ptr noundef %57, i32 noundef 0) #15
  tail call void @kfree(ptr noundef %add.ptr35) #15
  %call.i.i.i136 = tail call zeroext i1 @__kasan_check_write(ptr noundef %nr_mblks.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %nr_mblks.i, i32 1, i32 3, i32 1) #15
  %58 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nr_mblks.i, ptr %nr_mblks.i, i32 1, ptr elementtype(i32) %nr_mblks.i) #15, !srcloc !318
  %59 = ptrtoint ptr %mblk_lru_list to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile ptr, ptr %mblk_lru_list, align 4
  %cmp.i126.not = icmp eq ptr %60, %mblk_lru_list
  br i1 %cmp.i126.not, label %list_del_init.exit133.while.end39_crit_edge, label %list_del_init.exit133.while.body30_crit_edge

list_del_init.exit133.while.body30_crit_edge:     ; preds = %list_del_init.exit133
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body30

list_del_init.exit133.while.end39_crit_edge:      ; preds = %list_del_init.exit133
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end39

while.end39:                                      ; preds = %list_del_init.exit133.while.end39_crit_edge, %while.cond26.preheader.while.end39_crit_edge
  %mblk_rbtree40 = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 34
  %call41 = tail call ptr @rb_first_postorder(ptr noundef %mblk_rbtree40) #15
  %tobool48.not146 = icmp eq ptr %call41, null
  br i1 %tobool48.not146, label %while.end39.for.end75_crit_edge, label %land.rhs.lr.ph

while.end39.for.end75_crit_edge:                  ; preds = %while.end39
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end75

land.rhs.lr.ph:                                   ; preds = %while.end39
  %label68 = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 3
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.land.rhs_crit_edge, %land.rhs.lr.ph
  %mblk.0147 = phi ptr [ %call41, %land.rhs.lr.ph ], [ %call51, %land.rhs.land.rhs_crit_edge ]
  %call51 = tail call ptr @rb_next_postorder(ptr noundef nonnull %mblk.0147) #15
  %no70 = getelementptr inbounds %struct.dmz_mblock, ptr %mblk.0147, i32 0, i32 2
  %61 = ptrtoint ptr %no70 to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %no70, align 8
  %ref71 = getelementptr inbounds %struct.dmz_mblock, ptr %mblk.0147, i32 0, i32 3
  %63 = ptrtoint ptr %ref71 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %ref71, align 8
  %call72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.169, ptr noundef %label68, i64 noundef %62, i32 noundef %64) #19
  %65 = ptrtoint ptr %ref71 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %ref71, align 8
  %page.i137 = getelementptr inbounds %struct.dmz_mblock, ptr %mblk.0147, i32 0, i32 5
  %66 = ptrtoint ptr %page.i137 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %page.i137, align 8
  tail call void @__free_pages(ptr noundef %67, i32 noundef 0) #15
  tail call void @kfree(ptr noundef nonnull %mblk.0147) #15
  %call.i.i.i139 = tail call zeroext i1 @__kasan_check_write(ptr noundef %nr_mblks.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %nr_mblks.i, i32 1, i32 3, i32 1) #15
  %68 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nr_mblks.i, ptr %nr_mblks.i, i32 1, ptr elementtype(i32) %nr_mblks.i) #15, !srcloc !318
  %tobool48.not = icmp eq ptr %call51, null
  br i1 %tobool48.not, label %land.rhs.for.end75_crit_edge, label %land.rhs.land.rhs_crit_edge

land.rhs.land.rhs_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.rhs

land.rhs.for.end75_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end75

for.end75:                                        ; preds = %land.rhs.for.end75_crit_edge, %while.end39.for.end75_crit_edge
  %nr_zones.i = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 14
  %69 = ptrtoint ptr %nr_zones.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %nr_zones.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp10.not.i = icmp eq i32 %70, 0
  br i1 %cmp10.not.i, label %for.end75.dmz_drop_zones.exit_crit_edge, label %for.body.lr.ph.i

for.end75.dmz_drop_zones.exit_crit_edge:          ; preds = %for.end75
  call void @__sanitizer_cov_trace_pc() #17
  br label %dmz_drop_zones.exit

for.body.lr.ph.i:                                 ; preds = %for.end75
  %zones.i = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 23
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %idx.011.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %call.i = tail call ptr @xa_load(ptr noundef %zones.i, i32 noundef %idx.011.i) #15
  tail call void @kfree(ptr noundef %call.i) #15
  %call2.i = tail call ptr @xa_erase(ptr noundef %zones.i, i32 noundef %idx.011.i) #15
  %inc.i = add nuw i32 %idx.011.i, 1
  %71 = ptrtoint ptr %nr_zones.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %nr_zones.i, align 8
  %cmp.i140 = icmp ult i32 %inc.i, %72
  br i1 %cmp.i140, label %for.body.i.for.body.i_crit_edge, label %for.body.i.dmz_drop_zones.exit_crit_edge

for.body.i.dmz_drop_zones.exit_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dmz_drop_zones.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

dmz_drop_zones.exit:                              ; preds = %for.body.i.dmz_drop_zones.exit_crit_edge, %for.end75.dmz_drop_zones.exit_crit_edge
  %zones3.i = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 23
  tail call void @xa_destroy(ptr noundef %zones3.i) #15
  %mblk_flush_lock = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 32
  tail call void @mutex_destroy(ptr noundef %mblk_flush_lock) #15
  %map_lock = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 38
  tail call void @mutex_destroy(ptr noundef %map_lock) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dmz_dtr_metadata(ptr noundef %zmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %mblk_shrinker = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 37
  tail call void @unregister_shrinker(ptr noundef %mblk_shrinker) #15
  tail call fastcc void @dmz_cleanup_metadata(ptr noundef %zmd)
  tail call void @kfree(ptr noundef %zmd) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_shrinker(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dmz_resume_metadata(ptr noundef %zmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_zones = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 14
  %0 = ptrtoint ptr %nr_zones to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_zones, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp89.not = icmp eq i32 %1, 0
  br i1 %cmp89.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %zones.i = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 23
  %label21 = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 3
  %zone_nr_blocks = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.090 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %call.i = tail call ptr @xa_load(ptr noundef %zones.i, i32 noundef %i.090) #15
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %for.body.cleanup.sink.split_crit_edge, label %if.end

for.body.cleanup.sink.split_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split

if.end:                                           ; preds = %for.body
  %wp_block2 = getelementptr inbounds %struct.dm_zone, ptr %call.i, i32 0, i32 5
  %2 = ptrtoint ptr %wp_block2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wp_block2, align 4
  %conv = zext i32 %3 to i64
  %call3 = tail call fastcc i32 @dmz_update_zone(ptr noundef %zmd, ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end13, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split

if.end13:                                         ; preds = %if.end
  %flags = getelementptr inbounds %struct.dm_zone, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags, align 4
  %6 = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool15.not = icmp eq i32 %6, 0
  br i1 %tobool15.not, label %if.end24, label %do.end19

do.end19:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %label21, i32 noundef %i.090) #19
  br label %for.inc

if.end24:                                         ; preds = %if.end13
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags, align 4
  %9 = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool27.not = icmp eq i32 %9, 0
  br i1 %tobool27.not, label %if.then28, label %if.else

if.then28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #17
  %10 = ptrtoint ptr %wp_block2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %wp_block2, align 4
  br label %for.inc

if.else:                                          ; preds = %if.end24
  %11 = ptrtoint ptr %wp_block2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %wp_block2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %3)
  %cmp32.not = icmp eq i32 %12, %3
  br i1 %cmp32.not, label %if.else.for.inc_crit_edge, label %do.end37

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

do.end37:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %conv31 = zext i32 %12 to i64
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef %label21, i32 noundef %i.090, i64 noundef %conv31, i64 noundef %conv) #19
  %13 = ptrtoint ptr %wp_block2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %3, ptr %wp_block2, align 4
  %14 = ptrtoint ptr %zone_nr_blocks to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %zone_nr_blocks, align 8
  %16 = trunc i64 %15 to i32
  %conv50 = sub i32 %16, %3
  %call51 = tail call i32 @dmz_invalidate_blocks(ptr noundef %zmd, ptr noundef nonnull %call.i, i64 noundef %conv, i32 noundef %conv50)
  br label %for.inc

for.inc:                                          ; preds = %do.end37, %if.else.for.inc_crit_edge, %if.then28, %do.end19
  %inc = add nuw i32 %i.090, 1
  %17 = ptrtoint ptr %nr_zones to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nr_zones, align 8
  %cmp = icmp ult i32 %inc, %18
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

cleanup.sink.split:                               ; preds = %if.end.cleanup.sink.split_crit_edge, %for.body.cleanup.sink.split_crit_edge
  %.str.49.sink = phi ptr [ @.str.46, %for.body.cleanup.sink.split_crit_edge ], [ @.str.49, %if.end.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ -5, %for.body.cleanup.sink.split_crit_edge ], [ %call3, %if.end.cleanup.sink.split_crit_edge ]
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.49.sink, ptr noundef %label21, i32 noundef %i.090) #19
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dmz_update_zone(ptr nocapture noundef readonly %zmd, ptr noundef %zone) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.dm_zone, ptr %zone, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %flags = getelementptr inbounds %struct.dmz_dev, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = tail call i32 @llvm.read_register.i32(metadata !302) #15
  %and.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task.i, align 8
  %flags1.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags1.i, align 4
  %and.i = and i32 %9, 524288
  %or.i = or i32 %9, 524288
  store i32 %or.i, ptr %flags1.i, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  %tobool.not.i.i = icmp eq ptr %zone, null
  br i1 %tobool.not.i.i, label %do.end.i.i, label %if.end23.i.i, !prof !312

do.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 223, i32 noundef 9, ptr noundef null) #15
  br label %dmz_start_sect.exit

if.end23.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %id.i.i = getelementptr inbounds %struct.dm_zone, ptr %zone, i32 0, i32 4
  %12 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id.i.i, align 4
  %14 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev1, align 4
  %zone_offset.i.i = getelementptr inbounds %struct.dmz_dev, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %zone_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %zone_offset.i.i, align 8
  %sub.i.i = sub i32 %13, %17
  br label %dmz_start_sect.exit

dmz_start_sect.exit:                              ; preds = %if.end23.i.i, %do.end.i.i
  %retval.0.i.i = phi i32 [ 0, %do.end.i.i ], [ %sub.i.i, %if.end23.i.i ]
  %conv.i = zext i32 %retval.0.i.i to i64
  %zone_nr_sectors_shift.i = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 11
  %18 = ptrtoint ptr %zone_nr_sectors_shift.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %zone_nr_sectors_shift.i, align 8
  %shl.i = shl i64 %conv.i, %19
  %call3 = tail call i32 @blkdev_report_zones(ptr noundef %11, i64 noundef %shl.i, i32 noundef 1, ptr noundef nonnull @dmz_update_zone_cb, ptr noundef %zone) #15
  %20 = tail call i32 @llvm.read_register.i32(metadata !302) #15
  %and.i.i21 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i21 to ptr
  %task.i22 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %task.i22 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task.i22, align 8
  %flags1.i23 = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %flags1.i23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags1.i23, align 4
  %and.i24 = and i32 %25, -524289
  %or.i25 = or i32 %and.i24, %and.i
  store i32 %or.i25, ptr %flags1.i23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp eq i32 %call3, 0
  %spec.store.select = select i1 %cmp, i32 -5, i32 %call3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select)
  %cmp6 = icmp slt i32 %spec.store.select, 0
  br i1 %cmp6, label %do.end, label %dmz_start_sect.exit.cleanup_crit_edge

dmz_start_sect.exit.cleanup_crit_edge:            ; preds = %dmz_start_sect.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end:                                           ; preds = %dmz_start_sect.exit
  call void @__sanitizer_cov_trace_pc() #17
  %name = getelementptr inbounds %struct.dmz_dev, ptr %1, i32 0, i32 3
  %id = getelementptr inbounds %struct.dm_zone, ptr %zone, i32 0, i32 4
  %26 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %id, align 4
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.171, ptr noundef %name, i32 noundef %27) #19
  %call9 = tail call zeroext i1 @dmz_check_bdev(ptr noundef %1) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end, %dmz_start_sect.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.store.select, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %dmz_start_sect.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_start_plug(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_finish_plug(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dmz_mblock_bio_end_io(ptr noundef %bio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
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
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %state = getelementptr inbounds %struct.dmz_mblock, ptr %1, i32 0, i32 4
  tail call void @_set_bit(i32 noundef 3, ptr noundef %state) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %bi_opf = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %4 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bi_opf, align 8
  %and = and i32 %5, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp = icmp eq i32 %and, 1
  %. = select i1 %cmp, i32 2, i32 1
  %state3 = getelementptr inbounds %struct.dmz_mblock, ptr %1, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %state3, i32 noundef 4) #15
  %shl.i.i = shl nuw nsw i32 1, %.
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !314
  tail call void @llvm.prefetch.p0(ptr %state3, i32 1, i32 3, i32 1) #15
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %state3, ptr %state3, i32 %shl.i.i, ptr elementtype(i32) %state3) #15, !srcloc !315
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !321
  tail call void @wake_up_bit(ptr noundef %state3, i32 noundef %.) #15
  tail call void @bio_put(ptr noundef %bio) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bio_add_page(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @submit_bio(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bio_alloc_bioset(i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_associate_blkg(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_put(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @out_of_line_wait_on_bit(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bit_wait_io(ptr noundef, i32 noundef) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #6

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dmz_rdwr_block(ptr noundef %dev, i32 noundef %op, i64 noundef %block, ptr noundef %page) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !312

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 756, i32 noundef 9, ptr noundef null) #15
  br label %cleanup

if.end23:                                         ; preds = %entry
  %call = tail call zeroext i1 @dmz_bdev_is_dying(ptr noundef nonnull %dev) #15
  br i1 %call, label %if.end23.cleanup_crit_edge, label %if.end25

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end25:                                         ; preds = %if.end23
  %call.i = tail call ptr @bio_alloc_bioset(i32 noundef 3072, i16 noundef zeroext 1, ptr noundef nonnull @fs_bio_set) #15
  %tobool27.not = icmp eq ptr %call.i, null
  br i1 %tobool27.not, label %if.end25.cleanup_crit_edge, label %if.end29

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end29:                                         ; preds = %if.end25
  %shl = shl i64 %block, 3
  %bi_iter = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 8
  %0 = ptrtoint ptr %bi_iter to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %shl, ptr %bi_iter, align 8
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 8
  %bi_flags.i.i = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 3
  %3 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %bi_flags.i.i, align 4
  %conv1.i.i = and i16 %4, -2049
  store i16 %conv1.i.i, ptr %bi_flags.i.i, align 4
  %bi_bdev.i = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bi_bdev.i, align 4
  %cmp.not.i = icmp eq ptr %6, %2
  br i1 %cmp.not.i, label %if.end29.bio_set_dev.exit_crit_edge, label %if.then.i

if.end29.bio_set_dev.exit_crit_edge:              ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #17
  br label %bio_set_dev.exit

if.then.i:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #17
  %conv1.i8.i = and i16 %4, -2177
  %7 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv1.i8.i, ptr %bi_flags.i.i, align 4
  br label %bio_set_dev.exit

bio_set_dev.exit:                                 ; preds = %if.then.i, %if.end29.bio_set_dev.exit_crit_edge
  %8 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %2, ptr %bi_bdev.i, align 4
  tail call void @bio_associate_blkg(ptr noundef nonnull %call.i) #15
  %or.i = or i32 %op, 14336
  %bi_opf.i = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 2
  %9 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or.i, ptr %bi_opf.i, align 8
  %call30 = tail call i32 @bio_add_page(ptr noundef nonnull %call.i, ptr noundef %page, i32 noundef 4096, i32 noundef 0) #15
  %call31 = tail call i32 @submit_bio_wait(ptr noundef nonnull %call.i) #15
  tail call void @bio_put(ptr noundef nonnull %call.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %bio_set_dev.exit.cleanup_crit_edge, label %if.then33

bio_set_dev.exit.cleanup_crit_edge:               ; preds = %bio_set_dev.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then33:                                        ; preds = %bio_set_dev.exit
  call void @__sanitizer_cov_trace_pc() #17
  %call34 = tail call zeroext i1 @dmz_check_bdev(ptr noundef nonnull %dev) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then33, %bio_set_dev.exit.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ -5, %if.end23.cleanup_crit_edge ], [ -12, %if.end25.cleanup_crit_edge ], [ %call31, %if.then33 ], [ 0, %bio_set_dev.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @submit_bio_wait(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_to_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @io_schedule_timeout(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_load(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @out_of_line_wait_on_bit_timeout(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bit_wait_timeout(ptr noundef, i32 noundef) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__dmz_lru_zone(ptr noundef %zmd, ptr noundef %zone) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %zone to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %zone, align 4
  %cmp.i.not = icmp eq ptr %1, %zone
  br i1 %cmp.i.not, label %entry.if.end15_crit_edge, label %if.end

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15

if.end:                                           ; preds = %entry
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %zone) #15
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del_init.exit_crit_edge

if.end.list_del_init.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %zone, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %zone to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %zone, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end.list_del_init.exit_crit_edge
  %8 = ptrtoint ptr %zone to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %zone, ptr %zone, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %zone, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %zone, ptr %prev.i3.i, align 4
  %flags = getelementptr inbounds %struct.dm_zone, ptr %zone, i32 0, i32 2
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %flags, align 4
  %12 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool3.not = icmp eq i32 %12, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %list_del_init.exit
  %dev = getelementptr inbounds %struct.dm_zone, ptr %zone, i32 0, i32 1
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %map_seq_list = getelementptr inbounds %struct.dmz_dev, ptr %14, i32 0, i32 18
  %prev.i = getelementptr inbounds %struct.dmz_dev, ptr %14, i32 0, i32 18, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i, align 4
  %call.i.i25 = tail call zeroext i1 @__list_add_valid(ptr noundef %zone, ptr noundef %16, ptr noundef %map_seq_list) #15
  br i1 %call.i.i25, label %if.then4.if.end15.sink.split_crit_edge, label %if.then4.if.end15_crit_edge

if.then4.if.end15_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15

if.then4.if.end15.sink.split_crit_edge:           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split

if.else:                                          ; preds = %list_del_init.exit
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %flags, align 4
  %and1.i24 = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i24)
  %tobool8.not = icmp eq i32 %and1.i24, 0
  br i1 %tobool8.not, label %if.else11, label %if.then9

if.then9:                                         ; preds = %if.else
  %map_cache_list = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 43
  %prev.i27 = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 43, i32 1
  %19 = ptrtoint ptr %prev.i27 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i27, align 4
  %call.i.i28 = tail call zeroext i1 @__list_add_valid(ptr noundef %zone, ptr noundef %20, ptr noundef %map_cache_list) #15
  br i1 %call.i.i28, label %if.then9.if.end15.sink.split_crit_edge, label %if.then9.if.end15_crit_edge

if.then9.if.end15_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15

if.then9.if.end15.sink.split_crit_edge:           ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split

if.else11:                                        ; preds = %if.else
  %dev13 = getelementptr inbounds %struct.dm_zone, ptr %zone, i32 0, i32 1
  %21 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev13, align 4
  %map_rnd_list = getelementptr inbounds %struct.dmz_dev, ptr %22, i32 0, i32 14
  %prev.i32 = getelementptr inbounds %struct.dmz_dev, ptr %22, i32 0, i32 14, i32 1
  %23 = ptrtoint ptr %prev.i32 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i32, align 4
  %call.i.i33 = tail call zeroext i1 @__list_add_valid(ptr noundef %zone, ptr noundef %24, ptr noundef %map_rnd_list) #15
  br i1 %call.i.i33, label %if.else11.if.end15.sink.split_crit_edge, label %if.else11.if.end15_crit_edge

if.else11.if.end15_crit_edge:                     ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15

if.else11.if.end15.sink.split_crit_edge:          ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split

if.end15.sink.split:                              ; preds = %if.else11.if.end15.sink.split_crit_edge, %if.then9.if.end15.sink.split_crit_edge, %if.then4.if.end15.sink.split_crit_edge
  %prev.i32.sink = phi ptr [ %prev.i, %if.then4.if.end15.sink.split_crit_edge ], [ %prev.i27, %if.then9.if.end15.sink.split_crit_edge ], [ %prev.i32, %if.else11.if.end15.sink.split_crit_edge ]
  %map_rnd_list.sink = phi ptr [ %map_seq_list, %if.then4.if.end15.sink.split_crit_edge ], [ %map_cache_list, %if.then9.if.end15.sink.split_crit_edge ], [ %map_rnd_list, %if.else11.if.end15.sink.split_crit_edge ]
  %.sink37 = phi ptr [ %16, %if.then4.if.end15.sink.split_crit_edge ], [ %20, %if.then9.if.end15.sink.split_crit_edge ], [ %24, %if.else11.if.end15.sink.split_crit_edge ]
  %25 = ptrtoint ptr %prev.i32.sink to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %zone, ptr %prev.i32.sink, align 4
  %26 = ptrtoint ptr %zone to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %map_rnd_list.sink, ptr %zone, align 4
  %27 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %.sink37, ptr %prev.i3.i, align 4
  %28 = ptrtoint ptr %.sink37 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %zone, ptr %.sink37, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.end15.sink.split, %if.else11.if.end15_crit_edge, %if.then9.if.end15_crit_edge, %if.then4.if.end15_crit_edge, %entry.if.end15_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dmz_reclaim_bio_acc(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkdev_zone_mgmt(ptr noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @dmz_get_mblock(ptr noundef %zmd, i64 noundef %mblk_no) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %mblk_primary = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 25
  %0 = ptrtoint ptr %mblk_primary to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mblk_primary, align 8
  %dev1 = getelementptr %struct.dmz_metadata, ptr %zmd, i32 0, i32 24, i32 %1, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 8
  %mblk_lock = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 33
  tail call void @_raw_spin_lock(ptr noundef %mblk_lock) #15
  %mblk_rbtree.i = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 34
  %4 = ptrtoint ptr %mblk_rbtree.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %node.023.i = load ptr, ptr %mblk_rbtree.i, align 4
  %tobool.not24.i = icmp eq ptr %node.023.i, null
  br i1 %tobool.not24.i, label %entry.if.then_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

while.body.i:                                     ; preds = %if.end5.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %node.025.i = phi ptr [ %node.0.i, %if.end5.i.while.body.i_crit_edge ], [ %node.023.i, %entry.while.body.i_crit_edge ]
  %no.i = getelementptr inbounds %struct.dmz_mblock, ptr %node.025.i, i32 0, i32 2
  %5 = ptrtoint ptr %no.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %no.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %6, i64 %mblk_no)
  %cmp.i = icmp eq i64 %6, %mblk_no
  br i1 %cmp.i, label %if.then.i, label %if.end5.i

if.then.i:                                        ; preds = %while.body.i
  %ref.i = getelementptr inbounds %struct.dmz_mblock, ptr %node.025.i, i32 0, i32 3
  %7 = ptrtoint ptr %ref.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ref.i, align 8
  %inc.i = add i32 %8, 1
  store i32 %inc.i, ptr %ref.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp2.i = icmp eq i32 %8, 0
  br i1 %cmp2.i, label %land.lhs.true.i, label %if.then.i.dmz_get_mblock_fast.exit.thread_crit_edge

if.then.i.dmz_get_mblock_fast.exit.thread_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dmz_get_mblock_fast.exit.thread

land.lhs.true.i:                                  ; preds = %if.then.i
  %state.i = getelementptr inbounds %struct.dmz_mblock, ptr %node.025.i, i32 0, i32 4
  %9 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool3.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %land.lhs.true.i.dmz_get_mblock_fast.exit.thread_crit_edge

land.lhs.true.i.dmz_get_mblock_fast.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dmz_get_mblock_fast.exit.thread

if.then4.i:                                       ; preds = %land.lhs.true.i
  %link.i = getelementptr inbounds %struct.dmz_mblock, ptr %node.025.i, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %link.i) #15
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then4.i.list_del_init.exit.i_crit_edge

if.then4.i.list_del_init.exit.i_crit_edge:        ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i = getelementptr inbounds %struct.dmz_mblock, ptr %node.025.i, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i.i, align 4
  %13 = ptrtoint ptr %link.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %link.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.then4.i.list_del_init.exit.i_crit_edge
  %17 = ptrtoint ptr %link.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %link.i, ptr %link.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.dmz_mblock, ptr %node.025.i, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %link.i, ptr %prev.i3.i.i, align 4
  br label %dmz_get_mblock_fast.exit.thread

if.end5.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_cmp8(i64 %6, i64 %mblk_no)
  %cmp7.i = icmp ult i64 %6, %mblk_no
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %node.025.i, i32 0, i32 2
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %node.025.i, i32 0, i32 1
  %cond.in.i = select i1 %cmp7.i, ptr %rb_left.i, ptr %rb_right.i
  %19 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %node.0.i = load ptr, ptr %cond.in.i, align 4
  %tobool.not.i = icmp eq ptr %node.0.i, null
  br i1 %tobool.not.i, label %if.end5.i.if.then_crit_edge, label %if.end5.i.while.body.i_crit_edge

if.end5.i.while.body.i_crit_edge:                 ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i

if.end5.i.if.then_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

dmz_get_mblock_fast.exit.thread:                  ; preds = %list_del_init.exit.i, %land.lhs.true.i.dmz_get_mblock_fast.exit.thread_crit_edge, %if.then.i.dmz_get_mblock_fast.exit.thread_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %mblk_lock) #15
  br label %if.end6

if.then:                                          ; preds = %if.end5.i.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %mblk_lock) #15
  %20 = ptrtoint ptr %mblk_primary to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mblk_primary, align 8
  %arrayidx.i = getelementptr %struct.dmz_metadata, ptr %zmd, i32 0, i32 24, i32 %21
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %arrayidx.i, align 8
  %add.i = add i64 %23, %mblk_no
  %dev5.i = getelementptr %struct.dmz_metadata, ptr %zmd, i32 0, i32 24, i32 %21, i32 1
  %24 = ptrtoint ptr %dev5.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev5.i, align 8
  %call.i = tail call zeroext i1 @dmz_bdev_is_dying(ptr noundef %25) #15
  br i1 %call.i, label %if.then.cleanup_crit_edge, label %if.end.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %call7.i = tail call fastcc ptr @dmz_alloc_mblock(ptr noundef %zmd, i64 noundef %mblk_no) #15
  %tobool.not.i29 = icmp eq ptr %call7.i, null
  br i1 %tobool.not.i29, label %if.end.i.cleanup_crit_edge, label %if.end10.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end10.i:                                       ; preds = %if.end.i
  %call.i.i = tail call ptr @bio_alloc_bioset(i32 noundef 3072, i16 noundef zeroext 1, ptr noundef nonnull @fs_bio_set) #15
  %tobool12.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool12.not.i, label %if.then13.i, label %if.end15.i

if.then13.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #17
  %page.i.i = getelementptr inbounds %struct.dmz_mblock, ptr %call7.i, i32 0, i32 5
  %26 = ptrtoint ptr %page.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %page.i.i, align 8
  tail call void @__free_pages(ptr noundef %27, i32 noundef 0) #15
  tail call void @kfree(ptr noundef nonnull %call7.i) #15
  %nr_mblks.i.i = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 30
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nr_mblks.i.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %nr_mblks.i.i, i32 1, i32 3, i32 1) #15
  %28 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nr_mblks.i.i, ptr %nr_mblks.i.i, i32 1, ptr elementtype(i32) %nr_mblks.i.i) #15, !srcloc !318
  br label %cleanup

if.end15.i:                                       ; preds = %if.end10.i
  tail call void @_raw_spin_lock(ptr noundef %mblk_lock) #15
  %29 = ptrtoint ptr %mblk_rbtree.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %node.023.i.i = load ptr, ptr %mblk_rbtree.i, align 4
  %tobool.not24.i.i = icmp eq ptr %node.023.i.i, null
  br i1 %tobool.not24.i.i, label %if.end15.i.if.end20.i_crit_edge, label %if.end15.i.while.body.i.i_crit_edge

if.end15.i.while.body.i.i_crit_edge:              ; preds = %if.end15.i
  br label %while.body.i.i

if.end15.i.if.end20.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20.i

while.body.i.i:                                   ; preds = %if.end5.i.i.while.body.i.i_crit_edge, %if.end15.i.while.body.i.i_crit_edge
  %node.025.i.i = phi ptr [ %node.0.i.i, %if.end5.i.i.while.body.i.i_crit_edge ], [ %node.023.i.i, %if.end15.i.while.body.i.i_crit_edge ]
  %no.i.i = getelementptr inbounds %struct.dmz_mblock, ptr %node.025.i.i, i32 0, i32 2
  %30 = ptrtoint ptr %no.i.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %no.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %31, i64 %mblk_no)
  %cmp.i.i = icmp eq i64 %31, %mblk_no
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end5.i.i

if.then.i.i:                                      ; preds = %while.body.i.i
  %ref.i.i = getelementptr inbounds %struct.dmz_mblock, ptr %node.025.i.i, i32 0, i32 3
  %32 = ptrtoint ptr %ref.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ref.i.i, align 8
  %inc.i.i = add i32 %33, 1
  store i32 %inc.i.i, ptr %ref.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp2.i.i = icmp eq i32 %33, 0
  br i1 %cmp2.i.i, label %land.lhs.true.i.i, label %if.then.i.i.if.then18.i_crit_edge

if.then.i.i.if.then18.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then18.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i
  %state.i.i = getelementptr inbounds %struct.dmz_mblock, ptr %node.025.i.i, i32 0, i32 4
  %34 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool3.not.i.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool3.not.i.i, label %if.then4.i.i, label %land.lhs.true.i.i.if.then18.i_crit_edge

land.lhs.true.i.i.if.then18.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then18.i

if.then4.i.i:                                     ; preds = %land.lhs.true.i.i
  %link.i.i = getelementptr inbounds %struct.dmz_mblock, ptr %node.025.i.i, i32 0, i32 1
  %call.i.i.i58.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %link.i.i) #15
  br i1 %call.i.i.i58.i, label %if.end.i.i.i.i, label %if.then4.i.i.list_del_init.exit.i.i_crit_edge

if.then4.i.i.list_del_init.exit.i.i_crit_edge:    ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del_init.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i.i = getelementptr inbounds %struct.dmz_mblock, ptr %node.025.i.i, i32 0, i32 1, i32 1
  %36 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev.i.i.i.i, align 4
  %38 = ptrtoint ptr %link.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %link.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %37, ptr %prev1.i.i.i.i.i, align 4
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %39, ptr %37, align 4
  br label %list_del_init.exit.i.i

list_del_init.exit.i.i:                           ; preds = %if.end.i.i.i.i, %if.then4.i.i.list_del_init.exit.i.i_crit_edge
  %42 = ptrtoint ptr %link.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %link.i.i, ptr %link.i.i, align 4
  %prev.i3.i.i.i = getelementptr inbounds %struct.dmz_mblock, ptr %node.025.i.i, i32 0, i32 1, i32 1
  %43 = ptrtoint ptr %prev.i3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %link.i.i, ptr %prev.i3.i.i.i, align 4
  br label %if.then18.i

if.end5.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %31, i64 %mblk_no)
  %cmp7.i.i = icmp ult i64 %31, %mblk_no
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %node.025.i.i, i32 0, i32 2
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %node.025.i.i, i32 0, i32 1
  %cond.in.i.i = select i1 %cmp7.i.i, ptr %rb_left.i.i, ptr %rb_right.i.i
  %44 = ptrtoint ptr %cond.in.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %node.0.i.i = load ptr, ptr %cond.in.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %node.0.i.i, null
  br i1 %tobool.not.i.i, label %if.end5.i.i.if.end20.i_crit_edge, label %if.end5.i.i.while.body.i.i_crit_edge

if.end5.i.i.while.body.i.i_crit_edge:             ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i.i

if.end5.i.i.if.end20.i_crit_edge:                 ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20.i

if.then18.i:                                      ; preds = %list_del_init.exit.i.i, %land.lhs.true.i.i.if.then18.i_crit_edge, %if.then.i.i.if.then18.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %mblk_lock) #15
  %page.i59.i = getelementptr inbounds %struct.dmz_mblock, ptr %call7.i, i32 0, i32 5
  %45 = ptrtoint ptr %page.i59.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %page.i59.i, align 8
  tail call void @__free_pages(ptr noundef %46, i32 noundef 0) #15
  tail call void @kfree(ptr noundef nonnull %call7.i) #15
  %nr_mblks.i60.i = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 30
  %call.i.i.i61.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nr_mblks.i60.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %nr_mblks.i60.i, i32 1, i32 3, i32 1) #15
  %47 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nr_mblks.i60.i, ptr %nr_mblks.i60.i, i32 1, ptr elementtype(i32) %nr_mblks.i60.i) #15, !srcloc !318
  tail call void @bio_put(ptr noundef nonnull %call.i.i) #15
  br label %dmz_get_mblock_slow.exit

if.end20.i:                                       ; preds = %if.end5.i.i.if.end20.i_crit_edge, %if.end15.i.if.end20.i_crit_edge
  %ref.i30 = getelementptr inbounds %struct.dmz_mblock, ptr %call7.i, i32 0, i32 3
  %48 = ptrtoint ptr %ref.i30 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ref.i30, align 8
  %inc.i31 = add i32 %49, 1
  store i32 %inc.i31, ptr %ref.i30, align 8
  %state.i32 = getelementptr inbounds %struct.dmz_mblock, ptr %call7.i, i32 0, i32 4
  tail call void @_set_bit(i32 noundef 1, ptr noundef %state.i32) #15
  %50 = ptrtoint ptr %mblk_rbtree.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mblk_rbtree.i, align 4
  %tobool.not11.i.i = icmp eq ptr %51, null
  br i1 %tobool.not11.i.i, label %if.end20.i.dmz_insert_mblock.exit.i_crit_edge, label %while.body.lr.ph.i.i

if.end20.i.dmz_insert_mblock.exit.i_crit_edge:    ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dmz_insert_mblock.exit.i

while.body.lr.ph.i.i:                             ; preds = %if.end20.i
  %no1.i.i = getelementptr inbounds %struct.dmz_mblock, ptr %call7.i, i32 0, i32 2
  %52 = ptrtoint ptr %no1.i.i to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %no1.i.i, align 8
  br label %while.body.i68.i

while.body.i68.i:                                 ; preds = %while.body.i68.i.while.body.i68.i_crit_edge, %while.body.lr.ph.i.i
  %54 = phi ptr [ %51, %while.body.lr.ph.i.i ], [ %58, %while.body.i68.i.while.body.i68.i_crit_edge ]
  %no.i63.i = getelementptr inbounds %struct.dmz_mblock, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %no.i63.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %no.i63.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %56, i64 %53)
  %cmp.i64.i = icmp ult i64 %56, %53
  %rb_left.i65.i = getelementptr inbounds %struct.rb_node, ptr %54, i32 0, i32 2
  %rb_right.i66.i = getelementptr inbounds %struct.rb_node, ptr %54, i32 0, i32 1
  %cond.i.i = select i1 %cmp.i64.i, ptr %rb_left.i65.i, ptr %rb_right.i66.i
  %57 = ptrtoint ptr %cond.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cond.i.i, align 4
  %tobool.not.i67.i = icmp eq ptr %58, null
  br i1 %tobool.not.i67.i, label %while.cond.while.end_crit_edge.i.i, label %while.body.i68.i.while.body.i68.i_crit_edge

while.body.i68.i.while.body.i68.i_crit_edge:      ; preds = %while.body.i68.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i68.i

while.cond.while.end_crit_edge.i.i:               ; preds = %while.body.i68.i
  call void @__sanitizer_cov_trace_pc() #17
  %phi.cast.le.i.i = ptrtoint ptr %54 to i32
  br label %dmz_insert_mblock.exit.i

dmz_insert_mblock.exit.i:                         ; preds = %while.cond.while.end_crit_edge.i.i, %if.end20.i.dmz_insert_mblock.exit.i_crit_edge
  %parent.0.lcssa.i.i = phi i32 [ %phi.cast.le.i.i, %while.cond.while.end_crit_edge.i.i ], [ 0, %if.end20.i.dmz_insert_mblock.exit.i_crit_edge ]
  %new.0.lcssa.i.i = phi ptr [ %cond.i.i, %while.cond.while.end_crit_edge.i.i ], [ %mblk_rbtree.i, %if.end20.i.dmz_insert_mblock.exit.i_crit_edge ]
  %59 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %parent.0.lcssa.i.i, ptr %call7.i, align 4
  %rb_right.i.i.i = getelementptr inbounds %struct.rb_node, ptr %call7.i, i32 0, i32 1
  %60 = ptrtoint ptr %rb_right.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %rb_right.i.i.i, align 4
  %rb_left.i.i.i = getelementptr inbounds %struct.rb_node, ptr %call7.i, i32 0, i32 2
  %61 = ptrtoint ptr %rb_left.i.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %rb_left.i.i.i, align 4
  %62 = ptrtoint ptr %new.0.lcssa.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call7.i, ptr %new.0.lcssa.i.i, align 4
  tail call void @rb_insert_color(ptr noundef nonnull %call7.i, ptr noundef %mblk_rbtree.i) #15
  tail call void @_raw_spin_unlock(ptr noundef %mblk_lock) #15
  %shl.i = shl i64 %add.i, 3
  %bi_iter.i = getelementptr inbounds %struct.bio, ptr %call.i.i, i32 0, i32 8
  %63 = ptrtoint ptr %bi_iter.i to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %shl.i, ptr %bi_iter.i, align 8
  %64 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %25, align 8
  %bi_flags.i.i.i = getelementptr inbounds %struct.bio, ptr %call.i.i, i32 0, i32 3
  %66 = ptrtoint ptr %bi_flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %bi_flags.i.i.i, align 4
  %conv1.i.i.i = and i16 %67, -2049
  store i16 %conv1.i.i.i, ptr %bi_flags.i.i.i, align 4
  %bi_bdev.i.i = getelementptr inbounds %struct.bio, ptr %call.i.i, i32 0, i32 1
  %68 = ptrtoint ptr %bi_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %bi_bdev.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %69, %65
  br i1 %cmp.not.i.i, label %dmz_insert_mblock.exit.i.bio_set_dev.exit.i_crit_edge, label %if.then.i69.i

dmz_insert_mblock.exit.i.bio_set_dev.exit.i_crit_edge: ; preds = %dmz_insert_mblock.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %bio_set_dev.exit.i

if.then.i69.i:                                    ; preds = %dmz_insert_mblock.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv1.i8.i.i = and i16 %67, -2177
  %70 = ptrtoint ptr %bi_flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %conv1.i8.i.i, ptr %bi_flags.i.i.i, align 4
  br label %bio_set_dev.exit.i

bio_set_dev.exit.i:                               ; preds = %if.then.i69.i, %dmz_insert_mblock.exit.i.bio_set_dev.exit.i_crit_edge
  %71 = ptrtoint ptr %bi_bdev.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %65, ptr %bi_bdev.i.i, align 4
  tail call void @bio_associate_blkg(ptr noundef nonnull %call.i.i) #15
  %bi_private.i = getelementptr inbounds %struct.bio, ptr %call.i.i, i32 0, i32 11
  %72 = ptrtoint ptr %bi_private.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call7.i, ptr %bi_private.i, align 4
  %bi_end_io.i = getelementptr inbounds %struct.bio, ptr %call.i.i, i32 0, i32 10
  %73 = ptrtoint ptr %bi_end_io.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @dmz_mblock_bio_end_io, ptr %bi_end_io.i, align 8
  %bi_opf.i.i = getelementptr inbounds %struct.bio, ptr %call.i.i, i32 0, i32 2
  %74 = ptrtoint ptr %bi_opf.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 12288, ptr %bi_opf.i.i, align 8
  %page.i = getelementptr inbounds %struct.dmz_mblock, ptr %call7.i, i32 0, i32 5
  %75 = ptrtoint ptr %page.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %page.i, align 8
  %call22.i = tail call i32 @bio_add_page(ptr noundef nonnull %call.i.i, ptr noundef %76, i32 noundef 4096, i32 noundef 0) #15
  tail call void @submit_bio(ptr noundef nonnull %call.i.i) #15
  br label %dmz_get_mblock_slow.exit

dmz_get_mblock_slow.exit:                         ; preds = %bio_set_dev.exit.i, %if.then18.i
  %retval.0.i = phi ptr [ %node.025.i.i, %if.then18.i ], [ %call7.i, %bio_set_dev.exit.i ]
  %cmp.i33 = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i33, label %dmz_get_mblock_slow.exit.cleanup_crit_edge, label %dmz_get_mblock_slow.exit.if.end6_crit_edge

dmz_get_mblock_slow.exit.if.end6_crit_edge:       ; preds = %dmz_get_mblock_slow.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6

dmz_get_mblock_slow.exit.cleanup_crit_edge:       ; preds = %dmz_get_mblock_slow.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end6:                                          ; preds = %dmz_get_mblock_slow.exit.if.end6_crit_edge, %dmz_get_mblock_fast.exit.thread
  %mblk.0 = phi ptr [ %retval.0.i, %dmz_get_mblock_slow.exit.if.end6_crit_edge ], [ %node.025.i, %dmz_get_mblock_fast.exit.thread ]
  %state = getelementptr inbounds %struct.dmz_mblock, ptr %mblk.0, i32 0, i32 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.56, i32 noundef 98) #15
  %77 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %state, align 4
  %79 = and i32 %78, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool.not.i34 = icmp eq i32 %79, 0
  br i1 %tobool.not.i34, label %if.end6.wait_on_bit_io.exit_crit_edge, label %if.end.i35

if.end6.wait_on_bit_io.exit_crit_edge:            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %wait_on_bit_io.exit

if.end.i35:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  %call3.i = tail call i32 @out_of_line_wait_on_bit(ptr noundef %state, i32 noundef 1, ptr noundef nonnull @bit_wait_io, i32 noundef 2) #15
  br label %wait_on_bit_io.exit

wait_on_bit_io.exit:                              ; preds = %if.end.i35, %if.end6.wait_on_bit_io.exit_crit_edge
  %80 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile i32, ptr %state, align 4
  %82 = and i32 %81, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool10.not = icmp eq i32 %82, 0
  br i1 %tobool10.not, label %wait_on_bit_io.exit.cleanup_crit_edge, label %if.then11

wait_on_bit_io.exit.cleanup_crit_edge:            ; preds = %wait_on_bit_io.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then11:                                        ; preds = %wait_on_bit_io.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @dmz_release_mblock(ptr noundef %zmd, ptr noundef %mblk.0)
  %call12 = tail call zeroext i1 @dmz_check_bdev(ptr noundef %3) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %wait_on_bit_io.exit.cleanup_crit_edge, %dmz_get_mblock_slow.exit.cleanup_crit_edge, %if.then13.i, %if.end.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -5 to ptr), %if.then11 ], [ %retval.0.i, %dmz_get_mblock_slow.exit.cleanup_crit_edge ], [ %mblk.0, %wait_on_bit_io.exit.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.i.cleanup_crit_edge ], [ inttoptr (i32 -5 to ptr), %if.then.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then13.i ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @dmz_alloc_mblock(ptr noundef %zmd, i64 noundef %mblk_no) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %max_nr_mblks = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 29
  %0 = ptrtoint ptr %max_nr_mblks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_nr_mblks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end11_crit_edge, label %land.lhs.true

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

land.lhs.true:                                    ; preds = %entry
  %nr_mblks = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 30
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nr_mblks, i32 noundef 4) #15
  %2 = ptrtoint ptr %nr_mblks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %nr_mblks, align 4
  %4 = ptrtoint ptr %max_nr_mblks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_nr_mblks, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp = icmp ugt i32 %3, %5
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end11_crit_edge

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

if.then:                                          ; preds = %land.lhs.true
  %mblk_lock = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 33
  tail call void @_raw_spin_lock(ptr noundef %mblk_lock) #15
  %mblk_lru_list = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 35
  %6 = ptrtoint ptr %mblk_lru_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %mblk_lru_list, align 4
  %cmp3.not = icmp eq ptr %7, %mblk_lru_list
  %add.ptr = getelementptr i8, ptr %7, i32 -12
  %tobool5.not58 = icmp eq ptr %add.ptr, null
  %tobool5.not = or i1 %cmp3.not, %tobool5.not58
  br i1 %tobool5.not, label %if.end11.critedge, label %if.then6

if.then6:                                         ; preds = %if.then
  %call.i.i57 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %7) #15
  br i1 %call.i.i57, label %if.end.i.i, label %if.then6.list_del_init.exit_crit_edge

if.then6.list_del_init.exit_crit_edge:            ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then6.list_del_init.exit_crit_edge
  %14 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %7, ptr %7, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %7, ptr %prev.i3.i, align 4
  %mblk_rbtree = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 34
  tail call void @rb_erase(ptr noundef nonnull %add.ptr, ptr noundef %mblk_rbtree) #15
  %no = getelementptr i8, ptr %7, i32 12
  %16 = ptrtoint ptr %no to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %mblk_no, ptr %no, align 8
  tail call void @_raw_spin_unlock(ptr noundef %mblk_lock) #15
  br label %cleanup

if.end11.critedge:                                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_raw_spin_unlock(ptr noundef %mblk_lock) #15
  br label %if.end11

if.end11:                                         ; preds = %if.end11.critedge, %land.lhs.true.if.end11_crit_edge, %entry.if.end11_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %17 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3072, i32 noundef 48) #20
  %tobool13.not = icmp eq ptr %call7.i, null
  br i1 %tobool13.not, label %if.end11.cleanup_crit_edge, label %if.end15

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef 3072, i32 noundef 0, i32 noundef 0, ptr noundef null) #15
  %page = getelementptr inbounds %struct.dmz_mblock, ptr %call7.i, i32 0, i32 5
  %18 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call38.i.i.i, ptr %page, align 8
  %tobool18.not = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool18.not, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree(ptr noundef nonnull %call7.i) #15
  br label %cleanup

if.end20:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  %19 = ptrtoint ptr %call7.i to i32
  %20 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %call7.i, align 8
  %link23 = getelementptr inbounds %struct.dmz_mblock, ptr %call7.i, i32 0, i32 1
  %21 = ptrtoint ptr %link23 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %link23, ptr %link23, align 4
  %prev.i = getelementptr inbounds %struct.dmz_mblock, ptr %call7.i, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %link23, ptr %prev.i, align 8
  %ref = getelementptr inbounds %struct.dmz_mblock, ptr %call7.i, i32 0, i32 3
  %23 = ptrtoint ptr %ref to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %ref, align 8
  %state = getelementptr inbounds %struct.dmz_mblock, ptr %call7.i, i32 0, i32 4
  %24 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %state, align 4
  %no24 = getelementptr inbounds %struct.dmz_mblock, ptr %call7.i, i32 0, i32 2
  %25 = ptrtoint ptr %no24 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %mblk_no, ptr %no24, align 8
  %call26 = tail call ptr @page_address(ptr noundef nonnull %call38.i.i.i) #15
  %data = getelementptr inbounds %struct.dmz_mblock, ptr %call7.i, i32 0, i32 6
  %26 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call26, ptr %data, align 4
  %nr_mblks27 = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 30
  %call.i.i56 = tail call zeroext i1 @__kasan_check_write(ptr noundef %nr_mblks27, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %nr_mblks27, i32 1, i32 3, i32 1) #15
  %27 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nr_mblks27, ptr %nr_mblks27, i32 1, ptr elementtype(i32) %nr_mblks27) #15, !srcloc !317
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.then19, %if.end11.cleanup_crit_edge, %list_del_init.exit
  %retval.0 = phi ptr [ %add.ptr, %list_del_init.exit ], [ %call7.i, %if.end20 ], [ null, %if.then19 ], [ null, %if.end11.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dmz_free_mblock(ptr noundef %zmd, ptr noundef %mblk) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %page = getelementptr inbounds %struct.dmz_mblock, ptr %mblk, i32 0, i32 5
  %0 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %page, align 8
  tail call void @__free_pages(ptr noundef %1, i32 noundef 0) #15
  tail call void @kfree(ptr noundef %mblk) #15
  %nr_mblks = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 30
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nr_mblks, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %nr_mblks, i32 1, i32 3, i32 1) #15
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nr_mblks, ptr %nr_mblks, i32 1, ptr elementtype(i32) %nr_mblks) #15, !srcloc !318
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dmz_shrink_mblock_cache(ptr noundef %zmd, i32 noundef %limit) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %max_nr_mblks = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 29
  %0 = ptrtoint ptr %max_nr_mblks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_nr_mblks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %while.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %mblk_lru_list = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 35
  %2 = ptrtoint ptr %mblk_lru_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %mblk_lru_list, align 4
  %cmp.i.not18 = icmp eq ptr %3, %mblk_lru_list
  br i1 %cmp.i.not18, label %while.cond.preheader.cleanup_crit_edge, label %land.lhs.true.lr.ph

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true.lr.ph:                              ; preds = %while.cond.preheader
  %nr_mblks = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 30
  %min_nr_mblks = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 28
  %mblk_rbtree = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 34
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %list_del_init.exit.land.lhs.true_crit_edge, %land.lhs.true.lr.ph
  %count.019 = phi i32 [ 0, %land.lhs.true.lr.ph ], [ %inc, %list_del_init.exit.land.lhs.true_crit_edge ]
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nr_mblks, i32 noundef 4) #15
  %4 = ptrtoint ptr %nr_mblks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %nr_mblks, align 4
  %6 = ptrtoint ptr %min_nr_mblks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %min_nr_mblks, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp = icmp ugt i32 %5, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %count.019, i32 %limit)
  %cmp3 = icmp ult i32 %count.019, %limit
  %or.cond = select i1 %cmp, i1 %cmp3, i1 false
  br i1 %or.cond, label %while.body, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

while.body:                                       ; preds = %land.lhs.true
  %8 = ptrtoint ptr %mblk_lru_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mblk_lru_list, align 8
  %add.ptr = getelementptr i8, ptr %9, i32 -12
  %call.i.i17 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %9) #15
  br i1 %call.i.i17, label %if.end.i.i, label %while.body.list_del_init.exit_crit_edge

while.body.list_del_init.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %9, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %while.body.list_del_init.exit_crit_edge
  %16 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %9, ptr %9, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %9, ptr %prev.i3.i, align 4
  tail call void @rb_erase(ptr noundef %add.ptr, ptr noundef %mblk_rbtree) #15
  %page.i = getelementptr i8, ptr %9, i32 28
  %18 = ptrtoint ptr %page.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %page.i, align 8
  tail call void @__free_pages(ptr noundef %19, i32 noundef 0) #15
  tail call void @kfree(ptr noundef %add.ptr) #15
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nr_mblks, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %nr_mblks, i32 1, i32 3, i32 1) #15
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nr_mblks, ptr %nr_mblks, i32 1, ptr elementtype(i32) %nr_mblks) #15, !srcloc !318
  %inc = add nuw i32 %count.019, 1
  %21 = ptrtoint ptr %mblk_lru_list to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %mblk_lru_list, align 4
  %cmp.i.not = icmp eq ptr %22, %mblk_lru_list
  br i1 %cmp.i.not, label %list_del_init.exit.cleanup_crit_edge, label %list_del_init.exit.land.lhs.true_crit_edge

list_del_init.exit.land.lhs.true_crit_edge:       ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true

list_del_init.exit.cleanup_crit_edge:             ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup:                                          ; preds = %list_del_init.exit.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %while.cond.preheader.cleanup_crit_edge ], [ %inc, %list_del_init.exit.cleanup_crit_edge ], [ %count.019, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkdev_report_zones(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dmz_init_zone(ptr nocapture noundef readonly %blkz, i32 noundef %num, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %metadata = getelementptr inbounds %struct.dmz_dev, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %metadata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %metadata, align 4
  %zone_offset = getelementptr inbounds %struct.dmz_dev, ptr %data, i32 0, i32 8
  %2 = ptrtoint ptr %zone_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %zone_offset, align 8
  %add = add i32 %3, %num
  %call = tail call fastcc ptr @dmz_insert(ptr noundef %1, i32 noundef %add, ptr noundef %data)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %4 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %len = getelementptr inbounds %struct.blk_zone, ptr %blkz, i32 0, i32 1
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %len, align 8
  %zone_nr_sectors = getelementptr inbounds %struct.dmz_metadata, ptr %1, i32 0, i32 10
  %7 = ptrtoint ptr %zone_nr_sectors to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %zone_nr_sectors, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %6, i64 %8)
  %cmp.not = icmp eq i64 %6, %8
  br i1 %cmp.not, label %if.end12, label %if.then3

if.then3:                                         ; preds = %if.end
  %sb_version = getelementptr inbounds %struct.dmz_metadata, ptr %1, i32 0, i32 26
  %9 = ptrtoint ptr %sb_version to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sb_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp4 = icmp ugt i32 %10, 1
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #17
  %flags = getelementptr inbounds %struct.dm_zone, ptr %call, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 3, ptr noundef %flags) #15
  br label %cleanup

if.else:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #17
  %11 = ptrtoint ptr %blkz to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %blkz, align 8
  %add7 = add i64 %12, %6
  %capacity = getelementptr inbounds %struct.dmz_dev, ptr %data, i32 0, i32 5
  %13 = ptrtoint ptr %capacity to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %capacity, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add7, i64 %14)
  %cmp8 = icmp eq i64 %add7, %14
  %. = select i1 %cmp8, i32 0, i32 -6
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %capacity13 = getelementptr inbounds %struct.blk_zone, ptr %blkz, i32 0, i32 8
  %15 = ptrtoint ptr %capacity13 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %capacity13, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %16, i64 %6)
  %cmp15.not = icmp eq i64 %16, %6
  br i1 %cmp15.not, label %if.end17, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  %type = getelementptr inbounds %struct.blk_zone, ptr %blkz, i32 0, i32 3
  %17 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %type, align 8
  %switch.tableidx = add i8 %18, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %switch.tableidx)
  %19 = icmp ult i8 %switch.tableidx, 3
  br i1 %19, label %switch.lookup, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

switch.lookup:                                    ; preds = %if.end17
  %20 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.dmz_init_zone, i32 0, i32 %20
  %21 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %21)
  %switch.load = load i32, ptr %switch.gep, align 4
  %flags20 = getelementptr inbounds %struct.dm_zone, ptr %call, i32 0, i32 2
  tail call void @_set_bit(i32 noundef %switch.load, ptr noundef %flags20) #15
  %flags21 = getelementptr inbounds %struct.dm_zone, ptr %call, i32 0, i32 2
  %22 = ptrtoint ptr %flags21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %flags21, align 4
  %24 = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not = icmp eq i32 %24, 0
  br i1 %tobool.not, label %if.else24, label %switch.lookup.if.end28_crit_edge

switch.lookup.if.end28_crit_edge:                 ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end28

if.else24:                                        ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #17
  %wp = getelementptr inbounds %struct.blk_zone, ptr %blkz, i32 0, i32 2
  %25 = ptrtoint ptr %wp to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %wp, align 8
  %27 = ptrtoint ptr %blkz to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %blkz, align 8
  %sub = sub i64 %26, %28
  %shr = lshr i64 %sub, 3
  %conv26 = trunc i64 %shr to i32
  br label %if.end28

if.end28:                                         ; preds = %if.else24, %switch.lookup.if.end28_crit_edge
  %.sink = phi i32 [ %conv26, %if.else24 ], [ 0, %switch.lookup.if.end28_crit_edge ]
  %29 = getelementptr inbounds %struct.dm_zone, ptr %call, i32 0, i32 5
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %.sink, ptr %29, align 4
  %cond = getelementptr inbounds %struct.blk_zone, ptr %blkz, i32 0, i32 4
  %31 = ptrtoint ptr %cond to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %cond, align 1
  %33 = zext i8 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values)
  switch i8 %32, label %if.else41 [
    i8 15, label %if.then32
    i8 13, label %if.then39
  ]

if.then32:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_set_bit(i32 noundef 3, ptr noundef %flags21) #15
  br label %cleanup

if.then39:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_set_bit(i32 noundef 4, ptr noundef %flags21) #15
  br label %cleanup

if.else41:                                        ; preds = %if.end28
  %nr_useable_zones = getelementptr inbounds %struct.dmz_metadata, ptr %1, i32 0, i32 15
  %34 = ptrtoint ptr %nr_useable_zones to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %nr_useable_zones, align 4
  %inc = add i32 %35, 1
  store i32 %inc, ptr %nr_useable_zones, align 4
  %36 = ptrtoint ptr %flags21 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %flags21, align 4
  %38 = and i32 %37, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool44.not = icmp eq i32 %38, 0
  br i1 %tobool44.not, label %if.else41.if.end56_crit_edge, label %if.then45

if.else41.if.end56_crit_edge:                     ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end56

if.then45:                                        ; preds = %if.else41
  %nr_rnd_zones = getelementptr inbounds %struct.dmz_metadata, ptr %1, i32 0, i32 20
  %39 = ptrtoint ptr %nr_rnd_zones to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %nr_rnd_zones, align 8
  %inc46 = add i32 %40, 1
  store i32 %inc46, ptr %nr_rnd_zones, align 8
  %nr_devs = getelementptr inbounds %struct.dmz_metadata, ptr %1, i32 0, i32 1
  %41 = ptrtoint ptr %nr_devs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %nr_devs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %42)
  %cmp47 = icmp eq i32 %42, 1
  br i1 %cmp47, label %land.lhs.true, label %if.then45.if.end56_crit_edge

if.then45.if.end56_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end56

land.lhs.true:                                    ; preds = %if.then45
  %zone49 = getelementptr inbounds %struct.dmz_metadata, ptr %1, i32 0, i32 24, i32 0, i32 4
  %43 = ptrtoint ptr %zone49 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %zone49, align 4
  %tobool50.not = icmp eq ptr %44, null
  br i1 %tobool50.not, label %if.then51, label %land.lhs.true.if.end56_crit_edge

land.lhs.true.if.end56_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end56

if.then51:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %45 = ptrtoint ptr %zone49 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call, ptr %zone49, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then51, %land.lhs.true.if.end56_crit_edge, %if.then45.if.end56_crit_edge, %if.else41.if.end56_crit_edge
  %nr_devs57 = getelementptr inbounds %struct.dmz_metadata, ptr %1, i32 0, i32 1
  %46 = ptrtoint ptr %nr_devs57 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %nr_devs57, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %47)
  %cmp58 = icmp ugt i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp61 = icmp eq i32 %num, 0
  %or.cond = and i1 %cmp61, %cmp58
  br i1 %or.cond, label %if.then63, label %if.end56.cleanup_crit_edge

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then63:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_set_bit(i32 noundef 5, ptr noundef %flags21) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then63, %if.end56.cleanup_crit_edge, %if.then39, %if.then32, %if.end17.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.else, %if.then5, %if.then
  %retval.0 = phi i32 [ %4, %if.then ], [ 0, %if.then5 ], [ %., %if.else ], [ -6, %if.end12.cleanup_crit_edge ], [ -6, %if.end17.cleanup_crit_edge ], [ 0, %if.then39 ], [ 0, %if.then63 ], [ 0, %if.end56.cleanup_crit_edge ], [ 0, %if.then32 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @dmz_insert(ptr noundef %zmd, i32 noundef %zone_id, ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 40) #20
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %zones = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 23
  tail call void @_raw_spin_lock(ptr noundef %zones) #15
  %call.i = tail call i32 @__xa_insert(ptr noundef %zones, i32 noundef %zone_id, ptr noundef nonnull %call7.i.i, i32 noundef 3264) #15
  tail call void @_raw_spin_unlock(ptr noundef %zones) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #15
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %refcount = getelementptr inbounds %struct.dm_zone, ptr %call7.i.i, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #15
  %3 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 0, ptr %refcount, align 8
  %id = getelementptr inbounds %struct.dm_zone, ptr %call7.i.i, i32 0, i32 4
  %4 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %zone_id, ptr %id, align 4
  %chunk = getelementptr inbounds %struct.dm_zone, ptr %call7.i.i, i32 0, i32 7
  %5 = ptrtoint ptr %chunk to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %chunk, align 8
  %dev7 = getelementptr inbounds %struct.dm_zone, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %dev7 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev, ptr %dev7, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -16 to ptr), %if.then4 ], [ %call7.i.i, %if.end6 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__xa_insert(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_erase(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @xa_destroy(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dmz_get_sb(ptr noundef %zmd, ptr nocapture noundef %sb, i32 noundef %set) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @dmz_alloc_mblock(ptr noundef %zmd, i64 noundef 0)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %mblk1 = getelementptr inbounds %struct.dmz_sb, ptr %sb, i32 0, i32 2
  %0 = ptrtoint ptr %mblk1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %mblk1, align 4
  %data = getelementptr inbounds %struct.dmz_mblock, ptr %call, i32 0, i32 6
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data, align 4
  %sb2 = getelementptr inbounds %struct.dmz_sb, ptr %sb, i32 0, i32 3
  %3 = ptrtoint ptr %sb2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %sb2, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dmz_read_sb.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dmz_get_sb, %if.then.i)) #15
          to label %dmz_read_sb.exit [label %if.then.i], !srcloc !319

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %label.i = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 3
  %dev.i = getelementptr inbounds %struct.dmz_sb, ptr %sb, i32 0, i32 1
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 8
  %name.i = getelementptr inbounds %struct.dmz_dev, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %sb to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %sb, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dmz_read_sb.__UNIQUE_ID_ddebug277, ptr noundef nonnull @.str.93, ptr noundef %label.i, i32 noundef %set, ptr noundef %name.i, i64 noundef %7) #15
  br label %dmz_read_sb.exit

dmz_read_sb.exit:                                 ; preds = %if.then.i, %if.end
  %dev4.i = getelementptr inbounds %struct.dmz_sb, ptr %sb, i32 0, i32 1
  %8 = ptrtoint ptr %dev4.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev4.i, align 8
  %10 = ptrtoint ptr %sb to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %sb, align 8
  %12 = ptrtoint ptr %mblk1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mblk1, align 4
  %page.i = getelementptr inbounds %struct.dmz_mblock, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %page.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %page.i, align 8
  %call6.i = tail call fastcc i32 @dmz_rdwr_block(ptr noundef %9, i32 noundef 0, i64 noundef %11, ptr noundef %15) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool4.not = icmp eq i32 %call6.i, 0
  br i1 %tobool4.not, label %dmz_read_sb.exit.cleanup_crit_edge, label %if.then5

dmz_read_sb.exit.cleanup_crit_edge:               ; preds = %dmz_read_sb.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then5:                                         ; preds = %dmz_read_sb.exit
  call void @__sanitizer_cov_trace_pc() #17
  %page.i18 = getelementptr inbounds %struct.dmz_mblock, ptr %call, i32 0, i32 5
  %16 = ptrtoint ptr %page.i18 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %page.i18, align 8
  tail call void @__free_pages(ptr noundef %17, i32 noundef 0) #15
  tail call void @kfree(ptr noundef nonnull %call) #15
  %nr_mblks.i = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 30
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nr_mblks.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %nr_mblks.i, i32 1, i32 3, i32 1) #15
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nr_mblks.i, ptr %nr_mblks.i, i32 1, ptr elementtype(i32) %nr_mblks.i) #15, !srcloc !318
  %19 = ptrtoint ptr %mblk1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %mblk1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %dmz_read_sb.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6.i, %if.then5 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %dmz_read_sb.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dmz_check_sb(ptr noundef %zmd, ptr nocapture noundef readonly %dsb, i1 noundef zeroext %tertiary) unnamed_addr #0 align 64 {
entry:
  %sb_uuid = alloca %struct.uuid_t, align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %sb1 = getelementptr inbounds %struct.dmz_sb, ptr %dsb, i32 0, i32 3
  %0 = ptrtoint ptr %sb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sb1, align 8
  %dev2 = getelementptr inbounds %struct.dmz_sb, ptr %dsb, i32 0, i32 1
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev2, align 8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1145199172, i32 %5)
  %cmp.not = icmp eq i32 %5, 1145199172
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %name = getelementptr inbounds %struct.dmz_dev, ptr %3, i32 0, i32 3
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, ptr noundef %name, i32 noundef 1146765892, i32 noundef %6) #19
  br label %cleanup214

if.end:                                           ; preds = %entry
  %version = getelementptr inbounds %struct.dmz_super, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %version, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %sb_version = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 26
  %10 = ptrtoint ptr %sb_version to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %sb_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp5 = icmp ugt i32 %9, 2
  br i1 %cmp5, label %do.end9, label %if.end15

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %name11 = getelementptr inbounds %struct.dmz_dev, ptr %3, i32 0, i32 3
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, ptr noundef %name11, i32 noundef 2, i32 noundef %9) #19
  br label %cleanup214

if.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %8)
  %cmp17.not = icmp ne i32 %8, 33554432
  %11 = and i1 %cmp17.not, %tertiary
  br i1 %11, label %do.end21, label %if.end26

do.end21:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  %name23 = getelementptr inbounds %struct.dmz_dev, ptr %3, i32 0, i32 3
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, ptr noundef %name23) #19
  br label %cleanup214

if.end26:                                         ; preds = %if.end15
  %gen27 = getelementptr inbounds %struct.dmz_super, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %gen27 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %gen27, align 8
  %14 = tail call i64 @llvm.bswap.i64(i64 %13)
  %crc28 = getelementptr inbounds %struct.dmz_super, ptr %1, i32 0, i32 9
  %15 = ptrtoint ptr %crc28 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %crc28, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %18 = ptrtoint ptr %crc28 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %crc28, align 4
  %conv = trunc i64 %14 to i32
  %call30 = tail call i32 @crc32_le(i32 noundef %conv, ptr noundef %1, i32 noundef 4096) #18
  call void @__sanitizer_cov_trace_cmp4(i32 %call30, i32 %17)
  %cmp31.not = icmp eq i32 %call30, %17
  br i1 %cmp31.not, label %if.end41, label %do.end36

do.end36:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #17
  %name38 = getelementptr inbounds %struct.dmz_dev, ptr %3, i32 0, i32 3
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103, ptr noundef %name38, i32 noundef %call30, i32 noundef %17) #19
  br label %cleanup214

if.end41:                                         ; preds = %if.end26
  %sb_block42 = getelementptr inbounds %struct.dmz_super, ptr %1, i32 0, i32 3
  %19 = ptrtoint ptr %sb_block42 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %sb_block42, align 8
  %21 = tail call i64 @llvm.bswap.i64(i64 %20)
  %zone = getelementptr inbounds %struct.dmz_sb, ptr %dsb, i32 0, i32 4
  %22 = ptrtoint ptr %zone to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %zone, align 4
  %id = getelementptr inbounds %struct.dm_zone, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %id, align 4
  %conv43 = zext i32 %25 to i64
  %zone_nr_blocks_shift = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 9
  %26 = ptrtoint ptr %zone_nr_blocks_shift to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %zone_nr_blocks_shift, align 8
  %shl = shl i64 %conv43, %27
  call void @__sanitizer_cov_trace_cmp8(i64 %21, i64 %shl)
  %cmp44.not = icmp eq i64 %21, %shl
  br i1 %cmp44.not, label %if.end59, label %do.end49

do.end49:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #17
  %name51 = getelementptr inbounds %struct.dmz_dev, ptr %3, i32 0, i32 3
  %call58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, ptr noundef %name51, i64 noundef %21, i64 noundef %shl) #19
  br label %cleanup214

if.end59:                                         ; preds = %if.end41
  %28 = ptrtoint ptr %sb_version to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sb_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp61 = icmp ugt i32 %29, 1
  br i1 %cmp61, label %if.then63, label %if.end59.if.end147_crit_edge

if.end59.if.end147_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end147

if.then63:                                        ; preds = %if.end59
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sb_uuid) #15
  %dmz_uuid = getelementptr inbounds %struct.dmz_super, ptr %1, i32 0, i32 11
  %30 = call ptr @memcpy(ptr %sb_uuid, ptr %dmz_uuid, i32 16)
  %bcmp.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %sb_uuid, ptr noundef nonnull dereferenceable(16) @uuid_null, i32 16) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %cmp.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %cmp.i.i, label %do.end69, label %if.else

do.end69:                                         ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #17
  %name71 = getelementptr inbounds %struct.dmz_dev, ptr %3, i32 0, i32 3
  %call73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109, ptr noundef %name71) #19
  br label %cleanup.thread

if.else:                                          ; preds = %if.then63
  %uuid = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 4
  %bcmp.i.i310 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %uuid, ptr noundef nonnull dereferenceable(16) @uuid_null, i32 16) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i310)
  %cmp.i.i311 = icmp eq i32 %bcmp.i.i310, 0
  br i1 %cmp.i.i311, label %if.then75, label %if.else77

if.then75:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %31 = call ptr @memmove(ptr %uuid, ptr %dmz_uuid, i32 16)
  br label %if.end91

if.else77:                                        ; preds = %if.else
  %bcmp.i = call i32 @bcmp(ptr noundef dereferenceable(16) %uuid, ptr noundef nonnull dereferenceable(16) %sb_uuid, i32 16) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp.i, label %if.else77.if.end91_crit_edge, label %do.end83

if.else77.if.end91_crit_edge:                     ; preds = %if.else77
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end91

do.end83:                                         ; preds = %if.else77
  call void @__sanitizer_cov_trace_pc() #17
  %name85 = getelementptr inbounds %struct.dmz_dev, ptr %3, i32 0, i32 3
  %call88 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, ptr noundef %name85, ptr noundef nonnull %sb_uuid, ptr noundef %uuid) #19
  br label %cleanup.thread

if.end91:                                         ; preds = %if.else77.if.end91_crit_edge, %if.then75
  %label = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 3
  %32 = ptrtoint ptr %label to i32
  call void @__asan_load1_noabort(i32 %32)
  %char0 = load i8, ptr %label, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0)
  %tobool94.not = icmp eq i8 %char0, 0
  %dmz_label = getelementptr inbounds %struct.dmz_super, ptr %1, i32 0, i32 10
  br i1 %tobool94.not, label %if.then95, label %if.else99

if.then95:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #17
  %33 = call ptr @memcpy(ptr %label, ptr %dmz_label, i32 32)
  br label %if.end119

if.else99:                                        ; preds = %if.end91
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(32) %label, ptr noundef dereferenceable(32) %dmz_label, i32 32) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool105.not = icmp eq i32 %bcmp, 0
  br i1 %tobool105.not, label %if.else99.if.end119_crit_edge, label %do.end109

if.else99.if.end119_crit_edge:                    ; preds = %if.else99
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end119

do.end109:                                        ; preds = %if.else99
  call void @__sanitizer_cov_trace_pc() #17
  %name111 = getelementptr inbounds %struct.dmz_dev, ptr %3, i32 0, i32 3
  %call117 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115, ptr noundef %name111, ptr noundef %dmz_label, ptr noundef %label) #19
  br label %cleanup.thread

if.end119:                                        ; preds = %if.else99.if.end119_crit_edge, %if.then95
  %uuid120 = getelementptr inbounds %struct.dmz_dev, ptr %3, i32 0, i32 4
  %dev_uuid = getelementptr inbounds %struct.dmz_super, ptr %1, i32 0, i32 12
  %34 = call ptr @memcpy(ptr %uuid120, ptr %dev_uuid, i32 16)
  %bcmp.i.i312 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %uuid120, ptr noundef nonnull dereferenceable(16) @uuid_null, i32 16) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i312)
  %cmp.i.i313 = icmp eq i32 %bcmp.i.i312, 0
  br i1 %cmp.i.i313, label %do.end127, label %if.end132

do.end127:                                        ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #17
  %name129 = getelementptr inbounds %struct.dmz_dev, ptr %3, i32 0, i32 3
  %call131 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118, ptr noundef %name129) #19
  br label %cleanup.thread

if.end132:                                        ; preds = %if.end119
  br i1 %tertiary, label %if.then134, label %cleanup

if.then134:                                       ; preds = %if.end132
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %13)
  %cmp135.not = icmp eq i64 %13, 0
  br i1 %cmp135.not, label %if.then134.cleanup.thread_crit_edge, label %do.end140

if.then134.cleanup.thread_crit_edge:              ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.thread

do.end140:                                        ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #17
  %name142 = getelementptr inbounds %struct.dmz_dev, ptr %3, i32 0, i32 3
  %call144 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121, ptr noundef %name142, i64 noundef %14) #19
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %do.end140, %if.then134.cleanup.thread_crit_edge, %do.end127, %do.end109, %do.end83, %do.end69
  %retval.0.ph = phi i32 [ 0, %if.then134.cleanup.thread_crit_edge ], [ 0, %do.end140 ], [ -6, %do.end69 ], [ -6, %do.end83 ], [ -6, %do.end109 ], [ -6, %do.end127 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sb_uuid) #15
  br label %cleanup214

cleanup:                                          ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sb_uuid) #15
  br label %if.end147

if.end147:                                        ; preds = %cleanup, %if.end59.if.end147_crit_edge
  %nr_meta_blocks = getelementptr inbounds %struct.dmz_super, ptr %1, i32 0, i32 4
  %35 = ptrtoint ptr %nr_meta_blocks to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %nr_meta_blocks, align 8
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  %conv148 = zext i32 %37 to i64
  %zone_nr_blocks = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 8
  %38 = ptrtoint ptr %zone_nr_blocks to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %zone_nr_blocks, align 8
  %add = add i64 %39, -1
  %sub = add i64 %add, %conv148
  %40 = ptrtoint ptr %zone_nr_blocks_shift to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %zone_nr_blocks_shift, align 8
  %shr = lshr i64 %sub, %41
  %conv150 = trunc i64 %shr to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv150)
  %tobool151.not = icmp eq i32 %conv150, 0
  br i1 %tobool151.not, label %if.end147.do.end167_crit_edge, label %lor.lhs.false

if.end147.do.end167_crit_edge:                    ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end167

lor.lhs.false:                                    ; preds = %if.end147
  %nr_devs = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 1
  %42 = ptrtoint ptr %nr_devs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %nr_devs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %43)
  %cmp152 = icmp ult i32 %43, 2
  br i1 %cmp152, label %land.lhs.true154, label %land.lhs.true161

land.lhs.true154:                                 ; preds = %lor.lhs.false
  %nr_rnd_zones = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 20
  %44 = ptrtoint ptr %nr_rnd_zones to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %nr_rnd_zones, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %conv150)
  %cmp155.not = icmp ugt i32 %45, %conv150
  br i1 %cmp155.not, label %land.lhs.true154.if.end172_crit_edge, label %land.lhs.true154.do.end167_crit_edge

land.lhs.true154.do.end167_crit_edge:             ; preds = %land.lhs.true154
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end167

land.lhs.true154.if.end172_crit_edge:             ; preds = %land.lhs.true154
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end172

land.lhs.true161:                                 ; preds = %lor.lhs.false
  %nr_cache_zones = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 19
  %46 = ptrtoint ptr %nr_cache_zones to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %nr_cache_zones, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %conv150)
  %cmp162.not = icmp ugt i32 %47, %conv150
  br i1 %cmp162.not, label %land.lhs.true161.if.end172_crit_edge, label %land.lhs.true161.do.end167_crit_edge

land.lhs.true161.do.end167_crit_edge:             ; preds = %land.lhs.true161
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end167

land.lhs.true161.if.end172_crit_edge:             ; preds = %land.lhs.true161
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end172

do.end167:                                        ; preds = %land.lhs.true161.do.end167_crit_edge, %land.lhs.true154.do.end167_crit_edge, %if.end147.do.end167_crit_edge
  %name169 = getelementptr inbounds %struct.dmz_dev, ptr %3, i32 0, i32 3
  %call171 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124, ptr noundef %name169) #19
  br label %cleanup214

if.end172:                                        ; preds = %land.lhs.true161.if.end172_crit_edge, %land.lhs.true154.if.end172_crit_edge
  %nr_reserved_seq = getelementptr inbounds %struct.dmz_super, ptr %1, i32 0, i32 5
  %48 = ptrtoint ptr %nr_reserved_seq to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %nr_reserved_seq, align 4
  %50 = tail call i32 @llvm.bswap.i32(i32 %49)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool173.not = icmp eq i32 %49, 0
  br i1 %tobool173.not, label %if.end172.do.end182_crit_edge, label %lor.lhs.false174

if.end172.do.end182_crit_edge:                    ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end182

lor.lhs.false174:                                 ; preds = %if.end172
  %nr_useable_zones = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 15
  %51 = ptrtoint ptr %nr_useable_zones to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %nr_useable_zones, align 4
  %sub176 = sub i32 %52, %conv150
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %sub176)
  %cmp177.not = icmp ult i32 %50, %sub176
  br i1 %cmp177.not, label %if.end187, label %lor.lhs.false174.do.end182_crit_edge

lor.lhs.false174.do.end182_crit_edge:             ; preds = %lor.lhs.false174
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end182

do.end182:                                        ; preds = %lor.lhs.false174.do.end182_crit_edge, %if.end172.do.end182_crit_edge
  %name184 = getelementptr inbounds %struct.dmz_dev, ptr %3, i32 0, i32 3
  %call186 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127, ptr noundef %name184) #19
  br label %cleanup214

if.end187:                                        ; preds = %lor.lhs.false174
  %mul.neg = mul i32 %conv150, -2
  %add190.neg = sub i32 %mul.neg, %50
  %sub191 = add i32 %add190.neg, %52
  %nr_chunks = getelementptr inbounds %struct.dmz_super, ptr %1, i32 0, i32 6
  %53 = ptrtoint ptr %nr_chunks to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %nr_chunks, align 8
  %55 = tail call i32 @llvm.bswap.i32(i32 %54)
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %sub191)
  %cmp192 = icmp ugt i32 %55, %sub191
  br i1 %cmp192, label %do.end197, label %if.end203

do.end197:                                        ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #17
  %name199 = getelementptr inbounds %struct.dmz_dev, ptr %3, i32 0, i32 3
  %call202 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.130, ptr noundef %name199, i32 noundef %55, i32 noundef %sub191) #19
  br label %cleanup214

if.end203:                                        ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #17
  %nr_meta_blocks205 = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 16
  %56 = ptrtoint ptr %nr_meta_blocks205 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %37, ptr %nr_meta_blocks205, align 8
  %57 = ptrtoint ptr %nr_reserved_seq to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %nr_reserved_seq, align 4
  %59 = tail call i32 @llvm.bswap.i32(i32 %58)
  %nr_reserved_seq207 = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 21
  %60 = ptrtoint ptr %nr_reserved_seq207 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %nr_reserved_seq207, align 4
  %61 = ptrtoint ptr %nr_chunks to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %nr_chunks, align 8
  %63 = tail call i32 @llvm.bswap.i32(i32 %62)
  %nr_chunks209 = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 22
  %64 = ptrtoint ptr %nr_chunks209 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %nr_chunks209, align 8
  %nr_map_blocks = getelementptr inbounds %struct.dmz_super, ptr %1, i32 0, i32 7
  %65 = ptrtoint ptr %nr_map_blocks to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %nr_map_blocks, align 4
  %67 = tail call i32 @llvm.bswap.i32(i32 %66)
  %nr_map_blocks210 = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 13
  %68 = ptrtoint ptr %nr_map_blocks210 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %nr_map_blocks210, align 4
  %nr_bitmap_blocks = getelementptr inbounds %struct.dmz_super, ptr %1, i32 0, i32 8
  %69 = ptrtoint ptr %nr_bitmap_blocks to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %nr_bitmap_blocks, align 8
  %71 = tail call i32 @llvm.bswap.i32(i32 %70)
  %nr_bitmap_blocks211 = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 12
  %72 = ptrtoint ptr %nr_bitmap_blocks211 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %nr_bitmap_blocks211, align 8
  %nr_meta_zones212 = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 17
  %73 = ptrtoint ptr %nr_meta_zones212 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %conv150, ptr %nr_meta_zones212, align 4
  %nr_data_zones213 = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 18
  %74 = ptrtoint ptr %nr_data_zones213 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %sub191, ptr %nr_data_zones213, align 8
  br label %cleanup214

cleanup214:                                       ; preds = %if.end203, %do.end197, %do.end182, %do.end167, %cleanup.thread, %do.end49, %do.end36, %do.end21, %do.end9, %do.end
  %retval.1 = phi i32 [ -6, %do.end ], [ -22, %do.end9 ], [ -22, %do.end21 ], [ -6, %do.end36 ], [ -22, %do.end49 ], [ -6, %do.end167 ], [ -6, %do.end182 ], [ -6, %do.end197 ], [ 0, %if.end203 ], [ %retval.0.ph, %cleanup.thread ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dmz_lookup_secondary_sb(ptr noundef %zmd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %zone_nr_blocks1 = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 8
  %0 = ptrtoint ptr %zone_nr_blocks1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %zone_nr_blocks1, align 8
  %zone = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 24, i32 0, i32 4
  %2 = ptrtoint ptr %zone to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %zone, align 4
  %id = getelementptr inbounds %struct.dm_zone, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %call = tail call fastcc ptr @dmz_alloc_mblock(ptr noundef %zmd, i64 noundef 0)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %sb = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 24
  %arrayidx3 = getelementptr %struct.dmz_metadata, ptr %zmd, i32 0, i32 24, i32 1
  %mblk4 = getelementptr %struct.dmz_metadata, ptr %zmd, i32 0, i32 24, i32 1, i32 2
  %6 = ptrtoint ptr %mblk4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %mblk4, align 4
  %data = getelementptr inbounds %struct.dmz_mblock, ptr %call, i32 0, i32 6
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %sb7 = getelementptr %struct.dmz_metadata, ptr %zmd, i32 0, i32 24, i32 1, i32 3
  %9 = ptrtoint ptr %sb7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %sb7, align 8
  %10 = ptrtoint ptr %sb to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %sb, align 8
  %conv10 = and i64 %1, 4294967295
  %add = add i64 %11, %conv10
  %12 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %add, ptr %arrayidx3, align 8
  %add14 = add i32 %5, 1
  %zones.i = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 23
  %call.i = tail call ptr @xa_load(ptr noundef %zones.i, i32 noundef %add14) #15
  %zone18 = getelementptr %struct.dmz_metadata, ptr %zmd, i32 0, i32 24, i32 1, i32 4
  %13 = ptrtoint ptr %zone18 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i, ptr %zone18, align 4
  %dev = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 24, i32 0, i32 1
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 8
  %dev23 = getelementptr %struct.dmz_metadata, ptr %zmd, i32 0, i32 24, i32 1, i32 1
  %16 = ptrtoint ptr %dev23 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %dev23, align 8
  %nr_rnd_zones = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 20
  %17 = ptrtoint ptr %nr_rnd_zones to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nr_rnd_zones, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp92 = icmp ugt i32 %18, 1
  br i1 %cmp92, label %for.body.lr.ph, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %label.i = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %if.end38.for.body_crit_edge, %for.body.lr.ph
  %i.093 = phi i32 [ 1, %for.body.lr.ph ], [ %inc, %if.end38.for.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dmz_read_sb.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dmz_lookup_secondary_sb, %if.then.i)) #15
          to label %dmz_read_sb.exit [label %if.then.i], !srcloc !319

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %19 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev23, align 8
  %name.i = getelementptr inbounds %struct.dmz_dev, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %arrayidx3, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dmz_read_sb.__UNIQUE_ID_ddebug277, ptr noundef nonnull @.str.93, ptr noundef %label.i, i32 noundef 1, ptr noundef %name.i, i64 noundef %22) #15
  br label %dmz_read_sb.exit

dmz_read_sb.exit:                                 ; preds = %if.then.i, %for.body
  %23 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev23, align 8
  %25 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %arrayidx3, align 8
  %27 = ptrtoint ptr %mblk4 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mblk4, align 4
  %page.i = getelementptr inbounds %struct.dmz_mblock, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %page.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %page.i, align 8
  %call6.i = tail call fastcc i32 @dmz_rdwr_block(ptr noundef %24, i32 noundef 0, i64 noundef %26, ptr noundef %30) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp28.not = icmp eq i32 %call6.i, 0
  br i1 %cmp28.not, label %if.end31, label %dmz_read_sb.exit.for.end_crit_edge

dmz_read_sb.exit.for.end_crit_edge:               ; preds = %dmz_read_sb.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

if.end31:                                         ; preds = %dmz_read_sb.exit
  %31 = ptrtoint ptr %sb7 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sb7, align 8
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1145199172, i32 %34)
  %cmp35 = icmp eq i32 %34, 1145199172
  br i1 %cmp35, label %if.end31.cleanup_crit_edge, label %if.end38

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end38:                                         ; preds = %if.end31
  %35 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %arrayidx3, align 8
  %add43 = add i64 %36, %conv10
  store i64 %add43, ptr %arrayidx3, align 8
  %add44 = add i32 %i.093, %5
  %call.i90 = tail call ptr @xa_load(ptr noundef %zones.i, i32 noundef %add44) #15
  %37 = ptrtoint ptr %zone18 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call.i90, ptr %zone18, align 4
  %inc = add nuw i32 %i.093, 1
  %38 = ptrtoint ptr %nr_rnd_zones to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %nr_rnd_zones, align 8
  %cmp = icmp ult i32 %inc, %39
  br i1 %cmp, label %if.end38.for.body_crit_edge, label %if.end38.for.end_crit_edge

if.end38.for.end_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

if.end38.for.body_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %if.end38.for.end_crit_edge, %dmz_read_sb.exit.for.end_crit_edge, %if.end.for.end_crit_edge
  %page.i91 = getelementptr inbounds %struct.dmz_mblock, ptr %call, i32 0, i32 5
  %40 = ptrtoint ptr %page.i91 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %page.i91, align 8
  tail call void @__free_pages(ptr noundef %41, i32 noundef 0) #15
  tail call void @kfree(ptr noundef nonnull %call) #15
  %nr_mblks.i = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 30
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nr_mblks.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %nr_mblks.i, i32 1, i32 3, i32 1) #15
  %42 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nr_mblks.i, ptr %nr_mblks.i, i32 1, ptr elementtype(i32) %nr_mblks.i) #15, !srcloc !318
  %43 = ptrtoint ptr %mblk4 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %mblk4, align 4
  %44 = ptrtoint ptr %zone18 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %zone18, align 4
  %45 = ptrtoint ptr %dev23 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %dev23, align 8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end31.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %for.end ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end31.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dmz_recover_mblocks(ptr noundef %zmd, i32 noundef %dst_set) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %xor = xor i32 %dst_set, 1
  %arrayidx = getelementptr %struct.dmz_metadata, ptr %zmd, i32 0, i32 24, i32 %dst_set
  %dev = getelementptr %struct.dmz_metadata, ptr %zmd, i32 0, i32 24, i32 %dst_set, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.dmz_dev, ptr %1, i32 0, i32 3
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.132, ptr noundef %name, i32 noundef %dst_set) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dst_set)
  %cmp = icmp eq i32 %dst_set, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %sb = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 24
  %zone = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 24, i32 0, i32 4
  %2 = ptrtoint ptr %zone to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %zone, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %do.end.i.i, label %if.end23.i.i, !prof !312

do.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 223, i32 noundef 9, ptr noundef null) #15
  br label %if.end

if.end23.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %id.i.i = getelementptr inbounds %struct.dm_zone, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.dm_zone, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i.i, align 4
  %zone_offset.i.i = getelementptr inbounds %struct.dmz_dev, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %zone_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %zone_offset.i.i, align 8
  %sub.i.i = sub i32 %5, %9
  br label %if.end

if.else:                                          ; preds = %entry
  %arrayidx7 = getelementptr %struct.dmz_metadata, ptr %zmd, i32 0, i32 24, i32 1
  %zone8 = getelementptr %struct.dmz_metadata, ptr %zmd, i32 0, i32 24, i32 1, i32 4
  %10 = ptrtoint ptr %zone8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %zone8, align 4
  %tobool.not.i.i102 = icmp eq ptr %11, null
  br i1 %tobool.not.i.i102, label %do.end.i.i103, label %if.end23.i.i108, !prof !312

do.end.i.i103:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 223, i32 noundef 9, ptr noundef null) #15
  br label %if.end

if.end23.i.i108:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %id.i.i104 = getelementptr inbounds %struct.dm_zone, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %id.i.i104 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id.i.i104, align 4
  %dev.i.i105 = getelementptr inbounds %struct.dm_zone, ptr %11, i32 0, i32 1
  %14 = ptrtoint ptr %dev.i.i105 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i.i105, align 4
  %zone_offset.i.i106 = getelementptr inbounds %struct.dmz_dev, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %zone_offset.i.i106 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %zone_offset.i.i106, align 8
  %sub.i.i107 = sub i32 %13, %17
  br label %if.end

if.end:                                           ; preds = %if.end23.i.i108, %do.end.i.i103, %if.end23.i.i, %do.end.i.i
  %retval.0.i.i109.sink = phi i32 [ 0, %do.end.i.i ], [ %sub.i.i, %if.end23.i.i ], [ 0, %do.end.i.i103 ], [ %sub.i.i107, %if.end23.i.i108 ]
  %arrayidx7.sink = phi ptr [ %sb, %do.end.i.i ], [ %sb, %if.end23.i.i ], [ %arrayidx7, %do.end.i.i103 ], [ %arrayidx7, %if.end23.i.i108 ]
  %conv.i110 = zext i32 %retval.0.i.i109.sink to i64
  %zone_nr_blocks_shift.i111 = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 9
  %18 = ptrtoint ptr %zone_nr_blocks_shift.i111 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %zone_nr_blocks_shift.i111, align 8
  %shl.i112 = shl i64 %conv.i110, %19
  %20 = ptrtoint ptr %arrayidx7.sink to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %shl.i112, ptr %arrayidx7.sink, align 8
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef 3072, i32 noundef 0, i32 noundef 0, ptr noundef null) #15
  %tobool.not = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %for.cond.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  %nr_meta_blocks = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 16
  %21 = ptrtoint ptr %nr_meta_blocks to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nr_meta_blocks, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp16114 = icmp ugt i32 %22, 1
  br i1 %cmp16114, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %arrayidx18 = getelementptr %struct.dmz_metadata, ptr %zmd, i32 0, i32 24, i32 %xor
  %dev19 = getelementptr %struct.dmz_metadata, ptr %zmd, i32 0, i32 24, i32 %xor, i32 1
  br label %for.body

for.cond:                                         ; preds = %if.end26
  %inc = add nuw i32 %i.0115, 1
  %23 = ptrtoint ptr %nr_meta_blocks to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nr_meta_blocks, align 8
  %cmp16 = icmp ult i32 %inc, %24
  br i1 %cmp16, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.0115 = phi i32 [ 1, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %25 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev19, align 8
  %27 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %arrayidx18, align 8
  %conv = sext i32 %i.0115 to i64
  %add = add i64 %28, %conv
  %call23 = tail call fastcc i32 @dmz_rdwr_block(ptr noundef %26, i32 noundef 0, i64 noundef %add, ptr noundef nonnull %call38.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %for.body.out_crit_edge

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end26:                                         ; preds = %for.body
  %29 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev, align 8
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %arrayidx, align 8
  %add34 = add i64 %32, %conv
  %call35 = tail call fastcc i32 @dmz_rdwr_block(ptr noundef %30, i32 noundef 1, i64 noundef %add34, ptr noundef nonnull %call38.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %for.cond, label %if.end26.out_crit_edge

if.end26.out_crit_edge:                           ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %mblk = getelementptr %struct.dmz_metadata, ptr %zmd, i32 0, i32 24, i32 %dst_set, i32 2
  %33 = ptrtoint ptr %mblk to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mblk, align 4
  %tobool41.not = icmp eq ptr %34, null
  br i1 %tobool41.not, label %if.then42, label %for.end.if.end59_crit_edge

for.end.if.end59_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end59

if.then42:                                        ; preds = %for.end
  %call43 = tail call fastcc ptr @dmz_alloc_mblock(ptr noundef %zmd, i64 noundef 0)
  %35 = ptrtoint ptr %mblk to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call43, ptr %mblk, align 4
  %tobool50.not = icmp eq ptr %call43, null
  br i1 %tobool50.not, label %if.then42.out_crit_edge, label %if.end52

if.then42.out_crit_edge:                          ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end52:                                         ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #17
  %data = getelementptr inbounds %struct.dmz_mblock, ptr %call43, i32 0, i32 6
  %36 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data, align 4
  %sb58 = getelementptr %struct.dmz_metadata, ptr %zmd, i32 0, i32 24, i32 %dst_set, i32 3
  %38 = ptrtoint ptr %sb58 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %sb58, align 8
  br label %if.end59

if.end59:                                         ; preds = %if.end52, %for.end.if.end59_crit_edge
  %call60 = tail call fastcc i32 @dmz_write_sb(ptr noundef %zmd, i32 noundef %dst_set)
  br label %out

out:                                              ; preds = %if.end59, %if.then42.out_crit_edge, %if.end26.out_crit_edge, %for.body.out_crit_edge
  %ret.0 = phi i32 [ %call60, %if.end59 ], [ -12, %if.then42.out_crit_edge ], [ %call35, %if.end26.out_crit_edge ], [ %call23, %for.body.out_crit_edge ]
  tail call void @__free_pages(ptr noundef nonnull %call38.i.i.i, i32 noundef 0) #15
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dmz_get_zone_weight(ptr noundef %zmd, ptr nocapture noundef %zone) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %zone_nr_blocks = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 8
  %0 = ptrtoint ptr %zone_nr_blocks to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %zone_nr_blocks, align 8
  %conv = trunc i64 %1 to i32
  %nr_map_blocks.i = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv)
  %tobool.not26 = icmp eq i32 %conv, 0
  br i1 %tobool.not26, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %id.i = getelementptr inbounds %struct.dm_zone, ptr %zone, i32 0, i32 4
  %zone_nr_bitmap_blocks.i = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 6
  %zone_bits_per_mblk = getelementptr inbounds %struct.dmz_metadata, ptr %zmd, i32 0, i32 7
  br label %while.body

while.body:                                       ; preds = %dmz_count_bits.exit.while.body_crit_edge, %while.body.lr.ph
  %n.029 = phi i32 [ 0, %while.body.lr.ph ], [ %add, %dmz_count_bits.exit.while.body_crit_edge ]
  %nr_blocks.028 = phi i32 [ %conv, %while.body.lr.ph ], [ %sub5, %dmz_count_bits.exit.while.body_crit_edge ]
  %chunk_block.027 = phi i64 [ 0, %while.body.lr.ph ], [ %add7, %dmz_count_bits.exit.while.body_crit_edge ]
  %2 = ptrtoint ptr %nr_map_blocks.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_map_blocks.i, align 4
  %add.i = add i32 %3, 1
  %conv.i = zext i32 %add.i to i64
  %4 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id.i, align 4
  %6 = ptrtoint ptr %zone_nr_bitmap_blocks.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %zone_nr_bitmap_blocks.i, align 8
  %mul.i = mul i32 %7, %5
  %conv1.i = zext i32 %mul.i to i64
  %shr.i = lshr i64 %chunk_block.027, 15
  %add2.i = add nuw nsw i64 %shr.i, %conv.i
  %add3.i = add nuw nsw i64 %add2.i, %conv1.i
  %call.i = tail call fastcc ptr @dmz_get_mblock(ptr noundef %zmd, i64 noundef %add3.i) #15
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %while.body.while.end_crit_edge, label %if.end

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

if.end:                                           ; preds = %while.body
  %data = getelementptr inbounds %struct.dmz_mblock, ptr %call.i, i32 0, i32 6
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %10 = trunc i64 %chunk_block.027 to i32
  %conv2 = and i32 %10, 32767
  %11 = ptrtoint ptr %zone_bits_per_mblk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %zone_bits_per_mblk, align 4
  %sub = sub i32 %12, %conv2
  %13 = tail call i32 @llvm.umin.i32(i32 %nr_blocks.028, i32 %sub)
  %add.i24 = add i32 %13, %conv2
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i24, i32 %conv2)
  %cmp22.i = icmp sgt i32 %add.i24, %conv2
  br i1 %cmp22.i, label %if.end.while.body.i_crit_edge, label %if.end.dmz_count_bits.exit_crit_edge

if.end.dmz_count_bits.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %dmz_count_bits.exit

if.end.while.body.i_crit_edge:                    ; preds = %if.end
  br label %while.body.i

while.body.i:                                     ; preds = %while.cond.backedge.i.while.body.i_crit_edge, %if.end.while.body.i_crit_edge
  %n.024.i = phi i32 [ %n.0.be.i, %while.cond.backedge.i.while.body.i_crit_edge ], [ 0, %if.end.while.body.i_crit_edge ]
  %bit.addr.023.i = phi i32 [ %add6.i, %while.cond.backedge.i.while.body.i_crit_edge ], [ %conv2, %if.end.while.body.i_crit_edge ]
  %and.i = and i32 %bit.addr.023.i, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp1.i = icmp eq i32 %and.i, 0
  %sub.i = sub i32 %add.i24, %bit.addr.023.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %sub.i)
  %cmp2.i = icmp sgt i32 %sub.i, 31
  %or.cond.i = and i1 %cmp1.i, %cmp2.i
  br i1 %or.cond.i, label %if.then.i, label %while.body.i.if.end7.i_crit_edge

while.body.i.if.end7.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7.i

if.then.i:                                        ; preds = %while.body.i
  %div.i = sdiv i32 %bit.addr.023.i, 32
  %add.ptr.i = getelementptr i32, ptr %9, i32 %div.i
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %cmp3.i = icmp eq i32 %15, -1
  br i1 %cmp3.i, label %if.then4.i, label %if.then.i.if.end7.i_crit_edge

if.then.i.if.end7.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7.i

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %add5.i = add i32 %n.024.i, 32
  br label %while.cond.backedge.i

while.cond.backedge.i:                            ; preds = %if.end7.i, %if.then4.i
  %.sink.i = phi i32 [ 32, %if.then4.i ], [ 1, %if.end7.i ]
  %n.0.be.i = phi i32 [ %add5.i, %if.then4.i ], [ %spec.select.i, %if.end7.i ]
  %add6.i = add i32 %.sink.i, %bit.addr.023.i
  %cmp.i25 = icmp sgt i32 %add.i24, %add6.i
  br i1 %cmp.i25, label %while.cond.backedge.i.while.body.i_crit_edge, label %while.cond.backedge.i.dmz_count_bits.exit_crit_edge

while.cond.backedge.i.dmz_count_bits.exit_crit_edge: ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dmz_count_bits.exit

while.cond.backedge.i.while.body.i_crit_edge:     ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i

if.end7.i:                                        ; preds = %if.then.i.if.end7.i_crit_edge, %while.body.i.if.end7.i_crit_edge
  %div3.i.i = lshr i32 %bit.addr.023.i, 5
  %arrayidx.i.i = getelementptr i32, ptr %9, i32 %div3.i.i
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %arrayidx.i.i, align 4
  %18 = lshr i32 %17, %and.i
  %19 = and i32 %18, 1
  %spec.select.i = add i32 %19, %n.024.i
  br label %while.cond.backedge.i

dmz_count_bits.exit:                              ; preds = %while.cond.backedge.i.dmz_count_bits.exit_crit_edge, %if.end.dmz_count_bits.exit_crit_edge
  %n.0.lcssa.i = phi i32 [ 0, %if.end.dmz_count_bits.exit_crit_edge ], [ %n.0.be.i, %while.cond.backedge.i.dmz_count_bits.exit_crit_edge ]
  %add = add i32 %n.0.lcssa.i, %n.029
  tail call fastcc void @dmz_release_mblock(ptr noundef %zmd, ptr noundef %call.i)
  %sub5 = sub i32 %nr_blocks.028, %13
  %conv6 = zext i32 %13 to i64
  %add7 = add i64 %chunk_block.027, %conv6
  %tobool.not = icmp eq i32 %sub5, 0
  br i1 %tobool.not, label %dmz_count_bits.exit.while.end_crit_edge, label %dmz_count_bits.exit.while.body_crit_edge

dmz_count_bits.exit.while.body_crit_edge:         ; preds = %dmz_count_bits.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

dmz_count_bits.exit.while.end_crit_edge:          ; preds = %dmz_count_bits.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.end:                                        ; preds = %dmz_count_bits.exit.while.end_crit_edge, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %n.1 = phi i32 [ 0, %entry.while.end_crit_edge ], [ 0, %while.body.while.end_crit_edge ], [ %add, %dmz_count_bits.exit.while.end_crit_edge ]
  %weight = getelementptr inbounds %struct.dm_zone, ptr %zone, i32 0, i32 6
  %20 = ptrtoint ptr %weight to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %n.1, ptr %weight, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first_postorder(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next_postorder(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dmz_update_zone_cb(ptr nocapture noundef readonly %blkz, i32 noundef %idx, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.dm_zone, ptr %data, i32 0, i32 2
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %flags) #15
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %flags) #15
  %cond = getelementptr inbounds %struct.blk_zone, ptr %blkz, i32 0, i32 4
  %0 = ptrtoint ptr %cond to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cond, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.173)
  switch i8 %1, label %entry.if.end10_crit_edge [
    i8 15, label %entry.if.end10.sink.split_crit_edge
    i8 13, label %if.then8
  ]

entry.if.end10.sink.split_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10.sink.split

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

if.then8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10.sink.split

if.end10.sink.split:                              ; preds = %if.then8, %entry.if.end10.sink.split_crit_edge
  %.sink = phi i32 [ 4, %if.then8 ], [ 3, %entry.if.end10.sink.split_crit_edge ]
  tail call void @_set_bit(i32 noundef %.sink, ptr noundef %flags) #15
  br label %if.end10

if.end10:                                         ; preds = %if.end10.sink.split, %entry.if.end10_crit_edge
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags, align 4
  %5 = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end10.if.end16_crit_edge, label %if.then12

if.end10.if.end16_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  %wp = getelementptr inbounds %struct.blk_zone, ptr %blkz, i32 0, i32 2
  %6 = ptrtoint ptr %wp to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %wp, align 8
  %8 = ptrtoint ptr %blkz to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %blkz, align 8
  %sub = sub i64 %7, %9
  %shr = lshr i64 %sub, 3
  %conv13 = trunc i64 %shr to i32
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %if.end10.if.end16_crit_edge
  %conv13.sink = phi i32 [ %conv13, %if.then12 ], [ 0, %if.end10.if.end16_crit_edge ]
  %10 = getelementptr inbounds %struct.dm_zone, ptr %data, i32 0, i32 5
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv13.sink, ptr %10, align 4
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 153)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 153)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nounwind readonly }
attributes #12 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { argmemonly nofree nounwind readonly willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { nounwind readonly willreturn }
attributes #19 = { cold nounwind }
attributes #20 = { nounwind allocsize(2) }
attributes #21 = { nobuiltin }
attributes #22 = { nounwind allocsize(0) }
attributes #23 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !9, !10, !11, !13, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !33, !34, !36, !37, !39, !40, !42, !43, !45, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !69, !70, !72, !73, !75, !76, !78, !79, !81, !82, !84, !85, !87, !88, !90, !91, !93, !94, !96, !97, !98, !99, !101, !102, !103, !105, !106, !108, !109, !110, !112, !114, !115, !116, !117, !119, !120, !121, !122, !124, !126, !127, !128, !129, !131, !132, !134, !135, !137, !138, !140, !142, !143, !145, !146, !147, !148, !150, !151, !152, !154, !155, !156, !158, !159, !160, !162, !163, !164, !166, !167, !168, !170, !171, !173, !174, !175, !177, !178, !179, !181, !182, !183, !185, !186, !187, !188, !190, !191, !192, !194, !195, !196, !198, !199, !200, !202, !203, !204, !206, !207, !208, !210, !211, !212, !214, !215, !216, !218, !219, !220, !222, !223, !224, !226, !227, !228, !230, !231, !232, !234, !235, !236, !238, !239, !240, !241, !243, !244, !245, !246, !248, !249, !250, !252, !253, !254, !256, !257, !258, !260, !261, !262, !264, !265, !266, !267, !269, !270, !271, !272, !273, !275, !276, !277, !279, !280, !281, !283, !284, !285, !287, !288, !290, !291, !292, !293, !295, !296, !297, !299, !300, !301}
!llvm.named.register.sp = !{!302}
!llvm.module.flags = !{!303, !304, !305, !306, !307, !308, !309, !310}
!llvm.ident = !{!311}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/md/dm-zoned-metadata.c", i32 905, i32 6}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/md/dm-zoned-metadata.c", i32 2282, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @dmz_alloc_zone._entry, !3, !"_entry", i1 false, i1 false}
!6 = !{ptr @dmz_alloc_zone._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/md/dm-zoned-metadata.c", i32 2287, i32 3}
!9 = !{ptr @dmz_alloc_zone._entry.3, !8, !"_entry", i1 false, i1 false}
!10 = !{ptr @dmz_alloc_zone._entry_ptr.5, !8, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/md/dm-zoned-metadata.c", i32 2501, i32 2}
!13 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.8, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @dmz_validate_blocks.__UNIQUE_ID_ddebug288, !12, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/md/dm-zoned-metadata.c", i32 2531, i32 3}
!18 = !{ptr @dmz_validate_blocks._entry, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @dmz_validate_blocks._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/md/dm-zoned-metadata.c", i32 2581, i32 2}
!22 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @dmz_invalidate_blocks.__UNIQUE_ID_ddebug291, !21, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/md/dm-zoned-metadata.c", i32 2611, i32 3}
!26 = !{ptr @dmz_invalidate_blocks._entry, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @dmz_invalidate_blocks._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @dmz_ctr_metadata.__key, !29, !"__key", i1 false, i1 false}
!29 = !{!"../drivers/md/dm-zoned-metadata.c", i32 2899, i32 2}
!30 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @dmz_ctr_metadata.__key.14, !32, !"__key", i1 false, i1 false}
!32 = !{!"../drivers/md/dm-zoned-metadata.c", i32 2900, i32 2}
!33 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @dmz_ctr_metadata.__key.16, !35, !"__key", i1 false, i1 false}
!35 = !{!"../drivers/md/dm-zoned-metadata.c", i32 2901, i32 2}
!36 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @dmz_ctr_metadata.__key.18, !38, !"__key", i1 false, i1 false}
!38 = !{!"../drivers/md/dm-zoned-metadata.c", i32 2905, i32 2}
!39 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @dmz_ctr_metadata.__key.20, !41, !"__key", i1 false, i1 false}
!41 = !{!"../drivers/md/dm-zoned-metadata.c", i32 2914, i32 2}
!42 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/md/dm-zoned-metadata.c", i32 2930, i32 4}
!45 = !{ptr @.str.23, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @dmz_ctr_metadata._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @dmz_ctr_metadata._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/md/dm-zoned-metadata.c", i32 2936, i32 4}
!50 = !{ptr @dmz_ctr_metadata._entry.24, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @dmz_ctr_metadata._entry_ptr.26, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.28, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/md/dm-zoned-metadata.c", i32 2963, i32 3}
!54 = !{ptr @dmz_ctr_metadata._entry.27, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @dmz_ctr_metadata._entry_ptr.29, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.31, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/md/dm-zoned-metadata.c", i32 2967, i32 2}
!58 = !{ptr @dmz_ctr_metadata._entry.30, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @dmz_ctr_metadata._entry_ptr.32, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.34, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/md/dm-zoned-metadata.c", i32 2971, i32 2}
!62 = !{ptr @dmz_ctr_metadata._entry.33, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @dmz_ctr_metadata._entry_ptr.35, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.36, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/md/dm-zoned-metadata.c", i32 2973, i32 2}
!66 = !{ptr @dmz_ctr_metadata.__UNIQUE_ID_ddebug298, !65, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!67 = !{ptr @.str.37, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/md/dm-zoned-metadata.c", i32 2975, i32 2}
!69 = !{ptr @dmz_ctr_metadata.__UNIQUE_ID_ddebug299, !68, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!70 = !{ptr @.str.38, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/md/dm-zoned-metadata.c", i32 2977, i32 2}
!72 = !{ptr @dmz_ctr_metadata.__UNIQUE_ID_ddebug300, !71, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!73 = !{ptr @.str.39, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/md/dm-zoned-metadata.c", i32 2980, i32 3}
!75 = !{ptr @dmz_ctr_metadata.__UNIQUE_ID_ddebug301, !74, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!76 = !{ptr @.str.40, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/md/dm-zoned-metadata.c", i32 2983, i32 3}
!78 = !{ptr @dmz_ctr_metadata.__UNIQUE_ID_ddebug302, !77, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!79 = !{ptr @.str.41, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/md/dm-zoned-metadata.c", i32 2987, i32 2}
!81 = !{ptr @dmz_ctr_metadata.__UNIQUE_ID_ddebug303, !80, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!82 = !{ptr @.str.42, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/md/dm-zoned-metadata.c", i32 2989, i32 2}
!84 = !{ptr @dmz_ctr_metadata.__UNIQUE_ID_ddebug304, !83, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!85 = !{ptr @.str.43, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/md/dm-zoned-metadata.c", i32 2990, i32 2}
!87 = !{ptr @dmz_ctr_metadata.__UNIQUE_ID_ddebug305, !86, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!88 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/md/dm-zoned-metadata.c", i32 2992, i32 2}
!90 = !{ptr @dmz_ctr_metadata.__UNIQUE_ID_ddebug306, !89, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!91 = !{ptr @.str.45, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/md/dm-zoned-metadata.c", i32 2994, i32 2}
!93 = !{ptr @dmz_ctr_metadata.__UNIQUE_ID_ddebug307, !92, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!94 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/md/dm-zoned-metadata.c", i32 3032, i32 4}
!96 = !{ptr @.str.47, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @dmz_resume_metadata._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @dmz_resume_metadata._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.49, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/md/dm-zoned-metadata.c", i32 3039, i32 4}
!101 = !{ptr @dmz_resume_metadata._entry.48, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @dmz_resume_metadata._entry_ptr.50, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @dmz_resume_metadata._entry.51, !104, !"_entry", i1 false, i1 false}
!104 = !{!"../drivers/md/dm-zoned-metadata.c", i32 3044, i32 4}
!105 = !{ptr @dmz_resume_metadata._entry_ptr.52, !104, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.54, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/md/dm-zoned-metadata.c", i32 3052, i32 4}
!108 = !{ptr @dmz_resume_metadata._entry.53, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @dmz_resume_metadata._entry_ptr.55, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.56, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../include/linux/wait_bit.h", i32 98, i32 2}
!112 = !{ptr @.str.57, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/md/dm-zoned-metadata.c", i32 1647, i32 2}
!114 = !{ptr @.str.58, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @dmz_handle_seq_write_err._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @dmz_handle_seq_write_err._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.59, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/md/dm-zoned-metadata.c", i32 1681, i32 4}
!119 = !{ptr @.str.60, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @dmz_reset_zone._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @dmz_reset_zone._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = distinct !{null, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!124 = !{ptr @.str.62, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/md/dm-zoned-metadata.c", i32 1521, i32 3}
!126 = !{ptr @.str.63, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @dmz_init_zones._entry, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @dmz_init_zones._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.64, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/md/dm-zoned-metadata.c", i32 1526, i32 2}
!131 = !{ptr @dmz_init_zones.__UNIQUE_ID_ddebug283, !130, !"__UNIQUE_ID_ddebug283", i1 false, i1 false}
!132 = !{ptr @.str.65, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/md/dm-zoned-metadata.c", i32 1532, i32 4}
!134 = !{ptr @dmz_init_zones.__UNIQUE_ID_ddebug284, !133, !"__UNIQUE_ID_ddebug284", i1 false, i1 false}
!135 = !{ptr @.str.66, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/md/dm-zoned-metadata.c", i32 1551, i32 5}
!137 = !{ptr @dmz_init_zones.__UNIQUE_ID_ddebug285, !136, !"__UNIQUE_ID_ddebug285", i1 false, i1 false}
!138 = !{ptr @dmz_init_zones.__UNIQUE_ID_ddebug286, !139, !"__UNIQUE_ID_ddebug286", i1 false, i1 false}
!139 = !{!"../drivers/md/dm-zoned-metadata.c", i32 1568, i32 3}
!140 = !{ptr @xa_init_flags.__key, !141, !"__key", i1 false, i1 false}
!141 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!142 = !{ptr @.str.67, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @.str.68, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/md/dm-zoned-metadata.c", i32 1253, i32 3}
!145 = !{ptr @.str.69, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @dmz_load_sb._entry, !144, !"_entry", i1 false, i1 false}
!147 = !{ptr @dmz_load_sb._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.71, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/md/dm-zoned-metadata.c", i32 1262, i32 3}
!150 = !{ptr @dmz_load_sb._entry.70, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @dmz_load_sb._entry_ptr.72, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.74, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/md/dm-zoned-metadata.c", i32 1284, i32 3}
!154 = !{ptr @dmz_load_sb._entry.73, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @dmz_load_sb._entry_ptr.75, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.77, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/md/dm-zoned-metadata.c", i32 1294, i32 3}
!158 = !{ptr @dmz_load_sb._entry.76, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @dmz_load_sb._entry_ptr.78, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.80, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/md/dm-zoned-metadata.c", i32 1303, i32 4}
!162 = !{ptr @dmz_load_sb._entry.79, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @dmz_load_sb._entry_ptr.81, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.83, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/md/dm-zoned-metadata.c", i32 1315, i32 4}
!166 = !{ptr @dmz_load_sb._entry.82, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @dmz_load_sb._entry_ptr.84, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.85, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/md/dm-zoned-metadata.c", i32 1329, i32 2}
!170 = !{ptr @dmz_load_sb.__UNIQUE_ID_ddebug278, !169, !"__UNIQUE_ID_ddebug278", i1 false, i1 false}
!171 = !{ptr @.str.87, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/md/dm-zoned-metadata.c", i32 1345, i32 5}
!173 = !{ptr @dmz_load_sb._entry.86, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @dmz_load_sb._entry_ptr.88, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.90, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/md/dm-zoned-metadata.c", i32 1353, i32 5}
!177 = !{ptr @dmz_load_sb._entry.89, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @dmz_load_sb._entry_ptr.91, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.92, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/md/dm-zoned-metadata.c", i32 1118, i32 2}
!181 = !{ptr @.str.93, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @dmz_read_sb.__UNIQUE_ID_ddebug277, !180, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!183 = !{ptr @.str.94, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/md/dm-zoned-metadata.c", i32 1003, i32 3}
!185 = !{ptr @.str.95, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @dmz_check_sb._entry, !184, !"_entry", i1 false, i1 false}
!187 = !{ptr @dmz_check_sb._entry_ptr, !184, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.97, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/md/dm-zoned-metadata.c", i32 1010, i32 3}
!190 = !{ptr @dmz_check_sb._entry.96, !189, !"_entry", i1 false, i1 false}
!191 = !{ptr @dmz_check_sb._entry_ptr.98, !189, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.100, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/md/dm-zoned-metadata.c", i32 1015, i32 3}
!194 = !{ptr @dmz_check_sb._entry.99, !193, !"_entry", i1 false, i1 false}
!195 = !{ptr @dmz_check_sb._entry_ptr.101, !193, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.103, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/md/dm-zoned-metadata.c", i32 1024, i32 3}
!198 = !{ptr @dmz_check_sb._entry.102, !197, !"_entry", i1 false, i1 false}
!199 = !{ptr @dmz_check_sb._entry_ptr.104, !197, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.106, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/md/dm-zoned-metadata.c", i32 1031, i32 3}
!202 = !{ptr @dmz_check_sb._entry.105, !201, !"_entry", i1 false, i1 false}
!203 = !{ptr @dmz_check_sb._entry_ptr.107, !201, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.109, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/md/dm-zoned-metadata.c", i32 1042, i32 4}
!206 = !{ptr @dmz_check_sb._entry.108, !205, !"_entry", i1 false, i1 false}
!207 = !{ptr @dmz_check_sb._entry_ptr.110, !205, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.112, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/md/dm-zoned-metadata.c", i32 1047, i32 4}
!210 = !{ptr @dmz_check_sb._entry.111, !209, !"_entry", i1 false, i1 false}
!211 = !{ptr @dmz_check_sb._entry_ptr.113, !209, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.115, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/md/dm-zoned-metadata.c", i32 1055, i32 4}
!214 = !{ptr @dmz_check_sb._entry.114, !213, !"_entry", i1 false, i1 false}
!215 = !{ptr @dmz_check_sb._entry_ptr.116, !213, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.118, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/md/dm-zoned-metadata.c", i32 1062, i32 4}
!218 = !{ptr @dmz_check_sb._entry.117, !217, !"_entry", i1 false, i1 false}
!219 = !{ptr @dmz_check_sb._entry_ptr.119, !217, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.121, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/md/dm-zoned-metadata.c", i32 1072, i32 5}
!222 = !{ptr @dmz_check_sb._entry.120, !221, !"_entry", i1 false, i1 false}
!223 = !{ptr @dmz_check_sb._entry_ptr.122, !221, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @.str.124, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/md/dm-zoned-metadata.c", i32 1083, i32 3}
!226 = !{ptr @dmz_check_sb._entry.123, !225, !"_entry", i1 false, i1 false}
!227 = !{ptr @dmz_check_sb._entry_ptr.125, !225, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @.str.127, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/md/dm-zoned-metadata.c", i32 1089, i32 3}
!230 = !{ptr @dmz_check_sb._entry.126, !229, !"_entry", i1 false, i1 false}
!231 = !{ptr @dmz_check_sb._entry_ptr.128, !229, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @.str.130, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/md/dm-zoned-metadata.c", i32 1096, i32 3}
!234 = !{ptr @dmz_check_sb._entry.129, !233, !"_entry", i1 false, i1 false}
!235 = !{ptr @dmz_check_sb._entry_ptr.131, !233, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @.str.132, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/md/dm-zoned-metadata.c", i32 1202, i32 2}
!238 = !{ptr @.str.133, !237, !"<string literal>", i1 false, i1 false}
!239 = !{ptr @dmz_recover_mblocks._entry, !237, !"_entry", i1 false, i1 false}
!240 = !{ptr @dmz_recover_mblocks._entry_ptr, !237, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @.str.134, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/md/dm-zoned-metadata.c", i32 1733, i32 4}
!243 = !{ptr @.str.135, !242, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @dmz_load_mapping._entry, !242, !"_entry", i1 false, i1 false}
!245 = !{ptr @dmz_load_mapping._entry_ptr, !242, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @.str.137, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/md/dm-zoned-metadata.c", i32 1740, i32 4}
!248 = !{ptr @dmz_load_mapping._entry.136, !247, !"_entry", i1 false, i1 false}
!249 = !{ptr @dmz_load_mapping._entry_ptr.138, !247, !"_entry_ptr", i1 false, i1 false}
!250 = !{ptr @.str.140, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/md/dm-zoned-metadata.c", i32 1761, i32 4}
!252 = !{ptr @dmz_load_mapping._entry.139, !251, !"_entry", i1 false, i1 false}
!253 = !{ptr @dmz_load_mapping._entry_ptr.141, !251, !"_entry_ptr", i1 false, i1 false}
!254 = !{ptr @.str.143, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/md/dm-zoned-metadata.c", i32 1768, i32 4}
!256 = !{ptr @dmz_load_mapping._entry.142, !255, !"_entry", i1 false, i1 false}
!257 = !{ptr @dmz_load_mapping._entry_ptr.144, !255, !"_entry_ptr", i1 false, i1 false}
!258 = !{ptr @.str.146, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/md/dm-zoned-metadata.c", i32 1773, i32 4}
!260 = !{ptr @dmz_load_mapping._entry.145, !259, !"_entry", i1 false, i1 false}
!261 = !{ptr @dmz_load_mapping._entry_ptr.147, !259, !"_entry_ptr", i1 false, i1 false}
!262 = !{ptr @.str.148, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/md/dm-zoned-metadata.c", i32 2857, i32 3}
!264 = !{ptr @.str.149, !263, !"<string literal>", i1 false, i1 false}
!265 = !{ptr @dmz_print_dev._entry, !263, !"_entry", i1 false, i1 false}
!266 = !{ptr @dmz_print_dev._entry_ptr, !263, !"_entry_ptr", i1 false, i1 false}
!267 = !{ptr @.str.151, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/md/dm-zoned-metadata.c", i32 2859, i32 3}
!269 = !{ptr @dmz_print_dev._entry.150, !268, !"_entry", i1 false, i1 false}
!270 = !{ptr @dmz_print_dev._entry_ptr.152, !268, !"_entry_ptr", i1 false, i1 false}
!271 = !{ptr @.str.153, !268, !"<string literal>", i1 false, i1 false}
!272 = !{ptr @.str.154, !268, !"<string literal>", i1 false, i1 false}
!273 = !{ptr @.str.156, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/md/dm-zoned-metadata.c", i32 2866, i32 3}
!275 = !{ptr @dmz_print_dev._entry.155, !274, !"_entry", i1 false, i1 false}
!276 = !{ptr @dmz_print_dev._entry_ptr.157, !274, !"_entry_ptr", i1 false, i1 false}
!277 = !{ptr @.str.159, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/md/dm-zoned-metadata.c", i32 2868, i32 3}
!279 = !{ptr @dmz_print_dev._entry.158, !278, !"_entry", i1 false, i1 false}
!280 = !{ptr @dmz_print_dev._entry_ptr.160, !278, !"_entry_ptr", i1 false, i1 false}
!281 = !{ptr @.str.162, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/md/dm-zoned-metadata.c", i32 2872, i32 3}
!283 = !{ptr @dmz_print_dev._entry.161, !282, !"_entry", i1 false, i1 false}
!284 = !{ptr @dmz_print_dev._entry_ptr.163, !282, !"_entry_ptr", i1 false, i1 false}
!285 = !{ptr @dmz_print_dev._entry.164, !286, !"_entry", i1 false, i1 false}
!286 = !{!"../drivers/md/dm-zoned-metadata.c", i32 2874, i32 3}
!287 = !{ptr @dmz_print_dev._entry_ptr.165, !286, !"_entry_ptr", i1 false, i1 false}
!288 = !{ptr @.str.166, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/md/dm-zoned-metadata.c", i32 2821, i32 3}
!290 = !{ptr @.str.167, !289, !"<string literal>", i1 false, i1 false}
!291 = !{ptr @dmz_cleanup_metadata._entry, !289, !"_entry", i1 false, i1 false}
!292 = !{ptr @dmz_cleanup_metadata._entry_ptr, !289, !"_entry_ptr", i1 false, i1 false}
!293 = !{ptr @.str.169, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/md/dm-zoned-metadata.c", i32 2839, i32 3}
!295 = !{ptr @dmz_cleanup_metadata._entry.168, !294, !"_entry", i1 false, i1 false}
!296 = !{ptr @dmz_cleanup_metadata._entry_ptr.170, !294, !"_entry_ptr", i1 false, i1 false}
!297 = !{ptr @.str.171, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/md/dm-zoned-metadata.c", i32 1622, i32 3}
!299 = !{ptr @.str.172, !298, !"<string literal>", i1 false, i1 false}
!300 = !{ptr @dmz_update_zone._entry, !298, !"_entry", i1 false, i1 false}
!301 = !{ptr @dmz_update_zone._entry_ptr, !298, !"_entry_ptr", i1 false, i1 false}
!302 = !{!"sp"}
!303 = !{i32 1, !"wchar_size", i32 2}
!304 = !{i32 1, !"min_enum_size", i32 4}
!305 = !{i32 8, !"branch-target-enforcement", i32 0}
!306 = !{i32 8, !"sign-return-address", i32 0}
!307 = !{i32 8, !"sign-return-address-all", i32 0}
!308 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!309 = !{i32 7, !"uwtable", i32 1}
!310 = !{i32 7, !"frame-pointer", i32 2}
!311 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!312 = !{!"branch_weights", i32 1, i32 2000}
!313 = !{!"branch_weights", i32 2000, i32 1}
!314 = !{i64 2148636950}
!315 = !{i64 2148547369, i64 2148547401, i64 2148547430, i64 2148547464, i64 2148547495, i64 2148547518}
!316 = !{i64 2154633864}
!317 = !{i64 2148540124, i64 2148540150, i64 2148540179, i64 2148540213, i64 2148540244, i64 2148540267}
!318 = !{i64 2148542589, i64 2148542615, i64 2148542644, i64 2148542678, i64 2148542709, i64 2148542732}
!319 = !{i64 2148353517, i64 2148353522, i64 2148353535, i64 2148353579, i64 2148353613, i64 2148353634}
!320 = !{i32 0, i32 33}
!321 = !{i64 2154504356}
