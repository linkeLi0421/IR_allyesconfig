; ModuleID = '/llk/IR_all_yes/drivers/md/md-cluster.c_pt.bc'
source_filename = "../drivers/md/md-cluster.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.md_cluster_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.dlm_lockspace_ops = type { ptr, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.md_cluster_info = type { ptr, ptr, i32, %struct.completion, %struct.mutex, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, i64, i64, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.completion, %struct.wait_queue_head, i32, i64, i64 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mddev = type { ptr, ptr, i32, i32, %struct.list_head, i32, i32, i32, %struct.atomic_t, i32, i32, ptr, %struct.kobject, i32, i32, i32, i32, i32, i32, [17 x i8], i32, i64, i64, i32, i32, [16 x i8], i32, i32, i64, i64, i32, i64, i32, [16 x i8], i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, i64, i64, i32, i64, i64, i64, %struct.atomic64_t, i64, i64, i32, i32, i32, i32, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.atomic_t, i32, i32, %struct.atomic_t, %struct.wait_queue_head, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.spinlock, %struct.wait_queue_head, %struct.atomic_t, i32, i32, %struct.timer_list, %struct.percpu_ref, i32, ptr, ptr, %struct.anon.82, %struct.atomic_t, %struct.list_head, ptr, %struct.bio_set, %struct.bio_set, %struct.bio_set, ptr, %struct.atomic_t, i64, i64, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.atomic64_t = type { i64 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.percpu_ref = type { i32, ptr }
%struct.anon.82 = type { ptr, i64, i32, i64, i32, %struct.mutex, i32, i32, i32, i32, i32, [64 x i8] }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.cluster_msg = type { i32, i32, i64, i64, [16 x i8], i32 }
%struct.dlm_lock_resource = type { ptr, %struct.dlm_lksb, ptr, i32, %struct.wait_queue_head, i8, ptr, ptr, i32 }
%struct.dlm_lksb = type { i32, i32, i8, ptr }
%struct.resync_info = type { i64, i64 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.md_rdev = type { %struct.list_head, i64, ptr, i32, ptr, ptr, ptr, ptr, i32, i64, i64, i64, i64, i32, i32, %struct.kobject, i32, %struct.wait_queue_head, i32, i32, i32, i32, %union.anon.80, %struct.atomic_t, %struct.atomic_t, i64, %struct.atomic_t, ptr, %struct.work_struct, ptr, ptr, ptr, %struct.badblocks, %struct.anon.81 }
%union.anon.80 = type { i64 }
%struct.badblocks = type { ptr, i32, i32, i32, ptr, i32, %struct.seqlock_t, i64, i64 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.anon.81 = type { i16, i32, i64 }
%struct.mdp_superblock_1 = type { i32, i32, i32, i32, [16 x i8], [32 x i8], i64, i32, i32, i64, i32, i32, %union.anon.83, i32, i64, i32, i32, i32, i32, i64, i64, i64, %union.anon.85, i32, i32, [16 x i8], i8, i8, i16, i32, i64, i64, i64, i32, i32, [32 x i8], [0 x i16] }
%union.anon.83 = type { i32 }
%union.anon.85 = type { i64 }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.bitmap_counts = type { %struct.spinlock, ptr, i32, i32, i32, i32 }
%struct.bitmap = type { %struct.bitmap_counts, ptr, i64, i32, %struct.bitmap_storage, i32, i32, %struct.atomic_t, i32, i32, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.bitmap_storage = type { ptr, ptr, ptr, ptr, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
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
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.tlbflush_unmap_batch = type {}
%union.anon.57 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.bitmap_super_s = type { i32, i32, [16 x i8], i64, i64, i64, i32, i32, i32, i32, i32, i32, [64 x i8], [120 x i8] }
%struct.md_personality = type { ptr, i32, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.md_thread = type { ptr, ptr, %struct.wait_queue_head, i32, ptr, i32, ptr }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.dlm_slot = type { i32, i32 }

@__initcall__kmod_md_cluster__286_1598_cluster_init6 = internal global ptr @cluster_init, section ".initcall6.init", align 4
@__exitcall_cluster_exit = internal global ptr @cluster_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author287 = internal constant [23 x i8] c"md_cluster.author=SUSE\00", section ".modinfo", align 1
@__UNIQUE_ID_file288 = internal constant [38 x i8] c"md_cluster.file=drivers/md/md-cluster\00", section ".modinfo", align 1
@__UNIQUE_ID_license289 = internal constant [23 x i8] c"md_cluster.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [49 x i8] c"md_cluster.description=Clustering support for MD\00", section ".modinfo", align 1
@cluster_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1587, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\014md-cluster: support raid1 and raid10 (limited support)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cluster_init\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/md/md-cluster.c\00", [40 x i8] zeroinitializer }, align 32
@cluster_init._entry_ptr = internal global ptr @cluster_init._entry, section ".printk_index", align 4
@cluster_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 1588, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016Registering Cluster MD functions\0A\00", [60 x i8] zeroinitializer }, align 32
@cluster_init._entry_ptr.5 = internal global ptr @cluster_init._entry.3, section ".printk_index", align 4
@cluster_ops = internal global { %struct.md_cluster_operations, [44 x i8] } { %struct.md_cluster_operations { ptr @join, ptr @leave, ptr @slot_number, ptr @resync_info_update, ptr @resync_info_get, ptr @metadata_update_start, ptr @metadata_update_finish, ptr @metadata_update_cancel, ptr @resync_start, ptr @resync_finish, ptr @area_resyncing, ptr @add_new_disk, ptr @add_new_disk_cancel, ptr @new_disk_ack, ptr @remove_disk, ptr @load_bitmaps, ptr @gather_bitmaps, ptr @resize_bitmaps, ptr @lock_all_bitmaps, ptr @unlock_all_bitmaps, ptr @update_size }, [44 x i8] zeroinitializer }, align 32
@join.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&cinfo->suspend_lock\00", [43 x i8] zeroinitializer }, align 32
@join.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&cinfo->wait\00", [19 x i8] zeroinitializer }, align 32
@join.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&cinfo->recv_mutex\00", [45 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%pU\00", [28 x i8] zeroinitializer }, align 32
@md_ls_ops = internal constant { %struct.dlm_lockspace_ops, [20 x i8] } { %struct.dlm_lockspace_ops { ptr @recover_prep, ptr @recover_slot, ptr @recover_done }, [20 x i8] zeroinitializer }, align 32
@join._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 886, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\013md-cluster: Slot allotted(%d) is greater than available slots(%d).\00", [59 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"join\00", [27 x i8] zeroinitializer }, align 32
@join._entry_ptr = internal global ptr @join._entry, section ".printk_index", align 4
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cluster_recv\00", [19 x i8] zeroinitializer }, align 32
@join._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.13, ptr @.str.2, i32 894, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013md-cluster: cannot allocate memory for recv_thread!\0A\00", [41 x i8] zeroinitializer }, align 32
@join._entry_ptr.17 = internal global ptr @join._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"message\00", [24 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"token\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"no-new-dev\00", [21 x i8] zeroinitializer }, align 32
@join._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.13, ptr @.str.2, i32 910, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013md-cluster: can't join cluster to avoid lock issue\0A\00", [42 x i8] zeroinitializer }, align 32
@join._entry_ptr.23 = internal global ptr @join._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ack\00", [28 x i8] zeroinitializer }, align 32
@join._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.13, ptr @.str.2, i32 921, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013md-cluster: failed to get a sync CR lock on ACK!(%d)\0A\00", [40 x i8] zeroinitializer }, align 32
@join._entry_ptr.27 = internal global ptr @join._entry.25, section ".printk_index", align 4
@join._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.13, ptr @.str.2, i32 925, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013md-cluster: failed to get a sync CR lock on no-new-dev!(%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@join._entry_ptr.30 = internal global ptr @join._entry.28, section ".printk_index", align 4
@join._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.13, ptr @.str.2, i32 928, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016md-cluster: Joined cluster %s slot %d\0A\00", [55 x i8] zeroinitializer }, align 32
@join._entry_ptr.33 = internal global ptr @join._entry.31, section ".printk_index", align 4
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bitmap%04d\00", [21 x i8] zeroinitializer }, align 32
@join._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.13, ptr @.str.2, i32 936, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013Failed to get bitmap lock\0A\00", [35 x i8] zeroinitializer }, align 32
@join._entry_ptr.37 = internal global ptr @join._entry.35, section ".printk_index", align 4
@.str.38 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"resync\00", [25 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.39 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@recover_slot._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 383, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\016md-cluster: %s Node %d/%d down. My slot: %d. Initiating recovery.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"recover_slot\00", [19 x i8] zeroinitializer }, align 32
@recover_slot._entry_ptr = internal global ptr @recover_slot._entry, section ".printk_index", align 4
@.str.42 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"recover\00", [24 x i8] zeroinitializer }, align 32
@__recover_slot._entry = internal constant %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.2, i32 368, ptr null, ptr null }, align 1
@.str.43 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014md-cluster: Could not create recovery thread\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"__recover_slot\00", [17 x i8] zeroinitializer }, align 32
@__recover_slot._entry_ptr = internal global ptr @__recover_slot._entry, section ".printk_index", align 4
@recover_bitmaps._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.2, i32 301, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013md-cluster: Cannot initialize bitmaps\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"recover_bitmaps\00", [16 x i8] zeroinitializer }, align 32
@recover_bitmaps._entry_ptr = internal global ptr @recover_bitmaps._entry, section ".printk_index", align 4
@recover_bitmaps._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.2, i32 308, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013md-cluster: Could not DLM lock %s: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@recover_bitmaps._entry_ptr.49 = internal global ptr @recover_bitmaps._entry.47, section ".printk_index", align 4
@recover_bitmaps._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.46, ptr @.str.2, i32 313, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013md-cluster: Could not copy data from bitmap %d\0A\00", [46 x i8] zeroinitializer }, align 32
@recover_bitmaps._entry_ptr.52 = internal global ptr @recover_bitmaps._entry.50, section ".printk_index", align 4
@dlm_lock_sync_interruptible._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.2, i32 174, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016failed to cancel previous lock request %s return %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"dlm_lock_sync_interruptible\00", [36 x i8] zeroinitializer }, align 32
@dlm_lock_sync_interruptible._entry_ptr = internal global ptr @dlm_lock_sync_interruptible._entry, section ".printk_index", align 4
@recv_daemon._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.2, i32 631, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013md/raid1:failed to get CR on MESSAGE\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"recv_daemon\00", [20 x i8] zeroinitializer }, align 32
@recv_daemon._entry_ptr = internal global ptr @recv_daemon._entry, section ".printk_index", align 4
@recv_daemon._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.56, ptr @.str.2, i32 645, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016unlock ack failed return %d\0A\00", [33 x i8] zeroinitializer }, align 32
@recv_daemon._entry_ptr.59 = internal global ptr @recv_daemon._entry.57, section ".printk_index", align 4
@recv_daemon._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.56, ptr @.str.2, i32 649, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016lock PR on msg failed return %d\0A\00", [61 x i8] zeroinitializer }, align 32
@recv_daemon._entry_ptr.62 = internal global ptr @recv_daemon._entry.60, section ".printk_index", align 4
@recv_daemon._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.56, ptr @.str.2, i32 653, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016lock CR on ack failed return %d\0A\00", [61 x i8] zeroinitializer }, align 32
@recv_daemon._entry_ptr.65 = internal global ptr @recv_daemon._entry.63, section ".printk_index", align 4
@recv_daemon._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.56, ptr @.str.2, i32 658, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016unlock msg failed return %d\0A\00", [33 x i8] zeroinitializer }, align 32
@recv_daemon._entry_ptr.68 = internal global ptr @recv_daemon._entry.66, section ".printk_index", align 4
@.str.69 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"node %d received its own msg\0A\00", [34 x i8] zeroinitializer }, align 32
@process_recvd_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.2, i32 612, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014%s:%d Received unknown message from %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"process_recvd_msg\00", [46 x i8] zeroinitializer }, align 32
@process_recvd_msg._entry_ptr = internal global ptr @process_recvd_msg._entry, section ".printk_index", align 4
@__const.process_add_new_disk.event_name = private unnamed_addr constant [17 x i8] c"EVENT=ADD_DEVICE\00", align 1
@.str.72 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DEVICE_UUID=\00", [19 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"RAID_DISK=%d\00", [19 x i8] zeroinitializer }, align 32
@process_add_new_disk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.2, i32 516, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016%s:%d Sending kobject change with %s and %s\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"process_add_new_disk\00", [43 x i8] zeroinitializer }, align 32
@process_add_new_disk._entry_ptr = internal global ptr @process_add_new_disk._entry, section ".printk_index", align 4
@process_remove_disk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.2, i32 554, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014%s: %d Could not find disk(%d) to REMOVE\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"process_remove_disk\00", [44 x i8] zeroinitializer }, align 32
@process_remove_disk._entry_ptr = internal global ptr @process_remove_disk._entry, section ".printk_index", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.78 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.80 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@process_readd_disk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.2, i32 568, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014%s: %d Could not find disk(%d) which is faulty\00", [47 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"process_readd_disk\00", [45 x i8] zeroinitializer }, align 32
@process_readd_disk._entry_ptr = internal global ptr @process_readd_disk._entry, section ".printk_index", align 4
@lockres_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.83 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&res->sync_locking\00", [45 x i8] zeroinitializer }, align 32
@lockres_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.85, ptr @.str.2, i32 201, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013md-cluster: Unable to allocate resource name for resource %s\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"lockres_init\00", [19 x i8] zeroinitializer }, align 32
@lockres_init._entry_ptr = internal global ptr @lockres_init._entry, section ".printk_index", align 4
@lockres_init._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.85, ptr @.str.2, i32 208, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013md-cluster: Unable to allocate LVB for resource %s\0A\00", [42 x i8] zeroinitializer }, align 32
@lockres_init._entry_ptr.88 = internal global ptr @lockres_init._entry.86, section ".printk_index", align 4
@lockres_init._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.85, ptr @.str.2, i32 221, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013md-cluster: Unable to lock NL on new lock resource %s\0A\00", [39 x i8] zeroinitializer }, align 32
@lockres_init._entry_ptr.91 = internal global ptr @lockres_init._entry.89, section ".printk_index", align 4
@lockres_free._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.93, ptr @.str.2, i32 249, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013failed to unlock %s return %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"lockres_free\00", [19 x i8] zeroinitializer }, align 32
@lockres_free._entry_ptr = internal global ptr @lockres_free._entry, section ".printk_index", align 4
@resync_bitmap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.95, ptr @.str.2, i32 988, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013%s:%d: failed to send BITMAP_NEEDS_SYNC message (%d)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"resync_bitmap\00", [18 x i8] zeroinitializer }, align 32
@resync_bitmap._entry_ptr = internal global ptr @resync_bitmap._entry, section ".printk_index", align 4
@lock_comm.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@lock_token._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.97, ptr @.str.2, i32 673, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013md-cluster(%s:%d): failed to get EX on TOKEN (%d)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"lock_token\00", [21 x i8] zeroinitializer }, align 32
@lock_token._entry_ptr = internal global ptr @lock_token._entry, section ".printk_index", align 4
@__sendmsg._entry = internal constant %struct.pi_entry { ptr @.str.98, ptr @.str.99, ptr @.str.2, i32 742, ptr null, ptr null }, align 1
@.str.98 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013md-cluster: failed to get EX on MESSAGE (%d)\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"__sendmsg\00", [22 x i8] zeroinitializer }, align 32
@__sendmsg._entry_ptr = internal global ptr @__sendmsg._entry, section ".printk_index", align 4
@__sendmsg._entry.100 = internal constant %struct.pi_entry { ptr @.str.101, ptr @.str.99, ptr @.str.2, i32 752, ptr null, ptr null }, align 1
@.str.101 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013md-cluster: failed to convert EX to CW on MESSAGE(%d)\0A\00", [39 x i8] zeroinitializer }, align 32
@__sendmsg._entry_ptr.102 = internal global ptr @__sendmsg._entry.100, section ".printk_index", align 4
@__sendmsg._entry.103 = internal constant %struct.pi_entry { ptr @.str.104, ptr @.str.99, ptr @.str.2, i32 760, ptr null, ptr null }, align 1
@.str.104 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013md-cluster: failed to convert CR to EX on ACK(%d)\0A\00", [43 x i8] zeroinitializer }, align 32
@__sendmsg._entry_ptr.105 = internal global ptr @__sendmsg._entry.103, section ".printk_index", align 4
@__sendmsg._entry.106 = internal constant %struct.pi_entry { ptr @.str.107, ptr @.str.99, ptr @.str.2, i32 768, ptr null, ptr null }, align 1
@.str.107 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013md-cluster: failed to convert EX to CR on ACK(%d)\0A\00", [43 x i8] zeroinitializer }, align 32
@__sendmsg._entry_ptr.108 = internal global ptr @__sendmsg._entry.106, section ".printk_index", align 4
@__sendmsg._entry.109 = internal constant %struct.pi_entry { ptr @.str.110, ptr @.str.99, ptr @.str.2, i32 776, ptr null, ptr null }, align 1
@.str.110 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013md-cluster: failed convert to NL on MESSAGE(%d)\0A\00", [45 x i8] zeroinitializer }, align 32
@__sendmsg._entry_ptr.111 = internal global ptr @__sendmsg._entry.109, section ".printk_index", align 4
@metadata_update_start.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@metadata_update_finish._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.113, ptr @.str.2, i32 1094, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014md-cluster: No good device id found to send\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"metadata_update_finish\00", [41 x i8] zeroinitializer }, align 32
@metadata_update_finish._entry_ptr = internal global ptr @metadata_update_finish._entry, section ".printk_index", align 4
@new_disk_ack._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.115, ptr @.str.2, i32 1461, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014md-cluster(%s): Spurious cluster confirmation\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"new_disk_ack\00", [19 x i8] zeroinitializer }, align 32
@new_disk_ack._entry_ptr = internal global ptr @new_disk_ack._entry, section ".printk_index", align 4
@.str.116 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mdX\00", [28 x i8] zeroinitializer }, align 32
@load_bitmaps._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.118, ptr @.str.2, i32 971, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013md-cluster: failed to gather all resyn infos\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"load_bitmaps\00", [19 x i8] zeroinitializer }, align 32
@load_bitmaps._entry_ptr = internal global ptr @load_bitmaps._entry, section ".printk_index", align 4
@gather_all_resync_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.120, ptr @.str.2, i32 825, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016%s:%d Resync[%llu..%llu] in progress on %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"gather_all_resync_info\00", [41 x i8] zeroinitializer }, align 32
@gather_all_resync_info._entry_ptr = internal global ptr @gather_all_resync_info._entry, section ".printk_index", align 4
@gather_all_resync_info._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.120, ptr @.str.2, i32 840, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014md-cluster: Could not gather bitmaps from slot %d\00", [44 x i8] zeroinitializer }, align 32
@gather_all_resync_info._entry_ptr.123 = internal global ptr @gather_all_resync_info._entry.121, section ".printk_index", align 4
@gather_bitmaps._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.124, ptr @.str.2, i32 1551, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gather_bitmaps\00", [17 x i8] zeroinitializer }, align 32
@gather_bitmaps._entry_ptr = internal global ptr @gather_bitmaps._entry, section ".printk_index", align 4
@md_cluster_ops = external dso_local local_unnamed_addr global ptr, align 4
@resize_bitmaps._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.126, ptr @.str.2, i32 1145, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013can't get bitmap from slot %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"resize_bitmaps\00", [17 x i8] zeroinitializer }, align 32
@resize_bitmaps._entry_ptr = internal global ptr @resize_bitmaps._entry, section ".printk_index", align 4
@resize_bitmaps._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.126, ptr @.str.2, i32 1158, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013Cannot initialize %s lock\0A\00", [35 x i8] zeroinitializer }, align 32
@resize_bitmaps._entry_ptr.129 = internal global ptr @resize_bitmaps._entry.127, section ".printk_index", align 4
@update_bitmap_size._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.131, ptr @.str.2, i32 1118, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013%s:%d: failed to send BITMAP_RESIZE message (%d)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"update_bitmap_size\00", [45 x i8] zeroinitializer }, align 32
@update_bitmap_size._entry_ptr = internal global ptr @update_bitmap_size._entry, section ".printk_index", align 4
@lock_all_bitmaps._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.133, ptr @.str.2, i32 1490, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013md: can't alloc mem for other bitmap locks\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lock_all_bitmaps\00", [47 x i8] zeroinitializer }, align 32
@lock_all_bitmaps._entry_ptr = internal global ptr @lock_all_bitmaps._entry, section ".printk_index", align 4
@update_size._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.135, ptr @.str.2, i32 1263, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013%s: lock_comm failed\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"update_size\00", [20 x i8] zeroinitializer }, align 32
@update_size._entry_ptr = internal global ptr @update_size._entry, section ".printk_index", align 4
@update_size._entry.136 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.135, ptr @.str.2, i32 1284, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013%s:%d: failed to send METADATA_UPDATED msg\0A\00", [50 x i8] zeroinitializer }, align 32
@update_size._entry_ptr.138 = internal global ptr @update_size._entry.136, section ".printk_index", align 4
@update_size._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.135, ptr @.str.2, i32 1289, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013md-cluster: No good device id found to send\0A\00", [49 x i8] zeroinitializer }, align 32
@update_size._entry_ptr.141 = internal global ptr @update_size._entry.139, section ".printk_index", align 4
@update_size._entry.142 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.135, ptr @.str.2, i32 1305, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013%s:%d: failed to send CHANGE_CAPACITY msg\0A\00", [51 x i8] zeroinitializer }, align 32
@update_size._entry_ptr.144 = internal global ptr @update_size._entry.142, section ".printk_index", align 4
@update_size._entry.145 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.135, ptr @.str.2, i32 1313, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@update_size._entry_ptr.146 = internal global ptr @update_size._entry.145, section ".printk_index", align 4
@cluster_check_sync_size._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.147, ptr @.str.2, i32 1207, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cluster_check_sync_size\00", [40 x i8] zeroinitializer }, align 32
@cluster_check_sync_size._entry_ptr = internal global ptr @cluster_check_sync_size._entry, section ".printk_index", align 4
@cluster_check_sync_size._entry.148 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.147, ptr @.str.2, i32 1218, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013md-cluster: Cannot initialize %s\0A\00", [60 x i8] zeroinitializer }, align 32
@cluster_check_sync_size._entry_ptr.150 = internal global ptr @cluster_check_sync_size._entry.148, section ".printk_index", align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@__sancov_gen_cov_switch_values.151 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 1587, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 1588, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant [12 x i8] c"cluster_ops\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 1561, i32 37 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 867, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 870, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 871, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 877, i32 15 }
@___asan_gen_.194 = private unnamed_addr constant [10 x i8] c"md_ls_ops\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 408, i32 39 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 885, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 892, i32 62 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 894, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 897, i32 47 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 900, i32 45 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 903, i32 50 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 910, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 913, i32 43 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 920, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 925, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 928, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 929, i32 20 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 936, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 941, i32 46 }
@___asan_gen_.267 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 87, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 380, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 366, i32 12 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 368, i32 4 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 301, i32 4 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 307, i32 4 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 313, i32 4 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 173, i32 4 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 631, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 645, i32 3 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 649, i32 3 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 653, i32 3 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 658, i32 3 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 576, i32 6 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 611, i32 3 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 513, i32 32 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 515, i32 26 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 516, i32 2 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 553, i32 3 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 695, i32 2 }
@___asan_gen_.393 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 723, i32 2 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 567, i32 3 }
@___asan_gen_.404 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 193, i32 2 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 201, i32 3 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 208, i32 4 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 221, i32 3 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 249, i32 3 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 987, i32 3 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 672, i32 3 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 742, i32 3 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 751, i32 3 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 759, i32 3 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 767, i32 3 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 775, i32 3 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 1094, i32 3 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 1461, i32 3 }
@___asan_gen_.495 = private unnamed_addr constant [19 x i8] c"../drivers/md/md.h\00", align 1
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 632, i32 54 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 971, i32 3 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 821, i32 5 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 840, i32 4 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 1551, i32 4 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 1145, i32 4 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 1158, i32 4 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 1117, i32 3 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 1490, i32 3 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 1263, i32 3 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 1283, i32 4 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 1289, i32 3 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 1304, i32 4 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 1312, i32 4 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 1207, i32 4 }
@___asan_gen_.596 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.599 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.600 = private constant [27 x i8] c"../drivers/md/md-cluster.c\00", align 1
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 1218, i32 4 }
@llvm.compiler.used = appending global [214 x ptr] [ptr @__UNIQUE_ID_author287, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file288, ptr @__UNIQUE_ID_license289, ptr @__exitcall_cluster_exit, ptr @__initcall__kmod_md_cluster__286_1598_cluster_init6, ptr @__recover_slot._entry, ptr @__recover_slot._entry_ptr, ptr @__sendmsg._entry, ptr @__sendmsg._entry.100, ptr @__sendmsg._entry.103, ptr @__sendmsg._entry.106, ptr @__sendmsg._entry.109, ptr @__sendmsg._entry_ptr, ptr @__sendmsg._entry_ptr.102, ptr @__sendmsg._entry_ptr.105, ptr @__sendmsg._entry_ptr.108, ptr @__sendmsg._entry_ptr.111, ptr @cluster_check_sync_size._entry, ptr @cluster_check_sync_size._entry.148, ptr @cluster_check_sync_size._entry_ptr, ptr @cluster_check_sync_size._entry_ptr.150, ptr @cluster_init._entry, ptr @cluster_init._entry.3, ptr @cluster_init._entry_ptr, ptr @cluster_init._entry_ptr.5, ptr @dlm_lock_sync_interruptible._entry, ptr @dlm_lock_sync_interruptible._entry_ptr, ptr @gather_all_resync_info._entry, ptr @gather_all_resync_info._entry.121, ptr @gather_all_resync_info._entry_ptr, ptr @gather_all_resync_info._entry_ptr.123, ptr @gather_bitmaps._entry, ptr @gather_bitmaps._entry_ptr, ptr @join._entry, ptr @join._entry.15, ptr @join._entry.21, ptr @join._entry.25, ptr @join._entry.28, ptr @join._entry.31, ptr @join._entry.35, ptr @join._entry_ptr, ptr @join._entry_ptr.17, ptr @join._entry_ptr.23, ptr @join._entry_ptr.27, ptr @join._entry_ptr.30, ptr @join._entry_ptr.33, ptr @join._entry_ptr.37, ptr @load_bitmaps._entry, ptr @load_bitmaps._entry_ptr, ptr @lock_all_bitmaps._entry, ptr @lock_all_bitmaps._entry_ptr, ptr @lock_token._entry, ptr @lock_token._entry_ptr, ptr @lockres_free._entry, ptr @lockres_free._entry_ptr, ptr @lockres_init._entry, ptr @lockres_init._entry.86, ptr @lockres_init._entry.89, ptr @lockres_init._entry_ptr, ptr @lockres_init._entry_ptr.88, ptr @lockres_init._entry_ptr.91, ptr @metadata_update_finish._entry, ptr @metadata_update_finish._entry_ptr, ptr @new_disk_ack._entry, ptr @new_disk_ack._entry_ptr, ptr @process_add_new_disk._entry, ptr @process_add_new_disk._entry_ptr, ptr @process_readd_disk._entry, ptr @process_readd_disk._entry_ptr, ptr @process_recvd_msg._entry, ptr @process_recvd_msg._entry_ptr, ptr @process_remove_disk._entry, ptr @process_remove_disk._entry_ptr, ptr @recover_bitmaps._entry, ptr @recover_bitmaps._entry.47, ptr @recover_bitmaps._entry.50, ptr @recover_bitmaps._entry_ptr, ptr @recover_bitmaps._entry_ptr.49, ptr @recover_bitmaps._entry_ptr.52, ptr @recover_slot._entry, ptr @recover_slot._entry_ptr, ptr @recv_daemon._entry, ptr @recv_daemon._entry.57, ptr @recv_daemon._entry.60, ptr @recv_daemon._entry.63, ptr @recv_daemon._entry.66, ptr @recv_daemon._entry_ptr, ptr @recv_daemon._entry_ptr.59, ptr @recv_daemon._entry_ptr.62, ptr @recv_daemon._entry_ptr.65, ptr @recv_daemon._entry_ptr.68, ptr @resize_bitmaps._entry, ptr @resize_bitmaps._entry.127, ptr @resize_bitmaps._entry_ptr, ptr @resize_bitmaps._entry_ptr.129, ptr @resync_bitmap._entry, ptr @resync_bitmap._entry_ptr, ptr @update_bitmap_size._entry, ptr @update_bitmap_size._entry_ptr, ptr @update_size._entry, ptr @update_size._entry.136, ptr @update_size._entry.139, ptr @update_size._entry.142, ptr @update_size._entry.145, ptr @update_size._entry_ptr, ptr @update_size._entry_ptr.138, ptr @update_size._entry_ptr.141, ptr @update_size._entry_ptr.144, ptr @update_size._entry_ptr.146, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @cluster_ops, ptr @join.__key, ptr @.str.6, ptr @join.__key.7, ptr @.str.8, ptr @join.__key.9, ptr @.str.10, ptr @.str.11, ptr @md_ls_ops, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @init_completion.__key, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.61, ptr @.str.64, ptr @.str.67, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @lockres_init.__key, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.87, ptr @.str.90, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.101, ptr @.str.104, ptr @.str.107, ptr @.str.110, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.122, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.128, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.137, ptr @.str.140, ptr @.str.143, ptr @.str.147, ptr @.str.149], section "llvm.metadata"
@0 = internal global [150 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cluster_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cluster_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cluster_ops to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @join.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @join.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @join.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @md_ls_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @join._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @join._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @join._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @join._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @join._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @join._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @join._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @recover_slot._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @recover_bitmaps._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @recover_bitmaps._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @recover_bitmaps._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_lock_sync_interruptible._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @recv_daemon._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @recv_daemon._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @recv_daemon._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @recv_daemon._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @recv_daemon._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_recvd_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_add_new_disk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_remove_disk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_readd_disk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lockres_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lockres_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lockres_init._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lockres_init._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lockres_free._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @resync_bitmap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lock_token._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @metadata_update_finish._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @new_disk_ack._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_bitmaps._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gather_all_resync_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gather_all_resync_info._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gather_bitmaps._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @resize_bitmaps._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @resize_bitmaps._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @update_bitmap_size._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lock_all_bitmaps._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @update_size._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @update_size._entry.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @update_size._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @update_size._entry.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @update_size._entry.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cluster_check_sync_size._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cluster_check_sync_size._entry.148 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cluster_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #18
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #18
  %call5 = tail call i32 @register_md_cluster_operations(ptr noundef nonnull @cluster_ops, ptr noundef null) #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cluster_exit() #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @unregister_md_cluster_operations() #15
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_md_cluster_operations(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @join(ptr noundef %mddev, i32 noundef %nodes) #1 align 64 {
entry:
  %ops_rv = alloca i32, align 4
  %str = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ops_rv) #15
  %0 = ptrtoint ptr %ops_rv to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ops_rv, align 4, !annotation !309
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %str) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 400) #19
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %suspend_list = getelementptr inbounds %struct.md_cluster_info, ptr %call7.i.i, i32 0, i32 8
  %2 = ptrtoint ptr %suspend_list to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %suspend_list, ptr %suspend_list, align 4
  %prev.i = getelementptr inbounds %struct.md_cluster_info, ptr %call7.i.i, i32 0, i32 8, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %suspend_list, ptr %prev.i, align 8
  %suspend_lock = getelementptr inbounds %struct.md_cluster_info, ptr %call7.i.i, i32 0, i32 9
  tail call void @__raw_spin_lock_init(ptr noundef %suspend_lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @join.__key, i16 noundef signext 3) #15
  %completion = getelementptr inbounds %struct.md_cluster_info, ptr %call7.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %completion, align 4
  %wait.i = getelementptr inbounds %struct.md_cluster_info, ptr %call7.i.i, i32 0, i32 3, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.39, ptr noundef nonnull @init_completion.__key) #15
  %state = getelementptr inbounds %struct.md_cluster_info, ptr %call7.i.i, i32 0, i32 22
  tail call void @_set_bit(i32 noundef 3, ptr noundef %state) #15
  %wait = getelementptr inbounds %struct.md_cluster_info, ptr %call7.i.i, i32 0, i32 21
  tail call void @__init_waitqueue_head(ptr noundef %wait, ptr noundef nonnull @.str.8, ptr noundef nonnull @join.__key.7) #15
  %recv_mutex = getelementptr inbounds %struct.md_cluster_info, ptr %call7.i.i, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %recv_mutex, ptr noundef nonnull @.str.10, ptr noundef nonnull @join.__key.9) #15
  %cluster_info = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 101
  %5 = ptrtoint ptr %cluster_info to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %cluster_info, align 8
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %mddev, ptr %call7.i.i, align 8
  %7 = call ptr @memset(ptr %str, i32 0, i32 64)
  %uuid = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 33
  %call11 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %str, ptr noundef nonnull @.str.11, ptr noundef %uuid)
  %cluster_name = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 86, i32 11
  %lockspace = getelementptr inbounds %struct.md_cluster_info, ptr %call7.i.i, i32 0, i32 1
  %call14 = call i32 @dlm_new_lockspace(ptr noundef nonnull %str, ptr noundef %cluster_name, i32 noundef 4, i32 noundef 64, ptr noundef nonnull @md_ls_ops, ptr noundef %mddev, ptr noundef nonnull %ops_rv, ptr noundef %lockspace) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end.err_crit_edge

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %err

if.end17:                                         ; preds = %if.end
  call void @wait_for_completion(ptr noundef %completion) #15
  %slot_number = getelementptr inbounds %struct.md_cluster_info, ptr %call7.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %slot_number to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %slot_number, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %nodes)
  %cmp = icmp sgt i32 %9, %nodes
  br i1 %cmp, label %do.end22, label %if.end25

do.end22:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %9, i32 noundef %nodes) #18
  br label %err

if.end25:                                         ; preds = %if.end17
  %call26 = call ptr @md_register_thread(ptr noundef nonnull @recv_daemon, ptr noundef %mddev, ptr noundef nonnull @.str.14) #15
  %recv_thread = getelementptr inbounds %struct.md_cluster_info, ptr %call7.i.i, i32 0, i32 19
  %10 = ptrtoint ptr %recv_thread to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call26, ptr %recv_thread, align 4
  %tobool28.not = icmp eq ptr %call26, null
  br i1 %tobool28.not, label %do.end32, label %if.end35

do.end32:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #17
  %call34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #18
  br label %err

if.end35:                                         ; preds = %if.end25
  %call36 = call fastcc ptr @lockres_init(ptr noundef %mddev, ptr noundef nonnull @.str.18, ptr noundef null, i32 noundef 1)
  %message_lockres = getelementptr inbounds %struct.md_cluster_info, ptr %call7.i.i, i32 0, i32 16
  %11 = ptrtoint ptr %message_lockres to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call36, ptr %message_lockres, align 8
  %tobool38.not = icmp eq ptr %call36, null
  br i1 %tobool38.not, label %if.end35.err_crit_edge, label %if.end40

if.end35.err_crit_edge:                           ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #17
  br label %err

if.end40:                                         ; preds = %if.end35
  %call41 = call fastcc ptr @lockres_init(ptr noundef %mddev, ptr noundef nonnull @.str.19, ptr noundef null, i32 noundef 0)
  %token_lockres = getelementptr inbounds %struct.md_cluster_info, ptr %call7.i.i, i32 0, i32 17
  %12 = ptrtoint ptr %token_lockres to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call41, ptr %token_lockres, align 4
  %tobool43.not = icmp eq ptr %call41, null
  br i1 %tobool43.not, label %if.end40.err_crit_edge, label %if.end45

if.end40.err_crit_edge:                           ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #17
  br label %err

if.end45:                                         ; preds = %if.end40
  %call46 = call fastcc ptr @lockres_init(ptr noundef %mddev, ptr noundef nonnull @.str.20, ptr noundef null, i32 noundef 0)
  %no_new_dev_lockres = getelementptr inbounds %struct.md_cluster_info, ptr %call7.i.i, i32 0, i32 18
  %13 = ptrtoint ptr %no_new_dev_lockres to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call46, ptr %no_new_dev_lockres, align 8
  %tobool48.not = icmp eq ptr %call46, null
  br i1 %tobool48.not, label %if.end45.err_crit_edge, label %if.end50

if.end45.err_crit_edge:                           ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #17
  br label %err

if.end50:                                         ; preds = %if.end45
  %14 = ptrtoint ptr %token_lockres to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %token_lockres, align 4
  %call52 = call fastcc i32 @dlm_lock_sync(ptr noundef %15, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end60, label %if.then54

if.then54:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #17
  %call59 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #18
  br label %err

if.end60:                                         ; preds = %if.end50
  %call61 = call fastcc ptr @lockres_init(ptr noundef %mddev, ptr noundef nonnull @.str.24, ptr noundef nonnull @ack_bast, i32 noundef 0)
  %ack_lockres = getelementptr inbounds %struct.md_cluster_info, ptr %call7.i.i, i32 0, i32 15
  %16 = ptrtoint ptr %ack_lockres to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call61, ptr %ack_lockres, align 4
  %tobool63.not = icmp eq ptr %call61, null
  br i1 %tobool63.not, label %if.end60.err_crit_edge, label %if.end65

if.end60.err_crit_edge:                           ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #17
  br label %err

if.end65:                                         ; preds = %if.end60
  %call67 = call fastcc i32 @dlm_lock_sync(ptr noundef nonnull %call61, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end65.if.end75_crit_edge, label %do.end72

if.end65.if.end75_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end75

do.end72:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #17
  %call74 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef 0) #18
  br label %if.end75

if.end75:                                         ; preds = %do.end72, %if.end65.if.end75_crit_edge
  %17 = ptrtoint ptr %token_lockres to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %token_lockres, align 4
  %call.i = call fastcc i32 @dlm_lock_sync(ptr noundef %18, i32 noundef 0) #15
  %19 = ptrtoint ptr %no_new_dev_lockres to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %no_new_dev_lockres, align 8
  %call79 = call fastcc i32 @dlm_lock_sync(ptr noundef %20, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.end75.do.end90_crit_edge, label %do.end84

if.end75.do.end90_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end90

do.end84:                                         ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #17
  %call86 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef 0) #18
  br label %do.end90

do.end90:                                         ; preds = %do.end84, %if.end75.do.end90_crit_edge
  %21 = ptrtoint ptr %slot_number to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %slot_number, align 8
  %call94 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull %str, i32 noundef %22) #18
  %23 = ptrtoint ptr %slot_number to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %slot_number, align 8
  %sub = add i32 %24, -1
  %call97 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %str, i32 noundef 64, ptr noundef nonnull @.str.34, i32 noundef %sub)
  %call99 = call fastcc ptr @lockres_init(ptr noundef %mddev, ptr noundef nonnull %str, ptr noundef null, i32 noundef 1)
  %bitmap_lockres = getelementptr inbounds %struct.md_cluster_info, ptr %call7.i.i, i32 0, i32 5
  %25 = ptrtoint ptr %bitmap_lockres to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call99, ptr %bitmap_lockres, align 8
  %tobool101.not = icmp eq ptr %call99, null
  br i1 %tobool101.not, label %do.end90.err_crit_edge, label %if.end103

do.end90.err_crit_edge:                           ; preds = %do.end90
  call void @__sanitizer_cov_trace_pc() #17
  br label %err

if.end103:                                        ; preds = %do.end90
  %call105 = call fastcc i32 @dlm_lock_sync(ptr noundef nonnull %call99, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %if.end113, label %do.end110

do.end110:                                        ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #17
  %call112 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #18
  br label %err

if.end113:                                        ; preds = %if.end103
  %call114 = call fastcc ptr @lockres_init(ptr noundef %mddev, ptr noundef nonnull @.str.38, ptr noundef null, i32 noundef 0)
  %resync_lockres = getelementptr inbounds %struct.md_cluster_info, ptr %call7.i.i, i32 0, i32 7
  %26 = ptrtoint ptr %resync_lockres to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call114, ptr %resync_lockres, align 8
  %tobool116.not = icmp eq ptr %call114, null
  br i1 %tobool116.not, label %if.end113.err_crit_edge, label %if.end113.cleanup_crit_edge

if.end113.cleanup_crit_edge:                      ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end113.err_crit_edge:                          ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #17
  br label %err

err:                                              ; preds = %if.end113.err_crit_edge, %do.end110, %do.end90.err_crit_edge, %if.end60.err_crit_edge, %if.then54, %if.end45.err_crit_edge, %if.end40.err_crit_edge, %if.end35.err_crit_edge, %do.end32, %do.end22, %if.end.err_crit_edge
  %ret.0 = phi i32 [ %call14, %if.end.err_crit_edge ], [ -34, %do.end22 ], [ -11, %if.then54 ], [ -22, %do.end110 ], [ -12, %if.end45.err_crit_edge ], [ -12, %if.end40.err_crit_edge ], [ -12, %if.end35.err_crit_edge ], [ -12, %do.end32 ], [ -12, %if.end60.err_crit_edge ], [ -12, %do.end90.err_crit_edge ], [ -12, %if.end113.err_crit_edge ]
  call void @_set_bit(i32 noundef 8, ptr noundef %state) #15
  %recovery_thread = getelementptr inbounds %struct.md_cluster_info, ptr %call7.i.i, i32 0, i32 13
  call void @md_unregister_thread(ptr noundef %recovery_thread) #15
  %recv_thread120 = getelementptr inbounds %struct.md_cluster_info, ptr %call7.i.i, i32 0, i32 19
  call void @md_unregister_thread(ptr noundef %recv_thread120) #15
  %message_lockres121 = getelementptr inbounds %struct.md_cluster_info, ptr %call7.i.i, i32 0, i32 16
  %27 = ptrtoint ptr %message_lockres121 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %message_lockres121, align 8
  call fastcc void @lockres_free(ptr noundef %28)
  %token_lockres122 = getelementptr inbounds %struct.md_cluster_info, ptr %call7.i.i, i32 0, i32 17
  %29 = ptrtoint ptr %token_lockres122 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %token_lockres122, align 4
  call fastcc void @lockres_free(ptr noundef %30)
  %ack_lockres123 = getelementptr inbounds %struct.md_cluster_info, ptr %call7.i.i, i32 0, i32 15
  %31 = ptrtoint ptr %ack_lockres123 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ack_lockres123, align 4
  call fastcc void @lockres_free(ptr noundef %32)
  %no_new_dev_lockres124 = getelementptr inbounds %struct.md_cluster_info, ptr %call7.i.i, i32 0, i32 18
  %33 = ptrtoint ptr %no_new_dev_lockres124 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %no_new_dev_lockres124, align 8
  call fastcc void @lockres_free(ptr noundef %34)
  %resync_lockres125 = getelementptr inbounds %struct.md_cluster_info, ptr %call7.i.i, i32 0, i32 7
  %35 = ptrtoint ptr %resync_lockres125 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %resync_lockres125, align 8
  call fastcc void @lockres_free(ptr noundef %36)
  %bitmap_lockres126 = getelementptr inbounds %struct.md_cluster_info, ptr %call7.i.i, i32 0, i32 5
  %37 = ptrtoint ptr %bitmap_lockres126 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bitmap_lockres126, align 8
  call fastcc void @lockres_free(ptr noundef %38)
  %39 = ptrtoint ptr %lockspace to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %lockspace, align 4
  %tobool128.not = icmp eq ptr %40, null
  br i1 %tobool128.not, label %err.if.end132_crit_edge, label %if.then129

err.if.end132_crit_edge:                          ; preds = %err
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end132

if.then129:                                       ; preds = %err
  call void @__sanitizer_cov_trace_pc() #17
  %call131 = call i32 @dlm_release_lockspace(ptr noundef nonnull %40, i32 noundef 2) #15
  br label %if.end132

if.end132:                                        ; preds = %if.then129, %err.if.end132_crit_edge
  %41 = ptrtoint ptr %cluster_info to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %cluster_info, align 8
  call void @kfree(ptr noundef nonnull %call7.i.i) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end132, %if.end113.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end132 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end113.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %str) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ops_rv) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @leave(ptr noundef %mddev) #1 align 64 {
entry:
  %cmsg.i = alloca %struct.cluster_msg, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %cluster_info = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 101
  %0 = ptrtoint ptr %cluster_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cluster_info, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %slot_number = getelementptr inbounds %struct.md_cluster_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %slot_number to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %slot_number, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.lor.lhs.false_crit_edge

if.end.lor.lhs.false_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.end
  %recovery_cp = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 67
  %4 = ptrtoint ptr %recovery_cp to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %recovery_cp, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %5)
  %cmp1.not = icmp eq i64 %5, -1
  br i1 %cmp1.not, label %land.lhs.true.lor.lhs.false_crit_edge, label %land.lhs.true.if.then5_crit_edge

land.lhs.true.if.then5_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then5

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.lor.lhs.false_crit_edge, %if.end.lor.lhs.false_crit_edge
  %reshape_position = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 34
  %6 = ptrtoint ptr %reshape_position to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %reshape_position, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %7)
  %cmp2.not = icmp eq i64 %7, -1
  br i1 %cmp2.not, label %lor.lhs.false.if.end6_crit_edge, label %land.lhs.true3

lor.lhs.false.if.end6_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6

land.lhs.true3:                                   ; preds = %lor.lhs.false
  %flags = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 5
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags, align 4
  %10 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool4.not = icmp eq i32 %10, 0
  br i1 %tobool4.not, label %land.lhs.true3.if.end6_crit_edge, label %land.lhs.true3.if.then5_crit_edge

land.lhs.true3.if.then5_crit_edge:                ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then5

land.lhs.true3.if.end6_crit_edge:                 ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6

if.then5:                                         ; preds = %land.lhs.true3.if.then5_crit_edge, %land.lhs.true.if.then5_crit_edge
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cmsg.i) #15
  %11 = call ptr @memset(ptr %cmsg.i, i32 0, i32 48)
  %12 = ptrtoint ptr %cmsg.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 83886080, ptr %cmsg.i, align 8
  %call.i = call fastcc i32 @sendmsg(ptr noundef nonnull %1, ptr noundef nonnull %cmsg.i, i1 noundef zeroext true) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then5.resync_bitmap.exit_crit_edge, label %do.end.i

if.then5.resync_bitmap.exit_crit_edge:            ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #17
  br label %resync_bitmap.exit

do.end.i:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #17
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95, i32 noundef 988, i32 noundef %call.i) #18
  br label %resync_bitmap.exit

resync_bitmap.exit:                               ; preds = %do.end.i, %if.then5.resync_bitmap.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cmsg.i) #15
  br label %if.end6

if.end6:                                          ; preds = %resync_bitmap.exit, %land.lhs.true3.if.end6_crit_edge, %lor.lhs.false.if.end6_crit_edge
  %state = getelementptr inbounds %struct.md_cluster_info, ptr %1, i32 0, i32 22
  tail call void @_set_bit(i32 noundef 8, ptr noundef %state) #15
  %recovery_thread = getelementptr inbounds %struct.md_cluster_info, ptr %1, i32 0, i32 13
  tail call void @md_unregister_thread(ptr noundef %recovery_thread) #15
  %recv_thread = getelementptr inbounds %struct.md_cluster_info, ptr %1, i32 0, i32 19
  tail call void @md_unregister_thread(ptr noundef %recv_thread) #15
  %message_lockres = getelementptr inbounds %struct.md_cluster_info, ptr %1, i32 0, i32 16
  %13 = ptrtoint ptr %message_lockres to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %message_lockres, align 8
  tail call fastcc void @lockres_free(ptr noundef %14)
  %token_lockres = getelementptr inbounds %struct.md_cluster_info, ptr %1, i32 0, i32 17
  %15 = ptrtoint ptr %token_lockres to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %token_lockres, align 4
  tail call fastcc void @lockres_free(ptr noundef %16)
  %ack_lockres = getelementptr inbounds %struct.md_cluster_info, ptr %1, i32 0, i32 15
  %17 = ptrtoint ptr %ack_lockres to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ack_lockres, align 4
  tail call fastcc void @lockres_free(ptr noundef %18)
  %no_new_dev_lockres = getelementptr inbounds %struct.md_cluster_info, ptr %1, i32 0, i32 18
  %19 = ptrtoint ptr %no_new_dev_lockres to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %no_new_dev_lockres, align 8
  tail call fastcc void @lockres_free(ptr noundef %20)
  %resync_lockres = getelementptr inbounds %struct.md_cluster_info, ptr %1, i32 0, i32 7
  %21 = ptrtoint ptr %resync_lockres to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %resync_lockres, align 8
  tail call fastcc void @lockres_free(ptr noundef %22)
  %bitmap_lockres = getelementptr inbounds %struct.md_cluster_info, ptr %1, i32 0, i32 5
  %23 = ptrtoint ptr %bitmap_lockres to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bitmap_lockres, align 8
  tail call fastcc void @lockres_free(ptr noundef %24)
  %25 = ptrtoint ptr %cluster_info to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cluster_info, align 8
  %other_bitmap_lockres.i = getelementptr inbounds %struct.md_cluster_info, ptr %26, i32 0, i32 6
  %27 = ptrtoint ptr %other_bitmap_lockres.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %other_bitmap_lockres.i, align 4
  %tobool.not.i26 = icmp eq ptr %28, null
  br i1 %tobool.not.i26, label %if.end6.unlock_all_bitmaps.exit_crit_edge, label %for.cond.preheader.i

if.end6.unlock_all_bitmaps.exit_crit_edge:        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %unlock_all_bitmaps.exit

for.cond.preheader.i:                             ; preds = %if.end6
  %nodes.i = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 86, i32 10
  %29 = ptrtoint ptr %nodes.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %nodes.i, align 8
  %sub17.i = add i32 %30, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub17.i)
  %cmp18.i = icmp sgt i32 %sub17.i, 0
  br i1 %cmp18.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.019.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %31 = ptrtoint ptr %other_bitmap_lockres.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %other_bitmap_lockres.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %32, i32 %i.019.i
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i, align 4
  %tobool2.not.i = icmp eq ptr %34, null
  br i1 %tobool2.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then3.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.then3.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @lockres_free(ptr noundef nonnull %34) #15
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then3.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.019.i, 1
  %35 = ptrtoint ptr %nodes.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %nodes.i, align 8
  %sub.i = add i32 %36, -1
  %cmp.i = icmp slt i32 %inc.i, %sub.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %37 = ptrtoint ptr %other_bitmap_lockres.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %other_bitmap_lockres.i, align 4
  tail call void @kfree(ptr noundef %38) #15
  %39 = ptrtoint ptr %other_bitmap_lockres.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %other_bitmap_lockres.i, align 4
  br label %unlock_all_bitmaps.exit

unlock_all_bitmaps.exit:                          ; preds = %for.end.i, %if.end6.unlock_all_bitmaps.exit_crit_edge
  %lockspace = getelementptr inbounds %struct.md_cluster_info, ptr %1, i32 0, i32 1
  %40 = ptrtoint ptr %lockspace to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %lockspace, align 4
  %call7 = tail call i32 @dlm_release_lockspace(ptr noundef %41, i32 noundef 2) #15
  tail call void @kfree(ptr noundef nonnull %1) #15
  br label %cleanup

cleanup:                                          ; preds = %unlock_all_bitmaps.exit, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @slot_number(ptr nocapture noundef readonly %mddev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %cluster_info = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 101
  %0 = ptrtoint ptr %cluster_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cluster_info, align 8
  %slot_number = getelementptr inbounds %struct.md_cluster_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %slot_number to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %slot_number, align 8
  %sub = add i32 %3, -1
  ret i32 %sub
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @resync_info_update(ptr nocapture noundef readonly %mddev, i64 noundef %lo, i64 noundef %hi) #1 align 64 {
entry:
  %cmsg = alloca %struct.cluster_msg, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %cluster_info = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 101
  %0 = ptrtoint ptr %cluster_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cluster_info, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cmsg) #15
  %2 = call ptr @memset(ptr %cmsg, i32 0, i32 48)
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %hi)
  %cmp = icmp eq i64 %hi, 0
  br i1 %cmp, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4

if.then:                                          ; preds = %entry
  %bitmap_lockres = getelementptr inbounds %struct.md_cluster_info, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %bitmap_lockres to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bitmap_lockres, align 8
  %sb_lvbptr = getelementptr inbounds %struct.dlm_lock_resource, ptr %4, i32 0, i32 1, i32 3
  %5 = ptrtoint ptr %sb_lvbptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sb_lvbptr, align 4
  %ri.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %6, i32 8
  %7 = ptrtoint ptr %ri.sroa.4.0..sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %7, i32 8)
  %ri.sroa.4.0.copyload = load i64, ptr %ri.sroa.4.0..sroa_idx, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %ri.sroa.4.0.copyload)
  %cmp2 = icmp eq i64 %ri.sroa.4.0.copyload, 0
  br i1 %cmp2, label %if.then.cleanup_crit_edge, label %if.then.if.end4_crit_edge

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %bitmap_lockres5 = getelementptr inbounds %struct.md_cluster_info, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %bitmap_lockres5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bitmap_lockres5, align 8
  %sb_lvbptr.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %9, i32 0, i32 1, i32 3
  %10 = ptrtoint ptr %sb_lvbptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sb_lvbptr.i, align 4
  %12 = tail call i64 @llvm.bswap.i64(i64 %lo) #15
  %13 = ptrtoint ptr %11 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %11, align 8
  %14 = tail call i64 @llvm.bswap.i64(i64 %hi) #15
  %hi2.i = getelementptr inbounds %struct.resync_info, ptr %11, i32 0, i32 1
  %15 = ptrtoint ptr %hi2.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %hi2.i, align 8
  %16 = ptrtoint ptr %bitmap_lockres5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bitmap_lockres5, align 8
  %call = tail call fastcc i32 @dlm_lock_sync(ptr noundef %17, i32 noundef 4)
  %18 = ptrtoint ptr %cmsg to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 16777216, ptr %cmsg, align 8
  %low = getelementptr inbounds %struct.cluster_msg, ptr %cmsg, i32 0, i32 2
  %19 = ptrtoint ptr %low to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %12, ptr %low, align 8
  %high = getelementptr inbounds %struct.cluster_msg, ptr %cmsg, i32 0, i32 3
  %20 = ptrtoint ptr %high to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %14, ptr %high, align 8
  %21 = or i64 %hi, %lo
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %21)
  %22 = icmp eq i64 %21, 0
  %call11 = call fastcc i32 @sendmsg(ptr noundef %1, ptr noundef nonnull %cmsg, i1 noundef zeroext %22)
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then.cleanup_crit_edge ], [ %call11, %if.end4 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cmsg) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @resync_info_get(ptr nocapture noundef readonly %mddev, ptr nocapture noundef writeonly %lo, ptr nocapture noundef writeonly %hi) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %cluster_info = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 101
  %0 = ptrtoint ptr %cluster_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cluster_info, align 8
  %suspend_lock = getelementptr inbounds %struct.md_cluster_info, ptr %1, i32 0, i32 9
  tail call void @_raw_spin_lock_irq(ptr noundef %suspend_lock) #15
  %suspend_lo = getelementptr inbounds %struct.md_cluster_info, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %suspend_lo to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %suspend_lo, align 8
  %4 = ptrtoint ptr %lo to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %3, ptr %lo, align 8
  %suspend_hi = getelementptr inbounds %struct.md_cluster_info, ptr %1, i32 0, i32 11
  %5 = ptrtoint ptr %suspend_hi to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %suspend_hi, align 8
  %7 = ptrtoint ptr %hi to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %hi, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %suspend_lock) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @metadata_update_start(ptr nocapture noundef readonly %mddev) #1 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %cluster_info = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 101
  %0 = ptrtoint ptr %cluster_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cluster_info, align 8
  %state = getelementptr inbounds %struct.md_cluster_info, ptr %1, i32 0, i32 22
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %state, i32 noundef 4) #15
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state, align 4
  %and.i.i = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %test_and_set_bit_lock.exit, label %entry.land.rhs_crit_edge

entry.land.rhs_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.rhs

test_and_set_bit_lock.exit:                       ; preds = %entry
  tail call void @llvm.prefetch.p0(ptr %state, i32 1, i32 3, i32 1) #15
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %state, ptr %state, i32 256, ptr elementtype(i32) %state) #15, !srcloc !310
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !311
  %5 = and i32 %asmresult.i.i.i.i.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %phi.cmp.i.not = icmp eq i32 %5, 0
  br i1 %phi.cmp.i.not, label %test_and_set_bit_lock.exit.if.end29_crit_edge, label %test_and_set_bit_lock.exit.land.rhs_crit_edge

test_and_set_bit_lock.exit.land.rhs_crit_edge:    ; preds = %test_and_set_bit_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.rhs

test_and_set_bit_lock.exit.if.end29_crit_edge:    ; preds = %test_and_set_bit_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end29

land.rhs:                                         ; preds = %test_and_set_bit_lock.exit.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %.b88 = load i1, ptr @metadata_update_start.__already_done, align 1
  br i1 %.b88, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !312

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @metadata_update_start.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1055, i32 noundef 9, ptr noundef null) #15
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %test_and_set_bit_lock.exit.if.end29_crit_edge
  %thread = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 40
  %6 = ptrtoint ptr %thread to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %thread, align 4
  tail call void @md_wakeup_thread(ptr noundef %7) #15
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 1060) #15
  %call45 = tail call i32 @_test_and_set_bit(i32 noundef 4, ptr noundef %state) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end29.do.end65_crit_edge, label %lor.lhs.false

if.end29.do.end65_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end65

lor.lhs.false:                                    ; preds = %if.end29
  %call48 = tail call i32 @_test_and_clear_bit(i32 noundef 5, ptr noundef %state) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end51, label %lor.lhs.false.do.end65_crit_edge

lor.lhs.false.do.end65_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end65

if.end51:                                         ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #15
  %8 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #15
  %wait = getelementptr inbounds %struct.md_cluster_info, ptr %1, i32 0, i32 21
  %call5294 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #15
  %call5495 = call i32 @_test_and_set_bit(i32 noundef 4, ptr noundef %state) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5495)
  %tobool55.not96 = icmp eq i32 %call5495, 0
  br i1 %tobool55.not96, label %if.end51.for.end_crit_edge, label %if.end51.lor.lhs.false56_crit_edge

if.end51.lor.lhs.false56_crit_edge:               ; preds = %if.end51
  br label %lor.lhs.false56

if.end51.for.end_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

lor.lhs.false56:                                  ; preds = %cleanup.lor.lhs.false56_crit_edge, %if.end51.lor.lhs.false56_crit_edge
  %call58 = call i32 @_test_and_clear_bit(i32 noundef 5, ptr noundef %state) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %cleanup, label %lor.lhs.false56.for.end_crit_edge

lor.lhs.false56.for.end_crit_edge:                ; preds = %lor.lhs.false56
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

cleanup:                                          ; preds = %lor.lhs.false56
  call void @schedule() #15
  %call52 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #15
  %call54 = call i32 @_test_and_set_bit(i32 noundef 4, ptr noundef %state) #15
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %cleanup.for.end_crit_edge, label %cleanup.lor.lhs.false56_crit_edge

cleanup.lor.lhs.false56_crit_edge:                ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false56

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %lor.lhs.false56.for.end_crit_edge, %if.end51.for.end_crit_edge
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #15
  br label %do.end65

do.end65:                                         ; preds = %for.end, %lor.lhs.false.do.end65_crit_edge, %if.end29.do.end65_crit_edge
  %token_lockres = getelementptr inbounds %struct.md_cluster_info, ptr %1, i32 0, i32 17
  %9 = ptrtoint ptr %token_lockres to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %token_lockres, align 4
  %mode = getelementptr inbounds %struct.dlm_lock_resource, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %12)
  %cmp = icmp eq i32 %12, 5
  br i1 %cmp, label %if.then67, label %if.end69

if.then67:                                        ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i89 = call zeroext i1 @__kasan_check_write(ptr noundef %state, i32 noundef 4) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !313
  call void @llvm.prefetch.p0(ptr %state, i32 1, i32 3, i32 1) #15
  %13 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %state, ptr %state, i32 256, ptr elementtype(i32) %state) #15, !srcloc !314
  br label %cleanup72

if.end69:                                         ; preds = %do.end65
  %call.i = call fastcc i32 @dlm_lock_sync(ptr noundef %10, i32 noundef 5) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %do.end.i

do.end.i:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #17
  %call1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.97, i32 noundef 673, i32 noundef %call.i) #18
  br label %lock_token.exit

if.else.i:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #17
  %recv_mutex.i = getelementptr inbounds %struct.md_cluster_info, ptr %1, i32 0, i32 4
  call void @mutex_lock_nested(ptr noundef %recv_mutex.i, i32 noundef 0) #15
  br label %lock_token.exit

lock_token.exit:                                  ; preds = %if.else.i, %do.end.i
  %call.i.i90 = call zeroext i1 @__kasan_check_write(ptr noundef %state, i32 noundef 4) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !313
  call void @llvm.prefetch.p0(ptr %state, i32 1, i32 3, i32 1) #15
  %14 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %state, ptr %state, i32 256, ptr elementtype(i32) %state) #15, !srcloc !314
  br label %cleanup72

cleanup72:                                        ; preds = %lock_token.exit, %if.then67
  %retval.0 = phi i32 [ 0, %if.then67 ], [ %call.i, %lock_token.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @metadata_update_finish(ptr noundef readonly %mddev) #1 align 64 {
entry:
  %cmsg = alloca %struct.cluster_msg, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %cluster_info = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 101
  %0 = ptrtoint ptr %cluster_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cluster_info, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cmsg) #15
  %disks = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 4
  %2 = call ptr @memset(ptr %cmsg, i32 0, i32 48)
  %3 = ptrtoint ptr %disks to i32
  call void @__asan_load4_noabort(i32 %3)
  %rdev.027 = load ptr, ptr %disks, align 8
  %cmp.not28 = icmp eq ptr %rdev.027, %disks
  br i1 %cmp.not28, label %entry.do.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %rdev.029 = phi ptr [ %rdev.0, %for.inc.for.body_crit_edge ], [ %rdev.027, %entry.for.body_crit_edge ]
  %raid_disk = getelementptr inbounds %struct.md_rdev, ptr %rdev.029, i32 0, i32 19
  %4 = ptrtoint ptr %raid_disk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %raid_disk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp2 = icmp sgt i32 %5, -1
  br i1 %cmp2, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %flags = getelementptr inbounds %struct.md_rdev, ptr %rdev.029, i32 0, i32 16
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %for.end, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %8 = ptrtoint ptr %rdev.029 to i32
  call void @__asan_load4_noabort(i32 %8)
  %rdev.0 = load ptr, ptr %rdev.029, align 8
  %cmp.not = icmp eq ptr %rdev.0, %disks
  br i1 %cmp.not, label %for.inc.do.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

for.end:                                          ; preds = %land.lhs.true
  %desc_nr = getelementptr inbounds %struct.md_rdev, ptr %rdev.029, i32 0, i32 18
  %9 = ptrtoint ptr %desc_nr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %desc_nr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp8 = icmp sgt i32 %10, -1
  br i1 %cmp8, label %if.then9, label %for.end.do.end_crit_edge

for.end.do.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

if.then9:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %raid_slot10 = getelementptr inbounds %struct.cluster_msg, ptr %cmsg, i32 0, i32 5
  %12 = ptrtoint ptr %raid_slot10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %raid_slot10, align 8
  %call11 = call fastcc i32 @__sendmsg(ptr noundef %1, ptr noundef nonnull %cmsg)
  br label %if.end14

do.end:                                           ; preds = %for.end.do.end_crit_edge, %for.inc.do.end_crit_edge, %entry.do.end_crit_edge
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112) #18
  br label %if.end14

if.end14:                                         ; preds = %do.end, %if.then9
  %ret.0 = phi i32 [ %call11, %if.then9 ], [ 0, %do.end ]
  %state = getelementptr inbounds %struct.md_cluster_info, ptr %1, i32 0, i32 22
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %state) #15
  %token_lockres.i = getelementptr inbounds %struct.md_cluster_info, ptr %1, i32 0, i32 17
  %13 = ptrtoint ptr %token_lockres.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %token_lockres.i, align 4
  %mode.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %14, i32 0, i32 8
  %15 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %16)
  %cmp.not.i = icmp eq i32 %16, 5
  br i1 %cmp.not.i, label %if.end14.unlock_comm.exit_crit_edge, label %do.end.i, !prof !312

if.end14.unlock_comm.exit_crit_edge:              ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  br label %unlock_comm.exit

do.end.i:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 714, i32 noundef 9, ptr noundef null) #15
  br label %unlock_comm.exit

unlock_comm.exit:                                 ; preds = %do.end.i, %if.end14.unlock_comm.exit_crit_edge
  %recv_mutex.i = getelementptr inbounds %struct.md_cluster_info, ptr %1, i32 0, i32 4
  tail call void @mutex_unlock(ptr noundef %recv_mutex.i) #15
  %17 = ptrtoint ptr %token_lockres.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %token_lockres.i, align 4
  %call.i.i = tail call fastcc i32 @dlm_lock_sync(ptr noundef %18, i32 noundef 0) #15
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %state) #15
  %wait.i = getelementptr inbounds %struct.md_cluster_info, ptr %1, i32 0, i32 21
  tail call void @__wake_up(ptr noundef %wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #15
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cmsg) #15
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @metadata_update_cancel(ptr nocapture noundef readonly %mddev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %cluster_info = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 101
  %0 = ptrtoint ptr %cluster_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cluster_info, align 8
  %state = getelementptr inbounds %struct.md_cluster_info, ptr %1, i32 0, i32 22
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %state) #15
  %token_lockres.i = getelementptr inbounds %struct.md_cluster_info, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %token_lockres.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %token_lockres.i, align 4
  %mode.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %5)
  %cmp.not.i = icmp eq i32 %5, 5
  br i1 %cmp.not.i, label %entry.unlock_comm.exit_crit_edge, label %do.end.i, !prof !312

entry.unlock_comm.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %unlock_comm.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 714, i32 noundef 9, ptr noundef null) #15
  br label %unlock_comm.exit

unlock_comm.exit:                                 ; preds = %do.end.i, %entry.unlock_comm.exit_crit_edge
  %recv_mutex.i = getelementptr inbounds %struct.md_cluster_info, ptr %1, i32 0, i32 4
  tail call void @mutex_unlock(ptr noundef %recv_mutex.i) #15
  %6 = ptrtoint ptr %token_lockres.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %token_lockres.i, align 4
  %call.i.i = tail call fastcc i32 @dlm_lock_sync(ptr noundef %7, i32 noundef 0) #15
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %state) #15
  %wait.i = getelementptr inbounds %struct.md_cluster_info, ptr %1, i32 0, i32 21
  tail call void @__wake_up(ptr noundef %wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @resync_start(ptr noundef %mddev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %cluster_info = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 101
  %0 = ptrtoint ptr %cluster_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cluster_info, align 8
  %resync_lockres = getelementptr inbounds %struct.md_cluster_info, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %resync_lockres to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resync_lockres, align 8
  %call = tail call fastcc i32 @dlm_lock_sync_interruptible(ptr noundef %3, i32 noundef 5, ptr noundef %mddev)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @resync_finish(ptr noundef %mddev) #1 align 64 {
entry:
  %cmsg.i = alloca %struct.cluster_msg, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %cluster_info = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 101
  %0 = ptrtoint ptr %cluster_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cluster_info, align 8
  %recovery = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 56
  tail call void @_clear_bit(i32 noundef 12, ptr noundef %recovery) #15
  %flags = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 5
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  %5 = ptrtoint ptr %cluster_info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cluster_info, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cmsg.i) #15
  %7 = call ptr @memset(ptr %cmsg.i, i32 0, i32 48)
  %bitmap_lockres.i = getelementptr inbounds %struct.md_cluster_info, ptr %6, i32 0, i32 5
  %8 = ptrtoint ptr %bitmap_lockres.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bitmap_lockres.i, align 8
  %sb_lvbptr.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %9, i32 0, i32 1, i32 3
  %10 = ptrtoint ptr %sb_lvbptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sb_lvbptr.i, align 4
  %ri.sroa.4.0..sroa_idx.i = getelementptr inbounds i8, ptr %11, i32 8
  %12 = ptrtoint ptr %ri.sroa.4.0..sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 8)
  %ri.sroa.4.0.copyload.i = load i64, ptr %ri.sroa.4.0..sroa_idx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %ri.sroa.4.0.copyload.i)
  %cmp2.i = icmp eq i64 %ri.sroa.4.0.copyload.i, 0
  br i1 %cmp2.i, label %if.then.resync_info_update.exit_crit_edge, label %if.end4.i

if.then.resync_info_update.exit_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %resync_info_update.exit

if.end4.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %13 = call ptr @memset(ptr %11, i32 0, i32 16)
  %14 = ptrtoint ptr %bitmap_lockres.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bitmap_lockres.i, align 8
  %call.i = tail call fastcc i32 @dlm_lock_sync(ptr noundef %15, i32 noundef 4) #15
  %16 = ptrtoint ptr %cmsg.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 16777216, ptr %cmsg.i, align 8
  %low.i = getelementptr inbounds %struct.cluster_msg, ptr %cmsg.i, i32 0, i32 2
  %17 = call ptr @memset(ptr %low.i, i32 0, i32 16)
  %call11.i = call fastcc i32 @sendmsg(ptr noundef %6, ptr noundef nonnull %cmsg.i, i1 noundef zeroext true) #15
  br label %resync_info_update.exit

resync_info_update.exit:                          ; preds = %if.end4.i, %if.then.resync_info_update.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.then.resync_info_update.exit_crit_edge ], [ %call11.i, %if.end4.i ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cmsg.i) #15
  br label %if.end

if.end:                                           ; preds = %resync_info_update.exit, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ 0, %entry.if.end_crit_edge ], [ %retval.0.i, %resync_info_update.exit ]
  %resync_lockres = getelementptr inbounds %struct.md_cluster_info, ptr %1, i32 0, i32 7
  %18 = ptrtoint ptr %resync_lockres to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %resync_lockres, align 8
  %call.i6 = tail call fastcc i32 @dlm_lock_sync(ptr noundef %19, i32 noundef 0) #15
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @area_resyncing(ptr nocapture noundef readonly %mddev, i32 noundef %direction, i64 noundef %lo, i64 noundef %hi) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %cluster_info = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 101
  %0 = ptrtoint ptr %cluster_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cluster_info, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %direction)
  %cmp = icmp eq i32 %direction, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %state = getelementptr inbounds %struct.md_cluster_info, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state, align 4
  %4 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %suspend_lock = getelementptr inbounds %struct.md_cluster_info, ptr %1, i32 0, i32 9
  tail call void @_raw_spin_lock_irq(ptr noundef %suspend_lock) #15
  %suspend_lo = getelementptr inbounds %struct.md_cluster_info, ptr %1, i32 0, i32 10
  %5 = ptrtoint ptr %suspend_lo to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %suspend_lo, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %6, i64 %hi)
  %cmp1 = icmp ult i64 %6, %hi
  br i1 %cmp1, label %land.lhs.true2, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5

land.lhs.true2:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %suspend_hi = getelementptr inbounds %struct.md_cluster_info, ptr %1, i32 0, i32 11
  %7 = ptrtoint ptr %suspend_hi to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %suspend_hi, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %lo)
  %cmp3 = icmp ugt i64 %8, %lo
  %spec.select = zext i1 %cmp3 to i32
  br label %if.end5

if.end5:                                          ; preds = %land.lhs.true2, %if.end.if.end5_crit_edge
  %ret.0 = phi i32 [ 0, %if.end.if.end5_crit_edge ], [ %spec.select, %land.lhs.true2 ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %suspend_lock) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end5 ], [ 1, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @add_new_disk(ptr nocapture noundef readonly %mddev, ptr nocapture noundef readonly %rdev) #1 align 64 {
entry:
  %cmsg = alloca %struct.cluster_msg, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %cluster_info = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 101
  %0 = ptrtoint ptr %cluster_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cluster_info, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cmsg) #15
  %sb_page = getelementptr inbounds %struct.md_rdev, ptr %rdev, i32 0, i32 6
  %2 = ptrtoint ptr %sb_page to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sb_page, align 8
  %call = tail call ptr @page_address(ptr noundef %3) #15
  %device_uuid = getelementptr inbounds %struct.mdp_superblock_1, ptr %call, i32 0, i32 25
  %4 = call ptr @memset(ptr %cmsg, i32 0, i32 48)
  %5 = ptrtoint ptr %cmsg to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 33554432, ptr %cmsg, align 8
  %uuid1 = getelementptr inbounds %struct.cluster_msg, ptr %cmsg, i32 0, i32 4
  %6 = call ptr @memcpy(ptr %uuid1, ptr %device_uuid, i32 16)
  %desc_nr = getelementptr inbounds %struct.md_rdev, ptr %rdev, i32 0, i32 18
  %7 = ptrtoint ptr %desc_nr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %desc_nr, align 8
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %raid_slot = getelementptr inbounds %struct.cluster_msg, ptr %cmsg, i32 0, i32 5
  %10 = ptrtoint ptr %raid_slot to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %raid_slot, align 8
  %call3 = tail call fastcc i32 @lock_comm(ptr noundef %1, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = call fastcc i32 @__sendmsg(ptr noundef %1, ptr noundef nonnull %cmsg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end
  %token_lockres.i = getelementptr inbounds %struct.md_cluster_info, ptr %1, i32 0, i32 17
  %11 = ptrtoint ptr %token_lockres.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %token_lockres.i, align 4
  %mode.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %12, i32 0, i32 8
  %13 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %14)
  %cmp.not.i = icmp eq i32 %14, 5
  br i1 %cmp.not.i, label %if.then6.unlock_comm.exit_crit_edge, label %do.end.i, !prof !312

if.then6.unlock_comm.exit_crit_edge:              ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #17
  br label %unlock_comm.exit

do.end.i:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 714, i32 noundef 9, ptr noundef null) #15
  br label %unlock_comm.exit

unlock_comm.exit:                                 ; preds = %do.end.i, %if.then6.unlock_comm.exit_crit_edge
  %recv_mutex.i = getelementptr inbounds %struct.md_cluster_info, ptr %1, i32 0, i32 4
  tail call void @mutex_unlock(ptr noundef %recv_mutex.i) #15
  %15 = ptrtoint ptr %token_lockres.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %token_lockres.i, align 4
  %call.i.i = tail call fastcc i32 @dlm_lock_sync(ptr noundef %16, i32 noundef 0) #15
  %state.i = getelementptr inbounds %struct.md_cluster_info, ptr %1, i32 0, i32 22
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %state.i) #15
  br label %cleanup.sink.split

if.end7:                                          ; preds = %if.end
  %no_new_dev_lockres = getelementptr inbounds %struct.md_cluster_info, ptr %1, i32 0, i32 18
  %17 = ptrtoint ptr %no_new_dev_lockres to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %no_new_dev_lockres, align 8
  %flags = getelementptr inbounds %struct.dlm_lock_resource, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags, align 4
  %or = or i32 %20, 1
  store i32 %or, ptr %flags, align 4
  %21 = load ptr, ptr %no_new_dev_lockres, align 8
  %call9 = tail call fastcc i32 @dlm_lock_sync(ptr noundef %21, i32 noundef 5)
  %22 = ptrtoint ptr %no_new_dev_lockres to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %no_new_dev_lockres, align 8
  %flags11 = getelementptr inbounds %struct.dlm_lock_resource, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %flags11 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags11, align 4
  %and = and i32 %25, -2
  store i32 %and, ptr %flags11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call9)
  %cmp = icmp eq i32 %call9, -11
  %spec.store.select = select i1 %cmp, i32 -2, i32 %call9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select)
  %tobool14.not = icmp eq i32 %spec.store.select, 0
  br i1 %tobool14.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.end7
  %token_lockres.i37 = getelementptr inbounds %struct.md_cluster_info, ptr %1, i32 0, i32 17
  %26 = ptrtoint ptr %token_lockres.i37 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %token_lockres.i37, align 4
  %mode.i38 = getelementptr inbounds %struct.dlm_lock_resource, ptr %27, i32 0, i32 8
  %28 = ptrtoint ptr %mode.i38 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mode.i38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %29)
  %cmp.not.i39 = icmp eq i32 %29, 5
  br i1 %cmp.not.i39, label %if.then15.unlock_comm.exit45_crit_edge, label %do.end.i40, !prof !312

if.then15.unlock_comm.exit45_crit_edge:           ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #17
  br label %unlock_comm.exit45

do.end.i40:                                       ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 714, i32 noundef 9, ptr noundef null) #15
  br label %unlock_comm.exit45

unlock_comm.exit45:                               ; preds = %do.end.i40, %if.then15.unlock_comm.exit45_crit_edge
  %recv_mutex.i41 = getelementptr inbounds %struct.md_cluster_info, ptr %1, i32 0, i32 4
  tail call void @mutex_unlock(ptr noundef %recv_mutex.i41) #15
  %30 = ptrtoint ptr %token_lockres.i37 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %token_lockres.i37, align 4
  %call.i.i42 = tail call fastcc i32 @dlm_lock_sync(ptr noundef %31, i32 noundef 0) #15
  %state.i43 = getelementptr inbounds %struct.md_cluster_info, ptr %1, i32 0, i32 22
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %state.i43) #15
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  %32 = ptrtoint ptr %no_new_dev_lockres to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %no_new_dev_lockres, align 8
  %call17 = tail call fastcc i32 @dlm_lock_sync(ptr noundef %33, i32 noundef 1)
  %state = getelementptr inbounds %struct.md_cluster_info, ptr %1, i32 0, i32 22
  tail call void @_set_bit(i32 noundef 5, ptr noundef %state) #15
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else, %unlock_comm.exit45, %unlock_comm.exit
  %retval.0.ph = phi i32 [ %spec.store.select, %unlock_comm.exit45 ], [ 0, %if.else ], [ %call4, %unlock_comm.exit ]
  %wait.i44 = getelementptr inbounds %struct.md_cluster_info, ptr %1, i32 0, i32 21
  tail call void @__wake_up(ptr noundef %wait.i44, i32 noundef 3, i32 noundef 1, ptr noundef null) #15
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -11, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cmsg) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @add_new_disk_cancel(ptr nocapture noundef readonly %mddev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %cluster_info = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 101
  %0 = ptrtoint ptr %cluster_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cluster_info, align 8
  %state = getelementptr inbounds %struct.md_cluster_info, ptr %1, i32 0, i32 22
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %state) #15
  %token_lockres.i = getelementptr inbounds %struct.md_cluster_info, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %token_lockres.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %token_lockres.i, align 4
  %mode.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %5)
  %cmp.not.i = icmp eq i32 %5, 5
  br i1 %cmp.not.i, label %entry.unlock_comm.exit_crit_edge, label %do.end.i, !prof !312

entry.unlock_comm.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %unlock_comm.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 714, i32 noundef 9, ptr noundef null) #15
  br label %unlock_comm.exit

unlock_comm.exit:                                 ; preds = %do.end.i, %entry.unlock_comm.exit_crit_edge
  %recv_mutex.i = getelementptr inbounds %struct.md_cluster_info, ptr %1, i32 0, i32 4
  tail call void @mutex_unlock(ptr noundef %recv_mutex.i) #15
  %6 = ptrtoint ptr %token_lockres.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %token_lockres.i, align 4
  %call.i.i = tail call fastcc i32 @dlm_lock_sync(ptr noundef %7, i32 noundef 0) #15
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %state) #15
  %wait.i = getelementptr inbounds %struct.md_cluster_info, ptr %1, i32 0, i32 21
  tail call void @__wake_up(ptr noundef %wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @new_disk_ack(ptr nocapture noundef readonly %mddev, i1 noundef zeroext %ack) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %cluster_info = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 101
  %0 = ptrtoint ptr %cluster_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cluster_info, align 8
  %state = getelementptr inbounds %struct.md_cluster_info, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %gendisk.i = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 11
  %5 = ptrtoint ptr %gendisk.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %gendisk.i, align 8
  %tobool.not.i = icmp eq ptr %6, null
  %disk_name.i = getelementptr inbounds %struct.gendisk, ptr %6, i32 0, i32 3
  %spec.select.i = select i1 %tobool.not.i, ptr @.str.116, ptr %disk_name.i
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, ptr noundef %spec.select.i) #18
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %ack, label %if.then4, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %no_new_dev_lockres = getelementptr inbounds %struct.md_cluster_info, ptr %1, i32 0, i32 18
  %7 = ptrtoint ptr %no_new_dev_lockres to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %no_new_dev_lockres, align 8
  %call.i = tail call fastcc i32 @dlm_lock_sync(ptr noundef %8, i32 noundef 0) #15
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %newdisk_completion = getelementptr inbounds %struct.md_cluster_info, ptr %1, i32 0, i32 20
  tail call void @complete(ptr noundef %newdisk_completion) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %do.end
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @remove_disk(ptr nocapture noundef readonly %mddev, ptr nocapture noundef readonly %rdev) #1 align 64 {
entry:
  %cmsg = alloca %struct.cluster_msg, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cmsg) #15
  %0 = call ptr @memset(ptr %cmsg, i32 0, i32 48)
  %cluster_info = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 101
  %1 = ptrtoint ptr %cluster_info to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cluster_info, align 8
  %3 = ptrtoint ptr %cmsg to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 50331648, ptr %cmsg, align 8
  %desc_nr = getelementptr inbounds %struct.md_rdev, ptr %rdev, i32 0, i32 18
  %4 = ptrtoint ptr %desc_nr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %desc_nr, align 8
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %raid_slot = getelementptr inbounds %struct.cluster_msg, ptr %cmsg, i32 0, i32 5
  %7 = ptrtoint ptr %raid_slot to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %raid_slot, align 8
  %call = call fastcc i32 @sendmsg(ptr noundef %2, ptr noundef nonnull %cmsg, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cmsg) #15
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @load_bitmaps(ptr noundef %mddev, i32 noundef %total_slots) #1 align 64 {
entry:
  %str.i = alloca [64 x i8], align 1
  %lo.i = alloca i64, align 8
  %hi.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %cluster_info = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 101
  %0 = ptrtoint ptr %cluster_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cluster_info, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %str.i) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %lo.i) #15
  %2 = ptrtoint ptr %lo.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %lo.i, align 8, !annotation !309
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %hi.i) #15
  %3 = ptrtoint ptr %hi.i to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %hi.i, align 8, !annotation !309
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %total_slots)
  %cmp70.i = icmp sgt i32 %total_slots, 0
  br i1 %cmp70.i, label %for.body.lr.ph.i, label %gather_all_resync_info.exit.thread12

gather_all_resync_info.exit.thread12:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %hi.i) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %lo.i) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %str.i) #15
  br label %if.end

for.body.lr.ph.i:                                 ; preds = %entry
  %slot_number.i = getelementptr inbounds %struct.md_cluster_info, ptr %1, i32 0, i32 2
  %recovery_cp.i = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 67
  %recovery.i = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 56
  %suspend_lo.i = getelementptr inbounds %struct.md_cluster_info, ptr %1, i32 0, i32 10
  %suspend_hi.i = getelementptr inbounds %struct.md_cluster_info, ptr %1, i32 0, i32 11
  %suspend_from.i = getelementptr inbounds %struct.md_cluster_info, ptr %1, i32 0, i32 12
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %ret.074.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %ret.1.i, %for.inc.i.for.body.i_crit_edge ]
  %i.071.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %4 = call ptr @memset(ptr %str.i, i32 0, i32 64)
  %call.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %str.i, i32 noundef 64, ptr noundef nonnull @.str.34, i32 noundef %i.071.i) #15
  %call3.i = call fastcc ptr @lockres_init(ptr noundef %mddev, ptr noundef nonnull %str.i, ptr noundef null, i32 noundef 1) #15
  %tobool.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool.not.i, label %for.body.i.gather_all_resync_info.exit.thread_crit_edge, label %if.end.i

for.body.i.gather_all_resync_info.exit.thread_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %gather_all_resync_info.exit.thread

if.end.i:                                         ; preds = %for.body.i
  %5 = ptrtoint ptr %slot_number.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %slot_number.i, align 8
  %sub.i = add i32 %6, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.071.i, i32 %sub.i)
  %cmp4.i = icmp eq i32 %i.071.i, %sub.i
  br i1 %cmp4.i, label %if.end.i.for.inc.i_crit_edge, label %if.end6.i

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.end6.i:                                        ; preds = %if.end.i
  %flags.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %call3.i, i32 0, i32 3
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %8, 1
  store i32 %or.i, ptr %flags.i, align 4
  %call7.i = call fastcc i32 @dlm_lock_sync(ptr noundef nonnull %call3.i, i32 noundef 4) #15
  %9 = zext i32 %call7.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call7.i, label %if.then17.i [
    i32 -11, label %if.then9.i
    i32 0, label %if.end18.i
  ]

if.then9.i:                                       ; preds = %if.end6.i
  %10 = ptrtoint ptr %cluster_info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cluster_info, align 8
  %call.i.i = call fastcc i32 @dlm_lock_sync(ptr noundef nonnull %call3.i, i32 noundef 1) #15
  %sb_lvbptr.i.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %call3.i, i32 0, i32 1, i32 3
  %12 = ptrtoint ptr %sb_lvbptr.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sb_lvbptr.i.i, align 4
  %ri.sroa.5.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %13, i32 8
  %14 = ptrtoint ptr %ri.sroa.5.0..sroa_idx.i.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 8)
  %ri.sroa.5.0.copyload.i.i = load i64, ptr %ri.sroa.5.0..sroa_idx.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %ri.sroa.5.0.copyload.i.i)
  %cmp.not.i.i = icmp eq i64 %ri.sroa.5.0.copyload.i.i, 0
  br i1 %cmp.not.i.i, label %read_resync_info.exit.thread.i, label %do.end.i

read_resync_info.exit.thread.i:                   ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i68.i = call fastcc i32 @dlm_lock_sync(ptr noundef nonnull %call3.i, i32 noundef 0) #15
  br label %for.inc.i

do.end.i:                                         ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #17
  %15 = call i64 @llvm.bswap.i64(i64 %ri.sroa.5.0.copyload.i.i) #15
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 8)
  %ri.sroa.0.0.copyload.i.i = load i64, ptr %13, align 1
  %suspend_hi.i.i = getelementptr inbounds %struct.md_cluster_info, ptr %11, i32 0, i32 11
  %17 = ptrtoint ptr %suspend_hi.i.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %15, ptr %suspend_hi.i.i, align 8
  %18 = call i64 @llvm.bswap.i64(i64 %ri.sroa.0.0.copyload.i.i) #15
  %suspend_lo.i.i = getelementptr inbounds %struct.md_cluster_info, ptr %11, i32 0, i32 10
  %19 = ptrtoint ptr %suspend_lo.i.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %suspend_lo.i.i, align 8
  %call.i.i.i = call fastcc i32 @dlm_lock_sync(ptr noundef nonnull %call3.i, i32 noundef 0) #15
  %20 = ptrtoint ptr %suspend_lo.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %suspend_lo.i, align 8
  %22 = ptrtoint ptr %suspend_hi.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %suspend_hi.i, align 8
  %call13.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.120, i32 noundef 825, i64 noundef %21, i64 noundef %23, i32 noundef %i.071.i) #18
  %24 = ptrtoint ptr %suspend_from.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %i.071.i, ptr %suspend_from.i, align 8
  br label %for.inc.i

if.then17.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #17
  call fastcc void @lockres_free(ptr noundef nonnull %call3.i) #15
  br label %gather_all_resync_info.exit.thread

if.end18.i:                                       ; preds = %if.end6.i
  %call19.i = call i32 @md_bitmap_copy_from_slot(ptr noundef %mddev, i32 noundef %i.071.i, ptr noundef nonnull %lo.i, ptr noundef nonnull %hi.i, i1 noundef zeroext false) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %if.end27.i, label %do.end24.i

do.end24.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #17
  %call26.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122, i32 noundef %i.071.i) #18
  br label %for.inc.i

if.end27.i:                                       ; preds = %if.end18.i
  %25 = ptrtoint ptr %hi.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %hi.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %26)
  %cmp28.not.i = icmp eq i64 %26, 0
  br i1 %cmp28.not.i, label %if.end27.i.for.inc.i_crit_edge, label %land.lhs.true.i

if.end27.i.for.inc.i_crit_edge:                   ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %if.end27.i
  %27 = ptrtoint ptr %lo.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %lo.i, align 8
  %29 = ptrtoint ptr %recovery_cp.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %recovery_cp.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %28, i64 %30)
  %cmp29.i = icmp ult i64 %28, %30
  br i1 %cmp29.i, label %if.then30.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.then30.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @_set_bit(i32 noundef 5, ptr noundef %recovery.i) #15
  %31 = ptrtoint ptr %lo.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %lo.i, align 8
  %33 = ptrtoint ptr %recovery_cp.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %recovery_cp.i, align 8
  call void @md_check_recovery(ptr noundef %mddev) #15
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then30.i, %land.lhs.true.i.for.inc.i_crit_edge, %if.end27.i.for.inc.i_crit_edge, %do.end24.i, %do.end.i, %read_resync_info.exit.thread.i, %if.end.i.for.inc.i_crit_edge
  %ret.1.i = phi i32 [ %call19.i, %do.end24.i ], [ %ret.074.i, %if.end.i.for.inc.i_crit_edge ], [ 0, %read_resync_info.exit.thread.i ], [ 0, %do.end.i ], [ 0, %if.then30.i ], [ 0, %land.lhs.true.i.for.inc.i_crit_edge ], [ 0, %if.end27.i.for.inc.i_crit_edge ]
  call fastcc void @lockres_free(ptr noundef nonnull %call3.i) #15
  %inc.i = add nuw nsw i32 %i.071.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %total_slots
  br i1 %exitcond.not.i, label %gather_all_resync_info.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

gather_all_resync_info.exit.thread:               ; preds = %if.then17.i, %for.body.i.gather_all_resync_info.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %hi.i) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %lo.i) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %str.i) #15
  br label %do.end

gather_all_resync_info.exit:                      ; preds = %for.inc.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %hi.i) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %lo.i) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %str.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i)
  %tobool.not = icmp eq i32 %ret.1.i, 0
  br i1 %tobool.not, label %gather_all_resync_info.exit.if.end_crit_edge, label %gather_all_resync_info.exit.do.end_crit_edge

gather_all_resync_info.exit.do.end_crit_edge:     ; preds = %gather_all_resync_info.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

gather_all_resync_info.exit.if.end_crit_edge:     ; preds = %gather_all_resync_info.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.end:                                           ; preds = %gather_all_resync_info.exit.do.end_crit_edge, %gather_all_resync_info.exit.thread
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117) #18
  br label %if.end

if.end:                                           ; preds = %do.end, %gather_all_resync_info.exit.if.end_crit_edge, %gather_all_resync_info.exit.thread12
  %state = getelementptr inbounds %struct.md_cluster_info, ptr %1, i32 0, i32 22
  call void @_set_bit(i32 noundef 6, ptr noundef %state) #15
  %call3 = call i32 @_test_and_clear_bit(i32 noundef 7, ptr noundef %state) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end.if.end6_crit_edge, label %if.then5

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %recv_thread = getelementptr inbounds %struct.md_cluster_info, ptr %1, i32 0, i32 19
  %34 = ptrtoint ptr %recv_thread to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %recv_thread, align 4
  call void @md_wakeup_thread(ptr noundef %35) #15
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gather_bitmaps(ptr nocapture noundef readonly %rdev) #1 align 64 {
entry:
  %lo = alloca i64, align 8
  %hi = alloca i64, align 8
  %cmsg = alloca %struct.cluster_msg, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %lo) #15
  %0 = ptrtoint ptr %lo to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %lo, align 8, !annotation !309
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %hi) #15
  %1 = ptrtoint ptr %hi to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %hi, align 8, !annotation !309
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cmsg) #15
  %2 = call ptr @memset(ptr %cmsg, i32 0, i32 48)
  %mddev1 = getelementptr inbounds %struct.md_rdev, ptr %rdev, i32 0, i32 2
  %3 = ptrtoint ptr %mddev1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mddev1, align 8
  %cluster_info = getelementptr inbounds %struct.mddev, ptr %4, i32 0, i32 101
  %5 = ptrtoint ptr %cluster_info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cluster_info, align 8
  %7 = ptrtoint ptr %cmsg to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 67108864, ptr %cmsg, align 8
  %desc_nr = getelementptr inbounds %struct.md_rdev, ptr %rdev, i32 0, i32 18
  %8 = ptrtoint ptr %desc_nr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %desc_nr, align 8
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %raid_slot = getelementptr inbounds %struct.cluster_msg, ptr %cmsg, i32 0, i32 5
  %11 = ptrtoint ptr %raid_slot to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %raid_slot, align 8
  %call = call fastcc i32 @sendmsg(ptr noundef %6, ptr noundef nonnull %cmsg, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

for.cond.preheader:                               ; preds = %entry
  %nodes = getelementptr inbounds %struct.mddev, ptr %4, i32 0, i32 86, i32 10
  %12 = ptrtoint ptr %nodes to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nodes, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp28 = icmp sgt i32 %13, 0
  br i1 %cmp28, label %for.body.lr.ph, label %for.cond.preheader.out_crit_edge

for.cond.preheader.out_crit_edge:                 ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %slot_number = getelementptr inbounds %struct.md_cluster_info, ptr %6, i32 0, i32 2
  %recovery_cp = getelementptr inbounds %struct.mddev, ptr %4, i32 0, i32 67
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %sn.029 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %14 = ptrtoint ptr %slot_number to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %slot_number, align 8
  %sub = add i32 %15, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sn.029, i32 %sub)
  %cmp2 = icmp eq i32 %sn.029, %sub
  br i1 %cmp2, label %for.body.for.inc_crit_edge, label %if.end4

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end4:                                          ; preds = %for.body
  %call5 = call i32 @md_bitmap_copy_from_slot(ptr noundef %4, i32 noundef %sn.029, ptr noundef nonnull %lo, ptr noundef nonnull %hi, i1 noundef zeroext false) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end9, label %do.end

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122, i32 noundef %sn.029) #18
  br label %out

if.end9:                                          ; preds = %if.end4
  %16 = ptrtoint ptr %hi to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %hi, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %17)
  %cmp10.not = icmp eq i64 %17, 0
  br i1 %cmp10.not, label %if.end9.for.inc_crit_edge, label %land.lhs.true

if.end9.for.inc_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end9
  %18 = ptrtoint ptr %lo to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %lo, align 8
  %20 = ptrtoint ptr %recovery_cp to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %recovery_cp, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %19, i64 %21)
  %cmp11 = icmp ult i64 %19, %21
  br i1 %cmp11, label %if.then12, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then12:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %22 = ptrtoint ptr %recovery_cp to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %19, ptr %recovery_cp, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.then12, %land.lhs.true.for.inc_crit_edge, %if.end9.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %sn.029, 1
  %23 = ptrtoint ptr %nodes to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nodes, align 8
  %cmp = icmp slt i32 %inc, %24
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.out_crit_edge

for.inc.out_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

out:                                              ; preds = %for.inc.out_crit_edge, %do.end, %for.cond.preheader.out_crit_edge, %entry.out_crit_edge
  %err.2 = phi i32 [ %call, %entry.out_crit_edge ], [ %call5, %do.end ], [ 0, %for.cond.preheader.out_crit_edge ], [ 0, %for.inc.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cmsg) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %hi) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %lo) #15
  ret i32 %err.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @resize_bitmaps(ptr noundef %mddev, i64 noundef %newsize, i64 noundef %oldsize) #1 align 64 {
entry:
  %cmsg.i63 = alloca %struct.cluster_msg, align 8
  %cmsg.i = alloca %struct.cluster_msg, align 8
  %str = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %str) #15
  %0 = call ptr @memset(ptr %str, i32 255, i32 64)
  %bitmap1 = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 85
  %1 = ptrtoint ptr %bitmap1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bitmap1, align 4
  %pages = getelementptr inbounds %struct.bitmap_counts, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pages, align 8
  %cluster_info.i = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 101
  %5 = ptrtoint ptr %cluster_info.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cluster_info.i, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cmsg.i) #15
  %7 = call ptr @memset(ptr %cmsg.i, i32 0, i32 48)
  %8 = ptrtoint ptr %cmsg.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 117440512, ptr %cmsg.i, align 8
  %9 = tail call i64 @llvm.bswap.i64(i64 %newsize) #15
  %high.i = getelementptr inbounds %struct.cluster_msg, ptr %cmsg.i, i32 0, i32 3
  %10 = ptrtoint ptr %high.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %high.i, align 8
  %call.i = call fastcc i32 @sendmsg(ptr noundef %6, ptr noundef nonnull %cmsg.i, i1 noundef zeroext false) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %update_bitmap_size.exit, label %update_bitmap_size.exit.thread

update_bitmap_size.exit.thread:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.131, i32 noundef 1118, i32 noundef %call.i) #18
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cmsg.i) #15
  br label %cleanup

update_bitmap_size.exit:                          ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cmsg.i) #15
  %nodes = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 86, i32 10
  %11 = ptrtoint ptr %nodes to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nodes, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp76 = icmp sgt i32 %12, 0
  br i1 %cmp76, label %update_bitmap_size.exit.for.body_crit_edge, label %update_bitmap_size.exit.cleanup_crit_edge

update_bitmap_size.exit.cleanup_crit_edge:        ; preds = %update_bitmap_size.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

update_bitmap_size.exit.for.body_crit_edge:       ; preds = %update_bitmap_size.exit
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %update_bitmap_size.exit.for.body_crit_edge
  %i.077 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %update_bitmap_size.exit.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @md_cluster_ops to i32))
  %13 = load ptr, ptr @md_cluster_ops, align 4
  %slot_number = getelementptr inbounds %struct.md_cluster_operations, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %slot_number to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %slot_number, align 4
  %call3 = call i32 %15(ptr noundef %mddev) #15
  call void @__sanitizer_cov_trace_cmp4(i32 %i.077, i32 %call3)
  %cmp4 = icmp eq i32 %i.077, %call3
  br i1 %cmp4, label %for.body.for.inc_crit_edge, label %if.end6

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end6:                                          ; preds = %for.body
  %call7 = call ptr @get_bitmap_from_slot(ptr noundef %mddev, i32 noundef %i.077) #15
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end11

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.125, i32 noundef %i.077) #18
  br label %out

if.end11:                                         ; preds = %if.end6
  %call13 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %str, i32 noundef 64, ptr noundef nonnull @.str.34, i32 noundef %i.077)
  %call15 = call fastcc ptr @lockres_init(ptr noundef %mddev, ptr noundef nonnull %str, ptr noundef null, i32 noundef 1)
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %do.end20, label %if.end24

do.end20:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  %call23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128, ptr noundef nonnull %str) #18
  br label %out

if.end24:                                         ; preds = %if.end11
  %flags = getelementptr inbounds %struct.dlm_lock_resource, ptr %call15, i32 0, i32 3
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags, align 4
  %or = or i32 %17, 1
  store i32 %or, ptr %flags, align 4
  %call25 = call fastcc i32 @dlm_lock_sync(ptr noundef nonnull %call15, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.then27, label %if.end24.if.end29_crit_edge

if.end24.if.end29_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end29

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #17
  %pages28 = getelementptr inbounds %struct.bitmap_counts, ptr %call7, i32 0, i32 2
  %18 = ptrtoint ptr %pages28 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %4, ptr %pages28, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.end24.if.end29_crit_edge
  call fastcc void @lockres_free(ptr noundef nonnull %call15)
  %pages30 = getelementptr inbounds %struct.bitmap_counts, ptr %call7, i32 0, i32 2
  %19 = ptrtoint ptr %pages30 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pages30, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %20)
  %cmp31.not = icmp eq i32 %4, %20
  br i1 %cmp31.not, label %if.end33, label %if.end29.out_crit_edge

if.end29.out_crit_edge:                           ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end33:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #17
  call void @md_bitmap_free(ptr noundef %call7) #15
  br label %for.inc

for.inc:                                          ; preds = %if.end33, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.077, 1
  %21 = ptrtoint ptr %nodes to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nodes, align 8
  %cmp = icmp slt i32 %inc, %22
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

out:                                              ; preds = %if.end29.out_crit_edge, %do.end20, %do.end
  %bitmap.0 = phi ptr [ null, %do.end ], [ %call7, %do.end20 ], [ %call7, %if.end29.out_crit_edge ]
  call void @md_bitmap_free(ptr noundef %bitmap.0) #15
  %23 = ptrtoint ptr %cluster_info.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cluster_info.i, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cmsg.i63) #15
  %25 = call ptr @memset(ptr %cmsg.i63, i32 0, i32 48)
  %26 = ptrtoint ptr %cmsg.i63 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 117440512, ptr %cmsg.i63, align 8
  %27 = call i64 @llvm.bswap.i64(i64 %oldsize) #15
  %high.i65 = getelementptr inbounds %struct.cluster_msg, ptr %cmsg.i63, i32 0, i32 3
  %28 = ptrtoint ptr %high.i65 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %27, ptr %high.i65, align 8
  %call.i66 = call fastcc i32 @sendmsg(ptr noundef %24, ptr noundef nonnull %cmsg.i63, i1 noundef zeroext false) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i66)
  %tobool.not.i67 = icmp eq i32 %call.i66, 0
  br i1 %tobool.not.i67, label %out.update_bitmap_size.exit70_crit_edge, label %do.end.i69

out.update_bitmap_size.exit70_crit_edge:          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  br label %update_bitmap_size.exit70

do.end.i69:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  %call1.i68 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.131, i32 noundef 1118, i32 noundef %call.i66) #18
  br label %update_bitmap_size.exit70

update_bitmap_size.exit70:                        ; preds = %do.end.i69, %out.update_bitmap_size.exit70_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cmsg.i63) #15
  br label %cleanup

cleanup:                                          ; preds = %update_bitmap_size.exit70, %for.inc.cleanup_crit_edge, %update_bitmap_size.exit.cleanup_crit_edge, %update_bitmap_size.exit.thread
  %retval.0 = phi i32 [ -1, %update_bitmap_size.exit70 ], [ %call.i, %update_bitmap_size.exit.thread ], [ 0, %update_bitmap_size.exit.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %str) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lock_all_bitmaps(ptr noundef %mddev) #1 align 64 {
entry:
  %str = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %str) #15
  %cluster_info = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 101
  %0 = ptrtoint ptr %cluster_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cluster_info, align 8
  %nodes = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 86, i32 10
  %2 = ptrtoint ptr %nodes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nodes, align 8
  %sub = add i32 %3, -1
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %sub, i32 4) #15
  %5 = extractvalue { i32, i1 } %4, 1
  br i1 %5, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !315

kcalloc.exit.thread:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %other_bitmap_lockres51 = getelementptr inbounds %struct.md_cluster_info, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %other_bitmap_lockres51 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %other_bitmap_lockres51, align 4
  br label %do.end

if.end7.i.i:                                      ; preds = %entry
  %7 = extractvalue { i32, i1 } %4, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %7, i32 noundef 3520) #20
  %other_bitmap_lockres = getelementptr inbounds %struct.md_cluster_info, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %other_bitmap_lockres to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call8.i.i, ptr %other_bitmap_lockres, align 4
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.do.end_crit_edge, label %if.end

if.end7.i.i.do.end_crit_edge:                     ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

do.end:                                           ; preds = %if.end7.i.i.do.end_crit_edge, %kcalloc.exit.thread
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.132) #18
  br label %cleanup

if.end:                                           ; preds = %if.end7.i.i
  %9 = ptrtoint ptr %cluster_info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cluster_info, align 8
  %slot_number.i = getelementptr inbounds %struct.md_cluster_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %slot_number.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %slot_number.i, align 8
  %sub.i = add i32 %12, -1
  %13 = ptrtoint ptr %nodes to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nodes, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp58 = icmp sgt i32 %14, 0
  br i1 %cmp58, label %if.end.for.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.062 = phi i32 [ %i.1, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %held.061 = phi i32 [ %held.2, %for.inc.for.body_crit_edge ], [ 1, %if.end.for.body_crit_edge ]
  %slot.059 = phi i32 [ %inc27, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %slot.059, i32 %sub.i)
  %cmp6 = icmp eq i32 %slot.059, %sub.i
  br i1 %cmp6, label %for.body.for.inc_crit_edge, label %if.end8

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end8:                                          ; preds = %for.body
  %15 = call ptr @memset(ptr %str, i32 0, i32 64)
  %call10 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %str, i32 noundef 64, ptr noundef nonnull @.str.34, i32 noundef %slot.059)
  %call12 = call fastcc ptr @lockres_init(ptr noundef %mddev, ptr noundef nonnull %str, ptr noundef null, i32 noundef 1)
  %16 = ptrtoint ptr %other_bitmap_lockres to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %other_bitmap_lockres, align 4
  %arrayidx = getelementptr ptr, ptr %17, i32 %i.062
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call12, ptr %arrayidx, align 4
  %19 = load ptr, ptr %other_bitmap_lockres, align 4
  %arrayidx15 = getelementptr ptr, ptr %19, i32 %i.062
  %20 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx15, align 4
  %tobool16.not = icmp eq ptr %21, null
  br i1 %tobool16.not, label %if.end8.cleanup_crit_edge, label %if.end18

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end18:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  %flags = getelementptr inbounds %struct.dlm_lock_resource, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags, align 4
  %or = or i32 %23, 1
  store i32 %or, ptr %flags, align 4
  %24 = ptrtoint ptr %other_bitmap_lockres to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %other_bitmap_lockres, align 4
  %arrayidx22 = getelementptr ptr, ptr %25, i32 %i.062
  %26 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx22, align 4
  %call23 = call fastcc i32 @dlm_lock_sync(ptr noundef %27, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  %spec.select = select i1 %tobool24.not, i32 %held.061, i32 -1
  %inc = add i32 %i.062, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end18, %for.body.for.inc_crit_edge
  %held.2 = phi i32 [ %held.061, %for.body.for.inc_crit_edge ], [ %spec.select, %if.end18 ]
  %i.1 = phi i32 [ %i.062, %for.body.for.inc_crit_edge ], [ %inc, %if.end18 ]
  %inc27 = add nuw nsw i32 %slot.059, 1
  %28 = ptrtoint ptr %nodes to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nodes, align 8
  %cmp = icmp slt i32 %inc27, %29
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ 1, %if.end.cleanup_crit_edge ], [ -12, %if.end8.cleanup_crit_edge ], [ %held.2, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %str) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @unlock_all_bitmaps(ptr nocapture noundef readonly %mddev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %cluster_info = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 101
  %0 = ptrtoint ptr %cluster_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cluster_info, align 8
  %other_bitmap_lockres = getelementptr inbounds %struct.md_cluster_info, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %other_bitmap_lockres to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %other_bitmap_lockres, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %for.cond.preheader

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

for.cond.preheader:                               ; preds = %entry
  %nodes = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 86, i32 10
  %4 = ptrtoint ptr %nodes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nodes, align 8
  %sub17 = add i32 %5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub17)
  %cmp18 = icmp sgt i32 %sub17, 0
  br i1 %cmp18, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.019 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %6 = ptrtoint ptr %other_bitmap_lockres to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %other_bitmap_lockres, align 4
  %arrayidx = getelementptr ptr, ptr %7, i32 %i.019
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %tobool2.not = icmp eq ptr %9, null
  br i1 %tobool2.not, label %for.body.for.inc_crit_edge, label %if.then3

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then3:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @lockres_free(ptr noundef nonnull %9)
  br label %for.inc

for.inc:                                          ; preds = %if.then3, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.019, 1
  %10 = ptrtoint ptr %nodes to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nodes, align 8
  %sub = add i32 %11, -1
  %cmp = icmp slt i32 %inc, %sub
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %12 = ptrtoint ptr %other_bitmap_lockres to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %other_bitmap_lockres, align 4
  tail call void @kfree(ptr noundef %13) #15
  %14 = ptrtoint ptr %other_bitmap_lockres to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %other_bitmap_lockres, align 4
  br label %if.end8

if.end8:                                          ; preds = %for.end, %entry.if.end8_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @update_size(ptr noundef %mddev, i64 noundef %old_dev_sectors) #1 align 64 {
entry:
  %str.i = alloca [64 x i8], align 1
  %cmsg = alloca %struct.cluster_msg, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %cluster_info = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 101
  %0 = ptrtoint ptr %cluster_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cluster_info, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cmsg) #15
  tail call void @md_update_sb(ptr noundef %mddev, i32 noundef 1) #15
  %call = tail call fastcc i32 @lock_comm(ptr noundef %1, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.135) #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %disks = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 4
  %2 = call ptr @memset(ptr %cmsg, i32 0, i32 48)
  %3 = ptrtoint ptr %disks to i32
  call void @__asan_load4_noabort(i32 %3)
  %rdev.0112 = load ptr, ptr %disks, align 8
  %cmp.not113 = icmp eq ptr %rdev.0112, %disks
  br i1 %cmp.not113, label %if.end.do.end28_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.do.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end28

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %rdev.0114 = phi ptr [ %rdev.0, %for.inc.for.body_crit_edge ], [ %rdev.0112, %if.end.for.body_crit_edge ]
  %raid_disk = getelementptr inbounds %struct.md_rdev, ptr %rdev.0114, i32 0, i32 19
  %4 = ptrtoint ptr %raid_disk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %raid_disk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp4 = icmp sgt i32 %5, -1
  br i1 %cmp4, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %flags = getelementptr inbounds %struct.md_rdev, ptr %rdev.0114, i32 0, i32 16
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool6.not = icmp eq i32 %and1.i, 0
  br i1 %tobool6.not, label %for.end, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %8 = ptrtoint ptr %rdev.0114 to i32
  call void @__asan_load4_noabort(i32 %8)
  %rdev.0 = load ptr, ptr %rdev.0114, align 8
  %cmp.not = icmp eq ptr %rdev.0, %disks
  br i1 %cmp.not, label %for.inc.do.end28_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.do.end28_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end28

for.end:                                          ; preds = %land.lhs.true
  %desc_nr = getelementptr inbounds %struct.md_rdev, ptr %rdev.0114, i32 0, i32 18
  %9 = ptrtoint ptr %desc_nr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %desc_nr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp14 = icmp sgt i32 %10, -1
  br i1 %cmp14, label %if.then15, label %for.end.do.end28_crit_edge

for.end.do.end28_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end28

if.then15:                                        ; preds = %for.end
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %raid_slot16 = getelementptr inbounds %struct.cluster_msg, ptr %cmsg, i32 0, i32 5
  %12 = ptrtoint ptr %raid_slot16 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %raid_slot16, align 8
  %call17 = call fastcc i32 @__sendmsg(ptr noundef %1, ptr noundef nonnull %cmsg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end31, label %do.end22

do.end22:                                         ; preds = %if.then15
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137, ptr noundef nonnull @.str.135, i32 noundef 1284) #18
  %token_lockres.i = getelementptr inbounds %struct.md_cluster_info, ptr %1, i32 0, i32 17
  %13 = ptrtoint ptr %token_lockres.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %token_lockres.i, align 4
  %mode.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %14, i32 0, i32 8
  %15 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %16)
  %cmp.not.i = icmp eq i32 %16, 5
  br i1 %cmp.not.i, label %do.end22.unlock_comm.exit_crit_edge, label %do.end.i, !prof !312

do.end22.unlock_comm.exit_crit_edge:              ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #17
  br label %unlock_comm.exit

do.end.i:                                         ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 714, i32 noundef 9, ptr noundef null) #15
  br label %unlock_comm.exit

unlock_comm.exit:                                 ; preds = %do.end.i, %do.end22.unlock_comm.exit_crit_edge
  %recv_mutex.i = getelementptr inbounds %struct.md_cluster_info, ptr %1, i32 0, i32 4
  tail call void @mutex_unlock(ptr noundef %recv_mutex.i) #15
  %17 = ptrtoint ptr %token_lockres.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %token_lockres.i, align 4
  %call.i.i = tail call fastcc i32 @dlm_lock_sync(ptr noundef %18, i32 noundef 0) #15
  %state.i = getelementptr inbounds %struct.md_cluster_info, ptr %1, i32 0, i32 22
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %state.i) #15
  %wait.i = getelementptr inbounds %struct.md_cluster_info, ptr %1, i32 0, i32 21
  tail call void @__wake_up(ptr noundef %wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #15
  br label %cleanup

do.end28:                                         ; preds = %for.end.do.end28_crit_edge, %for.inc.do.end28_crit_edge, %if.end.do.end28_crit_edge
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.140) #18
  %token_lockres.i83 = getelementptr inbounds %struct.md_cluster_info, ptr %1, i32 0, i32 17
  %19 = ptrtoint ptr %token_lockres.i83 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %token_lockres.i83, align 4
  %mode.i84 = getelementptr inbounds %struct.dlm_lock_resource, ptr %20, i32 0, i32 8
  %21 = ptrtoint ptr %mode.i84 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mode.i84, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %22)
  %cmp.not.i85 = icmp eq i32 %22, 5
  br i1 %cmp.not.i85, label %do.end28.unlock_comm.exit91_crit_edge, label %do.end.i86, !prof !312

do.end28.unlock_comm.exit91_crit_edge:            ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #17
  br label %unlock_comm.exit91

do.end.i86:                                       ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 714, i32 noundef 9, ptr noundef null) #15
  br label %unlock_comm.exit91

unlock_comm.exit91:                               ; preds = %do.end.i86, %do.end28.unlock_comm.exit91_crit_edge
  %recv_mutex.i87 = getelementptr inbounds %struct.md_cluster_info, ptr %1, i32 0, i32 4
  tail call void @mutex_unlock(ptr noundef %recv_mutex.i87) #15
  %23 = ptrtoint ptr %token_lockres.i83 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %token_lockres.i83, align 4
  %call.i.i88 = tail call fastcc i32 @dlm_lock_sync(ptr noundef %24, i32 noundef 0) #15
  %state.i89 = getelementptr inbounds %struct.md_cluster_info, ptr %1, i32 0, i32 22
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %state.i89) #15
  %wait.i90 = getelementptr inbounds %struct.md_cluster_info, ptr %1, i32 0, i32 21
  tail call void @__wake_up(ptr noundef %wait.i90, i32 noundef 3, i32 noundef 1, ptr noundef null) #15
  br label %cleanup

if.end31:                                         ; preds = %if.then15
  %nodes.i = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 86, i32 10
  %25 = ptrtoint ptr %nodes.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nodes.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @md_cluster_ops to i32))
  %27 = load ptr, ptr @md_cluster_ops, align 4
  %slot_number.i = getelementptr inbounds %struct.md_cluster_operations, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %slot_number.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %slot_number.i, align 4
  %call.i = tail call i32 %29(ptr noundef %mddev) #15
  %bitmap1.i = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 85
  %30 = ptrtoint ptr %bitmap1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bitmap1.i, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %str.i) #15
  %32 = call ptr @memset(ptr %str.i, i32 255, i32 64)
  %sb_page.i = getelementptr inbounds %struct.bitmap, ptr %31, i32 0, i32 4, i32 1
  %33 = ptrtoint ptr %sb_page.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sb_page.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %35 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i = or i32 %35, 512
  %36 = tail call i32 @llvm.read_register.i32(metadata !299) #15
  %and.i.i.i.i.i.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %39, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !316
  %40 = tail call i32 @llvm.read_register.i32(metadata !299) #15
  %and.i.i.i1.i.i.i = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i.i1.i.i.i to ptr
  %task.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %task.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %task.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %43, i32 0, i32 213
  %44 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pagefault_disabled.i.i.i.i.i, align 8
  %inc.i.i.i.i.i = add i32 %45, 1
  store i32 %inc.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !317
  %call.i.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %34, i32 noundef %or.i.i) #15
  %sync_size3.i = getelementptr inbounds %struct.bitmap_super_s, ptr %call.i.i.i, i32 0, i32 5
  %46 = ptrtoint ptr %sync_size3.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %sync_size3.i, align 8
  %conv.i = trunc i64 %47 to i32
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i.i) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !318
  %48 = tail call i32 @llvm.read_register.i32(metadata !299) #15
  %and.i.i.i1.i.i = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %51, i32 0, i32 213
  %52 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %dec.i.i.i.i = add i32 %53, -1
  store i32 %dec.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !319
  %54 = tail call i32 @llvm.read_register.i32(metadata !299) #15
  %and.i.i.i.i.i = and i32 %54, -16384
  %55 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %57, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp127.i = icmp sgt i32 %26, 0
  br i1 %cmp127.i, label %if.end31.for.body.i_crit_edge, label %if.end31.cluster_check_sync_size.exit_crit_edge

if.end31.cluster_check_sync_size.exit_crit_edge:  ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #17
  br label %cluster_check_sync_size.exit

if.end31.for.body.i_crit_edge:                    ; preds = %if.end31
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end31.for.body.i_crit_edge
  %i.0129.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end31.for.body.i_crit_edge ]
  %sync_size.0128.i = phi i32 [ %sync_size.2.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end31.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0129.i, i32 %call.i)
  %cmp8.i = icmp eq i32 %i.0129.i, %call.i
  br i1 %cmp8.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %call10.i = call ptr @get_bitmap_from_slot(ptr noundef %mddev, i32 noundef %i.0129.i) #15
  %cmp.i.i = icmp ugt ptr %call10.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end15.i, label %if.end17.i

do.end15.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %call16.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.125, i32 noundef %i.0129.i) #18
  br label %cluster_check_sync_size.exit.thread

if.end17.i:                                       ; preds = %if.end.i
  %call18.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %str.i, i32 noundef 64, ptr noundef nonnull @.str.34, i32 noundef %i.0129.i) #15
  %call20.i = call fastcc ptr @lockres_init(ptr noundef %mddev, ptr noundef nonnull %str.i, ptr noundef null, i32 noundef 1) #15
  %tobool.not.i = icmp eq ptr %call20.i, null
  br i1 %tobool.not.i, label %do.end24.i, label %if.end28.i

do.end24.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #17
  %call27.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.149, ptr noundef nonnull %str.i) #18
  call void @md_bitmap_free(ptr noundef %call10.i) #15
  br label %cluster_check_sync_size.exit.thread

if.end28.i:                                       ; preds = %if.end17.i
  %flags.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %call20.i, i32 0, i32 3
  %58 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %59, 1
  store i32 %or.i, ptr %flags.i, align 4
  %call29.i = call fastcc i32 @dlm_lock_sync(ptr noundef nonnull %call20.i, i32 noundef 4) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool30.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool30.not.i, label %if.then31.i, label %if.end28.i.if.end32.i_crit_edge

if.end28.i.if.end32.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32.i

if.then31.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @md_bitmap_update_sb(ptr noundef %call10.i) #15
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then31.i, %if.end28.i.if.end32.i_crit_edge
  call fastcc void @lockres_free(ptr noundef nonnull %call20.i) #15
  %sb_page34.i = getelementptr inbounds %struct.bitmap, ptr %call10.i, i32 0, i32 4, i32 1
  %60 = ptrtoint ptr %sb_page34.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %sb_page34.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %62 = load i32, ptr @pgprot_kernel, align 4
  %or.i96.i = or i32 %62, 512
  %63 = call i32 @llvm.read_register.i32(metadata !299) #15
  %and.i.i.i.i.i97.i = and i32 %63, -16384
  %64 = inttoptr i32 %and.i.i.i.i.i97.i to ptr
  %preempt_count.i.i.i.i98.i = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %preempt_count.i.i.i.i98.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %preempt_count.i.i.i.i98.i, align 4
  %add.i.i.i99.i = add i32 %66, 1
  store volatile i32 %add.i.i.i99.i, ptr %preempt_count.i.i.i.i98.i, align 4
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !316
  %67 = call i32 @llvm.read_register.i32(metadata !299) #15
  %and.i.i.i1.i.i100.i = and i32 %67, -16384
  %68 = inttoptr i32 %and.i.i.i1.i.i100.i to ptr
  %task.i.i.i.i101.i = getelementptr inbounds %struct.thread_info, ptr %68, i32 0, i32 2
  %69 = ptrtoint ptr %task.i.i.i.i101.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %task.i.i.i.i101.i, align 8
  %pagefault_disabled.i.i.i.i102.i = getelementptr inbounds %struct.task_struct, ptr %70, i32 0, i32 213
  %71 = ptrtoint ptr %pagefault_disabled.i.i.i.i102.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %pagefault_disabled.i.i.i.i102.i, align 8
  %inc.i.i.i.i103.i = add i32 %72, 1
  store i32 %inc.i.i.i.i103.i, ptr %pagefault_disabled.i.i.i.i102.i, align 8
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !317
  %call.i.i104.i = call ptr @__kmap_local_page_prot(ptr noundef %61, i32 noundef %or.i96.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sync_size.0128.i)
  %cmp36.i = icmp eq i32 %sync_size.0128.i, 0
  br i1 %cmp36.i, label %if.then38.i, label %if.else.i

if.then38.i:                                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #17
  %sync_size39.i = getelementptr inbounds %struct.bitmap_super_s, ptr %call.i.i104.i, i32 0, i32 5
  %73 = ptrtoint ptr %sync_size39.i to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %sync_size39.i, align 8
  %conv40.i = trunc i64 %74 to i32
  br label %do.end57.i

if.else.i:                                        ; preds = %if.end32.i
  %conv41.i = zext i32 %sync_size.0128.i to i64
  %sync_size42.i = getelementptr inbounds %struct.bitmap_super_s, ptr %call.i.i104.i, i32 0, i32 5
  %75 = ptrtoint ptr %sync_size42.i to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %sync_size42.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %76, i64 %conv41.i)
  %cmp43.not.i = icmp eq i64 %76, %conv41.i
  br i1 %cmp43.not.i, label %if.else.i.do.end57.i_crit_edge, label %do.end49.i

if.else.i.do.end57.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end57.i

do.end49.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @kunmap_local_indexed(ptr noundef %call.i.i104.i) #15
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !318
  %77 = call i32 @llvm.read_register.i32(metadata !299) #15
  %and.i.i.i1.i105.i = and i32 %77, -16384
  %78 = inttoptr i32 %and.i.i.i1.i105.i to ptr
  %task.i.i.i106.i = getelementptr inbounds %struct.thread_info, ptr %78, i32 0, i32 2
  %79 = ptrtoint ptr %task.i.i.i106.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %task.i.i.i106.i, align 8
  %pagefault_disabled.i.i.i107.i = getelementptr inbounds %struct.task_struct, ptr %80, i32 0, i32 213
  %81 = ptrtoint ptr %pagefault_disabled.i.i.i107.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %pagefault_disabled.i.i.i107.i, align 8
  %dec.i.i.i108.i = add i32 %82, -1
  store i32 %dec.i.i.i108.i, ptr %pagefault_disabled.i.i.i107.i, align 8
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !319
  %83 = call i32 @llvm.read_register.i32(metadata !299) #15
  %and.i.i.i.i109.i = and i32 %83, -16384
  %84 = inttoptr i32 %and.i.i.i.i109.i to ptr
  %preempt_count.i.i.i110.i = getelementptr inbounds %struct.thread_info, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %preempt_count.i.i.i110.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile i32, ptr %preempt_count.i.i.i110.i, align 4
  %sub.i.i111.i = add i32 %86, -1
  store volatile i32 %sub.i.i111.i, ptr %preempt_count.i.i.i110.i, align 4
  call void @md_bitmap_free(ptr noundef %call10.i) #15
  br label %cluster_check_sync_size.exit.thread

do.end57.i:                                       ; preds = %if.else.i.do.end57.i_crit_edge, %if.then38.i
  %sync_size.1.i = phi i32 [ %conv40.i, %if.then38.i ], [ %sync_size.0128.i, %if.else.i.do.end57.i_crit_edge ]
  call void @kunmap_local_indexed(ptr noundef %call.i.i104.i) #15
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !318
  %87 = call i32 @llvm.read_register.i32(metadata !299) #15
  %and.i.i.i1.i112.i = and i32 %87, -16384
  %88 = inttoptr i32 %and.i.i.i1.i112.i to ptr
  %task.i.i.i113.i = getelementptr inbounds %struct.thread_info, ptr %88, i32 0, i32 2
  %89 = ptrtoint ptr %task.i.i.i113.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %task.i.i.i113.i, align 8
  %pagefault_disabled.i.i.i114.i = getelementptr inbounds %struct.task_struct, ptr %90, i32 0, i32 213
  %91 = ptrtoint ptr %pagefault_disabled.i.i.i114.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %pagefault_disabled.i.i.i114.i, align 8
  %dec.i.i.i115.i = add i32 %92, -1
  store i32 %dec.i.i.i115.i, ptr %pagefault_disabled.i.i.i114.i, align 8
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !319
  %93 = call i32 @llvm.read_register.i32(metadata !299) #15
  %and.i.i.i.i116.i = and i32 %93, -16384
  %94 = inttoptr i32 %and.i.i.i.i116.i to ptr
  %preempt_count.i.i.i117.i = getelementptr inbounds %struct.thread_info, ptr %94, i32 0, i32 1
  %95 = ptrtoint ptr %preempt_count.i.i.i117.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load volatile i32, ptr %preempt_count.i.i.i117.i, align 4
  %sub.i.i118.i = add i32 %96, -1
  store volatile i32 %sub.i.i118.i, ptr %preempt_count.i.i.i117.i, align 4
  call void @md_bitmap_free(ptr noundef %call10.i) #15
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end57.i, %for.body.i.for.inc.i_crit_edge
  %sync_size.2.i = phi i32 [ %sync_size.0128.i, %for.body.i.for.inc.i_crit_edge ], [ %sync_size.1.i, %do.end57.i ]
  %inc.i = add nuw nsw i32 %i.0129.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %26
  br i1 %exitcond.not.i, label %for.inc.i.cluster_check_sync_size.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.inc.i.cluster_check_sync_size.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cluster_check_sync_size.exit

cluster_check_sync_size.exit.thread:              ; preds = %do.end49.i, %do.end24.i, %do.end15.i
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %str.i) #15
  br label %if.else46

cluster_check_sync_size.exit:                     ; preds = %for.inc.i.cluster_check_sync_size.exit_crit_edge, %if.end31.cluster_check_sync_size.exit_crit_edge
  %sync_size.0.lcssa.i = phi i32 [ 0, %if.end31.cluster_check_sync_size.exit_crit_edge ], [ %sync_size.2.i, %for.inc.i.cluster_check_sync_size.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %sync_size.0.lcssa.i, i32 %conv.i)
  %cmp60.i.not = icmp eq i32 %sync_size.0.lcssa.i, %conv.i
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %str.i) #15
  br i1 %cmp60.i.not, label %if.then34, label %cluster_check_sync_size.exit.if.else46_crit_edge

cluster_check_sync_size.exit.if.else46_crit_edge: ; preds = %cluster_check_sync_size.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else46

if.then34:                                        ; preds = %cluster_check_sync_size.exit
  %97 = call ptr @memset(ptr %cmsg, i32 0, i32 48)
  %98 = ptrtoint ptr %cmsg to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 100663296, ptr %cmsg, align 8
  %call36 = call fastcc i32 @__sendmsg(ptr noundef %1, ptr noundef nonnull %cmsg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.then34.if.end44_crit_edge, label %do.end41

if.then34.if.end44_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end44

do.end41:                                         ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #17
  %call43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.143, ptr noundef nonnull @.str.135, i32 noundef 1305) #18
  br label %if.end44

if.end44:                                         ; preds = %do.end41, %if.then34.if.end44_crit_edge
  %gendisk = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 11
  %99 = ptrtoint ptr %gendisk to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %gendisk, align 8
  %array_sectors = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 29
  %101 = ptrtoint ptr %array_sectors to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %array_sectors, align 8
  %call45 = call zeroext i1 @set_capacity_and_notify(ptr noundef %100, i64 noundef %102) #15
  br label %if.end57

if.else46:                                        ; preds = %cluster_check_sync_size.exit.if.else46_crit_edge, %cluster_check_sync_size.exit.thread
  %pers = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 1
  %103 = ptrtoint ptr %pers to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %pers, align 4
  %resize = getelementptr inbounds %struct.md_personality, ptr %104, i32 0, i32 14
  %105 = ptrtoint ptr %resize to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %resize, align 4
  %call47 = call i32 %106(ptr noundef %mddev, i64 noundef %old_dev_sectors) #15
  %call48 = call fastcc i32 @__sendmsg(ptr noundef %1, ptr noundef nonnull %cmsg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.else46.if.end57_crit_edge, label %do.end53

if.else46.if.end57_crit_edge:                     ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end57

do.end53:                                         ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #17
  %call55 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137, ptr noundef nonnull @.str.135, i32 noundef 1313) #18
  br label %if.end57

if.end57:                                         ; preds = %do.end53, %if.else46.if.end57_crit_edge, %if.end44
  %token_lockres.i92 = getelementptr inbounds %struct.md_cluster_info, ptr %1, i32 0, i32 17
  %107 = ptrtoint ptr %token_lockres.i92 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %token_lockres.i92, align 4
  %mode.i93 = getelementptr inbounds %struct.dlm_lock_resource, ptr %108, i32 0, i32 8
  %109 = ptrtoint ptr %mode.i93 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %mode.i93, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %110)
  %cmp.not.i94 = icmp eq i32 %110, 5
  br i1 %cmp.not.i94, label %if.end57.unlock_comm.exit101_crit_edge, label %do.end.i95, !prof !312

if.end57.unlock_comm.exit101_crit_edge:           ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #17
  br label %unlock_comm.exit101

do.end.i95:                                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 714, i32 noundef 9, ptr noundef null) #15
  br label %unlock_comm.exit101

unlock_comm.exit101:                              ; preds = %do.end.i95, %if.end57.unlock_comm.exit101_crit_edge
  %recv_mutex.i96 = getelementptr inbounds %struct.md_cluster_info, ptr %1, i32 0, i32 4
  call void @mutex_unlock(ptr noundef %recv_mutex.i96) #15
  %111 = ptrtoint ptr %token_lockres.i92 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %token_lockres.i92, align 4
  %call.i.i97 = call fastcc i32 @dlm_lock_sync(ptr noundef %112, i32 noundef 0) #15
  %state.i98 = getelementptr inbounds %struct.md_cluster_info, ptr %1, i32 0, i32 22
  call void @_clear_bit(i32 noundef 4, ptr noundef %state.i98) #15
  %wait.i99 = getelementptr inbounds %struct.md_cluster_info, ptr %1, i32 0, i32 21
  call void @__wake_up(ptr noundef %wait.i99, i32 noundef 3, i32 noundef 1, ptr noundef null) #15
  br label %cleanup

cleanup:                                          ; preds = %unlock_comm.exit101, %unlock_comm.exit91, %unlock_comm.exit, %do.end
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cmsg) #15
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_new_lockspace(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @md_register_thread(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @recv_daemon(ptr nocapture noundef readonly %thread) #1 align 64 {
entry:
  %disk_uuid.i.i = alloca [64 x i8], align 1
  %event_name.i.i = alloca [17 x i8], align 1
  %raid_slot.i76.i = alloca [16 x i8], align 1
  %envp.i.i = alloca [4 x ptr], align 4
  %__wq_entry.i.i = alloca %struct.wait_queue_entry, align 4
  %msg = alloca %struct.cluster_msg, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %mddev = getelementptr inbounds %struct.md_thread, ptr %thread, i32 0, i32 1
  %0 = ptrtoint ptr %mddev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mddev, align 4
  %cluster_info = getelementptr inbounds %struct.mddev, ptr %1, i32 0, i32 101
  %2 = ptrtoint ptr %cluster_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cluster_info, align 8
  %ack_lockres1 = getelementptr inbounds %struct.md_cluster_info, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %ack_lockres1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ack_lockres1, align 4
  %message_lockres2 = getelementptr inbounds %struct.md_cluster_info, ptr %3, i32 0, i32 16
  %6 = ptrtoint ptr %message_lockres2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %message_lockres2, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %msg) #15
  %recv_mutex = getelementptr inbounds %struct.md_cluster_info, ptr %3, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %recv_mutex, i32 noundef 0) #15
  %call = tail call fastcc i32 @dlm_lock_sync(ptr noundef %7, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55) #18
  tail call void @mutex_unlock(ptr noundef %recv_mutex) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %sb_lvbptr = getelementptr inbounds %struct.dlm_lock_resource, ptr %7, i32 0, i32 1, i32 3
  %8 = ptrtoint ptr %sb_lvbptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sb_lvbptr, align 4
  %10 = call ptr @memcpy(ptr %msg, ptr %9, i32 48)
  %11 = ptrtoint ptr %mddev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mddev, align 4
  %cluster_info.i = getelementptr inbounds %struct.mddev, ptr %12, i32 0, i32 101
  %13 = ptrtoint ptr %cluster_info.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cluster_info.i, align 8
  %slot_number.i = getelementptr inbounds %struct.md_cluster_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %slot_number.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %slot_number.i, align 8
  %sub.i = add i32 %16, -1
  %slot.i = getelementptr inbounds %struct.cluster_msg, ptr %msg, i32 0, i32 1
  %17 = ptrtoint ptr %slot.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %slot.i, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #15
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %19)
  %cmp.i = icmp eq i32 %sub.i, %19
  br i1 %cmp.i, label %do.end.i, label %if.end22.i, !prof !315

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 577, i32 noundef 9, ptr noundef nonnull @.str.69, i32 noundef %sub.i) #15
  br label %out

if.end22.i:                                       ; preds = %if.end
  %20 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %msg, align 8
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #15
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.151)
  switch i32 %22, label %sw.default.i [
    i32 0, label %sw.bb.i
    i32 6, label %sw.bb23.i
    i32 1, label %sw.bb24.i
    i32 2, label %sw.bb26.i
    i32 3, label %sw.bb27.i
    i32 4, label %sw.bb28.i
    i32 5, label %sw.bb29.i
    i32 7, label %sw.bb31.i
  ]

sw.bb.i:                                          ; preds = %if.end22.i
  %raid_slot.i.i = getelementptr inbounds %struct.cluster_msg, ptr %msg, i32 0, i32 5
  %24 = ptrtoint ptr %raid_slot.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %raid_slot.i.i, align 8
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #15
  %good_device_nr.i.i = getelementptr inbounds %struct.mddev, ptr %12, i32 0, i32 102
  %27 = ptrtoint ptr %good_device_nr.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %good_device_nr.i.i, align 4
  %no_new_dev_lockres.i.i = getelementptr inbounds %struct.md_cluster_info, ptr %14, i32 0, i32 18
  %28 = ptrtoint ptr %no_new_dev_lockres.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %no_new_dev_lockres.i.i, align 8
  %call.i.i = tail call fastcc i32 @dlm_lock_sync(ptr noundef %29, i32 noundef 1) #15
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 535) #15
  %reconfig_mutex.i.i.i = getelementptr inbounds %struct.mddev, ptr %12, i32 0, i32 60
  %call.i.i.i = tail call i32 @mutex_trylock(ptr noundef %reconfig_mutex.i.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %do.end20.thread43.i.i

do.end20.thread43.i.i:                            ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #17
  %30 = ptrtoint ptr %good_device_nr.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %good_device_nr.i.i, align 4
  tail call void @md_reload_sb(ptr noundef %12, i32 noundef %31) #15
  br label %if.then23.i.i

lor.lhs.false.i.i:                                ; preds = %sw.bb.i
  %state.i.i = getelementptr inbounds %struct.md_cluster_info, ptr %14, i32 0, i32 22
  %32 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %state.i.i, align 4
  %34 = and i32 %33, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool7.not.i.i = icmp eq i32 %34, 0
  br i1 %tobool7.not.i.i, label %if.end.i.i, label %do.end20.thread.i.i

do.end20.thread.i.i:                              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %35 = ptrtoint ptr %good_device_nr.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %good_device_nr.i.i, align 4
  tail call void @md_reload_sb(ptr noundef %12, i32 noundef %36) #15
  br label %if.end9

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i.i) #15
  %37 = call ptr @memset(ptr %__wq_entry.i.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i.i, i32 noundef 0) #15
  %thread.i.i = getelementptr inbounds %struct.mddev, ptr %12, i32 0, i32 40
  %38 = ptrtoint ptr %thread.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %thread.i.i, align 4
  %wqueue46.i.i = getelementptr inbounds %struct.md_thread, ptr %39, i32 0, i32 2
  %call847.i.i = call i32 @prepare_to_wait_event(ptr noundef %wqueue46.i.i, ptr noundef nonnull %__wq_entry.i.i, i32 noundef 2) #15
  %call.i3848.i.i = call i32 @mutex_trylock(ptr noundef %reconfig_mutex.i.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3848.i.i)
  %tobool10.not49.i.i = icmp eq i32 %call.i3848.i.i, 0
  br i1 %tobool10.not49.i.i, label %if.end.i.i.lor.lhs.false11.i.i_crit_edge, label %if.end.i.i.do.end20.i.i_crit_edge

if.end.i.i.do.end20.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end20.i.i

if.end.i.i.lor.lhs.false11.i.i_crit_edge:         ; preds = %if.end.i.i
  br label %lor.lhs.false11.i.i

lor.lhs.false11.i.i:                              ; preds = %cleanup.i.i.lor.lhs.false11.i.i_crit_edge, %if.end.i.i.lor.lhs.false11.i.i_crit_edge
  %40 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %state.i.i, align 4
  %42 = and i32 %41, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool14.not.i.i = icmp eq i32 %42, 0
  br i1 %tobool14.not.i.i, label %cleanup.i.i, label %lor.lhs.false11.i.i.do.end20.i.i_crit_edge

lor.lhs.false11.i.i.do.end20.i.i_crit_edge:       ; preds = %lor.lhs.false11.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end20.i.i

cleanup.i.i:                                      ; preds = %lor.lhs.false11.i.i
  call void @schedule() #15
  %43 = ptrtoint ptr %thread.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %thread.i.i, align 4
  %wqueue.i.i = getelementptr inbounds %struct.md_thread, ptr %44, i32 0, i32 2
  %call8.i.i = call i32 @prepare_to_wait_event(ptr noundef %wqueue.i.i, ptr noundef nonnull %__wq_entry.i.i, i32 noundef 2) #15
  %call.i38.i.i = call i32 @mutex_trylock(ptr noundef %reconfig_mutex.i.i.i) #15
  %tobool10.not.i.i = icmp eq i32 %call.i38.i.i, 0
  br i1 %tobool10.not.i.i, label %cleanup.i.i.lor.lhs.false11.i.i_crit_edge, label %cleanup.i.i.do.end20.i.i_crit_edge

cleanup.i.i.do.end20.i.i_crit_edge:               ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end20.i.i

cleanup.i.i.lor.lhs.false11.i.i_crit_edge:        ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false11.i.i

do.end20.i.i:                                     ; preds = %cleanup.i.i.do.end20.i.i_crit_edge, %lor.lhs.false11.i.i.do.end20.i.i_crit_edge, %if.end.i.i.do.end20.i.i_crit_edge
  %call.i38.lcssa.i.i = phi i32 [ %call.i3848.i.i, %if.end.i.i.do.end20.i.i_crit_edge ], [ %call.i38.i.i, %cleanup.i.i.do.end20.i.i_crit_edge ], [ 0, %lor.lhs.false11.i.i.do.end20.i.i_crit_edge ]
  %45 = ptrtoint ptr %thread.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %thread.i.i, align 4
  %wqueue18.i.i = getelementptr inbounds %struct.md_thread, ptr %46, i32 0, i32 2
  call void @finish_wait(ptr noundef %wqueue18.i.i, ptr noundef nonnull %__wq_entry.i.i) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i.i) #15
  %47 = ptrtoint ptr %good_device_nr.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %good_device_nr.i.i, align 4
  call void @md_reload_sb(ptr noundef %12, i32 noundef %48) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i38.lcssa.i.i)
  %tobool22.not.i.i = icmp eq i32 %call.i38.lcssa.i.i, 0
  br i1 %tobool22.not.i.i, label %do.end20.i.i.if.end9_crit_edge, label %do.end20.i.i.if.then23.i.i_crit_edge

do.end20.i.i.if.then23.i.i_crit_edge:             ; preds = %do.end20.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then23.i.i

do.end20.i.i.if.end9_crit_edge:                   ; preds = %do.end20.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9

if.then23.i.i:                                    ; preds = %do.end20.i.i.if.then23.i.i_crit_edge, %do.end20.thread43.i.i
  call void @mddev_unlock(ptr noundef %12) #15
  br label %if.end9

sw.bb23.i:                                        ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #17
  %gendisk.i = getelementptr inbounds %struct.mddev, ptr %12, i32 0, i32 11
  %49 = ptrtoint ptr %gendisk.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %gendisk.i, align 8
  %array_sectors.i = getelementptr inbounds %struct.mddev, ptr %12, i32 0, i32 29
  %51 = ptrtoint ptr %array_sectors.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %array_sectors.i, align 8
  %call.i = tail call zeroext i1 @set_capacity_and_notify(ptr noundef %50, i64 noundef %52) #15
  br label %if.end9

sw.bb24.i:                                        ; preds = %if.end22.i
  %recovery.i = getelementptr inbounds %struct.mddev, ptr %12, i32 0, i32 56
  tail call void @_set_bit(i32 noundef 12, ptr noundef %recovery.i) #15
  %53 = ptrtoint ptr %slot.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %slot.i, align 4
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #15
  %low.i = getelementptr inbounds %struct.cluster_msg, ptr %msg, i32 0, i32 2
  %56 = ptrtoint ptr %low.i to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %low.i, align 8
  %58 = tail call i64 @llvm.bswap.i64(i64 %57) #15
  %high.i = getelementptr inbounds %struct.cluster_msg, ptr %msg, i32 0, i32 3
  %59 = ptrtoint ptr %high.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %high.i, align 8
  %61 = tail call i64 @llvm.bswap.i64(i64 %60) #15
  %62 = ptrtoint ptr %cluster_info.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %cluster_info.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %60)
  %tobool.not.i72.i = icmp eq i64 %60, 0
  br i1 %tobool.not.i72.i, label %if.then.i.i, label %if.end.i74.i

if.then.i.i:                                      ; preds = %sw.bb24.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_clear_bit(i32 noundef 12, ptr noundef %recovery.i) #15
  %64 = ptrtoint ptr %cluster_info.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %cluster_info.i, align 8
  %pers.i.i.i = getelementptr inbounds %struct.mddev, ptr %12, i32 0, i32 1
  %66 = ptrtoint ptr %pers.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pers.i.i.i, align 4
  %quiesce.i.i.i = getelementptr inbounds %struct.md_personality, ptr %67, i32 0, i32 20
  %68 = ptrtoint ptr %quiesce.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %quiesce.i.i.i, align 4
  tail call void %69(ptr noundef %12, i32 noundef 1) #15
  %suspend_lock.i.i.i = getelementptr inbounds %struct.md_cluster_info, ptr %65, i32 0, i32 9
  tail call void @_raw_spin_lock_irq(ptr noundef %suspend_lock.i.i.i) #15
  %suspend_lo.i.i.i = getelementptr inbounds %struct.md_cluster_info, ptr %65, i32 0, i32 10
  %70 = call ptr @memset(ptr %suspend_lo.i.i.i, i32 0, i32 16)
  tail call void @_raw_spin_unlock_irq(ptr noundef %suspend_lock.i.i.i) #15
  %71 = ptrtoint ptr %pers.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %pers.i.i.i, align 4
  %quiesce3.i.i.i = getelementptr inbounds %struct.md_personality, ptr %72, i32 0, i32 20
  %73 = ptrtoint ptr %quiesce3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %quiesce3.i.i.i, align 4
  tail call void %74(ptr noundef %12, i32 noundef 0) #15
  tail call void @_set_bit(i32 noundef 5, ptr noundef %recovery.i) #15
  %thread.i73.i = getelementptr inbounds %struct.mddev, ptr %12, i32 0, i32 40
  %75 = ptrtoint ptr %thread.i73.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %thread.i73.i, align 4
  tail call void @md_wakeup_thread(ptr noundef %76) #15
  br label %if.end9

if.end.i74.i:                                     ; preds = %sw.bb24.i
  %disks.i.i = getelementptr inbounds %struct.mddev, ptr %12, i32 0, i32 4
  %77 = ptrtoint ptr %disks.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %rdev.058.i.i = load ptr, ptr %disks.i.i, align 8
  %cmp.not59.i.i = icmp eq ptr %rdev.058.i.i, %disks.i.i
  br i1 %cmp.not59.i.i, label %if.end.i74.i.if.end17.i.i_crit_edge, label %if.end.i74.i.for.body.i.i_crit_edge

if.end.i74.i.for.body.i.i_crit_edge:              ; preds = %if.end.i74.i
  br label %for.body.i.i

if.end.i74.i.if.end17.i.i_crit_edge:              ; preds = %if.end.i74.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end17.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.i74.i.for.body.i.i_crit_edge
  %rdev.060.i.i = phi ptr [ %rdev.0.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %rdev.058.i.i, %if.end.i74.i.for.body.i.i_crit_edge ]
  %raid_disk.i.i = getelementptr inbounds %struct.md_rdev, ptr %rdev.060.i.i, i32 0, i32 19
  %78 = ptrtoint ptr %raid_disk.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %raid_disk.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %79)
  %cmp3.i.i = icmp sgt i32 %79, -1
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %flags.i.i = getelementptr inbounds %struct.md_rdev, ptr %rdev.060.i.i, i32 0, i32 16
  %80 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile i32, ptr %flags.i.i, align 4
  %and1.i.i.i = and i32 %81, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %for.end.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %82 = ptrtoint ptr %rdev.060.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %rdev.0.i.i = load ptr, ptr %rdev.060.i.i, align 8
  %cmp.not.i.i = icmp eq ptr %rdev.0.i.i, %disks.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.if.end17.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

for.inc.i.i.if.end17.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end17.i.i

for.end.i.i:                                      ; preds = %land.lhs.true.i.i
  %sb_page.i.i = getelementptr inbounds %struct.md_rdev, ptr %rdev.060.i.i, i32 0, i32 6
  %83 = ptrtoint ptr %sb_page.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %sb_page.i.i, align 8
  %call6.i.i = tail call ptr @page_address(ptr noundef %84) #15
  %tobool13.not.i.i = icmp eq ptr %call6.i.i, null
  br i1 %tobool13.not.i.i, label %for.end.i.i.if.end17.i.i_crit_edge, label %land.lhs.true14.i.i

for.end.i.i.if.end17.i.i_crit_edge:               ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end17.i.i

land.lhs.true14.i.i:                              ; preds = %for.end.i.i
  %feature_map.i.i = getelementptr inbounds %struct.mdp_superblock_1, ptr %call6.i.i, i32 0, i32 2
  %85 = ptrtoint ptr %feature_map.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %feature_map.i.i, align 8
  %87 = and i32 %86, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool15.not.i.i = icmp eq i32 %87, 0
  br i1 %tobool15.not.i.i, label %if.then16.i.i, label %land.lhs.true14.i.i.if.end17.i.i_crit_edge

land.lhs.true14.i.i.if.end17.i.i_crit_edge:       ; preds = %land.lhs.true14.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end17.i.i

if.then16.i.i:                                    ; preds = %land.lhs.true14.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %sync_low.i.i = getelementptr inbounds %struct.md_cluster_info, ptr %63, i32 0, i32 23
  %88 = ptrtoint ptr %sync_low.i.i to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %sync_low.i.i, align 8
  %sync_hi.i.i = getelementptr inbounds %struct.md_cluster_info, ptr %63, i32 0, i32 24
  %90 = ptrtoint ptr %sync_hi.i.i to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %sync_hi.i.i, align 8
  tail call void @md_bitmap_sync_with_cluster(ptr noundef %12, i64 noundef %89, i64 noundef %91, i64 noundef %58, i64 noundef %61) #15
  br label %if.end17.i.i

if.end17.i.i:                                     ; preds = %if.then16.i.i, %land.lhs.true14.i.i.if.end17.i.i_crit_edge, %for.end.i.i.if.end17.i.i_crit_edge, %for.inc.i.i.if.end17.i.i_crit_edge, %if.end.i74.i.if.end17.i.i_crit_edge
  %sync_low18.i.i = getelementptr inbounds %struct.md_cluster_info, ptr %63, i32 0, i32 23
  %92 = ptrtoint ptr %sync_low18.i.i to i32
  call void @__asan_store8_noabort(i32 %92)
  store i64 %58, ptr %sync_low18.i.i, align 8
  %sync_hi19.i.i = getelementptr inbounds %struct.md_cluster_info, ptr %63, i32 0, i32 24
  %93 = ptrtoint ptr %sync_hi19.i.i to i32
  call void @__asan_store8_noabort(i32 %93)
  store i64 %61, ptr %sync_hi19.i.i, align 8
  %pers.i.i = getelementptr inbounds %struct.mddev, ptr %12, i32 0, i32 1
  %94 = ptrtoint ptr %pers.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %pers.i.i, align 4
  %quiesce.i.i = getelementptr inbounds %struct.md_personality, ptr %95, i32 0, i32 20
  %96 = ptrtoint ptr %quiesce.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %quiesce.i.i, align 4
  tail call void %97(ptr noundef %12, i32 noundef 1) #15
  %suspend_lock.i.i = getelementptr inbounds %struct.md_cluster_info, ptr %63, i32 0, i32 9
  tail call void @_raw_spin_lock_irq(ptr noundef %suspend_lock.i.i) #15
  %suspend_from.i.i = getelementptr inbounds %struct.md_cluster_info, ptr %63, i32 0, i32 12
  %98 = ptrtoint ptr %suspend_from.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %55, ptr %suspend_from.i.i, align 8
  %suspend_lo.i.i = getelementptr inbounds %struct.md_cluster_info, ptr %63, i32 0, i32 10
  %99 = ptrtoint ptr %suspend_lo.i.i to i32
  call void @__asan_store8_noabort(i32 %99)
  store i64 %58, ptr %suspend_lo.i.i, align 8
  %suspend_hi.i.i = getelementptr inbounds %struct.md_cluster_info, ptr %63, i32 0, i32 11
  %100 = ptrtoint ptr %suspend_hi.i.i to i32
  call void @__asan_store8_noabort(i32 %100)
  store i64 %61, ptr %suspend_hi.i.i, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %suspend_lock.i.i) #15
  %101 = ptrtoint ptr %pers.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %pers.i.i, align 4
  %quiesce22.i.i = getelementptr inbounds %struct.md_personality, ptr %102, i32 0, i32 20
  %103 = ptrtoint ptr %quiesce22.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %quiesce22.i.i, align 4
  tail call void %104(ptr noundef %12, i32 noundef 0) #15
  br label %if.end9

sw.bb26.i:                                        ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %disk_uuid.i.i) #15
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %event_name.i.i) #15
  %105 = call ptr @memcpy(ptr %event_name.i.i, ptr @__const.process_add_new_disk.event_name, i32 17)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %raid_slot.i76.i) #15
  %106 = call ptr @memset(ptr %raid_slot.i76.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %envp.i.i) #15
  %107 = getelementptr inbounds [4 x ptr], ptr %envp.i.i, i32 0, i32 1
  %108 = getelementptr inbounds [4 x ptr], ptr %envp.i.i, i32 0, i32 2
  %109 = getelementptr inbounds [4 x ptr], ptr %envp.i.i, i32 0, i32 3
  %110 = ptrtoint ptr %envp.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %event_name.i.i, ptr %envp.i.i, align 4
  %111 = ptrtoint ptr %107 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %disk_uuid.i.i, ptr %107, align 4
  %112 = ptrtoint ptr %108 to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %raid_slot.i76.i, ptr %108, align 4
  %113 = ptrtoint ptr %109 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr null, ptr %109, align 4
  %114 = getelementptr inbounds i8, ptr %disk_uuid.i.i, i32 13
  %115 = call ptr @memset(ptr %114, i32 255, i32 51)
  %116 = call ptr @memcpy(ptr %disk_uuid.i.i, ptr @.str.72, i32 13)
  %add.ptr.i.i = getelementptr inbounds i8, ptr %disk_uuid.i.i, i32 12
  %uuid.i.i = getelementptr inbounds %struct.cluster_msg, ptr %msg, i32 0, i32 4
  %call8.i78.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.i.i, ptr noundef nonnull @.str.11, ptr noundef %uuid.i.i) #15
  %raid_slot10.i.i = getelementptr inbounds %struct.cluster_msg, ptr %msg, i32 0, i32 5
  %117 = ptrtoint ptr %raid_slot10.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %raid_slot10.i.i, align 8
  %119 = call i32 @llvm.bswap.i32(i32 %118) #15
  %call11.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %raid_slot.i76.i, i32 noundef 16, ptr noundef nonnull @.str.73, i32 noundef %119) #15
  %call14.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.75, i32 noundef 516, ptr noundef nonnull %disk_uuid.i.i, ptr noundef nonnull %raid_slot.i76.i) #18
  %newdisk_completion.i.i = getelementptr inbounds %struct.md_cluster_info, ptr %14, i32 0, i32 20
  %120 = ptrtoint ptr %newdisk_completion.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 0, ptr %newdisk_completion.i.i, align 4
  %wait.i.i.i = getelementptr inbounds %struct.md_cluster_info, ptr %14, i32 0, i32 20, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i.i, ptr noundef nonnull @.str.39, ptr noundef nonnull @init_completion.__key) #15
  %state.i79.i = getelementptr inbounds %struct.md_cluster_info, ptr %14, i32 0, i32 22
  call void @_set_bit(i32 noundef 1, ptr noundef %state.i79.i) #15
  %gendisk.i.i = getelementptr inbounds %struct.mddev, ptr %12, i32 0, i32 11
  %121 = ptrtoint ptr %gendisk.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %gendisk.i.i, align 8
  %part0.i.i = getelementptr inbounds %struct.gendisk, ptr %122, i32 0, i32 7
  %123 = ptrtoint ptr %part0.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %part0.i.i, align 4
  %bd_device.i.i = getelementptr inbounds %struct.block_device, ptr %124, i32 0, i32 10
  %call16.i.i = call i32 @kobject_uevent_env(ptr noundef %bd_device.i.i, i32 noundef 2, ptr noundef nonnull %envp.i.i) #15
  %call18.i.i = call i32 @wait_for_completion_timeout(ptr noundef %newdisk_completion.i.i, i32 noundef 5000) #15
  call void @_clear_bit(i32 noundef 1, ptr noundef %state.i79.i) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %envp.i.i) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %raid_slot.i76.i) #15
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %event_name.i.i) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %disk_uuid.i.i) #15
  br label %if.end9

sw.bb27.i:                                        ; preds = %if.end22.i
  %125 = tail call i32 @llvm.read_register.i32(metadata !299) #15
  %and.i.i.i.i.i.i.i = and i32 %125, -16384
  %126 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %126, i32 0, i32 1
  %127 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %128, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !320
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i.i80.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i.i80.i, label %sw.bb27.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

sw.bb27.i.rcu_read_lock.exit.i.i_crit_edge:       ; preds = %sw.bb27.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %sw.bb27.i
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.78, i32 noundef 696, ptr noundef nonnull @.str.79) #15
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %sw.bb27.i.rcu_read_lock.exit.i.i_crit_edge
  %raid_slot.i81.i = getelementptr inbounds %struct.cluster_msg, ptr %msg, i32 0, i32 5
  %129 = ptrtoint ptr %raid_slot.i81.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %raid_slot.i81.i, align 8
  %131 = tail call i32 @llvm.bswap.i32(i32 %130) #15
  %call.i82.i = tail call ptr @md_find_rdev_nr_rcu(ptr noundef %12, i32 noundef %131) #15
  %tobool.not.i83.i = icmp eq ptr %call.i82.i, null
  br i1 %tobool.not.i83.i, label %do.end.i.i, label %if.then.i87.i

if.then.i87.i:                                    ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %flags.i84.i = getelementptr inbounds %struct.md_rdev, ptr %call.i82.i, i32 0, i32 16
  tail call void @_set_bit(i32 noundef 13, ptr noundef %flags.i84.i) #15
  %recovery.i85.i = getelementptr inbounds %struct.mddev, ptr %12, i32 0, i32 56
  tail call void @_set_bit(i32 noundef 5, ptr noundef %recovery.i85.i) #15
  %thread.i86.i = getelementptr inbounds %struct.mddev, ptr %12, i32 0, i32 40
  %132 = ptrtoint ptr %thread.i86.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %thread.i86.i, align 4
  tail call void @md_wakeup_thread(ptr noundef %133) #15
  br label %if.end.i88.i

do.end.i.i:                                       ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %134 = ptrtoint ptr %raid_slot.i81.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %raid_slot.i81.i, align 8
  %136 = tail call i32 @llvm.bswap.i32(i32 %135) #15
  %call2.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.77, i32 noundef 554, i32 noundef %136) #18
  br label %if.end.i88.i

if.end.i88.i:                                     ; preds = %do.end.i.i, %if.then.i87.i
  %call.i7.i.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i7.i.i, label %if.end.i88.i.process_remove_disk.exit.i_crit_edge, label %land.lhs.true.i10.i.i

if.end.i88.i.process_remove_disk.exit.i_crit_edge: ; preds = %if.end.i88.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %process_remove_disk.exit.i

land.lhs.true.i10.i.i:                            ; preds = %if.end.i88.i
  %call1.i8.i.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i8.i.i)
  %tobool.not.i9.i.i = icmp eq i32 %call1.i8.i.i, 0
  br i1 %tobool.not.i9.i.i, label %land.lhs.true.i10.i.i.process_remove_disk.exit.i_crit_edge, label %land.lhs.true2.i12.i.i

land.lhs.true.i10.i.i.process_remove_disk.exit.i_crit_edge: ; preds = %land.lhs.true.i10.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %process_remove_disk.exit.i

land.lhs.true2.i12.i.i:                           ; preds = %land.lhs.true.i10.i.i
  %.b4.i11.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i11.i.i, label %land.lhs.true2.i12.i.i.process_remove_disk.exit.i_crit_edge, label %if.then.i13.i.i

land.lhs.true2.i12.i.i.process_remove_disk.exit.i_crit_edge: ; preds = %land.lhs.true2.i12.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %process_remove_disk.exit.i

if.then.i13.i.i:                                  ; preds = %land.lhs.true2.i12.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.78, i32 noundef 724, ptr noundef nonnull @.str.80) #15
  br label %process_remove_disk.exit.i

process_remove_disk.exit.i:                       ; preds = %if.then.i13.i.i, %land.lhs.true2.i12.i.i.process_remove_disk.exit.i_crit_edge, %land.lhs.true.i10.i.i.process_remove_disk.exit.i_crit_edge, %if.end.i88.i.process_remove_disk.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !321
  %137 = tail call i32 @llvm.read_register.i32(metadata !299) #15
  %and.i.i.i.i.i14.i.i = and i32 %137, -16384
  %138 = inttoptr i32 %and.i.i.i.i.i14.i.i to ptr
  %preempt_count.i.i.i.i15.i.i = getelementptr inbounds %struct.thread_info, ptr %138, i32 0, i32 1
  %139 = ptrtoint ptr %preempt_count.i.i.i.i15.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load volatile i32, ptr %preempt_count.i.i.i.i15.i.i, align 4
  %sub.i.i.i.i.i = add i32 %140, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i15.i.i, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  br label %if.end9

sw.bb28.i:                                        ; preds = %if.end22.i
  %141 = tail call i32 @llvm.read_register.i32(metadata !299) #15
  %and.i.i.i.i.i.i89.i = and i32 %141, -16384
  %142 = inttoptr i32 %and.i.i.i.i.i.i89.i to ptr
  %preempt_count.i.i.i.i.i90.i = getelementptr inbounds %struct.thread_info, ptr %142, i32 0, i32 1
  %143 = ptrtoint ptr %preempt_count.i.i.i.i.i90.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load volatile i32, ptr %preempt_count.i.i.i.i.i90.i, align 4
  %add.i.i.i.i91.i = add i32 %144, 1
  store volatile i32 %add.i.i.i.i91.i, ptr %preempt_count.i.i.i.i.i90.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !320
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i.i92.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i.i92.i, label %sw.bb28.i.rcu_read_lock.exit.i102.i_crit_edge, label %land.lhs.true.i.i95.i

sw.bb28.i.rcu_read_lock.exit.i102.i_crit_edge:    ; preds = %sw.bb28.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit.i102.i

land.lhs.true.i.i95.i:                            ; preds = %sw.bb28.i
  %call1.i.i93.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i93.i)
  %tobool.not.i.i94.i = icmp eq i32 %call1.i.i93.i, 0
  br i1 %tobool.not.i.i94.i, label %land.lhs.true.i.i95.i.rcu_read_lock.exit.i102.i_crit_edge, label %land.lhs.true2.i.i97.i

land.lhs.true.i.i95.i.rcu_read_lock.exit.i102.i_crit_edge: ; preds = %land.lhs.true.i.i95.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit.i102.i

land.lhs.true2.i.i97.i:                           ; preds = %land.lhs.true.i.i95.i
  %.b4.i.i96.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i96.i, label %land.lhs.true2.i.i97.i.rcu_read_lock.exit.i102.i_crit_edge, label %if.then.i.i98.i

land.lhs.true2.i.i97.i.rcu_read_lock.exit.i102.i_crit_edge: ; preds = %land.lhs.true2.i.i97.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit.i102.i

if.then.i.i98.i:                                  ; preds = %land.lhs.true2.i.i97.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.78, i32 noundef 696, ptr noundef nonnull @.str.79) #15
  br label %rcu_read_lock.exit.i102.i

rcu_read_lock.exit.i102.i:                        ; preds = %if.then.i.i98.i, %land.lhs.true2.i.i97.i.rcu_read_lock.exit.i102.i_crit_edge, %land.lhs.true.i.i95.i.rcu_read_lock.exit.i102.i_crit_edge, %sw.bb28.i.rcu_read_lock.exit.i102.i_crit_edge
  %raid_slot.i99.i = getelementptr inbounds %struct.cluster_msg, ptr %msg, i32 0, i32 5
  %145 = ptrtoint ptr %raid_slot.i99.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %raid_slot.i99.i, align 8
  %147 = tail call i32 @llvm.bswap.i32(i32 %146) #15
  %call.i100.i = tail call ptr @md_find_rdev_nr_rcu(ptr noundef %12, i32 noundef %147) #15
  %tobool.not.i101.i = icmp eq ptr %call.i100.i, null
  br i1 %tobool.not.i101.i, label %rcu_read_lock.exit.i102.i.do.end.i107.i_crit_edge, label %land.lhs.true.i105.i

rcu_read_lock.exit.i102.i.do.end.i107.i_crit_edge: ; preds = %rcu_read_lock.exit.i102.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i107.i

land.lhs.true.i105.i:                             ; preds = %rcu_read_lock.exit.i102.i
  %flags.i103.i = getelementptr inbounds %struct.md_rdev, ptr %call.i100.i, i32 0, i32 16
  %148 = ptrtoint ptr %flags.i103.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load volatile i32, ptr %flags.i103.i, align 4
  %and1.i.i104.i = and i32 %149, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i104.i)
  %tobool2.not.i.i = icmp eq i32 %and1.i.i104.i, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i105.i.do.end.i107.i_crit_edge, label %if.then.i106.i

land.lhs.true.i105.i.do.end.i107.i_crit_edge:     ; preds = %land.lhs.true.i105.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i107.i

if.then.i106.i:                                   ; preds = %land.lhs.true.i105.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags.i103.i) #15
  br label %if.end.i108.i

do.end.i107.i:                                    ; preds = %land.lhs.true.i105.i.do.end.i107.i_crit_edge, %rcu_read_lock.exit.i102.i.do.end.i107.i_crit_edge
  %150 = ptrtoint ptr %raid_slot.i99.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %raid_slot.i99.i, align 8
  %152 = tail call i32 @llvm.bswap.i32(i32 %151) #15
  %call5.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.82, i32 noundef 568, i32 noundef %152) #18
  br label %if.end.i108.i

if.end.i108.i:                                    ; preds = %do.end.i107.i, %if.then.i106.i
  %call.i9.i.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i9.i.i, label %if.end.i108.i.process_readd_disk.exit.i_crit_edge, label %land.lhs.true.i12.i.i

if.end.i108.i.process_readd_disk.exit.i_crit_edge: ; preds = %if.end.i108.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %process_readd_disk.exit.i

land.lhs.true.i12.i.i:                            ; preds = %if.end.i108.i
  %call1.i10.i.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i10.i.i)
  %tobool.not.i11.i.i = icmp eq i32 %call1.i10.i.i, 0
  br i1 %tobool.not.i11.i.i, label %land.lhs.true.i12.i.i.process_readd_disk.exit.i_crit_edge, label %land.lhs.true2.i14.i.i

land.lhs.true.i12.i.i.process_readd_disk.exit.i_crit_edge: ; preds = %land.lhs.true.i12.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %process_readd_disk.exit.i

land.lhs.true2.i14.i.i:                           ; preds = %land.lhs.true.i12.i.i
  %.b4.i13.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i13.i.i, label %land.lhs.true2.i14.i.i.process_readd_disk.exit.i_crit_edge, label %if.then.i15.i.i

land.lhs.true2.i14.i.i.process_readd_disk.exit.i_crit_edge: ; preds = %land.lhs.true2.i14.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %process_readd_disk.exit.i

if.then.i15.i.i:                                  ; preds = %land.lhs.true2.i14.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.78, i32 noundef 724, ptr noundef nonnull @.str.80) #15
  br label %process_readd_disk.exit.i

process_readd_disk.exit.i:                        ; preds = %if.then.i15.i.i, %land.lhs.true2.i14.i.i.process_readd_disk.exit.i_crit_edge, %land.lhs.true.i12.i.i.process_readd_disk.exit.i_crit_edge, %if.end.i108.i.process_readd_disk.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !321
  %153 = tail call i32 @llvm.read_register.i32(metadata !299) #15
  %and.i.i.i.i.i16.i.i = and i32 %153, -16384
  %154 = inttoptr i32 %and.i.i.i.i.i16.i.i to ptr
  %preempt_count.i.i.i.i17.i.i = getelementptr inbounds %struct.thread_info, ptr %154, i32 0, i32 1
  %155 = ptrtoint ptr %preempt_count.i.i.i.i17.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load volatile i32, ptr %preempt_count.i.i.i.i17.i.i, align 4
  %sub.i.i.i.i109.i = add i32 %156, -1
  store volatile i32 %sub.i.i.i.i109.i, ptr %preempt_count.i.i.i.i17.i.i, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  br label %if.end9

sw.bb29.i:                                        ; preds = %if.end22.i
  %recovery_map.i.i = getelementptr inbounds %struct.md_cluster_info, ptr %14, i32 0, i32 14
  tail call void @_set_bit(i32 noundef %19, ptr noundef %recovery_map.i.i) #15
  %recovery_thread.i.i = getelementptr inbounds %struct.md_cluster_info, ptr %14, i32 0, i32 13
  %157 = ptrtoint ptr %recovery_thread.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %recovery_thread.i.i, align 4
  %tobool.not.i111.i = icmp eq ptr %158, null
  br i1 %tobool.not.i111.i, label %if.then.i113.i, label %sw.bb29.i.if.end6.i.i_crit_edge

sw.bb29.i.if.end6.i.i_crit_edge:                  ; preds = %sw.bb29.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6.i.i

if.then.i113.i:                                   ; preds = %sw.bb29.i
  %call.i112.i = tail call ptr @md_register_thread(ptr noundef nonnull @recover_bitmaps, ptr noundef %12, ptr noundef nonnull @.str.42) #15
  %159 = ptrtoint ptr %recovery_thread.i.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr %call.i112.i, ptr %recovery_thread.i.i, align 4
  %tobool3.not.i.i = icmp eq ptr %call.i112.i, null
  br i1 %tobool3.not.i.i, label %do.end.i115.i, label %if.then.i113.i.if.end6.i.i_crit_edge

if.then.i113.i.if.end6.i.i_crit_edge:             ; preds = %if.then.i113.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6.i.i

do.end.i115.i:                                    ; preds = %if.then.i113.i
  call void @__sanitizer_cov_trace_pc() #17
  %call5.i114.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43) #18
  br label %if.end9

if.end6.i.i:                                      ; preds = %if.then.i113.i.if.end6.i.i_crit_edge, %sw.bb29.i.if.end6.i.i_crit_edge
  %160 = ptrtoint ptr %recovery_thread.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %recovery_thread.i.i, align 4
  tail call void @md_wakeup_thread(ptr noundef %161) #15
  br label %if.end9

sw.bb31.i:                                        ; preds = %if.end22.i
  %high32.i = getelementptr inbounds %struct.cluster_msg, ptr %msg, i32 0, i32 3
  %162 = ptrtoint ptr %high32.i to i32
  call void @__asan_load8_noabort(i32 %162)
  %163 = load i64, ptr %high32.i, align 8
  %164 = tail call i64 @llvm.bswap.i64(i64 %163) #15
  %pers.i = getelementptr inbounds %struct.mddev, ptr %12, i32 0, i32 1
  %165 = ptrtoint ptr %pers.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %pers.i, align 4
  %size.i = getelementptr inbounds %struct.md_personality, ptr %166, i32 0, i32 15
  %167 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %size.i, align 4
  %call33.i = tail call i64 %168(ptr noundef %12, i64 noundef 0, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_cmp8(i64 %164, i64 %call33.i)
  %cmp34.not.i = icmp eq i64 %164, %call33.i
  br i1 %cmp34.not.i, label %sw.bb31.i.if.end9_crit_edge, label %process_recvd_msg.exit

sw.bb31.i.if.end9_crit_edge:                      ; preds = %sw.bb31.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9

sw.default.i:                                     ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #17
  %call44.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.71, i32 noundef 612, i32 noundef %18) #18
  br label %out

process_recvd_msg.exit:                           ; preds = %sw.bb31.i
  %bitmap.i = getelementptr inbounds %struct.mddev, ptr %12, i32 0, i32 85
  %169 = ptrtoint ptr %bitmap.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %bitmap.i, align 4
  %171 = ptrtoint ptr %high32.i to i32
  call void @__asan_load8_noabort(i32 %171)
  %172 = load i64, ptr %high32.i, align 8
  %173 = tail call i64 @llvm.bswap.i64(i64 %172) #15
  %call37.i = tail call i32 @md_bitmap_resize(ptr noundef %170, i64 noundef %173, i32 noundef 0, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %tobool7.not = icmp eq i32 %call37.i, 0
  br i1 %tobool7.not, label %process_recvd_msg.exit.if.end9_crit_edge, label %process_recvd_msg.exit.out_crit_edge

process_recvd_msg.exit.out_crit_edge:             ; preds = %process_recvd_msg.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

process_recvd_msg.exit.if.end9_crit_edge:         ; preds = %process_recvd_msg.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9

if.end9:                                          ; preds = %process_recvd_msg.exit.if.end9_crit_edge, %sw.bb31.i.if.end9_crit_edge, %if.end6.i.i, %do.end.i115.i, %process_readd_disk.exit.i, %process_remove_disk.exit.i, %sw.bb26.i, %if.end17.i.i, %if.then.i.i, %sw.bb23.i, %if.then23.i.i, %do.end20.i.i.if.end9_crit_edge, %do.end20.thread.i.i
  %call.i87 = call fastcc i32 @dlm_lock_sync(ptr noundef %5, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i87)
  %cmp.not = icmp eq i32 %call.i87, 0
  br i1 %cmp.not, label %if.end9.if.end19_crit_edge, label %do.end16, !prof !312

if.end9.if.end19_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19

do.end16:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, i32 noundef %call.i87) #18
  br label %if.end19

if.end19:                                         ; preds = %do.end16, %if.end9.if.end19_crit_edge
  %call20 = call fastcc i32 @dlm_lock_sync(ptr noundef %7, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21.not = icmp eq i32 %call20, 0
  br i1 %cmp21.not, label %if.end19.if.end34_crit_edge, label %do.end31, !prof !312

if.end19.if.end34_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end34

do.end31:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  %call33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, i32 noundef %call20) #18
  br label %if.end34

if.end34:                                         ; preds = %do.end31, %if.end19.if.end34_crit_edge
  %call35 = call fastcc i32 @dlm_lock_sync(ptr noundef %5, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36.not = icmp eq i32 %call35, 0
  br i1 %cmp36.not, label %if.end34.out_crit_edge, label %do.end46, !prof !312

if.end34.out_crit_edge:                           ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

do.end46:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #17
  %call48 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, i32 noundef %call35) #18
  br label %out

out:                                              ; preds = %do.end46, %if.end34.out_crit_edge, %process_recvd_msg.exit.out_crit_edge, %sw.default.i, %do.end.i
  %call.i88 = call fastcc i32 @dlm_lock_sync(ptr noundef %7, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i88)
  %cmp51.not = icmp eq i32 %call.i88, 0
  br i1 %cmp51.not, label %out.if.end64_crit_edge, label %do.end61, !prof !312

out.if.end64_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end64

do.end61:                                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  %call63 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, i32 noundef %call.i88) #18
  br label %if.end64

if.end64:                                         ; preds = %do.end61, %out.if.end64_crit_edge
  call void @mutex_unlock(ptr noundef %recv_mutex) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end64, %do.end
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %msg) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @lockres_init(ptr noundef %mddev, ptr noundef %name, ptr noundef %bastfn, i32 noundef %with_lvb) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %cluster_info = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 101
  %0 = ptrtoint ptr %cluster_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cluster_info, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 96) #19
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body:                                          ; preds = %entry
  %sync_locking = getelementptr inbounds %struct.dlm_lock_resource, ptr %call7.i.i, i32 0, i32 4
  tail call void @__init_waitqueue_head(ptr noundef %sync_locking, ptr noundef nonnull @.str.83, ptr noundef nonnull @lockres_init.__key) #15
  %sync_locking_done = getelementptr inbounds %struct.dlm_lock_resource, ptr %call7.i.i, i32 0, i32 5
  %3 = ptrtoint ptr %sync_locking_done to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %sync_locking_done, align 8
  %lockspace = getelementptr inbounds %struct.md_cluster_info, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %lockspace to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lockspace, align 4
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %call7.i.i, align 8
  %mddev1 = getelementptr inbounds %struct.dlm_lock_resource, ptr %call7.i.i, i32 0, i32 7
  %7 = ptrtoint ptr %mddev1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %mddev, ptr %mddev1, align 8
  %mode = getelementptr inbounds %struct.dlm_lock_resource, ptr %call7.i.i, i32 0, i32 8
  %8 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %mode, align 4
  %call2 = tail call i32 @strlen(ptr noundef %name) #21
  %add = add i32 %call2, 1
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #20
  %name4 = getelementptr inbounds %struct.dlm_lock_resource, ptr %call7.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %name4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call9.i.i, ptr %name4, align 4
  %tobool6.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool6.not, label %do.body.out_err_crit_edge, label %if.end12

do.body.out_err_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_err

if.end12:                                         ; preds = %do.body
  %call15 = tail call i32 @strlcpy(ptr noundef nonnull %call9.i.i, ptr noundef %name, i32 noundef %add) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %with_lvb)
  %tobool16.not = icmp eq i32 %with_lvb, 0
  br i1 %tobool16.not, label %if.end12.if.end29_crit_edge, label %if.then17

if.end12.if.end29_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end29

if.then17:                                        ; preds = %if.end12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i85 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 64) #19
  %sb_lvbptr = getelementptr inbounds %struct.dlm_lock_resource, ptr %call7.i.i, i32 0, i32 1, i32 3
  %11 = ptrtoint ptr %sb_lvbptr to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i85, ptr %sb_lvbptr, align 8
  %tobool21.not = icmp eq ptr %call7.i.i85, null
  br i1 %tobool21.not, label %if.then17.out_err_crit_edge, label %if.end28

if.then17.out_err_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_err

if.end28:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #17
  %flags = getelementptr inbounds %struct.dlm_lock_resource, ptr %call7.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 8, ptr %flags, align 8
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.end12.if.end29_crit_edge
  %tobool30.not = icmp eq ptr %bastfn, null
  br i1 %tobool30.not, label %if.end29.if.end32_crit_edge, label %if.then31

if.end29.if.end32_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32

if.then31:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #17
  %bast = getelementptr inbounds %struct.dlm_lock_resource, ptr %call7.i.i, i32 0, i32 6
  %13 = ptrtoint ptr %bast to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %bastfn, ptr %bast, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.end29.if.end32_crit_edge
  %flags33 = getelementptr inbounds %struct.dlm_lock_resource, ptr %call7.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %flags33 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags33, align 8
  %or = or i32 %15, 1024
  store i32 %or, ptr %flags33, align 8
  %call34 = tail call fastcc i32 @dlm_lock_sync(ptr noundef nonnull %call7.i.i, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end42, label %if.end32.out_err_crit_edge

if.end32.out_err_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_err

if.end42:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #17
  %16 = ptrtoint ptr %flags33 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags33, align 8
  %and = and i32 %17, -1029
  %or45 = or i32 %and, 4
  store i32 %or45, ptr %flags33, align 8
  br label %cleanup

out_err:                                          ; preds = %if.end32.out_err_crit_edge, %if.then17.out_err_crit_edge, %do.body.out_err_crit_edge
  %.str.90.sink = phi ptr [ @.str.84, %do.body.out_err_crit_edge ], [ @.str.87, %if.then17.out_err_crit_edge ], [ @.str.90, %if.end32.out_err_crit_edge ]
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.90.sink, ptr noundef %name) #18
  %sb_lvbptr47 = getelementptr inbounds %struct.dlm_lock_resource, ptr %call7.i.i, i32 0, i32 1, i32 3
  %18 = ptrtoint ptr %sb_lvbptr47 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sb_lvbptr47, align 8
  tail call void @kfree(ptr noundef %19) #15
  %20 = ptrtoint ptr %name4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %name4, align 4
  tail call void @kfree(ptr noundef %21) #15
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #15
  br label %cleanup

cleanup:                                          ; preds = %out_err, %if.end42, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %out_err ], [ %call7.i.i, %if.end42 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dlm_lock_sync(ptr noundef %res, i32 noundef %mode) unnamed_addr #1 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %res, align 4
  %lksb = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 1
  %flags = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 3
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %name = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 2
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 4
  %call = tail call i32 @strlen(ptr noundef %5) #21
  %bast = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 6
  %6 = ptrtoint ptr %bast to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bast, align 4
  %call2 = tail call i32 @dlm_lock(ptr noundef %1, i32 noundef %mode, ptr noundef %lksb, i32 noundef %3, ptr noundef %5, i32 noundef %call, i32 noundef 0, ptr noundef nonnull @sync_ast, ptr noundef %res, ptr noundef %7) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %do.body3, label %entry.cleanup25_crit_edge

entry.cleanup25_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup25

do.body3:                                         ; preds = %entry
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 133) #15
  %sync_locking_done = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 5
  %8 = ptrtoint ptr %sync_locking_done to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %sync_locking_done, align 4, !range !322
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool7.not = icmp eq i8 %9, 0
  br i1 %tobool7.not, label %if.end9, label %do.body3.do.end17_crit_edge

do.body3.do.end17_crit_edge:                      ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end17

if.end9:                                          ; preds = %do.body3
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #15
  %10 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #15
  %sync_locking = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 4
  %call1044 = call i32 @prepare_to_wait_event(ptr noundef %sync_locking, ptr noundef nonnull %__wq_entry, i32 noundef 2) #15
  %11 = ptrtoint ptr %sync_locking_done to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %sync_locking_done, align 4, !range !322
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool12.not45 = icmp eq i8 %12, 0
  br i1 %tobool12.not45, label %if.end9.cleanup_crit_edge, label %if.end9.for.end_crit_edge

if.end9.for.end_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end9.cleanup_crit_edge
  call void @schedule() #15
  %call10 = call i32 @prepare_to_wait_event(ptr noundef %sync_locking, ptr noundef nonnull %__wq_entry, i32 noundef 2) #15
  %13 = ptrtoint ptr %sync_locking_done to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %sync_locking_done, align 4, !range !322
  %tobool12.not = icmp eq i8 %14, 0
  br i1 %tobool12.not, label %cleanup.cleanup_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end9.for.end_crit_edge
  call void @finish_wait(ptr noundef %sync_locking, ptr noundef nonnull %__wq_entry) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #15
  br label %do.end17

do.end17:                                         ; preds = %for.end, %do.body3.do.end17_crit_edge
  %15 = ptrtoint ptr %sync_locking_done to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %sync_locking_done, align 4
  %16 = ptrtoint ptr %lksb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %lksb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp = icmp eq i32 %17, 0
  br i1 %cmp, label %if.then20, label %do.end17.cleanup25_crit_edge

do.end17.cleanup25_crit_edge:                     ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup25

if.then20:                                        ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #17
  %mode21 = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 8
  %18 = ptrtoint ptr %mode21 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %mode, ptr %mode21, align 4
  br label %cleanup25

cleanup25:                                        ; preds = %if.then20, %do.end17.cleanup25_crit_edge, %entry.cleanup25_crit_edge
  %retval.0 = phi i32 [ %call2, %entry.cleanup25_crit_edge ], [ 0, %if.then20 ], [ %17, %do.end17.cleanup25_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ack_bast(ptr nocapture noundef readonly %arg, i32 noundef %mode) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %mddev = getelementptr inbounds %struct.dlm_lock_resource, ptr %arg, i32 0, i32 7
  %0 = ptrtoint ptr %mddev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mddev, align 4
  %cluster_info = getelementptr inbounds %struct.mddev, ptr %1, i32 0, i32 101
  %2 = ptrtoint ptr %cluster_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cluster_info, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %mode)
  %cmp = icmp eq i32 %mode, 5
  br i1 %cmp, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end3

if.then:                                          ; preds = %entry
  %state = getelementptr inbounds %struct.md_cluster_info, ptr %3, i32 0, i32 22
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state, align 4
  %6 = and i32 %5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %recv_thread = getelementptr inbounds %struct.md_cluster_info, ptr %3, i32 0, i32 19
  %7 = ptrtoint ptr %recv_thread to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %recv_thread, align 4
  tail call void @md_wakeup_thread(ptr noundef %8) #15
  br label %if.end3

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_set_bit(i32 noundef 7, ptr noundef %state) #15
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.then1, %entry.if.end3_crit_edge
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @md_unregister_thread(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lockres_free(ptr noundef %res) unnamed_addr #1 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %res, null
  br i1 %tobool.not, label %entry.cleanup28_crit_edge, label %if.end

entry.cleanup28_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup28

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %res, align 4
  %lksb = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 1
  %sb_lkid = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %sb_lkid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sb_lkid, align 4
  %call = tail call i32 @dlm_unlock(ptr noundef %1, i32 noundef %3, i32 noundef 131072, ptr noundef %lksb, ptr noundef nonnull %res) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %do.body7, label %do.end, !prof !312

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %name = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 2
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 4
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, ptr noundef %5, i32 noundef %call) #18
  br label %if.end25

do.body7:                                         ; preds = %if.end
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 251) #15
  %sync_locking_done = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 5
  %6 = ptrtoint ptr %sync_locking_done to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %sync_locking_done, align 4, !range !322
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool13.not = icmp eq i8 %7, 0
  br i1 %tobool13.not, label %if.end15, label %do.body7.if.end25_crit_edge

do.body7.if.end25_crit_edge:                      ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end25

if.end15:                                         ; preds = %do.body7
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #15
  %8 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #15
  %sync_locking = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 4
  %call1646 = call i32 @prepare_to_wait_event(ptr noundef %sync_locking, ptr noundef nonnull %__wq_entry, i32 noundef 2) #15
  %9 = ptrtoint ptr %sync_locking_done to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %sync_locking_done, align 4, !range !322
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool18.not47 = icmp eq i8 %10, 0
  br i1 %tobool18.not47, label %if.end15.cleanup_crit_edge, label %if.end15.for.end_crit_edge

if.end15.for.end_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  br label %cleanup

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end15.cleanup_crit_edge
  call void @schedule() #15
  %call16 = call i32 @prepare_to_wait_event(ptr noundef %sync_locking, ptr noundef nonnull %__wq_entry, i32 noundef 2) #15
  %11 = ptrtoint ptr %sync_locking_done to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %sync_locking_done, align 4, !range !322
  %tobool18.not = icmp eq i8 %12, 0
  br i1 %tobool18.not, label %cleanup.cleanup_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end15.for.end_crit_edge
  call void @finish_wait(ptr noundef %sync_locking, ptr noundef nonnull %__wq_entry) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #15
  br label %if.end25

if.end25:                                         ; preds = %for.end, %do.body7.if.end25_crit_edge, %do.end
  %name26 = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 2
  %13 = ptrtoint ptr %name26 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %name26, align 4
  call void @kfree(ptr noundef %14) #15
  %sb_lvbptr = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 1, i32 3
  %15 = ptrtoint ptr %sb_lvbptr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sb_lvbptr, align 4
  call void @kfree(ptr noundef %16) #15
  call void @kfree(ptr noundef nonnull %res) #15
  br label %cleanup28

cleanup28:                                        ; preds = %if.end25, %entry.cleanup28_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_release_lockspace(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @recover_prep(ptr nocapture noundef readonly %arg) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %cluster_info = getelementptr inbounds %struct.mddev, ptr %arg, i32 0, i32 101
  %0 = ptrtoint ptr %cluster_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cluster_info, align 8
  %state = getelementptr inbounds %struct.md_cluster_info, ptr %1, i32 0, i32 22
  tail call void @_set_bit(i32 noundef 2, ptr noundef %state) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @recover_slot(ptr noundef %arg, ptr nocapture noundef readonly %slot) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %cluster_info = getelementptr inbounds %struct.mddev, ptr %arg, i32 0, i32 101
  %0 = ptrtoint ptr %cluster_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cluster_info, align 8
  %cluster_name = getelementptr inbounds %struct.mddev, ptr %arg, i32 0, i32 86, i32 11
  %2 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %slot, align 4
  %slot1 = getelementptr inbounds %struct.dlm_slot, ptr %slot, i32 0, i32 1
  %4 = ptrtoint ptr %slot1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %slot1, align 4
  %slot_number = getelementptr inbounds %struct.md_cluster_info, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %slot_number to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %slot_number, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %cluster_name, i32 noundef %3, i32 noundef %5, i32 noundef %7) #18
  %8 = ptrtoint ptr %slot1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %slot1, align 4
  %sub = add i32 %9, -1
  %10 = ptrtoint ptr %cluster_info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cluster_info, align 8
  %recovery_map.i = getelementptr inbounds %struct.md_cluster_info, ptr %11, i32 0, i32 14
  tail call void @_set_bit(i32 noundef %sub, ptr noundef %recovery_map.i) #15
  %recovery_thread.i = getelementptr inbounds %struct.md_cluster_info, ptr %11, i32 0, i32 13
  %12 = ptrtoint ptr %recovery_thread.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %recovery_thread.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.then.i, label %entry.if.end6.i_crit_edge

entry.if.end6.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6.i

if.then.i:                                        ; preds = %entry
  %call.i = tail call ptr @md_register_thread(ptr noundef nonnull @recover_bitmaps, ptr noundef %arg, ptr noundef nonnull @.str.42) #15
  %14 = ptrtoint ptr %recovery_thread.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i, ptr %recovery_thread.i, align 4
  %tobool3.not.i = icmp eq ptr %call.i, null
  br i1 %tobool3.not.i, label %do.end.i, label %if.then.i.if.end6.i_crit_edge

if.then.i.if.end6.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43) #18
  br label %__recover_slot.exit

if.end6.i:                                        ; preds = %if.then.i.if.end6.i_crit_edge, %entry.if.end6.i_crit_edge
  %15 = ptrtoint ptr %recovery_thread.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %recovery_thread.i, align 4
  tail call void @md_wakeup_thread(ptr noundef %16) #15
  br label %__recover_slot.exit

__recover_slot.exit:                              ; preds = %if.end6.i, %do.end.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @recover_done(ptr nocapture noundef readonly %arg, ptr nocapture noundef readnone %slots, i32 noundef %num_slots, i32 noundef %our_slot, i32 noundef %generation) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %cluster_info = getelementptr inbounds %struct.mddev, ptr %arg, i32 0, i32 101
  %0 = ptrtoint ptr %cluster_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cluster_info, align 8
  %slot_number = getelementptr inbounds %struct.md_cluster_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %slot_number to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %our_slot, ptr %slot_number, align 8
  %state = getelementptr inbounds %struct.md_cluster_info, ptr %1, i32 0, i32 22
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %state, align 4
  %5 = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %completion = getelementptr inbounds %struct.md_cluster_info, ptr %1, i32 0, i32 3
  tail call void @complete(ptr noundef %completion) #15
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %state) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %state) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @recover_bitmaps(ptr nocapture noundef readonly %thread) #1 align 64 {
entry:
  %str = alloca [64 x i8], align 1
  %lo = alloca i64, align 8
  %hi = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %mddev1 = getelementptr inbounds %struct.md_thread, ptr %thread, i32 0, i32 1
  %0 = ptrtoint ptr %mddev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mddev1, align 4
  %cluster_info = getelementptr inbounds %struct.mddev, ptr %1, i32 0, i32 101
  %2 = ptrtoint ptr %cluster_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cluster_info, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %str) #15
  %4 = call ptr @memset(ptr %str, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %lo) #15
  %5 = ptrtoint ptr %lo to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 -1, ptr %lo, align 8, !annotation !309
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %hi) #15
  %6 = ptrtoint ptr %hi to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 -1, ptr %hi, align 8, !annotation !309
  %recovery_map = getelementptr inbounds %struct.md_cluster_info, ptr %3, i32 0, i32 14
  %7 = ptrtoint ptr %recovery_map to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %recovery_map, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not86 = icmp eq i32 %8, 0
  br i1 %tobool.not86, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %suspend_lock = getelementptr inbounds %struct.md_cluster_info, ptr %3, i32 0, i32 9
  %suspend_lo = getelementptr inbounds %struct.md_cluster_info, ptr %3, i32 0, i32 10
  %suspend_from = getelementptr inbounds %struct.md_cluster_info, ptr %3, i32 0, i32 12
  %recovery = getelementptr inbounds %struct.mddev, ptr %1, i32 0, i32 56
  %reshape_position = getelementptr inbounds %struct.mddev, ptr %1, i32 0, i32 34
  %sync_thread = getelementptr inbounds %struct.mddev, ptr %1, i32 0, i32 41
  %recovery_cp = getelementptr inbounds %struct.mddev, ptr %1, i32 0, i32 67
  %thread51 = getelementptr inbounds %struct.mddev, ptr %1, i32 0, i32 40
  br label %while.body

while.body:                                       ; preds = %clear_bit.while.body_crit_edge, %while.body.lr.ph
  %9 = phi i32 [ %8, %while.body.lr.ph ], [ %33, %clear_bit.while.body_crit_edge ]
  %10 = call i32 @llvm.ctlz.i32(i32 %9, i1 true) #15, !range !323
  %sub = xor i32 %10, 31
  %call3 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %str, i32 noundef 64, ptr noundef nonnull @.str.34, i32 noundef %sub)
  %call5 = call fastcc ptr @lockres_init(ptr noundef %1, ptr noundef nonnull %str, ptr noundef null, i32 noundef 1)
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %do.end, label %if.end

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  %call7 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45) #18
  br label %clear_bit

if.end:                                           ; preds = %while.body
  %call8 = call fastcc i32 @dlm_lock_sync_interruptible(ptr noundef nonnull %call5, i32 noundef 4, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end17, label %do.end13

do.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef nonnull %str, i32 noundef %call8) #18
  br label %clear_bit

if.end17:                                         ; preds = %if.end
  %call18 = call i32 @md_bitmap_copy_from_slot(ptr noundef %1, i32 noundef %sub, ptr noundef nonnull %lo, ptr noundef nonnull %hi, i1 noundef zeroext true) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end26, label %do.end23

do.end23:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  %call25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef %sub) #18
  br label %clear_bit

if.end26:                                         ; preds = %if.end17
  call void @_raw_spin_lock_irq(ptr noundef %suspend_lock) #15
  %11 = call ptr @memset(ptr %suspend_lo, i32 0, i32 16)
  %12 = ptrtoint ptr %suspend_from to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %suspend_from, align 8
  call void @_raw_spin_unlock_irq(ptr noundef %suspend_lock) #15
  %13 = ptrtoint ptr %recovery to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %recovery, align 4
  %15 = and i32 %14, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool29.not = icmp eq i32 %15, 0
  br i1 %tobool29.not, label %if.end26.if.end36_crit_edge, label %land.lhs.true

if.end26.if.end36_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end36

land.lhs.true:                                    ; preds = %if.end26
  %16 = ptrtoint ptr %recovery to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %recovery, align 4
  %18 = and i32 %17, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool32.not = icmp eq i32 %18, 0
  br i1 %tobool32.not, label %land.lhs.true.if.end36_crit_edge, label %land.lhs.true33

land.lhs.true.if.end36_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end36

land.lhs.true33:                                  ; preds = %land.lhs.true
  %19 = ptrtoint ptr %reshape_position to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %reshape_position, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %20)
  %cmp.not = icmp eq i64 %20, -1
  br i1 %cmp.not, label %land.lhs.true33.if.end36_crit_edge, label %if.then35

land.lhs.true33.if.end36_crit_edge:               ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end36

if.then35:                                        ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #17
  %21 = ptrtoint ptr %sync_thread to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sync_thread, align 8
  call void @md_wakeup_thread(ptr noundef %22) #15
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %land.lhs.true33.if.end36_crit_edge, %land.lhs.true.if.end36_crit_edge, %if.end26.if.end36_crit_edge
  %23 = ptrtoint ptr %hi to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %hi, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %24)
  %cmp37.not = icmp eq i64 %24, 0
  br i1 %cmp37.not, label %if.end36.clear_bit_crit_edge, label %if.then39

if.end36.clear_bit_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #17
  br label %clear_bit

if.then39:                                        ; preds = %if.end36
  %25 = ptrtoint ptr %lo to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %lo, align 8
  %27 = ptrtoint ptr %recovery_cp to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %recovery_cp, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %26, i64 %28)
  %cmp40 = icmp ult i64 %26, %28
  br i1 %cmp40, label %if.end44.thread, label %if.end44

if.end44.thread:                                  ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #17
  %29 = ptrtoint ptr %recovery_cp to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %26, ptr %recovery_cp, align 8
  br label %if.then48

if.end44:                                         ; preds = %if.then39
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %28)
  %cmp46.not = icmp eq i64 %28, -1
  br i1 %cmp46.not, label %if.end44.clear_bit_crit_edge, label %if.end44.if.then48_crit_edge

if.end44.if.then48_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then48

if.end44.clear_bit_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #17
  br label %clear_bit

if.then48:                                        ; preds = %if.end44.if.then48_crit_edge, %if.end44.thread
  call void @_clear_bit(i32 noundef 12, ptr noundef %recovery) #15
  call void @_set_bit(i32 noundef 5, ptr noundef %recovery) #15
  %30 = ptrtoint ptr %thread51 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %thread51, align 4
  call void @md_wakeup_thread(ptr noundef %31) #15
  br label %clear_bit

clear_bit:                                        ; preds = %if.then48, %if.end44.clear_bit_crit_edge, %if.end36.clear_bit_crit_edge, %do.end23, %do.end13, %do.end
  call fastcc void @lockres_free(ptr noundef %call5)
  call void @_clear_bit(i32 noundef %sub, ptr noundef %recovery_map) #15
  %32 = ptrtoint ptr %recovery_map to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %recovery_map, align 8
  %tobool.not = icmp eq i32 %33, 0
  br i1 %tobool.not, label %clear_bit.while.end_crit_edge, label %clear_bit.while.body_crit_edge

clear_bit.while.body_crit_edge:                   ; preds = %clear_bit
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

clear_bit.while.end_crit_edge:                    ; preds = %clear_bit
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.end:                                        ; preds = %clear_bit.while.end_crit_edge, %entry.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %hi) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %lo) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %str) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @md_wakeup_thread(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dlm_lock_sync_interruptible(ptr noundef %res, i32 noundef %mode, ptr noundef %mddev) unnamed_addr #1 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %res, align 4
  %lksb = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 1
  %flags = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 3
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %name = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 2
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 4
  %call = tail call i32 @strlen(ptr noundef %5) #21
  %bast = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 6
  %6 = ptrtoint ptr %bast to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bast, align 4
  %call2 = tail call i32 @dlm_lock(ptr noundef %1, i32 noundef %mode, ptr noundef %lksb, i32 noundef %3, ptr noundef %5, i32 noundef %call, i32 noundef 0, ptr noundef nonnull @sync_ast, ptr noundef %res, ptr noundef %7) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %do.body3, label %entry.cleanup56_crit_edge

entry.cleanup56_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup56

do.body3:                                         ; preds = %entry
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 162) #15
  %sync_locking_done = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 5
  %8 = ptrtoint ptr %sync_locking_done to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %sync_locking_done, align 4, !range !322
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool7.not = icmp eq i8 %9, 0
  br i1 %tobool7.not, label %lor.lhs.false, label %do.body3.if.else_crit_edge

do.body3.if.else_crit_edge:                       ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

lor.lhs.false:                                    ; preds = %do.body3
  %call8 = tail call zeroext i1 @kthread_should_stop() #15
  br i1 %call8, label %lor.lhs.false.do.end28_crit_edge, label %lor.lhs.false9

lor.lhs.false.do.end28_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end28

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %flags10 = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 5
  %10 = ptrtoint ptr %flags10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %flags10, align 4
  %12 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool12.not = icmp eq i32 %12, 0
  br i1 %tobool12.not, label %if.end14, label %lor.lhs.false9.do.end28_crit_edge

lor.lhs.false9.do.end28_crit_edge:                ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end28

if.end14:                                         ; preds = %lor.lhs.false9
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #15
  %13 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #15
  %sync_locking = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 4
  %call1588 = call i32 @prepare_to_wait_event(ptr noundef %sync_locking, ptr noundef nonnull %__wq_entry, i32 noundef 2) #15
  %14 = ptrtoint ptr %sync_locking_done to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %sync_locking_done, align 4, !range !322
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool17.not89 = icmp eq i8 %15, 0
  br i1 %tobool17.not89, label %if.end14.lor.lhs.false18_crit_edge, label %if.end14.for.end_crit_edge

if.end14.for.end_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

if.end14.lor.lhs.false18_crit_edge:               ; preds = %if.end14
  br label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %cleanup.lor.lhs.false18_crit_edge, %if.end14.lor.lhs.false18_crit_edge
  %call19 = call zeroext i1 @kthread_should_stop() #15
  br i1 %call19, label %lor.lhs.false18.for.end_crit_edge, label %lor.lhs.false20

lor.lhs.false18.for.end_crit_edge:                ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

lor.lhs.false20:                                  ; preds = %lor.lhs.false18
  %16 = ptrtoint ptr %flags10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %flags10, align 4
  %18 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool23.not = icmp eq i32 %18, 0
  br i1 %tobool23.not, label %cleanup, label %lor.lhs.false20.for.end_crit_edge

lor.lhs.false20.for.end_crit_edge:                ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

cleanup:                                          ; preds = %lor.lhs.false20
  call void @schedule() #15
  %call15 = call i32 @prepare_to_wait_event(ptr noundef %sync_locking, ptr noundef nonnull %__wq_entry, i32 noundef 2) #15
  %19 = ptrtoint ptr %sync_locking_done to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %sync_locking_done, align 4, !range !322
  %tobool17.not = icmp eq i8 %20, 0
  br i1 %tobool17.not, label %cleanup.lor.lhs.false18_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

cleanup.lor.lhs.false18_crit_edge:                ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false18

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %lor.lhs.false20.for.end_crit_edge, %lor.lhs.false18.for.end_crit_edge, %if.end14.for.end_crit_edge
  call void @finish_wait(ptr noundef %sync_locking, ptr noundef nonnull %__wq_entry) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #15
  br label %do.end28

do.end28:                                         ; preds = %for.end, %lor.lhs.false9.do.end28_crit_edge, %lor.lhs.false.do.end28_crit_edge
  %21 = ptrtoint ptr %sync_locking_done to i32
  call void @__asan_load1_noabort(i32 %21)
  %.pr = load i8, ptr %sync_locking_done, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool30.not = icmp eq i8 %.pr, 0
  br i1 %tobool30.not, label %if.then31, label %do.end28.if.else_crit_edge

do.end28.if.else_crit_edge:                       ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

if.then31:                                        ; preds = %do.end28
  %22 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %res, align 4
  %sb_lkid = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %sb_lkid to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sb_lkid, align 4
  %call35 = call i32 @dlm_unlock(ptr noundef %23, i32 noundef %25, i32 noundef 2, ptr noundef %lksb, ptr noundef %res) #15
  %26 = ptrtoint ptr %sync_locking_done to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %sync_locking_done, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp.not = icmp eq i32 %call35, 0
  br i1 %cmp.not, label %if.then31.cleanup56_crit_edge, label %do.end42, !prof !312

if.then31.cleanup56_crit_edge:                    ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup56

do.end42:                                         ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #17
  %27 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %name, align 4
  %call45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef %28, i32 noundef %call35) #18
  br label %cleanup56

if.else:                                          ; preds = %do.end28.if.else_crit_edge, %do.body3.if.else_crit_edge
  %29 = ptrtoint ptr %sync_locking_done to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %sync_locking_done, align 4
  %30 = ptrtoint ptr %lksb to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %lksb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp50 = icmp eq i32 %31, 0
  br i1 %cmp50, label %if.then51, label %if.else.cleanup56_crit_edge

if.else.cleanup56_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup56

if.then51:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %mode52 = getelementptr inbounds %struct.dlm_lock_resource, ptr %res, i32 0, i32 8
  %32 = ptrtoint ptr %mode52 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %mode, ptr %mode52, align 4
  br label %cleanup56

cleanup56:                                        ; preds = %if.then51, %if.else.cleanup56_crit_edge, %do.end42, %if.then31.cleanup56_crit_edge, %entry.cleanup56_crit_edge
  %retval.0 = phi i32 [ %call2, %entry.cleanup56_crit_edge ], [ -1, %do.end42 ], [ -1, %if.then31.cleanup56_crit_edge ], [ 0, %if.then51 ], [ %31, %if.else.cleanup56_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @md_bitmap_copy_from_slot(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_lock(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sync_ast(ptr noundef %arg) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %sync_locking_done = getelementptr inbounds %struct.dlm_lock_resource, ptr %arg, i32 0, i32 5
  %0 = ptrtoint ptr %sync_locking_done to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %sync_locking_done, align 4
  %sync_locking = getelementptr inbounds %struct.dlm_lock_resource, ptr %arg, i32 0, i32 4
  tail call void @__wake_up(ptr noundef %sync_locking, i32 noundef 3, i32 noundef 1, ptr noundef null) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_unlock(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_capacity_and_notify(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @md_bitmap_resize(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @md_reload_sb(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mddev_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @md_bitmap_sync_with_cluster(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent_env(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @md_find_rdev_nr_rcu(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sendmsg(ptr noundef %cinfo, ptr nocapture noundef %cmsg, i1 noundef zeroext %mddev_locked) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @lock_comm(ptr noundef %cinfo, i1 noundef zeroext %mddev_locked)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  %call2 = tail call fastcc i32 @__sendmsg(ptr noundef %cinfo, ptr noundef %cmsg)
  %token_lockres.i = getelementptr inbounds %struct.md_cluster_info, ptr %cinfo, i32 0, i32 17
  %0 = ptrtoint ptr %token_lockres.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %token_lockres.i, align 4
  %mode.i = getelementptr inbounds %struct.dlm_lock_resource, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %3)
  %cmp.not.i = icmp eq i32 %3, 5
  br i1 %cmp.not.i, label %if.then.unlock_comm.exit_crit_edge, label %do.end.i, !prof !312

if.then.unlock_comm.exit_crit_edge:               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %unlock_comm.exit

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 714, i32 noundef 9, ptr noundef null) #15
  br label %unlock_comm.exit

unlock_comm.exit:                                 ; preds = %do.end.i, %if.then.unlock_comm.exit_crit_edge
  %recv_mutex.i = getelementptr inbounds %struct.md_cluster_info, ptr %cinfo, i32 0, i32 4
  tail call void @mutex_unlock(ptr noundef %recv_mutex.i) #15
  %4 = ptrtoint ptr %token_lockres.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %token_lockres.i, align 4
  %call.i.i = tail call fastcc i32 @dlm_lock_sync(ptr noundef %5, i32 noundef 0) #15
  %state.i = getelementptr inbounds %struct.md_cluster_info, ptr %cinfo, i32 0, i32 22
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %state.i) #15
  %wait.i = getelementptr inbounds %struct.md_cluster_info, ptr %cinfo, i32 0, i32 21
  tail call void @__wake_up(ptr noundef %wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #15
  br label %if.end

if.end:                                           ; preds = %unlock_comm.exit, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call, %entry.if.end_crit_edge ], [ %call2, %unlock_comm.exit ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lock_comm(ptr noundef %cinfo, i1 noundef zeroext %mddev_locked) unnamed_addr #1 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cinfo, align 8
  br i1 %mddev_locked, label %land.lhs.true, label %entry.do.body46_crit_edge

entry.do.body46_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body46

land.lhs.true:                                    ; preds = %entry
  %state = getelementptr inbounds %struct.md_cluster_info, ptr %cinfo, i32 0, i32 22
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state, align 4
  %4 = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool2.not = icmp eq i32 %4, 0
  br i1 %tobool2.not, label %if.then, label %land.lhs.true.do.body46_crit_edge

land.lhs.true.do.body46_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body46

if.then:                                          ; preds = %land.lhs.true
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %state, i32 noundef 4) #15
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %state, align 4
  %and.i.i = and i32 %6, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %test_and_set_bit_lock.exit, label %if.then.land.rhs_crit_edge

if.then.land.rhs_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.rhs

test_and_set_bit_lock.exit:                       ; preds = %if.then
  tail call void @llvm.prefetch.p0(ptr %state, i32 1, i32 3, i32 1) #15
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %state, ptr %state, i32 256, ptr elementtype(i32) %state) #15, !srcloc !310
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !311
  %8 = and i32 %asmresult.i.i.i.i.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %phi.cmp.i.not = icmp eq i32 %8, 0
  br i1 %phi.cmp.i.not, label %test_and_set_bit_lock.exit.if.end36_crit_edge, label %test_and_set_bit_lock.exit.land.rhs_crit_edge

test_and_set_bit_lock.exit.land.rhs_crit_edge:    ; preds = %test_and_set_bit_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.rhs

test_and_set_bit_lock.exit.if.end36_crit_edge:    ; preds = %test_and_set_bit_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end36

land.rhs:                                         ; preds = %test_and_set_bit_lock.exit.land.rhs_crit_edge, %if.then.land.rhs_crit_edge
  %.b86 = load i1, ptr @lock_comm.__already_done, align 1
  br i1 %.b86, label %land.rhs.if.end36_crit_edge, label %if.then15, !prof !312

land.rhs.if.end36_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end36

if.then15:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @lock_comm.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 699, i32 noundef 9, ptr noundef null) #15
  br label %if.end36

if.end36:                                         ; preds = %if.then15, %land.rhs.if.end36_crit_edge, %test_and_set_bit_lock.exit.if.end36_crit_edge
  %thread = getelementptr inbounds %struct.mddev, ptr %1, i32 0, i32 40
  %9 = ptrtoint ptr %thread to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %thread, align 4
  tail call void @md_wakeup_thread(ptr noundef %10) #15
  br label %do.body46

do.body46:                                        ; preds = %if.end36, %land.lhs.true.do.body46_crit_edge, %entry.do.body46_crit_edge
  %tobool68.not = phi i1 [ false, %if.end36 ], [ true, %land.lhs.true.do.body46_crit_edge ], [ true, %entry.do.body46_crit_edge ]
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 705) #15
  %state52 = getelementptr inbounds %struct.md_cluster_info, ptr %cinfo, i32 0, i32 22
  %call53 = tail call i32 @_test_and_set_bit(i32 noundef 4, ptr noundef %state52) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %do.body46.do.end66_crit_edge, label %if.end56

do.body46.do.end66_crit_edge:                     ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end66

if.end56:                                         ; preds = %do.body46
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #15
  %11 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #15
  %wait = getelementptr inbounds %struct.md_cluster_info, ptr %cinfo, i32 0, i32 21
  %call5791 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #15
  %call5992 = call i32 @_test_and_set_bit(i32 noundef 4, ptr noundef %state52) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5992)
  %tobool60.not93 = icmp eq i32 %call5992, 0
  br i1 %tobool60.not93, label %if.end56.for.end_crit_edge, label %if.end56.cleanup_crit_edge

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  br label %cleanup

if.end56.for.end_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end56.cleanup_crit_edge
  call void @schedule() #15
  %call57 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #15
  %call59 = call i32 @_test_and_set_bit(i32 noundef 4, ptr noundef %state52) #15
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end56.for.end_crit_edge
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #15
  br label %do.end66

do.end66:                                         ; preds = %for.end, %do.body46.do.end66_crit_edge
  %token_lockres.i = getelementptr inbounds %struct.md_cluster_info, ptr %cinfo, i32 0, i32 17
  %12 = ptrtoint ptr %token_lockres.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %token_lockres.i, align 4
  %call.i = call fastcc i32 @dlm_lock_sync(ptr noundef %13, i32 noundef 5) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %do.end.i

do.end.i:                                         ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #17
  %call1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.97, i32 noundef 673, i32 noundef %call.i) #18
  br label %lock_token.exit

if.else.i:                                        ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #17
  %recv_mutex.i = getelementptr inbounds %struct.md_cluster_info, ptr %cinfo, i32 0, i32 4
  call void @mutex_lock_nested(ptr noundef %recv_mutex.i, i32 noundef 0) #15
  br label %lock_token.exit

lock_token.exit:                                  ; preds = %if.else.i, %do.end.i
  br i1 %tobool68.not, label %lock_token.exit.if.end71_crit_edge, label %if.then69

lock_token.exit.if.end71_crit_edge:               ; preds = %lock_token.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end71

if.then69:                                        ; preds = %lock_token.exit
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i87 = call zeroext i1 @__kasan_check_write(ptr noundef %state52, i32 noundef 4) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !313
  call void @llvm.prefetch.p0(ptr %state52, i32 1, i32 3, i32 1) #15
  %14 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %state52, ptr %state52, i32 256, ptr elementtype(i32) %state52) #15, !srcloc !314
  br label %if.end71

if.end71:                                         ; preds = %if.then69, %lock_token.exit.if.end71_crit_edge
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__sendmsg(ptr nocapture noundef readonly %cinfo, ptr nocapture noundef %cmsg) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %slot_number = getelementptr inbounds %struct.md_cluster_info, ptr %cinfo, i32 0, i32 2
  %0 = ptrtoint ptr %slot_number to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %slot_number, align 8
  %sub = add i32 %1, -1
  %2 = tail call i32 @llvm.bswap.i32(i32 %sub)
  %slot1 = getelementptr inbounds %struct.cluster_msg, ptr %cmsg, i32 0, i32 1
  %3 = ptrtoint ptr %slot1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %slot1, align 4
  %message_lockres = getelementptr inbounds %struct.md_cluster_info, ptr %cinfo, i32 0, i32 16
  %4 = ptrtoint ptr %message_lockres to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %message_lockres, align 8
  %call = tail call fastcc i32 @dlm_lock_sync(ptr noundef %5, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, i32 noundef %call) #18
  br label %failed_message

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %message_lockres to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %message_lockres, align 8
  %sb_lvbptr = getelementptr inbounds %struct.dlm_lock_resource, ptr %7, i32 0, i32 1, i32 3
  %8 = ptrtoint ptr %sb_lvbptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sb_lvbptr, align 4
  %10 = call ptr @memcpy(ptr %9, ptr %cmsg, i32 48)
  %11 = load ptr, ptr %message_lockres, align 8
  %call5 = tail call fastcc i32 @dlm_lock_sync(ptr noundef %11, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end13, label %do.end10

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, i32 noundef %call5) #18
  br label %failed_ack.preheader

if.end13:                                         ; preds = %if.end
  %ack_lockres = getelementptr inbounds %struct.md_cluster_info, ptr %cinfo, i32 0, i32 15
  %12 = ptrtoint ptr %ack_lockres to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ack_lockres, align 4
  %call14 = tail call fastcc i32 @dlm_lock_sync(ptr noundef %13, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end22, label %do.end19

do.end19:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, i32 noundef %call14) #18
  br label %failed_ack.preheader

if.end22:                                         ; preds = %if.end13
  %14 = ptrtoint ptr %ack_lockres to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ack_lockres, align 4
  %call24 = tail call fastcc i32 @dlm_lock_sync(ptr noundef %15, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end22.failed_ack.preheader_crit_edge, label %do.end29

if.end22.failed_ack.preheader_crit_edge:          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #17
  br label %failed_ack.preheader

do.end29:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #17
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, i32 noundef %call24) #18
  br label %failed_ack.preheader

failed_ack.preheader:                             ; preds = %do.end29, %if.end22.failed_ack.preheader_crit_edge, %do.end19, %do.end10
  %16 = ptrtoint ptr %message_lockres to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %message_lockres, align 8
  %call.i61 = tail call fastcc i32 @dlm_lock_sync(ptr noundef %17, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i61)
  %cmp.not62 = icmp eq i32 %call.i61, 0
  br i1 %cmp.not62, label %failed_ack.preheader.failed_message_crit_edge, label %failed_ack.preheader.do.end40_crit_edge, !prof !312

failed_ack.preheader.do.end40_crit_edge:          ; preds = %failed_ack.preheader
  br label %do.end40

failed_ack.preheader.failed_message_crit_edge:    ; preds = %failed_ack.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %failed_message

do.end40:                                         ; preds = %do.end40.do.end40_crit_edge, %failed_ack.preheader.do.end40_crit_edge
  %call.i63 = phi i32 [ %call.i, %do.end40.do.end40_crit_edge ], [ %call.i61, %failed_ack.preheader.do.end40_crit_edge ]
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110, i32 noundef %call.i63) #18
  %18 = ptrtoint ptr %message_lockres to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %message_lockres, align 8
  %call.i = tail call fastcc i32 @dlm_lock_sync(ptr noundef %19, i32 noundef 0) #15
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end40.failed_message_crit_edge, label %do.end40.do.end40_crit_edge, !prof !312

do.end40.do.end40_crit_edge:                      ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end40

do.end40.failed_message_crit_edge:                ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #17
  br label %failed_message

failed_message:                                   ; preds = %do.end40.failed_message_crit_edge, %failed_ack.preheader.failed_message_crit_edge, %do.end
  %error.0 = phi i32 [ %call, %do.end ], [ 0, %failed_ack.preheader.failed_message_crit_edge ], [ 0, %do.end40.failed_message_crit_edge ]
  ret i32 %error.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #14

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @md_check_recovery(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_bitmap_from_slot(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @md_bitmap_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @md_update_sb(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @md_bitmap_update_sb(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_md_cluster_operations() local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 150)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 150)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nounwind readonly }
attributes #13 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind allocsize(2) }
attributes #20 = { nounwind allocsize(0) }
attributes #21 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !14, !15, !16, !17, !19, !20, !21, !23, !25, !26, !28, !29, !31, !32, !34, !36, !37, !38, !39, !41, !43, !44, !45, !47, !49, !51, !53, !54, !55, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !73, !74, !75, !77, !79, !80, !82, !84, !85, !86, !87, !89, !91, !92, !93, !94, !96, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !110, !111, !112, !114, !115, !116, !117, !119, !120, !121, !123, !124, !125, !127, !128, !129, !131, !132, !133, !135, !137, !138, !139, !140, !142, !144, !146, !147, !148, !149, !151, !152, !153, !154, !156, !157, !158, !160, !161, !163, !164, !165, !166, !168, !169, !171, !172, !173, !174, !176, !177, !178, !180, !181, !182, !184, !185, !186, !187, !189, !190, !191, !192, !194, !196, !197, !198, !199, !201, !202, !203, !204, !206, !207, !208, !210, !211, !212, !214, !215, !216, !218, !219, !220, !222, !224, !225, !226, !227, !229, !230, !231, !232, !234, !236, !237, !238, !239, !241, !242, !243, !244, !246, !247, !248, !250, !251, !252, !254, !255, !256, !257, !259, !260, !261, !263, !264, !265, !266, !268, !269, !270, !271, !273, !274, !275, !276, !278, !279, !280, !282, !283, !284, !286, !287, !288, !290, !291, !293, !294, !295, !297, !298}
!llvm.named.register.sp = !{!299}
!llvm.module.flags = !{!300, !301, !302, !303, !304, !305, !306, !307}
!llvm.ident = !{!308}

!0 = !{ptr @__initcall__kmod_md_cluster__286_1598_cluster_init6, !1, !"__initcall__kmod_md_cluster__286_1598_cluster_init6", i1 false, i1 false}
!1 = !{!"../drivers/md/md-cluster.c", i32 1598, i32 1}
!2 = !{ptr @__exitcall_cluster_exit, !3, !"__exitcall_cluster_exit", i1 false, i1 false}
!3 = !{!"../drivers/md/md-cluster.c", i32 1599, i32 1}
!4 = !{ptr @__UNIQUE_ID_author287, !5, !"__UNIQUE_ID_author287", i1 false, i1 false}
!5 = !{!"../drivers/md/md-cluster.c", i32 1600, i32 1}
!6 = !{ptr @__UNIQUE_ID_file288, !7, !"__UNIQUE_ID_file288", i1 false, i1 false}
!7 = !{!"../drivers/md/md-cluster.c", i32 1601, i32 1}
!8 = !{ptr @__UNIQUE_ID_license289, !7, !"__UNIQUE_ID_license289", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_description290, !10, !"__UNIQUE_ID_description290", i1 false, i1 false}
!10 = !{!"../drivers/md/md-cluster.c", i32 1602, i32 1}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/md/md-cluster.c", i32 1587, i32 2}
!13 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @cluster_init._entry, !12, !"_entry", i1 false, i1 false}
!16 = !{ptr @cluster_init._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/md/md-cluster.c", i32 1588, i32 2}
!19 = !{ptr @cluster_init._entry.3, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @cluster_init._entry_ptr.5, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @cluster_ops, !22, !"cluster_ops", i1 false, i1 false}
!22 = !{!"../drivers/md/md-cluster.c", i32 1561, i32 37}
!23 = !{ptr @join.__key, !24, !"__key", i1 false, i1 false}
!24 = !{!"../drivers/md/md-cluster.c", i32 867, i32 2}
!25 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @join.__key.7, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/md/md-cluster.c", i32 870, i32 2}
!28 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @join.__key.9, !30, !"__key", i1 false, i1 false}
!30 = !{!"../drivers/md/md-cluster.c", i32 871, i32 2}
!31 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/md/md-cluster.c", i32 877, i32 15}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/md/md-cluster.c", i32 885, i32 3}
!36 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @join._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @join._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/md/md-cluster.c", i32 892, i32 62}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/md/md-cluster.c", i32 894, i32 3}
!43 = !{ptr @join._entry.15, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @join._entry_ptr.17, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/md/md-cluster.c", i32 897, i32 47}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/md/md-cluster.c", i32 900, i32 45}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/md/md-cluster.c", i32 903, i32 50}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/md/md-cluster.c", i32 910, i32 3}
!53 = !{ptr @join._entry.21, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @join._entry_ptr.23, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/md/md-cluster.c", i32 913, i32 43}
!57 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/md/md-cluster.c", i32 920, i32 3}
!59 = !{ptr @join._entry.25, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @join._entry_ptr.27, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/md/md-cluster.c", i32 925, i32 3}
!63 = !{ptr @join._entry.28, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @join._entry_ptr.30, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/md/md-cluster.c", i32 928, i32 2}
!67 = !{ptr @join._entry.31, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @join._entry_ptr.33, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.34, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/md/md-cluster.c", i32 929, i32 20}
!71 = !{ptr @.str.36, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/md/md-cluster.c", i32 936, i32 3}
!73 = !{ptr @join._entry.35, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @join._entry_ptr.37, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.38, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/md/md-cluster.c", i32 941, i32 46}
!77 = !{ptr @init_completion.__key, !78, !"__key", i1 false, i1 false}
!78 = !{!"../include/linux/completion.h", i32 87, i32 2}
!79 = !{ptr @.str.39, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @md_ls_ops, !81, !"md_ls_ops", i1 false, i1 false}
!81 = !{!"../drivers/md/md-cluster.c", i32 408, i32 39}
!82 = !{ptr @.str.40, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/md/md-cluster.c", i32 380, i32 2}
!84 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @recover_slot._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @recover_slot._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.42, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/md/md-cluster.c", i32 366, i32 12}
!89 = !{ptr @.str.43, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/md/md-cluster.c", i32 368, i32 4}
!91 = !{ptr @.str.44, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @__recover_slot._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @__recover_slot._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.45, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/md/md-cluster.c", i32 301, i32 4}
!96 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @recover_bitmaps._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @recover_bitmaps._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.48, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/md/md-cluster.c", i32 307, i32 4}
!101 = !{ptr @recover_bitmaps._entry.47, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @recover_bitmaps._entry_ptr.49, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.51, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/md/md-cluster.c", i32 313, i32 4}
!105 = !{ptr @recover_bitmaps._entry.50, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @recover_bitmaps._entry_ptr.52, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.53, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/md/md-cluster.c", i32 173, i32 4}
!109 = !{ptr @.str.54, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @dlm_lock_sync_interruptible._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @dlm_lock_sync_interruptible._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.55, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/md/md-cluster.c", i32 631, i32 3}
!114 = !{ptr @.str.56, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @recv_daemon._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @recv_daemon._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.58, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/md/md-cluster.c", i32 645, i32 3}
!119 = !{ptr @recv_daemon._entry.57, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @recv_daemon._entry_ptr.59, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.61, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/md/md-cluster.c", i32 649, i32 3}
!123 = !{ptr @recv_daemon._entry.60, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @recv_daemon._entry_ptr.62, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.64, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/md/md-cluster.c", i32 653, i32 3}
!127 = !{ptr @recv_daemon._entry.63, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @recv_daemon._entry_ptr.65, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.67, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/md/md-cluster.c", i32 658, i32 3}
!131 = !{ptr @recv_daemon._entry.66, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @recv_daemon._entry_ptr.68, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.69, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/md/md-cluster.c", i32 576, i32 6}
!135 = !{ptr @.str.70, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/md/md-cluster.c", i32 611, i32 3}
!137 = !{ptr @.str.71, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @process_recvd_msg._entry, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @process_recvd_msg._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.72, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/md/md-cluster.c", i32 513, i32 32}
!142 = !{ptr @.str.73, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/md/md-cluster.c", i32 515, i32 26}
!144 = !{ptr @.str.74, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/md/md-cluster.c", i32 516, i32 2}
!146 = !{ptr @.str.75, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @process_add_new_disk._entry, !145, !"_entry", i1 false, i1 false}
!148 = !{ptr @process_add_new_disk._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.76, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/md/md-cluster.c", i32 553, i32 3}
!151 = !{ptr @.str.77, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @process_remove_disk._entry, !150, !"_entry", i1 false, i1 false}
!153 = !{ptr @process_remove_disk._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!154 = distinct !{null, !155, !"__warned", i1 false, i1 false}
!155 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!156 = !{ptr @.str.78, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @.str.79, !155, !"<string literal>", i1 false, i1 false}
!158 = distinct !{null, !159, !"__warned", i1 false, i1 false}
!159 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!160 = !{ptr @.str.80, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @.str.81, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/md/md-cluster.c", i32 567, i32 3}
!163 = !{ptr @.str.82, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @process_readd_disk._entry, !162, !"_entry", i1 false, i1 false}
!165 = !{ptr @process_readd_disk._entry_ptr, !162, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @lockres_init.__key, !167, !"__key", i1 false, i1 false}
!167 = !{!"../drivers/md/md-cluster.c", i32 193, i32 2}
!168 = !{ptr @.str.83, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @.str.84, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/md/md-cluster.c", i32 201, i32 3}
!171 = !{ptr @.str.85, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @lockres_init._entry, !170, !"_entry", i1 false, i1 false}
!173 = !{ptr @lockres_init._entry_ptr, !170, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.87, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/md/md-cluster.c", i32 208, i32 4}
!176 = !{ptr @lockres_init._entry.86, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @lockres_init._entry_ptr.88, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.90, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/md/md-cluster.c", i32 221, i32 3}
!180 = !{ptr @lockres_init._entry.89, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @lockres_init._entry_ptr.91, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.92, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/md/md-cluster.c", i32 249, i32 3}
!184 = !{ptr @.str.93, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @lockres_free._entry, !183, !"_entry", i1 false, i1 false}
!186 = !{ptr @lockres_free._entry_ptr, !183, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.94, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/md/md-cluster.c", i32 987, i32 3}
!189 = !{ptr @.str.95, !188, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @resync_bitmap._entry, !188, !"_entry", i1 false, i1 false}
!191 = !{ptr @resync_bitmap._entry_ptr, !188, !"_entry_ptr", i1 false, i1 false}
!192 = distinct !{null, !193, !"__already_done", i1 false, i1 false}
!193 = !{!"../drivers/md/md-cluster.c", i32 699, i32 3}
!194 = !{ptr @.str.96, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/md/md-cluster.c", i32 672, i32 3}
!196 = !{ptr @.str.97, !195, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @lock_token._entry, !195, !"_entry", i1 false, i1 false}
!198 = !{ptr @lock_token._entry_ptr, !195, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.98, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/md/md-cluster.c", i32 742, i32 3}
!201 = !{ptr @.str.99, !200, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @__sendmsg._entry, !200, !"_entry", i1 false, i1 false}
!203 = !{ptr @__sendmsg._entry_ptr, !200, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.101, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/md/md-cluster.c", i32 751, i32 3}
!206 = !{ptr @__sendmsg._entry.100, !205, !"_entry", i1 false, i1 false}
!207 = !{ptr @__sendmsg._entry_ptr.102, !205, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.104, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/md/md-cluster.c", i32 759, i32 3}
!210 = !{ptr @__sendmsg._entry.103, !209, !"_entry", i1 false, i1 false}
!211 = !{ptr @__sendmsg._entry_ptr.105, !209, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.107, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/md/md-cluster.c", i32 767, i32 3}
!214 = !{ptr @__sendmsg._entry.106, !213, !"_entry", i1 false, i1 false}
!215 = !{ptr @__sendmsg._entry_ptr.108, !213, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.110, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/md/md-cluster.c", i32 775, i32 3}
!218 = !{ptr @__sendmsg._entry.109, !217, !"_entry", i1 false, i1 false}
!219 = !{ptr @__sendmsg._entry_ptr.111, !217, !"_entry_ptr", i1 false, i1 false}
!220 = distinct !{null, !221, !"__already_done", i1 false, i1 false}
!221 = !{!"../drivers/md/md-cluster.c", i32 1055, i32 2}
!222 = !{ptr @.str.112, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/md/md-cluster.c", i32 1094, i32 3}
!224 = !{ptr @.str.113, !223, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @metadata_update_finish._entry, !223, !"_entry", i1 false, i1 false}
!226 = !{ptr @metadata_update_finish._entry_ptr, !223, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @.str.114, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/md/md-cluster.c", i32 1461, i32 3}
!229 = !{ptr @.str.115, !228, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @new_disk_ack._entry, !228, !"_entry", i1 false, i1 false}
!231 = !{ptr @new_disk_ack._entry_ptr, !228, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @.str.116, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/md/md.h", i32 632, i32 54}
!234 = !{ptr @.str.117, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/md/md-cluster.c", i32 971, i32 3}
!236 = !{ptr @.str.118, !235, !"<string literal>", i1 false, i1 false}
!237 = !{ptr @load_bitmaps._entry, !235, !"_entry", i1 false, i1 false}
!238 = !{ptr @load_bitmaps._entry_ptr, !235, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @.str.119, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/md/md-cluster.c", i32 821, i32 5}
!241 = !{ptr @.str.120, !240, !"<string literal>", i1 false, i1 false}
!242 = !{ptr @gather_all_resync_info._entry, !240, !"_entry", i1 false, i1 false}
!243 = !{ptr @gather_all_resync_info._entry_ptr, !240, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @.str.122, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/md/md-cluster.c", i32 840, i32 4}
!246 = !{ptr @gather_all_resync_info._entry.121, !245, !"_entry", i1 false, i1 false}
!247 = !{ptr @gather_all_resync_info._entry_ptr.123, !245, !"_entry_ptr", i1 false, i1 false}
!248 = !{ptr @.str.124, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/md/md-cluster.c", i32 1551, i32 4}
!250 = !{ptr @gather_bitmaps._entry, !249, !"_entry", i1 false, i1 false}
!251 = !{ptr @gather_bitmaps._entry_ptr, !249, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @.str.125, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/md/md-cluster.c", i32 1145, i32 4}
!254 = !{ptr @.str.126, !253, !"<string literal>", i1 false, i1 false}
!255 = !{ptr @resize_bitmaps._entry, !253, !"_entry", i1 false, i1 false}
!256 = !{ptr @resize_bitmaps._entry_ptr, !253, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @.str.128, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/md/md-cluster.c", i32 1158, i32 4}
!259 = !{ptr @resize_bitmaps._entry.127, !258, !"_entry", i1 false, i1 false}
!260 = !{ptr @resize_bitmaps._entry_ptr.129, !258, !"_entry_ptr", i1 false, i1 false}
!261 = !{ptr @.str.130, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/md/md-cluster.c", i32 1117, i32 3}
!263 = !{ptr @.str.131, !262, !"<string literal>", i1 false, i1 false}
!264 = !{ptr @update_bitmap_size._entry, !262, !"_entry", i1 false, i1 false}
!265 = !{ptr @update_bitmap_size._entry_ptr, !262, !"_entry_ptr", i1 false, i1 false}
!266 = !{ptr @.str.132, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/md/md-cluster.c", i32 1490, i32 3}
!268 = !{ptr @.str.133, !267, !"<string literal>", i1 false, i1 false}
!269 = !{ptr @lock_all_bitmaps._entry, !267, !"_entry", i1 false, i1 false}
!270 = !{ptr @lock_all_bitmaps._entry_ptr, !267, !"_entry_ptr", i1 false, i1 false}
!271 = !{ptr @.str.134, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/md/md-cluster.c", i32 1263, i32 3}
!273 = !{ptr @.str.135, !272, !"<string literal>", i1 false, i1 false}
!274 = !{ptr @update_size._entry, !272, !"_entry", i1 false, i1 false}
!275 = !{ptr @update_size._entry_ptr, !272, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @.str.137, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/md/md-cluster.c", i32 1283, i32 4}
!278 = !{ptr @update_size._entry.136, !277, !"_entry", i1 false, i1 false}
!279 = !{ptr @update_size._entry_ptr.138, !277, !"_entry_ptr", i1 false, i1 false}
!280 = !{ptr @.str.140, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/md/md-cluster.c", i32 1289, i32 3}
!282 = !{ptr @update_size._entry.139, !281, !"_entry", i1 false, i1 false}
!283 = !{ptr @update_size._entry_ptr.141, !281, !"_entry_ptr", i1 false, i1 false}
!284 = !{ptr @.str.143, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/md/md-cluster.c", i32 1304, i32 4}
!286 = !{ptr @update_size._entry.142, !285, !"_entry", i1 false, i1 false}
!287 = !{ptr @update_size._entry_ptr.144, !285, !"_entry_ptr", i1 false, i1 false}
!288 = !{ptr @update_size._entry.145, !289, !"_entry", i1 false, i1 false}
!289 = !{!"../drivers/md/md-cluster.c", i32 1312, i32 4}
!290 = !{ptr @update_size._entry_ptr.146, !289, !"_entry_ptr", i1 false, i1 false}
!291 = !{ptr @.str.147, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/md/md-cluster.c", i32 1207, i32 4}
!293 = !{ptr @cluster_check_sync_size._entry, !292, !"_entry", i1 false, i1 false}
!294 = !{ptr @cluster_check_sync_size._entry_ptr, !292, !"_entry_ptr", i1 false, i1 false}
!295 = !{ptr @.str.149, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/md/md-cluster.c", i32 1218, i32 4}
!297 = !{ptr @cluster_check_sync_size._entry.148, !296, !"_entry", i1 false, i1 false}
!298 = !{ptr @cluster_check_sync_size._entry_ptr.150, !296, !"_entry_ptr", i1 false, i1 false}
!299 = !{!"sp"}
!300 = !{i32 1, !"wchar_size", i32 2}
!301 = !{i32 1, !"min_enum_size", i32 4}
!302 = !{i32 8, !"branch-target-enforcement", i32 0}
!303 = !{i32 8, !"sign-return-address", i32 0}
!304 = !{i32 8, !"sign-return-address-all", i32 0}
!305 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!306 = !{i32 7, !"uwtable", i32 1}
!307 = !{i32 7, !"frame-pointer", i32 2}
!308 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!309 = !{!"auto-init"}
!310 = !{i64 2148392000, i64 2148392032, i64 2148392061, i64 2148392095, i64 2148392126, i64 2148392149}
!311 = !{i64 2148481105}
!312 = !{!"branch_weights", i32 2000, i32 1}
!313 = !{i64 2148479992}
!314 = !{i64 2148390387, i64 2148390419, i64 2148390448, i64 2148390482, i64 2148390513, i64 2148390536}
!315 = !{!"branch_weights", i32 1, i32 2000}
!316 = !{i64 2153937903}
!317 = !{i64 2152605047}
!318 = !{i64 2152605254}
!319 = !{i64 2153940674}
!320 = !{i64 2149399301}
!321 = !{i64 2149399567}
!322 = !{i8 0, i8 2}
!323 = !{i32 0, i32 33}
