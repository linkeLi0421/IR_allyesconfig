; ModuleID = '/llk/IR_all_yes/drivers/md/dm-zone.c_pt.bc'
source_filename = "../drivers/md/dm-zone.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+dm_report_zones\22, \22a\22\09"
module asm "\09.weak\09__crc_dm_report_zones\09\09\09\09"
module asm "\09.long\09__crc_dm_report_zones\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dm_report_zones:\09\09\09\09\09"
module asm "\09.asciz \09\22dm_report_zones\22\09\09\09\09\09"
module asm "__kstrtabns_dm_report_zones:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.dm_report_zones_args = type { ptr, i64, ptr, ptr, i32, i64 }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
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
%struct.hlist_node = type { ptr, ptr }
%struct.mapped_device = type { %struct.mutex, %struct.mutex, %struct.list_head, ptr, i32, %struct.mutex, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, [16 x i8], ptr, ptr, %struct.work_struct, %struct.wait_queue_head, %struct.spinlock, %struct.bio_list, ptr, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.spinlock, i32, %struct.bio_set, %struct.bio_set, ptr, %struct.hd_geometry, %struct.dm_kobject_holder, i32, %struct.semaphore, %struct.mutex, %struct.dm_stats, ptr, i8, %struct.srcu_struct, i32, ptr, %struct.dm_ima_measurements }
%struct.bio_list = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.hd_geometry = type { i8, i8, i16, i32 }
%struct.dm_kobject_holder = type { %struct.kobject, %struct.completion }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.dm_stats = type { %struct.mutex, %struct.list_head, ptr, i64, i32 }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.dm_ima_measurements = type { %struct.dm_ima_device_table_metadata, %struct.dm_ima_device_table_metadata, i32 }
%struct.dm_ima_device_table_metadata = type { ptr, i32, i32, ptr, i32 }
%struct.dm_target = type { ptr, ptr, i64, i64, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i8 }
%struct.target_type = type { i64, ptr, ptr, [3 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.blk_zone = type { i64, i64, i64, i8, i8, i8, i8, [4 x i8], i64, [24 x i8] }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.23, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.23 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.71, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%struct.restart_block = type { i32, ptr, %union.anon.50 }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.71 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.dm_target_io = type { i32, ptr, ptr, i32, ptr, i8, %struct.bio }
%struct.dm_io = type { i32, ptr, i8, %struct.atomic_t, ptr, i32, %struct.spinlock, %struct.dm_stats_aux, %struct.dm_target_io }
%struct.dm_stats_aux = type { i8, i64 }

@__kstrtab_dm_report_zones = external dso_local constant [0 x i8], align 1
@__kstrtabns_dm_report_zones = external dso_local constant [0 x i8], align 1
@__ksymtab_dm_report_zones = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dm_report_zones to i32), ptr @__kstrtab_dm_report_zones, ptr @__kstrtabns_dm_report_zones }, section "___ksymtab_gpl+dm_report_zones", align 4
@dm_set_zones_restrictions.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"drivers/md/dm-zone.c\00", [43 x i8] zeroinitializer }, align 32
@dm_zone_endio.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@dm_blk_do_report_zones.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@dm_revalidate_zones._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 265, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013device-mapper: zone: Revalidate zones failed %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dm_revalidate_zones\00", [44 x i8] zeroinitializer }, align 32
@dm_revalidate_zones._entry_ptr = internal global ptr @dm_revalidate_zones._entry, section ".printk_index", align 4
@dm_zone_revalidate_cb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str, i32 217, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013device-mapper: zone: Invalid zone type 0x%x at sectors %llu\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dm_zone_revalidate_cb\00", [42 x i8] zeroinitializer }, align 32
@dm_zone_revalidate_cb._entry_ptr = internal global ptr @dm_zone_revalidate_cb._entry, section ".printk_index", align 4
@dm_zone_lock.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/wait_bit.h\00", [39 x i8] zeroinitializer }, align 32
@dm_zone_map_bio_begin._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.dm_zone_map_bio_begin = private unnamed_addr constant [22 x i8] c"dm_zone_map_bio_begin\00", align 1
@dm_zone_map_bio_begin._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @__func__.dm_zone_map_bio_begin, ptr @.str, i32 411, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014device-mapper: zone: Invalid BIO operation\0A\00", [50 x i8] zeroinitializer }, align 32
@dm_zone_map_bio_begin._entry_ptr = internal global ptr @dm_zone_map_bio_begin._entry, section ".printk_index", align 4
@dm_zone_unlock.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@dm_zone_map_bio_end._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.dm_zone_map_bio_end = private unnamed_addr constant [20 x i8] c"dm_zone_map_bio_end\00", align 1
@dm_zone_map_bio_end._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.dm_zone_map_bio_end, ptr @.str, i32 459, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\014device-mapper: zone: Truncated write for zone append\0A\00", [40 x i8] zeroinitializer }, align 32
@dm_zone_map_bio_end._entry_ptr = internal global ptr @dm_zone_map_bio_end._entry, section ".printk_index", align 4
@dm_zone_map_bio_end._rs.9 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@dm_zone_map_bio_end._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @__func__.dm_zone_map_bio_end, ptr @.str, i32 465, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dm_zone_map_bio_end._entry_ptr.11 = internal global ptr @dm_zone_map_bio_end._entry.10, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 14]
@__sancov_gen_cov_switch_values.12 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 7, i64 9]
@__sancov_gen_cov_switch_values.13 = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 7, i64 9, i64 12, i64 13, i64 15]
@__sancov_gen_cov_switch_values.14 = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 7, i64 9, i64 12, i64 13, i64 15]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.16 = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 7, i64 9, i64 12, i64 13, i64 15]
@__sancov_gen_cov_switch_values.17 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.18 = internal global [6 x i64] [i64 4, i64 8, i64 2, i64 3, i64 4, i64 14]
@__sancov_gen_cov_switch_values.19 = internal global [6 x i64] [i64 4, i64 8, i64 2, i64 3, i64 4, i64 14]
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 304, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 265, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 216, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant [28 x i8] c"../include/linux/wait_bit.h\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 205, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 411, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 459, i32 4 }
@___asan_gen_.65 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.68 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.69 = private constant [24 x i8] c"../drivers/md/dm-zone.c\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 465, i32 3 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @__ksymtab_dm_report_zones, ptr @dm_revalidate_zones._entry, ptr @dm_revalidate_zones._entry_ptr, ptr @dm_zone_map_bio_begin._entry, ptr @dm_zone_map_bio_begin._entry_ptr, ptr @dm_zone_map_bio_end._entry, ptr @dm_zone_map_bio_end._entry.10, ptr @dm_zone_map_bio_end._entry_ptr, ptr @dm_zone_map_bio_end._entry_ptr.11, ptr @dm_zone_revalidate_cb._entry, ptr @dm_zone_revalidate_cb._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @dm_zone_map_bio_begin._rs, ptr @.str.6, ptr @.str.7, ptr @dm_zone_map_bio_end._rs, ptr @.str.8, ptr @dm_zone_map_bio_end._rs.9], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_revalidate_zones._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_zone_revalidate_cb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_zone_map_bio_begin._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_zone_map_bio_begin._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_zone_map_bio_end._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_zone_map_bio_end._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_zone_map_bio_end._rs.9 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_zone_map_bio_end._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_blk_report_zones(ptr nocapture noundef readonly %disk, i64 noundef %sector, i32 noundef %nr_zones, ptr noundef %cb, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  %args.i = alloca %struct.dm_report_zones_args, align 8
  %srcu_idx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 10
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %srcu_idx) #10
  %2 = ptrtoint ptr %srcu_idx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %srcu_idx, align 4, !annotation !52
  %call = tail call i32 @dm_suspended_md(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call ptr @dm_get_live_table(ptr noundef %1, ptr noundef nonnull %srcu_idx) #10
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %disk1.i = getelementptr inbounds %struct.mapped_device, ptr %1, i32 0, i32 14
  %3 = ptrtoint ptr %disk1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %disk1.i, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %args.i) #10
  %5 = call ptr @memset(ptr %args.i, i32 255, i32 32)
  %6 = ptrtoint ptr %args.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %args.i, align 8
  %next_sector.i = getelementptr inbounds %struct.dm_report_zones_args, ptr %args.i, i32 0, i32 1
  %7 = ptrtoint ptr %next_sector.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %sector, ptr %next_sector.i, align 8
  %orig_data.i = getelementptr inbounds %struct.dm_report_zones_args, ptr %args.i, i32 0, i32 2
  %8 = ptrtoint ptr %orig_data.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %data, ptr %orig_data.i, align 8
  %orig_cb.i = getelementptr inbounds %struct.dm_report_zones_args, ptr %args.i, i32 0, i32 3
  %9 = ptrtoint ptr %orig_cb.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %cb, ptr %orig_cb.i, align 4
  %zone_idx.i = getelementptr inbounds %struct.dm_report_zones_args, ptr %args.i, i32 0, i32 4
  %10 = ptrtoint ptr %zone_idx.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %zone_idx.i, align 8
  %start.i = getelementptr inbounds %struct.dm_report_zones_args, ptr %args.i, i32 0, i32 5
  %11 = ptrtoint ptr %start.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 0, ptr %start.i, align 8
  %part0.i.i = getelementptr inbounds %struct.gendisk, ptr %4, i32 0, i32 7
  br label %do.body.i

do.body.i:                                        ; preds = %land.rhs54.i.do.body.i_crit_edge, %if.end4
  %12 = ptrtoint ptr %next_sector.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %next_sector.i, align 8
  %call.i = call ptr @dm_table_find_target(ptr noundef nonnull %call1, i64 noundef %13) #10
  %type.i = getelementptr inbounds %struct.dm_target, ptr %call.i, i32 0, i32 1
  %14 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %type.i, align 4
  %report_zones.i = getelementptr inbounds %struct.target_type, ptr %15, i32 0, i32 19
  %16 = ptrtoint ptr %report_zones.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %report_zones.i, align 8
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %land.rhs.i, label %cleanup.i

land.rhs.i:                                       ; preds = %do.body.i
  %.b71.i = load i1, ptr @dm_blk_do_report_zones.__already_done, align 1
  br i1 %.b71.i, label %land.rhs.i.dm_blk_do_report_zones.exit_crit_edge, label %if.then.i, !prof !53

land.rhs.i.dm_blk_do_report_zones.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dm_blk_do_report_zones.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @dm_blk_do_report_zones.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 36, i32 noundef 9, ptr noundef null) #10
  br label %dm_blk_do_report_zones.exit

cleanup.i:                                        ; preds = %do.body.i
  %18 = ptrtoint ptr %args.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i, ptr %args.i, align 8
  %19 = ptrtoint ptr %zone_idx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %zone_idx.i, align 8
  %sub.i = sub i32 %nr_zones, %20
  %call48.i = call i32 %17(ptr noundef %call.i, ptr noundef nonnull %args.i, i32 noundef %sub.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i)
  %cmp.i = icmp slt i32 %call48.i, 0
  br i1 %cmp.i, label %cleanup.i.dm_blk_do_report_zones.exit_crit_edge, label %do.cond51.i

cleanup.i.dm_blk_do_report_zones.exit_crit_edge:  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dm_blk_do_report_zones.exit

do.cond51.i:                                      ; preds = %cleanup.i
  %21 = ptrtoint ptr %zone_idx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %zone_idx.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %nr_zones)
  %cmp53.i = icmp ult i32 %22, %nr_zones
  br i1 %cmp53.i, label %land.rhs54.i, label %do.cond51.i.dm_blk_do_report_zones.exit_crit_edge

do.cond51.i.dm_blk_do_report_zones.exit_crit_edge: ; preds = %do.cond51.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dm_blk_do_report_zones.exit

land.rhs54.i:                                     ; preds = %do.cond51.i
  %23 = ptrtoint ptr %next_sector.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %next_sector.i, align 8
  %25 = ptrtoint ptr %part0.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %part0.i.i, align 4
  %bd_nr_sectors.i.i.i = getelementptr inbounds %struct.block_device, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %bd_nr_sectors.i.i.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %bd_nr_sectors.i.i.i, align 8
  %cmp57.i = icmp ult i64 %24, %28
  br i1 %cmp57.i, label %land.rhs54.i.do.body.i_crit_edge, label %land.rhs54.i.dm_blk_do_report_zones.exit_crit_edge

land.rhs54.i.dm_blk_do_report_zones.exit_crit_edge: ; preds = %land.rhs54.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dm_blk_do_report_zones.exit

land.rhs54.i.do.body.i_crit_edge:                 ; preds = %land.rhs54.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

dm_blk_do_report_zones.exit:                      ; preds = %land.rhs54.i.dm_blk_do_report_zones.exit_crit_edge, %do.cond51.i.dm_blk_do_report_zones.exit_crit_edge, %cleanup.i.dm_blk_do_report_zones.exit_crit_edge, %if.then.i, %land.rhs.i.dm_blk_do_report_zones.exit_crit_edge
  %retval.2.i = phi i32 [ -5, %if.then.i ], [ -5, %land.rhs.i.dm_blk_do_report_zones.exit_crit_edge ], [ %call48.i, %cleanup.i.dm_blk_do_report_zones.exit_crit_edge ], [ %22, %do.cond51.i.dm_blk_do_report_zones.exit_crit_edge ], [ %22, %land.rhs54.i.dm_blk_do_report_zones.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %args.i) #10
  %29 = ptrtoint ptr %srcu_idx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %srcu_idx, align 4
  call void @dm_put_live_table(ptr noundef %1, i32 noundef %30) #10
  br label %cleanup

cleanup:                                          ; preds = %dm_blk_do_report_zones.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.2.i, %dm_blk_do_report_zones.exit ], [ -11, %entry.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %srcu_idx) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_suspended_md(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_get_live_table(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_put_live_table(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_report_zones(ptr noundef %bdev, i64 noundef %start, i64 noundef %sector, ptr noundef %args, i32 noundef %nr_zones) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %start1 = getelementptr inbounds %struct.dm_report_zones_args, ptr %args, i32 0, i32 5
  %0 = ptrtoint ptr %start1 to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %start, ptr %start1, align 8
  %call = tail call i32 @blkdev_report_zones(ptr noundef %bdev, i64 noundef %sector, i32 noundef %nr_zones, ptr noundef nonnull @dm_report_zones_cb, ptr noundef %args) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkdev_report_zones(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dm_report_zones_cb(ptr noundef %zone, i32 noundef %idx, ptr nocapture noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %begin = getelementptr inbounds %struct.dm_target, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %begin to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %begin, align 8
  %start = getelementptr inbounds %struct.dm_report_zones_args, ptr %data, i32 0, i32 5
  %4 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %start, align 8
  %sub = sub i64 %3, %5
  %6 = ptrtoint ptr %zone to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %zone, align 8
  %len = getelementptr inbounds %struct.dm_target, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %len, align 8
  %add = add i64 %9, %5
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %add)
  %cmp.not = icmp ult i64 %7, %add
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %add5 = add i64 %7, %sub
  %10 = ptrtoint ptr %zone to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %add5, ptr %zone, align 8
  %type = getelementptr inbounds %struct.blk_zone, ptr %zone, i32 0, i32 3
  %11 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %12)
  %cmp6.not = icmp eq i8 %12, 1
  br i1 %cmp6.not, label %if.end.if.end28_crit_edge, label %if.then8

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.then8:                                         ; preds = %if.end
  %cond = getelementptr inbounds %struct.blk_zone, ptr %zone, i32 0, i32 4
  %13 = ptrtoint ptr %cond to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %cond, align 1
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i8 %14, label %if.else23 [
    i8 14, label %if.then12
    i8 1, label %if.then20
  ]

if.then12:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  %len14 = getelementptr inbounds %struct.blk_zone, ptr %zone, i32 0, i32 1
  %16 = ptrtoint ptr %len14 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %len14, align 8
  %add15 = add i64 %17, %add5
  %wp = getelementptr inbounds %struct.blk_zone, ptr %zone, i32 0, i32 2
  %18 = ptrtoint ptr %wp to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %add15, ptr %wp, align 8
  br label %if.end28

if.then20:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  %wp22 = getelementptr inbounds %struct.blk_zone, ptr %zone, i32 0, i32 2
  %19 = ptrtoint ptr %wp22 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %add5, ptr %wp22, align 8
  br label %if.end28

if.else23:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  %wp24 = getelementptr inbounds %struct.blk_zone, ptr %zone, i32 0, i32 2
  %20 = ptrtoint ptr %wp24 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %wp24, align 8
  %add25 = add i64 %21, %sub
  store i64 %add25, ptr %wp24, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.else23, %if.then20, %if.then12, %if.end.if.end28_crit_edge
  %len30 = getelementptr inbounds %struct.blk_zone, ptr %zone, i32 0, i32 1
  %22 = ptrtoint ptr %len30 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %len30, align 8
  %add31 = add i64 %23, %add5
  %next_sector = getelementptr inbounds %struct.dm_report_zones_args, ptr %data, i32 0, i32 1
  %24 = ptrtoint ptr %next_sector to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %add31, ptr %next_sector, align 8
  %orig_cb = getelementptr inbounds %struct.dm_report_zones_args, ptr %data, i32 0, i32 3
  %25 = ptrtoint ptr %orig_cb to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %orig_cb, align 4
  %zone_idx = getelementptr inbounds %struct.dm_report_zones_args, ptr %data, i32 0, i32 4
  %27 = ptrtoint ptr %zone_idx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %zone_idx, align 8
  %inc = add i32 %28, 1
  store i32 %inc, ptr %zone_idx, align 8
  %orig_data = getelementptr inbounds %struct.dm_report_zones_args, ptr %data, i32 0, i32 2
  %29 = ptrtoint ptr %orig_data to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %orig_data, align 8
  %call = tail call i32 %26(ptr noundef %zone, i32 noundef %28, ptr noundef %30) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end28 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @dm_is_zone_write(ptr nocapture noundef readonly %md, ptr nocapture noundef readonly %bio) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %queue = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 8
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 4
  %zoned.i.i = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 37, i32 27
  %2 = ptrtoint ptr %zoned.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %zoned.i.i, align 4
  %call.off.i = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.off.i)
  %switch.i = icmp ult i32 %call.off.i, 2
  br i1 %switch.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %bi_opf = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %4 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bi_opf, align 8
  %trunc = trunc i32 %5 to i8
  %6 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.12)
  switch i8 %trunc, label %if.end.cleanup_crit_edge [
    i8 9, label %if.end.sw.bb_crit_edge
    i8 7, label %if.end.sw.bb_crit_edge5
    i8 1, label %if.end.sw.bb_crit_edge6
  ]

if.end.sw.bb_crit_edge6:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end.sw.bb_crit_edge5:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge5, %if.end.sw.bb_crit_edge6
  %7 = and i32 %5, 393216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.i.not = icmp eq i32 %7, 0
  br i1 %tobool.i.not, label %land.rhs, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.rhs:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %bi_size = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 1
  %8 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bi_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %9)
  %tobool = icmp ugt i32 %9, 511
  br label %cleanup

cleanup:                                          ; preds = %land.rhs, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ false, %sw.bb.cleanup_crit_edge ], [ %tobool, %land.rhs ], [ false, %if.end.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dm_cleanup_zoned_dev(ptr nocapture noundef %md) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %queue = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 8
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv_zones_bitmap = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 40
  %2 = ptrtoint ptr %conv_zones_bitmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %conv_zones_bitmap, align 8
  tail call void @kfree(ptr noundef %3) #10
  %4 = ptrtoint ptr %conv_zones_bitmap to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %conv_zones_bitmap, align 8
  %seq_zones_wlock = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 41
  %5 = ptrtoint ptr %seq_zones_wlock to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %seq_zones_wlock, align 4
  tail call void @kfree(ptr noundef %6) #10
  %7 = ptrtoint ptr %seq_zones_wlock to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %seq_zones_wlock, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %zwp_offset = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 40
  %8 = ptrtoint ptr %zwp_offset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %zwp_offset, align 4
  tail call void @kvfree(ptr noundef %9) #10
  %10 = ptrtoint ptr %zwp_offset to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %zwp_offset, align 4
  %nr_zones = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 39
  %11 = ptrtoint ptr %nr_zones to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %nr_zones, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_set_zones_restrictions(ptr noundef %t, ptr nocapture noundef %q) local_unnamed_addr #0 align 64 {
entry:
  %args.i.i = alloca %struct.dm_report_zones_args, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %t, align 4
  %mq_ops.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 5
  %2 = ptrtoint ptr %mq_ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mq_ops.i, align 8
  %tobool.i.not = icmp eq ptr %3, null
  br i1 %tobool.i.not, label %entry.if.end28_crit_edge, label %land.rhs

entry.if.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

land.rhs:                                         ; preds = %entry
  %.b57 = load i1, ptr @dm_set_zones_restrictions.__already_done, align 1
  br i1 %.b57, label %land.rhs.if.end28_crit_edge, label %if.then, !prof !53

land.rhs.if.end28_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @dm_set_zones_restrictions.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 304, i32 noundef 9, ptr noundef null) #10
  br label %if.end28

if.end28:                                         ; preds = %if.then, %land.rhs.if.end28_crit_edge, %entry.if.end28_crit_edge
  %disk = getelementptr inbounds %struct.mapped_device, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %disk, align 8
  %call36 = tail call i32 @blkdev_nr_zones(ptr noundef %5) #10
  %nr_zones = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 39
  %6 = ptrtoint ptr %nr_zones to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call36, ptr %nr_zones, align 4
  %call15.i = tail call i32 @dm_table_get_num_targets(ptr noundef %t) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %cmp16.not.i = icmp eq i32 %call15.i, 0
  br i1 %cmp16.not.i, label %if.end28.if.then38_crit_edge, label %if.end28.for.body.i_crit_edge

if.end28.for.body.i_crit_edge:                    ; preds = %if.end28
  br label %for.body.i

if.end28.if.then38_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then38

for.cond.i:                                       ; preds = %lor.lhs.false.i
  %inc.i = add nuw i32 %i.017.i, 1
  %call.i = tail call i32 @dm_table_get_num_targets(ptr noundef %t) #10
  %cmp.i = icmp ult i32 %inc.i, %call.i
  br i1 %cmp.i, label %for.cond.i.for.body.i_crit_edge, label %for.cond.i.if.then38_crit_edge

for.cond.i.if.then38_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then38

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end28.for.body.i_crit_edge
  %i.017.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %if.end28.for.body.i_crit_edge ]
  %call1.i = tail call ptr @dm_table_get_target(ptr noundef %t, i32 noundef %i.017.i) #10
  %emulate_zone_append.i = getelementptr inbounds %struct.dm_target, ptr %call1.i, i32 0, i32 13
  %7 = ptrtoint ptr %emulate_zone_append.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load.i = load i8, ptr %emulate_zone_append.i, align 4
  %8 = and i8 %bf.load.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %bf.cast.not.i = icmp eq i8 %8, 0
  br i1 %bf.cast.not.i, label %if.end.i, label %for.body.i.if.end39_crit_edge

for.body.i.if.end39_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

if.end.i:                                         ; preds = %for.body.i
  %type.i = getelementptr inbounds %struct.dm_target, ptr %call1.i, i32 0, i32 1
  %9 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %type.i, align 4
  %iterate_devices.i = getelementptr inbounds %struct.target_type, ptr %10, i32 0, i32 21
  %11 = ptrtoint ptr %iterate_devices.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %iterate_devices.i, align 8
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.end.i.if.end39_crit_edge, label %lor.lhs.false.i

if.end.i.if.end39_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

lor.lhs.false.i:                                  ; preds = %if.end.i
  %call4.i = tail call i32 %12(ptr noundef %call1.i, ptr noundef nonnull @device_not_zone_append_capable, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %for.cond.i, label %lor.lhs.false.i.if.end39_crit_edge

lor.lhs.false.i.if.end39_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

if.then38:                                        ; preds = %for.cond.i.if.then38_crit_edge, %if.end28.if.then38_crit_edge
  %flags = getelementptr inbounds %struct.mapped_device, ptr %1, i32 0, i32 4
  tail call void @_clear_bit(i32 noundef 9, ptr noundef %flags) #10
  %queue.i = getelementptr inbounds %struct.mapped_device, ptr %1, i32 0, i32 8
  %13 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %queue.i, align 4
  %tobool.not.i58 = icmp eq ptr %14, null
  br i1 %tobool.not.i58, label %if.then38.dm_cleanup_zoned_dev.exit_crit_edge, label %if.then.i

if.then38.dm_cleanup_zoned_dev.exit_crit_edge:    ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #12
  br label %dm_cleanup_zoned_dev.exit

if.then.i:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #12
  %conv_zones_bitmap.i = getelementptr inbounds %struct.request_queue, ptr %14, i32 0, i32 40
  %15 = ptrtoint ptr %conv_zones_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %conv_zones_bitmap.i, align 8
  tail call void @kfree(ptr noundef %16) #10
  %17 = ptrtoint ptr %conv_zones_bitmap.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %conv_zones_bitmap.i, align 8
  %seq_zones_wlock.i = getelementptr inbounds %struct.request_queue, ptr %14, i32 0, i32 41
  %18 = ptrtoint ptr %seq_zones_wlock.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %seq_zones_wlock.i, align 4
  tail call void @kfree(ptr noundef %19) #10
  %20 = ptrtoint ptr %seq_zones_wlock.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %seq_zones_wlock.i, align 4
  br label %dm_cleanup_zoned_dev.exit

dm_cleanup_zoned_dev.exit:                        ; preds = %if.then.i, %if.then38.dm_cleanup_zoned_dev.exit_crit_edge
  %zwp_offset.i = getelementptr inbounds %struct.mapped_device, ptr %1, i32 0, i32 40
  %21 = ptrtoint ptr %zwp_offset.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %zwp_offset.i, align 4
  tail call void @kvfree(ptr noundef %22) #10
  %23 = ptrtoint ptr %zwp_offset.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %zwp_offset.i, align 4
  %nr_zones.i = getelementptr inbounds %struct.mapped_device, ptr %1, i32 0, i32 39
  %24 = ptrtoint ptr %nr_zones.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %nr_zones.i, align 8
  br label %cleanup

if.end39:                                         ; preds = %lor.lhs.false.i.if.end39_crit_edge, %if.end.i.if.end39_crit_edge, %for.body.i.if.end39_crit_edge
  %flags40 = getelementptr inbounds %struct.mapped_device, ptr %1, i32 0, i32 4
  tail call void @_set_bit(i32 noundef 9, ptr noundef %flags40) #10
  %25 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %disk, align 8
  %part0.i = getelementptr inbounds %struct.gendisk, ptr %26, i32 0, i32 7
  %27 = ptrtoint ptr %part0.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %part0.i, align 4
  %bd_nr_sectors.i.i = getelementptr inbounds %struct.block_device, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %bd_nr_sectors.i.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %bd_nr_sectors.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %30)
  %tobool43.not = icmp eq i64 %30, 0
  br i1 %tobool43.not, label %if.end39.cleanup_crit_edge, label %if.end45

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end45:                                         ; preds = %if.end39
  %queue.i60 = getelementptr inbounds %struct.mapped_device, ptr %1, i32 0, i32 8
  %31 = ptrtoint ptr %queue.i60 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %queue.i60, align 4
  %nr_zones.i61 = getelementptr inbounds %struct.request_queue, ptr %32, i32 0, i32 39
  %33 = ptrtoint ptr %nr_zones.i61 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %nr_zones.i61, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i62 = icmp eq i32 %34, 0
  br i1 %tobool.not.i62, label %if.end45.if.then.i64_crit_edge, label %lor.lhs.false.i63

if.end45.if.then.i64_crit_edge:                   ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i64

lor.lhs.false.i63:                                ; preds = %if.end45
  %nr_zones2.i = getelementptr inbounds %struct.mapped_device, ptr %1, i32 0, i32 39
  %35 = ptrtoint ptr %nr_zones2.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %nr_zones2.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %36)
  %cmp.not.i = icmp eq i32 %34, %36
  br i1 %cmp.not.i, label %lor.lhs.false.i63.if.end.i65_crit_edge, label %lor.lhs.false.i63.if.then.i64_crit_edge

lor.lhs.false.i63.if.then.i64_crit_edge:          ; preds = %lor.lhs.false.i63
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i64

lor.lhs.false.i63.if.end.i65_crit_edge:           ; preds = %lor.lhs.false.i63
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i65

if.then.i64:                                      ; preds = %lor.lhs.false.i63.if.then.i64_crit_edge, %if.end45.if.then.i64_crit_edge
  %tobool.not.i.i = icmp eq ptr %32, null
  br i1 %tobool.not.i.i, label %if.then.i64.dm_cleanup_zoned_dev.exit.i_crit_edge, label %if.then.i.i

if.then.i64.dm_cleanup_zoned_dev.exit.i_crit_edge: ; preds = %if.then.i64
  call void @__sanitizer_cov_trace_pc() #12
  br label %dm_cleanup_zoned_dev.exit.i

if.then.i.i:                                      ; preds = %if.then.i64
  call void @__sanitizer_cov_trace_pc() #12
  %conv_zones_bitmap.i.i = getelementptr inbounds %struct.request_queue, ptr %32, i32 0, i32 40
  %37 = ptrtoint ptr %conv_zones_bitmap.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %conv_zones_bitmap.i.i, align 8
  tail call void @kfree(ptr noundef %38) #10
  %39 = ptrtoint ptr %conv_zones_bitmap.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %conv_zones_bitmap.i.i, align 8
  %seq_zones_wlock.i.i = getelementptr inbounds %struct.request_queue, ptr %32, i32 0, i32 41
  %40 = ptrtoint ptr %seq_zones_wlock.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %seq_zones_wlock.i.i, align 4
  tail call void @kfree(ptr noundef %41) #10
  %42 = ptrtoint ptr %seq_zones_wlock.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %seq_zones_wlock.i.i, align 4
  br label %dm_cleanup_zoned_dev.exit.i

dm_cleanup_zoned_dev.exit.i:                      ; preds = %if.then.i.i, %if.then.i64.dm_cleanup_zoned_dev.exit.i_crit_edge
  %zwp_offset.i.i = getelementptr inbounds %struct.mapped_device, ptr %1, i32 0, i32 40
  %43 = ptrtoint ptr %zwp_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %zwp_offset.i.i, align 4
  tail call void @kvfree(ptr noundef %44) #10
  %45 = ptrtoint ptr %zwp_offset.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %zwp_offset.i.i, align 4
  %nr_zones.i.i = getelementptr inbounds %struct.mapped_device, ptr %1, i32 0, i32 39
  %46 = ptrtoint ptr %nr_zones.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %nr_zones.i.i, align 8
  br label %if.end.i65

if.end.i65:                                       ; preds = %dm_cleanup_zoned_dev.exit.i, %lor.lhs.false.i63.if.end.i65_crit_edge
  %nr_zones3.i = getelementptr inbounds %struct.mapped_device, ptr %1, i32 0, i32 39
  %47 = ptrtoint ptr %nr_zones3.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %nr_zones3.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool4.not.i = icmp eq i32 %48, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.end.i65.cleanup_crit_edge

if.end.i65.cleanup_crit_edge:                     ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6.i:                                        ; preds = %if.end.i65
  %49 = tail call i32 @llvm.read_register.i32(metadata !42) #10
  %and.i.i.i = and i32 %49, -16384
  %50 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %task.i.i, align 8
  %flags1.i.i = getelementptr inbounds %struct.task_struct, ptr %52, i32 0, i32 3
  %53 = ptrtoint ptr %flags1.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %flags1.i.i, align 4
  %and.i.i = and i32 %54, 524288
  %or.i.i = or i32 %54, 524288
  store i32 %or.i.i, ptr %flags1.i.i, align 4
  %55 = ptrtoint ptr %nr_zones.i61 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %nr_zones.i61, align 4
  %57 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %disk, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %args.i.i) #10
  %59 = call ptr @memset(ptr %args.i.i, i32 255, i32 32)
  %60 = ptrtoint ptr %args.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %args.i.i, align 8
  %next_sector.i.i = getelementptr inbounds %struct.dm_report_zones_args, ptr %args.i.i, i32 0, i32 1
  %61 = ptrtoint ptr %next_sector.i.i to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 0, ptr %next_sector.i.i, align 8
  %orig_data.i.i = getelementptr inbounds %struct.dm_report_zones_args, ptr %args.i.i, i32 0, i32 2
  %62 = ptrtoint ptr %orig_data.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %1, ptr %orig_data.i.i, align 8
  %orig_cb.i.i = getelementptr inbounds %struct.dm_report_zones_args, ptr %args.i.i, i32 0, i32 3
  %63 = ptrtoint ptr %orig_cb.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @dm_zone_revalidate_cb, ptr %orig_cb.i.i, align 4
  %zone_idx.i.i = getelementptr inbounds %struct.dm_report_zones_args, ptr %args.i.i, i32 0, i32 4
  %64 = ptrtoint ptr %zone_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %zone_idx.i.i, align 8
  %start.i.i = getelementptr inbounds %struct.dm_report_zones_args, ptr %args.i.i, i32 0, i32 5
  %65 = ptrtoint ptr %start.i.i to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 0, ptr %start.i.i, align 8
  %part0.i.i.i = getelementptr inbounds %struct.gendisk, ptr %58, i32 0, i32 7
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %land.rhs54.i.i.do.body.i.i_crit_edge, %if.end6.i
  %66 = ptrtoint ptr %next_sector.i.i to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %next_sector.i.i, align 8
  %call.i.i = call ptr @dm_table_find_target(ptr noundef %t, i64 noundef %67) #10
  %type.i.i = getelementptr inbounds %struct.dm_target, ptr %call.i.i, i32 0, i32 1
  %68 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %type.i.i, align 4
  %report_zones.i.i = getelementptr inbounds %struct.target_type, ptr %69, i32 0, i32 19
  %70 = ptrtoint ptr %report_zones.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %report_zones.i.i, align 8
  %tobool.not.i36.i = icmp eq ptr %71, null
  br i1 %tobool.not.i36.i, label %land.rhs.i.i, label %cleanup.i.i

land.rhs.i.i:                                     ; preds = %do.body.i.i
  %.b71.i.i = load i1, ptr @dm_blk_do_report_zones.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs.i.i.dm_blk_do_report_zones.exit.i_crit_edge, label %if.then.i37.i, !prof !53

land.rhs.i.i.dm_blk_do_report_zones.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dm_blk_do_report_zones.exit.i

if.then.i37.i:                                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @dm_blk_do_report_zones.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 36, i32 noundef 9, ptr noundef null) #10
  br label %dm_blk_do_report_zones.exit.i

cleanup.i.i:                                      ; preds = %do.body.i.i
  %72 = ptrtoint ptr %args.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call.i.i, ptr %args.i.i, align 8
  %73 = ptrtoint ptr %zone_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %zone_idx.i.i, align 8
  %sub.i.i = sub i32 %56, %74
  %call48.i.i = call i32 %71(ptr noundef %call.i.i, ptr noundef nonnull %args.i.i, i32 noundef %sub.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i.i)
  %cmp.i.i = icmp slt i32 %call48.i.i, 0
  br i1 %cmp.i.i, label %cleanup.i.i.dm_blk_do_report_zones.exit.i_crit_edge, label %do.cond51.i.i

cleanup.i.i.dm_blk_do_report_zones.exit.i_crit_edge: ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dm_blk_do_report_zones.exit.i

do.cond51.i.i:                                    ; preds = %cleanup.i.i
  %75 = ptrtoint ptr %zone_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %zone_idx.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %76, i32 %56)
  %cmp53.i.i = icmp ult i32 %76, %56
  br i1 %cmp53.i.i, label %land.rhs54.i.i, label %do.cond51.i.i.dm_blk_do_report_zones.exit.i_crit_edge

do.cond51.i.i.dm_blk_do_report_zones.exit.i_crit_edge: ; preds = %do.cond51.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dm_blk_do_report_zones.exit.i

land.rhs54.i.i:                                   ; preds = %do.cond51.i.i
  %77 = ptrtoint ptr %next_sector.i.i to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %next_sector.i.i, align 8
  %79 = ptrtoint ptr %part0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %part0.i.i.i, align 4
  %bd_nr_sectors.i.i.i.i = getelementptr inbounds %struct.block_device, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %bd_nr_sectors.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %bd_nr_sectors.i.i.i.i, align 8
  %cmp57.i.i = icmp ult i64 %78, %82
  br i1 %cmp57.i.i, label %land.rhs54.i.i.do.body.i.i_crit_edge, label %land.rhs54.i.i.dm_blk_do_report_zones.exit.i_crit_edge

land.rhs54.i.i.dm_blk_do_report_zones.exit.i_crit_edge: ; preds = %land.rhs54.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dm_blk_do_report_zones.exit.i

land.rhs54.i.i.do.body.i.i_crit_edge:             ; preds = %land.rhs54.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i

dm_blk_do_report_zones.exit.i:                    ; preds = %land.rhs54.i.i.dm_blk_do_report_zones.exit.i_crit_edge, %do.cond51.i.i.dm_blk_do_report_zones.exit.i_crit_edge, %cleanup.i.i.dm_blk_do_report_zones.exit.i_crit_edge, %if.then.i37.i, %land.rhs.i.i.dm_blk_do_report_zones.exit.i_crit_edge
  %retval.2.i.i = phi i32 [ -5, %if.then.i37.i ], [ -5, %land.rhs.i.i.dm_blk_do_report_zones.exit.i_crit_edge ], [ %76, %land.rhs54.i.i.dm_blk_do_report_zones.exit.i_crit_edge ], [ %76, %do.cond51.i.i.dm_blk_do_report_zones.exit.i_crit_edge ], [ %call48.i.i, %cleanup.i.i.dm_blk_do_report_zones.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %args.i.i) #10
  %83 = call i32 @llvm.read_register.i32(metadata !42) #10
  %and.i.i38.i = and i32 %83, -16384
  %84 = inttoptr i32 %and.i.i38.i to ptr
  %task.i39.i = getelementptr inbounds %struct.thread_info, ptr %84, i32 0, i32 2
  %85 = ptrtoint ptr %task.i39.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %task.i39.i, align 8
  %flags1.i40.i = getelementptr inbounds %struct.task_struct, ptr %86, i32 0, i32 3
  %87 = ptrtoint ptr %flags1.i40.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %flags1.i40.i, align 4
  %and.i41.i = and i32 %88, -524289
  %or.i42.i = or i32 %and.i41.i, %and.i.i
  store i32 %or.i42.i, ptr %flags1.i40.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.2.i.i)
  %cmp9.i = icmp slt i32 %retval.2.i.i, 0
  br i1 %cmp9.i, label %dm_blk_do_report_zones.exit.i.do.end.i_crit_edge, label %if.end11.i

dm_blk_do_report_zones.exit.i.do.end.i_crit_edge: ; preds = %dm_blk_do_report_zones.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.end11.i:                                       ; preds = %dm_blk_do_report_zones.exit.i
  %89 = ptrtoint ptr %nr_zones.i61 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %nr_zones.i61, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.2.i.i, i32 %90)
  %cmp13.not.i = icmp eq i32 %retval.2.i.i, %90
  br i1 %cmp13.not.i, label %if.end11.i.cleanup.sink.split.i_crit_edge, label %if.end11.i.do.end.i_crit_edge

if.end11.i.do.end.i_crit_edge:                    ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.end11.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i

do.end.i:                                         ; preds = %if.end11.i.do.end.i_crit_edge, %dm_blk_do_report_zones.exit.i.do.end.i_crit_edge
  %ret.0.i = phi i32 [ %retval.2.i.i, %dm_blk_do_report_zones.exit.i.do.end.i_crit_edge ], [ -5, %if.end11.i.do.end.i_crit_edge ]
  %call18.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %ret.0.i) #13
  %91 = ptrtoint ptr %queue.i60 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %queue.i60, align 4
  %tobool.not.i44.i = icmp eq ptr %92, null
  br i1 %tobool.not.i44.i, label %do.end.i.dm_cleanup_zoned_dev.exit50.i_crit_edge, label %if.then.i47.i

do.end.i.dm_cleanup_zoned_dev.exit50.i_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dm_cleanup_zoned_dev.exit50.i

if.then.i47.i:                                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv_zones_bitmap.i45.i = getelementptr inbounds %struct.request_queue, ptr %92, i32 0, i32 40
  %93 = ptrtoint ptr %conv_zones_bitmap.i45.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %conv_zones_bitmap.i45.i, align 8
  call void @kfree(ptr noundef %94) #10
  %95 = ptrtoint ptr %conv_zones_bitmap.i45.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr null, ptr %conv_zones_bitmap.i45.i, align 8
  %seq_zones_wlock.i46.i = getelementptr inbounds %struct.request_queue, ptr %92, i32 0, i32 41
  %96 = ptrtoint ptr %seq_zones_wlock.i46.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %seq_zones_wlock.i46.i, align 4
  call void @kfree(ptr noundef %97) #10
  %98 = ptrtoint ptr %seq_zones_wlock.i46.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr null, ptr %seq_zones_wlock.i46.i, align 4
  br label %dm_cleanup_zoned_dev.exit50.i

dm_cleanup_zoned_dev.exit50.i:                    ; preds = %if.then.i47.i, %do.end.i.dm_cleanup_zoned_dev.exit50.i_crit_edge
  %zwp_offset.i48.i = getelementptr inbounds %struct.mapped_device, ptr %1, i32 0, i32 40
  %99 = ptrtoint ptr %zwp_offset.i48.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %zwp_offset.i48.i, align 4
  call void @kvfree(ptr noundef %100) #10
  %101 = ptrtoint ptr %zwp_offset.i48.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr null, ptr %zwp_offset.i48.i, align 4
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %dm_cleanup_zoned_dev.exit50.i, %if.end11.i.cleanup.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 0, %dm_cleanup_zoned_dev.exit50.i ], [ %retval.2.i.i, %if.end11.i.cleanup.sink.split.i_crit_edge ]
  %retval.0.ph.i = phi i32 [ %ret.0.i, %dm_cleanup_zoned_dev.exit50.i ], [ 0, %if.end11.i.cleanup.sink.split.i_crit_edge ]
  %102 = ptrtoint ptr %nr_zones3.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %.sink.i, ptr %nr_zones3.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split.i, %if.end.i65.cleanup_crit_edge, %if.end39.cleanup_crit_edge, %dm_cleanup_zoned_dev.exit
  %retval.0 = phi i32 [ 0, %dm_cleanup_zoned_dev.exit ], [ 0, %if.end39.cleanup_crit_edge ], [ 0, %if.end.i65.cleanup_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkdev_nr_zones(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_zone_map_bio(ptr noundef %tio) local_unnamed_addr #0 align 64 {
entry:
  %args.i.i.i = alloca %struct.dm_report_zones_args, align 8
  %srcu_idx.i.i = alloca i32, align 4
  %zwp_offset.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %io1 = getelementptr inbounds %struct.dm_target_io, ptr %tio, i32 0, i32 1
  %0 = ptrtoint ptr %io1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io1, align 4
  %ti2 = getelementptr inbounds %struct.dm_target_io, ptr %tio, i32 0, i32 2
  %2 = ptrtoint ptr %ti2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ti2, align 8
  %md3 = getelementptr inbounds %struct.dm_io, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %md3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %md3, align 4
  %queue = getelementptr inbounds %struct.mapped_device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %queue, align 4
  %orig_bio4 = getelementptr inbounds %struct.dm_io, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %orig_bio4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %orig_bio4, align 8
  %clone5 = getelementptr inbounds %struct.dm_target_io, ptr %tio, i32 0, i32 6
  %bi_opf.i = getelementptr inbounds %struct.bio, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bi_opf.i, align 8
  %12 = and i32 %11, 393216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.i.not.i = icmp eq i32 %12, 0
  br i1 %tobool.i.not.i, label %entry.if.end.i_crit_edge, label %land.lhs.true.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %bi_size.i = getelementptr inbounds %struct.bio, ptr %9, i32 0, i32 8, i32 1
  %13 = ptrtoint ptr %bi_size.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bi_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %14)
  %tobool.not.i = icmp ult i32 %14, 512
  br i1 %tobool.not.i, label %land.lhs.true.i.if.then_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true.i.if.then_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %trunc.i = trunc i32 %11 to i8
  %15 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.13)
  switch i8 %trunc.i, label %if.end.i.if.then_crit_edge [
    i8 9, label %if.end.i.sw.bb.i_crit_edge
    i8 7, label %if.end.i.sw.bb.i_crit_edge146
    i8 1, label %if.end.i.sw.bb.i_crit_edge147
    i8 15, label %if.end.i.sw.bb.i_crit_edge148
    i8 12, label %if.end.i.sw.bb.i_crit_edge149
    i8 13, label %if.end.i.sw.bb.i_crit_edge150
  ]

if.end.i.sw.bb.i_crit_edge150:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.end.i.sw.bb.i_crit_edge149:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.end.i.sw.bb.i_crit_edge148:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.end.i.sw.bb.i_crit_edge147:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.end.i.sw.bb.i_crit_edge146:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.end.i.sw.bb.i_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

sw.bb.i:                                          ; preds = %if.end.i.sw.bb.i_crit_edge, %if.end.i.sw.bb.i_crit_edge146, %if.end.i.sw.bb.i_crit_edge147, %if.end.i.sw.bb.i_crit_edge148, %if.end.i.sw.bb.i_crit_edge149, %if.end.i.sw.bb.i_crit_edge150
  %bi_bdev.i.i = getelementptr inbounds %struct.bio, ptr %9, i32 0, i32 1
  %16 = ptrtoint ptr %bi_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bi_bdev.i.i, align 4
  %bd_queue.i.i.i = getelementptr inbounds %struct.block_device, ptr %17, i32 0, i32 18
  %18 = ptrtoint ptr %bd_queue.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bd_queue.i.i.i, align 4
  %bi_iter.i.i = getelementptr inbounds %struct.bio, ptr %9, i32 0, i32 8
  %20 = ptrtoint ptr %bi_iter.i.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %bi_iter.i.i, align 8
  %zoned.i.i.i.i.i = getelementptr inbounds %struct.request_queue, ptr %19, i32 0, i32 37, i32 27
  %22 = ptrtoint ptr %zoned.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %zoned.i.i.i.i.i, align 4
  %call.off.i.i.i.i = add i32 %23, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.off.i.i.i.i)
  %switch.i.i.i.i = icmp ult i32 %call.off.i.i.i.i, 2
  br i1 %switch.i.i.i.i, label %if.end.i.i.i, label %sw.bb.i.if.then_crit_edge

sw.bb.i.if.then_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.end.i.i.i:                                     ; preds = %sw.bb.i
  %conv_zones_bitmap.i.i.i = getelementptr inbounds %struct.request_queue, ptr %19, i32 0, i32 40
  %24 = ptrtoint ptr %conv_zones_bitmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %conv_zones_bitmap.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %25, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i.if.end_crit_edge, label %dm_need_zone_wp_tracking.exit

if.end.i.i.i.if.end_crit_edge:                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

dm_need_zone_wp_tracking.exit:                    ; preds = %if.end.i.i.i
  %chunk_sectors.i.i.i.i = getelementptr inbounds %struct.request_queue, ptr %19, i32 0, i32 37, i32 5
  %26 = ptrtoint ptr %chunk_sectors.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %chunk_sectors.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %27, 0
  %28 = tail call i32 @llvm.ctlz.i32(i32 %27, i1 true) #10, !range !54
  %sub.i.op.i.i.i.i.i = xor i32 %28, 31
  %sub.i.i.i.i.i = select i1 %tobool.not.i.i.i.i.i.i, i32 -1, i32 %sub.i.op.i.i.i.i.i
  %sh_prom.i.i.i.i = zext i32 %sub.i.i.i.i.i to i64
  %shr.i10.i.i.i = lshr i64 %21, %sh_prom.i.i.i.i
  %conv12.i.i.i.i = trunc i64 %shr.i10.i.i.i to i32
  %div3.i.i.i.i = lshr i32 %conv12.i.i.i.i, 5
  %arrayidx.i.i.i.i = getelementptr i32, ptr %25, i32 %div3.i.i.i.i
  %29 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx.i.i.i.i, align 4
  %and.i.i.i.i = and i32 %conv12.i.i.i.i, 31
  %31 = shl nuw i32 1, %and.i.i.i.i
  %32 = and i32 %31, %30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %phi.cmp.i = icmp eq i32 %32, 0
  br i1 %phi.cmp.i, label %dm_need_zone_wp_tracking.exit.if.end_crit_edge, label %dm_need_zone_wp_tracking.exit.if.then_crit_edge

dm_need_zone_wp_tracking.exit.if.then_crit_edge:  ; preds = %dm_need_zone_wp_tracking.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

dm_need_zone_wp_tracking.exit.if.end_crit_edge:   ; preds = %dm_need_zone_wp_tracking.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %dm_need_zone_wp_tracking.exit.if.then_crit_edge, %sw.bb.i.if.then_crit_edge, %if.end.i.if.then_crit_edge, %land.lhs.true.i.if.then_crit_edge
  %type = getelementptr inbounds %struct.dm_target, ptr %3, i32 0, i32 1
  %33 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %type, align 4
  %map = getelementptr inbounds %struct.target_type, ptr %34, i32 0, i32 6
  %35 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %map, align 4
  %call6 = tail call i32 %36(ptr noundef %3, ptr noundef %clone5) #10
  br label %cleanup

if.end:                                           ; preds = %dm_need_zone_wp_tracking.exit.if.end_crit_edge, %if.end.i.i.i.if.end_crit_edge
  %37 = ptrtoint ptr %bi_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bi_bdev.i.i, align 4
  %bd_queue.i.i = getelementptr inbounds %struct.block_device, ptr %38, i32 0, i32 18
  %39 = ptrtoint ptr %bd_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bd_queue.i.i, align 4
  %zoned.i.i.i.i = getelementptr inbounds %struct.request_queue, ptr %40, i32 0, i32 37, i32 27
  %41 = ptrtoint ptr %zoned.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %zoned.i.i.i.i, align 4
  %call.off.i.i.i = add i32 %42, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.off.i.i.i)
  %switch.i.i.i = icmp ult i32 %call.off.i.i.i, 2
  br i1 %switch.i.i.i, label %cond.end10.i.i, label %if.end.bio_zone_no.exit_crit_edge

if.end.bio_zone_no.exit_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %bio_zone_no.exit

cond.end10.i.i:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %bi_iter.i.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %bi_iter.i.i, align 8
  %chunk_sectors.i.i = getelementptr inbounds %struct.request_queue, ptr %40, i32 0, i32 37, i32 5
  %45 = ptrtoint ptr %chunk_sectors.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %chunk_sectors.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not.i.i.i.i = icmp eq i32 %46, 0
  %47 = tail call i32 @llvm.ctlz.i32(i32 %46, i1 true) #10, !range !54
  %sub.i.op.i.i.i = xor i32 %47, 31
  %sub.i.i.i = select i1 %tobool.not.i.i.i.i, i32 -1, i32 %sub.i.op.i.i.i
  %sh_prom.i.i = zext i32 %sub.i.i.i to i64
  %shr.i.i = lshr i64 %44, %sh_prom.i.i
  %conv12.i.i = trunc i64 %shr.i.i to i32
  br label %bio_zone_no.exit

bio_zone_no.exit:                                 ; preds = %cond.end10.i.i, %if.end.bio_zone_no.exit_crit_edge
  %retval.0.i.i = phi i32 [ %conv12.i.i, %cond.end10.i.i ], [ 0, %if.end.bio_zone_no.exit_crit_edge ]
  %bi_flags.i.i = getelementptr inbounds %struct.dm_target_io, ptr %tio, i32 0, i32 6, i32 3
  %48 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %bi_flags.i.i, align 4
  %50 = and i16 %49, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %50)
  %cmp.i.not.i = icmp eq i16 %50, 0
  br i1 %cmp.i.not.i, label %if.end37.critedge.i, label %land.rhs.i

land.rhs.i:                                       ; preds = %bio_zone_no.exit
  %.b42.i = load i1, ptr @dm_zone_lock.__already_done, align 1
  br i1 %.b42.i, label %land.rhs.i.dm_zone_lock.exit_crit_edge, label %if.then.i, !prof !53

land.rhs.i.dm_zone_lock.exit_crit_edge:           ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dm_zone_lock.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @dm_zone_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 473, i32 noundef 9, ptr noundef null) #10
  br label %dm_zone_lock.exit

if.end37.critedge.i:                              ; preds = %bio_zone_no.exit
  %seq_zones_wlock.i = getelementptr inbounds %struct.request_queue, ptr %7, i32 0, i32 41
  %51 = ptrtoint ptr %seq_zones_wlock.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %seq_zones_wlock.i, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 205) #10
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef %retval.0.i.i, ptr noundef %52) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end37.critedge.i.wait_on_bit_lock_io.exit.i_crit_edge, label %if.end.i.i67

if.end37.critedge.i.wait_on_bit_lock_io.exit.i_crit_edge: ; preds = %if.end37.critedge.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %wait_on_bit_lock_io.exit.i

if.end.i.i67:                                     ; preds = %if.end37.critedge.i
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i.i = tail call i32 @out_of_line_wait_on_bit_lock(ptr noundef %52, i32 noundef %retval.0.i.i, ptr noundef nonnull @bit_wait_io, i32 noundef 2) #10
  br label %wait_on_bit_lock_io.exit.i

wait_on_bit_lock_io.exit.i:                       ; preds = %if.end.i.i67, %if.end37.critedge.i.wait_on_bit_lock_io.exit.i_crit_edge
  %53 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %bi_flags.i.i, align 4
  %55 = or i16 %54, 4096
  store i16 %55, ptr %bi_flags.i.i, align 4
  br label %dm_zone_lock.exit

dm_zone_lock.exit:                                ; preds = %wait_on_bit_lock_io.exit.i, %if.then.i, %land.rhs.i.dm_zone_lock.exit_crit_edge
  %56 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %queue, align 4
  %zoned.i.i.i.i68 = getelementptr inbounds %struct.request_queue, ptr %57, i32 0, i32 37, i32 27
  %58 = ptrtoint ptr %zoned.i.i.i.i68 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %zoned.i.i.i.i68, align 4
  %call.off.i.i.i69 = add i32 %59, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.off.i.i.i69)
  %switch.i.i.i70 = icmp ult i32 %call.off.i.i.i69, 2
  br i1 %switch.i.i.i70, label %cond.true.i.i72, label %dm_zone_lock.exit.blk_queue_zone_sectors.exit.i_crit_edge

dm_zone_lock.exit.blk_queue_zone_sectors.exit.i_crit_edge: ; preds = %dm_zone_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %blk_queue_zone_sectors.exit.i

cond.true.i.i72:                                  ; preds = %dm_zone_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  %chunk_sectors.i.i71 = getelementptr inbounds %struct.request_queue, ptr %57, i32 0, i32 37, i32 5
  %60 = ptrtoint ptr %chunk_sectors.i.i71 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %chunk_sectors.i.i71, align 4
  br label %blk_queue_zone_sectors.exit.i

blk_queue_zone_sectors.exit.i:                    ; preds = %cond.true.i.i72, %dm_zone_lock.exit.blk_queue_zone_sectors.exit.i_crit_edge
  %cond.i.i = phi i32 [ %61, %cond.true.i.i72 ], [ 0, %dm_zone_lock.exit.blk_queue_zone_sectors.exit.i_crit_edge ]
  %conv.i.i = zext i32 %cond.i.i to i64
  %62 = ptrtoint ptr %bi_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %bi_bdev.i.i, align 4
  %bd_queue.i.i.i74 = getelementptr inbounds %struct.block_device, ptr %63, i32 0, i32 18
  %64 = ptrtoint ptr %bd_queue.i.i.i74 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %bd_queue.i.i.i74, align 4
  %zoned.i.i.i.i.i76 = getelementptr inbounds %struct.request_queue, ptr %65, i32 0, i32 37, i32 27
  %66 = ptrtoint ptr %zoned.i.i.i.i.i76 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %zoned.i.i.i.i.i76, align 4
  %call.off.i.i.i.i77 = add i32 %67, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.off.i.i.i.i77)
  %switch.i.i.i.i78 = icmp ult i32 %call.off.i.i.i.i77, 2
  br i1 %switch.i.i.i.i78, label %cond.end10.i.i.i, label %blk_queue_zone_sectors.exit.i.bio_zone_no.exit.i_crit_edge

blk_queue_zone_sectors.exit.i.bio_zone_no.exit.i_crit_edge: ; preds = %blk_queue_zone_sectors.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bio_zone_no.exit.i

cond.end10.i.i.i:                                 ; preds = %blk_queue_zone_sectors.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %68 = ptrtoint ptr %bi_iter.i.i to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %bi_iter.i.i, align 8
  %chunk_sectors.i.i.i = getelementptr inbounds %struct.request_queue, ptr %65, i32 0, i32 37, i32 5
  %70 = ptrtoint ptr %chunk_sectors.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %chunk_sectors.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool.not.i.i.i.i.i = icmp eq i32 %71, 0
  %72 = tail call i32 @llvm.ctlz.i32(i32 %71, i1 true) #10, !range !54
  %sub.i.op.i.i.i.i = xor i32 %72, 31
  %sub.i.i.i.i81 = select i1 %tobool.not.i.i.i.i.i, i32 -1, i32 %sub.i.op.i.i.i.i
  %sh_prom.i.i.i = zext i32 %sub.i.i.i.i81 to i64
  %shr.i.i.i = lshr i64 %69, %sh_prom.i.i.i
  %conv12.i.i.i = trunc i64 %shr.i.i.i to i32
  br label %bio_zone_no.exit.i

bio_zone_no.exit.i:                               ; preds = %cond.end10.i.i.i, %blk_queue_zone_sectors.exit.i.bio_zone_no.exit.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %conv12.i.i.i, %cond.end10.i.i.i ], [ 0, %blk_queue_zone_sectors.exit.i.bio_zone_no.exit.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %zwp_offset.i) #10
  %zwp_offset2.i = getelementptr inbounds %struct.mapped_device, ptr %5, i32 0, i32 40
  %73 = ptrtoint ptr %zwp_offset2.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %zwp_offset2.i, align 4
  %arrayidx.i = getelementptr i32, ptr %74, i32 %retval.0.i.i.i
  %75 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %arrayidx.i, align 4
  %77 = ptrtoint ptr %zwp_offset.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %zwp_offset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %76)
  %cmp.i = icmp eq i32 %76, -1
  br i1 %cmp.i, label %if.then.i82, label %bio_zone_no.exit.i.if.end16.i_crit_edge

bio_zone_no.exit.i.if.end16.i_crit_edge:          ; preds = %bio_zone_no.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16.i

if.then.i82:                                      ; preds = %bio_zone_no.exit.i
  br i1 %switch.i.i.i70, label %cond.true.i.i65.i, label %if.then.i82.blk_queue_zone_sectors.exit.i.i_crit_edge

if.then.i82.blk_queue_zone_sectors.exit.i.i_crit_edge: ; preds = %if.then.i82
  call void @__sanitizer_cov_trace_pc() #12
  br label %blk_queue_zone_sectors.exit.i.i

cond.true.i.i65.i:                                ; preds = %if.then.i82
  call void @__sanitizer_cov_trace_pc() #12
  %chunk_sectors.i.i64.i = getelementptr inbounds %struct.request_queue, ptr %57, i32 0, i32 37, i32 5
  %78 = ptrtoint ptr %chunk_sectors.i.i64.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %chunk_sectors.i.i64.i, align 4
  br label %blk_queue_zone_sectors.exit.i.i

blk_queue_zone_sectors.exit.i.i:                  ; preds = %cond.true.i.i65.i, %if.then.i82.blk_queue_zone_sectors.exit.i.i_crit_edge
  %cond.i.i.i = phi i32 [ %79, %cond.true.i.i65.i ], [ 0, %if.then.i82.blk_queue_zone_sectors.exit.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %srcu_idx.i.i) #10
  %80 = ptrtoint ptr %srcu_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 -1, ptr %srcu_idx.i.i, align 4, !annotation !52
  %call1.i.i = call ptr @dm_get_live_table(ptr noundef %5, ptr noundef nonnull %srcu_idx.i.i) #10
  %tobool.not.i.i83 = icmp eq ptr %call1.i.i, null
  br i1 %tobool.not.i.i83, label %blk_queue_zone_sectors.exit.i.i.dm_update_zone_wp_offset.exit.thread.i_crit_edge, label %if.end.i.i85

blk_queue_zone_sectors.exit.i.i.dm_update_zone_wp_offset.exit.thread.i_crit_edge: ; preds = %blk_queue_zone_sectors.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dm_update_zone_wp_offset.exit.thread.i

if.end.i.i85:                                     ; preds = %blk_queue_zone_sectors.exit.i.i
  %conv.i.i.i = zext i32 %cond.i.i.i to i64
  %conv.i66.i = zext i32 %retval.0.i.i.i to i64
  %mul.i.i = mul nuw i64 %conv.i.i.i, %conv.i66.i
  %81 = call i32 @llvm.read_register.i32(metadata !42) #10
  %and.i.i.i.i84 = and i32 %81, -16384
  %82 = inttoptr i32 %and.i.i.i.i84 to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %82, i32 0, i32 2
  %83 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %task.i.i.i, align 8
  %flags1.i.i.i = getelementptr inbounds %struct.task_struct, ptr %84, i32 0, i32 3
  %85 = ptrtoint ptr %flags1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %flags1.i.i.i, align 4
  %and.i.i.i = and i32 %86, 524288
  %or.i.i.i = or i32 %86, 524288
  store i32 %or.i.i.i, ptr %flags1.i.i.i, align 4
  %disk1.i.i.i = getelementptr inbounds %struct.mapped_device, ptr %5, i32 0, i32 14
  %87 = ptrtoint ptr %disk1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %disk1.i.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %args.i.i.i) #10
  %89 = call ptr @memset(ptr %args.i.i.i, i32 255, i32 32)
  %90 = ptrtoint ptr %args.i.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr null, ptr %args.i.i.i, align 8
  %next_sector.i.i.i = getelementptr inbounds %struct.dm_report_zones_args, ptr %args.i.i.i, i32 0, i32 1
  %91 = ptrtoint ptr %next_sector.i.i.i to i32
  call void @__asan_store8_noabort(i32 %91)
  store i64 %mul.i.i, ptr %next_sector.i.i.i, align 8
  %orig_data.i.i.i = getelementptr inbounds %struct.dm_report_zones_args, ptr %args.i.i.i, i32 0, i32 2
  %92 = ptrtoint ptr %orig_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %zwp_offset.i, ptr %orig_data.i.i.i, align 8
  %orig_cb.i.i.i = getelementptr inbounds %struct.dm_report_zones_args, ptr %args.i.i.i, i32 0, i32 3
  %93 = ptrtoint ptr %orig_cb.i.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr @dm_update_zone_wp_offset_cb, ptr %orig_cb.i.i.i, align 4
  %zone_idx.i.i.i = getelementptr inbounds %struct.dm_report_zones_args, ptr %args.i.i.i, i32 0, i32 4
  %94 = ptrtoint ptr %zone_idx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 0, ptr %zone_idx.i.i.i, align 8
  %start.i.i.i = getelementptr inbounds %struct.dm_report_zones_args, ptr %args.i.i.i, i32 0, i32 5
  %95 = ptrtoint ptr %start.i.i.i to i32
  call void @__asan_store8_noabort(i32 %95)
  store i64 0, ptr %start.i.i.i, align 8
  %part0.i.i.i.i = getelementptr inbounds %struct.gendisk, ptr %88, i32 0, i32 7
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %land.rhs54.i.i.i.do.body.i.i.i_crit_edge, %if.end.i.i85
  %96 = ptrtoint ptr %next_sector.i.i.i to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %next_sector.i.i.i, align 8
  %call.i.i.i = call ptr @dm_table_find_target(ptr noundef nonnull %call1.i.i, i64 noundef %97) #10
  %type.i.i.i = getelementptr inbounds %struct.dm_target, ptr %call.i.i.i, i32 0, i32 1
  %98 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %type.i.i.i, align 4
  %report_zones.i.i.i = getelementptr inbounds %struct.target_type, ptr %99, i32 0, i32 19
  %100 = ptrtoint ptr %report_zones.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %report_zones.i.i.i, align 8
  %tobool.not.i.i.i86 = icmp eq ptr %101, null
  br i1 %tobool.not.i.i.i86, label %land.rhs.i.i.i, label %cleanup.i.i.i

land.rhs.i.i.i:                                   ; preds = %do.body.i.i.i
  %.b71.i.i.i = load i1, ptr @dm_blk_do_report_zones.__already_done, align 1
  br i1 %.b71.i.i.i, label %land.rhs.i.i.i.dm_blk_do_report_zones.exit.i.i_crit_edge, label %if.then.i.i.i, !prof !53

land.rhs.i.i.i.dm_blk_do_report_zones.exit.i.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dm_blk_do_report_zones.exit.i.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @dm_blk_do_report_zones.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 36, i32 noundef 9, ptr noundef null) #10
  br label %dm_blk_do_report_zones.exit.i.i

cleanup.i.i.i:                                    ; preds = %do.body.i.i.i
  %102 = ptrtoint ptr %args.i.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %call.i.i.i, ptr %args.i.i.i, align 8
  %103 = ptrtoint ptr %zone_idx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %zone_idx.i.i.i, align 8
  %sub.i.i67.i = sub i32 1, %104
  %call48.i.i.i = call i32 %101(ptr noundef %call.i.i.i, ptr noundef nonnull %args.i.i.i, i32 noundef %sub.i.i67.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i.i.i)
  %cmp.i.i68.i = icmp slt i32 %call48.i.i.i, 0
  br i1 %cmp.i.i68.i, label %cleanup.i.i.i.dm_blk_do_report_zones.exit.i.i_crit_edge, label %do.cond51.i.i.i

cleanup.i.i.i.dm_blk_do_report_zones.exit.i.i_crit_edge: ; preds = %cleanup.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dm_blk_do_report_zones.exit.i.i

do.cond51.i.i.i:                                  ; preds = %cleanup.i.i.i
  %105 = ptrtoint ptr %zone_idx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %zone_idx.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %cmp53.i.i.i = icmp eq i32 %106, 0
  br i1 %cmp53.i.i.i, label %land.rhs54.i.i.i, label %do.cond51.i.i.i.dm_blk_do_report_zones.exit.i.i_crit_edge

do.cond51.i.i.i.dm_blk_do_report_zones.exit.i.i_crit_edge: ; preds = %do.cond51.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dm_blk_do_report_zones.exit.i.i

land.rhs54.i.i.i:                                 ; preds = %do.cond51.i.i.i
  %107 = ptrtoint ptr %next_sector.i.i.i to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %next_sector.i.i.i, align 8
  %109 = ptrtoint ptr %part0.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %part0.i.i.i.i, align 4
  %bd_nr_sectors.i.i.i.i.i = getelementptr inbounds %struct.block_device, ptr %110, i32 0, i32 1
  %111 = ptrtoint ptr %bd_nr_sectors.i.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %111)
  %112 = load i64, ptr %bd_nr_sectors.i.i.i.i.i, align 8
  %cmp57.i.i.i = icmp ult i64 %108, %112
  br i1 %cmp57.i.i.i, label %land.rhs54.i.i.i.do.body.i.i.i_crit_edge, label %land.rhs54.i.i.i.dm_blk_do_report_zones.exit.i.i_crit_edge

land.rhs54.i.i.i.dm_blk_do_report_zones.exit.i.i_crit_edge: ; preds = %land.rhs54.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dm_blk_do_report_zones.exit.i.i

land.rhs54.i.i.i.do.body.i.i.i_crit_edge:         ; preds = %land.rhs54.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i

dm_blk_do_report_zones.exit.i.i:                  ; preds = %land.rhs54.i.i.i.dm_blk_do_report_zones.exit.i.i_crit_edge, %do.cond51.i.i.i.dm_blk_do_report_zones.exit.i.i_crit_edge, %cleanup.i.i.i.dm_blk_do_report_zones.exit.i.i_crit_edge, %if.then.i.i.i, %land.rhs.i.i.i.dm_blk_do_report_zones.exit.i.i_crit_edge
  %retval.2.i.i.i = phi i32 [ -5, %if.then.i.i.i ], [ -5, %land.rhs.i.i.i.dm_blk_do_report_zones.exit.i.i_crit_edge ], [ %call48.i.i.i, %cleanup.i.i.i.dm_blk_do_report_zones.exit.i.i_crit_edge ], [ %106, %do.cond51.i.i.i.dm_blk_do_report_zones.exit.i.i_crit_edge ], [ 0, %land.rhs54.i.i.i.dm_blk_do_report_zones.exit.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %args.i.i.i) #10
  %113 = call i32 @llvm.read_register.i32(metadata !42) #10
  %and.i.i15.i.i = and i32 %113, -16384
  %114 = inttoptr i32 %and.i.i15.i.i to ptr
  %task.i16.i.i = getelementptr inbounds %struct.thread_info, ptr %114, i32 0, i32 2
  %115 = ptrtoint ptr %task.i16.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %task.i16.i.i, align 8
  %flags1.i17.i.i = getelementptr inbounds %struct.task_struct, ptr %116, i32 0, i32 3
  %117 = ptrtoint ptr %flags1.i17.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %flags1.i17.i.i, align 4
  %and.i18.i.i = and i32 %118, -524289
  %or.i19.i.i = or i32 %and.i18.i.i, %and.i.i.i
  store i32 %or.i19.i.i, ptr %flags1.i17.i.i, align 4
  %119 = ptrtoint ptr %srcu_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %srcu_idx.i.i, align 4
  call void @dm_put_live_table(ptr noundef %5, i32 noundef %120) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %retval.2.i.i.i)
  %cmp.not.i.i = icmp eq i32 %retval.2.i.i.i, 1
  br i1 %cmp.not.i.i, label %do.body9.i, label %dm_blk_do_report_zones.exit.i.i.dm_update_zone_wp_offset.exit.thread.i_crit_edge

dm_blk_do_report_zones.exit.i.i.dm_update_zone_wp_offset.exit.thread.i_crit_edge: ; preds = %dm_blk_do_report_zones.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dm_update_zone_wp_offset.exit.thread.i

dm_update_zone_wp_offset.exit.thread.i:           ; preds = %dm_blk_do_report_zones.exit.i.i.dm_update_zone_wp_offset.exit.thread.i_crit_edge, %blk_queue_zone_sectors.exit.i.i.dm_update_zone_wp_offset.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %srcu_idx.i.i) #10
  br label %dm_zone_map_bio_begin.exit.thread

do.body9.i:                                       ; preds = %dm_blk_do_report_zones.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %srcu_idx.i.i) #10
  %121 = ptrtoint ptr %zwp_offset.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %zwp_offset.i, align 4
  %123 = ptrtoint ptr %zwp_offset2.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %zwp_offset2.i, align 4
  %arrayidx11.i = getelementptr i32, ptr %124, i32 %retval.0.i.i.i
  %125 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store volatile i32 %122, ptr %arrayidx11.i, align 4
  br label %if.end16.i

if.end16.i:                                       ; preds = %do.body9.i, %bio_zone_no.exit.i.if.end16.i_crit_edge
  %126 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %bi_opf.i, align 8
  %trunc.i88 = trunc i32 %127 to i8
  %128 = zext i8 %trunc.i88 to i64
  call void @__sanitizer_cov_trace_switch(i64 %128, ptr @__sancov_gen_cov_switch_values.14)
  switch i8 %trunc.i88, label %sw.default.i [
    i8 15, label %if.end16.i.dm_zone_map_bio_begin.exit.thread138_crit_edge
    i8 12, label %if.end16.i.dm_zone_map_bio_begin.exit.thread138_crit_edge151
    i8 9, label %if.end16.i.sw.bb17.i_crit_edge
    i8 7, label %if.end16.i.sw.bb17.i_crit_edge152
    i8 1, label %if.end16.i.sw.bb17.i_crit_edge153
    i8 13, label %sw.bb23.i
  ]

if.end16.i.sw.bb17.i_crit_edge153:                ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb17.i

if.end16.i.sw.bb17.i_crit_edge152:                ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb17.i

if.end16.i.sw.bb17.i_crit_edge:                   ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb17.i

if.end16.i.dm_zone_map_bio_begin.exit.thread138_crit_edge151: ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dm_zone_map_bio_begin.exit.thread138

if.end16.i.dm_zone_map_bio_begin.exit.thread138_crit_edge: ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dm_zone_map_bio_begin.exit.thread138

sw.bb17.i:                                        ; preds = %if.end16.i.sw.bb17.i_crit_edge, %if.end16.i.sw.bb17.i_crit_edge152, %if.end16.i.sw.bb17.i_crit_edge153
  %bi_iter.i89 = getelementptr inbounds %struct.dm_target_io, ptr %tio, i32 0, i32 6, i32 8
  %129 = ptrtoint ptr %bi_iter.i89 to i32
  call void @__asan_load8_noabort(i32 %129)
  %130 = load i64, ptr %bi_iter.i89, align 8
  %sub.i = add nsw i64 %conv.i.i, -1
  %and18.i = and i64 %130, %sub.i
  %131 = ptrtoint ptr %zwp_offset.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %zwp_offset.i, align 4
  %conv.i = zext i32 %132 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %and18.i, i64 %conv.i)
  %cmp19.not.i = icmp eq i64 %and18.i, %conv.i
  br i1 %cmp19.not.i, label %sw.bb17.i.dm_zone_map_bio_begin.exit_crit_edge, label %sw.bb17.i.dm_zone_map_bio_begin.exit.thread_crit_edge

sw.bb17.i.dm_zone_map_bio_begin.exit.thread_crit_edge: ; preds = %sw.bb17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dm_zone_map_bio_begin.exit.thread

sw.bb17.i.dm_zone_map_bio_begin.exit_crit_edge:   ; preds = %sw.bb17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dm_zone_map_bio_begin.exit

sw.bb23.i:                                        ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  %and25.i = and i32 %127, -16640
  %133 = or i32 %and25.i, 16385
  %bi_opf28.i = getelementptr inbounds %struct.dm_target_io, ptr %tio, i32 0, i32 6, i32 2
  %134 = ptrtoint ptr %bi_opf28.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %133, ptr %bi_opf28.i, align 8
  %135 = ptrtoint ptr %bi_iter.i.i to i32
  call void @__asan_load8_noabort(i32 %135)
  %136 = load i64, ptr %bi_iter.i.i, align 8
  %137 = ptrtoint ptr %zwp_offset.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %zwp_offset.i, align 4
  %conv31.i = zext i32 %138 to i64
  %add.i = add i64 %136, %conv31.i
  %bi_iter32.i = getelementptr inbounds %struct.dm_target_io, ptr %tio, i32 0, i32 6, i32 8
  %139 = ptrtoint ptr %bi_iter32.i to i32
  call void @__asan_store8_noabort(i32 %139)
  store i64 %add.i, ptr %bi_iter32.i, align 8
  br label %dm_zone_map_bio_begin.exit

sw.default.i:                                     ; preds = %if.end16.i
  %call34.i = call i32 @___ratelimit(ptr noundef nonnull @dm_zone_map_bio_begin._rs, ptr noundef nonnull @__func__.dm_zone_map_bio_begin) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %tobool35.not.i = icmp eq i32 %call34.i, 0
  br i1 %tobool35.not.i, label %sw.default.i.dm_zone_map_bio_begin.exit.thread_crit_edge, label %do.end39.i

sw.default.i.dm_zone_map_bio_begin.exit.thread_crit_edge: ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dm_zone_map_bio_begin.exit.thread

do.end39.i:                                       ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #12
  %call41.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #13
  br label %dm_zone_map_bio_begin.exit.thread

dm_zone_map_bio_begin.exit.thread:                ; preds = %do.end39.i, %sw.default.i.dm_zone_map_bio_begin.exit.thread_crit_edge, %sw.bb17.i.dm_zone_map_bio_begin.exit.thread_crit_edge, %dm_update_zone_wp_offset.exit.thread.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %zwp_offset.i) #10
  br label %if.then9

dm_zone_map_bio_begin.exit.thread138:             ; preds = %if.end16.i.dm_zone_map_bio_begin.exit.thread138_crit_edge, %if.end16.i.dm_zone_map_bio_begin.exit.thread138_crit_edge151
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %zwp_offset.i) #10
  br label %if.end10

dm_zone_map_bio_begin.exit:                       ; preds = %sw.bb23.i, %sw.bb17.i.dm_zone_map_bio_begin.exit_crit_edge
  %140 = ptrtoint ptr %zwp_offset.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %zwp_offset.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i.i, i32 %141)
  %cmp44.not.i = icmp ugt i32 %cond.i.i, %141
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %zwp_offset.i) #10
  br i1 %cmp44.not.i, label %dm_zone_map_bio_begin.exit.if.end10_crit_edge, label %dm_zone_map_bio_begin.exit.if.then9_crit_edge

dm_zone_map_bio_begin.exit.if.then9_crit_edge:    ; preds = %dm_zone_map_bio_begin.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then9

dm_zone_map_bio_begin.exit.if.end10_crit_edge:    ; preds = %dm_zone_map_bio_begin.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then9:                                         ; preds = %dm_zone_map_bio_begin.exit.if.then9_crit_edge, %dm_zone_map_bio_begin.exit.thread
  %142 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %bi_flags.i.i, align 4
  %144 = and i16 %143, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %144)
  %cmp.i.not.i92 = icmp eq i16 %144, 0
  br i1 %cmp.i.not.i92, label %if.then9.cleanup_crit_edge, label %if.end.i95

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i95:                                       ; preds = %if.then9
  %seq_zones_wlock.i93 = getelementptr inbounds %struct.request_queue, ptr %7, i32 0, i32 41
  %145 = ptrtoint ptr %seq_zones_wlock.i93 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %seq_zones_wlock.i93, align 4
  %div3.i.i = lshr i32 %retval.0.i.i, 5
  %arrayidx.i.i = getelementptr i32, ptr %146, i32 %div3.i.i
  %147 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %retval.0.i.i, 31
  %149 = shl nuw i32 1, %and.i.i
  %150 = and i32 %148, %149
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %150)
  %tobool.not.i94 = icmp eq i32 %150, 0
  br i1 %tobool.not.i94, label %land.rhs.i96, label %if.end.i95.if.end32.i_crit_edge

if.end.i95.if.end32.i_crit_edge:                  ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32.i

land.rhs.i96:                                     ; preds = %if.end.i95
  %.b55.i = load i1, ptr @dm_zone_unlock.__already_done, align 1
  br i1 %.b55.i, label %land.rhs.i96.if.end32.i_crit_edge, label %if.then10.i, !prof !53

land.rhs.i96.if.end32.i_crit_edge:                ; preds = %land.rhs.i96
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32.i

if.then10.i:                                      ; preds = %land.rhs.i96
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @dm_zone_unlock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 486, i32 noundef 9, ptr noundef null) #10
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then10.i, %land.rhs.i96.if.end32.i_crit_edge, %if.end.i95.if.end32.i_crit_edge
  %151 = ptrtoint ptr %seq_zones_wlock.i93 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %seq_zones_wlock.i93, align 4
  %div.i.i = sdiv i32 %retval.0.i.i, 32
  %add.ptr.i.i = getelementptr i32, ptr %152, i32 %div.i.i
  %call.i.i.i97 = call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr.i.i, i32 noundef 4) #10
  %add.ptr.i.i.i = getelementptr i32, ptr %152, i32 %div3.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !55
  call void @llvm.prefetch.p0(ptr %add.ptr.i.i.i, i32 1, i32 3, i32 1) #10
  %153 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %add.ptr.i.i.i, ptr %add.ptr.i.i.i, i32 %149, ptr elementtype(i32) %add.ptr.i.i.i) #10, !srcloc !56
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !57
  %154 = ptrtoint ptr %seq_zones_wlock.i93 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %seq_zones_wlock.i93, align 4
  call void @wake_up_bit(ptr noundef %155, i32 noundef %retval.0.i.i) #10
  %156 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %bi_flags.i.i, align 4
  %158 = and i16 %157, -4097
  store i16 %158, ptr %bi_flags.i.i, align 4
  br label %cleanup

if.end10:                                         ; preds = %dm_zone_map_bio_begin.exit.if.end10_crit_edge, %dm_zone_map_bio_begin.exit.thread138
  %io_count.i = getelementptr inbounds %struct.dm_io, ptr %1, i32 0, i32 3
  %call.i.i.i98 = call zeroext i1 @__kasan_check_write(ptr noundef %io_count.i, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %io_count.i, i32 1, i32 3, i32 1) #10
  %159 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %io_count.i, ptr %io_count.i, i32 1, ptr elementtype(i32) %io_count.i) #10, !srcloc !58
  %type11 = getelementptr inbounds %struct.dm_target, ptr %3, i32 0, i32 1
  %160 = ptrtoint ptr %type11 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %type11, align 4
  %map12 = getelementptr inbounds %struct.target_type, ptr %161, i32 0, i32 6
  %162 = ptrtoint ptr %map12 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %map12, align 4
  %call13 = call i32 %163(ptr noundef %3, ptr noundef %clone5) #10
  %164 = zext i32 %call13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %164, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %call13, label %sw.default [
    i32 0, label %sw.epilog
    i32 1, label %sw.bb15
  ]

sw.bb15:                                          ; preds = %if.end10
  %len_ptr16 = getelementptr inbounds %struct.dm_target_io, ptr %tio, i32 0, i32 4
  %165 = ptrtoint ptr %len_ptr16 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %len_ptr16, align 8
  %167 = ptrtoint ptr %166 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %166, align 4
  %call17 = call fastcc zeroext i8 @dm_zone_map_bio_end(ptr noundef %5, ptr noundef %9, i32 noundef %168)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call17)
  %cmp.not = icmp eq i8 %call17, 0
  br i1 %cmp.not, label %sw.epilog.thread142, label %if.then19

sw.epilog.thread142:                              ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #12
  call void @dm_io_dec_pending(ptr noundef %1, i8 noundef zeroext 0) #10
  br label %202

if.then19:                                        ; preds = %sw.bb15
  %169 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %169)
  %170 = load i16, ptr %bi_flags.i.i, align 4
  %171 = and i16 %170, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %171)
  %cmp.i.not.i100 = icmp eq i16 %171, 0
  br i1 %cmp.i.not.i100, label %if.then19.sw.epilog.thread_crit_edge, label %if.end.i106

if.then19.sw.epilog.thread_crit_edge:             ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.thread

if.end.i106:                                      ; preds = %if.then19
  %seq_zones_wlock.i101 = getelementptr inbounds %struct.request_queue, ptr %7, i32 0, i32 41
  %172 = ptrtoint ptr %seq_zones_wlock.i101 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %seq_zones_wlock.i101, align 4
  %div3.i.i102 = lshr i32 %retval.0.i.i, 5
  %arrayidx.i.i103 = getelementptr i32, ptr %173, i32 %div3.i.i102
  %174 = ptrtoint ptr %arrayidx.i.i103 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load volatile i32, ptr %arrayidx.i.i103, align 4
  %and.i.i104 = and i32 %retval.0.i.i, 31
  %176 = shl nuw i32 1, %and.i.i104
  %177 = and i32 %175, %176
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %177)
  %tobool.not.i105 = icmp eq i32 %177, 0
  br i1 %tobool.not.i105, label %land.rhs.i108, label %if.end.i106.if.end32.i114_crit_edge

if.end.i106.if.end32.i114_crit_edge:              ; preds = %if.end.i106
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32.i114

land.rhs.i108:                                    ; preds = %if.end.i106
  %.b55.i107 = load i1, ptr @dm_zone_unlock.__already_done, align 1
  br i1 %.b55.i107, label %land.rhs.i108.if.end32.i114_crit_edge, label %if.then10.i109, !prof !53

land.rhs.i108.if.end32.i114_crit_edge:            ; preds = %land.rhs.i108
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32.i114

if.then10.i109:                                   ; preds = %land.rhs.i108
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @dm_zone_unlock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 486, i32 noundef 9, ptr noundef null) #10
  br label %if.end32.i114

if.end32.i114:                                    ; preds = %if.then10.i109, %land.rhs.i108.if.end32.i114_crit_edge, %if.end.i106.if.end32.i114_crit_edge
  %178 = ptrtoint ptr %seq_zones_wlock.i101 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %seq_zones_wlock.i101, align 4
  %div.i.i110 = sdiv i32 %retval.0.i.i, 32
  %add.ptr.i.i111 = getelementptr i32, ptr %179, i32 %div.i.i110
  %call.i.i.i112 = call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr.i.i111, i32 noundef 4) #10
  %add.ptr.i.i.i113 = getelementptr i32, ptr %179, i32 %div3.i.i102
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !55
  call void @llvm.prefetch.p0(ptr %add.ptr.i.i.i113, i32 1, i32 3, i32 1) #10
  %180 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %add.ptr.i.i.i113, ptr %add.ptr.i.i.i113, i32 %176, ptr elementtype(i32) %add.ptr.i.i.i113) #10, !srcloc !56
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !57
  br label %sw.epilog.thread.sink.split

sw.default:                                       ; preds = %if.end10
  %181 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %181)
  %182 = load i16, ptr %bi_flags.i.i, align 4
  %183 = and i16 %182, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %183)
  %cmp.i.not.i117 = icmp eq i16 %183, 0
  br i1 %cmp.i.not.i117, label %sw.default.sw.epilog.thread_crit_edge, label %if.end.i123

sw.default.sw.epilog.thread_crit_edge:            ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.thread

if.end.i123:                                      ; preds = %sw.default
  %seq_zones_wlock.i118 = getelementptr inbounds %struct.request_queue, ptr %7, i32 0, i32 41
  %184 = ptrtoint ptr %seq_zones_wlock.i118 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %seq_zones_wlock.i118, align 4
  %div3.i.i119 = lshr i32 %retval.0.i.i, 5
  %arrayidx.i.i120 = getelementptr i32, ptr %185, i32 %div3.i.i119
  %186 = ptrtoint ptr %arrayidx.i.i120 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load volatile i32, ptr %arrayidx.i.i120, align 4
  %and.i.i121 = and i32 %retval.0.i.i, 31
  %188 = shl nuw i32 1, %and.i.i121
  %189 = and i32 %187, %188
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %189)
  %tobool.not.i122 = icmp eq i32 %189, 0
  br i1 %tobool.not.i122, label %land.rhs.i125, label %if.end.i123.if.end32.i131_crit_edge

if.end.i123.if.end32.i131_crit_edge:              ; preds = %if.end.i123
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32.i131

land.rhs.i125:                                    ; preds = %if.end.i123
  %.b55.i124 = load i1, ptr @dm_zone_unlock.__already_done, align 1
  br i1 %.b55.i124, label %land.rhs.i125.if.end32.i131_crit_edge, label %if.then10.i126, !prof !53

land.rhs.i125.if.end32.i131_crit_edge:            ; preds = %land.rhs.i125
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32.i131

if.then10.i126:                                   ; preds = %land.rhs.i125
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @dm_zone_unlock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 486, i32 noundef 9, ptr noundef null) #10
  br label %if.end32.i131

if.end32.i131:                                    ; preds = %if.then10.i126, %land.rhs.i125.if.end32.i131_crit_edge, %if.end.i123.if.end32.i131_crit_edge
  %190 = ptrtoint ptr %seq_zones_wlock.i118 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %seq_zones_wlock.i118, align 4
  %div.i.i127 = sdiv i32 %retval.0.i.i, 32
  %add.ptr.i.i128 = getelementptr i32, ptr %191, i32 %div.i.i127
  %call.i.i.i129 = call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr.i.i128, i32 noundef 4) #10
  %add.ptr.i.i.i130 = getelementptr i32, ptr %191, i32 %div3.i.i119
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !55
  call void @llvm.prefetch.p0(ptr %add.ptr.i.i.i130, i32 1, i32 3, i32 1) #10
  %192 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %add.ptr.i.i.i130, ptr %add.ptr.i.i.i130, i32 %188, ptr elementtype(i32) %add.ptr.i.i.i130) #10, !srcloc !56
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !57
  br label %sw.epilog.thread.sink.split

sw.epilog.thread.sink.split:                      ; preds = %if.end32.i131, %if.end32.i114
  %seq_zones_wlock.i101.sink = phi ptr [ %seq_zones_wlock.i101, %if.end32.i114 ], [ %seq_zones_wlock.i118, %if.end32.i131 ]
  %sts.0.ph.ph = phi i8 [ %call17, %if.end32.i114 ], [ 10, %if.end32.i131 ]
  %193 = ptrtoint ptr %seq_zones_wlock.i101.sink to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %seq_zones_wlock.i101.sink, align 4
  call void @wake_up_bit(ptr noundef %194, i32 noundef %retval.0.i.i) #10
  %195 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %195)
  %196 = load i16, ptr %bi_flags.i.i, align 4
  %197 = and i16 %196, -4097
  store i16 %197, ptr %bi_flags.i.i, align 4
  br label %sw.epilog.thread

sw.epilog.thread:                                 ; preds = %sw.epilog.thread.sink.split, %sw.default.sw.epilog.thread_crit_edge, %if.then19.sw.epilog.thread_crit_edge
  %sts.0.ph = phi i8 [ 10, %sw.default.sw.epilog.thread_crit_edge ], [ %call17, %if.then19.sw.epilog.thread_crit_edge ], [ %sts.0.ph.ph, %sw.epilog.thread.sink.split ]
  call void @dm_io_dec_pending(ptr noundef %1, i8 noundef zeroext %sts.0.ph) #10
  br label %cleanup

sw.epilog:                                        ; preds = %if.end10
  %len_ptr = getelementptr inbounds %struct.dm_target_io, ptr %tio, i32 0, i32 4
  %198 = ptrtoint ptr %len_ptr to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %len_ptr, align 8
  %200 = ptrtoint ptr %199 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %199, align 4
  %call14 = call fastcc zeroext i8 @dm_zone_map_bio_end(ptr noundef %5, ptr noundef %9, i32 noundef %201)
  call void @dm_io_dec_pending(ptr noundef %1, i8 noundef zeroext %call14) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call14)
  %cmp23.not = icmp eq i8 %call14, 0
  br i1 %cmp23.not, label %sw.epilog._crit_edge, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.epilog._crit_edge:                             ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %202

202:                                              ; preds = %sw.epilog._crit_edge, %sw.epilog.thread142
  br label %cleanup

cleanup:                                          ; preds = %202, %sw.epilog.cleanup_crit_edge, %sw.epilog.thread, %if.end32.i, %if.then9.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call6, %if.then ], [ 4, %if.then9.cleanup_crit_edge ], [ 4, %if.end32.i ], [ %call13, %202 ], [ 4, %sw.epilog.cleanup_crit_edge ], [ 4, %sw.epilog.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @dm_zone_map_bio_end(ptr nocapture noundef readonly %md, ptr nocapture noundef readonly %orig_bio, i32 noundef %nr_sectors) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_bdev.i = getelementptr inbounds %struct.bio, ptr %orig_bio, i32 0, i32 1
  %0 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_bdev.i, align 4
  %bd_queue.i.i = getelementptr inbounds %struct.block_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %bd_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bd_queue.i.i, align 4
  %zoned.i.i.i.i = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 37, i32 27
  %4 = ptrtoint ptr %zoned.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %zoned.i.i.i.i, align 4
  %call.off.i.i.i = add i32 %5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.off.i.i.i)
  %switch.i.i.i = icmp ult i32 %call.off.i.i.i, 2
  br i1 %switch.i.i.i, label %cond.end10.i.i, label %entry.bio_zone_no.exit_crit_edge

entry.bio_zone_no.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %bio_zone_no.exit

cond.end10.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %bi_iter.i = getelementptr inbounds %struct.bio, ptr %orig_bio, i32 0, i32 8
  %6 = ptrtoint ptr %bi_iter.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %bi_iter.i, align 8
  %chunk_sectors.i.i = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 37, i32 5
  %8 = ptrtoint ptr %chunk_sectors.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %chunk_sectors.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i.i.i.i = icmp eq i32 %9, 0
  %10 = tail call i32 @llvm.ctlz.i32(i32 %9, i1 true) #10, !range !54
  %sub.i.op.i.i.i = xor i32 %10, 31
  %sub.i.i.i = select i1 %tobool.not.i.i.i.i, i32 -1, i32 %sub.i.op.i.i.i
  %sh_prom.i.i = zext i32 %sub.i.i.i to i64
  %shr.i.i = lshr i64 %7, %sh_prom.i.i
  %conv12.i.i = trunc i64 %shr.i.i to i32
  br label %bio_zone_no.exit

bio_zone_no.exit:                                 ; preds = %cond.end10.i.i, %entry.bio_zone_no.exit_crit_edge
  %retval.0.i.i = phi i32 [ %conv12.i.i, %cond.end10.i.i ], [ 0, %entry.bio_zone_no.exit_crit_edge ]
  %zwp_offset1 = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 40
  %11 = ptrtoint ptr %zwp_offset1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %zwp_offset1, align 4
  %arrayidx = getelementptr i32, ptr %12, i32 %retval.0.i.i
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %cmp = icmp eq i32 %14, -1
  br i1 %cmp, label %bio_zone_no.exit.cleanup_crit_edge, label %if.end

bio_zone_no.exit.cleanup_crit_edge:               ; preds = %bio_zone_no.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %bio_zone_no.exit
  %bi_opf = getelementptr inbounds %struct.bio, ptr %orig_bio, i32 0, i32 2
  %15 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bi_opf, align 8
  %trunc = trunc i32 %16 to i8
  %17 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.16)
  switch i8 %trunc, label %sw.default [
    i8 15, label %do.body6
    i8 12, label %do.body18
    i8 9, label %if.end.do.body31_crit_edge
    i8 7, label %if.end.do.body31_crit_edge88
    i8 1, label %if.end.do.body31_crit_edge89
    i8 13, label %sw.bb38
  ]

if.end.do.body31_crit_edge89:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body31

if.end.do.body31_crit_edge88:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body31

if.end.do.body31_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body31

do.body6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile i32 0, ptr %arrayidx, align 4
  br label %cleanup

do.body18:                                        ; preds = %if.end
  %queue = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 8
  %19 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %queue, align 4
  %zoned.i.i.i = getelementptr inbounds %struct.request_queue, ptr %20, i32 0, i32 37, i32 27
  %21 = ptrtoint ptr %zoned.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %zoned.i.i.i, align 4
  %call.off.i.i = add i32 %22, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.off.i.i)
  %switch.i.i = icmp ult i32 %call.off.i.i, 2
  br i1 %switch.i.i, label %cond.true.i, label %do.body18.blk_queue_zone_sectors.exit_crit_edge

do.body18.blk_queue_zone_sectors.exit_crit_edge:  ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #12
  br label %blk_queue_zone_sectors.exit

cond.true.i:                                      ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #12
  %chunk_sectors.i = getelementptr inbounds %struct.request_queue, ptr %20, i32 0, i32 37, i32 5
  %23 = ptrtoint ptr %chunk_sectors.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %chunk_sectors.i, align 4
  br label %blk_queue_zone_sectors.exit

blk_queue_zone_sectors.exit:                      ; preds = %cond.true.i, %do.body18.blk_queue_zone_sectors.exit_crit_edge
  %cond.i = phi i32 [ %24, %cond.true.i ], [ 0, %do.body18.blk_queue_zone_sectors.exit_crit_edge ]
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile i32 %cond.i, ptr %arrayidx, align 4
  br label %cleanup

do.body31:                                        ; preds = %if.end.do.body31_crit_edge, %if.end.do.body31_crit_edge88, %if.end.do.body31_crit_edge89
  %add = add i32 %14, %nr_sectors
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile i32 %add, ptr %arrayidx, align 4
  br label %cleanup

sw.bb38:                                          ; preds = %if.end
  %bi_size = getelementptr inbounds %struct.bio, ptr %orig_bio, i32 0, i32 8, i32 1
  %27 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %bi_size, align 8
  %shr = lshr i32 %28, 9
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %nr_sectors)
  %cmp39.not = icmp eq i32 %shr, %nr_sectors
  br i1 %cmp39.not, label %do.body55, label %if.then41

if.then41:                                        ; preds = %sw.bb38
  %call42 = tail call i32 @___ratelimit(ptr noundef nonnull @dm_zone_map_bio_end._rs, ptr noundef nonnull @__func__.dm_zone_map_bio_end) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool.not = icmp eq i32 %call42, 0
  br i1 %tobool.not, label %if.then41.cleanup_crit_edge, label %do.end46

if.then41.cleanup_crit_edge:                      ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end46:                                         ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #12
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #13
  br label %cleanup

do.body55:                                        ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #12
  %add56 = add i32 %14, %nr_sectors
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile i32 %add56, ptr %arrayidx, align 4
  br label %cleanup

sw.default:                                       ; preds = %if.end
  %call63 = tail call i32 @___ratelimit(ptr noundef nonnull @dm_zone_map_bio_end._rs.9, ptr noundef nonnull @__func__.dm_zone_map_bio_end) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %sw.default.cleanup_crit_edge, label %do.end68

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end68:                                         ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #12
  %call70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end68, %sw.default.cleanup_crit_edge, %do.body55, %do.end46, %if.then41.cleanup_crit_edge, %do.body31, %blk_queue_zone_sectors.exit, %do.body6, %bio_zone_no.exit.cleanup_crit_edge
  %retval.0 = phi i8 [ 0, %do.body55 ], [ 0, %do.body31 ], [ 0, %blk_queue_zone_sectors.exit ], [ 0, %do.body6 ], [ 10, %bio_zone_no.exit.cleanup_crit_edge ], [ 10, %do.end46 ], [ 10, %if.then41.cleanup_crit_edge ], [ 10, %do.end68 ], [ 10, %sw.default.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_io_dec_pending(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dm_zone_endio(ptr nocapture noundef readonly %io, ptr nocapture noundef %clone) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %md1 = getelementptr inbounds %struct.dm_io, ptr %io, i32 0, i32 1
  %0 = ptrtoint ptr %md1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %md1, align 4
  %queue = getelementptr inbounds %struct.mapped_device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %queue, align 4
  %orig_bio2 = getelementptr inbounds %struct.dm_io, ptr %io, i32 0, i32 4
  %4 = ptrtoint ptr %orig_bio2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %orig_bio2, align 8
  %zoned.i.i.i = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 37, i32 27
  %6 = ptrtoint ptr %zoned.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %zoned.i.i.i, align 4
  %call.off.i.i = add i32 %7, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.off.i.i)
  %switch.i.i = icmp ult i32 %call.off.i.i, 2
  br i1 %switch.i.i, label %dm_emulate_zone_append.exit, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

dm_emulate_zone_append.exit:                      ; preds = %entry
  %flags.i = getelementptr inbounds %struct.mapped_device, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags.i, align 4
  %10 = and i32 %9, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.i.not = icmp eq i32 %10, 0
  br i1 %tobool.i.not, label %dm_emulate_zone_append.exit.if.then_crit_edge, label %if.end11

dm_emulate_zone_append.exit.if.then_crit_edge:    ; preds = %dm_emulate_zone_append.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %dm_emulate_zone_append.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %bi_status = getelementptr inbounds %struct.bio, ptr %clone, i32 0, i32 6
  %11 = ptrtoint ptr %bi_status to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bi_status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp = icmp eq i8 %12, 0
  br i1 %cmp, label %land.lhs.true, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true:                                    ; preds = %if.then
  %bi_opf = getelementptr inbounds %struct.bio, ptr %clone, i32 0, i32 2
  %13 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bi_opf, align 8
  %and = and i32 %14, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %and)
  %cmp4 = icmp eq i32 %and, 13
  br i1 %cmp4, label %if.then6, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then6:                                         ; preds = %land.lhs.true
  br i1 %switch.i.i, label %cond.true.i, label %if.then6.blk_queue_zone_sectors.exit_crit_edge

if.then6.blk_queue_zone_sectors.exit_crit_edge:   ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %blk_queue_zone_sectors.exit

cond.true.i:                                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  %chunk_sectors.i = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 37, i32 5
  %15 = ptrtoint ptr %chunk_sectors.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %chunk_sectors.i, align 4
  br label %blk_queue_zone_sectors.exit

blk_queue_zone_sectors.exit:                      ; preds = %cond.true.i, %if.then6.blk_queue_zone_sectors.exit_crit_edge
  %cond.i = phi i32 [ %16, %cond.true.i ], [ 0, %if.then6.blk_queue_zone_sectors.exit_crit_edge ]
  %conv.i = zext i32 %cond.i to i64
  %sub = add nsw i64 %conv.i, -1
  %bi_iter = getelementptr inbounds %struct.bio, ptr %clone, i32 0, i32 8
  %17 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %bi_iter, align 8
  %and8 = and i64 %sub, %18
  %bi_iter9 = getelementptr inbounds %struct.bio, ptr %5, i32 0, i32 8
  %19 = ptrtoint ptr %bi_iter9 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %bi_iter9, align 8
  %add = add i64 %and8, %20
  store i64 %add, ptr %bi_iter9, align 8
  br label %cleanup

if.end11:                                         ; preds = %dm_emulate_zone_append.exit
  %bi_flags.i = getelementptr inbounds %struct.bio, ptr %clone, i32 0, i32 3
  %21 = ptrtoint ptr %bi_flags.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %bi_flags.i, align 4
  %23 = and i16 %22, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %cmp.i.not = icmp eq i16 %23, 0
  br i1 %cmp.i.not, label %if.end11.cleanup_crit_edge, label %if.end14

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end14:                                         ; preds = %if.end11
  %bi_bdev.i = getelementptr inbounds %struct.bio, ptr %5, i32 0, i32 1
  %24 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bi_bdev.i, align 4
  %bd_queue.i.i = getelementptr inbounds %struct.block_device, ptr %25, i32 0, i32 18
  %26 = ptrtoint ptr %bd_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bd_queue.i.i, align 4
  %bi_iter.i = getelementptr inbounds %struct.bio, ptr %5, i32 0, i32 8
  %28 = ptrtoint ptr %bi_iter.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %bi_iter.i, align 8
  %zoned.i.i.i.i = getelementptr inbounds %struct.request_queue, ptr %27, i32 0, i32 37, i32 27
  %30 = ptrtoint ptr %zoned.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %zoned.i.i.i.i, align 4
  %call.off.i.i.i = add i32 %31, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.off.i.i.i)
  %switch.i.i.i = icmp ult i32 %call.off.i.i.i, 2
  br i1 %switch.i.i.i, label %cond.end10.i.i, label %if.end14.bio_zone_no.exit_crit_edge

if.end14.bio_zone_no.exit_crit_edge:              ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %bio_zone_no.exit

cond.end10.i.i:                                   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %chunk_sectors.i.i = getelementptr inbounds %struct.request_queue, ptr %27, i32 0, i32 37, i32 5
  %32 = ptrtoint ptr %chunk_sectors.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %chunk_sectors.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i.i.i.i = icmp eq i32 %33, 0
  %34 = tail call i32 @llvm.ctlz.i32(i32 %33, i1 true) #10, !range !54
  %sub.i.op.i.i.i = xor i32 %34, 31
  %sub.i.i.i = select i1 %tobool.not.i.i.i.i, i32 -1, i32 %sub.i.op.i.i.i
  %sh_prom.i.i = zext i32 %sub.i.i.i to i64
  %shr.i.i = lshr i64 %29, %sh_prom.i.i
  %conv12.i.i = trunc i64 %shr.i.i to i32
  br label %bio_zone_no.exit

bio_zone_no.exit:                                 ; preds = %cond.end10.i.i, %if.end14.bio_zone_no.exit_crit_edge
  %retval.0.i.i = phi i32 [ %conv12.i.i, %cond.end10.i.i ], [ 0, %if.end14.bio_zone_no.exit_crit_edge ]
  %bi_status16 = getelementptr inbounds %struct.bio, ptr %clone, i32 0, i32 6
  %35 = ptrtoint ptr %bi_status16 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %bi_status16, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %cmp18.not = icmp eq i8 %36, 0
  br i1 %cmp18.not, label %if.else, label %do.body22

do.body22:                                        ; preds = %bio_zone_no.exit
  call void @__sanitizer_cov_trace_pc() #12
  %zwp_offset23 = getelementptr inbounds %struct.mapped_device, ptr %1, i32 0, i32 40
  %37 = ptrtoint ptr %zwp_offset23 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %zwp_offset23, align 4
  %arrayidx = getelementptr i32, ptr %38, i32 %retval.0.i.i
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile i32 -1, ptr %arrayidx, align 4
  br label %if.end106

if.else:                                          ; preds = %bio_zone_no.exit
  %bi_opf28 = getelementptr inbounds %struct.bio, ptr %5, i32 0, i32 2
  %40 = ptrtoint ptr %bi_opf28 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %bi_opf28, align 8
  %and29 = and i32 %41, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %and29)
  %cmp30 = icmp eq i32 %and29, 13
  br i1 %cmp30, label %do.end35, label %if.else.if.end106_crit_edge

if.else.if.end106_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end106

do.end35:                                         ; preds = %if.else
  %zwp_offset36 = getelementptr inbounds %struct.mapped_device, ptr %1, i32 0, i32 40
  %42 = ptrtoint ptr %zwp_offset36 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %zwp_offset36, align 4
  %arrayidx37 = getelementptr i32, ptr %43, i32 %retval.0.i.i
  %44 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %arrayidx37, align 4
  %bi_size = getelementptr inbounds %struct.bio, ptr %5, i32 0, i32 8, i32 1
  %46 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %bi_size, align 8
  %shr = lshr i32 %47, 9
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %shr)
  %cmp39 = icmp ult i32 %45, %shr
  br i1 %cmp39, label %land.rhs, label %if.else95

land.rhs:                                         ; preds = %do.end35
  %.b133 = load i1, ptr @dm_zone_endio.__already_done, align 1
  br i1 %.b133, label %land.rhs.do.body88_crit_edge, label %if.then48, !prof !53

land.rhs.do.body88_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body88

if.then48:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @dm_zone_endio.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 651, i32 noundef 9, ptr noundef null) #10
  br label %do.body88

do.body88:                                        ; preds = %if.then48, %land.rhs.do.body88_crit_edge
  %48 = ptrtoint ptr %zwp_offset36 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %zwp_offset36, align 4
  %arrayidx90 = getelementptr i32, ptr %49, i32 %retval.0.i.i
  %50 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile i32 -1, ptr %arrayidx90, align 4
  br label %if.end106

if.else95:                                        ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #12
  %sub99 = sub i32 %45, %shr
  %conv100 = zext i32 %sub99 to i64
  %add103 = add i64 %29, %conv100
  %51 = ptrtoint ptr %bi_iter.i to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %add103, ptr %bi_iter.i, align 8
  br label %if.end106

if.end106:                                        ; preds = %if.else95, %do.body88, %if.else.if.end106_crit_edge, %do.body22
  %52 = ptrtoint ptr %bi_flags.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %bi_flags.i, align 4
  %54 = and i16 %53, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %54)
  %cmp.i.not.i = icmp eq i16 %54, 0
  br i1 %cmp.i.not.i, label %if.end106.cleanup_crit_edge, label %if.end.i

if.end106.cleanup_crit_edge:                      ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.end106
  %seq_zones_wlock.i = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 41
  %55 = ptrtoint ptr %seq_zones_wlock.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %seq_zones_wlock.i, align 4
  %div3.i.i = lshr i32 %retval.0.i.i, 5
  %arrayidx.i.i = getelementptr i32, ptr %56, i32 %div3.i.i
  %57 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %retval.0.i.i, 31
  %59 = shl nuw i32 1, %and.i.i
  %60 = and i32 %58, %59
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool.not.i = icmp eq i32 %60, 0
  br i1 %tobool.not.i, label %land.rhs.i, label %if.end.i.if.end32.i_crit_edge

if.end.i.if.end32.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32.i

land.rhs.i:                                       ; preds = %if.end.i
  %.b55.i = load i1, ptr @dm_zone_unlock.__already_done, align 1
  br i1 %.b55.i, label %land.rhs.i.if.end32.i_crit_edge, label %if.then10.i, !prof !53

land.rhs.i.if.end32.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32.i

if.then10.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @dm_zone_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 486, i32 noundef 9, ptr noundef null) #10
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then10.i, %land.rhs.i.if.end32.i_crit_edge, %if.end.i.if.end32.i_crit_edge
  %61 = ptrtoint ptr %seq_zones_wlock.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %seq_zones_wlock.i, align 4
  %div.i.i = sdiv i32 %retval.0.i.i, 32
  %add.ptr.i.i = getelementptr i32, ptr %62, i32 %div.i.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr.i.i, i32 noundef 4) #10
  %add.ptr.i.i.i = getelementptr i32, ptr %62, i32 %div3.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !55
  tail call void @llvm.prefetch.p0(ptr %add.ptr.i.i.i, i32 1, i32 3, i32 1) #10
  %63 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %add.ptr.i.i.i, ptr %add.ptr.i.i.i, i32 %59, ptr elementtype(i32) %add.ptr.i.i.i) #10, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !57
  %64 = ptrtoint ptr %seq_zones_wlock.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %seq_zones_wlock.i, align 4
  tail call void @wake_up_bit(ptr noundef %65, i32 noundef %retval.0.i.i) #10
  %66 = ptrtoint ptr %bi_flags.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %bi_flags.i, align 4
  %68 = and i16 %67, -4097
  store i16 %68, ptr %bi_flags.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end32.i, %if.end106.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %blk_queue_zone_sectors.exit, %land.lhs.true.cleanup_crit_edge, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_table_find_target(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_table_get_num_targets(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_table_get_target(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @device_not_zone_append_capable(ptr nocapture noundef readnone %ti, ptr nocapture noundef readonly %dev, i64 noundef %start, i64 noundef %len, ptr nocapture noundef readnone %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %bd_queue.i = getelementptr inbounds %struct.block_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %bd_queue.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bd_queue.i, align 4
  %zoned.i.i = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 37, i32 27
  %4 = ptrtoint ptr %zoned.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %zoned.i.i, align 4
  %6 = add i32 %5, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %6)
  %switch.i = icmp ult i32 %6, -2
  %lnot.ext = zext i1 %switch.i to i32
  ret i32 %lnot.ext
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dm_zone_revalidate_cb(ptr nocapture noundef readonly %zone, i32 noundef %idx, ptr nocapture noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %queue = getelementptr inbounds %struct.mapped_device, ptr %data, i32 0, i32 8
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 4
  %type = getelementptr inbounds %struct.blk_zone, ptr %zone, i32 0, i32 3
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %type, align 8
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.17)
  switch i8 %3, label %do.end [
    i8 1, label %sw.bb
    i8 2, label %entry.sw.bb7_crit_edge
    i8 3, label %entry.sw.bb7_crit_edge103
  ]

entry.sw.bb7_crit_edge103:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb7

entry.sw.bb7_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb7

sw.bb:                                            ; preds = %entry
  %conv_zones_bitmap = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 40
  %5 = ptrtoint ptr %conv_zones_bitmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %conv_zones_bitmap, align 8
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.end7.i.i, label %sw.bb.if.end5_crit_edge

sw.bb.if.end5_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.end7.i.i:                                      ; preds = %sw.bb
  %nr_zones = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 39
  %7 = ptrtoint ptr %nr_zones to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nr_zones, align 4
  %sub = add i32 %8, 31
  %9 = lshr i32 %sub, 3
  %10 = and i32 %9, 536870908
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %10, i32 noundef 3328) #14
  %11 = ptrtoint ptr %conv_zones_bitmap to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call8.i.i, ptr %conv_zones_bitmap, align 8
  %tobool3.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool3.not, label %if.end7.i.i.cleanup_crit_edge, label %if.end7.i.i.if.end5_crit_edge

if.end7.i.i.if.end5_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end7.i.i.if.end5_crit_edge, %sw.bb.if.end5_crit_edge
  %12 = ptrtoint ptr %conv_zones_bitmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %conv_zones_bitmap, align 8
  tail call void @_set_bit(i32 noundef %idx, ptr noundef %13) #10
  br label %cleanup

sw.bb7:                                           ; preds = %entry.sw.bb7_crit_edge, %entry.sw.bb7_crit_edge103
  %seq_zones_wlock = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 41
  %14 = ptrtoint ptr %seq_zones_wlock to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %seq_zones_wlock, align 4
  %tobool8.not = icmp eq ptr %15, null
  br i1 %tobool8.not, label %if.end7.i.i86, label %sw.bb7.if.end20_crit_edge

sw.bb7.if.end20_crit_edge:                        ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.end7.i.i86:                                    ; preds = %sw.bb7
  %nr_zones10 = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 39
  %16 = ptrtoint ptr %nr_zones10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nr_zones10, align 4
  %sub12 = add i32 %17, 31
  %18 = lshr i32 %sub12, 3
  %19 = and i32 %18, 536870908
  %call8.i.i85 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %19, i32 noundef 3328) #14
  %20 = ptrtoint ptr %seq_zones_wlock to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call8.i.i85, ptr %seq_zones_wlock, align 4
  %tobool17.not = icmp eq ptr %call8.i.i85, null
  br i1 %tobool17.not, label %if.end7.i.i86.cleanup_crit_edge, label %if.end7.i.i86.if.end20_crit_edge

if.end7.i.i86.if.end20_crit_edge:                 ; preds = %if.end7.i.i86
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.end7.i.i86.cleanup_crit_edge:                  ; preds = %if.end7.i.i86
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end20:                                         ; preds = %if.end7.i.i86.if.end20_crit_edge, %sw.bb7.if.end20_crit_edge
  %zwp_offset = getelementptr inbounds %struct.mapped_device, ptr %data, i32 0, i32 40
  %21 = ptrtoint ptr %zwp_offset to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %zwp_offset, align 4
  %tobool21.not = icmp eq ptr %22, null
  br i1 %tobool21.not, label %if.then22, label %if.end20.if.end30_crit_edge

if.end20.if.end30_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.then22:                                        ; preds = %if.end20
  %nr_zones23 = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 39
  %23 = ptrtoint ptr %nr_zones23 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nr_zones23, align 4
  %25 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %24, i32 4) #10
  %26 = extractvalue { i32, i1 } %25, 1
  br i1 %26, label %kvcalloc.exit.thread, label %kvcalloc.exit, !prof !59

kvcalloc.exit.thread:                             ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %zwp_offset to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %zwp_offset, align 4
  br label %cleanup

kvcalloc.exit:                                    ; preds = %if.then22
  %28 = extractvalue { i32, i1 } %25, 0
  %call.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %28, i32 noundef 3520, i32 noundef -1) #14
  %29 = ptrtoint ptr %zwp_offset to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i.i.i, ptr %zwp_offset, align 4
  %tobool27.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool27.not, label %kvcalloc.exit.cleanup_crit_edge, label %kvcalloc.exit.if.end30_crit_edge

kvcalloc.exit.if.end30_crit_edge:                 ; preds = %kvcalloc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

kvcalloc.exit.cleanup_crit_edge:                  ; preds = %kvcalloc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end30:                                         ; preds = %kvcalloc.exit.if.end30_crit_edge, %if.end20.if.end30_crit_edge
  %cond.i = getelementptr inbounds %struct.blk_zone, ptr %zone, i32 0, i32 4
  %30 = ptrtoint ptr %cond.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %cond.i, align 1
  %32 = zext i8 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.18)
  switch i8 %31, label %if.end30.dm_get_zone_wp_offset.exit_crit_edge [
    i8 2, label %if.end30.sw.bb.i_crit_edge
    i8 3, label %if.end30.sw.bb.i_crit_edge104
    i8 4, label %if.end30.sw.bb.i_crit_edge105
    i8 14, label %sw.bb2.i
  ]

if.end30.sw.bb.i_crit_edge105:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.end30.sw.bb.i_crit_edge104:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.end30.sw.bb.i_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.end30.dm_get_zone_wp_offset.exit_crit_edge:    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %dm_get_zone_wp_offset.exit

sw.bb.i:                                          ; preds = %if.end30.sw.bb.i_crit_edge, %if.end30.sw.bb.i_crit_edge104, %if.end30.sw.bb.i_crit_edge105
  %wp.i = getelementptr inbounds %struct.blk_zone, ptr %zone, i32 0, i32 2
  %33 = ptrtoint ptr %wp.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %wp.i, align 8
  %35 = ptrtoint ptr %zone to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %zone, align 8
  %sub.i = sub i64 %34, %36
  %conv1.i = trunc i64 %sub.i to i32
  br label %dm_get_zone_wp_offset.exit

sw.bb2.i:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  %len.i = getelementptr inbounds %struct.blk_zone, ptr %zone, i32 0, i32 1
  %37 = ptrtoint ptr %len.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %len.i, align 8
  %conv3.i = trunc i64 %38 to i32
  br label %dm_get_zone_wp_offset.exit

dm_get_zone_wp_offset.exit:                       ; preds = %sw.bb2.i, %sw.bb.i, %if.end30.dm_get_zone_wp_offset.exit_crit_edge
  %retval.0.i = phi i32 [ %conv3.i, %sw.bb2.i ], [ %conv1.i, %sw.bb.i ], [ 0, %if.end30.dm_get_zone_wp_offset.exit_crit_edge ]
  %39 = ptrtoint ptr %zwp_offset to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %zwp_offset, align 4
  %arrayidx = getelementptr i32, ptr %40, i32 %idx
  %41 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %retval.0.i, ptr %arrayidx, align 4
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i8 %3 to i32
  %42 = ptrtoint ptr %zone to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %zone, align 8
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %conv, i64 noundef %43) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %dm_get_zone_wp_offset.exit, %kvcalloc.exit.cleanup_crit_edge, %kvcalloc.exit.thread, %if.end7.i.i86.cleanup_crit_edge, %if.end5, %if.end7.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ -12, %if.end7.i.i86.cleanup_crit_edge ], [ -12, %kvcalloc.exit.cleanup_crit_edge ], [ 0, %dm_get_zone_wp_offset.exit ], [ 0, %if.end5 ], [ -12, %kvcalloc.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @out_of_line_wait_on_bit_lock(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bit_wait_io(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dm_update_zone_wp_offset_cb(ptr nocapture noundef readonly %zone, i32 noundef %idx, ptr nocapture noundef writeonly %data) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cond.i = getelementptr inbounds %struct.blk_zone, ptr %zone, i32 0, i32 4
  %0 = ptrtoint ptr %cond.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cond.i, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.19)
  switch i8 %1, label %entry.dm_get_zone_wp_offset.exit_crit_edge [
    i8 2, label %entry.sw.bb.i_crit_edge
    i8 3, label %entry.sw.bb.i_crit_edge1
    i8 4, label %entry.sw.bb.i_crit_edge2
    i8 14, label %sw.bb2.i
  ]

entry.sw.bb.i_crit_edge2:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

entry.sw.bb.i_crit_edge1:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

entry.sw.bb.i_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

entry.dm_get_zone_wp_offset.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %dm_get_zone_wp_offset.exit

sw.bb.i:                                          ; preds = %entry.sw.bb.i_crit_edge, %entry.sw.bb.i_crit_edge1, %entry.sw.bb.i_crit_edge2
  %wp.i = getelementptr inbounds %struct.blk_zone, ptr %zone, i32 0, i32 2
  %3 = ptrtoint ptr %wp.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %wp.i, align 8
  %5 = ptrtoint ptr %zone to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %zone, align 8
  %sub.i = sub i64 %4, %6
  %conv1.i = trunc i64 %sub.i to i32
  br label %dm_get_zone_wp_offset.exit

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %len.i = getelementptr inbounds %struct.blk_zone, ptr %zone, i32 0, i32 1
  %7 = ptrtoint ptr %len.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %len.i, align 8
  %conv3.i = trunc i64 %8 to i32
  br label %dm_get_zone_wp_offset.exit

dm_get_zone_wp_offset.exit:                       ; preds = %sw.bb2.i, %sw.bb.i, %entry.dm_get_zone_wp_offset.exit_crit_edge
  %retval.0.i = phi i32 [ %conv3.i, %sw.bb2.i ], [ %conv1.i, %sw.bb.i ], [ 0, %entry.dm_get_zone_wp_offset.exit_crit_edge ]
  %9 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %retval.0.i, ptr %data, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !12, !13, !14, !16, !17, !18, !19, !21, !23, !25, !26, !27, !28, !29, !30, !32, !34, !35, !36, !37, !38, !40, !41}
!llvm.named.register.sp = !{!42}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !{ptr @__ksymtab_dm_report_zones, !1, !"__ksymtab_dm_report_zones", i1 false, i1 false}
!1 = !{!"../drivers/md/dm-zone.c", i32 122, i32 1}
!2 = distinct !{null, !3, !"__already_done", i1 false, i1 false}
!3 = !{!"../drivers/md/dm-zone.c", i32 304, i32 2}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = distinct !{null, !6, !"__already_done", i1 false, i1 false}
!6 = !{!"../drivers/md/dm-zone.c", i32 651, i32 7}
!7 = distinct !{null, !8, !"__already_done", i1 false, i1 false}
!8 = !{!"../drivers/md/dm-zone.c", i32 36, i32 7}
!9 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/md/dm-zone.c", i32 265, i32 2}
!11 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @dm_revalidate_zones._entry, !10, !"_entry", i1 false, i1 false}
!13 = !{ptr @dm_revalidate_zones._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/md/dm-zone.c", i32 216, i32 3}
!16 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @dm_zone_revalidate_cb._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @dm_zone_revalidate_cb._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = distinct !{null, !20, !"__already_done", i1 false, i1 false}
!20 = !{!"../drivers/md/dm-zone.c", i32 473, i32 6}
!21 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../include/linux/wait_bit.h", i32 205, i32 2}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/md/dm-zone.c", i32 411, i32 3}
!25 = !{ptr @dm_zone_map_bio_begin._rs, !24, !"_rs", i1 false, i1 false}
!26 = !{ptr @__func__.dm_zone_map_bio_begin, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @dm_zone_map_bio_begin._entry, !24, !"_entry", i1 false, i1 false}
!29 = !{ptr @dm_zone_map_bio_begin._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!30 = distinct !{null, !31, !"__already_done", i1 false, i1 false}
!31 = !{!"../drivers/md/dm-zone.c", i32 486, i32 2}
!32 = !{ptr @dm_zone_map_bio_end._rs, !33, !"_rs", i1 false, i1 false}
!33 = !{!"../drivers/md/dm-zone.c", i32 459, i32 4}
!34 = !{ptr @__func__.dm_zone_map_bio_end, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @dm_zone_map_bio_end._entry, !33, !"_entry", i1 false, i1 false}
!37 = !{ptr @dm_zone_map_bio_end._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @dm_zone_map_bio_end._rs.9, !39, !"_rs", i1 false, i1 false}
!39 = !{!"../drivers/md/dm-zone.c", i32 465, i32 3}
!40 = !{ptr @dm_zone_map_bio_end._entry.10, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @dm_zone_map_bio_end._entry_ptr.11, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{!"sp"}
!43 = !{i32 1, !"wchar_size", i32 2}
!44 = !{i32 1, !"min_enum_size", i32 4}
!45 = !{i32 8, !"branch-target-enforcement", i32 0}
!46 = !{i32 8, !"sign-return-address", i32 0}
!47 = !{i32 8, !"sign-return-address-all", i32 0}
!48 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!49 = !{i32 7, !"uwtable", i32 1}
!50 = !{i32 7, !"frame-pointer", i32 2}
!51 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!52 = !{!"auto-init"}
!53 = !{!"branch_weights", i32 2000, i32 1}
!54 = !{i32 0, i32 33}
!55 = !{i64 2148571005}
!56 = !{i64 2148481424, i64 2148481456, i64 2148481485, i64 2148481519, i64 2148481550, i64 2148481573}
!57 = !{i64 2155726618}
!58 = !{i64 2148474179, i64 2148474205, i64 2148474234, i64 2148474268, i64 2148474299, i64 2148474322}
!59 = !{!"branch_weights", i32 1, i32 2000}
