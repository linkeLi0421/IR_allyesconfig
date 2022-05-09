; ModuleID = '/llk/IR_all_yes/drivers/block/drbd/drbd_bitmap.c_pt.bc'
source_filename = "../drivers/block/drbd/drbd_bitmap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
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
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.drbd_device = type { ptr, %struct.list_head, %struct.list_head, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.kref, i32, ptr, i64, ptr, ptr, i32, %struct.drbd_work, %struct.drbd_work, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, %union.drbd_state, %union.drbd_dev_state, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.rb_root, %struct.rb_root, [2 x %struct.list_head], [2 x %struct.list_head], i8, i32, i32, i32, i32, i32, [8 x i32], [8 x i32], i32, i32, i64, i64, i64, i64, i64, i32, ptr, i32, ptr, i32, i32, i32, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.list_head, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, %struct.drbd_md_io, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.wait_queue_head, %struct.atomic_t, i32, %struct.spinlock, i32, %struct.bm_io_work, i64, %struct.mutex, ptr, i8, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, ptr, i32, %struct.atomic_t, i32, i32, %struct.submit_worker }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.drbd_work = type { %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%union.drbd_state = type { %struct.anon.170 }
%struct.anon.170 = type { i32 }
%union.drbd_dev_state = type { %struct.anon.171 }
%struct.anon.171 = type { i32 }
%struct.rb_root = type { ptr }
%struct.drbd_md_io = type { ptr, i32, i32, ptr, %struct.atomic_t, i32, i32 }
%struct.bm_io_work = type { %struct.drbd_work, ptr, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.submit_worker = type { ptr, %struct.work_struct, %struct.list_head }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
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
%struct.drbd_bitmap = type { ptr, %struct.spinlock, i32, [64 x i32], i32, i32, i32, i32, i64, %struct.mutex, %struct.wait_queue_head, i32, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.150, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.30 }
%struct.llist_node = type { ptr }
%union.anon.30 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.32 }
%union.anon.32 = type { %struct.anon.33 }
%struct.anon.33 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.150 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.page = type { i32, %union.anon.17, %union.anon.156, %struct.atomic_t, i32 }
%union.anon.17 = type { %struct.anon.18 }
%struct.anon.18 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.156 = type { %struct.atomic_t }
%struct.drbd_backing_dev = type { ptr, ptr, %struct.drbd_md, ptr, i64 }
%struct.drbd_md = type { i64, i64, %struct.spinlock, [4 x i64], i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.drbd_peer_device = type { %struct.list_head, ptr, ptr, %struct.work_struct, ptr }
%struct.drbd_connection = type { %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.idr, i32, %struct.mutex, i32, i32, ptr, %struct.wait_queue_head, %struct.__kernel_sockaddr_storage, i32, %struct.__kernel_sockaddr_storage, i32, %struct.drbd_socket, %struct.drbd_socket, i32, i32, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.blk_plug, %struct.drbd_thread, %struct.drbd_thread, %struct.drbd_thread, ptr, ptr, ptr, ptr, %struct.drbd_work_queue, i32, i32, [16 x %struct.drbd_thread_timing_details], [16 x %struct.drbd_thread_timing_details], %struct.anon.195 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.__kernel_sockaddr_storage = type { %union.anon.191 }
%union.anon.191 = type { ptr, [124 x i8] }
%struct.drbd_socket = type { %struct.mutex, ptr, ptr, ptr }
%struct.blk_plug = type { ptr, ptr, i16, i16, i8, i8, i8, %struct.list_head }
%struct.drbd_thread = type { %struct.spinlock, ptr, %struct.completion, i32, ptr, ptr, ptr, i32, ptr }
%struct.drbd_work_queue = type { %struct.list_head, %struct.spinlock, %struct.wait_queue_head }
%struct.drbd_thread_timing_details = type { i32, ptr, ptr, i32, i32 }
%struct.anon.195 = type { i32, i8, i32, i32 }
%struct.drbd_resource = type { ptr, ptr, ptr, ptr, ptr, %struct.kref, %struct.idr, %struct.list_head, %struct.list_head, %struct.res_opts, %struct.mutex, %struct.mutex, %struct.spinlock, i8, i32, ptr }
%struct.res_opts = type { [32 x i8], i32, i32 }
%struct.drbd_bm_aio_ctx = type { ptr, %struct.list_head, i32, %struct.atomic_t, i32, i32, i32, %struct.kref }
%struct.disk_conf = type { [128 x i8], i32, [128 x i8], i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.132, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.132 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }

@drbd_bm_lock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 130, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"FIXME no bitmap in drbd_bm_lock!?\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"drbd_bm_lock\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/block/drbd/drbd_bitmap.c\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@drbd_bm_lock._entry_ptr = internal global ptr @drbd_bm_lock._entry, section ".printk_index", align 4
@drbd_bm_lock._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 140, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"%s[%d] going to '%s' but bitmap already locked for '%s' by %s[%d]\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@drbd_bm_lock._entry_ptr.8 = internal global ptr @drbd_bm_lock._entry.5, section ".printk_index", align 4
@.str.9 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"?\00", [30 x i8] zeroinitializer }, align 32
@drbd_bm_lock._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.1, ptr @.str.2, i32 144, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"FIXME bitmap already locked in bm_lock\0A\00", [56 x i8] zeroinitializer }, align 32
@drbd_bm_lock._entry_ptr.12 = internal global ptr @drbd_bm_lock._entry.10, section ".printk_index", align 4
@drbd_bm_unlock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 155, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"FIXME no bitmap in drbd_bm_unlock!?\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"drbd_bm_unlock\00", [17 x i8] zeroinitializer }, align 32
@drbd_bm_unlock._entry_ptr = internal global ptr @drbd_bm_unlock._entry, section ".printk_index", align 4
@drbd_bm_unlock._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.2, i32 160, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"FIXME bitmap not locked in bm_unlock\0A\00", [58 x i8] zeroinitializer }, align 32
@drbd_bm_unlock._entry_ptr.17 = internal global ptr @drbd_bm_unlock._entry.15, section ".printk_index", align 4
@drbd_bm_mark_for_writeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 260, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"BAD: page_nr: %u, number_of_pages: %u\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drbd_bm_mark_for_writeout\00", [38 x i8] zeroinitializer }, align 32
@drbd_bm_mark_for_writeout._entry_ptr = internal global ptr @drbd_bm_mark_for_writeout._entry, section ".printk_index", align 4
@drbd_bm_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&b->bm_lock\00", [20 x i8] zeroinitializer }, align 32
@drbd_bm_init.__key.21 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&b->bm_change\00", [18 x i8] zeroinitializer }, align 32
@drbd_bm_init.__key.23 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&b->bm_io_wait\00", [17 x i8] zeroinitializer }, align 32
@drbd_bm_capacity._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 451, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ASSERTION %s FAILED in %s\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"drbd_bm_capacity\00", [47 x i8] zeroinitializer }, align 32
@drbd_bm_capacity._entry_ptr = internal global ptr @drbd_bm_capacity._entry, section ".printk_index", align 4
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"device->bitmap\00", [17 x i8] zeroinitializer }, align 32
@drbd_bm_cleanup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.28, ptr @.str.2, i32 460, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"drbd_bm_cleanup\00", [16 x i8] zeroinitializer }, align 32
@drbd_bm_cleanup._entry_ptr = internal global ptr @drbd_bm_cleanup._entry, section ".printk_index", align 4
@drbd_bm_resize._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.29, ptr @.str.2, i32 639, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"drbd_bm_resize\00", [17 x i8] zeroinitializer }, align 32
@drbd_bm_resize._entry_ptr = internal global ptr @drbd_bm_resize._entry, section ".printk_index", align 4
@.str.30 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"b\00", [30 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"resize\00", [25 x i8] zeroinitializer }, align 32
@drbd_bm_resize._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.29, ptr @.str.2, i32 645, ptr @.str.34, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drbd_bm_resize called with capacity == %llu\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@drbd_bm_resize._entry_ptr.35 = internal global ptr @drbd_bm_resize._entry.32, section ".printk_index", align 4
@drbd_bm_resize._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.29, ptr @.str.2, i32 679, ptr @.str.34, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bits = %lu\0A\00", [20 x i8] zeroinitializer }, align 32
@drbd_bm_resize._entry_ptr.38 = internal global ptr @drbd_bm_resize._entry.36, section ".printk_index", align 4
@drbd_bm_resize._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.29, ptr @.str.2, i32 680, ptr @.str.34, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bits_on_disk = %llu\0A\00", [43 x i8] zeroinitializer }, align 32
@drbd_bm_resize._entry_ptr.41 = internal global ptr @drbd_bm_resize._entry.39, section ".printk_index", align 4
@drbd_bm_resize._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.29, ptr @.str.2, i32 689, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"ASSERT( b->bm_pages != NULL ) in %s:%d\0A\00", [56 x i8] zeroinitializer }, align 32
@drbd_bm_resize._entry_ptr.44 = internal global ptr @drbd_bm_resize._entry.42, section ".printk_index", align 4
@drbd_bm_resize._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.29, ptr @.str.2, i32 739, ptr @.str.34, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"resync bitmap: bits=%lu words=%lu pages=%lu\0A\00", [51 x i8] zeroinitializer }, align 32
@drbd_bm_resize._entry_ptr.47 = internal global ptr @drbd_bm_resize._entry.45, section ".printk_index", align 4
@_drbd_bm_total_weight._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.48, ptr @.str.2, i32 760, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"_drbd_bm_total_weight\00", [42 x i8] zeroinitializer }, align 32
@_drbd_bm_total_weight._entry_ptr = internal global ptr @_drbd_bm_total_weight._entry, section ".printk_index", align 4
@_drbd_bm_total_weight._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.48, ptr @.str.2, i32 762, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@_drbd_bm_total_weight._entry_ptr.50 = internal global ptr @_drbd_bm_total_weight._entry.49, section ".printk_index", align 4
@.str.51 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"b->bm_pages\00", [20 x i8] zeroinitializer }, align 32
@drbd_bm_words._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.52, ptr @.str.2, i32 786, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"drbd_bm_words\00", [18 x i8] zeroinitializer }, align 32
@drbd_bm_words._entry_ptr = internal global ptr @drbd_bm_words._entry, section ".printk_index", align 4
@drbd_bm_words._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.52, ptr @.str.2, i32 788, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@drbd_bm_words._entry_ptr.54 = internal global ptr @drbd_bm_words._entry.53, section ".printk_index", align 4
@drbd_bm_bits._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.55, ptr @.str.2, i32 797, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"drbd_bm_bits\00", [19 x i8] zeroinitializer }, align 32
@drbd_bm_bits._entry_ptr = internal global ptr @drbd_bm_bits._entry, section ".printk_index", align 4
@drbd_bm_merge_lel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.56, ptr @.str.2, i32 819, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"drbd_bm_merge_lel\00", [46 x i8] zeroinitializer }, align 32
@drbd_bm_merge_lel._entry_ptr = internal global ptr @drbd_bm_merge_lel._entry, section ".printk_index", align 4
@drbd_bm_merge_lel._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.56, ptr @.str.2, i32 821, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@drbd_bm_merge_lel._entry_ptr.58 = internal global ptr @drbd_bm_merge_lel._entry.57, section ".printk_index", align 4
@drbd_bm_get_lel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.59, ptr @.str.2, i32 866, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"drbd_bm_get_lel\00", [16 x i8] zeroinitializer }, align 32
@drbd_bm_get_lel._entry_ptr = internal global ptr @drbd_bm_get_lel._entry, section ".printk_index", align 4
@drbd_bm_get_lel._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.59, ptr @.str.2, i32 868, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@drbd_bm_get_lel._entry_ptr.61 = internal global ptr @drbd_bm_get_lel._entry.60, section ".printk_index", align 4
@drbd_bm_get_lel._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.59, ptr @.str.2, i32 878, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"offset=%lu number=%lu bm_words=%lu\0A\00", [60 x i8] zeroinitializer }, align 32
@drbd_bm_get_lel._entry_ptr.64 = internal global ptr @drbd_bm_get_lel._entry.62, section ".printk_index", align 4
@drbd_bm_set_all._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.65, ptr @.str.2, i32 897, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"drbd_bm_set_all\00", [16 x i8] zeroinitializer }, align 32
@drbd_bm_set_all._entry_ptr = internal global ptr @drbd_bm_set_all._entry, section ".printk_index", align 4
@drbd_bm_set_all._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.65, ptr @.str.2, i32 899, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@drbd_bm_set_all._entry_ptr.67 = internal global ptr @drbd_bm_set_all._entry.66, section ".printk_index", align 4
@drbd_bm_clear_all._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.68, ptr @.str.2, i32 913, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"drbd_bm_clear_all\00", [46 x i8] zeroinitializer }, align 32
@drbd_bm_clear_all._entry_ptr = internal global ptr @drbd_bm_clear_all._entry, section ".printk_index", align 4
@drbd_bm_clear_all._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.68, ptr @.str.2, i32 915, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@drbd_bm_clear_all._entry_ptr.70 = internal global ptr @drbd_bm_clear_all._entry.69, section ".printk_index", align 4
@drbd_bm_test_bit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.71, ptr @.str.2, i32 1551, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"drbd_bm_test_bit\00", [47 x i8] zeroinitializer }, align 32
@drbd_bm_test_bit._entry_ptr = internal global ptr @drbd_bm_test_bit._entry, section ".printk_index", align 4
@drbd_bm_test_bit._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.71, ptr @.str.2, i32 1553, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@drbd_bm_test_bit._entry_ptr.73 = internal global ptr @drbd_bm_test_bit._entry.72, section ".printk_index", align 4
@drbd_bm_test_bit._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.71, ptr @.str.2, i32 1566, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bitnr=%lu > bm_bits=%lu\0A\00", [39 x i8] zeroinitializer }, align 32
@drbd_bm_test_bit._entry_ptr.76 = internal global ptr @drbd_bm_test_bit._entry.74, section ".printk_index", align 4
@drbd_bm_count_bits._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.77, ptr @.str.2, i32 1588, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"drbd_bm_count_bits\00", [45 x i8] zeroinitializer }, align 32
@drbd_bm_count_bits._entry_ptr = internal global ptr @drbd_bm_count_bits._entry, section ".printk_index", align 4
@drbd_bm_count_bits._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.77, ptr @.str.2, i32 1590, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@drbd_bm_count_bits._entry_ptr.79 = internal global ptr @drbd_bm_count_bits._entry.78, section ".printk_index", align 4
@drbd_bm_count_bits._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.77, ptr @.str.2, i32 1604, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@drbd_bm_count_bits._entry_ptr.81 = internal global ptr @drbd_bm_count_bits._entry.80, section ".printk_index", align 4
@.str.82 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bitnr < b->bm_bits\00", [45 x i8] zeroinitializer }, align 32
@drbd_bm_count_bits._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.77, ptr @.str.2, i32 1607, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bitnr=%lu bm_bits=%lu\0A\00", [41 x i8] zeroinitializer }, align 32
@drbd_bm_count_bits._entry_ptr.85 = internal global ptr @drbd_bm_count_bits._entry.83, section ".printk_index", align 4
@drbd_bm_e_weight._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.86, ptr @.str.2, i32 1637, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"drbd_bm_e_weight\00", [47 x i8] zeroinitializer }, align 32
@drbd_bm_e_weight._entry_ptr = internal global ptr @drbd_bm_e_weight._entry, section ".printk_index", align 4
@drbd_bm_e_weight._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.86, ptr @.str.2, i32 1639, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@drbd_bm_e_weight._entry_ptr.88 = internal global ptr @drbd_bm_e_weight._entry.87, section ".printk_index", align 4
@drbd_bm_e_weight._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.86, ptr @.str.2, i32 1656, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"start offset (%d) too large in drbd_bm_e_weight\0A\00", [47 x i8] zeroinitializer }, align 32
@drbd_bm_e_weight._entry_ptr.91 = internal global ptr @drbd_bm_e_weight._entry.89, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@bm_free_pages._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.93, ptr @.str.2, i32 362, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\011drbd: bm_free_pages tried to free a NULL pointer; i=%lu n=%lu\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bm_free_pages\00", [18 x i8] zeroinitializer }, align 32
@bm_free_pages._entry_ptr = internal global ptr @bm_free_pages._entry, section ".printk_index", align 4
@put_ldev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.95, ptr @.str.96, i32 2099, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ASSERT( i >= 0 ) in %s:%d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"put_ldev\00", [23 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/block/drbd/drbd_int.h\00", [34 x i8] zeroinitializer }, align 32
@put_ldev._entry_ptr = internal global ptr @put_ldev._entry, section ".printk_index", align 4
@drbd_fault_rate = external dso_local local_unnamed_addr global i32, align 4
@drbd_enable_faults = external dso_local local_unnamed_addr global i32, align 4
@bm_memset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.99, ptr @.str.2, i32 591, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\011drbd: bm_memset end > bm_words\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"bm_memset\00", [22 x i8] zeroinitializer }, align 32
@bm_memset._entry_ptr = internal global ptr @bm_memset._entry, section ".printk_index", align 4
@bm_memset._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.99, ptr @.str.2, i32 602, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\011drbd: BUG BUG BUG! p_addr:%p bm:%p do_now:%d\0A\00", [48 x i8] zeroinitializer }, align 32
@bm_memset._entry_ptr.102 = internal global ptr @bm_memset._entry.100, section ".printk_index", align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@bm_rw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.104, ptr @.str.2, i32 1064, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"ASSERT FAILED: get_ldev_if_state() == 1 in bm_rw()\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"bm_rw\00", [26 x i8] zeroinitializer }, align 32
@bm_rw._entry_ptr = internal global ptr @bm_rw._entry, section ".printk_index", align 4
@bm_rw.__UNIQUE_ID_ddebug634 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.105, ptr @.str.104, ptr @.str.2, ptr @.str.106, i8 1, i8 23, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.105 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"drbd\00", [27 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"skipped bm write for idx %u\0A\00", [35 x i8] zeroinitializer }, align 32
@bm_rw.__UNIQUE_ID_ddebug635 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.105, ptr @.str.104, ptr @.str.2, ptr @.str.107, i8 1, i8 24, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.107 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"skipped bm lazy write for idx %u\0A\00", [62 x i8] zeroinitializer }, align 32
@bm_rw._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.104, ptr @.str.2, i32 1152, ptr @.str.34, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"bitmap %s of %u pages took %u ms\0A\00", [62 x i8] zeroinitializer }, align 32
@bm_rw._entry_ptr.110 = internal global ptr @bm_rw._entry.108, section ".printk_index", align 4
@.str.111 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"READ\00", [27 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"WRITE\00", [26 x i8] zeroinitializer }, align 32
@bm_rw._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.104, ptr @.str.2, i32 1157, ptr @.str.115, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"we had at least one MD IO ERROR during bitmap IO\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\011\00", [29 x i8] zeroinitializer }, align 32
@bm_rw._entry_ptr.116 = internal global ptr @bm_rw._entry.113, section ".printk_index", align 4
@bm_rw._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.104, ptr @.str.2, i32 1169, ptr @.str.34, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"recounting of set bits took additional %lu jiffies\0A\00", [44 x i8] zeroinitializer }, align 32
@bm_rw._entry_ptr.119 = internal global ptr @bm_rw._entry.117, section ".printk_index", align 4
@bm_rw._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.104, ptr @.str.2, i32 1175, ptr @.str.34, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s (%lu bits) marked out-of-sync by on disk bit-map.\0A\00", [42 x i8] zeroinitializer }, align 32
@bm_rw._entry_ptr.122 = internal global ptr @bm_rw._entry.120, section ".printk_index", align 4
@drbd_md_io_bio_set = external dso_local global %struct.bio_set, align 4
@drbd_md_io_page_pool = external dso_local global %struct.mempool_s, align 4
@drbd_bm_endio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.124, ptr @.str.2, i32 946, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"bitmap page idx %u changed during IO!\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"drbd_bm_endio\00", [18 x i8] zeroinitializer }, align 32
@drbd_bm_endio._entry_ptr = internal global ptr @drbd_bm_endio._entry, section ".printk_index", align 4
@drbd_ratelimit_state = external dso_local global %struct.ratelimit_state, align 4
@drbd_bm_endio._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.124, ptr @.str.2, i32 957, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"IO ERROR %d on bitmap page idx %u\0A\00", [61 x i8] zeroinitializer }, align 32
@drbd_bm_endio._entry_ptr.127 = internal global ptr @drbd_bm_endio._entry.125, section ".printk_index", align 4
@drbd_bm_endio.__UNIQUE_ID_ddebug631 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.105, ptr @.str.124, ptr @.str.2, ptr @.str.128, i8 0, i8 -16, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.128 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"bitmap page idx %u completed\0A\00", [34 x i8] zeroinitializer }, align 32
@bio_first_bvec_all.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.129 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"include/linux/bio.h\00", [44 x i8] zeroinitializer }, align 32
@__drbd_chk_io_error_.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.130 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__func__.__drbd_chk_io_error_ = private unnamed_addr constant [21 x i8] c"__drbd_chk_io_error_\00", align 1
@__drbd_chk_io_error_._entry = internal constant %struct.pi_entry { ptr @.str.131, ptr @__func__.__drbd_chk_io_error_, ptr @.str.96, i32 1728, ptr @.str.3, ptr @.str.4 }, align 1
@.str.131 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Local IO failed in %s.\0A\00", [40 x i8] zeroinitializer }, align 32
@__drbd_chk_io_error_._entry_ptr = internal global ptr @__drbd_chk_io_error_._entry, section ".printk_index", align 4
@__drbd_chk_io_error_._entry.132 = internal constant %struct.pi_entry { ptr @.str.133, ptr @__func__.__drbd_chk_io_error_, ptr @.str.96, i32 1764, ptr @.str.3, ptr @.str.4 }, align 1
@.str.133 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Local IO failed in %s. Detaching...\0A\00", [59 x i8] zeroinitializer }, align 32
@__drbd_chk_io_error_._entry_ptr.134 = internal global ptr @__drbd_chk_io_error_._entry.132, section ".printk_index", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.135 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.137 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@bm_find_next._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.138, ptr @.str.2, i32 1301, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bm_find_next\00", [19 x i8] zeroinitializer }, align 32
@bm_find_next._entry_ptr = internal global ptr @bm_find_next._entry, section ".printk_index", align 4
@bm_find_next._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.138, ptr @.str.2, i32 1303, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@bm_find_next._entry_ptr.140 = internal global ptr @bm_find_next._entry.139, section ".printk_index", align 4
@__bm_find_next._entry = internal constant %struct.pi_entry { ptr @.str.141, ptr @.str.142, ptr @.str.2, i32 1265, ptr @.str.3, ptr @.str.4 }, align 1
@.str.141 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bm_fo=%lu bm_bits=%lu\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"__bm_find_next\00", [17 x i8] zeroinitializer }, align 32
@__bm_find_next._entry_ptr = internal global ptr @__bm_find_next._entry, section ".printk_index", align 4
@bm_change_bits_to._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.143, ptr @.str.2, i32 1405, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bm_change_bits_to\00", [46 x i8] zeroinitializer }, align 32
@bm_change_bits_to._entry_ptr = internal global ptr @bm_change_bits_to._entry, section ".printk_index", align 4
@bm_change_bits_to._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.143, ptr @.str.2, i32 1407, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@bm_change_bits_to._entry_ptr.145 = internal global ptr @bm_change_bits_to._entry.144, section ".printk_index", align 4
@__bm_change_bits_to._entry = internal constant %struct.pi_entry { ptr @.str.146, ptr @.str.147, ptr @.str.2, i32 1361, ptr @.str.3, ptr @.str.4 }, align 1
@.str.146 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"ASSERT FAILED: bit_s=%lu bit_e=%lu bm_bits=%lu\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"__bm_change_bits_to\00", [44 x i8] zeroinitializer }, align 32
@__bm_change_bits_to._entry_ptr = internal global ptr @__bm_change_bits_to._entry, section ".printk_index", align 4
@__func__.__bm_print_lock_info = private unnamed_addr constant [21 x i8] c"__bm_print_lock_info\00", align 1
@__bm_print_lock_info._entry = internal constant %struct.pi_entry { ptr @.str.148, ptr @__func__.__bm_print_lock_info, ptr @.str.2, i32 121, ptr @.str.3, ptr @.str.4 }, align 1
@.str.148 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"FIXME %s[%d] in %s, bitmap locked for '%s' by %s[%d]\0A\00", [42 x i8] zeroinitializer }, align 32
@__bm_print_lock_info._entry_ptr = internal global ptr @__bm_print_lock_info._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.149 = internal global [4 x i64] [i64 2, i64 32, i64 4294967293, i64 4294967295]
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 130, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 137, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 144, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 155, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 160, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 259, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 440, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 441, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 442, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 451, i32 7 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 460, i32 7 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 639, i32 7 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 642, i32 23 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 644, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 679, i32 4 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 680, i32 4 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 689, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 739, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 760, i32 7 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 762, i32 7 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 786, i32 7 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 788, i32 7 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 797, i32 7 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 819, i32 7 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 821, i32 7 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 866, i32 7 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 868, i32 7 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 875, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 897, i32 7 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 899, i32 7 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 913, i32 7 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 915, i32 7 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1551, i32 7 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1553, i32 7 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1566, i32 3 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1588, i32 7 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1590, i32 7 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1604, i32 7 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1607, i32 4 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1637, i32 7 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1639, i32 7 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1656, i32 3 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 361, i32 4 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 2099, i32 2 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 591, i32 3 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 601, i32 4 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1064, i32 3 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1116, i32 5 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1123, i32 5 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1150, i32 4 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1157, i32 3 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1168, i32 3 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1174, i32 3 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 946, i32 3 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 956, i32 4 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 960, i32 3 }
@___asan_gen_.517 = private unnamed_addr constant [23 x i8] c"../include/linux/bio.h\00", align 1
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 248, i32 2 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 1722, i32 7 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 1728, i32 5 }
@___asan_gen_.526 = private unnamed_addr constant [33 x i8] c"../drivers/block/drbd/drbd_int.h\00", align 1
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 1763, i32 4 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 695, i32 2 }
@___asan_gen_.535 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 723, i32 2 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1301, i32 7 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1303, i32 7 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1265, i32 3 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1405, i32 7 }
@___asan_gen_.558 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1407, i32 7 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1360, i32 3 }
@___asan_gen_.567 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.568 = private constant [36 x i8] c"../drivers/block/drbd/drbd_bitmap.c\00", align 1
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 118, i32 2 }
@llvm.compiler.used = appending global [203 x ptr] [ptr @__bm_change_bits_to._entry, ptr @__bm_change_bits_to._entry_ptr, ptr @__bm_find_next._entry, ptr @__bm_find_next._entry_ptr, ptr @__bm_print_lock_info._entry, ptr @__bm_print_lock_info._entry_ptr, ptr @__drbd_chk_io_error_._entry, ptr @__drbd_chk_io_error_._entry.132, ptr @__drbd_chk_io_error_._entry_ptr, ptr @__drbd_chk_io_error_._entry_ptr.134, ptr @_drbd_bm_total_weight._entry, ptr @_drbd_bm_total_weight._entry.49, ptr @_drbd_bm_total_weight._entry_ptr, ptr @_drbd_bm_total_weight._entry_ptr.50, ptr @bm_change_bits_to._entry, ptr @bm_change_bits_to._entry.144, ptr @bm_change_bits_to._entry_ptr, ptr @bm_change_bits_to._entry_ptr.145, ptr @bm_find_next._entry, ptr @bm_find_next._entry.139, ptr @bm_find_next._entry_ptr, ptr @bm_find_next._entry_ptr.140, ptr @bm_free_pages._entry, ptr @bm_free_pages._entry_ptr, ptr @bm_memset._entry, ptr @bm_memset._entry.100, ptr @bm_memset._entry_ptr, ptr @bm_memset._entry_ptr.102, ptr @bm_rw._entry, ptr @bm_rw._entry.108, ptr @bm_rw._entry.113, ptr @bm_rw._entry.117, ptr @bm_rw._entry.120, ptr @bm_rw._entry_ptr, ptr @bm_rw._entry_ptr.110, ptr @bm_rw._entry_ptr.116, ptr @bm_rw._entry_ptr.119, ptr @bm_rw._entry_ptr.122, ptr @drbd_bm_bits._entry, ptr @drbd_bm_bits._entry_ptr, ptr @drbd_bm_capacity._entry, ptr @drbd_bm_capacity._entry_ptr, ptr @drbd_bm_cleanup._entry, ptr @drbd_bm_cleanup._entry_ptr, ptr @drbd_bm_clear_all._entry, ptr @drbd_bm_clear_all._entry.69, ptr @drbd_bm_clear_all._entry_ptr, ptr @drbd_bm_clear_all._entry_ptr.70, ptr @drbd_bm_count_bits._entry, ptr @drbd_bm_count_bits._entry.78, ptr @drbd_bm_count_bits._entry.80, ptr @drbd_bm_count_bits._entry.83, ptr @drbd_bm_count_bits._entry_ptr, ptr @drbd_bm_count_bits._entry_ptr.79, ptr @drbd_bm_count_bits._entry_ptr.81, ptr @drbd_bm_count_bits._entry_ptr.85, ptr @drbd_bm_e_weight._entry, ptr @drbd_bm_e_weight._entry.87, ptr @drbd_bm_e_weight._entry.89, ptr @drbd_bm_e_weight._entry_ptr, ptr @drbd_bm_e_weight._entry_ptr.88, ptr @drbd_bm_e_weight._entry_ptr.91, ptr @drbd_bm_endio._entry, ptr @drbd_bm_endio._entry.125, ptr @drbd_bm_endio._entry_ptr, ptr @drbd_bm_endio._entry_ptr.127, ptr @drbd_bm_get_lel._entry, ptr @drbd_bm_get_lel._entry.60, ptr @drbd_bm_get_lel._entry.62, ptr @drbd_bm_get_lel._entry_ptr, ptr @drbd_bm_get_lel._entry_ptr.61, ptr @drbd_bm_get_lel._entry_ptr.64, ptr @drbd_bm_lock._entry, ptr @drbd_bm_lock._entry.10, ptr @drbd_bm_lock._entry.5, ptr @drbd_bm_lock._entry_ptr, ptr @drbd_bm_lock._entry_ptr.12, ptr @drbd_bm_lock._entry_ptr.8, ptr @drbd_bm_mark_for_writeout._entry, ptr @drbd_bm_mark_for_writeout._entry_ptr, ptr @drbd_bm_merge_lel._entry, ptr @drbd_bm_merge_lel._entry.57, ptr @drbd_bm_merge_lel._entry_ptr, ptr @drbd_bm_merge_lel._entry_ptr.58, ptr @drbd_bm_resize._entry, ptr @drbd_bm_resize._entry.32, ptr @drbd_bm_resize._entry.36, ptr @drbd_bm_resize._entry.39, ptr @drbd_bm_resize._entry.42, ptr @drbd_bm_resize._entry.45, ptr @drbd_bm_resize._entry_ptr, ptr @drbd_bm_resize._entry_ptr.35, ptr @drbd_bm_resize._entry_ptr.38, ptr @drbd_bm_resize._entry_ptr.41, ptr @drbd_bm_resize._entry_ptr.44, ptr @drbd_bm_resize._entry_ptr.47, ptr @drbd_bm_set_all._entry, ptr @drbd_bm_set_all._entry.66, ptr @drbd_bm_set_all._entry_ptr, ptr @drbd_bm_set_all._entry_ptr.67, ptr @drbd_bm_test_bit._entry, ptr @drbd_bm_test_bit._entry.72, ptr @drbd_bm_test_bit._entry.74, ptr @drbd_bm_test_bit._entry_ptr, ptr @drbd_bm_test_bit._entry_ptr.73, ptr @drbd_bm_test_bit._entry_ptr.76, ptr @drbd_bm_unlock._entry, ptr @drbd_bm_unlock._entry.15, ptr @drbd_bm_unlock._entry_ptr, ptr @drbd_bm_unlock._entry_ptr.17, ptr @drbd_bm_words._entry, ptr @drbd_bm_words._entry.53, ptr @drbd_bm_words._entry_ptr, ptr @drbd_bm_words._entry_ptr.54, ptr @put_ldev._entry, ptr @put_ldev._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @drbd_bm_init.__key, ptr @.str.20, ptr @drbd_bm_init.__key.21, ptr @.str.22, ptr @drbd_bm_init.__key.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.48, ptr @.str.51, ptr @.str.52, ptr @.str.55, ptr @.str.56, ptr @.str.59, ptr @.str.63, ptr @.str.65, ptr @.str.68, ptr @.str.71, ptr @.str.75, ptr @.str.77, ptr @.str.82, ptr @.str.84, ptr @.str.86, ptr @.str.90, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.98, ptr @.str.99, ptr @.str.101, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.109, ptr @.str.111, ptr @.str.112, ptr @.str.114, ptr @.str.115, ptr @.str.118, ptr @.str.121, ptr @.str.123, ptr @.str.124, ptr @.str.126, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.133, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.146, ptr @.str.147, ptr @.str.148], section "llvm.metadata"
@0 = internal global [140 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_bm_lock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_bm_lock._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_bm_lock._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_bm_unlock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_bm_unlock._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_bm_mark_for_writeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_bm_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_bm_init.__key.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_bm_init.__key.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_bm_capacity._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_bm_cleanup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_bm_resize._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_bm_resize._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_bm_resize._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_bm_resize._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_bm_resize._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_bm_resize._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_drbd_bm_total_weight._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_drbd_bm_total_weight._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_bm_words._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_bm_words._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_bm_bits._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_bm_merge_lel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_bm_merge_lel._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_bm_get_lel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_bm_get_lel._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_bm_get_lel._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_bm_set_all._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_bm_set_all._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_bm_clear_all._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_bm_clear_all._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_bm_test_bit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_bm_test_bit._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_bm_test_bit._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_bm_count_bits._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_bm_count_bits._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_bm_count_bits._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_bm_count_bits._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_bm_e_weight._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_bm_e_weight._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_bm_e_weight._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bm_free_pages._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @put_ldev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bm_memset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bm_memset._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bm_rw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bm_rw._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bm_rw._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bm_rw._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bm_rw._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_bm_endio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_bm_endio._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bm_find_next._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bm_find_next._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bm_change_bits_to._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bm_change_bits_to._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drbd_bm_lock(ptr nocapture noundef readonly %device, ptr noundef %why, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bitmap = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 63
  %0 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bitmap, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %vdisk = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %2 = ptrtoint ptr %vdisk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdisk, align 4
  %part0 = getelementptr inbounds %struct.gendisk, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %part0, align 4
  %bd_device = getelementptr inbounds %struct.block_device, ptr %5, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %bd_device, ptr noundef nonnull @.str) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %bm_change = getelementptr inbounds %struct.drbd_bitmap, ptr %1, i32 0, i32 9
  %call = tail call i32 @mutex_trylock(ptr noundef %bm_change) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %do.end6, label %if.end.if.end20_crit_edge

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %vdisk7 = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %6 = ptrtoint ptr %vdisk7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vdisk7, align 4
  %part08 = getelementptr inbounds %struct.gendisk, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %part08 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %part08, align 4
  %bd_device9 = getelementptr inbounds %struct.block_device, ptr %9, i32 0, i32 10
  %10 = tail call i32 @llvm.read_register.i32(metadata !285) #11
  %and.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 101
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 68
  %14 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pid.i, align 8
  %bm_why = getelementptr inbounds %struct.drbd_bitmap, ptr %1, i32 0, i32 12
  %16 = ptrtoint ptr %bm_why to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bm_why, align 4
  %tobool14.not = icmp eq ptr %17, null
  %..str.9 = select i1 %tobool14.not, ptr @.str.9, ptr %17
  %bm_task = getelementptr inbounds %struct.drbd_bitmap, ptr %1, i32 0, i32 13
  %18 = ptrtoint ptr %bm_task to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bm_task, align 8
  %comm15 = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 101
  %pid.i50 = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 68
  %20 = ptrtoint ptr %pid.i50 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pid.i50, align 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.7, ptr noundef %bd_device9, ptr noundef nonnull @.str.6, ptr noundef %comm, i32 noundef %15, ptr noundef %why, ptr noundef %..str.9, ptr noundef %comm15, i32 noundef %21) #14
  tail call void @mutex_lock_nested(ptr noundef %bm_change, i32 noundef 0) #11
  br label %if.end20

if.end20:                                         ; preds = %do.end6, %if.end.if.end20_crit_edge
  %bm_flags = getelementptr inbounds %struct.drbd_bitmap, ptr %1, i32 0, i32 11
  %22 = ptrtoint ptr %bm_flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bm_flags, align 8
  %and = and i32 %23, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool21.not = icmp eq i32 %and, 0
  br i1 %tobool21.not, label %if.end20.if.end29_crit_edge, label %do.end25

if.end20.if.end29_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

do.end25:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  %vdisk26 = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %24 = ptrtoint ptr %vdisk26 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %vdisk26, align 4
  %part027 = getelementptr inbounds %struct.gendisk, ptr %25, i32 0, i32 7
  %26 = ptrtoint ptr %part027 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %part027, align 4
  %bd_device28 = getelementptr inbounds %struct.block_device, ptr %27, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %bd_device28, ptr noundef nonnull @.str.11) #14
  br label %if.end29

if.end29:                                         ; preds = %do.end25, %if.end20.if.end29_crit_edge
  %and30 = and i32 %flags, 15
  %28 = ptrtoint ptr %bm_flags to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bm_flags, align 8
  %or = or i32 %29, %and30
  store i32 %or, ptr %bm_flags, align 8
  %bm_why32 = getelementptr inbounds %struct.drbd_bitmap, ptr %1, i32 0, i32 12
  %30 = ptrtoint ptr %bm_why32 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %why, ptr %bm_why32, align 4
  %31 = tail call i32 @llvm.read_register.i32(metadata !285) #11
  %and.i51 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i51 to ptr
  %task34 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %task34 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %task34, align 8
  %bm_task35 = getelementptr inbounds %struct.drbd_bitmap, ptr %1, i32 0, i32 13
  %35 = ptrtoint ptr %bm_task35 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %bm_task35, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %do.end
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drbd_bm_unlock(ptr nocapture noundef readonly %device) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bitmap = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 63
  %0 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bitmap, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %vdisk = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %2 = ptrtoint ptr %vdisk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdisk, align 4
  %part0 = getelementptr inbounds %struct.gendisk, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %part0, align 4
  %bd_device = getelementptr inbounds %struct.block_device, ptr %5, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %bd_device, ptr noundef nonnull @.str.13) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %bm_flags = getelementptr inbounds %struct.drbd_bitmap, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %bm_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bm_flags, align 8
  %and = and i32 %7, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %do.end6, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %vdisk7 = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %8 = ptrtoint ptr %vdisk7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vdisk7, align 4
  %part08 = getelementptr inbounds %struct.gendisk, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %part08 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %part08, align 4
  %bd_device9 = getelementptr inbounds %struct.block_device, ptr %11, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %bd_device9, ptr noundef nonnull @.str.16) #14
  br label %if.end10

if.end10:                                         ; preds = %do.end6, %if.end.if.end10_crit_edge
  %12 = ptrtoint ptr %bm_flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bm_flags, align 8
  %and12 = and i32 %13, -16
  store i32 %and12, ptr %bm_flags, align 8
  %bm_why = getelementptr inbounds %struct.drbd_bitmap, ptr %1, i32 0, i32 12
  %14 = ptrtoint ptr %bm_why to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %bm_why, align 4
  %bm_task = getelementptr inbounds %struct.drbd_bitmap, ptr %1, i32 0, i32 13
  %15 = ptrtoint ptr %bm_task to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %bm_task, align 8
  %bm_change = getelementptr inbounds %struct.drbd_bitmap, ptr %1, i32 0, i32 9
  tail call void @mutex_unlock(ptr noundef %bm_change) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @drbd_bm_reset_al_hints(ptr nocapture noundef readonly %device) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bitmap = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 63
  %0 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bitmap, align 4
  %n_bitmap_hints = getelementptr inbounds %struct.drbd_bitmap, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %n_bitmap_hints to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %n_bitmap_hints, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drbd_bm_mark_for_writeout(ptr nocapture noundef readonly %device, i32 noundef %page_nr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bitmap = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 63
  %0 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bitmap, align 4
  %bm_number_of_pages = getelementptr inbounds %struct.drbd_bitmap, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %bm_number_of_pages to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bm_number_of_pages, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %page_nr)
  %cmp.not = icmp ugt i32 %3, %page_nr
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %vdisk = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %4 = ptrtoint ptr %vdisk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vdisk, align 4
  %part0 = getelementptr inbounds %struct.gendisk, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %part0, align 4
  %bd_device = getelementptr inbounds %struct.block_device, ptr %7, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.7, ptr noundef %bd_device, ptr noundef nonnull @.str.18, i32 noundef %page_nr, i32 noundef %3) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %n_bitmap_hints = getelementptr inbounds %struct.drbd_bitmap, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %n_bitmap_hints to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %n_bitmap_hints, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %9)
  %cmp6 = icmp ugt i32 %9, 63
  br i1 %cmp6, label %do.body9, label %do.end17, !prof !295

do.body9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/block/drbd/drbd_bitmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 264, 0\0A.popsection", ""() #11, !srcloc !296
  unreachable

do.end17:                                         ; preds = %if.end
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  %arrayidx = getelementptr ptr, ptr %11, i32 %page_nr
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %private = getelementptr inbounds %struct.page, ptr %13, i32 0, i32 1, i32 0, i32 3
  %call = tail call i32 @_test_and_set_bit(i32 noundef 27, ptr noundef %private) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool18.not = icmp eq i32 %call, 0
  br i1 %tobool18.not, label %if.then19, label %do.end17.cleanup_crit_edge

do.end17.cleanup_crit_edge:                       ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then19:                                        ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %n_bitmap_hints to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %n_bitmap_hints, align 8
  %inc = add i32 %15, 1
  store i32 %inc, ptr %n_bitmap_hints, align 8
  %arrayidx21 = getelementptr %struct.drbd_bitmap, ptr %1, i32 0, i32 3, i32 %15
  %16 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %page_nr, ptr %arrayidx21, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %do.end17.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drbd_bm_init(ptr nocapture noundef %device) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bitmap = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 63
  %0 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bitmap, align 4
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end, !prof !297

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 436, i32 noundef 9, ptr noundef null) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 496) #15
  %tobool19.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool19.not, label %if.end.cleanup_crit_edge, label %do.body22

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body22:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %bm_lock = getelementptr inbounds %struct.drbd_bitmap, ptr %call7.i.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %bm_lock, ptr noundef nonnull @.str.20, ptr noundef nonnull @drbd_bm_init.__key, i16 noundef signext 3) #11
  %bm_change = getelementptr inbounds %struct.drbd_bitmap, ptr %call7.i.i, i32 0, i32 9
  tail call void @__mutex_init(ptr noundef %bm_change, ptr noundef nonnull @.str.22, ptr noundef nonnull @drbd_bm_init.__key.21) #11
  %bm_io_wait = getelementptr inbounds %struct.drbd_bitmap, ptr %call7.i.i, i32 0, i32 10
  tail call void @__init_waitqueue_head(ptr noundef %bm_io_wait, ptr noundef nonnull @.str.24, ptr noundef nonnull @drbd_bm_init.__key.23) #11
  %3 = ptrtoint ptr %bitmap to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %bitmap, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body22, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body22 ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @drbd_bm_capacity(ptr nocapture noundef readonly %device) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bitmap = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 63
  %0 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bitmap, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %vdisk = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %2 = ptrtoint ptr %vdisk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdisk, align 4
  %part0 = getelementptr inbounds %struct.gendisk, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %part0, align 4
  %bd_device = getelementptr inbounds %struct.block_device, ptr %5, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %bd_device, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.26) #14
  br label %return

if.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %bm_dev_capacity = getelementptr inbounds %struct.drbd_bitmap, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %bm_dev_capacity to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %bm_dev_capacity, align 8
  br label %return

return:                                           ; preds = %if.end6, %do.end
  %retval.0 = phi i64 [ %7, %if.end6 ], [ 0, %do.end ]
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drbd_bm_cleanup(ptr nocapture noundef %device) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bitmap = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 63
  %0 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bitmap, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end6.critedge

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %vdisk = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %2 = ptrtoint ptr %vdisk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdisk, align 4
  %part0 = getelementptr inbounds %struct.gendisk, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %part0, align 4
  %bd_device = getelementptr inbounds %struct.block_device, ptr %5, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %bd_device, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28) #14
  br label %return

if.end6.critedge:                                 ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %bm_number_of_pages = getelementptr inbounds %struct.drbd_bitmap, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %bm_number_of_pages to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bm_number_of_pages, align 8
  %tobool.not.i = icmp ne ptr %7, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp15.i = icmp ne i32 %9, 0
  %or.cond.i = and i1 %tobool.not.i, %cmp15.i
  br i1 %or.cond.i, label %if.end6.critedge.for.body.i_crit_edge, label %if.end6.critedge.bm_free_pages.exit_crit_edge

if.end6.critedge.bm_free_pages.exit_crit_edge:    ; preds = %if.end6.critedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %bm_free_pages.exit

if.end6.critedge.for.body.i_crit_edge:            ; preds = %if.end6.critedge
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end6.critedge.for.body.i_crit_edge
  %i.016.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end6.critedge.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr ptr, ptr %7, i32 %i.016.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %tobool1.not.i = icmp eq ptr %11, null
  br i1 %tobool1.not.i, label %do.end.i, label %if.end3.i

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, i32 noundef %i.016.i, i32 noundef %9) #14
  br label %for.inc.i

if.end3.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__free_pages(ptr noundef nonnull %11, i32 noundef 0) #11
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %arrayidx.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end3.i, %do.end.i
  %inc.i = add nuw i32 %i.016.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %9
  br i1 %exitcond.not.i, label %for.inc.i.bm_free_pages.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.bm_free_pages.exit_crit_edge:           ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bm_free_pages.exit

bm_free_pages.exit:                               ; preds = %for.inc.i.bm_free_pages.exit_crit_edge, %if.end6.critedge.bm_free_pages.exit_crit_edge
  %13 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bitmap, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 8
  tail call void @kvfree(ptr noundef %16) #11
  %17 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bitmap, align 4
  tail call void @kfree(ptr noundef %18) #11
  %19 = ptrtoint ptr %bitmap to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %bitmap, align 4
  br label %return

return:                                           ; preds = %bm_free_pages.exit, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bm_free_pages(ptr noundef %pages, i32 noundef %number) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp ne ptr %pages, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %number)
  %cmp15 = icmp ne i32 %number, 0
  %or.cond = and i1 %tobool.not, %cmp15
  br i1 %or.cond, label %entry.for.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.016 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %pages, i32 %i.016
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %do.end, label %if.end3

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, i32 noundef %i.016, i32 noundef %number) #14
  br label %for.inc

if.end3:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__free_pages(ptr noundef nonnull %1, i32 noundef 0) #11
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end3, %do.end
  %inc = add nuw i32 %i.016, 1
  %exitcond.not = icmp eq i32 %inc, %number
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drbd_bm_resize(ptr noundef %device, i64 noundef %capacity, i32 noundef %set_new_bits) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bitmap = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 63
  %0 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bitmap, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %vdisk = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %2 = ptrtoint ptr %vdisk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdisk, align 4
  %part0 = getelementptr inbounds %struct.gendisk, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %part0, align 4
  %bd_device = getelementptr inbounds %struct.block_device, ptr %5, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %bd_device, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.29) #14
  br label %cleanup133

if.end6:                                          ; preds = %entry
  tail call void @drbd_bm_lock(ptr noundef %device, ptr noundef nonnull @.str.31, i32 noundef 15)
  %vdisk10 = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %6 = ptrtoint ptr %vdisk10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vdisk10, align 4
  %part011 = getelementptr inbounds %struct.gendisk, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %part011 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %part011, align 4
  %bd_device12 = getelementptr inbounds %struct.block_device, ptr %9, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.34, ptr noundef %bd_device12, ptr noundef nonnull @.str.33, i64 noundef %capacity) #14
  %bm_dev_capacity = getelementptr inbounds %struct.drbd_bitmap, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %bm_dev_capacity to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %bm_dev_capacity, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %capacity)
  %cmp = icmp eq i64 %11, %capacity
  br i1 %cmp, label %if.end6.out_crit_edge, label %if.end14

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end14:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %capacity)
  %cmp15 = icmp eq i64 %capacity, 0
  br i1 %cmp15, label %if.then16, label %if.end22

if.then16:                                        ; preds = %if.end14
  %bm_lock = getelementptr inbounds %struct.drbd_bitmap, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %bm_lock) #11
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  %bm_number_of_pages = getelementptr inbounds %struct.drbd_bitmap, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %bm_number_of_pages to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bm_number_of_pages, align 8
  store ptr null, ptr %1, align 8
  %16 = ptrtoint ptr %bm_dev_capacity to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 0, ptr %bm_dev_capacity, align 8
  %bm_set = getelementptr inbounds %struct.drbd_bitmap, ptr %1, i32 0, i32 4
  %17 = call ptr @memset(ptr %bm_set, i32 0, i32 16)
  tail call void @_raw_spin_unlock_irq(ptr noundef %bm_lock) #11
  %tobool.not.i = icmp ne ptr %13, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp15.i = icmp ne i32 %15, 0
  %or.cond.i = and i1 %tobool.not.i, %cmp15.i
  br i1 %or.cond.i, label %if.then16.for.body.i_crit_edge, label %if.then16.bm_free_pages.exit_crit_edge

if.then16.bm_free_pages.exit_crit_edge:           ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #13
  br label %bm_free_pages.exit

if.then16.for.body.i_crit_edge:                   ; preds = %if.then16
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then16.for.body.i_crit_edge
  %i.016.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.then16.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr ptr, ptr %13, i32 %i.016.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i, align 4
  %tobool1.not.i = icmp eq ptr %19, null
  br i1 %tobool1.not.i, label %do.end.i, label %if.end3.i

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, i32 noundef %i.016.i, i32 noundef %15) #14
  br label %for.inc.i

if.end3.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__free_pages(ptr noundef nonnull %19, i32 noundef 0) #11
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %arrayidx.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end3.i, %do.end.i
  %inc.i = add nuw i32 %i.016.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %15
  br i1 %exitcond.not.i, label %for.inc.i.bm_free_pages.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.bm_free_pages.exit_crit_edge:           ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bm_free_pages.exit

bm_free_pages.exit:                               ; preds = %for.inc.i.bm_free_pages.exit_crit_edge, %if.then16.bm_free_pages.exit_crit_edge
  tail call void @kvfree(ptr noundef %13) #11
  br label %out

if.end22:                                         ; preds = %if.end14
  %add = add i64 %capacity, 7
  %shr = lshr i64 %add, 3
  %conv = trunc i64 %shr to i32
  %add23 = add i32 %conv, 63
  %and24 = lshr i32 %add23, 5
  %shr25 = and i32 %and24, 134217726
  %state.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 27
  %21 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %bf.load.i = load i32, ptr %state.i, align 8
  %22 = and i32 %bf.load.i, 7680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.i = icmp eq i32 %22, 0
  br i1 %cmp.i, label %if.end22.if.end48_crit_edge, label %if.end.i

if.end22.if.end48_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48

if.end.i:                                         ; preds = %if.end22
  %local_cnt.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 41
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %local_cnt.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %local_cnt.i, i32 1, i32 3, i32 1) #11
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %local_cnt.i, ptr %local_cnt.i, i32 1, ptr elementtype(i32) %local_cnt.i) #11, !srcloc !298
  %24 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %bf.load2.i = load i32, ptr %state.i, align 8
  %25 = and i32 %bf.load2.i, 6144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp5.not.i = icmp eq i32 %25, 0
  br i1 %cmp5.not.i, label %if.then6.i, label %if.then29

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @put_ldev(ptr noundef %device) #11
  br label %if.end48

if.then29:                                        ; preds = %if.end.i
  %ldev = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 15
  %26 = ptrtoint ptr %ldev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ldev, align 4
  %al_offset.i = getelementptr inbounds %struct.drbd_backing_dev, ptr %27, i32 0, i32 2, i32 7
  %28 = ptrtoint ptr %al_offset.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %al_offset.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %29)
  %cmp.i231 = icmp eq i32 %29, 8
  br i1 %cmp.i231, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #13
  %md_size_sect.i = getelementptr inbounds %struct.drbd_backing_dev, ptr %27, i32 0, i32 2, i32 6
  %30 = ptrtoint ptr %md_size_sect.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %md_size_sect.i, align 4
  %bm_offset.i = getelementptr inbounds %struct.drbd_backing_dev, ptr %27, i32 0, i32 2, i32 8
  %32 = ptrtoint ptr %bm_offset.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bm_offset.i, align 4
  %sub.i = sub i32 %31, %33
  %conv.i = zext i32 %sub.i to i64
  br label %drbd_md_on_disk_bits.exit

if.else.i:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #13
  %bm_offset6.i = getelementptr inbounds %struct.drbd_backing_dev, ptr %27, i32 0, i32 2, i32 8
  %34 = ptrtoint ptr %bm_offset6.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %bm_offset6.i, align 4
  %sub7.i = sub i32 %29, %35
  %conv8.i = sext i32 %sub7.i to i64
  br label %drbd_md_on_disk_bits.exit

drbd_md_on_disk_bits.exit:                        ; preds = %if.else.i, %if.then.i
  %bitmap_sectors.0.i = phi i64 [ %conv.i, %if.then.i ], [ %conv8.i, %if.else.i ]
  %shl.i = shl nsw i64 %bitmap_sectors.0.i, 12
  tail call fastcc void @put_ldev(ptr noundef %device)
  %conv31 = and i64 %shr, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %conv31, i64 %shl.i)
  %cmp32 = icmp ugt i64 %conv31, %shl.i
  br i1 %cmp32, label %cleanup, label %drbd_md_on_disk_bits.exit.if.end48_crit_edge

drbd_md_on_disk_bits.exit.if.end48_crit_edge:     ; preds = %drbd_md_on_disk_bits.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48

cleanup:                                          ; preds = %drbd_md_on_disk_bits.exit
  call void @__sanitizer_cov_trace_pc() #13
  %36 = ptrtoint ptr %vdisk10 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %vdisk10, align 4
  %part039 = getelementptr inbounds %struct.gendisk, ptr %37, i32 0, i32 7
  %38 = ptrtoint ptr %part039 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %part039, align 4
  %bd_device40 = getelementptr inbounds %struct.block_device, ptr %39, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.34, ptr noundef %bd_device40, ptr noundef nonnull @.str.37, i32 noundef %conv) #14
  %40 = ptrtoint ptr %vdisk10 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %vdisk10, align 4
  %part045 = getelementptr inbounds %struct.gendisk, ptr %41, i32 0, i32 7
  %42 = ptrtoint ptr %part045 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %part045, align 4
  %bd_device46 = getelementptr inbounds %struct.block_device, ptr %43, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.34, ptr noundef %bd_device46, ptr noundef nonnull @.str.40, i64 noundef %shl.i) #14
  br label %out

if.end48:                                         ; preds = %drbd_md_on_disk_bits.exit.if.end48_crit_edge, %if.then6.i, %if.end22.if.end48_crit_edge
  %mul = shl nuw nsw i32 %shr25, 2
  %add49 = add nuw nsw i32 %mul, 4095
  %shr51 = lshr i32 %add49, 12
  %bm_number_of_pages52 = getelementptr inbounds %struct.drbd_bitmap, ptr %1, i32 0, i32 7
  %44 = ptrtoint ptr %bm_number_of_pages52 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %bm_number_of_pages52, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %shr51)
  %cmp53 = icmp eq i32 %45, %shr51
  br i1 %cmp53, label %do.body56, label %if.else

do.body56:                                        ; preds = %if.end48
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %1, align 8
  %cmp58.not = icmp eq ptr %47, null
  br i1 %cmp58.not, label %do.end63, label %do.body56.do.end69_crit_edge

do.body56.do.end69_crit_edge:                     ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end69

do.end63:                                         ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #13
  %48 = ptrtoint ptr %vdisk10 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %vdisk10, align 4
  %part065 = getelementptr inbounds %struct.gendisk, ptr %49, i32 0, i32 7
  %50 = ptrtoint ptr %part065 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %part065, align 4
  %bd_device66 = getelementptr inbounds %struct.block_device, ptr %51, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %bd_device66, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.2, i32 noundef 689) #14
  br label %do.end69

do.end69:                                         ; preds = %do.end63, %do.body56.do.end69_crit_edge
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %1, align 8
  br label %if.end77

if.else:                                          ; preds = %if.end48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @drbd_fault_rate to i32))
  %54 = load i32, ptr @drbd_fault_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool.not.i233 = icmp eq i32 %54, 0
  br i1 %tobool.not.i233, label %if.else.if.else74_crit_edge, label %land.lhs.true.i

if.else.if.else74_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else74

land.lhs.true.i:                                  ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @drbd_enable_faults to i32))
  %55 = load i32, ptr @drbd_enable_faults, align 4
  %and.i = and i32 %55, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i234 = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i234, label %land.lhs.true.i.if.else74_crit_edge, label %drbd_insert_fault.exit

land.lhs.true.i.if.else74_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else74

drbd_insert_fault.exit:                           ; preds = %land.lhs.true.i
  %call.i235 = tail call i32 @_drbd_insert_fault(ptr noundef %device, i32 noundef 7) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i235)
  %tobool2.i.not = icmp eq i32 %call.i235, 0
  br i1 %tobool2.i.not, label %drbd_insert_fault.exit.if.else74_crit_edge, label %drbd_insert_fault.exit.out_crit_edge

drbd_insert_fault.exit.out_crit_edge:             ; preds = %drbd_insert_fault.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

drbd_insert_fault.exit.if.else74_crit_edge:       ; preds = %drbd_insert_fault.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else74

if.else74:                                        ; preds = %drbd_insert_fault.exit.if.else74_crit_edge, %land.lhs.true.i.if.else74_crit_edge, %if.else.if.else74_crit_edge
  %call75 = tail call fastcc ptr @bm_realloc_pages(ptr noundef nonnull %1, i32 noundef %shr51)
  br label %if.end77

if.end77:                                         ; preds = %if.else74, %do.end69
  %npages.0 = phi ptr [ %53, %do.end69 ], [ %call75, %if.else74 ]
  %tobool78.not = icmp eq ptr %npages.0, null
  br i1 %tobool78.not, label %if.end77.out_crit_edge, label %if.end80

if.end77.out_crit_edge:                           ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end80:                                         ; preds = %if.end77
  %bm_lock81 = getelementptr inbounds %struct.drbd_bitmap, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %bm_lock81) #11
  %56 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %1, align 8
  %bm_words83 = getelementptr inbounds %struct.drbd_bitmap, ptr %1, i32 0, i32 6
  %58 = ptrtoint ptr %bm_words83 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %bm_words83, align 4
  %bm_bits84 = getelementptr inbounds %struct.drbd_bitmap, ptr %1, i32 0, i32 5
  %60 = ptrtoint ptr %bm_bits84 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %bm_bits84, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %conv)
  %cmp85 = icmp ult i32 %61, %conv
  %tobool88.not = icmp eq ptr %57, null
  %cmp85.not = xor i1 %cmp85, true
  %brmerge = select i1 %tobool88.not, i1 true, i1 %cmp85.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %set_new_bits)
  %tobool92.not = icmp eq i32 %set_new_bits, 0
  %or.cond = or i1 %tobool92.not, %brmerge
  br i1 %or.cond, label %if.end80.if.end94_crit_edge, label %if.then93

if.end80.if.end94_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end94

if.then93:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @bm_set_surplus(ptr noundef nonnull %1)
  br label %if.end94

if.end94:                                         ; preds = %if.then93, %if.end80.if.end94_crit_edge
  %62 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %npages.0, ptr %1, align 8
  %63 = ptrtoint ptr %bm_number_of_pages52 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %shr51, ptr %bm_number_of_pages52, align 8
  %64 = ptrtoint ptr %bm_bits84 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %conv, ptr %bm_bits84, align 8
  %65 = ptrtoint ptr %bm_words83 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %shr25, ptr %bm_words83, align 4
  %66 = ptrtoint ptr %bm_dev_capacity to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 %capacity, ptr %bm_dev_capacity, align 8
  br i1 %cmp85, label %if.then101, label %if.end94.if.end110_crit_edge

if.end94.if.end110_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end110

if.then101:                                       ; preds = %if.end94
  %sub108 = sub i32 %shr25, %59
  br i1 %tobool92.not, label %if.else107, label %if.then103

if.then103:                                       ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @bm_memset(ptr noundef nonnull %1, i32 noundef %59, i32 noundef 255, i32 noundef %sub108)
  %sub104 = sub i32 %conv, %61
  %bm_set105 = getelementptr inbounds %struct.drbd_bitmap, ptr %1, i32 0, i32 4
  %67 = ptrtoint ptr %bm_set105 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %bm_set105, align 4
  %add106 = add i32 %sub104, %68
  store i32 %add106, ptr %bm_set105, align 4
  br label %if.end110

if.else107:                                       ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @bm_memset(ptr noundef nonnull %1, i32 noundef %59, i32 noundef 0, i32 noundef %sub108)
  br label %if.end110

if.end110:                                        ; preds = %if.else107, %if.then103, %if.end94.if.end110_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %shr51)
  %cmp111 = icmp ugt i32 %45, %shr51
  br i1 %cmp111, label %if.then113, label %if.end110.if.end115_crit_edge

if.end110.if.end115_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end115

if.then113:                                       ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr = getelementptr ptr, ptr %57, i32 %shr51
  %sub114 = sub i32 %45, %shr51
  tail call fastcc void @bm_free_pages(ptr noundef %add.ptr, i32 noundef %sub114)
  br label %if.end115

if.end115:                                        ; preds = %if.then113, %if.end110.if.end115_crit_edge
  %call116 = tail call fastcc i32 @bm_clear_surplus(ptr noundef nonnull %1)
  tail call void @_raw_spin_unlock_irq(ptr noundef %bm_lock81) #11
  %cmp118.not = icmp eq ptr %57, %npages.0
  br i1 %cmp118.not, label %if.end115.if.end121_crit_edge, label %if.then120

if.end115.if.end121_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end121

if.then120:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kvfree(ptr noundef %57) #11
  br label %if.end121

if.end121:                                        ; preds = %if.then120, %if.end115.if.end121_crit_edge
  br i1 %cmp85, label %if.end121.do.end129_crit_edge, label %if.then123

if.end121.do.end129_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end129

if.then123:                                       ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #13
  %call124 = tail call fastcc i32 @bm_count_bits(ptr noundef nonnull %1)
  %bm_set125 = getelementptr inbounds %struct.drbd_bitmap, ptr %1, i32 0, i32 4
  %69 = ptrtoint ptr %bm_set125 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %call124, ptr %bm_set125, align 4
  br label %do.end129

do.end129:                                        ; preds = %if.then123, %if.end121.do.end129_crit_edge
  %70 = ptrtoint ptr %vdisk10 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %vdisk10, align 4
  %part0131 = getelementptr inbounds %struct.gendisk, ptr %71, i32 0, i32 7
  %72 = ptrtoint ptr %part0131 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %part0131, align 4
  %bd_device132 = getelementptr inbounds %struct.block_device, ptr %73, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.34, ptr noundef %bd_device132, ptr noundef nonnull @.str.46, i32 noundef %conv, i32 noundef %shr25, i32 noundef %shr51) #14
  br label %out

out:                                              ; preds = %do.end129, %if.end77.out_crit_edge, %drbd_insert_fault.exit.out_crit_edge, %cleanup, %bm_free_pages.exit, %if.end6.out_crit_edge
  %err.2 = phi i32 [ 0, %if.end6.out_crit_edge ], [ 0, %bm_free_pages.exit ], [ -28, %cleanup ], [ 0, %do.end129 ], [ -12, %if.end77.out_crit_edge ], [ -12, %drbd_insert_fault.exit.out_crit_edge ]
  %74 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %bitmap, align 4
  %tobool.not.i236 = icmp eq ptr %75, null
  br i1 %tobool.not.i236, label %do.end.i237, label %if.end.i239

do.end.i237:                                      ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  %76 = ptrtoint ptr %vdisk10 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %vdisk10, align 4
  %part0.i = getelementptr inbounds %struct.gendisk, ptr %77, i32 0, i32 7
  %78 = ptrtoint ptr %part0.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %part0.i, align 4
  %bd_device.i = getelementptr inbounds %struct.block_device, ptr %79, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %bd_device.i, ptr noundef nonnull @.str.13) #14
  br label %cleanup133

if.end.i239:                                      ; preds = %out
  %bm_flags.i = getelementptr inbounds %struct.drbd_bitmap, ptr %75, i32 0, i32 11
  %80 = ptrtoint ptr %bm_flags.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %bm_flags.i, align 8
  %and.i238 = and i32 %81, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i238)
  %tobool2.not.i = icmp eq i32 %and.i238, 0
  br i1 %tobool2.not.i, label %do.end6.i, label %if.end.i239.if.end10.i_crit_edge

if.end.i239.if.end10.i_crit_edge:                 ; preds = %if.end.i239
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10.i

do.end6.i:                                        ; preds = %if.end.i239
  call void @__sanitizer_cov_trace_pc() #13
  %82 = ptrtoint ptr %vdisk10 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %vdisk10, align 4
  %part08.i = getelementptr inbounds %struct.gendisk, ptr %83, i32 0, i32 7
  %84 = ptrtoint ptr %part08.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %part08.i, align 4
  %bd_device9.i = getelementptr inbounds %struct.block_device, ptr %85, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %bd_device9.i, ptr noundef nonnull @.str.16) #14
  br label %if.end10.i

if.end10.i:                                       ; preds = %do.end6.i, %if.end.i239.if.end10.i_crit_edge
  %86 = ptrtoint ptr %bm_flags.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %bm_flags.i, align 8
  %and12.i = and i32 %87, -16
  store i32 %and12.i, ptr %bm_flags.i, align 8
  %bm_why.i = getelementptr inbounds %struct.drbd_bitmap, ptr %75, i32 0, i32 12
  %88 = ptrtoint ptr %bm_why.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr null, ptr %bm_why.i, align 4
  %bm_task.i = getelementptr inbounds %struct.drbd_bitmap, ptr %75, i32 0, i32 13
  %89 = ptrtoint ptr %bm_task.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr null, ptr %bm_task.i, align 8
  %bm_change.i = getelementptr inbounds %struct.drbd_bitmap, ptr %75, i32 0, i32 9
  tail call void @mutex_unlock(ptr noundef %bm_change.i) #11
  br label %cleanup133

cleanup133:                                       ; preds = %if.end10.i, %do.end.i237, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ %err.2, %do.end.i237 ], [ %err.2, %if.end10.i ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @put_ldev(ptr noundef %device) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %state = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 27
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %state, align 8
  %bf.lshr = lshr i32 %bf.load, 9
  %bf.clear = and i32 %bf.lshr, 15
  %local_cnt = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 41
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %local_cnt, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !299
  tail call void @llvm.prefetch.p0(ptr %local_cnt, i32 1, i32 3, i32 1) #11
  %1 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %local_cnt, ptr %local_cnt, i32 1, ptr elementtype(i32) %local_cnt) #11, !srcloc !300
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %1, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !301
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %asmresult.i.i.i.i)
  %cmp = icmp sgt i32 %asmresult.i.i.i.i, -1
  br i1 %cmp, label %do.end3, label %do.end3.thread

do.end3.thread:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %vdisk = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %2 = ptrtoint ptr %vdisk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdisk, align 4
  %part0 = getelementptr inbounds %struct.gendisk, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %part0, align 4
  %bd_device = getelementptr inbounds %struct.block_device, ptr %5, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %bd_device, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.96, i32 noundef 2099) #14
  br label %if.end15

do.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp4 = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp4, label %if.then5, label %do.end3.if.end15_crit_edge

do.end3.if.end15_crit_edge:                       ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.then5:                                         ; preds = %do.end3
  %6 = zext i32 %bf.clear to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %bf.clear, label %if.then5.if.end14_crit_edge [
    i32 0, label %if.then7
    i32 2, label %if.then10
  ]

if.then5.if.end14_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then7:                                         ; preds = %if.then5
  %flags.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 14
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 24, ptr noundef %flags.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then7.if.end14_crit_edge

if.then7.if.end14_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then.i:                                        ; preds = %if.then7
  %peer_devices.i.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 1
  %7 = ptrtoint ptr %peer_devices.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %peer_devices.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %8, %peer_devices.i.i
  %spec.select.i.i = select i1 %cmp.not.i.i, ptr null, ptr %8
  %connection2.i = getelementptr inbounds %struct.drbd_peer_device, ptr %spec.select.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %connection2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %connection2.i, align 4
  %flags3.i = getelementptr inbounds %struct.drbd_connection, ptr %10, i32 0, i32 10
  %call4.i = tail call i32 @_test_and_set_bit(i32 noundef 12, ptr noundef %flags3.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.then.i.if.end14.sink.split_crit_edge, label %if.then.i.if.end14_crit_edge

if.then.i.if.end14_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then.i.if.end14.sink.split_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14.sink.split

if.then10:                                        ; preds = %if.then5
  %flags = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 14
  %call11 = tail call i32 @_test_and_set_bit(i32 noundef 22, ptr noundef %flags) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %if.then12, label %if.then10.if.end14_crit_edge

if.then10.if.end14_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then12:                                        ; preds = %if.then10
  %call.i25 = tail call i32 @_test_and_set_bit(i32 noundef 23, ptr noundef %flags) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i25)
  %tobool.not.i26 = icmp eq i32 %call.i25, 0
  br i1 %tobool.not.i26, label %if.then.i34, label %if.then12.if.end14_crit_edge

if.then12.if.end14_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then.i34:                                      ; preds = %if.then12
  %peer_devices.i.i27 = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 1
  %11 = ptrtoint ptr %peer_devices.i.i27 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %peer_devices.i.i27, align 4
  %cmp.not.i.i28 = icmp eq ptr %12, %peer_devices.i.i27
  %spec.select.i.i29 = select i1 %cmp.not.i.i28, ptr null, ptr %12
  %connection2.i30 = getelementptr inbounds %struct.drbd_peer_device, ptr %spec.select.i.i29, i32 0, i32 2
  %13 = ptrtoint ptr %connection2.i30 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %connection2.i30, align 4
  %flags3.i31 = getelementptr inbounds %struct.drbd_connection, ptr %14, i32 0, i32 10
  %call4.i32 = tail call i32 @_test_and_set_bit(i32 noundef 12, ptr noundef %flags3.i31) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i32)
  %tobool5.not.i33 = icmp eq i32 %call4.i32, 0
  br i1 %tobool5.not.i33, label %if.then.i34.if.end14.sink.split_crit_edge, label %if.then.i34.if.end14_crit_edge

if.then.i34.if.end14_crit_edge:                   ; preds = %if.then.i34
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then.i34.if.end14.sink.split_crit_edge:        ; preds = %if.then.i34
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14.sink.split

if.end14.sink.split:                              ; preds = %if.then.i34.if.end14.sink.split_crit_edge, %if.then.i.if.end14.sink.split_crit_edge
  %.sink = phi ptr [ %10, %if.then.i.if.end14.sink.split_crit_edge ], [ %14, %if.then.i34.if.end14.sink.split_crit_edge ]
  %q_wait.i35 = getelementptr inbounds %struct.drbd_connection, ptr %.sink, i32 0, i32 45, i32 2
  tail call void @__wake_up(ptr noundef %q_wait.i35, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  br label %if.end14

if.end14:                                         ; preds = %if.end14.sink.split, %if.then.i34.if.end14_crit_edge, %if.then12.if.end14_crit_edge, %if.then10.if.end14_crit_edge, %if.then.i.if.end14_crit_edge, %if.then7.if.end14_crit_edge, %if.then5.if.end14_crit_edge
  %misc_wait = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 28
  tail call void @__wake_up(ptr noundef %misc_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %do.end3.if.end15_crit_edge, %do.end3.thread
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @bm_realloc_pages(ptr nocapture noundef readonly %b, i32 noundef %want) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b, align 8
  %bm_number_of_pages = getelementptr inbounds %struct.drbd_bitmap, ptr %b, i32 0, i32 7
  %2 = ptrtoint ptr %bm_number_of_pages to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bm_number_of_pages, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  %cmp1 = icmp ne ptr %1, null
  %spec.select = select i1 %cmp, i1 %cmp1, i1 false
  br i1 %spec.select, label %do.body3, label %do.body9, !prof !295

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/block/drbd/drbd_bitmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 385, 0\0A.popsection", ""() #11, !srcloc !302
  unreachable

do.body9:                                         ; preds = %entry
  %cmp12 = icmp eq ptr %1, null
  %not.cmp = xor i1 %cmp, true
  %spec.select106 = select i1 %not.cmp, i1 %cmp12, i1 false
  br i1 %spec.select106, label %do.body21, label %do.end29, !prof !295

do.body21:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/block/drbd/drbd_bitmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 386, 0\0A.popsection", ""() #11, !srcloc !303
  unreachable

do.end29:                                         ; preds = %do.body9
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %want)
  %cmp30 = icmp eq i32 %3, %want
  br i1 %cmp30, label %do.end29.cleanup_crit_edge, label %if.end32

do.end29.cleanup_crit_edge:                       ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end32:                                         ; preds = %do.end29
  %mul = shl i32 %want, 2
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 11520) #16
  %tobool33.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool33.not, label %if.then34, label %if.end32.if.end39_crit_edge

if.end32.if.end39_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

if.then34:                                        ; preds = %if.end32
  %call35 = tail call noalias ptr @__vmalloc(i32 noundef %mul, i32 noundef 3328) #16
  %tobool36.not = icmp eq ptr %call35, null
  br i1 %tobool36.not, label %if.then34.cleanup_crit_edge, label %if.then34.if.end39_crit_edge

if.then34.if.end39_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

if.then34.cleanup_crit_edge:                      ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end39:                                         ; preds = %if.then34.if.end39_crit_edge, %if.end32.if.end39_crit_edge
  %new_pages.0 = phi ptr [ %call9.i.i, %if.end32.if.end39_crit_edge ], [ %call35, %if.then34.if.end39_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %want)
  %cmp40.not = icmp ugt i32 %3, %want
  br i1 %cmp40.not, label %for.cond55.preheader, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end39
  br i1 %cmp, label %for.cond.preheader.for.cond44.preheader_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.cond44.preheader_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond44.preheader

for.cond55.preheader:                             ; preds = %if.end39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %want)
  %cmp56116.not = icmp eq i32 %want, 0
  br i1 %cmp56116.not, label %for.cond55.preheader.cleanup_crit_edge, label %for.cond55.preheader.for.body57_crit_edge

for.cond55.preheader.for.body57_crit_edge:        ; preds = %for.cond55.preheader
  br label %for.body57

for.cond55.preheader.cleanup_crit_edge:           ; preds = %for.cond55.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond44.preheader:                             ; preds = %for.body.for.cond44.preheader_crit_edge, %for.cond.preheader.for.cond44.preheader_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %want)
  %cmp45114 = icmp ult i32 %3, %want
  br i1 %cmp45114, label %for.body46.preheader, label %for.cond44.preheader.cleanup_crit_edge

for.cond44.preheader.cleanup_crit_edge:           ; preds = %for.cond44.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body46.preheader:                             ; preds = %for.cond44.preheader
  %umax = call i32 @llvm.umax.i32(i32 %3, i32 16777216)
  br label %for.body46

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0113 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %1, i32 %i.0113
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %arrayidx43 = getelementptr ptr, ptr %new_pages.0, i32 %i.0113
  %6 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %arrayidx43, align 4
  %inc = add nuw i32 %i.0113, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.body.for.cond44.preheader_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.cond44.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond44.preheader

for.body46:                                       ; preds = %bm_store_page_idx.exit.for.body46_crit_edge, %for.body46.preheader
  %i.1115 = phi i32 [ %inc53, %bm_store_page_idx.exit.for.body46_crit_edge ], [ %3, %for.body46.preheader ]
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef 3074, i32 noundef 0, i32 noundef 0, ptr noundef null) #11
  %tobool48.not = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool48.not, label %if.then49, label %if.end50

if.then49:                                        ; preds = %for.body46
  %add.ptr = getelementptr ptr, ptr %new_pages.0, i32 %3
  %sub = sub i32 %i.1115, %3
  %tobool.not.i = icmp ne ptr %add.ptr, null
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1115, i32 %3)
  %cmp15.i = icmp ne i32 %i.1115, %3
  %or.cond.i = and i1 %tobool.not.i, %cmp15.i
  br i1 %or.cond.i, label %if.then49.for.body.i_crit_edge, label %if.then49.bm_free_pages.exit_crit_edge

if.then49.bm_free_pages.exit_crit_edge:           ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #13
  br label %bm_free_pages.exit

if.then49.for.body.i_crit_edge:                   ; preds = %if.then49
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then49.for.body.i_crit_edge
  %i.016.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.then49.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr ptr, ptr %add.ptr, i32 %i.016.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  %tobool1.not.i = icmp eq ptr %8, null
  br i1 %tobool1.not.i, label %do.end.i, label %if.end3.i

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, i32 noundef %i.016.i, i32 noundef %sub) #14
  br label %for.inc.i

if.end3.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__free_pages(ptr noundef nonnull %8, i32 noundef 0) #11
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %arrayidx.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end3.i, %do.end.i
  %inc.i = add nuw i32 %i.016.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %sub
  br i1 %exitcond.not.i, label %for.inc.i.bm_free_pages.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.bm_free_pages.exit_crit_edge:           ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bm_free_pages.exit

bm_free_pages.exit:                               ; preds = %for.inc.i.bm_free_pages.exit_crit_edge, %if.then49.bm_free_pages.exit_crit_edge
  tail call void @kvfree(ptr noundef %new_pages.0) #11
  br label %cleanup

if.end50:                                         ; preds = %for.body46
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1115, i32 %umax)
  %exitcond121.not = icmp eq i32 %i.1115, %umax
  br i1 %exitcond121.not, label %do.body2.i, label %bm_store_page_idx.exit, !prof !295

do.body2.i:                                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/block/drbd/drbd_bitmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 199, 0\0A.popsection", ""() #11, !srcloc !304
  unreachable

bm_store_page_idx.exit:                           ; preds = %if.end50
  %private1.i.i = getelementptr inbounds %struct.page, ptr %call38.i.i.i, i32 0, i32 1, i32 0, i32 3
  %10 = ptrtoint ptr %private1.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %i.1115, ptr %private1.i.i, align 4
  %arrayidx51 = getelementptr ptr, ptr %new_pages.0, i32 %i.1115
  %11 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call38.i.i.i, ptr %arrayidx51, align 4
  %inc53 = add i32 %i.1115, 1
  %exitcond122.not = icmp eq i32 %inc53, %want
  br i1 %exitcond122.not, label %bm_store_page_idx.exit.cleanup_crit_edge, label %bm_store_page_idx.exit.for.body46_crit_edge

bm_store_page_idx.exit.for.body46_crit_edge:      ; preds = %bm_store_page_idx.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body46

bm_store_page_idx.exit.cleanup_crit_edge:         ; preds = %bm_store_page_idx.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body57:                                       ; preds = %for.body57.for.body57_crit_edge, %for.cond55.preheader.for.body57_crit_edge
  %i.2117 = phi i32 [ %inc61, %for.body57.for.body57_crit_edge ], [ 0, %for.cond55.preheader.for.body57_crit_edge ]
  %arrayidx58 = getelementptr ptr, ptr %1, i32 %i.2117
  %12 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx58, align 4
  %arrayidx59 = getelementptr ptr, ptr %new_pages.0, i32 %i.2117
  %14 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %arrayidx59, align 4
  %inc61 = add nuw i32 %i.2117, 1
  %exitcond123.not = icmp eq i32 %inc61, %want
  br i1 %exitcond123.not, label %for.body57.cleanup_crit_edge, label %for.body57.for.body57_crit_edge

for.body57.for.body57_crit_edge:                  ; preds = %for.body57
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body57

for.body57.cleanup_crit_edge:                     ; preds = %for.body57
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.body57.cleanup_crit_edge, %bm_store_page_idx.exit.cleanup_crit_edge, %bm_free_pages.exit, %for.cond44.preheader.cleanup_crit_edge, %for.cond55.preheader.cleanup_crit_edge, %if.then34.cleanup_crit_edge, %do.end29.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %bm_free_pages.exit ], [ %1, %do.end29.cleanup_crit_edge ], [ null, %if.then34.cleanup_crit_edge ], [ %new_pages.0, %for.cond55.preheader.cleanup_crit_edge ], [ %new_pages.0, %for.cond44.preheader.cleanup_crit_edge ], [ %new_pages.0, %for.body57.cleanup_crit_edge ], [ %new_pages.0, %bm_store_page_idx.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bm_set_surplus(ptr nocapture noundef readonly %b) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bm_bits = getelementptr inbounds %struct.drbd_bitmap, ptr %b, i32 0, i32 5
  %0 = ptrtoint ptr %bm_bits to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bm_bits, align 8
  %and1 = and i32 %1, 31
  %bm_number_of_pages = getelementptr inbounds %struct.drbd_bitmap, ptr %b, i32 0, i32 7
  %2 = ptrtoint ptr %bm_number_of_pages to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bm_number_of_pages, align 8
  %sub2 = add i32 %3, -1
  %4 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %b, align 8
  %arrayidx.i.i = getelementptr ptr, ptr %5, i32 %sub2
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %8 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i.i = or i32 %8, 512
  %9 = tail call i32 @llvm.read_register.i32(metadata !285) #11
  %and.i.i.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %12, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !305
  %13 = tail call i32 @llvm.read_register.i32(metadata !285) #11
  %and.i.i.i1.i.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i1.i.i.i.i to ptr
  %task.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %task.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task.i.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 213
  %17 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pagefault_disabled.i.i.i.i.i.i, align 8
  %inc.i.i.i.i.i.i = add i32 %18, 1
  store i32 %inc.i.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !306
  %call.i.i.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %7, i32 noundef %or.i.i.i) #11
  %and = lshr i32 %1, 5
  %div16 = and i32 %and, 1023
  %add.ptr = getelementptr i32, ptr %call.i.i.i.i, i32 %div16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %notmask = shl nsw i32 -1, %and1
  %19 = tail call i32 @llvm.bswap.i32(i32 %notmask)
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr, align 4
  %or = or i32 %21, %19
  store i32 %or, ptr %add.ptr, align 4
  %incdec.ptr = getelementptr i32, ptr %add.ptr, i32 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %bm.0 = phi ptr [ %incdec.ptr, %if.then ], [ %add.ptr, %entry.if.end_crit_edge ]
  %sub.ptr.lhs.cast = ptrtoint ptr %bm.0 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %call.i.i.i.i to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %22 = and i32 %sub.ptr.sub, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.not = icmp eq i32 %22, 0
  br i1 %cmp.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %bm.0 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %bm.0, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i.i.i) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !307
  %24 = tail call i32 @llvm.read_register.i32(metadata !285) #11
  %and.i.i.i1.i.i.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i1.i.i.i to ptr
  %task.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %task.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %task.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 213
  %28 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pagefault_disabled.i.i.i.i.i, align 8
  %dec.i.i.i.i.i = add i32 %29, -1
  store i32 %dec.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !308
  %30 = tail call i32 @llvm.read_register.i32(metadata !285) #11
  %and.i.i.i.i.i.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %sub.i.i.i.i = add i32 %33, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bm_memset(ptr nocapture noundef readonly %b, i32 noundef %offset, i32 noundef %c, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %len, %offset
  %bm_words = getelementptr inbounds %struct.drbd_bitmap, ptr %b, i32 0, i32 6
  %0 = ptrtoint ptr %bm_words to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bm_words, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %1)
  %cmp = icmp ugt i32 %add, %1
  br i1 %cmp, label %do.end, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %offset)
  %cmp146 = icmp ugt i32 %add, %offset
  br i1 %cmp146, label %while.body.lr.ph, label %while.cond.preheader.cleanup_crit_edge

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %bm_number_of_pages.i = getelementptr inbounds %struct.drbd_bitmap, ptr %b, i32 0, i32 7
  %2 = trunc i32 %c to i8
  br label %while.body

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98) #14
  br label %cleanup

while.body:                                       ; preds = %if.end18.while.body_crit_edge, %while.body.lr.ph
  %offset.addr.047 = phi i32 [ %offset, %while.body.lr.ph ], [ %3, %if.end18.while.body_crit_edge ]
  %add3 = add i32 %offset.addr.047, 1024
  %and = and i32 %add3, -1024
  %3 = tail call i32 @llvm.umin.i32(i32 %and, i32 %add)
  %sub = sub i32 %3, %offset.addr.047
  %shr.i = lshr i32 %offset.addr.047, 10
  %4 = ptrtoint ptr %bm_number_of_pages.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bm_number_of_pages.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %5)
  %cmp.not.i = icmp ult i32 %shr.i, %5
  br i1 %cmp.not.i, label %bm_word_to_page_idx.exit, label %do.body2.i, !prof !297

do.body2.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/block/drbd/drbd_bitmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 300, 0\0A.popsection", ""() #11, !srcloc !309
  unreachable

bm_word_to_page_idx.exit:                         ; preds = %while.body
  %6 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %b, align 8
  %arrayidx.i.i = getelementptr ptr, ptr %7, i32 %shr.i
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %10 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i.i = or i32 %10, 512
  %11 = tail call i32 @llvm.read_register.i32(metadata !285) #11
  %and.i.i.i.i.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %14, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !305
  %15 = tail call i32 @llvm.read_register.i32(metadata !285) #11
  %and.i.i.i1.i.i.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i1.i.i.i.i to ptr
  %task.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %task.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task.i.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 213
  %19 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pagefault_disabled.i.i.i.i.i.i, align 8
  %inc.i.i.i.i.i.i = add i32 %20, 1
  store i32 %inc.i.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !306
  %call.i.i.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %9, i32 noundef %or.i.i.i) #11
  %and8 = and i32 %offset.addr.047, 1023
  %add.ptr = getelementptr i32, ptr %call.i.i.i.i, i32 %and8
  %add.ptr9 = getelementptr i32, ptr %add.ptr, i32 %sub
  %add.ptr10 = getelementptr i32, ptr %call.i.i.i.i, i32 1024
  %cmp11 = icmp ugt ptr %add.ptr9, %add.ptr10
  br i1 %cmp11, label %do.end15, label %if.else

do.end15:                                         ; preds = %bm_word_to_page_idx.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, ptr noundef %call.i.i.i.i, ptr noundef %add.ptr, i32 noundef %sub) #14
  br label %if.end18

if.else:                                          ; preds = %bm_word_to_page_idx.exit
  call void @__sanitizer_cov_trace_pc() #13
  %mul = shl i32 %sub, 2
  %21 = zext i8 %2 to i32
  %22 = call ptr @memset(ptr %add.ptr, i32 %21, i32 %mul)
  br label %if.end18

if.end18:                                         ; preds = %if.else, %do.end15
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i.i.i) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !307
  %23 = tail call i32 @llvm.read_register.i32(metadata !285) #11
  %and.i.i.i1.i.i.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i1.i.i.i to ptr
  %task.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %task.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %task.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 213
  %27 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pagefault_disabled.i.i.i.i.i, align 8
  %dec.i.i.i.i.i = add i32 %28, -1
  store i32 %dec.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !308
  %29 = tail call i32 @llvm.read_register.i32(metadata !285) #11
  %and.i.i.i.i.i.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %sub.i.i.i.i = add i32 %32, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  %33 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %b, align 8
  %arrayidx = getelementptr ptr, ptr %34, i32 %shr.i
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx, align 4
  %private.i = getelementptr inbounds %struct.page, ptr %36, i32 0, i32 1, i32 0, i32 3
  tail call void @_set_bit(i32 noundef 29, ptr noundef %private.i) #11
  %cmp1 = icmp ugt i32 %add, %and
  br i1 %cmp1, label %if.end18.while.body_crit_edge, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end18.while.body_crit_edge:                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

cleanup:                                          ; preds = %if.end18.cleanup_crit_edge, %do.end, %while.cond.preheader.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bm_clear_surplus(ptr nocapture noundef readonly %b) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bm_bits = getelementptr inbounds %struct.drbd_bitmap, ptr %b, i32 0, i32 5
  %0 = ptrtoint ptr %bm_bits to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bm_bits, align 8
  %and1 = and i32 %1, 31
  %bm_number_of_pages = getelementptr inbounds %struct.drbd_bitmap, ptr %b, i32 0, i32 7
  %2 = ptrtoint ptr %bm_number_of_pages to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bm_number_of_pages, align 8
  %sub2 = add i32 %3, -1
  %4 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %b, align 8
  %arrayidx.i.i = getelementptr ptr, ptr %5, i32 %sub2
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %8 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i.i = or i32 %8, 512
  %9 = tail call i32 @llvm.read_register.i32(metadata !285) #11
  %and.i.i.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %12, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !305
  %13 = tail call i32 @llvm.read_register.i32(metadata !285) #11
  %and.i.i.i1.i.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i1.i.i.i.i to ptr
  %task.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %task.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task.i.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 213
  %17 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pagefault_disabled.i.i.i.i.i.i, align 8
  %inc.i.i.i.i.i.i = add i32 %18, 1
  store i32 %inc.i.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !306
  %call.i.i.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %7, i32 noundef %or.i.i.i) #11
  %and = lshr i32 %1, 5
  %div24 = and i32 %and, 1023
  %add.ptr = getelementptr i32, ptr %call.i.i.i.i, i32 %div24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %notmask = shl nsw i32 -1, %and1
  %sub = xor i32 %notmask, -1
  %19 = tail call i32 @llvm.bswap.i32(i32 %sub)
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr, align 4
  %neg = xor i32 %19, -1
  %and3 = and i32 %21, %neg
  %call.i.i = tail call i32 @__sw_hweight32(i32 noundef %and3) #11
  %22 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr, align 4
  %and5 = and i32 %23, %19
  store i32 %and5, ptr %add.ptr, align 4
  %incdec.ptr = getelementptr i32, ptr %add.ptr, i32 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %bm.0 = phi ptr [ %incdec.ptr, %if.then ], [ %add.ptr, %entry.if.end_crit_edge ]
  %cleared.0 = phi i32 [ %call.i.i, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %sub.ptr.lhs.cast = ptrtoint ptr %bm.0 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %call.i.i.i.i to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %24 = and i32 %sub.ptr.sub, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.not = icmp eq i32 %24, 0
  br i1 %cmp.not, label %if.end.if.end9_crit_edge, label %cond.false.i118

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

cond.false.i118:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %bm.0 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bm.0, align 4
  %call.i.i117 = tail call i32 @__sw_hweight32(i32 noundef %26) #11
  %add = add i32 %call.i.i117, %cleared.0
  %27 = ptrtoint ptr %bm.0 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %bm.0, align 4
  br label %if.end9

if.end9:                                          ; preds = %cond.false.i118, %if.end.if.end9_crit_edge
  %cleared.1 = phi i32 [ %add, %cond.false.i118 ], [ %cleared.0, %if.end.if.end9_crit_edge ]
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i.i.i) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !307
  %28 = tail call i32 @llvm.read_register.i32(metadata !285) #11
  %and.i.i.i1.i.i.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i1.i.i.i to ptr
  %task.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %task.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %task.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 213
  %32 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pagefault_disabled.i.i.i.i.i, align 8
  %dec.i.i.i.i.i = add i32 %33, -1
  store i32 %dec.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !308
  %34 = tail call i32 @llvm.read_register.i32(metadata !285) #11
  %and.i.i.i.i.i.i = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %sub.i.i.i.i = add i32 %37, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  ret i32 %cleared.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bm_count_bits(ptr nocapture noundef readonly %b) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bm_bits = getelementptr inbounds %struct.drbd_bitmap, ptr %b, i32 0, i32 5
  %0 = ptrtoint ptr %bm_bits to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bm_bits, align 8
  %and = and i32 %1, 31
  %notmask = shl nsw i32 -1, %and
  %sub = xor i32 %notmask, -1
  %bm_number_of_pages = getelementptr inbounds %struct.drbd_bitmap, ptr %b, i32 0, i32 7
  %2 = ptrtoint ptr %bm_number_of_pages to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bm_number_of_pages, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp59.not = icmp eq i32 %3, 1
  br i1 %cmp59.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %idx.061 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %bits.060 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %4 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %b, align 8
  %arrayidx.i = getelementptr ptr, ptr %5, i32 %idx.061
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %8 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i = or i32 %8, 512
  %9 = tail call i32 @llvm.read_register.i32(metadata !285) #11
  %and.i.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %12, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !305
  %13 = tail call i32 @llvm.read_register.i32(metadata !285) #11
  %and.i.i.i1.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i1.i.i.i to ptr
  %task.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %task.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 213
  %17 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pagefault_disabled.i.i.i.i.i, align 8
  %inc.i.i.i.i.i = add i32 %18, 1
  store i32 %inc.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !306
  %call.i.i.i40 = tail call ptr @__kmap_local_page_prot(ptr noundef %7, i32 noundef %or.i.i) #11
  %call4.i = tail call i32 @__bitmap_weight(ptr noundef %call.i.i.i40, i32 noundef 32768) #11
  %add = add i32 %call4.i, %bits.060
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i.i40) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !307
  %19 = tail call i32 @llvm.read_register.i32(metadata !285) #11
  %and.i.i.i1.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 213
  %23 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %dec.i.i.i.i = add i32 %24, -1
  store i32 %dec.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !308
  %25 = tail call i32 @llvm.read_register.i32(metadata !285) #11
  %and.i.i.i.i.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %28, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 566, i32 noundef 0) #11
  %call.i = tail call i32 @__cond_resched() #11
  %inc = add nuw i32 %idx.061, 1
  %29 = ptrtoint ptr %bm_number_of_pages to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %bm_number_of_pages, align 8
  %sub1 = add i32 %30, -1
  %cmp = icmp ult i32 %inc, %sub1
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %bits.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %add, %for.body.for.end_crit_edge ]
  %idx.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %inc, %for.body.for.end_crit_edge ]
  %31 = ptrtoint ptr %bm_bits to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %bm_bits, align 8
  %sub5 = add i32 %32, 32767
  %and6 = lshr i32 %sub5, 5
  %shr = and i32 %and6, 1023
  %33 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %b, align 8
  %arrayidx.i41 = getelementptr ptr, ptr %34, i32 %idx.0.lcssa
  %35 = ptrtoint ptr %arrayidx.i41 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx.i41, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %37 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i42 = or i32 %37, 512
  %38 = tail call i32 @llvm.read_register.i32(metadata !285) #11
  %and.i.i.i.i.i.i43 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i.i.i43 to ptr
  %preempt_count.i.i.i.i.i44 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i.i.i44 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i.i.i44, align 4
  %add.i.i.i.i45 = add i32 %41, 1
  store volatile i32 %add.i.i.i.i45, ptr %preempt_count.i.i.i.i.i44, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !305
  %42 = tail call i32 @llvm.read_register.i32(metadata !285) #11
  %and.i.i.i1.i.i.i46 = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i.i1.i.i.i46 to ptr
  %task.i.i.i.i.i47 = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %task.i.i.i.i.i47 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %task.i.i.i.i.i47, align 8
  %pagefault_disabled.i.i.i.i.i48 = getelementptr inbounds %struct.task_struct, ptr %45, i32 0, i32 213
  %46 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i48 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %pagefault_disabled.i.i.i.i.i48, align 8
  %inc.i.i.i.i.i49 = add i32 %47, 1
  store i32 %inc.i.i.i.i.i49, ptr %pagefault_disabled.i.i.i.i.i48, align 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !306
  %call.i.i.i50 = tail call ptr @__kmap_local_page_prot(ptr noundef %36, i32 noundef %or.i.i42) #11
  %mul = shl nuw nsw i32 %shr, 5
  %call4.i38 = tail call i32 @__bitmap_weight(ptr noundef %call.i.i.i50, i32 noundef %mul) #11
  %48 = tail call i32 @llvm.bswap.i32(i32 %sub)
  %arrayidx = getelementptr i32, ptr %call.i.i.i50, i32 %shr
  %49 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx, align 4
  %and10 = and i32 %50, %48
  store i32 %and10, ptr %arrayidx, align 4
  %call.i.i = tail call i32 @__sw_hweight32(i32 noundef %and10) #11
  %51 = and i32 %sub5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp15 = icmp eq i32 %51, 0
  br i1 %cmp15, label %if.then, label %for.end.if.end_crit_edge

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %add16 = add nuw nsw i32 %shr, 1
  %arrayidx17 = getelementptr i32, ptr %call.i.i.i50, i32 %add16
  %52 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %arrayidx17, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.if.end_crit_edge
  %add9 = add i32 %call4.i38, %bits.0.lcssa
  %add13 = add i32 %add9, %call.i.i
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i.i50) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !307
  %53 = tail call i32 @llvm.read_register.i32(metadata !285) #11
  %and.i.i.i1.i.i51 = and i32 %53, -16384
  %54 = inttoptr i32 %and.i.i.i1.i.i51 to ptr
  %task.i.i.i.i52 = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %task.i.i.i.i52 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %task.i.i.i.i52, align 8
  %pagefault_disabled.i.i.i.i53 = getelementptr inbounds %struct.task_struct, ptr %56, i32 0, i32 213
  %57 = ptrtoint ptr %pagefault_disabled.i.i.i.i53 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %pagefault_disabled.i.i.i.i53, align 8
  %dec.i.i.i.i54 = add i32 %58, -1
  store i32 %dec.i.i.i.i54, ptr %pagefault_disabled.i.i.i.i53, align 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !308
  %59 = tail call i32 @llvm.read_register.i32(metadata !285) #11
  %and.i.i.i.i.i55 = and i32 %59, -16384
  %60 = inttoptr i32 %and.i.i.i.i.i55 to ptr
  %preempt_count.i.i.i.i56 = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %preempt_count.i.i.i.i56 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %preempt_count.i.i.i.i56, align 4
  %sub.i.i.i57 = add i32 %62, -1
  store volatile i32 %sub.i.i.i57, ptr %preempt_count.i.i.i.i56, align 4
  ret i32 %add13
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @_drbd_bm_total_weight(ptr nocapture noundef readonly %device) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bitmap = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 63
  %0 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bitmap, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %vdisk = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %2 = ptrtoint ptr %vdisk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdisk, align 4
  %part0 = getelementptr inbounds %struct.gendisk, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %part0, align 4
  %bd_device = getelementptr inbounds %struct.block_device, ptr %5, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %bd_device, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.48) #14
  br label %cleanup

if.end6:                                          ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %tobool8.not = icmp eq ptr %7, null
  br i1 %tobool8.not, label %do.end14, label %do.body26

do.end14:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %vdisk15 = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %8 = ptrtoint ptr %vdisk15 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vdisk15, align 4
  %part016 = getelementptr inbounds %struct.gendisk, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %part016 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %part016, align 4
  %bd_device17 = getelementptr inbounds %struct.block_device, ptr %11, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %bd_device17, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.48) #14
  br label %cleanup

do.body26:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %bm_lock = getelementptr inbounds %struct.drbd_bitmap, ptr %1, i32 0, i32 1
  %call28 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bm_lock) #11
  %bm_set = getelementptr inbounds %struct.drbd_bitmap, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %bm_set to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bm_set, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bm_lock, i32 noundef %call28) #11
  br label %cleanup

cleanup:                                          ; preds = %do.body26, %do.end14, %do.end
  %retval.0 = phi i32 [ %13, %do.body26 ], [ 0, %do.end14 ], [ 0, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drbd_bm_total_weight(ptr noundef %device) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 27
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load.i = load i32, ptr %state.i, align 8
  %1 = and i32 %bf.load.i, 7680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp eq i32 %1, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %local_cnt.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 41
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %local_cnt.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %local_cnt.i, i32 1, i32 3, i32 1) #11
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %local_cnt.i, ptr %local_cnt.i, i32 1, ptr elementtype(i32) %local_cnt.i) #11, !srcloc !298
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %bf.load2.i = load i32, ptr %state.i, align 8
  %4 = and i32 %bf.load2.i, 7680
  call void @__sanitizer_cov_trace_const_cmp4(i32 1536, i32 %4)
  %cmp5.not.i = icmp ult i32 %4, 1536
  br i1 %cmp5.not.i, label %if.then6.i, label %if.end

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @put_ldev(ptr noundef %device) #11
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %bitmap.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 63
  %5 = ptrtoint ptr %bitmap.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bitmap.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end6.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %vdisk.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %7 = ptrtoint ptr %vdisk.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vdisk.i, align 4
  %part0.i = getelementptr inbounds %struct.gendisk, ptr %8, i32 0, i32 7
  %9 = ptrtoint ptr %part0.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %part0.i, align 4
  %bd_device.i = getelementptr inbounds %struct.block_device, ptr %10, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %bd_device.i, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.48) #14
  br label %_drbd_bm_total_weight.exit

if.end6.i:                                        ; preds = %if.end
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %6, align 8
  %tobool8.not.i = icmp eq ptr %12, null
  br i1 %tobool8.not.i, label %do.end14.i, label %do.body26.i

do.end14.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  %vdisk15.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %13 = ptrtoint ptr %vdisk15.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vdisk15.i, align 4
  %part016.i = getelementptr inbounds %struct.gendisk, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %part016.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %part016.i, align 4
  %bd_device17.i = getelementptr inbounds %struct.block_device, ptr %16, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %bd_device17.i, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.48) #14
  br label %_drbd_bm_total_weight.exit

do.body26.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  %bm_lock.i = getelementptr inbounds %struct.drbd_bitmap, ptr %6, i32 0, i32 1
  %call28.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bm_lock.i) #11
  %bm_set.i = getelementptr inbounds %struct.drbd_bitmap, ptr %6, i32 0, i32 4
  %17 = ptrtoint ptr %bm_set.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bm_set.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bm_lock.i, i32 noundef %call28.i) #11
  br label %_drbd_bm_total_weight.exit

_drbd_bm_total_weight.exit:                       ; preds = %do.body26.i, %do.end14.i, %do.end.i
  %retval.0.i5 = phi i32 [ %18, %do.body26.i ], [ 0, %do.end14.i ], [ 0, %do.end.i ]
  tail call fastcc void @put_ldev(ptr noundef %device)
  br label %cleanup

cleanup:                                          ; preds = %_drbd_bm_total_weight.exit, %if.then6.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i5, %_drbd_bm_total_weight.exit ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then6.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drbd_bm_words(ptr nocapture noundef readonly %device) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bitmap = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 63
  %0 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bitmap, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %vdisk = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %2 = ptrtoint ptr %vdisk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdisk, align 4
  %part0 = getelementptr inbounds %struct.gendisk, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %part0, align 4
  %bd_device = getelementptr inbounds %struct.block_device, ptr %5, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %bd_device, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.52) #14
  br label %cleanup

if.end6:                                          ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %tobool8.not = icmp eq ptr %7, null
  br i1 %tobool8.not, label %do.end14, label %if.end24

do.end14:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %vdisk15 = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %8 = ptrtoint ptr %vdisk15 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vdisk15, align 4
  %part016 = getelementptr inbounds %struct.gendisk, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %part016 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %part016, align 4
  %bd_device17 = getelementptr inbounds %struct.block_device, ptr %11, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %bd_device17, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52) #14
  br label %cleanup

if.end24:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %bm_words = getelementptr inbounds %struct.drbd_bitmap, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %bm_words to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bm_words, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %do.end14, %do.end
  %retval.0 = phi i32 [ %13, %if.end24 ], [ 0, %do.end14 ], [ 0, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drbd_bm_bits(ptr nocapture noundef readonly %device) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bitmap = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 63
  %0 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bitmap, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %vdisk = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %2 = ptrtoint ptr %vdisk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdisk, align 4
  %part0 = getelementptr inbounds %struct.gendisk, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %part0, align 4
  %bd_device = getelementptr inbounds %struct.block_device, ptr %5, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %bd_device, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.55) #14
  br label %cleanup

if.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %bm_bits = getelementptr inbounds %struct.drbd_bitmap, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %bm_bits to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bm_bits, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %do.end
  %retval.0 = phi i32 [ %7, %if.end6 ], [ 0, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drbd_bm_merge_lel(ptr nocapture noundef readonly %device, i32 noundef %offset, i32 noundef %number, ptr nocapture noundef readonly %buffer) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bitmap = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 63
  %0 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bitmap, align 4
  %add = add i32 %number, %offset
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %vdisk = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %2 = ptrtoint ptr %vdisk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdisk, align 4
  %part0 = getelementptr inbounds %struct.gendisk, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %part0, align 4
  %bd_device = getelementptr inbounds %struct.block_device, ptr %5, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %bd_device, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.56) #14
  br label %cleanup

if.end6:                                          ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %tobool8.not = icmp eq ptr %7, null
  br i1 %tobool8.not, label %do.end14, label %if.end24

do.end14:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %vdisk15 = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %8 = ptrtoint ptr %vdisk15 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vdisk15, align 4
  %part016 = getelementptr inbounds %struct.gendisk, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %part016 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %part016, align 4
  %bd_device17 = getelementptr inbounds %struct.block_device, ptr %11, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %bd_device17, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.56) #14
  br label %cleanup

if.end24:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %number)
  %cmp = icmp eq i32 %number, 0
  br i1 %cmp, label %if.end24.cleanup_crit_edge, label %if.end26

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end26:                                         ; preds = %if.end24
  %bm_words = getelementptr inbounds %struct.drbd_bitmap, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %bm_words to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bm_words, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %offset)
  %cmp27.not = icmp ugt i32 %13, %offset
  br i1 %cmp27.not, label %if.end26.if.end45_crit_edge, label %do.end39, !prof !297

if.end26.if.end45_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45

do.end39:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 825, i32 noundef 9, ptr noundef null) #11
  br label %if.end45

if.end45:                                         ; preds = %do.end39, %if.end26.if.end45_crit_edge
  %14 = ptrtoint ptr %bm_words to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bm_words, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %15)
  %cmp55 = icmp ugt i32 %add, %15
  br i1 %cmp55, label %do.end71, label %if.end45.if.end77_crit_edge, !prof !295

if.end45.if.end77_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end77

do.end71:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 826, i32 noundef 9, ptr noundef null) #11
  br label %if.end77

if.end77:                                         ; preds = %do.end71, %if.end45.if.end77_crit_edge
  %bm_lock = getelementptr inbounds %struct.drbd_bitmap, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %bm_lock) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %offset)
  %cmp85255 = icmp ugt i32 %add, %offset
  br i1 %cmp85255, label %while.body.lr.ph, label %if.end77.while.end102_crit_edge

if.end77.while.end102_crit_edge:                  ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end102

while.body.lr.ph:                                 ; preds = %if.end77
  %bm_number_of_pages.i = getelementptr inbounds %struct.drbd_bitmap, ptr %1, i32 0, i32 7
  %bm_set = getelementptr inbounds %struct.drbd_bitmap, ptr %1, i32 0, i32 4
  br label %while.body

while.body:                                       ; preds = %while.end.while.body_crit_edge, %while.body.lr.ph
  %offset.addr.0257 = phi i32 [ %offset, %while.body.lr.ph ], [ %16, %while.end.while.body_crit_edge ]
  %buffer.addr.0256 = phi ptr [ %buffer, %while.body.lr.ph ], [ %buffer.addr.1.lcssa, %while.end.while.body_crit_edge ]
  %add87 = add i32 %offset.addr.0257, 1024
  %and = and i32 %add87, -1024
  %16 = tail call i32 @llvm.umin.i32(i32 %and, i32 %add)
  %shr.i250 = lshr i32 %offset.addr.0257, 10
  %17 = ptrtoint ptr %bm_number_of_pages.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bm_number_of_pages.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i250, i32 %18)
  %cmp.not.i = icmp ult i32 %shr.i250, %18
  br i1 %cmp.not.i, label %bm_word_to_page_idx.exit, label %do.body2.i, !prof !297

do.body2.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/block/drbd/drbd_bitmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 300, 0\0A.popsection", ""() #11, !srcloc !309
  unreachable

bm_word_to_page_idx.exit:                         ; preds = %while.body
  %sub = sub i32 %16, %offset.addr.0257
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 8
  %arrayidx.i.i = getelementptr ptr, ptr %20, i32 %shr.i250
  %21 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %23 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i.i = or i32 %23, 512
  %24 = tail call i32 @llvm.read_register.i32(metadata !285) #11
  %and.i.i.i.i.i.i.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %27, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !305
  %28 = tail call i32 @llvm.read_register.i32(metadata !285) #11
  %and.i.i.i1.i.i.i.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i1.i.i.i.i to ptr
  %task.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %task.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %task.i.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 213
  %32 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pagefault_disabled.i.i.i.i.i.i, align 8
  %inc.i.i.i.i.i.i = add i32 %33, 1
  store i32 %inc.i.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !306
  %call.i.i.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %22, i32 noundef %or.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool94.not251 = icmp eq i32 %sub, 0
  br i1 %tobool94.not251, label %bm_word_to_page_idx.exit.while.end_crit_edge, label %while.body95.preheader

bm_word_to_page_idx.exit.while.end_crit_edge:     ; preds = %bm_word_to_page_idx.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body95.preheader:                           ; preds = %bm_word_to_page_idx.exit
  %and91 = and i32 %offset.addr.0257, 1023
  %add.ptr = getelementptr i32, ptr %call.i.i.i.i, i32 %and91
  br label %while.body95

while.body95:                                     ; preds = %while.body95.while.body95_crit_edge, %while.body95.preheader
  %buffer.addr.1254 = phi ptr [ %incdec.ptr, %while.body95.while.body95_crit_edge ], [ %buffer.addr.0256, %while.body95.preheader ]
  %bm.0253 = phi ptr [ %incdec.ptr97, %while.body95.while.body95_crit_edge ], [ %add.ptr, %while.body95.preheader ]
  %do_now.0252 = phi i32 [ %dec, %while.body95.while.body95_crit_edge ], [ %sub, %while.body95.preheader ]
  %dec = add i32 %do_now.0252, -1
  %34 = ptrtoint ptr %bm.0253 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %bm.0253, align 4
  %call.i.i = tail call i32 @__sw_hweight32(i32 noundef %35) #11
  %36 = ptrtoint ptr %bm.0253 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %bm.0253, align 4
  %incdec.ptr = getelementptr i32, ptr %buffer.addr.1254, i32 1
  %38 = ptrtoint ptr %buffer.addr.1254 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %buffer.addr.1254, align 4
  %or = or i32 %39, %37
  %incdec.ptr97 = getelementptr i32, ptr %bm.0253, i32 1
  store i32 %or, ptr %bm.0253, align 4
  %call.i.i246 = tail call i32 @__sw_hweight32(i32 noundef %or) #11
  %sub99 = sub i32 %call.i.i246, %call.i.i
  %40 = ptrtoint ptr %bm_set to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %bm_set, align 4
  %add100 = add i32 %sub99, %41
  store i32 %add100, ptr %bm_set, align 4
  %tobool94.not = icmp eq i32 %dec, 0
  br i1 %tobool94.not, label %while.body95.while.end_crit_edge, label %while.body95.while.body95_crit_edge

while.body95.while.body95_crit_edge:              ; preds = %while.body95
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body95

while.body95.while.end_crit_edge:                 ; preds = %while.body95
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %while.body95.while.end_crit_edge, %bm_word_to_page_idx.exit.while.end_crit_edge
  %buffer.addr.1.lcssa = phi ptr [ %buffer.addr.0256, %bm_word_to_page_idx.exit.while.end_crit_edge ], [ %incdec.ptr, %while.body95.while.end_crit_edge ]
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i.i.i) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !307
  %42 = tail call i32 @llvm.read_register.i32(metadata !285) #11
  %and.i.i.i1.i.i.i = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i.i1.i.i.i to ptr
  %task.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %task.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %task.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %45, i32 0, i32 213
  %46 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %pagefault_disabled.i.i.i.i.i, align 8
  %dec.i.i.i.i.i = add i32 %47, -1
  store i32 %dec.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !308
  %48 = tail call i32 @llvm.read_register.i32(metadata !285) #11
  %and.i.i.i.i.i.i = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %sub.i.i.i.i = add i32 %51, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %1, align 8
  %arrayidx = getelementptr ptr, ptr %53, i32 %shr.i250
  %54 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx, align 4
  %private.i = getelementptr inbounds %struct.page, ptr %55, i32 0, i32 1, i32 0, i32 3
  tail call void @_set_bit(i32 noundef 29, ptr noundef %private.i) #11
  %cmp85 = icmp ugt i32 %add, %and
  br i1 %cmp85, label %while.end.while.body_crit_edge, label %while.end.while.end102_crit_edge

while.end.while.end102_crit_edge:                 ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end102

while.end.while.body_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.end102:                                     ; preds = %while.end.while.end102_crit_edge, %if.end77.while.end102_crit_edge
  %56 = ptrtoint ptr %bm_words to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %bm_words, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %57)
  %cmp104 = icmp eq i32 %add, %57
  br i1 %cmp104, label %if.then105, label %while.end102.if.end109_crit_edge

while.end102.if.end109_crit_edge:                 ; preds = %while.end102
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end109

if.then105:                                       ; preds = %while.end102
  call void @__sanitizer_cov_trace_pc() #13
  %call106 = tail call fastcc i32 @bm_clear_surplus(ptr noundef nonnull %1)
  %bm_set107 = getelementptr inbounds %struct.drbd_bitmap, ptr %1, i32 0, i32 4
  %58 = ptrtoint ptr %bm_set107 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %bm_set107, align 4
  %sub108 = sub i32 %59, %call106
  store i32 %sub108, ptr %bm_set107, align 4
  br label %if.end109

if.end109:                                        ; preds = %if.then105, %while.end102.if.end109_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %bm_lock) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end109, %if.end24.cleanup_crit_edge, %do.end14, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drbd_bm_get_lel(ptr nocapture noundef readonly %device, i32 noundef %offset, i32 noundef %number, ptr nocapture noundef writeonly %buffer) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bitmap = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 63
  %0 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bitmap, align 4
  %add = add i32 %number, %offset
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %vdisk = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %2 = ptrtoint ptr %vdisk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdisk, align 4
  %part0 = getelementptr inbounds %struct.gendisk, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %part0, align 4
  %bd_device = getelementptr inbounds %struct.block_device, ptr %5, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %bd_device, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.59) #14
  br label %cleanup

if.end6:                                          ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %tobool8.not = icmp eq ptr %7, null
  br i1 %tobool8.not, label %do.end14, label %if.end24

do.end14:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %vdisk15 = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %8 = ptrtoint ptr %vdisk15 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vdisk15, align 4
  %part016 = getelementptr inbounds %struct.gendisk, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %part016 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %part016, align 4
  %bd_device17 = getelementptr inbounds %struct.block_device, ptr %11, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %bd_device17, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.59) #14
  br label %cleanup

if.end24:                                         ; preds = %if.end6
  %bm_lock = getelementptr inbounds %struct.drbd_bitmap, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %bm_lock) #11
  %bm_words = getelementptr inbounds %struct.drbd_bitmap, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %bm_words to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bm_words, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %offset)
  %cmp.not = icmp ule i32 %13, %offset
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %13)
  %cmp26 = icmp ugt i32 %add, %13
  %or.cond = or i1 %cmp.not, %cmp26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %number)
  %cmp28 = icmp eq i32 %number, 0
  %or.cond86 = or i1 %cmp28, %or.cond
  br i1 %or.cond86, label %do.end32, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end24
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %offset)
  %cmp3791 = icmp ugt i32 %add, %offset
  br i1 %cmp3791, label %while.body.lr.ph, label %while.cond.preheader.if.end50_crit_edge

while.cond.preheader.if.end50_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %bm_number_of_pages.i = getelementptr inbounds %struct.drbd_bitmap, ptr %1, i32 0, i32 7
  br label %while.body

do.end32:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  %vdisk33 = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %14 = ptrtoint ptr %vdisk33 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vdisk33, align 4
  %part034 = getelementptr inbounds %struct.gendisk, ptr %15, i32 0, i32 7
  %16 = ptrtoint ptr %part034 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %part034, align 4
  %bd_device35 = getelementptr inbounds %struct.block_device, ptr %17, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %bd_device35, ptr noundef nonnull @.str.63, i32 noundef %offset, i32 noundef %number, i32 noundef %13) #14
  br label %if.end50

while.body:                                       ; preds = %while.end.while.body_crit_edge, %while.body.lr.ph
  %offset.addr.093 = phi i32 [ %offset, %while.body.lr.ph ], [ %18, %while.end.while.body_crit_edge ]
  %buffer.addr.092 = phi ptr [ %buffer, %while.body.lr.ph ], [ %buffer.addr.1.lcssa, %while.end.while.body_crit_edge ]
  %add39 = add i32 %offset.addr.093, 1024
  %and = and i32 %add39, -1024
  %18 = tail call i32 @llvm.umin.i32(i32 %and, i32 %add)
  %shr.i = lshr i32 %offset.addr.093, 10
  %19 = ptrtoint ptr %bm_number_of_pages.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bm_number_of_pages.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %20)
  %cmp.not.i = icmp ult i32 %shr.i, %20
  br i1 %cmp.not.i, label %bm_word_to_page_idx.exit, label %do.body2.i, !prof !297

do.body2.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/block/drbd/drbd_bitmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 300, 0\0A.popsection", ""() #11, !srcloc !309
  unreachable

bm_word_to_page_idx.exit:                         ; preds = %while.body
  %sub = sub i32 %18, %offset.addr.093
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 8
  %arrayidx.i.i = getelementptr ptr, ptr %22, i32 %shr.i
  %23 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %25 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i.i = or i32 %25, 512
  %26 = tail call i32 @llvm.read_register.i32(metadata !285) #11
  %and.i.i.i.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %29, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !305
  %30 = tail call i32 @llvm.read_register.i32(metadata !285) #11
  %and.i.i.i1.i.i.i.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i1.i.i.i.i to ptr
  %task.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %task.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %task.i.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %33, i32 0, i32 213
  %34 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pagefault_disabled.i.i.i.i.i.i, align 8
  %inc.i.i.i.i.i.i = add i32 %35, 1
  store i32 %inc.i.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !306
  %call.i.i.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %24, i32 noundef %or.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool46.not87 = icmp eq i32 %sub, 0
  br i1 %tobool46.not87, label %bm_word_to_page_idx.exit.while.end_crit_edge, label %while.body47.preheader

bm_word_to_page_idx.exit.while.end_crit_edge:     ; preds = %bm_word_to_page_idx.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body47.preheader:                           ; preds = %bm_word_to_page_idx.exit
  %and43 = and i32 %offset.addr.093, 1023
  %add.ptr = getelementptr i32, ptr %call.i.i.i.i, i32 %and43
  br label %while.body47

while.body47:                                     ; preds = %while.body47.while.body47_crit_edge, %while.body47.preheader
  %buffer.addr.190 = phi ptr [ %incdec.ptr48, %while.body47.while.body47_crit_edge ], [ %buffer.addr.092, %while.body47.preheader ]
  %do_now.089 = phi i32 [ %dec, %while.body47.while.body47_crit_edge ], [ %sub, %while.body47.preheader ]
  %bm.088 = phi ptr [ %incdec.ptr, %while.body47.while.body47_crit_edge ], [ %add.ptr, %while.body47.preheader ]
  %dec = add i32 %do_now.089, -1
  %incdec.ptr = getelementptr i32, ptr %bm.088, i32 1
  %36 = ptrtoint ptr %bm.088 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %bm.088, align 4
  %incdec.ptr48 = getelementptr i32, ptr %buffer.addr.190, i32 1
  %38 = ptrtoint ptr %buffer.addr.190 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %buffer.addr.190, align 4
  %tobool46.not = icmp eq i32 %dec, 0
  br i1 %tobool46.not, label %while.body47.while.end_crit_edge, label %while.body47.while.body47_crit_edge

while.body47.while.body47_crit_edge:              ; preds = %while.body47
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body47

while.body47.while.end_crit_edge:                 ; preds = %while.body47
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %while.body47.while.end_crit_edge, %bm_word_to_page_idx.exit.while.end_crit_edge
  %buffer.addr.1.lcssa = phi ptr [ %buffer.addr.092, %bm_word_to_page_idx.exit.while.end_crit_edge ], [ %incdec.ptr48, %while.body47.while.end_crit_edge ]
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i.i.i) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !307
  %39 = tail call i32 @llvm.read_register.i32(metadata !285) #11
  %and.i.i.i1.i.i.i = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i1.i.i.i to ptr
  %task.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %task.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %task.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %42, i32 0, i32 213
  %43 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %pagefault_disabled.i.i.i.i.i, align 8
  %dec.i.i.i.i.i = add i32 %44, -1
  store i32 %dec.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !308
  %45 = tail call i32 @llvm.read_register.i32(metadata !285) #11
  %and.i.i.i.i.i.i = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %sub.i.i.i.i = add i32 %48, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  %cmp37 = icmp ugt i32 %add, %and
  br i1 %cmp37, label %while.end.while.body_crit_edge, label %while.end.if.end50_crit_edge

while.end.if.end50_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50

while.end.while.body_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

if.end50:                                         ; preds = %while.end.if.end50_crit_edge, %do.end32, %while.cond.preheader.if.end50_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %bm_lock) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %do.end14, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drbd_bm_set_all(ptr nocapture noundef readonly %device) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bitmap = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 63
  %0 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bitmap, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %vdisk = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %2 = ptrtoint ptr %vdisk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdisk, align 4
  %part0 = getelementptr inbounds %struct.gendisk, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %part0, align 4
  %bd_device = getelementptr inbounds %struct.block_device, ptr %5, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %bd_device, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.65) #14
  br label %cleanup

if.end6:                                          ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %tobool8.not = icmp eq ptr %7, null
  br i1 %tobool8.not, label %do.end14, label %if.end24

do.end14:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %vdisk15 = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %8 = ptrtoint ptr %vdisk15 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vdisk15, align 4
  %part016 = getelementptr inbounds %struct.gendisk, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %part016 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %part016, align 4
  %bd_device17 = getelementptr inbounds %struct.block_device, ptr %11, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %bd_device17, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.65) #14
  br label %cleanup

if.end24:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %bm_lock = getelementptr inbounds %struct.drbd_bitmap, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %bm_lock) #11
  %bm_words = getelementptr inbounds %struct.drbd_bitmap, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %bm_words to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bm_words, align 4
  tail call fastcc void @bm_memset(ptr noundef nonnull %1, i32 noundef 0, i32 noundef 255, i32 noundef %13)
  %call = tail call fastcc i32 @bm_clear_surplus(ptr noundef nonnull %1)
  %bm_bits = getelementptr inbounds %struct.drbd_bitmap, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %bm_bits to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bm_bits, align 8
  %bm_set = getelementptr inbounds %struct.drbd_bitmap, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %bm_set to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %bm_set, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %bm_lock) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %do.end14, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drbd_bm_clear_all(ptr nocapture noundef readonly %device) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bitmap = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 63
  %0 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bitmap, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %vdisk = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %2 = ptrtoint ptr %vdisk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdisk, align 4
  %part0 = getelementptr inbounds %struct.gendisk, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %part0, align 4
  %bd_device = getelementptr inbounds %struct.block_device, ptr %5, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %bd_device, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.68) #14
  br label %cleanup

if.end6:                                          ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %tobool8.not = icmp eq ptr %7, null
  br i1 %tobool8.not, label %do.end14, label %if.end24

do.end14:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %vdisk15 = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %8 = ptrtoint ptr %vdisk15 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vdisk15, align 4
  %part016 = getelementptr inbounds %struct.gendisk, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %part016 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %part016, align 4
  %bd_device17 = getelementptr inbounds %struct.block_device, ptr %11, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %bd_device17, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.68) #14
  br label %cleanup

if.end24:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %bm_lock = getelementptr inbounds %struct.drbd_bitmap, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %bm_lock) #11
  %bm_words = getelementptr inbounds %struct.drbd_bitmap, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %bm_words to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bm_words, align 4
  tail call fastcc void @bm_memset(ptr noundef nonnull %1, i32 noundef 0, i32 noundef 0, i32 noundef %13)
  %bm_set = getelementptr inbounds %struct.drbd_bitmap, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %bm_set to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %bm_set, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %bm_lock) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %do.end14, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drbd_bm_read(ptr noundef %device) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @bm_rw(ptr noundef %device, i32 noundef 8, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bm_rw(ptr noundef %device, i32 noundef %flags, i32 noundef %lazy_writeout_upper_idx) unnamed_addr #0 align 64 {
entry:
  %ppb = alloca [10 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bitmap = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 63
  %0 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bitmap, align 4
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %ppb) #11
  %2 = call ptr @memset(ptr %ppb, i32 255, i32 10)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3072, i32 noundef 36) #15
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %5 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %device, ptr %call7.i, align 8
  %.compoundliteral.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %call7.i, i32 4
  %6 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %6, i32 8)
  store i64 0, ptr %.compoundliteral.sroa.2.0..sroa_idx, align 4
  %.compoundliteral.sroa.3.0..sroa_idx = getelementptr inbounds i8, ptr %call7.i, i32 12
  %7 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %4, ptr %.compoundliteral.sroa.3.0..sroa_idx, align 4
  %.compoundliteral.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %call7.i, i32 16
  %8 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %.compoundliteral.sroa.4.0..sroa_idx, align 8
  %.compoundliteral.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %call7.i, i32 20
  %9 = ptrtoint ptr %.compoundliteral.sroa.5.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %.compoundliteral.sroa.5.0..sroa_idx, align 4
  %.compoundliteral.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %call7.i, i32 24
  %10 = ptrtoint ptr %.compoundliteral.sroa.6.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %flags, ptr %.compoundliteral.sroa.6.0..sroa_idx, align 8
  %.compoundliteral.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %call7.i, i32 28
  %11 = ptrtoint ptr %.compoundliteral.sroa.7.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %.compoundliteral.sroa.7.0..sroa_idx, align 4
  %.compoundliteral.sroa.8.0..sroa_idx = getelementptr inbounds i8, ptr %call7.i, i32 32
  %12 = ptrtoint ptr %.compoundliteral.sroa.8.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %.compoundliteral.sroa.8.0..sroa_idx, align 8
  %state.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 27
  %13 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %bf.load.i = load i32, ptr %state.i, align 8
  %14 = and i32 %bf.load.i, 7680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i = icmp eq i32 %14, 0
  br i1 %cmp.i, label %if.end.do.end_crit_edge, label %if.end.i

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.end.i:                                         ; preds = %if.end
  %local_cnt.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 41
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %local_cnt.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %local_cnt.i, i32 1, i32 3, i32 1) #11
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %local_cnt.i, ptr %local_cnt.i, i32 1, ptr elementtype(i32) %local_cnt.i) #11, !srcloc !298
  %16 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %bf.load2.i = load i32, ptr %state.i, align 8
  %17 = and i32 %bf.load2.i, 7680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp5.not.i = icmp eq i32 %17, 0
  br i1 %cmp5.not.i, label %if.then6.i, label %if.end8

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @put_ldev(ptr noundef %device) #11
  br label %do.end

do.end:                                           ; preds = %if.then6.i, %if.end.do.end_crit_edge
  %vdisk = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %18 = ptrtoint ptr %vdisk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %vdisk, align 4
  %part0 = getelementptr inbounds %struct.gendisk, ptr %19, i32 0, i32 7
  %20 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %part0, align 4
  %bd_device = getelementptr inbounds %struct.block_device, ptr %21, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %bd_device, ptr noundef nonnull @.str.103) #14
  tail call void @kfree(ptr noundef nonnull %call7.i) #11
  br label %cleanup

if.end8:                                          ; preds = %if.end.i
  %22 = ptrtoint ptr %.compoundliteral.sroa.6.0..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %.compoundliteral.sroa.6.0..sroa_idx, align 8
  %and = and i32 %23, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then10, label %if.end8.if.end39_crit_edge

if.end8.if.end39_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

if.then10:                                        ; preds = %if.end8
  %bm_flags = getelementptr inbounds %struct.drbd_bitmap, ptr %1, i32 0, i32 11
  %24 = ptrtoint ptr %bm_flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bm_flags, align 8
  %and11 = and i32 %25, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %do.end25, label %if.then10.if.end39_crit_edge, !prof !295

if.then10.if.end39_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

do.end25:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1072, i32 noundef 9, ptr noundef null) #11
  br label %if.end39

if.end39:                                         ; preds = %do.end25, %if.then10.if.end39_crit_edge, %if.end8.if.end39_crit_edge
  %26 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %device, align 8
  %req_lock = getelementptr inbounds %struct.drbd_resource, ptr %27, i32 0, i32 12
  tail call void @_raw_spin_lock_irq(ptr noundef %req_lock) #11
  %pending_bitmap_io = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 2
  %prev.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 2, i32 1
  %28 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i, align 4
  %call.i.i301 = tail call zeroext i1 @__list_add_valid(ptr noundef %.compoundliteral.sroa.2.0..sroa_idx, ptr noundef %29, ptr noundef %pending_bitmap_io) #11
  br i1 %call.i.i301, label %if.end.i.i, label %if.end39.list_add_tail.exit_crit_edge

if.end39.list_add_tail.exit_crit_edge:            ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %.compoundliteral.sroa.2.0..sroa_idx, ptr %prev.i, align 4
  %31 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %pending_bitmap_io, ptr %.compoundliteral.sroa.2.0..sroa_idx, align 4
  %prev3.i.i = getelementptr inbounds %struct.drbd_bm_aio_ctx, ptr %call7.i, i32 0, i32 1, i32 1
  %32 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev3.i.i, align 8
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %.compoundliteral.sroa.2.0..sroa_idx, ptr %29, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end39.list_add_tail.exit_crit_edge
  %34 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %device, align 8
  %req_lock42 = getelementptr inbounds %struct.drbd_resource, ptr %35, i32 0, i32 12
  tail call void @_raw_spin_unlock_irq(ptr noundef %req_lock42) #11
  %bm_number_of_pages = getelementptr inbounds %struct.drbd_bitmap, ptr %1, i32 0, i32 7
  %36 = ptrtoint ptr %bm_number_of_pages to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %bm_number_of_pages, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %38 = load volatile i32, ptr @jiffies, align 128
  %and43 = and i32 %flags, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.else, label %for.cond.preheader

for.cond.preheader:                               ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp46317.not = icmp eq i32 %37, 0
  br i1 %cmp46317.not, label %for.cond.preheader.if.end145_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end145_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end145

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0319 = phi i32 [ %inc50, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %.compoundliteral.sroa.4.0..sroa_idx, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %.compoundliteral.sroa.4.0..sroa_idx, i32 1, i32 3, i32 1) #11
  %39 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %.compoundliteral.sroa.4.0..sroa_idx, ptr %.compoundliteral.sroa.4.0..sroa_idx, i32 1, ptr elementtype(i32) %.compoundliteral.sroa.4.0..sroa_idx) #11, !srcloc !298
  tail call fastcc void @bm_page_io_async(ptr noundef nonnull %call7.i, i32 noundef %i.0319)
  %inc50 = add nuw i32 %i.0319, 1
  tail call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 1089, i32 noundef 0) #11
  %call.i = tail call i32 @__cond_resched() #11
  %exitcond.not = icmp eq i32 %inc50, %37
  br i1 %exitcond.not, label %for.body.if.end145_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.if.end145_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end145

if.else:                                          ; preds = %list_add_tail.exit
  %and51 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %for.cond77.preheader, label %for.cond54.preheader

for.cond54.preheader:                             ; preds = %if.else
  %n_bitmap_hints = getelementptr inbounds %struct.drbd_bitmap, ptr %1, i32 0, i32 2
  %40 = ptrtoint ptr %n_bitmap_hints to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %n_bitmap_hints, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp55320.not = icmp eq i32 %41, 0
  br i1 %cmp55320.not, label %for.cond54.preheader.if.end145_crit_edge, label %for.cond54.preheader.for.body56_crit_edge

for.cond54.preheader.for.body56_crit_edge:        ; preds = %for.cond54.preheader
  br label %for.body56

for.cond54.preheader.if.end145_crit_edge:         ; preds = %for.cond54.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end145

for.cond77.preheader:                             ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp78324.not = icmp eq i32 %37, 0
  br i1 %cmp78324.not, label %for.cond77.preheader.if.end145_crit_edge, label %for.body79.lr.ph

for.cond77.preheader.if.end145_crit_edge:         ; preds = %for.cond77.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end145

for.body79.lr.ph:                                 ; preds = %for.cond77.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lazy_writeout_upper_idx)
  %tobool80.not = icmp eq i32 %lazy_writeout_upper_idx, 0
  %tobool80.not.not = xor i1 %tobool80.not, true
  %and84 = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %tobool85.not = icmp eq i32 %and84, 0
  %vdisk130 = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  br label %for.body79

for.body56:                                       ; preds = %for.inc73.for.body56_crit_edge, %for.cond54.preheader.for.body56_crit_edge
  %hint.0322 = phi i32 [ %inc74, %for.inc73.for.body56_crit_edge ], [ 0, %for.cond54.preheader.for.body56_crit_edge ]
  %count.1321 = phi i32 [ %count.2, %for.inc73.for.body56_crit_edge ], [ 0, %for.cond54.preheader.for.body56_crit_edge ]
  %arrayidx = getelementptr %struct.drbd_bitmap, ptr %1, i32 0, i32 3, i32 %hint.0322
  %42 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %37)
  %cmp57.not = icmp ult i32 %43, %37
  br i1 %cmp57.not, label %if.end59, label %for.body56.for.inc73_crit_edge

for.body56.for.inc73_crit_edge:                   ; preds = %for.body56
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc73

if.end59:                                         ; preds = %for.body56
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 8
  %arrayidx60 = getelementptr ptr, ptr %45, i32 %43
  %46 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx60, align 4
  %private = getelementptr inbounds %struct.page, ptr %47, i32 0, i32 1, i32 0, i32 3
  %call61 = tail call i32 @_test_and_clear_bit(i32 noundef 27, ptr noundef %private) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end59.for.inc73_crit_edge, label %if.end64

if.end59.for.inc73_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc73

if.end64:                                         ; preds = %if.end59
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %1, align 8
  %arrayidx66 = getelementptr ptr, ptr %49, i32 %43
  %50 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx66, align 4
  %private.i = getelementptr inbounds %struct.page, ptr %51, i32 0, i32 1, i32 0, i32 3
  %52 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %private.i, align 4
  %and.i = and i32 %53, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i302.not = icmp eq i32 %and.i, 0
  br i1 %cmp.i302.not, label %if.end64.for.inc73_crit_edge, label %if.end70

if.end64.for.inc73_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc73

if.end70:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i293 = tail call zeroext i1 @__kasan_check_write(ptr noundef %.compoundliteral.sroa.4.0..sroa_idx, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %.compoundliteral.sroa.4.0..sroa_idx, i32 1, i32 3, i32 1) #11
  %54 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %.compoundliteral.sroa.4.0..sroa_idx, ptr %.compoundliteral.sroa.4.0..sroa_idx, i32 1, ptr elementtype(i32) %.compoundliteral.sroa.4.0..sroa_idx) #11, !srcloc !298
  tail call fastcc void @bm_page_io_async(ptr noundef nonnull %call7.i, i32 noundef %43)
  %inc72 = add i32 %count.1321, 1
  br label %for.inc73

for.inc73:                                        ; preds = %if.end70, %if.end64.for.inc73_crit_edge, %if.end59.for.inc73_crit_edge, %for.body56.for.inc73_crit_edge
  %count.2 = phi i32 [ %count.1321, %for.body56.for.inc73_crit_edge ], [ %count.1321, %if.end64.for.inc73_crit_edge ], [ %inc72, %if.end70 ], [ %count.1321, %if.end59.for.inc73_crit_edge ]
  %inc74 = add nuw i32 %hint.0322, 1
  %55 = ptrtoint ptr %n_bitmap_hints to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %n_bitmap_hints, align 8
  %cmp55 = icmp ult i32 %inc74, %56
  br i1 %cmp55, label %for.inc73.for.body56_crit_edge, label %for.inc73.if.end145_crit_edge

for.inc73.if.end145_crit_edge:                    ; preds = %for.inc73
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end145

for.inc73.for.body56_crit_edge:                   ; preds = %for.inc73
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body56

for.body79:                                       ; preds = %for.inc141.for.body79_crit_edge, %for.body79.lr.ph
  %i.1327 = phi i32 [ 0, %for.body79.lr.ph ], [ %inc142, %for.inc141.for.body79_crit_edge ]
  %count.3325 = phi i32 [ 0, %for.body79.lr.ph ], [ %count.4, %for.inc141.for.body79_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1327, i32 %lazy_writeout_upper_idx)
  %cmp81 = icmp eq i32 %i.1327, %lazy_writeout_upper_idx
  %or.cond = select i1 %tobool80.not.not, i1 %cmp81, i1 false
  br i1 %or.cond, label %for.body79.if.end145_crit_edge, label %if.end83

for.body79.if.end145_crit_edge:                   ; preds = %for.body79
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end145

if.end83:                                         ; preds = %for.body79
  br i1 %tobool85.not, label %land.lhs.true86, label %if.end83.if.end109_crit_edge

if.end83.if.end109_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end109

land.lhs.true86:                                  ; preds = %if.end83
  %57 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %1, align 8
  %arrayidx88 = getelementptr ptr, ptr %58, i32 %i.1327
  %59 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx88, align 4
  %private.i303 = getelementptr inbounds %struct.page, ptr %60, i32 0, i32 1, i32 0, i32 3
  %61 = ptrtoint ptr %private.i303 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %private.i303, align 4
  %and.i304 = and i32 %62, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i304)
  %cmp.i305.not = icmp eq i32 %and.i304, 0
  br i1 %cmp.i305.not, label %do.body92, label %land.lhs.true86.if.end109_crit_edge

land.lhs.true86.if.end109_crit_edge:              ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end109

do.body92:                                        ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bm_rw.__UNIQUE_ID_ddebug634, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bm_rw, %if.then102)) #11
          to label %for.inc141 [label %if.then102], !srcloc !310

if.then102:                                       ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #13
  %63 = ptrtoint ptr %vdisk130 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %vdisk130, align 4
  %part0104 = getelementptr inbounds %struct.gendisk, ptr %64, i32 0, i32 7
  %65 = ptrtoint ptr %part0104 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %part0104, align 4
  %bd_device105 = getelementptr inbounds %struct.block_device, ptr %66, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bm_rw.__UNIQUE_ID_ddebug634, ptr noundef %bd_device105, ptr noundef nonnull @.str.106, i32 noundef %i.1327) #11
  br label %for.inc141

if.end109:                                        ; preds = %land.lhs.true86.if.end109_crit_edge, %if.end83.if.end109_crit_edge
  br i1 %tobool80.not, label %if.end109.if.end136_crit_edge, label %land.lhs.true111

if.end109.if.end136_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end136

land.lhs.true111:                                 ; preds = %if.end109
  %67 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %1, align 8
  %arrayidx113 = getelementptr ptr, ptr %68, i32 %i.1327
  %69 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx113, align 4
  %private.i307 = getelementptr inbounds %struct.page, ptr %70, i32 0, i32 1, i32 0, i32 3
  %71 = ptrtoint ptr %private.i307 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %private.i307, align 4
  %73 = and i32 %72, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool115.not = icmp eq i32 %73, 0
  br i1 %tobool115.not, label %do.body117, label %land.lhs.true111.if.end136_crit_edge

land.lhs.true111.if.end136_crit_edge:             ; preds = %land.lhs.true111
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end136

do.body117:                                       ; preds = %land.lhs.true111
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bm_rw.__UNIQUE_ID_ddebug635, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bm_rw, %if.then129)) #11
          to label %for.inc141 [label %if.then129], !srcloc !310

if.then129:                                       ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #13
  %74 = ptrtoint ptr %vdisk130 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %vdisk130, align 4
  %part0131 = getelementptr inbounds %struct.gendisk, ptr %75, i32 0, i32 7
  %76 = ptrtoint ptr %part0131 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %part0131, align 4
  %bd_device132 = getelementptr inbounds %struct.block_device, ptr %77, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bm_rw.__UNIQUE_ID_ddebug635, ptr noundef %bd_device132, ptr noundef nonnull @.str.107, i32 noundef %i.1327) #11
  br label %for.inc141

if.end136:                                        ; preds = %land.lhs.true111.if.end136_crit_edge, %if.end109.if.end136_crit_edge
  %call.i.i297 = tail call zeroext i1 @__kasan_check_write(ptr noundef %.compoundliteral.sroa.4.0..sroa_idx, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %.compoundliteral.sroa.4.0..sroa_idx, i32 1, i32 3, i32 1) #11
  %78 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %.compoundliteral.sroa.4.0..sroa_idx, ptr %.compoundliteral.sroa.4.0..sroa_idx, i32 1, ptr elementtype(i32) %.compoundliteral.sroa.4.0..sroa_idx) #11, !srcloc !298
  tail call fastcc void @bm_page_io_async(ptr noundef nonnull %call7.i, i32 noundef %i.1327)
  %inc138 = add i32 %count.3325, 1
  tail call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 1129, i32 noundef 0) #11
  %call.i308 = tail call i32 @__cond_resched() #11
  br label %for.inc141

for.inc141:                                       ; preds = %if.end136, %if.then129, %do.body117, %if.then102, %do.body92
  %count.4 = phi i32 [ %inc138, %if.end136 ], [ %count.3325, %if.then129 ], [ %count.3325, %if.then102 ], [ %count.3325, %do.body92 ], [ %count.3325, %do.body117 ]
  %inc142 = add nuw i32 %i.1327, 1
  %exitcond334.not = icmp eq i32 %inc142, %37
  br i1 %exitcond334.not, label %for.inc141.if.end145_crit_edge, label %for.inc141.for.body79_crit_edge

for.inc141.for.body79_crit_edge:                  ; preds = %for.inc141
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body79

for.inc141.if.end145_crit_edge:                   ; preds = %for.inc141
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end145

if.end145:                                        ; preds = %for.inc141.if.end145_crit_edge, %for.body79.if.end145_crit_edge, %for.inc73.if.end145_crit_edge, %for.cond77.preheader.if.end145_crit_edge, %for.cond54.preheader.if.end145_crit_edge, %for.body.if.end145_crit_edge, %for.cond.preheader.if.end145_crit_edge
  %count.5 = phi i32 [ 0, %for.cond77.preheader.if.end145_crit_edge ], [ 0, %for.cond54.preheader.if.end145_crit_edge ], [ 0, %for.cond.preheader.if.end145_crit_edge ], [ %count.4, %for.inc141.if.end145_crit_edge ], [ %count.3325, %for.body79.if.end145_crit_edge ], [ %count.2, %for.inc73.if.end145_crit_edge ], [ %37, %for.body.if.end145_crit_edge ]
  %call.i.i298 = tail call zeroext i1 @__kasan_check_write(ptr noundef %.compoundliteral.sroa.4.0..sroa_idx, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !299
  tail call void @llvm.prefetch.p0(ptr %.compoundliteral.sroa.4.0..sroa_idx, i32 1, i32 3, i32 1) #11
  %79 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %.compoundliteral.sroa.4.0..sroa_idx, ptr %.compoundliteral.sroa.4.0..sroa_idx, i32 1, ptr elementtype(i32) %.compoundliteral.sroa.4.0..sroa_idx) #11, !srcloc !300
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %79, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !301
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.else150, label %if.then148

if.then148:                                       ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #13
  %ldev = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 15
  %80 = ptrtoint ptr %ldev to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ldev, align 4
  tail call void @wait_until_done_or_force_detached(ptr noundef %device, ptr noundef %81, ptr noundef %.compoundliteral.sroa.5.0..sroa_idx) #11
  br label %if.end153

if.else150:                                       ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @kref_put(ptr noundef %.compoundliteral.sroa.8.0..sroa_idx)
  br label %if.end153

if.end153:                                        ; preds = %if.else150, %if.then148
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flags)
  %cmp154 = icmp eq i32 %flags, 0
  br i1 %cmp154, label %if.then155, label %if.end153.if.end168_crit_edge

if.end153.if.end168_crit_edge:                    ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end168

if.then155:                                       ; preds = %if.end153
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %82 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %82, %38
  %call156 = tail call i32 @jiffies_to_msecs(i32 noundef %sub) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call156)
  %cmp157 = icmp ugt i32 %call156, 5
  br i1 %cmp157, label %do.end161, label %if.then155.if.end168_crit_edge

if.then155.if.end168_crit_edge:                   ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end168

do.end161:                                        ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #13
  %vdisk162 = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %83 = ptrtoint ptr %vdisk162 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %vdisk162, align 4
  %part0163 = getelementptr inbounds %struct.gendisk, ptr %84, i32 0, i32 7
  %85 = ptrtoint ptr %part0163 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %part0163, align 4
  %bd_device164 = getelementptr inbounds %struct.block_device, ptr %86, i32 0, i32 10
  %cond = select i1 %tobool44.not, ptr @.str.112, ptr @.str.111
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.34, ptr noundef %bd_device164, ptr noundef nonnull @.str.109, ptr noundef nonnull %cond, i32 noundef %count.5, i32 noundef %call156) #14
  br label %if.end168

if.end168:                                        ; preds = %do.end161, %if.then155.if.end168_crit_edge, %if.end153.if.end168_crit_edge
  %87 = ptrtoint ptr %.compoundliteral.sroa.7.0..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %.compoundliteral.sroa.7.0..sroa_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool170.not = icmp eq i32 %88, 0
  br i1 %tobool170.not, label %if.end168.if.end178_crit_edge, label %do.end174

if.end168.if.end178_crit_edge:                    ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end178

do.end174:                                        ; preds = %if.end168
  %vdisk175 = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %89 = ptrtoint ptr %vdisk175 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %vdisk175, align 4
  %part0176 = getelementptr inbounds %struct.gendisk, ptr %90, i32 0, i32 7
  %91 = ptrtoint ptr %part0176 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %part0176, align 4
  %bd_device177 = getelementptr inbounds %struct.block_device, ptr %92, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.115, ptr noundef %bd_device177, ptr noundef nonnull @.str.114) #14
  %93 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %device, align 8
  %req_lock.i = getelementptr inbounds %struct.drbd_resource, ptr %94, i32 0, i32 12
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %req_lock.i) #11
  %95 = tail call i32 @llvm.read_register.i32(metadata !285) #11
  %and.i.i.i.i.i.i.i = and i32 %95, -16384
  %96 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %96, i32 0, i32 1
  %97 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %98, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !311
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i.i.i309 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i.i.i309, label %do.end174.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

do.end174.rcu_read_lock.exit.i.i_crit_edge:       ; preds = %do.end174
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %do.end174
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.135, i32 noundef 696, ptr noundef nonnull @.str.136) #11
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %do.end174.rcu_read_lock.exit.i.i_crit_edge
  %ldev.i.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 15
  %99 = ptrtoint ptr %ldev.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %ldev.i.i, align 4
  %disk_conf.i.i = getelementptr inbounds %struct.drbd_backing_dev, ptr %100, i32 0, i32 3
  %101 = ptrtoint ptr %disk_conf.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load volatile ptr, ptr %disk_conf.i.i, align 8
  %call.i.i310 = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i310)
  %tobool.not.i.i = icmp eq i32 %call.i.i310, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %rcu_read_lock.exit.i.i.do.end7.i.i_crit_edge

rcu_read_lock.exit.i.i.do.end7.i.i_crit_edge:     ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end7.i.i

land.lhs.true.i.i:                                ; preds = %rcu_read_lock.exit.i.i
  %call2.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.do.end7.i.i_crit_edge, label %land.lhs.true4.i.i

land.lhs.true.i.i.do.end7.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end7.i.i

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i.i
  %.b1.i.i = load i1, ptr @__drbd_chk_io_error_.__warned, align 1
  br i1 %.b1.i.i, label %land.lhs.true4.i.i.do.end7.i.i_crit_edge, label %if.then.i.i

land.lhs.true4.i.i.do.end7.i.i_crit_edge:         ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end7.i.i

if.then.i.i:                                      ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__drbd_chk_io_error_.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.96, i32 noundef 1722, ptr noundef nonnull @.str.130) #11
  br label %do.end7.i.i

do.end7.i.i:                                      ; preds = %if.then.i.i, %land.lhs.true4.i.i.do.end7.i.i_crit_edge, %land.lhs.true.i.i.do.end7.i.i_crit_edge, %rcu_read_lock.exit.i.i.do.end7.i.i_crit_edge
  %on_io_error.i.i = getelementptr inbounds %struct.disk_conf, ptr %102, i32 0, i32 7
  %103 = ptrtoint ptr %on_io_error.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %on_io_error.i.i, align 4
  %call.i2.i.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i2.i.i, label %do.end7.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true.i5.i.i

do.end7.i.i.rcu_read_unlock.exit.i.i_crit_edge:   ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i.i

land.lhs.true.i5.i.i:                             ; preds = %do.end7.i.i
  %call1.i3.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3.i.i)
  %tobool.not.i4.i.i = icmp eq i32 %call1.i3.i.i, 0
  br i1 %tobool.not.i4.i.i, label %land.lhs.true.i5.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true2.i7.i.i

land.lhs.true.i5.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i.i

land.lhs.true2.i7.i.i:                            ; preds = %land.lhs.true.i5.i.i
  %.b4.i6.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i6.i.i, label %land.lhs.true2.i7.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %if.then.i8.i.i

land.lhs.true2.i7.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i.i

if.then.i8.i.i:                                   ; preds = %land.lhs.true2.i7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.135, i32 noundef 724, ptr noundef nonnull @.str.137) #11
  br label %rcu_read_unlock.exit.i.i

rcu_read_unlock.exit.i.i:                         ; preds = %if.then.i8.i.i, %land.lhs.true2.i7.i.i.rcu_read_unlock.exit.i.i_crit_edge, %land.lhs.true.i5.i.i.rcu_read_unlock.exit.i.i_crit_edge, %do.end7.i.i.rcu_read_unlock.exit.i.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !312
  %105 = tail call i32 @llvm.read_register.i32(metadata !285) #11
  %and.i.i.i.i.i9.i.i = and i32 %105, -16384
  %106 = inttoptr i32 %and.i.i.i.i.i9.i.i to ptr
  %preempt_count.i.i.i.i10.i.i = getelementptr inbounds %struct.thread_info, ptr %106, i32 0, i32 1
  %107 = ptrtoint ptr %preempt_count.i.i.i.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load volatile i32, ptr %preempt_count.i.i.i.i10.i.i, align 4
  %sub.i.i.i.i.i = add i32 %108, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i10.i.i, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %104)
  %switch.i.i = icmp ult i32 %104, 3
  br i1 %switch.i.i, label %sw.bb30.i.i, label %rcu_read_unlock.exit.i.i.drbd_chk_io_error_.exit_crit_edge

rcu_read_unlock.exit.i.i.drbd_chk_io_error_.exit_crit_edge: ; preds = %rcu_read_unlock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbd_chk_io_error_.exit

sw.bb30.i.i:                                      ; preds = %rcu_read_unlock.exit.i.i
  %flags.i.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 14
  tail call void @_set_bit(i32 noundef 10, ptr noundef %flags.i.i) #11
  %109 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %bf.load40.i.i = load i32, ptr %state.i, align 8
  %110 = and i32 %bf.load40.i.i, 7680
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %110)
  %cmp43.i.i = icmp ugt i32 %110, 1024
  br i1 %cmp43.i.i, label %if.then44.i.i, label %sw.bb30.i.i.drbd_chk_io_error_.exit_crit_edge

sw.bb30.i.i.drbd_chk_io_error_.exit_crit_edge:    ; preds = %sw.bb30.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbd_chk_io_error_.exit

if.then44.i.i:                                    ; preds = %sw.bb30.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %111 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %device, align 8
  %susp.i.i.i = getelementptr inbounds %struct.drbd_resource, ptr %112, i32 0, i32 13
  %113 = ptrtoint ptr %susp.i.i.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %bf.load.i.i.i = load i8, ptr %susp.i.i.i, align 4
  %bf.lshr.i.i.i = lshr i8 %bf.load.i.i.i, 7
  %bf.cast.i.i.i = zext i8 %bf.lshr.i.i.i to i32
  %bf.shl.i.i.i = shl nuw nsw i32 %bf.cast.i.i.i, 17
  %bf.clear.i.i.i = and i32 %bf.load40.i.i, -6430209
  %bf.set.i.i.i = or i32 %bf.shl.i.i.i, %bf.clear.i.i.i
  %bf.lshr4.i.i.i = lshr i8 %bf.load.i.i.i, 6
  %bf.value8.i.i.i = zext i8 %bf.lshr4.i.i.i to i32
  %bf.shl9.i.i.i = shl nuw nsw i32 %bf.value8.i.i.i, 21
  %bf.lshr13.i.i.i = lshr i8 %bf.load.i.i.i, 5
  %114 = and i8 %bf.lshr13.i.i.i, 1
  %bf.value17.i.i.i = zext i8 %114 to i32
  %bf.shl18.i.i.i = shl nuw nsw i32 %bf.value17.i.i.i, 22
  %bf.shl9.masked.i.i.i = and i32 %bf.shl9.i.i.i, 2097152
  %bf.clear19.i.i.i = or i32 %bf.set.i.i.i, %bf.shl9.masked.i.i.i
  %bf.set20.i.i.i = or i32 %bf.clear19.i.i.i, %bf.shl18.i.i.i
  %bf.set53.i.i = or i32 %bf.set20.i.i.i, 1024
  %.fca.0.insert.i.i = insertvalue [1 x i32] poison, i32 %bf.set53.i.i, 0
  %call56.i.i = tail call i32 @_drbd_set_state(ptr noundef %device, [1 x i32] %.fca.0.insert.i.i, i32 noundef 1, ptr noundef null) #11
  %115 = ptrtoint ptr %vdisk175 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %vdisk175, align 4
  %part061.i.i = getelementptr inbounds %struct.gendisk, ptr %116, i32 0, i32 7
  %117 = ptrtoint ptr %part061.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %part061.i.i, align 4
  %bd_device62.i.i = getelementptr inbounds %struct.block_device, ptr %118, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %bd_device62.i.i, ptr noundef nonnull @.str.133, ptr noundef nonnull @.str.104) #14
  br label %drbd_chk_io_error_.exit

drbd_chk_io_error_.exit:                          ; preds = %if.then44.i.i, %sw.bb30.i.i.drbd_chk_io_error_.exit_crit_edge, %rcu_read_unlock.exit.i.i.drbd_chk_io_error_.exit_crit_edge
  %119 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %device, align 8
  %req_lock6.i = getelementptr inbounds %struct.drbd_resource, ptr %120, i32 0, i32 12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %req_lock6.i, i32 noundef %call2.i) #11
  br label %if.end178

if.end178:                                        ; preds = %drbd_chk_io_error_.exit, %if.end168.if.end178_crit_edge
  %err.0 = phi i32 [ -5, %drbd_chk_io_error_.exit ], [ 0, %if.end168.if.end178_crit_edge ]
  %call.i.i299 = tail call zeroext i1 @__kasan_check_read(ptr noundef %.compoundliteral.sroa.4.0..sroa_idx, i32 noundef 4) #11
  %121 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load volatile i32, ptr %.compoundliteral.sroa.4.0..sroa_idx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %tobool181.not = icmp eq i32 %122, 0
  %spec.select = select i1 %tobool181.not, i32 %err.0, i32 -5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %123 = load volatile i32, ptr @jiffies, align 128
  br i1 %tobool44.not, label %if.end178.if.end195_crit_edge, label %if.then186

if.end178.if.end195_crit_edge:                    ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end195

if.then186:                                       ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #13
  %call187 = tail call fastcc i32 @bm_count_bits(ptr noundef %1)
  %bm_set = getelementptr inbounds %struct.drbd_bitmap, ptr %1, i32 0, i32 4
  %124 = ptrtoint ptr %bm_set to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %call187, ptr %bm_set, align 4
  %vdisk191 = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %125 = ptrtoint ptr %vdisk191 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %vdisk191, align 4
  %part0192 = getelementptr inbounds %struct.gendisk, ptr %126, i32 0, i32 7
  %127 = ptrtoint ptr %part0192 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %part0192, align 4
  %bd_device193 = getelementptr inbounds %struct.block_device, ptr %128, i32 0, i32 10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %129 = load volatile i32, ptr @jiffies, align 128
  %sub194 = sub i32 %129, %123
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.34, ptr noundef %bd_device193, ptr noundef nonnull @.str.118, i32 noundef %sub194) #14
  br label %if.end195

if.end195:                                        ; preds = %if.then186, %if.end178.if.end195_crit_edge
  %and197 = and i32 %flags, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and197)
  %cmp198 = icmp eq i32 %and197, 0
  br i1 %cmp198, label %do.end202, label %if.end195.if.end207_crit_edge

if.end195.if.end207_crit_edge:                    ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end207

do.end202:                                        ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #13
  %bm_set196 = getelementptr inbounds %struct.drbd_bitmap, ptr %1, i32 0, i32 4
  %130 = ptrtoint ptr %bm_set196 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %bm_set196, align 4
  %vdisk203 = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %132 = ptrtoint ptr %vdisk203 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %vdisk203, align 4
  %part0204 = getelementptr inbounds %struct.gendisk, ptr %133, i32 0, i32 7
  %134 = ptrtoint ptr %part0204 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %part0204, align 4
  %bd_device205 = getelementptr inbounds %struct.block_device, ptr %135, i32 0, i32 10
  %shl = shl i32 %131, 2
  %conv = zext i32 %shl to i64
  %call206 = call ptr @ppsize(ptr noundef nonnull %ppb, i64 noundef %conv) #11
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.34, ptr noundef %bd_device205, ptr noundef nonnull @.str.121, ptr noundef %call206, i32 noundef %131) #14
  br label %if.end207

if.end207:                                        ; preds = %do.end202, %if.end195.if.end207_crit_edge
  call fastcc void @kref_put(ptr noundef %.compoundliteral.sroa.8.0..sroa_idx)
  br label %cleanup

cleanup:                                          ; preds = %if.end207, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.end207 ], [ -19, %do.end ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %ppb) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drbd_bm_write(ptr noundef %device) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @bm_rw(ptr noundef %device, i32 noundef 0, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drbd_bm_write_all(ptr noundef %device) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @bm_rw(ptr noundef %device, i32 noundef 4, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drbd_bm_write_lazy(ptr noundef %device, i32 noundef %upper_idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @bm_rw(ptr noundef %device, i32 noundef 1, i32 noundef %upper_idx)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drbd_bm_write_copy_pages(ptr noundef %device) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @bm_rw(ptr noundef %device, i32 noundef 1, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drbd_bm_write_hinted(ptr noundef %device) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @bm_rw(ptr noundef %device, i32 noundef 3, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drbd_bm_find_next(ptr nocapture noundef readonly %device, i32 noundef %bm_fo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bitmap.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 63
  %0 = ptrtoint ptr %bitmap.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bitmap.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end6.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %vdisk.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %2 = ptrtoint ptr %vdisk.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdisk.i, align 4
  %part0.i = getelementptr inbounds %struct.gendisk, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %part0.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %part0.i, align 4
  %bd_device.i = getelementptr inbounds %struct.block_device, ptr %5, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %bd_device.i, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.138) #14
  br label %bm_find_next.exit

if.end6.i:                                        ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %tobool8.not.i = icmp eq ptr %7, null
  br i1 %tobool8.not.i, label %do.end14.i, label %if.end24.i

do.end14.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  %vdisk15.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %8 = ptrtoint ptr %vdisk15.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vdisk15.i, align 4
  %part016.i = getelementptr inbounds %struct.gendisk, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %part016.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %part016.i, align 4
  %bd_device17.i = getelementptr inbounds %struct.block_device, ptr %11, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %bd_device17.i, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.138) #14
  br label %bm_find_next.exit

if.end24.i:                                       ; preds = %if.end6.i
  %bm_lock.i = getelementptr inbounds %struct.drbd_bitmap, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %bm_lock.i) #11
  %bm_flags.i = getelementptr inbounds %struct.drbd_bitmap, ptr %1, i32 0, i32 11
  %12 = ptrtoint ptr %bm_flags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bm_flags.i, align 8
  %and.i = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool25.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool25.not.i, label %if.end24.i.if.end27.i_crit_edge, label %if.then26.i

if.end24.i.if.end27.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27.i

if.then26.i:                                      ; preds = %if.end24.i
  %14 = ptrtoint ptr %bitmap.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bitmap.i, align 4
  %call.i.i = tail call i32 @___ratelimit(ptr noundef nonnull @drbd_ratelimit_state, ptr noundef nonnull @__func__.__bm_print_lock_info) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then26.i.if.end27.i_crit_edge, label %do.end.i.i

if.then26.i.if.end27.i_crit_edge:                 ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27.i

do.end.i.i:                                       ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #13
  %vdisk.i.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %16 = ptrtoint ptr %vdisk.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vdisk.i.i, align 4
  %part0.i.i = getelementptr inbounds %struct.gendisk, ptr %17, i32 0, i32 7
  %18 = ptrtoint ptr %part0.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %part0.i.i, align 4
  %bd_device.i.i = getelementptr inbounds %struct.block_device, ptr %19, i32 0, i32 10
  %20 = tail call i32 @llvm.read_register.i32(metadata !285) #11
  %and.i.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task.i.i, align 8
  %comm.i.i = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 101
  %pid.i.i.i = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 68
  %24 = ptrtoint ptr %pid.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pid.i.i.i, align 8
  %bm_why.i.i = getelementptr inbounds %struct.drbd_bitmap, ptr %15, i32 0, i32 12
  %26 = ptrtoint ptr %bm_why.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bm_why.i.i, align 4
  %tobool5.not.i.i = icmp eq ptr %27, null
  %..str.9.i.i = select i1 %tobool5.not.i.i, ptr @.str.9, ptr %27
  %bm_task.i.i = getelementptr inbounds %struct.drbd_bitmap, ptr %15, i32 0, i32 13
  %28 = ptrtoint ptr %bm_task.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bm_task.i.i, align 8
  %comm6.i.i = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 101
  %pid.i13.i.i = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 68
  %30 = ptrtoint ptr %pid.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pid.i13.i.i, align 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %bd_device.i.i, ptr noundef nonnull @.str.148, ptr noundef %comm.i.i, i32 noundef %25, ptr noundef nonnull @.str.138, ptr noundef %..str.9.i.i, ptr noundef %comm6.i.i, i32 noundef %31) #14
  br label %if.end27.i

if.end27.i:                                       ; preds = %do.end.i.i, %if.then26.i.if.end27.i_crit_edge, %if.end24.i.if.end27.i_crit_edge
  %call.i = tail call fastcc i32 @__bm_find_next(ptr noundef %device, i32 noundef %bm_fo, i32 noundef 0) #11
  tail call void @_raw_spin_unlock_irq(ptr noundef %bm_lock.i) #11
  br label %bm_find_next.exit

bm_find_next.exit:                                ; preds = %if.end27.i, %do.end14.i, %do.end.i
  %retval.0.i = phi i32 [ %call.i, %if.end27.i ], [ -1, %do.end14.i ], [ -1, %do.end.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @_drbd_bm_find_next(ptr nocapture noundef readonly %device, i32 noundef %bm_fo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__bm_find_next(ptr noundef %device, i32 noundef %bm_fo, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__bm_find_next(ptr nocapture noundef readonly %device, i32 noundef %bm_fo, i32 noundef %find_zero_bit) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bitmap = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 63
  %0 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bitmap, align 4
  %bm_bits = getelementptr inbounds %struct.drbd_bitmap, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %bm_bits to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bm_bits, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %bm_fo)
  %cmp = icmp ult i32 %3, %bm_fo
  br i1 %cmp, label %do.end, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %4 = ptrtoint ptr %bm_bits to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bm_bits, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %bm_fo)
  %cmp342 = icmp ugt i32 %5, %bm_fo
  br i1 %cmp342, label %while.body.lr.ph, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %bm_number_of_pages.i = getelementptr inbounds %struct.drbd_bitmap, ptr %1, i32 0, i32 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %find_zero_bit)
  %tobool.not = icmp eq i32 %find_zero_bit, 0
  br label %while.body

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %vdisk = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %6 = ptrtoint ptr %vdisk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vdisk, align 4
  %part0 = getelementptr inbounds %struct.gendisk, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %part0, align 4
  %bd_device = getelementptr inbounds %struct.block_device, ptr %9, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %bd_device, ptr noundef nonnull @.str.141, i32 noundef %bm_fo, i32 noundef %3) #14
  br label %found

while.body:                                       ; preds = %if.end19.while.body_crit_edge, %while.body.lr.ph
  %bm_fo.addr.043 = phi i32 [ %bm_fo, %while.body.lr.ph ], [ %add20, %if.end19.while.body_crit_edge ]
  %and = and i32 %bm_fo.addr.043, -32768
  %10 = lshr i32 %bm_fo.addr.043, 15
  %11 = ptrtoint ptr %bm_number_of_pages.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bm_number_of_pages.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %10)
  %cmp.not.i = icmp ugt i32 %12, %10
  br i1 %cmp.not.i, label %bm_bit_to_page_idx.exit, label %do.body3.i, !prof !297

do.body3.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/block/drbd/drbd_bitmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 308, 0\0A.popsection", ""() #11, !srcloc !313
  unreachable

bm_bit_to_page_idx.exit:                          ; preds = %while.body
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 8
  %arrayidx.i = getelementptr ptr, ptr %14, i32 %10
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %17 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i = or i32 %17, 512
  %18 = tail call i32 @llvm.read_register.i32(metadata !285) #11
  %and.i.i.i.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %21, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !305
  %22 = tail call i32 @llvm.read_register.i32(metadata !285) #11
  %and.i.i.i1.i.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i1.i.i.i to ptr
  %task.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %task.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %task.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 213
  %26 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pagefault_disabled.i.i.i.i.i, align 8
  %inc.i.i.i.i.i = add i32 %27, 1
  store i32 %inc.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !306
  %call.i.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %16, i32 noundef %or.i.i) #11
  %and9 = and i32 %bm_fo.addr.043, 32767
  br i1 %tobool.not, label %if.else8, label %if.then5

if.then5:                                         ; preds = %bm_bit_to_page_idx.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 @_find_next_zero_bit_le(ptr noundef %call.i.i.i, i32 noundef 32768, i32 noundef %and9) #11
  br label %if.end

if.else8:                                         ; preds = %bm_bit_to_page_idx.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call.i40 = tail call i32 @_find_next_bit_le(ptr noundef %call.i.i.i, i32 noundef 32768, i32 noundef %and9) #11
  br label %if.end

if.end:                                           ; preds = %if.else8, %if.then5
  %i.0 = phi i32 [ %call.i, %if.then5 ], [ %call.i40, %if.else8 ]
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i.i) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !307
  %28 = tail call i32 @llvm.read_register.i32(metadata !285) #11
  %and.i.i.i1.i.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 213
  %32 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %dec.i.i.i.i = add i32 %33, -1
  store i32 %dec.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !308
  %34 = tail call i32 @llvm.read_register.i32(metadata !285) #11
  %and.i.i.i.i.i = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %37, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %i.0)
  %cmp11 = icmp ult i32 %i.0, 32768
  br i1 %cmp11, label %if.then13, label %if.end19

if.then13:                                        ; preds = %if.end
  %add = add nuw i32 %i.0, %and
  %38 = ptrtoint ptr %bm_bits to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %bm_bits, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %39)
  %cmp15.not = icmp ult i32 %add, %39
  br i1 %cmp15.not, label %if.then13.found_crit_edge, label %if.then13.while.end_crit_edge

if.then13.while.end_crit_edge:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.then13.found_crit_edge:                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %found

if.end19:                                         ; preds = %if.end
  %add20 = add i32 %and, 32768
  %40 = ptrtoint ptr %bm_bits to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %bm_bits, align 8
  %cmp3 = icmp ult i32 %add20, %41
  br i1 %cmp3, label %if.end19.while.body_crit_edge, label %if.end19.while.end_crit_edge

if.end19.while.end_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end19.while.body_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.end:                                        ; preds = %if.end19.while.end_crit_edge, %if.then13.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  br label %found

found:                                            ; preds = %while.end, %if.then13.found_crit_edge, %do.end
  %bm_fo.addr.1 = phi i32 [ -1, %do.end ], [ -1, %while.end ], [ %add, %if.then13.found_crit_edge ]
  ret i32 %bm_fo.addr.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @_drbd_bm_find_next_zero(ptr nocapture noundef readonly %device, i32 noundef %bm_fo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__bm_find_next(ptr noundef %device, i32 noundef %bm_fo, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drbd_bm_set_bits(ptr nocapture noundef readonly %device, i32 noundef %s, i32 noundef %e) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @bm_change_bits_to(ptr noundef %device, i32 noundef %s, i32 noundef %e, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bm_change_bits_to(ptr nocapture noundef readonly %device, i32 noundef %s, i32 noundef %e, i32 noundef %val) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bitmap = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 63
  %0 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bitmap, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %vdisk = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %2 = ptrtoint ptr %vdisk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdisk, align 4
  %part0 = getelementptr inbounds %struct.gendisk, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %part0, align 4
  %bd_device = getelementptr inbounds %struct.block_device, ptr %5, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %bd_device, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.143) #14
  br label %cleanup

if.end6:                                          ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %tobool8.not = icmp eq ptr %7, null
  br i1 %tobool8.not, label %do.end14, label %do.body26

do.end14:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %vdisk15 = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %8 = ptrtoint ptr %vdisk15 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vdisk15, align 4
  %part016 = getelementptr inbounds %struct.gendisk, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %part016 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %part016, align 4
  %bd_device17 = getelementptr inbounds %struct.block_device, ptr %11, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %bd_device17, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.143) #14
  br label %cleanup

do.body26:                                        ; preds = %if.end6
  %bm_lock = getelementptr inbounds %struct.drbd_bitmap, ptr %1, i32 0, i32 1
  %call28 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bm_lock) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool33.not = icmp eq i32 %val, 0
  %cond = select i1 %tobool33.not, i32 1, i32 2
  %bm_flags = getelementptr inbounds %struct.drbd_bitmap, ptr %1, i32 0, i32 11
  %12 = ptrtoint ptr %bm_flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bm_flags, align 8
  %and = and i32 %13, %cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool34.not = icmp eq i32 %and, 0
  br i1 %tobool34.not, label %do.body26.if.end36_crit_edge, label %if.then35

do.body26.if.end36_crit_edge:                     ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

if.then35:                                        ; preds = %do.body26
  %14 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bitmap, align 4
  %call.i = tail call i32 @___ratelimit(ptr noundef nonnull @drbd_ratelimit_state, ptr noundef nonnull @__func__.__bm_print_lock_info) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then35.if.end36_crit_edge, label %do.end.i

if.then35.if.end36_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

do.end.i:                                         ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #13
  %vdisk.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %16 = ptrtoint ptr %vdisk.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vdisk.i, align 4
  %part0.i = getelementptr inbounds %struct.gendisk, ptr %17, i32 0, i32 7
  %18 = ptrtoint ptr %part0.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %part0.i, align 4
  %bd_device.i = getelementptr inbounds %struct.block_device, ptr %19, i32 0, i32 10
  %20 = tail call i32 @llvm.read_register.i32(metadata !285) #11
  %and.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task.i, align 8
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 101
  %pid.i.i = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 68
  %24 = ptrtoint ptr %pid.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pid.i.i, align 8
  %bm_why.i = getelementptr inbounds %struct.drbd_bitmap, ptr %15, i32 0, i32 12
  %26 = ptrtoint ptr %bm_why.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bm_why.i, align 4
  %tobool5.not.i = icmp eq ptr %27, null
  %..str.9.i = select i1 %tobool5.not.i, ptr @.str.9, ptr %27
  %bm_task.i = getelementptr inbounds %struct.drbd_bitmap, ptr %15, i32 0, i32 13
  %28 = ptrtoint ptr %bm_task.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bm_task.i, align 8
  %comm6.i = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 101
  %pid.i13.i = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 68
  %30 = ptrtoint ptr %pid.i13.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pid.i13.i, align 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %bd_device.i, ptr noundef nonnull @.str.148, ptr noundef %comm.i, i32 noundef %25, ptr noundef nonnull @.str.143, ptr noundef %..str.9.i, ptr noundef %comm6.i, i32 noundef %31) #14
  br label %if.end36

if.end36:                                         ; preds = %do.end.i, %if.then35.if.end36_crit_edge, %do.body26.if.end36_crit_edge
  %call37 = tail call fastcc i32 @__bm_change_bits_to(ptr noundef %device, i32 noundef %s, i32 noundef %e, i32 noundef %val)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bm_lock, i32 noundef %call28) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %do.end14, %do.end
  %retval.0 = phi i32 [ %call37, %if.end36 ], [ 0, %do.end14 ], [ 1, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drbd_bm_clear_bits(ptr nocapture noundef readonly %device, i32 noundef %s, i32 noundef %e) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @bm_change_bits_to(ptr noundef %device, i32 noundef %s, i32 noundef %e, i32 noundef 0)
  %sub = sub i32 0, %call
  ret i32 %sub
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_drbd_bm_set_bits(ptr nocapture noundef readonly %device, i32 noundef %s, i32 noundef %e) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bitmap = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 63
  %0 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bitmap, align 4
  %add = add i32 %s, 31
  %and = and i32 %add, -32
  %add1 = add i32 %e, 1
  %and2 = and i32 %add1, -32
  %sub = sub i32 %e, %s
  call void @__sanitizer_cov_trace_const_cmp4(i32 97, i32 %sub)
  %cmp = icmp ult i32 %sub, 97
  %bm_lock = getelementptr inbounds %struct.drbd_bitmap, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %bm_lock) #11
  br i1 %cmp, label %entry.cleanup.sink.split_crit_edge, label %if.end

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end8_crit_edge, label %if.then5

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %sub6 = add i32 %and, -1
  %call7 = tail call fastcc i32 @__bm_change_bits_to(ptr noundef %device, i32 noundef %s, i32 noundef %sub6, i32 noundef 1)
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end.if.end8_crit_edge
  %shr = lshr i32 %add, 15
  %shr9 = lshr i32 %add1, 15
  %shr10 = lshr i32 %add, 5
  %and11 = and i32 %shr10, 1023
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %shr9)
  %cmp1264 = icmp ult i32 %shr, %shr9
  br i1 %cmp1264, label %for.body.preheader, label %if.end8.for.end_crit_edge

if.end8.for.end_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.preheader:                               ; preds = %if.end8
  %2 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bitmap, align 4
  tail call fastcc void @bm_set_full_words_within_one_page(ptr noundef %3, i32 noundef %shr, i32 noundef %and11, i32 noundef 1024)
  tail call void @_raw_spin_unlock_irq(ptr noundef %bm_lock) #11
  tail call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 1511, i32 noundef 0) #11
  %call.i.peel = tail call i32 @__cond_resched() #11
  tail call void @_raw_spin_lock_irq(ptr noundef %bm_lock) #11
  %inc.peel = add nuw nsw i32 %shr, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.peel, i32 %shr9)
  %exitcond.peel.not = icmp eq i32 %inc.peel, %shr9
  br i1 %exitcond.peel.not, label %for.body.preheader.for.end_crit_edge, label %for.body.preheader.for.body_crit_edge

for.body.preheader.for.body_crit_edge:            ; preds = %for.body.preheader
  br label %for.body

for.body.preheader.for.end_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader.for.body_crit_edge
  %page_nr.065 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ %inc.peel, %for.body.preheader.for.body_crit_edge ]
  %4 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bitmap, align 4
  tail call fastcc void @bm_set_full_words_within_one_page(ptr noundef %5, i32 noundef %page_nr.065, i32 noundef 0, i32 noundef 1024)
  tail call void @_raw_spin_unlock_irq(ptr noundef %bm_lock) #11
  tail call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 1511, i32 noundef 0) #11
  %call.i = tail call i32 @__cond_resched() #11
  tail call void @_raw_spin_lock_irq(ptr noundef %bm_lock) #11
  %inc = add nuw nsw i32 %page_nr.065, 1
  %exitcond.not = icmp eq i32 %inc, %shr9
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge, !llvm.loop !314

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.body.preheader.for.end_crit_edge, %if.end8.for.end_crit_edge
  %first_word.0.lcssa = phi i32 [ %and11, %if.end8.for.end_crit_edge ], [ 0, %for.body.preheader.for.end_crit_edge ], [ 0, %for.body.for.end_crit_edge ]
  %shr17 = lshr i32 %add1, 5
  %and18 = and i32 %shr17, 1023
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %for.end.if.end22_crit_edge, label %if.then20

for.end.if.end22_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.then20:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bitmap, align 4
  tail call fastcc void @bm_set_full_words_within_one_page(ptr noundef %7, i32 noundef %shr9, i32 noundef %first_word.0.lcssa, i32 noundef %and18)
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %for.end.if.end22_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %and2, i32 %e)
  %cmp23.not = icmp ugt i32 %and2, %e
  br i1 %cmp23.not, label %if.end22.cleanup_crit_edge, label %if.end22.cleanup.sink.split_crit_edge

if.end22.cleanup.sink.split_crit_edge:            ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end22.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %and2.sink = phi i32 [ %s, %entry.cleanup.sink.split_crit_edge ], [ %and2, %if.end22.cleanup.sink.split_crit_edge ]
  %call25 = tail call fastcc i32 @__bm_change_bits_to(ptr noundef %device, i32 noundef %and2.sink, i32 noundef %e, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end22.cleanup_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %bm_lock) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__bm_change_bits_to(ptr nocapture noundef readonly %device, i32 noundef %s, i32 noundef %e, i32 noundef %val) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bitmap = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 63
  %0 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bitmap, align 4
  %bm_bits = getelementptr inbounds %struct.drbd_bitmap, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %bm_bits to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bm_bits, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %e)
  %cmp.not = icmp ugt i32 %3, %e
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %vdisk = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %4 = ptrtoint ptr %vdisk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vdisk, align 4
  %part0 = getelementptr inbounds %struct.gendisk, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %part0, align 4
  %bd_device = getelementptr inbounds %struct.block_device, ptr %7, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %bd_device, ptr noundef nonnull @.str.146, i32 noundef %s, i32 noundef %e, i32 noundef %3) #14
  %8 = ptrtoint ptr %bm_bits to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bm_bits, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  %sub = add i32 %9, -1
  %spec.select = select i1 %tobool.not, i32 0, i32 %sub
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %e.addr.0 = phi i32 [ %spec.select, %do.end ], [ %e, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %e.addr.0, i32 %s)
  %cmp4.not114 = icmp ult i32 %e.addr.0, %s
  br i1 %cmp4.not114, label %if.end.if.end51_crit_edge, label %for.body.lr.ph

if.end.if.end51_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end51

for.body.lr.ph:                                   ; preds = %if.end
  %bm_number_of_pages.i = getelementptr inbounds %struct.drbd_bitmap, ptr %1, i32 0, i32 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool23.not = icmp eq i32 %val, 0
  br label %for.body

for.body:                                         ; preds = %if.end35.for.body_crit_edge, %for.body.lr.ph
  %changed_total.0121 = phi i32 [ 0, %for.body.lr.ph ], [ %changed_total.1, %if.end35.for.body_crit_edge ]
  %c.0119 = phi i32 [ 0, %for.body.lr.ph ], [ %c.2, %if.end35.for.body_crit_edge ]
  %last_page_nr.0118 = phi i32 [ -1, %for.body.lr.ph ], [ %last_page_nr.1, %if.end35.for.body_crit_edge ]
  %bitnr.0116 = phi i32 [ %s, %for.body.lr.ph ], [ %inc, %if.end35.for.body_crit_edge ]
  %p_addr.0115 = phi ptr [ null, %for.body.lr.ph ], [ %p_addr.1, %if.end35.for.body_crit_edge ]
  %10 = lshr i32 %bitnr.0116, 15
  %11 = ptrtoint ptr %bm_number_of_pages.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bm_number_of_pages.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %10)
  %cmp.not.i = icmp ugt i32 %12, %10
  br i1 %cmp.not.i, label %bm_bit_to_page_idx.exit, label %do.body3.i, !prof !297

do.body3.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/block/drbd/drbd_bitmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 308, 0\0A.popsection", ""() #11, !srcloc !313
  unreachable

bm_bit_to_page_idx.exit:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %last_page_nr.0118)
  %cmp5.not = icmp eq i32 %10, %last_page_nr.0118
  br i1 %cmp5.not, label %bm_bit_to_page_idx.exit.if.end22_crit_edge, label %if.then7

bm_bit_to_page_idx.exit.if.end22_crit_edge:       ; preds = %bm_bit_to_page_idx.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.then7:                                         ; preds = %bm_bit_to_page_idx.exit
  %tobool8.not = icmp eq ptr %p_addr.0115, null
  br i1 %tobool8.not, label %if.then7.if.end10_crit_edge, label %if.then9

if.then7.if.end10_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then9:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kunmap_local_indexed(ptr noundef nonnull %p_addr.0115) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !307
  %13 = tail call i32 @llvm.read_register.i32(metadata !285) #11
  %and.i.i.i1.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 213
  %17 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %dec.i.i.i.i = add i32 %18, -1
  store i32 %dec.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !308
  %19 = tail call i32 @llvm.read_register.i32(metadata !285) #11
  %and.i.i.i.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %22, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.then7.if.end10_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %c.0119)
  %cmp11 = icmp slt i32 %c.0119, 0
  br i1 %cmp11, label %if.end10.if.end20.sink.split_crit_edge, label %if.else

if.end10.if.end20.sink.split_crit_edge:           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20.sink.split

if.else:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %c.0119)
  %cmp14.not = icmp eq i32 %c.0119, 0
  br i1 %cmp14.not, label %if.else.if.end20_crit_edge, label %if.else.if.end20.sink.split_crit_edge

if.else.if.end20.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20.sink.split

if.else.if.end20_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.end20.sink.split:                              ; preds = %if.else.if.end20.sink.split_crit_edge, %if.end10.if.end20.sink.split_crit_edge
  %.sink = phi i32 [ 28, %if.end10.if.end20.sink.split_crit_edge ], [ 29, %if.else.if.end20.sink.split_crit_edge ]
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 8
  %arrayidx18 = getelementptr ptr, ptr %24, i32 %last_page_nr.0118
  %25 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx18, align 4
  %private.i94 = getelementptr inbounds %struct.page, ptr %26, i32 0, i32 1, i32 0, i32 3
  tail call void @_set_bit(i32 noundef %.sink, ptr noundef %private.i94) #11
  br label %if.end20

if.end20:                                         ; preds = %if.end20.sink.split, %if.else.if.end20_crit_edge
  %add = add i32 %changed_total.0121, %c.0119
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 8
  %arrayidx.i = getelementptr ptr, ptr %28, i32 %10
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %31 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i = or i32 %31, 512
  %32 = tail call i32 @llvm.read_register.i32(metadata !285) #11
  %and.i.i.i.i.i.i = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %35, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !305
  %36 = tail call i32 @llvm.read_register.i32(metadata !285) #11
  %and.i.i.i1.i.i.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i.i1.i.i.i to ptr
  %task.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %task.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %task.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %39, i32 0, i32 213
  %40 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pagefault_disabled.i.i.i.i.i, align 8
  %inc.i.i.i.i.i = add i32 %41, 1
  store i32 %inc.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !306
  %call.i.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %30, i32 noundef %or.i.i) #11
  br label %if.end22

if.end22:                                         ; preds = %if.end20, %bm_bit_to_page_idx.exit.if.end22_crit_edge
  %p_addr.1 = phi ptr [ %call.i.i.i, %if.end20 ], [ %p_addr.0115, %bm_bit_to_page_idx.exit.if.end22_crit_edge ]
  %last_page_nr.1 = phi i32 [ %10, %if.end20 ], [ %last_page_nr.0118, %bm_bit_to_page_idx.exit.if.end22_crit_edge ]
  %c.1 = phi i32 [ 0, %if.end20 ], [ %c.0119, %bm_bit_to_page_idx.exit.if.end22_crit_edge ]
  %changed_total.1 = phi i32 [ %add, %if.end20 ], [ %changed_total.0121, %bm_bit_to_page_idx.exit.if.end22_crit_edge ]
  %xor.i96 = and i32 %bitnr.0116, 31
  %rem.i.i97 = xor i32 %xor.i96, 24
  %shl.i.i98 = shl nuw i32 1, %rem.i.i97
  %and30 = lshr i32 %bitnr.0116, 5
  %div6.i.i = and i32 %and30, 1023
  %add.ptr.i.i99 = getelementptr i32, ptr %p_addr.1, i32 %div6.i.i
  %42 = ptrtoint ptr %add.ptr.i.i99 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %add.ptr.i.i99, align 4
  br i1 %tobool23.not, label %if.else29, label %if.then24

if.then24:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  %or.i.i95 = or i32 %43, %shl.i.i98
  %44 = ptrtoint ptr %add.ptr.i.i99 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %or.i.i95, ptr %add.ptr.i.i99, align 4
  %45 = xor i32 %43, -1
  %46 = lshr i32 %45, %rem.i.i97
  %47 = and i32 %46, 1
  br label %if.end35

if.else29:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  %neg.i.i = xor i32 %shl.i.i98, -1
  %and.i.i = and i32 %43, %neg.i.i
  %48 = ptrtoint ptr %add.ptr.i.i99 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %and.i.i, ptr %add.ptr.i.i99, align 4
  %49 = and i32 %43, %shl.i.i98
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp32 = icmp ne i32 %49, 0
  %conv33.neg = sext i1 %cmp32 to i32
  br label %if.end35

if.end35:                                         ; preds = %if.else29, %if.then24
  %conv27.pn = phi i32 [ %47, %if.then24 ], [ %conv33.neg, %if.else29 ]
  %c.2 = add i32 %conv27.pn, %c.1
  %inc = add i32 %bitnr.0116, 1
  %cmp4.not = icmp ugt i32 %inc, %e.addr.0
  br i1 %cmp4.not, label %for.end, label %if.end35.for.body_crit_edge

if.end35.for.body_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %if.end35
  %tobool36.not = icmp eq ptr %p_addr.1, null
  br i1 %tobool36.not, label %for.end.if.end38_crit_edge, label %if.then37

for.end.if.end38_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

if.then37:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kunmap_local_indexed(ptr noundef nonnull %p_addr.1) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !307
  %50 = tail call i32 @llvm.read_register.i32(metadata !285) #11
  %and.i.i.i1.i.i100 = and i32 %50, -16384
  %51 = inttoptr i32 %and.i.i.i1.i.i100 to ptr
  %task.i.i.i.i101 = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %task.i.i.i.i101 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %task.i.i.i.i101, align 8
  %pagefault_disabled.i.i.i.i102 = getelementptr inbounds %struct.task_struct, ptr %53, i32 0, i32 213
  %54 = ptrtoint ptr %pagefault_disabled.i.i.i.i102 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %pagefault_disabled.i.i.i.i102, align 8
  %dec.i.i.i.i103 = add i32 %55, -1
  store i32 %dec.i.i.i.i103, ptr %pagefault_disabled.i.i.i.i102, align 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !308
  %56 = tail call i32 @llvm.read_register.i32(metadata !285) #11
  %and.i.i.i.i.i104 = and i32 %56, -16384
  %57 = inttoptr i32 %and.i.i.i.i.i104 to ptr
  %preempt_count.i.i.i.i105 = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %preempt_count.i.i.i.i105 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %preempt_count.i.i.i.i105, align 4
  %sub.i.i.i106 = add i32 %59, -1
  store volatile i32 %sub.i.i.i106, ptr %preempt_count.i.i.i.i105, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %for.end.if.end38_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %c.2)
  %cmp39 = icmp slt i32 %c.2, 0
  br i1 %cmp39, label %if.end38.if.end51.sink.split_crit_edge, label %if.else44

if.end38.if.end51.sink.split_crit_edge:           ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end51.sink.split

if.else44:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %c.2)
  %cmp45.not = icmp eq i32 %c.2, 0
  br i1 %cmp45.not, label %if.else44.if.end51_crit_edge, label %if.else44.if.end51.sink.split_crit_edge

if.else44.if.end51.sink.split_crit_edge:          ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end51.sink.split

if.else44.if.end51_crit_edge:                     ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end51

if.end51.sink.split:                              ; preds = %if.else44.if.end51.sink.split_crit_edge, %if.end38.if.end51.sink.split_crit_edge
  %.sink148 = phi i32 [ 28, %if.end38.if.end51.sink.split_crit_edge ], [ 29, %if.else44.if.end51.sink.split_crit_edge ]
  %60 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %1, align 8
  %arrayidx49 = getelementptr ptr, ptr %61, i32 %last_page_nr.1
  %62 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx49, align 4
  %private.i108 = getelementptr inbounds %struct.page, ptr %63, i32 0, i32 1, i32 0, i32 3
  tail call void @_set_bit(i32 noundef %.sink148, ptr noundef %private.i108) #11
  br label %if.end51

if.end51:                                         ; preds = %if.end51.sink.split, %if.else44.if.end51_crit_edge, %if.end.if.end51_crit_edge
  %changed_total.0.lcssa133138 = phi i32 [ %changed_total.1, %if.else44.if.end51_crit_edge ], [ 0, %if.end.if.end51_crit_edge ], [ %changed_total.1, %if.end51.sink.split ]
  %c.0.lcssa132 = phi i32 [ 0, %if.else44.if.end51_crit_edge ], [ 0, %if.end.if.end51_crit_edge ], [ %c.2, %if.end51.sink.split ]
  %add52 = add i32 %changed_total.0.lcssa133138, %c.0.lcssa132
  %bm_set = getelementptr inbounds %struct.drbd_bitmap, ptr %1, i32 0, i32 4
  %64 = ptrtoint ptr %bm_set to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %bm_set, align 4
  %add53 = add i32 %65, %add52
  store i32 %add53, ptr %bm_set, align 4
  ret i32 %add52
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bm_set_full_words_within_one_page(ptr nocapture noundef %b, i32 noundef %page_nr, i32 noundef %first_word, i32 noundef %last_word) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b, align 8
  %arrayidx = getelementptr ptr, ptr %1, i32 %page_nr
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %4 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %4, 512
  %5 = tail call i32 @llvm.read_register.i32(metadata !285) #11
  %and.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %8, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !305
  %9 = tail call i32 @llvm.read_register.i32(metadata !285) #11
  %and.i.i.i1.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 213
  %13 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %14, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !306
  %call.i.i20 = tail call ptr @__kmap_local_page_prot(ptr noundef %3, i32 noundef %or.i) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %first_word, i32 %last_word)
  %cmp21 = icmp slt i32 %first_word, %last_word
  br i1 %cmp21, label %entry.for.body_crit_edge, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %changed.023 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %i.022 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ %first_word, %entry.for.body_crit_edge ]
  %arrayidx1 = getelementptr i32, ptr %call.i.i20, i32 %i.022
  %15 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx1, align 4
  %call.i.i = tail call i32 @__sw_hweight32(i32 noundef %16) #11
  %17 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %arrayidx1, align 4
  %sub = add i32 %changed.023, 32
  %add = sub i32 %sub, %call.i.i
  %inc = add i32 %i.022, 1
  %exitcond.not = icmp eq i32 %inc, %last_word
  br i1 %exitcond.not, label %for.body.do.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.do.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %for.body.do.end_crit_edge, %entry.do.end_crit_edge
  %changed.0.lcssa = phi i32 [ 0, %entry.do.end_crit_edge ], [ %add, %for.body.do.end_crit_edge ]
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i20) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !307
  %18 = tail call i32 @llvm.read_register.i32(metadata !285) #11
  %and.i.i.i1.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 213
  %22 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %23, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !308
  %24 = tail call i32 @llvm.read_register.i32(metadata !285) #11
  %and.i.i.i.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %27, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %changed.0.lcssa)
  %tobool.not = icmp eq i32 %changed.0.lcssa, 0
  br i1 %tobool.not, label %do.end.if.end_crit_edge, label %if.then

do.end.if.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %b, align 8
  %arrayidx8 = getelementptr ptr, ptr %29, i32 %page_nr
  %30 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx8, align 4
  %private.i = getelementptr inbounds %struct.page, ptr %31, i32 0, i32 1, i32 0, i32 3
  tail call void @_set_bit(i32 noundef 28, ptr noundef %private.i) #11
  %bm_set = getelementptr inbounds %struct.drbd_bitmap, ptr %b, i32 0, i32 4
  %32 = ptrtoint ptr %bm_set to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bm_set, align 4
  %add9 = add i32 %33, %changed.0.lcssa
  store i32 %add9, ptr %bm_set, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drbd_bm_test_bit(ptr nocapture noundef readonly %device, i32 noundef %bitnr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bitmap = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 63
  %0 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bitmap, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %vdisk = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %2 = ptrtoint ptr %vdisk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdisk, align 4
  %part0 = getelementptr inbounds %struct.gendisk, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %part0, align 4
  %bd_device = getelementptr inbounds %struct.block_device, ptr %5, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %bd_device, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.71) #14
  br label %cleanup

if.end6:                                          ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %tobool8.not = icmp eq ptr %7, null
  br i1 %tobool8.not, label %do.end14, label %do.body26

do.end14:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %vdisk15 = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %8 = ptrtoint ptr %vdisk15 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vdisk15, align 4
  %part016 = getelementptr inbounds %struct.gendisk, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %part016 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %part016, align 4
  %bd_device17 = getelementptr inbounds %struct.block_device, ptr %11, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %bd_device17, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.71) #14
  br label %cleanup

do.body26:                                        ; preds = %if.end6
  %bm_lock = getelementptr inbounds %struct.drbd_bitmap, ptr %1, i32 0, i32 1
  %call28 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bm_lock) #11
  %bm_flags = getelementptr inbounds %struct.drbd_bitmap, ptr %1, i32 0, i32 11
  %12 = ptrtoint ptr %bm_flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bm_flags, align 8
  %and = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool33.not = icmp eq i32 %and, 0
  br i1 %tobool33.not, label %do.body26.if.end35_crit_edge, label %if.then34

do.body26.if.end35_crit_edge:                     ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

if.then34:                                        ; preds = %do.body26
  %14 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bitmap, align 4
  %call.i = tail call i32 @___ratelimit(ptr noundef nonnull @drbd_ratelimit_state, ptr noundef nonnull @__func__.__bm_print_lock_info) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then34.if.end35_crit_edge, label %do.end.i

if.then34.if.end35_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

do.end.i:                                         ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #13
  %vdisk.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %16 = ptrtoint ptr %vdisk.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vdisk.i, align 4
  %part0.i = getelementptr inbounds %struct.gendisk, ptr %17, i32 0, i32 7
  %18 = ptrtoint ptr %part0.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %part0.i, align 4
  %bd_device.i = getelementptr inbounds %struct.block_device, ptr %19, i32 0, i32 10
  %20 = tail call i32 @llvm.read_register.i32(metadata !285) #11
  %and.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task.i, align 8
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 101
  %pid.i.i = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 68
  %24 = ptrtoint ptr %pid.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pid.i.i, align 8
  %bm_why.i = getelementptr inbounds %struct.drbd_bitmap, ptr %15, i32 0, i32 12
  %26 = ptrtoint ptr %bm_why.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bm_why.i, align 4
  %tobool5.not.i = icmp eq ptr %27, null
  %..str.9.i = select i1 %tobool5.not.i, ptr @.str.9, ptr %27
  %bm_task.i = getelementptr inbounds %struct.drbd_bitmap, ptr %15, i32 0, i32 13
  %28 = ptrtoint ptr %bm_task.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bm_task.i, align 8
  %comm6.i = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 101
  %pid.i13.i = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 68
  %30 = ptrtoint ptr %pid.i13.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pid.i13.i, align 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %bd_device.i, ptr noundef nonnull @.str.148, ptr noundef %comm.i, i32 noundef %25, ptr noundef nonnull @.str.71, ptr noundef %..str.9.i, ptr noundef %comm6.i, i32 noundef %31) #14
  br label %if.end35

if.end35:                                         ; preds = %do.end.i, %if.then34.if.end35_crit_edge, %do.body26.if.end35_crit_edge
  %bm_bits = getelementptr inbounds %struct.drbd_bitmap, ptr %1, i32 0, i32 5
  %32 = ptrtoint ptr %bm_bits to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bm_bits, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %bitnr)
  %cmp36 = icmp ugt i32 %33, %bitnr
  br i1 %cmp36, label %if.then38, label %if.else

if.then38:                                        ; preds = %if.end35
  %34 = lshr i32 %bitnr, 15
  %bm_number_of_pages.i = getelementptr inbounds %struct.drbd_bitmap, ptr %1, i32 0, i32 7
  %35 = ptrtoint ptr %bm_number_of_pages.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %bm_number_of_pages.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %34)
  %cmp.not.i = icmp ugt i32 %36, %34
  br i1 %cmp.not.i, label %bm_bit_to_page_idx.exit, label %do.body3.i, !prof !297

do.body3.i:                                       ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/block/drbd/drbd_bitmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 308, 0\0A.popsection", ""() #11, !srcloc !313
  unreachable

bm_bit_to_page_idx.exit:                          ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #13
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 8
  %arrayidx.i.i = getelementptr ptr, ptr %38, i32 %34
  %39 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %41 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i.i = or i32 %41, 512
  %42 = tail call i32 @llvm.read_register.i32(metadata !285) #11
  %and.i.i.i.i.i.i.i = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %45, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !305
  %46 = tail call i32 @llvm.read_register.i32(metadata !285) #11
  %and.i.i.i1.i.i.i.i = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i.i1.i.i.i.i to ptr
  %task.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %task.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %task.i.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %49, i32 0, i32 213
  %50 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %pagefault_disabled.i.i.i.i.i.i, align 8
  %inc.i.i.i.i.i.i = add i32 %51, 1
  store i32 %inc.i.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !306
  %call.i.i.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %40, i32 noundef %or.i.i.i) #11
  %and42 = lshr i32 %bitnr, 5
  %div3.i.i = and i32 %and42, 1023
  %arrayidx.i.i84 = getelementptr i32, ptr %call.i.i.i.i, i32 %div3.i.i
  %52 = ptrtoint ptr %arrayidx.i.i84 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %arrayidx.i.i84, align 4
  %xor.i = and i32 %bitnr, 31
  %and.i.i85 = xor i32 %xor.i, 24
  %54 = lshr i32 %53, %and.i.i85
  %55 = and i32 %54, 1
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i.i.i) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !307
  %56 = tail call i32 @llvm.read_register.i32(metadata !285) #11
  %and.i.i.i1.i.i.i = and i32 %56, -16384
  %57 = inttoptr i32 %and.i.i.i1.i.i.i to ptr
  %task.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %task.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %task.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %59, i32 0, i32 213
  %60 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %pagefault_disabled.i.i.i.i.i, align 8
  %dec.i.i.i.i.i = add i32 %61, -1
  store i32 %dec.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !308
  %62 = tail call i32 @llvm.read_register.i32(metadata !285) #11
  %and.i.i.i.i.i.i = and i32 %62, -16384
  %63 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %sub.i.i.i.i = add i32 %65, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  br label %if.end58

if.else:                                          ; preds = %if.end35
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %bitnr)
  %cmp46 = icmp eq i32 %33, %bitnr
  br i1 %cmp46, label %if.else.if.end58_crit_edge, label %do.end52

if.else.if.end58_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58

do.end52:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %vdisk53 = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %66 = ptrtoint ptr %vdisk53 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %vdisk53, align 4
  %part054 = getelementptr inbounds %struct.gendisk, ptr %67, i32 0, i32 7
  %68 = ptrtoint ptr %part054 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %part054, align 4
  %bd_device55 = getelementptr inbounds %struct.block_device, ptr %69, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %bd_device55, ptr noundef nonnull @.str.75, i32 noundef %bitnr, i32 noundef %33) #14
  br label %if.end58

if.end58:                                         ; preds = %do.end52, %if.else.if.end58_crit_edge, %bm_bit_to_page_idx.exit
  %i.0 = phi i32 [ %55, %bm_bit_to_page_idx.exit ], [ 0, %do.end52 ], [ -1, %if.else.if.end58_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bm_lock, i32 noundef %call28) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end58, %do.end14, %do.end
  %retval.0 = phi i32 [ %i.0, %if.end58 ], [ 0, %do.end14 ], [ 0, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drbd_bm_count_bits(ptr nocapture noundef readonly %device, i32 noundef %s, i32 noundef %e) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bitmap = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 63
  %0 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bitmap, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %vdisk = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %2 = ptrtoint ptr %vdisk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdisk, align 4
  %part0 = getelementptr inbounds %struct.gendisk, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %part0, align 4
  %bd_device = getelementptr inbounds %struct.block_device, ptr %5, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %bd_device, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.77) #14
  br label %cleanup

if.end6:                                          ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %tobool8.not = icmp eq ptr %7, null
  br i1 %tobool8.not, label %do.end14, label %do.body26

do.end14:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %vdisk15 = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %8 = ptrtoint ptr %vdisk15 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vdisk15, align 4
  %part016 = getelementptr inbounds %struct.gendisk, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %part016 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %part016, align 4
  %bd_device17 = getelementptr inbounds %struct.block_device, ptr %11, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %bd_device17, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.77) #14
  br label %cleanup

do.body26:                                        ; preds = %if.end6
  %bm_lock = getelementptr inbounds %struct.drbd_bitmap, ptr %1, i32 0, i32 1
  %call28 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bm_lock) #11
  %bm_flags = getelementptr inbounds %struct.drbd_bitmap, ptr %1, i32 0, i32 11
  %12 = ptrtoint ptr %bm_flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bm_flags, align 8
  %and = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool33.not = icmp eq i32 %and, 0
  br i1 %tobool33.not, label %do.body26.if.end35_crit_edge, label %if.then34

do.body26.if.end35_crit_edge:                     ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

if.then34:                                        ; preds = %do.body26
  %14 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bitmap, align 4
  %call.i = tail call i32 @___ratelimit(ptr noundef nonnull @drbd_ratelimit_state, ptr noundef nonnull @__func__.__bm_print_lock_info) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then34.if.end35_crit_edge, label %do.end.i

if.then34.if.end35_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

do.end.i:                                         ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #13
  %vdisk.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %16 = ptrtoint ptr %vdisk.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vdisk.i, align 4
  %part0.i = getelementptr inbounds %struct.gendisk, ptr %17, i32 0, i32 7
  %18 = ptrtoint ptr %part0.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %part0.i, align 4
  %bd_device.i = getelementptr inbounds %struct.block_device, ptr %19, i32 0, i32 10
  %20 = tail call i32 @llvm.read_register.i32(metadata !285) #11
  %and.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task.i, align 8
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 101
  %pid.i.i = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 68
  %24 = ptrtoint ptr %pid.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pid.i.i, align 8
  %bm_why.i = getelementptr inbounds %struct.drbd_bitmap, ptr %15, i32 0, i32 12
  %26 = ptrtoint ptr %bm_why.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bm_why.i, align 4
  %tobool5.not.i = icmp eq ptr %27, null
  %..str.9.i = select i1 %tobool5.not.i, ptr @.str.9, ptr %27
  %bm_task.i = getelementptr inbounds %struct.drbd_bitmap, ptr %15, i32 0, i32 13
  %28 = ptrtoint ptr %bm_task.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bm_task.i, align 8
  %comm6.i = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 101
  %pid.i13.i = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 68
  %30 = ptrtoint ptr %pid.i13.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pid.i13.i, align 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %bd_device.i, ptr noundef nonnull @.str.148, ptr noundef %comm.i, i32 noundef %25, ptr noundef nonnull @.str.77, ptr noundef %..str.9.i, ptr noundef %comm6.i, i32 noundef %31) #14
  br label %if.end35

if.end35:                                         ; preds = %do.end.i, %if.then34.if.end35_crit_edge, %do.body26.if.end35_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %s, i32 %e)
  %cmp36.not126 = icmp ugt i32 %s, %e
  br i1 %cmp36.not126, label %if.end35.if.end79_crit_edge, label %for.body.lr.ph

if.end35.if.end79_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end79

for.body.lr.ph:                                   ; preds = %if.end35
  %bm_number_of_pages.i = getelementptr inbounds %struct.drbd_bitmap, ptr %1, i32 0, i32 7
  %bm_bits = getelementptr inbounds %struct.drbd_bitmap, ptr %1, i32 0, i32 5
  %vdisk57 = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  br label %for.body

for.body:                                         ; preds = %if.end76.for.body_crit_edge, %for.body.lr.ph
  %p_addr.0131 = phi ptr [ null, %for.body.lr.ph ], [ %p_addr.1, %if.end76.for.body_crit_edge ]
  %c.0130 = phi i32 [ 0, %for.body.lr.ph ], [ %c.1, %if.end76.for.body_crit_edge ]
  %page_nr.0129 = phi i32 [ -1, %for.body.lr.ph ], [ %page_nr.1, %if.end76.for.body_crit_edge ]
  %bitnr.0127 = phi i32 [ %s, %for.body.lr.ph ], [ %inc, %if.end76.for.body_crit_edge ]
  %32 = lshr i32 %bitnr.0127, 15
  %33 = ptrtoint ptr %bm_number_of_pages.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %bm_number_of_pages.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %32)
  %cmp.not.i = icmp ugt i32 %34, %32
  br i1 %cmp.not.i, label %bm_bit_to_page_idx.exit, label %do.body3.i, !prof !297

do.body3.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/block/drbd/drbd_bitmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 308, 0\0A.popsection", ""() #11, !srcloc !313
  unreachable

bm_bit_to_page_idx.exit:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %page_nr.0129, i32 %32)
  %cmp40.not = icmp eq i32 %page_nr.0129, %32
  br i1 %cmp40.not, label %bm_bit_to_page_idx.exit.if.end47_crit_edge, label %if.then42

bm_bit_to_page_idx.exit.if.end47_crit_edge:       ; preds = %bm_bit_to_page_idx.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47

if.then42:                                        ; preds = %bm_bit_to_page_idx.exit
  %tobool43.not = icmp eq ptr %p_addr.0131, null
  br i1 %tobool43.not, label %if.then42.if.end45_crit_edge, label %if.then44

if.then42.if.end45_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45

if.then44:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kunmap_local_indexed(ptr noundef nonnull %p_addr.0131) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !307
  %35 = tail call i32 @llvm.read_register.i32(metadata !285) #11
  %and.i.i.i1.i.i.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i1.i.i.i to ptr
  %task.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %task.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %task.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %38, i32 0, i32 213
  %39 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pagefault_disabled.i.i.i.i.i, align 8
  %dec.i.i.i.i.i = add i32 %40, -1
  store i32 %dec.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !308
  %41 = tail call i32 @llvm.read_register.i32(metadata !285) #11
  %and.i.i.i.i.i.i = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %sub.i.i.i.i = add i32 %44, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %if.then42.if.end45_crit_edge
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %1, align 8
  %arrayidx.i.i = getelementptr ptr, ptr %46, i32 %32
  %47 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %49 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i.i = or i32 %49, 512
  %50 = tail call i32 @llvm.read_register.i32(metadata !285) #11
  %and.i.i.i.i.i.i.i = and i32 %50, -16384
  %51 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %53, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !305
  %54 = tail call i32 @llvm.read_register.i32(metadata !285) #11
  %and.i.i.i1.i.i.i.i = and i32 %54, -16384
  %55 = inttoptr i32 %and.i.i.i1.i.i.i.i to ptr
  %task.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %task.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %task.i.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %57, i32 0, i32 213
  %58 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %pagefault_disabled.i.i.i.i.i.i, align 8
  %inc.i.i.i.i.i.i = add i32 %59, 1
  store i32 %inc.i.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !306
  %call.i.i.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %48, i32 noundef %or.i.i.i) #11
  br label %if.end47

if.end47:                                         ; preds = %if.end45, %bm_bit_to_page_idx.exit.if.end47_crit_edge
  %page_nr.1 = phi i32 [ %32, %if.end45 ], [ %page_nr.0129, %bm_bit_to_page_idx.exit.if.end47_crit_edge ]
  %p_addr.1 = phi ptr [ %call.i.i.i.i, %if.end45 ], [ %p_addr.0131, %bm_bit_to_page_idx.exit.if.end47_crit_edge ]
  %60 = ptrtoint ptr %bm_bits to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %bm_bits, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %bitnr.0127, i32 %61)
  %cmp49 = icmp ult i32 %bitnr.0127, %61
  br i1 %cmp49, label %if.then65.critedge, label %do.end56

do.end56:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  %62 = ptrtoint ptr %vdisk57 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %vdisk57, align 4
  %part058 = getelementptr inbounds %struct.gendisk, ptr %63, i32 0, i32 7
  %64 = ptrtoint ptr %part058 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %part058, align 4
  %bd_device59 = getelementptr inbounds %struct.block_device, ptr %65, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %bd_device59, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.77) #14
  %66 = ptrtoint ptr %vdisk57 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %vdisk57, align 4
  %part073 = getelementptr inbounds %struct.gendisk, ptr %67, i32 0, i32 7
  %68 = ptrtoint ptr %part073 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %part073, align 4
  %bd_device74 = getelementptr inbounds %struct.block_device, ptr %69, i32 0, i32 10
  %70 = ptrtoint ptr %bm_bits to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %bm_bits, align 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %bd_device74, ptr noundef nonnull @.str.84, i32 noundef %bitnr.0127, i32 noundef %71) #14
  br label %if.end76

if.then65.critedge:                               ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  %shl.neg = mul i32 %page_nr.1, -32768
  %sub = add i32 %shl.neg, %bitnr.0127
  %div3.i.i = lshr i32 %sub, 5
  %arrayidx.i.i115 = getelementptr i32, ptr %p_addr.1, i32 %div3.i.i
  %72 = ptrtoint ptr %arrayidx.i.i115 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %arrayidx.i.i115, align 4
  %xor.i = and i32 %sub, 31
  %and.i.i116 = xor i32 %xor.i, 24
  %74 = lshr i32 %73, %and.i.i116
  %75 = and i32 %74, 1
  %add = add i32 %75, %c.0130
  br label %if.end76

if.end76:                                         ; preds = %if.then65.critedge, %do.end56
  %c.1 = phi i32 [ %add, %if.then65.critedge ], [ %c.0130, %do.end56 ]
  %inc = add i32 %bitnr.0127, 1
  %cmp36.not = icmp ugt i32 %inc, %e
  br i1 %cmp36.not, label %for.end, label %if.end76.for.body_crit_edge

if.end76.for.body_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %if.end76
  %tobool77.not = icmp eq ptr %p_addr.1, null
  br i1 %tobool77.not, label %for.end.if.end79_crit_edge, label %if.then78

for.end.if.end79_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end79

if.then78:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kunmap_local_indexed(ptr noundef nonnull %p_addr.1) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !307
  %76 = tail call i32 @llvm.read_register.i32(metadata !285) #11
  %and.i.i.i1.i.i.i117 = and i32 %76, -16384
  %77 = inttoptr i32 %and.i.i.i1.i.i.i117 to ptr
  %task.i.i.i.i.i118 = getelementptr inbounds %struct.thread_info, ptr %77, i32 0, i32 2
  %78 = ptrtoint ptr %task.i.i.i.i.i118 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %task.i.i.i.i.i118, align 8
  %pagefault_disabled.i.i.i.i.i119 = getelementptr inbounds %struct.task_struct, ptr %79, i32 0, i32 213
  %80 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i119 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %pagefault_disabled.i.i.i.i.i119, align 8
  %dec.i.i.i.i.i120 = add i32 %81, -1
  store i32 %dec.i.i.i.i.i120, ptr %pagefault_disabled.i.i.i.i.i119, align 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !308
  %82 = tail call i32 @llvm.read_register.i32(metadata !285) #11
  %and.i.i.i.i.i.i121 = and i32 %82, -16384
  %83 = inttoptr i32 %and.i.i.i.i.i.i121 to ptr
  %preempt_count.i.i.i.i.i122 = getelementptr inbounds %struct.thread_info, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %preempt_count.i.i.i.i.i122 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %preempt_count.i.i.i.i.i122, align 4
  %sub.i.i.i.i123 = add i32 %85, -1
  store volatile i32 %sub.i.i.i.i123, ptr %preempt_count.i.i.i.i.i122, align 4
  br label %if.end79

if.end79:                                         ; preds = %if.then78, %for.end.if.end79_crit_edge, %if.end35.if.end79_crit_edge
  %c.0.lcssa136 = phi i32 [ %c.1, %if.then78 ], [ %c.1, %for.end.if.end79_crit_edge ], [ 0, %if.end35.if.end79_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bm_lock, i32 noundef %call28) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end79, %do.end14, %do.end
  %retval.0 = phi i32 [ %c.0.lcssa136, %if.end79 ], [ 1, %do.end14 ], [ 1, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drbd_bm_e_weight(ptr nocapture noundef readonly %device, i32 noundef %enr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bitmap = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 63
  %0 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bitmap, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %vdisk = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %2 = ptrtoint ptr %vdisk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdisk, align 4
  %part0 = getelementptr inbounds %struct.gendisk, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %part0, align 4
  %bd_device = getelementptr inbounds %struct.block_device, ptr %5, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %bd_device, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.86) #14
  br label %cleanup

if.end6:                                          ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %tobool8.not = icmp eq ptr %7, null
  br i1 %tobool8.not, label %do.end14, label %do.body26

do.end14:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %vdisk15 = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %8 = ptrtoint ptr %vdisk15 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vdisk15, align 4
  %part016 = getelementptr inbounds %struct.gendisk, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %part016 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %part016, align 4
  %bd_device17 = getelementptr inbounds %struct.block_device, ptr %11, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %bd_device17, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.86) #14
  br label %cleanup

do.body26:                                        ; preds = %if.end6
  %bm_lock = getelementptr inbounds %struct.drbd_bitmap, ptr %1, i32 0, i32 1
  %call28 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bm_lock) #11
  %bm_flags = getelementptr inbounds %struct.drbd_bitmap, ptr %1, i32 0, i32 11
  %12 = ptrtoint ptr %bm_flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bm_flags, align 8
  %and = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool33.not = icmp eq i32 %and, 0
  br i1 %tobool33.not, label %do.body26.if.end35_crit_edge, label %if.then34

do.body26.if.end35_crit_edge:                     ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

if.then34:                                        ; preds = %do.body26
  %14 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bitmap, align 4
  %call.i = tail call i32 @___ratelimit(ptr noundef nonnull @drbd_ratelimit_state, ptr noundef nonnull @__func__.__bm_print_lock_info) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then34.if.end35_crit_edge, label %do.end.i

if.then34.if.end35_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

do.end.i:                                         ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #13
  %vdisk.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %16 = ptrtoint ptr %vdisk.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vdisk.i, align 4
  %part0.i = getelementptr inbounds %struct.gendisk, ptr %17, i32 0, i32 7
  %18 = ptrtoint ptr %part0.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %part0.i, align 4
  %bd_device.i = getelementptr inbounds %struct.block_device, ptr %19, i32 0, i32 10
  %20 = tail call i32 @llvm.read_register.i32(metadata !285) #11
  %and.i.i87 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i87 to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task.i, align 8
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 101
  %pid.i.i = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 68
  %24 = ptrtoint ptr %pid.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pid.i.i, align 8
  %bm_why.i = getelementptr inbounds %struct.drbd_bitmap, ptr %15, i32 0, i32 12
  %26 = ptrtoint ptr %bm_why.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bm_why.i, align 4
  %tobool5.not.i = icmp eq ptr %27, null
  %..str.9.i = select i1 %tobool5.not.i, ptr @.str.9, ptr %27
  %bm_task.i = getelementptr inbounds %struct.drbd_bitmap, ptr %15, i32 0, i32 13
  %28 = ptrtoint ptr %bm_task.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bm_task.i, align 8
  %comm6.i = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 101
  %pid.i13.i = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 68
  %30 = ptrtoint ptr %pid.i13.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pid.i13.i, align 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %bd_device.i, ptr noundef nonnull @.str.148, ptr noundef %comm.i, i32 noundef %25, ptr noundef nonnull @.str.86, ptr noundef %..str.9.i, ptr noundef %comm6.i, i32 noundef %31) #14
  br label %if.end35

if.end35:                                         ; preds = %do.end.i, %if.then34.if.end35_crit_edge, %do.body26.if.end35_crit_edge
  %shl = shl i32 %enr, 7
  %bm_words = getelementptr inbounds %struct.drbd_bitmap, ptr %1, i32 0, i32 6
  %32 = ptrtoint ptr %bm_words to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bm_words, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %33)
  %cmp41 = icmp ult i32 %shl, %33
  br i1 %cmp41, label %if.then43, label %do.end51

if.then43:                                        ; preds = %if.end35
  %shr.i = lshr i32 %shl, 10
  %bm_number_of_pages.i = getelementptr inbounds %struct.drbd_bitmap, ptr %1, i32 0, i32 7
  %34 = ptrtoint ptr %bm_number_of_pages.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %bm_number_of_pages.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %35)
  %cmp.not.i = icmp ult i32 %shr.i, %35
  br i1 %cmp.not.i, label %bm_word_to_page_idx.exit, label %do.body2.i, !prof !297

do.body2.i:                                       ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/block/drbd/drbd_bitmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 300, 0\0A.popsection", ""() #11, !srcloc !309
  unreachable

bm_word_to_page_idx.exit:                         ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #13
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 8
  %arrayidx.i.i = getelementptr ptr, ptr %37, i32 %shr.i
  %38 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %40 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i.i = or i32 %40, 512
  %41 = tail call i32 @llvm.read_register.i32(metadata !285) #11
  %and.i.i.i.i.i.i.i = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %44, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !305
  %45 = tail call i32 @llvm.read_register.i32(metadata !285) #11
  %and.i.i.i1.i.i.i.i = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i1.i.i.i.i to ptr
  %task.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %task.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %task.i.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %48, i32 0, i32 213
  %49 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %pagefault_disabled.i.i.i.i.i.i, align 8
  %inc.i.i.i.i.i.i = add i32 %50, 1
  store i32 %inc.i.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !306
  %call.i.i.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %39, i32 noundef %or.i.i.i) #11
  %shl36 = add i32 %shl, 128
  %51 = tail call i32 @llvm.umin.i32(i32 %shl36, i32 %33)
  %sub = sub i32 %51, %shl
  %mul = shl i32 %sub, 5
  %and46 = and i32 %shl, 896
  %add.ptr = getelementptr i32, ptr %call.i.i.i.i, i32 %and46
  %call4.i = tail call i32 @__bitmap_weight(ptr noundef %add.ptr, i32 noundef %mul) #11
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i.i.i) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !307
  %52 = tail call i32 @llvm.read_register.i32(metadata !285) #11
  %and.i.i.i1.i.i.i = and i32 %52, -16384
  %53 = inttoptr i32 %and.i.i.i1.i.i.i to ptr
  %task.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %task.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %task.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %55, i32 0, i32 213
  %56 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %pagefault_disabled.i.i.i.i.i, align 8
  %dec.i.i.i.i.i = add i32 %57, -1
  store i32 %dec.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !308
  %58 = tail call i32 @llvm.read_register.i32(metadata !285) #11
  %and.i.i.i.i.i.i = and i32 %58, -16384
  %59 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %sub.i.i.i.i = add i32 %61, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  br label %if.end55

do.end51:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  %vdisk52 = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %62 = ptrtoint ptr %vdisk52 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %vdisk52, align 4
  %part053 = getelementptr inbounds %struct.gendisk, ptr %63, i32 0, i32 7
  %64 = ptrtoint ptr %part053 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %part053, align 4
  %bd_device54 = getelementptr inbounds %struct.block_device, ptr %65, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %bd_device54, ptr noundef nonnull @.str.90, i32 noundef %shl) #14
  br label %if.end55

if.end55:                                         ; preds = %do.end51, %bm_word_to_page_idx.exit
  %count.0 = phi i32 [ %call4.i, %bm_word_to_page_idx.exit ], [ 0, %do.end51 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bm_lock, i32 noundef %call28) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %do.end14, %do.end
  %retval.0 = phi i32 [ %count.0, %if.end55 ], [ 0, %do.end14 ], [ 0, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_drbd_insert_fault(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__vmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bm_page_io_async(ptr noundef %ctx, i32 noundef %page_nr) unnamed_addr #0 align 64 {
entry:
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @bio_alloc_bioset(i32 noundef 3072, i16 noundef zeroext 1, ptr noundef nonnull @drbd_md_io_bio_set) #11
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %bitmap = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 63
  %2 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bitmap, align 4
  %flags = getelementptr inbounds %struct.drbd_bm_aio_ctx, ptr %ctx, i32 0, i32 5
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = lshr i32 %5, 3
  %and.lobit = and i32 %and, 1
  %6 = xor i32 %and.lobit, 1
  %ldev = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 15
  %7 = ptrtoint ptr %ldev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ldev, align 4
  %md = getelementptr inbounds %struct.drbd_backing_dev, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %md to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %md, align 8
  %bm_offset = getelementptr inbounds %struct.drbd_backing_dev, ptr %8, i32 0, i32 2, i32 8
  %11 = ptrtoint ptr %bm_offset to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bm_offset, align 4
  %conv = sext i32 %12 to i64
  %conv4 = sext i32 %page_nr to i64
  %shl = shl nsw i64 %conv4, 3
  %add = add i64 %10, %shl
  %add5 = add i64 %add, %conv
  %meta_dev_idx.i = getelementptr inbounds %struct.drbd_backing_dev, ptr %8, i32 0, i32 2, i32 9
  %13 = ptrtoint ptr %meta_dev_idx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %meta_dev_idx.i, align 8
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.149)
  switch i32 %14, label %sw.default.i [
    i32 -1, label %entry.sw.bb.i_crit_edge
    i32 -3, label %entry.sw.bb.i_crit_edge70
  ]

entry.sw.bb.i_crit_edge70:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i

entry.sw.bb.i_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %entry.sw.bb.i_crit_edge, %entry.sw.bb.i_crit_edge70
  %sub.i = add i64 %10, 7
  br label %drbd_md_last_sector.exit

sw.default.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %md_size_sect.i = getelementptr inbounds %struct.drbd_backing_dev, ptr %8, i32 0, i32 2, i32 6
  %16 = ptrtoint ptr %md_size_sect.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %md_size_sect.i, align 4
  %conv.i = zext i32 %17 to i64
  %add6.i = add i64 %10, -1
  %sub7.i = add i64 %add6.i, %conv.i
  br label %drbd_md_last_sector.exit

drbd_md_last_sector.exit:                         ; preds = %sw.default.i, %sw.bb.i
  %retval.0.i = phi i64 [ %sub7.i, %sw.default.i ], [ %sub.i, %sw.bb.i ]
  %sub = sub i64 %retval.0.i, %add5
  %sub.tr = trunc i64 %sub to i32
  %18 = shl i32 %sub.tr, 9
  %conv10 = add i32 %18, 512
  %19 = tail call i32 @llvm.umin.i32(i32 %conv10, i32 4096)
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %3, align 8
  %arrayidx.i = getelementptr ptr, ptr %21, i32 %page_nr
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i, align 4
  %private.i = getelementptr inbounds %struct.page, ptr %23, i32 0, i32 1, i32 0, i32 3
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 215) #11
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 31, ptr noundef %private.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %drbd_md_last_sector.exit.bm_page_lock_io.exit_crit_edge, label %if.end.i

drbd_md_last_sector.exit.bm_page_lock_io.exit_crit_edge: ; preds = %drbd_md_last_sector.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %bm_page_lock_io.exit

if.end.i:                                         ; preds = %drbd_md_last_sector.exit
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #11
  %24 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #11
  %bm_io_wait.i = getelementptr inbounds %struct.drbd_bitmap, ptr %3, i32 0, i32 10
  %call518.i = call i32 @prepare_to_wait_event(ptr noundef %bm_io_wait.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #11
  %call619.i = call i32 @_test_and_set_bit(i32 noundef 31, ptr noundef %private.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call619.i)
  %tobool7.not20.i = icmp eq i32 %call619.i, 0
  br i1 %tobool7.not20.i, label %if.end.i.for.end.i_crit_edge, label %if.end.i.cleanup.i_crit_edge

if.end.i.cleanup.i_crit_edge:                     ; preds = %if.end.i
  br label %cleanup.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

cleanup.i:                                        ; preds = %cleanup.i.cleanup.i_crit_edge, %if.end.i.cleanup.i_crit_edge
  call void @schedule() #11
  %call5.i = call i32 @prepare_to_wait_event(ptr noundef %bm_io_wait.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #11
  %call6.i = call i32 @_test_and_set_bit(i32 noundef 31, ptr noundef %private.i) #11
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %cleanup.i.for.end.i_crit_edge, label %cleanup.i.cleanup.i_crit_edge

cleanup.i.cleanup.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  call void @finish_wait(ptr noundef %bm_io_wait.i, ptr noundef nonnull %__wq_entry.i) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #11
  br label %bm_page_lock_io.exit

bm_page_lock_io.exit:                             ; preds = %for.end.i, %drbd_md_last_sector.exit.bm_page_lock_io.exit_crit_edge
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %3, align 8
  %arrayidx = getelementptr ptr, ptr %26, i32 %page_nr
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx, align 4
  %private.i63 = getelementptr inbounds %struct.page, ptr %28, i32 0, i32 1, i32 0, i32 3
  call void @_clear_bit(i32 noundef 29, ptr noundef %private.i63) #11
  call void @_clear_bit(i32 noundef 28, ptr noundef %private.i63) #11
  %29 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags, align 4
  %and14 = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.else, label %if.then

if.then:                                          ; preds = %bm_page_lock_io.exit
  %call16 = call noalias ptr @mempool_alloc(ptr noundef nonnull @drbd_md_io_page_pool, i32 noundef 3074) #11
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %3, align 8
  %arrayidx18 = getelementptr ptr, ptr %32, i32 %page_nr
  %33 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx18, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %35 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i = or i32 %35, 512
  %call.i.i64 = call ptr @__kmap_local_page_prot(ptr noundef %34, i32 noundef %or.i.i) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %36 = load i32, ptr @pgprot_kernel, align 4
  %or.i13.i = or i32 %36, 512
  %call.i14.i = call ptr @__kmap_local_page_prot(ptr noundef %call16, i32 noundef %or.i13.i) #11
  call void @copy_page(ptr noundef %call.i14.i, ptr noundef %call.i.i64) #11
  call void @kunmap_local_indexed(ptr noundef %call.i14.i) #11
  call void @kunmap_local_indexed(ptr noundef %call.i.i64) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %page_nr)
  %cmp.not.i = icmp ult i32 %page_nr, 16777216
  br i1 %cmp.not.i, label %bm_store_page_idx.exit, label %do.body2.i, !prof !297

do.body2.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/block/drbd/drbd_bitmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 199, 0\0A.popsection", ""() #11, !srcloc !304
  unreachable

bm_store_page_idx.exit:                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %private1.i.i = getelementptr inbounds %struct.page, ptr %call16, i32 0, i32 1, i32 0, i32 3
  %37 = ptrtoint ptr %private1.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %page_nr, ptr %private1.i.i, align 4
  br label %if.end

if.else:                                          ; preds = %bm_page_lock_io.exit
  call void @__sanitizer_cov_trace_pc() #13
  %38 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %3, align 8
  %arrayidx20 = getelementptr ptr, ptr %39, i32 %page_nr
  %40 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx20, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %bm_store_page_idx.exit
  %page.0 = phi ptr [ %call16, %bm_store_page_idx.exit ], [ %41, %if.else ]
  %42 = ptrtoint ptr %ldev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ldev, align 4
  %md_bdev = getelementptr inbounds %struct.drbd_backing_dev, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %md_bdev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %md_bdev, align 4
  %bi_flags.i.i = getelementptr inbounds %struct.bio, ptr %call, i32 0, i32 3
  %46 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %bi_flags.i.i, align 4
  %conv1.i.i = and i16 %47, -2049
  store i16 %conv1.i.i, ptr %bi_flags.i.i, align 4
  %bi_bdev.i = getelementptr inbounds %struct.bio, ptr %call, i32 0, i32 1
  %48 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bi_bdev.i, align 4
  %cmp.not.i65 = icmp eq ptr %49, %45
  br i1 %cmp.not.i65, label %if.end.bio_set_dev.exit_crit_edge, label %if.then.i

if.end.bio_set_dev.exit_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %bio_set_dev.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %conv1.i8.i = and i16 %47, -2177
  %50 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %conv1.i8.i, ptr %bi_flags.i.i, align 4
  br label %bio_set_dev.exit

bio_set_dev.exit:                                 ; preds = %if.then.i, %if.end.bio_set_dev.exit_crit_edge
  %51 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %45, ptr %bi_bdev.i, align 4
  call void @bio_associate_blkg(ptr noundef %call) #11
  %bi_iter = getelementptr inbounds %struct.bio, ptr %call, i32 0, i32 8
  %52 = ptrtoint ptr %bi_iter to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %add5, ptr %bi_iter, align 8
  %call22 = call i32 @bio_add_page(ptr noundef %call, ptr noundef %page.0, i32 noundef %19, i32 noundef 0) #11
  %bi_private = getelementptr inbounds %struct.bio, ptr %call, i32 0, i32 11
  %53 = ptrtoint ptr %bi_private to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %ctx, ptr %bi_private, align 4
  %bi_end_io = getelementptr inbounds %struct.bio, ptr %call, i32 0, i32 10
  %54 = ptrtoint ptr %bi_end_io to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @drbd_bm_endio, ptr %bi_end_io, align 8
  %bi_opf.i = getelementptr inbounds %struct.bio, ptr %call, i32 0, i32 2
  %55 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %6, ptr %bi_opf.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @drbd_fault_rate to i32))
  %56 = load i32, ptr @drbd_fault_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool.not.i67 = icmp eq i32 %56, 0
  br i1 %tobool.not.i67, label %bio_set_dev.exit.if.else29_crit_edge, label %land.lhs.true.i

bio_set_dev.exit.if.else29_crit_edge:             ; preds = %bio_set_dev.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else29

land.lhs.true.i:                                  ; preds = %bio_set_dev.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @drbd_enable_faults to i32))
  %57 = load i32, ptr @drbd_enable_faults, align 4
  %shl.i = shl nuw i32 1, %and.lobit
  %and.i = and i32 %57, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.else29_crit_edge, label %drbd_insert_fault.exit

land.lhs.true.i.if.else29_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else29

drbd_insert_fault.exit:                           ; preds = %land.lhs.true.i
  %call.i68 = call i32 @_drbd_insert_fault(ptr noundef %1, i32 noundef %and.lobit) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i68)
  %tobool2.i.not = icmp eq i32 %call.i68, 0
  br i1 %tobool2.i.not, label %drbd_insert_fault.exit.if.else29_crit_edge, label %if.then28

drbd_insert_fault.exit.if.else29_crit_edge:       ; preds = %drbd_insert_fault.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else29

if.then28:                                        ; preds = %drbd_insert_fault.exit
  call void @__sanitizer_cov_trace_pc() #13
  %bi_status.i = getelementptr inbounds %struct.bio, ptr %call, i32 0, i32 6
  %58 = ptrtoint ptr %bi_status.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 10, ptr %bi_status.i, align 2
  call void @bio_endio(ptr noundef %call) #11
  br label %if.end30

if.else29:                                        ; preds = %drbd_insert_fault.exit.if.else29_crit_edge, %land.lhs.true.i.if.else29_crit_edge, %bio_set_dev.exit.if.else29_crit_edge
  call void @submit_bio(ptr noundef %call) #11
  %shr = lshr exact i32 %19, 9
  %rs_sect_ev = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 97
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %rs_sect_ev, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %rs_sect_ev, i32 1, i32 3, i32 1) #11
  %59 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rs_sect_ev, ptr %rs_sect_ev, i32 %shr, ptr elementtype(i32) %rs_sect_ev) #11, !srcloc !298
  br label %if.end30

if.end30:                                         ; preds = %if.else29, %if.then28
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_until_done_or_force_detached(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kref_put(ptr noundef %kref) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !316
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #11, !srcloc !317
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.return_crit_edge, label %if.then10.i.i.i, !prof !297

if.end5.i.i.i.return_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #11
  br label %return

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !318
  %add.ptr.i = getelementptr i8, ptr %kref, i32 -32
  %1 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr.i, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %req_lock.i = getelementptr inbounds %struct.drbd_resource, ptr %4, i32 0, i32 12
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %req_lock.i) #11
  %list.i = getelementptr i8, ptr %kref, i32 -28
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.drbd_bm_aio_ctx_destroy.exit_crit_edge

if.then.drbd_bm_aio_ctx_destroy.exit_crit_edge:   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %drbd_bm_aio_ctx_destroy.exit

if.end.i.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr i8, ptr %kref, i32 -24
  %5 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i.i, align 4
  %7 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %drbd_bm_aio_ctx_destroy.exit

drbd_bm_aio_ctx_destroy.exit:                     ; preds = %if.end.i.i.i, %if.then.drbd_bm_aio_ctx_destroy.exit_crit_edge
  %11 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %list.i, align 4
  %prev.i.i = getelementptr i8, ptr %kref, i32 -24
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 8
  %req_lock8.i = getelementptr inbounds %struct.drbd_resource, ptr %16, i32 0, i32 12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %req_lock8.i, i32 noundef %call3.i) #11
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr.i, align 4
  tail call fastcc void @put_ldev(ptr noundef %18) #11
  tail call void @kfree(ptr noundef %add.ptr.i) #11
  br label %return

return:                                           ; preds = %drbd_bm_aio_ctx_destroy.exit, %if.then10.i.i.i, %if.end5.i.i.i.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ppsize(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bio_alloc_bioset(i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @mempool_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bio_add_page(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @drbd_bm_endio(ptr noundef %bio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_private = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 11
  %0 = ptrtoint ptr %bi_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_private, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %bitmap = getelementptr inbounds %struct.drbd_device, ptr %3, i32 0, i32 63
  %4 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bitmap, align 4
  %bi_flags.i.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 3
  %6 = ptrtoint ptr %bi_flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %bi_flags.i.i.i, align 4
  %8 = and i16 %7, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp.i.not.i.i = icmp eq i16 %8, 0
  br i1 %cmp.i.not.i.i, label %entry.bio_first_page_all.exit_crit_edge, label %land.rhs.i.i

entry.bio_first_page_all.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %bio_first_page_all.exit

land.rhs.i.i:                                     ; preds = %entry
  %.b38.i.i = load i1, ptr @bio_first_bvec_all.__already_done, align 1
  br i1 %.b38.i.i, label %land.rhs.i.i.bio_first_page_all.exit_crit_edge, label %if.then.i.i, !prof !297

land.rhs.i.i.bio_first_page_all.exit_crit_edge:   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bio_first_page_all.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @bio_first_bvec_all.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.129, i32 noundef 248, i32 noundef 9, ptr noundef null) #11
  br label %bio_first_page_all.exit

bio_first_page_all.exit:                          ; preds = %if.then.i.i, %land.rhs.i.i.bio_first_page_all.exit_crit_edge, %entry.bio_first_page_all.exit_crit_edge
  %bi_io_vec.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 20
  %9 = ptrtoint ptr %bi_io_vec.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bi_io_vec.i.i, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %private.i = getelementptr inbounds %struct.page, ptr %12, i32 0, i32 1, i32 0, i32 3
  %13 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %private.i, align 4
  %and.i = and i32 %14, 16777215
  %flags = getelementptr inbounds %struct.drbd_bm_aio_ctx, ptr %1, i32 0, i32 5
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags, align 4
  %and = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %land.lhs.true, label %bio_first_page_all.exit.if.end_crit_edge

bio_first_page_all.exit.if.end_crit_edge:         ; preds = %bio_first_page_all.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %bio_first_page_all.exit
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %5, align 8
  %arrayidx = getelementptr ptr, ptr %18, i32 %and.i
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx, align 4
  %private.i71 = getelementptr inbounds %struct.page, ptr %20, i32 0, i32 1, i32 0, i32 3
  %21 = ptrtoint ptr %private.i71 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %private.i71, align 4
  %and.i72 = and i32 %22, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i72)
  %cmp.i.not = icmp eq i32 %and.i72, 0
  br i1 %cmp.i.not, label %land.lhs.true.if.end_crit_edge, label %do.end

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %vdisk = getelementptr inbounds %struct.drbd_device, ptr %3, i32 0, i32 18
  %23 = ptrtoint ptr %vdisk to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %vdisk, align 4
  %part0 = getelementptr inbounds %struct.gendisk, ptr %24, i32 0, i32 7
  %25 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %part0, align 4
  %bd_device = getelementptr inbounds %struct.block_device, ptr %26, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.7, ptr noundef %bd_device, ptr noundef nonnull @.str.123, i32 noundef %and.i) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %land.lhs.true.if.end_crit_edge, %bio_first_page_all.exit.if.end_crit_edge
  %bi_status = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 6
  %27 = ptrtoint ptr %bi_status to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %bi_status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool4.not = icmp eq i8 %28, 0
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end
  %call7 = tail call i32 @blk_status_to_errno(i8 noundef zeroext %28) #11
  %error = getelementptr inbounds %struct.drbd_bm_aio_ctx, ptr %1, i32 0, i32 6
  %29 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call7, ptr %error, align 4
  %30 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %5, align 8
  %arrayidx9 = getelementptr ptr, ptr %31, i32 %and.i
  %32 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx9, align 4
  %private.i73 = getelementptr inbounds %struct.page, ptr %33, i32 0, i32 1, i32 0, i32 3
  tail call void @_set_bit(i32 noundef 30, ptr noundef %private.i73) #11
  %call10 = tail call i32 @___ratelimit(ptr noundef nonnull @drbd_ratelimit_state, ptr noundef nonnull @.str.124) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then5.if.end35_crit_edge, label %do.end15

if.then5.if.end35_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

do.end15:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  %vdisk16 = getelementptr inbounds %struct.drbd_device, ptr %3, i32 0, i32 18
  %34 = ptrtoint ptr %vdisk16 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %vdisk16, align 4
  %part017 = getelementptr inbounds %struct.gendisk, ptr %35, i32 0, i32 7
  %36 = ptrtoint ptr %part017 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %part017, align 4
  %bd_device18 = getelementptr inbounds %struct.block_device, ptr %37, i32 0, i32 10
  %38 = ptrtoint ptr %bi_status to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %bi_status, align 2
  %conv = zext i8 %39 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %bd_device18, ptr noundef nonnull @.str.126, i32 noundef %conv, i32 noundef %and.i) #14
  br label %if.end35

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %40 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %5, align 8
  %arrayidx22 = getelementptr ptr, ptr %41, i32 %and.i
  %42 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx22, align 4
  %private.i74 = getelementptr inbounds %struct.page, ptr %43, i32 0, i32 1, i32 0, i32 3
  tail call void @_clear_bit(i32 noundef 30, ptr noundef %private.i74) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @drbd_bm_endio.__UNIQUE_ID_ddebug631, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@drbd_bm_endio, %if.then28)) #11
          to label %if.end35 [label %if.then28], !srcloc !310

if.then28:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %vdisk29 = getelementptr inbounds %struct.drbd_device, ptr %3, i32 0, i32 18
  %44 = ptrtoint ptr %vdisk29 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %vdisk29, align 4
  %part030 = getelementptr inbounds %struct.gendisk, ptr %45, i32 0, i32 7
  %46 = ptrtoint ptr %part030 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %part030, align 4
  %bd_device31 = getelementptr inbounds %struct.block_device, ptr %47, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @drbd_bm_endio.__UNIQUE_ID_ddebug631, ptr noundef %bd_device31, ptr noundef nonnull @.str.128, i32 noundef %and.i) #11
  br label %if.end35

if.end35:                                         ; preds = %if.then28, %if.else, %do.end15, %if.then5.if.end35_crit_edge
  %48 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bitmap, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 8
  %arrayidx.i = getelementptr ptr, ptr %51, i32 %and.i
  %52 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx.i, align 4
  %private.i75 = getelementptr inbounds %struct.page, ptr %53, i32 0, i32 1, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %private.i75, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !319
  tail call void @llvm.prefetch.p0(ptr %private.i75, i32 1, i32 3, i32 1) #11
  %54 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %private.i75, ptr %private.i75, i32 -2147483648, ptr elementtype(i32) %private.i75) #11, !srcloc !320
  %55 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %bitmap, align 4
  %bm_io_wait.i = getelementptr inbounds %struct.drbd_bitmap, ptr %56, i32 0, i32 10
  tail call void @__wake_up(ptr noundef %bm_io_wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  %57 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %flags, align 4
  %and37 = and i32 %58, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end35.if.end41_crit_edge, label %if.then39

if.end35.if.end41_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

if.then39:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  %59 = ptrtoint ptr %bi_io_vec.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %bi_io_vec.i.i, align 8
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %60, align 4
  tail call void @mempool_free(ptr noundef %62, ptr noundef nonnull @drbd_md_io_page_pool) #11
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %if.end35.if.end41_crit_edge
  tail call void @bio_put(ptr noundef %bio) #11
  %in_flight = getelementptr inbounds %struct.drbd_bm_aio_ctx, ptr %1, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %in_flight, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !299
  tail call void @llvm.prefetch.p0(ptr %in_flight, i32 1, i32 3, i32 1) #11
  %63 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %in_flight, ptr %in_flight, i32 1, ptr elementtype(i32) %in_flight) #11, !srcloc !300
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %63, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !301
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then43, label %if.end41.if.end45_crit_edge

if.end41.if.end45_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45

if.then43:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  %done = getelementptr inbounds %struct.drbd_bm_aio_ctx, ptr %1, i32 0, i32 4
  %64 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 1, ptr %done, align 4
  %misc_wait = getelementptr inbounds %struct.drbd_device, ptr %3, i32 0, i32 28
  tail call void @__wake_up(ptr noundef %misc_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  %kref = getelementptr inbounds %struct.drbd_bm_aio_ctx, ptr %1, i32 0, i32 7
  tail call fastcc void @kref_put(ptr noundef %kref)
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.end41.if.end45_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @submit_bio(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @copy_page(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_associate_blkg(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_status_to_errno(i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_endio(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_drbd_set_state(ptr noundef, [1 x i32], i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 140)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 140)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !14, !16, !17, !18, !20, !21, !22, !23, !25, !26, !27, !29, !30, !31, !32, !34, !35, !37, !38, !40, !41, !43, !44, !45, !46, !47, !49, !50, !51, !53, !54, !55, !56, !58, !60, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !107, !108, !109, !111, !112, !114, !115, !116, !118, !119, !120, !122, !123, !125, !126, !127, !129, !130, !132, !133, !134, !136, !137, !139, !140, !141, !143, !144, !145, !147, !148, !150, !151, !152, !154, !155, !156, !158, !159, !160, !162, !163, !165, !166, !167, !169, !170, !171, !172, !174, !175, !176, !177, !178, !180, !182, !183, !184, !185, !187, !188, !189, !191, !192, !193, !194, !196, !197, !198, !200, !201, !203, !204, !205, !206, !207, !209, !210, !211, !212, !214, !215, !216, !218, !219, !220, !222, !223, !224, !225, !227, !228, !229, !231, !232, !234, !235, !237, !238, !240, !242, !243, !244, !246, !247, !248, !250, !251, !252, !254, !255, !257, !258, !259, !261, !262, !264, !265, !266, !267, !269, !270, !271, !273, !274, !276, !277, !278, !279, !281, !283, !284}
!llvm.named.register.sp = !{!285}
!llvm.module.flags = !{!286, !287, !288, !289, !290, !291, !292, !293}
!llvm.ident = !{!294}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/block/drbd/drbd_bitmap.c", i32 130, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @drbd_bm_lock._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @drbd_bm_lock._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/block/drbd/drbd_bitmap.c", i32 137, i32 3}
!10 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @drbd_bm_lock._entry.5, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @drbd_bm_lock._entry_ptr.8, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.9, !9, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.11, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/block/drbd/drbd_bitmap.c", i32 144, i32 3}
!16 = !{ptr @drbd_bm_lock._entry.10, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @drbd_bm_lock._entry_ptr.12, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/block/drbd/drbd_bitmap.c", i32 155, i32 3}
!20 = !{ptr @.str.14, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @drbd_bm_unlock._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @drbd_bm_unlock._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.16, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/block/drbd/drbd_bitmap.c", i32 160, i32 3}
!25 = !{ptr @drbd_bm_unlock._entry.15, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @drbd_bm_unlock._entry_ptr.17, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.18, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/block/drbd/drbd_bitmap.c", i32 259, i32 3}
!29 = !{ptr @.str.19, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @drbd_bm_mark_for_writeout._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @drbd_bm_mark_for_writeout._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @drbd_bm_init.__key, !33, !"__key", i1 false, i1 false}
!33 = !{!"../drivers/block/drbd/drbd_bitmap.c", i32 440, i32 2}
!34 = !{ptr @.str.20, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @drbd_bm_init.__key.21, !36, !"__key", i1 false, i1 false}
!36 = !{!"../drivers/block/drbd/drbd_bitmap.c", i32 441, i32 2}
!37 = !{ptr @.str.22, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @drbd_bm_init.__key.23, !39, !"__key", i1 false, i1 false}
!39 = !{!"../drivers/block/drbd/drbd_bitmap.c", i32 442, i32 2}
!40 = !{ptr @.str.24, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.25, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/block/drbd/drbd_bitmap.c", i32 451, i32 7}
!43 = !{ptr @.str.26, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @drbd_bm_capacity._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @drbd_bm_capacity._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.27, !42, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.28, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/block/drbd/drbd_bitmap.c", i32 460, i32 7}
!49 = !{ptr @drbd_bm_cleanup._entry, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @drbd_bm_cleanup._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.29, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/block/drbd/drbd_bitmap.c", i32 639, i32 7}
!53 = !{ptr @drbd_bm_resize._entry, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @drbd_bm_resize._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.30, !52, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.31, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/block/drbd/drbd_bitmap.c", i32 642, i32 23}
!58 = !{ptr @.str.33, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/block/drbd/drbd_bitmap.c", i32 644, i32 2}
!60 = !{ptr @.str.34, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @drbd_bm_resize._entry.32, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @drbd_bm_resize._entry_ptr.35, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.37, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/block/drbd/drbd_bitmap.c", i32 679, i32 4}
!65 = !{ptr @drbd_bm_resize._entry.36, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @drbd_bm_resize._entry_ptr.38, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.40, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/block/drbd/drbd_bitmap.c", i32 680, i32 4}
!69 = !{ptr @drbd_bm_resize._entry.39, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @drbd_bm_resize._entry_ptr.41, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.43, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/block/drbd/drbd_bitmap.c", i32 689, i32 3}
!73 = !{ptr @drbd_bm_resize._entry.42, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @drbd_bm_resize._entry_ptr.44, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.46, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/block/drbd/drbd_bitmap.c", i32 739, i32 2}
!77 = !{ptr @drbd_bm_resize._entry.45, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @drbd_bm_resize._entry_ptr.47, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.48, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/block/drbd/drbd_bitmap.c", i32 760, i32 7}
!81 = !{ptr @_drbd_bm_total_weight._entry, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @_drbd_bm_total_weight._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @_drbd_bm_total_weight._entry.49, !84, !"_entry", i1 false, i1 false}
!84 = !{!"../drivers/block/drbd/drbd_bitmap.c", i32 762, i32 7}
!85 = !{ptr @_drbd_bm_total_weight._entry_ptr.50, !84, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.51, !84, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.52, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/block/drbd/drbd_bitmap.c", i32 786, i32 7}
!89 = !{ptr @drbd_bm_words._entry, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @drbd_bm_words._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @drbd_bm_words._entry.53, !92, !"_entry", i1 false, i1 false}
!92 = !{!"../drivers/block/drbd/drbd_bitmap.c", i32 788, i32 7}
!93 = !{ptr @drbd_bm_words._entry_ptr.54, !92, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.55, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/block/drbd/drbd_bitmap.c", i32 797, i32 7}
!96 = !{ptr @drbd_bm_bits._entry, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @drbd_bm_bits._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.56, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/block/drbd/drbd_bitmap.c", i32 819, i32 7}
!100 = !{ptr @drbd_bm_merge_lel._entry, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @drbd_bm_merge_lel._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @drbd_bm_merge_lel._entry.57, !103, !"_entry", i1 false, i1 false}
!103 = !{!"../drivers/block/drbd/drbd_bitmap.c", i32 821, i32 7}
!104 = !{ptr @drbd_bm_merge_lel._entry_ptr.58, !103, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.59, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/block/drbd/drbd_bitmap.c", i32 866, i32 7}
!107 = !{ptr @drbd_bm_get_lel._entry, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @drbd_bm_get_lel._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @drbd_bm_get_lel._entry.60, !110, !"_entry", i1 false, i1 false}
!110 = !{!"../drivers/block/drbd/drbd_bitmap.c", i32 868, i32 7}
!111 = !{ptr @drbd_bm_get_lel._entry_ptr.61, !110, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.63, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/block/drbd/drbd_bitmap.c", i32 875, i32 3}
!114 = !{ptr @drbd_bm_get_lel._entry.62, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @drbd_bm_get_lel._entry_ptr.64, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.65, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/block/drbd/drbd_bitmap.c", i32 897, i32 7}
!118 = !{ptr @drbd_bm_set_all._entry, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @drbd_bm_set_all._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @drbd_bm_set_all._entry.66, !121, !"_entry", i1 false, i1 false}
!121 = !{!"../drivers/block/drbd/drbd_bitmap.c", i32 899, i32 7}
!122 = !{ptr @drbd_bm_set_all._entry_ptr.67, !121, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.68, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/block/drbd/drbd_bitmap.c", i32 913, i32 7}
!125 = !{ptr @drbd_bm_clear_all._entry, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @drbd_bm_clear_all._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @drbd_bm_clear_all._entry.69, !128, !"_entry", i1 false, i1 false}
!128 = !{!"../drivers/block/drbd/drbd_bitmap.c", i32 915, i32 7}
!129 = !{ptr @drbd_bm_clear_all._entry_ptr.70, !128, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.71, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/block/drbd/drbd_bitmap.c", i32 1551, i32 7}
!132 = !{ptr @drbd_bm_test_bit._entry, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @drbd_bm_test_bit._entry_ptr, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @drbd_bm_test_bit._entry.72, !135, !"_entry", i1 false, i1 false}
!135 = !{!"../drivers/block/drbd/drbd_bitmap.c", i32 1553, i32 7}
!136 = !{ptr @drbd_bm_test_bit._entry_ptr.73, !135, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.75, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/block/drbd/drbd_bitmap.c", i32 1566, i32 3}
!139 = !{ptr @drbd_bm_test_bit._entry.74, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @drbd_bm_test_bit._entry_ptr.76, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.77, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/block/drbd/drbd_bitmap.c", i32 1588, i32 7}
!143 = !{ptr @drbd_bm_count_bits._entry, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @drbd_bm_count_bits._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @drbd_bm_count_bits._entry.78, !146, !"_entry", i1 false, i1 false}
!146 = !{!"../drivers/block/drbd/drbd_bitmap.c", i32 1590, i32 7}
!147 = !{ptr @drbd_bm_count_bits._entry_ptr.79, !146, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @drbd_bm_count_bits._entry.80, !149, !"_entry", i1 false, i1 false}
!149 = !{!"../drivers/block/drbd/drbd_bitmap.c", i32 1604, i32 7}
!150 = !{ptr @drbd_bm_count_bits._entry_ptr.81, !149, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.82, !149, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @.str.84, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/block/drbd/drbd_bitmap.c", i32 1607, i32 4}
!154 = !{ptr @drbd_bm_count_bits._entry.83, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @drbd_bm_count_bits._entry_ptr.85, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.86, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/block/drbd/drbd_bitmap.c", i32 1637, i32 7}
!158 = !{ptr @drbd_bm_e_weight._entry, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @drbd_bm_e_weight._entry_ptr, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @drbd_bm_e_weight._entry.87, !161, !"_entry", i1 false, i1 false}
!161 = !{!"../drivers/block/drbd/drbd_bitmap.c", i32 1639, i32 7}
!162 = !{ptr @drbd_bm_e_weight._entry_ptr.88, !161, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.90, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/block/drbd/drbd_bitmap.c", i32 1656, i32 3}
!165 = !{ptr @drbd_bm_e_weight._entry.89, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @drbd_bm_e_weight._entry_ptr.91, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.92, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/block/drbd/drbd_bitmap.c", i32 361, i32 4}
!169 = !{ptr @.str.93, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @bm_free_pages._entry, !168, !"_entry", i1 false, i1 false}
!171 = !{ptr @bm_free_pages._entry_ptr, !168, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.94, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/block/drbd/drbd_int.h", i32 2099, i32 2}
!174 = !{ptr @.str.95, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @.str.96, !173, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @put_ldev._entry, !173, !"_entry", i1 false, i1 false}
!177 = !{ptr @put_ldev._entry_ptr, !173, !"_entry_ptr", i1 false, i1 false}
!178 = distinct !{null, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!180 = !{ptr @.str.98, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/block/drbd/drbd_bitmap.c", i32 591, i32 3}
!182 = !{ptr @.str.99, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @bm_memset._entry, !181, !"_entry", i1 false, i1 false}
!184 = !{ptr @bm_memset._entry_ptr, !181, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.101, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/block/drbd/drbd_bitmap.c", i32 601, i32 4}
!187 = !{ptr @bm_memset._entry.100, !186, !"_entry", i1 false, i1 false}
!188 = !{ptr @bm_memset._entry_ptr.102, !186, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.103, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/block/drbd/drbd_bitmap.c", i32 1064, i32 3}
!191 = !{ptr @.str.104, !190, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @bm_rw._entry, !190, !"_entry", i1 false, i1 false}
!193 = !{ptr @bm_rw._entry_ptr, !190, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.105, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/block/drbd/drbd_bitmap.c", i32 1116, i32 5}
!196 = !{ptr @.str.106, !195, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @bm_rw.__UNIQUE_ID_ddebug634, !195, !"__UNIQUE_ID_ddebug634", i1 false, i1 false}
!198 = !{ptr @.str.107, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/block/drbd/drbd_bitmap.c", i32 1123, i32 5}
!200 = !{ptr @bm_rw.__UNIQUE_ID_ddebug635, !199, !"__UNIQUE_ID_ddebug635", i1 false, i1 false}
!201 = !{ptr @.str.109, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/block/drbd/drbd_bitmap.c", i32 1150, i32 4}
!203 = !{ptr @bm_rw._entry.108, !202, !"_entry", i1 false, i1 false}
!204 = !{ptr @bm_rw._entry_ptr.110, !202, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.111, !202, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @.str.112, !202, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @.str.114, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/block/drbd/drbd_bitmap.c", i32 1157, i32 3}
!209 = !{ptr @.str.115, !208, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @bm_rw._entry.113, !208, !"_entry", i1 false, i1 false}
!211 = !{ptr @bm_rw._entry_ptr.116, !208, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.118, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/block/drbd/drbd_bitmap.c", i32 1168, i32 3}
!214 = !{ptr @bm_rw._entry.117, !213, !"_entry", i1 false, i1 false}
!215 = !{ptr @bm_rw._entry_ptr.119, !213, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.121, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/block/drbd/drbd_bitmap.c", i32 1174, i32 3}
!218 = !{ptr @bm_rw._entry.120, !217, !"_entry", i1 false, i1 false}
!219 = !{ptr @bm_rw._entry_ptr.122, !217, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.123, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/block/drbd/drbd_bitmap.c", i32 946, i32 3}
!222 = !{ptr @.str.124, !221, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @drbd_bm_endio._entry, !221, !"_entry", i1 false, i1 false}
!224 = !{ptr @drbd_bm_endio._entry_ptr, !221, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @.str.126, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/block/drbd/drbd_bitmap.c", i32 956, i32 4}
!227 = !{ptr @drbd_bm_endio._entry.125, !226, !"_entry", i1 false, i1 false}
!228 = !{ptr @drbd_bm_endio._entry_ptr.127, !226, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @.str.128, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/block/drbd/drbd_bitmap.c", i32 960, i32 3}
!231 = !{ptr @drbd_bm_endio.__UNIQUE_ID_ddebug631, !230, !"__UNIQUE_ID_ddebug631", i1 false, i1 false}
!232 = distinct !{null, !233, !"__already_done", i1 false, i1 false}
!233 = !{!"../include/linux/bio.h", i32 248, i32 2}
!234 = !{ptr @.str.129, !233, !"<string literal>", i1 false, i1 false}
!235 = distinct !{null, !236, !"__warned", i1 false, i1 false}
!236 = !{!"../drivers/block/drbd/drbd_int.h", i32 1722, i32 7}
!237 = !{ptr @.str.130, !236, !"<string literal>", i1 false, i1 false}
!238 = !{ptr @__func__.__drbd_chk_io_error_, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/block/drbd/drbd_int.h", i32 1727, i32 8}
!240 = !{ptr @.str.131, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/block/drbd/drbd_int.h", i32 1728, i32 5}
!242 = !{ptr @__drbd_chk_io_error_._entry, !241, !"_entry", i1 false, i1 false}
!243 = !{ptr @__drbd_chk_io_error_._entry_ptr, !241, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @.str.133, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/block/drbd/drbd_int.h", i32 1763, i32 4}
!246 = !{ptr @__drbd_chk_io_error_._entry.132, !245, !"_entry", i1 false, i1 false}
!247 = !{ptr @__drbd_chk_io_error_._entry_ptr.134, !245, !"_entry_ptr", i1 false, i1 false}
!248 = distinct !{null, !249, !"__warned", i1 false, i1 false}
!249 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!250 = !{ptr @.str.135, !249, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @.str.136, !249, !"<string literal>", i1 false, i1 false}
!252 = distinct !{null, !253, !"__warned", i1 false, i1 false}
!253 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!254 = !{ptr @.str.137, !253, !"<string literal>", i1 false, i1 false}
!255 = !{ptr @.str.138, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/block/drbd/drbd_bitmap.c", i32 1301, i32 7}
!257 = !{ptr @bm_find_next._entry, !256, !"_entry", i1 false, i1 false}
!258 = !{ptr @bm_find_next._entry_ptr, !256, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @bm_find_next._entry.139, !260, !"_entry", i1 false, i1 false}
!260 = !{!"../drivers/block/drbd/drbd_bitmap.c", i32 1303, i32 7}
!261 = !{ptr @bm_find_next._entry_ptr.140, !260, !"_entry_ptr", i1 false, i1 false}
!262 = !{ptr @.str.141, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/block/drbd/drbd_bitmap.c", i32 1265, i32 3}
!264 = !{ptr @.str.142, !263, !"<string literal>", i1 false, i1 false}
!265 = !{ptr @__bm_find_next._entry, !263, !"_entry", i1 false, i1 false}
!266 = !{ptr @__bm_find_next._entry_ptr, !263, !"_entry_ptr", i1 false, i1 false}
!267 = !{ptr @.str.143, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/block/drbd/drbd_bitmap.c", i32 1405, i32 7}
!269 = !{ptr @bm_change_bits_to._entry, !268, !"_entry", i1 false, i1 false}
!270 = !{ptr @bm_change_bits_to._entry_ptr, !268, !"_entry_ptr", i1 false, i1 false}
!271 = !{ptr @bm_change_bits_to._entry.144, !272, !"_entry", i1 false, i1 false}
!272 = !{!"../drivers/block/drbd/drbd_bitmap.c", i32 1407, i32 7}
!273 = !{ptr @bm_change_bits_to._entry_ptr.145, !272, !"_entry_ptr", i1 false, i1 false}
!274 = !{ptr @.str.146, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/block/drbd/drbd_bitmap.c", i32 1360, i32 3}
!276 = !{ptr @.str.147, !275, !"<string literal>", i1 false, i1 false}
!277 = !{ptr @__bm_change_bits_to._entry, !275, !"_entry", i1 false, i1 false}
!278 = !{ptr @__bm_change_bits_to._entry_ptr, !275, !"_entry_ptr", i1 false, i1 false}
!279 = !{ptr @__func__.__bm_print_lock_info, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/block/drbd/drbd_bitmap.c", i32 116, i32 7}
!281 = !{ptr @.str.148, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/block/drbd/drbd_bitmap.c", i32 118, i32 2}
!283 = !{ptr @__bm_print_lock_info._entry, !282, !"_entry", i1 false, i1 false}
!284 = !{ptr @__bm_print_lock_info._entry_ptr, !282, !"_entry_ptr", i1 false, i1 false}
!285 = !{!"sp"}
!286 = !{i32 1, !"wchar_size", i32 2}
!287 = !{i32 1, !"min_enum_size", i32 4}
!288 = !{i32 8, !"branch-target-enforcement", i32 0}
!289 = !{i32 8, !"sign-return-address", i32 0}
!290 = !{i32 8, !"sign-return-address-all", i32 0}
!291 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!292 = !{i32 7, !"uwtable", i32 1}
!293 = !{i32 7, !"frame-pointer", i32 2}
!294 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!295 = !{!"branch_weights", i32 1, i32 2000}
!296 = !{i64 2159570333, i64 2159570830, i64 2159570370, i64 2159570426, i64 2159570460, i64 2159570484, i64 2159570525, i64 2159570546, i64 2159570574, i64 2159570608}
!297 = !{!"branch_weights", i32 2000, i32 1}
!298 = !{i64 2148229927, i64 2148229953, i64 2148229982, i64 2148230016, i64 2148230047, i64 2148230070}
!299 = !{i64 2148318379}
!300 = !{i64 2148233112, i64 2148233144, i64 2148233173, i64 2148233207, i64 2148233238, i64 2148233261}
!301 = !{i64 2148318608}
!302 = !{i64 2159583895, i64 2159584392, i64 2159583932, i64 2159583988, i64 2159584022, i64 2159584046, i64 2159584087, i64 2159584108, i64 2159584136, i64 2159584170}
!303 = !{i64 2159585576, i64 2159586073, i64 2159585613, i64 2159585669, i64 2159585703, i64 2159585727, i64 2159585768, i64 2159585789, i64 2159585817, i64 2159585851}
!304 = !{i64 2159555047, i64 2159555544, i64 2159555084, i64 2159555140, i64 2159555174, i64 2159555198, i64 2159555239, i64 2159555260, i64 2159555288, i64 2159555322}
!305 = !{i64 2153691571}
!306 = !{i64 2152648806}
!307 = !{i64 2152649013}
!308 = !{i64 2153694342}
!309 = !{i64 2159572635, i64 2159573132, i64 2159572672, i64 2159572728, i64 2159572762, i64 2159572786, i64 2159572827, i64 2159572848, i64 2159572876, i64 2159572910}
!310 = !{i64 2148900278, i64 2148900283, i64 2148900296, i64 2148900340, i64 2148900374, i64 2148900395}
!311 = !{i64 2149289789}
!312 = !{i64 2149290055}
!313 = !{i64 2159574297, i64 2159578855, i64 2159574334, i64 2159574390, i64 2159574424, i64 2159574448, i64 2159574489, i64 2159574510, i64 2159574538, i64 2159574572}
!314 = distinct !{!314, !315}
!315 = !{!"llvm.loop.peeled.count", i32 1}
!316 = !{i64 2148319458}
!317 = !{i64 2148233922, i64 2148233954, i64 2148233983, i64 2148234017, i64 2148234048, i64 2148234071}
!318 = !{i64 2150015358}
!319 = !{i64 2148326753}
!320 = !{i64 2148237172, i64 2148237204, i64 2148237233, i64 2148237267, i64 2148237298, i64 2148237321}
