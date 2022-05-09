; ModuleID = '/llk/IR_all_yes/drivers/md/dm-log-writes.c_pt.bc'
source_filename = "../drivers/md/dm-log-writes.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.target_type = type { i64, ptr, ptr, [3 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.bio_list = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.dm_arg_set = type { i32, ptr }
%struct.dm_target = type { ptr, ptr, i64, i64, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i8 }
%struct.log_writes_c = type { ptr, ptr, i64, i32, i32, %struct.atomic_t, %struct.atomic_t, i64, i64, i8, i8, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.wait_queue_head, ptr, %struct.completion }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
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
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.37, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.37 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.pending_block = type { i32, i64, i64, i64, ptr, i32, %struct.list_head, [0 x %struct.bio_vec] }
%struct.page = type { i32, %union.anon.2, %union.anon.67, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.67 = type { %struct.atomic_t }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.54, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29 }
%struct.llist_node = type { ptr }
%union.anon.29 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.31 }
%union.anon.31 = type { %struct.anon.32 }
%struct.anon.32 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.54 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.dm_dev = type { ptr, ptr, i32, [16 x i8] }
%struct.log_write_super = type { i64, i64, i64, i32 }
%struct.log_write_entry = type { i64, i64, i64, i64 }

@log_writes_target = internal global { %struct.target_type, [40 x i8] } { %struct.target_type { i64 0, ptr @.str, ptr null, [3 x i32] [i32 1, i32 1, i32 0], ptr @log_writes_ctr, ptr @log_writes_dtr, ptr @log_writes_map, ptr null, ptr null, ptr @normal_end_io, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @log_writes_status, ptr @log_writes_message, ptr @log_writes_prepare_ioctl, ptr null, ptr null, ptr @log_writes_iterate_devices, ptr @log_writes_io_hints, ptr null, ptr null, %struct.list_head zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@__initcall__kmod_dm_log_writes__278_967_dm_log_writes_init6 = internal global ptr @dm_log_writes_init, section ".initcall6.init", align 4
@__exitcall_dm_log_writes_exit = internal global ptr @dm_log_writes_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description279 = internal constant [58 x i8] c"dm_log_writes.description=device-mapper log writes target\00", section ".modinfo", align 1
@__UNIQUE_ID_author280 = internal constant [49 x i8] c"dm_log_writes.author=Josef Bacik <jbacik@fb.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file281 = internal constant [44 x i8] c"dm_log_writes.file=drivers/md/dm-log-writes\00", section ".modinfo", align 1
@__UNIQUE_ID_license282 = internal constant [26 x i8] c"dm_log_writes.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"log-writes\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Invalid argument count\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Cannot allocate context\00", [40 x i8] zeroinitializer }, align 32
@log_writes_ctr.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&lc->blocks_lock\00", [47 x i8] zeroinitializer }, align 32
@log_writes_ctr.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&lc->wait\00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Device lookup failed\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Log device lookup failed\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"log-write\00", [22 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Couldn't alloc kthread\00", [41 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@log_writes_kthread._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.13, i32 484, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013device-mapper: log-writes: Ran out of space on the logdev\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"log_writes_kthread\00", [45 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/md/dm-log-writes.c\00", [37 x i8] zeroinitializer }, align 32
@log_writes_kthread._entry_ptr = internal global ptr @log_writes_kthread._entry, section ".printk_index", align 4
@log_one_block._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.13, i32 368, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013device-mapper: log-writes: Couldn't alloc log bio\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"log_one_block\00", [18 x i8] zeroinitializer }, align 32
@log_one_block._entry_ptr = internal global ptr @log_one_block._entry, section ".printk_index", align 4
@log_one_block._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.13, i32 391, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@log_one_block._entry_ptr.18 = internal global ptr @log_one_block._entry.17, section ".printk_index", align 4
@log_one_block._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.16, ptr @.str.13, i32 404, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013device-mapper: log-writes: Couldn't add page on new bio?\0A\00", [36 x i8] zeroinitializer }, align 32
@log_one_block._entry_ptr.21 = internal global ptr @log_one_block._entry.19, section ".printk_index", align 4
@write_metadata._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.22, ptr @.str.13, i32 222, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"write_metadata\00", [17 x i8] zeroinitializer }, align 32
@write_metadata._entry_ptr = internal global ptr @write_metadata._entry, section ".printk_index", align 4
@write_metadata._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.13, i32 235, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013device-mapper: log-writes: Couldn't alloc log page\0A\00", [42 x i8] zeroinitializer }, align 32
@write_metadata._entry_ptr.25 = internal global ptr @write_metadata._entry.23, section ".printk_index", align 4
@write_metadata._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.22, ptr @.str.13, i32 250, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013device-mapper: log-writes: Couldn't add page to the log block\0A\00", [63 x i8] zeroinitializer }, align 32
@write_metadata._entry_ptr.28 = internal global ptr @write_metadata._entry.26, section ".printk_index", align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@write_inline_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.13, i32 280, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013device-mapper: log-writes: Couldn't alloc inline data bio\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"write_inline_data\00", [46 x i8] zeroinitializer }, align 32
@write_inline_data._entry_ptr = internal global ptr @write_inline_data._entry, section ".printk_index", align 4
@write_inline_data._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.13, i32 297, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013device-mapper: log-writes: Couldn't alloc inline data page\0A\00", [34 x i8] zeroinitializer }, align 32
@write_inline_data._entry_ptr.34 = internal global ptr @write_inline_data._entry.32, section ".printk_index", align 4
@write_inline_data._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.31, ptr @.str.13, i32 309, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013device-mapper: log-writes: Couldn't add page of inline data\0A\00", [33 x i8] zeroinitializer }, align 32
@write_inline_data._entry_ptr.37 = internal global ptr @write_inline_data._entry.35, section ".printk_index", align 4
@fs_bio_set = external dso_local global %struct.bio_set, align 4
@log_end_io._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.13, i32 174, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013device-mapper: log-writes: Error writing log block, error=%d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"log_end_io\00", [21 x i8] zeroinitializer }, align 32
@log_end_io._entry_ptr = internal global ptr @log_end_io._entry, section ".printk_index", align 4
@log_super._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.13, i32 434, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013device-mapper: log-writes: Couldn't write super\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"log_super\00", [22 x i8] zeroinitializer }, align 32
@log_super._entry_ptr = internal global ptr @log_super._entry, section ".printk_index", align 4
@.str.42 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/freezer.h\00", [40 x i8] zeroinitializer }, align 32
@system_freezing_cnt = external dso_local global %struct.atomic_t, align 4
@.str.43 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dm-log-writes-end\00", [46 x i8] zeroinitializer }, align 32
@log_mark._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.13, i32 613, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013device-mapper: log-writes: Error allocating pending block\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"log_mark\00", [23 x i8] zeroinitializer }, align 32
@log_mark._entry_ptr = internal global ptr @log_mark._entry, section ".printk_index", align 4
@log_mark._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.13, i32 619, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013device-mapper: log-writes: Error copying mark data\0A\00", [42 x i8] zeroinitializer }, align 32
@log_mark._entry_ptr.48 = internal global ptr @log_mark._entry.46, section ".printk_index", align 4
@log_writes_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.49, ptr @.str.13, i32 706, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"log_writes_map\00", [17 x i8] zeroinitializer }, align 32
@log_writes_map._entry_ptr = internal global ptr @log_writes_map._entry, section ".printk_index", align 4
@log_writes_map._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.49, ptr @.str.13, i32 760, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013device-mapper: log-writes: Error allocing page\0A\00", [46 x i8] zeroinitializer }, align 32
@log_writes_map._entry_ptr.52 = internal global ptr @log_writes_map._entry.50, section ".printk_index", align 4
@.str.53 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%llu %llu\00", [22 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c" logging_disabled\00", [46 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s %s\00", [26 x i8] zeroinitializer }, align 32
@log_writes_message._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.13, i32 877, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [95 x i8], [33 x i8] } { [95 x i8] c"\014device-mapper: log-writes: Invalid log-writes message arguments, expect 2 arguments, got %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"log_writes_message\00", [45 x i8] zeroinitializer }, align 32
@log_writes_message._entry_ptr = internal global ptr @log_writes_message._entry, section ".printk_index", align 4
@.str.58 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mark\00", [27 x i8] zeroinitializer }, align 32
@log_writes_message._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.57, ptr @.str.13, i32 884, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"\014device-mapper: log-writes: Unrecognised log writes target message received: %s\0A\00", [46 x i8] zeroinitializer }, align 32
@log_writes_message._entry_ptr.61 = internal global ptr @log_writes_message._entry.59, section ".printk_index", align 4
@dm_log_writes_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.13, i32 957, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013device-mapper: log-writes: register failed %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dm_log_writes_init\00", [45 x i8] zeroinitializer }, align 32
@dm_log_writes_init._entry_ptr = internal global ptr @dm_log_writes_init._entry, section ".printk_index", align 4
@switch.table.log_writes_map = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.64 = private unnamed_addr constant [18 x i8] c"log_writes_target\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 935, i32 27 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 936, i32 12 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 539, i32 15 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 545, i32 15 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 548, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 551, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 559, i32 15 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 567, i32 15 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 574, i32 20 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 577, i32 15 }
@___asan_gen_.100 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.104 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 87, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 484, i32 5 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 368, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 391, i32 5 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 404, i32 5 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 222, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 235, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 250, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 280, i32 4 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 297, i32 5 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 309, i32 5 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 174, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 434, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant [27 x i8] c"../include/linux/freezer.h\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 57, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 645, i32 15 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 613, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 619, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 706, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 760, i32 4 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 826, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 829, i32 4 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 833, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 877, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 881, i32 27 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 884, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.259 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.260 = private constant [30 x i8] c"../drivers/md/dm-log-writes.c\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 957, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant [28 x i8] c"switch.table.log_writes_map\00", align 1
@llvm.compiler.used = appending global [93 x ptr] [ptr @__UNIQUE_ID_author280, ptr @__UNIQUE_ID_description279, ptr @__UNIQUE_ID_file281, ptr @__UNIQUE_ID_license282, ptr @__exitcall_dm_log_writes_exit, ptr @__initcall__kmod_dm_log_writes__278_967_dm_log_writes_init6, ptr @dm_log_writes_exit, ptr @dm_log_writes_init._entry, ptr @dm_log_writes_init._entry_ptr, ptr @log_end_io._entry, ptr @log_end_io._entry_ptr, ptr @log_mark._entry, ptr @log_mark._entry.46, ptr @log_mark._entry_ptr, ptr @log_mark._entry_ptr.48, ptr @log_one_block._entry, ptr @log_one_block._entry.17, ptr @log_one_block._entry.19, ptr @log_one_block._entry_ptr, ptr @log_one_block._entry_ptr.18, ptr @log_one_block._entry_ptr.21, ptr @log_super._entry, ptr @log_super._entry_ptr, ptr @log_writes_kthread._entry, ptr @log_writes_kthread._entry_ptr, ptr @log_writes_map._entry, ptr @log_writes_map._entry.50, ptr @log_writes_map._entry_ptr, ptr @log_writes_map._entry_ptr.52, ptr @log_writes_message._entry, ptr @log_writes_message._entry.59, ptr @log_writes_message._entry_ptr, ptr @log_writes_message._entry_ptr.61, ptr @write_inline_data._entry, ptr @write_inline_data._entry.32, ptr @write_inline_data._entry.35, ptr @write_inline_data._entry_ptr, ptr @write_inline_data._entry_ptr.34, ptr @write_inline_data._entry_ptr.37, ptr @write_metadata._entry, ptr @write_metadata._entry.23, ptr @write_metadata._entry.26, ptr @write_metadata._entry_ptr, ptr @write_metadata._entry_ptr.25, ptr @write_metadata._entry_ptr.28, ptr @log_writes_target, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @log_writes_ctr.__key, ptr @.str.3, ptr @log_writes_ctr.__key.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @init_completion.__key, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.49, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.60, ptr @.str.62, ptr @.str.63, ptr @switch.table.log_writes_map], section "llvm.metadata"
@0 = internal global [67 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @log_writes_target to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @log_writes_ctr.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @log_writes_ctr.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @log_writes_kthread._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @log_one_block._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @log_one_block._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @log_one_block._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_metadata._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_metadata._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_metadata._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_inline_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_inline_data._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_inline_data._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @log_end_io._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @log_super._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @log_mark._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @log_mark._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @log_writes_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @log_writes_map._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @log_writes_message._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 95, i32 128, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @log_writes_message._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_log_writes_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.log_writes_map to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dm_log_writes_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dm_unregister_target(ptr noundef nonnull @log_writes_target) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_unregister_target(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dm_log_writes_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @dm_register_target(ptr noundef nonnull @log_writes_target) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, i32 noundef %call) #17
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @log_writes_ctr(ptr noundef %ti, i32 noundef %argc, ptr noundef %argv) #2 align 64 {
entry:
  %as = alloca %struct.dm_arg_set, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %as) #14
  %0 = getelementptr inbounds %struct.dm_arg_set, ptr %as, i32 0, i32 1
  %1 = ptrtoint ptr %as to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %argc, ptr %as, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %argv, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %argc)
  %cmp = icmp ult i32 %argc, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %error = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %3 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.1, ptr %error, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 224) #18
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.then3, label %do.body

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %error4 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %5 = ptrtoint ptr %error4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.2, ptr %error4, align 8
  br label %cleanup

do.body:                                          ; preds = %if.end
  %blocks_lock = getelementptr inbounds %struct.log_writes_c, ptr %call7.i.i, i32 0, i32 11
  tail call void @__raw_spin_lock_init(ptr noundef %blocks_lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @log_writes_ctr.__key, i16 noundef signext 3) #14
  %unflushed_blocks = getelementptr inbounds %struct.log_writes_c, ptr %call7.i.i, i32 0, i32 12
  %6 = ptrtoint ptr %unflushed_blocks to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %unflushed_blocks, ptr %unflushed_blocks, align 8
  %prev.i = getelementptr inbounds %struct.log_writes_c, ptr %call7.i.i, i32 0, i32 12, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %unflushed_blocks, ptr %prev.i, align 4
  %logging_blocks = getelementptr inbounds %struct.log_writes_c, ptr %call7.i.i, i32 0, i32 13
  %8 = ptrtoint ptr %logging_blocks to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %logging_blocks, ptr %logging_blocks, align 8
  %prev.i116 = getelementptr inbounds %struct.log_writes_c, ptr %call7.i.i, i32 0, i32 13, i32 1
  %9 = ptrtoint ptr %prev.i116 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %logging_blocks, ptr %prev.i116, align 4
  %wait = getelementptr inbounds %struct.log_writes_c, ptr %call7.i.i, i32 0, i32 14
  tail call void @__init_waitqueue_head(ptr noundef %wait, ptr noundef nonnull @.str.5, ptr noundef nonnull @log_writes_ctr.__key.4) #14
  %super_done = getelementptr inbounds %struct.log_writes_c, ptr %call7.i.i, i32 0, i32 16
  %10 = ptrtoint ptr %super_done to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %super_done, align 8
  %wait.i = getelementptr inbounds %struct.log_writes_c, ptr %call7.i.i, i32 0, i32 16, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.10, ptr noundef nonnull @init_completion.__key) #14
  %io_blocks = getelementptr inbounds %struct.log_writes_c, ptr %call7.i.i, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %io_blocks, i32 noundef 4) #14
  %11 = ptrtoint ptr %io_blocks to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 0, ptr %io_blocks, align 8
  %pending_blocks = getelementptr inbounds %struct.log_writes_c, ptr %call7.i.i, i32 0, i32 6
  %call.i.i115 = tail call zeroext i1 @__kasan_check_write(ptr noundef %pending_blocks, i32 noundef 4) #14
  %12 = ptrtoint ptr %pending_blocks to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile i32 0, ptr %pending_blocks, align 4
  %call10 = call ptr @dm_shift_arg(ptr noundef nonnull %as) #14
  %13 = ptrtoint ptr %ti to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ti, align 8
  %call11 = call i32 @dm_table_get_mode(ptr noundef %14) #14
  %call12 = call i32 @dm_get_device(ptr noundef %ti, ptr noundef %call10, i32 noundef %call11, ptr noundef nonnull %call7.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end16, label %if.then14

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %error15 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %15 = ptrtoint ptr %error15 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @.str.6, ptr %error15, align 8
  br label %bad

if.end16:                                         ; preds = %do.body
  %call17 = call ptr @dm_shift_arg(ptr noundef nonnull %as) #14
  %16 = ptrtoint ptr %ti to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ti, align 8
  %call19 = call i32 @dm_table_get_mode(ptr noundef %17) #14
  %logdev = getelementptr inbounds %struct.log_writes_c, ptr %call7.i.i, i32 0, i32 1
  %call20 = call i32 @dm_get_device(ptr noundef %ti, ptr noundef %call17, i32 noundef %call19, ptr noundef %logdev) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end25, label %if.then22

if.then22:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  %error23 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %18 = ptrtoint ptr %error23 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @.str.7, ptr %error23, align 8
  %19 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call7.i.i, align 8
  call void @dm_put_device(ptr noundef %ti, ptr noundef %20) #14
  br label %bad

if.end25:                                         ; preds = %if.end16
  %21 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %call7.i.i, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %bd_queue.i.i = getelementptr inbounds %struct.block_device, ptr %24, i32 0, i32 18
  %25 = ptrtoint ptr %bd_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bd_queue.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %26, null
  br i1 %tobool.not.i.i, label %if.end25.bdev_logical_block_size.exit_crit_edge, label %land.lhs.true.i.i

if.end25.bdev_logical_block_size.exit_crit_edge:  ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  br label %bdev_logical_block_size.exit

land.lhs.true.i.i:                                ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  %logical_block_size.i.i = getelementptr inbounds %struct.request_queue, ptr %26, i32 0, i32 37, i32 9
  %27 = ptrtoint ptr %logical_block_size.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %logical_block_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool2.not.i.i = icmp eq i32 %28, 0
  %spec.select.i.i = select i1 %tobool2.not.i.i, i32 512, i32 %28
  br label %bdev_logical_block_size.exit

bdev_logical_block_size.exit:                     ; preds = %land.lhs.true.i.i, %if.end25.bdev_logical_block_size.exit_crit_edge
  %retval1.0.i.i = phi i32 [ 512, %if.end25.bdev_logical_block_size.exit_crit_edge ], [ %spec.select.i.i, %land.lhs.true.i.i ]
  %sectorsize = getelementptr inbounds %struct.log_writes_c, ptr %call7.i.i, i32 0, i32 3
  %29 = ptrtoint ptr %sectorsize to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %retval1.0.i.i, ptr %sectorsize, align 8
  %30 = call i32 @llvm.ctlz.i32(i32 %retval1.0.i.i, i1 false) #14, !range !148
  %sub.i = sub nsw i32 31, %30
  %sectorshift = getelementptr inbounds %struct.log_writes_c, ptr %call7.i.i, i32 0, i32 4
  %31 = ptrtoint ptr %sectorshift to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %sub.i, ptr %sectorshift, align 4
  %call38 = call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @log_writes_kthread, ptr noundef nonnull %call7.i.i, i32 noundef -1, ptr noundef nonnull @.str.8) #14
  %cmp.i = icmp ugt ptr %call38, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then45, label %if.end51

if.then45:                                        ; preds = %bdev_logical_block_size.exit
  call void @__sanitizer_cov_trace_pc() #16
  %log_kthread118 = getelementptr inbounds %struct.log_writes_c, ptr %call7.i.i, i32 0, i32 15
  %32 = ptrtoint ptr %log_kthread118 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call38, ptr %log_kthread118, align 4
  %33 = ptrtoint ptr %call38 to i32
  %error48 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %34 = ptrtoint ptr %error48 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @.str.9, ptr %error48, align 8
  %35 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %call7.i.i, align 8
  call void @dm_put_device(ptr noundef %ti, ptr noundef %36) #14
  %37 = ptrtoint ptr %logdev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %logdev, align 4
  call void @dm_put_device(ptr noundef %ti, ptr noundef %38) #14
  br label %bad

if.end51:                                         ; preds = %bdev_logical_block_size.exit
  call void @__sanitizer_cov_trace_pc() #16
  %call41 = call i32 @wake_up_process(ptr noundef %call38) #14
  %log_kthread = getelementptr inbounds %struct.log_writes_c, ptr %call7.i.i, i32 0, i32 15
  %39 = ptrtoint ptr %log_kthread to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call38, ptr %log_kthread, align 4
  %40 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %sectorsize, align 8
  %shr = lshr i32 %41, 9
  %conv53 = zext i32 %shr to i64
  %next_sector = getelementptr inbounds %struct.log_writes_c, ptr %call7.i.i, i32 0, i32 7
  %42 = ptrtoint ptr %next_sector to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %conv53, ptr %next_sector, align 8
  %logging_enabled = getelementptr inbounds %struct.log_writes_c, ptr %call7.i.i, i32 0, i32 9
  %43 = ptrtoint ptr %logging_enabled to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %logging_enabled, align 8
  %44 = ptrtoint ptr %logdev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %logdev, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  %bd_nr_sectors.i.i = getelementptr inbounds %struct.block_device, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %bd_nr_sectors.i.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %bd_nr_sectors.i.i, align 8
  %end_sector = getelementptr inbounds %struct.log_writes_c, ptr %call7.i.i, i32 0, i32 8
  %50 = ptrtoint ptr %end_sector to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %49, ptr %end_sector, align 8
  %device_supports_discard = getelementptr inbounds %struct.log_writes_c, ptr %call7.i.i, i32 0, i32 10
  %51 = ptrtoint ptr %device_supports_discard to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 1, ptr %device_supports_discard, align 1
  %num_flush_bios = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 5
  %52 = ptrtoint ptr %num_flush_bios to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 1, ptr %num_flush_bios, align 4
  %flush_supported = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 13
  %53 = ptrtoint ptr %flush_supported to i32
  call void @__asan_load1_noabort(i32 %53)
  %bf.load = load i8, ptr %flush_supported, align 4
  %num_discard_bios = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 6
  %54 = ptrtoint ptr %num_discard_bios to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 1, ptr %num_discard_bios, align 8
  %bf.set57 = or i8 %bf.load, -64
  store i8 %bf.set57, ptr %flush_supported, align 4
  %per_io_data_size = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 10
  %55 = ptrtoint ptr %per_io_data_size to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 4, ptr %per_io_data_size, align 8
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %56 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call7.i.i, ptr %private, align 4
  br label %cleanup

bad:                                              ; preds = %if.then45, %if.then22, %if.then14
  %ret.0 = phi i32 [ %call12, %if.then14 ], [ %call20, %if.then22 ], [ %33, %if.then45 ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %cleanup

cleanup:                                          ; preds = %bad, %if.end51, %if.then3, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ %ret.0, %bad ], [ 0, %if.end51 ], [ -12, %if.then3 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %as) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @log_writes_dtr(ptr noundef %ti) #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %blocks_lock = getelementptr inbounds %struct.log_writes_c, ptr %1, i32 0, i32 11
  tail call void @_raw_spin_lock_irq(ptr noundef %blocks_lock) #14
  %unflushed_blocks = getelementptr inbounds %struct.log_writes_c, ptr %1, i32 0, i32 12
  %logging_blocks = getelementptr inbounds %struct.log_writes_c, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %unflushed_blocks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %unflushed_blocks, align 4
  %cmp.i.not.i = icmp eq ptr %3, %unflushed_blocks
  br i1 %cmp.i.not.i, label %entry.list_splice_init.exit_crit_edge, label %if.then.i

entry.list_splice_init.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_splice_init.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %logging_blocks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %logging_blocks, align 4
  %prev2.i.i = getelementptr inbounds %struct.log_writes_c, ptr %1, i32 0, i32 12, i32 1
  %6 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %logging_blocks, ptr %prev3.i.i, align 4
  store ptr %3, ptr %logging_blocks, align 4
  %9 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %5, ptr %7, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev6.i.i, align 4
  %11 = ptrtoint ptr %unflushed_blocks to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %unflushed_blocks, ptr %unflushed_blocks, align 4
  store ptr %unflushed_blocks, ptr %prev2.i.i, align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i, %entry.list_splice_init.exit_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %blocks_lock) #14
  %call = tail call fastcc i32 @log_mark(ptr noundef %1, ptr noundef nonnull @.str.43)
  %log_kthread = getelementptr inbounds %struct.log_writes_c, ptr %1, i32 0, i32 15
  %12 = ptrtoint ptr %log_kthread to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %log_kthread, align 4
  %call2 = tail call i32 @wake_up_process(ptr noundef %13) #14
  tail call void @__might_sleep(ptr noundef nonnull @.str.13, i32 noundef 648) #14
  %io_blocks = getelementptr inbounds %struct.log_writes_c, ptr %1, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %io_blocks, i32 noundef 4) #14
  %14 = ptrtoint ptr %io_blocks to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %io_blocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not = icmp eq i32 %15, 0
  br i1 %tobool.not, label %land.lhs.true, label %list_splice_init.exit.if.end_crit_edge

list_splice_init.exit.if.end_crit_edge:           ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %list_splice_init.exit
  %pending_blocks = getelementptr inbounds %struct.log_writes_c, ptr %1, i32 0, i32 6
  %call.i.i110 = tail call zeroext i1 @__kasan_check_read(ptr noundef %pending_blocks, i32 noundef 4) #14
  %16 = ptrtoint ptr %pending_blocks to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %pending_blocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool9.not = icmp eq i32 %17, 0
  br i1 %tobool9.not, label %land.lhs.true.do.end22_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true.do.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end22

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %list_splice_init.exit.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #14
  %18 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #14
  %pending_blocks15 = getelementptr inbounds %struct.log_writes_c, ptr %1, i32 0, i32 6
  %wait = getelementptr inbounds %struct.log_writes_c, ptr %1, i32 0, i32 14
  br label %for.cond

for.cond:                                         ; preds = %cleanup, %if.end
  %call10 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #14
  %call.i.i111 = call zeroext i1 @__kasan_check_read(ptr noundef %io_blocks, i32 noundef 4) #14
  %19 = ptrtoint ptr %io_blocks to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %io_blocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool13.not = icmp eq i32 %20, 0
  br i1 %tobool13.not, label %land.lhs.true14, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true14:                                  ; preds = %for.cond
  %call.i.i112 = call zeroext i1 @__kasan_check_read(ptr noundef %pending_blocks15, i32 noundef 4) #14
  %21 = ptrtoint ptr %pending_blocks15 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %pending_blocks15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool17.not = icmp eq i32 %22, 0
  br i1 %tobool17.not, label %for.end, label %land.lhs.true14.cleanup_crit_edge

land.lhs.true14.cleanup_crit_edge:                ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true14.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  call void @schedule() #14
  br label %for.cond

for.end:                                          ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #16
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #14
  br label %do.end22

do.end22:                                         ; preds = %for.end, %land.lhs.true.do.end22_crit_edge
  %23 = ptrtoint ptr %log_kthread to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %log_kthread, align 4
  %call24 = call i32 @kthread_stop(ptr noundef %24) #14
  %25 = ptrtoint ptr %logging_blocks to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %logging_blocks, align 4
  %cmp.i.not = icmp eq ptr %26, %logging_blocks
  br i1 %cmp.i.not, label %do.end22.if.end46_crit_edge, label %do.end40, !prof !149

do.end22.if.end46_crit_edge:                      ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end46

do.end40:                                         ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 651, i32 noundef 9, ptr noundef null) #14
  br label %if.end46

if.end46:                                         ; preds = %do.end40, %do.end22.if.end46_crit_edge
  %27 = ptrtoint ptr %unflushed_blocks to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %unflushed_blocks, align 4
  %cmp.i113.not = icmp eq ptr %28, %unflushed_blocks
  br i1 %cmp.i113.not, label %if.end46.if.end81_crit_edge, label %do.end75, !prof !149

if.end46.if.end81_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end81

do.end75:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 652, i32 noundef 9, ptr noundef null) #14
  br label %if.end81

if.end81:                                         ; preds = %do.end75, %if.end46.if.end81_crit_edge
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 8
  call void @dm_put_device(ptr noundef %ti, ptr noundef %30) #14
  %logdev = getelementptr inbounds %struct.log_writes_c, ptr %1, i32 0, i32 1
  %31 = ptrtoint ptr %logdev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %logdev, align 4
  call void @dm_put_device(ptr noundef %ti, ptr noundef %32) #14
  call void @kfree(ptr noundef %1) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @log_writes_map(ptr nocapture noundef readonly %ti, ptr noundef %bio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %call = tail call ptr @dm_per_bio_data(ptr noundef %bio, i32 noundef 4) #14
  %bi_opf = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %2 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bi_opf, align 8
  %conv = zext i32 %3 to i64
  %and = and i64 %conv, 262144
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  %and3 = and i64 %conv, 131072
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and3)
  %tobool4 = icmp ne i64 %and3, 0
  %and7 = and i32 %3, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and7)
  %cmp = icmp eq i32 %and7, 3
  %and12 = and i64 %conv, 4096
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and12)
  %tobool13.not = icmp eq i64 %and12, 0
  %4 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %call, align 4
  %logging_enabled = getelementptr inbounds %struct.log_writes_c, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %logging_enabled to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %logging_enabled, align 8, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool16.not = icmp eq i8 %6, 0
  br i1 %tobool16.not, label %entry.map_bio_crit_edge, label %if.end

entry.map_bio_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %map_bio

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bi_opf, align 8
  %and18 = and i32 %8, 255
  %and.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end.map_bio_crit_edge, label %if.end24

if.end.map_bio_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %map_bio

if.end24:                                         ; preds = %if.end
  %bi_iter = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8
  %bi_size = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 1
  %9 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bi_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %10)
  %tobool25.not = icmp ugt i32 %10, 511
  %tobool.not.not = xor i1 %tobool.not, true
  %brmerge = select i1 %tobool25.not, i1 true, i1 %tobool.not.not
  br i1 %brmerge, label %if.end28, label %if.end24.map_bio_crit_edge

if.end24.map_bio_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  br label %map_bio

if.end28:                                         ; preds = %if.end24
  br i1 %cmp, label %if.end28.if.end8.i.i_crit_edge, label %if.else

if.end28.if.end8.i.i_crit_edge:                   ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8.i.i

if.else:                                          ; preds = %if.end28
  %trunc.i = trunc i32 %8 to i8
  %switch.tableidx = add i8 %trunc.i, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %switch.tableidx)
  %11 = icmp ult i8 %switch.tableidx, 7
  br i1 %11, label %switch.hole_check, label %if.else.sw.epilog.i_crit_edge

if.else.sw.epilog.i_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %switch.hole_check.sw.epilog.i_crit_edge, %if.else.sw.epilog.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not54.i = icmp eq i32 %10, 0
  br i1 %tobool.not54.i, label %sw.epilog.i.bio_segments.exit_crit_edge, label %land.rhs.lr.ph.i

sw.epilog.i.bio_segments.exit_crit_edge:          ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bio_segments.exit

land.rhs.lr.ph.i:                                 ; preds = %sw.epilog.i
  %iter.sroa.15.0.bi_iter.sroa_idx.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 3
  %12 = ptrtoint ptr %iter.sroa.15.0.bi_iter.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %iter.sroa.15.0.copyload.i = load i32, ptr %iter.sroa.15.0.bi_iter.sroa_idx.i, align 8
  %iter.sroa.10.0.bi_iter.sroa_idx.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 2
  %13 = ptrtoint ptr %iter.sroa.10.0.bi_iter.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %iter.sroa.10.0.copyload.i = load i32, ptr %iter.sroa.10.0.bi_iter.sroa_idx.i, align 4
  %bi_io_vec.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 20
  %14 = ptrtoint ptr %bi_io_vec.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bi_io_vec.i, align 8
  %16 = add nsw i32 %and18, -3
  %switch.and.i.i.i = and i32 %16, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i.i.i)
  %switch.selectcmp.i.i.i = icmp eq i32 %switch.and.i.i.i, 0
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %bio_advance_iter_single.exit.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %segs.058.i = phi i32 [ 0, %land.rhs.lr.ph.i ], [ %inc.i, %bio_advance_iter_single.exit.i.land.rhs.i_crit_edge ]
  %iter.sroa.6.057.i = phi i32 [ %10, %land.rhs.lr.ph.i ], [ %sub.i.i.i, %bio_advance_iter_single.exit.i.land.rhs.i_crit_edge ]
  %iter.sroa.10.056.i = phi i32 [ %iter.sroa.10.0.copyload.i, %land.rhs.lr.ph.i ], [ %iter.sroa.10.2.i, %bio_advance_iter_single.exit.i.land.rhs.i_crit_edge ]
  %iter.sroa.15.055.i = phi i32 [ %iter.sroa.15.0.copyload.i, %land.rhs.lr.ph.i ], [ %iter.sroa.15.1.i, %bio_advance_iter_single.exit.i.land.rhs.i_crit_edge ]
  %bv_len10.i = getelementptr %struct.bio_vec, ptr %15, i32 %iter.sroa.10.056.i, i32 1
  %17 = ptrtoint ptr %bv_len10.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bv_len10.i, align 4
  %sub.i = sub i32 %18, %iter.sroa.15.055.i
  %19 = tail call i32 @llvm.umin.i32(i32 %iter.sroa.6.057.i, i32 %sub.i) #14
  %bv_offset15.i = getelementptr %struct.bio_vec, ptr %15, i32 %iter.sroa.10.056.i, i32 2
  %20 = ptrtoint ptr %bv_offset15.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bv_offset15.i, align 4
  %add17.i = add i32 %21, %iter.sroa.15.055.i
  %rem.i = and i32 %add17.i, 4095
  %sub18.i = sub nuw nsw i32 4096, %rem.i
  %22 = tail call i32 @llvm.umin.i32(i32 %19, i32 %sub18.i) #14
  %inc.i = add i32 %segs.058.i, 1
  br i1 %switch.selectcmp.i.i.i, label %land.rhs.i.bio_advance_iter_single.exit.i_crit_edge, label %if.else.i.i

land.rhs.i.bio_advance_iter_single.exit.i_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bio_advance_iter_single.exit.i

if.else.i.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  %add.i.i.i = add i32 %22, %iter.sroa.15.055.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i, i32 %18)
  %cmp.i.i.i = icmp eq i32 %add.i.i.i, %18
  %spec.select.i = select i1 %cmp.i.i.i, i32 0, i32 %add.i.i.i
  %inc.i.i.i = zext i1 %cmp.i.i.i to i32
  %spec.select53.i = add i32 %iter.sroa.10.056.i, %inc.i.i.i
  br label %bio_advance_iter_single.exit.i

bio_advance_iter_single.exit.i:                   ; preds = %if.else.i.i, %land.rhs.i.bio_advance_iter_single.exit.i_crit_edge
  %iter.sroa.15.1.i = phi i32 [ %iter.sroa.15.055.i, %land.rhs.i.bio_advance_iter_single.exit.i_crit_edge ], [ %spec.select.i, %if.else.i.i ]
  %iter.sroa.10.2.i = phi i32 [ %iter.sroa.10.056.i, %land.rhs.i.bio_advance_iter_single.exit.i_crit_edge ], [ %spec.select53.i, %if.else.i.i ]
  %sub.i.i.i = sub i32 %iter.sroa.6.057.i, %22
  %tobool.not.i = icmp eq i32 %sub.i.i.i, 0
  br i1 %tobool.not.i, label %bio_advance_iter_single.exit.i.bio_segments.exit_crit_edge, label %bio_advance_iter_single.exit.i.land.rhs.i_crit_edge

bio_advance_iter_single.exit.i.land.rhs.i_crit_edge: ; preds = %bio_advance_iter_single.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs.i

bio_advance_iter_single.exit.i.bio_segments.exit_crit_edge: ; preds = %bio_advance_iter_single.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bio_segments.exit

switch.hole_check:                                ; preds = %if.else
  %switch.shifted = lshr i8 85, %switch.tableidx
  %23 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %switch.lobit.not = icmp eq i8 %23, 0
  br i1 %switch.lobit.not, label %switch.hole_check.sw.epilog.i_crit_edge, label %switch.lookup

switch.hole_check.sw.epilog.i_crit_edge:          ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #16
  %24 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.log_writes_map, i32 0, i32 %24
  %25 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %25)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %bio_segments.exit

bio_segments.exit:                                ; preds = %switch.lookup, %bio_advance_iter_single.exit.i.bio_segments.exit_crit_edge, %sw.epilog.i.bio_segments.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %sw.epilog.i.bio_segments.exit_crit_edge ], [ %switch.load, %switch.lookup ], [ %inc.i, %bio_advance_iter_single.exit.i.bio_segments.exit_crit_edge ]
  %26 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %retval.0.i, i32 12) #14
  %27 = extractvalue { i32, i1 } %26, 1
  %28 = extractvalue { i32, i1 } %26, 0
  %spec.select.i270 = tail call i32 @llvm.uadd.sat.i32(i32 %28, i32 48) #14
  %retval.0.i271 = select i1 %27, i32 -1, i32 %spec.select.i270
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %bio_segments.exit, %if.end28.if.end8.i.i_crit_edge
  %alloc_size.0 = phi i32 [ %retval.0.i271, %bio_segments.exit ], [ 48, %if.end28.if.end8.i.i_crit_edge ]
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %alloc_size.0, i32 noundef 3328) #19
  %tobool35.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool35.not, label %do.end, label %if.end40

do.end:                                           ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44) #17
  %blocks_lock = getelementptr inbounds %struct.log_writes_c, ptr %1, i32 0, i32 11
  tail call void @_raw_spin_lock_irq(ptr noundef %blocks_lock) #14
  %29 = ptrtoint ptr %logging_enabled to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %logging_enabled, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %blocks_lock) #14
  br label %cleanup188

if.end40:                                         ; preds = %if.end8.i.i
  %list = getelementptr inbounds %struct.pending_block, ptr %call9.i.i, i32 0, i32 6
  %30 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %list, ptr %list, align 8
  %prev.i = getelementptr inbounds %struct.pending_block, ptr %call9.i.i, i32 0, i32 6, i32 1
  %31 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %list, ptr %prev.i, align 4
  %32 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call9.i.i, ptr %call, align 4
  %pending_blocks = getelementptr inbounds %struct.log_writes_c, ptr %1, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pending_blocks, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %pending_blocks, i32 1, i32 3, i32 1) #14
  %33 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pending_blocks, ptr %pending_blocks, i32 1, ptr elementtype(i32) %pending_blocks) #14, !srcloc !151
  br i1 %tobool.not, label %if.end40.if.end44_crit_edge, label %if.then43

if.end40.if.end44_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end44

if.then43:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #16
  %flags = getelementptr inbounds %struct.pending_block, ptr %call9.i.i, i32 0, i32 1
  %34 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %flags, align 8
  %or = or i64 %35, 1
  store i64 %or, ptr %flags, align 8
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %if.end40.if.end44_crit_edge
  br i1 %tobool4, label %if.then46, label %if.end44.if.end49_crit_edge

if.end44.if.end49_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end49

if.then46:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #16
  %flags47 = getelementptr inbounds %struct.pending_block, ptr %call9.i.i, i32 0, i32 1
  %36 = ptrtoint ptr %flags47 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %flags47, align 8
  %or48 = or i64 %37, 2
  store i64 %or48, ptr %flags47, align 8
  br label %if.end49

if.end49:                                         ; preds = %if.then46, %if.end44.if.end49_crit_edge
  br i1 %cmp, label %if.then51, label %if.end49.if.end54_crit_edge

if.end49.if.end54_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end54

if.then51:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #16
  %flags52 = getelementptr inbounds %struct.pending_block, ptr %call9.i.i, i32 0, i32 1
  %38 = ptrtoint ptr %flags52 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %flags52, align 8
  %or53 = or i64 %39, 4
  store i64 %or53, ptr %flags52, align 8
  br label %if.end54

if.end54:                                         ; preds = %if.then51, %if.end49.if.end54_crit_edge
  br i1 %tobool13.not, label %if.end54.if.end59_crit_edge, label %if.then56

if.end54.if.end59_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end59

if.then56:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #16
  %flags57 = getelementptr inbounds %struct.pending_block, ptr %call9.i.i, i32 0, i32 1
  %40 = ptrtoint ptr %flags57 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %flags57, align 8
  %or58 = or i64 %41, 16
  store i64 %or58, ptr %flags57, align 8
  br label %if.end59

if.end59:                                         ; preds = %if.then56, %if.end54.if.end59_crit_edge
  %42 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %bi_iter, align 8
  %sectorshift.i = getelementptr inbounds %struct.log_writes_c, ptr %1, i32 0, i32 4
  %44 = ptrtoint ptr %sectorshift.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %sectorshift.i, align 4
  %sub.i273 = add i32 %45, -9
  %sh_prom.i = zext i32 %sub.i273 to i64
  %shr.i = lshr i64 %43, %sh_prom.i
  %sector = getelementptr inbounds %struct.pending_block, ptr %call9.i.i, i32 0, i32 2
  %46 = ptrtoint ptr %sector to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %shr.i, ptr %sector, align 16
  %47 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %bi_size, align 8
  %shr64 = lshr i32 %48, 9
  %conv65 = zext i32 %shr64 to i64
  %49 = load i32, ptr %sectorshift.i, align 4
  %sub.i275 = add i32 %49, -9
  %sh_prom.i276 = zext i32 %sub.i275 to i64
  %shr.i277 = lshr i64 %conv65, %sh_prom.i276
  %nr_sectors = getelementptr inbounds %struct.pending_block, ptr %call9.i.i, i32 0, i32 3
  %50 = ptrtoint ptr %nr_sectors to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %shr.i277, ptr %nr_sectors, align 8
  br i1 %cmp, label %if.then68, label %if.end101

if.then68:                                        ; preds = %if.end59
  %spec.select = select i1 %tobool.not.not, i1 true, i1 %tobool4
  br i1 %spec.select, label %do.end84, label %if.then68.if.end90_crit_edge, !prof !152

if.then68.if.end90_crit_edge:                     ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end90

do.end84:                                         ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 730, i32 noundef 9, ptr noundef null) #14
  br label %if.end90

if.end90:                                         ; preds = %do.end84, %if.then68.if.end90_crit_edge
  %device_supports_discard = getelementptr inbounds %struct.log_writes_c, ptr %1, i32 0, i32 10
  %51 = ptrtoint ptr %device_supports_discard to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %device_supports_discard, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool98.not = icmp eq i8 %52, 0
  br i1 %tobool98.not, label %if.end100, label %if.end90.map_bio_crit_edge

if.end90.map_bio_crit_edge:                       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #16
  br label %map_bio

if.end100:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @bio_endio(ptr noundef %bio) #14
  br label %cleanup188

if.end101:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %48)
  %tobool108.not = icmp ult i32 %48, 512
  %or.cond = select i1 %tobool.not.not, i1 %tobool108.not, i1 false
  br i1 %or.cond, label %if.then109, label %if.end113

if.then109:                                       ; preds = %if.end101
  %blocks_lock110 = getelementptr inbounds %struct.log_writes_c, ptr %1, i32 0, i32 11
  tail call void @_raw_spin_lock_irq(ptr noundef %blocks_lock110) #14
  %unflushed_blocks = getelementptr inbounds %struct.log_writes_c, ptr %1, i32 0, i32 12
  %53 = ptrtoint ptr %unflushed_blocks to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile ptr, ptr %unflushed_blocks, align 4
  %cmp.i.not.i = icmp eq ptr %54, %unflushed_blocks
  br i1 %cmp.i.not.i, label %if.then109.map_bio.sink.split_crit_edge, label %if.then.i

if.then109.map_bio.sink.split_crit_edge:          ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #16
  br label %map_bio.sink.split

if.then.i:                                        ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #16
  %55 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %list, align 8
  %prev2.i.i = getelementptr inbounds %struct.log_writes_c, ptr %1, i32 0, i32 12, i32 1
  %57 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %54, i32 0, i32 1
  %59 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %list, ptr %prev3.i.i, align 4
  store ptr %54, ptr %list, align 8
  %60 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %56, ptr %58, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %56, i32 0, i32 1
  %61 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %58, ptr %prev6.i.i, align 4
  %62 = ptrtoint ptr %unflushed_blocks to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %unflushed_blocks, ptr %unflushed_blocks, align 4
  store ptr %unflushed_blocks, ptr %prev2.i.i, align 4
  br label %map_bio.sink.split

if.end113:                                        ; preds = %if.end101
  %63 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %63)
  %iter.sroa.6.0.copyload = load i32, ptr %bi_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %iter.sroa.6.0.copyload)
  %tobool116.not307 = icmp eq i32 %iter.sroa.6.0.copyload, 0
  br i1 %tobool116.not307, label %if.end113.for.end_crit_edge, label %land.rhs.lr.ph

if.end113.for.end_crit_edge:                      ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

land.rhs.lr.ph:                                   ; preds = %if.end113
  %iter.sroa.16.0.bi_iter.sroa_idx = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 3
  %64 = ptrtoint ptr %iter.sroa.16.0.bi_iter.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %64)
  %iter.sroa.16.0.copyload = load i32, ptr %iter.sroa.16.0.bi_iter.sroa_idx, align 8
  %iter.sroa.10.0.bi_iter.sroa_idx = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 2
  %65 = ptrtoint ptr %iter.sroa.10.0.bi_iter.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %65)
  %iter.sroa.10.0.copyload = load i32, ptr %iter.sroa.10.0.bi_iter.sroa_idx, align 4
  %bi_io_vec = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 20
  br label %land.rhs

land.rhs:                                         ; preds = %bio_advance_iter_single.exit.land.rhs_crit_edge, %land.rhs.lr.ph
  %i.0311 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc178, %bio_advance_iter_single.exit.land.rhs_crit_edge ]
  %iter.sroa.6.0310 = phi i32 [ %iter.sroa.6.0.copyload, %land.rhs.lr.ph ], [ %sub.i.i286, %bio_advance_iter_single.exit.land.rhs_crit_edge ]
  %iter.sroa.10.0309 = phi i32 [ %iter.sroa.10.0.copyload, %land.rhs.lr.ph ], [ %iter.sroa.10.2, %bio_advance_iter_single.exit.land.rhs_crit_edge ]
  %iter.sroa.16.0308 = phi i32 [ %iter.sroa.16.0.copyload, %land.rhs.lr.ph ], [ %iter.sroa.16.1, %bio_advance_iter_single.exit.land.rhs_crit_edge ]
  %66 = ptrtoint ptr %bi_io_vec to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %bi_io_vec, align 8
  %arrayidx = getelementptr %struct.bio_vec, ptr %67, i32 %iter.sroa.10.0309
  %68 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx, align 4
  %bv_offset = getelementptr %struct.bio_vec, ptr %67, i32 %iter.sroa.10.0309, i32 2
  %70 = ptrtoint ptr %bv_offset to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %bv_offset, align 4
  %add = add i32 %71, %iter.sroa.16.0308
  %bv_len125 = getelementptr %struct.bio_vec, ptr %67, i32 %iter.sroa.10.0309, i32 1
  %72 = ptrtoint ptr %bv_len125 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %bv_len125, align 4
  %sub = sub i32 %73, %iter.sroa.16.0308
  %74 = tail call i32 @llvm.umin.i32(i32 %iter.sroa.6.0310, i32 %sub)
  %rem = and i32 %add, 4095
  %sub137 = sub nuw nsw i32 4096, %rem
  %75 = tail call i32 @llvm.umin.i32(i32 %74, i32 %sub137)
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef 3072, i32 noundef 0, i32 noundef 0, ptr noundef null) #14
  %tobool154.not = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool154.not, label %cleanup.thread, label %if.end164

cleanup.thread:                                   ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  %call160 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51) #17
  tail call fastcc void @free_pending_block(ptr noundef %1, ptr noundef nonnull %call9.i.i)
  %blocks_lock161 = getelementptr inbounds %struct.log_writes_c, ptr %1, i32 0, i32 11
  tail call void @_raw_spin_lock_irq(ptr noundef %blocks_lock161) #14
  %76 = ptrtoint ptr %logging_enabled to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 0, ptr %logging_enabled, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %blocks_lock161) #14
  br label %cleanup188

if.end164:                                        ; preds = %land.rhs
  %div269 = lshr i32 %add, 12
  %add.ptr = getelementptr %struct.page, ptr %69, i32 %div269
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %77 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %77, 512
  %78 = tail call i32 @llvm.read_register.i32(metadata !138) #14
  %and.i.i.i.i.i = and i32 %78, -16384
  %79 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i278 = add i32 %81, 1
  store volatile i32 %add.i.i.i278, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !153
  %82 = tail call i32 @llvm.read_register.i32(metadata !138) #14
  %and.i.i.i1.i.i = and i32 %82, -16384
  %83 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %83, i32 0, i32 2
  %84 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %85, i32 0, i32 213
  %86 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %87, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !154
  %call.i.i279 = tail call ptr @__kmap_local_page_prot(ptr noundef nonnull %call38.i.i.i, i32 noundef %or.i) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %88 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i.i = or i32 %88, 512
  %call.i.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %add.ptr, i32 noundef %or.i.i.i) #14
  %add.i.i = add nuw nsw i32 %75, %rem
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i.i)
  %cmp.i.i280 = icmp ugt i32 %add.i.i, 4096
  br i1 %cmp.i.i280, label %do.body2.i.i, label %for.inc, !prof !152

do.body2.i.i:                                     ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/highmem.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 342, 0\0A.popsection", ""() #14, !srcloc !155
  unreachable

for.inc:                                          ; preds = %if.end164
  %add.ptr.i.i = getelementptr i8, ptr %call.i.i.i, i32 %rem
  %89 = call ptr @memcpy(ptr %call.i.i279, ptr %add.ptr.i.i, i32 %75)
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i.i) #14
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i279) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !156
  %90 = tail call i32 @llvm.read_register.i32(metadata !138) #14
  %and.i.i.i1.i = and i32 %90, -16384
  %91 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %91, i32 0, i32 2
  %92 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %93, i32 0, i32 213
  %94 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %95, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !157
  %96 = tail call i32 @llvm.read_register.i32(metadata !138) #14
  %and.i.i.i.i = and i32 %96, -16384
  %97 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %97, i32 0, i32 1
  %98 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %99, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  %arrayidx172 = getelementptr %struct.pending_block, ptr %call9.i.i, i32 0, i32 7, i32 %i.0311
  %100 = ptrtoint ptr %arrayidx172 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %call38.i.i.i, ptr %arrayidx172, align 4
  %bv_len177 = getelementptr %struct.pending_block, ptr %call9.i.i, i32 0, i32 7, i32 %i.0311, i32 1
  %101 = ptrtoint ptr %bv_len177 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %75, ptr %bv_len177, align 4
  %102 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %call9.i.i, align 128
  %inc = add i32 %103, 1
  store i32 %inc, ptr %call9.i.i, align 128
  %inc178 = add i32 %i.0311, 1
  %104 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %bi_opf, align 8
  %and.i.i = and i32 %105, 255
  %106 = add nsw i32 %and.i.i, -3
  %switch.and.i.i = and i32 %106, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i.i)
  %switch.selectcmp.i.i = icmp eq i32 %switch.and.i.i, 0
  br i1 %switch.selectcmp.i.i, label %for.inc.bio_advance_iter_single.exit_crit_edge, label %if.else.i

for.inc.bio_advance_iter_single.exit_crit_edge:   ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %bio_advance_iter_single.exit

if.else.i:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  %107 = ptrtoint ptr %bi_io_vec to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %bi_io_vec, align 8
  %add.i.i283 = add i32 %75, %iter.sroa.16.0308
  %bv_len.i.i = getelementptr %struct.bio_vec, ptr %108, i32 %iter.sroa.10.0309, i32 1
  %109 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %bv_len.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i283, i32 %110)
  %cmp.i.i284 = icmp eq i32 %add.i.i283, %110
  %spec.select305 = select i1 %cmp.i.i284, i32 0, i32 %add.i.i283
  %inc.i.i = zext i1 %cmp.i.i284 to i32
  %spec.select306 = add i32 %iter.sroa.10.0309, %inc.i.i
  br label %bio_advance_iter_single.exit

bio_advance_iter_single.exit:                     ; preds = %if.else.i, %for.inc.bio_advance_iter_single.exit_crit_edge
  %iter.sroa.16.1 = phi i32 [ %iter.sroa.16.0308, %for.inc.bio_advance_iter_single.exit_crit_edge ], [ %spec.select305, %if.else.i ]
  %iter.sroa.10.2 = phi i32 [ %iter.sroa.10.0309, %for.inc.bio_advance_iter_single.exit_crit_edge ], [ %spec.select306, %if.else.i ]
  %sub.i.i286 = sub i32 %iter.sroa.6.0310, %75
  %tobool116.not = icmp eq i32 %sub.i.i286, 0
  br i1 %tobool116.not, label %bio_advance_iter_single.exit.for.end_crit_edge, label %bio_advance_iter_single.exit.land.rhs_crit_edge

bio_advance_iter_single.exit.land.rhs_crit_edge:  ; preds = %bio_advance_iter_single.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs

bio_advance_iter_single.exit.for.end_crit_edge:   ; preds = %bio_advance_iter_single.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %bio_advance_iter_single.exit.for.end_crit_edge, %if.end113.for.end_crit_edge
  br i1 %tobool.not, label %for.end.map_bio_crit_edge, label %if.then182

for.end.map_bio_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %map_bio

if.then182:                                       ; preds = %for.end
  %blocks_lock183 = getelementptr inbounds %struct.log_writes_c, ptr %1, i32 0, i32 11
  tail call void @_raw_spin_lock_irq(ptr noundef %blocks_lock183) #14
  %unflushed_blocks184 = getelementptr inbounds %struct.log_writes_c, ptr %1, i32 0, i32 12
  %111 = ptrtoint ptr %unflushed_blocks184 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load volatile ptr, ptr %unflushed_blocks184, align 4
  %cmp.i.not.i287 = icmp eq ptr %112, %unflushed_blocks184
  br i1 %cmp.i.not.i287, label %if.then182.map_bio.sink.split_crit_edge, label %if.then.i291

if.then182.map_bio.sink.split_crit_edge:          ; preds = %if.then182
  call void @__sanitizer_cov_trace_pc() #16
  br label %map_bio.sink.split

if.then.i291:                                     ; preds = %if.then182
  call void @__sanitizer_cov_trace_pc() #16
  %113 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %list, align 8
  %prev2.i.i288 = getelementptr inbounds %struct.log_writes_c, ptr %1, i32 0, i32 12, i32 1
  %115 = ptrtoint ptr %prev2.i.i288 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %prev2.i.i288, align 4
  %prev3.i.i289 = getelementptr inbounds %struct.list_head, ptr %112, i32 0, i32 1
  %117 = ptrtoint ptr %prev3.i.i289 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %list, ptr %prev3.i.i289, align 4
  store ptr %112, ptr %list, align 8
  %118 = ptrtoint ptr %116 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %114, ptr %116, align 4
  %prev6.i.i290 = getelementptr inbounds %struct.list_head, ptr %114, i32 0, i32 1
  %119 = ptrtoint ptr %prev6.i.i290 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %116, ptr %prev6.i.i290, align 4
  %120 = ptrtoint ptr %unflushed_blocks184 to i32
  call void @__asan_store4_noabort(i32 %120)
  store volatile ptr %unflushed_blocks184, ptr %unflushed_blocks184, align 4
  store ptr %unflushed_blocks184, ptr %prev2.i.i288, align 4
  br label %map_bio.sink.split

map_bio.sink.split:                               ; preds = %if.then.i291, %if.then182.map_bio.sink.split_crit_edge, %if.then.i, %if.then109.map_bio.sink.split_crit_edge
  %blocks_lock183.sink = phi ptr [ %blocks_lock110, %if.then109.map_bio.sink.split_crit_edge ], [ %blocks_lock110, %if.then.i ], [ %blocks_lock183, %if.then182.map_bio.sink.split_crit_edge ], [ %blocks_lock183, %if.then.i291 ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %blocks_lock183.sink) #14
  br label %map_bio

map_bio:                                          ; preds = %map_bio.sink.split, %for.end.map_bio_crit_edge, %if.end90.map_bio_crit_edge, %if.end24.map_bio_crit_edge, %if.end.map_bio_crit_edge, %entry.map_bio_crit_edge
  %121 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %private, align 4
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %122, align 8
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %124, align 4
  %bi_flags.i.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 3
  %127 = ptrtoint ptr %bi_flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %bi_flags.i.i.i, align 4
  %conv1.i.i.i = and i16 %128, -2049
  store i16 %conv1.i.i.i, ptr %bi_flags.i.i.i, align 4
  %bi_bdev.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 1
  %129 = ptrtoint ptr %bi_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %bi_bdev.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %130, %126
  br i1 %cmp.not.i.i, label %map_bio.normal_map_bio.exit_crit_edge, label %if.then.i.i293

map_bio.normal_map_bio.exit_crit_edge:            ; preds = %map_bio
  call void @__sanitizer_cov_trace_pc() #16
  br label %normal_map_bio.exit

if.then.i.i293:                                   ; preds = %map_bio
  call void @__sanitizer_cov_trace_pc() #16
  %conv1.i8.i.i = and i16 %128, -2177
  %131 = ptrtoint ptr %bi_flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 %conv1.i8.i.i, ptr %bi_flags.i.i.i, align 4
  br label %normal_map_bio.exit

normal_map_bio.exit:                              ; preds = %if.then.i.i293, %map_bio.normal_map_bio.exit_crit_edge
  %132 = ptrtoint ptr %bi_bdev.i.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %126, ptr %bi_bdev.i.i, align 4
  tail call void @bio_associate_blkg(ptr noundef %bio) #14
  br label %cleanup188

cleanup188:                                       ; preds = %normal_map_bio.exit, %cleanup.thread, %if.end100, %do.end
  %retval.2 = phi i32 [ 1, %normal_map_bio.exit ], [ 0, %if.end100 ], [ 4, %do.end ], [ 4, %cleanup.thread ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @normal_end_io(ptr nocapture noundef readonly %ti, ptr noundef %bio, ptr nocapture noundef readnone %error) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %call = tail call ptr @dm_per_bio_data(ptr noundef %bio, i32 noundef 4) #14
  %bi_opf = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %2 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bi_opf, align 8
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %entry.if.end29_crit_edge, label %land.lhs.true

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

land.lhs.true:                                    ; preds = %entry
  %4 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %land.lhs.true.if.end29_crit_edge, label %if.then

land.lhs.true.if.end29_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

if.then:                                          ; preds = %land.lhs.true
  %blocks_lock = getelementptr inbounds %struct.log_writes_c, ptr %1, i32 0, i32 11
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %blocks_lock) #14
  %flags10 = getelementptr inbounds %struct.pending_block, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %flags10 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %flags10, align 8
  %and11 = and i64 %7, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and11)
  %tobool12.not = icmp eq i64 %and11, 0
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.then
  %list = getelementptr inbounds %struct.pending_block, ptr %5, i32 0, i32 6
  %logging_blocks = getelementptr inbounds %struct.log_writes_c, ptr %1, i32 0, i32 13
  %8 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %list, align 4
  %cmp.i.not.i = icmp eq ptr %9, %list
  br i1 %cmp.i.not.i, label %if.then13.list_splice_tail_init.exit_crit_edge, label %if.then.i

if.then13.list_splice_tail_init.exit_crit_edge:   ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_splice_tail_init.exit

if.then.i:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i = getelementptr inbounds %struct.log_writes_c, ptr %1, i32 0, i32 13, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i, align 4
  %prev2.i.i = getelementptr inbounds %struct.pending_block, ptr %5, i32 0, i32 6, i32 1
  %12 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %14 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev3.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %9, ptr %11, align 4
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %logging_blocks, ptr %13, align 4
  store ptr %13, ptr %prev.i, align 4
  %17 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %list, ptr %list, align 4
  store ptr %list, ptr %prev2.i.i, align 4
  br label %list_splice_tail_init.exit

list_splice_tail_init.exit:                       ; preds = %if.then.i, %if.then13.list_splice_tail_init.exit_crit_edge
  %prev.i44 = getelementptr inbounds %struct.log_writes_c, ptr %1, i32 0, i32 13, i32 1
  %18 = ptrtoint ptr %prev.i44 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i44, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %19, ptr noundef %logging_blocks) #14
  br i1 %call.i.i, label %if.end.i.i, label %list_splice_tail_init.exit.list_add_tail.exit_crit_edge

list_splice_tail_init.exit.list_add_tail.exit_crit_edge: ; preds = %list_splice_tail_init.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %list_splice_tail_init.exit
  call void @__sanitizer_cov_trace_pc() #16
  %20 = ptrtoint ptr %prev.i44 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %list, ptr %prev.i44, align 4
  %21 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %logging_blocks, ptr %list, align 4
  %prev3.i.i45 = getelementptr inbounds %struct.pending_block, ptr %5, i32 0, i32 6, i32 1
  %22 = ptrtoint ptr %prev3.i.i45 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev3.i.i45, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %list, ptr %19, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %list_splice_tail_init.exit.list_add_tail.exit_crit_edge
  %log_kthread = getelementptr inbounds %struct.log_writes_c, ptr %1, i32 0, i32 15
  %24 = ptrtoint ptr %log_kthread to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %log_kthread, align 4
  %call16 = tail call i32 @wake_up_process(ptr noundef %25) #14
  br label %if.end27

if.else:                                          ; preds = %if.then
  %and18 = and i64 %7, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and18)
  %tobool19.not = icmp eq i64 %and18, 0
  %list26 = getelementptr inbounds %struct.pending_block, ptr %5, i32 0, i32 6
  br i1 %tobool19.not, label %if.else25, label %if.then20

if.then20:                                        ; preds = %if.else
  %logging_blocks22 = getelementptr inbounds %struct.log_writes_c, ptr %1, i32 0, i32 13
  %prev.i46 = getelementptr inbounds %struct.log_writes_c, ptr %1, i32 0, i32 13, i32 1
  %26 = ptrtoint ptr %prev.i46 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i46, align 4
  %call.i.i47 = tail call zeroext i1 @__list_add_valid(ptr noundef %list26, ptr noundef %27, ptr noundef %logging_blocks22) #14
  br i1 %call.i.i47, label %if.end.i.i49, label %if.then20.list_add_tail.exit50_crit_edge

if.then20.list_add_tail.exit50_crit_edge:         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail.exit50

if.end.i.i49:                                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #16
  %28 = ptrtoint ptr %prev.i46 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %list26, ptr %prev.i46, align 4
  %29 = ptrtoint ptr %list26 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %logging_blocks22, ptr %list26, align 4
  %prev3.i.i48 = getelementptr inbounds %struct.pending_block, ptr %5, i32 0, i32 6, i32 1
  %30 = ptrtoint ptr %prev3.i.i48 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev3.i.i48, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %list26, ptr %27, align 4
  br label %list_add_tail.exit50

list_add_tail.exit50:                             ; preds = %if.end.i.i49, %if.then20.list_add_tail.exit50_crit_edge
  %log_kthread23 = getelementptr inbounds %struct.log_writes_c, ptr %1, i32 0, i32 15
  %32 = ptrtoint ptr %log_kthread23 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %log_kthread23, align 4
  %call24 = tail call i32 @wake_up_process(ptr noundef %33) #14
  br label %if.end27

if.else25:                                        ; preds = %if.else
  %unflushed_blocks = getelementptr inbounds %struct.log_writes_c, ptr %1, i32 0, i32 12
  %prev.i51 = getelementptr inbounds %struct.log_writes_c, ptr %1, i32 0, i32 12, i32 1
  %34 = ptrtoint ptr %prev.i51 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i51, align 4
  %call.i.i52 = tail call zeroext i1 @__list_add_valid(ptr noundef %list26, ptr noundef %35, ptr noundef %unflushed_blocks) #14
  br i1 %call.i.i52, label %if.end.i.i54, label %if.else25.if.end27_crit_edge

if.else25.if.end27_crit_edge:                     ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27

if.end.i.i54:                                     ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #16
  %36 = ptrtoint ptr %prev.i51 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %list26, ptr %prev.i51, align 4
  %37 = ptrtoint ptr %list26 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %unflushed_blocks, ptr %list26, align 4
  %prev3.i.i53 = getelementptr inbounds %struct.pending_block, ptr %5, i32 0, i32 6, i32 1
  %38 = ptrtoint ptr %prev3.i.i53 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %prev3.i.i53, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %list26, ptr %35, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.end.i.i54, %if.else25.if.end27_crit_edge, %list_add_tail.exit50, %list_add_tail.exit
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %blocks_lock, i32 noundef %call7) #14
  br label %if.end29

if.end29:                                         ; preds = %if.end27, %land.lhs.true.if.end29_crit_edge, %entry.if.end29_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @log_writes_status(ptr nocapture noundef readonly %ti, i32 noundef %type, i32 noundef %status_flags, ptr noundef %result, i32 noundef %maxlen) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %2 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb11
    i32 2, label %sw.bb23
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxlen)
  %cmp = icmp eq i32 %maxlen, 0
  br i1 %cmp, label %sw.bb.cond.end_crit_edge, label %cond.false

sw.bb.cond.end_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

cond.false:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  %logged_entries = getelementptr inbounds %struct.log_writes_c, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %logged_entries to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %logged_entries, align 8
  %next_sector = getelementptr inbounds %struct.log_writes_c, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %next_sector to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %next_sector, align 8
  %sub1 = add i64 %6, -1
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %result, i32 noundef %maxlen, ptr noundef nonnull @.str.53, i64 noundef %4, i64 noundef %sub1) #14
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %sw.bb.cond.end_crit_edge
  %cond = phi i32 [ %call, %cond.false ], [ 0, %sw.bb.cond.end_crit_edge ]
  %logging_enabled = getelementptr inbounds %struct.log_writes_c, ptr %1, i32 0, i32 9
  %7 = ptrtoint ptr %logging_enabled to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %logging_enabled, align 8, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %maxlen)
  %cmp2.not = icmp ult i32 %cond, %maxlen
  %or.cond = select i1 %tobool.not, i1 %cmp2.not, i1 false
  br i1 %or.cond, label %cond.false4, label %cond.end.sw.epilog_crit_edge

cond.end.sw.epilog_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

cond.false4:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr5 = getelementptr i8, ptr %result, i32 %cond
  %sub6 = sub i32 %maxlen, %cond
  %call7 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr5, i32 noundef %sub6, ptr noundef nonnull @.str.54) #14
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxlen)
  %cmp12 = icmp eq i32 %maxlen, 0
  br i1 %cmp12, label %sw.bb11.sw.epilog_crit_edge, label %cond.false14

sw.bb11.sw.epilog_crit_edge:                      ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

cond.false14:                                     ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #16
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 8
  %name = getelementptr inbounds %struct.dm_dev, ptr %10, i32 0, i32 3
  %logdev = getelementptr inbounds %struct.log_writes_c, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %logdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %logdev, align 4
  %name17 = getelementptr inbounds %struct.dm_dev, ptr %12, i32 0, i32 3
  %call19 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %result, i32 noundef %maxlen, ptr noundef nonnull @.str.55, ptr noundef %name, ptr noundef %name17) #14
  br label %sw.epilog

sw.bb23:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %13 = ptrtoint ptr %result to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %result, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb23, %cond.false14, %sw.bb11.sw.epilog_crit_edge, %cond.false4, %cond.end.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @log_writes_message(ptr nocapture noundef readonly %ti, i32 noundef %argc, ptr nocapture noundef readonly %argv, ptr nocapture noundef readnone %result, i32 noundef %maxlen) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %argc)
  %cmp.not = icmp eq i32 %argc, 2
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %argc) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %argv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %argv, align 4
  %call1 = tail call i32 @strcasecmp(ptr noundef %3, ptr noundef nonnull @.str.58)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then2, label %do.end7

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx3 = getelementptr ptr, ptr %argv, i32 1
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx3, align 4
  %call4 = tail call fastcc i32 @log_mark(ptr noundef %1, ptr noundef %5)
  br label %cleanup

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef %3) #17
  br label %cleanup

cleanup:                                          ; preds = %do.end7, %if.then2, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end7 ], [ %call4, %if.then2 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @log_writes_prepare_ioctl(ptr nocapture noundef readonly %ti, ptr nocapture noundef writeonly %bdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %6 = ptrtoint ptr %bdev to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %bdev, align 4
  %len = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 3
  %7 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %len, align 8
  %9 = load ptr, ptr %3, align 4
  %bd_nr_sectors.i = getelementptr inbounds %struct.block_device, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %bd_nr_sectors.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %bd_nr_sectors.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %11)
  %cmp.not = icmp ne i64 %8, %11
  %. = zext i1 %cmp.not to i32
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @log_writes_iterate_devices(ptr noundef %ti, ptr nocapture noundef readonly %fn, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %len = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 3
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %len, align 8
  %call = tail call i32 %fn(ptr noundef %ti, ptr noundef %3, i64 noundef 0, i64 noundef %5, ptr noundef %data) #14
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @log_writes_io_hints(ptr nocapture noundef readonly %ti, ptr nocapture noundef writeonly %limits) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %bd_queue.i = getelementptr inbounds %struct.block_device, ptr %5, i32 0, i32 18
  %6 = ptrtoint ptr %bd_queue.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bd_queue.i, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %queue_flags = getelementptr inbounds %struct.request_queue, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %queue_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %queue_flags, align 4
  %10 = and i32 %9, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool2.not = icmp eq i32 %10, 0
  br i1 %tobool2.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %device_supports_discard = getelementptr inbounds %struct.log_writes_c, ptr %1, i32 0, i32 10
  %11 = ptrtoint ptr %device_supports_discard to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %device_supports_discard, align 1
  %sectorsize = getelementptr inbounds %struct.log_writes_c, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sectorsize, align 8
  %discard_granularity = getelementptr inbounds %struct.queue_limits, ptr %limits, i32 0, i32 18
  %14 = ptrtoint ptr %discard_granularity to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %discard_granularity, align 4
  %max_discard_sectors = getelementptr inbounds %struct.queue_limits, ptr %limits, i32 0, i32 13
  %15 = ptrtoint ptr %max_discard_sectors to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 8388607, ptr %max_discard_sectors, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %bd_queue.i.i = getelementptr inbounds %struct.block_device, ptr %19, i32 0, i32 18
  %20 = ptrtoint ptr %bd_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bd_queue.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %21, null
  br i1 %tobool.not.i.i, label %if.end.bdev_logical_block_size.exit_crit_edge, label %land.lhs.true.i.i

if.end.bdev_logical_block_size.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %bdev_logical_block_size.exit

land.lhs.true.i.i:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %logical_block_size.i.i = getelementptr inbounds %struct.request_queue, ptr %21, i32 0, i32 37, i32 9
  %22 = ptrtoint ptr %logical_block_size.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %logical_block_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool2.not.i.i = icmp eq i32 %23, 0
  %spec.select.i.i = select i1 %tobool2.not.i.i, i32 512, i32 %23
  br label %bdev_logical_block_size.exit

bdev_logical_block_size.exit:                     ; preds = %land.lhs.true.i.i, %if.end.bdev_logical_block_size.exit_crit_edge
  %retval1.0.i.i = phi i32 [ 512, %if.end.bdev_logical_block_size.exit_crit_edge ], [ %spec.select.i.i, %land.lhs.true.i.i ]
  %logical_block_size = getelementptr inbounds %struct.queue_limits, ptr %limits, i32 0, i32 9
  %24 = ptrtoint ptr %logical_block_size to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %retval1.0.i.i, ptr %logical_block_size, align 4
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 8
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %bd_queue.i.i20 = getelementptr inbounds %struct.block_device, ptr %28, i32 0, i32 18
  %29 = ptrtoint ptr %bd_queue.i.i20 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bd_queue.i.i20, align 4
  %physical_block_size.i.i = getelementptr inbounds %struct.request_queue, ptr %30, i32 0, i32 37, i32 8
  %31 = ptrtoint ptr %physical_block_size.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %physical_block_size.i.i, align 4
  %physical_block_size = getelementptr inbounds %struct.queue_limits, ptr %limits, i32 0, i32 8
  %33 = ptrtoint ptr %physical_block_size to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %physical_block_size, align 4
  %io_min = getelementptr inbounds %struct.queue_limits, ptr %limits, i32 0, i32 11
  %34 = ptrtoint ptr %io_min to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %32, ptr %io_min, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_shift_arg(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_get_device(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_table_get_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_put_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @log_writes_kthread(ptr noundef %arg) #2 align 64 {
entry:
  %super.i = alloca %struct.log_write_super, align 8
  %entry1.i = alloca %struct.log_write_entry, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call318 = tail call zeroext i1 @kthread_should_stop() #14
  br i1 %call318, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %blocks_lock = getelementptr inbounds %struct.log_writes_c, ptr %arg, i32 0, i32 11
  %logging_blocks = getelementptr inbounds %struct.log_writes_c, ptr %arg, i32 0, i32 13
  %logging_enabled3 = getelementptr inbounds %struct.log_writes_c, ptr %arg, i32 0, i32 9
  %next_sector = getelementptr inbounds %struct.log_writes_c, ptr %arg, i32 0, i32 7
  %sectorshift.i = getelementptr inbounds %struct.log_writes_c, ptr %arg, i32 0, i32 4
  %end_sector = getelementptr inbounds %struct.log_writes_c, ptr %arg, i32 0, i32 8
  %logdev.i = getelementptr inbounds %struct.log_writes_c, ptr %arg, i32 0, i32 1
  %logged_entries = getelementptr inbounds %struct.log_writes_c, ptr %arg, i32 0, i32 2
  %io_blocks = getelementptr inbounds %struct.log_writes_c, ptr %arg, i32 0, i32 5
  %0 = getelementptr inbounds %struct.log_write_entry, ptr %entry1.i, i32 0, i32 1
  %1 = getelementptr inbounds %struct.log_write_entry, ptr %entry1.i, i32 0, i32 2
  %2 = getelementptr inbounds %struct.log_write_entry, ptr %entry1.i, i32 0, i32 3
  %head.i.i = getelementptr inbounds %struct.log_writes_c, ptr %arg, i32 0, i32 14, i32 1
  %wait.i = getelementptr inbounds %struct.log_writes_c, ptr %arg, i32 0, i32 14
  %sectorsize.i.i = getelementptr inbounds %struct.log_writes_c, ptr %arg, i32 0, i32 3
  %pending_blocks.i.i = getelementptr inbounds %struct.log_writes_c, ptr %arg, i32 0, i32 6
  %3 = getelementptr inbounds i8, ptr %super.i, i32 24
  %version.i = getelementptr inbounds %struct.log_write_super, ptr %super.i, i32 0, i32 1
  %nr_entries.i = getelementptr inbounds %struct.log_write_super, ptr %super.i, i32 0, i32 2
  %super_done.i = getelementptr inbounds %struct.log_writes_c, ptr %arg, i32 0, i32 16
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %sector.0319 = phi i64 [ 0, %while.body.lr.ph ], [ %sector.1294, %cleanup.while.body_crit_edge ]
  tail call void @_raw_spin_lock_irq(ptr noundef %blocks_lock) #14
  %4 = ptrtoint ptr %logging_blocks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %logging_blocks, align 4
  %cmp.i.not = icmp eq ptr %5, %logging_blocks
  br i1 %cmp.i.not, label %next36.thread, label %if.then

next36.thread:                                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_unlock_irq(ptr noundef %blocks_lock) #14
  br label %if.end59

if.then:                                          ; preds = %while.body
  %add.ptr = getelementptr i8, ptr %5, i32 -40
  %call.i.i254 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %5) #14
  br i1 %call.i.i254, label %if.end.i.i, label %if.then.list_del_init.exit_crit_edge

if.then.list_del_init.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then.list_del_init.exit_crit_edge
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %5, ptr %5, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %5, ptr %prev.i3.i, align 4
  %14 = ptrtoint ptr %logging_enabled3 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %logging_enabled3, align 8, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool4.not = icmp eq i8 %15, 0
  br i1 %tobool4.not, label %list_del_init.exit.next36_crit_edge, label %if.end

list_del_init.exit.next36_crit_edge:              ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %next36

if.end:                                           ; preds = %list_del_init.exit
  %16 = ptrtoint ptr %next_sector to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %next_sector, align 8
  %flags = getelementptr i8, ptr %5, i32 -32
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %flags, align 8
  %and = and i64 %19, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool6.not = icmp eq i64 %and, 0
  br i1 %tobool6.not, label %if.then7, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %nr_sectors = getelementptr i8, ptr %5, i32 -16
  %20 = ptrtoint ptr %nr_sectors to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %nr_sectors, align 8
  %22 = ptrtoint ptr %sectorshift.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sectorshift.i, align 4
  %sub.i = add i32 %23, -9
  %sh_prom.i = zext i32 %sub.i to i64
  %shl.i = shl i64 %21, %sh_prom.i
  %add = add i64 %shl.i, %17
  %24 = ptrtoint ptr %next_sector to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %add, ptr %next_sector, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end.if.end10_crit_edge
  %25 = ptrtoint ptr %sectorshift.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sectorshift.i, align 4
  %sub.i256 = add i32 %26, -9
  %sh_prom.i257 = zext i32 %sub.i256 to i64
  %shl.i258 = shl nuw i64 1, %sh_prom.i257
  %27 = ptrtoint ptr %next_sector to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %next_sector, align 8
  %add13 = add i64 %shl.i258, %28
  store i64 %add13, ptr %next_sector, align 8
  %29 = ptrtoint ptr %end_sector to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %end_sector, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %30)
  %tobool14.not = icmp eq i64 %30, 0
  br i1 %tobool14.not, label %if.end18, label %if.end10.land.lhs.true_crit_edge

if.end10.land.lhs.true_crit_edge:                 ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true

if.end18:                                         ; preds = %if.end10
  %31 = ptrtoint ptr %logdev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %logdev.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %bd_nr_sectors.i.i = getelementptr inbounds %struct.block_device, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %bd_nr_sectors.i.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %bd_nr_sectors.i.i, align 8
  %37 = ptrtoint ptr %end_sector to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %36, ptr %end_sector, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %36)
  %tobool20.not = icmp eq i64 %36, 0
  br i1 %tobool20.not, label %if.end18.if.end27_crit_edge, label %if.end18.land.lhs.true_crit_edge

if.end18.land.lhs.true_crit_edge:                 ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true

if.end18.if.end27_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27

land.lhs.true:                                    ; preds = %if.end18.land.lhs.true_crit_edge, %if.end10.land.lhs.true_crit_edge
  %38 = phi i64 [ %36, %if.end18.land.lhs.true_crit_edge ], [ %30, %if.end10.land.lhs.true_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %add13, i64 %38)
  %cmp.not = icmp ult i64 %add13, %38
  br i1 %cmp.not, label %land.lhs.true.if.end27_crit_edge, label %next36.thread327

land.lhs.true.if.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27

if.end27:                                         ; preds = %land.lhs.true.if.end27_crit_edge, %if.end18.if.end27_crit_edge
  %39 = ptrtoint ptr %logged_entries to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %logged_entries, align 8
  %inc = add i64 %40, 1
  store i64 %inc, ptr %logged_entries, align 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %io_blocks, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %io_blocks, i32 1, i32 3, i32 1) #14
  %41 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %io_blocks, ptr %io_blocks, i32 1, ptr elementtype(i32) %io_blocks) #14, !srcloc !151
  %42 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %flags, align 8
  %and29 = and i64 %43, 10
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and29)
  %tobool30.not = icmp eq i64 %and29, 0
  br i1 %tobool30.not, label %if.end27.next36thread-pre-split_crit_edge, label %if.then32

if.end27.next36thread-pre-split_crit_edge:        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  br label %next36thread-pre-split

if.then32:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i253 = tail call zeroext i1 @__kasan_check_write(ptr noundef %io_blocks, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %io_blocks, i32 1, i32 3, i32 1) #14
  %44 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %io_blocks, ptr %io_blocks, i32 1, ptr elementtype(i32) %io_blocks) #14, !srcloc !151
  br label %next36thread-pre-split

next36thread-pre-split:                           ; preds = %if.then32, %if.end27.next36thread-pre-split_crit_edge
  %45 = ptrtoint ptr %logging_enabled3 to i32
  call void @__asan_load1_noabort(i32 %45)
  %.pr = load i8, ptr %logging_enabled3, align 8
  br label %next36

next36:                                           ; preds = %next36thread-pre-split, %list_del_init.exit.next36_crit_edge
  %46 = phi i8 [ %.pr, %next36thread-pre-split ], [ 0, %list_del_init.exit.next36_crit_edge ]
  %super.0.shrunk = phi i1 [ %tobool30.not, %next36thread-pre-split ], [ true, %list_del_init.exit.next36_crit_edge ]
  %sector.1 = phi i64 [ %17, %next36thread-pre-split ], [ %sector.0319, %list_del_init.exit.next36_crit_edge ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %blocks_lock) #14
  %tobool41.not = icmp eq ptr %add.ptr, null
  br i1 %tobool41.not, label %next36.if.end59_crit_edge, label %if.then42

next36.if.end59_crit_edge:                        ; preds = %next36
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end59

next36.thread327:                                 ; preds = %land.lhs.true
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #17
  %47 = ptrtoint ptr %logging_enabled3 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %logging_enabled3, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %blocks_lock) #14
  %tobool41.not330 = icmp eq ptr %add.ptr, null
  br i1 %tobool41.not330, label %next36.thread327.if.end59_crit_edge, label %next36.thread327.if.else_crit_edge

next36.thread327.if.else_crit_edge:               ; preds = %next36.thread327
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

next36.thread327.if.end59_crit_edge:              ; preds = %next36.thread327
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end59

if.then42:                                        ; preds = %next36
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool38.not = icmp eq i8 %46, 0
  br i1 %tobool38.not, label %if.then42.if.else_crit_edge, label %if.then44

if.then42.if.else_crit_edge:                      ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.then44:                                        ; preds = %if.then42
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %entry1.i) #14
  %sector2.i = getelementptr i8, ptr %5, i32 -24
  %48 = ptrtoint ptr %sector2.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %sector2.i, align 8
  %50 = tail call i64 @llvm.bswap.i64(i64 %49) #14
  %51 = ptrtoint ptr %entry1.i to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %50, ptr %entry1.i, align 8
  %nr_sectors.i = getelementptr i8, ptr %5, i32 -16
  %52 = ptrtoint ptr %nr_sectors.i to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %nr_sectors.i, align 8
  %54 = tail call i64 @llvm.bswap.i64(i64 %53) #14
  %55 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %54, ptr %0, align 8
  %flags.i = getelementptr i8, ptr %5, i32 -32
  %56 = ptrtoint ptr %flags.i to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %flags.i, align 8
  %58 = tail call i64 @llvm.bswap.i64(i64 %57) #14
  %59 = ptrtoint ptr %1 to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %58, ptr %1, align 8
  %datalen.i = getelementptr i8, ptr %5, i32 -4
  %60 = ptrtoint ptr %datalen.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %datalen.i, align 4
  %conv.i259 = zext i32 %61 to i64
  %62 = tail call i64 @llvm.bswap.i64(i64 %conv.i259) #14
  %63 = ptrtoint ptr %2 to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %62, ptr %2, align 8
  %and.i = and i64 %57, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 0, i32 %61
  %data.i = getelementptr i8, ptr %5, i32 -8
  %64 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %data.i, align 8
  %call.i = call fastcc i32 @write_metadata(ptr noundef %arg, ptr noundef nonnull %entry1.i, ptr noundef %65, i32 noundef %spec.select.i, i64 noundef %sector.1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool8.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool8.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @free_pending_block(ptr noundef %arg, ptr noundef nonnull %add.ptr) #14
  br label %if.end51.thread304

if.end.i:                                         ; preds = %if.then44
  %66 = ptrtoint ptr %sectorshift.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %sectorshift.i, align 4
  %sub.i.i = add i32 %67, -9
  %sh_prom.i.i = zext i32 %sub.i.i to i64
  %shl.i.i = shl nuw i64 1, %sh_prom.i.i
  %add.i = add i64 %shl.i.i, %sector.1
  %68 = ptrtoint ptr %datalen.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %datalen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool11.not.i = icmp ne i32 %69, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %cmp.i260 = icmp eq i32 %spec.select.i, 0
  %or.cond.i = and i1 %cmp.i260, %tobool11.not.i
  br i1 %or.cond.i, label %while.body.lr.ph.i.i, label %if.end20.i

while.body.lr.ph.i.i:                             ; preds = %if.end.i
  %70 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %data.i, align 8
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %for.end.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %data.addr.023.i.i = phi ptr [ %71, %while.body.lr.ph.i.i ], [ %data.addr.1.lcssa.i.i, %for.end.i.i.while.body.i.i_crit_edge ]
  %datalen.addr.022.i.i = phi i32 [ %69, %while.body.lr.ph.i.i ], [ %datalen.addr.1.lcssa.i.i, %for.end.i.i.while.body.i.i_crit_edge ]
  %sector.addr.021.i.i = phi i64 [ %add.i, %while.body.lr.ph.i.i ], [ %add48.i.i, %for.end.i.i.while.body.i.i_crit_edge ]
  %sub.i169.i = add i32 %datalen.addr.022.i.i, 4095
  %div1.i.i = lshr i32 %sub.i169.i, 12
  %72 = tail call i32 @llvm.umin.i32(i32 %div1.i.i, i32 256) #14
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %io_blocks, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %io_blocks, i32 1, i32 3, i32 1) #14
  %73 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %io_blocks, ptr %io_blocks, i32 1, ptr elementtype(i32) %io_blocks) #14, !srcloc !151
  %conv.i.i = trunc i32 %72 to i16
  %call.i.i170.i = tail call ptr @bio_alloc_bioset(i32 noundef 3264, i16 noundef zeroext %conv.i.i, ptr noundef nonnull @fs_bio_set) #14
  %tobool3.not.i.i = icmp eq ptr %call.i.i170.i, null
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %if.end.i.i261

do.end.i.i:                                       ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call4.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #17
  br label %error.i.i

if.end.i.i261:                                    ; preds = %while.body.i.i
  %bi_iter.i.i = getelementptr inbounds %struct.bio, ptr %call.i.i170.i, i32 0, i32 8
  %bi_size.i.i = getelementptr inbounds %struct.bio, ptr %call.i.i170.i, i32 0, i32 8, i32 1
  %74 = ptrtoint ptr %bi_size.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %bi_size.i.i, align 8
  %75 = ptrtoint ptr %bi_iter.i.i to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 %sector.addr.021.i.i, ptr %bi_iter.i.i, align 8
  %76 = ptrtoint ptr %logdev.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %logdev.i, align 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %77, align 4
  %bi_flags.i.i.i.i = getelementptr inbounds %struct.bio, ptr %call.i.i170.i, i32 0, i32 3
  %80 = ptrtoint ptr %bi_flags.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %bi_flags.i.i.i.i, align 4
  %conv1.i.i.i.i = and i16 %81, -2049
  store i16 %conv1.i.i.i.i, ptr %bi_flags.i.i.i.i, align 4
  %bi_bdev.i.i.i = getelementptr inbounds %struct.bio, ptr %call.i.i170.i, i32 0, i32 1
  %82 = ptrtoint ptr %bi_bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %bi_bdev.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %83, %79
  br i1 %cmp.not.i.i.i, label %if.end.i.i261.bio_set_dev.exit.i.i_crit_edge, label %if.then.i.i.i

if.end.i.i261.bio_set_dev.exit.i.i_crit_edge:     ; preds = %if.end.i.i261
  call void @__sanitizer_cov_trace_pc() #16
  br label %bio_set_dev.exit.i.i

if.then.i.i.i:                                    ; preds = %if.end.i.i261
  call void @__sanitizer_cov_trace_pc() #16
  %conv1.i8.i.i.i = and i16 %81, -2177
  %84 = ptrtoint ptr %bi_flags.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %conv1.i8.i.i.i, ptr %bi_flags.i.i.i.i, align 4
  br label %bio_set_dev.exit.i.i

bio_set_dev.exit.i.i:                             ; preds = %if.then.i.i.i, %if.end.i.i261.bio_set_dev.exit.i.i_crit_edge
  %85 = ptrtoint ptr %bi_bdev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %79, ptr %bi_bdev.i.i.i, align 4
  tail call void @bio_associate_blkg(ptr noundef nonnull %call.i.i170.i) #14
  %bi_end_io.i.i = getelementptr inbounds %struct.bio, ptr %call.i.i170.i, i32 0, i32 10
  %86 = ptrtoint ptr %bi_end_io.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @log_end_io, ptr %bi_end_io.i.i, align 8
  %bi_private.i.i = getelementptr inbounds %struct.bio, ptr %call.i.i170.i, i32 0, i32 11
  %87 = ptrtoint ptr %bi_private.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %arg, ptr %bi_private.i.i, align 4
  %bi_opf.i.i.i = getelementptr inbounds %struct.bio, ptr %call.i.i170.i, i32 0, i32 2
  %88 = ptrtoint ptr %bi_opf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 1, ptr %bi_opf.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp15.not.i.i = icmp eq i32 %72, 0
  br i1 %cmp15.not.i.i, label %bio_set_dev.exit.i.i.for.end.i.i_crit_edge, label %bio_set_dev.exit.i.i.for.body.i.i_crit_edge

bio_set_dev.exit.i.i.for.body.i.i_crit_edge:      ; preds = %bio_set_dev.exit.i.i
  br label %for.body.i.i

bio_set_dev.exit.i.i.for.end.i.i_crit_edge:       ; preds = %bio_set_dev.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %if.end44.i.i.for.body.i.i_crit_edge, %bio_set_dev.exit.i.i.for.body.i.i_crit_edge
  %data.addr.118.i.i = phi ptr [ %add.ptr46.i.i, %if.end44.i.i.for.body.i.i_crit_edge ], [ %data.addr.023.i.i, %bio_set_dev.exit.i.i.for.body.i.i_crit_edge ]
  %datalen.addr.117.i.i = phi i32 [ %sub45.i.i, %if.end44.i.i.for.body.i.i_crit_edge ], [ %datalen.addr.022.i.i, %bio_set_dev.exit.i.i.for.body.i.i_crit_edge ]
  %i.016.i.i = phi i32 [ %inc.i.i, %if.end44.i.i.for.body.i.i_crit_edge ], [ 0, %bio_set_dev.exit.i.i.for.body.i.i_crit_edge ]
  %89 = tail call i32 @llvm.smin.i32(i32 %datalen.addr.117.i.i, i32 4096) #14
  %90 = ptrtoint ptr %sectorsize.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %sectorsize.i.i, align 8
  %sub10.i.i = add i32 %89, -1
  %add11.i.i = add i32 %sub10.i.i, %91
  %neg.i.i = sub i32 0, %91
  %and.i.i = and i32 %add11.i.i, %neg.i.i
  %call38.i.i.i.i.i = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #14
  %tobool15.not.i.i = icmp eq ptr %call38.i.i.i.i.i, null
  br i1 %tobool15.not.i.i, label %do.end19.i.i, label %if.end22.i.i

do.end19.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call21.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #17
  br label %error_bio.i.i

if.end22.i.i:                                     ; preds = %for.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %92 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i.i = or i32 %92, 512
  %93 = tail call i32 @llvm.read_register.i32(metadata !138) #14
  %and.i.i.i.i.i.i.i = and i32 %93, -16384
  %94 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %94, i32 0, i32 1
  %95 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %96, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !153
  %97 = tail call i32 @llvm.read_register.i32(metadata !138) #14
  %and.i.i.i1.i.i.i.i = and i32 %97, -16384
  %98 = inttoptr i32 %and.i.i.i1.i.i.i.i to ptr
  %task.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %98, i32 0, i32 2
  %99 = ptrtoint ptr %task.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %task.i.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %100, i32 0, i32 213
  %101 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %pagefault_disabled.i.i.i.i.i.i, align 8
  %inc.i.i.i.i.i.i = add i32 %102, 1
  store i32 %inc.i.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !154
  %call.i.i2.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef nonnull %call38.i.i.i.i.i, i32 noundef %or.i.i.i) #14
  %103 = call ptr @memcpy(ptr %call.i.i2.i.i, ptr %data.addr.118.i.i, i32 %89)
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i, i32 %89)
  %cmp24.i.i = icmp sgt i32 %and.i.i, %89
  br i1 %cmp24.i.i, label %if.then26.i.i, label %if.end22.i.i.do.end32.i.i_crit_edge

if.end22.i.i.do.end32.i.i_crit_edge:              ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end32.i.i

if.then26.i.i:                                    ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i.i = getelementptr i8, ptr %call.i.i2.i.i, i32 %89
  %sub27.i.i = sub i32 %and.i.i, %89
  %104 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %sub27.i.i)
  br label %do.end32.i.i

do.end32.i.i:                                     ; preds = %if.then26.i.i, %if.end22.i.i.do.end32.i.i_crit_edge
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i2.i.i) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !156
  %105 = tail call i32 @llvm.read_register.i32(metadata !138) #14
  %and.i.i.i1.i.i.i = and i32 %105, -16384
  %106 = inttoptr i32 %and.i.i.i1.i.i.i to ptr
  %task.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %106, i32 0, i32 2
  %107 = ptrtoint ptr %task.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %task.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %108, i32 0, i32 213
  %109 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %pagefault_disabled.i.i.i.i.i, align 8
  %dec.i.i.i.i.i = add i32 %110, -1
  store i32 %dec.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !157
  %111 = tail call i32 @llvm.read_register.i32(metadata !138) #14
  %and.i.i.i.i.i.i = and i32 %111, -16384
  %112 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %112, i32 0, i32 1
  %113 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %sub.i.i.i.i = add i32 %114, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  %call35.i.i = tail call i32 @bio_add_page(ptr noundef nonnull %call.i.i170.i, ptr noundef nonnull %call38.i.i.i.i.i, i32 noundef %and.i.i, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %call35.i.i, i32 %and.i.i)
  %cmp36.not.i.i = icmp eq i32 %call35.i.i, %and.i.i
  br i1 %cmp36.not.i.i, label %if.end44.i.i, label %do.end41.i.i

do.end41.i.i:                                     ; preds = %do.end32.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call43.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #17
  tail call void @__free_pages(ptr noundef nonnull %call38.i.i.i.i.i, i32 noundef 0) #14
  br label %error_bio.i.i

if.end44.i.i:                                     ; preds = %do.end32.i.i
  %sub45.i.i = sub i32 %datalen.addr.117.i.i, %89
  %add.ptr46.i.i = getelementptr i8, ptr %data.addr.118.i.i, i32 %89
  %inc.i.i = add nuw nsw i32 %i.016.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %72
  br i1 %exitcond.not.i.i, label %if.end44.i.i.for.end.i.i_crit_edge, label %if.end44.i.i.for.body.i.i_crit_edge

if.end44.i.i.for.body.i.i_crit_edge:              ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

if.end44.i.i.for.end.i.i_crit_edge:               ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %if.end44.i.i.for.end.i.i_crit_edge, %bio_set_dev.exit.i.i.for.end.i.i_crit_edge
  %datalen.addr.1.lcssa.i.i = phi i32 [ %datalen.addr.022.i.i, %bio_set_dev.exit.i.i.for.end.i.i_crit_edge ], [ %sub45.i.i, %if.end44.i.i.for.end.i.i_crit_edge ]
  %data.addr.1.lcssa.i.i = phi ptr [ %data.addr.023.i.i, %bio_set_dev.exit.i.i.for.end.i.i_crit_edge ], [ %add.ptr46.i.i, %if.end44.i.i.for.end.i.i_crit_edge ]
  tail call void @submit_bio(ptr noundef nonnull %call.i.i170.i) #14
  %mul.i.i = shl nuw nsw i32 %72, 3
  %115 = zext i32 %mul.i.i to i64
  %add48.i.i = add i64 %sector.addr.021.i.i, %115
  %tobool.not.i.i = icmp eq i32 %datalen.addr.1.lcssa.i.i, 0
  br i1 %tobool.not.i.i, label %for.end.i.i.out.i_crit_edge, label %for.end.i.i.while.body.i.i_crit_edge

for.end.i.i.while.body.i.i_crit_edge:             ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i.i

for.end.i.i.out.i_crit_edge:                      ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i

error_bio.i.i:                                    ; preds = %do.end41.i.i, %do.end19.i.i
  tail call void @bio_free_pages(ptr noundef nonnull %call.i.i170.i) #14
  tail call void @bio_put(ptr noundef nonnull %call.i.i170.i) #14
  br label %error.i.i

error.i.i:                                        ; preds = %error_bio.i.i, %do.end.i.i
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %io_blocks, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !158
  tail call void @llvm.prefetch.p0(ptr %io_blocks, i32 1, i32 3, i32 1) #14
  %116 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %io_blocks, ptr %io_blocks, i32 1, ptr elementtype(i32) %io_blocks) #14, !srcloc !159
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %116, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !160
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i.i, label %do.end.i.i.i, label %error.i.i.if.then18.i_crit_edge

error.i.i.if.then18.i_crit_edge:                  ; preds = %error.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then18.i

do.end.i.i.i:                                     ; preds = %error.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !161
  %117 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load volatile ptr, ptr %head.i.i, align 4
  %cmp.i.i9.not.i.i.i = icmp eq ptr %118, %head.i.i
  br i1 %cmp.i.i9.not.i.i.i, label %do.end.i.i.i.if.then18.i_crit_edge, label %if.then4.i.i.i

do.end.i.i.i.if.then18.i_crit_edge:               ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then18.i

if.then4.i.i.i:                                   ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__wake_up(ptr noundef %wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  br label %if.then18.i

if.then18.i:                                      ; preds = %if.then4.i.i.i, %do.end.i.i.i.if.then18.i_crit_edge, %error.i.i.if.then18.i_crit_edge
  tail call fastcc void @free_pending_block(ptr noundef %arg, ptr noundef nonnull %add.ptr) #14
  br label %if.end51.thread304

if.end20.i:                                       ; preds = %if.end.i
  %119 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %add.ptr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %tobool21.not.i = icmp eq i32 %120, 0
  br i1 %tobool21.not.i, label %if.end20.i.out.i_crit_edge, label %if.end23.i

if.end20.i.out.i_crit_edge:                       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i

if.end23.i:                                       ; preds = %if.end20.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %io_blocks, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %io_blocks, i32 1, i32 3, i32 1) #14
  %121 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %io_blocks, ptr %io_blocks, i32 1, ptr elementtype(i32) %io_blocks) #14, !srcloc !151
  %122 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %add.ptr, align 8
  %124 = tail call i32 @llvm.umin.i32(i32 %123, i32 256) #14
  %conv26.i = trunc i32 %124 to i16
  %call.i.i262 = tail call ptr @bio_alloc_bioset(i32 noundef 3264, i16 noundef zeroext %conv26.i, ptr noundef nonnull @fs_bio_set) #14
  %tobool28.not.i = icmp eq ptr %call.i.i262, null
  br i1 %tobool28.not.i, label %do.end.i, label %if.end31.i

do.end.i:                                         ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #16
  %call30.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #17
  br label %error.i

if.end31.i:                                       ; preds = %if.end23.i
  %bi_iter.i = getelementptr inbounds %struct.bio, ptr %call.i.i262, i32 0, i32 8
  %bi_size.i = getelementptr inbounds %struct.bio, ptr %call.i.i262, i32 0, i32 8, i32 1
  %125 = ptrtoint ptr %bi_size.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 0, ptr %bi_size.i, align 8
  %126 = ptrtoint ptr %bi_iter.i to i32
  call void @__asan_store8_noabort(i32 %126)
  store i64 %add.i, ptr %bi_iter.i, align 8
  %127 = ptrtoint ptr %logdev.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %logdev.i, align 4
  %129 = ptrtoint ptr %128 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %128, align 4
  %bi_flags.i.i.i = getelementptr inbounds %struct.bio, ptr %call.i.i262, i32 0, i32 3
  %131 = ptrtoint ptr %bi_flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %bi_flags.i.i.i, align 4
  %conv1.i.i.i = and i16 %132, -2049
  store i16 %conv1.i.i.i, ptr %bi_flags.i.i.i, align 4
  %bi_bdev.i.i = getelementptr inbounds %struct.bio, ptr %call.i.i262, i32 0, i32 1
  %133 = ptrtoint ptr %bi_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %bi_bdev.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %134, %130
  br i1 %cmp.not.i.i, label %if.end31.i.bio_set_dev.exit.i_crit_edge, label %if.then.i.i

if.end31.i.bio_set_dev.exit.i_crit_edge:          ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bio_set_dev.exit.i

if.then.i.i:                                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv1.i8.i.i = and i16 %132, -2177
  %135 = ptrtoint ptr %bi_flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %135)
  store i16 %conv1.i8.i.i, ptr %bi_flags.i.i.i, align 4
  br label %bio_set_dev.exit.i

bio_set_dev.exit.i:                               ; preds = %if.then.i.i, %if.end31.i.bio_set_dev.exit.i_crit_edge
  %136 = ptrtoint ptr %bi_bdev.i.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %130, ptr %bi_bdev.i.i, align 4
  tail call void @bio_associate_blkg(ptr noundef nonnull %call.i.i262) #14
  %bi_end_io.i = getelementptr inbounds %struct.bio, ptr %call.i.i262, i32 0, i32 10
  %137 = ptrtoint ptr %bi_end_io.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr @log_end_io, ptr %bi_end_io.i, align 8
  %bi_private.i = getelementptr inbounds %struct.bio, ptr %call.i.i262, i32 0, i32 11
  %138 = ptrtoint ptr %bi_private.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %arg, ptr %bi_private.i, align 4
  %bi_opf.i.i = getelementptr inbounds %struct.bio, ptr %call.i.i262, i32 0, i32 2
  %139 = ptrtoint ptr %bi_opf.i.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 1, ptr %bi_opf.i.i, align 8
  %140 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %add.ptr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %cmp34195.i = icmp sgt i32 %141, 0
  br i1 %cmp34195.i, label %bio_set_dev.exit.i.for.body.i_crit_edge, label %bio_set_dev.exit.i.for.end.i_crit_edge

bio_set_dev.exit.i.for.end.i_crit_edge:           ; preds = %bio_set_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

bio_set_dev.exit.i.for.body.i_crit_edge:          ; preds = %bio_set_dev.exit.i
  br label %for.body.i

for.body.i:                                       ; preds = %if.end85.i.for.body.i_crit_edge, %bio_set_dev.exit.i.for.body.i_crit_edge
  %sector.addr.0199.i = phi i64 [ %add90.i, %if.end85.i.for.body.i_crit_edge ], [ %add.i, %bio_set_dev.exit.i.for.body.i_crit_edge ]
  %bio.0198.i = phi ptr [ %bio.1.i, %if.end85.i.for.body.i_crit_edge ], [ %call.i.i262, %bio_set_dev.exit.i.for.body.i_crit_edge ]
  %i.0196.i = phi i32 [ %inc.i, %if.end85.i.for.body.i_crit_edge ], [ 0, %bio_set_dev.exit.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.pending_block, ptr %add.ptr, i32 0, i32 7, i32 %i.0196.i
  %142 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %arrayidx.i, align 4
  %bv_len.i = getelementptr %struct.pending_block, ptr %add.ptr, i32 0, i32 7, i32 %i.0196.i, i32 1
  %144 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %bv_len.i, align 4
  %call38.i = tail call i32 @bio_add_page(ptr noundef %bio.0198.i, ptr noundef %143, i32 noundef %145, i32 noundef 0) #14
  %146 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %bv_len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call38.i, i32 %147)
  %cmp42.not.i = icmp eq i32 %call38.i, %147
  br i1 %cmp42.not.i, label %for.body.i.if.end85.i_crit_edge, label %if.then44.i

for.body.i.if.end85.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end85.i

if.then44.i:                                      ; preds = %for.body.i
  %call.i.i168.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %io_blocks, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %io_blocks, i32 1, i32 3, i32 1) #14
  %148 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %io_blocks, ptr %io_blocks, i32 1, ptr elementtype(i32) %io_blocks) #14, !srcloc !151
  tail call void @submit_bio(ptr noundef %bio.0198.i) #14
  %149 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %add.ptr, align 8
  %sub.i264 = sub i32 %150, %i.0196.i
  %151 = tail call i32 @llvm.umin.i32(i32 %sub.i264, i32 256) #14
  %conv48.i = trunc i32 %151 to i16
  %call.i172.i = tail call ptr @bio_alloc_bioset(i32 noundef 3264, i16 noundef zeroext %conv48.i, ptr noundef nonnull @fs_bio_set) #14
  %tobool50.not.i = icmp eq ptr %call.i172.i, null
  br i1 %tobool50.not.i, label %do.end54.i, label %if.end57.i

do.end54.i:                                       ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #16
  %call56.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #17
  br label %error.i

if.end57.i:                                       ; preds = %if.then44.i
  %bi_iter58.i = getelementptr inbounds %struct.bio, ptr %call.i172.i, i32 0, i32 8
  %bi_size59.i = getelementptr inbounds %struct.bio, ptr %call.i172.i, i32 0, i32 8, i32 1
  %152 = ptrtoint ptr %bi_size59.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 0, ptr %bi_size59.i, align 8
  %153 = ptrtoint ptr %bi_iter58.i to i32
  call void @__asan_store8_noabort(i32 %153)
  store i64 %sector.addr.0199.i, ptr %bi_iter58.i, align 8
  %154 = ptrtoint ptr %logdev.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %logdev.i, align 4
  %156 = ptrtoint ptr %155 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %155, align 4
  %bi_flags.i.i173.i = getelementptr inbounds %struct.bio, ptr %call.i172.i, i32 0, i32 3
  %158 = ptrtoint ptr %bi_flags.i.i173.i to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %bi_flags.i.i173.i, align 4
  %conv1.i.i174.i = and i16 %159, -2049
  store i16 %conv1.i.i174.i, ptr %bi_flags.i.i173.i, align 4
  %bi_bdev.i175.i = getelementptr inbounds %struct.bio, ptr %call.i172.i, i32 0, i32 1
  %160 = ptrtoint ptr %bi_bdev.i175.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %bi_bdev.i175.i, align 4
  %cmp.not.i176.i = icmp eq ptr %161, %157
  br i1 %cmp.not.i176.i, label %if.end57.i.bio_set_dev.exit180.i_crit_edge, label %if.then.i178.i

if.end57.i.bio_set_dev.exit180.i_crit_edge:       ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bio_set_dev.exit180.i

if.then.i178.i:                                   ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv1.i8.i177.i = and i16 %159, -2177
  %162 = ptrtoint ptr %bi_flags.i.i173.i to i32
  call void @__asan_store2_noabort(i32 %162)
  store i16 %conv1.i8.i177.i, ptr %bi_flags.i.i173.i, align 4
  br label %bio_set_dev.exit180.i

bio_set_dev.exit180.i:                            ; preds = %if.then.i178.i, %if.end57.i.bio_set_dev.exit180.i_crit_edge
  %163 = ptrtoint ptr %bi_bdev.i175.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr %157, ptr %bi_bdev.i175.i, align 4
  tail call void @bio_associate_blkg(ptr noundef nonnull %call.i172.i) #14
  %bi_end_io64.i = getelementptr inbounds %struct.bio, ptr %call.i172.i, i32 0, i32 10
  %164 = ptrtoint ptr %bi_end_io64.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr @log_end_io, ptr %bi_end_io64.i, align 8
  %bi_private65.i = getelementptr inbounds %struct.bio, ptr %call.i172.i, i32 0, i32 11
  %165 = ptrtoint ptr %bi_private65.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr %arg, ptr %bi_private65.i, align 4
  %bi_opf.i181.i = getelementptr inbounds %struct.bio, ptr %call.i172.i, i32 0, i32 2
  %166 = ptrtoint ptr %bi_opf.i181.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 1, ptr %bi_opf.i181.i, align 8
  %167 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %arrayidx.i, align 4
  %169 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %bv_len.i, align 4
  %call72.i = tail call i32 @bio_add_page(ptr noundef nonnull %call.i172.i, ptr noundef %168, i32 noundef %170, i32 noundef 0) #14
  %171 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %bv_len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call72.i, i32 %172)
  %cmp76.not.i = icmp eq i32 %call72.i, %172
  br i1 %cmp76.not.i, label %bio_set_dev.exit180.i.if.end85.i_crit_edge, label %do.end81.i

bio_set_dev.exit180.i.if.end85.i_crit_edge:       ; preds = %bio_set_dev.exit180.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end85.i

do.end81.i:                                       ; preds = %bio_set_dev.exit180.i
  call void @__sanitizer_cov_trace_pc() #16
  %call83.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #17
  tail call void @bio_put(ptr noundef nonnull %call.i172.i) #14
  br label %error.i

if.end85.i:                                       ; preds = %bio_set_dev.exit180.i.if.end85.i_crit_edge, %for.body.i.if.end85.i_crit_edge
  %bio.1.i = phi ptr [ %call.i172.i, %bio_set_dev.exit180.i.if.end85.i_crit_edge ], [ %bio.0198.i, %for.body.i.if.end85.i_crit_edge ]
  %173 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %bv_len.i, align 4
  %shr.i = lshr i32 %174, 9
  %conv89.i = zext i32 %shr.i to i64
  %add90.i = add i64 %sector.addr.0199.i, %conv89.i
  %inc.i = add nuw nsw i32 %i.0196.i, 1
  %175 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %add.ptr, align 8
  %cmp34.i = icmp slt i32 %inc.i, %176
  br i1 %cmp34.i, label %if.end85.i.for.body.i_crit_edge, label %if.end85.i.for.end.i_crit_edge

if.end85.i.for.end.i_crit_edge:                   ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

if.end85.i.for.body.i_crit_edge:                  ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.end.i:                                        ; preds = %if.end85.i.for.end.i_crit_edge, %bio_set_dev.exit.i.for.end.i_crit_edge
  %bio.0.lcssa.i = phi ptr [ %call.i.i262, %bio_set_dev.exit.i.for.end.i_crit_edge ], [ %bio.1.i, %if.end85.i.for.end.i_crit_edge ]
  tail call void @submit_bio(ptr noundef %bio.0.lcssa.i) #14
  br label %out.i

out.i:                                            ; preds = %for.end.i, %if.end20.i.out.i_crit_edge, %for.end.i.i.out.i_crit_edge
  %177 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %data.i, align 8
  tail call void @kfree(ptr noundef %178) #14
  tail call void @kfree(ptr noundef nonnull %add.ptr) #14
  %call.i.i.i182.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pending_blocks.i.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !158
  tail call void @llvm.prefetch.p0(ptr %pending_blocks.i.i, i32 1, i32 3, i32 1) #14
  %179 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pending_blocks.i.i, ptr %pending_blocks.i.i, i32 1, ptr elementtype(i32) %pending_blocks.i.i) #14, !srcloc !159
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %179, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !160
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %do.end.i183.i, label %out.i.log_one_block.exit_crit_edge

out.i.log_one_block.exit_crit_edge:               ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %log_one_block.exit

do.end.i183.i:                                    ; preds = %out.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !162
  %180 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load volatile ptr, ptr %head.i.i, align 4
  %cmp.i.i9.not.i.i = icmp eq ptr %181, %head.i.i
  br i1 %cmp.i.i9.not.i.i, label %do.end.i183.i.log_one_block.exit_crit_edge, label %if.then4.i.i

do.end.i183.i.log_one_block.exit_crit_edge:       ; preds = %do.end.i183.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %log_one_block.exit

if.then4.i.i:                                     ; preds = %do.end.i183.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__wake_up(ptr noundef %wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  br label %log_one_block.exit

error.i:                                          ; preds = %do.end81.i, %do.end54.i, %do.end.i
  tail call fastcc void @free_pending_block(ptr noundef %arg, ptr noundef nonnull %add.ptr) #14
  %call.i.i.i282 = tail call zeroext i1 @__kasan_check_write(ptr noundef %io_blocks, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !158
  tail call void @llvm.prefetch.p0(ptr %io_blocks, i32 1, i32 3, i32 1) #14
  %182 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %io_blocks, ptr %io_blocks, i32 1, ptr elementtype(i32) %io_blocks) #14, !srcloc !159
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %182, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !160
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.end.i283, label %error.i.if.end51.thread304_crit_edge

error.i.if.end51.thread304_crit_edge:             ; preds = %error.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end51.thread304

do.end.i283:                                      ; preds = %error.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !161
  %183 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load volatile ptr, ptr %head.i.i, align 4
  %cmp.i.i9.not.i = icmp eq ptr %184, %head.i.i
  br i1 %cmp.i.i9.not.i, label %do.end.i283.if.end51.thread304_crit_edge, label %if.then4.i

do.end.i283.if.end51.thread304_crit_edge:         ; preds = %do.end.i283
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end51.thread304

if.then4.i:                                       ; preds = %do.end.i283
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__wake_up(ptr noundef %wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  br label %if.end51.thread304

if.end51.thread304:                               ; preds = %if.then4.i, %do.end.i283.if.end51.thread304_crit_edge, %error.i.if.end51.thread304_crit_edge, %if.then18.i, %if.then.i
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %entry1.i) #14
  br label %if.then53

log_one_block.exit:                               ; preds = %if.then4.i.i, %do.end.i183.i.log_one_block.exit_crit_edge, %out.i.log_one_block.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %entry1.i) #14
  br i1 %super.0.shrunk, label %log_one_block.exit.cleanup_crit_edge, label %if.then49

log_one_block.exit.cleanup_crit_edge:             ; preds = %log_one_block.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then49:                                        ; preds = %log_one_block.exit
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %super.i) #14
  %185 = ptrtoint ptr %3 to i32
  call void @__asan_store8_noabort(i32 %185)
  store i64 -1, ptr %3, align 8
  %186 = ptrtoint ptr %super.i to i32
  call void @__asan_store8_noabort(i32 %186)
  store i64 8243966074558835200, ptr %super.i, align 8
  %187 = ptrtoint ptr %version.i to i32
  call void @__asan_store8_noabort(i32 %187)
  store i64 72057594037927936, ptr %version.i, align 8
  %188 = ptrtoint ptr %logged_entries to i32
  call void @__asan_load8_noabort(i32 %188)
  %189 = load i64, ptr %logged_entries, align 8
  %190 = tail call i64 @llvm.bswap.i64(i64 %189) #14
  %191 = ptrtoint ptr %nr_entries.i to i32
  call void @__asan_store8_noabort(i32 %191)
  store i64 %190, ptr %nr_entries.i, align 8
  %192 = ptrtoint ptr %sectorsize.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %sectorsize.i.i, align 8
  %194 = tail call i32 @llvm.bswap.i32(i32 %193) #14
  %195 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 %194, ptr %3, align 8
  %call.i265 = call fastcc i32 @write_metadata(ptr noundef %arg, ptr noundef nonnull %super.i, ptr noundef null, i32 noundef 0, i64 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i265)
  %tobool.not.i266 = icmp eq i32 %call.i265, 0
  br i1 %tobool.not.i266, label %if.end51.thread307, label %if.end51

if.end51.thread307:                               ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @wait_for_completion_io(ptr noundef %super_done.i) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %super.i) #14
  br label %cleanup

if.end51:                                         ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #16
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %super.i) #14
  br label %if.then53

if.then53:                                        ; preds = %if.end51, %if.end51.thread304
  tail call void @_raw_spin_lock_irq(ptr noundef %blocks_lock) #14
  %196 = ptrtoint ptr %logging_enabled3 to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 0, ptr %logging_enabled3, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %blocks_lock) #14
  br label %cleanup

if.else:                                          ; preds = %if.then42.if.else_crit_edge, %next36.thread327.if.else_crit_edge
  %sector.1332338 = phi i64 [ %sector.1, %if.then42.if.else_crit_edge ], [ %17, %next36.thread327.if.else_crit_edge ]
  tail call fastcc void @free_pending_block(ptr noundef %arg, ptr noundef nonnull %add.ptr)
  br label %cleanup

if.end59:                                         ; preds = %next36.thread327.if.end59_crit_edge, %next36.if.end59_crit_edge, %next36.thread
  %sector.1295 = phi i64 [ %sector.0319, %next36.thread ], [ %sector.1, %next36.if.end59_crit_edge ], [ %17, %next36.thread327.if.end59_crit_edge ]
  %197 = tail call i32 @llvm.read_register.i32(metadata !138) #14
  %and.i.i270 = and i32 %197, -16384
  %198 = inttoptr i32 %and.i.i270 to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %198, i32 0, i32 2
  %199 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %task.i, align 8
  %flags.i271 = getelementptr inbounds %struct.task_struct, ptr %200, i32 0, i32 3
  %201 = ptrtoint ptr %flags.i271 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %flags.i271, align 4
  %and.i272 = and i32 %202, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i272)
  %tobool.not.i273 = icmp eq i32 %and.i272, 0
  br i1 %tobool.not.i273, label %if.then.i274, label %if.end59.if.end.i276_crit_edge

if.end59.if.end.i276_crit_edge:                   ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i276

if.then.i274:                                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @debug_check_no_locks_held() #14
  br label %if.end.i276

if.end.i276:                                      ; preds = %if.then.i274, %if.end59.if.end.i276_crit_edge
  tail call void @__might_sleep(ptr noundef nonnull @.str.42, i32 noundef 57) #14
  %203 = tail call i32 @llvm.read_register.i32(metadata !138) #14
  %and.i.i.i = and i32 %203, -16384
  %204 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %204, i32 0, i32 2
  %205 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %task.i.i, align 8
  %call.i.i.i.i.i275 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @system_freezing_cnt, i32 noundef 4) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezing_cnt to i32))
  %207 = load volatile i32, ptr @system_freezing_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %207)
  %tobool.not.i.i.i = icmp eq i32 %207, 0
  br i1 %tobool.not.i.i.i, label %if.end.i276.__here_crit_edge, label %freezing.exit.i.i, !prof !149

if.end.i276.__here_crit_edge:                     ; preds = %if.end.i276
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

freezing.exit.i.i:                                ; preds = %if.end.i276
  %call4.i.i.i = tail call zeroext i1 @freezing_slow_path(ptr noundef %206) #14
  br i1 %call4.i.i.i, label %try_to_freeze.exit, label %freezing.exit.i.i.__here_crit_edge, !prof !152

freezing.exit.i.i.__here_crit_edge:               ; preds = %freezing.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

try_to_freeze.exit:                               ; preds = %freezing.exit.i.i
  %call6.i.i = tail call zeroext i1 @__refrigerator(i1 noundef zeroext false) #14
  br i1 %call6.i.i, label %try_to_freeze.exit.cleanup_crit_edge, label %try_to_freeze.exit.__here_crit_edge

try_to_freeze.exit.__here_crit_edge:              ; preds = %try_to_freeze.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

try_to_freeze.exit.cleanup_crit_edge:             ; preds = %try_to_freeze.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

__here:                                           ; preds = %try_to_freeze.exit.__here_crit_edge, %freezing.exit.i.i.__here_crit_edge, %if.end.i276.__here_crit_edge
  %208 = tail call i32 @llvm.read_register.i32(metadata !138) #14
  %and.i278 = and i32 %208, -16384
  %209 = inttoptr i32 %and.i278 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %209, i32 0, i32 2
  %210 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %211, i32 0, i32 212
  %212 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 ptrtoint (ptr blockaddress(@log_writes_kthread, %__here) to i32), ptr %task_state_change, align 4
  %213 = load ptr, ptr %task, align 8
  %214 = ptrtoint ptr %213 to i32
  call void @__asan_store4_noabort(i32 %214)
  store volatile i32 1, ptr %213, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !163
  %call130 = tail call zeroext i1 @kthread_should_stop() #14
  br i1 %call130, label %__here.__here187_crit_edge, label %land.lhs.true131

__here.__here187_crit_edge:                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here187

land.lhs.true131:                                 ; preds = %__here
  %215 = ptrtoint ptr %logging_blocks to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load volatile ptr, ptr %logging_blocks, align 4
  %cmp.i279.not = icmp eq ptr %216, %logging_blocks
  br i1 %cmp.i279.not, label %if.then135, label %land.lhs.true131.__here187_crit_edge

land.lhs.true131.__here187_crit_edge:             ; preds = %land.lhs.true131
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here187

if.then135:                                       ; preds = %land.lhs.true131
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @schedule() #14
  br label %__here187

__here187:                                        ; preds = %if.then135, %land.lhs.true131.__here187_crit_edge, %__here.__here187_crit_edge
  %217 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %task, align 8
  %task_state_change191 = getelementptr inbounds %struct.task_struct, ptr %218, i32 0, i32 212
  %219 = ptrtoint ptr %task_state_change191 to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 ptrtoint (ptr blockaddress(@log_writes_kthread, %__here187) to i32), ptr %task_state_change191, align 4
  %220 = load ptr, ptr %task, align 8
  %221 = ptrtoint ptr %220 to i32
  call void @__asan_store4_noabort(i32 %221)
  store volatile i32 0, ptr %220, align 128
  br label %cleanup

cleanup:                                          ; preds = %__here187, %try_to_freeze.exit.cleanup_crit_edge, %if.else, %if.then53, %if.end51.thread307, %log_one_block.exit.cleanup_crit_edge
  %sector.1294 = phi i64 [ %sector.1295, %try_to_freeze.exit.cleanup_crit_edge ], [ %sector.1295, %__here187 ], [ %sector.1332338, %if.else ], [ %sector.1, %if.then53 ], [ %sector.1, %if.end51.thread307 ], [ %sector.1, %log_one_block.exit.cleanup_crit_edge ]
  %call = tail call zeroext i1 @kthread_should_stop() #14
  br i1 %call, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %entry.while.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @free_pending_block(ptr noundef %lc, ptr noundef %block) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %block, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp11 = icmp sgt i32 %1, 0
  br i1 %cmp11, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.012 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.pending_block, ptr %block, i32 0, i32 7, i32 %i.012
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__free_pages(ptr noundef nonnull %3, i32 noundef 0) #14
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.012, 1
  %4 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %block, align 8
  %cmp = icmp slt i32 %inc, %5
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %data = getelementptr inbounds %struct.pending_block, ptr %block, i32 0, i32 4
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 8
  tail call void @kfree(ptr noundef %7) #14
  tail call void @kfree(ptr noundef %block) #14
  %pending_blocks.i = getelementptr inbounds %struct.log_writes_c, ptr %lc, i32 0, i32 6
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pending_blocks.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !158
  tail call void @llvm.prefetch.p0(ptr %pending_blocks.i, i32 1, i32 3, i32 1) #14
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pending_blocks.i, ptr %pending_blocks.i, i32 1, ptr elementtype(i32) %pending_blocks.i) #14, !srcloc !159
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %8, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !160
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.end.i, label %for.end.put_pending_block.exit_crit_edge

for.end.put_pending_block.exit_crit_edge:         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %put_pending_block.exit

do.end.i:                                         ; preds = %for.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !162
  %head.i.i = getelementptr inbounds %struct.log_writes_c, ptr %lc, i32 0, i32 14, i32 1
  %9 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %head.i.i, align 4
  %cmp.i.i9.not.i = icmp eq ptr %10, %head.i.i
  br i1 %cmp.i.i9.not.i, label %do.end.i.put_pending_block.exit_crit_edge, label %if.then4.i

do.end.i.put_pending_block.exit_crit_edge:        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %put_pending_block.exit

if.then4.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %wait.i = getelementptr inbounds %struct.log_writes_c, ptr %lc, i32 0, i32 14
  tail call void @__wake_up(ptr noundef %wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  br label %put_pending_block.exit

put_pending_block.exit:                           ; preds = %if.then4.i, %do.end.i.put_pending_block.exit_crit_edge, %for.end.put_pending_block.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @write_metadata(ptr noundef %lc, ptr nocapture noundef readonly %entry1, ptr nocapture noundef readonly %data, i32 noundef %datalen, i64 noundef %sector) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @bio_alloc_bioset(i32 noundef 3264, i16 noundef zeroext 1, ptr noundef nonnull @fs_bio_set) #14
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #17
  br label %error

if.end:                                           ; preds = %entry
  %bi_iter = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 8
  %bi_size = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 8, i32 1
  %0 = ptrtoint ptr %bi_size to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %bi_size, align 8
  %1 = ptrtoint ptr %bi_iter to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %sector, ptr %bi_iter, align 8
  %logdev = getelementptr inbounds %struct.log_writes_c, ptr %lc, i32 0, i32 1
  %2 = ptrtoint ptr %logdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %logdev, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %bi_flags.i.i = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 3
  %6 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %bi_flags.i.i, align 4
  %conv1.i.i = and i16 %7, -2049
  store i16 %conv1.i.i, ptr %bi_flags.i.i, align 4
  %bi_bdev.i = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bi_bdev.i, align 4
  %cmp.not.i = icmp eq ptr %9, %5
  br i1 %cmp.not.i, label %if.end.bio_set_dev.exit_crit_edge, label %if.then.i

if.end.bio_set_dev.exit_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %bio_set_dev.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %conv1.i8.i = and i16 %7, -2177
  %10 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv1.i8.i, ptr %bi_flags.i.i, align 4
  br label %bio_set_dev.exit

bio_set_dev.exit:                                 ; preds = %if.then.i, %if.end.bio_set_dev.exit_crit_edge
  %11 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %5, ptr %bi_bdev.i, align 4
  tail call void @bio_associate_blkg(ptr noundef nonnull %call.i) #14
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sector)
  %cmp = icmp eq i64 %sector, 0
  %cond = select i1 %cmp, ptr @log_end_super, ptr @log_end_io
  %bi_end_io = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 10
  %12 = ptrtoint ptr %bi_end_io to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %cond, ptr %bi_end_io, align 8
  %bi_private = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 11
  %13 = ptrtoint ptr %bi_private to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %lc, ptr %bi_private, align 4
  %bi_opf.i = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 2
  %14 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %bi_opf.i, align 8
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #14
  %tobool5.not = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool5.not, label %do.end9, label %if.end12

do.end9:                                          ; preds = %bio_set_dev.exit
  call void @__sanitizer_cov_trace_pc() #16
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #17
  tail call void @bio_put(ptr noundef nonnull %call.i) #14
  br label %error

if.end12:                                         ; preds = %bio_set_dev.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %15 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %15, 512
  %16 = tail call i32 @llvm.read_register.i32(metadata !138) #14
  %and.i.i.i.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %19, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !153
  %20 = tail call i32 @llvm.read_register.i32(metadata !138) #14
  %and.i.i.i1.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 213
  %24 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %25, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !154
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef nonnull %call38.i.i.i, i32 noundef %or.i) #14
  %26 = call ptr @memcpy(ptr %call.i.i, ptr %entry1, i32 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %datalen)
  %tobool14.not = icmp eq i32 %datalen, 0
  br i1 %tobool14.not, label %if.end12.if.end16_crit_edge, label %if.then15

if.end12.if.end16_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr = getelementptr i8, ptr %call.i.i, i32 32
  %27 = call ptr @memcpy(ptr %add.ptr, ptr %data, i32 %datalen)
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end12.if.end16_crit_edge
  %add.ptr17 = getelementptr i8, ptr %call.i.i, i32 32
  %add.ptr18 = getelementptr i8, ptr %add.ptr17, i32 %datalen
  %sectorsize = getelementptr inbounds %struct.log_writes_c, ptr %lc, i32 0, i32 3
  %28 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sectorsize, align 8
  %sub = sub i32 -32, %datalen
  %sub19 = add i32 %sub, %29
  %30 = call ptr @memset(ptr %add.ptr18, i32 0, i32 %sub19)
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !156
  %31 = tail call i32 @llvm.read_register.i32(metadata !138) #14
  %and.i.i.i1.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %34, i32 0, i32 213
  %35 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %36, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !157
  %37 = tail call i32 @llvm.read_register.i32(metadata !138) #14
  %and.i.i.i.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %40, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  %41 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %sectorsize, align 8
  %call27 = tail call i32 @bio_add_page(ptr noundef nonnull %call.i, ptr noundef nonnull %call38.i.i.i, i32 noundef %42, i32 noundef 0) #14
  %43 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %sectorsize, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call27, i32 %44)
  %cmp29.not = icmp eq i32 %call27, %44
  br i1 %cmp29.not, label %if.end36, label %do.end33

do.end33:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #17
  tail call void @bio_put(ptr noundef nonnull %call.i) #14
  tail call void @__free_pages(ptr noundef nonnull %call38.i.i.i, i32 noundef 0) #14
  br label %error

if.end36:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @submit_bio(ptr noundef nonnull %call.i) #14
  br label %cleanup

error:                                            ; preds = %do.end33, %do.end9, %do.end
  %io_blocks.i = getelementptr inbounds %struct.log_writes_c, ptr %lc, i32 0, i32 5
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %io_blocks.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !158
  tail call void @llvm.prefetch.p0(ptr %io_blocks.i, i32 1, i32 3, i32 1) #14
  %45 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %io_blocks.i, ptr %io_blocks.i, i32 1, ptr elementtype(i32) %io_blocks.i) #14, !srcloc !159
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %45, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !160
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.end.i, label %error.cleanup_crit_edge

error.cleanup_crit_edge:                          ; preds = %error
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end.i:                                         ; preds = %error
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !161
  %head.i.i = getelementptr inbounds %struct.log_writes_c, ptr %lc, i32 0, i32 14, i32 1
  %46 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile ptr, ptr %head.i.i, align 4
  %cmp.i.i9.not.i = icmp eq ptr %47, %head.i.i
  br i1 %cmp.i.i9.not.i, label %do.end.i.cleanup_crit_edge, label %if.then4.i

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then4.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %wait.i = getelementptr inbounds %struct.log_writes_c, ptr %lc, i32 0, i32 14
  tail call void @__wake_up(ptr noundef %wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then4.i, %do.end.i.cleanup_crit_edge, %error.cleanup_crit_edge, %if.end36
  %retval.0 = phi i32 [ 0, %if.end36 ], [ -1, %error.cleanup_crit_edge ], [ -1, %do.end.i.cleanup_crit_edge ], [ -1, %if.then4.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @log_end_io(ptr noundef %bio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %conv = zext i8 %3 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %conv) #17
  %blocks_lock = getelementptr inbounds %struct.log_writes_c, ptr %1, i32 0, i32 11
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %blocks_lock) #14
  %logging_enabled = getelementptr inbounds %struct.log_writes_c, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %logging_enabled to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %logging_enabled, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %blocks_lock, i32 noundef %call7) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @bio_free_pages(ptr noundef %bio) #14
  %io_blocks.i = getelementptr inbounds %struct.log_writes_c, ptr %1, i32 0, i32 5
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %io_blocks.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !158
  tail call void @llvm.prefetch.p0(ptr %io_blocks.i, i32 1, i32 3, i32 1) #14
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %io_blocks.i, ptr %io_blocks.i, i32 1, ptr elementtype(i32) %io_blocks.i) #14, !srcloc !159
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %5, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !160
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.end.i, label %if.end.put_io_block.exit_crit_edge

if.end.put_io_block.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %put_io_block.exit

do.end.i:                                         ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !161
  %head.i.i = getelementptr inbounds %struct.log_writes_c, ptr %1, i32 0, i32 14, i32 1
  %6 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %head.i.i, align 4
  %cmp.i.i9.not.i = icmp eq ptr %7, %head.i.i
  br i1 %cmp.i.i9.not.i, label %do.end.i.put_io_block.exit_crit_edge, label %if.then4.i

do.end.i.put_io_block.exit_crit_edge:             ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %put_io_block.exit

if.then4.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %wait.i = getelementptr inbounds %struct.log_writes_c, ptr %1, i32 0, i32 14
  tail call void @__wake_up(ptr noundef %wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  br label %put_io_block.exit

put_io_block.exit:                                ; preds = %if.then4.i, %do.end.i.put_io_block.exit_crit_edge, %if.end.put_io_block.exit_crit_edge
  tail call void @bio_put(ptr noundef %bio) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bio_add_page(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @submit_bio(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @log_end_super(ptr noundef %bio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_private = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 11
  %0 = ptrtoint ptr %bi_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_private, align 4
  %super_done = getelementptr inbounds %struct.log_writes_c, ptr %1, i32 0, i32 16
  tail call void @complete(ptr noundef %super_done) #14
  tail call void @log_end_io(ptr noundef %bio)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_free_pages(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bio_alloc_bioset(i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_associate_blkg(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion_io(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_check_no_locks_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__refrigerator(i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @freezing_slow_path(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @log_mark(ptr noundef %lc, ptr noundef %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %sectorsize = getelementptr inbounds %struct.log_writes_c, ptr %lc, i32 0, i32 3
  %0 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sectorsize, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 48) #18
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub2 = add i32 %1, -33
  %call3 = tail call ptr @kstrndup(ptr noundef %data, i32 noundef %sub2, i32 noundef 3264) #14
  %data4 = getelementptr inbounds %struct.pending_block, ptr %call7.i.i, i32 0, i32 4
  %3 = ptrtoint ptr %data4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call3, ptr %data4, align 8
  %tobool6.not = icmp eq ptr %call3, null
  br i1 %tobool6.not, label %do.end10, label %if.end13

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47) #17
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %pending_blocks = getelementptr inbounds %struct.log_writes_c, ptr %lc, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pending_blocks, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %pending_blocks, i32 1, i32 3, i32 1) #14
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pending_blocks, ptr %pending_blocks, i32 1, ptr elementtype(i32) %pending_blocks) #14, !srcloc !151
  %5 = ptrtoint ptr %data4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data4, align 8
  %call15 = tail call i32 @strlen(ptr noundef %6) #20
  %datalen = getelementptr inbounds %struct.pending_block, ptr %call7.i.i, i32 0, i32 5
  %7 = ptrtoint ptr %datalen to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call15, ptr %datalen, align 4
  %flags = getelementptr inbounds %struct.pending_block, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %flags, align 8
  %or = or i64 %9, 8
  store i64 %or, ptr %flags, align 8
  %blocks_lock = getelementptr inbounds %struct.log_writes_c, ptr %lc, i32 0, i32 11
  tail call void @_raw_spin_lock_irq(ptr noundef %blocks_lock) #14
  %list = getelementptr inbounds %struct.pending_block, ptr %call7.i.i, i32 0, i32 6
  %logging_blocks = getelementptr inbounds %struct.log_writes_c, ptr %lc, i32 0, i32 13
  %prev.i = getelementptr inbounds %struct.log_writes_c, ptr %lc, i32 0, i32 13, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i, align 4
  %call.i.i31 = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %11, ptr noundef %logging_blocks) #14
  br i1 %call.i.i31, label %if.end.i.i, label %if.end13.list_add_tail.exit_crit_edge

if.end13.list_add_tail.exit_crit_edge:            ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %list, ptr %prev.i, align 4
  %13 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %logging_blocks, ptr %list, align 8
  %prev3.i.i = getelementptr inbounds %struct.pending_block, ptr %call7.i.i, i32 0, i32 6, i32 1
  %14 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev3.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %list, ptr %11, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end13.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %blocks_lock) #14
  %log_kthread = getelementptr inbounds %struct.log_writes_c, ptr %lc, i32 0, i32 15
  %16 = ptrtoint ptr %log_kthread to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %log_kthread, align 4
  %call17 = tail call i32 @wake_up_process(ptr noundef %17) #14
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %do.end10, %do.end
  %retval.0 = phi i32 [ 0, %list_add_tail.exit ], [ -12, %do.end10 ], [ -12, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrndup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_per_bio_data(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_endio(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_register_target(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

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
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nounwind readonly }
attributes #12 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind allocsize(2) }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !22, !24, !25, !27, !29, !31, !33, !35, !36, !38, !39, !40, !41, !42, !44, !46, !48, !49, !50, !51, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !74, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !90, !92, !93, !94, !95, !97, !99, !101, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !116, !118, !120, !122, !124, !125, !126, !127, !129, !131, !132, !133, !135, !136, !137}
!llvm.named.register.sp = !{!138}
!llvm.module.flags = !{!139, !140, !141, !142, !143, !144, !145, !146}
!llvm.ident = !{!147}

!0 = !{ptr @__initcall__kmod_dm_log_writes__278_967_dm_log_writes_init6, !1, !"__initcall__kmod_dm_log_writes__278_967_dm_log_writes_init6", i1 false, i1 false}
!1 = !{!"../drivers/md/dm-log-writes.c", i32 967, i32 1}
!2 = !{ptr @__exitcall_dm_log_writes_exit, !3, !"__exitcall_dm_log_writes_exit", i1 false, i1 false}
!3 = !{!"../drivers/md/dm-log-writes.c", i32 968, i32 1}
!4 = !{ptr @__UNIQUE_ID_description279, !5, !"__UNIQUE_ID_description279", i1 false, i1 false}
!5 = !{!"../drivers/md/dm-log-writes.c", i32 970, i32 1}
!6 = !{ptr @__UNIQUE_ID_author280, !7, !"__UNIQUE_ID_author280", i1 false, i1 false}
!7 = !{!"../drivers/md/dm-log-writes.c", i32 971, i32 1}
!8 = !{ptr @__UNIQUE_ID_file281, !9, !"__UNIQUE_ID_file281", i1 false, i1 false}
!9 = !{!"../drivers/md/dm-log-writes.c", i32 972, i32 1}
!10 = !{ptr @__UNIQUE_ID_license282, !9, !"__UNIQUE_ID_license282", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/md/dm-log-writes.c", i32 936, i32 12}
!13 = !{ptr @log_writes_target, !14, !"log_writes_target", i1 false, i1 false}
!14 = !{!"../drivers/md/dm-log-writes.c", i32 935, i32 27}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/md/dm-log-writes.c", i32 539, i32 15}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/md/dm-log-writes.c", i32 545, i32 15}
!19 = !{ptr @log_writes_ctr.__key, !20, !"__key", i1 false, i1 false}
!20 = !{!"../drivers/md/dm-log-writes.c", i32 548, i32 2}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @log_writes_ctr.__key.4, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/md/dm-log-writes.c", i32 551, i32 2}
!24 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/md/dm-log-writes.c", i32 559, i32 15}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/md/dm-log-writes.c", i32 567, i32 15}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/md/dm-log-writes.c", i32 574, i32 20}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/md/dm-log-writes.c", i32 577, i32 15}
!33 = !{ptr @init_completion.__key, !34, !"__key", i1 false, i1 false}
!34 = !{!"../include/linux/completion.h", i32 87, i32 2}
!35 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/md/dm-log-writes.c", i32 484, i32 5}
!38 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @log_writes_kthread._entry, !37, !"_entry", i1 false, i1 false}
!41 = !{ptr @log_writes_kthread._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!42 = distinct !{null, !43, !"__already_done", i1 false, i1 false}
!43 = !{!"../drivers/md/dm-log-writes.c", i32 514, i32 4}
!44 = distinct !{null, !45, !"__already_done", i1 false, i1 false}
!45 = !{!"../drivers/md/dm-log-writes.c", i32 518, i32 4}
!46 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/md/dm-log-writes.c", i32 368, i32 3}
!48 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @log_one_block._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @log_one_block._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @log_one_block._entry.17, !52, !"_entry", i1 false, i1 false}
!52 = !{!"../drivers/md/dm-log-writes.c", i32 391, i32 5}
!53 = !{ptr @log_one_block._entry_ptr.18, !52, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/md/dm-log-writes.c", i32 404, i32 5}
!56 = !{ptr @log_one_block._entry.19, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @log_one_block._entry_ptr.21, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/md/dm-log-writes.c", i32 222, i32 3}
!60 = !{ptr @write_metadata._entry, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @write_metadata._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/md/dm-log-writes.c", i32 235, i32 3}
!64 = !{ptr @write_metadata._entry.23, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @write_metadata._entry_ptr.25, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/md/dm-log-writes.c", i32 250, i32 3}
!68 = !{ptr @write_metadata._entry.26, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @write_metadata._entry_ptr.28, !67, !"_entry_ptr", i1 false, i1 false}
!70 = distinct !{null, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!72 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/md/dm-log-writes.c", i32 280, i32 4}
!74 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @write_inline_data._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @write_inline_data._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.33, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/md/dm-log-writes.c", i32 297, i32 5}
!79 = !{ptr @write_inline_data._entry.32, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @write_inline_data._entry_ptr.34, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.36, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/md/dm-log-writes.c", i32 309, i32 5}
!83 = !{ptr @write_inline_data._entry.35, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @write_inline_data._entry_ptr.37, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.38, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/md/dm-log-writes.c", i32 174, i32 3}
!87 = !{ptr @.str.39, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @log_end_io._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @log_end_io._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.40, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/md/dm-log-writes.c", i32 434, i32 3}
!92 = !{ptr @.str.41, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @log_super._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @log_super._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.42, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../include/linux/freezer.h", i32 57, i32 2}
!97 = !{ptr @.str.43, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/md/dm-log-writes.c", i32 645, i32 15}
!99 = !{ptr @.str.44, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/md/dm-log-writes.c", i32 613, i32 3}
!101 = !{ptr @.str.45, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @log_mark._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @log_mark._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.47, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/md/dm-log-writes.c", i32 619, i32 3}
!106 = !{ptr @log_mark._entry.46, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @log_mark._entry_ptr.48, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.49, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/md/dm-log-writes.c", i32 706, i32 3}
!110 = !{ptr @log_writes_map._entry, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @log_writes_map._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.51, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/md/dm-log-writes.c", i32 760, i32 4}
!114 = !{ptr @log_writes_map._entry.50, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @log_writes_map._entry_ptr.52, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.53, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/md/dm-log-writes.c", i32 826, i32 3}
!118 = !{ptr @.str.54, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/md/dm-log-writes.c", i32 829, i32 4}
!120 = !{ptr @.str.55, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/md/dm-log-writes.c", i32 833, i32 3}
!122 = !{ptr @.str.56, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/md/dm-log-writes.c", i32 877, i32 3}
!124 = !{ptr @.str.57, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @log_writes_message._entry, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @log_writes_message._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.58, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/md/dm-log-writes.c", i32 881, i32 27}
!129 = !{ptr @.str.60, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/md/dm-log-writes.c", i32 884, i32 3}
!131 = !{ptr @log_writes_message._entry.59, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @log_writes_message._entry_ptr.61, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.62, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/md/dm-log-writes.c", i32 957, i32 3}
!135 = !{ptr @.str.63, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @dm_log_writes_init._entry, !134, !"_entry", i1 false, i1 false}
!137 = !{ptr @dm_log_writes_init._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!138 = !{!"sp"}
!139 = !{i32 1, !"wchar_size", i32 2}
!140 = !{i32 1, !"min_enum_size", i32 4}
!141 = !{i32 8, !"branch-target-enforcement", i32 0}
!142 = !{i32 8, !"sign-return-address", i32 0}
!143 = !{i32 8, !"sign-return-address-all", i32 0}
!144 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!145 = !{i32 7, !"uwtable", i32 1}
!146 = !{i32 7, !"frame-pointer", i32 2}
!147 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!148 = !{i32 0, i32 33}
!149 = !{!"branch_weights", i32 2000, i32 1}
!150 = !{i8 0, i8 2}
!151 = !{i64 2148586403, i64 2148586429, i64 2148586458, i64 2148586492, i64 2148586523, i64 2148586546}
!152 = !{!"branch_weights", i32 1, i32 2000}
!153 = !{i64 2153724783}
!154 = !{i64 2152268783}
!155 = !{i64 2153752058, i64 2153752546, i64 2153752095, i64 2153752151, i64 2153752185, i64 2153752209, i64 2153752250, i64 2153752271, i64 2153752299, i64 2153752333}
!156 = !{i64 2152268990}
!157 = !{i64 2153727554}
!158 = !{i64 2148674879}
!159 = !{i64 2148589588, i64 2148589620, i64 2148589649, i64 2148589683, i64 2148589714, i64 2148589737}
!160 = !{i64 2148675108}
!161 = !{i64 2154334399}
!162 = !{i64 2154334107}
!163 = !{i64 2154378378}
