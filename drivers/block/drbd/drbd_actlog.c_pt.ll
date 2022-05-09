; ModuleID = '/llk/IR_all_yes/drivers/block/drbd/drbd_actlog.c_pt.bc'
source_filename = "../drivers/block/drbd/drbd_actlog.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.bio_list = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.drbd_backing_dev = type { ptr, ptr, %struct.drbd_md, ptr, i64 }
%struct.drbd_md = type { i64, i64, %struct.spinlock, [4 x i64], i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.disk_conf = type { [128 x i8], i32, [128 x i8], i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8 }
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
%struct.drbd_resource = type { ptr, ptr, ptr, ptr, ptr, %struct.kref, %struct.idr, %struct.list_head, %struct.list_head, %struct.res_opts, %struct.mutex, %struct.mutex, %struct.spinlock, i8, i32, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.res_opts = type { [32 x i8], i32, i32 }
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
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.132, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.132 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.drbd_interval = type { %struct.rb_node, i64, i32, i64, i8 }
%struct.lc_element = type { %struct.hlist_node, %struct.list_head, i32, i32, i32, i32 }
%struct.lru_cache = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.al_transaction_on_disk = type { i32, i32, i32, i16, i16, i16, i16, [4 x i32], [64 x i16], [64 x i32], [919 x i32] }
%struct.drbd_peer_device = type { %struct.list_head, ptr, ptr, %struct.work_struct, ptr }
%struct.drbd_connection = type { %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.idr, i32, %struct.mutex, i32, i32, ptr, %struct.wait_queue_head, %struct.__kernel_sockaddr_storage, i32, %struct.__kernel_sockaddr_storage, i32, %struct.drbd_socket, %struct.drbd_socket, i32, i32, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.blk_plug, %struct.drbd_thread, %struct.drbd_thread, %struct.drbd_thread, ptr, ptr, ptr, ptr, %struct.drbd_work_queue, i32, i32, [16 x %struct.drbd_thread_timing_details], [16 x %struct.drbd_thread_timing_details], %struct.anon.196 }
%struct.__kernel_sockaddr_storage = type { %union.anon.192 }
%union.anon.192 = type { ptr, [124 x i8] }
%struct.drbd_socket = type { %struct.mutex, ptr, ptr, ptr }
%struct.blk_plug = type { ptr, ptr, i16, i16, i8, i8, i8, %struct.list_head }
%struct.drbd_thread = type { %struct.spinlock, ptr, %struct.completion, i32, ptr, ptr, ptr, i32, ptr }
%struct.drbd_work_queue = type { %struct.list_head, %struct.spinlock, %struct.wait_queue_head }
%struct.drbd_thread_timing_details = type { i32, ptr, ptr, i32, i32 }
%struct.anon.196 = type { i32, i8, i32, i32 }
%struct.bm_extent = type { i32, i32, i32, %struct.lc_element }

@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/block/drbd/drbd_actlog.c\00", [63 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@wait_until_done_or_force_detached.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@wait_until_done_or_force_detached._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str, i32 120, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"meta-data IO operation timed out\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"wait_until_done_or_force_detached\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@wait_until_done_or_force_detached._entry_ptr = internal global ptr @wait_until_done_or_force_detached._entry, section ".printk_index", align 4
@drbd_md_sync_page_io._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str, i32 181, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"ASSERT( atomic_read(&device->md_io.in_use) == 1 ) in %s:%d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"drbd_md_sync_page_io\00", [43 x i8] zeroinitializer }, align 32
@drbd_md_sync_page_io._entry_ptr = internal global ptr @drbd_md_sync_page_io._entry, section ".printk_index", align 4
@drbd_md_sync_page_io.__UNIQUE_ID_ddebug626 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.7, ptr @.str, ptr @.str.9, i8 0, i8 47, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"drbd\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"meta_data io: %s [%d]:%s(,%llus,%s) %pS\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"WRITE\00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"READ\00", [27 x i8] zeroinitializer }, align 32
@drbd_md_sync_page_io._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.7, ptr @.str, i32 195, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s [%d]:%s(,%llus,%s) out of range md access!\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\011\00", [29 x i8] zeroinitializer }, align 32
@drbd_md_sync_page_io._entry_ptr.15 = internal global ptr @drbd_md_sync_page_io._entry.12, section ".printk_index", align 4
@drbd_md_sync_page_io._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.7, ptr @.str, i32 201, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"drbd_md_sync_page_io(,%llus,%s) failed with error %d\0A\00", [42 x i8] zeroinitializer }, align 32
@drbd_md_sync_page_io._entry_ptr.18 = internal global ptr @drbd_md_sync_page_io._entry.16, section ".printk_index", align 4
@drbd_al_begin_io_fastpath._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str, i32 248, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ASSERT( first <= last ) in %s:%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drbd_al_begin_io_fastpath\00", [38 x i8] zeroinitializer }, align 32
@drbd_al_begin_io_fastpath._entry_ptr = internal global ptr @drbd_al_begin_io_fastpath._entry, section ".printk_index", align 4
@drbd_al_begin_io_fastpath._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str, i32 249, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"ASSERT( atomic_read(&device->local_cnt) > 0 ) in %s:%d\0A\00", [40 x i8] zeroinitializer }, align 32
@drbd_al_begin_io_fastpath._entry_ptr.23 = internal global ptr @drbd_al_begin_io_fastpath._entry.21, section ".printk_index", align 4
@drbd_al_begin_io_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.24, ptr @.str, i32 267, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drbd_al_begin_io_prepare\00", [39 x i8] zeroinitializer }, align 32
@drbd_al_begin_io_prepare._entry_ptr = internal global ptr @drbd_al_begin_io_prepare._entry, section ".printk_index", align 4
@drbd_al_begin_io_prepare._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.24, ptr @.str, i32 268, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@drbd_al_begin_io_prepare._entry_ptr.26 = internal global ptr @drbd_al_begin_io_prepare._entry.25, section ".printk_index", align 4
@drbd_al_begin_io_commit.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@drbd_al_begin_io_nonblock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.27, ptr @.str, i32 495, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drbd_al_begin_io_nonblock\00", [38 x i8] zeroinitializer }, align 32
@drbd_al_begin_io_nonblock._entry_ptr = internal global ptr @drbd_al_begin_io_nonblock._entry, section ".printk_index", align 4
@drbd_al_begin_io_nonblock._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str, i32 539, ptr @.str.30, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"LOGIC BUG for enr=%u\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@drbd_al_begin_io_nonblock._entry_ptr.31 = internal global ptr @drbd_al_begin_io_nonblock._entry.28, section ".printk_index", align 4
@drbd_al_complete_io._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.32, ptr @.str, i32 554, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"drbd_al_complete_io\00", [44 x i8] zeroinitializer }, align 32
@drbd_al_complete_io._entry_ptr = internal global ptr @drbd_al_complete_io._entry, section ".printk_index", align 4
@drbd_al_complete_io._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str, i32 560, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"al_complete_io() called on inactive extent %u\0A\00", [49 x i8] zeroinitializer }, align 32
@drbd_al_complete_io._entry_ptr.35 = internal global ptr @drbd_al_complete_io._entry.33, section ".printk_index", align 4
@drbd_al_shrink._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str, i32 596, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"ASSERT( test_bit(__LC_LOCKED, &device->act_log->flags) ) in %s:%d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"drbd_al_shrink\00", [17 x i8] zeroinitializer }, align 32
@drbd_al_shrink._entry_ptr = internal global ptr @drbd_al_shrink._entry, section ".printk_index", align 4
@__drbd_change_sync._entry = internal constant %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str, i32 861, ptr @.str.4, ptr @.str.5 }, align 1
@.str.38 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: sector=%llus size=%d nonsense!\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"__drbd_change_sync\00", [45 x i8] zeroinitializer }, align 32
@__drbd_change_sync._entry_ptr = internal global ptr @__drbd_change_sync._entry, section ".printk_index", align 4
@drbd_change_sync_fname = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.111, ptr @.str.112, ptr @.str.113], [20 x i8] zeroinitializer }, align 32
@__drbd_change_sync._entry.40 = internal constant %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str, i32 871, ptr @.str.4, ptr @.str.5 }, align 1
@.str.41 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ASSERTION %s FAILED in %s\0A\00", [37 x i8] zeroinitializer }, align 32
@__drbd_change_sync._entry_ptr.42 = internal global ptr @__drbd_change_sync._entry.40, section ".printk_index", align 4
@.str.43 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sector < nr_sectors\00", [44 x i8] zeroinitializer }, align 32
@__drbd_change_sync._entry.44 = internal constant %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str, i32 873, ptr @.str.4, ptr @.str.5 }, align 1
@__drbd_change_sync._entry_ptr.45 = internal global ptr @__drbd_change_sync._entry.44, section ".printk_index", align 4
@.str.46 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"esector < nr_sectors\00", [43 x i8] zeroinitializer }, align 32
@drbd_try_rs_begin_io._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str, i32 1047, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"ASSERT( !test_bit(BME_LOCKED, &bm_ext->flags) ) in %s:%d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"drbd_try_rs_begin_io\00", [43 x i8] zeroinitializer }, align 32
@drbd_try_rs_begin_io._entry_ptr = internal global ptr @drbd_try_rs_begin_io._entry, section ".printk_index", align 4
@drbd_try_rs_begin_io._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str, i32 1048, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"ASSERT( test_bit(BME_NO_WRITES, &bm_ext->flags) ) in %s:%d\0A\00", [36 x i8] zeroinitializer }, align 32
@drbd_try_rs_begin_io._entry_ptr.51 = internal global ptr @drbd_try_rs_begin_io._entry.49, section ".printk_index", align 4
@drbd_try_rs_begin_io._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.48, ptr @.str, i32 1057, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"LOGIC BUG\0A\00", [21 x i8] zeroinitializer }, align 32
@drbd_try_rs_begin_io._entry_ptr.54 = internal global ptr @drbd_try_rs_begin_io._entry.52, section ".printk_index", align 4
@drbd_try_rs_begin_io._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.48, ptr @.str, i32 1074, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"ASSERT( bm_ext->lce.refcnt > 0 ) in %s:%d\0A\00", [53 x i8] zeroinitializer }, align 32
@drbd_try_rs_begin_io._entry_ptr.57 = internal global ptr @drbd_try_rs_begin_io._entry.55, section ".printk_index", align 4
@drbd_try_rs_begin_io._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.48, ptr @.str, i32 1088, ptr @.str.60, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Have to wait for element (resync LRU too small?)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@drbd_try_rs_begin_io._entry_ptr.61 = internal global ptr @drbd_try_rs_begin_io._entry.58, section ".printk_index", align 4
@drbd_try_rs_begin_io._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.48, ptr @.str, i32 1097, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"ASSERT( test_bit(BME_LOCKED, &bm_ext->flags) == 0 ) in %s:%d\0A\00", [34 x i8] zeroinitializer }, align 32
@drbd_try_rs_begin_io._entry_ptr.64 = internal global ptr @drbd_try_rs_begin_io._entry.62, section ".printk_index", align 4
@drbd_try_rs_begin_io._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.48, ptr @.str, i32 1100, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"ASSERT( bm_ext->lce.refcnt == 1 ) in %s:%d\0A\00", [52 x i8] zeroinitializer }, align 32
@drbd_try_rs_begin_io._entry_ptr.67 = internal global ptr @drbd_try_rs_begin_io._entry.65, section ".printk_index", align 4
@drbd_try_rs_begin_io._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str, i32 1118, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@drbd_try_rs_begin_io._entry_ptr.69 = internal global ptr @drbd_try_rs_begin_io._entry.68, section ".printk_index", align 4
@drbd_try_rs_begin_io._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str, i32 1119, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@drbd_try_rs_begin_io._entry_ptr.71 = internal global ptr @drbd_try_rs_begin_io._entry.70, section ".printk_index", align 4
@drbd_ratelimit_state = external dso_local global %struct.ratelimit_state, align 4
@__func__.drbd_rs_complete_io = private unnamed_addr constant [20 x i8] c"drbd_rs_complete_io\00", align 1
@drbd_rs_complete_io._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @__func__.drbd_rs_complete_io, ptr @.str, i32 1147, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drbd_rs_complete_io() called, but extent not found\0A\00", [44 x i8] zeroinitializer }, align 32
@drbd_rs_complete_io._entry_ptr = internal global ptr @drbd_rs_complete_io._entry, section ".printk_index", align 4
@drbd_rs_complete_io._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @__func__.drbd_rs_complete_io, ptr @.str, i32 1155, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"drbd_rs_complete_io(,%llu [=%u]) called, but refcnt is 0!?\0A\00", [36 x i8] zeroinitializer }, align 32
@drbd_rs_complete_io._entry_ptr.75 = internal global ptr @drbd_rs_complete_io._entry.73, section ".printk_index", align 4
@drbd_rs_del_all._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str, i32 1211, ptr @.str.30, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"dropping %u in drbd_rs_del_all, apparently got 'synced' by application io\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"drbd_rs_del_all\00", [16 x i8] zeroinitializer }, align 32
@drbd_rs_del_all._entry_ptr = internal global ptr @drbd_rs_del_all._entry, section ".printk_index", align 4
@drbd_rs_del_all._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.77, ptr @.str, i32 1212, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@drbd_rs_del_all._entry_ptr.79 = internal global ptr @drbd_rs_del_all._entry.78, section ".printk_index", align 4
@drbd_rs_del_all._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.77, ptr @.str, i32 1213, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@drbd_rs_del_all._entry_ptr.81 = internal global ptr @drbd_rs_del_all._entry.80, section ".printk_index", align 4
@drbd_rs_del_all._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.77, ptr @.str, i32 1220, ptr @.str.30, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Retrying drbd_rs_del_all() later. refcnt=%d\0A\00", [51 x i8] zeroinitializer }, align 32
@drbd_rs_del_all._entry_ptr.84 = internal global ptr @drbd_rs_del_all._entry.82, section ".printk_index", align 4
@drbd_rs_del_all._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.77, ptr @.str, i32 1225, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@drbd_rs_del_all._entry_ptr.86 = internal global ptr @drbd_rs_del_all._entry.85, section ".printk_index", align 4
@drbd_rs_del_all._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.77, ptr @.str, i32 1226, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"ASSERT( !test_bit(BME_NO_WRITES, &bm_ext->flags) ) in %s:%d\0A\00", [35 x i8] zeroinitializer }, align 32
@drbd_rs_del_all._entry_ptr.89 = internal global ptr @drbd_rs_del_all._entry.87, section ".printk_index", align 4
@drbd_rs_del_all._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.77, ptr @.str, i32 1229, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"ASSERT( device->resync->used == 0 ) in %s:%d\0A\00", [50 x i8] zeroinitializer }, align 32
@drbd_rs_del_all._entry_ptr.92 = internal global ptr @drbd_rs_del_all._entry.90, section ".printk_index", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.93 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.95 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__drbd_chk_io_error_.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.96 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/block/drbd/drbd_int.h\00", [34 x i8] zeroinitializer }, align 32
@__func__.__drbd_chk_io_error_ = private unnamed_addr constant [21 x i8] c"__drbd_chk_io_error_\00", align 1
@__drbd_chk_io_error_._entry = internal constant %struct.pi_entry { ptr @.str.97, ptr @__func__.__drbd_chk_io_error_, ptr @.str.96, i32 1728, ptr @.str.4, ptr @.str.5 }, align 1
@.str.97 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Local IO failed in %s.\0A\00", [40 x i8] zeroinitializer }, align 32
@__drbd_chk_io_error_._entry_ptr = internal global ptr @__drbd_chk_io_error_._entry, section ".printk_index", align 4
@__drbd_chk_io_error_._entry.98 = internal constant %struct.pi_entry { ptr @.str.99, ptr @__func__.__drbd_chk_io_error_, ptr @.str.96, i32 1764, ptr @.str.4, ptr @.str.5 }, align 1
@.str.99 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Local IO failed in %s. Detaching...\0A\00", [59 x i8] zeroinitializer }, align 32
@__drbd_chk_io_error_._entry_ptr.100 = internal global ptr @__drbd_chk_io_error_._entry.98, section ".printk_index", align 4
@drbd_md_io_bio_set = external dso_local global %struct.bio_set, align 4
@_drbd_md_sync_page_io._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.102, ptr @.str, i32 156, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"ASSERT FAILED: get_ldev_if_state() == 1 in _drbd_md_sync_page_io()\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"_drbd_md_sync_page_io\00", [42 x i8] zeroinitializer }, align 32
@_drbd_md_sync_page_io._entry_ptr = internal global ptr @_drbd_md_sync_page_io._entry, section ".printk_index", align 4
@drbd_fault_rate = external dso_local local_unnamed_addr global i32, align 4
@drbd_enable_faults = external dso_local local_unnamed_addr global i32, align 4
@al_write_transaction._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.104, ptr @.str, i32 409, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"disk is %s, cannot start al transaction\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"al_write_transaction\00", [43 x i8] zeroinitializer }, align 32
@al_write_transaction._entry_ptr = internal global ptr @al_write_transaction._entry, section ".printk_index", align 4
@al_write_transaction._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.104, ptr @.str, i32 417, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"disk is %s, cannot write al transaction\0A\00", [55 x i8] zeroinitializer }, align 32
@al_write_transaction._entry_ptr.107 = internal global ptr @al_write_transaction._entry.105, section ".printk_index", align 4
@al_write_transaction._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.104, ptr @.str, i32 425, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"disk failed while waiting for md_io buffer\0A\00", [52 x i8] zeroinitializer }, align 32
@al_write_transaction._entry_ptr.110 = internal global ptr @al_write_transaction._entry.108, section ".printk_index", align 4
@__al_write_transaction.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__func__.__al_write_transaction = private unnamed_addr constant [23 x i8] c"__al_write_transaction\00", align 1
@.str.111 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"drbd_rs_failed_io\00", [46 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"drbd_set_out_of_sync\00", [43 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"drbd_set_in_sync\00", [47 x i8] zeroinitializer }, align 32
@update_rs_extent._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.115, ptr @.str, i32 657, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"ASSERT( atomic_read(&device->local_cnt) ) in %s:%d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"update_rs_extent\00", [47 x i8] zeroinitializer }, align 32
@update_rs_extent._entry_ptr = internal global ptr @update_rs_extent._entry, section ".printk_index", align 4
@update_rs_extent._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.115, ptr @.str, i32 684, ptr @.str.60, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"BAD! enr=%u rs_left=%d rs_failed=%d count=%d cstate=%s\0A\00", [40 x i8] zeroinitializer }, align 32
@update_rs_extent._entry_ptr.118 = internal global ptr @update_rs_extent._entry.116, section ".printk_index", align 4
@update_rs_extent._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.115, ptr @.str, i32 706, ptr @.str.60, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"changing resync lce: %d[%u;%02lx] -> %d[%u;00]\0A\00", [48 x i8] zeroinitializer }, align 32
@update_rs_extent._entry_ptr.121 = internal global ptr @update_rs_extent._entry.119, section ".printk_index", align 4
@update_rs_extent._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.115, ptr @.str, i32 712, ptr @.str.60, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Kicking resync_lru element enr=%u out with rs_failed=%d\0A\00", [39 x i8] zeroinitializer }, align 32
@update_rs_extent._entry_ptr.124 = internal global ptr @update_rs_extent._entry.122, section ".printk_index", align 4
@update_rs_extent._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.115, ptr @.str, i32 733, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"lc_get() failed! locked=%d/%d flags=%lu\0A\00", [55 x i8] zeroinitializer }, align 32
@update_rs_extent._entry_ptr.127 = internal global ptr @update_rs_extent._entry.125, section ".printk_index", align 4
@put_ldev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.129, ptr @.str.96, i32 2099, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ASSERT( i >= 0 ) in %s:%d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"put_ldev\00", [23 x i8] zeroinitializer }, align 32
@put_ldev._entry_ptr = internal global ptr @put_ldev._entry, section ".printk_index", align 4
@_bme_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.130, ptr @.str, i32 935, ptr @.str.60, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_bme_get\00", [23 x i8] zeroinitializer }, align 32
@_bme_get._entry_ptr = internal global ptr @_bme_get._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294967293, i64 4294967295]
@__sancov_gen_cov_switch_values.131 = internal global [4 x i64] [i64 2, i64 32, i64 4294967293, i64 4294967295]
@__sancov_gen_cov_switch_values.132 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.133 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.134 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 86, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 111, i32 7 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 120, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 181, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 185, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 192, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 199, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 248, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 249, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 267, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 268, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 495, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 539, i32 4 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 554, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 560, i32 4 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 596, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 859, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant [23 x i8] c"drbd_change_sync_fname\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 632, i32 20 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 871, i32 7 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 873, i32 7 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 1047, i32 4 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 1048, i32 4 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 1057, i32 4 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 1074, i32 4 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 1087, i32 5 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 1097, i32 4 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 1100, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 1118, i32 4 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 1119, i32 4 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 1147, i32 4 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 1153, i32 3 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 1209, i32 5 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 1212, i32 5 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 1213, i32 5 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 1219, i32 5 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 1225, i32 4 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 1226, i32 4 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 1229, i32 3 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 695, i32 2 }
@___asan_gen_.379 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 723, i32 2 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 1722, i32 7 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 1728, i32 5 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 1763, i32 4 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 156, i32 3 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 408, i32 3 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 415, i32 3 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 425, i32 3 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 633, i32 23 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 635, i32 22 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 634, i32 18 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 657, i32 2 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 680, i32 5 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 703, i32 5 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 710, i32 5 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 730, i32 3 }
@___asan_gen_.469 = private unnamed_addr constant [33 x i8] c"../drivers/block/drbd/drbd_int.h\00", align 1
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 2099, i32 2 }
@___asan_gen_.471 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.474 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.475 = private constant [36 x i8] c"../drivers/block/drbd/drbd_actlog.c\00", align 1
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 934, i32 4 }
@llvm.compiler.used = appending global [166 x ptr] [ptr @__drbd_change_sync._entry, ptr @__drbd_change_sync._entry.40, ptr @__drbd_change_sync._entry.44, ptr @__drbd_change_sync._entry_ptr, ptr @__drbd_change_sync._entry_ptr.42, ptr @__drbd_change_sync._entry_ptr.45, ptr @__drbd_chk_io_error_._entry, ptr @__drbd_chk_io_error_._entry.98, ptr @__drbd_chk_io_error_._entry_ptr, ptr @__drbd_chk_io_error_._entry_ptr.100, ptr @_bme_get._entry, ptr @_bme_get._entry_ptr, ptr @_drbd_md_sync_page_io._entry, ptr @_drbd_md_sync_page_io._entry_ptr, ptr @al_write_transaction._entry, ptr @al_write_transaction._entry.105, ptr @al_write_transaction._entry.108, ptr @al_write_transaction._entry_ptr, ptr @al_write_transaction._entry_ptr.107, ptr @al_write_transaction._entry_ptr.110, ptr @drbd_al_begin_io_fastpath._entry, ptr @drbd_al_begin_io_fastpath._entry.21, ptr @drbd_al_begin_io_fastpath._entry_ptr, ptr @drbd_al_begin_io_fastpath._entry_ptr.23, ptr @drbd_al_begin_io_nonblock._entry, ptr @drbd_al_begin_io_nonblock._entry.28, ptr @drbd_al_begin_io_nonblock._entry_ptr, ptr @drbd_al_begin_io_nonblock._entry_ptr.31, ptr @drbd_al_begin_io_prepare._entry, ptr @drbd_al_begin_io_prepare._entry.25, ptr @drbd_al_begin_io_prepare._entry_ptr, ptr @drbd_al_begin_io_prepare._entry_ptr.26, ptr @drbd_al_complete_io._entry, ptr @drbd_al_complete_io._entry.33, ptr @drbd_al_complete_io._entry_ptr, ptr @drbd_al_complete_io._entry_ptr.35, ptr @drbd_al_shrink._entry, ptr @drbd_al_shrink._entry_ptr, ptr @drbd_md_sync_page_io._entry, ptr @drbd_md_sync_page_io._entry.12, ptr @drbd_md_sync_page_io._entry.16, ptr @drbd_md_sync_page_io._entry_ptr, ptr @drbd_md_sync_page_io._entry_ptr.15, ptr @drbd_md_sync_page_io._entry_ptr.18, ptr @drbd_rs_complete_io._entry, ptr @drbd_rs_complete_io._entry.73, ptr @drbd_rs_complete_io._entry_ptr, ptr @drbd_rs_complete_io._entry_ptr.75, ptr @drbd_rs_del_all._entry, ptr @drbd_rs_del_all._entry.78, ptr @drbd_rs_del_all._entry.80, ptr @drbd_rs_del_all._entry.82, ptr @drbd_rs_del_all._entry.85, ptr @drbd_rs_del_all._entry.87, ptr @drbd_rs_del_all._entry.90, ptr @drbd_rs_del_all._entry_ptr, ptr @drbd_rs_del_all._entry_ptr.79, ptr @drbd_rs_del_all._entry_ptr.81, ptr @drbd_rs_del_all._entry_ptr.84, ptr @drbd_rs_del_all._entry_ptr.86, ptr @drbd_rs_del_all._entry_ptr.89, ptr @drbd_rs_del_all._entry_ptr.92, ptr @drbd_try_rs_begin_io._entry, ptr @drbd_try_rs_begin_io._entry.49, ptr @drbd_try_rs_begin_io._entry.52, ptr @drbd_try_rs_begin_io._entry.55, ptr @drbd_try_rs_begin_io._entry.58, ptr @drbd_try_rs_begin_io._entry.62, ptr @drbd_try_rs_begin_io._entry.65, ptr @drbd_try_rs_begin_io._entry.68, ptr @drbd_try_rs_begin_io._entry.70, ptr @drbd_try_rs_begin_io._entry_ptr, ptr @drbd_try_rs_begin_io._entry_ptr.51, ptr @drbd_try_rs_begin_io._entry_ptr.54, ptr @drbd_try_rs_begin_io._entry_ptr.57, ptr @drbd_try_rs_begin_io._entry_ptr.61, ptr @drbd_try_rs_begin_io._entry_ptr.64, ptr @drbd_try_rs_begin_io._entry_ptr.67, ptr @drbd_try_rs_begin_io._entry_ptr.69, ptr @drbd_try_rs_begin_io._entry_ptr.71, ptr @put_ldev._entry, ptr @put_ldev._entry_ptr, ptr @update_rs_extent._entry, ptr @update_rs_extent._entry.116, ptr @update_rs_extent._entry.119, ptr @update_rs_extent._entry.122, ptr @update_rs_extent._entry.125, ptr @update_rs_extent._entry_ptr, ptr @update_rs_extent._entry_ptr.118, ptr @update_rs_extent._entry_ptr.121, ptr @update_rs_extent._entry_ptr.124, ptr @update_rs_extent._entry_ptr.127, ptr @wait_until_done_or_force_detached._entry, ptr @wait_until_done_or_force_detached._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @drbd_change_sync_fname, ptr @.str.41, ptr @.str.43, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.60, ptr @.str.63, ptr @.str.66, ptr @.str.72, ptr @.str.74, ptr @.str.76, ptr @.str.77, ptr @.str.83, ptr @.str.88, ptr @.str.91, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.99, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.106, ptr @.str.109, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.117, ptr @.str.120, ptr @.str.123, ptr @.str.126, ptr @.str.128, ptr @.str.129, ptr @.str.130], section "llvm.metadata"
@0 = internal global [114 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wait_until_done_or_force_detached._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_md_sync_page_io._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_md_sync_page_io._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_md_sync_page_io._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_al_begin_io_fastpath._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_al_begin_io_fastpath._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_al_begin_io_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_al_begin_io_prepare._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_al_begin_io_nonblock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_al_begin_io_nonblock._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_al_complete_io._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_al_complete_io._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_al_shrink._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_change_sync_fname to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_try_rs_begin_io._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_try_rs_begin_io._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_try_rs_begin_io._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_try_rs_begin_io._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_try_rs_begin_io._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_try_rs_begin_io._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_try_rs_begin_io._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_try_rs_begin_io._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_try_rs_begin_io._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_rs_complete_io._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_rs_complete_io._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_rs_del_all._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_rs_del_all._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_rs_del_all._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_rs_del_all._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_rs_del_all._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_rs_del_all._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_rs_del_all._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_drbd_md_sync_page_io._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @al_write_transaction._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @al_write_transaction._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @al_write_transaction._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @update_rs_extent._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @update_rs_extent._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @update_rs_extent._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @update_rs_extent._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @update_rs_extent._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @put_ldev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_bme_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @drbd_md_get_buffer(ptr noundef %device, ptr noundef %intent) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 88) #10
  %in_use = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 80, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %in_use, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !248
  tail call void @llvm.prefetch.p0(ptr %in_use, i32 1, i32 3, i32 1) #10
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %entry
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %in_use, ptr %in_use, i32 0, i32 1, ptr elementtype(i32) %in_use) #10, !srcloc !249
  %asmresult.i.i.i = extractvalue { i32, i32 } %0, 0
  %tobool.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %atomic_cmpxchg.exit, label %do.body.i.i.i.do.body.i.i.i_crit_edge

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i

atomic_cmpxchg.exit:                              ; preds = %do.body.i.i.i
  %md_io = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 80
  %asmresult3.i.i.i = extractvalue { i32, i32 } %0, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !250
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult3.i.i.i)
  %cmp = icmp eq i32 %asmresult3.i.i.i, 0
  br i1 %cmp, label %atomic_cmpxchg.exit.if.end23_crit_edge, label %lor.lhs.false

atomic_cmpxchg.exit.if.end23_crit_edge:           ; preds = %atomic_cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

lor.lhs.false:                                    ; preds = %atomic_cmpxchg.exit
  %state = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 27
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %1)
  %bf.load = load i32, ptr %state, align 8
  %2 = and i32 %bf.load, 7680
  call void @__sanitizer_cov_trace_const_cmp4(i32 1536, i32 %2)
  %cmp5 = icmp ult i32 %2, 1536
  br i1 %cmp5, label %lor.lhs.false.cleanup31_crit_edge, label %if.end

lor.lhs.false.cleanup31_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup31

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #10
  %3 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #10
  %misc_wait = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 28
  br label %for.cond

for.cond:                                         ; preds = %cleanup, %if.end
  %call6 = call i32 @prepare_to_wait_event(ptr noundef %misc_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #10
  %call.i.i42 = call zeroext i1 @__kasan_check_write(ptr noundef %in_use, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !248
  call void @llvm.prefetch.p0(ptr %in_use, i32 1, i32 3, i32 1) #10
  br label %do.body.i.i.i45

do.body.i.i.i45:                                  ; preds = %do.body.i.i.i45.do.body.i.i.i45_crit_edge, %for.cond
  %4 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %in_use, ptr %in_use, i32 0, i32 1, ptr elementtype(i32) %in_use) #10, !srcloc !249
  %asmresult.i.i.i43 = extractvalue { i32, i32 } %4, 0
  %tobool.not.i.i.i44 = icmp eq i32 %asmresult.i.i.i43, 0
  br i1 %tobool.not.i.i.i44, label %atomic_cmpxchg.exit47, label %do.body.i.i.i45.do.body.i.i.i45_crit_edge

do.body.i.i.i45.do.body.i.i.i45_crit_edge:        ; preds = %do.body.i.i.i45
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i45

atomic_cmpxchg.exit47:                            ; preds = %do.body.i.i.i45
  %asmresult3.i.i.i46 = extractvalue { i32, i32 } %4, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !250
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult3.i.i.i46)
  %cmp10 = icmp eq i32 %asmresult3.i.i.i46, 0
  br i1 %cmp10, label %for.end.thread, label %lor.lhs.false11

for.end.thread:                                   ; preds = %atomic_cmpxchg.exit47
  call void @__sanitizer_cov_trace_pc() #12
  call void @finish_wait(ptr noundef %misc_wait, ptr noundef nonnull %__wq_entry) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br label %if.end23

lor.lhs.false11:                                  ; preds = %atomic_cmpxchg.exit47
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %bf.load13 = load i32, ptr %state, align 8
  %6 = and i32 %bf.load13, 7680
  %cmp16 = icmp ult i32 %6, 1536
  br i1 %cmp16, label %for.end, label %cleanup

cleanup:                                          ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #12
  call void @schedule() #10
  br label %for.cond

for.end:                                          ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #12
  call void @finish_wait(ptr noundef %misc_wait, ptr noundef nonnull %__wq_entry) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br label %cleanup31

if.end23:                                         ; preds = %for.end.thread, %atomic_cmpxchg.exit.if.end23_crit_edge
  %current_use = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 80, i32 3
  %7 = ptrtoint ptr %current_use to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %intent, ptr %current_use, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %start_jif = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 80, i32 1
  %9 = ptrtoint ptr %start_jif to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %start_jif, align 4
  %sub = add i32 %8, -1
  %submit_jif = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 80, i32 2
  %10 = ptrtoint ptr %submit_jif to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %sub, ptr %submit_jif, align 8
  %11 = ptrtoint ptr %md_io to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %md_io, align 8
  %call30 = call ptr @page_address(ptr noundef %12) #10
  br label %cleanup31

cleanup31:                                        ; preds = %if.end23, %for.end, %lor.lhs.false.cleanup31_crit_edge
  %retval.0 = phi ptr [ %call30, %if.end23 ], [ null, %for.end ], [ null, %lor.lhs.false.cleanup31_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drbd_md_put_buffer(ptr noundef %device) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %in_use = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 80, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %in_use, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @llvm.prefetch.p0(ptr %in_use, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %in_use, ptr %in_use, i32 1, ptr elementtype(i32) %in_use) #10, !srcloc !252
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !253
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %misc_wait = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 28
  tail call void @__wake_up(ptr noundef %misc_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wait_until_done_or_force_detached(ptr noundef %device, ptr noundef %bdev, ptr nocapture noundef readonly %done) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !238) #10
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !254
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.93, i32 noundef 696, ptr noundef nonnull @.str.94) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %disk_conf = getelementptr inbounds %struct.drbd_backing_dev, ptr %bdev, i32 0, i32 3
  %4 = ptrtoint ptr %disk_conf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %disk_conf, align 8
  %call = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b88 = load i1, ptr @wait_until_done_or_force_detached.__warned, align 1
  br i1 %.b88, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @wait_until_done_or_force_detached.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 111, ptr noundef nonnull @.str.1) #10
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %disk_timeout = getelementptr inbounds %struct.disk_conf, ptr %5, i32 0, i32 17
  %6 = ptrtoint ptr %disk_timeout to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %disk_timeout, align 4
  %call.i91 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i91, label %do.end7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i94

do.end7.rcu_read_unlock.exit_crit_edge:           ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i94:                                ; preds = %do.end7
  %call1.i92 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i92)
  %tobool.not.i93 = icmp eq i32 %call1.i92, 0
  br i1 %tobool.not.i93, label %land.lhs.true.i94.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i96

land.lhs.true.i94.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i94
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i96:                               ; preds = %land.lhs.true.i94
  %.b4.i95 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i95, label %land.lhs.true2.i96.rcu_read_unlock.exit_crit_edge, label %if.then.i97

land.lhs.true2.i96.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i96
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i97:                                      ; preds = %land.lhs.true2.i96
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.93, i32 noundef 724, ptr noundef nonnull @.str.95) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i97, %land.lhs.true2.i96.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i94.rcu_read_unlock.exit_crit_edge, %do.end7.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !255
  %8 = tail call i32 @llvm.read_register.i32(metadata !238) #10
  %and.i.i.i.i.i98 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i98 to ptr
  %preempt_count.i.i.i.i99 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i99 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i99, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i99, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  %mul = mul i32 %7, 100
  %div = sdiv i32 %mul, 10
  %mul.off = add i32 %mul, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %mul.off)
  %12 = icmp ult i32 %mul.off, 19
  %spec.store.select = select i1 %12, i32 2147483647, i32 %div
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 118) #10
  %13 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %done, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool17.not = icmp eq i32 %14, 0
  br i1 %tobool17.not, label %lor.end, label %rcu_read_unlock.exit.if.end68_crit_edge

rcu_read_unlock.exit.if.end68_crit_edge:          ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

lor.end:                                          ; preds = %rcu_read_unlock.exit
  %flags = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 14
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %flags, align 4
  %17 = and i32 %16, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool19.not = icmp eq i32 %17, 0
  br i1 %tobool19.not, label %18, label %lor.end.if.end68_crit_edge

lor.end.if.end68_crit_edge:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

18:                                               ; preds = %lor.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select)
  %tobool28.not = icmp eq i32 %spec.store.select, 0
  br i1 %tobool28.not, label %.do.end67_crit_edge, label %if.then31

.do.end67_crit_edge:                              ; preds = %18
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then31:                                        ; preds = %18
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #10
  %19 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #10
  %misc_wait = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 28
  %call33123 = call i32 @prepare_to_wait_event(ptr noundef %misc_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #10
  %20 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %done, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool35.not124 = icmp eq i32 %21, 0
  br i1 %tobool35.not124, label %if.then31.lor.end40_crit_edge, label %if.then31.if.end61.thread132_crit_edge

if.then31.if.end61.thread132_crit_edge:           ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end61.thread132

if.then31.lor.end40_crit_edge:                    ; preds = %if.then31
  br label %lor.end40

lor.end40:                                        ; preds = %cleanup.lor.end40_crit_edge, %if.then31.lor.end40_crit_edge
  %__ret32.0125 = phi i32 [ %call58, %cleanup.lor.end40_crit_edge ], [ %spec.store.select, %if.then31.lor.end40_crit_edge ]
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %flags, align 4
  %24 = and i32 %23, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool39.not = icmp eq i32 %24, 0
  br i1 %tobool39.not, label %25, label %lor.end40.if.end61.thread132_crit_edge

lor.end40.if.end61.thread132_crit_edge:           ; preds = %lor.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end61.thread132

25:                                               ; preds = %lor.end40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret32.0125)
  %tobool51.not = icmp eq i32 %__ret32.0125, 0
  br i1 %tobool51.not, label %if.end61, label %cleanup

cleanup:                                          ; preds = %25
  %call58 = call i32 @schedule_timeout(i32 noundef %__ret32.0125) #10
  %call33 = call i32 @prepare_to_wait_event(ptr noundef %misc_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #10
  %26 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %done, align 4
  %tobool35.not = icmp eq i32 %27, 0
  br i1 %tobool35.not, label %cleanup.lor.end40_crit_edge, label %cleanup.if.end61.thread132_crit_edge

cleanup.if.end61.thread132_crit_edge:             ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end61.thread132

cleanup.lor.end40_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.end40

if.end61.thread132:                               ; preds = %cleanup.if.end61.thread132_crit_edge, %lor.end40.if.end61.thread132_crit_edge, %if.then31.if.end61.thread132_crit_edge
  call void @finish_wait(ptr noundef %misc_wait, ptr noundef nonnull %__wq_entry) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br label %if.end68

if.end61:                                         ; preds = %25
  call void @__sanitizer_cov_trace_pc() #12
  call void @finish_wait(ptr noundef %misc_wait, ptr noundef nonnull %__wq_entry) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br label %do.end67

do.end67:                                         ; preds = %if.end61, %.do.end67_crit_edge
  %vdisk = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %28 = ptrtoint ptr %vdisk to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %vdisk, align 4
  %part0 = getelementptr inbounds %struct.gendisk, ptr %29, i32 0, i32 7
  %30 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %part0, align 4
  %bd_device = getelementptr inbounds %struct.block_device, ptr %31, i32 0, i32 10
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %bd_device, ptr noundef nonnull @.str.2) #13
  call fastcc void @drbd_chk_io_error_(ptr noundef %device, i32 noundef 3, ptr noundef nonnull @.str.3)
  br label %if.end68

if.end68:                                         ; preds = %do.end67, %if.end61.thread132, %lor.end.if.end68_crit_edge, %rcu_read_unlock.exit.if.end68_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @drbd_chk_io_error_(ptr noundef %device, i32 noundef %forcedetach, ptr noundef %where) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 8
  %req_lock = getelementptr inbounds %struct.drbd_resource, ptr %1, i32 0, i32 12
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %req_lock) #10
  %2 = tail call i32 @llvm.read_register.i32(metadata !238) #10
  %and.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !254
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.93, i32 noundef 696, ptr noundef nonnull @.str.94) #10
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %ldev.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 15
  %6 = ptrtoint ptr %ldev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ldev.i, align 4
  %disk_conf.i = getelementptr inbounds %struct.drbd_backing_dev, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %disk_conf.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %disk_conf.i, align 8
  %call.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end7.i_crit_edge

rcu_read_lock.exit.i.do.end7.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end7.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b80.i = load i1, ptr @__drbd_chk_io_error_.__warned, align 1
  br i1 %.b80.i, label %land.lhs.true4.i.do.end7.i_crit_edge, label %if.then.i

land.lhs.true4.i.do.end7.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__drbd_chk_io_error_.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.96, i32 noundef 1722, ptr noundef nonnull @.str.1) #10
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then.i, %land.lhs.true4.i.do.end7.i_crit_edge, %land.lhs.true.i.do.end7.i_crit_edge, %rcu_read_lock.exit.i.do.end7.i_crit_edge
  %on_io_error.i = getelementptr inbounds %struct.disk_conf, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %on_io_error.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %on_io_error.i, align 4
  %call.i81.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i81.i, label %do.end7.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i84.i

do.end7.i.rcu_read_unlock.exit.i_crit_edge:       ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit.i

land.lhs.true.i84.i:                              ; preds = %do.end7.i
  %call1.i82.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i82.i)
  %tobool.not.i83.i = icmp eq i32 %call1.i82.i, 0
  br i1 %tobool.not.i83.i, label %land.lhs.true.i84.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i86.i

land.lhs.true.i84.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i84.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i86.i:                             ; preds = %land.lhs.true.i84.i
  %.b4.i85.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i85.i, label %land.lhs.true2.i86.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i87.i

land.lhs.true2.i86.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i86.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit.i

if.then.i87.i:                                    ; preds = %land.lhs.true2.i86.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.93, i32 noundef 724, ptr noundef nonnull @.str.95) #10
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i87.i, %land.lhs.true2.i86.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i84.i.rcu_read_unlock.exit.i_crit_edge, %do.end7.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !255
  %12 = tail call i32 @llvm.read_register.i32(metadata !238) #10
  %and.i.i.i.i.i88.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i88.i to ptr
  %preempt_count.i.i.i.i89.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i89.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i89.i, align 4
  %sub.i.i.i.i = add i32 %15, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i89.i, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %switch.i = icmp ult i32 %11, 3
  br i1 %switch.i, label %sw.bb30.i, label %rcu_read_unlock.exit.i.__drbd_chk_io_error_.exit_crit_edge

rcu_read_unlock.exit.i.__drbd_chk_io_error_.exit_crit_edge: ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__drbd_chk_io_error_.exit

sw.bb30.i:                                        ; preds = %rcu_read_unlock.exit.i
  %flags.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 14
  tail call void @_set_bit(i32 noundef 10, ptr noundef %flags.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %forcedetach)
  %cmp35.i = icmp eq i32 %forcedetach, 3
  br i1 %cmp35.i, label %if.then36.i, label %sw.bb30.i.if.end38.i_crit_edge

sw.bb30.i.if.end38.i_crit_edge:                   ; preds = %sw.bb30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38.i

if.then36.i:                                      ; preds = %sw.bb30.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef 12, ptr noundef %flags.i) #10
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.then36.i, %sw.bb30.i.if.end38.i_crit_edge
  %state39.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 27
  %16 = ptrtoint ptr %state39.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %bf.load40.i = load i32, ptr %state39.i, align 8
  %17 = and i32 %bf.load40.i, 7680
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %17)
  %cmp43.i = icmp ugt i32 %17, 1024
  br i1 %cmp43.i, label %if.then44.i, label %if.end38.i.__drbd_chk_io_error_.exit_crit_edge

if.end38.i.__drbd_chk_io_error_.exit_crit_edge:   ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__drbd_chk_io_error_.exit

if.then44.i:                                      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %device, align 8
  %susp.i.i = getelementptr inbounds %struct.drbd_resource, ptr %19, i32 0, i32 13
  %20 = ptrtoint ptr %susp.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load.i.i = load i8, ptr %susp.i.i, align 4
  %bf.lshr.i.i = lshr i8 %bf.load.i.i, 7
  %bf.cast.i.i = zext i8 %bf.lshr.i.i to i32
  %bf.shl.i.i = shl nuw nsw i32 %bf.cast.i.i, 17
  %bf.clear.i.i = and i32 %bf.load40.i, -6430209
  %bf.set.i.i = or i32 %bf.shl.i.i, %bf.clear.i.i
  %bf.lshr4.i.i = lshr i8 %bf.load.i.i, 6
  %bf.value8.i.i = zext i8 %bf.lshr4.i.i to i32
  %bf.shl9.i.i = shl nuw nsw i32 %bf.value8.i.i, 21
  %bf.lshr13.i.i = lshr i8 %bf.load.i.i, 5
  %21 = and i8 %bf.lshr13.i.i, 1
  %bf.value17.i.i = zext i8 %21 to i32
  %bf.shl18.i.i = shl nuw nsw i32 %bf.value17.i.i, 22
  %bf.shl9.masked.i.i = and i32 %bf.shl9.i.i, 2097152
  %bf.clear19.i.i = or i32 %bf.set.i.i, %bf.shl9.masked.i.i
  %bf.set20.i.i = or i32 %bf.clear19.i.i, %bf.shl18.i.i
  %bf.set53.i = or i32 %bf.set20.i.i, 1024
  %.fca.0.insert.i = insertvalue [1 x i32] poison, i32 %bf.set53.i, 0
  %call56.i = tail call i32 @_drbd_set_state(ptr noundef %device, [1 x i32] %.fca.0.insert.i, i32 noundef 1, ptr noundef null) #10
  %vdisk60.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %22 = ptrtoint ptr %vdisk60.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vdisk60.i, align 4
  %part061.i = getelementptr inbounds %struct.gendisk, ptr %23, i32 0, i32 7
  %24 = ptrtoint ptr %part061.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %part061.i, align 4
  %bd_device62.i = getelementptr inbounds %struct.block_device, ptr %25, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %bd_device62.i, ptr noundef nonnull @.str.99, ptr noundef %where) #13
  br label %__drbd_chk_io_error_.exit

__drbd_chk_io_error_.exit:                        ; preds = %if.then44.i, %if.end38.i.__drbd_chk_io_error_.exit_crit_edge, %rcu_read_unlock.exit.i.__drbd_chk_io_error_.exit_crit_edge
  %26 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %device, align 8
  %req_lock6 = getelementptr inbounds %struct.drbd_resource, ptr %27, i32 0, i32 12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %req_lock6, i32 noundef %call2) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drbd_md_sync_page_io(ptr noundef %device, ptr noundef %bdev, i64 noundef %sector, i32 noundef %op) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %in_use = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 80, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %in_use, i32 noundef 4) #10
  %0 = ptrtoint ptr %in_use to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %in_use, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %entry.do.body4_crit_edge, label %do.end

entry.do.body4_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %vdisk = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %2 = ptrtoint ptr %vdisk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdisk, align 4
  %part0 = getelementptr inbounds %struct.gendisk, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %part0, align 4
  %bd_device = getelementptr inbounds %struct.block_device, ptr %5, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %bd_device, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str, i32 noundef 181) #13
  br label %do.body4

do.body4:                                         ; preds = %do.end, %entry.do.body4_crit_edge
  %md_bdev = getelementptr inbounds %struct.drbd_backing_dev, ptr %bdev, i32 0, i32 1
  %6 = ptrtoint ptr %md_bdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %md_bdev, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %do.body9, label %do.body18, !prof !256

do.body9:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/block/drbd/drbd_actlog.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 183, 0\0A.popsection", ""() #10, !srcloc !257
  unreachable

do.body18:                                        ; preds = %do.body4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @drbd_md_sync_page_io.__UNIQUE_ID_ddebug626, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@drbd_md_sync_page_io, %if.then27)) #10
          to label %do.end37 [label %if.then27], !srcloc !258

if.then27:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #12
  %vdisk28 = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %8 = ptrtoint ptr %vdisk28 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vdisk28, align 4
  %part029 = getelementptr inbounds %struct.gendisk, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %part029 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %part029, align 4
  %bd_device30 = getelementptr inbounds %struct.block_device, ptr %11, i32 0, i32 10
  %12 = tail call i32 @llvm.read_register.i32(metadata !238) #10
  %and.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 101
  %pid = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 68
  %16 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pid, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %op)
  %cmp34 = icmp eq i32 %op, 1
  %cond = select i1 %cmp34, ptr @.str.10, ptr @.str.11
  %18 = tail call ptr @llvm.returnaddress(i32 0)
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @drbd_md_sync_page_io.__UNIQUE_ID_ddebug626, ptr noundef %bd_device30, ptr noundef nonnull @.str.9, ptr noundef %comm, i32 noundef %17, ptr noundef nonnull @.str.7, i64 noundef %sector, ptr noundef nonnull %cond, ptr noundef %18) #10
  br label %do.end37

do.end37:                                         ; preds = %if.then27, %do.body18
  %md.i = getelementptr inbounds %struct.drbd_backing_dev, ptr %bdev, i32 0, i32 2
  %meta_dev_idx.i = getelementptr inbounds %struct.drbd_backing_dev, ptr %bdev, i32 0, i32 2, i32 9
  %19 = ptrtoint ptr %meta_dev_idx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %meta_dev_idx.i, align 8
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i32 %20, label %sw.default.i [
    i32 -1, label %do.end37.sw.bb.i_crit_edge
    i32 -3, label %do.end37.sw.bb.i_crit_edge103
  ]

do.end37.sw.bb.i_crit_edge103:                    ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

do.end37.sw.bb.i_crit_edge:                       ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %do.end37.sw.bb.i_crit_edge, %do.end37.sw.bb.i_crit_edge103
  %22 = ptrtoint ptr %md.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %md.i, align 8
  %bm_offset.i = getelementptr inbounds %struct.drbd_backing_dev, ptr %bdev, i32 0, i32 2, i32 8
  %24 = ptrtoint ptr %bm_offset.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bm_offset.i, align 4
  %conv.i = sext i32 %25 to i64
  %add.i = add i64 %23, %conv.i
  br label %drbd_md_first_sector.exit

sw.default.i:                                     ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %md.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %md.i, align 8
  br label %drbd_md_first_sector.exit

drbd_md_first_sector.exit:                        ; preds = %sw.default.i, %sw.bb.i
  %retval.0.i89 = phi i64 [ %27, %sw.default.i ], [ %add.i, %sw.bb.i ]
  call void @__sanitizer_cov_trace_cmp8(i64 %retval.0.i89, i64 %sector)
  %cmp39 = icmp ugt i64 %retval.0.i89, %sector
  br i1 %cmp39, label %drbd_md_first_sector.exit.do.end45_crit_edge, label %lor.lhs.false

drbd_md_first_sector.exit.do.end45_crit_edge:     ; preds = %drbd_md_first_sector.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end45

lor.lhs.false:                                    ; preds = %drbd_md_first_sector.exit
  %add = add i64 %sector, 7
  %28 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.131)
  switch i32 %20, label %sw.default.i94 [
    i32 -1, label %lor.lhs.false.sw.bb.i92_crit_edge
    i32 -3, label %lor.lhs.false.sw.bb.i92_crit_edge104
  ]

lor.lhs.false.sw.bb.i92_crit_edge104:             ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i92

lor.lhs.false.sw.bb.i92_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i92

sw.bb.i92:                                        ; preds = %lor.lhs.false.sw.bb.i92_crit_edge, %lor.lhs.false.sw.bb.i92_crit_edge104
  %29 = ptrtoint ptr %md.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %md.i, align 8
  %sub.i = add i64 %30, 7
  br label %drbd_md_last_sector.exit

sw.default.i94:                                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %md.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %md.i, align 8
  %md_size_sect.i = getelementptr inbounds %struct.drbd_backing_dev, ptr %bdev, i32 0, i32 2, i32 6
  %33 = ptrtoint ptr %md_size_sect.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %md_size_sect.i, align 4
  %conv.i93 = zext i32 %34 to i64
  %add6.i = add i64 %32, -1
  %sub7.i = add i64 %add6.i, %conv.i93
  br label %drbd_md_last_sector.exit

drbd_md_last_sector.exit:                         ; preds = %sw.default.i94, %sw.bb.i92
  %retval.0.i95 = phi i64 [ %sub7.i, %sw.default.i94 ], [ %sub.i, %sw.bb.i92 ]
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %retval.0.i95)
  %cmp41 = icmp ugt i64 %add, %retval.0.i95
  br i1 %cmp41, label %drbd_md_last_sector.exit.do.end45_crit_edge, label %drbd_md_last_sector.exit.if.end58_crit_edge

drbd_md_last_sector.exit.if.end58_crit_edge:      ; preds = %drbd_md_last_sector.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

drbd_md_last_sector.exit.do.end45_crit_edge:      ; preds = %drbd_md_last_sector.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end45

do.end45:                                         ; preds = %drbd_md_last_sector.exit.do.end45_crit_edge, %drbd_md_first_sector.exit.do.end45_crit_edge
  %vdisk46 = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %35 = ptrtoint ptr %vdisk46 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %vdisk46, align 4
  %part047 = getelementptr inbounds %struct.gendisk, ptr %36, i32 0, i32 7
  %37 = ptrtoint ptr %part047 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %part047, align 4
  %bd_device48 = getelementptr inbounds %struct.block_device, ptr %38, i32 0, i32 10
  %39 = tail call i32 @llvm.read_register.i32(metadata !238) #10
  %and.i96 = and i32 %39, -16384
  %40 = inttoptr i32 %and.i96 to ptr
  %task50 = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %task50 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %task50, align 8
  %comm51 = getelementptr inbounds %struct.task_struct, ptr %42, i32 0, i32 101
  %pid55 = getelementptr inbounds %struct.task_struct, ptr %42, i32 0, i32 68
  %43 = ptrtoint ptr %pid55 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %pid55, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %op)
  %cmp56 = icmp eq i32 %op, 1
  %cond57 = select i1 %cmp56, ptr @.str.10, ptr @.str.11
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.14, ptr noundef %bd_device48, ptr noundef nonnull @.str.13, ptr noundef %comm51, i32 noundef %44, ptr noundef nonnull @.str.7, i64 noundef %sector, ptr noundef nonnull %cond57) #13
  br label %if.end58

if.end58:                                         ; preds = %do.end45, %drbd_md_last_sector.exit.if.end58_crit_edge
  %md_io.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 80
  %done.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 80, i32 5
  %45 = ptrtoint ptr %done.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %done.i, align 4
  %error.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 80, i32 6
  %46 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -19, ptr %error.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %op)
  %cmp.i = icmp eq i32 %op, 1
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end58.if.end.i_crit_edge

if.end58.if.end.i_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  %flags.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 14
  %47 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %flags.i, align 4
  %49 = and i32 %48, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not.i = icmp eq i32 %49, 0
  %spec.select.i = select i1 %tobool.not.i, i32 395264, i32 2048
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i, %if.end58.if.end.i_crit_edge
  %op_flags.0.i = phi i32 [ 2048, %if.end58.if.end.i_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  %call6.i = tail call ptr @bio_alloc_bioset(i32 noundef 3072, i16 noundef zeroext 1, ptr noundef nonnull @drbd_md_io_bio_set) #10
  %50 = ptrtoint ptr %md_bdev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %md_bdev, align 4
  %bi_flags.i.i.i = getelementptr inbounds %struct.bio, ptr %call6.i, i32 0, i32 3
  %52 = ptrtoint ptr %bi_flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %bi_flags.i.i.i, align 4
  %conv1.i.i.i = and i16 %53, -2049
  store i16 %conv1.i.i.i, ptr %bi_flags.i.i.i, align 4
  %bi_bdev.i.i = getelementptr inbounds %struct.bio, ptr %call6.i, i32 0, i32 1
  %54 = ptrtoint ptr %bi_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %bi_bdev.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %55, %51
  br i1 %cmp.not.i.i, label %if.end.i.bio_set_dev.exit.i_crit_edge, label %if.then.i.i

if.end.i.bio_set_dev.exit.i_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bio_set_dev.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv1.i8.i.i = and i16 %53, -2177
  %56 = ptrtoint ptr %bi_flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %conv1.i8.i.i, ptr %bi_flags.i.i.i, align 4
  br label %bio_set_dev.exit.i

bio_set_dev.exit.i:                               ; preds = %if.then.i.i, %if.end.i.bio_set_dev.exit.i_crit_edge
  %57 = ptrtoint ptr %bi_bdev.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %51, ptr %bi_bdev.i.i, align 4
  tail call void @bio_associate_blkg(ptr noundef %call6.i) #10
  %bi_iter.i = getelementptr inbounds %struct.bio, ptr %call6.i, i32 0, i32 8
  %58 = ptrtoint ptr %bi_iter.i to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %sector, ptr %bi_iter.i, align 8
  %59 = ptrtoint ptr %md_io.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %md_io.i, align 8
  %call8.i = tail call i32 @bio_add_page(ptr noundef %call6.i, ptr noundef %60, i32 noundef 4096, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %call8.i)
  %cmp9.not.i = icmp eq i32 %call8.i, 4096
  br i1 %cmp9.not.i, label %if.end12.i, label %bio_set_dev.exit.i._drbd_md_sync_page_io.exit.thread_crit_edge

bio_set_dev.exit.i._drbd_md_sync_page_io.exit.thread_crit_edge: ; preds = %bio_set_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %_drbd_md_sync_page_io.exit.thread

if.end12.i:                                       ; preds = %bio_set_dev.exit.i
  %bi_private.i = getelementptr inbounds %struct.bio, ptr %call6.i, i32 0, i32 11
  %61 = ptrtoint ptr %bi_private.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %device, ptr %bi_private.i, align 4
  %bi_end_io.i = getelementptr inbounds %struct.bio, ptr %call6.i, i32 0, i32 10
  %62 = ptrtoint ptr %bi_end_io.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @drbd_md_endio, ptr %bi_end_io.i, align 8
  %or.i.i = or i32 %op_flags.0.i, %op
  %bi_opf.i.i = getelementptr inbounds %struct.bio, ptr %call6.i, i32 0, i32 2
  %63 = ptrtoint ptr %bi_opf.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %or.i.i, ptr %bi_opf.i.i, align 8
  br i1 %cmp.i, label %if.end12.i.if.else.i_crit_edge, label %land.lhs.true15.i

if.end12.i.if.else.i_crit_edge:                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

land.lhs.true15.i:                                ; preds = %if.end12.i
  %state.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 27
  %64 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %bf.load.i = load i32, ptr %state.i, align 8
  %65 = and i32 %bf.load.i, 7680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp16.i = icmp eq i32 %65, 0
  br i1 %cmp16.i, label %land.lhs.true18.i, label %land.lhs.true15.i.if.else.i_crit_edge

land.lhs.true15.i.if.else.i_crit_edge:            ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

land.lhs.true18.i:                                ; preds = %land.lhs.true15.i
  %ldev.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 15
  %66 = ptrtoint ptr %ldev.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ldev.i, align 4
  %cmp19.i = icmp eq ptr %67, null
  br i1 %cmp19.i, label %land.lhs.true18.i.if.end27.i_crit_edge, label %land.lhs.true18.i.if.else.i_crit_edge

land.lhs.true18.i.if.else.i_crit_edge:            ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

land.lhs.true18.i.if.end27.i_crit_edge:           ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27.i

if.else.i:                                        ; preds = %land.lhs.true18.i.if.else.i_crit_edge, %land.lhs.true15.i.if.else.i_crit_edge, %if.end12.i.if.else.i_crit_edge
  %state.i.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 27
  %68 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %bf.load.i.i = load i32, ptr %state.i.i, align 8
  %69 = and i32 %bf.load.i.i, 7680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp.i.i = icmp eq i32 %69, 0
  br i1 %cmp.i.i, label %if.else.i.do.end.i_crit_edge, label %if.end.i.i

if.else.i.do.end.i_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.end.i.i:                                       ; preds = %if.else.i
  %local_cnt.i.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 41
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %local_cnt.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %local_cnt.i.i, i32 1, i32 3, i32 1) #10
  %70 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %local_cnt.i.i, ptr %local_cnt.i.i, i32 1, ptr elementtype(i32) %local_cnt.i.i) #10, !srcloc !259
  %71 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %bf.load2.i.i = load i32, ptr %state.i.i, align 8
  %72 = and i32 %bf.load2.i.i, 7680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp5.not.i.i = icmp eq i32 %72, 0
  br i1 %cmp5.not.i.i, label %if.then6.i.i, label %if.end.i.i.if.end27.i_crit_edge

if.end.i.i.if.end27.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27.i

if.then6.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @put_ldev(ptr noundef %device) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then6.i.i, %if.else.i.do.end.i_crit_edge
  %vdisk.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %73 = ptrtoint ptr %vdisk.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %vdisk.i, align 4
  %part0.i = getelementptr inbounds %struct.gendisk, ptr %74, i32 0, i32 7
  %75 = ptrtoint ptr %part0.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %part0.i, align 4
  %bd_device.i = getelementptr inbounds %struct.block_device, ptr %76, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %bd_device.i, ptr noundef nonnull @.str.101) #13
  br label %_drbd_md_sync_page_io.exit.thread

if.end27.i:                                       ; preds = %if.end.i.i.if.end27.i_crit_edge, %land.lhs.true18.i.if.end27.i_crit_edge
  %77 = ptrtoint ptr %bi_flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %bi_flags.i.i.i, align 4
  %79 = or i16 %78, 64
  store i16 %79, ptr %bi_flags.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !260
  %__bi_cnt.i.i = getelementptr inbounds %struct.bio, ptr %call6.i, i32 0, i32 19
  %call.i.i.i74.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %__bi_cnt.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %__bi_cnt.i.i, i32 1, i32 3, i32 1) #10
  %80 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %__bi_cnt.i.i, ptr %__bi_cnt.i.i, i32 1, ptr elementtype(i32) %__bi_cnt.i.i) #10, !srcloc !259
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %in_use, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %in_use, i32 1, i32 3, i32 1) #10
  %81 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %in_use, ptr %in_use, i32 1, ptr elementtype(i32) %in_use) #10, !srcloc !259
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %82 = load volatile i32, ptr @jiffies, align 128
  %submit_jif.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 80, i32 2
  %83 = ptrtoint ptr %submit_jif.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %submit_jif.i, align 8
  %not.cmp.i = xor i1 %cmp.i, true
  %cond.i = zext i1 %not.cmp.i to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @drbd_fault_rate to i32))
  %84 = load i32, ptr @drbd_fault_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool.not.i.i = icmp eq i32 %84, 0
  br i1 %tobool.not.i.i, label %if.end27.i.if.else35.i_crit_edge, label %land.lhs.true.i.i

if.end27.i.if.else35.i_crit_edge:                 ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else35.i

land.lhs.true.i.i:                                ; preds = %if.end27.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @drbd_enable_faults to i32))
  %85 = load i32, ptr @drbd_enable_faults, align 4
  %shl.i.i = shl nuw nsw i32 1, %cond.i
  %and.i.i = and i32 %85, %shl.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool1.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.if.else35.i_crit_edge, label %drbd_insert_fault.exit.i

land.lhs.true.i.i.if.else35.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else35.i

drbd_insert_fault.exit.i:                         ; preds = %land.lhs.true.i.i
  %call.i.i97 = tail call i32 @_drbd_insert_fault(ptr noundef %device, i32 noundef %cond.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i97)
  %tobool2.i.not.i = icmp eq i32 %call.i.i97, 0
  br i1 %tobool2.i.not.i, label %drbd_insert_fault.exit.i.if.else35.i_crit_edge, label %if.then34.i

drbd_insert_fault.exit.i.if.else35.i_crit_edge:   ; preds = %drbd_insert_fault.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else35.i

if.then34.i:                                      ; preds = %drbd_insert_fault.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %bi_status.i.i = getelementptr inbounds %struct.bio, ptr %call6.i, i32 0, i32 6
  %86 = ptrtoint ptr %bi_status.i.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 10, ptr %bi_status.i.i, align 2
  tail call void @bio_endio(ptr noundef %call6.i) #10
  br label %if.end36.i

if.else35.i:                                      ; preds = %drbd_insert_fault.exit.i.if.else35.i_crit_edge, %land.lhs.true.i.i.if.else35.i_crit_edge, %if.end27.i.if.else35.i_crit_edge
  tail call void @submit_bio(ptr noundef %call6.i) #10
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.else35.i, %if.then34.i
  tail call void @wait_until_done_or_force_detached(ptr noundef %device, ptr noundef %bdev, ptr noundef %done.i) #10
  %bi_status.i = getelementptr inbounds %struct.bio, ptr %call6.i, i32 0, i32 6
  %87 = ptrtoint ptr %bi_status.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %bi_status.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool39.not.i = icmp eq i8 %88, 0
  br i1 %tobool39.not.i, label %_drbd_md_sync_page_io.exit, label %if.end36.i._drbd_md_sync_page_io.exit.thread_crit_edge

if.end36.i._drbd_md_sync_page_io.exit.thread_crit_edge: ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %_drbd_md_sync_page_io.exit.thread

_drbd_md_sync_page_io.exit.thread:                ; preds = %if.end36.i._drbd_md_sync_page_io.exit.thread_crit_edge, %do.end.i, %bio_set_dev.exit.i._drbd_md_sync_page_io.exit.thread_crit_edge
  %err.0.i.ph = phi i32 [ -19, %do.end.i ], [ -5, %if.end36.i._drbd_md_sync_page_io.exit.thread_crit_edge ], [ -5, %bio_set_dev.exit.i._drbd_md_sync_page_io.exit.thread_crit_edge ]
  tail call void @bio_put(ptr noundef %call6.i) #10
  br label %do.end64

_drbd_md_sync_page_io.exit:                       ; preds = %if.end36.i
  %89 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %error.i, align 8
  tail call void @bio_put(ptr noundef %call6.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool60.not = icmp eq i32 %90, 0
  br i1 %tobool60.not, label %_drbd_md_sync_page_io.exit.if.end70_crit_edge, label %_drbd_md_sync_page_io.exit.do.end64_crit_edge

_drbd_md_sync_page_io.exit.do.end64_crit_edge:    ; preds = %_drbd_md_sync_page_io.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end64

_drbd_md_sync_page_io.exit.if.end70_crit_edge:    ; preds = %_drbd_md_sync_page_io.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

do.end64:                                         ; preds = %_drbd_md_sync_page_io.exit.do.end64_crit_edge, %_drbd_md_sync_page_io.exit.thread
  %err.0.i101 = phi i32 [ %err.0.i.ph, %_drbd_md_sync_page_io.exit.thread ], [ %90, %_drbd_md_sync_page_io.exit.do.end64_crit_edge ]
  %vdisk65 = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %91 = ptrtoint ptr %vdisk65 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %vdisk65, align 4
  %part066 = getelementptr inbounds %struct.gendisk, ptr %92, i32 0, i32 7
  %93 = ptrtoint ptr %part066 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %part066, align 4
  %bd_device67 = getelementptr inbounds %struct.block_device, ptr %94, i32 0, i32 10
  %cond69 = select i1 %cmp.i, ptr @.str.10, ptr @.str.11
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %bd_device67, ptr noundef nonnull @.str.17, i64 noundef %sector, ptr noundef nonnull %cond69, i32 noundef %err.0.i101) #13
  br label %if.end70

if.end70:                                         ; preds = %do.end64, %_drbd_md_sync_page_io.exit.if.end70_crit_edge
  %err.0.i102 = phi i32 [ %err.0.i101, %do.end64 ], [ 0, %_drbd_md_sync_page_io.exit.if.end70_crit_edge ]
  ret i32 %err.0.i102
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @drbd_al_begin_io_fastpath(ptr noundef %device, ptr nocapture noundef readonly %i) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sector = getelementptr inbounds %struct.drbd_interval, ptr %i, i32 0, i32 1
  %0 = ptrtoint ptr %sector to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %sector, align 8
  %shr = lshr i64 %1, 13
  %conv = trunc i64 %shr to i32
  %size = getelementptr inbounds %struct.drbd_interval, ptr %i, i32 0, i32 2
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %entry.do.body14_crit_edge, label %cond.end

entry.do.body14_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body14

cond.end:                                         ; preds = %entry
  %shr5 = lshr i32 %3, 9
  %conv6 = zext i32 %shr5 to i64
  %add = add i64 %1, 35184372088831
  %sub = add i64 %add, %conv6
  %shr7 = lshr i64 %sub, 13
  %extract.t43 = trunc i64 %shr7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %extract.t43, i32 %conv)
  %cmp9.not = icmp ult i32 %extract.t43, %conv
  br i1 %cmp9.not, label %do.end, label %cond.end.do.body14_crit_edge

cond.end.do.body14_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body14

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  %vdisk = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %4 = ptrtoint ptr %vdisk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vdisk, align 4
  %part0 = getelementptr inbounds %struct.gendisk, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %part0, align 4
  %bd_device = getelementptr inbounds %struct.block_device, ptr %7, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %bd_device, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str, i32 noundef 248) #13
  br label %do.body14

do.body14:                                        ; preds = %do.end, %cond.end.do.body14_crit_edge, %entry.do.body14_crit_edge
  %cond.off046 = phi i32 [ %extract.t43, %cond.end.do.body14_crit_edge ], [ %extract.t43, %do.end ], [ %conv, %entry.do.body14_crit_edge ]
  %local_cnt = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 41
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %local_cnt, i32 noundef 4) #10
  %8 = ptrtoint ptr %local_cnt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %local_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp15 = icmp sgt i32 %9, 0
  br i1 %cmp15, label %do.body14.do.end26_crit_edge, label %do.end20

do.body14.do.end26_crit_edge:                     ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end26

do.end20:                                         ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #12
  %vdisk21 = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %10 = ptrtoint ptr %vdisk21 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vdisk21, align 4
  %part022 = getelementptr inbounds %struct.gendisk, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %part022 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %part022, align 4
  %bd_device23 = getelementptr inbounds %struct.block_device, ptr %13, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %bd_device23, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str, i32 noundef 249) #13
  br label %do.end26

do.end26:                                         ; preds = %do.end20, %do.body14.do.end26_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.off046, i32 %conv)
  %cmp27.not = icmp eq i32 %cond.off046, %conv
  br i1 %cmp27.not, label %if.end30, label %do.end26.cleanup_crit_edge

do.end26.cleanup_crit_edge:                       ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end30:                                         ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #12
  %call31 = tail call fastcc ptr @_al_get(ptr noundef %device, i32 noundef %conv, i1 noundef zeroext true)
  %tobool = icmp ne ptr %call31, null
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %do.end26.cleanup_crit_edge
  %retval.0 = phi i1 [ %tobool, %if.end30 ], [ false, %do.end26.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @_al_get(ptr noundef %device, i32 noundef %enr, i1 noundef zeroext %nonblock) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %al_lock = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 81
  tail call void @_raw_spin_lock_irq(ptr noundef %al_lock) #10
  %resync.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 65
  %0 = ptrtoint ptr %resync.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resync.i, align 4
  %div10.i = lshr i32 %enr, 2
  %call.i = tail call ptr @lc_find(ptr noundef %1, i32 noundef %div10.i) #10
  %cmp.not.i = icmp eq ptr %call.i, null
  br i1 %cmp.not.i, label %entry.if.end6_crit_edge, label %if.then.i, !prof !261

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then.i:                                        ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 -12
  %flags.i = getelementptr i8, ptr %call.i, i32 -4
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool4.not.i = icmp eq i32 %and1.i.i, 0
  %tobool.not = icmp eq ptr %add.ptr.i, null
  %or.cond = select i1 %tobool4.not.i, i1 true, i1 %tobool.not
  br i1 %or.cond, label %if.then.i.if.end6_crit_edge, label %if.then

if.then.i.if.end6_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then:                                          ; preds = %if.then.i
  %call1 = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %flags.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  tail call void @_raw_spin_unlock_irq(ptr noundef %al_lock) #10
  br i1 %tobool2.not, label %if.then5, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %al_wait = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 82
  tail call void @__wake_up(ptr noundef %al_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %cleanup

if.end6:                                          ; preds = %if.then.i.if.end6_crit_edge, %entry.if.end6_crit_edge
  %act_log = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 83
  %4 = ptrtoint ptr %act_log to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %act_log, align 4
  br i1 %nonblock, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %call9 = tail call ptr @lc_try_get(ptr noundef %5, i32 noundef %enr) #10
  br label %if.end12

if.else:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %call11 = tail call ptr @lc_get(ptr noundef %5, i32 noundef %enr) #10
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then8
  %al_ext.0 = phi ptr [ %call9, %if.then8 ], [ %call11, %if.else ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %al_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then5, %if.then.cleanup_crit_edge
  %retval.0 = phi ptr [ %al_ext.0, %if.end12 ], [ null, %if.then5 ], [ null, %if.then.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @drbd_al_begin_io_prepare(ptr noundef %device, ptr nocapture noundef readonly %i) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sector = getelementptr inbounds %struct.drbd_interval, ptr %i, i32 0, i32 1
  %0 = ptrtoint ptr %sector to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %sector, align 8
  %shr = lshr i64 %1, 13
  %conv = trunc i64 %shr to i32
  %size = getelementptr inbounds %struct.drbd_interval, ptr %i, i32 0, i32 2
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %entry.do.body14_crit_edge, label %cond.end

entry.do.body14_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body14

cond.end:                                         ; preds = %entry
  %shr5 = lshr i32 %3, 9
  %conv6 = zext i32 %shr5 to i64
  %add = add i64 %1, 35184372088831
  %sub = add i64 %add, %conv6
  %shr7 = lshr i64 %sub, 13
  %extract.t76 = trunc i64 %shr7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %extract.t76, i32 %conv)
  %cmp9.not = icmp ult i32 %extract.t76, %conv
  br i1 %cmp9.not, label %do.end, label %cond.end.do.body14_crit_edge

cond.end.do.body14_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body14

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  %vdisk = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %4 = ptrtoint ptr %vdisk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vdisk, align 4
  %part0 = getelementptr inbounds %struct.gendisk, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %part0, align 4
  %bd_device = getelementptr inbounds %struct.block_device, ptr %7, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %bd_device, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str, i32 noundef 267) #13
  br label %do.body14

do.body14:                                        ; preds = %do.end, %cond.end.do.body14_crit_edge, %entry.do.body14_crit_edge
  %cond.off080 = phi i32 [ %extract.t76, %cond.end.do.body14_crit_edge ], [ %extract.t76, %do.end ], [ %conv, %entry.do.body14_crit_edge ]
  %local_cnt = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 41
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %local_cnt, i32 noundef 4) #10
  %8 = ptrtoint ptr %local_cnt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %local_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp15 = icmp sgt i32 %9, 0
  br i1 %cmp15, label %do.body14.do.end26_crit_edge, label %do.end20

do.body14.do.end26_crit_edge:                     ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end26

do.end20:                                         ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #12
  %vdisk21 = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %10 = ptrtoint ptr %vdisk21 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vdisk21, align 4
  %part022 = getelementptr inbounds %struct.gendisk, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %part022 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %part022, align 4
  %bd_device23 = getelementptr inbounds %struct.block_device, ptr %13, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %bd_device23, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str, i32 noundef 268) #13
  br label %do.end26

do.end26:                                         ; preds = %do.end20, %do.body14.do.end26_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.off080, i32 %conv)
  %cmp27.not87 = icmp ult i32 %cond.off080, %conv
  br i1 %cmp27.not87, label %do.end26.for.end55_crit_edge, label %for.body.lr.ph

do.end26.for.end55_crit_edge:                     ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end55

for.body.lr.ph:                                   ; preds = %do.end26
  %al_wait = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 82
  br label %for.body

for.body:                                         ; preds = %do.end50.for.body_crit_edge, %for.body.lr.ph
  %need_transaction.0.off090 = phi i1 [ false, %for.body.lr.ph ], [ %spec.select, %do.end50.for.body_crit_edge ]
  %enr.088 = phi i32 [ %conv, %for.body.lr.ph ], [ %inc, %do.end50.for.body_crit_edge ]
  call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 273) #10
  %call36 = call fastcc ptr @_al_get(ptr noundef %device, i32 noundef %enr.088, i1 noundef zeroext false)
  %cmp37.not = icmp eq ptr %call36, null
  br i1 %cmp37.not, label %if.end40, label %for.body.do.end50_crit_edge

for.body.do.end50_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end50

if.end40:                                         ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #10
  %14 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #10
  %call4283 = call i32 @prepare_to_wait_event(ptr noundef %al_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #10
  %call4384 = call fastcc ptr @_al_get(ptr noundef %device, i32 noundef %enr.088, i1 noundef zeroext false)
  %cmp44.not85 = icmp eq ptr %call4384, null
  br i1 %cmp44.not85, label %if.end40.cleanup_crit_edge, label %if.end40.for.end_crit_edge

if.end40.for.end_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  br label %cleanup

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end40.cleanup_crit_edge
  call void @schedule() #10
  %call42 = call i32 @prepare_to_wait_event(ptr noundef %al_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #10
  %call43 = call fastcc ptr @_al_get(ptr noundef %device, i32 noundef %enr.088, i1 noundef zeroext false)
  %cmp44.not = icmp eq ptr %call43, null
  br i1 %cmp44.not, label %cleanup.cleanup_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end40.for.end_crit_edge
  %call43.lcssa = phi ptr [ %call4384, %if.end40.for.end_crit_edge ], [ %call43, %cleanup.for.end_crit_edge ]
  call void @finish_wait(ptr noundef %al_wait, ptr noundef nonnull %__wq_entry) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br label %do.end50

do.end50:                                         ; preds = %for.end, %for.body.do.end50_crit_edge
  %al_ext.0 = phi ptr [ %call36, %for.body.do.end50_crit_edge ], [ %call43.lcssa, %for.end ]
  %lc_number = getelementptr inbounds %struct.lc_element, ptr %al_ext.0, i32 0, i32 4
  %15 = ptrtoint ptr %lc_number to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %lc_number, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %enr.088)
  %cmp51.not = icmp ne i32 %16, %enr.088
  %spec.select = select i1 %cmp51.not, i1 true, i1 %need_transaction.0.off090
  %inc = add i32 %enr.088, 1
  %cmp27.not = icmp ugt i32 %inc, %cond.off080
  br i1 %cmp27.not, label %do.end50.for.end55_crit_edge, label %do.end50.for.body_crit_edge

do.end50.for.body_crit_edge:                      ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

do.end50.for.end55_crit_edge:                     ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end55

for.end55:                                        ; preds = %do.end50.for.end55_crit_edge, %do.end26.for.end55_crit_edge
  %need_transaction.0.off0.lcssa = phi i1 [ false, %do.end26.for.end55_crit_edge ], [ %spec.select, %do.end50.for.end55_crit_edge ]
  ret i1 %need_transaction.0.off0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drbd_al_begin_io_commit(ptr noundef %device) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 448) #10
  %act_log = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 83
  %0 = ptrtoint ptr %act_log to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %act_log, align 4
  %pending_changes = getelementptr inbounds %struct.lru_cache, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %pending_changes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pending_changes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %entry.if.end53_crit_edge, label %lor.lhs.false

entry.if.end53_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

lor.lhs.false:                                    ; preds = %entry
  %flags.i = getelementptr inbounds %struct.lru_cache, ptr %1, i32 0, i32 16
  %call.i75 = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %flags.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i75)
  %tobool.not.i76 = icmp eq i32 %call.i75, 0
  br i1 %tobool.not.i76, label %lor.lhs.false.if.then21_crit_edge, label %if.end

lor.lhs.false.if.then21_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then21

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #10
  %4 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #10
  %al_wait = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 82
  %call699 = call i32 @prepare_to_wait_event(ptr noundef %al_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #10
  %5 = ptrtoint ptr %act_log to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %act_log, align 4
  %pending_changes8100 = getelementptr inbounds %struct.lru_cache, ptr %6, i32 0, i32 9
  %7 = ptrtoint ptr %pending_changes8100 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pending_changes8100, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp9101 = icmp eq i32 %8, 0
  br i1 %cmp9101, label %if.end.do.end19_crit_edge, label %if.end.lor.lhs.false10_crit_edge

if.end.lor.lhs.false10_crit_edge:                 ; preds = %if.end
  br label %lor.lhs.false10

if.end.do.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end19

lor.lhs.false10:                                  ; preds = %cleanup.lor.lhs.false10_crit_edge, %if.end.lor.lhs.false10_crit_edge
  %9 = phi ptr [ %11, %cleanup.lor.lhs.false10_crit_edge ], [ %6, %if.end.lor.lhs.false10_crit_edge ]
  %flags.i77 = getelementptr inbounds %struct.lru_cache, ptr %9, i32 0, i32 16
  %call.i78 = call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %flags.i77) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i78)
  %tobool.not.i79 = icmp eq i32 %call.i78, 0
  br i1 %tobool.not.i79, label %do.end19.thread96, label %cleanup

do.end19.thread96:                                ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #12
  call void @finish_wait(ptr noundef %al_wait, ptr noundef nonnull %__wq_entry) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br label %if.then21

cleanup:                                          ; preds = %lor.lhs.false10
  call void @schedule() #10
  %call6 = call i32 @prepare_to_wait_event(ptr noundef %al_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #10
  %10 = ptrtoint ptr %act_log to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %act_log, align 4
  %pending_changes8 = getelementptr inbounds %struct.lru_cache, ptr %11, i32 0, i32 9
  %12 = ptrtoint ptr %pending_changes8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pending_changes8, align 4
  %cmp9 = icmp eq i32 %13, 0
  br i1 %cmp9, label %cleanup.do.end19_crit_edge, label %cleanup.lor.lhs.false10_crit_edge

cleanup.lor.lhs.false10_crit_edge:                ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false10

cleanup.do.end19_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end19

do.end19:                                         ; preds = %cleanup.do.end19_crit_edge, %if.end.do.end19_crit_edge
  call void @finish_wait(ptr noundef %al_wait, ptr noundef nonnull %__wq_entry) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br label %if.end53

if.then21:                                        ; preds = %do.end19.thread96, %lor.lhs.false.if.then21_crit_edge
  %14 = ptrtoint ptr %act_log to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %act_log, align 4
  %pending_changes23 = getelementptr inbounds %struct.lru_cache, ptr %15, i32 0, i32 9
  %16 = ptrtoint ptr %pending_changes23 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pending_changes23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool24.not = icmp eq i32 %17, 0
  br i1 %tobool24.not, label %if.then21.if.end50_crit_edge, label %if.then25

if.then21.if.end50_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

if.then25:                                        ; preds = %if.then21
  %18 = call i32 @llvm.read_register.i32(metadata !238) #10
  %and.i.i.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %21, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !254
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %if.then25.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.then25.rcu_read_lock.exit_crit_edge:           ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.then25
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.93, i32 noundef 696, ptr noundef nonnull @.str.94) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.then25.rcu_read_lock.exit_crit_edge
  %ldev = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 15
  %22 = ptrtoint ptr %ldev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ldev, align 4
  %disk_conf = getelementptr inbounds %struct.drbd_backing_dev, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %disk_conf to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %disk_conf, align 8
  %call31 = call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end40_crit_edge

rcu_read_lock.exit.do.end40_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end40

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call33 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %land.lhs.true.do.end40_crit_edge, label %land.lhs.true35

land.lhs.true.do.end40_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end40

land.lhs.true35:                                  ; preds = %land.lhs.true
  %.b74 = load i1, ptr @drbd_al_begin_io_commit.__warned, align 1
  br i1 %.b74, label %land.lhs.true35.do.end40_crit_edge, label %if.then37

land.lhs.true35.do.end40_crit_edge:               ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end40

if.then37:                                        ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @drbd_al_begin_io_commit.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 457, ptr noundef nonnull @.str.1) #10
  br label %do.end40

do.end40:                                         ; preds = %if.then37, %land.lhs.true35.do.end40_crit_edge, %land.lhs.true.do.end40_crit_edge, %rcu_read_lock.exit.do.end40_crit_edge
  %al_updates = getelementptr inbounds %struct.disk_conf, ptr %25, i32 0, i32 24
  %26 = ptrtoint ptr %al_updates to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %al_updates, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool42.not = icmp eq i8 %27, 0
  %call.i81 = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i81, label %do.end40.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i84

do.end40.rcu_read_unlock.exit_crit_edge:          ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i84:                                ; preds = %do.end40
  %call1.i82 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i82)
  %tobool.not.i83 = icmp eq i32 %call1.i82, 0
  br i1 %tobool.not.i83, label %land.lhs.true.i84.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i86

land.lhs.true.i84.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i84
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i86:                               ; preds = %land.lhs.true.i84
  %.b4.i85 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i85, label %land.lhs.true2.i86.rcu_read_unlock.exit_crit_edge, label %if.then.i87

land.lhs.true2.i86.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i86
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i87:                                      ; preds = %land.lhs.true2.i86
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.93, i32 noundef 724, ptr noundef nonnull @.str.95) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i87, %land.lhs.true2.i86.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i84.rcu_read_unlock.exit_crit_edge, %do.end40.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !255
  %28 = call i32 @llvm.read_register.i32(metadata !238) #10
  %and.i.i.i.i.i88 = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i.i.i88 to ptr
  %preempt_count.i.i.i.i89 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %preempt_count.i.i.i.i89 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %preempt_count.i.i.i.i89, align 4
  %sub.i.i.i = add i32 %31, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i89, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  br i1 %tobool42.not, label %rcu_read_unlock.exit.if.end47_crit_edge, label %if.then45

rcu_read_unlock.exit.if.end47_crit_edge:          ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

if.then45:                                        ; preds = %rcu_read_unlock.exit
  %state.i.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 27
  %32 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %bf.load.i.i = load i32, ptr %state.i.i, align 8
  %33 = and i32 %bf.load.i.i, 7680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp.i.i = icmp eq i32 %33, 0
  br i1 %cmp.i.i, label %if.then45.do.end.i_crit_edge, label %if.end.i.i

if.then45.do.end.i_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.end.i.i:                                       ; preds = %if.then45
  %local_cnt.i.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 41
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %local_cnt.i.i, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %local_cnt.i.i, i32 1, i32 3, i32 1) #10
  %34 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %local_cnt.i.i, ptr %local_cnt.i.i, i32 1, ptr elementtype(i32) %local_cnt.i.i) #10, !srcloc !259
  %35 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %bf.load2.i.i = load i32, ptr %state.i.i, align 8
  %36 = and i32 %bf.load2.i.i, 6144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp5.not.i.i = icmp eq i32 %36, 0
  br i1 %cmp5.not.i.i, label %if.then6.i.i, label %if.end.i

if.then6.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @put_ldev(ptr noundef %device) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then6.i.i, %if.then45.do.end.i_crit_edge
  %vdisk.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %37 = ptrtoint ptr %vdisk.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %vdisk.i, align 4
  %part0.i = getelementptr inbounds %struct.gendisk, ptr %38, i32 0, i32 7
  %39 = ptrtoint ptr %part0.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %part0.i, align 4
  %bd_device.i = getelementptr inbounds %struct.block_device, ptr %40, i32 0, i32 10
  %41 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %bf.load.i = load i32, ptr %state.i.i, align 8
  %bf.lshr.i = lshr i32 %bf.load.i, 9
  %bf.clear.i = and i32 %bf.lshr.i, 15
  %call2.i = call ptr @drbd_disk_str(i32 noundef %bf.clear.i) #10
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %bd_device.i, ptr noundef nonnull @.str.103, ptr noundef %call2.i) #13
  br label %if.end47

if.end.i:                                         ; preds = %if.end.i.i
  %bf.lshr5.i = lshr i32 %bf.load2.i.i, 9
  %bf.clear6.i = and i32 %bf.lshr5.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %bf.clear6.i)
  %cmp.i = icmp ult i32 %bf.clear6.i, 4
  br i1 %cmp.i, label %do.end10.i, label %if.end19.i

do.end10.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %vdisk11.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %42 = ptrtoint ptr %vdisk11.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %vdisk11.i, align 4
  %part012.i = getelementptr inbounds %struct.gendisk, ptr %43, i32 0, i32 7
  %44 = ptrtoint ptr %part012.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %part012.i, align 4
  %bd_device13.i = getelementptr inbounds %struct.block_device, ptr %45, i32 0, i32 10
  %call18.i = call ptr @drbd_disk_str(i32 noundef %bf.clear6.i) #10
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %bd_device13.i, ptr noundef nonnull @.str.106, ptr noundef %call18.i) #13
  call fastcc void @put_ldev(ptr noundef %device) #10
  br label %if.end47

if.end19.i:                                       ; preds = %if.end.i
  %call20.i = call ptr @drbd_md_get_buffer(ptr noundef %device, ptr noundef nonnull @.str.104) #10
  %tobool21.not.i = icmp eq ptr %call20.i, null
  br i1 %tobool21.not.i, label %do.end25.i, label %if.end29.i

do.end25.i:                                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  %vdisk26.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %46 = ptrtoint ptr %vdisk26.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %vdisk26.i, align 4
  %part027.i = getelementptr inbounds %struct.gendisk, ptr %47, i32 0, i32 7
  %48 = ptrtoint ptr %part027.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %part027.i, align 4
  %bd_device28.i = getelementptr inbounds %struct.block_device, ptr %49, i32 0, i32 10
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %bd_device28.i, ptr noundef nonnull @.str.109) #13
  call fastcc void @put_ldev(ptr noundef %device) #10
  br label %if.end47

if.end29.i:                                       ; preds = %if.end19.i
  %call30.i = call fastcc i32 @__al_write_transaction(ptr noundef %device, ptr noundef nonnull %call20.i) #10
  %in_use.i.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 80, i32 4
  %call.i.i.i1.i = call zeroext i1 @__kasan_check_write(ptr noundef %in_use.i.i, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !251
  call void @llvm.prefetch.p0(ptr %in_use.i.i, i32 1, i32 3, i32 1) #10
  %50 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %in_use.i.i, ptr %in_use.i.i, i32 1, ptr elementtype(i32) %in_use.i.i) #10, !srcloc !252
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %50, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !253
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i, label %if.end29.i.drbd_md_put_buffer.exit.i_crit_edge

if.end29.i.drbd_md_put_buffer.exit.i_crit_edge:   ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %drbd_md_put_buffer.exit.i

if.then.i.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #12
  %misc_wait.i.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 28
  call void @__wake_up(ptr noundef %misc_wait.i.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %drbd_md_put_buffer.exit.i

drbd_md_put_buffer.exit.i:                        ; preds = %if.then.i.i, %if.end29.i.drbd_md_put_buffer.exit.i_crit_edge
  call fastcc void @put_ldev(ptr noundef %device) #10
  br label %if.end47

if.end47:                                         ; preds = %drbd_md_put_buffer.exit.i, %do.end25.i, %do.end10.i, %do.end.i, %rcu_read_unlock.exit.if.end47_crit_edge
  %al_lock = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 81
  call void @_raw_spin_lock_irq(ptr noundef %al_lock) #10
  %51 = ptrtoint ptr %act_log to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %act_log, align 4
  call void @lc_committed(ptr noundef %52) #10
  call void @_raw_spin_unlock_irq(ptr noundef %al_lock) #10
  br label %if.end50

if.end50:                                         ; preds = %if.end47, %if.then21.if.end50_crit_edge
  %53 = ptrtoint ptr %act_log to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %act_log, align 4
  %flags.i90 = getelementptr inbounds %struct.lru_cache, ptr %54, i32 0, i32 16
  call void @_clear_bit(i32 noundef 1, ptr noundef %flags.i90) #10
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %flags.i90, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !262
  call void @llvm.prefetch.p0(ptr %flags.i90, i32 1, i32 3, i32 1) #10
  %55 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %flags.i90, ptr %flags.i90, i32 4, ptr elementtype(i32) %flags.i90) #10, !srcloc !263
  %al_wait52 = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 82
  call void @__wake_up(ptr noundef %al_wait52, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %if.end53

if.end53:                                         ; preds = %if.end50, %do.end19, %entry.if.end53_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lc_committed(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drbd_al_begin_io(ptr noundef %device, ptr nocapture noundef readonly %i) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @drbd_al_begin_io_prepare(ptr noundef %device, ptr noundef %i)
  br i1 %call, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @drbd_al_begin_io_commit(ptr noundef %device)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drbd_al_begin_io_nonblock(ptr nocapture noundef readonly %device, ptr nocapture noundef readonly %i) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %act_log = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 83
  %0 = ptrtoint ptr %act_log to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %act_log, align 4
  %sector = getelementptr inbounds %struct.drbd_interval, ptr %i, i32 0, i32 1
  %2 = ptrtoint ptr %sector to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %sector, align 8
  %shr = lshr i64 %3, 13
  %conv = trunc i64 %shr to i32
  %size = getelementptr inbounds %struct.drbd_interval, ptr %i, i32 0, i32 2
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %entry.do.end13_crit_edge, label %cond.end

entry.do.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end13

cond.end:                                         ; preds = %entry
  %shr5 = lshr i32 %5, 9
  %conv6 = zext i32 %shr5 to i64
  %add = add i64 %3, 35184372088831
  %sub = add i64 %add, %conv6
  %shr7 = lshr i64 %sub, 13
  %extract.t111 = trunc i64 %shr7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %extract.t111, i32 %conv)
  %cmp9.not = icmp ult i32 %extract.t111, %conv
  br i1 %cmp9.not, label %do.end, label %cond.end.do.end13_crit_edge

cond.end.do.end13_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end13

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  %vdisk = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %6 = ptrtoint ptr %vdisk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vdisk, align 4
  %part0 = getelementptr inbounds %struct.gendisk, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %part0, align 4
  %bd_device = getelementptr inbounds %struct.block_device, ptr %9, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %bd_device, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str, i32 noundef 495) #13
  br label %do.end13

do.end13:                                         ; preds = %do.end, %cond.end.do.end13_crit_edge, %entry.do.end13_crit_edge
  %cond.off0115 = phi i32 [ %extract.t111, %do.end ], [ %extract.t111, %cond.end.do.end13_crit_edge ], [ %conv, %entry.do.end13_crit_edge ]
  %add14 = sub i32 1, %conv
  %sub15 = add i32 %add14, %cond.off0115
  %nr_elements = getelementptr inbounds %struct.lru_cache, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %nr_elements to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nr_elements, align 4
  %used = getelementptr inbounds %struct.lru_cache, ptr %1, i32 0, i32 10
  %12 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %used, align 4
  %sub16 = sub i32 %11, %13
  %max_pending_changes = getelementptr inbounds %struct.lru_cache, ptr %1, i32 0, i32 8
  %14 = ptrtoint ptr %max_pending_changes to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max_pending_changes, align 4
  %pending_changes = getelementptr inbounds %struct.lru_cache, ptr %1, i32 0, i32 9
  %16 = ptrtoint ptr %pending_changes to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pending_changes, align 4
  %sub17 = sub i32 %15, %17
  %18 = tail call i32 @llvm.umin.i32(i32 %sub16, i32 %sub17)
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %sub15)
  %cmp24 = icmp ult i32 %18, %sub15
  br i1 %cmp24, label %if.then26, label %for.cond.preheader

for.cond.preheader:                               ; preds = %do.end13
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.off0115, i32 %conv)
  %cmp32.not120 = icmp ult i32 %cond.off0115, %conv
  br i1 %cmp32.not120, label %for.cond.preheader.cleanup73_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup73_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup73

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %resync = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 65
  br label %for.body

if.then26:                                        ; preds = %do.end13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not = icmp eq i32 %17, 0
  br i1 %tobool.not, label %if.then28, label %if.then26.cleanup73_crit_edge

if.then26.cleanup73_crit_edge:                    ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup73

if.then28:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %act_log to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %act_log, align 4
  %flags = getelementptr inbounds %struct.lru_cache, ptr %20, i32 0, i32 16
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags, align 4
  %or.i = or i32 %22, 8
  store i32 %or.i, ptr %flags, align 4
  br label %cleanup73

for.cond55.preheader:                             ; preds = %for.inc
  br i1 %cmp32.not120, label %for.cond55.preheader.cleanup73_crit_edge, label %for.body58.lr.ph

for.cond55.preheader.cleanup73_crit_edge:         ; preds = %for.cond55.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup73

for.body58.lr.ph:                                 ; preds = %for.cond55.preheader
  %vdisk66 = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  br label %for.body58

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %enr.0121 = phi i32 [ %conv, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %23 = ptrtoint ptr %resync to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %resync, align 4
  %div112 = lshr i32 %enr.0121, 2
  %call = tail call ptr @lc_find(ptr noundef %24, i32 noundef %div112) #10
  %cmp35.not = icmp eq ptr %call, null
  br i1 %cmp35.not, label %for.body.for.inc_crit_edge, label %if.then39, !prof !261

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then39:                                        ; preds = %for.body
  %flags41 = getelementptr i8, ptr %call, i32 -4
  %25 = ptrtoint ptr %flags41 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %flags41, align 4
  %and1.i = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool43.not = icmp eq i32 %and1.i, 0
  br i1 %tobool43.not, label %if.then39.for.inc_crit_edge, label %cleanup52

if.then39.for.inc_crit_edge:                      ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

cleanup52:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #12
  %flags41.le = getelementptr i8, ptr %call, i32 -4
  %call46 = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %flags41.le) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  %. = select i1 %tobool47.not, i32 -16, i32 -11
  br label %cleanup73

for.inc:                                          ; preds = %if.then39.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add i32 %enr.0121, 1
  %cmp32.not = icmp ugt i32 %inc, %cond.off0115
  br i1 %cmp32.not, label %for.cond55.preheader, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body58:                                       ; preds = %if.end69.for.body58_crit_edge, %for.body58.lr.ph
  %enr.1123 = phi i32 [ %conv, %for.body58.lr.ph ], [ %inc71, %if.end69.for.body58_crit_edge ]
  %27 = ptrtoint ptr %act_log to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %act_log, align 4
  %call60 = tail call ptr @lc_get_cumulative(ptr noundef %28, i32 noundef %enr.1123) #10
  %tobool61.not = icmp eq ptr %call60, null
  br i1 %tobool61.not, label %do.end65, label %for.body58.if.end69_crit_edge

for.body58.if.end69_crit_edge:                    ; preds = %for.body58
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

do.end65:                                         ; preds = %for.body58
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %vdisk66 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %vdisk66, align 4
  %part067 = getelementptr inbounds %struct.gendisk, ptr %30, i32 0, i32 7
  %31 = ptrtoint ptr %part067 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %part067, align 4
  %bd_device68 = getelementptr inbounds %struct.block_device, ptr %32, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.30, ptr noundef %bd_device68, ptr noundef nonnull @.str.29, i32 noundef %enr.1123) #13
  br label %if.end69

if.end69:                                         ; preds = %do.end65, %for.body58.if.end69_crit_edge
  %inc71 = add i32 %enr.1123, 1
  %cmp56.not = icmp ugt i32 %inc71, %cond.off0115
  br i1 %cmp56.not, label %if.end69.cleanup73_crit_edge, label %if.end69.for.body58_crit_edge

if.end69.for.body58_crit_edge:                    ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body58

if.end69.cleanup73_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup73

cleanup73:                                        ; preds = %if.end69.cleanup73_crit_edge, %cleanup52, %for.cond55.preheader.cleanup73_crit_edge, %if.then28, %if.then26.cleanup73_crit_edge, %for.cond.preheader.cleanup73_crit_edge
  %retval.4 = phi i32 [ %., %cleanup52 ], [ -105, %if.then28 ], [ -105, %if.then26.cleanup73_crit_edge ], [ 0, %for.cond55.preheader.cleanup73_crit_edge ], [ 0, %for.cond.preheader.cleanup73_crit_edge ], [ 0, %if.end69.cleanup73_crit_edge ]
  ret i32 %retval.4
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lc_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lc_get_cumulative(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drbd_al_complete_io(ptr noundef %device, ptr nocapture noundef readonly %i) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sector = getelementptr inbounds %struct.drbd_interval, ptr %i, i32 0, i32 1
  %0 = ptrtoint ptr %sector to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %sector, align 8
  %shr = lshr i64 %1, 13
  %conv = trunc i64 %shr to i32
  %size = getelementptr inbounds %struct.drbd_interval, ptr %i, i32 0, i32 2
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %do.body15.thread, label %cond.end

do.body15.thread:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %al_lock60 = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 81
  %call1861 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %al_lock60) #10
  br label %for.body.lr.ph

cond.end:                                         ; preds = %entry
  %shr5 = lshr i32 %3, 9
  %conv6 = zext i32 %shr5 to i64
  %add = add i64 %1, 35184372088831
  %sub = add i64 %add, %conv6
  %shr7 = lshr i64 %sub, 13
  %extract.t53 = trunc i64 %shr7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %extract.t53, i32 %conv)
  %cmp9.not = icmp ult i32 %extract.t53, %conv
  br i1 %cmp9.not, label %do.end, label %cond.end.do.body15_crit_edge

cond.end.do.body15_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body15

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  %vdisk = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %4 = ptrtoint ptr %vdisk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vdisk, align 4
  %part0 = getelementptr inbounds %struct.gendisk, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %part0, align 4
  %bd_device = getelementptr inbounds %struct.block_device, ptr %7, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %bd_device, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str, i32 noundef 554) #13
  br label %do.body15

do.body15:                                        ; preds = %do.end, %cond.end.do.body15_crit_edge
  %al_lock = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 81
  %call18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %al_lock) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %extract.t53, i32 %conv)
  %cmp23.not57 = icmp ult i32 %extract.t53, %conv
  br i1 %cmp23.not57, label %do.body15.for.end_crit_edge, label %do.body15.for.body.lr.ph_crit_edge

do.body15.for.body.lr.ph_crit_edge:               ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.lr.ph

do.body15.for.end_crit_edge:                      ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.body15.for.body.lr.ph_crit_edge, %do.body15.thread
  %call1866 = phi i32 [ %call1861, %do.body15.thread ], [ %call18, %do.body15.for.body.lr.ph_crit_edge ]
  %al_lock64 = phi ptr [ %al_lock60, %do.body15.thread ], [ %al_lock, %do.body15.for.body.lr.ph_crit_edge ]
  %cond.off05663 = phi i32 [ %conv, %do.body15.thread ], [ %extract.t53, %do.body15.for.body.lr.ph_crit_edge ]
  %act_log = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 83
  %vdisk30 = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %enr.058 = phi i32 [ %conv, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %8 = ptrtoint ptr %act_log to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %act_log, align 4
  %call25 = tail call ptr @lc_find(ptr noundef %9, i32 noundef %enr.058) #10
  %tobool.not = icmp eq ptr %call25, null
  br i1 %tobool.not, label %do.end29, label %if.end33

do.end29:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %vdisk30 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vdisk30, align 4
  %part031 = getelementptr inbounds %struct.gendisk, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %part031 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %part031, align 4
  %bd_device32 = getelementptr inbounds %struct.block_device, ptr %13, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %bd_device32, ptr noundef nonnull @.str.34, i32 noundef %enr.058) #13
  br label %for.inc

if.end33:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %act_log to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %act_log, align 4
  %call35 = tail call i32 @lc_put(ptr noundef %15, ptr noundef nonnull %call25) #10
  br label %for.inc

for.inc:                                          ; preds = %if.end33, %do.end29
  %inc = add i32 %enr.058, 1
  %cmp23.not = icmp ugt i32 %inc, %cond.off05663
  br i1 %cmp23.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.body15.for.end_crit_edge
  %call1867 = phi i32 [ %call18, %do.body15.for.end_crit_edge ], [ %call1866, %for.inc.for.end_crit_edge ]
  %al_lock65 = phi ptr [ %al_lock, %do.body15.for.end_crit_edge ], [ %al_lock64, %for.inc.for.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %al_lock65, i32 noundef %call1867) #10
  %al_wait = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 82
  tail call void @__wake_up(ptr noundef %al_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lc_put(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drbd_al_shrink(ptr noundef %device) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %act_log = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 83
  %0 = ptrtoint ptr %act_log to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %act_log, align 4
  %flags = getelementptr inbounds %struct.lru_cache, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %4 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %vdisk = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %5 = ptrtoint ptr %vdisk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vdisk, align 4
  %part0 = getelementptr inbounds %struct.gendisk, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %part0, align 4
  %bd_device = getelementptr inbounds %struct.block_device, ptr %8, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %bd_device, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str, i32 noundef 596) #13
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %9 = ptrtoint ptr %act_log to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %act_log, align 4
  %nr_elements59 = getelementptr inbounds %struct.lru_cache, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %nr_elements59 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nr_elements59, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp60.not = icmp eq i32 %12, 0
  br i1 %cmp60.not, label %do.end3.for.end30_crit_edge, label %for.body.lr.ph

do.end3.for.end30_crit_edge:                      ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end30

for.body.lr.ph:                                   ; preds = %do.end3
  %al_lock.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 81
  %al_wait = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 82
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %13 = phi ptr [ %10, %for.body.lr.ph ], [ %28, %for.inc.for.body_crit_edge ]
  %i.061 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %call6 = call ptr @lc_element_by_index(ptr noundef %13, i32 noundef %i.061) #10
  %lc_number = getelementptr inbounds %struct.lc_element, ptr %call6, i32 0, i32 4
  %14 = ptrtoint ptr %lc_number to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %lc_number, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %cmp7 = icmp eq i32 %15, -1
  br i1 %cmp7, label %for.body.for.inc_crit_edge, label %do.body11

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

do.body11:                                        ; preds = %for.body
  call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 602) #10
  call void @_raw_spin_lock_irq(ptr noundef %al_lock.i) #10
  %refcnt.i = getelementptr inbounds %struct.lc_element, ptr %call6, i32 0, i32 2
  %16 = ptrtoint ptr %refcnt.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %refcnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.i = icmp eq i32 %17, 0
  br i1 %cmp.i, label %_try_lc_del.exit, label %if.end20, !prof !261

_try_lc_del.exit:                                 ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %act_log to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %act_log, align 4
  call void @lc_del(ptr noundef %19, ptr noundef %call6) #10
  call void @_raw_spin_unlock_irq(ptr noundef %al_lock.i) #10
  br label %for.inc

if.end20:                                         ; preds = %do.body11
  call void @_raw_spin_unlock_irq(ptr noundef %al_lock.i) #10
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #10
  %20 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #10
  %call2257 = call i32 @prepare_to_wait_event(ptr noundef %al_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #10
  call void @_raw_spin_lock_irq(ptr noundef %al_lock.i) #10
  %21 = ptrtoint ptr %refcnt.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %refcnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.i4658 = icmp eq i32 %22, 0
  br i1 %cmp.i4658, label %if.end20.for.end_crit_edge, label %if.end20.cleanup_crit_edge, !prof !261

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  br label %cleanup

if.end20.for.end_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end20.cleanup_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef %al_lock.i) #10
  call void @schedule() #10
  %call22 = call i32 @prepare_to_wait_event(ptr noundef %al_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #10
  call void @_raw_spin_lock_irq(ptr noundef %al_lock.i) #10
  %23 = ptrtoint ptr %refcnt.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %refcnt.i, align 4
  %cmp.i46 = icmp eq i32 %24, 0
  br i1 %cmp.i46, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge, !prof !261

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end20.for.end_crit_edge
  %25 = ptrtoint ptr %act_log to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %act_log, align 4
  call void @lc_del(ptr noundef %26, ptr noundef %call6) #10
  call void @_raw_spin_unlock_irq(ptr noundef %al_lock.i) #10
  call void @finish_wait(ptr noundef %al_wait, ptr noundef nonnull %__wq_entry) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br label %for.inc

for.inc:                                          ; preds = %for.end, %_try_lc_del.exit, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.061, 1
  %27 = ptrtoint ptr %act_log to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %act_log, align 4
  %nr_elements = getelementptr inbounds %struct.lru_cache, ptr %28, i32 0, i32 7
  %29 = ptrtoint ptr %nr_elements to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %nr_elements, align 4
  %cmp = icmp ult i32 %inc, %30
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end30_crit_edge

for.inc.for.end30_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end30

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end30:                                        ; preds = %for.inc.for.end30_crit_edge, %do.end3.for.end30_crit_edge
  %al_wait31 = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 82
  call void @__wake_up(ptr noundef %al_wait31, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lc_element_by_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drbd_al_initialize(ptr noundef %device, ptr noundef %buffer) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ldev = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 15
  %0 = ptrtoint ptr %ldev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ldev, align 4
  %al_stripes = getelementptr inbounds %struct.drbd_backing_dev, ptr %1, i32 0, i32 2, i32 10
  %2 = ptrtoint ptr %al_stripes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %al_stripes, align 4
  %al_stripe_size_4k = getelementptr inbounds %struct.drbd_backing_dev, ptr %1, i32 0, i32 2, i32 11
  %4 = ptrtoint ptr %al_stripe_size_4k to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %al_stripe_size_4k, align 8
  %mul = mul i32 %5, %3
  %call = tail call fastcc i32 @__al_write_transaction(ptr noundef %device, ptr noundef %buffer)
  %al_lock = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 81
  tail call void @_raw_spin_lock_irq(ptr noundef %al_lock) #10
  %act_log = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 83
  %6 = ptrtoint ptr %act_log to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %act_log, align 4
  tail call void @lc_committed(ptr noundef %7) #10
  tail call void @_raw_spin_unlock_irq(ptr noundef %al_lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mul)
  %cmp17 = icmp sgt i32 %mul, 1
  br i1 %cmp17, label %entry.for.body_crit_edge, label %entry.cleanup4_crit_edge

entry.cleanup4_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup4

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.018, 1
  %exitcond.not = icmp eq i32 %inc, %mul
  br i1 %exitcond.not, label %for.cond.cleanup4_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond.cleanup4_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup4

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %i.018 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 1, %entry.for.body_crit_edge ]
  %call3 = tail call fastcc i32 @__al_write_transaction(ptr noundef %device, ptr noundef %buffer)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %for.cond, label %for.body.cleanup4_crit_edge

for.body.cleanup4_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup4

cleanup4:                                         ; preds = %for.body.cleanup4_crit_edge, %for.cond.cleanup4_crit_edge, %entry.cleanup4_crit_edge
  %retval.2 = phi i32 [ 0, %entry.cleanup4_crit_edge ], [ 0, %for.cond.cleanup4_crit_edge ], [ %call3, %for.body.cleanup4_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__al_write_transaction(ptr noundef %device, ptr noundef %buffer) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds i8, ptr %buffer, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 4092)
  %2 = ptrtoint ptr %buffer to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 1774937506, ptr %buffer, align 1
  %al_tr_number = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 84
  %3 = ptrtoint ptr %al_tr_number to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %al_tr_number, align 8
  %tr_number = getelementptr inbounds %struct.al_transaction_on_disk, ptr %buffer, i32 0, i32 1
  %5 = ptrtoint ptr %tr_number to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 %4, ptr %tr_number, align 1
  tail call void @drbd_bm_reset_al_hints(ptr noundef %device) #10
  %al_lock = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 81
  tail call void @_raw_spin_lock_irq(ptr noundef %al_lock) #10
  %act_log = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 83
  %6 = ptrtoint ptr %act_log to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %act_log, align 4
  %to_be_changed = getelementptr inbounds %struct.lru_cache, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %to_be_changed to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn190 = load ptr, ptr %to_be_changed, align 4
  %cmp.not192 = icmp eq ptr %.pn190, %to_be_changed
  br i1 %cmp.not192, label %do.end28.thread, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

do.end28.thread:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irq(ptr noundef %al_lock) #10
  %n_updates210 = getelementptr inbounds %struct.al_transaction_on_disk, ptr %buffer, i32 0, i32 4
  %9 = ptrtoint ptr %n_updates210 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 2)
  store i16 0, ptr %n_updates210, align 1
  br label %for.body33.preheader

for.body:                                         ; preds = %if.end9.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn194 = phi ptr [ %.pn, %if.end9.for.body_crit_edge ], [ %.pn190, %entry.for.body_crit_edge ]
  %i.0193 = phi i32 [ %inc10, %if.end9.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %i.0193)
  %cmp3 = icmp eq i32 %i.0193, 64
  br i1 %cmp3, label %for.end.thread, label %if.end

for.end.thread:                                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irq(ptr noundef %al_lock) #10
  br label %do.body22

if.end:                                           ; preds = %for.body
  %lc_index = getelementptr i8, ptr %.pn194, i32 12
  %10 = ptrtoint ptr %lc_index to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %lc_index, align 4
  %conv = trunc i32 %11 to i16
  %arrayidx = getelementptr %struct.al_transaction_on_disk, ptr %buffer, i32 0, i32 8, i32 %i.0193
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 %conv, ptr %arrayidx, align 1
  %lc_new_number = getelementptr i8, ptr %.pn194, i32 20
  %13 = ptrtoint ptr %lc_new_number to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %lc_new_number, align 4
  %arrayidx4 = getelementptr %struct.al_transaction_on_disk, ptr %buffer, i32 0, i32 9, i32 %i.0193
  %15 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 %14, ptr %arrayidx4, align 1
  %lc_number = getelementptr i8, ptr %.pn194, i32 16
  %16 = ptrtoint ptr %lc_number to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %lc_number, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %cmp5.not = icmp eq i32 %17, -1
  br i1 %cmp5.not, label %if.end.if.end9_crit_edge, label %if.then7

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %shr.i = lshr i32 %17, 5
  tail call void @drbd_bm_mark_for_writeout(ptr noundef %device, i32 noundef %shr.i) #10
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end.if.end9_crit_edge
  %inc10 = add nuw nsw i32 %i.0193, 1
  %18 = ptrtoint ptr %.pn194 to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn = load ptr, ptr %.pn194, align 4
  %19 = ptrtoint ptr %act_log to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %act_log, align 4
  %to_be_changed2 = getelementptr inbounds %struct.lru_cache, ptr %20, i32 0, i32 3
  %cmp.not = icmp eq ptr %.pn, %to_be_changed2
  br i1 %cmp.not, label %for.end, label %if.end9.for.body_crit_edge

if.end9.for.body_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %if.end9
  tail call void @_raw_spin_unlock_irq(ptr noundef %al_lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %i.0193)
  %cmp17 = icmp ugt i32 %i.0193, 63
  br i1 %cmp17, label %for.end.do.body22_crit_edge, label %do.end28, !prof !256

for.end.do.body22_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body22

do.body22:                                        ; preds = %for.end.do.body22_crit_edge, %for.end.thread
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/block/drbd/drbd_actlog.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 351, 0\0A.popsection", ""() #10, !srcloc !264
  unreachable

do.end28:                                         ; preds = %for.end
  %conv29 = trunc i32 %inc10 to i16
  %n_updates = getelementptr inbounds %struct.al_transaction_on_disk, ptr %buffer, i32 0, i32 4
  %21 = ptrtoint ptr %n_updates to i32
  call void @__asan_storeN_noabort(i32 %21, i32 2)
  store i16 %conv29, ptr %n_updates, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %inc10)
  %cmp31195.not = icmp eq i32 %inc10, 64
  br i1 %cmp31195.not, label %do.end28.for.end40_crit_edge, label %do.end28.for.body33.preheader_crit_edge

do.end28.for.body33.preheader_crit_edge:          ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body33.preheader

do.end28.for.end40_crit_edge:                     ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end40

for.body33.preheader:                             ; preds = %do.end28.for.body33.preheader_crit_edge, %do.end28.thread
  %i.0.lcssa207212 = phi i32 [ 0, %do.end28.thread ], [ %inc10, %do.end28.for.body33.preheader_crit_edge ]
  %smax = call i32 @llvm.smax.i32(i32 %i.0.lcssa207212, i32 63)
  br label %for.body33

for.body33:                                       ; preds = %for.body33.for.body33_crit_edge, %for.body33.preheader
  %i.2196 = phi i32 [ %inc39, %for.body33.for.body33_crit_edge ], [ %i.0.lcssa207212, %for.body33.preheader ]
  %arrayidx35 = getelementptr %struct.al_transaction_on_disk, ptr %buffer, i32 0, i32 8, i32 %i.2196
  %22 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_storeN_noabort(i32 %22, i32 2)
  store i16 -1, ptr %arrayidx35, align 1
  %arrayidx37 = getelementptr %struct.al_transaction_on_disk, ptr %buffer, i32 0, i32 9, i32 %i.2196
  %23 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 -1, ptr %arrayidx37, align 1
  %inc39 = add nuw nsw i32 %i.2196, 1
  %exitcond.not = icmp eq i32 %i.2196, %smax
  br i1 %exitcond.not, label %for.body33.for.end40_crit_edge, label %for.body33.for.body33_crit_edge

for.body33.for.body33_crit_edge:                  ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body33

for.body33.for.end40_crit_edge:                   ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end40

for.end40:                                        ; preds = %for.body33.for.end40_crit_edge, %do.end28.for.end40_crit_edge
  %24 = ptrtoint ptr %act_log to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %act_log, align 4
  %nr_elements = getelementptr inbounds %struct.lru_cache, ptr %25, i32 0, i32 7
  %26 = ptrtoint ptr %nr_elements to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nr_elements, align 4
  %conv42 = trunc i32 %27 to i16
  %context_size = getelementptr inbounds %struct.al_transaction_on_disk, ptr %buffer, i32 0, i32 5
  %28 = ptrtoint ptr %context_size to i32
  call void @__asan_storeN_noabort(i32 %28, i32 2)
  store i16 %conv42, ptr %context_size, align 1
  %al_tr_cycle = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 85
  %29 = ptrtoint ptr %al_tr_cycle to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %al_tr_cycle, align 4
  %conv43 = trunc i32 %30 to i16
  %context_start_slot_nr = getelementptr inbounds %struct.al_transaction_on_disk, ptr %buffer, i32 0, i32 6
  %31 = ptrtoint ptr %context_start_slot_nr to i32
  call void @__asan_storeN_noabort(i32 %31, i32 2)
  store i16 %conv43, ptr %context_start_slot_nr, align 1
  %32 = load ptr, ptr %act_log, align 4
  %nr_elements45 = getelementptr inbounds %struct.lru_cache, ptr %32, i32 0, i32 7
  %33 = ptrtoint ptr %nr_elements45 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %nr_elements45, align 4
  %35 = load i32, ptr %al_tr_cycle, align 4
  %sub = sub i32 %34, %35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp51197 = icmp sgt i32 %sub, 0
  br i1 %cmp51197, label %for.body53.preheader, label %for.end40.for.body65.preheader_crit_edge

for.end40.for.body65.preheader_crit_edge:         ; preds = %for.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body65.preheader

for.body53.preheader:                             ; preds = %for.end40
  %36 = tail call i32 @llvm.smin.i32(i32 %sub, i32 919)
  br label %for.body53

for.cond62.preheader:                             ; preds = %for.body53
  call void @__sanitizer_cov_trace_const_cmp4(i32 919, i32 %36)
  %cmp63200 = icmp ult i32 %36, 919
  br i1 %cmp63200, label %for.cond62.preheader.for.body65.preheader_crit_edge, label %for.cond62.preheader.for.end70_crit_edge

for.cond62.preheader.for.end70_crit_edge:         ; preds = %for.cond62.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end70

for.cond62.preheader.for.body65.preheader_crit_edge: ; preds = %for.cond62.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body65.preheader

for.body65.preheader:                             ; preds = %for.cond62.preheader.for.body65.preheader_crit_edge, %for.end40.for.body65.preheader_crit_edge
  %i.3.lcssa215 = phi i32 [ %36, %for.cond62.preheader.for.body65.preheader_crit_edge ], [ 0, %for.end40.for.body65.preheader_crit_edge ]
  %37 = shl nuw nsw i32 %i.3.lcssa215, 2
  %38 = add nuw nsw i32 %37, 420
  %uglygep = getelementptr i8, ptr %buffer, i32 %38
  %39 = sub nuw nsw i32 3676, %37
  %40 = call ptr @memset(ptr %uglygep, i32 255, i32 %39)
  br label %for.end70

for.body53:                                       ; preds = %for.body53.for.body53_crit_edge, %for.body53.preheader
  %i.3198 = phi i32 [ %inc60, %for.body53.for.body53_crit_edge ], [ 0, %for.body53.preheader ]
  %41 = ptrtoint ptr %al_tr_cycle to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %al_tr_cycle, align 4
  %add = add i32 %42, %i.3198
  %43 = ptrtoint ptr %act_log to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %act_log, align 4
  %call56 = tail call ptr @lc_element_by_index(ptr noundef %44, i32 noundef %add) #10
  %lc_number57 = getelementptr inbounds %struct.lc_element, ptr %call56, i32 0, i32 4
  %45 = ptrtoint ptr %lc_number57 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %lc_number57, align 4
  %arrayidx58 = getelementptr %struct.al_transaction_on_disk, ptr %buffer, i32 0, i32 10, i32 %i.3198
  %47 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_storeN_noabort(i32 %47, i32 4)
  store i32 %46, ptr %arrayidx58, align 1
  %inc60 = add nuw nsw i32 %i.3198, 1
  %exitcond203.not = icmp eq i32 %inc60, %36
  br i1 %exitcond203.not, label %for.cond62.preheader, label %for.body53.for.body53_crit_edge

for.body53.for.body53_crit_edge:                  ; preds = %for.body53
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body53

for.end70:                                        ; preds = %for.body65.preheader, %for.cond62.preheader.for.end70_crit_edge
  %48 = ptrtoint ptr %al_tr_cycle to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %al_tr_cycle, align 4
  %add72 = add i32 %49, 919
  store i32 %add72, ptr %al_tr_cycle, align 4
  %50 = ptrtoint ptr %act_log to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %act_log, align 4
  %nr_elements75 = getelementptr inbounds %struct.lru_cache, ptr %51, i32 0, i32 7
  %52 = ptrtoint ptr %nr_elements75 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %nr_elements75, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add72, i32 %53)
  %cmp76.not = icmp ult i32 %add72, %53
  %spec.store.select = select i1 %cmp76.not, i32 %add72, i32 0
  %54 = ptrtoint ptr %al_tr_cycle to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %spec.store.select, ptr %al_tr_cycle, align 4
  %ldev.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 15
  %55 = ptrtoint ptr %ldev.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ldev.i, align 4
  %md.i = getelementptr inbounds %struct.drbd_backing_dev, ptr %56, i32 0, i32 2
  %al_stripes.i = getelementptr inbounds %struct.drbd_backing_dev, ptr %56, i32 0, i32 2, i32 10
  %57 = ptrtoint ptr %al_stripes.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %al_stripes.i, align 4
  %al_stripe_size_4k.i = getelementptr inbounds %struct.drbd_backing_dev, ptr %56, i32 0, i32 2, i32 11
  %59 = ptrtoint ptr %al_stripe_size_4k.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %al_stripe_size_4k.i, align 8
  %61 = ptrtoint ptr %al_tr_number to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %al_tr_number, align 8
  %al_size_4k.i = getelementptr inbounds %struct.drbd_backing_dev, ptr %56, i32 0, i32 2, i32 12
  %63 = ptrtoint ptr %al_size_4k.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %al_size_4k.i, align 4
  %rem.i = urem i32 %62, %64
  %rem.i.frozen = freeze i32 %rem.i
  %.frozen = freeze i32 %58
  %div.i = udiv i32 %rem.i.frozen, %.frozen
  %65 = mul i32 %div.i, %.frozen
  %rem5.i.decomposed = sub i32 %rem.i.frozen, %65
  %mul.i = mul i32 %rem5.i.decomposed, %60
  %add.i = add i32 %mul.i, %div.i
  %mul6.i = shl i32 %add.i, 3
  %66 = ptrtoint ptr %md.i to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %md.i, align 8
  %al_offset.i = getelementptr inbounds %struct.drbd_backing_dev, ptr %56, i32 0, i32 2, i32 7
  %68 = ptrtoint ptr %al_offset.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %al_offset.i, align 8
  %conv.i = sext i32 %69 to i64
  %add11.i = add i64 %67, %conv.i
  %conv12.i = zext i32 %mul6.i to i64
  %add13.i = add i64 %add11.i, %conv12.i
  %call82 = tail call i32 @crc32c(i32 noundef 0, ptr noundef %buffer, i32 noundef 4096) #10
  %crc32c = getelementptr inbounds %struct.al_transaction_on_disk, ptr %buffer, i32 0, i32 2
  %70 = ptrtoint ptr %crc32c to i32
  call void @__asan_storeN_noabort(i32 %70, i32 4)
  store i32 %call82, ptr %crc32c, align 1
  %call83 = tail call i32 @drbd_bm_write_hinted(ptr noundef %device) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.else, label %for.end70.if.end115_crit_edge

for.end70.if.end115_crit_edge:                    ; preds = %for.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end115

if.else:                                          ; preds = %for.end70
  %71 = tail call i32 @llvm.read_register.i32(metadata !238) #10
  %and.i.i.i.i.i = and i32 %71, -16384
  %72 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %74, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !254
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %if.else.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.else.rcu_read_lock.exit_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.else
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.93, i32 noundef 696, ptr noundef nonnull @.str.94) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.else.rcu_read_lock.exit_crit_edge
  %75 = ptrtoint ptr %ldev.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ldev.i, align 4
  %disk_conf = getelementptr inbounds %struct.drbd_backing_dev, ptr %76, i32 0, i32 3
  %77 = ptrtoint ptr %disk_conf to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile ptr, ptr %disk_conf, align 8
  %call91 = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end100_crit_edge

rcu_read_lock.exit.do.end100_crit_edge:           ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end100

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call93 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %land.lhs.true.do.end100_crit_edge, label %land.lhs.true95

land.lhs.true.do.end100_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end100

land.lhs.true95:                                  ; preds = %land.lhs.true
  %.b177 = load i1, ptr @__al_write_transaction.__warned, align 1
  br i1 %.b177, label %land.lhs.true95.do.end100_crit_edge, label %if.then97

land.lhs.true95.do.end100_crit_edge:              ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end100

if.then97:                                        ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__al_write_transaction.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 386, ptr noundef nonnull @.str.1) #10
  br label %do.end100

do.end100:                                        ; preds = %if.then97, %land.lhs.true95.do.end100_crit_edge, %land.lhs.true.do.end100_crit_edge, %rcu_read_lock.exit.do.end100_crit_edge
  %al_updates = getelementptr inbounds %struct.disk_conf, ptr %78, i32 0, i32 24
  %79 = ptrtoint ptr %al_updates to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %al_updates, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool102.not = icmp eq i8 %80, 0
  %call.i178 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i178, label %do.end100.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i181

do.end100.rcu_read_unlock.exit_crit_edge:         ; preds = %do.end100
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i181:                               ; preds = %do.end100
  %call1.i179 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i179)
  %tobool.not.i180 = icmp eq i32 %call1.i179, 0
  br i1 %tobool.not.i180, label %land.lhs.true.i181.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i183

land.lhs.true.i181.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i181
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i183:                              ; preds = %land.lhs.true.i181
  %.b4.i182 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i182, label %land.lhs.true2.i183.rcu_read_unlock.exit_crit_edge, label %if.then.i184

land.lhs.true2.i183.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i183
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i184:                                     ; preds = %land.lhs.true2.i183
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.93, i32 noundef 724, ptr noundef nonnull @.str.95) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i184, %land.lhs.true2.i183.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i181.rcu_read_unlock.exit_crit_edge, %do.end100.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !255
  %81 = tail call i32 @llvm.read_register.i32(metadata !238) #10
  %and.i.i.i.i.i185 = and i32 %81, -16384
  %82 = inttoptr i32 %and.i.i.i.i.i185 to ptr
  %preempt_count.i.i.i.i186 = getelementptr inbounds %struct.thread_info, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %preempt_count.i.i.i.i186 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile i32, ptr %preempt_count.i.i.i.i186, align 4
  %sub.i.i.i = add i32 %84, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i186, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  br i1 %tobool102.not, label %rcu_read_unlock.exit.if.end115_crit_edge, label %if.then104

rcu_read_unlock.exit.if.end115_crit_edge:         ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end115

if.then104:                                       ; preds = %rcu_read_unlock.exit
  %85 = ptrtoint ptr %ldev.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %ldev.i, align 4
  %call106 = tail call i32 @drbd_md_sync_page_io(ptr noundef %device, ptr noundef %86, i64 noundef %add13.i, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %if.else109, label %if.then108

if.then108:                                       ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @drbd_chk_io_error_(ptr noundef %device, i32 noundef 2, ptr noundef nonnull @__func__.__al_write_transaction)
  br label %if.end115

if.else109:                                       ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #12
  %87 = ptrtoint ptr %al_tr_number to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %al_tr_number, align 8
  %inc111 = add i32 %88, 1
  store i32 %inc111, ptr %al_tr_number, align 8
  %al_writ_cnt = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 34
  %89 = ptrtoint ptr %al_writ_cnt to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %al_writ_cnt, align 4
  %inc112 = add i32 %90, 1
  store i32 %inc112, ptr %al_writ_cnt, align 4
  br label %if.end115

if.end115:                                        ; preds = %if.else109, %if.then108, %rcu_read_unlock.exit.if.end115_crit_edge, %for.end70.if.end115_crit_edge
  %err.1 = phi i32 [ -5, %for.end70.if.end115_crit_edge ], [ -5, %if.then108 ], [ 0, %if.else109 ], [ 0, %rcu_read_unlock.exit.if.end115_crit_edge ]
  ret i32 %err.1
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @drbd_advance_rs_marks(ptr nocapture noundef %device, i32 noundef %still_to_go) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %rs_last_mark = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 55
  %1 = ptrtoint ptr %rs_last_mark to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %rs_last_mark, align 8
  %arrayidx = getelementptr %struct.drbd_device, ptr %device, i32 0, i32 54, i32 %2
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %add = add i32 %2, 1
  %rem = srem i32 %add, 8
  %add2.neg = add i32 %0, -300
  %sub = sub i32 %add2.neg, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp = icmp sgt i32 %sub, -1
  br i1 %cmp, label %if.then, label %entry.if.end19_crit_edge

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then:                                          ; preds = %entry
  %arrayidx4 = getelementptr %struct.drbd_device, ptr %device, i32 0, i32 53, i32 %2
  %5 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %still_to_go)
  %cmp5.not = icmp eq i32 %6, %still_to_go
  br i1 %cmp5.not, label %if.then.if.end19_crit_edge, label %land.lhs.true

if.then.if.end19_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

land.lhs.true:                                    ; preds = %if.then
  %state = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 27
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %bf.load = load i32, ptr %state, align 8
  %8 = and i32 %bf.load, 480
  call void @__sanitizer_cov_trace_const_cmp4(i32 320, i32 %8)
  %switch = icmp eq i32 %8, 320
  br i1 %switch, label %land.lhs.true.if.end19_crit_edge, label %if.then13

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then13:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx15 = getelementptr %struct.drbd_device, ptr %device, i32 0, i32 54, i32 %rem
  %9 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %0, ptr %arrayidx15, align 4
  %arrayidx17 = getelementptr %struct.drbd_device, ptr %device, i32 0, i32 53, i32 %rem
  %10 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %still_to_go, ptr %arrayidx17, align 4
  %11 = ptrtoint ptr %rs_last_mark to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %rem, ptr %rs_last_mark, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.then13, %land.lhs.true.if.end19_crit_edge, %if.then.if.end19_crit_edge, %entry.if.end19_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__drbd_change_sync(ptr noundef %device, i64 noundef %sector, i32 noundef %size, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode)
  %cmp = icmp eq i32 %mode, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp1 = icmp eq i32 %size, 0
  %or.cond = and i1 %cmp1, %cmp
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = add i32 %size, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217728, i32 %0)
  %1 = icmp ult i32 %0, 134217728
  %and.i = and i32 %size, 511
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp2.i = icmp eq i32 %and.i, 0
  %2 = and i1 %1, %cmp2.i
  br i1 %2, label %if.end3, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %vdisk = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %3 = ptrtoint ptr %vdisk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vdisk, align 4
  %part0 = getelementptr inbounds %struct.gendisk, ptr %4, i32 0, i32 7
  %5 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %part0, align 4
  %bd_device = getelementptr inbounds %struct.block_device, ptr %6, i32 0, i32 10
  %arrayidx = getelementptr [3 x ptr], ptr @drbd_change_sync_fname, i32 0, i32 %mode
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %bd_device, ptr noundef nonnull @.str.38, ptr noundef %8, i64 noundef %sector, i32 noundef %size) #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %state.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 27
  %9 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %bf.load.i = load i32, ptr %state.i, align 8
  %10 = and i32 %bf.load.i, 7680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i = icmp eq i32 %10, 0
  br i1 %cmp.i, label %if.end3.cleanup_crit_edge, label %if.end.i

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.end3
  %local_cnt.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 41
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %local_cnt.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %local_cnt.i, i32 1, i32 3, i32 1) #10
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %local_cnt.i, ptr %local_cnt.i, i32 1, ptr elementtype(i32) %local_cnt.i) #10, !srcloc !259
  %12 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %bf.load2.i = load i32, ptr %state.i, align 8
  %13 = and i32 %bf.load2.i, 6144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp5.not.i = icmp eq i32 %13, 0
  br i1 %cmp5.not.i, label %if.then6.i, label %if.end7

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @put_ldev(ptr noundef %device) #10
  br label %cleanup

if.end7:                                          ; preds = %if.end.i
  %vdisk8 = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %14 = ptrtoint ptr %vdisk8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vdisk8, align 4
  %part0.i = getelementptr inbounds %struct.gendisk, ptr %15, i32 0, i32 7
  %16 = ptrtoint ptr %part0.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %part0.i, align 4
  %bd_nr_sectors.i.i = getelementptr inbounds %struct.block_device, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %bd_nr_sectors.i.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %bd_nr_sectors.i.i, align 8
  %shr118 = lshr i32 %size, 9
  %conv119 = zext i32 %shr118 to i64
  %add = add i64 %sector, -1
  %sub = add i64 %add, %conv119
  call void @__sanitizer_cov_trace_cmp8(i64 %19, i64 %sector)
  %cmp10 = icmp ugt i64 %19, %sector
  br i1 %cmp10, label %if.end26.critedge, label %do.end16

do.end16:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %bd_device19 = getelementptr inbounds %struct.block_device, ptr %17, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %bd_device19, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.39) #13
  br label %out

if.end26.critedge:                                ; preds = %if.end7
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %19)
  %cmp28 = icmp ult i64 %sub, %19
  br i1 %cmp28, label %if.end26.critedge.if.end39_crit_edge, label %do.end35

if.end26.critedge.if.end39_crit_edge:             ; preds = %if.end26.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

do.end35:                                         ; preds = %if.end26.critedge
  call void @__sanitizer_cov_trace_pc() #12
  %bd_device38 = getelementptr inbounds %struct.block_device, ptr %17, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %bd_device38, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.39) #13
  br label %if.end39

if.end39:                                         ; preds = %do.end35, %if.end26.critedge.if.end39_crit_edge
  %sub45 = add i64 %19, -1
  %spec.select = select i1 %cmp28, i64 %sub, i64 %sub45
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mode)
  %cmp50 = icmp eq i32 %mode, 2
  br i1 %cmp50, label %if.then52, label %if.else77

if.then52:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_const_cmp8(i64 7, i64 %spec.select)
  %cmp53 = icmp ult i64 %spec.select, 7
  br i1 %cmp53, label %if.then52.out_crit_edge, label %if.end58, !prof !256

if.then52.out_crit_edge:                          ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end58:                                         ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_cmp8(i64 %spec.select, i64 %sub45)
  %cmp60 = icmp eq i64 %spec.select, %sub45
  %sub69 = add i64 %spec.select, 34359738361
  %ebnr.0.v.v = select i1 %cmp60, i64 %sub45, i64 %sub69, !prof !256
  %ebnr.0.v = lshr i64 %ebnr.0.v.v, 3
  %ebnr.0 = trunc i64 %ebnr.0.v to i32
  %sub74 = add i64 %sector, 7
  %shr75 = lshr i64 %sub74, 3
  %conv76 = trunc i64 %shr75 to i32
  br label %if.end82

if.else77:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  %shr78 = lshr i64 %sector, 3
  %conv79 = trunc i64 %shr78 to i32
  %shr80 = lshr i64 %spec.select, 3
  %conv81 = trunc i64 %shr80 to i32
  br label %if.end82

if.end82:                                         ; preds = %if.else77, %if.end58
  %ebnr.1 = phi i32 [ %ebnr.0, %if.end58 ], [ %conv81, %if.else77 ]
  %sbnr.0 = phi i32 [ %conv76, %if.end58 ], [ %conv79, %if.else77 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %sbnr.0, i32 %ebnr.1)
  %cmp.not91.i = icmp ugt i32 %sbnr.0, %ebnr.1
  br i1 %cmp.not91.i, label %if.end82.out_crit_edge, label %while.body.lr.ph.i

if.end82.out_crit_edge:                           ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

while.body.lr.ph.i:                               ; preds = %if.end82
  %al_lock.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 81
  %resync.i.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 65
  %resync_locked.i.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 66
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode)
  %cmp72.i.i = icmp eq i32 %mode, 0
  br label %while.body.i

while.body.i:                                     ; preds = %if.end21.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %sbnr.addr.094.i = phi i32 [ %sbnr.0, %while.body.lr.ph.i ], [ %add22.i, %if.end21.i.while.body.i_crit_edge ]
  %count.093.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %count.1.i, %if.end21.i.while.body.i_crit_edge ]
  %cleared.092.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %cleared.1.i, %if.end21.i.while.body.i_crit_edge ]
  %or.i = or i32 %sbnr.addr.094.i, 4095
  %20 = tail call i32 @llvm.umin.i32(i32 %or.i, i32 %ebnr.1) #10
  %21 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.132)
  switch i32 %mode, label %if.else6.i [
    i32 0, label %if.then.i
    i32 2, label %if.then4.i
  ]

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 @drbd_bm_count_bits(ptr noundef %device, i32 noundef %sbnr.addr.094.i, i32 noundef %20) #10
  br label %if.end8.i

if.then4.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i = tail call i32 @drbd_bm_clear_bits(ptr noundef %device, i32 noundef %sbnr.addr.094.i, i32 noundef %20) #10
  br label %if.end8.i

if.else6.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %call7.i = tail call i32 @drbd_bm_set_bits(ptr noundef %device, i32 noundef %sbnr.addr.094.i, i32 noundef %20) #10
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.else6.i, %if.then4.i, %if.then.i
  %c.0.i = phi i32 [ %call.i, %if.then.i ], [ %call5.i, %if.then4.i ], [ %call7.i, %if.else6.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %c.0.i)
  %tobool.not.i = icmp eq i32 %c.0.i, 0
  br i1 %tobool.not.i, label %if.end8.i.if.end21.i_crit_edge, label %do.body10.i

if.end8.i.if.end21.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i

do.body10.i:                                      ; preds = %if.end8.i
  %call14.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %al_lock.i) #10
  %shr.i = lshr i32 %sbnr.addr.094.i, 12
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %local_cnt.i, i32 noundef 4) #10
  %22 = ptrtoint ptr %local_cnt.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %local_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i.i = icmp eq i32 %23, 0
  br i1 %tobool.not.i.i, label %do.end.i.i, label %do.body10.i.do.end3.i.i_crit_edge

do.body10.i.do.end3.i.i_crit_edge:                ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end3.i.i

do.end.i.i:                                       ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %vdisk8 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %vdisk8, align 4
  %part0.i.i = getelementptr inbounds %struct.gendisk, ptr %25, i32 0, i32 7
  %26 = ptrtoint ptr %part0.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %part0.i.i, align 4
  %bd_device.i.i = getelementptr inbounds %struct.block_device, ptr %27, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %bd_device.i.i, ptr noundef nonnull @.str.114, ptr noundef nonnull @.str, i32 noundef 657) #13
  br label %do.end3.i.i

do.end3.i.i:                                      ; preds = %do.end.i.i, %do.body10.i.do.end3.i.i_crit_edge
  %28 = ptrtoint ptr %resync.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %resync.i.i, align 4
  br i1 %cmp, label %if.end8.i.i, label %if.end8.thread.i.i

if.end8.i.i:                                      ; preds = %do.end3.i.i
  %call5.i.i = tail call ptr @lc_find(ptr noundef %29, i32 noundef %shr.i) #10
  %tobool9.not.i.i = icmp eq ptr %call5.i.i, null
  br i1 %tobool9.not.i.i, label %if.end8.i.i.update_rs_extent.exit.i_crit_edge, label %if.then10.thread.i.i

if.end8.i.i.update_rs_extent.exit.i_crit_edge:    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_rs_extent.exit.i

if.end8.thread.i.i:                               ; preds = %do.end3.i.i
  %call7.i.i = tail call ptr @lc_get(ptr noundef %29, i32 noundef %shr.i) #10
  %tobool9.not162.i.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool9.not162.i.i, label %do.end93.i.i, label %if.then10.i.i

if.then10.i.i:                                    ; preds = %if.end8.thread.i.i
  %add.ptr.i.i = getelementptr i8, ptr %call7.i.i, i32 -12
  %lc_number.i.i = getelementptr inbounds %struct.lc_element, ptr %call7.i.i, i32 0, i32 4
  %30 = ptrtoint ptr %lc_number.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %lc_number.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %shr.i)
  %cmp11.i.i = icmp eq i32 %31, %shr.i
  br i1 %cmp11.i.i, label %if.then12.i.i, label %if.then10.i.i.if.else41.i.i_crit_edge

if.then10.i.i.if.else41.i.i_crit_edge:            ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else41.i.i

if.then10.thread.i.i:                             ; preds = %if.end8.i.i
  %add.ptr166.i.i = getelementptr i8, ptr %call5.i.i, i32 -12
  %lc_number167.i.i = getelementptr inbounds %struct.lc_element, ptr %call5.i.i, i32 0, i32 4
  %32 = ptrtoint ptr %lc_number167.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %lc_number167.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %shr.i)
  %cmp11168.i.i = icmp eq i32 %33, %shr.i
  br i1 %cmp11168.i.i, label %if.then17.i.i, label %if.then10.thread.i.i.if.else41.i.i_crit_edge

if.then10.thread.i.i.if.else41.i.i_crit_edge:     ; preds = %if.then10.thread.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else41.i.i

if.then12.i.i:                                    ; preds = %if.then10.i.i
  br i1 %cmp50, label %if.then14.i.i, label %if.else19.i.i

if.then14.i.i:                                    ; preds = %if.then12.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %add.ptr.i.i, align 4
  %sub.i.i = sub i32 %35, %c.0.i
  store i32 %sub.i.i, ptr %add.ptr.i.i, align 4
  br label %if.end22.i.i

if.then17.i.i:                                    ; preds = %if.then10.thread.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %add.ptr166.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %add.ptr166.i.i, align 4
  %add.i.i = add i32 %37, %c.0.i
  store i32 %add.i.i, ptr %add.ptr166.i.i, align 4
  br label %if.end22.i.i

if.else19.i.i:                                    ; preds = %if.then12.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %rs_failed.i.i = getelementptr i8, ptr %call7.i.i, i32 -8
  %38 = ptrtoint ptr %rs_failed.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rs_failed.i.i, align 4
  %add20.i.i = add i32 %39, %c.0.i
  store i32 %add20.i.i, ptr %rs_failed.i.i, align 4
  br label %if.end22.i.i

if.end22.i.i:                                     ; preds = %if.else19.i.i, %if.then17.i.i, %if.then14.i.i
  %e.0163171186.i.i = phi ptr [ %call5.i.i, %if.then17.i.i ], [ %call7.i.i, %if.else19.i.i ], [ %call7.i.i, %if.then14.i.i ]
  %lc_number176183.i.i = phi ptr [ %lc_number167.i.i, %if.then17.i.i ], [ %lc_number.i.i, %if.else19.i.i ], [ %lc_number.i.i, %if.then14.i.i ]
  %add.ptr173.i.i = phi ptr [ %add.ptr166.i.i, %if.then17.i.i ], [ %add.ptr.i.i, %if.else19.i.i ], [ %add.ptr.i.i, %if.then14.i.i ]
  %40 = ptrtoint ptr %add.ptr173.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %add.ptr173.i.i, align 4
  %rs_failed24.i.i = getelementptr i8, ptr %e.0163171186.i.i, i32 -8
  %42 = ptrtoint ptr %rs_failed24.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rs_failed24.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %43)
  %cmp25.i.i = icmp slt i32 %41, %43
  br i1 %cmp25.i.i, label %do.end29.i.i, label %if.end22.i.i.if.end75.i.i_crit_edge

if.end22.i.i.if.end75.i.i_crit_edge:              ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end75.i.i

do.end29.i.i:                                     ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %vdisk8 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %vdisk8, align 4
  %part031.i.i = getelementptr inbounds %struct.gendisk, ptr %45, i32 0, i32 7
  %46 = ptrtoint ptr %part031.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %part031.i.i, align 4
  %bd_device32.i.i = getelementptr inbounds %struct.block_device, ptr %47, i32 0, i32 10
  %48 = ptrtoint ptr %lc_number176183.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %lc_number176183.i.i, align 4
  %50 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %bf.load.i.i = load i32, ptr %state.i, align 8
  %bf.lshr.i.i = lshr i32 %bf.load.i.i, 4
  %bf.clear.i.i = and i32 %bf.lshr.i.i, 31
  %call37.i.i = tail call ptr @drbd_conn_str(i32 noundef %bf.clear.i.i) #10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.60, ptr noundef %bd_device32.i.i, ptr noundef nonnull @.str.117, i32 noundef %49, i32 noundef %41, i32 noundef %43, i32 noundef %c.0.i, ptr noundef %call37.i.i) #13
  %call38.i.i = tail call i32 @drbd_bm_e_weight(ptr noundef %device, i32 noundef %shr.i) #10
  %51 = ptrtoint ptr %add.ptr173.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %call38.i.i, ptr %add.ptr173.i.i, align 4
  br label %if.end75.i.i

if.else41.i.i:                                    ; preds = %if.then10.thread.i.i.if.else41.i.i_crit_edge, %if.then10.i.i.if.else41.i.i_crit_edge
  %lc_number177.i.i = phi ptr [ %lc_number167.i.i, %if.then10.thread.i.i.if.else41.i.i_crit_edge ], [ %lc_number.i.i, %if.then10.i.i.if.else41.i.i_crit_edge ]
  %add.ptr175.i.i = phi ptr [ %add.ptr166.i.i, %if.then10.thread.i.i.if.else41.i.i_crit_edge ], [ %add.ptr.i.i, %if.then10.i.i.if.else41.i.i_crit_edge ]
  %e.0163170.i.i = phi ptr [ %call5.i.i, %if.then10.thread.i.i.if.else41.i.i_crit_edge ], [ %call7.i.i, %if.then10.i.i.if.else41.i.i_crit_edge ]
  %call43.i.i = tail call i32 @drbd_bm_e_weight(ptr noundef %device, i32 noundef %shr.i) #10
  %flags.i.i = getelementptr i8, ptr %e.0163170.i.i, i32 -4
  %52 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %flags.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp44.not.i.i = icmp eq i32 %53, 0
  br i1 %cmp44.not.i.i, label %if.else41.i.i.if.end57.i.i_crit_edge, label %do.end48.i.i

if.else41.i.i.if.end57.i.i_crit_edge:             ; preds = %if.else41.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57.i.i

do.end48.i.i:                                     ; preds = %if.else41.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %54 = ptrtoint ptr %vdisk8 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %vdisk8, align 4
  %part050.i.i = getelementptr inbounds %struct.gendisk, ptr %55, i32 0, i32 7
  %56 = ptrtoint ptr %part050.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %part050.i.i, align 4
  %bd_device51.i.i = getelementptr inbounds %struct.block_device, ptr %57, i32 0, i32 10
  %58 = ptrtoint ptr %lc_number177.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %lc_number177.i.i, align 4
  %60 = ptrtoint ptr %add.ptr175.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %add.ptr175.i.i, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.60, ptr noundef %bd_device51.i.i, ptr noundef nonnull @.str.120, i32 noundef %59, i32 noundef %61, i32 noundef %53, i32 noundef %shr.i, i32 noundef %call43.i.i) #13
  %62 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %flags.i.i, align 4
  br label %if.end57.i.i

if.end57.i.i:                                     ; preds = %do.end48.i.i, %if.else41.i.i.if.end57.i.i_crit_edge
  %rs_failed58.i.i = getelementptr i8, ptr %e.0163170.i.i, i32 -8
  %63 = ptrtoint ptr %rs_failed58.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %rs_failed58.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool59.not.i.i = icmp eq i32 %64, 0
  br i1 %tobool59.not.i.i, label %if.end57.i.i.if.end70.i.i_crit_edge, label %do.end63.i.i

if.end57.i.i.if.end70.i.i_crit_edge:              ; preds = %if.end57.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70.i.i

do.end63.i.i:                                     ; preds = %if.end57.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %65 = ptrtoint ptr %vdisk8 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %vdisk8, align 4
  %part065.i.i = getelementptr inbounds %struct.gendisk, ptr %66, i32 0, i32 7
  %67 = ptrtoint ptr %part065.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %part065.i.i, align 4
  %bd_device66.i.i = getelementptr inbounds %struct.block_device, ptr %68, i32 0, i32 10
  %69 = ptrtoint ptr %lc_number177.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %lc_number177.i.i, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.60, ptr noundef %bd_device66.i.i, ptr noundef nonnull @.str.123, i32 noundef %70, i32 noundef %64) #13
  br label %if.end70.i.i

if.end70.i.i:                                     ; preds = %do.end63.i.i, %if.end57.i.i.if.end70.i.i_crit_edge
  %71 = ptrtoint ptr %add.ptr175.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %call43.i.i, ptr %add.ptr175.i.i, align 4
  %spec.select.i.i = select i1 %cmp72.i.i, i32 %c.0.i, i32 0
  %72 = ptrtoint ptr %rs_failed58.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %spec.select.i.i, ptr %rs_failed58.i.i, align 4
  %73 = ptrtoint ptr %resync.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %resync.i.i, align 4
  tail call void @lc_committed(ptr noundef %74) #10
  br label %if.end75.i.i

if.end75.i.i:                                     ; preds = %if.end70.i.i, %do.end29.i.i, %if.end22.i.i.if.end75.i.i_crit_edge
  %add.ptr174.i.i = phi ptr [ %add.ptr173.i.i, %if.end22.i.i.if.end75.i.i_crit_edge ], [ %add.ptr173.i.i, %do.end29.i.i ], [ %add.ptr175.i.i, %if.end70.i.i ]
  %e.0163169.i.i = phi ptr [ %e.0163171186.i.i, %if.end22.i.i.if.end75.i.i_crit_edge ], [ %e.0163171186.i.i, %do.end29.i.i ], [ %e.0163170.i.i, %if.end70.i.i ]
  br i1 %cmp, label %if.end75.i.i.if.end81.i.i_crit_edge, label %if.then77.i.i

if.end75.i.i.if.end81.i.i_crit_edge:              ; preds = %if.end75.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end81.i.i

if.then77.i.i:                                    ; preds = %if.end75.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %75 = ptrtoint ptr %resync.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %resync.i.i, align 4
  %call80.i.i = tail call i32 @lc_put(ptr noundef %76, ptr noundef nonnull %e.0163169.i.i) #10
  br label %if.end81.i.i

if.end81.i.i:                                     ; preds = %if.then77.i.i, %if.end75.i.i.if.end81.i.i_crit_edge
  %77 = ptrtoint ptr %add.ptr174.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %add.ptr174.i.i, align 4
  %rs_failed83.i.i = getelementptr i8, ptr %e.0163169.i.i, i32 -8
  %79 = ptrtoint ptr %rs_failed83.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %rs_failed83.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %80)
  %cmp84.not.i.i = icmp sgt i32 %78, %80
  br i1 %cmp84.not.i.i, label %if.end81.i.i.update_rs_extent.exit.i_crit_edge, label %if.then85.i.i

if.end81.i.i.update_rs_extent.exit.i_crit_edge:   ; preds = %if.end81.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_rs_extent.exit.i

if.then85.i.i:                                    ; preds = %if.end81.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %81 = ptrtoint ptr %rs_failed83.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %rs_failed83.i.i, align 4
  br label %update_rs_extent.exit.i

do.end93.i.i:                                     ; preds = %if.end8.thread.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %82 = ptrtoint ptr %vdisk8 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %vdisk8, align 4
  %part095.i.i = getelementptr inbounds %struct.gendisk, ptr %83, i32 0, i32 7
  %84 = ptrtoint ptr %part095.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %part095.i.i, align 4
  %bd_device96.i.i = getelementptr inbounds %struct.block_device, ptr %85, i32 0, i32 10
  %86 = ptrtoint ptr %resync_locked.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %resync_locked.i.i, align 8
  %88 = ptrtoint ptr %resync.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %resync.i.i, align 4
  %nr_elements.i.i = getelementptr inbounds %struct.lru_cache, ptr %89, i32 0, i32 7
  %90 = ptrtoint ptr %nr_elements.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %nr_elements.i.i, align 4
  %flags99.i.i = getelementptr inbounds %struct.lru_cache, ptr %89, i32 0, i32 16
  %92 = ptrtoint ptr %flags99.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %flags99.i.i, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %bd_device96.i.i, ptr noundef nonnull @.str.126, i32 noundef %87, i32 noundef %91, i32 noundef %93) #13
  br label %update_rs_extent.exit.i

update_rs_extent.exit.i:                          ; preds = %do.end93.i.i, %if.then85.i.i, %if.end81.i.i.update_rs_extent.exit.i_crit_edge, %if.end8.i.i.update_rs_extent.exit.i_crit_edge
  %retval.1.i.i = phi i32 [ 1, %if.then85.i.i ], [ 0, %if.end81.i.i.update_rs_extent.exit.i_crit_edge ], [ 0, %do.end93.i.i ], [ 0, %if.end8.i.i.update_rs_extent.exit.i_crit_edge ]
  %add.i = add i32 %retval.1.i.i, %cleared.092.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %al_lock.i, i32 noundef %call14.i) #10
  %add20.i = add i32 %c.0.i, %count.093.i
  br label %if.end21.i

if.end21.i:                                       ; preds = %update_rs_extent.exit.i, %if.end8.i.if.end21.i_crit_edge
  %cleared.1.i = phi i32 [ %add.i, %update_rs_extent.exit.i ], [ %cleared.092.i, %if.end8.i.if.end21.i_crit_edge ]
  %count.1.i = phi i32 [ %add20.i, %update_rs_extent.exit.i ], [ %count.093.i, %if.end8.i.if.end21.i_crit_edge ]
  %add22.i = add i32 %20, 1
  %cmp.not.i = icmp ugt i32 %add22.i, %ebnr.1
  br i1 %cmp.not.i, label %while.end.i, label %if.end21.i.while.body.i_crit_edge

if.end21.i.while.body.i_crit_edge:                ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.end.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.1.i)
  %tobool23.not.i = icmp eq i32 %count.1.i, 0
  br i1 %tobool23.not.i, label %while.end.i.out_crit_edge, label %if.then24.i

while.end.i.out_crit_edge:                        ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then24.i:                                      ; preds = %while.end.i
  %94 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %94, ptr @__sancov_gen_cov_switch_values.133)
  switch i32 %mode, label %if.then24.i.if.end44.i_crit_edge [
    i32 2, label %if.then27.i
    i32 0, label %if.then40.i
  ]

if.then24.i.if.end44.i_crit_edge:                 ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44.i

if.then27.i:                                      ; preds = %if.then24.i
  %call28.i = tail call i32 @drbd_bm_total_weight(ptr noundef %device) #10
  %rs_failed.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 49
  %95 = ptrtoint ptr %rs_failed.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %rs_failed.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call28.i, i32 %96)
  %cmp29.i = icmp ule i32 %call28.i, %96
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %97 = load volatile i32, ptr @jiffies, align 128
  %rs_last_mark.i.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 55
  %98 = ptrtoint ptr %rs_last_mark.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %rs_last_mark.i.i, align 8
  %arrayidx.i.i = getelementptr %struct.drbd_device, ptr %device, i32 0, i32 54, i32 %99
  %100 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx.i.i, align 4
  %add.i80.i = add i32 %99, 1
  %rem.i.i = srem i32 %add.i80.i, 8
  %add2.neg.i.i = add i32 %97, -300
  %sub.i81.i = sub i32 %add2.neg.i.i, %101
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i81.i)
  %cmp.i82.i = icmp sgt i32 %sub.i81.i, -1
  br i1 %cmp.i82.i, label %if.then.i.i, label %if.then27.i.drbd_advance_rs_marks.exit.i_crit_edge

if.then27.i.drbd_advance_rs_marks.exit.i_crit_edge: ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %drbd_advance_rs_marks.exit.i

if.then.i.i:                                      ; preds = %if.then27.i
  %arrayidx4.i.i = getelementptr %struct.drbd_device, ptr %device, i32 0, i32 53, i32 %99
  %102 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx4.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %103, i32 %call28.i)
  %cmp5.not.i.i = icmp eq i32 %103, %call28.i
  br i1 %cmp5.not.i.i, label %if.then.i.i.drbd_advance_rs_marks.exit.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.drbd_advance_rs_marks.exit.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %drbd_advance_rs_marks.exit.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i
  %104 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %bf.load.i84.i = load i32, ptr %state.i, align 8
  %105 = and i32 %bf.load.i84.i, 480
  call void @__sanitizer_cov_trace_const_cmp4(i32 320, i32 %105)
  %switch.i.i = icmp eq i32 %105, 320
  br i1 %switch.i.i, label %land.lhs.true.i.i.drbd_advance_rs_marks.exit.i_crit_edge, label %if.then13.i.i

land.lhs.true.i.i.drbd_advance_rs_marks.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %drbd_advance_rs_marks.exit.i

if.then13.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx15.i.i = getelementptr %struct.drbd_device, ptr %device, i32 0, i32 54, i32 %rem.i.i
  %106 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %97, ptr %arrayidx15.i.i, align 4
  %arrayidx17.i.i = getelementptr %struct.drbd_device, ptr %device, i32 0, i32 53, i32 %rem.i.i
  %107 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %call28.i, ptr %arrayidx17.i.i, align 4
  %108 = ptrtoint ptr %rs_last_mark.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %rem.i.i, ptr %rs_last_mark.i.i, align 8
  br label %drbd_advance_rs_marks.exit.i

drbd_advance_rs_marks.exit.i:                     ; preds = %if.then13.i.i, %land.lhs.true.i.i.drbd_advance_rs_marks.exit.i_crit_edge, %if.then.i.i.drbd_advance_rs_marks.exit.i_crit_edge, %if.then27.i.drbd_advance_rs_marks.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cleared.1.i)
  %tobool31.not.i = icmp ne i32 %cleared.1.i, 0
  %brmerge.i = select i1 %tobool31.not.i, i1 true, i1 %cmp29.i
  br i1 %brmerge.i, label %if.then34.i, label %drbd_advance_rs_marks.exit.i.if.end44.i_crit_edge

drbd_advance_rs_marks.exit.i.if.end44.i_crit_edge: ; preds = %drbd_advance_rs_marks.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44.i

if.then34.i:                                      ; preds = %drbd_advance_rs_marks.exit.i
  br i1 %cmp29.i, label %if.then.i86.i, label %if.else.i.i

if.then.i86.i:                                    ; preds = %if.then34.i
  %peer_devices.i.i.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 1
  %109 = ptrtoint ptr %peer_devices.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load volatile ptr, ptr %peer_devices.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %110, %peer_devices.i.i.i
  %spec.select.i.i.i = select i1 %cmp.not.i.i.i, ptr null, ptr %110
  %connection1.i.i = getelementptr inbounds %struct.drbd_peer_device, ptr %spec.select.i.i.i, i32 0, i32 2
  %111 = ptrtoint ptr %connection1.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %connection1.i.i, align 4
  %agreed_pro_version.i.i = getelementptr inbounds %struct.drbd_connection, ptr %112, i32 0, i32 19
  %113 = ptrtoint ptr %agreed_pro_version.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %agreed_pro_version.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %114)
  %cmp.i85.i = icmp slt i32 %114, 96
  br i1 %cmp.i85.i, label %if.then.i86.i.if.then3.i.i_crit_edge, label %lor.lhs.false.i.i

if.then.i86.i.if.then3.i.i_crit_edge:             ; preds = %if.then.i86.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3.i.i

lor.lhs.false.i.i:                                ; preds = %if.then.i86.i
  %115 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %bf.load.i88.i = load i32, ptr %state.i, align 8
  %116 = and i32 %bf.load.i88.i, 432
  call void @__sanitizer_cov_trace_const_cmp4(i32 272, i32 %116)
  %117 = icmp eq i32 %116, 272
  br i1 %117, label %lor.lhs.false.i.i.if.then3.i.i_crit_edge, label %lor.lhs.false.i.i.if.end7.i.i_crit_edge

lor.lhs.false.i.i.if.end7.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i.i

lor.lhs.false.i.i.if.then3.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3.i.i

if.then3.i.i:                                     ; preds = %lor.lhs.false.i.i.if.then3.i.i_crit_edge, %if.then.i86.i.if.then3.i.i_crit_edge
  %flags.i89.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 14
  tail call void @_set_bit(i32 noundef 28, ptr noundef %flags.i89.i) #10
  br label %if.end7.i.i

if.else.i.i:                                      ; preds = %if.then34.i
  %rs_last_bcast.i.i.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 56
  %118 = ptrtoint ptr %rs_last_bcast.i.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %rs_last_bcast.i.i.i, align 4
  %add.i.i.i = add i32 %119, 200
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %120 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i.i = sub i32 %add.i.i.i, %120
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i)
  %cmp.i.i.i = icmp slt i32 %sub.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.else.i.i.if.end7.i.i_crit_edge, label %if.else.i.i.if.end44.i_crit_edge

if.else.i.i.if.end44.i_crit_edge:                 ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44.i

if.else.i.i.if.end7.i.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.else.i.i.if.end7.i.i_crit_edge, %if.then3.i.i, %lor.lhs.false.i.i.if.end7.i.i_crit_edge
  %flags.i.i.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 14
  %call.i.i.i115 = tail call i32 @_test_and_set_bit(i32 noundef 27, ptr noundef %flags.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i115)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i115, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.end7.i.i.if.end44.i_crit_edge

if.end7.i.i.if.end44.i_crit_edge:                 ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44.i

if.then.i.i.i:                                    ; preds = %if.end7.i.i
  %peer_devices.i.i.i.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 1
  %121 = ptrtoint ptr %peer_devices.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load volatile ptr, ptr %peer_devices.i.i.i.i, align 4
  %cmp.not.i.i.i.i = icmp eq ptr %122, %peer_devices.i.i.i.i
  %spec.select.i.i.i.i = select i1 %cmp.not.i.i.i.i, ptr null, ptr %122
  %connection2.i.i.i = getelementptr inbounds %struct.drbd_peer_device, ptr %spec.select.i.i.i.i, i32 0, i32 2
  %123 = ptrtoint ptr %connection2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %connection2.i.i.i, align 4
  %flags3.i.i.i = getelementptr inbounds %struct.drbd_connection, ptr %124, i32 0, i32 10
  %call4.i.i.i = tail call i32 @_test_and_set_bit(i32 noundef 12, ptr noundef %flags3.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i)
  %tobool5.not.i.i.i = icmp eq i32 %call4.i.i.i, 0
  br i1 %tobool5.not.i.i.i, label %if.then6.i.i.i, label %if.then.i.i.i.if.end44.i_crit_edge

if.then.i.i.i.if.end44.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44.i

if.then6.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %q_wait.i.i.i = getelementptr inbounds %struct.drbd_connection, ptr %124, i32 0, i32 45, i32 2
  tail call void @__wake_up(ptr noundef %q_wait.i.i.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %if.end44.i

if.then40.i:                                      ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #12
  %rs_failed41.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 49
  %125 = ptrtoint ptr %rs_failed41.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %rs_failed41.i, align 8
  %add42.i = add i32 %126, %count.1.i
  store i32 %add42.i, ptr %rs_failed41.i, align 8
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.then40.i, %if.then6.i.i.i, %if.then.i.i.i.if.end44.i_crit_edge, %if.end7.i.i.if.end44.i_crit_edge, %if.else.i.i.if.end44.i_crit_edge, %drbd_advance_rs_marks.exit.i.if.end44.i_crit_edge, %if.then24.i.if.end44.i_crit_edge
  %al_wait.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 82
  tail call void @__wake_up(ptr noundef %al_wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %out

out:                                              ; preds = %if.end44.i, %while.end.i.out_crit_edge, %if.end82.out_crit_edge, %if.then52.out_crit_edge, %do.end16
  %count.0 = phi i32 [ 0, %if.then52.out_crit_edge ], [ 0, %do.end16 ], [ %count.1.i, %if.end44.i ], [ 0, %while.end.i.out_crit_edge ], [ 0, %if.end82.out_crit_edge ]
  tail call fastcc void @put_ldev(ptr noundef %device)
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then6.i, %if.end3.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count.0, %out ], [ 0, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end3.cleanup_crit_edge ], [ 0, %if.then6.i ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @put_ldev(ptr noundef %device) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %state = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 27
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %state, align 8
  %bf.lshr = lshr i32 %bf.load, 9
  %bf.clear = and i32 %bf.lshr, 15
  %local_cnt = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 41
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %local_cnt, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @llvm.prefetch.p0(ptr %local_cnt, i32 1, i32 3, i32 1) #10
  %1 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %local_cnt, ptr %local_cnt, i32 1, ptr elementtype(i32) %local_cnt) #10, !srcloc !252
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %1, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !253
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %asmresult.i.i.i.i)
  %cmp = icmp sgt i32 %asmresult.i.i.i.i, -1
  br i1 %cmp, label %do.end3, label %do.end3.thread

do.end3.thread:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %vdisk = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %2 = ptrtoint ptr %vdisk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdisk, align 4
  %part0 = getelementptr inbounds %struct.gendisk, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %part0, align 4
  %bd_device = getelementptr inbounds %struct.block_device, ptr %5, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %bd_device, ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.96, i32 noundef 2099) #13
  br label %if.end15

do.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp4 = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp4, label %if.then5, label %do.end3.if.end15_crit_edge

do.end3.if.end15_crit_edge:                       ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then5:                                         ; preds = %do.end3
  %6 = zext i32 %bf.clear to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.134)
  switch i32 %bf.clear, label %if.then5.if.end14_crit_edge [
    i32 0, label %if.then7
    i32 2, label %if.then10
  ]

if.then5.if.end14_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then7:                                         ; preds = %if.then5
  %flags.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 14
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 24, ptr noundef %flags.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then7.if.end14_crit_edge

if.then7.if.end14_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
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
  %call4.i = tail call i32 @_test_and_set_bit(i32 noundef 12, ptr noundef %flags3.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.then.i.if.end14.sink.split_crit_edge, label %if.then.i.if.end14_crit_edge

if.then.i.if.end14_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then.i.if.end14.sink.split_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.sink.split

if.then10:                                        ; preds = %if.then5
  %flags = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 14
  %call11 = tail call i32 @_test_and_set_bit(i32 noundef 22, ptr noundef %flags) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %if.then12, label %if.then10.if.end14_crit_edge

if.then10.if.end14_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then12:                                        ; preds = %if.then10
  %call.i25 = tail call i32 @_test_and_set_bit(i32 noundef 23, ptr noundef %flags) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i25)
  %tobool.not.i26 = icmp eq i32 %call.i25, 0
  br i1 %tobool.not.i26, label %if.then.i34, label %if.then12.if.end14_crit_edge

if.then12.if.end14_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
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
  %call4.i32 = tail call i32 @_test_and_set_bit(i32 noundef 12, ptr noundef %flags3.i31) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i32)
  %tobool5.not.i33 = icmp eq i32 %call4.i32, 0
  br i1 %tobool5.not.i33, label %if.then.i34.if.end14.sink.split_crit_edge, label %if.then.i34.if.end14_crit_edge

if.then.i34.if.end14_crit_edge:                   ; preds = %if.then.i34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then.i34.if.end14.sink.split_crit_edge:        ; preds = %if.then.i34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.sink.split

if.end14.sink.split:                              ; preds = %if.then.i34.if.end14.sink.split_crit_edge, %if.then.i.if.end14.sink.split_crit_edge
  %.sink = phi ptr [ %10, %if.then.i.if.end14.sink.split_crit_edge ], [ %14, %if.then.i34.if.end14.sink.split_crit_edge ]
  %q_wait.i35 = getelementptr inbounds %struct.drbd_connection, ptr %.sink, i32 0, i32 45, i32 2
  tail call void @__wake_up(ptr noundef %q_wait.i35, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %if.end14

if.end14:                                         ; preds = %if.end14.sink.split, %if.then.i34.if.end14_crit_edge, %if.then12.if.end14_crit_edge, %if.then10.if.end14_crit_edge, %if.then.i.if.end14_crit_edge, %if.then7.if.end14_crit_edge, %if.then5.if.end14_crit_edge
  %misc_wait = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 28
  tail call void @__wake_up(ptr noundef %misc_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %do.end3.if.end15_crit_edge, %do.end3.thread
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drbd_rs_begin_io(ptr noundef %device, i64 noundef %sector) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  %__wq_entry40 = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i64 %sector, 15
  %conv = trunc i64 %shr to i32
  %al_wait = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 82
  %mul = shl i32 %conv, 2
  %al_lock.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 81
  %act_log.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 83
  %resync = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 65
  %resync_locked = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 66
  br label %retry

retry:                                            ; preds = %if.end90.retry_crit_edge, %entry
  call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 969) #10
  %call = call fastcc ptr @_bme_get(ptr noundef %device, i32 noundef %conv)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %retry.if.end17_crit_edge

retry.if.end17_crit_edge:                         ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then:                                          ; preds = %retry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #10
  %0 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #10
  %call5181 = call i32 @prepare_to_wait_event(ptr noundef %al_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #10
  %call6182 = call fastcc ptr @_bme_get(ptr noundef %device, i32 noundef %conv)
  %tobool7.not183 = icmp eq ptr %call6182, null
  br i1 %tobool7.not183, label %if.then.if.end_crit_edge, label %if.then.if.end13.thread156_crit_edge

if.then.if.end13.thread156_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13.thread156

if.then.if.end_crit_edge:                         ; preds = %if.then
  br label %if.end

if.end:                                           ; preds = %cleanup.if.end_crit_edge, %if.then.if.end_crit_edge
  %call5184 = phi i32 [ %call5, %cleanup.if.end_crit_edge ], [ %call5181, %if.then.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5184)
  %tobool9.not = icmp eq i32 %call5184, 0
  br i1 %tobool9.not, label %cleanup, label %if.end13

cleanup:                                          ; preds = %if.end
  call void @schedule() #10
  %call5 = call i32 @prepare_to_wait_event(ptr noundef %al_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #10
  %call6 = call fastcc ptr @_bme_get(ptr noundef %device, i32 noundef %conv)
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %cleanup.if.end_crit_edge, label %cleanup.if.end13.thread156_crit_edge

cleanup.if.end13.thread156_crit_edge:             ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13.thread156

cleanup.if.end_crit_edge:                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end13.thread156:                               ; preds = %cleanup.if.end13.thread156_crit_edge, %if.then.if.end13.thread156_crit_edge
  %call6.lcssa = phi ptr [ %call6182, %if.then.if.end13.thread156_crit_edge ], [ %call6, %cleanup.if.end13.thread156_crit_edge ]
  call void @finish_wait(ptr noundef %al_wait, ptr noundef nonnull %__wq_entry) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br label %if.end17

if.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br label %cleanup98

if.end17:                                         ; preds = %if.end13.thread156, %retry.if.end17_crit_edge
  %bm_ext.0155 = phi ptr [ %call6.lcssa, %if.end13.thread156 ], [ %call, %retry.if.end17_crit_edge ]
  %flags = getelementptr inbounds %struct.bm_extent, ptr %bm_ext.0155, i32 0, i32 2
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %flags, align 4
  %3 = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool19.not = icmp eq i32 %3, 0
  br i1 %tobool19.not, label %if.end21, label %if.end17.cleanup98_crit_edge

if.end17.cleanup98_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup98

if.end21:                                         ; preds = %if.end17
  %call22 = call zeroext i1 @drbd_rs_c_min_rate_throttle(ptr noundef %device) #10
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end21
  %i.0191 = phi i32 [ 0, %if.end21 ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 982) #10
  %add = add nuw nsw i32 %i.0191, %mul
  call void @_raw_spin_lock_irq(ptr noundef %al_lock.i) #10
  %4 = ptrtoint ptr %act_log.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %act_log.i, align 4
  %call.i = call zeroext i1 @lc_is_used(ptr noundef %5, i32 noundef %add) #10
  call void @_raw_spin_unlock_irq(ptr noundef %al_lock.i) #10
  br i1 %call.i, label %lor.lhs.false, label %for.body.lor.lhs.false72_crit_edge

for.body.lor.lhs.false72_crit_edge:               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false72

lor.lhs.false:                                    ; preds = %for.body
  br i1 %call22, label %land.lhs.true, label %lor.lhs.false.if.then39_crit_edge

lor.lhs.false.if.then39_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then39

land.lhs.true:                                    ; preds = %lor.lhs.false
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags, align 4
  %8 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool38.not = icmp eq i32 %8, 0
  br i1 %tobool38.not, label %land.lhs.true.if.then39_crit_edge, label %land.lhs.true.land.lhs.true75_crit_edge

land.lhs.true.land.lhs.true75_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true75

land.lhs.true.if.then39_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then39

if.then39:                                        ; preds = %land.lhs.true.if.then39_crit_edge, %lor.lhs.false.if.then39_crit_edge
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry40) #10
  %9 = call ptr @memset(ptr %__wq_entry40, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry40, i32 noundef 0) #10
  %call45186 = call i32 @prepare_to_wait_event(ptr noundef %al_wait, ptr noundef nonnull %__wq_entry40, i32 noundef 1) #10
  call void @_raw_spin_lock_irq(ptr noundef %al_lock.i) #10
  %10 = ptrtoint ptr %act_log.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %act_log.i, align 4
  %call.i143187 = call zeroext i1 @lc_is_used(ptr noundef %11, i32 noundef %add) #10
  call void @_raw_spin_unlock_irq(ptr noundef %al_lock.i) #10
  br i1 %call.i143187, label %if.then39.lor.lhs.false50_crit_edge, label %if.then39.if.end69.thread170_crit_edge

if.then39.if.end69.thread170_crit_edge:           ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69.thread170

if.then39.lor.lhs.false50_crit_edge:              ; preds = %if.then39
  br label %lor.lhs.false50

lor.lhs.false50:                                  ; preds = %cleanup62.lor.lhs.false50_crit_edge, %if.then39.lor.lhs.false50_crit_edge
  %call45188 = phi i32 [ %call45, %cleanup62.lor.lhs.false50_crit_edge ], [ %call45186, %if.then39.lor.lhs.false50_crit_edge ]
  br i1 %call22, label %land.lhs.true53, label %lor.lhs.false50.if.end58_crit_edge

lor.lhs.false50.if.end58_crit_edge:               ; preds = %lor.lhs.false50
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

land.lhs.true53:                                  ; preds = %lor.lhs.false50
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %flags, align 4
  %14 = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool56.not = icmp eq i32 %14, 0
  br i1 %tobool56.not, label %land.lhs.true53.if.end58_crit_edge, label %land.lhs.true53.if.end69.thread170_crit_edge

land.lhs.true53.if.end69.thread170_crit_edge:     ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69.thread170

land.lhs.true53.if.end58_crit_edge:               ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

if.end58:                                         ; preds = %land.lhs.true53.if.end58_crit_edge, %lor.lhs.false50.if.end58_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45188)
  %tobool59.not = icmp eq i32 %call45188, 0
  br i1 %tobool59.not, label %cleanup62, label %if.end69

cleanup62:                                        ; preds = %if.end58
  call void @schedule() #10
  %call45 = call i32 @prepare_to_wait_event(ptr noundef %al_wait, ptr noundef nonnull %__wq_entry40, i32 noundef 1) #10
  call void @_raw_spin_lock_irq(ptr noundef %al_lock.i) #10
  %15 = ptrtoint ptr %act_log.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %act_log.i, align 4
  %call.i143 = call zeroext i1 @lc_is_used(ptr noundef %16, i32 noundef %add) #10
  call void @_raw_spin_unlock_irq(ptr noundef %al_lock.i) #10
  br i1 %call.i143, label %cleanup62.lor.lhs.false50_crit_edge, label %cleanup62.if.end69.thread170_crit_edge

cleanup62.if.end69.thread170_crit_edge:           ; preds = %cleanup62
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69.thread170

cleanup62.lor.lhs.false50_crit_edge:              ; preds = %cleanup62
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false50

if.end69.thread170:                               ; preds = %cleanup62.if.end69.thread170_crit_edge, %land.lhs.true53.if.end69.thread170_crit_edge, %if.then39.if.end69.thread170_crit_edge
  call void @finish_wait(ptr noundef %al_wait, ptr noundef nonnull %__wq_entry40) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry40) #10
  br label %lor.lhs.false72

if.end69:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry40) #10
  br label %if.then79

lor.lhs.false72:                                  ; preds = %if.end69.thread170, %for.body.lor.lhs.false72_crit_edge
  br i1 %call22, label %lor.lhs.false72.land.lhs.true75_crit_edge, label %lor.lhs.false72.for.inc_crit_edge

lor.lhs.false72.for.inc_crit_edge:                ; preds = %lor.lhs.false72
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

lor.lhs.false72.land.lhs.true75_crit_edge:        ; preds = %lor.lhs.false72
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true75

land.lhs.true75:                                  ; preds = %lor.lhs.false72.land.lhs.true75_crit_edge, %land.lhs.true.land.lhs.true75_crit_edge
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %flags, align 4
  %19 = and i32 %18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool78.not = icmp eq i32 %19, 0
  br i1 %tobool78.not, label %land.lhs.true75.for.inc_crit_edge, label %land.lhs.true75.if.then79_crit_edge

land.lhs.true75.if.then79_crit_edge:              ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then79

land.lhs.true75.for.inc_crit_edge:                ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then79:                                        ; preds = %land.lhs.true75.if.then79_crit_edge, %if.end69
  %tobool71.not168 = phi i1 [ false, %if.end69 ], [ true, %land.lhs.true75.if.then79_crit_edge ]
  call void @_raw_spin_lock_irq(ptr noundef %al_lock.i) #10
  %20 = ptrtoint ptr %resync to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %resync, align 4
  %lce = getelementptr inbounds %struct.bm_extent, ptr %bm_ext.0155, i32 0, i32 3
  %call80 = call i32 @lc_put(ptr noundef %21, ptr noundef %lce) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %cmp81 = icmp eq i32 %call80, 0
  br i1 %cmp81, label %if.then83, label %if.then79.if.end86_crit_edge

if.then79.if.end86_crit_edge:                     ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end86

if.then83:                                        ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %flags, align 4
  %23 = ptrtoint ptr %resync_locked to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %resync_locked, align 8
  %dec = add i32 %24, -1
  store i32 %dec, ptr %resync_locked, align 8
  call void @__wake_up(ptr noundef %al_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %if.end86

if.end86:                                         ; preds = %if.then83, %if.then79.if.end86_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef %al_lock.i) #10
  br i1 %tobool71.not168, label %if.end90, label %if.end86.cleanup98_crit_edge

if.end86.cleanup98_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup98

if.end90:                                         ; preds = %if.end86
  %call91 = call i32 @schedule_timeout_interruptible(i32 noundef 10) #10
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.end90.retry_crit_edge, label %if.end90.cleanup98_crit_edge

if.end90.cleanup98_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup98

if.end90.retry_crit_edge:                         ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #12
  br label %retry

for.inc:                                          ; preds = %land.lhs.true75.for.inc_crit_edge, %lor.lhs.false72.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0191, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.end96, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end96:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  call void @_set_bit(i32 noundef 1, ptr noundef %flags) #10
  br label %cleanup98

cleanup98:                                        ; preds = %for.end96, %if.end90.cleanup98_crit_edge, %if.end86.cleanup98_crit_edge, %if.end17.cleanup98_crit_edge, %if.end13
  %retval.0 = phi i32 [ 0, %for.end96 ], [ -4, %if.end13 ], [ -4, %if.end90.cleanup98_crit_edge ], [ -4, %if.end86.cleanup98_crit_edge ], [ 0, %if.end17.cleanup98_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @_bme_get(ptr noundef %device, i32 noundef %enr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %al_lock = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 81
  tail call void @_raw_spin_lock_irq(ptr noundef %al_lock) #10
  %resync_locked = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 66
  %0 = ptrtoint ptr %resync_locked to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %resync_locked, align 8
  %resync = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 65
  %2 = ptrtoint ptr %resync to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resync, align 4
  %nr_elements = getelementptr inbounds %struct.lru_cache, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %nr_elements to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_elements, align 4
  %div68 = lshr i32 %5, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %div68)
  %cmp = icmp ugt i32 %1, %div68
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irq(ptr noundef %al_lock) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @lc_get(ptr noundef %3, i32 noundef %enr) #10
  %tobool.not = icmp eq ptr %call, null
  %add.ptr = getelementptr i8, ptr %call, i32 -12
  %tobool3.not69 = icmp eq ptr %add.ptr, null
  %tobool3.not = or i1 %tobool.not, %tobool3.not69
  br i1 %tobool3.not, label %if.end.if.end15_crit_edge, label %if.then4

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then4:                                         ; preds = %if.end
  %lc_number = getelementptr i8, ptr %call, i32 24
  %6 = ptrtoint ptr %lc_number to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %lc_number, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %enr)
  %cmp5.not = icmp eq i32 %7, %enr
  br i1 %cmp5.not, label %if.then4.if.end9_crit_edge, label %if.then6

if.then4.if.end9_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then6:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  %call7 = tail call i32 @drbd_bm_e_weight(ptr noundef %device, i32 noundef %enr) #10
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call7, ptr %add.ptr, align 4
  %rs_failed = getelementptr i8, ptr %call, i32 -8
  %9 = ptrtoint ptr %rs_failed to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %rs_failed, align 4
  %10 = ptrtoint ptr %resync to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %resync, align 4
  tail call void @lc_committed(ptr noundef %11) #10
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.then4.if.end9_crit_edge
  %wakeup.0 = phi i32 [ 1, %if.then6 ], [ 0, %if.then4.if.end9_crit_edge ]
  %refcnt = getelementptr i8, ptr %call, i32 16
  %12 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp11 = icmp eq i32 %13, 1
  br i1 %cmp11, label %if.then12, label %if.end9.if.end14_crit_edge

if.end9.if.end14_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %resync_locked to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %resync_locked, align 8
  %inc = add i32 %15, 1
  store i32 %inc, ptr %resync_locked, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end9.if.end14_crit_edge
  %flags = getelementptr i8, ptr %call, i32 -4
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags) #10
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.end.if.end15_crit_edge
  %wakeup.1 = phi i32 [ %wakeup.0, %if.end14 ], [ 0, %if.end.if.end15_crit_edge ]
  %16 = ptrtoint ptr %resync to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %resync, align 4
  %flags17 = getelementptr inbounds %struct.lru_cache, ptr %17, i32 0, i32 16
  %18 = ptrtoint ptr %flags17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags17, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %al_lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wakeup.1)
  %tobool19.not = icmp eq i32 %wakeup.1, 0
  br i1 %tobool19.not, label %if.end15.if.end21_crit_edge, label %if.then20

if.end15.if.end21_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then20:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %al_wait = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 82
  tail call void @__wake_up(ptr noundef %al_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end15.if.end21_crit_edge
  br i1 %tobool3.not, label %if.then23, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then23:                                        ; preds = %if.end21
  %and = and i32 %19, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool24.not = icmp eq i32 %and, 0
  br i1 %tobool24.not, label %if.then23.do.body27_crit_edge, label %do.end

if.then23.do.body27_crit_edge:                    ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body27

do.end:                                           ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  %vdisk = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %20 = ptrtoint ptr %vdisk to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vdisk, align 4
  %part0 = getelementptr inbounds %struct.gendisk, ptr %21, i32 0, i32 7
  %22 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %part0, align 4
  %bd_device = getelementptr inbounds %struct.block_device, ptr %23, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.60, ptr noundef %bd_device, ptr noundef nonnull @.str.59) #13
  br label %do.body27

do.body27:                                        ; preds = %do.end, %if.then23.do.body27_crit_edge
  %and28 = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %do.body27.cleanup_crit_edge, label %do.body33, !prof !261

do.body27.cleanup_crit_edge:                      ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body33:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/block/drbd/drbd_actlog.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 936, 0\0A.popsection", ""() #10, !srcloc !265
  unreachable

cleanup:                                          ; preds = %do.body27.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %if.then
  %retval.0 = phi ptr [ null, %if.then ], [ null, %do.body27.cleanup_crit_edge ], [ %add.ptr, %if.end21.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drbd_rs_c_min_rate_throttle(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_interruptible(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drbd_try_rs_begin_io(ptr noundef %device, i64 noundef %sector) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i64 %sector, 15
  %conv = trunc i64 %shr to i32
  %mul = shl i32 %conv, 2
  %call = tail call zeroext i1 @drbd_rs_should_slow_down(ptr noundef %device, i64 noundef %sector, i1 noundef zeroext true) #10
  br i1 %call, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %resync_wenr = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 67
  %0 = ptrtoint ptr %resync_wenr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %resync_wenr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %conv)
  %cmp.not = icmp eq i32 %1, %conv
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %al_lock = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 81
  tail call void @_raw_spin_lock_irq(ptr noundef %al_lock) #10
  %resync_wenr3 = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 67
  %2 = ptrtoint ptr %resync_wenr3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %resync_wenr3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp4.not = icmp eq i32 %3, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv)
  %cmp8.not = icmp eq i32 %3, %conv
  %or.cond = or i1 %cmp4.not, %cmp8.not
  br i1 %or.cond, label %if.end.if.end53_crit_edge, label %if.then10

if.end.if.end53_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

if.then10:                                        ; preds = %if.end
  %resync = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 65
  %4 = ptrtoint ptr %resync to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %resync, align 4
  %call12 = tail call ptr @lc_find(ptr noundef %5, i32 noundef %3) #10
  %tobool13.not = icmp eq ptr %call12, null
  %add.ptr = getelementptr i8, ptr %call12, i32 -12
  %tobool14.not338 = icmp eq ptr %add.ptr, null
  %tobool14.not = or i1 %tobool13.not, %tobool14.not338
  br i1 %tobool14.not, label %do.end48, label %do.body

do.body:                                          ; preds = %if.then10
  %flags = getelementptr i8, ptr %call12, i32 -4
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags, align 4
  %8 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool17.not = icmp eq i32 %8, 0
  br i1 %tobool17.not, label %do.body.do.body23_crit_edge, label %do.end

do.body.do.body23_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body23

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %vdisk = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %9 = ptrtoint ptr %vdisk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vdisk, align 4
  %part0 = getelementptr inbounds %struct.gendisk, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %part0, align 4
  %bd_device = getelementptr inbounds %struct.block_device, ptr %12, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %bd_device, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str, i32 noundef 1047) #13
  br label %do.body23

do.body23:                                        ; preds = %do.end, %do.body.do.body23_crit_edge
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %flags, align 4
  %and1.i328 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i328)
  %tobool26.not = icmp eq i32 %and1.i328, 0
  br i1 %tobool26.not, label %do.end30, label %do.body23.do.end36_crit_edge

do.body23.do.end36_crit_edge:                     ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end36

do.end30:                                         ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #12
  %vdisk31 = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %15 = ptrtoint ptr %vdisk31 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vdisk31, align 4
  %part032 = getelementptr inbounds %struct.gendisk, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %part032 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %part032, align 4
  %bd_device33 = getelementptr inbounds %struct.block_device, ptr %18, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %bd_device33, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str, i32 noundef 1048) #13
  br label %do.end36

do.end36:                                         ; preds = %do.end30, %do.body23.do.end36_crit_edge
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags) #10
  %19 = ptrtoint ptr %resync_wenr3 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %resync_wenr3, align 4
  %20 = ptrtoint ptr %resync to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %resync, align 4
  %call40 = tail call i32 @lc_put(ptr noundef %21, ptr noundef nonnull %call12) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp41 = icmp eq i32 %call40, 0
  br i1 %cmp41, label %if.then43, label %do.end36.if.end45_crit_edge

do.end36.if.end45_crit_edge:                      ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

if.then43:                                        ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %flags, align 4
  %resync_locked = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 66
  %23 = ptrtoint ptr %resync_locked to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %resync_locked, align 8
  %dec = add i32 %24, -1
  store i32 %dec, ptr %resync_locked, align 8
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %do.end36.if.end45_crit_edge
  %al_wait = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 82
  tail call void @__wake_up(ptr noundef %al_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %if.end53

do.end48:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  %vdisk49 = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %25 = ptrtoint ptr %vdisk49 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %vdisk49, align 4
  %part050 = getelementptr inbounds %struct.gendisk, ptr %26, i32 0, i32 7
  %27 = ptrtoint ptr %part050 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %part050, align 4
  %bd_device51 = getelementptr inbounds %struct.block_device, ptr %28, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.14, ptr noundef %bd_device51, ptr noundef nonnull @.str.53) #13
  br label %if.end53

if.end53:                                         ; preds = %do.end48, %if.end45, %if.end.if.end53_crit_edge
  %resync54 = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 65
  %29 = ptrtoint ptr %resync54 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %resync54, align 4
  %call55 = tail call ptr @lc_try_get(ptr noundef %30, i32 noundef %conv) #10
  %tobool56.not = icmp eq ptr %call55, null
  %add.ptr60 = getelementptr i8, ptr %call55, i32 -12
  %tobool64.not339 = icmp eq ptr %add.ptr60, null
  %tobool64.not = or i1 %tobool56.not, %tobool64.not339
  br i1 %tobool64.not, label %if.else95, label %if.then65

if.then65:                                        ; preds = %if.end53
  %flags66 = getelementptr i8, ptr %call55, i32 -4
  %31 = ptrtoint ptr %flags66 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %flags66, align 4
  %33 = and i32 %32, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool68.not = icmp eq i32 %33, 0
  br i1 %tobool68.not, label %if.end70, label %if.then65.proceed_crit_edge

if.then65.proceed_crit_edge:                      ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #12
  br label %proceed

if.end70:                                         ; preds = %if.then65
  %call72 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %flags66) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.then74, label %if.else76

if.then74:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  %resync_locked75 = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 66
  %34 = ptrtoint ptr %resync_locked75 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %resync_locked75, align 8
  %inc = add i32 %35, 1
  store i32 %inc, ptr %resync_locked75, align 8
  br label %check_al

if.else76:                                        ; preds = %if.end70
  %refcnt = getelementptr i8, ptr %call55, i32 16
  %36 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %refcnt, align 4
  %dec78 = add i32 %37, -1
  store i32 %dec78, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec78)
  %cmp82.not = icmp eq i32 %dec78, 0
  br i1 %cmp82.not, label %do.end87, label %if.else76.check_al_crit_edge

if.else76.check_al_crit_edge:                     ; preds = %if.else76
  call void @__sanitizer_cov_trace_pc() #12
  br label %check_al

do.end87:                                         ; preds = %if.else76
  call void @__sanitizer_cov_trace_pc() #12
  %vdisk88 = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %38 = ptrtoint ptr %vdisk88 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %vdisk88, align 4
  %part089 = getelementptr inbounds %struct.gendisk, ptr %39, i32 0, i32 7
  %40 = ptrtoint ptr %part089 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %part089, align 4
  %bd_device90 = getelementptr inbounds %struct.block_device, ptr %41, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %bd_device90, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str, i32 noundef 1074) #13
  br label %check_al

if.else95:                                        ; preds = %if.end53
  %resync_locked96 = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 66
  %42 = ptrtoint ptr %resync_locked96 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %resync_locked96, align 8
  %44 = ptrtoint ptr %resync54 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %resync54, align 4
  %nr_elements = getelementptr inbounds %struct.lru_cache, ptr %45, i32 0, i32 7
  %46 = ptrtoint ptr %nr_elements to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %nr_elements, align 4
  %sub = add i32 %47, -3
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %sub)
  %cmp98 = icmp ugt i32 %43, %sub
  br i1 %cmp98, label %if.else95.cleanup.sink.split_crit_edge, label %if.end101

if.else95.cleanup.sink.split_crit_edge:           ; preds = %if.else95
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end101:                                        ; preds = %if.else95
  %call103 = tail call ptr @lc_get(ptr noundef %45, i32 noundef %conv) #10
  %tobool104.not = icmp eq ptr %call103, null
  %add.ptr108 = getelementptr i8, ptr %call103, i32 -12
  %tobool112.not340 = icmp eq ptr %add.ptr108, null
  %tobool112.not = or i1 %tobool104.not, %tobool112.not340
  br i1 %tobool112.not, label %if.then113, label %if.end140

if.then113:                                       ; preds = %if.end101
  %48 = ptrtoint ptr %resync54 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %resync54, align 4
  %flags115 = getelementptr inbounds %struct.lru_cache, ptr %49, i32 0, i32 16
  %50 = ptrtoint ptr %flags115 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %flags115, align 4
  %and = and i32 %51, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool116.not = icmp eq i32 %and, 0
  br i1 %tobool116.not, label %if.then113.do.body125_crit_edge, label %do.end120

if.then113.do.body125_crit_edge:                  ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body125

do.end120:                                        ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #12
  %vdisk121 = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %52 = ptrtoint ptr %vdisk121 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %vdisk121, align 4
  %part0122 = getelementptr inbounds %struct.gendisk, ptr %53, i32 0, i32 7
  %54 = ptrtoint ptr %part0122 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %part0122, align 4
  %bd_device123 = getelementptr inbounds %struct.block_device, ptr %55, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.60, ptr noundef %bd_device123, ptr noundef nonnull @.str.59) #13
  br label %do.body125

do.body125:                                       ; preds = %do.end120, %if.then113.do.body125_crit_edge
  %and126 = and i32 %51, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and126)
  %tobool127.not = icmp eq i32 %and126, 0
  br i1 %tobool127.not, label %do.body125.cleanup.sink.split_crit_edge, label %do.body131, !prof !261

do.body125.cleanup.sink.split_crit_edge:          ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

do.body131:                                       ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/block/drbd/drbd_actlog.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1089, 0\0A.popsection", ""() #10, !srcloc !266
  unreachable

if.end140:                                        ; preds = %if.end101
  %lc_number = getelementptr i8, ptr %call103, i32 24
  %56 = ptrtoint ptr %lc_number to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %lc_number, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %conv)
  %cmp142.not = icmp eq i32 %57, %conv
  br i1 %cmp142.not, label %if.end140.if.end163_crit_edge, label %if.then144

if.end140.if.end163_crit_edge:                    ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end163

if.then144:                                       ; preds = %if.end140
  %call145 = tail call i32 @drbd_bm_e_weight(ptr noundef %device, i32 noundef %conv) #10
  %58 = ptrtoint ptr %add.ptr108 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %call145, ptr %add.ptr108, align 4
  %rs_failed = getelementptr i8, ptr %call103, i32 -8
  %59 = ptrtoint ptr %rs_failed to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %rs_failed, align 4
  %60 = ptrtoint ptr %resync54 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %resync54, align 4
  tail call void @lc_committed(ptr noundef %61) #10
  %al_wait147 = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 82
  tail call void @__wake_up(ptr noundef %al_wait147, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  %flags149 = getelementptr i8, ptr %call103, i32 -4
  %62 = ptrtoint ptr %flags149 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %flags149, align 4
  %64 = and i32 %63, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp151 = icmp eq i32 %64, 0
  br i1 %cmp151, label %if.then144.if.end163_crit_edge, label %do.end156

if.then144.if.end163_crit_edge:                   ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end163

do.end156:                                        ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #12
  %vdisk157 = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %65 = ptrtoint ptr %vdisk157 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %vdisk157, align 4
  %part0158 = getelementptr inbounds %struct.gendisk, ptr %66, i32 0, i32 7
  %67 = ptrtoint ptr %part0158 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %part0158, align 4
  %bd_device159 = getelementptr inbounds %struct.block_device, ptr %68, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %bd_device159, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str, i32 noundef 1097) #13
  br label %if.end163

if.end163:                                        ; preds = %do.end156, %if.then144.if.end163_crit_edge, %if.end140.if.end163_crit_edge
  %flags164 = getelementptr i8, ptr %call103, i32 -4
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags164) #10
  %refcnt167 = getelementptr i8, ptr %call103, i32 16
  %69 = ptrtoint ptr %refcnt167 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %refcnt167, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %70)
  %cmp168 = icmp eq i32 %70, 1
  br i1 %cmp168, label %if.end163.do.end179_crit_edge, label %do.end173

if.end163.do.end179_crit_edge:                    ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end179

do.end173:                                        ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #12
  %vdisk174 = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %71 = ptrtoint ptr %vdisk174 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %vdisk174, align 4
  %part0175 = getelementptr inbounds %struct.gendisk, ptr %72, i32 0, i32 7
  %73 = ptrtoint ptr %part0175 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %part0175, align 4
  %bd_device176 = getelementptr inbounds %struct.block_device, ptr %74, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %bd_device176, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str, i32 noundef 1100) #13
  br label %do.end179

do.end179:                                        ; preds = %do.end173, %if.end163.do.end179_crit_edge
  %75 = ptrtoint ptr %resync_locked96 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %resync_locked96, align 8
  %inc181 = add i32 %76, 1
  store i32 %inc181, ptr %resync_locked96, align 8
  br label %check_al

check_al:                                         ; preds = %do.end179, %do.end87, %if.else76.check_al_crit_edge, %if.then74
  %bm_ext.0 = phi ptr [ %add.ptr60, %if.else76.check_al_crit_edge ], [ %add.ptr60, %do.end87 ], [ %add.ptr60, %if.then74 ], [ %add.ptr108, %do.end179 ]
  %act_log = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 83
  %77 = ptrtoint ptr %act_log to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %act_log, align 4
  %call184 = tail call zeroext i1 @lc_is_used(ptr noundef %78, i32 noundef %mul) #10
  br i1 %call184, label %check_al.if.then192_crit_edge, label %for.cond

check_al.if.then192_crit_edge:                    ; preds = %check_al
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then192

for.cond:                                         ; preds = %check_al
  %79 = ptrtoint ptr %act_log to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %act_log, align 4
  %add.1 = or i32 %mul, 1
  %call184.1 = tail call zeroext i1 @lc_is_used(ptr noundef %80, i32 noundef %add.1) #10
  br i1 %call184.1, label %for.cond.if.then192_crit_edge, label %for.cond.1

for.cond.if.then192_crit_edge:                    ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then192

for.cond.1:                                       ; preds = %for.cond
  %81 = ptrtoint ptr %act_log to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %act_log, align 4
  %add.2 = or i32 %mul, 2
  %call184.2 = tail call zeroext i1 @lc_is_used(ptr noundef %82, i32 noundef %add.2) #10
  br i1 %call184.2, label %for.cond.1.if.then192_crit_edge, label %for.cond.2

for.cond.1.if.then192_crit_edge:                  ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then192

for.cond.2:                                       ; preds = %for.cond.1
  %83 = ptrtoint ptr %act_log to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %act_log, align 4
  %add.3 = or i32 %mul, 3
  %call184.3 = tail call zeroext i1 @lc_is_used(ptr noundef %84, i32 noundef %add.3) #10
  br i1 %call184.3, label %for.cond.2.if.then192_crit_edge, label %for.cond.3

for.cond.2.if.then192_crit_edge:                  ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then192

for.cond.3:                                       ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #12
  %flags188 = getelementptr inbounds %struct.bm_extent, ptr %bm_ext.0, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags188) #10
  br label %proceed

proceed:                                          ; preds = %for.cond.3, %if.then65.proceed_crit_edge
  %85 = ptrtoint ptr %resync_wenr3 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 -1, ptr %resync_wenr3, align 4
  br label %cleanup.sink.split

if.then192:                                       ; preds = %for.cond.2.if.then192_crit_edge, %for.cond.1.if.then192_crit_edge, %for.cond.if.then192_crit_edge, %check_al.if.then192_crit_edge
  br i1 %call, label %do.body195, label %if.else236

do.body195:                                       ; preds = %if.then192
  %flags196 = getelementptr inbounds %struct.bm_extent, ptr %bm_ext.0, i32 0, i32 2
  %86 = ptrtoint ptr %flags196 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile i32, ptr %flags196, align 4
  %88 = and i32 %87, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool198.not = icmp eq i32 %88, 0
  br i1 %tobool198.not, label %do.body195.do.body209_crit_edge, label %do.end202

do.body195.do.body209_crit_edge:                  ; preds = %do.body195
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body209

do.end202:                                        ; preds = %do.body195
  call void @__sanitizer_cov_trace_pc() #12
  %vdisk203 = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %89 = ptrtoint ptr %vdisk203 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %vdisk203, align 4
  %part0204 = getelementptr inbounds %struct.gendisk, ptr %90, i32 0, i32 7
  %91 = ptrtoint ptr %part0204 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %part0204, align 4
  %bd_device205 = getelementptr inbounds %struct.block_device, ptr %92, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %bd_device205, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str, i32 noundef 1118) #13
  br label %do.body209

do.body209:                                       ; preds = %do.end202, %do.body195.do.body209_crit_edge
  %93 = ptrtoint ptr %flags196 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load volatile i32, ptr %flags196, align 4
  %and1.i335 = and i32 %94, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i335)
  %tobool212.not = icmp eq i32 %and1.i335, 0
  br i1 %tobool212.not, label %do.end216, label %do.body209.do.end222_crit_edge

do.body209.do.end222_crit_edge:                   ; preds = %do.body209
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end222

do.end216:                                        ; preds = %do.body209
  call void @__sanitizer_cov_trace_pc() #12
  %vdisk217 = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %95 = ptrtoint ptr %vdisk217 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %vdisk217, align 4
  %part0218 = getelementptr inbounds %struct.gendisk, ptr %96, i32 0, i32 7
  %97 = ptrtoint ptr %part0218 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %part0218, align 4
  %bd_device219 = getelementptr inbounds %struct.block_device, ptr %98, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %bd_device219, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str, i32 noundef 1119) #13
  br label %do.end222

do.end222:                                        ; preds = %do.end216, %do.body209.do.end222_crit_edge
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags196) #10
  %99 = ptrtoint ptr %resync_wenr3 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 -1, ptr %resync_wenr3, align 4
  %100 = ptrtoint ptr %resync54 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %resync54, align 4
  %lce226 = getelementptr inbounds %struct.bm_extent, ptr %bm_ext.0, i32 0, i32 3
  %call227 = tail call i32 @lc_put(ptr noundef %101, ptr noundef %lce226) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call227)
  %cmp228 = icmp eq i32 %call227, 0
  br i1 %cmp228, label %if.then230, label %do.end222.if.end234_crit_edge

do.end222.if.end234_crit_edge:                    ; preds = %do.end222
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end234

if.then230:                                       ; preds = %do.end222
  call void @__sanitizer_cov_trace_pc() #12
  %102 = ptrtoint ptr %flags196 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 0, ptr %flags196, align 4
  %resync_locked232 = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 66
  %103 = ptrtoint ptr %resync_locked232 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %resync_locked232, align 8
  %dec233 = add i32 %104, -1
  store i32 %dec233, ptr %resync_locked232, align 8
  br label %if.end234

if.end234:                                        ; preds = %if.then230, %do.end222.if.end234_crit_edge
  %al_wait235 = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 82
  tail call void @__wake_up(ptr noundef %al_wait235, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %cleanup.sink.split

if.else236:                                       ; preds = %if.then192
  call void @__sanitizer_cov_trace_pc() #12
  %105 = ptrtoint ptr %resync_wenr3 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %conv, ptr %resync_wenr3, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else236, %if.end234, %proceed, %do.body125.cleanup.sink.split_crit_edge, %if.else95.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %proceed ], [ -11, %do.body125.cleanup.sink.split_crit_edge ], [ -11, %if.else95.cleanup.sink.split_crit_edge ], [ -11, %if.end234 ], [ -11, %if.else236 ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %al_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -11, %land.lhs.true.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drbd_rs_should_slow_down(ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lc_try_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lc_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drbd_bm_e_weight(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lc_is_used(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drbd_rs_complete_io(ptr noundef %device, i64 noundef %sector) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i64 %sector, 15
  %conv = trunc i64 %shr to i32
  %al_lock = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 81
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %al_lock) #10
  %resync = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 65
  %0 = ptrtoint ptr %resync to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resync, align 4
  %call6 = tail call ptr @lc_find(ptr noundef %1, i32 noundef %conv) #10
  %tobool.not = icmp eq ptr %call6, null
  %add.ptr = getelementptr i8, ptr %call6, i32 -12
  %tobool8.not57 = icmp eq ptr %add.ptr, null
  %tobool8.not = or i1 %tobool.not, %tobool8.not57
  br i1 %tobool8.not, label %if.then, label %if.end16

if.then:                                          ; preds = %entry
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %al_lock, i32 noundef %call3) #10
  %call10 = tail call i32 @___ratelimit(ptr noundef nonnull @drbd_ratelimit_state, ptr noundef nonnull @__func__.drbd_rs_complete_io) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then.cleanup_crit_edge, label %do.end15

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end15:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %vdisk = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %2 = ptrtoint ptr %vdisk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdisk, align 4
  %part0 = getelementptr inbounds %struct.gendisk, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %part0, align 4
  %bd_device = getelementptr inbounds %struct.block_device, ptr %5, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %bd_device, ptr noundef nonnull @.str.72) #13
  br label %cleanup

if.end16:                                         ; preds = %entry
  %refcnt = getelementptr i8, ptr %call6, i32 16
  %6 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp17 = icmp eq i32 %7, 0
  br i1 %cmp17, label %if.then19, label %if.end27

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %al_lock, i32 noundef %call3) #10
  %vdisk24 = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %8 = ptrtoint ptr %vdisk24 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vdisk24, align 4
  %part025 = getelementptr inbounds %struct.gendisk, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %part025 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %part025, align 4
  %bd_device26 = getelementptr inbounds %struct.block_device, ptr %11, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %bd_device26, ptr noundef nonnull @.str.74, i64 noundef %sector, i32 noundef %conv) #13
  br label %cleanup

if.end27:                                         ; preds = %if.end16
  %12 = ptrtoint ptr %resync to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %resync, align 4
  %call30 = tail call i32 @lc_put(ptr noundef %13, ptr noundef nonnull %call6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp eq i32 %call30, 0
  br i1 %cmp31, label %if.then33, label %if.end27.if.end35_crit_edge

if.end27.if.end35_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.then33:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  %flags34 = getelementptr i8, ptr %call6, i32 -4
  %14 = ptrtoint ptr %flags34 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %flags34, align 4
  %resync_locked = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 66
  %15 = ptrtoint ptr %resync_locked to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %resync_locked, align 8
  %dec = add i32 %16, -1
  store i32 %dec, ptr %resync_locked, align 8
  %al_wait = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 82
  tail call void @__wake_up(ptr noundef %al_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %if.end27.if.end35_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %al_lock, i32 noundef %call3) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.then19, %do.end15, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drbd_rs_cancel_all(ptr noundef %device) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %al_lock = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 81
  tail call void @_raw_spin_lock_irq(ptr noundef %al_lock) #10
  %state.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 27
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load.i = load i32, ptr %state.i, align 8
  %1 = and i32 %bf.load.i, 7680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp eq i32 %1, 0
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %entry
  %local_cnt.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 41
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %local_cnt.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %local_cnt.i, i32 1, i32 3, i32 1) #10
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %local_cnt.i, ptr %local_cnt.i, i32 1, ptr elementtype(i32) %local_cnt.i) #10, !srcloc !259
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %bf.load2.i = load i32, ptr %state.i, align 8
  %4 = and i32 %bf.load2.i, 7168
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp5.not.i = icmp eq i32 %4, 0
  br i1 %cmp5.not.i, label %if.then6.i, label %if.then

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @put_ldev(ptr noundef %device) #10
  br label %if.end

if.then:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %resync = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 65
  %5 = ptrtoint ptr %resync to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %resync, align 4
  tail call void @lc_reset(ptr noundef %6) #10
  tail call fastcc void @put_ldev(ptr noundef %device)
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then6.i, %entry.if.end_crit_edge
  %resync_locked = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 66
  %7 = ptrtoint ptr %resync_locked to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %resync_locked, align 8
  %resync_wenr = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 67
  %8 = ptrtoint ptr %resync_wenr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %resync_wenr, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %al_lock) #10
  %al_wait = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 82
  tail call void @__wake_up(ptr noundef %al_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lc_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drbd_rs_del_all(ptr noundef %device) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %al_lock = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 81
  tail call void @_raw_spin_lock_irq(ptr noundef %al_lock) #10
  %state.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 27
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load.i = load i32, ptr %state.i, align 8
  %1 = and i32 %bf.load.i, 7680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp eq i32 %1, 0
  br i1 %cmp.i, label %entry.if.end101_crit_edge, label %if.end.i

entry.if.end101_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end101

if.end.i:                                         ; preds = %entry
  %local_cnt.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 41
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %local_cnt.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %local_cnt.i, i32 1, i32 3, i32 1) #10
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %local_cnt.i, ptr %local_cnt.i, i32 1, ptr elementtype(i32) %local_cnt.i) #10, !srcloc !259
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %bf.load2.i = load i32, ptr %state.i, align 8
  %4 = and i32 %bf.load2.i, 7168
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp5.not.i = icmp eq i32 %4, 0
  br i1 %cmp5.not.i, label %if.then6.i, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end.i
  %resync = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 65
  %5 = ptrtoint ptr %resync to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %resync, align 4
  %nr_elements148 = getelementptr inbounds %struct.lru_cache, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %nr_elements148 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nr_elements148, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp149.not = icmp eq i32 %8, 0
  br i1 %cmp149.not, label %for.cond.preheader.do.body88_crit_edge, label %for.body.lr.ph

for.cond.preheader.do.body88_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body88

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %resync_wenr = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 67
  %vdisk = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  br label %for.body

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @put_ldev(ptr noundef %device) #10
  br label %if.end101

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %9 = phi ptr [ %6, %for.body.lr.ph ], [ %56, %for.inc.for.body_crit_edge ]
  %i.0150 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %call3 = tail call ptr @lc_element_by_index(ptr noundef %9, i32 noundef %i.0150) #10
  %lc_number = getelementptr inbounds %struct.lc_element, ptr %call3, i32 0, i32 4
  %10 = ptrtoint ptr %lc_number to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %lc_number, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp5 = icmp eq i32 %11, -1
  br i1 %cmp5, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end:                                           ; preds = %for.body
  %12 = ptrtoint ptr %resync_wenr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %resync_wenr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp9 = icmp eq i32 %11, %13
  br i1 %cmp9, label %do.end, label %if.end.if.end44_crit_edge

if.end.if.end44_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44

do.end:                                           ; preds = %if.end
  %14 = ptrtoint ptr %vdisk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vdisk, align 4
  %part0 = getelementptr inbounds %struct.gendisk, ptr %15, i32 0, i32 7
  %16 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %part0, align 4
  %bd_device = getelementptr inbounds %struct.block_device, ptr %17, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.30, ptr noundef %bd_device, ptr noundef nonnull @.str.76, i32 noundef %11) #13
  %flags = getelementptr i8, ptr %call3, i32 -4
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %flags, align 4
  %20 = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool14.not = icmp eq i32 %20, 0
  br i1 %tobool14.not, label %do.end.do.body25_crit_edge, label %do.end18

do.end.do.body25_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body25

do.end18:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %vdisk to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %vdisk, align 4
  %part020 = getelementptr inbounds %struct.gendisk, ptr %22, i32 0, i32 7
  %23 = ptrtoint ptr %part020 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %part020, align 4
  %bd_device21 = getelementptr inbounds %struct.block_device, ptr %24, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %bd_device21, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str, i32 noundef 1212) #13
  br label %do.body25

do.body25:                                        ; preds = %do.end18, %do.end.do.body25_crit_edge
  %25 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %flags, align 4
  %and1.i140 = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i140)
  %tobool28.not = icmp eq i32 %and1.i140, 0
  br i1 %tobool28.not, label %do.end32, label %do.body25.do.end38_crit_edge

do.body25.do.end38_crit_edge:                     ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end38

do.end32:                                         ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %vdisk to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %vdisk, align 4
  %part034 = getelementptr inbounds %struct.gendisk, ptr %28, i32 0, i32 7
  %29 = ptrtoint ptr %part034 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %part034, align 4
  %bd_device35 = getelementptr inbounds %struct.block_device, ptr %30, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %bd_device35, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str, i32 noundef 1213) #13
  br label %do.end38

do.end38:                                         ; preds = %do.end32, %do.body25.do.end38_crit_edge
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags) #10
  %31 = ptrtoint ptr %resync_wenr to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %resync_wenr, align 4
  %32 = ptrtoint ptr %resync to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %resync, align 4
  %call43 = tail call i32 @lc_put(ptr noundef %33, ptr noundef %call3) #10
  br label %if.end44

if.end44:                                         ; preds = %do.end38, %if.end.if.end44_crit_edge
  %refcnt = getelementptr inbounds %struct.lc_element, ptr %call3, i32 0, i32 2
  %34 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp46.not = icmp eq i32 %35, 0
  br i1 %cmp46.not, label %do.body58, label %do.end50

do.end50:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %vdisk to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %vdisk, align 4
  %part052 = getelementptr inbounds %struct.gendisk, ptr %37, i32 0, i32 7
  %38 = ptrtoint ptr %part052 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %part052, align 4
  %bd_device53 = getelementptr inbounds %struct.block_device, ptr %39, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.30, ptr noundef %bd_device53, ptr noundef nonnull @.str.83, i32 noundef %35) #13
  tail call fastcc void @put_ldev(ptr noundef %device)
  tail call void @_raw_spin_unlock_irq(ptr noundef %al_lock) #10
  br label %cleanup

do.body58:                                        ; preds = %if.end44
  %flags59 = getelementptr i8, ptr %call3, i32 -4
  %40 = ptrtoint ptr %flags59 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %flags59, align 4
  %42 = and i32 %41, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool61.not = icmp eq i32 %42, 0
  br i1 %tobool61.not, label %do.body58.do.body72_crit_edge, label %do.end65

do.body58.do.body72_crit_edge:                    ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body72

do.end65:                                         ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %vdisk to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %vdisk, align 4
  %part067 = getelementptr inbounds %struct.gendisk, ptr %44, i32 0, i32 7
  %45 = ptrtoint ptr %part067 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %part067, align 4
  %bd_device68 = getelementptr inbounds %struct.block_device, ptr %46, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %bd_device68, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str, i32 noundef 1225) #13
  br label %do.body72

do.body72:                                        ; preds = %do.end65, %do.body58.do.body72_crit_edge
  %47 = ptrtoint ptr %flags59 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %flags59, align 4
  %and1.i143 = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i143)
  %tobool75.not = icmp eq i32 %and1.i143, 0
  br i1 %tobool75.not, label %do.body72.do.end85_crit_edge, label %do.end79

do.body72.do.end85_crit_edge:                     ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end85

do.end79:                                         ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %vdisk to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %vdisk, align 4
  %part081 = getelementptr inbounds %struct.gendisk, ptr %50, i32 0, i32 7
  %51 = ptrtoint ptr %part081 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %part081, align 4
  %bd_device82 = getelementptr inbounds %struct.block_device, ptr %52, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %bd_device82, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str, i32 noundef 1226) #13
  br label %do.end85

do.end85:                                         ; preds = %do.end79, %do.body72.do.end85_crit_edge
  %53 = ptrtoint ptr %resync to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %resync, align 4
  tail call void @lc_del(ptr noundef %54, ptr noundef %call3) #10
  br label %for.inc

for.inc:                                          ; preds = %do.end85, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.0150, 1
  %55 = ptrtoint ptr %resync to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %resync, align 4
  %nr_elements = getelementptr inbounds %struct.lru_cache, ptr %56, i32 0, i32 7
  %57 = ptrtoint ptr %nr_elements to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %nr_elements, align 4
  %cmp = icmp ult i32 %inc, %58
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.do.body88_crit_edge

for.inc.do.body88_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body88

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

do.body88:                                        ; preds = %for.inc.do.body88_crit_edge, %for.cond.preheader.do.body88_crit_edge
  %.lcssa = phi ptr [ %6, %for.cond.preheader.do.body88_crit_edge ], [ %56, %for.inc.do.body88_crit_edge ]
  %used = getelementptr inbounds %struct.lru_cache, ptr %.lcssa, i32 0, i32 10
  %59 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %used, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp90 = icmp eq i32 %60, 0
  br i1 %cmp90, label %do.body88.do.end100_crit_edge, label %do.end94

do.body88.do.end100_crit_edge:                    ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end100

do.end94:                                         ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #12
  %vdisk95 = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %61 = ptrtoint ptr %vdisk95 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %vdisk95, align 4
  %part096 = getelementptr inbounds %struct.gendisk, ptr %62, i32 0, i32 7
  %63 = ptrtoint ptr %part096 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %part096, align 4
  %bd_device97 = getelementptr inbounds %struct.block_device, ptr %64, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %bd_device97, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str, i32 noundef 1229) #13
  br label %do.end100

do.end100:                                        ; preds = %do.end94, %do.body88.do.end100_crit_edge
  tail call fastcc void @put_ldev(ptr noundef %device)
  br label %if.end101

if.end101:                                        ; preds = %do.end100, %if.then6.i, %entry.if.end101_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %al_lock) #10
  %al_wait = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 82
  tail call void @__wake_up(ptr noundef %al_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end101, %do.end50
  %retval.0 = phi i32 [ -11, %do.end50 ], [ 0, %if.end101 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lc_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_drbd_set_state(ptr noundef, [1 x i32], i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bio_alloc_bioset(i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bio_add_page(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drbd_md_endio(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @submit_bio(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_associate_blkg(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_drbd_insert_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_endio(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drbd_disk_str(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @drbd_bm_reset_al_hints(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drbd_bm_mark_for_writeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crc32c(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drbd_bm_write_hinted(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drbd_bm_count_bits(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drbd_bm_clear_bits(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drbd_bm_set_bits(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drbd_bm_total_weight(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drbd_conn_str(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 114)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 114)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !9, !10, !11, !12, !14, !15, !16, !17, !19, !20, !21, !22, !23, !25, !26, !27, !28, !30, !31, !32, !34, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !50, !52, !53, !54, !56, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !72, !74, !75, !76, !77, !79, !80, !81, !82, !84, !85, !86, !88, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !106, !107, !108, !110, !111, !112, !114, !115, !116, !118, !119, !121, !122, !124, !126, !127, !128, !130, !131, !132, !134, !135, !136, !137, !139, !140, !142, !143, !145, !146, !147, !149, !150, !152, !153, !154, !156, !157, !158, !160, !161, !162, !164, !165, !167, !168, !170, !172, !173, !174, !176, !177, !178, !180, !181, !182, !183, !185, !186, !187, !188, !190, !191, !192, !194, !195, !196, !198, !200, !202, !204, !206, !208, !210, !211, !212, !213, !215, !216, !217, !219, !220, !221, !223, !224, !225, !227, !228, !229, !231, !232, !233, !234, !236, !237}
!llvm.named.register.sp = !{!238}
!llvm.module.flags = !{!239, !240, !241, !242, !243, !244, !245, !246}
!llvm.ident = !{!247}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/block/drbd/drbd_actlog.c", i32 86, i32 2}
!2 = distinct !{null, !3, !"__warned", i1 false, i1 false}
!3 = !{!"../drivers/block/drbd/drbd_actlog.c", i32 111, i32 7}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/block/drbd/drbd_actlog.c", i32 120, i32 3}
!7 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !6, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @wait_until_done_or_force_detached._entry, !6, !"_entry", i1 false, i1 false}
!11 = !{ptr @wait_until_done_or_force_detached._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/block/drbd/drbd_actlog.c", i32 181, i32 2}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @drbd_md_sync_page_io._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @drbd_md_sync_page_io._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/block/drbd/drbd_actlog.c", i32 185, i32 2}
!19 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @drbd_md_sync_page_io.__UNIQUE_ID_ddebug626, !18, !"__UNIQUE_ID_ddebug626", i1 false, i1 false}
!21 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/block/drbd/drbd_actlog.c", i32 192, i32 3}
!25 = !{ptr @.str.14, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @drbd_md_sync_page_io._entry.12, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @drbd_md_sync_page_io._entry_ptr.15, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/block/drbd/drbd_actlog.c", i32 199, i32 3}
!30 = !{ptr @drbd_md_sync_page_io._entry.16, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @drbd_md_sync_page_io._entry_ptr.18, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.19, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/block/drbd/drbd_actlog.c", i32 248, i32 2}
!34 = !{ptr @.str.20, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @drbd_al_begin_io_fastpath._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @drbd_al_begin_io_fastpath._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.22, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/block/drbd/drbd_actlog.c", i32 249, i32 2}
!39 = !{ptr @drbd_al_begin_io_fastpath._entry.21, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @drbd_al_begin_io_fastpath._entry_ptr.23, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.24, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/block/drbd/drbd_actlog.c", i32 267, i32 2}
!43 = !{ptr @drbd_al_begin_io_prepare._entry, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @drbd_al_begin_io_prepare._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @drbd_al_begin_io_prepare._entry.25, !46, !"_entry", i1 false, i1 false}
!46 = !{!"../drivers/block/drbd/drbd_actlog.c", i32 268, i32 2}
!47 = !{ptr @drbd_al_begin_io_prepare._entry_ptr.26, !46, !"_entry_ptr", i1 false, i1 false}
!48 = distinct !{null, !49, !"__warned", i1 false, i1 false}
!49 = !{!"../drivers/block/drbd/drbd_actlog.c", i32 457, i32 23}
!50 = !{ptr @.str.27, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/block/drbd/drbd_actlog.c", i32 495, i32 2}
!52 = !{ptr @drbd_al_begin_io_nonblock._entry, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @drbd_al_begin_io_nonblock._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.29, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/block/drbd/drbd_actlog.c", i32 539, i32 4}
!56 = !{ptr @.str.30, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @drbd_al_begin_io_nonblock._entry.28, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @drbd_al_begin_io_nonblock._entry_ptr.31, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.32, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/block/drbd/drbd_actlog.c", i32 554, i32 2}
!61 = !{ptr @drbd_al_complete_io._entry, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @drbd_al_complete_io._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.34, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/block/drbd/drbd_actlog.c", i32 560, i32 4}
!65 = !{ptr @drbd_al_complete_io._entry.33, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @drbd_al_complete_io._entry_ptr.35, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.36, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/block/drbd/drbd_actlog.c", i32 596, i32 2}
!69 = !{ptr @.str.37, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @drbd_al_shrink._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @drbd_al_shrink._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.38, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/block/drbd/drbd_actlog.c", i32 859, i32 3}
!74 = !{ptr @.str.39, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @__drbd_change_sync._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @__drbd_change_sync._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.41, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/block/drbd/drbd_actlog.c", i32 871, i32 7}
!79 = !{ptr @__drbd_change_sync._entry.40, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @__drbd_change_sync._entry_ptr.42, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.43, !78, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @__drbd_change_sync._entry.44, !83, !"_entry", i1 false, i1 false}
!83 = !{!"../drivers/block/drbd/drbd_actlog.c", i32 873, i32 7}
!84 = !{ptr @__drbd_change_sync._entry_ptr.45, !83, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.46, !83, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.47, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/block/drbd/drbd_actlog.c", i32 1047, i32 4}
!88 = !{ptr @.str.48, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @drbd_try_rs_begin_io._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @drbd_try_rs_begin_io._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.50, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/block/drbd/drbd_actlog.c", i32 1048, i32 4}
!93 = !{ptr @drbd_try_rs_begin_io._entry.49, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @drbd_try_rs_begin_io._entry_ptr.51, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.53, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/block/drbd/drbd_actlog.c", i32 1057, i32 4}
!97 = !{ptr @drbd_try_rs_begin_io._entry.52, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @drbd_try_rs_begin_io._entry_ptr.54, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.56, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/block/drbd/drbd_actlog.c", i32 1074, i32 4}
!101 = !{ptr @drbd_try_rs_begin_io._entry.55, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @drbd_try_rs_begin_io._entry_ptr.57, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.59, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/block/drbd/drbd_actlog.c", i32 1087, i32 5}
!105 = !{ptr @.str.60, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @drbd_try_rs_begin_io._entry.58, !104, !"_entry", i1 false, i1 false}
!107 = !{ptr @drbd_try_rs_begin_io._entry_ptr.61, !104, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.63, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/block/drbd/drbd_actlog.c", i32 1097, i32 4}
!110 = !{ptr @drbd_try_rs_begin_io._entry.62, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @drbd_try_rs_begin_io._entry_ptr.64, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.66, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/block/drbd/drbd_actlog.c", i32 1100, i32 3}
!114 = !{ptr @drbd_try_rs_begin_io._entry.65, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @drbd_try_rs_begin_io._entry_ptr.67, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @drbd_try_rs_begin_io._entry.68, !117, !"_entry", i1 false, i1 false}
!117 = !{!"../drivers/block/drbd/drbd_actlog.c", i32 1118, i32 4}
!118 = !{ptr @drbd_try_rs_begin_io._entry_ptr.69, !117, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @drbd_try_rs_begin_io._entry.70, !120, !"_entry", i1 false, i1 false}
!120 = !{!"../drivers/block/drbd/drbd_actlog.c", i32 1119, i32 4}
!121 = !{ptr @drbd_try_rs_begin_io._entry_ptr.71, !120, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @__func__.drbd_rs_complete_io, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/block/drbd/drbd_actlog.c", i32 1146, i32 7}
!124 = !{ptr @.str.72, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/block/drbd/drbd_actlog.c", i32 1147, i32 4}
!126 = !{ptr @drbd_rs_complete_io._entry, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @drbd_rs_complete_io._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.74, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/block/drbd/drbd_actlog.c", i32 1153, i32 3}
!130 = !{ptr @drbd_rs_complete_io._entry.73, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @drbd_rs_complete_io._entry_ptr.75, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.76, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/block/drbd/drbd_actlog.c", i32 1209, i32 5}
!134 = !{ptr @.str.77, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @drbd_rs_del_all._entry, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @drbd_rs_del_all._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @drbd_rs_del_all._entry.78, !138, !"_entry", i1 false, i1 false}
!138 = !{!"../drivers/block/drbd/drbd_actlog.c", i32 1212, i32 5}
!139 = !{ptr @drbd_rs_del_all._entry_ptr.79, !138, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @drbd_rs_del_all._entry.80, !141, !"_entry", i1 false, i1 false}
!141 = !{!"../drivers/block/drbd/drbd_actlog.c", i32 1213, i32 5}
!142 = !{ptr @drbd_rs_del_all._entry_ptr.81, !141, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.83, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/block/drbd/drbd_actlog.c", i32 1219, i32 5}
!145 = !{ptr @drbd_rs_del_all._entry.82, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @drbd_rs_del_all._entry_ptr.84, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @drbd_rs_del_all._entry.85, !148, !"_entry", i1 false, i1 false}
!148 = !{!"../drivers/block/drbd/drbd_actlog.c", i32 1225, i32 4}
!149 = !{ptr @drbd_rs_del_all._entry_ptr.86, !148, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.88, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/block/drbd/drbd_actlog.c", i32 1226, i32 4}
!152 = !{ptr @drbd_rs_del_all._entry.87, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @drbd_rs_del_all._entry_ptr.89, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.91, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/block/drbd/drbd_actlog.c", i32 1229, i32 3}
!156 = !{ptr @drbd_rs_del_all._entry.90, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @drbd_rs_del_all._entry_ptr.92, !155, !"_entry_ptr", i1 false, i1 false}
!158 = distinct !{null, !159, !"__warned", i1 false, i1 false}
!159 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!160 = !{ptr @.str.93, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @.str.94, !159, !"<string literal>", i1 false, i1 false}
!162 = distinct !{null, !163, !"__warned", i1 false, i1 false}
!163 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!164 = !{ptr @.str.95, !163, !"<string literal>", i1 false, i1 false}
!165 = distinct !{null, !166, !"__warned", i1 false, i1 false}
!166 = !{!"../drivers/block/drbd/drbd_int.h", i32 1722, i32 7}
!167 = !{ptr @.str.96, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @__func__.__drbd_chk_io_error_, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/block/drbd/drbd_int.h", i32 1727, i32 8}
!170 = !{ptr @.str.97, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/block/drbd/drbd_int.h", i32 1728, i32 5}
!172 = !{ptr @__drbd_chk_io_error_._entry, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @__drbd_chk_io_error_._entry_ptr, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.99, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/block/drbd/drbd_int.h", i32 1763, i32 4}
!176 = !{ptr @__drbd_chk_io_error_._entry.98, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @__drbd_chk_io_error_._entry_ptr.100, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.101, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/block/drbd/drbd_actlog.c", i32 156, i32 3}
!180 = !{ptr @.str.102, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @_drbd_md_sync_page_io._entry, !179, !"_entry", i1 false, i1 false}
!182 = !{ptr @_drbd_md_sync_page_io._entry_ptr, !179, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.103, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/block/drbd/drbd_actlog.c", i32 408, i32 3}
!185 = !{ptr @.str.104, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @al_write_transaction._entry, !184, !"_entry", i1 false, i1 false}
!187 = !{ptr @al_write_transaction._entry_ptr, !184, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.106, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/block/drbd/drbd_actlog.c", i32 415, i32 3}
!190 = !{ptr @al_write_transaction._entry.105, !189, !"_entry", i1 false, i1 false}
!191 = !{ptr @al_write_transaction._entry_ptr.107, !189, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.109, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/block/drbd/drbd_actlog.c", i32 425, i32 3}
!194 = !{ptr @al_write_transaction._entry.108, !193, !"_entry", i1 false, i1 false}
!195 = !{ptr @al_write_transaction._entry_ptr.110, !193, !"_entry_ptr", i1 false, i1 false}
!196 = distinct !{null, !197, !"__warned", i1 false, i1 false}
!197 = !{!"../drivers/block/drbd/drbd_actlog.c", i32 386, i32 22}
!198 = !{ptr @__func__.__al_write_transaction, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/block/drbd/drbd_actlog.c", i32 391, i32 5}
!200 = !{ptr @.str.111, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/block/drbd/drbd_actlog.c", i32 633, i32 23}
!202 = !{ptr @.str.112, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/block/drbd/drbd_actlog.c", i32 635, i32 22}
!204 = !{ptr @.str.113, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/block/drbd/drbd_actlog.c", i32 634, i32 18}
!206 = !{ptr @drbd_change_sync_fname, !207, !"drbd_change_sync_fname", i1 false, i1 false}
!207 = !{!"../drivers/block/drbd/drbd_actlog.c", i32 632, i32 20}
!208 = !{ptr @.str.114, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/block/drbd/drbd_actlog.c", i32 657, i32 2}
!210 = !{ptr @.str.115, !209, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @update_rs_extent._entry, !209, !"_entry", i1 false, i1 false}
!212 = !{ptr @update_rs_extent._entry_ptr, !209, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.117, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/block/drbd/drbd_actlog.c", i32 680, i32 5}
!215 = !{ptr @update_rs_extent._entry.116, !214, !"_entry", i1 false, i1 false}
!216 = !{ptr @update_rs_extent._entry_ptr.118, !214, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @.str.120, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/block/drbd/drbd_actlog.c", i32 703, i32 5}
!219 = !{ptr @update_rs_extent._entry.119, !218, !"_entry", i1 false, i1 false}
!220 = !{ptr @update_rs_extent._entry_ptr.121, !218, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.123, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/block/drbd/drbd_actlog.c", i32 710, i32 5}
!223 = !{ptr @update_rs_extent._entry.122, !222, !"_entry", i1 false, i1 false}
!224 = !{ptr @update_rs_extent._entry_ptr.124, !222, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @.str.126, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/block/drbd/drbd_actlog.c", i32 730, i32 3}
!227 = !{ptr @update_rs_extent._entry.125, !226, !"_entry", i1 false, i1 false}
!228 = !{ptr @update_rs_extent._entry_ptr.127, !226, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @.str.128, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/block/drbd/drbd_int.h", i32 2099, i32 2}
!231 = !{ptr @.str.129, !230, !"<string literal>", i1 false, i1 false}
!232 = !{ptr @put_ldev._entry, !230, !"_entry", i1 false, i1 false}
!233 = !{ptr @put_ldev._entry_ptr, !230, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @.str.130, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/block/drbd/drbd_actlog.c", i32 934, i32 4}
!236 = !{ptr @_bme_get._entry, !235, !"_entry", i1 false, i1 false}
!237 = !{ptr @_bme_get._entry_ptr, !235, !"_entry_ptr", i1 false, i1 false}
!238 = !{!"sp"}
!239 = !{i32 1, !"wchar_size", i32 2}
!240 = !{i32 1, !"min_enum_size", i32 4}
!241 = !{i32 8, !"branch-target-enforcement", i32 0}
!242 = !{i32 8, !"sign-return-address", i32 0}
!243 = !{i32 8, !"sign-return-address-all", i32 0}
!244 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!245 = !{i32 7, !"uwtable", i32 1}
!246 = !{i32 7, !"frame-pointer", i32 2}
!247 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!248 = !{i64 2148717828}
!249 = !{i64 1101494, i64 1101518, i64 1101539, i64 1101556, i64 1101573}
!250 = !{i64 2148718054}
!251 = !{i64 2148704457}
!252 = !{i64 2148619166, i64 2148619198, i64 2148619227, i64 2148619261, i64 2148619292, i64 2148619315}
!253 = !{i64 2148704686}
!254 = !{i64 2149952852}
!255 = !{i64 2149953118}
!256 = !{!"branch_weights", i32 1, i32 2000}
!257 = !{i64 2159527864, i64 2159528361, i64 2159527901, i64 2159527957, i64 2159527991, i64 2159528015, i64 2159528056, i64 2159528077, i64 2159528105, i64 2159528139}
!258 = !{i64 2148236707, i64 2148236712, i64 2148236725, i64 2148236769, i64 2148236803, i64 2148236824}
!259 = !{i64 2148615981, i64 2148616007, i64 2148616036, i64 2148616070, i64 2148616101, i64 2148616124}
!260 = !{i64 2156362678}
!261 = !{!"branch_weights", i32 2000, i32 1}
!262 = !{i64 2148712831}
!263 = !{i64 2148623226, i64 2148623258, i64 2148623287, i64 2148623321, i64 2148623352, i64 2148623375}
!264 = !{i64 2159611457, i64 2159611954, i64 2159611494, i64 2159611550, i64 2159611584, i64 2159611608, i64 2159611649, i64 2159611670, i64 2159611698, i64 2159611732}
!265 = !{i64 2159826194, i64 2159826691, i64 2159826231, i64 2159826287, i64 2159826321, i64 2159826345, i64 2159826386, i64 2159826407, i64 2159826435, i64 2159826469}
!266 = !{i64 2159892424, i64 2159892922, i64 2159892461, i64 2159892517, i64 2159892551, i64 2159892575, i64 2159892616, i64 2159892637, i64 2159892665, i64 2159892699}
