; ModuleID = '/llk/IR_all_yes/drivers/block/drbd/drbd_req.c_pt.bc'
source_filename = "../drivers/block/drbd/drbd_req.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.bio_list = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.hlist_node = type { ptr, ptr }
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
%struct.bio_and_error = type { ptr, i32 }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.132, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.132 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.drbd_request = type { %struct.drbd_work, ptr, ptr, %struct.drbd_interval, i32, %struct.list_head, ptr, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.kref, i32 }
%struct.drbd_interval = type { %struct.rb_node, i64, i32, i64, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.net_conf = type { [64 x i8], i32, [64 x i8], i32, [64 x i8], i32, [64 x i8], i32, [64 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.drbd_resource = type { ptr, ptr, ptr, ptr, ptr, %struct.kref, %struct.idr, %struct.list_head, %struct.list_head, %struct.res_opts, %struct.mutex, %struct.mutex, %struct.spinlock, i8, i32, ptr }
%struct.res_opts = type { [32 x i8], i32, i32 }
%struct.drbd_backing_dev = type { ptr, ptr, %struct.drbd_md, ptr, i64 }
%struct.drbd_md = type { i64, i64, %struct.spinlock, [4 x i64], i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.disk_conf = type { [128 x i8], i32, [128 x i8], i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.lru_cache = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.backing_dev_info = type { i64, %struct.rb_node, %struct.list_head, i32, i32, %struct.kref, i32, i32, i32, i32, %struct.atomic_t, %struct.bdi_writeback, %struct.list_head, %struct.xarray, %struct.mutex, %struct.rw_semaphore, %struct.wait_queue_head, ptr, [64 x i8], ptr, %struct.timer_list, ptr }
%struct.bdi_writeback = type { ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, [4 x %struct.percpu_counter], i32, i32, i32, i32, i32, i32, i32, i32, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, %struct.delayed_work, i32, %struct.list_head, %struct.percpu_ref, %struct.fprop_local_percpu, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.133 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.percpu_ref = type { i32, ptr }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
%union.anon.133 = type { %struct.work_struct }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.drbd_plug_cb = type { %struct.blk_plug_cb, ptr }
%struct.blk_plug_cb = type { %struct.list_head, ptr, ptr }

@drbd_req_destroy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 87, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"drbd_req_destroy: Logic BUG rq_state = 0x%x, completion_ref = %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"drbd_req_destroy\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/block/drbd/drbd_req.c\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@drbd_req_destroy._entry_ptr = internal global ptr @drbd_req_destroy._entry, section ".printk_index", align 4
@drbd_req_destroy._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 113, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"drbd_req_destroy: Logic BUG: interval empty, but: rq_state=0x%x, sect=%llu, size=%u\0A\00", [43 x i8] zeroinitializer }, align 32
@drbd_req_destroy._entry_ptr.7 = internal global ptr @drbd_req_destroy._entry.5, section ".printk_index", align 4
@drbd_ratelimit_state = external dso_local global %struct.ratelimit_state, align 4
@drbd_req_destroy._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 155, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"Should have called drbd_al_complete_io(, %llu, %u), but my Disk seems to have failed :(\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@drbd_req_destroy._entry_ptr.11 = internal global ptr @drbd_req_destroy._entry.8, section ".printk_index", align 4
@drbd_request_mempool = external dso_local global %struct.mempool_s, align 4
@__req_mod._entry = internal constant %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 564, ptr @.str.3, ptr @.str.4 }, align 1
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"LOGIC BUG in %s:%u\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"__req_mod\00", [22 x i8] zeroinitializer }, align 32
@__req_mod._entry_ptr = internal global ptr @__req_mod._entry, section ".printk_index", align 4
@__req_mod._entry.14 = internal constant %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.2, i32 576, ptr @.str.3, ptr @.str.4 }, align 1
@.str.15 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"ASSERT( !(req->rq_state & RQ_NET_MASK) ) in %s:%d\0A\00", [45 x i8] zeroinitializer }, align 32
@__req_mod._entry_ptr.16 = internal global ptr @__req_mod._entry.14, section ".printk_index", align 4
@__req_mod.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.17 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__req_mod._entry.18 = internal constant %struct.pi_entry { ptr @.str.19, ptr @.str.13, ptr @.str.2, i32 589, ptr @.str.3, ptr @.str.4 }, align 1
@.str.19 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"ASSERT( !(req->rq_state & RQ_LOCAL_MASK) ) in %s:%d\0A\00", [43 x i8] zeroinitializer }, align 32
@__req_mod._entry_ptr.20 = internal global ptr @__req_mod._entry.18, section ".printk_index", align 4
@__req_mod._entry.21 = internal constant %struct.pi_entry { ptr @.str.22, ptr @.str.13, ptr @.str.2, i32 641, ptr @.str.3, ptr @.str.4 }, align 1
@.str.22 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"ASSERT( drbd_interval_empty(&req->i) ) in %s:%d\0A\00", [47 x i8] zeroinitializer }, align 32
@__req_mod._entry_ptr.23 = internal global ptr @__req_mod._entry.21, section ".printk_index", align 4
@__req_mod._entry.24 = internal constant %struct.pi_entry { ptr @.str.25, ptr @.str.13, ptr @.str.2, i32 646, ptr @.str.3, ptr @.str.4 }, align 1
@.str.25 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"ASSERT( req->rq_state & RQ_NET_PENDING ) in %s:%d\0A\00", [45 x i8] zeroinitializer }, align 32
@__req_mod._entry_ptr.26 = internal global ptr @__req_mod._entry.24, section ".printk_index", align 4
@__req_mod._entry.27 = internal constant %struct.pi_entry { ptr @.str.28, ptr @.str.13, ptr @.str.2, i32 647, ptr @.str.3, ptr @.str.4 }, align 1
@.str.28 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"ASSERT( (req->rq_state & RQ_LOCAL_MASK) == 0 ) in %s:%d\0A\00", [39 x i8] zeroinitializer }, align 32
@__req_mod._entry_ptr.29 = internal global ptr @__req_mod._entry.27, section ".printk_index", align 4
@__req_mod._entry.30 = internal constant %struct.pi_entry { ptr @.str.22, ptr @.str.13, ptr @.str.2, i32 660, ptr @.str.3, ptr @.str.4 }, align 1
@__req_mod._entry_ptr.31 = internal global ptr @__req_mod._entry.30, section ".printk_index", align 4
@__req_mod._entry.32 = internal constant %struct.pi_entry { ptr @.str.25, ptr @.str.13, ptr @.str.2, i32 683, ptr @.str.3, ptr @.str.4 }, align 1
@__req_mod._entry_ptr.33 = internal global ptr @__req_mod._entry.32, section ".printk_index", align 4
@__req_mod.__warned.34 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__req_mod._entry.35 = internal constant %struct.pi_entry { ptr @.str.25, ptr @.str.13, ptr @.str.2, i32 749, ptr @.str.3, ptr @.str.4 }, align 1
@__req_mod._entry_ptr.36 = internal global ptr @__req_mod._entry.35, section ".printk_index", align 4
@__req_mod._entry.37 = internal constant %struct.pi_entry { ptr @.str.38, ptr @.str.13, ptr @.str.2, i32 750, ptr @.str.3, ptr @.str.4 }, align 1
@.str.38 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"ASSERT( req->rq_state & RQ_EXP_WRITE_ACK ) in %s:%d\0A\00", [43 x i8] zeroinitializer }, align 32
@__req_mod._entry_ptr.39 = internal global ptr @__req_mod._entry.37, section ".printk_index", align 4
@__req_mod._entry.40 = internal constant %struct.pi_entry { ptr @.str.41, ptr @.str.13, ptr @.str.2, i32 767, ptr @.str.3, ptr @.str.4 }, align 1
@.str.41 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"ASSERT( req->rq_state & RQ_EXP_RECEIVE_ACK ) in %s:%d\0A\00", [41 x i8] zeroinitializer }, align 32
@__req_mod._entry_ptr.42 = internal global ptr @__req_mod._entry.40, section ".printk_index", align 4
@__req_mod._entry.43 = internal constant %struct.pi_entry { ptr @.str.38, ptr @.str.13, ptr @.str.2, i32 776, ptr @.str.3, ptr @.str.4 }, align 1
@__req_mod._entry_ptr.44 = internal global ptr @__req_mod._entry.43, section ".printk_index", align 4
@__req_mod._entry.45 = internal constant %struct.pi_entry { ptr @.str.25, ptr @.str.13, ptr @.str.2, i32 781, ptr @.str.3, ptr @.str.4 }, align 1
@__req_mod._entry_ptr.46 = internal global ptr @__req_mod._entry.45, section ".printk_index", align 4
@__req_mod._entry.47 = internal constant %struct.pi_entry { ptr @.str.48, ptr @.str.13, ptr @.str.2, i32 854, ptr @.str.3, ptr @.str.4 }, align 1
@.str.48 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"FIXME (BARRIER_ACKED but pending)\0A\00", [61 x i8] zeroinitializer }, align 32
@__req_mod._entry_ptr.49 = internal global ptr @__req_mod._entry.47, section ".printk_index", align 4
@__req_mod._entry.50 = internal constant %struct.pi_entry { ptr @.str.25, ptr @.str.13, ptr @.str.2, i32 865, ptr @.str.3, ptr @.str.4 }, align 1
@__req_mod._entry_ptr.51 = internal global ptr @__req_mod._entry.50, section ".printk_index", align 4
@drbd_submit_bio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.2, i32 1608, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"ASSERT( IS_ALIGNED(bio->bi_iter.bi_size, 512) ) in %s:%d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"drbd_submit_bio\00", [16 x i8] zeroinitializer }, align 32
@drbd_submit_bio._entry_ptr = internal global ptr @drbd_submit_bio._entry, section ".printk_index", align 4
@request_timer_fn.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@request_timer_fn.__warned.54 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@request_timer_fn._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.2, i32 1761, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Local backing device failed to meet the disk-timeout\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"request_timer_fn\00", [47 x i8] zeroinitializer }, align 32
@request_timer_fn._entry_ptr = internal global ptr @request_timer_fn._entry, section ".printk_index", align 4
@put_ldev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.59, i32 2099, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ASSERT( i >= 0 ) in %s:%d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"put_ldev\00", [23 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/block/drbd/drbd_int.h\00", [34 x i8] zeroinitializer }, align 32
@put_ldev._entry_ptr = internal global ptr @put_ldev._entry, section ".printk_index", align 4
@dec_ap_bio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.59, i32 2281, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ASSERT( ap_bio >= 0 ) in %s:%d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dec_ap_bio\00", [21 x i8] zeroinitializer }, align 32
@dec_ap_bio._entry_ptr = internal global ptr @dec_ap_bio._entry, section ".printk_index", align 4
@drbd_get_max_buffers.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.62 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.64 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@mod_rq_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.2, i32 462, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"ASSERT( req->rq_state & RQ_LOCAL_PENDING ) in %s:%d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mod_rq_state\00", [19 x i8] zeroinitializer }, align 32
@mod_rq_state._entry_ptr = internal global ptr @mod_rq_state._entry, section ".printk_index", align 4
@_dec_ap_pending._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.59, i32 2007, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"in %s:%d: ap_pending_cnt = %d < 0 !\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"_dec_ap_pending\00", [16 x i8] zeroinitializer }, align 32
@_dec_ap_pending._entry_ptr = internal global ptr @_dec_ap_pending._entry, section ".printk_index", align 4
@drbd_req_put_completion_ref._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.2, i32 298, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"ASSERT( m || (req->rq_state & RQ_POSTPONED) ) in %s:%d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drbd_req_put_completion_ref\00", [36 x i8] zeroinitializer }, align 32
@drbd_req_put_completion_ref._entry_ptr = internal global ptr @drbd_req_put_completion_ref._entry, section ".printk_index", align 4
@drbd_req_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.2, i32 214, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drbd_req_complete: Logic BUG rq_state = 0x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"drbd_req_complete\00", [46 x i8] zeroinitializer }, align 32
@drbd_req_complete._entry_ptr = internal global ptr @drbd_req_complete._entry, section ".printk_index", align 4
@drbd_req_complete._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.72, ptr @.str.2, i32 219, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drbd_req_complete: Logic BUG, master_bio == NULL!\0A\00", [45 x i8] zeroinitializer }, align 32
@drbd_req_complete._entry_ptr.75 = internal global ptr @drbd_req_complete._entry.73, section ".printk_index", align 4
@__func__.drbd_report_io_error = private unnamed_addr constant [21 x i8] c"drbd_report_io_error\00", align 1
@drbd_report_io_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @__func__.drbd_report_io_error, ptr @.str.2, i32 522, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"local %s IO error sector %llu+%u on %s\0A\00", [56 x i8] zeroinitializer }, align 32
@drbd_report_io_error._entry_ptr = internal global ptr @drbd_report_io_error._entry, section ".printk_index", align 4
@.str.77 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"WRITE\00", [26 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"READ\00", [27 x i8] zeroinitializer }, align 32
@__drbd_chk_io_error_.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__func__.__drbd_chk_io_error_ = private unnamed_addr constant [21 x i8] c"__drbd_chk_io_error_\00", align 1
@__drbd_chk_io_error_._entry = internal constant %struct.pi_entry { ptr @.str.79, ptr @__func__.__drbd_chk_io_error_, ptr @.str.59, i32 1728, ptr @.str.3, ptr @.str.4 }, align 1
@.str.79 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Local IO failed in %s.\0A\00", [40 x i8] zeroinitializer }, align 32
@__drbd_chk_io_error_._entry_ptr = internal global ptr @__drbd_chk_io_error_._entry, section ".printk_index", align 4
@__drbd_chk_io_error_._entry.80 = internal constant %struct.pi_entry { ptr @.str.81, ptr @__func__.__drbd_chk_io_error_, ptr @.str.59, i32 1764, ptr @.str.3, ptr @.str.4 }, align 1
@.str.81 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Local IO failed in %s. Detaching...\0A\00", [59 x i8] zeroinitializer }, align 32
@__drbd_chk_io_error_._entry_ptr.82 = internal global ptr @__drbd_chk_io_error_._entry.80, section ".printk_index", align 4
@drbd_request_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.2, i32 1205, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"could not kmalloc() req\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"drbd_request_prepare\00", [43 x i8] zeroinitializer }, align 32
@drbd_request_prepare._entry_ptr = internal global ptr @drbd_request_prepare._entry, section ".printk_index", align 4
@drbd_io_bio_set = external dso_local global %struct.bio_set, align 4
@__func__.drbd_send_and_submit = private unnamed_addr constant [21 x i8] c"drbd_send_and_submit\00", align 1
@drbd_send_and_submit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @__func__.drbd_send_and_submit, ptr @.str.2, i32 1401, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"IO ERROR: neither local nor remote data, sector %llu+%u\0A\00", [39 x i8] zeroinitializer }, align 32
@drbd_send_and_submit._entry_ptr = internal global ptr @drbd_send_and_submit._entry, section ".printk_index", align 4
@maybe_pull_ahead.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@maybe_pull_ahead._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.87, ptr @.str.2, i32 1002, ptr @.str.88, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Congestion-fill threshold reached\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"maybe_pull_ahead\00", [47 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@maybe_pull_ahead._entry_ptr = internal global ptr @maybe_pull_ahead._entry, section ".printk_index", align 4
@maybe_pull_ahead._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.87, ptr @.str.2, i32 1007, ptr @.str.88, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Congestion-extents threshold reached\0A\00", [58 x i8] zeroinitializer }, align 32
@maybe_pull_ahead._entry_ptr.91 = internal global ptr @maybe_pull_ahead._entry.89, section ".printk_index", align 4
@do_remote_read.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@drbd_may_do_local_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.93, ptr @.str.2, i32 896, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"ASSERT( sector < nr_sectors ) in %s:%d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drbd_may_do_local_read\00", [41 x i8] zeroinitializer }, align 32
@drbd_may_do_local_read._entry_ptr = internal global ptr @drbd_may_do_local_read._entry, section ".printk_index", align 4
@drbd_may_do_local_read._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.93, ptr @.str.2, i32 897, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"ASSERT( esector < nr_sectors ) in %s:%d\0A\00", [55 x i8] zeroinitializer }, align 32
@drbd_may_do_local_read._entry_ptr.96 = internal global ptr @drbd_may_do_local_read._entry.94, section ".printk_index", align 4
@drbd_process_write_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.98, ptr @.str.2, i32 1111, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"ASSERT( req->master_bio->bi_opf & REQ_PREFLUSH ) in %s:%d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drbd_process_write_request\00", [37 x i8] zeroinitializer }, align 32
@drbd_process_write_request._entry_ptr = internal global ptr @drbd_process_write_request._entry, section ".printk_index", align 4
@drbd_process_write_request._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.98, ptr @.str.2, i32 1120, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"ASSERT( !(remote && send_oos) ) in %s:%d\0A\00", [54 x i8] zeroinitializer }, align 32
@drbd_process_write_request._entry_ptr.101 = internal global ptr @drbd_process_write_request._entry.99, section ".printk_index", align 4
@drbd_fault_rate = external dso_local local_unnamed_addr global i32, align 4
@drbd_enable_faults = external dso_local local_unnamed_addr global i32, align 4
@net_timeout_reached._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.103, ptr @.str.2, i32 1629, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"Remote failed to finish a request within %ums > ko-count (%u) * timeout (%u * 0.1s)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"net_timeout_reached\00", [44 x i8] zeroinitializer }, align 32
@net_timeout_reached._entry_ptr = internal global ptr @net_timeout_reached._entry, section ".printk_index", align 4
@net_timeout_reached._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.103, ptr @.str.2, i32 1640, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [105 x i8], [55 x i8] } { [105 x i8] c"We did not send a P_BARRIER for %ums > ko-count (%u) * timeout (%u * 0.1s); drbd kernel thread blocked?\0A\00", [55 x i8] zeroinitializer }, align 32
@net_timeout_reached._entry_ptr.106 = internal global ptr @net_timeout_reached._entry.104, section ".printk_index", align 4
@net_timeout_reached._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.103, ptr @.str.2, i32 1663, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [118 x i8], [42 x i8] } { [118 x i8] c"Remote failed to answer a P_BARRIER (sent at %lu jif; now=%lu jif) within %ums > ko-count (%u) * timeout (%u * 0.1s)\0A\00", [42 x i8] zeroinitializer }, align 32
@net_timeout_reached._entry_ptr.109 = internal global ptr @net_timeout_reached._entry.107, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.110 = internal global [32 x i64] [i64 30, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30]
@__sancov_gen_cov_switch_values.111 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.112 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.113 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 9]
@__sancov_gen_cov_switch_values.114 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 8]
@__sancov_gen_cov_switch_values.115 = internal global [12 x i64] [i64 10, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10]
@__sancov_gen_cov_switch_values.116 = internal global [4 x i64] [i64 2, i64 32, i64 13, i64 22]
@__sancov_gen_cov_switch_values.117 = internal global [4 x i64] [i64 2, i64 32, i64 13, i64 22]
@__sancov_gen_cov_switch_values.118 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 9]
@__sancov_gen_cov_switch_values.119 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967191, i64 4294967280]
@__sancov_gen_cov_switch_values.120 = internal global [6 x i64] [i64 4, i64 32, i64 13, i64 14, i64 15, i64 31]
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 86, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 112, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 153, i32 5 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 564, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 576, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 578, i32 8 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 589, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 641, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 646, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 647, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 750, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 767, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 854, i32 4 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1608, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1761, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 2099, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 2281, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 695, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 723, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 462, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 2007, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 298, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 214, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 219, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 518, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1728, i32 5 }
@___asan_gen_.293 = private unnamed_addr constant [33 x i8] c"../drivers/block/drbd/drbd_int.h\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1763, i32 4 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1205, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1400, i32 4 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1002, i32 3 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1007, i32 3 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 896, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 897, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1111, i32 3 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1120, i32 2 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1628, i32 3 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1638, i32 3 }
@___asan_gen_.373 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.376 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.377 = private constant [33 x i8] c"../drivers/block/drbd/drbd_req.c\00", align 1
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1661, i32 3 }
@llvm.compiler.used = appending global [144 x ptr] [ptr @__drbd_chk_io_error_._entry, ptr @__drbd_chk_io_error_._entry.80, ptr @__drbd_chk_io_error_._entry_ptr, ptr @__drbd_chk_io_error_._entry_ptr.82, ptr @__req_mod._entry, ptr @__req_mod._entry.14, ptr @__req_mod._entry.18, ptr @__req_mod._entry.21, ptr @__req_mod._entry.24, ptr @__req_mod._entry.27, ptr @__req_mod._entry.30, ptr @__req_mod._entry.32, ptr @__req_mod._entry.35, ptr @__req_mod._entry.37, ptr @__req_mod._entry.40, ptr @__req_mod._entry.43, ptr @__req_mod._entry.45, ptr @__req_mod._entry.47, ptr @__req_mod._entry.50, ptr @__req_mod._entry_ptr, ptr @__req_mod._entry_ptr.16, ptr @__req_mod._entry_ptr.20, ptr @__req_mod._entry_ptr.23, ptr @__req_mod._entry_ptr.26, ptr @__req_mod._entry_ptr.29, ptr @__req_mod._entry_ptr.31, ptr @__req_mod._entry_ptr.33, ptr @__req_mod._entry_ptr.36, ptr @__req_mod._entry_ptr.39, ptr @__req_mod._entry_ptr.42, ptr @__req_mod._entry_ptr.44, ptr @__req_mod._entry_ptr.46, ptr @__req_mod._entry_ptr.49, ptr @__req_mod._entry_ptr.51, ptr @_dec_ap_pending._entry, ptr @_dec_ap_pending._entry_ptr, ptr @dec_ap_bio._entry, ptr @dec_ap_bio._entry_ptr, ptr @drbd_may_do_local_read._entry, ptr @drbd_may_do_local_read._entry.94, ptr @drbd_may_do_local_read._entry_ptr, ptr @drbd_may_do_local_read._entry_ptr.96, ptr @drbd_process_write_request._entry, ptr @drbd_process_write_request._entry.99, ptr @drbd_process_write_request._entry_ptr, ptr @drbd_process_write_request._entry_ptr.101, ptr @drbd_report_io_error._entry, ptr @drbd_report_io_error._entry_ptr, ptr @drbd_req_complete._entry, ptr @drbd_req_complete._entry.73, ptr @drbd_req_complete._entry_ptr, ptr @drbd_req_complete._entry_ptr.75, ptr @drbd_req_destroy._entry, ptr @drbd_req_destroy._entry.5, ptr @drbd_req_destroy._entry.8, ptr @drbd_req_destroy._entry_ptr, ptr @drbd_req_destroy._entry_ptr.11, ptr @drbd_req_destroy._entry_ptr.7, ptr @drbd_req_put_completion_ref._entry, ptr @drbd_req_put_completion_ref._entry_ptr, ptr @drbd_request_prepare._entry, ptr @drbd_request_prepare._entry_ptr, ptr @drbd_send_and_submit._entry, ptr @drbd_send_and_submit._entry_ptr, ptr @drbd_submit_bio._entry, ptr @drbd_submit_bio._entry_ptr, ptr @maybe_pull_ahead._entry, ptr @maybe_pull_ahead._entry.89, ptr @maybe_pull_ahead._entry_ptr, ptr @maybe_pull_ahead._entry_ptr.91, ptr @mod_rq_state._entry, ptr @mod_rq_state._entry_ptr, ptr @net_timeout_reached._entry, ptr @net_timeout_reached._entry.104, ptr @net_timeout_reached._entry.107, ptr @net_timeout_reached._entry_ptr, ptr @net_timeout_reached._entry_ptr.106, ptr @net_timeout_reached._entry_ptr.109, ptr @put_ldev._entry, ptr @put_ldev._entry_ptr, ptr @request_timer_fn._entry, ptr @request_timer_fn._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.38, ptr @.str.41, ptr @.str.48, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.74, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.81, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.90, ptr @.str.92, ptr @.str.93, ptr @.str.95, ptr @.str.97, ptr @.str.98, ptr @.str.100, ptr @.str.102, ptr @.str.103, ptr @.str.105, ptr @.str.108], section "llvm.metadata"
@0 = internal global [86 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_req_destroy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_req_destroy._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_req_destroy._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_submit_bio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @request_timer_fn._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @put_ldev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dec_ap_bio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mod_rq_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_dec_ap_pending._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_req_put_completion_ref._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_req_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_req_complete._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_report_io_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_request_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_send_and_submit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @maybe_pull_ahead._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @maybe_pull_ahead._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_may_do_local_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_may_do_local_read._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_process_write_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_process_write_request._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net_timeout_reached._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net_timeout_reached._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 105, i32 160, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net_timeout_reached._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 118, i32 160, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drbd_req_destroy(ptr noundef %kref) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %kref, i32 -132
  %device1 = getelementptr i8, ptr %kref, i32 -120
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %rq_state = getelementptr i8, ptr %kref, i32 4
  %2 = ptrtoint ptr %rq_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rq_state, align 8
  %master_bio = getelementptr i8, ptr %kref, i32 -48
  %4 = ptrtoint ptr %master_bio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %master_bio, align 4
  %tobool.not = icmp ne ptr %5, null
  %and = and i32 %3, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  %or.cond = select i1 %tobool.not, i1 %tobool2.not, i1 false
  br i1 %or.cond, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %completion_ref = getelementptr i8, ptr %kref, i32 -4
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %completion_ref, i32 noundef 4) #9
  %6 = ptrtoint ptr %completion_ref to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %completion_ref, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not = icmp eq i32 %7, 0
  %and5 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  %or.cond143 = select i1 %tobool3.not, i1 %tobool6.not, i1 false
  br i1 %or.cond143, label %lor.lhs.false7, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %and8 = and i32 %3, 1008
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp ne i32 %and8, 0
  %and11 = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  %or.cond144 = and i1 %tobool9.not, %tobool12.not
  br i1 %or.cond144, label %lor.lhs.false7.do.end_crit_edge, label %if.end

lor.lhs.false7.do.end_crit_edge:                  ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false7.do.end_crit_edge, %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %vdisk = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 18
  %8 = ptrtoint ptr %vdisk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vdisk, align 4
  %part0 = getelementptr inbounds %struct.gendisk, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %part0, align 4
  %bd_device = getelementptr inbounds %struct.block_device, ptr %11, i32 0, i32 10
  %completion_ref13 = getelementptr i8, ptr %kref, i32 -4
  %call.i.i148 = tail call zeroext i1 @__kasan_check_read(ptr noundef %completion_ref13, i32 noundef 4) #9
  %12 = ptrtoint ptr %completion_ref13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %completion_ref13, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %bd_device, ptr noundef nonnull @.str, i32 noundef %3, i32 noundef %13) #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false7
  %tl_requests = getelementptr i8, ptr %kref, i32 -56
  %call.i.i149 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %tl_requests) #9
  br i1 %call.i.i149, label %if.end.i.i, label %if.end.list_del_init.exit_crit_edge

if.end.list_del_init.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr i8, ptr %kref, i32 -52
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i, align 4
  %16 = ptrtoint ptr %tl_requests to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tl_requests, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end.list_del_init.exit_crit_edge
  %20 = ptrtoint ptr %tl_requests to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %tl_requests, ptr %tl_requests, align 4
  %prev.i3.i = getelementptr i8, ptr %kref, i32 -52
  %21 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %tl_requests, ptr %prev.i3.i, align 4
  %i = getelementptr i8, ptr %kref, i32 -108
  %22 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %i, align 8
  %24 = ptrtoint ptr %i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %24)
  %cmp.i = icmp eq i32 %23, %24
  br i1 %cmp.i, label %if.else21, label %if.then16

if.then16:                                        ; preds = %list_del_init.exit
  %and17 = and i32 %3, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  %write_requests = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 44
  %read_requests = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 43
  %root.0 = select i1 %tobool18.not, ptr %read_requests, ptr %write_requests
  %25 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %device1, align 4
  tail call void @drbd_remove_interval(ptr noundef %root.0, ptr noundef %i) #9
  %waiting.i = getelementptr i8, ptr %kref, i32 -68
  %27 = ptrtoint ptr %waiting.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load.i = load i8, ptr %waiting.i, align 8
  %28 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i = icmp eq i8 %28, 0
  br i1 %tobool.not.i, label %if.then16.if.end37_crit_edge, label %if.then.i

if.then16.if.end37_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.then.i:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  %misc_wait.i = getelementptr inbounds %struct.drbd_device, ptr %26, i32 0, i32 28
  tail call void @__wake_up(ptr noundef %misc_wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %if.end37

if.else21:                                        ; preds = %list_del_init.exit
  %and22 = and i32 %3, 880
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.else21.if.end37_crit_edge, label %land.lhs.true24

if.else21.if.end37_crit_edge:                     ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

land.lhs.true24:                                  ; preds = %if.else21
  %size = getelementptr i8, ptr %kref, i32 -84
  %29 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp.not = icmp eq i32 %30, 0
  br i1 %cmp.not, label %land.lhs.true24.if.end37_crit_edge, label %do.end29

land.lhs.true24.if.end37_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

do.end29:                                         ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #11
  %vdisk30 = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 18
  %31 = ptrtoint ptr %vdisk30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %vdisk30, align 4
  %part031 = getelementptr inbounds %struct.gendisk, ptr %32, i32 0, i32 7
  %33 = ptrtoint ptr %part031 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %part031, align 4
  %bd_device32 = getelementptr inbounds %struct.block_device, ptr %34, i32 0, i32 10
  %sector = getelementptr i8, ptr %kref, i32 -92
  %35 = ptrtoint ptr %sector to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %sector, align 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %bd_device32, ptr noundef nonnull @.str.6, i32 noundef %3, i64 noundef %36, i32 noundef %30) #12
  br label %if.end37

if.end37:                                         ; preds = %do.end29, %land.lhs.true24.if.end37_crit_edge, %if.else21.if.end37_crit_edge, %if.then.i, %if.then16.if.end37_crit_edge
  %and38 = and i32 %3, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.end37.if.end98_crit_edge, label %if.then40

if.end37.if.end98_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end98

if.then40:                                        ; preds = %if.end37
  %and41 = and i32 %3, 132095
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %and41)
  %cmp42.not = icmp eq i32 %and41, 131072
  br i1 %cmp42.not, label %if.then40.if.end71_crit_edge, label %if.then43

if.then40.if.end71_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end71

if.then43:                                        ; preds = %if.then40
  %37 = and i32 %3, 260
  call void @__sanitizer_cov_trace_const_cmp4(i32 260, i32 %37)
  %.not = icmp eq i32 %37, 260
  br i1 %.not, label %if.end55, label %if.then43.if.end71.sink.split_crit_edge

if.then43.if.end71.sink.split_crit_edge:          ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end71.sink.split

if.end55:                                         ; preds = %if.then43
  %and62 = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %if.end55.if.end71_crit_edge, label %if.end55.if.end71.sink.split_crit_edge

if.end55.if.end71.sink.split_crit_edge:           ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end71.sink.split

if.end55.if.end71_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end71

if.end71.sink.split:                              ; preds = %if.end55.if.end71.sink.split_crit_edge, %if.then43.if.end71.sink.split_crit_edge
  %.sink158 = phi i32 [ 1, %if.then43.if.end71.sink.split_crit_edge ], [ 2, %if.end55.if.end71.sink.split_crit_edge ]
  %sector51 = getelementptr i8, ptr %kref, i32 -92
  %38 = ptrtoint ptr %sector51 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %sector51, align 8
  %size53 = getelementptr i8, ptr %kref, i32 -84
  %40 = ptrtoint ptr %size53 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %size53, align 8
  %call54 = tail call i32 @__drbd_change_sync(ptr noundef %1, i64 noundef %39, i32 noundef %41, i32 noundef %.sink158) #9
  br label %if.end71

if.end71:                                         ; preds = %if.end71.sink.split, %if.end55.if.end71_crit_edge, %if.then40.if.end71_crit_edge
  %and72 = and i32 %3, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  br i1 %tobool73.not, label %if.end71.if.end98_crit_edge, label %if.then74

if.end71.if.end98_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end98

if.then74:                                        ; preds = %if.end71
  %state.i = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 27
  %42 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %bf.load.i150 = load i32, ptr %state.i, align 8
  %43 = and i32 %bf.load.i150, 7680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp.i151 = icmp eq i32 %43, 0
  br i1 %cmp.i151, label %if.then74.if.else81_crit_edge, label %if.end.i

if.then74.if.else81_crit_edge:                    ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else81

if.end.i:                                         ; preds = %if.then74
  %local_cnt.i = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 41
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %local_cnt.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %local_cnt.i, i32 1, i32 3, i32 1) #9
  %44 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %local_cnt.i, ptr %local_cnt.i, i32 1, ptr elementtype(i32) %local_cnt.i) #9, !srcloc !221
  %45 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %bf.load2.i = load i32, ptr %state.i, align 8
  %46 = and i32 %bf.load2.i, 7168
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp5.not.i = icmp eq i32 %46, 0
  br i1 %cmp5.not.i, label %if.then6.i, label %if.then79

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @put_ldev(ptr noundef %1) #9
  br label %if.else81

if.then79:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @drbd_al_complete_io(ptr noundef %1, ptr noundef %i) #9
  tail call fastcc void @put_ldev(ptr noundef %1)
  br label %if.end98

if.else81:                                        ; preds = %if.then6.i, %if.then74.if.else81_crit_edge
  %call82 = tail call i32 @___ratelimit(ptr noundef nonnull @drbd_ratelimit_state, ptr noundef nonnull @.str.1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.else81.if.end98_crit_edge, label %do.end87

if.else81.if.end98_crit_edge:                     ; preds = %if.else81
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end98

do.end87:                                         ; preds = %if.else81
  call void @__sanitizer_cov_trace_pc() #11
  %vdisk88 = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 18
  %47 = ptrtoint ptr %vdisk88 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %vdisk88, align 4
  %part089 = getelementptr inbounds %struct.gendisk, ptr %48, i32 0, i32 7
  %49 = ptrtoint ptr %part089 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %part089, align 4
  %bd_device90 = getelementptr inbounds %struct.block_device, ptr %50, i32 0, i32 10
  %sector92 = getelementptr i8, ptr %kref, i32 -92
  %51 = ptrtoint ptr %sector92 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %sector92, align 8
  %size94 = getelementptr i8, ptr %kref, i32 -84
  %53 = ptrtoint ptr %size94 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %size94, align 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.10, ptr noundef %bd_device90, ptr noundef nonnull @.str.9, i64 noundef %52, i32 noundef %54) #12
  br label %if.end98

if.end98:                                         ; preds = %do.end87, %if.else81.if.end98_crit_edge, %if.then79, %if.end71.if.end98_crit_edge, %if.end37.if.end98_crit_edge
  tail call void @mempool_free(ptr noundef %add.ptr, ptr noundef nonnull @drbd_request_mempool) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end98, %do.end
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__drbd_change_sync(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_get_ldev_if_state(ptr noundef %device, i32 noundef %mins) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %state = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 27
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %state, align 8
  %1 = and i32 %bf.load, 7680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %local_cnt = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 41
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %local_cnt, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %local_cnt, i32 1, i32 3, i32 1) #9
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %local_cnt, ptr %local_cnt, i32 1, ptr elementtype(i32) %local_cnt) #9, !srcloc !221
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %bf.load2 = load i32, ptr %state, align 8
  %bf.lshr3 = lshr i32 %bf.load2, 9
  %bf.clear4 = and i32 %bf.lshr3, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.clear4, i32 %mins)
  %cmp5.not = icmp ult i32 %bf.clear4, %mins
  br i1 %cmp5.not, label %if.then6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @put_ldev(ptr noundef %device)
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then6 ], [ 1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drbd_al_complete_io(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @put_ldev(ptr noundef %device) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %state = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 27
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %state, align 8
  %bf.lshr = lshr i32 %bf.load, 9
  %bf.clear = and i32 %bf.lshr, 15
  %local_cnt = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 41
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %local_cnt, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !222
  tail call void @llvm.prefetch.p0(ptr %local_cnt, i32 1, i32 3, i32 1) #9
  %1 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %local_cnt, ptr %local_cnt, i32 1, ptr elementtype(i32) %local_cnt) #9, !srcloc !223
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %1, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !224
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %asmresult.i.i.i.i)
  %cmp = icmp sgt i32 %asmresult.i.i.i.i, -1
  br i1 %cmp, label %do.end3, label %do.end3.thread

do.end3.thread:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %vdisk = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %2 = ptrtoint ptr %vdisk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdisk, align 4
  %part0 = getelementptr inbounds %struct.gendisk, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %part0, align 4
  %bd_device = getelementptr inbounds %struct.block_device, ptr %5, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %bd_device, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.59, i32 noundef 2099) #12
  br label %if.end15

do.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp4 = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp4, label %if.then5, label %do.end3.if.end15_crit_edge

do.end3.if.end15_crit_edge:                       ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then5:                                         ; preds = %do.end3
  %6 = zext i32 %bf.clear to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %bf.clear, label %if.then5.if.end14_crit_edge [
    i32 0, label %if.then7
    i32 2, label %if.then10
  ]

if.then5.if.end14_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then7:                                         ; preds = %if.then5
  %flags.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 14
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 24, ptr noundef %flags.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then7.if.end14_crit_edge

if.then7.if.end14_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
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
  %call4.i = tail call i32 @_test_and_set_bit(i32 noundef 12, ptr noundef %flags3.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.then.i.if.end14.sink.split_crit_edge, label %if.then.i.if.end14_crit_edge

if.then.i.if.end14_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then.i.if.end14.sink.split_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.sink.split

if.then10:                                        ; preds = %if.then5
  %flags = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 14
  %call11 = tail call i32 @_test_and_set_bit(i32 noundef 22, ptr noundef %flags) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %if.then12, label %if.then10.if.end14_crit_edge

if.then10.if.end14_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then12:                                        ; preds = %if.then10
  %call.i25 = tail call i32 @_test_and_set_bit(i32 noundef 23, ptr noundef %flags) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i25)
  %tobool.not.i26 = icmp eq i32 %call.i25, 0
  br i1 %tobool.not.i26, label %if.then.i34, label %if.then12.if.end14_crit_edge

if.then12.if.end14_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
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
  %call4.i32 = tail call i32 @_test_and_set_bit(i32 noundef 12, ptr noundef %flags3.i31) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i32)
  %tobool5.not.i33 = icmp eq i32 %call4.i32, 0
  br i1 %tobool5.not.i33, label %if.then.i34.if.end14.sink.split_crit_edge, label %if.then.i34.if.end14_crit_edge

if.then.i34.if.end14_crit_edge:                   ; preds = %if.then.i34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then.i34.if.end14.sink.split_crit_edge:        ; preds = %if.then.i34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.sink.split

if.end14.sink.split:                              ; preds = %if.then.i34.if.end14.sink.split_crit_edge, %if.then.i.if.end14.sink.split_crit_edge
  %.sink = phi ptr [ %10, %if.then.i.if.end14.sink.split_crit_edge ], [ %14, %if.then.i34.if.end14.sink.split_crit_edge ]
  %q_wait.i35 = getelementptr inbounds %struct.drbd_connection, ptr %.sink, i32 0, i32 45, i32 2
  tail call void @__wake_up(ptr noundef %q_wait.i35, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %if.end14

if.end14:                                         ; preds = %if.end14.sink.split, %if.then.i34.if.end14_crit_edge, %if.then12.if.end14_crit_edge, %if.then10.if.end14_crit_edge, %if.then.i.if.end14_crit_edge, %if.then7.if.end14_crit_edge, %if.then5.if.end14_crit_edge
  %misc_wait = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 28
  tail call void @__wake_up(ptr noundef %misc_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %do.end3.if.end15_crit_edge, %do.end3.thread
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @start_new_tl_epoch(ptr noundef %connection) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %current_tle_writes = getelementptr inbounds %struct.drbd_connection, ptr %connection, i32 0, i32 35
  %0 = ptrtoint ptr %current_tle_writes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %current_tle_writes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %current_tle_writes to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %current_tle_writes, align 4
  %current_tle_nr = getelementptr inbounds %struct.drbd_connection, ptr %connection, i32 0, i32 34
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %current_tle_nr, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %current_tle_nr, i32 1, i32 3, i32 1) #9
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %current_tle_nr, ptr %current_tle_nr, i32 1, ptr elementtype(i32) %current_tle_nr) #9, !srcloc !221
  %q_wait.i = getelementptr inbounds %struct.drbd_connection, ptr %connection, i32 0, i32 45, i32 2
  tail call void @__wake_up(ptr noundef %q_wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @complete_master_bio(ptr noundef %device, ptr nocapture noundef readonly %m) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %error = getelementptr inbounds %struct.bio_and_error, ptr %m, i32 0, i32 1
  %0 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %error, align 4
  %call = tail call zeroext i8 @errno_to_blk_status(i32 noundef %1) #9
  %2 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m, align 4
  %bi_status = getelementptr inbounds %struct.bio, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %bi_status to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %call, ptr %bi_status, align 2
  %5 = load ptr, ptr %m, align 4
  tail call void @bio_endio(ptr noundef %5) #9
  tail call fastcc void @dec_ap_bio(ptr noundef %device)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @errno_to_blk_status(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_endio(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dec_ap_bio(ptr noundef %device) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call fastcc i32 @drbd_get_max_buffers(ptr noundef %device)
  %ap_bio_cnt = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 36
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ap_bio_cnt, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !222
  tail call void @llvm.prefetch.p0(ptr %ap_bio_cnt, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ap_bio_cnt, ptr %ap_bio_cnt, i32 1, ptr elementtype(i32) %ap_bio_cnt) #9, !srcloc !223
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !224
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %asmresult.i.i.i.i)
  %cmp = icmp sgt i32 %asmresult.i.i.i.i, -1
  br i1 %cmp, label %do.end4, label %do.end4.thread

do.end4.thread:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %vdisk = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %1 = ptrtoint ptr %vdisk to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vdisk, align 4
  %part0 = getelementptr inbounds %struct.gendisk, ptr %2, i32 0, i32 7
  %3 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %part0, align 4
  %bd_device = getelementptr inbounds %struct.block_device, ptr %4, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %bd_device, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.59, i32 noundef 2281) #12
  br label %if.end14

do.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp5 = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp5, label %land.lhs.true, label %do.end4.if.end14_crit_edge

do.end4.if.end14_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

land.lhs.true:                                    ; preds = %do.end4
  %flags = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 14
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flags, align 4
  %7 = and i32 %6, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %land.lhs.true.if.end14_crit_edge, label %if.then7

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then7:                                         ; preds = %land.lhs.true
  %call9 = tail call i32 @_test_and_set_bit(i32 noundef 9, ptr noundef %flags) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then11, label %if.then7.if.end14_crit_edge

if.then7.if.end14_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then11:                                        ; preds = %if.then7
  %peer_devices.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 1
  %8 = ptrtoint ptr %peer_devices.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %peer_devices.i, align 4
  %cmp.not.i = icmp eq ptr %9, %peer_devices.i
  %spec.select.i = select i1 %cmp.not.i, ptr null, ptr %9
  %connection = getelementptr inbounds %struct.drbd_peer_device, ptr %spec.select.i, i32 0, i32 2
  %10 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %connection, align 4
  %sender_work = getelementptr inbounds %struct.drbd_connection, ptr %11, i32 0, i32 45
  %bm_io_work = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 91
  %q_lock.i = getelementptr inbounds %struct.drbd_connection, ptr %11, i32 0, i32 45, i32 1
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %q_lock.i) #9
  %prev.i.i = getelementptr inbounds %struct.drbd_connection, ptr %11, i32 0, i32 45, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %bm_io_work, ptr noundef %13, ptr noundef %sender_work) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then11.drbd_queue_work.exit_crit_edge

if.then11.drbd_queue_work.exit_crit_edge:         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  br label %drbd_queue_work.exit

if.end.i.i.i:                                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %bm_io_work, ptr %prev.i.i, align 4
  %15 = ptrtoint ptr %bm_io_work to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %sender_work, ptr %bm_io_work, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 91, i32 0, i32 0, i32 1
  %16 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev3.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %bm_io_work, ptr %13, align 4
  br label %drbd_queue_work.exit

drbd_queue_work.exit:                             ; preds = %if.end.i.i.i, %if.then11.drbd_queue_work.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %q_lock.i, i32 noundef %call2.i) #9
  %q_wait.i = getelementptr inbounds %struct.drbd_connection, ptr %11, i32 0, i32 45, i32 2
  tail call void @__wake_up(ptr noundef %q_wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %if.end14

if.end14:                                         ; preds = %drbd_queue_work.exit, %if.then7.if.end14_crit_edge, %land.lhs.true.if.end14_crit_edge, %do.end4.if.end14_crit_edge, %do.end4.thread
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult.i.i.i.i, i32 %call)
  %cmp15 = icmp slt i32 %asmresult.i.i.i.i, %call
  br i1 %cmp15, label %if.then16, label %if.end14.if.end17_crit_edge

if.end14.if.end17_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %misc_wait = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 28
  tail call void @__wake_up(ptr noundef %misc_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end14.if.end17_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__req_mod(ptr noundef %req, i32 noundef %what, ptr noundef %m) local_unnamed_addr #0 align 64 {
entry:
  %b.i523 = alloca [32 x i8], align 1
  %b.i = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %peer_devices.i = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %peer_devices.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %peer_devices.i, align 4
  %cmp.not.i = icmp eq ptr %3, %peer_devices.i
  %tobool.not575 = icmp eq ptr %3, null
  %tobool.not = or i1 %cmp.not.i, %tobool.not575
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %connection2 = getelementptr inbounds %struct.drbd_peer_device, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %connection2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %connection2, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %5, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  %tobool3.not = icmp eq ptr %m, null
  br i1 %tobool3.not, label %cond.end.if.end_crit_edge, label %if.then

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %m, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.if.end_crit_edge
  %7 = zext i32 %what to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.110)
  switch i32 %what, label %do.end [
    i32 1, label %do.body4
    i32 2, label %do.body39
    i32 21, label %sw.bb53
    i32 27, label %sw.bb63
    i32 24, label %sw.bb64
    i32 22, label %sw.bb65
    i32 23, label %if.end.sw.bb70_crit_edge
    i32 25, label %if.end.sw.bb71_crit_edge
    i32 26, label %if.end.sw.bb71_crit_edge576
    i32 4, label %do.body73
    i32 3, label %do.body118
    i32 5, label %sw.bb173
    i32 12, label %if.end.sw.bb178_crit_edge
    i32 7, label %if.end.sw.bb178_crit_edge577
    i32 8, label %if.end.sw.bb178_crit_edge578
    i32 9, label %sw.bb179
    i32 10, label %sw.bb184
    i32 11, label %sw.bb185
    i32 16, label %do.body187
    i32 15, label %sw.bb215
    i32 14, label %if.end.ack_common_crit_edge
    i32 13, label %do.body220
    i32 17, label %do.body235
    i32 18, label %sw.bb269
    i32 29, label %sw.bb270
    i32 30, label %sw.bb276
    i32 28, label %sw.bb296
    i32 19, label %if.end.sw.bb322_crit_edge
    i32 20, label %do.body344
    i32 6, label %sw.bb358
  ]

if.end.sw.bb322_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb322

if.end.ack_common_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %ack_common

if.end.sw.bb178_crit_edge578:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb178

if.end.sw.bb178_crit_edge577:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb178

if.end.sw.bb178_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb178

if.end.sw.bb71_crit_edge576:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb71

if.end.sw.bb71_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb71

if.end.sw.bb70_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb70

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %vdisk = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 18
  %8 = ptrtoint ptr %vdisk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vdisk, align 4
  %part0 = getelementptr inbounds %struct.gendisk, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %part0, align 4
  %bd_device = getelementptr inbounds %struct.block_device, ptr %11, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %bd_device, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.2, i32 noundef 564) #12
  br label %sw.epilog

do.body4:                                         ; preds = %if.end
  %rq_state = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 17
  %12 = ptrtoint ptr %rq_state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rq_state, align 8
  %and = and i32 %13, 1008
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %do.body4.do.end15_crit_edge, label %do.end9

do.body4.do.end15_crit_edge:                      ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end15

do.end9:                                          ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #11
  %vdisk10 = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 18
  %14 = ptrtoint ptr %vdisk10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vdisk10, align 4
  %part011 = getelementptr inbounds %struct.gendisk, ptr %15, i32 0, i32 7
  %16 = ptrtoint ptr %part011 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %part011, align 4
  %bd_device12 = getelementptr inbounds %struct.block_device, ptr %17, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %bd_device12, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.2, i32 noundef 576) #12
  br label %do.end15

do.end15:                                         ; preds = %do.end9, %do.body4.do.end15_crit_edge
  %18 = tail call i32 @llvm.read_register.i32(metadata !211) #9
  %and.i.i.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %21, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !225
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %do.end15.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

do.end15.rcu_read_lock.exit_crit_edge:            ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %do.end15
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.62, i32 noundef 696, ptr noundef nonnull @.str.63) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %do.end15.rcu_read_lock.exit_crit_edge
  %net_conf = getelementptr inbounds %struct.drbd_connection, ptr %cond, i32 0, i32 11
  %22 = ptrtoint ptr %net_conf to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %net_conf, align 4
  %call20 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end29_crit_edge

rcu_read_lock.exit.do.end29_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end29

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call22 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %land.lhs.true.do.end29_crit_edge, label %land.lhs.true24

land.lhs.true.do.end29_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end29

land.lhs.true24:                                  ; preds = %land.lhs.true
  %.b500 = load i1, ptr @__req_mod.__warned, align 1
  br i1 %.b500, label %land.lhs.true24.do.end29_crit_edge, label %if.then26

land.lhs.true24.do.end29_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end29

if.then26:                                        ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__req_mod.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 578, ptr noundef nonnull @.str.17) #9
  br label %do.end29

do.end29:                                         ; preds = %if.then26, %land.lhs.true24.do.end29_crit_edge, %land.lhs.true.do.end29_crit_edge, %rcu_read_lock.exit.do.end29_crit_edge
  %wire_protocol = getelementptr inbounds %struct.net_conf, ptr %23, i32 0, i32 10
  %24 = ptrtoint ptr %wire_protocol to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %wire_protocol, align 4
  %call.i512 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i512, label %do.end29.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i515

do.end29.rcu_read_unlock.exit_crit_edge:          ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i515:                               ; preds = %do.end29
  %call1.i513 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i513)
  %tobool.not.i514 = icmp eq i32 %call1.i513, 0
  br i1 %tobool.not.i514, label %land.lhs.true.i515.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i517

land.lhs.true.i515.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i515
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i517:                              ; preds = %land.lhs.true.i515
  %.b4.i516 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i516, label %land.lhs.true2.i517.rcu_read_unlock.exit_crit_edge, label %if.then.i518

land.lhs.true2.i517.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i517
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i518:                                     ; preds = %land.lhs.true2.i517
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.62, i32 noundef 724, ptr noundef nonnull @.str.64) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i518, %land.lhs.true2.i517.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i515.rcu_read_unlock.exit_crit_edge, %do.end29.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !226
  %26 = tail call i32 @llvm.read_register.i32(metadata !211) #9
  %and.i.i.i.i.i519 = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i.i519 to ptr
  %preempt_count.i.i.i.i520 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i.i520 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i.i520, align 4
  %sub.i.i.i = add i32 %29, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i520, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %25)
  %cmp = icmp eq i32 %25, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %cmp33 = icmp eq i32 %25, 2
  %cond34 = select i1 %cmp33, i32 524288, i32 0
  %cond36 = select i1 %cmp, i32 1048576, i32 %cond34
  %30 = ptrtoint ptr %rq_state to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rq_state, align 8
  %or = or i32 %31, %cond36
  store i32 %or, ptr %rq_state, align 8
  tail call fastcc void @mod_rq_state(ptr noundef %req, ptr noundef %m, i32 noundef 0, i32 noundef 16)
  br label %sw.epilog

do.body39:                                        ; preds = %if.end
  %rq_state40 = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 17
  %32 = ptrtoint ptr %rq_state40 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rq_state40, align 8
  %and41 = and i32 %33, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %do.body39.do.end52_crit_edge, label %do.end46

do.body39.do.end52_crit_edge:                     ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end52

do.end46:                                         ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #11
  %vdisk47 = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 18
  %34 = ptrtoint ptr %vdisk47 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %vdisk47, align 4
  %part048 = getelementptr inbounds %struct.gendisk, ptr %35, i32 0, i32 7
  %36 = ptrtoint ptr %part048 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %part048, align 4
  %bd_device49 = getelementptr inbounds %struct.block_device, ptr %37, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %bd_device49, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.2, i32 noundef 589) #12
  br label %do.end52

do.end52:                                         ; preds = %do.end46, %do.body39.do.end52_crit_edge
  tail call fastcc void @mod_rq_state(ptr noundef %req, ptr noundef %m, i32 noundef 0, i32 noundef 1)
  br label %sw.epilog

sw.bb53:                                          ; preds = %if.end
  %rq_state54 = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 17
  %38 = ptrtoint ptr %rq_state54 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rq_state54, align 8
  %and55 = and i32 %39, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  %size59 = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 3, i32 2
  %40 = ptrtoint ptr %size59 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %size59, align 8
  %shr60 = lshr i32 %41, 9
  br i1 %tobool56.not, label %if.else, label %if.then57

if.then57:                                        ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #11
  %writ_cnt = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 33
  %42 = ptrtoint ptr %writ_cnt to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %writ_cnt, align 8
  %add = add i32 %43, %shr60
  store i32 %add, ptr %writ_cnt, align 8
  br label %if.end62

if.else:                                          ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #11
  %read_cnt = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 32
  %44 = ptrtoint ptr %read_cnt to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %read_cnt, align 4
  %add61 = add i32 %45, %shr60
  store i32 %add61, ptr %read_cnt, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.else, %if.then57
  tail call fastcc void @mod_rq_state(ptr noundef %req, ptr noundef %m, i32 noundef 1, i32 noundef 6)
  br label %sw.epilog

sw.bb63:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @mod_rq_state(ptr noundef %req, ptr noundef %m, i32 noundef 0, i32 noundef 8)
  br label %sw.epilog

sw.bb64:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %b.i) #9
  %46 = call ptr @memset(ptr %b.i, i32 255, i32 32)
  %call.i521 = tail call i32 @___ratelimit(ptr noundef nonnull @drbd_ratelimit_state, ptr noundef nonnull @__func__.drbd_report_io_error) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i521)
  %tobool.not.i522 = icmp eq i32 %call.i521, 0
  br i1 %tobool.not.i522, label %sw.bb64.drbd_report_io_error.exit_crit_edge, label %do.end.i

sw.bb64.drbd_report_io_error.exit_crit_edge:      ; preds = %sw.bb64
  call void @__sanitizer_cov_trace_pc() #11
  br label %drbd_report_io_error.exit

do.end.i:                                         ; preds = %sw.bb64
  call void @__sanitizer_cov_trace_pc() #11
  %vdisk.i = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 18
  %47 = ptrtoint ptr %vdisk.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %vdisk.i, align 4
  %part0.i = getelementptr inbounds %struct.gendisk, ptr %48, i32 0, i32 7
  %49 = ptrtoint ptr %part0.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %part0.i, align 4
  %bd_device.i = getelementptr inbounds %struct.block_device, ptr %50, i32 0, i32 10
  %rq_state.i = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 17
  %51 = ptrtoint ptr %rq_state.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %rq_state.i, align 8
  %and.i = and i32 %52, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool1.not.i, ptr @.str.78, ptr @.str.77
  %sector.i = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 3, i32 1
  %53 = ptrtoint ptr %sector.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %sector.i, align 8
  %size.i = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 3, i32 2
  %55 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %size.i, align 8
  %shr.i = lshr i32 %56, 9
  %ldev.i = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 15
  %57 = ptrtoint ptr %ldev.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ldev.i, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 8
  %call3.i = call ptr @bdevname(ptr noundef %60, ptr noundef nonnull %b.i) #9
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.10, ptr noundef %bd_device.i, ptr noundef nonnull @.str.76, ptr noundef nonnull %cond.i, i64 noundef %54, i32 noundef %shr.i, ptr noundef %call3.i) #12
  br label %drbd_report_io_error.exit

drbd_report_io_error.exit:                        ; preds = %do.end.i, %sw.bb64.drbd_report_io_error.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %b.i) #9
  call fastcc void @__drbd_chk_io_error_(ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.13)
  call fastcc void @mod_rq_state(ptr noundef %req, ptr noundef %m, i32 noundef 1, i32 noundef 2)
  br label %sw.epilog

sw.bb65:                                          ; preds = %if.end
  %sector = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 3, i32 1
  %61 = ptrtoint ptr %sector to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %sector, align 8
  %size68 = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 3, i32 2
  %63 = ptrtoint ptr %size68 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %size68, align 8
  %call69 = tail call i32 @__drbd_change_sync(ptr noundef %1, i64 noundef %62, i32 noundef %64, i32 noundef 1) #9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %b.i523) #9
  %65 = call ptr @memset(ptr %b.i523, i32 255, i32 32)
  %call.i524 = tail call i32 @___ratelimit(ptr noundef nonnull @drbd_ratelimit_state, ptr noundef nonnull @__func__.drbd_report_io_error) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i524)
  %tobool.not.i525 = icmp eq i32 %call.i524, 0
  br i1 %tobool.not.i525, label %sw.bb65.drbd_report_io_error.exit539_crit_edge, label %do.end.i538

sw.bb65.drbd_report_io_error.exit539_crit_edge:   ; preds = %sw.bb65
  call void @__sanitizer_cov_trace_pc() #11
  br label %drbd_report_io_error.exit539

do.end.i538:                                      ; preds = %sw.bb65
  call void @__sanitizer_cov_trace_pc() #11
  %vdisk.i526 = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 18
  %66 = ptrtoint ptr %vdisk.i526 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %vdisk.i526, align 4
  %part0.i527 = getelementptr inbounds %struct.gendisk, ptr %67, i32 0, i32 7
  %68 = ptrtoint ptr %part0.i527 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %part0.i527, align 4
  %bd_device.i528 = getelementptr inbounds %struct.block_device, ptr %69, i32 0, i32 10
  %rq_state.i529 = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 17
  %70 = ptrtoint ptr %rq_state.i529 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %rq_state.i529, align 8
  %and.i530 = and i32 %71, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i530)
  %tobool1.not.i531 = icmp eq i32 %and.i530, 0
  %cond.i532 = select i1 %tobool1.not.i531, ptr @.str.78, ptr @.str.77
  %72 = ptrtoint ptr %sector to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %sector, align 8
  %74 = ptrtoint ptr %size68 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %size68, align 8
  %shr.i535 = lshr i32 %75, 9
  %ldev.i536 = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 15
  %76 = ptrtoint ptr %ldev.i536 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ldev.i536, align 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %77, align 8
  %call3.i537 = call ptr @bdevname(ptr noundef %79, ptr noundef nonnull %b.i523) #9
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.10, ptr noundef %bd_device.i528, ptr noundef nonnull @.str.76, ptr noundef nonnull %cond.i532, i64 noundef %73, i32 noundef %shr.i535, ptr noundef %call3.i537) #12
  br label %drbd_report_io_error.exit539

drbd_report_io_error.exit539:                     ; preds = %do.end.i538, %sw.bb65.drbd_report_io_error.exit539_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %b.i523) #9
  call fastcc void @__drbd_chk_io_error_(ptr noundef %1, i32 noundef 0, ptr noundef nonnull @.str.13)
  br label %sw.bb70

sw.bb70:                                          ; preds = %drbd_report_io_error.exit539, %if.end.sw.bb70_crit_edge
  call fastcc void @mod_rq_state(ptr noundef %req, ptr noundef %m, i32 noundef 1, i32 noundef 2)
  br label %sw.epilog

sw.bb71:                                          ; preds = %if.end.sw.bb71_crit_edge, %if.end.sw.bb71_crit_edge576
  tail call fastcc void @mod_rq_state(ptr noundef %req, ptr noundef %m, i32 noundef 1, i32 noundef 2)
  br label %sw.epilog

do.body73:                                        ; preds = %if.end
  %i74 = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 3
  %80 = ptrtoint ptr %i74 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %i74, align 8
  %82 = ptrtoint ptr %i74 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %81, i32 %82)
  %cmp.i = icmp eq i32 %81, %82
  br i1 %cmp.i, label %do.body73.do.end85_crit_edge, label %do.end79

do.body73.do.end85_crit_edge:                     ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end85

do.end79:                                         ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #11
  %vdisk80 = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 18
  %83 = ptrtoint ptr %vdisk80 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %vdisk80, align 4
  %part081 = getelementptr inbounds %struct.gendisk, ptr %84, i32 0, i32 7
  %85 = ptrtoint ptr %part081 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %part081, align 4
  %bd_device82 = getelementptr inbounds %struct.block_device, ptr %86, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %bd_device82, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.2, i32 noundef 641) #12
  br label %do.end85

do.end85:                                         ; preds = %do.end79, %do.body73.do.end85_crit_edge
  %read_requests = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 43
  %call87 = tail call zeroext i1 @drbd_insert_interval(ptr noundef %read_requests, ptr noundef %i74) #9
  %flags = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 14
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags) #9
  %rq_state89 = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 17
  %87 = ptrtoint ptr %rq_state89 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %rq_state89, align 8
  %and90 = and i32 %88, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %tobool91.not = icmp eq i32 %and90, 0
  br i1 %tobool91.not, label %do.end95, label %do.end85.do.body102_crit_edge

do.end85.do.body102_crit_edge:                    ; preds = %do.end85
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body102

do.end95:                                         ; preds = %do.end85
  call void @__sanitizer_cov_trace_pc() #11
  %vdisk96 = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 18
  %89 = ptrtoint ptr %vdisk96 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %vdisk96, align 4
  %part097 = getelementptr inbounds %struct.gendisk, ptr %90, i32 0, i32 7
  %91 = ptrtoint ptr %part097 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %part097, align 4
  %bd_device98 = getelementptr inbounds %struct.block_device, ptr %92, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %bd_device98, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.2, i32 noundef 646) #12
  br label %do.body102

do.body102:                                       ; preds = %do.end95, %do.end85.do.body102_crit_edge
  %93 = ptrtoint ptr %rq_state89 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %rq_state89, align 8
  %and104 = and i32 %94, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104)
  %cmp105 = icmp eq i32 %and104, 0
  br i1 %cmp105, label %do.body102.do.end115_crit_edge, label %do.end109

do.body102.do.end115_crit_edge:                   ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end115

do.end109:                                        ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #11
  %vdisk110 = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 18
  %95 = ptrtoint ptr %vdisk110 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %vdisk110, align 4
  %part0111 = getelementptr inbounds %struct.gendisk, ptr %96, i32 0, i32 7
  %97 = ptrtoint ptr %part0111 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %part0111, align 4
  %bd_device112 = getelementptr inbounds %struct.block_device, ptr %98, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %bd_device112, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.2, i32 noundef 647) #12
  br label %do.end115

do.end115:                                        ; preds = %do.end109, %do.body102.do.end115_crit_edge
  tail call fastcc void @mod_rq_state(ptr noundef %req, ptr noundef %m, i32 noundef 0, i32 noundef 32)
  %cb = getelementptr inbounds %struct.drbd_work, ptr %req, i32 0, i32 1
  %99 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr @w_send_read_req, ptr %cb, align 8
  %sender_work = getelementptr inbounds %struct.drbd_connection, ptr %cond, i32 0, i32 45
  %q_lock.i = getelementptr inbounds %struct.drbd_connection, ptr %cond, i32 0, i32 45, i32 1
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %q_lock.i) #9
  %prev.i.i = getelementptr inbounds %struct.drbd_connection, ptr %cond, i32 0, i32 45, i32 0, i32 1
  %100 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %req, ptr noundef %101, ptr noundef %sender_work) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end115.drbd_queue_work.exit_crit_edge

do.end115.drbd_queue_work.exit_crit_edge:         ; preds = %do.end115
  call void @__sanitizer_cov_trace_pc() #11
  br label %drbd_queue_work.exit

if.end.i.i.i:                                     ; preds = %do.end115
  call void @__sanitizer_cov_trace_pc() #11
  %102 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %req, ptr %prev.i.i, align 4
  %103 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %sender_work, ptr %req, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %req, i32 0, i32 1
  %104 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %101, ptr %prev3.i.i.i, align 4
  %105 = ptrtoint ptr %101 to i32
  call void @__asan_store4_noabort(i32 %105)
  store volatile ptr %req, ptr %101, align 4
  br label %drbd_queue_work.exit

drbd_queue_work.exit:                             ; preds = %if.end.i.i.i, %do.end115.drbd_queue_work.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %q_lock.i, i32 noundef %call2.i) #9
  %q_wait.i = getelementptr inbounds %struct.drbd_connection, ptr %cond, i32 0, i32 45, i32 2
  tail call void @__wake_up(ptr noundef %q_wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %sw.epilog

do.body118:                                       ; preds = %if.end
  %i119 = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 3
  %106 = ptrtoint ptr %i119 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %i119, align 8
  %108 = ptrtoint ptr %i119 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %107, i32 %108)
  %cmp.i540 = icmp eq i32 %107, %108
  br i1 %cmp.i540, label %do.body118.do.end130_crit_edge, label %do.end124

do.body118.do.end130_crit_edge:                   ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end130

do.end124:                                        ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #11
  %vdisk125 = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 18
  %109 = ptrtoint ptr %vdisk125 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %vdisk125, align 4
  %part0126 = getelementptr inbounds %struct.gendisk, ptr %110, i32 0, i32 7
  %111 = ptrtoint ptr %part0126 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %part0126, align 4
  %bd_device127 = getelementptr inbounds %struct.block_device, ptr %112, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %bd_device127, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.2, i32 noundef 660) #12
  br label %do.end130

do.end130:                                        ; preds = %do.end124, %do.body118.do.end130_crit_edge
  %write_requests = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 44
  %call132 = tail call zeroext i1 @drbd_insert_interval(ptr noundef %write_requests, ptr noundef %i119) #9
  %flags133 = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 14
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags133) #9
  %rq_state135 = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 17
  %113 = ptrtoint ptr %rq_state135 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %rq_state135, align 8
  %and136 = and i32 %114, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and136)
  %tobool137.not = icmp eq i32 %and136, 0
  br i1 %tobool137.not, label %do.end141, label %do.end130.do.end147_crit_edge

do.end130.do.end147_crit_edge:                    ; preds = %do.end130
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end147

do.end141:                                        ; preds = %do.end130
  call void @__sanitizer_cov_trace_pc() #11
  %vdisk142 = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 18
  %115 = ptrtoint ptr %vdisk142 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %vdisk142, align 4
  %part0143 = getelementptr inbounds %struct.gendisk, ptr %116, i32 0, i32 7
  %117 = ptrtoint ptr %part0143 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %part0143, align 4
  %bd_device144 = getelementptr inbounds %struct.block_device, ptr %118, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %bd_device144, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.2, i32 noundef 683) #12
  br label %do.end147

do.end147:                                        ; preds = %do.end141, %do.end130.do.end147_crit_edge
  tail call fastcc void @mod_rq_state(ptr noundef %req, ptr noundef %m, i32 noundef 0, i32 noundef 2097184)
  %cb149 = getelementptr inbounds %struct.drbd_work, ptr %req, i32 0, i32 1
  %119 = ptrtoint ptr %cb149 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr @w_send_dblock, ptr %cb149, align 8
  %sender_work150 = getelementptr inbounds %struct.drbd_connection, ptr %cond, i32 0, i32 45
  %q_lock.i541 = getelementptr inbounds %struct.drbd_connection, ptr %cond, i32 0, i32 45, i32 1
  %call2.i542 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %q_lock.i541) #9
  %prev.i.i543 = getelementptr inbounds %struct.drbd_connection, ptr %cond, i32 0, i32 45, i32 0, i32 1
  %120 = ptrtoint ptr %prev.i.i543 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %prev.i.i543, align 4
  %call.i.i.i544 = tail call zeroext i1 @__list_add_valid(ptr noundef %req, ptr noundef %121, ptr noundef %sender_work150) #9
  br i1 %call.i.i.i544, label %if.end.i.i.i546, label %do.end147.drbd_queue_work.exit548_crit_edge

do.end147.drbd_queue_work.exit548_crit_edge:      ; preds = %do.end147
  call void @__sanitizer_cov_trace_pc() #11
  br label %drbd_queue_work.exit548

if.end.i.i.i546:                                  ; preds = %do.end147
  call void @__sanitizer_cov_trace_pc() #11
  %122 = ptrtoint ptr %prev.i.i543 to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %req, ptr %prev.i.i543, align 4
  %123 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %sender_work150, ptr %req, align 4
  %prev3.i.i.i545 = getelementptr inbounds %struct.list_head, ptr %req, i32 0, i32 1
  %124 = ptrtoint ptr %prev3.i.i.i545 to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %121, ptr %prev3.i.i.i545, align 4
  %125 = ptrtoint ptr %121 to i32
  call void @__asan_store4_noabort(i32 %125)
  store volatile ptr %req, ptr %121, align 4
  br label %drbd_queue_work.exit548

drbd_queue_work.exit548:                          ; preds = %if.end.i.i.i546, %do.end147.drbd_queue_work.exit548_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %q_lock.i541, i32 noundef %call2.i542) #9
  %q_wait.i547 = getelementptr inbounds %struct.drbd_connection, ptr %cond, i32 0, i32 45, i32 2
  tail call void @__wake_up(ptr noundef %q_wait.i547, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  %126 = tail call i32 @llvm.read_register.i32(metadata !211) #9
  %and.i.i.i.i.i501 = and i32 %126, -16384
  %127 = inttoptr i32 %and.i.i.i.i.i501 to ptr
  %preempt_count.i.i.i.i502 = getelementptr inbounds %struct.thread_info, ptr %127, i32 0, i32 1
  %128 = ptrtoint ptr %preempt_count.i.i.i.i502 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load volatile i32, ptr %preempt_count.i.i.i.i502, align 4
  %add.i.i.i503 = add i32 %129, 1
  store volatile i32 %add.i.i.i503, ptr %preempt_count.i.i.i.i502, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !225
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i504 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i504, label %drbd_queue_work.exit548.rcu_read_lock.exit511_crit_edge, label %land.lhs.true.i507

drbd_queue_work.exit548.rcu_read_lock.exit511_crit_edge: ; preds = %drbd_queue_work.exit548
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit511

land.lhs.true.i507:                               ; preds = %drbd_queue_work.exit548
  %call1.i505 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i505)
  %tobool.not.i506 = icmp eq i32 %call1.i505, 0
  br i1 %tobool.not.i506, label %land.lhs.true.i507.rcu_read_lock.exit511_crit_edge, label %land.lhs.true2.i509

land.lhs.true.i507.rcu_read_lock.exit511_crit_edge: ; preds = %land.lhs.true.i507
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit511

land.lhs.true2.i509:                              ; preds = %land.lhs.true.i507
  %.b4.i508 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i508, label %land.lhs.true2.i509.rcu_read_lock.exit511_crit_edge, label %if.then.i510

land.lhs.true2.i509.rcu_read_lock.exit511_crit_edge: ; preds = %land.lhs.true2.i509
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit511

if.then.i510:                                     ; preds = %land.lhs.true2.i509
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.62, i32 noundef 696, ptr noundef nonnull @.str.63) #9
  br label %rcu_read_lock.exit511

rcu_read_lock.exit511:                            ; preds = %if.then.i510, %land.lhs.true2.i509.rcu_read_lock.exit511_crit_edge, %land.lhs.true.i507.rcu_read_lock.exit511_crit_edge, %drbd_queue_work.exit548.rcu_read_lock.exit511_crit_edge
  %net_conf156 = getelementptr inbounds %struct.drbd_connection, ptr %cond, i32 0, i32 11
  %130 = ptrtoint ptr %net_conf156 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load volatile ptr, ptr %net_conf156, align 4
  %call158 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call158)
  %tobool159.not = icmp eq i32 %call158, 0
  br i1 %tobool159.not, label %land.lhs.true160, label %rcu_read_lock.exit511.do.end168_crit_edge

rcu_read_lock.exit511.do.end168_crit_edge:        ; preds = %rcu_read_lock.exit511
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end168

land.lhs.true160:                                 ; preds = %rcu_read_lock.exit511
  %call161 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call161)
  %tobool162.not = icmp eq i32 %call161, 0
  br i1 %tobool162.not, label %land.lhs.true160.do.end168_crit_edge, label %land.lhs.true163

land.lhs.true160.do.end168_crit_edge:             ; preds = %land.lhs.true160
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end168

land.lhs.true163:                                 ; preds = %land.lhs.true160
  %.b498499 = load i1, ptr @__req_mod.__warned.34, align 1
  br i1 %.b498499, label %land.lhs.true163.do.end168_crit_edge, label %if.then165

land.lhs.true163.do.end168_crit_edge:             ; preds = %land.lhs.true163
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end168

if.then165:                                       ; preds = %land.lhs.true163
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__req_mod.__warned.34, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 691, ptr noundef nonnull @.str.17) #9
  br label %do.end168

do.end168:                                        ; preds = %if.then165, %land.lhs.true163.do.end168_crit_edge, %land.lhs.true160.do.end168_crit_edge, %rcu_read_lock.exit511.do.end168_crit_edge
  %max_epoch_size = getelementptr inbounds %struct.net_conf, ptr %131, i32 0, i32 19
  %132 = ptrtoint ptr %max_epoch_size to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %max_epoch_size, align 4
  %call.i549 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i549, label %do.end168.rcu_read_unlock.exit560_crit_edge, label %land.lhs.true.i552

do.end168.rcu_read_unlock.exit560_crit_edge:      ; preds = %do.end168
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit560

land.lhs.true.i552:                               ; preds = %do.end168
  %call1.i550 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i550)
  %tobool.not.i551 = icmp eq i32 %call1.i550, 0
  br i1 %tobool.not.i551, label %land.lhs.true.i552.rcu_read_unlock.exit560_crit_edge, label %land.lhs.true2.i554

land.lhs.true.i552.rcu_read_unlock.exit560_crit_edge: ; preds = %land.lhs.true.i552
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit560

land.lhs.true2.i554:                              ; preds = %land.lhs.true.i552
  %.b4.i553 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i553, label %land.lhs.true2.i554.rcu_read_unlock.exit560_crit_edge, label %if.then.i555

land.lhs.true2.i554.rcu_read_unlock.exit560_crit_edge: ; preds = %land.lhs.true2.i554
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit560

if.then.i555:                                     ; preds = %land.lhs.true2.i554
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.62, i32 noundef 724, ptr noundef nonnull @.str.64) #9
  br label %rcu_read_unlock.exit560

rcu_read_unlock.exit560:                          ; preds = %if.then.i555, %land.lhs.true2.i554.rcu_read_unlock.exit560_crit_edge, %land.lhs.true.i552.rcu_read_unlock.exit560_crit_edge, %do.end168.rcu_read_unlock.exit560_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !226
  %134 = tail call i32 @llvm.read_register.i32(metadata !211) #9
  %and.i.i.i.i.i556 = and i32 %134, -16384
  %135 = inttoptr i32 %and.i.i.i.i.i556 to ptr
  %preempt_count.i.i.i.i557 = getelementptr inbounds %struct.thread_info, ptr %135, i32 0, i32 1
  %136 = ptrtoint ptr %preempt_count.i.i.i.i557 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load volatile i32, ptr %preempt_count.i.i.i.i557, align 4
  %sub.i.i.i558 = add i32 %137, -1
  store volatile i32 %sub.i.i.i558, ptr %preempt_count.i.i.i.i557, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  %current_tle_writes = getelementptr inbounds %struct.drbd_connection, ptr %cond, i32 0, i32 35
  %138 = ptrtoint ptr %current_tle_writes to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %current_tle_writes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %139, i32 %133)
  %cmp170.not = icmp ult i32 %139, %133
  br i1 %cmp170.not, label %rcu_read_unlock.exit560.sw.epilog_crit_edge, label %if.then171

rcu_read_unlock.exit560.sw.epilog_crit_edge:      ; preds = %rcu_read_unlock.exit560
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then171:                                       ; preds = %rcu_read_unlock.exit560
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @start_new_tl_epoch(ptr noundef %cond)
  br label %sw.epilog

sw.bb173:                                         ; preds = %if.end
  tail call fastcc void @mod_rq_state(ptr noundef %req, ptr noundef %m, i32 noundef 0, i32 noundef 32)
  %cb175 = getelementptr inbounds %struct.drbd_work, ptr %req, i32 0, i32 1
  %140 = ptrtoint ptr %cb175 to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr @w_send_out_of_sync, ptr %cb175, align 8
  %sender_work176 = getelementptr inbounds %struct.drbd_connection, ptr %cond, i32 0, i32 45
  %q_lock.i561 = getelementptr inbounds %struct.drbd_connection, ptr %cond, i32 0, i32 45, i32 1
  %call2.i562 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %q_lock.i561) #9
  %prev.i.i563 = getelementptr inbounds %struct.drbd_connection, ptr %cond, i32 0, i32 45, i32 0, i32 1
  %141 = ptrtoint ptr %prev.i.i563 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %prev.i.i563, align 4
  %call.i.i.i564 = tail call zeroext i1 @__list_add_valid(ptr noundef %req, ptr noundef %142, ptr noundef %sender_work176) #9
  br i1 %call.i.i.i564, label %if.end.i.i.i566, label %sw.bb173.drbd_queue_work.exit568_crit_edge

sw.bb173.drbd_queue_work.exit568_crit_edge:       ; preds = %sw.bb173
  call void @__sanitizer_cov_trace_pc() #11
  br label %drbd_queue_work.exit568

if.end.i.i.i566:                                  ; preds = %sw.bb173
  call void @__sanitizer_cov_trace_pc() #11
  %143 = ptrtoint ptr %prev.i.i563 to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %req, ptr %prev.i.i563, align 4
  %144 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %sender_work176, ptr %req, align 4
  %prev3.i.i.i565 = getelementptr inbounds %struct.list_head, ptr %req, i32 0, i32 1
  %145 = ptrtoint ptr %prev3.i.i.i565 to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %142, ptr %prev3.i.i.i565, align 4
  %146 = ptrtoint ptr %142 to i32
  call void @__asan_store4_noabort(i32 %146)
  store volatile ptr %req, ptr %142, align 4
  br label %drbd_queue_work.exit568

drbd_queue_work.exit568:                          ; preds = %if.end.i.i.i566, %sw.bb173.drbd_queue_work.exit568_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %q_lock.i561, i32 noundef %call2.i562) #9
  %q_wait.i567 = getelementptr inbounds %struct.drbd_connection, ptr %cond, i32 0, i32 45, i32 2
  tail call void @__wake_up(ptr noundef %q_wait.i567, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %sw.epilog

sw.bb178:                                         ; preds = %if.end.sw.bb178_crit_edge, %if.end.sw.bb178_crit_edge577, %if.end.sw.bb178_crit_edge578
  tail call fastcc void @mod_rq_state(ptr noundef %req, ptr noundef %m, i32 noundef 32, i32 noundef 0)
  br label %sw.epilog

sw.bb179:                                         ; preds = %if.end
  %rq_state.i569 = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 17
  %147 = ptrtoint ptr %rq_state.i569 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %rq_state.i569, align 8
  %and.i570 = and i32 %148, 1574928
  call void @__sanitizer_cov_trace_const_cmp4(i32 2064, i32 %and.i570)
  %cmp.i571 = icmp eq i32 %and.i570, 2064
  br i1 %cmp.i571, label %if.then181, label %if.else182

if.then181:                                       ; preds = %sw.bb179
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @mod_rq_state(ptr noundef %req, ptr noundef %m, i32 noundef 48, i32 noundef 320)
  br label %sw.epilog

if.else182:                                       ; preds = %sw.bb179
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @mod_rq_state(ptr noundef %req, ptr noundef %m, i32 noundef 32, i32 noundef 64)
  br label %sw.epilog

sw.bb184:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @mod_rq_state(ptr noundef %req, ptr noundef %m, i32 noundef 32, i32 noundef 128)
  br label %sw.epilog

sw.bb185:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @mod_rq_state(ptr noundef %req, ptr noundef %m, i32 noundef 262416, i32 noundef 128)
  br label %sw.epilog

do.body187:                                       ; preds = %if.end
  %rq_state188 = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 17
  %149 = ptrtoint ptr %rq_state188 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %rq_state188, align 8
  %and189 = and i32 %150, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and189)
  %tobool190.not = icmp eq i32 %and189, 0
  br i1 %tobool190.not, label %do.end194, label %do.body187.do.body201_crit_edge

do.body187.do.body201_crit_edge:                  ; preds = %do.body187
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body201

do.end194:                                        ; preds = %do.body187
  call void @__sanitizer_cov_trace_pc() #11
  %vdisk195 = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 18
  %151 = ptrtoint ptr %vdisk195 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %vdisk195, align 4
  %part0196 = getelementptr inbounds %struct.gendisk, ptr %152, i32 0, i32 7
  %153 = ptrtoint ptr %part0196 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %part0196, align 4
  %bd_device197 = getelementptr inbounds %struct.block_device, ptr %154, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %bd_device197, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.2, i32 noundef 749) #12
  br label %do.body201

do.body201:                                       ; preds = %do.end194, %do.body187.do.body201_crit_edge
  %155 = ptrtoint ptr %rq_state188 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %rq_state188, align 8
  %and203 = and i32 %156, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and203)
  %tobool204.not = icmp eq i32 %and203, 0
  br i1 %tobool204.not, label %do.end208, label %do.body201.do.end214_crit_edge

do.body201.do.end214_crit_edge:                   ; preds = %do.body201
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end214

do.end208:                                        ; preds = %do.body201
  call void @__sanitizer_cov_trace_pc() #11
  %vdisk209 = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 18
  %157 = ptrtoint ptr %vdisk209 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %vdisk209, align 4
  %part0210 = getelementptr inbounds %struct.gendisk, ptr %158, i32 0, i32 7
  %159 = ptrtoint ptr %part0210 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %part0210, align 4
  %bd_device211 = getelementptr inbounds %struct.block_device, ptr %160, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %bd_device211, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.2, i32 noundef 750) #12
  br label %do.end214

do.end214:                                        ; preds = %do.end208, %do.body201.do.end214_crit_edge
  tail call fastcc void @mod_rq_state(ptr noundef %req, ptr noundef %m, i32 noundef 16, i32 noundef 384)
  br label %sw.epilog

sw.bb215:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %rq_state216 = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 17
  %161 = ptrtoint ptr %rq_state216 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %rq_state216, align 8
  %or217 = or i32 %162, 512
  store i32 %or217, ptr %rq_state216, align 8
  br label %ack_common

do.body220:                                       ; preds = %if.end
  %rq_state221 = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 17
  %163 = ptrtoint ptr %rq_state221 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %rq_state221, align 8
  %and222 = and i32 %164, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and222)
  %tobool223.not = icmp eq i32 %and222, 0
  br i1 %tobool223.not, label %do.end227, label %do.body220.ack_common_crit_edge

do.body220.ack_common_crit_edge:                  ; preds = %do.body220
  call void @__sanitizer_cov_trace_pc() #11
  br label %ack_common

do.end227:                                        ; preds = %do.body220
  call void @__sanitizer_cov_trace_pc() #11
  %vdisk228 = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 18
  %165 = ptrtoint ptr %vdisk228 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %vdisk228, align 4
  %part0229 = getelementptr inbounds %struct.gendisk, ptr %166, i32 0, i32 7
  %167 = ptrtoint ptr %part0229 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %part0229, align 4
  %bd_device230 = getelementptr inbounds %struct.block_device, ptr %168, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %bd_device230, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.2, i32 noundef 767) #12
  br label %ack_common

ack_common:                                       ; preds = %do.end227, %do.body220.ack_common_crit_edge, %sw.bb215, %if.end.ack_common_crit_edge
  tail call fastcc void @mod_rq_state(ptr noundef %req, ptr noundef %m, i32 noundef 16, i32 noundef 256)
  br label %sw.epilog

do.body235:                                       ; preds = %if.end
  %rq_state236 = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 17
  %169 = ptrtoint ptr %rq_state236 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %rq_state236, align 8
  %and237 = and i32 %170, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and237)
  %tobool238.not = icmp eq i32 %and237, 0
  br i1 %tobool238.not, label %do.end242, label %do.body235.do.body249_crit_edge

do.body235.do.body249_crit_edge:                  ; preds = %do.body235
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body249

do.end242:                                        ; preds = %do.body235
  call void @__sanitizer_cov_trace_pc() #11
  %vdisk243 = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 18
  %171 = ptrtoint ptr %vdisk243 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %vdisk243, align 4
  %part0244 = getelementptr inbounds %struct.gendisk, ptr %172, i32 0, i32 7
  %173 = ptrtoint ptr %part0244 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %part0244, align 4
  %bd_device245 = getelementptr inbounds %struct.block_device, ptr %174, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %bd_device245, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.2, i32 noundef 776) #12
  br label %do.body249

do.body249:                                       ; preds = %do.end242, %do.body235.do.body249_crit_edge
  %175 = ptrtoint ptr %rq_state236 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %rq_state236, align 8
  %and251 = and i32 %176, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and251)
  %tobool252.not = icmp eq i32 %and251, 0
  br i1 %tobool252.not, label %do.end256, label %do.body249.do.end262_crit_edge

do.body249.do.end262_crit_edge:                   ; preds = %do.body249
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end262

do.end256:                                        ; preds = %do.body249
  call void @__sanitizer_cov_trace_pc() #11
  %vdisk257 = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 18
  %177 = ptrtoint ptr %vdisk257 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %vdisk257, align 4
  %part0258 = getelementptr inbounds %struct.gendisk, ptr %178, i32 0, i32 7
  %179 = ptrtoint ptr %part0258 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %part0258, align 4
  %bd_device259 = getelementptr inbounds %struct.block_device, ptr %180, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %bd_device259, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.2, i32 noundef 781) #12
  br label %do.end262

do.end262:                                        ; preds = %do.end256, %do.body249.do.end262_crit_edge
  %181 = ptrtoint ptr %rq_state236 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %rq_state236, align 8
  %or264 = or i32 %182, 131072
  store i32 %or264, ptr %rq_state236, align 8
  %waiting = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 3, i32 4
  %183 = ptrtoint ptr %waiting to i32
  call void @__asan_load1_noabort(i32 %183)
  %bf.load = load i8, ptr %waiting, align 8
  %184 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %184)
  %tobool266.not = icmp eq i8 %184, 0
  br i1 %tobool266.not, label %do.end262.sw.epilog_crit_edge, label %if.then267

do.end262.sw.epilog_crit_edge:                    ; preds = %do.end262
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then267:                                       ; preds = %do.end262
  call void @__sanitizer_cov_trace_pc() #11
  %misc_wait = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 28
  tail call void @__wake_up(ptr noundef %misc_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %sw.epilog

sw.bb269:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @mod_rq_state(ptr noundef %req, ptr noundef %m, i32 noundef 272, i32 noundef 0)
  br label %sw.epilog

sw.bb270:                                         ; preds = %if.end
  %rq_state271 = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 17
  %185 = ptrtoint ptr %rq_state271 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %rq_state271, align 8
  %and272 = and i32 %186, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and272)
  %tobool273.not = icmp eq i32 %and272, 0
  br i1 %tobool273.not, label %sw.bb270.sw.epilog_crit_edge, label %if.end275

sw.bb270.sw.epilog_crit_edge:                     ; preds = %sw.bb270
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end275:                                        ; preds = %sw.bb270
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @mod_rq_state(ptr noundef %req, ptr noundef %m, i32 noundef 262144, i32 noundef 0)
  br label %sw.epilog

sw.bb276:                                         ; preds = %if.end
  %rq_state277 = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 17
  %187 = ptrtoint ptr %rq_state277 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %rq_state277, align 8
  %and278 = and i32 %188, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and278)
  %tobool279.not = icmp eq i32 %and278, 0
  br i1 %tobool279.not, label %sw.bb276.sw.epilog_crit_edge, label %if.end281

sw.bb276.sw.epilog_crit_edge:                     ; preds = %sw.bb276
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end281:                                        ; preds = %sw.bb276
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @mod_rq_state(ptr noundef %req, ptr noundef %m, i32 noundef 262146, i32 noundef 1)
  %master_bio = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 6
  %189 = ptrtoint ptr %master_bio to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %master_bio, align 4
  %bi_opf = getelementptr inbounds %struct.bio, ptr %190, i32 0, i32 2
  %191 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %bi_opf, align 8
  %and.i572 = and i32 %192, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i572)
  %tobool.i.not = icmp eq i32 %and.i572, 0
  %spec.select = select i1 %tobool.i.not, i32 2, i32 1
  %call288 = tail call fastcc i32 @_get_ldev_if_state(ptr noundef %1, i32 noundef 4)
  %cb293 = getelementptr inbounds %struct.drbd_work, ptr %req, i32 0, i32 1
  %193 = ptrtoint ptr %cb293 to i32
  call void @__asan_store4_noabort(i32 %193)
  store ptr @w_restart_disk_io, ptr %cb293, align 8
  %sender_work294 = getelementptr inbounds %struct.drbd_connection, ptr %cond, i32 0, i32 45
  tail call fastcc void @drbd_queue_work(ptr noundef %sender_work294, ptr noundef %req)
  br label %sw.epilog

sw.bb296:                                         ; preds = %if.end
  %rq_state297 = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 17
  %194 = ptrtoint ptr %rq_state297 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %rq_state297, align 8
  %and298 = and i32 %195, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and298)
  %tobool299.not = icmp eq i32 %and298, 0
  br i1 %tobool299.not, label %land.lhs.true300, label %sw.bb296.if.end305_crit_edge

sw.bb296.if.end305_crit_edge:                     ; preds = %sw.bb296
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end305

land.lhs.true300:                                 ; preds = %sw.bb296
  %cb302 = getelementptr inbounds %struct.drbd_work, ptr %req, i32 0, i32 1
  %196 = ptrtoint ptr %cb302 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %cb302, align 8
  %tobool303.not = icmp eq ptr %197, null
  br i1 %tobool303.not, label %if.then304, label %land.lhs.true300.if.end305_crit_edge

land.lhs.true300.if.end305_crit_edge:             ; preds = %land.lhs.true300
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end305

if.then304:                                       ; preds = %land.lhs.true300
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @mod_rq_state(ptr noundef %req, ptr noundef %m, i32 noundef 262144, i32 noundef 0)
  br label %sw.epilog

if.end305:                                        ; preds = %land.lhs.true300.if.end305_crit_edge, %sw.bb296.if.end305_crit_edge
  %and307 = and i32 %195, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and307)
  %tobool308.not = icmp eq i32 %and307, 0
  br i1 %tobool308.not, label %if.then309, label %if.end305.sw.bb322_crit_edge

if.end305.sw.bb322_crit_edge:                     ; preds = %if.end305
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb322

if.then309:                                       ; preds = %if.end305
  tail call fastcc void @mod_rq_state(ptr noundef %req, ptr noundef %m, i32 noundef 262144, i32 noundef 48)
  %cb311 = getelementptr inbounds %struct.drbd_work, ptr %req, i32 0, i32 1
  %198 = ptrtoint ptr %cb311 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %cb311, align 8
  %tobool312.not = icmp eq ptr %199, null
  br i1 %tobool312.not, label %if.then309.sw.epilog_crit_edge, label %if.then313

if.then309.sw.epilog_crit_edge:                   ; preds = %if.then309
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then313:                                       ; preds = %if.then309
  call void @__sanitizer_cov_trace_pc() #11
  %sender_work314 = getelementptr inbounds %struct.drbd_connection, ptr %cond, i32 0, i32 45
  tail call fastcc void @drbd_queue_work(ptr noundef %sender_work314, ptr noundef %req)
  %200 = ptrtoint ptr %rq_state297 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %rq_state297, align 8
  %and317 = and i32 %201, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and317)
  %tobool318.not = icmp eq i32 %and317, 0
  %cond319 = select i1 %tobool318.not, i32 2, i32 1
  br label %sw.epilog

sw.bb322:                                         ; preds = %if.end305.sw.bb322_crit_edge, %if.end.sw.bb322_crit_edge
  %rq_state323 = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 17
  %202 = ptrtoint ptr %rq_state323 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %rq_state323, align 8
  %and324 = and i32 %203, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and324)
  %tobool325.not = icmp eq i32 %and324, 0
  br i1 %tobool325.not, label %sw.bb322.sw.epilog_crit_edge, label %if.end327

sw.bb322.sw.epilog_crit_edge:                     ; preds = %sw.bb322
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end327:                                        ; preds = %sw.bb322
  %and329 = and i32 %203, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and329)
  %tobool330.not = icmp eq i32 %and329, 0
  br i1 %tobool330.not, label %if.end327.if.end338_crit_edge, label %do.end334

if.end327.if.end338_crit_edge:                    ; preds = %if.end327
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end338

do.end334:                                        ; preds = %if.end327
  call void @__sanitizer_cov_trace_pc() #11
  %vdisk335 = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 18
  %204 = ptrtoint ptr %vdisk335 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %vdisk335, align 4
  %part0336 = getelementptr inbounds %struct.gendisk, ptr %205, i32 0, i32 7
  %206 = ptrtoint ptr %part0336 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %part0336, align 4
  %bd_device337 = getelementptr inbounds %struct.block_device, ptr %207, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %bd_device337, ptr noundef nonnull @.str.48) #12
  br label %if.end338

if.end338:                                        ; preds = %do.end334, %if.end327.if.end338_crit_edge
  %208 = ptrtoint ptr %rq_state323 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %rq_state323, align 8
  %and340 = and i32 %209, 1008
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and340)
  %tobool341.not = icmp eq i32 %and340, 0
  %cond342 = select i1 %tobool341.not, i32 0, i32 128
  tail call fastcc void @mod_rq_state(ptr noundef %req, ptr noundef %m, i32 noundef 262144, i32 noundef %cond342)
  br label %sw.epilog

do.body344:                                       ; preds = %if.end
  %rq_state345 = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 17
  %210 = ptrtoint ptr %rq_state345 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %rq_state345, align 8
  %and346 = and i32 %211, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and346)
  %tobool347.not = icmp eq i32 %and346, 0
  br i1 %tobool347.not, label %do.end351, label %do.body344.do.end357_crit_edge

do.body344.do.end357_crit_edge:                   ; preds = %do.body344
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end357

do.end351:                                        ; preds = %do.body344
  call void @__sanitizer_cov_trace_pc() #11
  %vdisk352 = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 18
  %212 = ptrtoint ptr %vdisk352 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %vdisk352, align 4
  %part0353 = getelementptr inbounds %struct.gendisk, ptr %213, i32 0, i32 7
  %214 = ptrtoint ptr %part0353 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %part0353, align 4
  %bd_device354 = getelementptr inbounds %struct.block_device, ptr %215, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %bd_device354, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.2, i32 noundef 865) #12
  br label %do.end357

do.end357:                                        ; preds = %do.end351, %do.body344.do.end357_crit_edge
  tail call fastcc void @mod_rq_state(ptr noundef %req, ptr noundef %m, i32 noundef 16, i32 noundef 384)
  br label %sw.epilog

sw.bb358:                                         ; preds = %if.end
  %current_tle_writes.i = getelementptr inbounds %struct.drbd_connection, ptr %cond, i32 0, i32 35
  %216 = ptrtoint ptr %current_tle_writes.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %current_tle_writes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %217)
  %cmp.i573 = icmp eq i32 %217, 0
  br i1 %cmp.i573, label %sw.bb358.start_new_tl_epoch.exit_crit_edge, label %if.end.i

sw.bb358.start_new_tl_epoch.exit_crit_edge:       ; preds = %sw.bb358
  call void @__sanitizer_cov_trace_pc() #11
  br label %start_new_tl_epoch.exit

if.end.i:                                         ; preds = %sw.bb358
  call void @__sanitizer_cov_trace_pc() #11
  %218 = ptrtoint ptr %current_tle_writes.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 0, ptr %current_tle_writes.i, align 4
  %current_tle_nr.i = getelementptr inbounds %struct.drbd_connection, ptr %cond, i32 0, i32 34
  %call.i.i.i574 = tail call zeroext i1 @__kasan_check_write(ptr noundef %current_tle_nr.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %current_tle_nr.i, i32 1, i32 3, i32 1) #9
  %219 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %current_tle_nr.i, ptr %current_tle_nr.i, i32 1, ptr elementtype(i32) %current_tle_nr.i) #9, !srcloc !221
  %q_wait.i.i = getelementptr inbounds %struct.drbd_connection, ptr %cond, i32 0, i32 45, i32 2
  tail call void @__wake_up(ptr noundef %q_wait.i.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %start_new_tl_epoch.exit

start_new_tl_epoch.exit:                          ; preds = %if.end.i, %sw.bb358.start_new_tl_epoch.exit_crit_edge
  tail call fastcc void @mod_rq_state(ptr noundef %req, ptr noundef %m, i32 noundef 0, i32 noundef 384)
  br label %sw.epilog

sw.epilog:                                        ; preds = %start_new_tl_epoch.exit, %do.end357, %if.end338, %sw.bb322.sw.epilog_crit_edge, %if.then313, %if.then309.sw.epilog_crit_edge, %if.then304, %if.end281, %sw.bb276.sw.epilog_crit_edge, %if.end275, %sw.bb270.sw.epilog_crit_edge, %sw.bb269, %if.then267, %do.end262.sw.epilog_crit_edge, %ack_common, %do.end214, %sw.bb185, %sw.bb184, %if.else182, %if.then181, %sw.bb178, %drbd_queue_work.exit568, %if.then171, %rcu_read_unlock.exit560.sw.epilog_crit_edge, %drbd_queue_work.exit, %sw.bb71, %sw.bb70, %drbd_report_io_error.exit, %sw.bb63, %if.end62, %do.end52, %rcu_read_unlock.exit, %do.end
  %rv.1 = phi i32 [ 0, %do.end ], [ 0, %start_new_tl_epoch.exit ], [ 0, %do.end357 ], [ 0, %if.end338 ], [ 0, %sw.bb322.sw.epilog_crit_edge ], [ %cond319, %if.then313 ], [ 0, %if.then309.sw.epilog_crit_edge ], [ 0, %if.then304 ], [ %spec.select, %if.end281 ], [ 0, %sw.bb276.sw.epilog_crit_edge ], [ 0, %if.end275 ], [ 0, %sw.bb270.sw.epilog_crit_edge ], [ 0, %sw.bb269 ], [ 0, %if.then267 ], [ 0, %do.end262.sw.epilog_crit_edge ], [ 0, %ack_common ], [ 0, %do.end214 ], [ 0, %sw.bb185 ], [ 0, %sw.bb184 ], [ 0, %if.then181 ], [ 0, %if.else182 ], [ 0, %sw.bb178 ], [ 0, %drbd_queue_work.exit568 ], [ 0, %if.then171 ], [ 0, %rcu_read_unlock.exit560.sw.epilog_crit_edge ], [ 0, %drbd_queue_work.exit ], [ 0, %sw.bb71 ], [ 0, %sw.bb70 ], [ 0, %drbd_report_io_error.exit ], [ 0, %sw.bb63 ], [ 0, %if.end62 ], [ 0, %do.end52 ], [ 0, %rcu_read_unlock.exit ]
  ret i32 %rv.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mod_rq_state(ptr noundef %req, ptr noundef %m, i32 noundef %clear, i32 noundef %set) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %peer_devices.i = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %peer_devices.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %peer_devices.i, align 4
  %cmp.not.i = icmp eq ptr %3, %peer_devices.i
  %spec.select.i = select i1 %cmp.not.i, ptr null, ptr %3
  %rq_state = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 17
  %4 = ptrtoint ptr %rq_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rq_state, align 8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %susp.i = getelementptr inbounds %struct.drbd_resource, ptr %7, i32 0, i32 13
  %8 = ptrtoint ptr %susp.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load.i = load i8, ptr %susp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %bf.load.i)
  %9 = icmp ult i8 %bf.load.i, 32
  %or = or i32 %5, %clear
  %and = and i32 %or, 262144
  %10 = xor i32 %and, 262144
  %11 = select i1 %9, i32 0, i32 %10
  %set.addr.0 = or i32 %11, %set
  %neg = xor i32 %clear, -1
  %and6 = and i32 %5, %neg
  %or8 = or i32 %set.addr.0, %and6
  %12 = ptrtoint ptr %rq_state to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or8, ptr %rq_state, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %or8, i32 %5)
  %cmp = icmp eq i32 %or8, %5
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end11

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %entry
  %kref = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 16
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #9
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #9, !srcloc !227
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end11.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !228

if.end11.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end11
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %14 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %.not.i.i.i.i = icmp sgt i32 %14, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !229

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end11.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end11.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef %.sink.i.i.i.i) #9
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  %and12 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp ne i32 %and12, 0
  %and15 = and i32 %set, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  %or.cond = or i1 %tobool13.not, %tobool16.not
  br i1 %or.cond, label %kref_get.exit.if.end18_crit_edge, label %if.then17

kref_get.exit.if.end18_crit_edge:                 ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then17:                                        ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #11
  %completion_ref = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 15
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %completion_ref, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %completion_ref, i32 1, i32 3, i32 1) #9
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %completion_ref, ptr %completion_ref, i32 1, ptr elementtype(i32) %completion_ref) #9, !srcloc !221
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %kref_get.exit.if.end18_crit_edge
  %and19 = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp ne i32 %and19, 0
  %and22 = and i32 %set, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  %or.cond231 = or i1 %tobool20.not, %tobool23.not
  br i1 %or.cond231, label %if.end18.if.end26_crit_edge, label %if.then24

if.end18.if.end26_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then24:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %ap_pending_cnt.i = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 38
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ap_pending_cnt.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %ap_pending_cnt.i, i32 1, i32 3, i32 1) #9
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ap_pending_cnt.i, ptr %ap_pending_cnt.i, i32 1, ptr elementtype(i32) %ap_pending_cnt.i) #9, !srcloc !221
  %completion_ref25 = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 15
  %call.i.i242 = tail call zeroext i1 @__kasan_check_write(ptr noundef %completion_ref25, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %completion_ref25, i32 1, i32 3, i32 1) #9
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %completion_ref25, ptr %completion_ref25, i32 1, ptr elementtype(i32) %completion_ref25) #9, !srcloc !221
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.end18.if.end26_crit_edge
  %and27 = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp ne i32 %and27, 0
  %and30 = and i32 %set, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  %or.cond232 = or i1 %tobool28.not, %tobool31.not
  br i1 %or.cond232, label %if.end26.if.end34_crit_edge, label %if.then32

if.end26.if.end34_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.then32:                                        ; preds = %if.end26
  %completion_ref33 = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 15
  %call.i.i243 = tail call zeroext i1 @__kasan_check_write(ptr noundef %completion_ref33, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %completion_ref33, i32 1, i32 3, i32 1) #9
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %completion_ref33, ptr %completion_ref33, i32 1, ptr elementtype(i32) %completion_ref33) #9, !srcloc !221
  %tobool.not.i = icmp eq ptr %spec.select.i, null
  br i1 %tobool.not.i, label %if.then32.if.end34_crit_edge, label %cond.end.i

if.then32.if.end34_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

cond.end.i:                                       ; preds = %if.then32
  %connection1.i = getelementptr inbounds %struct.drbd_peer_device, ptr %spec.select.i, i32 0, i32 2
  %19 = ptrtoint ptr %connection1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %connection1.i, align 4
  %tobool2.not.i = icmp eq ptr %20, null
  br i1 %tobool2.not.i, label %cond.end.i.if.end34_crit_edge, label %if.end.i

cond.end.i.if.end34_crit_edge:                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.end.i:                                         ; preds = %cond.end.i
  %req_next.i = getelementptr inbounds %struct.drbd_connection, ptr %20, i32 0, i32 42
  %21 = ptrtoint ptr %req_next.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %req_next.i, align 4
  %cmp.i = icmp eq ptr %22, null
  br i1 %cmp.i, label %if.then3.i, label %if.end.i.if.end34_crit_edge

if.end.i.if.end34_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %req_next.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %req, ptr %req_next.i, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then3.i, %if.end.i.if.end34_crit_edge, %cond.end.i.if.end34_crit_edge, %if.then32.if.end34_crit_edge, %if.end26.if.end34_crit_edge
  %and35 = and i32 %5, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  %and38 = and i32 %set, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp ne i32 %and38, 0
  %24 = and i1 %tobool36.not, %tobool39.not
  br i1 %24, label %if.then40, label %if.end34.if.end42_crit_edge

if.end34.if.end42_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

if.then40:                                        ; preds = %if.end34
  %call.i.i.i.i.i.i247 = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #9
  %25 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #9, !srcloc !227
  %asmresult.i.i.i.i.i.i248 = extractvalue { i32, i32, i32 } %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i248)
  %tobool1.not.i.i.i.i249 = icmp eq i32 %asmresult.i.i.i.i.i.i248, 0
  br i1 %tobool1.not.i.i.i.i249, label %if.then40.if.end15.sink.split.i.i.i.i254_crit_edge, label %if.else.i.i.i.i252, !prof !228

if.then40.if.end15.sink.split.i.i.i.i254_crit_edge: ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i254

if.else.i.i.i.i252:                               ; preds = %if.then40
  %add.i.i.i.i250 = add i32 %asmresult.i.i.i.i.i.i248, 1
  %26 = or i32 %add.i.i.i.i250, %asmresult.i.i.i.i.i.i248
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %26)
  %.not.i.i.i.i251 = icmp sgt i32 %26, -1
  br i1 %.not.i.i.i.i251, label %if.else.i.i.i.i252.if.end42_crit_edge, label %if.else.i.i.i.i252.if.end15.sink.split.i.i.i.i254_crit_edge, !prof !229

if.else.i.i.i.i252.if.end15.sink.split.i.i.i.i254_crit_edge: ; preds = %if.else.i.i.i.i252
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i254

if.else.i.i.i.i252.if.end42_crit_edge:            ; preds = %if.else.i.i.i.i252
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

if.end15.sink.split.i.i.i.i254:                   ; preds = %if.else.i.i.i.i252.if.end15.sink.split.i.i.i.i254_crit_edge, %if.then40.if.end15.sink.split.i.i.i.i254_crit_edge
  %.sink.i.i.i.i253 = phi i32 [ 2, %if.then40.if.end15.sink.split.i.i.i.i254_crit_edge ], [ 1, %if.else.i.i.i.i252.if.end15.sink.split.i.i.i.i254_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef %.sink.i.i.i.i253) #9
  br label %if.end42

if.end42:                                         ; preds = %if.end15.sink.split.i.i.i.i254, %if.else.i.i.i.i252.if.end42_crit_edge, %if.end34.if.end42_crit_edge
  %and43 = and i32 %5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  %and46 = and i32 %set, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp ne i32 %and46, 0
  %27 = and i1 %tobool44.not, %tobool47.not
  br i1 %27, label %if.then48, label %if.end42.if.end58_crit_edge

if.end42.if.end58_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58

if.then48:                                        ; preds = %if.end42
  %and49 = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.then51, label %if.then48.if.end52_crit_edge

if.then48.if.end52_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

if.then51:                                        ; preds = %if.then48
  %size = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 3, i32 2
  %28 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %size, align 8
  %shr = lshr i32 %29, 9
  %ap_in_flight = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 103
  %call.i.i244 = tail call zeroext i1 @__kasan_check_write(ptr noundef %ap_in_flight, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %ap_in_flight, i32 1, i32 3, i32 1) #9
  %30 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ap_in_flight, ptr %ap_in_flight, i32 %shr, ptr elementtype(i32) %ap_in_flight) #9, !srcloc !221
  %tobool.not.i256 = icmp eq ptr %spec.select.i, null
  br i1 %tobool.not.i256, label %if.then51.if.end58_crit_edge, label %cond.end.i259

if.then51.if.end58_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58

cond.end.i259:                                    ; preds = %if.then51
  %connection1.i257 = getelementptr inbounds %struct.drbd_peer_device, ptr %spec.select.i, i32 0, i32 2
  %31 = ptrtoint ptr %connection1.i257 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %connection1.i257, align 4
  %tobool2.not.i258 = icmp eq ptr %32, null
  br i1 %tobool2.not.i258, label %cond.end.i259.if.end52_crit_edge, label %if.end.i261

cond.end.i259.if.end52_crit_edge:                 ; preds = %cond.end.i259
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

if.end.i261:                                      ; preds = %cond.end.i259
  %req_not_net_done.i = getelementptr inbounds %struct.drbd_connection, ptr %32, i32 0, i32 44
  %33 = ptrtoint ptr %req_not_net_done.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %req_not_net_done.i, align 4
  %cmp.i260 = icmp eq ptr %34, null
  br i1 %cmp.i260, label %if.then3.i262, label %if.end.i261.if.end52_crit_edge

if.end.i261.if.end52_crit_edge:                   ; preds = %if.end.i261
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

if.then3.i262:                                    ; preds = %if.end.i261
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %req_not_net_done.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %req, ptr %req_not_net_done.i, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then3.i262, %if.end.i261.if.end52_crit_edge, %cond.end.i259.if.end52_crit_edge, %if.then48.if.end52_crit_edge
  %36 = ptrtoint ptr %rq_state to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rq_state, align 8
  %and54 = and i32 %37, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  %tobool.not.i263 = icmp eq ptr %spec.select.i, null
  %or.cond402 = select i1 %tobool55.not, i1 true, i1 %tobool.not.i263
  br i1 %or.cond402, label %if.end52.if.end58_crit_edge, label %cond.end.i266

if.end52.if.end58_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58

cond.end.i266:                                    ; preds = %if.end52
  %connection1.i264 = getelementptr inbounds %struct.drbd_peer_device, ptr %spec.select.i, i32 0, i32 2
  %38 = ptrtoint ptr %connection1.i264 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %connection1.i264, align 4
  %tobool2.not.i265 = icmp eq ptr %39, null
  br i1 %tobool2.not.i265, label %cond.end.i266.if.end58_crit_edge, label %if.end.i268

cond.end.i266.if.end58_crit_edge:                 ; preds = %cond.end.i266
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58

if.end.i268:                                      ; preds = %cond.end.i266
  %req_ack_pending.i = getelementptr inbounds %struct.drbd_connection, ptr %39, i32 0, i32 43
  %40 = ptrtoint ptr %req_ack_pending.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %req_ack_pending.i, align 4
  %cmp.i267 = icmp eq ptr %41, null
  br i1 %cmp.i267, label %if.then3.i269, label %if.end.i268.if.end58_crit_edge

if.end.i268.if.end58_crit_edge:                   ; preds = %if.end.i268
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58

if.then3.i269:                                    ; preds = %if.end.i268
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %req_ack_pending.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %req, ptr %req_ack_pending.i, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.then3.i269, %if.end.i268.if.end58_crit_edge, %cond.end.i266.if.end58_crit_edge, %if.end52.if.end58_crit_edge, %if.then51.if.end58_crit_edge, %if.end42.if.end58_crit_edge
  %and59 = and i32 %5, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp ne i32 %and59, 0
  %and62 = and i32 %set.addr.0, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  %or.cond235 = select i1 %tobool60.not, i1 true, i1 %tobool63.not
  br i1 %or.cond235, label %if.end58.if.end66_crit_edge, label %if.then64

if.end58.if.end66_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

if.then64:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  %completion_ref65 = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 15
  %call.i.i245 = tail call zeroext i1 @__kasan_check_write(ptr noundef %completion_ref65, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %completion_ref65, i32 1, i32 3, i32 1) #9
  %43 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %completion_ref65, ptr %completion_ref65, i32 1, ptr elementtype(i32) %completion_ref65) #9, !srcloc !221
  br label %if.end66

if.end66:                                         ; preds = %if.then64, %if.end58.if.end66_crit_edge
  %44 = and i32 %5, %clear
  %45 = lshr i32 %44, 18
  %.lobit = and i32 %45, 1
  %and74 = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp ne i32 %and74, 0
  %and77 = and i32 %set, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  %or.cond237 = or i1 %tobool75.not, %tobool78.not
  br i1 %or.cond237, label %if.end66.if.end89_crit_edge, label %do.body

if.end66.if.end89_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end89

do.body:                                          ; preds = %if.end66
  %46 = ptrtoint ptr %rq_state to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rq_state, align 8
  %and81 = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %tobool82.not = icmp eq i32 %and81, 0
  br i1 %tobool82.not, label %do.end, label %do.body.do.end87_crit_edge

do.body.do.end87_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end87

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %vdisk = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 18
  %48 = ptrtoint ptr %vdisk to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %vdisk, align 4
  %part0 = getelementptr inbounds %struct.gendisk, ptr %49, i32 0, i32 7
  %50 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %part0, align 4
  %bd_device = getelementptr inbounds %struct.block_device, ptr %51, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %bd_device, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.2, i32 noundef 462) #12
  br label %do.end87

do.end87:                                         ; preds = %do.end, %do.body.do.end87_crit_edge
  %inc88 = add nuw nsw i32 %.lobit, 1
  br label %if.end89

if.end89:                                         ; preds = %do.end87, %if.end66.if.end89_crit_edge
  %c_put.1 = phi i32 [ %.lobit, %if.end66.if.end89_crit_edge ], [ %inc88, %do.end87 ]
  %52 = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %.not.not = icmp eq i32 %52, 0
  br i1 %.not.not, label %if.end89.if.end104_crit_edge, label %if.then95

if.end89.if.end104_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end104

if.then95:                                        ; preds = %if.end89
  %53 = ptrtoint ptr %rq_state to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rq_state, align 8
  %and97 = and i32 %54, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97)
  %tobool98.not = icmp eq i32 %and97, 0
  br i1 %tobool98.not, label %if.else, label %if.then99

if.then99:                                        ; preds = %if.then95
  %call.i.i.i.i.i.i270 = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !230
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #9
  %55 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #9, !srcloc !231
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %55, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then99
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i271 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i271, label %if.end5.i.i.i.i.if.end103_crit_edge, label %if.then10.i.i.i.i, !prof !229

if.end5.i.i.i.i.if.end103_crit_edge:              ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end103

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #9
  br label %if.end103

if.then.i:                                        ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !232
  tail call void @drbd_req_destroy(ptr noundef %kref) #9
  br label %if.end103

if.else:                                          ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #11
  %inc102 = add nuw nsw i32 %c_put.1, 1
  br label %if.end103

if.end103:                                        ; preds = %if.else, %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end103_crit_edge
  %c_put.2 = phi i32 [ %inc102, %if.else ], [ %c_put.1, %if.end5.i.i.i.i.if.end103_crit_edge ], [ %c_put.1, %if.then10.i.i.i.i ], [ %c_put.1, %if.then.i ]
  %req_pending_local = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 8
  %call.i.i272 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %req_pending_local) #9
  br i1 %call.i.i272, label %if.end.i.i, label %if.end103.list_del_init.exit_crit_edge

if.end103.list_del_init.exit_crit_edge:           ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 8, i32 1
  %56 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %prev.i.i, align 4
  %58 = ptrtoint ptr %req_pending_local to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %req_pending_local, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %57, ptr %prev1.i.i.i, align 4
  %61 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %59, ptr %57, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end103.list_del_init.exit_crit_edge
  %62 = ptrtoint ptr %req_pending_local to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %req_pending_local, ptr %req_pending_local, align 4
  %prev.i3.i = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 8, i32 1
  %63 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %req_pending_local, ptr %prev.i3.i, align 4
  br label %if.end104

if.end104:                                        ; preds = %list_del_init.exit, %if.end89.if.end104_crit_edge
  %c_put.3 = phi i32 [ %c_put.2, %list_del_init.exit ], [ %c_put.1, %if.end89.if.end104_crit_edge ]
  %64 = and i32 %44, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %.not.not404 = icmp eq i32 %64, 0
  br i1 %.not.not404, label %if.end104.if.end112_crit_edge, label %if.then110

if.end104.if.end112_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end112

if.then110:                                       ; preds = %if.end104
  %ap_pending_cnt.i273 = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 38
  %call.i.i.i274 = tail call zeroext i1 @__kasan_check_write(ptr noundef %ap_pending_cnt.i273, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !222
  tail call void @llvm.prefetch.p0(ptr %ap_pending_cnt.i273, i32 1, i32 3, i32 1) #9
  %65 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ap_pending_cnt.i273, ptr %ap_pending_cnt.i273, i32 1, ptr elementtype(i32) %ap_pending_cnt.i273) #9, !srcloc !223
  %asmresult.i.i.i.i.i.i275 = extractvalue { i32, i32 } %65, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !224
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i275)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i275, 0
  br i1 %cmp.i.i.i, label %if.then.i276, label %if.then110.if.end.i278_crit_edge

if.then110.if.end.i278_crit_edge:                 ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i278

if.then.i276:                                     ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #11
  %misc_wait.i = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 28
  tail call void @__wake_up(ptr noundef %misc_wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %if.end.i278

if.end.i278:                                      ; preds = %if.then.i276, %if.then110.if.end.i278_crit_edge
  %call.i.i1.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ap_pending_cnt.i273, i32 noundef 4) #9
  %66 = ptrtoint ptr %ap_pending_cnt.i273 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %ap_pending_cnt.i273, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp.i277 = icmp slt i32 %67, 0
  br i1 %cmp.i277, label %do.end.i, label %if.end.i278._dec_ap_pending.exit_crit_edge

if.end.i278._dec_ap_pending.exit_crit_edge:       ; preds = %if.end.i278
  call void @__sanitizer_cov_trace_pc() #11
  br label %_dec_ap_pending.exit

do.end.i:                                         ; preds = %if.end.i278
  call void @__sanitizer_cov_trace_pc() #11
  %vdisk.i = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 18
  %68 = ptrtoint ptr %vdisk.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %vdisk.i, align 4
  %part0.i = getelementptr inbounds %struct.gendisk, ptr %69, i32 0, i32 7
  %70 = ptrtoint ptr %part0.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %part0.i, align 4
  %bd_device.i = getelementptr inbounds %struct.block_device, ptr %71, i32 0, i32 10
  %call.i.i2.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ap_pending_cnt.i273, i32 noundef 4) #9
  %72 = ptrtoint ptr %ap_pending_cnt.i273 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %ap_pending_cnt.i273, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %bd_device.i, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.66, i32 noundef 475, i32 noundef %73) #12
  br label %_dec_ap_pending.exit

_dec_ap_pending.exit:                             ; preds = %do.end.i, %if.end.i278._dec_ap_pending.exit_crit_edge
  %inc111 = add nuw nsw i32 %c_put.3, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %74 = load volatile i32, ptr @jiffies, align 128
  %acked_jif = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 13
  %75 = ptrtoint ptr %acked_jif to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %acked_jif, align 8
  %tobool.not.i279 = icmp eq ptr %spec.select.i, null
  br i1 %tobool.not.i279, label %if.end112.thread, label %cond.end.i282

cond.end.i282:                                    ; preds = %_dec_ap_pending.exit
  %connection1.i280 = getelementptr inbounds %struct.drbd_peer_device, ptr %spec.select.i, i32 0, i32 2
  %76 = ptrtoint ptr %connection1.i280 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %connection1.i280, align 4
  %tobool2.not.i281 = icmp eq ptr %77, null
  br i1 %tobool2.not.i281, label %cond.end.i282.if.end112_crit_edge, label %if.end.i285

cond.end.i282.if.end112_crit_edge:                ; preds = %cond.end.i282
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end112

if.end.i285:                                      ; preds = %cond.end.i282
  %req_ack_pending.i283 = getelementptr inbounds %struct.drbd_connection, ptr %77, i32 0, i32 43
  %78 = ptrtoint ptr %req_ack_pending.i283 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %req_ack_pending.i283, align 4
  %cmp.not.i284 = icmp eq ptr %79, %req
  br i1 %cmp.not.i284, label %if.end4.i, label %if.end.i285.if.end112_crit_edge

if.end.i285.if.end112_crit_edge:                  ; preds = %if.end.i285
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end112

if.end4.i:                                        ; preds = %if.end.i285
  %tl_requests.i = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 5
  %transfer_log.i = getelementptr inbounds %struct.drbd_connection, ptr %77, i32 0, i32 23
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end4.i
  %.pn.in.i = phi ptr [ %tl_requests.i, %if.end4.i ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %80 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp6.i = icmp eq ptr %.pn.i, %transfer_log.i
  br i1 %cmp6.i, label %for.cond.i.for.end.i_crit_edge, label %for.body.i

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i:                                       ; preds = %for.cond.i
  %rq_state.i = getelementptr i8, ptr %.pn.i, i32 60
  %81 = ptrtoint ptr %rq_state.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %rq_state.i, align 8
  %83 = and i32 %82, 80
  %.not.i = icmp eq i32 %83, 80
  br i1 %.not.i, label %for.end.split.loop.exit.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

for.end.split.loop.exit.i:                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %req.addr.0.le.i = getelementptr i8, ptr %.pn.i, i32 -76
  br label %for.end.i

for.end.i:                                        ; preds = %for.end.split.loop.exit.i, %for.cond.i.for.end.i_crit_edge
  %spec.store.select.i = phi ptr [ %req.addr.0.le.i, %for.end.split.loop.exit.i ], [ null, %for.cond.i.for.end.i_crit_edge ]
  %84 = ptrtoint ptr %req_ack_pending.i283 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %spec.store.select.i, ptr %req_ack_pending.i283, align 4
  br label %if.end112

if.end112:                                        ; preds = %for.end.i, %if.end.i285.if.end112_crit_edge, %cond.end.i282.if.end112_crit_edge, %if.end104.if.end112_crit_edge
  %c_put.4 = phi i32 [ %c_put.3, %if.end104.if.end112_crit_edge ], [ %inc111, %cond.end.i282.if.end112_crit_edge ], [ %inc111, %if.end.i285.if.end112_crit_edge ], [ %inc111, %for.end.i ]
  %85 = and i32 %44, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %.not.not405 = icmp eq i32 %85, 0
  br i1 %.not.not405, label %if.end112.if.end120_crit_edge, label %if.then118

if.end112.if.end120_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end120

if.end112.thread:                                 ; preds = %_dec_ap_pending.exit
  call void @__sanitizer_cov_trace_pc() #11
  %86 = and i32 %44, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %.not.not406 = icmp eq i32 %86, 0
  %inc119396 = add nuw nsw i32 %c_put.3, 2
  %spec.select403 = select i1 %.not.not406, i32 %inc111, i32 %inc119396
  br label %if.end120

if.then118:                                       ; preds = %if.end112
  %inc119 = add i32 %c_put.4, 1
  %tobool.not.i286 = icmp eq ptr %spec.select.i, null
  br i1 %tobool.not.i286, label %if.then118.if.end120_crit_edge, label %cond.end.i289

if.then118.if.end120_crit_edge:                   ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end120

cond.end.i289:                                    ; preds = %if.then118
  %connection1.i287 = getelementptr inbounds %struct.drbd_peer_device, ptr %spec.select.i, i32 0, i32 2
  %87 = ptrtoint ptr %connection1.i287 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %connection1.i287, align 4
  %tobool2.not.i288 = icmp eq ptr %88, null
  br i1 %tobool2.not.i288, label %cond.end.i289.if.end120_crit_edge, label %if.end.i292

cond.end.i289.if.end120_crit_edge:                ; preds = %cond.end.i289
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end120

if.end.i292:                                      ; preds = %cond.end.i289
  %req_next.i290 = getelementptr inbounds %struct.drbd_connection, ptr %88, i32 0, i32 42
  %89 = ptrtoint ptr %req_next.i290 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %req_next.i290, align 4
  %cmp.not.i291 = icmp eq ptr %90, %req
  br i1 %cmp.not.i291, label %if.end4.i295, label %if.end.i292.if.end120_crit_edge

if.end.i292.if.end120_crit_edge:                  ; preds = %if.end.i292
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end120

if.end4.i295:                                     ; preds = %if.end.i292
  %tl_requests.i293 = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 5
  %transfer_log.i294 = getelementptr inbounds %struct.drbd_connection, ptr %88, i32 0, i32 23
  br label %for.cond.i299

for.cond.i299:                                    ; preds = %for.body.i301.for.cond.i299_crit_edge, %if.end4.i295
  %.pn.in.i296 = phi ptr [ %tl_requests.i293, %if.end4.i295 ], [ %.pn.i297, %for.body.i301.for.cond.i299_crit_edge ]
  %91 = ptrtoint ptr %.pn.in.i296 to i32
  call void @__asan_load4_noabort(i32 %91)
  %.pn.i297 = load ptr, ptr %.pn.in.i296, align 4
  %cmp6.i298 = icmp eq ptr %.pn.i297, %transfer_log.i294
  br i1 %cmp6.i298, label %for.cond.i299.for.end.i305_crit_edge, label %for.body.i301

for.cond.i299.for.end.i305_crit_edge:             ; preds = %for.cond.i299
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i305

for.body.i301:                                    ; preds = %for.cond.i299
  %rq_state.i300 = getelementptr i8, ptr %.pn.i297, i32 60
  %92 = ptrtoint ptr %rq_state.i300 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %rq_state.i300, align 8
  %and.i = and i32 %93, 32
  %tobool7.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool7.not.i, label %for.body.i301.for.cond.i299_crit_edge, label %for.end.split.loop.exit.i303

for.body.i301.for.cond.i299_crit_edge:            ; preds = %for.body.i301
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i299

for.end.split.loop.exit.i303:                     ; preds = %for.body.i301
  call void @__sanitizer_cov_trace_pc() #11
  %req.addr.0.le.i302 = getelementptr i8, ptr %.pn.i297, i32 -76
  br label %for.end.i305

for.end.i305:                                     ; preds = %for.end.split.loop.exit.i303, %for.cond.i299.for.end.i305_crit_edge
  %spec.store.select.i304 = phi ptr [ %req.addr.0.le.i302, %for.end.split.loop.exit.i303 ], [ null, %for.cond.i299.for.end.i305_crit_edge ]
  %94 = ptrtoint ptr %req_next.i290 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %spec.store.select.i304, ptr %req_next.i290, align 4
  br label %if.end120

if.end120:                                        ; preds = %for.end.i305, %if.end.i292.if.end120_crit_edge, %cond.end.i289.if.end120_crit_edge, %if.then118.if.end120_crit_edge, %if.end112.thread, %if.end112.if.end120_crit_edge
  %c_put.5 = phi i32 [ %c_put.4, %if.end112.if.end120_crit_edge ], [ %inc119, %if.then118.if.end120_crit_edge ], [ %inc119, %cond.end.i289.if.end120_crit_edge ], [ %inc119, %if.end.i292.if.end120_crit_edge ], [ %inc119, %for.end.i305 ], [ %spec.select403, %if.end112.thread ]
  %and121 = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and121)
  %tobool122.not = icmp ne i32 %and121, 0
  %and124 = and i32 %set, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and124)
  %tobool125.not = icmp eq i32 %and124, 0
  %or.cond241 = or i1 %tobool122.not, %tobool125.not
  br i1 %or.cond241, label %if.end120.if.end141_crit_edge, label %if.then126

if.end120.if.end141_crit_edge:                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end141

if.then126:                                       ; preds = %if.end120
  br i1 %tobool44.not, label %if.then126.if.end134_crit_edge, label %if.then129

if.then126.if.end134_crit_edge:                   ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end134

if.then129:                                       ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #11
  %size131 = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 3, i32 2
  %95 = ptrtoint ptr %size131 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %size131, align 8
  %shr132 = lshr i32 %96, 9
  %ap_in_flight133 = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 103
  %call.i.i246 = tail call zeroext i1 @__kasan_check_write(ptr noundef %ap_in_flight133, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %ap_in_flight133, i32 1, i32 3, i32 1) #9
  %97 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ap_in_flight133, ptr %ap_in_flight133, i32 %shr132, ptr elementtype(i32) %ap_in_flight133) #9, !srcloc !233
  br label %if.end134

if.end134:                                        ; preds = %if.then129, %if.then126.if.end134_crit_edge
  br i1 %tobool36.not, label %if.end134.if.end140_crit_edge, label %if.then137

if.end134.if.end140_crit_edge:                    ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end140

if.then137:                                       ; preds = %if.end134
  %call.i.i.i.i.i.i306 = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !230
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #9
  %98 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #9, !srcloc !231
  %asmresult.i.i.i.i.i.i.i307 = extractvalue { i32, i32, i32 } %98, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i307)
  %cmp.i.i.i.i308 = icmp eq i32 %asmresult.i.i.i.i.i.i.i307, 1
  br i1 %cmp.i.i.i.i308, label %if.then.i312, label %if.end5.i.i.i.i310

if.end5.i.i.i.i310:                               ; preds = %if.then137
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i307)
  %.not.i.i.i.i309 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i307, 0
  br i1 %.not.i.i.i.i309, label %if.end5.i.i.i.i310.if.end140_crit_edge, label %if.then10.i.i.i.i311, !prof !229

if.end5.i.i.i.i310.if.end140_crit_edge:           ; preds = %if.end5.i.i.i.i310
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end140

if.then10.i.i.i.i311:                             ; preds = %if.end5.i.i.i.i310
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #9
  br label %if.end140

if.then.i312:                                     ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !232
  tail call void @drbd_req_destroy(ptr noundef %kref) #9
  br label %if.end140

if.end140:                                        ; preds = %if.then.i312, %if.then10.i.i.i.i311, %if.end5.i.i.i.i310.if.end140_crit_edge, %if.end134.if.end140_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %99 = load volatile i32, ptr @jiffies, align 128
  %net_done_jif = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 14
  %100 = ptrtoint ptr %net_done_jif to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %net_done_jif, align 4
  %tobool.not.i314 = icmp eq ptr %spec.select.i, null
  br i1 %tobool.not.i314, label %if.end140.if.end141_crit_edge, label %cond.end.i317

if.end140.if.end141_crit_edge:                    ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end141

cond.end.i317:                                    ; preds = %if.end140
  %connection1.i315 = getelementptr inbounds %struct.drbd_peer_device, ptr %spec.select.i, i32 0, i32 2
  %101 = ptrtoint ptr %connection1.i315 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %connection1.i315, align 4
  %tobool2.not.i316 = icmp eq ptr %102, null
  br i1 %tobool2.not.i316, label %cond.end.i317.if.end141_crit_edge, label %if.end.i320

cond.end.i317.if.end141_crit_edge:                ; preds = %cond.end.i317
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end141

if.end.i320:                                      ; preds = %cond.end.i317
  %req_next.i318 = getelementptr inbounds %struct.drbd_connection, ptr %102, i32 0, i32 42
  %103 = ptrtoint ptr %req_next.i318 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %req_next.i318, align 4
  %cmp.not.i319 = icmp eq ptr %104, %req
  br i1 %cmp.not.i319, label %if.end4.i323, label %if.end.i320.cond.end.i340_crit_edge

if.end.i320.cond.end.i340_crit_edge:              ; preds = %if.end.i320
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i340

if.end4.i323:                                     ; preds = %if.end.i320
  %tl_requests.i321 = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 5
  %transfer_log.i322 = getelementptr inbounds %struct.drbd_connection, ptr %102, i32 0, i32 23
  br label %for.cond.i327

for.cond.i327:                                    ; preds = %for.body.i331.for.cond.i327_crit_edge, %if.end4.i323
  %.pn.in.i324 = phi ptr [ %tl_requests.i321, %if.end4.i323 ], [ %.pn.i325, %for.body.i331.for.cond.i327_crit_edge ]
  %105 = ptrtoint ptr %.pn.in.i324 to i32
  call void @__asan_load4_noabort(i32 %105)
  %.pn.i325 = load ptr, ptr %.pn.in.i324, align 4
  %cmp6.i326 = icmp eq ptr %.pn.i325, %transfer_log.i322
  br i1 %cmp6.i326, label %for.cond.i327.advance_conn_req_next.exit336_crit_edge, label %for.body.i331

for.cond.i327.advance_conn_req_next.exit336_crit_edge: ; preds = %for.cond.i327
  call void @__sanitizer_cov_trace_pc() #11
  br label %advance_conn_req_next.exit336

for.body.i331:                                    ; preds = %for.cond.i327
  %rq_state.i328 = getelementptr i8, ptr %.pn.i325, i32 60
  %106 = ptrtoint ptr %rq_state.i328 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %rq_state.i328, align 8
  %and.i329 = and i32 %107, 32
  %tobool7.not.i330 = icmp eq i32 %and.i329, 0
  br i1 %tobool7.not.i330, label %for.body.i331.for.cond.i327_crit_edge, label %for.end.split.loop.exit.i333

for.body.i331.for.cond.i327_crit_edge:            ; preds = %for.body.i331
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i327

for.end.split.loop.exit.i333:                     ; preds = %for.body.i331
  call void @__sanitizer_cov_trace_pc() #11
  %req.addr.0.le.i332 = getelementptr i8, ptr %.pn.i325, i32 -76
  br label %advance_conn_req_next.exit336

advance_conn_req_next.exit336:                    ; preds = %for.end.split.loop.exit.i333, %for.cond.i327.advance_conn_req_next.exit336_crit_edge
  %spec.store.select.i334 = phi ptr [ %req.addr.0.le.i332, %for.end.split.loop.exit.i333 ], [ null, %for.cond.i327.advance_conn_req_next.exit336_crit_edge ]
  %108 = ptrtoint ptr %req_next.i318 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %spec.store.select.i334, ptr %req_next.i318, align 4
  br label %cond.end.i340

cond.end.i340:                                    ; preds = %advance_conn_req_next.exit336, %if.end.i320.cond.end.i340_crit_edge
  %109 = ptrtoint ptr %connection1.i315 to i32
  call void @__asan_load4_noabort(i32 %109)
  %.pr = load ptr, ptr %connection1.i315, align 4
  %tobool2.not.i339 = icmp eq ptr %.pr, null
  br i1 %tobool2.not.i339, label %cond.end.i340.if.end141_crit_edge, label %if.end.i343

cond.end.i340.if.end141_crit_edge:                ; preds = %cond.end.i340
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end141

if.end.i343:                                      ; preds = %cond.end.i340
  %req_ack_pending.i341 = getelementptr inbounds %struct.drbd_connection, ptr %.pr, i32 0, i32 43
  %110 = ptrtoint ptr %req_ack_pending.i341 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %req_ack_pending.i341, align 4
  %cmp.not.i342 = icmp eq ptr %111, %req
  br i1 %cmp.not.i342, label %if.end4.i346, label %if.end.i343.cond.end.i362_crit_edge

if.end.i343.cond.end.i362_crit_edge:              ; preds = %if.end.i343
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i362

if.end4.i346:                                     ; preds = %if.end.i343
  %tl_requests.i344 = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 5
  %transfer_log.i345 = getelementptr inbounds %struct.drbd_connection, ptr %.pr, i32 0, i32 23
  br label %for.cond.i350

for.cond.i350:                                    ; preds = %for.body.i353.for.cond.i350_crit_edge, %if.end4.i346
  %.pn.in.i347 = phi ptr [ %tl_requests.i344, %if.end4.i346 ], [ %.pn.i348, %for.body.i353.for.cond.i350_crit_edge ]
  %112 = ptrtoint ptr %.pn.in.i347 to i32
  call void @__asan_load4_noabort(i32 %112)
  %.pn.i348 = load ptr, ptr %.pn.in.i347, align 4
  %cmp6.i349 = icmp eq ptr %.pn.i348, %transfer_log.i345
  br i1 %cmp6.i349, label %for.cond.i350.advance_conn_req_ack_pending.exit358_crit_edge, label %for.body.i353

for.cond.i350.advance_conn_req_ack_pending.exit358_crit_edge: ; preds = %for.cond.i350
  call void @__sanitizer_cov_trace_pc() #11
  br label %advance_conn_req_ack_pending.exit358

for.body.i353:                                    ; preds = %for.cond.i350
  %rq_state.i351 = getelementptr i8, ptr %.pn.i348, i32 60
  %113 = ptrtoint ptr %rq_state.i351 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %rq_state.i351, align 8
  %115 = and i32 %114, 80
  %.not.i352 = icmp eq i32 %115, 80
  br i1 %.not.i352, label %for.end.split.loop.exit.i355, label %for.body.i353.for.cond.i350_crit_edge

for.body.i353.for.cond.i350_crit_edge:            ; preds = %for.body.i353
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i350

for.end.split.loop.exit.i355:                     ; preds = %for.body.i353
  call void @__sanitizer_cov_trace_pc() #11
  %req.addr.0.le.i354 = getelementptr i8, ptr %.pn.i348, i32 -76
  br label %advance_conn_req_ack_pending.exit358

advance_conn_req_ack_pending.exit358:             ; preds = %for.end.split.loop.exit.i355, %for.cond.i350.advance_conn_req_ack_pending.exit358_crit_edge
  %spec.store.select.i356 = phi ptr [ %req.addr.0.le.i354, %for.end.split.loop.exit.i355 ], [ null, %for.cond.i350.advance_conn_req_ack_pending.exit358_crit_edge ]
  %116 = ptrtoint ptr %req_ack_pending.i341 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %spec.store.select.i356, ptr %req_ack_pending.i341, align 4
  br label %cond.end.i362

cond.end.i362:                                    ; preds = %advance_conn_req_ack_pending.exit358, %if.end.i343.cond.end.i362_crit_edge
  %117 = ptrtoint ptr %connection1.i315 to i32
  call void @__asan_load4_noabort(i32 %117)
  %.pr418 = load ptr, ptr %connection1.i315, align 4
  %tobool2.not.i361 = icmp eq ptr %.pr418, null
  br i1 %tobool2.not.i361, label %cond.end.i362.if.end141_crit_edge, label %if.end.i365

cond.end.i362.if.end141_crit_edge:                ; preds = %cond.end.i362
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end141

if.end.i365:                                      ; preds = %cond.end.i362
  %req_not_net_done.i363 = getelementptr inbounds %struct.drbd_connection, ptr %.pr418, i32 0, i32 44
  %118 = ptrtoint ptr %req_not_net_done.i363 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %req_not_net_done.i363, align 4
  %cmp.not.i364 = icmp eq ptr %119, %req
  br i1 %cmp.not.i364, label %if.end4.i368, label %if.end.i365.if.end141_crit_edge

if.end.i365.if.end141_crit_edge:                  ; preds = %if.end.i365
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end141

if.end4.i368:                                     ; preds = %if.end.i365
  %tl_requests.i366 = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 5
  %transfer_log.i367 = getelementptr inbounds %struct.drbd_connection, ptr %.pr418, i32 0, i32 23
  br label %for.cond.i372

for.cond.i372:                                    ; preds = %for.body.i374.for.cond.i372_crit_edge, %if.end4.i368
  %.pn.in.i369 = phi ptr [ %tl_requests.i366, %if.end4.i368 ], [ %.pn.i370, %for.body.i374.for.cond.i372_crit_edge ]
  %120 = ptrtoint ptr %.pn.in.i369 to i32
  call void @__asan_load4_noabort(i32 %120)
  %.pn.i370 = load ptr, ptr %.pn.in.i369, align 4
  %cmp6.i371 = icmp eq ptr %.pn.i370, %transfer_log.i367
  br i1 %cmp6.i371, label %for.cond.i372.for.end.i378_crit_edge, label %for.body.i374

for.cond.i372.for.end.i378_crit_edge:             ; preds = %for.cond.i372
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i378

for.body.i374:                                    ; preds = %for.cond.i372
  %rq_state.i373 = getelementptr i8, ptr %.pn.i370, i32 60
  %121 = ptrtoint ptr %rq_state.i373 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %rq_state.i373, align 8
  %123 = and i32 %122, 192
  %124 = icmp eq i32 %123, 64
  br i1 %124, label %for.end.split.loop.exit.i376, label %for.body.i374.for.cond.i372_crit_edge

for.body.i374.for.cond.i372_crit_edge:            ; preds = %for.body.i374
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i372

for.end.split.loop.exit.i376:                     ; preds = %for.body.i374
  call void @__sanitizer_cov_trace_pc() #11
  %req.addr.0.le.i375 = getelementptr i8, ptr %.pn.i370, i32 -76
  br label %for.end.i378

for.end.i378:                                     ; preds = %for.end.split.loop.exit.i376, %for.cond.i372.for.end.i378_crit_edge
  %spec.store.select.i377 = phi ptr [ %req.addr.0.le.i375, %for.end.split.loop.exit.i376 ], [ null, %for.cond.i372.for.end.i378_crit_edge ]
  %125 = ptrtoint ptr %req_not_net_done.i363 to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %spec.store.select.i377, ptr %req_not_net_done.i363, align 4
  br label %if.end141

if.end141:                                        ; preds = %for.end.i378, %if.end.i365.if.end141_crit_edge, %cond.end.i362.if.end141_crit_edge, %cond.end.i340.if.end141_crit_edge, %cond.end.i317.if.end141_crit_edge, %if.end140.if.end141_crit_edge, %if.end120.if.end141_crit_edge
  %waiting = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 3, i32 4
  %126 = ptrtoint ptr %waiting to i32
  call void @__asan_load1_noabort(i32 %126)
  %bf.load = load i8, ptr %waiting, align 8
  %127 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %127)
  %tobool143.not = icmp eq i8 %127, 0
  br i1 %tobool143.not, label %if.end141.if.end145_crit_edge, label %if.then144

if.end141.if.end145_crit_edge:                    ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end145

if.then144:                                       ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #11
  %misc_wait = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 28
  tail call void @__wake_up(ptr noundef %misc_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %if.end145

if.end145:                                        ; preds = %if.then144, %if.end141.if.end145_crit_edge
  tail call fastcc void @drbd_req_put_completion_ref(ptr noundef %req, ptr noundef %m, i32 noundef %c_put.5)
  %call.i.i.i.i.i.i379 = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !230
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #9
  %128 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #9, !srcloc !231
  %asmresult.i.i.i.i.i.i.i380 = extractvalue { i32, i32, i32 } %128, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i380)
  %cmp.i.i.i.i381 = icmp eq i32 %asmresult.i.i.i.i.i.i.i380, 1
  br i1 %cmp.i.i.i.i381, label %if.then.i385, label %if.end5.i.i.i.i383

if.end5.i.i.i.i383:                               ; preds = %if.end145
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i380)
  %.not.i.i.i.i382 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i380, 0
  br i1 %.not.i.i.i.i382, label %if.end5.i.i.i.i383.cleanup_crit_edge, label %if.then10.i.i.i.i384, !prof !229

if.end5.i.i.i.i383.cleanup_crit_edge:             ; preds = %if.end5.i.i.i.i383
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10.i.i.i.i384:                             ; preds = %if.end5.i.i.i.i383
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #9
  br label %cleanup

if.then.i385:                                     ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !232
  tail call void @drbd_req_destroy(ptr noundef %kref) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i385, %if.then10.i.i.i.i384, %if.end5.i.i.i.i383.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__drbd_chk_io_error_(ptr noundef %device, i32 noundef %df, ptr noundef %where) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = tail call i32 @llvm.read_register.i32(metadata !211) #9
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !225
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.62, i32 noundef 696, ptr noundef nonnull @.str.63) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %ldev = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 15
  %4 = ptrtoint ptr %ldev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ldev, align 4
  %disk_conf = getelementptr inbounds %struct.drbd_backing_dev, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %disk_conf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %disk_conf, align 8
  %call = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b80 = load i1, ptr @__drbd_chk_io_error_.__warned, align 1
  br i1 %.b80, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__drbd_chk_io_error_.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.59, i32 noundef 1722, ptr noundef nonnull @.str.17) #9
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %on_io_error = getelementptr inbounds %struct.disk_conf, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %on_io_error to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %on_io_error, align 4
  %call.i81 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i81, label %do.end7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i84

do.end7.rcu_read_unlock.exit_crit_edge:           ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i84:                                ; preds = %do.end7
  %call1.i82 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i82)
  %tobool.not.i83 = icmp eq i32 %call1.i82, 0
  br i1 %tobool.not.i83, label %land.lhs.true.i84.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i86

land.lhs.true.i84.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i84
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i86:                               ; preds = %land.lhs.true.i84
  %.b4.i85 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i85, label %land.lhs.true2.i86.rcu_read_unlock.exit_crit_edge, label %if.then.i87

land.lhs.true2.i86.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i86
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i87:                                      ; preds = %land.lhs.true2.i86
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.62, i32 noundef 724, ptr noundef nonnull @.str.64) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i87, %land.lhs.true2.i86.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i84.rcu_read_unlock.exit_crit_edge, %do.end7.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !226
  %10 = tail call i32 @llvm.read_register.i32(metadata !211) #9
  %and.i.i.i.i.i88 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i88 to ptr
  %preempt_count.i.i.i.i89 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i89 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i89, align 4
  %sub.i.i.i = add i32 %13, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i89, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  %14 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.111)
  switch i32 %9, label %rcu_read_unlock.exit.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %rcu_read_unlock.exit.sw.bb30_crit_edge
    i32 1, label %rcu_read_unlock.exit.sw.bb30_crit_edge107
  ]

rcu_read_unlock.exit.sw.bb30_crit_edge107:        ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb30

rcu_read_unlock.exit.sw.bb30_crit_edge:           ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb30

rcu_read_unlock.exit.sw.epilog_crit_edge:         ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %df)
  %switch = icmp ult i32 %df, 2
  br i1 %switch, label %if.then10, label %sw.bb.sw.bb30_crit_edge

sw.bb.sw.bb30_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb30

if.then10:                                        ; preds = %sw.bb
  %call11 = tail call i32 @___ratelimit(ptr noundef nonnull @drbd_ratelimit_state, ptr noundef nonnull @__func__.__drbd_chk_io_error_) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then10.if.end17_crit_edge, label %do.end16

if.then10.if.end17_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

do.end16:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  %vdisk = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %15 = ptrtoint ptr %vdisk to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vdisk, align 4
  %part0 = getelementptr inbounds %struct.gendisk, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %part0, align 4
  %bd_device = getelementptr inbounds %struct.block_device, ptr %18, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %bd_device, ptr noundef nonnull @.str.79, ptr noundef %where) #12
  br label %if.end17

if.end17:                                         ; preds = %do.end16, %if.then10.if.end17_crit_edge
  %state = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 27
  %19 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %19)
  %bf.load = load i32, ptr %state, align 8
  %20 = and i32 %bf.load, 7680
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %20)
  %cmp18 = icmp ugt i32 %20, 2048
  br i1 %cmp18, label %if.then19, label %if.end17.sw.epilog_crit_edge

if.end17.sw.epilog_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %device, align 8
  %susp.i = getelementptr inbounds %struct.drbd_resource, ptr %22, i32 0, i32 13
  %23 = ptrtoint ptr %susp.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load.i = load i8, ptr %susp.i, align 4
  %bf.lshr.i = lshr i8 %bf.load.i, 7
  %bf.cast.i = zext i8 %bf.lshr.i to i32
  %bf.shl.i = shl nuw nsw i32 %bf.cast.i, 17
  %bf.clear.i = and i32 %bf.load, -6430209
  %bf.set.i = or i32 %bf.shl.i, %bf.clear.i
  %bf.lshr4.i = lshr i8 %bf.load.i, 6
  %bf.value8.i = zext i8 %bf.lshr4.i to i32
  %bf.shl9.i = shl nuw nsw i32 %bf.value8.i, 21
  %bf.lshr13.i = lshr i8 %bf.load.i, 5
  %24 = and i8 %bf.lshr13.i, 1
  %bf.value17.i = zext i8 %24 to i32
  %bf.shl18.i = shl nuw nsw i32 %bf.value17.i, 22
  %bf.shl9.masked.i = and i32 %bf.shl9.i, 2097152
  %bf.clear19.i = or i32 %bf.set.i, %bf.shl9.masked.i
  %bf.set20.i = or i32 %bf.clear19.i, %bf.shl18.i
  %bf.set = or i32 %bf.set20.i, 2048
  %.fca.0.insert64 = insertvalue [1 x i32] poison, i32 %bf.set, 0
  %call27 = tail call i32 @_drbd_set_state(ptr noundef %device, [1 x i32] %.fca.0.insert64, i32 noundef 1, ptr noundef null) #9
  br label %sw.epilog

sw.bb30:                                          ; preds = %sw.bb.sw.bb30_crit_edge, %rcu_read_unlock.exit.sw.bb30_crit_edge, %rcu_read_unlock.exit.sw.bb30_crit_edge107
  %flags = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 14
  tail call void @_set_bit(i32 noundef 10, ptr noundef %flags) #9
  %25 = zext i32 %df to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.112)
  switch i32 %df, label %sw.bb30.if.end38_crit_edge [
    i32 0, label %sw.bb30.if.end38.sink.split_crit_edge
    i32 3, label %if.then36
  ]

sw.bb30.if.end38.sink.split_crit_edge:            ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38.sink.split

sw.bb30.if.end38_crit_edge:                       ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.then36:                                        ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38.sink.split

if.end38.sink.split:                              ; preds = %if.then36, %sw.bb30.if.end38.sink.split_crit_edge
  %.sink = phi i32 [ 12, %if.then36 ], [ 11, %sw.bb30.if.end38.sink.split_crit_edge ]
  tail call void @_set_bit(i32 noundef %.sink, ptr noundef %flags) #9
  br label %if.end38

if.end38:                                         ; preds = %if.end38.sink.split, %sw.bb30.if.end38_crit_edge
  %state39 = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 27
  %26 = ptrtoint ptr %state39 to i32
  call void @__asan_load4_noabort(i32 %26)
  %bf.load40 = load i32, ptr %state39, align 8
  %27 = and i32 %bf.load40, 7680
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %27)
  %cmp43 = icmp ugt i32 %27, 1024
  br i1 %cmp43, label %if.then44, label %if.end38.sw.epilog_crit_edge

if.end38.sw.epilog_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then44:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %device, align 8
  %susp.i91 = getelementptr inbounds %struct.drbd_resource, ptr %29, i32 0, i32 13
  %30 = ptrtoint ptr %susp.i91 to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load.i92 = load i8, ptr %susp.i91, align 4
  %bf.lshr.i93 = lshr i8 %bf.load.i92, 7
  %bf.cast.i94 = zext i8 %bf.lshr.i93 to i32
  %bf.shl.i95 = shl nuw nsw i32 %bf.cast.i94, 17
  %bf.clear.i96 = and i32 %bf.load40, -6430209
  %bf.set.i97 = or i32 %bf.shl.i95, %bf.clear.i96
  %bf.lshr4.i98 = lshr i8 %bf.load.i92, 6
  %bf.value8.i99 = zext i8 %bf.lshr4.i98 to i32
  %bf.shl9.i100 = shl nuw nsw i32 %bf.value8.i99, 21
  %bf.lshr13.i101 = lshr i8 %bf.load.i92, 5
  %31 = and i8 %bf.lshr13.i101, 1
  %bf.value17.i102 = zext i8 %31 to i32
  %bf.shl18.i103 = shl nuw nsw i32 %bf.value17.i102, 22
  %bf.shl9.masked.i104 = and i32 %bf.shl9.i100, 2097152
  %bf.clear19.i105 = or i32 %bf.set.i97, %bf.shl9.masked.i104
  %bf.set20.i106 = or i32 %bf.clear19.i105, %bf.shl18.i103
  %bf.set53 = or i32 %bf.set20.i106, 1024
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %bf.set53, 0
  %call56 = tail call i32 @_drbd_set_state(ptr noundef %device, [1 x i32] %.fca.0.insert, i32 noundef 1, ptr noundef null) #9
  %vdisk60 = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %32 = ptrtoint ptr %vdisk60 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %vdisk60, align 4
  %part061 = getelementptr inbounds %struct.gendisk, ptr %33, i32 0, i32 7
  %34 = ptrtoint ptr %part061 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %part061, align 4
  %bd_device62 = getelementptr inbounds %struct.block_device, ptr %35, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %bd_device62, ptr noundef nonnull @.str.81, ptr noundef %where) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then44, %if.end38.sw.epilog_crit_edge, %if.then19, %if.end17.sw.epilog_crit_edge, %rcu_read_unlock.exit.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drbd_insert_interval(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @w_send_read_req(ptr noundef, i32 noundef) #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @drbd_queue_work(ptr noundef %q, ptr noundef %w) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %q_lock = getelementptr inbounds %struct.drbd_work_queue, ptr %q, i32 0, i32 1
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %q_lock) #9
  %prev.i = getelementptr inbounds %struct.list_head, ptr %q, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %w, ptr noundef %1, ptr noundef %q) #9
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %w, ptr %prev.i, align 4
  %3 = ptrtoint ptr %w to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %q, ptr %w, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %w, i32 0, i32 1
  %4 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev3.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %w, ptr %1, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %q_lock, i32 noundef %call2) #9
  %q_wait = getelementptr inbounds %struct.drbd_work_queue, ptr %q, i32 0, i32 2
  tail call void @__wake_up(ptr noundef %q_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @w_send_dblock(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @w_send_out_of_sync(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @w_restart_disk_io(ptr noundef, i32 noundef) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @drbd_should_do_remote([1 x i32] %s.coerce) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %s.coerce.fca.0.extract = extractvalue [1 x i32] %s.coerce, 0
  %bf.lshr = lshr i32 %s.coerce.fca.0.extract, 13
  %bf.clear = and i32 %bf.lshr, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %bf.clear)
  %cmp = icmp eq i32 %bf.clear, 8
  br i1 %cmp, label %entry.lor.end_crit_edge, label %lor.rhs

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end

lor.rhs:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %bf.clear)
  %cmp5 = icmp ugt i32 %bf.clear, 3
  br i1 %cmp5, label %land.lhs.true, label %lor.rhs.lor.end_crit_edge

lor.rhs.lor.end_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end

land.lhs.true:                                    ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  %bf.lshr7 = lshr i32 %s.coerce.fca.0.extract, 4
  %bf.clear8 = and i32 %bf.lshr7, 31
  %0 = add nsw i32 %bf.clear8, -14
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %0)
  %1 = icmp ult i32 %0, 8
  br label %lor.end

lor.end:                                          ; preds = %land.lhs.true, %lor.rhs.lor.end_crit_edge, %entry.lor.end_crit_edge
  %2 = phi i1 [ true, %entry.lor.end_crit_edge ], [ false, %lor.rhs.lor.end_crit_edge ], [ %1, %land.lhs.true ]
  ret i1 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__drbd_make_request(ptr noundef %device, ptr noundef %bio) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_opf.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %0 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bi_opf.i, align 8
  %and.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  %call.i.i = tail call noalias ptr @mempool_alloc(ptr noundef nonnull @drbd_request_mempool, i32 noundef 3072) #9
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @dec_ap_bio(ptr noundef %device) #9
  %vdisk.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %2 = ptrtoint ptr %vdisk.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdisk.i, align 4
  %part0.i = getelementptr inbounds %struct.gendisk, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %part0.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %part0.i, align 4
  %bd_device.i = getelementptr inbounds %struct.block_device, ptr %5, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %bd_device.i, ptr noundef nonnull @.str.83) #12
  %bi_status.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 6
  %6 = ptrtoint ptr %bi_status.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 9, ptr %bi_status.i, align 2
  tail call void @bio_endio(ptr noundef %bio) #9
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %7 = call ptr @memset(ptr %call.i.i, i32 0, i32 144)
  %call1.i.i = tail call ptr @bio_clone_fast(ptr noundef %bio, i32 noundef 3072, ptr noundef nonnull @drbd_io_bio_set) #9
  %private_bio.i.i = getelementptr inbounds %struct.drbd_request, ptr %call.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %private_bio.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call1.i.i, ptr %private_bio.i.i, align 8
  %bi_private.i.i = getelementptr inbounds %struct.bio, ptr %call1.i.i, i32 0, i32 11
  %9 = ptrtoint ptr %bi_private.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i.i, ptr %bi_private.i.i, align 4
  %10 = load ptr, ptr %private_bio.i.i, align 8
  %bi_end_io.i.i = getelementptr inbounds %struct.bio, ptr %10, i32 0, i32 10
  %11 = ptrtoint ptr %bi_end_io.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @drbd_request_endio, ptr %bi_end_io.i.i, align 8
  %12 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bi_opf.i, align 8
  %and.i55.i = and i32 %13, 255
  %and.i.i.i = shl i32 %13, 11
  %14 = and i32 %and.i.i.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %and.i55.i)
  %cmp8.i.i = icmp eq i32 %and.i55.i, 7
  %cond9.i.i = select i1 %cmp8.i.i, i32 4096, i32 0
  %or.i.i = or i32 %cond9.i.i, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %and.i55.i)
  %cmp12.i.i = icmp eq i32 %and.i55.i, 9
  %cond13.i.i = select i1 %cmp12.i.i, i32 16384, i32 0
  %or14.i.i = or i32 %or.i.i, %cond13.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i55.i)
  %cmp17.i.i = icmp eq i32 %and.i55.i, 3
  %cond18.i.i = select i1 %cmp17.i.i, i32 8192, i32 0
  %or19.i.i = or i32 %or14.i.i, %cond18.i.i
  %rq_state.i.i = getelementptr inbounds %struct.drbd_request, ptr %call.i.i, i32 0, i32 17
  %15 = ptrtoint ptr %rq_state.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or19.i.i, ptr %rq_state.i.i, align 8
  %device20.i.i = getelementptr inbounds %struct.drbd_request, ptr %call.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %device20.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %device, ptr %device20.i.i, align 4
  %master_bio.i.i = getelementptr inbounds %struct.drbd_request, ptr %call.i.i, i32 0, i32 6
  %17 = ptrtoint ptr %master_bio.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %bio, ptr %master_bio.i.i, align 4
  %epoch.i.i = getelementptr inbounds %struct.drbd_request, ptr %call.i.i, i32 0, i32 4
  %18 = ptrtoint ptr %epoch.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %epoch.i.i, align 8
  %i.i.i = getelementptr inbounds %struct.drbd_request, ptr %call.i.i, i32 0, i32 3
  %19 = ptrtoint ptr %i.i.i to i32
  %20 = ptrtoint ptr %i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %i.i.i, align 8
  %bi_iter.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8
  %21 = ptrtoint ptr %bi_iter.i.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %bi_iter.i.i, align 8
  %sector.i.i = getelementptr inbounds %struct.drbd_request, ptr %call.i.i, i32 0, i32 3, i32 1
  %23 = ptrtoint ptr %sector.i.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %sector.i.i, align 8
  %bi_size.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 1
  %24 = ptrtoint ptr %bi_size.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bi_size.i.i, align 8
  %size.i.i = getelementptr inbounds %struct.drbd_request, ptr %call.i.i, i32 0, i32 3, i32 2
  %26 = ptrtoint ptr %size.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %size.i.i, align 8
  %local.i.i = getelementptr inbounds %struct.drbd_request, ptr %call.i.i, i32 0, i32 3, i32 4
  %27 = ptrtoint ptr %local.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load.i.i = load i8, ptr %local.i.i, align 8
  %bf.set.i.i = and i8 %bf.load.i.i, 63
  %bf.clear27.i.i = or i8 %bf.set.i.i, -128
  store i8 %bf.clear27.i.i, ptr %local.i.i, align 8
  %tl_requests.i.i = getelementptr inbounds %struct.drbd_request, ptr %call.i.i, i32 0, i32 5
  %28 = ptrtoint ptr %tl_requests.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %tl_requests.i.i, ptr %tl_requests.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.drbd_request, ptr %call.i.i, i32 0, i32 5, i32 1
  %29 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %tl_requests.i.i, ptr %prev.i.i.i, align 4
  %30 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %call.i.i, ptr %call.i.i, align 4
  %prev.i57.i.i = getelementptr inbounds %struct.list_head, ptr %call.i.i, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i57.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i.i, ptr %prev.i57.i.i, align 4
  %req_pending_master_completion.i.i = getelementptr inbounds %struct.drbd_request, ptr %call.i.i, i32 0, i32 7
  %32 = ptrtoint ptr %req_pending_master_completion.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %req_pending_master_completion.i.i, ptr %req_pending_master_completion.i.i, align 4
  %prev.i58.i.i = getelementptr inbounds %struct.drbd_request, ptr %call.i.i, i32 0, i32 7, i32 1
  %33 = ptrtoint ptr %prev.i58.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %req_pending_master_completion.i.i, ptr %prev.i58.i.i, align 4
  %req_pending_local.i.i = getelementptr inbounds %struct.drbd_request, ptr %call.i.i, i32 0, i32 8
  %34 = ptrtoint ptr %req_pending_local.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %req_pending_local.i.i, ptr %req_pending_local.i.i, align 4
  %prev.i59.i.i = getelementptr inbounds %struct.drbd_request, ptr %call.i.i, i32 0, i32 8, i32 1
  %35 = ptrtoint ptr %prev.i59.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %req_pending_local.i.i, ptr %prev.i59.i.i, align 4
  %completion_ref.i.i = getelementptr inbounds %struct.drbd_request, ptr %call.i.i, i32 0, i32 15
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %completion_ref.i.i, i32 noundef 4) #9
  %36 = ptrtoint ptr %completion_ref.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile i32 1, ptr %completion_ref.i.i, align 4
  %kref.i.i = getelementptr inbounds %struct.drbd_request, ptr %call.i.i, i32 0, i32 16
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i.i, i32 noundef 4) #9
  %37 = ptrtoint ptr %kref.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile i32 1, ptr %kref.i.i, align 4
  %38 = ptrtoint ptr %master_bio.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %master_bio.i.i, align 4
  %call3.i = tail call i32 @bio_start_io_acct(ptr noundef %39) #9
  %start_jif.i = getelementptr inbounds %struct.drbd_request, ptr %call.i.i, i32 0, i32 9
  %40 = ptrtoint ptr %start_jif.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %call3.i, ptr %start_jif.i, align 8
  %state.i.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 27
  %41 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %bf.load.i56.i = load i32, ptr %state.i.i, align 8
  %42 = and i32 %bf.load.i56.i, 7680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp.i.i = icmp eq i32 %42, 0
  br i1 %cmp.i.i, label %if.end.i.if.then7.i_crit_edge, label %if.end.i58.i

if.end.i.if.then7.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then7.i

if.end.i58.i:                                     ; preds = %if.end.i
  %local_cnt.i.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 41
  %call.i.i.i57.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %local_cnt.i.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %local_cnt.i.i, i32 1, i32 3, i32 1) #9
  %43 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %local_cnt.i.i, ptr %local_cnt.i.i, i32 1, ptr elementtype(i32) %local_cnt.i.i) #9, !srcloc !221
  %44 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %bf.load2.i.i = load i32, ptr %state.i.i, align 8
  %45 = and i32 %bf.load2.i.i, 6144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp5.not.i.i = icmp eq i32 %45, 0
  br i1 %cmp5.not.i.i, label %if.then6.i.i, label %if.end.i58.i.if.end9.i_crit_edge

if.end.i58.i.if.end9.i_crit_edge:                 ; preds = %if.end.i58.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9.i

if.then6.i.i:                                     ; preds = %if.end.i58.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @put_ldev(ptr noundef %device) #9
  br label %if.then7.i

if.then7.i:                                       ; preds = %if.then6.i.i, %if.end.i.if.then7.i_crit_edge
  %46 = ptrtoint ptr %private_bio.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %private_bio.i.i, align 8
  tail call void @bio_put(ptr noundef %47) #9
  %48 = ptrtoint ptr %private_bio.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %private_bio.i.i, align 8
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then7.i, %if.end.i58.i.if.end9.i_crit_edge
  %49 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %bi_opf.i, align 8
  %trunc.i = trunc i32 %50 to i8
  %51 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.113)
  switch i8 %trunc.i, label %if.end16.i [
    i8 9, label %if.end9.i.queue_for_submitter_thread.i_crit_edge
    i8 3, label %if.end9.i.queue_for_submitter_thread.i_crit_edge8
  ]

if.end9.i.queue_for_submitter_thread.i_crit_edge8: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %queue_for_submitter_thread.i

if.end9.i.queue_for_submitter_thread.i_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %queue_for_submitter_thread.i

if.end16.i:                                       ; preds = %if.end9.i
  br i1 %tobool.i.not.i, label %if.end16.i.drbd_request_prepare.exit_crit_edge, label %land.lhs.true.i

if.end16.i.drbd_request_prepare.exit_crit_edge:   ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %drbd_request_prepare.exit

land.lhs.true.i:                                  ; preds = %if.end16.i
  %52 = ptrtoint ptr %private_bio.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %private_bio.i.i, align 8
  %tobool19.not.i = icmp eq ptr %53, null
  br i1 %tobool19.not.i, label %land.lhs.true.i.drbd_request_prepare.exit_crit_edge, label %land.lhs.true20.i

land.lhs.true.i.drbd_request_prepare.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %drbd_request_prepare.exit

land.lhs.true20.i:                                ; preds = %land.lhs.true.i
  %54 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %size.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool21.not.i = icmp eq i32 %55, 0
  br i1 %tobool21.not.i, label %land.lhs.true20.i.drbd_request_prepare.exit_crit_edge, label %land.lhs.true22.i

land.lhs.true20.i.drbd_request_prepare.exit_crit_edge: ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %drbd_request_prepare.exit

land.lhs.true22.i:                                ; preds = %land.lhs.true20.i
  %flags.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 14
  %56 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %flags.i, align 4
  %58 = and i32 %57, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool24.not.i = icmp eq i32 %58, 0
  br i1 %tobool24.not.i, label %if.then25.i, label %land.lhs.true22.i.drbd_request_prepare.exit_crit_edge

land.lhs.true22.i.drbd_request_prepare.exit_crit_edge: ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %drbd_request_prepare.exit

if.then25.i:                                      ; preds = %land.lhs.true22.i
  %call27.i = tail call zeroext i1 @drbd_al_begin_io_fastpath(ptr noundef %device, ptr noundef %i.i.i) #9
  br i1 %call27.i, label %if.end29.i, label %if.then25.i.queue_for_submitter_thread.i_crit_edge

if.then25.i.queue_for_submitter_thread.i_crit_edge: ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %queue_for_submitter_thread.i

if.end29.i:                                       ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #11
  %59 = ptrtoint ptr %rq_state.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %rq_state.i.i, align 8
  %or.i = or i32 %60, 32768
  store i32 %or.i, ptr %rq_state.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %61 = load volatile i32, ptr @jiffies, align 128
  %in_actlog_jif.i = getelementptr inbounds %struct.drbd_request, ptr %call.i.i, i32 0, i32 10
  %62 = ptrtoint ptr %in_actlog_jif.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %in_actlog_jif.i, align 4
  br label %drbd_request_prepare.exit

queue_for_submitter_thread.i:                     ; preds = %if.then25.i.queue_for_submitter_thread.i_crit_edge, %if.end9.i.queue_for_submitter_thread.i_crit_edge, %if.end9.i.queue_for_submitter_thread.i_crit_edge8
  %ap_actlog_cnt.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 37
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ap_actlog_cnt.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %ap_actlog_cnt.i, i32 1, i32 3, i32 1) #9
  %63 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ap_actlog_cnt.i, ptr %ap_actlog_cnt.i, i32 1, ptr elementtype(i32) %ap_actlog_cnt.i) #9, !srcloc !221
  %64 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %device, align 8
  %req_lock.i.i = getelementptr inbounds %struct.drbd_resource, ptr %65, i32 0, i32 12
  tail call void @_raw_spin_lock_irq(ptr noundef %req_lock.i.i) #9
  %writes.i.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 106, i32 2
  %prev.i.i60.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 106, i32 2, i32 1
  %66 = ptrtoint ptr %prev.i.i60.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %prev.i.i60.i, align 4
  %call.i.i.i61.i = tail call zeroext i1 @__list_add_valid(ptr noundef %tl_requests.i.i, ptr noundef %67, ptr noundef %writes.i.i) #9
  br i1 %call.i.i.i61.i, label %if.end.i.i.i.i, label %queue_for_submitter_thread.i.list_add_tail.exit.i.i_crit_edge

queue_for_submitter_thread.i.list_add_tail.exit.i.i_crit_edge: ; preds = %queue_for_submitter_thread.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit.i.i

if.end.i.i.i.i:                                   ; preds = %queue_for_submitter_thread.i
  call void @__sanitizer_cov_trace_pc() #11
  %68 = ptrtoint ptr %prev.i.i60.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %tl_requests.i.i, ptr %prev.i.i60.i, align 4
  %69 = ptrtoint ptr %tl_requests.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %writes.i.i, ptr %tl_requests.i.i, align 4
  %70 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %67, ptr %prev.i.i.i, align 4
  %71 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile ptr %tl_requests.i.i, ptr %67, align 4
  br label %list_add_tail.exit.i.i

list_add_tail.exit.i.i:                           ; preds = %if.end.i.i.i.i, %queue_for_submitter_thread.i.list_add_tail.exit.i.i_crit_edge
  %arrayidx.i.i = getelementptr %struct.drbd_device, ptr %device, i32 0, i32 45, i32 1
  %prev.i12.i.i = getelementptr %struct.drbd_device, ptr %device, i32 0, i32 45, i32 1, i32 1
  %72 = ptrtoint ptr %prev.i12.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %prev.i12.i.i, align 4
  %call.i.i13.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %req_pending_master_completion.i.i, ptr noundef %73, ptr noundef %arrayidx.i.i) #9
  br i1 %call.i.i13.i.i, label %if.end.i.i15.i.i, label %list_add_tail.exit.i.i.drbd_queue_write.exit.i_crit_edge

list_add_tail.exit.i.i.drbd_queue_write.exit.i_crit_edge: ; preds = %list_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %drbd_queue_write.exit.i

if.end.i.i15.i.i:                                 ; preds = %list_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %74 = ptrtoint ptr %prev.i12.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %req_pending_master_completion.i.i, ptr %prev.i12.i.i, align 4
  %75 = ptrtoint ptr %req_pending_master_completion.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %arrayidx.i.i, ptr %req_pending_master_completion.i.i, align 4
  %76 = ptrtoint ptr %prev.i58.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %73, ptr %prev.i58.i.i, align 4
  %77 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile ptr %req_pending_master_completion.i.i, ptr %73, align 4
  br label %drbd_queue_write.exit.i

drbd_queue_write.exit.i:                          ; preds = %if.end.i.i15.i.i, %list_add_tail.exit.i.i.drbd_queue_write.exit.i_crit_edge
  %submit.i.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 106
  %78 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %device, align 8
  %req_lock2.i.i = getelementptr inbounds %struct.drbd_resource, ptr %79, i32 0, i32 12
  tail call void @_raw_spin_unlock_irq(ptr noundef %req_lock2.i.i) #9
  %80 = ptrtoint ptr %submit.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %submit.i.i, align 4
  %worker.i.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 106, i32 1
  %call.i.i63.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %81, ptr noundef %worker.i.i) #9
  %al_wait.i.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 82
  tail call void @__wake_up(ptr noundef %al_wait.i.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %cleanup

drbd_request_prepare.exit:                        ; preds = %if.end29.i, %land.lhs.true22.i.drbd_request_prepare.exit_crit_edge, %land.lhs.true20.i.drbd_request_prepare.exit_crit_edge, %land.lhs.true.i.drbd_request_prepare.exit_crit_edge, %if.end16.i.drbd_request_prepare.exit_crit_edge
  %cmp.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %drbd_request_prepare.exit.cleanup_crit_edge, label %if.end

drbd_request_prepare.exit.cleanup_crit_edge:      ; preds = %drbd_request_prepare.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %drbd_request_prepare.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @drbd_send_and_submit(ptr noundef %device, ptr noundef nonnull %call.i.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %drbd_request_prepare.exit.cleanup_crit_edge, %drbd_queue_write.exit.i, %if.then.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @drbd_send_and_submit(ptr noundef %device, ptr noundef %req) unnamed_addr #0 align 64 {
entry:
  %m.i233 = alloca %struct.bio_and_error, align 4
  %m.i210 = alloca %struct.bio_and_error, align 4
  %m.i = alloca %struct.bio_and_error, align 4
  %m.i86.i = alloca %struct.bio_and_error, align 4
  %m.i78.i = alloca %struct.bio_and_error, align 4
  %m.i.i = alloca %struct.bio_and_error, align 4
  %wait.i = alloca %struct.wait_queue_entry, align 4
  %m = alloca %struct.bio_and_error, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 8
  %master_bio = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 6
  %2 = ptrtoint ptr %master_bio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master_bio, align 4
  %bi_opf = getelementptr inbounds %struct.bio, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bi_opf, align 8
  %and.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %m) #9
  %6 = ptrtoint ptr %m to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 0, ptr %m, align 8
  %req_lock = getelementptr inbounds %struct.drbd_resource, ptr %1, i32 0, i32 12
  tail call void @_raw_spin_lock_irq(ptr noundef %req_lock) #9
  br i1 %tobool.i.not, label %if.end.thread, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait.i) #9
  %7 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 1
  %8 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 2
  %9 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 3
  %10 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 3, i32 1
  %11 = ptrtoint ptr %wait.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %wait.i, align 4
  %12 = tail call i32 @llvm.read_register.i32(metadata !211) #9
  %and.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task.i, align 8
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %7, align 4
  %17 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @autoremove_wake_function, ptr %8, align 4
  %18 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %9, ptr %9, align 4
  %19 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %9, ptr %10, align 4
  %device4.i = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 1
  %20 = ptrtoint ptr %device4.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %device4.i, align 4
  %sector6.i = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 3, i32 1
  %22 = ptrtoint ptr %sector6.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %sector6.i, align 8
  %size8.i = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 3, i32 2
  %24 = ptrtoint ptr %size8.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %size8.i, align 8
  %write_requests.i = getelementptr inbounds %struct.drbd_device, ptr %21, i32 0, i32 44
  %call936.i = call ptr @drbd_find_overlap(ptr noundef %write_requests.i, i64 noundef %23, i32 noundef %25) #9
  %tobool.not3437.i = icmp eq ptr %call936.i, null
  br i1 %tobool.not3437.i, label %if.then.complete_conflicting_writes.exit_crit_edge, label %for.body.lr.ph.lr.ph.i

if.then.complete_conflicting_writes.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %complete_conflicting_writes.exit

for.body.lr.ph.lr.ph.i:                           ; preds = %if.then
  %misc_wait.i = getelementptr inbounds %struct.drbd_device, ptr %21, i32 0, i32 28
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.backedge, %for.body.lr.ph.lr.ph.i
  %i.035.i = phi ptr [ %call936.i, %for.body.lr.ph.lr.ph.i ], [ %i.035.i.be, %for.body.i.backedge ]
  %completed.i = getelementptr inbounds %struct.drbd_interval, ptr %i.035.i, i32 0, i32 4
  %26 = ptrtoint ptr %completed.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load.i = load i8, ptr %completed.i, align 8
  %27 = and i8 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool11.not.i = icmp eq i8 %27, 0
  br i1 %tobool11.not.i, label %if.end15.critedge.i, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %call12.i = call ptr @drbd_next_overlap(ptr noundef nonnull %i.035.i, i64 noundef %23, i32 noundef %25) #9
  %tobool.not.i = icmp eq ptr %call12.i, null
  br i1 %tobool.not.i, label %for.inc.i.complete_conflicting_writes.exit_crit_edge, label %for.inc.i.for.body.i.backedge_crit_edge

for.inc.i.for.body.i.backedge_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.backedge

for.inc.i.complete_conflicting_writes.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %complete_conflicting_writes.exit

for.body.i.backedge:                              ; preds = %if.end15.critedge.i.for.body.i.backedge_crit_edge, %for.inc.i.for.body.i.backedge_crit_edge
  %i.035.i.be = phi ptr [ %call12.i, %for.inc.i.for.body.i.backedge_crit_edge ], [ %call9.i, %if.end15.critedge.i.for.body.i.backedge_crit_edge ]
  br label %for.body.i

if.end15.critedge.i:                              ; preds = %for.body.i
  %completed.i.le = getelementptr inbounds %struct.drbd_interval, ptr %i.035.i, i32 0, i32 4
  call void @prepare_to_wait(ptr noundef %misc_wait.i, ptr noundef nonnull %wait.i, i32 noundef 2) #9
  %28 = ptrtoint ptr %completed.i.le to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load16.i = load i8, ptr %completed.i.le, align 8
  %bf.set.i = or i8 %bf.load16.i, 64
  store i8 %bf.set.i, ptr %completed.i.le, align 8
  %29 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %21, align 8
  %req_lock.i = getelementptr inbounds %struct.drbd_resource, ptr %30, i32 0, i32 12
  call void @_raw_spin_unlock_irq(ptr noundef %req_lock.i) #9
  call void @schedule() #9
  %31 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %21, align 8
  %req_lock19.i = getelementptr inbounds %struct.drbd_resource, ptr %32, i32 0, i32 12
  call void @_raw_spin_lock_irq(ptr noundef %req_lock19.i) #9
  %call9.i = call ptr @drbd_find_overlap(ptr noundef %write_requests.i, i64 noundef %23, i32 noundef %25) #9
  %tobool.not34.i = icmp eq ptr %call9.i, null
  br i1 %tobool.not34.i, label %if.end15.critedge.i.complete_conflicting_writes.exit_crit_edge, label %if.end15.critedge.i.for.body.i.backedge_crit_edge

if.end15.critedge.i.for.body.i.backedge_crit_edge: ; preds = %if.end15.critedge.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.backedge

if.end15.critedge.i.complete_conflicting_writes.exit_crit_edge: ; preds = %if.end15.critedge.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %complete_conflicting_writes.exit

complete_conflicting_writes.exit:                 ; preds = %if.end15.critedge.i.complete_conflicting_writes.exit_crit_edge, %for.inc.i.complete_conflicting_writes.exit_crit_edge, %if.then.complete_conflicting_writes.exit_crit_edge
  %misc_wait21.i = getelementptr inbounds %struct.drbd_device, ptr %21, i32 0, i32 28
  call void @finish_wait(ptr noundef %misc_wait21.i, ptr noundef nonnull %wait.i) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait.i) #9
  %peer_devices.i.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 1
  %33 = ptrtoint ptr %peer_devices.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %peer_devices.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %34, %peer_devices.i.i
  %spec.select.i.i = select i1 %cmp.not.i.i, ptr null, ptr %34
  %connection1.i = getelementptr inbounds %struct.drbd_peer_device, ptr %spec.select.i.i, i32 0, i32 2
  %35 = ptrtoint ptr %connection1.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %connection1.i, align 4
  %37 = call i32 @llvm.read_register.i32(metadata !211) #9
  %and.i.i.i.i.i.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %40, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !225
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i.i146 = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i.i146, label %complete_conflicting_writes.exit.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

complete_conflicting_writes.exit.rcu_read_lock.exit.i_crit_edge: ; preds = %complete_conflicting_writes.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %complete_conflicting_writes.exit
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.62, i32 noundef 696, ptr noundef nonnull @.str.63) #9
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %complete_conflicting_writes.exit.rcu_read_lock.exit.i_crit_edge
  %net_conf.i = getelementptr inbounds %struct.drbd_connection, ptr %36, i32 0, i32 11
  %41 = ptrtoint ptr %net_conf.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile ptr, ptr %net_conf.i, align 4
  %call3.i = call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i147 = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i147, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end9.i_crit_edge

rcu_read_lock.exit.i.do.end9.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call4.i = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i.do.end9.i_crit_edge, label %land.lhs.true6.i

land.lhs.true.i.do.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %.b99.i = load i1, ptr @maybe_pull_ahead.__warned, align 1
  br i1 %.b99.i, label %land.lhs.true6.i.do.end9.i_crit_edge, label %if.then.i

land.lhs.true6.i.do.end9.i_crit_edge:             ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9.i

if.then.i:                                        ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @maybe_pull_ahead.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 983, ptr noundef nonnull @.str.17) #9
  br label %do.end9.i

do.end9.i:                                        ; preds = %if.then.i, %land.lhs.true6.i.do.end9.i_crit_edge, %land.lhs.true.i.do.end9.i_crit_edge, %rcu_read_lock.exit.i.do.end9.i_crit_edge
  %tobool11.not.i148 = icmp eq ptr %42, null
  br i1 %tobool11.not.i148, label %do.end9.i.cond.end.i_crit_edge, label %cond.true.i

do.end9.i.cond.end.i_crit_edge:                   ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i

cond.true.i:                                      ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  %on_congestion12.i = getelementptr inbounds %struct.net_conf, ptr %42, i32 0, i32 25
  %43 = ptrtoint ptr %on_congestion12.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %on_congestion12.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %do.end9.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %44, %cond.true.i ], [ 0, %do.end9.i.cond.end.i_crit_edge ]
  %call.i100.i = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i100.i, label %cond.end.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i103.i

cond.end.i.rcu_read_unlock.exit.i_crit_edge:      ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i

land.lhs.true.i103.i:                             ; preds = %cond.end.i
  %call1.i101.i = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i101.i)
  %tobool.not.i102.i = icmp eq i32 %call1.i101.i, 0
  br i1 %tobool.not.i102.i, label %land.lhs.true.i103.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i105.i

land.lhs.true.i103.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i103.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i105.i:                            ; preds = %land.lhs.true.i103.i
  %.b4.i104.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i104.i, label %land.lhs.true2.i105.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i106.i

land.lhs.true2.i105.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i105.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i

if.then.i106.i:                                   ; preds = %land.lhs.true2.i105.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.62, i32 noundef 724, ptr noundef nonnull @.str.64) #9
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i106.i, %land.lhs.true2.i105.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i103.i.rcu_read_unlock.exit.i_crit_edge, %cond.end.i.rcu_read_unlock.exit.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !226
  %45 = call i32 @llvm.read_register.i32(metadata !211) #9
  %and.i.i.i.i.i107.i = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i.i.i107.i to ptr
  %preempt_count.i.i.i.i108.i = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %preempt_count.i.i.i.i108.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %preempt_count.i.i.i.i108.i, align 4
  %sub.i.i.i.i = add i32 %48, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i108.i, align 4
  call void @rcu_read_unlock_strict() #9
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %cmp.i = icmp eq i32 %cond.i, 0
  br i1 %cmp.i, label %rcu_read_unlock.exit.i.if.end_crit_edge, label %lor.lhs.false.i

rcu_read_unlock.exit.i.if.end_crit_edge:          ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

lor.lhs.false.i:                                  ; preds = %rcu_read_unlock.exit.i
  %agreed_pro_version.i = getelementptr inbounds %struct.drbd_connection, ptr %36, i32 0, i32 19
  %49 = ptrtoint ptr %agreed_pro_version.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %agreed_pro_version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %50)
  %cmp13.i = icmp slt i32 %50, 96
  br i1 %cmp13.i, label %lor.lhs.false.i.if.end_crit_edge, label %if.end15.i

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end15.i:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cond.i)
  %cmp16.i = icmp eq i32 %cond.i, 1
  br i1 %cmp16.i, label %land.lhs.true17.i, label %if.end15.i.if.end20.i_crit_edge

if.end15.i.if.end20.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i

land.lhs.true17.i:                                ; preds = %if.end15.i
  %state.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 27
  %51 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %bf.load.i149 = load i32, ptr %state.i, align 8
  %52 = and i32 %bf.load.i149, 496
  call void @__sanitizer_cov_trace_const_cmp4(i32 352, i32 %52)
  %cmp18.i = icmp eq i32 %52, 352
  br i1 %cmp18.i, label %land.lhs.true17.i.if.end_crit_edge, label %land.lhs.true17.i.if.end20.i_crit_edge

land.lhs.true17.i.if.end20.i_crit_edge:           ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i

land.lhs.true17.i.if.end_crit_edge:               ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end20.i:                                       ; preds = %land.lhs.true17.i.if.end20.i_crit_edge, %if.end15.i.if.end20.i_crit_edge
  %state.i.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 27
  %53 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %bf.load.i.i = load i32, ptr %state.i.i, align 8
  %54 = and i32 %bf.load.i.i, 7680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp.i.i = icmp eq i32 %54, 0
  br i1 %cmp.i.i, label %if.end20.i.if.end_crit_edge, label %if.end.i.i

if.end20.i.if.end_crit_edge:                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i.i:                                       ; preds = %if.end20.i
  %local_cnt.i.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 41
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %local_cnt.i.i, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %local_cnt.i.i, i32 1, i32 3, i32 1) #9
  %55 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %local_cnt.i.i, ptr %local_cnt.i.i, i32 1, ptr elementtype(i32) %local_cnt.i.i) #9, !srcloc !221
  %56 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %bf.load2.i.i = load i32, ptr %state.i.i, align 8
  %57 = and i32 %bf.load2.i.i, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp5.not.i.not.not.i = icmp eq i32 %57, 0
  br i1 %cmp5.not.i.not.not.i, label %if.end.i.i.if.end.sink.split_crit_edge, label %if.end28.i

if.end.i.i.if.end.sink.split_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.sink.split

if.end28.i:                                       ; preds = %if.end.i.i
  %cong_fill.i = getelementptr inbounds %struct.net_conf, ptr %42, i32 0, i32 26
  %58 = ptrtoint ptr %cong_fill.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %cong_fill.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool29.not.i = icmp eq i32 %59, 0
  br i1 %tobool29.not.i, label %if.end28.i.if.end38.i_crit_edge, label %land.lhs.true30.i

if.end28.i.if.end38.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38.i

land.lhs.true30.i:                                ; preds = %if.end28.i
  %ap_in_flight.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 103
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %ap_in_flight.i, i32 noundef 4) #9
  %60 = ptrtoint ptr %ap_in_flight.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %ap_in_flight.i, align 4
  %62 = ptrtoint ptr %cong_fill.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %cong_fill.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %63)
  %cmp33.not.i = icmp ult i32 %61, %63
  br i1 %cmp33.not.i, label %land.lhs.true30.i.if.end38.i_crit_edge, label %if.end38.thread.i

land.lhs.true30.i.if.end38.i_crit_edge:           ; preds = %land.lhs.true30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38.i

if.end38.i:                                       ; preds = %land.lhs.true30.i.if.end38.i_crit_edge, %if.end28.i.if.end38.i_crit_edge
  %act_log.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 83
  %64 = ptrtoint ptr %act_log.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %act_log.i, align 4
  %used.i = getelementptr inbounds %struct.lru_cache, ptr %65, i32 0, i32 10
  %66 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %used.i, align 4
  %cong_extents.i = getelementptr inbounds %struct.net_conf, ptr %42, i32 0, i32 27
  %68 = ptrtoint ptr %cong_extents.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %cong_extents.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %69)
  %cmp39.not.i = icmp ult i32 %67, %69
  br i1 %cmp39.not.i, label %if.end38.i.if.end.sink.split_crit_edge, label %if.end38.i.do.end43.i_crit_edge

if.end38.i.do.end43.i_crit_edge:                  ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end43.i

if.end38.i.if.end.sink.split_crit_edge:           ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.sink.split

if.end38.thread.i:                                ; preds = %land.lhs.true30.i
  %vdisk.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %70 = ptrtoint ptr %vdisk.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %vdisk.i, align 4
  %part0.i = getelementptr inbounds %struct.gendisk, ptr %71, i32 0, i32 7
  %72 = ptrtoint ptr %part0.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %part0.i, align 4
  %bd_device.i = getelementptr inbounds %struct.block_device, ptr %73, i32 0, i32 10
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.88, ptr noundef %bd_device.i, ptr noundef nonnull @.str.86) #12
  %act_log137.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 83
  %74 = ptrtoint ptr %act_log137.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %act_log137.i, align 4
  %used138.i = getelementptr inbounds %struct.lru_cache, ptr %75, i32 0, i32 10
  %76 = ptrtoint ptr %used138.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %used138.i, align 4
  %cong_extents139.i = getelementptr inbounds %struct.net_conf, ptr %42, i32 0, i32 27
  %78 = ptrtoint ptr %cong_extents139.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %cong_extents139.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %77, i32 %79)
  %cmp39.not140.i = icmp ult i32 %77, %79
  br i1 %cmp39.not140.i, label %if.end38.thread.i.if.then49.i_crit_edge, label %if.end38.thread.i.do.end43.i_crit_edge

if.end38.thread.i.do.end43.i_crit_edge:           ; preds = %if.end38.thread.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end43.i

if.end38.thread.i.if.then49.i_crit_edge:          ; preds = %if.end38.thread.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then49.i

do.end43.i:                                       ; preds = %if.end38.thread.i.do.end43.i_crit_edge, %if.end38.i.do.end43.i_crit_edge
  %vdisk44.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %80 = ptrtoint ptr %vdisk44.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %vdisk44.i, align 4
  %part045.i = getelementptr inbounds %struct.gendisk, ptr %81, i32 0, i32 7
  %82 = ptrtoint ptr %part045.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %part045.i, align 4
  %bd_device46.i = getelementptr inbounds %struct.block_device, ptr %83, i32 0, i32 10
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.88, ptr noundef %bd_device46.i, ptr noundef nonnull @.str.90) #12
  br label %if.then49.i

if.then49.i:                                      ; preds = %do.end43.i, %if.end38.thread.i.if.then49.i_crit_edge
  %84 = ptrtoint ptr %peer_devices.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile ptr, ptr %peer_devices.i.i, align 4
  %cmp.not.i110.i = icmp eq ptr %85, %peer_devices.i.i
  %spec.select.i111.i = select i1 %cmp.not.i110.i, ptr null, ptr %85
  %connection51.i = getelementptr inbounds %struct.drbd_peer_device, ptr %spec.select.i111.i, i32 0, i32 2
  %86 = ptrtoint ptr %connection51.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %connection51.i, align 4
  %current_tle_writes.i.i = getelementptr inbounds %struct.drbd_connection, ptr %87, i32 0, i32 35
  %88 = ptrtoint ptr %current_tle_writes.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %current_tle_writes.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %cmp.i112.i = icmp eq i32 %89, 0
  br i1 %cmp.i112.i, label %if.then49.i.start_new_tl_epoch.exit.i_crit_edge, label %if.end.i114.i

if.then49.i.start_new_tl_epoch.exit.i_crit_edge:  ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %start_new_tl_epoch.exit.i

if.end.i114.i:                                    ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #11
  %90 = ptrtoint ptr %current_tle_writes.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 0, ptr %current_tle_writes.i.i, align 4
  %current_tle_nr.i.i = getelementptr inbounds %struct.drbd_connection, ptr %87, i32 0, i32 34
  %call.i.i.i113.i = call zeroext i1 @__kasan_check_write(ptr noundef %current_tle_nr.i.i, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %current_tle_nr.i.i, i32 1, i32 3, i32 1) #9
  %91 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %current_tle_nr.i.i, ptr %current_tle_nr.i.i, i32 1, ptr elementtype(i32) %current_tle_nr.i.i) #9, !srcloc !221
  %q_wait.i.i.i = getelementptr inbounds %struct.drbd_connection, ptr %87, i32 0, i32 45, i32 2
  call void @__wake_up(ptr noundef %q_wait.i.i.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %start_new_tl_epoch.exit.i

start_new_tl_epoch.exit.i:                        ; preds = %if.end.i114.i, %if.then49.i.start_new_tl_epoch.exit.i_crit_edge
  %92 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %device, align 8
  %94 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %state.i.i, align 8
  %susp.i.i = getelementptr inbounds %struct.drbd_resource, ptr %93, i32 0, i32 13
  %96 = ptrtoint ptr %susp.i.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %bf.load.i116.i = load i8, ptr %susp.i.i, align 4
  %bf.lshr.i.i = lshr i8 %bf.load.i116.i, 7
  %bf.cast.i.i = zext i8 %bf.lshr.i.i to i32
  %bf.shl.i.i = shl nuw nsw i32 %bf.cast.i.i, 17
  %bf.clear.i.i = and i32 %95, -6423025
  %bf.set.i.i = or i32 %bf.shl.i.i, %bf.clear.i.i
  %bf.lshr4.i.i = lshr i8 %bf.load.i116.i, 6
  %bf.value8.i.i = zext i8 %bf.lshr4.i.i to i32
  %bf.shl9.i.i = shl nuw nsw i32 %bf.value8.i.i, 21
  %bf.lshr13.i.i = lshr i8 %bf.load.i116.i, 5
  %97 = and i8 %bf.lshr13.i.i, 1
  %bf.value17.i.i = zext i8 %97 to i32
  %bf.shl18.i.i = shl nuw nsw i32 %bf.value17.i.i, 22
  %bf.shl9.masked.i.i = and i32 %bf.shl9.i.i, 2097152
  %bf.clear19.i.i = or i32 %bf.set.i.i, %bf.shl9.masked.i.i
  %bf.set20.i.i = or i32 %bf.clear19.i.i, %bf.shl18.i.i
  %..i = select i1 %cmp16.i, i32 352, i32 16
  %bf.set.i150 = or i32 %bf.set20.i.i, %..i
  %.fca.0.insert79.i = insertvalue [1 x i32] poison, i32 %bf.set.i150, 0
  %call61.i = call i32 @_drbd_set_state(ptr noundef %device, [1 x i32] %.fca.0.insert79.i, i32 noundef 0, ptr noundef null) #9
  br label %if.end.sink.split

if.end.sink.split:                                ; preds = %start_new_tl_epoch.exit.i, %if.end38.i.if.end.sink.split_crit_edge, %if.end.i.i.if.end.sink.split_crit_edge
  call fastcc void @put_ldev(ptr noundef %device) #9
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %if.end20.i.if.end_crit_edge, %land.lhs.true17.i.if.end_crit_edge, %lor.lhs.false.i.if.end_crit_edge, %rcu_read_unlock.exit.i.if.end_crit_edge
  %98 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %device, align 8
  %susp.i = getelementptr inbounds %struct.drbd_resource, ptr %99, i32 0, i32 13
  %100 = ptrtoint ptr %susp.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %bf.load.i151 = load i8, ptr %susp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %bf.load.i151)
  %101 = icmp ult i8 %bf.load.i151, 32
  br i1 %101, label %if.end.if.end17_crit_edge, label %if.end.if.then3_crit_edge

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.end.thread:                                    ; preds = %entry
  %102 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %device, align 8
  %susp.i274 = getelementptr inbounds %struct.drbd_resource, ptr %103, i32 0, i32 13
  %104 = ptrtoint ptr %susp.i274 to i32
  call void @__asan_load1_noabort(i32 %104)
  %bf.load.i151275 = load i8, ptr %susp.i274, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %bf.load.i151275)
  %105 = icmp ult i8 %bf.load.i151275, 32
  br i1 %105, label %if.then11, label %if.end.thread.if.then3_crit_edge

if.end.thread.if.then3_crit_edge:                 ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3

if.then3:                                         ; preds = %if.end.thread.if.then3_crit_edge, %if.end.if.then3_crit_edge
  %rq_state = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 17
  %106 = ptrtoint ptr %rq_state to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %rq_state, align 8
  %or = or i32 %107, 131072
  store i32 %or, ptr %rq_state, align 8
  %private_bio = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 2
  %108 = ptrtoint ptr %private_bio to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %private_bio, align 8
  %tobool4.not = icmp eq ptr %109, null
  br i1 %tobool4.not, label %if.end92.critedge145, label %if.then5

if.then5:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  call void @bio_put(ptr noundef nonnull %109) #9
  %110 = ptrtoint ptr %private_bio to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr null, ptr %private_bio, align 8
  call fastcc void @put_ldev(ptr noundef %device)
  call fastcc void @drbd_req_put_completion_ref(ptr noundef %req, ptr noundef nonnull %m, i32 noundef 1)
  call void @_raw_spin_unlock_irq(ptr noundef %req_lock) #9
  br label %if.end92

if.then11:                                        ; preds = %if.end.thread
  %device1.i = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 1
  %111 = ptrtoint ptr %device1.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %device1.i, align 4
  %private_bio.i = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 2
  %113 = ptrtoint ptr %private_bio.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %private_bio.i, align 8
  %tobool.not.i152 = icmp eq ptr %114, null
  br i1 %tobool.not.i152, label %if.then11.if.end6.i_crit_edge, label %if.then.i157

if.then11.if.end6.i_crit_edge:                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.i

if.then.i157:                                     ; preds = %if.then11
  %sector.i = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 3, i32 1
  %115 = ptrtoint ptr %sector.i to i32
  call void @__asan_load8_noabort(i32 %115)
  %116 = load i64, ptr %sector.i, align 8
  %state.i.i153 = getelementptr inbounds %struct.drbd_device, ptr %112, i32 0, i32 27
  %117 = ptrtoint ptr %state.i.i153 to i32
  call void @__asan_load4_noabort(i32 %117)
  %bf.load.i.i154 = load i32, ptr %state.i.i153, align 8
  %bf.lshr.i.i155 = lshr i32 %bf.load.i.i154, 9
  %bf.clear.i.i156 = and i32 %bf.lshr.i.i155, 15
  %118 = zext i32 %bf.clear.i.i156 to i64
  call void @__sanitizer_cov_trace_switch(i64 %118, ptr @__sancov_gen_cov_switch_values.114)
  switch i32 %bf.clear.i.i156, label %if.then.i157.if.then3.i_crit_edge [
    i32 8, label %if.then.i157.if.end6.i_crit_edge
    i32 4, label %if.end7.i.i
  ]

if.then.i157.if.end6.i_crit_edge:                 ; preds = %if.then.i157
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.i

if.then.i157.if.then3.i_crit_edge:                ; preds = %if.then.i157
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3.i

if.end7.i.i:                                      ; preds = %if.then.i157
  %size.i = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 3, i32 2
  %119 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %size.i, align 8
  %shr.i.i = ashr i32 %120, 9
  %conv.i.i = sext i32 %shr.i.i to i64
  %add.i.i = add i64 %116, -1
  %sub.i.i = add i64 %add.i.i, %conv.i.i
  %vdisk.i.i = getelementptr inbounds %struct.drbd_device, ptr %112, i32 0, i32 18
  %121 = ptrtoint ptr %vdisk.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %vdisk.i.i, align 4
  %part0.i.i.i = getelementptr inbounds %struct.gendisk, ptr %122, i32 0, i32 7
  %123 = ptrtoint ptr %part0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %part0.i.i.i, align 4
  %bd_nr_sectors.i.i.i.i = getelementptr inbounds %struct.block_device, ptr %124, i32 0, i32 1
  %125 = ptrtoint ptr %bd_nr_sectors.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %125)
  %126 = load i64, ptr %bd_nr_sectors.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %126, i64 %116)
  %cmp8.i.i = icmp ugt i64 %126, %116
  br i1 %cmp8.i.i, label %if.end7.i.i.do.body16.i.i_crit_edge, label %do.end.i.i

if.end7.i.i.do.body16.i.i_crit_edge:              ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body16.i.i

do.end.i.i:                                       ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %bd_device.i.i = getelementptr inbounds %struct.block_device, ptr %124, i32 0, i32 10
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %bd_device.i.i, ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.2, i32 noundef 896) #12
  br label %do.body16.i.i

do.body16.i.i:                                    ; preds = %do.end.i.i, %if.end7.i.i.do.body16.i.i_crit_edge
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i.i, i64 %126)
  %cmp17.i.i = icmp ult i64 %sub.i.i, %126
  br i1 %cmp17.i.i, label %do.body16.i.i.drbd_may_do_local_read.exit.i_crit_edge, label %do.end22.i.i

do.body16.i.i.drbd_may_do_local_read.exit.i_crit_edge: ; preds = %do.body16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %drbd_may_do_local_read.exit.i

do.end22.i.i:                                     ; preds = %do.body16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %127 = ptrtoint ptr %vdisk.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %vdisk.i.i, align 4
  %part024.i.i = getelementptr inbounds %struct.gendisk, ptr %128, i32 0, i32 7
  %129 = ptrtoint ptr %part024.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %part024.i.i, align 4
  %bd_device25.i.i = getelementptr inbounds %struct.block_device, ptr %130, i32 0, i32 10
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %bd_device25.i.i, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.2, i32 noundef 897) #12
  br label %drbd_may_do_local_read.exit.i

drbd_may_do_local_read.exit.i:                    ; preds = %do.end22.i.i, %do.body16.i.i.drbd_may_do_local_read.exit.i_crit_edge
  %shr29.i.i = lshr i64 %116, 3
  %conv30.i.i = trunc i64 %shr29.i.i to i32
  %shr31.i.i = lshr i64 %sub.i.i, 3
  %conv32.i.i = trunc i64 %shr31.i.i to i32
  %call33.i.i = call i32 @drbd_bm_count_bits(ptr noundef %112, i32 noundef %conv30.i.i, i32 noundef %conv32.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i.i)
  %cmp34.i.i = icmp eq i32 %call33.i.i, 0
  br i1 %cmp34.i.i, label %drbd_may_do_local_read.exit.i.if.end6.i_crit_edge, label %drbd_may_do_local_read.exit.i.if.then3.i_crit_edge

drbd_may_do_local_read.exit.i.if.then3.i_crit_edge: ; preds = %drbd_may_do_local_read.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3.i

drbd_may_do_local_read.exit.i.if.end6.i_crit_edge: ; preds = %drbd_may_do_local_read.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.i

if.then3.i:                                       ; preds = %drbd_may_do_local_read.exit.i.if.then3.i_crit_edge, %if.then.i157.if.then3.i_crit_edge
  %131 = ptrtoint ptr %private_bio.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %private_bio.i, align 8
  call void @bio_put(ptr noundef %132) #9
  %133 = ptrtoint ptr %private_bio.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr null, ptr %private_bio.i, align 8
  call fastcc void @put_ldev(ptr noundef %112) #9
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then3.i, %drbd_may_do_local_read.exit.i.if.end6.i_crit_edge, %if.then.i157.if.end6.i_crit_edge, %if.then11.if.end6.i_crit_edge
  %state.i158 = getelementptr inbounds %struct.drbd_device, ptr %112, i32 0, i32 27
  %134 = ptrtoint ptr %state.i158 to i32
  call void @__asan_load4_noabort(i32 %134)
  %bf.load.i159 = load i32, ptr %state.i158, align 8
  %135 = and i32 %bf.load.i159, 122880
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %135)
  %cmp.not.i = icmp eq i32 %135, 65536
  br i1 %cmp.not.i, label %if.end8.i, label %if.end6.i.land.lhs.true_crit_edge

if.end6.i.land.lhs.true_crit_edge:                ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

if.end8.i:                                        ; preds = %if.end6.i
  %136 = ptrtoint ptr %private_bio.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %private_bio.i, align 8
  %cmp10.i = icmp eq ptr %137, null
  br i1 %cmp10.i, label %if.end8.i.if.end17_crit_edge, label %if.end12.i

if.end8.i.if.end17_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.end12.i:                                       ; preds = %if.end8.i
  %138 = call i32 @llvm.read_register.i32(metadata !211) #9
  %and.i.i.i.i.i.i160 = and i32 %138, -16384
  %139 = inttoptr i32 %and.i.i.i.i.i.i160 to ptr
  %preempt_count.i.i.i.i.i161 = getelementptr inbounds %struct.thread_info, ptr %139, i32 0, i32 1
  %140 = ptrtoint ptr %preempt_count.i.i.i.i.i161 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load volatile i32, ptr %preempt_count.i.i.i.i.i161, align 4
  %add.i.i.i.i162 = add i32 %141, 1
  store volatile i32 %add.i.i.i.i162, ptr %preempt_count.i.i.i.i.i161, align 4
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !225
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i.i163 = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i.i163, label %if.end12.i.rcu_read_lock.exit.i170_crit_edge, label %land.lhs.true.i.i166

if.end12.i.rcu_read_lock.exit.i170_crit_edge:     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i170

land.lhs.true.i.i166:                             ; preds = %if.end12.i
  %call1.i.i164 = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i164)
  %tobool.not.i.i165 = icmp eq i32 %call1.i.i164, 0
  br i1 %tobool.not.i.i165, label %land.lhs.true.i.i166.rcu_read_lock.exit.i170_crit_edge, label %land.lhs.true2.i.i168

land.lhs.true.i.i166.rcu_read_lock.exit.i170_crit_edge: ; preds = %land.lhs.true.i.i166
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i170

land.lhs.true2.i.i168:                            ; preds = %land.lhs.true.i.i166
  %.b4.i.i167 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i167, label %land.lhs.true2.i.i168.rcu_read_lock.exit.i170_crit_edge, label %if.then.i.i169

land.lhs.true2.i.i168.rcu_read_lock.exit.i170_crit_edge: ; preds = %land.lhs.true2.i.i168
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i170

if.then.i.i169:                                   ; preds = %land.lhs.true2.i.i168
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.62, i32 noundef 696, ptr noundef nonnull @.str.63) #9
  br label %rcu_read_lock.exit.i170

rcu_read_lock.exit.i170:                          ; preds = %if.then.i.i169, %land.lhs.true2.i.i168.rcu_read_lock.exit.i170_crit_edge, %land.lhs.true.i.i166.rcu_read_lock.exit.i170_crit_edge, %if.end12.i.rcu_read_lock.exit.i170_crit_edge
  %ldev.i = getelementptr inbounds %struct.drbd_device, ptr %112, i32 0, i32 15
  %142 = ptrtoint ptr %ldev.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %ldev.i, align 4
  %disk_conf.i = getelementptr inbounds %struct.drbd_backing_dev, ptr %143, i32 0, i32 3
  %144 = ptrtoint ptr %disk_conf.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load volatile ptr, ptr %disk_conf.i, align 8
  %call14.i = call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %land.lhs.true.i171, label %rcu_read_lock.exit.i170.do.end23.i_crit_edge

rcu_read_lock.exit.i170.do.end23.i_crit_edge:     ; preds = %rcu_read_lock.exit.i170
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end23.i

land.lhs.true.i171:                               ; preds = %rcu_read_lock.exit.i170
  %call16.i = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %land.lhs.true.i171.do.end23.i_crit_edge, label %land.lhs.true18.i

land.lhs.true.i171.do.end23.i_crit_edge:          ; preds = %land.lhs.true.i171
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end23.i

land.lhs.true18.i:                                ; preds = %land.lhs.true.i171
  %.b60.i = load i1, ptr @do_remote_read.__warned, align 1
  br i1 %.b60.i, label %land.lhs.true18.i.do.end23.i_crit_edge, label %if.then20.i

land.lhs.true18.i.do.end23.i_crit_edge:           ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end23.i

if.then20.i:                                      ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @do_remote_read.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1056, ptr noundef nonnull @.str.17) #9
  br label %do.end23.i

do.end23.i:                                       ; preds = %if.then20.i, %land.lhs.true18.i.do.end23.i_crit_edge, %land.lhs.true.i171.do.end23.i_crit_edge, %rcu_read_lock.exit.i170.do.end23.i_crit_edge
  %read_balancing.i = getelementptr inbounds %struct.disk_conf, ptr %145, i32 0, i32 18
  %146 = ptrtoint ptr %read_balancing.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %read_balancing.i, align 8
  %call.i61.i = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i61.i, label %do.end23.i.rcu_read_unlock.exit.i173_crit_edge, label %land.lhs.true.i64.i

do.end23.i.rcu_read_unlock.exit.i173_crit_edge:   ; preds = %do.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i173

land.lhs.true.i64.i:                              ; preds = %do.end23.i
  %call1.i62.i = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i62.i)
  %tobool.not.i63.i = icmp eq i32 %call1.i62.i, 0
  br i1 %tobool.not.i63.i, label %land.lhs.true.i64.i.rcu_read_unlock.exit.i173_crit_edge, label %land.lhs.true2.i66.i

land.lhs.true.i64.i.rcu_read_unlock.exit.i173_crit_edge: ; preds = %land.lhs.true.i64.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i173

land.lhs.true2.i66.i:                             ; preds = %land.lhs.true.i64.i
  %.b4.i65.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i65.i, label %land.lhs.true2.i66.i.rcu_read_unlock.exit.i173_crit_edge, label %if.then.i67.i

land.lhs.true2.i66.i.rcu_read_unlock.exit.i173_crit_edge: ; preds = %land.lhs.true2.i66.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i173

if.then.i67.i:                                    ; preds = %land.lhs.true2.i66.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.62, i32 noundef 724, ptr noundef nonnull @.str.64) #9
  br label %rcu_read_unlock.exit.i173

rcu_read_unlock.exit.i173:                        ; preds = %if.then.i67.i, %land.lhs.true2.i66.i.rcu_read_unlock.exit.i173_crit_edge, %land.lhs.true.i64.i.rcu_read_unlock.exit.i173_crit_edge, %do.end23.i.rcu_read_unlock.exit.i173_crit_edge
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !226
  %148 = call i32 @llvm.read_register.i32(metadata !211) #9
  %and.i.i.i.i.i68.i = and i32 %148, -16384
  %149 = inttoptr i32 %and.i.i.i.i.i68.i to ptr
  %preempt_count.i.i.i.i69.i = getelementptr inbounds %struct.thread_info, ptr %149, i32 0, i32 1
  %150 = ptrtoint ptr %preempt_count.i.i.i.i69.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load volatile i32, ptr %preempt_count.i.i.i.i69.i, align 4
  %sub.i.i.i.i172 = add i32 %151, -1
  store volatile i32 %sub.i.i.i.i172, ptr %preempt_count.i.i.i.i69.i, align 4
  call void @rcu_read_unlock_strict() #9
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  %152 = zext i32 %147 to i64
  call void @__sanitizer_cov_trace_switch(i64 %152, ptr @__sancov_gen_cov_switch_values.115)
  switch i32 %147, label %rcu_read_unlock.exit.i173.land.lhs.true_crit_edge [
    i32 1, label %rcu_read_unlock.exit.i173.if.then34.i_crit_edge
    i32 4, label %remote_due_to_read_balancing.exit.i
    i32 3, label %sw.bb1.i.i
    i32 5, label %rcu_read_unlock.exit.i173.sw.bb5.i.i_crit_edge
    i32 6, label %rcu_read_unlock.exit.i173.sw.bb5.i.i_crit_edge294
    i32 7, label %rcu_read_unlock.exit.i173.sw.bb5.i.i_crit_edge295
    i32 8, label %rcu_read_unlock.exit.i173.sw.bb5.i.i_crit_edge296
    i32 9, label %rcu_read_unlock.exit.i173.sw.bb5.i.i_crit_edge297
    i32 10, label %rcu_read_unlock.exit.i173.sw.bb5.i.i_crit_edge298
    i32 2, label %sw.bb9.i.i
  ]

rcu_read_unlock.exit.i173.sw.bb5.i.i_crit_edge298: ; preds = %rcu_read_unlock.exit.i173
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb5.i.i

rcu_read_unlock.exit.i173.sw.bb5.i.i_crit_edge297: ; preds = %rcu_read_unlock.exit.i173
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb5.i.i

rcu_read_unlock.exit.i173.sw.bb5.i.i_crit_edge296: ; preds = %rcu_read_unlock.exit.i173
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb5.i.i

rcu_read_unlock.exit.i173.sw.bb5.i.i_crit_edge295: ; preds = %rcu_read_unlock.exit.i173
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb5.i.i

rcu_read_unlock.exit.i173.sw.bb5.i.i_crit_edge294: ; preds = %rcu_read_unlock.exit.i173
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb5.i.i

rcu_read_unlock.exit.i173.sw.bb5.i.i_crit_edge:   ; preds = %rcu_read_unlock.exit.i173
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb5.i.i

rcu_read_unlock.exit.i173.if.then34.i_crit_edge:  ; preds = %rcu_read_unlock.exit.i173
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then34.i

rcu_read_unlock.exit.i173.land.lhs.true_crit_edge: ; preds = %rcu_read_unlock.exit.i173
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

sw.bb1.i.i:                                       ; preds = %rcu_read_unlock.exit.i173
  %local_cnt.i.i174 = getelementptr inbounds %struct.drbd_device, ptr %112, i32 0, i32 41
  %call.i.i.i.i175 = call zeroext i1 @__kasan_check_read(ptr noundef %local_cnt.i.i174, i32 noundef 4) #9
  %153 = ptrtoint ptr %local_cnt.i.i174 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load volatile i32, ptr %local_cnt.i.i174, align 4
  %ap_pending_cnt.i.i = getelementptr inbounds %struct.drbd_device, ptr %112, i32 0, i32 38
  %call.i.i19.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %ap_pending_cnt.i.i, i32 noundef 4) #9
  %155 = ptrtoint ptr %ap_pending_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load volatile i32, ptr %ap_pending_cnt.i.i, align 4
  %rs_pending_cnt.i.i = getelementptr inbounds %struct.drbd_device, ptr %112, i32 0, i32 39
  %call.i.i20.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %rs_pending_cnt.i.i, i32 noundef 4) #9
  %157 = ptrtoint ptr %rs_pending_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load volatile i32, ptr %rs_pending_cnt.i.i, align 4
  %add.i71.i = add i32 %158, %156
  call void @__sanitizer_cov_trace_cmp4(i32 %154, i32 %add.i71.i)
  %cmp.i.i176 = icmp sgt i32 %154, %add.i71.i
  br i1 %cmp.i.i176, label %sw.bb1.i.i.if.then34.i_crit_edge, label %sw.bb1.i.i.land.lhs.true_crit_edge

sw.bb1.i.i.land.lhs.true_crit_edge:               ; preds = %sw.bb1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

sw.bb1.i.i.if.then34.i_crit_edge:                 ; preds = %sw.bb1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then34.i

sw.bb5.i.i:                                       ; preds = %rcu_read_unlock.exit.i173.sw.bb5.i.i_crit_edge, %rcu_read_unlock.exit.i173.sw.bb5.i.i_crit_edge294, %rcu_read_unlock.exit.i173.sw.bb5.i.i_crit_edge295, %rcu_read_unlock.exit.i173.sw.bb5.i.i_crit_edge296, %rcu_read_unlock.exit.i173.sw.bb5.i.i_crit_edge297, %rcu_read_unlock.exit.i173.sw.bb5.i.i_crit_edge298
  %sector32.i = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 3, i32 1
  %159 = ptrtoint ptr %sector32.i to i32
  call void @__asan_load8_noabort(i32 %159)
  %160 = load i64, ptr %sector32.i, align 8
  %sub7.i.i = add nuw nsw i32 %147, 1
  %sh_prom.i.i = zext i32 %sub7.i.i to i64
  %161 = shl nuw nsw i64 1, %sh_prom.i.i
  %162 = and i64 %160, %161
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %162)
  %tobool8.i.not.i = icmp eq i64 %162, 0
  br i1 %tobool8.i.not.i, label %sw.bb5.i.i.land.lhs.true_crit_edge, label %sw.bb5.i.i.if.then34.i_crit_edge

sw.bb5.i.i.if.then34.i_crit_edge:                 ; preds = %sw.bb5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then34.i

sw.bb5.i.i.land.lhs.true_crit_edge:               ; preds = %sw.bb5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

sw.bb9.i.i:                                       ; preds = %rcu_read_unlock.exit.i173
  %flags.i.i = getelementptr inbounds %struct.drbd_device, ptr %112, i32 0, i32 14
  %call10.i.i = call i32 @_test_and_change_bit(i32 noundef 20, ptr noundef %flags.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i)
  %tobool11.i.not.i = icmp eq i32 %call10.i.i, 0
  br i1 %tobool11.i.not.i, label %sw.bb9.i.i.land.lhs.true_crit_edge, label %sw.bb9.i.i.if.then34.i_crit_edge

sw.bb9.i.i.if.then34.i_crit_edge:                 ; preds = %sw.bb9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then34.i

sw.bb9.i.i.land.lhs.true_crit_edge:               ; preds = %sw.bb9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

remote_due_to_read_balancing.exit.i:              ; preds = %rcu_read_unlock.exit.i173
  %163 = ptrtoint ptr %ldev.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %ldev.i, align 4
  %165 = ptrtoint ptr %164 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %164, align 8
  %bd_disk.i.i = getelementptr inbounds %struct.block_device, ptr %166, i32 0, i32 17
  %167 = ptrtoint ptr %bd_disk.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %bd_disk.i.i, align 8
  %bdi.i.i = getelementptr inbounds %struct.gendisk, ptr %168, i32 0, i32 15
  %169 = ptrtoint ptr %bdi.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %bdi.i.i, align 4
  %congested.i.i.i.i.i = getelementptr inbounds %struct.backing_dev_info, ptr %170, i32 0, i32 11, i32 10
  %171 = ptrtoint ptr %congested.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %congested.i.i.i.i.i, align 8
  %and.i.i.i.i.i = and i32 %172, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.i.not.i, label %remote_due_to_read_balancing.exit.i.land.lhs.true_crit_edge, label %remote_due_to_read_balancing.exit.i.if.then34.i_crit_edge

remote_due_to_read_balancing.exit.i.if.then34.i_crit_edge: ; preds = %remote_due_to_read_balancing.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then34.i

remote_due_to_read_balancing.exit.i.land.lhs.true_crit_edge: ; preds = %remote_due_to_read_balancing.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

if.then34.i:                                      ; preds = %remote_due_to_read_balancing.exit.i.if.then34.i_crit_edge, %sw.bb9.i.i.if.then34.i_crit_edge, %sw.bb5.i.i.if.then34.i_crit_edge, %sw.bb1.i.i.if.then34.i_crit_edge, %rcu_read_unlock.exit.i173.if.then34.i_crit_edge
  %173 = ptrtoint ptr %private_bio.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %private_bio.i, align 8
  %tobool36.not.i = icmp eq ptr %174, null
  br i1 %tobool36.not.i, label %if.then34.i.if.end17_crit_edge, label %if.then37.i

if.then34.i.if.end17_crit_edge:                   ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then37.i:                                      ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @bio_put(ptr noundef nonnull %174) #9
  %175 = ptrtoint ptr %private_bio.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr null, ptr %private_bio.i, align 8
  call fastcc void @put_ldev(ptr noundef %112) #9
  br label %if.end17

land.lhs.true:                                    ; preds = %remote_due_to_read_balancing.exit.i.land.lhs.true_crit_edge, %sw.bb9.i.i.land.lhs.true_crit_edge, %sw.bb5.i.i.land.lhs.true_crit_edge, %sw.bb1.i.i.land.lhs.true_crit_edge, %rcu_read_unlock.exit.i173.land.lhs.true_crit_edge, %if.end6.i.land.lhs.true_crit_edge
  %176 = ptrtoint ptr %private_bio.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %private_bio.i, align 8
  %tobool14.not = icmp eq ptr %177, null
  br i1 %tobool14.not, label %land.lhs.true.nodata_crit_edge, label %land.lhs.true.if.end17_crit_edge

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

land.lhs.true.nodata_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %nodata

if.end17:                                         ; preds = %land.lhs.true.if.end17_crit_edge, %if.then37.i, %if.then34.i.if.end17_crit_edge, %if.end8.i.if.end17_crit_edge, %if.end.if.end17_crit_edge
  %peer_devices.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 1
  %178 = ptrtoint ptr %peer_devices.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load volatile ptr, ptr %peer_devices.i, align 4
  %cmp.not.i177 = icmp eq ptr %179, %peer_devices.i
  %spec.select.i = select i1 %cmp.not.i177, ptr null, ptr %179
  %connection = getelementptr inbounds %struct.drbd_peer_device, ptr %spec.select.i, i32 0, i32 2
  %180 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %connection, align 4
  %current_tle_nr = getelementptr inbounds %struct.drbd_connection, ptr %181, i32 0, i32 34
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %current_tle_nr, i32 noundef 4) #9
  %182 = ptrtoint ptr %current_tle_nr to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load volatile i32, ptr %current_tle_nr, align 4
  %epoch = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 4
  %184 = ptrtoint ptr %epoch to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %183, ptr %epoch, align 8
  %size = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 3, i32 2
  %185 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %186)
  %cmp20.not = icmp eq i32 %186, 0
  br i1 %cmp20.not, label %if.end17.if.end31_crit_edge, label %if.then23, !prof !228

if.end17.if.end31_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.then23:                                        ; preds = %if.end17
  br i1 %tobool.i.not, label %if.then23.if.end28_crit_edge, label %if.then25

if.then23.if.end28_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then25:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  %187 = ptrtoint ptr %peer_devices.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load volatile ptr, ptr %peer_devices.i, align 4
  %cmp.not.i179 = icmp eq ptr %188, %peer_devices.i
  %spec.select.i180 = select i1 %cmp.not.i179, ptr null, ptr %188
  %connection27 = getelementptr inbounds %struct.drbd_peer_device, ptr %spec.select.i180, i32 0, i32 2
  %189 = ptrtoint ptr %connection27 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %connection27, align 4
  %current_tle_writes = getelementptr inbounds %struct.drbd_connection, ptr %190, i32 0, i32 35
  %191 = ptrtoint ptr %current_tle_writes to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %current_tle_writes, align 4
  %inc = add i32 %192, 1
  store i32 %inc, ptr %current_tle_writes, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %if.then23.if.end28_crit_edge
  %tl_requests = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 5
  %193 = ptrtoint ptr %peer_devices.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load volatile ptr, ptr %peer_devices.i, align 4
  %cmp.not.i182 = icmp eq ptr %194, %peer_devices.i
  %spec.select.i183 = select i1 %cmp.not.i182, ptr null, ptr %194
  %connection30 = getelementptr inbounds %struct.drbd_peer_device, ptr %spec.select.i183, i32 0, i32 2
  %195 = ptrtoint ptr %connection30 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %connection30, align 4
  %transfer_log = getelementptr inbounds %struct.drbd_connection, ptr %196, i32 0, i32 23
  %prev.i = getelementptr inbounds %struct.drbd_connection, ptr %196, i32 0, i32 23, i32 1
  %197 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %prev.i, align 4
  %call.i.i184 = call zeroext i1 @__list_add_valid(ptr noundef %tl_requests, ptr noundef %198, ptr noundef %transfer_log) #9
  br i1 %call.i.i184, label %if.end.i.i185, label %if.end28.if.end31_crit_edge

if.end28.if.end31_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.end.i.i185:                                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  %199 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store ptr %tl_requests, ptr %prev.i, align 4
  %200 = ptrtoint ptr %tl_requests to i32
  call void @__asan_store4_noabort(i32 %200)
  store ptr %transfer_log, ptr %tl_requests, align 4
  %prev3.i.i = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 5, i32 1
  %201 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store ptr %198, ptr %prev3.i.i, align 4
  %202 = ptrtoint ptr %198 to i32
  call void @__asan_store4_noabort(i32 %202)
  store volatile ptr %tl_requests, ptr %198, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.end.i.i185, %if.end28.if.end31_crit_edge, %if.end17.if.end31_crit_edge
  %private_bio46 = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 2
  %203 = ptrtoint ptr %private_bio46 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %private_bio46, align 8
  %cmp47 = icmp eq ptr %204, null
  br i1 %tobool.i.not, label %if.else, label %if.then33

if.then33:                                        ; preds = %if.end31
  br i1 %cmp47, label %if.then33.if.end41_crit_edge, label %land.lhs.true36

if.then33.if.end41_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

land.lhs.true36:                                  ; preds = %if.then33
  %state.i186 = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 27
  %205 = ptrtoint ptr %state.i186 to i32
  call void @__asan_load4_noabort(i32 %205)
  %s.sroa.0.0.copyload.i = load i32, ptr %state.i186, align 8
  %206 = and i32 %s.sroa.0.0.copyload.i, 7680
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %206)
  %cmp.i187 = icmp eq i32 %206, 4096
  %207 = and i32 %s.sroa.0.0.copyload.i, 122880
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %207)
  %cmp4.i = icmp eq i32 %207, 65536
  %208 = or i1 %cmp.i187, %cmp4.i
  br i1 %208, label %land.lhs.true36.if.end41_crit_edge, label %if.then38

land.lhs.true36.if.end41_crit_edge:               ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.then38:                                        ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #11
  call void @bio_put(ptr noundef nonnull %204) #9
  %209 = ptrtoint ptr %private_bio46 to i32
  call void @__asan_store4_noabort(i32 %209)
  store ptr null, ptr %private_bio46, align 8
  call fastcc void @put_ldev(ptr noundef %device)
  br label %nodata

if.end41:                                         ; preds = %land.lhs.true36.if.end41_crit_edge, %if.then33.if.end41_crit_edge
  %device1.i188 = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 1
  %210 = ptrtoint ptr %device1.i188 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %device1.i188, align 4
  %state.i189 = getelementptr inbounds %struct.drbd_device, ptr %211, i32 0, i32 27
  %212 = ptrtoint ptr %state.i189 to i32
  call void @__asan_load4_noabort(i32 %212)
  %.unpack.i = load i32, ptr %state.i189, align 8
  %bf.lshr.i.i190 = lshr i32 %.unpack.i, 13
  %bf.clear.i.i191 = and i32 %bf.lshr.i.i190, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %bf.clear.i.i191)
  %cmp.i.i192 = icmp eq i32 %bf.clear.i.i191, 8
  br i1 %cmp.i.i192, label %if.end41.drbd_should_do_remote.exit.i_crit_edge, label %lor.rhs.i.i

if.end41.drbd_should_do_remote.exit.i_crit_edge:  ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %drbd_should_do_remote.exit.i

lor.rhs.i.i:                                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %bf.clear.i.i191)
  %cmp5.i.i = icmp ugt i32 %bf.clear.i.i191, 3
  br i1 %cmp5.i.i, label %land.lhs.true.i.i193, label %lor.rhs.i.i.drbd_should_do_remote.exit.i_crit_edge

lor.rhs.i.i.drbd_should_do_remote.exit.i_crit_edge: ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %drbd_should_do_remote.exit.i

land.lhs.true.i.i193:                             ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %bf.lshr7.i.i = lshr i32 %.unpack.i, 4
  %bf.clear8.i.i = and i32 %bf.lshr7.i.i, 31
  %213 = add nsw i32 %bf.clear8.i.i, -14
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %213)
  %214 = icmp ult i32 %213, 8
  br label %drbd_should_do_remote.exit.i

drbd_should_do_remote.exit.i:                     ; preds = %land.lhs.true.i.i193, %lor.rhs.i.i.drbd_should_do_remote.exit.i_crit_edge, %if.end41.drbd_should_do_remote.exit.i_crit_edge
  %215 = phi i1 [ true, %if.end41.drbd_should_do_remote.exit.i_crit_edge ], [ false, %lor.rhs.i.i.drbd_should_do_remote.exit.i_crit_edge ], [ %214, %land.lhs.true.i.i193 ]
  %bf.lshr.i74.i = lshr i32 %.unpack.i, 4
  %bf.clear.i75.i = and i32 %bf.lshr.i74.i, 31
  %216 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %217)
  %cmp.i195 = icmp eq i32 %217, 0
  br i1 %cmp.i195, label %do.body.i, label %if.end20.i200, !prof !228

do.body.i:                                        ; preds = %drbd_should_do_remote.exit.i
  %218 = ptrtoint ptr %master_bio to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %master_bio, align 4
  %bi_opf.i = getelementptr inbounds %struct.bio, ptr %219, i32 0, i32 2
  %220 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %bi_opf.i, align 8
  %222 = and i32 %221, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %222)
  %tobool11.not.i196 = icmp eq i32 %222, 0
  br i1 %tobool11.not.i196, label %do.end.i, label %do.body.i.do.end15.i_crit_edge

do.body.i.do.end15.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end15.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %vdisk.i197 = getelementptr inbounds %struct.drbd_device, ptr %211, i32 0, i32 18
  %223 = ptrtoint ptr %vdisk.i197 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %vdisk.i197, align 4
  %part0.i198 = getelementptr inbounds %struct.gendisk, ptr %224, i32 0, i32 7
  %225 = ptrtoint ptr %part0.i198 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %part0.i198, align 4
  %bd_device.i199 = getelementptr inbounds %struct.block_device, ptr %226, i32 0, i32 10
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %bd_device.i199, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.2, i32 noundef 1111) #12
  br label %do.end15.i

do.end15.i:                                       ; preds = %do.end.i, %do.body.i.do.end15.i_crit_edge
  br i1 %215, label %if.then17.i, label %do.end15.i.if.end62_crit_edge

do.end15.i.if.end62_crit_edge:                    ; preds = %do.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

if.then17.i:                                      ; preds = %do.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @_req_mod(ptr noundef %req, i32 noundef 6) #9
  br label %if.then57

if.end20.i200:                                    ; preds = %drbd_should_do_remote.exit.i
  %227 = freeze i1 %215
  br i1 %227, label %do.body25.i, label %switch.early.test.i

switch.early.test.i:                              ; preds = %if.end20.i200
  %228 = zext i32 %bf.clear.i75.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %228, ptr @__sancov_gen_cov_switch_values.116)
  switch i32 %bf.clear.i75.i, label %switch.early.test.i.if.end62_crit_edge [
    i32 22, label %switch.early.test.i.if.else.i_crit_edge
    i32 13, label %switch.early.test.i.if.else.i_crit_edge299
  ]

switch.early.test.i.if.else.i_crit_edge299:       ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

switch.early.test.i.if.else.i_crit_edge:          ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

switch.early.test.i.if.end62_crit_edge:           ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

do.body25.i:                                      ; preds = %if.end20.i200
  %229 = zext i32 %bf.clear.i75.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %229, ptr @__sancov_gen_cov_switch_values.117)
  switch i32 %bf.clear.i75.i, label %do.body25.i.if.then40.i_crit_edge [
    i32 22, label %do.body25.i.do.end32.i_crit_edge
    i32 13, label %do.body25.i.do.end32.i_crit_edge300
  ]

do.body25.i.do.end32.i_crit_edge300:              ; preds = %do.body25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end32.i

do.body25.i.do.end32.i_crit_edge:                 ; preds = %do.body25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end32.i

do.body25.i.if.then40.i_crit_edge:                ; preds = %do.body25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then40.i

do.end32.i:                                       ; preds = %do.body25.i.do.end32.i_crit_edge, %do.body25.i.do.end32.i_crit_edge300
  %vdisk33.i = getelementptr inbounds %struct.drbd_device, ptr %211, i32 0, i32 18
  %230 = ptrtoint ptr %vdisk33.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %vdisk33.i, align 4
  %part034.i = getelementptr inbounds %struct.gendisk, ptr %231, i32 0, i32 7
  %232 = ptrtoint ptr %part034.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %part034.i, align 4
  %bd_device35.i = getelementptr inbounds %struct.block_device, ptr %233, i32 0, i32 10
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %bd_device35.i, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.2, i32 noundef 1120) #12
  br label %if.then40.i

if.then40.i:                                      ; preds = %do.end32.i, %do.body25.i.if.then40.i_crit_edge
  %234 = ptrtoint ptr %device1.i188 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %device1.i188, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %m.i.i) #9
  %236 = ptrtoint ptr %m.i.i to i32
  call void @__asan_store4_noabort(i32 %236)
  store ptr inttoptr (i32 -1 to ptr), ptr %m.i.i, align 4, !annotation !234
  %237 = getelementptr inbounds %struct.bio_and_error, ptr %m.i.i, i32 0, i32 1
  %238 = ptrtoint ptr %237 to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 -1, ptr %237, align 4, !annotation !234
  %call.i.i201 = call i32 @__req_mod(ptr noundef %req, i32 noundef 1, ptr noundef nonnull %m.i.i) #9
  %239 = ptrtoint ptr %m.i.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %m.i.i, align 4
  %tobool.not.i.i202 = icmp eq ptr %240, null
  br i1 %tobool.not.i.i202, label %if.then40.i._req_mod.exit.i_crit_edge, label %if.then.i.i204

if.then40.i._req_mod.exit.i_crit_edge:            ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %_req_mod.exit.i

if.then.i.i204:                                   ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #11
  %241 = ptrtoint ptr %237 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %237, align 4
  %call.i.i.i203 = call zeroext i8 @errno_to_blk_status(i32 noundef %242) #9
  %243 = ptrtoint ptr %m.i.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %m.i.i, align 4
  %bi_status.i.i.i = getelementptr inbounds %struct.bio, ptr %244, i32 0, i32 6
  %245 = ptrtoint ptr %bi_status.i.i.i to i32
  call void @__asan_store1_noabort(i32 %245)
  store i8 %call.i.i.i203, ptr %bi_status.i.i.i, align 2
  call void @bio_endio(ptr noundef %244) #9
  call fastcc void @dec_ap_bio(ptr noundef %235) #9
  br label %_req_mod.exit.i

_req_mod.exit.i:                                  ; preds = %if.then.i.i204, %if.then40.i._req_mod.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %m.i.i) #9
  %246 = ptrtoint ptr %device1.i188 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %device1.i188, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %m.i78.i) #9
  %248 = ptrtoint ptr %m.i78.i to i32
  call void @__asan_store4_noabort(i32 %248)
  store ptr inttoptr (i32 -1 to ptr), ptr %m.i78.i, align 4, !annotation !234
  %249 = getelementptr inbounds %struct.bio_and_error, ptr %m.i78.i, i32 0, i32 1
  %250 = ptrtoint ptr %249 to i32
  call void @__asan_store4_noabort(i32 %250)
  store i32 -1, ptr %249, align 4, !annotation !234
  %call.i80.i = call i32 @__req_mod(ptr noundef %req, i32 noundef 3, ptr noundef nonnull %m.i78.i) #9
  %251 = ptrtoint ptr %m.i78.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %m.i78.i, align 4
  %tobool.not.i81.i = icmp eq ptr %252, null
  br i1 %tobool.not.i81.i, label %_req_mod.exit.i._req_mod.exit85.i_crit_edge, label %if.then.i84.i

_req_mod.exit.i._req_mod.exit85.i_crit_edge:      ; preds = %_req_mod.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %_req_mod.exit85.i

if.then.i84.i:                                    ; preds = %_req_mod.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %253 = ptrtoint ptr %249 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %249, align 4
  %call.i.i82.i = call zeroext i8 @errno_to_blk_status(i32 noundef %254) #9
  %255 = ptrtoint ptr %m.i78.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %m.i78.i, align 4
  %bi_status.i.i83.i = getelementptr inbounds %struct.bio, ptr %256, i32 0, i32 6
  %257 = ptrtoint ptr %bi_status.i.i83.i to i32
  call void @__asan_store1_noabort(i32 %257)
  store i8 %call.i.i82.i, ptr %bi_status.i.i83.i, align 2
  call void @bio_endio(ptr noundef %256) #9
  call fastcc void @dec_ap_bio(ptr noundef %247) #9
  br label %_req_mod.exit85.i

_req_mod.exit85.i:                                ; preds = %if.then.i84.i, %_req_mod.exit.i._req_mod.exit85.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %m.i78.i) #9
  br label %if.then57

if.else.i:                                        ; preds = %switch.early.test.i.if.else.i_crit_edge, %switch.early.test.i.if.else.i_crit_edge299
  %sector.i205 = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 3, i32 1
  %258 = ptrtoint ptr %sector.i205 to i32
  call void @__asan_load8_noabort(i32 %258)
  %259 = load i64, ptr %sector.i205, align 8
  %call46.i = call i32 @__drbd_change_sync(ptr noundef %211, i64 noundef %259, i32 noundef %217, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %tobool47.not.i = icmp eq i32 %call46.i, 0
  br i1 %tobool47.not.i, label %if.else.i.if.end62_crit_edge, label %if.then48.i

if.else.i.if.end62_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

if.then48.i:                                      ; preds = %if.else.i
  %260 = ptrtoint ptr %device1.i188 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %device1.i188, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %m.i86.i) #9
  %262 = ptrtoint ptr %m.i86.i to i32
  call void @__asan_store4_noabort(i32 %262)
  store ptr inttoptr (i32 -1 to ptr), ptr %m.i86.i, align 4, !annotation !234
  %263 = getelementptr inbounds %struct.bio_and_error, ptr %m.i86.i, i32 0, i32 1
  %264 = ptrtoint ptr %263 to i32
  call void @__asan_store4_noabort(i32 %264)
  store i32 -1, ptr %263, align 4, !annotation !234
  %call.i88.i = call i32 @__req_mod(ptr noundef %req, i32 noundef 5, ptr noundef nonnull %m.i86.i) #9
  %265 = ptrtoint ptr %m.i86.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %m.i86.i, align 4
  %tobool.not.i89.i = icmp eq ptr %266, null
  br i1 %tobool.not.i89.i, label %if.then48.i._req_mod.exit93.i_crit_edge, label %if.then.i92.i

if.then48.i._req_mod.exit93.i_crit_edge:          ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %_req_mod.exit93.i

if.then.i92.i:                                    ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #11
  %267 = ptrtoint ptr %263 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %263, align 4
  %call.i.i90.i = call zeroext i8 @errno_to_blk_status(i32 noundef %268) #9
  %269 = ptrtoint ptr %m.i86.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %m.i86.i, align 4
  %bi_status.i.i91.i = getelementptr inbounds %struct.bio, ptr %270, i32 0, i32 6
  %271 = ptrtoint ptr %bi_status.i.i91.i to i32
  call void @__asan_store1_noabort(i32 %271)
  store i8 %call.i.i90.i, ptr %bi_status.i.i91.i, align 2
  call void @bio_endio(ptr noundef %270) #9
  call fastcc void @dec_ap_bio(ptr noundef %261) #9
  br label %_req_mod.exit93.i

_req_mod.exit93.i:                                ; preds = %if.then.i92.i, %if.then48.i._req_mod.exit93.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %m.i86.i) #9
  br label %if.end62

if.else:                                          ; preds = %if.end31
  br i1 %cmp47, label %if.then48, label %if.else.if.end62_crit_edge

if.else.if.end62_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

if.then48:                                        ; preds = %if.else
  %device1.i206 = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 1
  %272 = ptrtoint ptr %device1.i206 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %device1.i206, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %m.i) #9
  %274 = ptrtoint ptr %m.i to i32
  call void @__asan_store4_noabort(i32 %274)
  store ptr inttoptr (i32 -1 to ptr), ptr %m.i, align 4, !annotation !234
  %275 = getelementptr inbounds %struct.bio_and_error, ptr %m.i, i32 0, i32 1
  %276 = ptrtoint ptr %275 to i32
  call void @__asan_store4_noabort(i32 %276)
  store i32 -1, ptr %275, align 4, !annotation !234
  %call.i = call i32 @__req_mod(ptr noundef %req, i32 noundef 1, ptr noundef nonnull %m.i) #9
  %277 = ptrtoint ptr %m.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %m.i, align 4
  %tobool.not.i207 = icmp eq ptr %278, null
  br i1 %tobool.not.i207, label %if.then48._req_mod.exit_crit_edge, label %if.then.i209

if.then48._req_mod.exit_crit_edge:                ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #11
  br label %_req_mod.exit

if.then.i209:                                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #11
  %279 = ptrtoint ptr %275 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %275, align 4
  %call.i.i208 = call zeroext i8 @errno_to_blk_status(i32 noundef %280) #9
  %281 = ptrtoint ptr %m.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %m.i, align 4
  %bi_status.i.i = getelementptr inbounds %struct.bio, ptr %282, i32 0, i32 6
  %283 = ptrtoint ptr %bi_status.i.i to i32
  call void @__asan_store1_noabort(i32 %283)
  store i8 %call.i.i208, ptr %bi_status.i.i, align 2
  call void @bio_endio(ptr noundef %282) #9
  call fastcc void @dec_ap_bio(ptr noundef %273) #9
  br label %_req_mod.exit

_req_mod.exit:                                    ; preds = %if.then.i209, %if.then48._req_mod.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %m.i) #9
  %284 = ptrtoint ptr %device1.i206 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %device1.i206, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %m.i210) #9
  %286 = ptrtoint ptr %m.i210 to i32
  call void @__asan_store4_noabort(i32 %286)
  store ptr inttoptr (i32 -1 to ptr), ptr %m.i210, align 4, !annotation !234
  %287 = getelementptr inbounds %struct.bio_and_error, ptr %m.i210, i32 0, i32 1
  %288 = ptrtoint ptr %287 to i32
  call void @__asan_store4_noabort(i32 %288)
  store i32 -1, ptr %287, align 4, !annotation !234
  %call.i212 = call i32 @__req_mod(ptr noundef %req, i32 noundef 4, ptr noundef nonnull %m.i210) #9
  %289 = ptrtoint ptr %m.i210 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %m.i210, align 4
  %tobool.not.i213 = icmp eq ptr %290, null
  br i1 %tobool.not.i213, label %_req_mod.exit.if.end53.thread280_crit_edge, label %if.then.i216

_req_mod.exit.if.end53.thread280_crit_edge:       ; preds = %_req_mod.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53.thread280

if.then.i216:                                     ; preds = %_req_mod.exit
  call void @__sanitizer_cov_trace_pc() #11
  %291 = ptrtoint ptr %287 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %287, align 4
  %call.i.i214 = call zeroext i8 @errno_to_blk_status(i32 noundef %292) #9
  %293 = ptrtoint ptr %m.i210 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %m.i210, align 4
  %bi_status.i.i215 = getelementptr inbounds %struct.bio, ptr %294, i32 0, i32 6
  %295 = ptrtoint ptr %bi_status.i.i215 to i32
  call void @__asan_store1_noabort(i32 %295)
  store i8 %call.i.i214, ptr %bi_status.i.i215, align 2
  call void @bio_endio(ptr noundef %294) #9
  call fastcc void @dec_ap_bio(ptr noundef %285) #9
  br label %if.end53.thread280

if.end53.thread280:                               ; preds = %if.then.i216, %_req_mod.exit.if.end53.thread280_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %m.i210) #9
  br label %if.then57

if.then57:                                        ; preds = %if.end53.thread280, %_req_mod.exit85.i, %if.then17.i
  %call.i218 = call ptr @blk_check_plugged(ptr noundef nonnull @drbd_unplug, ptr noundef %1, i32 noundef 20) #9
  %tobool59.not = icmp eq ptr %call.i218, null
  br i1 %tobool59.not, label %if.then57.if.end62_crit_edge, label %if.then60

if.then57.if.end62_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

if.then60:                                        ; preds = %if.then57
  %most_recent_req.i = getelementptr inbounds %struct.drbd_plug_cb, ptr %call.i218, i32 0, i32 1
  %296 = ptrtoint ptr %most_recent_req.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %most_recent_req.i, align 4
  %kref.i = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 16
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #9
  %298 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #9, !srcloc !227
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %298, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then60.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !228

if.then60.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then60
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %299 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %299)
  %.not.i.i.i.i.i = icmp sgt i32 %299, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.kref_get.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !229

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.kref_get.exit.i_crit_edge:      ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kref_get.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then60.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then60.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef %.sink.i.i.i.i.i) #9
  br label %kref_get.exit.i

kref_get.exit.i:                                  ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.kref_get.exit.i_crit_edge
  %300 = ptrtoint ptr %most_recent_req.i to i32
  call void @__asan_store4_noabort(i32 %300)
  store ptr %req, ptr %most_recent_req.i, align 4
  %tobool.not.i219 = icmp eq ptr %297, null
  br i1 %tobool.not.i219, label %kref_get.exit.i.if.end62_crit_edge, label %if.then.i220

kref_get.exit.i.if.end62_crit_edge:               ; preds = %kref_get.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

if.then.i220:                                     ; preds = %kref_get.exit.i
  %kref2.i = getelementptr inbounds %struct.drbd_request, ptr %297, i32 0, i32 16
  %call.i.i.i.i.i.i6.i = call zeroext i1 @__kasan_check_write(ptr noundef %kref2.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !230
  call void @llvm.prefetch.p0(ptr %kref2.i, i32 1, i32 3, i32 1) #9
  %301 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref2.i, ptr %kref2.i, i32 1, ptr elementtype(i32) %kref2.i) #9, !srcloc !231
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %301, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i221, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i220
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i7.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i7.i, label %if.end5.i.i.i.i.i.if.end62_crit_edge, label %if.then10.i.i.i.i.i, !prof !229

if.end5.i.i.i.i.i.if.end62_crit_edge:             ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %kref2.i, i32 noundef 3) #9
  br label %if.end62

if.then.i.i221:                                   ; preds = %if.then.i220
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !232
  call void @drbd_req_destroy(ptr noundef %kref2.i) #9
  br label %if.end62

if.end62:                                         ; preds = %if.then.i.i221, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end62_crit_edge, %kref_get.exit.i.if.end62_crit_edge, %if.then57.if.end62_crit_edge, %if.else.if.end62_crit_edge, %_req_mod.exit93.i, %if.else.i.if.end62_crit_edge, %switch.early.test.i.if.end62_crit_edge, %do.end15.i.if.end62_crit_edge
  %no_remote.0.off0279 = phi i1 [ false, %if.then57.if.end62_crit_edge ], [ false, %kref_get.exit.i.if.end62_crit_edge ], [ false, %if.end5.i.i.i.i.i.if.end62_crit_edge ], [ false, %if.then10.i.i.i.i.i ], [ false, %if.then.i.i221 ], [ true, %if.else.if.end62_crit_edge ], [ true, %do.end15.i.if.end62_crit_edge ], [ true, %switch.early.test.i.if.end62_crit_edge ], [ true, %if.else.i.if.end62_crit_edge ], [ true, %_req_mod.exit93.i ]
  %req_pending_master_completion = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 7
  %302 = ptrtoint ptr %req_pending_master_completion to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load volatile ptr, ptr %req_pending_master_completion, align 4
  %cmp.i222.not = icmp eq ptr %303, %req_pending_master_completion
  br i1 %cmp.i222.not, label %if.then65, label %if.end62.if.end69_crit_edge

if.end62.if.end69_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then65:                                        ; preds = %if.end62
  %arrayidx = getelementptr %struct.drbd_device, ptr %device, i32 0, i32 45, i32 %and.i
  %prev.i223 = getelementptr %struct.drbd_device, ptr %device, i32 0, i32 45, i32 %and.i, i32 1
  %304 = ptrtoint ptr %prev.i223 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %prev.i223, align 4
  %call.i.i224 = call zeroext i1 @__list_add_valid(ptr noundef %req_pending_master_completion, ptr noundef %305, ptr noundef %arrayidx) #9
  br i1 %call.i.i224, label %if.end.i.i226, label %if.then65.if.end69_crit_edge

if.then65.if.end69_crit_edge:                     ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.end.i.i226:                                    ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #11
  %306 = ptrtoint ptr %prev.i223 to i32
  call void @__asan_store4_noabort(i32 %306)
  store ptr %req_pending_master_completion, ptr %prev.i223, align 4
  %307 = ptrtoint ptr %req_pending_master_completion to i32
  call void @__asan_store4_noabort(i32 %307)
  store ptr %arrayidx, ptr %req_pending_master_completion, align 4
  %prev3.i.i225 = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 7, i32 1
  %308 = ptrtoint ptr %prev3.i.i225 to i32
  call void @__asan_store4_noabort(i32 %308)
  store ptr %305, ptr %prev3.i.i225, align 4
  %309 = ptrtoint ptr %305 to i32
  call void @__asan_store4_noabort(i32 %309)
  store volatile ptr %req_pending_master_completion, ptr %305, align 4
  br label %if.end69

if.end69:                                         ; preds = %if.end.i.i226, %if.then65.if.end69_crit_edge, %if.end62.if.end69_crit_edge
  %private_bio70 = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 2
  %310 = ptrtoint ptr %private_bio70 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %private_bio70, align 8
  %tobool71.not = icmp eq ptr %311, null
  br i1 %tobool71.not, label %if.else77, label %if.then72

if.then72:                                        ; preds = %if.end69
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %312 = load volatile i32, ptr @jiffies, align 128
  %pre_submit_jif = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 11
  %313 = ptrtoint ptr %pre_submit_jif to i32
  call void @__asan_store4_noabort(i32 %313)
  store i32 %312, ptr %pre_submit_jif, align 8
  %req_pending_local = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 8
  %arrayidx75 = getelementptr %struct.drbd_device, ptr %device, i32 0, i32 46, i32 %and.i
  %prev.i228 = getelementptr %struct.drbd_device, ptr %device, i32 0, i32 46, i32 %and.i, i32 1
  %314 = ptrtoint ptr %prev.i228 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %prev.i228, align 4
  %call.i.i229 = call zeroext i1 @__list_add_valid(ptr noundef %req_pending_local, ptr noundef %315, ptr noundef %arrayidx75) #9
  br i1 %call.i.i229, label %if.end.i.i231, label %if.then72.list_add_tail.exit232_crit_edge

if.then72.list_add_tail.exit232_crit_edge:        ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit232

if.end.i.i231:                                    ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #11
  %316 = ptrtoint ptr %prev.i228 to i32
  call void @__asan_store4_noabort(i32 %316)
  store ptr %req_pending_local, ptr %prev.i228, align 4
  %317 = ptrtoint ptr %req_pending_local to i32
  call void @__asan_store4_noabort(i32 %317)
  store ptr %arrayidx75, ptr %req_pending_local, align 4
  %prev3.i.i230 = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 8, i32 1
  %318 = ptrtoint ptr %prev3.i.i230 to i32
  call void @__asan_store4_noabort(i32 %318)
  store ptr %315, ptr %prev3.i.i230, align 4
  %319 = ptrtoint ptr %315 to i32
  call void @__asan_store4_noabort(i32 %319)
  store volatile ptr %req_pending_local, ptr %315, align 4
  br label %list_add_tail.exit232

list_add_tail.exit232:                            ; preds = %if.end.i.i231, %if.then72.list_add_tail.exit232_crit_edge
  %device1.i234 = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 1
  %320 = ptrtoint ptr %device1.i234 to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %device1.i234, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %m.i233) #9
  %322 = getelementptr inbounds %struct.bio_and_error, ptr %m.i233, i32 0, i32 1
  %323 = ptrtoint ptr %322 to i32
  call void @__asan_store4_noabort(i32 %323)
  store i32 -1, ptr %322, align 4, !annotation !234
  %peer_devices.i.i267 = getelementptr inbounds %struct.drbd_device, ptr %321, i32 0, i32 1
  %324 = ptrtoint ptr %peer_devices.i.i267 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load volatile ptr, ptr %peer_devices.i.i267, align 4
  %326 = ptrtoint ptr %m.i233 to i32
  call void @__asan_store4_noabort(i32 %326)
  store ptr null, ptr %m.i233, align 4
  %rq_state40.i = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 17
  %327 = ptrtoint ptr %rq_state40.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load i32, ptr %rq_state40.i, align 8
  %and41.i = and i32 %328, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41.i)
  %tobool42.not.i = icmp eq i32 %and41.i, 0
  br i1 %tobool42.not.i, label %list_add_tail.exit232.__req_mod.exit_crit_edge, label %do.end46.i

list_add_tail.exit232.__req_mod.exit_crit_edge:   ; preds = %list_add_tail.exit232
  call void @__sanitizer_cov_trace_pc() #11
  br label %__req_mod.exit

do.end46.i:                                       ; preds = %list_add_tail.exit232
  call void @__sanitizer_cov_trace_pc() #11
  %vdisk47.i = getelementptr inbounds %struct.drbd_device, ptr %321, i32 0, i32 18
  %329 = ptrtoint ptr %vdisk47.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %vdisk47.i, align 4
  %part048.i = getelementptr inbounds %struct.gendisk, ptr %330, i32 0, i32 7
  %331 = ptrtoint ptr %part048.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %part048.i, align 4
  %bd_device49.i = getelementptr inbounds %struct.block_device, ptr %332, i32 0, i32 10
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %bd_device49.i, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.2, i32 noundef 589) #12
  br label %__req_mod.exit

__req_mod.exit:                                   ; preds = %do.end46.i, %list_add_tail.exit232.__req_mod.exit_crit_edge
  call fastcc void @mod_rq_state(ptr noundef %req, ptr noundef nonnull %m.i233, i32 noundef 0, i32 noundef 1) #9
  %333 = ptrtoint ptr %m.i233 to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %m.i233, align 4
  %tobool.not.i236 = icmp eq ptr %334, null
  br i1 %tobool.not.i236, label %__req_mod.exit._req_mod.exit240_crit_edge, label %if.then.i239

__req_mod.exit._req_mod.exit240_crit_edge:        ; preds = %__req_mod.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %_req_mod.exit240

if.then.i239:                                     ; preds = %__req_mod.exit
  call void @__sanitizer_cov_trace_pc() #11
  %335 = ptrtoint ptr %322 to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load i32, ptr %322, align 4
  %call.i.i237 = call zeroext i8 @errno_to_blk_status(i32 noundef %336) #9
  %337 = ptrtoint ptr %m.i233 to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %m.i233, align 4
  %bi_status.i.i238 = getelementptr inbounds %struct.bio, ptr %338, i32 0, i32 6
  %339 = ptrtoint ptr %bi_status.i.i238 to i32
  call void @__asan_store1_noabort(i32 %339)
  store i8 %call.i.i237, ptr %bi_status.i.i238, align 2
  call void @bio_endio(ptr noundef %338) #9
  call fastcc void @dec_ap_bio(ptr noundef %321) #9
  br label %_req_mod.exit240

_req_mod.exit240:                                 ; preds = %if.then.i239, %__req_mod.exit._req_mod.exit240_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %m.i233) #9
  call fastcc void @drbd_req_put_completion_ref(ptr noundef %req, ptr noundef nonnull %m, i32 noundef 1)
  call void @_raw_spin_unlock_irq(ptr noundef %req_lock) #9
  %340 = ptrtoint ptr %device1.i234 to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %device1.i234, align 4
  %342 = ptrtoint ptr %private_bio70 to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %private_bio70, align 8
  %bi_opf.i243 = getelementptr inbounds %struct.bio, ptr %343, i32 0, i32 2
  %344 = ptrtoint ptr %bi_opf.i243 to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load i32, ptr %bi_opf.i243, align 8
  %and.i244 = and i32 %345, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i244)
  %cmp.not.i245 = icmp eq i32 %and.i244, 0
  %346 = and i32 %345, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %346)
  %tobool.not.i246 = icmp eq i32 %346, 0
  %..i247 = select i1 %tobool.not.i246, i32 5, i32 6
  %type.0.i = select i1 %cmp.not.i245, i32 %..i247, i32 4
  %ldev.i248 = getelementptr inbounds %struct.drbd_device, ptr %341, i32 0, i32 15
  %347 = ptrtoint ptr %ldev.i248 to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %ldev.i248, align 4
  %349 = ptrtoint ptr %348 to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %348, align 8
  %bi_flags.i.i.i = getelementptr inbounds %struct.bio, ptr %343, i32 0, i32 3
  %351 = ptrtoint ptr %bi_flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %351)
  %352 = load i16, ptr %bi_flags.i.i.i, align 4
  %conv1.i.i.i = and i16 %352, -2049
  store i16 %conv1.i.i.i, ptr %bi_flags.i.i.i, align 4
  %bi_bdev.i.i = getelementptr inbounds %struct.bio, ptr %343, i32 0, i32 1
  %353 = ptrtoint ptr %bi_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %bi_bdev.i.i, align 4
  %cmp.not.i.i249 = icmp eq ptr %354, %350
  br i1 %cmp.not.i.i249, label %_req_mod.exit240.bio_set_dev.exit.i_crit_edge, label %if.then.i.i250

_req_mod.exit240.bio_set_dev.exit.i_crit_edge:    ; preds = %_req_mod.exit240
  call void @__sanitizer_cov_trace_pc() #11
  br label %bio_set_dev.exit.i

if.then.i.i250:                                   ; preds = %_req_mod.exit240
  call void @__sanitizer_cov_trace_pc() #11
  %conv1.i8.i.i = and i16 %352, -2177
  %355 = ptrtoint ptr %bi_flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %355)
  store i16 %conv1.i8.i.i, ptr %bi_flags.i.i.i, align 4
  br label %bio_set_dev.exit.i

bio_set_dev.exit.i:                               ; preds = %if.then.i.i250, %_req_mod.exit240.bio_set_dev.exit.i_crit_edge
  %356 = ptrtoint ptr %bi_bdev.i.i to i32
  call void @__asan_store4_noabort(i32 %356)
  store ptr %350, ptr %bi_bdev.i.i, align 4
  call void @bio_associate_blkg(ptr noundef %343) #9
  %state.i.i251 = getelementptr inbounds %struct.drbd_device, ptr %341, i32 0, i32 27
  %357 = ptrtoint ptr %state.i.i251 to i32
  call void @__asan_load4_noabort(i32 %357)
  %bf.load.i.i252 = load i32, ptr %state.i.i251, align 8
  %358 = and i32 %bf.load.i.i252, 7680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %358)
  %cmp.i.i253 = icmp eq i32 %358, 0
  br i1 %cmp.i.i253, label %bio_set_dev.exit.i.if.else33.i_crit_edge, label %if.end.i.i257

bio_set_dev.exit.i.if.else33.i_crit_edge:         ; preds = %bio_set_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else33.i

if.end.i.i257:                                    ; preds = %bio_set_dev.exit.i
  %local_cnt.i.i254 = getelementptr inbounds %struct.drbd_device, ptr %341, i32 0, i32 41
  %call.i.i.i.i255 = call zeroext i1 @__kasan_check_write(ptr noundef %local_cnt.i.i254, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %local_cnt.i.i254, i32 1, i32 3, i32 1) #9
  %359 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %local_cnt.i.i254, ptr %local_cnt.i.i254, i32 1, ptr elementtype(i32) %local_cnt.i.i254) #9, !srcloc !221
  %360 = ptrtoint ptr %state.i.i251 to i32
  call void @__asan_load4_noabort(i32 %360)
  %bf.load2.i.i256 = load i32, ptr %state.i.i251, align 8
  %361 = and i32 %bf.load2.i.i256, 6144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %361)
  %cmp5.not.i.i = icmp eq i32 %361, 0
  br i1 %cmp5.not.i.i, label %if.then6.i.i258, label %if.then9.i

if.then6.i.i258:                                  ; preds = %if.end.i.i257
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @put_ldev(ptr noundef %341) #9
  br label %if.else33.i

if.then9.i:                                       ; preds = %if.end.i.i257
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @drbd_fault_rate to i32))
  %362 = load i32, ptr @drbd_fault_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %362)
  %tobool.not.i.i259 = icmp eq i32 %362, 0
  br i1 %tobool.not.i.i259, label %if.then9.i.if.else13.i_crit_edge, label %land.lhs.true.i.i261

if.then9.i.if.else13.i_crit_edge:                 ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else13.i

land.lhs.true.i.i261:                             ; preds = %if.then9.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @drbd_enable_faults to i32))
  %363 = load i32, ptr @drbd_enable_faults, align 4
  %shl.i.i = shl nuw nsw i32 1, %type.0.i
  %and.i.i260 = and i32 %363, %shl.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i260)
  %tobool1.not.i.i = icmp eq i32 %and.i.i260, 0
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i261.if.else13.i_crit_edge, label %drbd_insert_fault.exit.i

land.lhs.true.i.i261.if.else13.i_crit_edge:       ; preds = %land.lhs.true.i.i261
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else13.i

drbd_insert_fault.exit.i:                         ; preds = %land.lhs.true.i.i261
  %call.i.i262 = call i32 @_drbd_insert_fault(ptr noundef %341, i32 noundef %type.0.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i262)
  %tobool2.i.not.i = icmp eq i32 %call.i.i262, 0
  br i1 %tobool2.i.not.i, label %drbd_insert_fault.exit.i.if.else13.i_crit_edge, label %if.then12.i

drbd_insert_fault.exit.i.if.else13.i_crit_edge:   ; preds = %drbd_insert_fault.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else13.i

if.then12.i:                                      ; preds = %drbd_insert_fault.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %bi_status.i.i263 = getelementptr inbounds %struct.bio, ptr %343, i32 0, i32 6
  %364 = ptrtoint ptr %bi_status.i.i263 to i32
  call void @__asan_store1_noabort(i32 %364)
  store i8 10, ptr %bi_status.i.i263, align 2
  call void @bio_endio(ptr noundef %343) #9
  br label %if.end32.i

if.else13.i:                                      ; preds = %drbd_insert_fault.exit.i.if.else13.i_crit_edge, %land.lhs.true.i.i261.if.else13.i_crit_edge, %if.then9.i.if.else13.i_crit_edge
  %365 = ptrtoint ptr %bi_opf.i243 to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load i32, ptr %bi_opf.i243, align 8
  %trunc.i = trunc i32 %366 to i8
  %367 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %367, ptr @__sancov_gen_cov_switch_values.118)
  switch i8 %trunc.i, label %if.else29.i [
    i8 9, label %if.then18.i
    i8 3, label %if.then28.i
  ]

if.then18.i:                                      ; preds = %if.else13.i
  %368 = lshr i32 %366, 21
  %369 = and i32 %368, 4
  %or.i = xor i32 %369, 12
  %370 = ptrtoint ptr %device1.i234 to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %device1.i234, align 4
  %sector.i.i = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 3, i32 1
  %372 = ptrtoint ptr %sector.i.i to i32
  call void @__asan_load8_noabort(i32 %372)
  %373 = load i64, ptr %sector.i.i, align 8
  %374 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load i32, ptr %size, align 8
  %shr.i.i264 = lshr i32 %375, 9
  %call.i49.i = call i32 @drbd_issue_discard_or_zero_out(ptr noundef %371, i64 noundef %373, i32 noundef %shr.i.i264, i32 noundef %or.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i49.i)
  %tobool.not.i50.i = icmp eq i32 %call.i49.i, 0
  br i1 %tobool.not.i50.i, label %if.then18.i.drbd_process_discard_or_zeroes_req.exit.i_crit_edge, label %if.then.i52.i

if.then18.i.drbd_process_discard_or_zeroes_req.exit.i_crit_edge: ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %drbd_process_discard_or_zeroes_req.exit.i

if.then.i52.i:                                    ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #11
  %376 = ptrtoint ptr %private_bio70 to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load ptr, ptr %private_bio70, align 8
  %bi_status.i51.i = getelementptr inbounds %struct.bio, ptr %377, i32 0, i32 6
  %378 = ptrtoint ptr %bi_status.i51.i to i32
  call void @__asan_store1_noabort(i32 %378)
  store i8 10, ptr %bi_status.i51.i, align 2
  br label %drbd_process_discard_or_zeroes_req.exit.i

drbd_process_discard_or_zeroes_req.exit.i:        ; preds = %if.then.i52.i, %if.then18.i.drbd_process_discard_or_zeroes_req.exit.i_crit_edge
  %379 = ptrtoint ptr %private_bio70 to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %private_bio70, align 8
  call void @bio_endio(ptr noundef %380) #9
  br label %if.end32.i

if.then28.i:                                      ; preds = %if.else13.i
  %381 = ptrtoint ptr %device1.i234 to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %device1.i234, align 4
  %sector.i55.i = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 3, i32 1
  %383 = ptrtoint ptr %sector.i55.i to i32
  call void @__asan_load8_noabort(i32 %383)
  %384 = load i64, ptr %sector.i55.i, align 8
  %385 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load i32, ptr %size, align 8
  %shr.i57.i = lshr i32 %386, 9
  %call.i58.i = call i32 @drbd_issue_discard_or_zero_out(ptr noundef %382, i64 noundef %384, i32 noundef %shr.i57.i, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i58.i)
  %tobool.not.i59.i = icmp eq i32 %call.i58.i, 0
  br i1 %tobool.not.i59.i, label %if.then28.i.drbd_process_discard_or_zeroes_req.exit65.i_crit_edge, label %if.then.i62.i

if.then28.i.drbd_process_discard_or_zeroes_req.exit65.i_crit_edge: ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %drbd_process_discard_or_zeroes_req.exit65.i

if.then.i62.i:                                    ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #11
  %387 = ptrtoint ptr %private_bio70 to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %private_bio70, align 8
  %bi_status.i61.i = getelementptr inbounds %struct.bio, ptr %388, i32 0, i32 6
  %389 = ptrtoint ptr %bi_status.i61.i to i32
  call void @__asan_store1_noabort(i32 %389)
  store i8 10, ptr %bi_status.i61.i, align 2
  br label %drbd_process_discard_or_zeroes_req.exit65.i

drbd_process_discard_or_zeroes_req.exit65.i:      ; preds = %if.then.i62.i, %if.then28.i.drbd_process_discard_or_zeroes_req.exit65.i_crit_edge
  %390 = ptrtoint ptr %private_bio70 to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %private_bio70, align 8
  call void @bio_endio(ptr noundef %391) #9
  br label %if.end32.i

if.else29.i:                                      ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @submit_bio_noacct(ptr noundef %343) #9
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.else29.i, %drbd_process_discard_or_zeroes_req.exit65.i, %drbd_process_discard_or_zeroes_req.exit.i, %if.then12.i
  call fastcc void @put_ldev(ptr noundef %341) #9
  br label %if.end92

if.else33.i:                                      ; preds = %if.then6.i.i258, %bio_set_dev.exit.i.if.else33.i_crit_edge
  %bi_status.i66.i = getelementptr inbounds %struct.bio, ptr %343, i32 0, i32 6
  %392 = ptrtoint ptr %bi_status.i66.i to i32
  call void @__asan_store1_noabort(i32 %392)
  store i8 10, ptr %bi_status.i66.i, align 2
  call void @bio_endio(ptr noundef %343) #9
  br label %if.end92

if.else77:                                        ; preds = %if.end69
  br i1 %no_remote.0.off0279, label %if.else77.nodata_crit_edge, label %if.else77.out_crit_edge

if.else77.out_crit_edge:                          ; preds = %if.else77
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.else77.nodata_crit_edge:                       ; preds = %if.else77
  call void @__sanitizer_cov_trace_pc() #11
  br label %nodata

nodata:                                           ; preds = %if.else77.nodata_crit_edge, %if.then38, %land.lhs.true.nodata_crit_edge
  %call80 = call i32 @___ratelimit(ptr noundef nonnull @drbd_ratelimit_state, ptr noundef nonnull @__func__.drbd_send_and_submit) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %nodata.out_crit_edge, label %do.end

nodata.out_crit_edge:                             ; preds = %nodata
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.end:                                           ; preds = %nodata
  call void @__sanitizer_cov_trace_pc() #11
  %vdisk = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %393 = ptrtoint ptr %vdisk to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %vdisk, align 4
  %part0 = getelementptr inbounds %struct.gendisk, ptr %394, i32 0, i32 7
  %395 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %part0, align 4
  %bd_device = getelementptr inbounds %struct.block_device, ptr %396, i32 0, i32 10
  %sector = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 3, i32 1
  %397 = ptrtoint ptr %sector to i32
  call void @__asan_load8_noabort(i32 %397)
  %398 = load i64, ptr %sector, align 8
  %size85 = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 3, i32 2
  %399 = ptrtoint ptr %size85 to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load i32, ptr %size85, align 8
  %shr = lshr i32 %400, 9
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %bd_device, ptr noundef nonnull @.str.85, i64 noundef %398, i32 noundef %shr) #12
  br label %out

out:                                              ; preds = %do.end, %nodata.out_crit_edge, %if.else77.out_crit_edge
  call fastcc void @drbd_req_put_completion_ref(ptr noundef %req, ptr noundef nonnull %m, i32 noundef 1)
  call void @_raw_spin_unlock_irq(ptr noundef %req_lock) #9
  br label %if.end92

if.end92.critedge145:                             ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @drbd_req_put_completion_ref(ptr noundef %req, ptr noundef nonnull %m, i32 noundef 1)
  call void @_raw_spin_unlock_irq(ptr noundef %req_lock) #9
  br label %if.end92

if.end92:                                         ; preds = %if.end92.critedge145, %out, %if.else33.i, %if.end32.i, %if.then5
  %401 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load ptr, ptr %m, align 8
  %tobool93.not = icmp eq ptr %402, null
  br i1 %tobool93.not, label %if.end92.if.end95_crit_edge, label %if.then94

if.end92.if.end95_crit_edge:                      ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end95

if.then94:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #11
  %error.i = getelementptr inbounds %struct.bio_and_error, ptr %m, i32 0, i32 1
  %403 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load i32, ptr %error.i, align 4
  %call.i265 = call zeroext i8 @errno_to_blk_status(i32 noundef %404) #9
  %405 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %m, align 8
  %bi_status.i = getelementptr inbounds %struct.bio, ptr %406, i32 0, i32 6
  %407 = ptrtoint ptr %bi_status.i to i32
  call void @__asan_store1_noabort(i32 %407)
  store i8 %call.i265, ptr %bi_status.i, align 2
  call void @bio_endio(ptr noundef %406) #9
  call fastcc void @dec_ap_bio(ptr noundef %device) #9
  br label %if.end95

if.end95:                                         ; preds = %if.then94, %if.end92.if.end95_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %m) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @do_submit(ptr noundef %ws) local_unnamed_addr #0 align 64 {
entry:
  %plug.i130 = alloca %struct.blk_plug, align 4
  %plug.i = alloca %struct.blk_plug, align 4
  %incoming = alloca %struct.list_head, align 4
  %pending = alloca %struct.list_head, align 4
  %busy = alloca %struct.list_head, align 4
  %wait = alloca %struct.wait_queue_entry, align 4
  %more_pending = alloca %struct.list_head, align 4
  %more_incoming = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ws, i32 -1216
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %incoming) #9
  %0 = getelementptr inbounds %struct.list_head, ptr %incoming, i32 0, i32 1
  %1 = ptrtoint ptr %incoming to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %incoming, ptr %incoming, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %incoming, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pending) #9
  %3 = getelementptr inbounds %struct.list_head, ptr %pending, i32 0, i32 1
  %4 = ptrtoint ptr %pending to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %pending, ptr %pending, align 4
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %pending, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %busy) #9
  %6 = getelementptr inbounds %struct.list_head, ptr %busy, i32 0, i32 1
  %7 = ptrtoint ptr %busy to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %busy, ptr %busy, align 4
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %busy, ptr %6, align 4
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr, align 8
  %req_lock = getelementptr inbounds %struct.drbd_resource, ptr %10, i32 0, i32 12
  call void @_raw_spin_lock_irq(ptr noundef %req_lock) #9
  %writes = getelementptr i8, ptr %ws, i32 44
  %11 = ptrtoint ptr %writes to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %writes, align 4
  %cmp.i.not.i = icmp eq ptr %12, %writes
  br i1 %cmp.i.not.i, label %entry.list_splice_tail_init.exit_crit_edge, label %if.then.i

entry.list_splice_tail_init.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %0, align 4
  %prev2.i.i = getelementptr i8, ptr %ws, i32 48
  %15 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %17 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev3.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %12, ptr %14, align 4
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %incoming, ptr %16, align 4
  store ptr %16, ptr %0, align 4
  %20 = ptrtoint ptr %writes to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %writes, ptr %writes, align 4
  store ptr %writes, ptr %prev2.i.i, align 4
  br label %list_splice_tail_init.exit

list_splice_tail_init.exit:                       ; preds = %if.then.i, %entry.list_splice_tail_init.exit_crit_edge
  %21 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr, align 8
  %req_lock6 = getelementptr inbounds %struct.drbd_resource, ptr %22, i32 0, i32 12
  call void @_raw_spin_unlock_irq(ptr noundef %req_lock6) #9
  %23 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %24 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %25 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %26 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %flags.i = getelementptr i8, ptr %ws, i32 -1152
  %ap_actlog_cnt.i = getelementptr i8, ptr %ws, i32 -768
  %al_wait = getelementptr i8, ptr %ws, i32 -352
  %prev2.i.i98 = getelementptr i8, ptr %ws, i32 48
  %27 = getelementptr inbounds %struct.list_head, ptr %more_pending, i32 0, i32 1
  %28 = getelementptr inbounds %struct.list_head, ptr %more_incoming, i32 0, i32 1
  %29 = getelementptr inbounds i8, ptr %wait, i32 4
  br label %for.cond

for.cond:                                         ; preds = %cleanup58, %list_splice_tail_init.exit
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #9
  %30 = call ptr @memset(ptr %29, i32 255, i32 16)
  %31 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %wait, align 4
  %32 = call i32 @llvm.read_register.i32(metadata !211) #9
  %and.i = and i32 %32, -16384
  %33 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %task, align 8
  %36 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %23, align 4
  %37 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @autoremove_wake_function, ptr %24, align 4
  %38 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %25, ptr %25, align 4
  %39 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %25, ptr %26, align 4
  %40 = ptrtoint ptr %busy to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile ptr, ptr %busy, align 4
  %cmp.i.not.i80 = icmp eq ptr %41, %busy
  br i1 %cmp.i.not.i80, label %for.cond.list_splice_init.exit_crit_edge, label %if.then.i83

for.cond.list_splice_init.exit_crit_edge:         ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_init.exit

if.then.i83:                                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %incoming to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %incoming, align 4
  %44 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %6, align 4
  %prev3.i.i82 = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  %46 = ptrtoint ptr %prev3.i.i82 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %incoming, ptr %prev3.i.i82, align 4
  store ptr %41, ptr %incoming, align 4
  %47 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %43, ptr %45, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  %48 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %45, ptr %prev6.i.i, align 4
  %49 = ptrtoint ptr %busy to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %busy, ptr %busy, align 4
  store ptr %busy, ptr %6, align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i83, %for.cond.list_splice_init.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %plug.i) #9
  %50 = call ptr @memset(ptr %plug.i, i32 255, i32 24)
  call void @blk_start_plug(ptr noundef nonnull %plug.i) #9
  %51 = ptrtoint ptr %incoming to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %incoming, align 4
  %cmp.not41.i = icmp eq ptr %52, %incoming
  br i1 %cmp.not41.i, label %list_splice_init.exit.submit_fast_path.exit_crit_edge, label %list_splice_init.exit.for.body.i_crit_edge

list_splice_init.exit.for.body.i_crit_edge:       ; preds = %list_splice_init.exit
  br label %for.body.i

list_splice_init.exit.submit_fast_path.exit_crit_edge: ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %submit_fast_path.exit

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %list_splice_init.exit.for.body.i_crit_edge
  %.pn.in42.i = phi ptr [ %.pn45.i, %cleanup.i.for.body.i_crit_edge ], [ %52, %list_splice_init.exit.for.body.i_crit_edge ]
  %req.044.i = getelementptr i8, ptr %.pn.in42.i, i32 -76
  %53 = ptrtoint ptr %.pn.in42.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %.pn45.i = load ptr, ptr %.pn.in42.i, align 4
  %master_bio.i = getelementptr i8, ptr %.pn.in42.i, i32 8
  %54 = ptrtoint ptr %master_bio.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %master_bio.i, align 4
  %bi_opf.i = getelementptr inbounds %struct.bio, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %bi_opf.i, align 8
  %and.i.i = and i32 %57, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %for.body.i.if.end16.i_crit_edge, label %land.lhs.true.i

for.body.i.if.end16.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %private_bio.i = getelementptr i8, ptr %.pn.in42.i, i32 -60
  %58 = ptrtoint ptr %private_bio.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %private_bio.i, align 8
  %tobool.not.i = icmp eq ptr %59, null
  br i1 %tobool.not.i, label %land.lhs.true.i.if.end16.i_crit_edge, label %land.lhs.true8.i

land.lhs.true.i.if.end16.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16.i

land.lhs.true8.i:                                 ; preds = %land.lhs.true.i
  %i.i = getelementptr i8, ptr %.pn.in42.i, i32 -52
  %size.i = getelementptr i8, ptr %.pn.in42.i, i32 -28
  %60 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool9.not.i = icmp eq i32 %61, 0
  br i1 %tobool9.not.i, label %land.lhs.true8.i.if.end16.i_crit_edge, label %land.lhs.true10.i

land.lhs.true8.i.if.end16.i_crit_edge:            ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16.i

land.lhs.true10.i:                                ; preds = %land.lhs.true8.i
  %62 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %flags.i, align 4
  %64 = and i32 %63, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool12.not.i = icmp eq i32 %64, 0
  br i1 %tobool12.not.i, label %if.then.i84, label %land.lhs.true10.i.if.end16.i_crit_edge

land.lhs.true10.i.if.end16.i_crit_edge:           ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16.i

if.then.i84:                                      ; preds = %land.lhs.true10.i
  %call14.i = call zeroext i1 @drbd_al_begin_io_fastpath(ptr noundef %add.ptr, ptr noundef %i.i) #9
  br i1 %call14.i, label %if.end.i, label %if.then.i84.cleanup.i_crit_edge

if.then.i84.cleanup.i_crit_edge:                  ; preds = %if.then.i84
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

if.end.i:                                         ; preds = %if.then.i84
  call void @__sanitizer_cov_trace_pc() #11
  %rq_state.i = getelementptr i8, ptr %.pn.in42.i, i32 60
  %65 = ptrtoint ptr %rq_state.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %rq_state.i, align 8
  %or.i = or i32 %66, 32768
  store i32 %or.i, ptr %rq_state.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %67 = load volatile i32, ptr @jiffies, align 128
  %in_actlog_jif.i = getelementptr i8, ptr %.pn.in42.i, i32 32
  %68 = ptrtoint ptr %in_actlog_jif.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %in_actlog_jif.i, align 4
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ap_actlog_cnt.i, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %ap_actlog_cnt.i, i32 1, i32 3, i32 1) #9
  %69 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ap_actlog_cnt.i, ptr %ap_actlog_cnt.i, i32 1, ptr elementtype(i32) %ap_actlog_cnt.i) #9, !srcloc !233
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.end.i, %land.lhs.true10.i.if.end16.i_crit_edge, %land.lhs.true8.i.if.end16.i_crit_edge, %land.lhs.true.i.if.end16.i_crit_edge, %for.body.i.if.end16.i_crit_edge
  %call.i.i38.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in42.i) #9
  br i1 %call.i.i38.i, label %if.end.i.i.i, label %if.end16.i.list_del_init.exit.i_crit_edge

if.end16.i.list_del_init.exit.i_crit_edge:        ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in42.i, i32 0, i32 1
  %70 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %prev.i.i.i, align 4
  %72 = ptrtoint ptr %.pn.in42.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %.pn.in42.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %71, ptr %prev1.i.i.i.i, align 4
  %75 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile ptr %73, ptr %71, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.end16.i.list_del_init.exit.i_crit_edge
  %76 = ptrtoint ptr %.pn.in42.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %.pn.in42.i, ptr %.pn.in42.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in42.i, i32 0, i32 1
  %77 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %.pn.in42.i, ptr %prev.i3.i.i, align 4
  call fastcc void @drbd_send_and_submit(ptr noundef %add.ptr, ptr noundef %req.044.i) #9
  br label %cleanup.i

cleanup.i:                                        ; preds = %list_del_init.exit.i, %if.then.i84.cleanup.i_crit_edge
  %cmp.not.i = icmp eq ptr %.pn45.i, %incoming
  br i1 %cmp.not.i, label %cleanup.i.submit_fast_path.exit_crit_edge, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

cleanup.i.submit_fast_path.exit_crit_edge:        ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %submit_fast_path.exit

submit_fast_path.exit:                            ; preds = %cleanup.i.submit_fast_path.exit_crit_edge, %list_splice_init.exit.submit_fast_path.exit_crit_edge
  call void @blk_finish_plug(ptr noundef nonnull %plug.i) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %plug.i) #9
  %78 = ptrtoint ptr %incoming to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile ptr, ptr %incoming, align 4
  %cmp.i.not = icmp eq ptr %79, %incoming
  br i1 %cmp.i.not, label %for.end61, label %submit_fast_path.exit.for.cond13_crit_edge

submit_fast_path.exit.for.cond13_crit_edge:       ; preds = %submit_fast_path.exit
  br label %for.cond13

for.cond13:                                       ; preds = %for.cond13.backedge, %submit_fast_path.exit.for.cond13_crit_edge
  call void @prepare_to_wait(ptr noundef %al_wait, ptr noundef nonnull %wait, i32 noundef 2) #9
  %80 = ptrtoint ptr %busy to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile ptr, ptr %busy, align 4
  %cmp.i.not.i85 = icmp eq ptr %81, %busy
  br i1 %cmp.i.not.i85, label %for.cond13.list_splice_init.exit91_crit_edge, label %if.then.i89

for.cond13.list_splice_init.exit91_crit_edge:     ; preds = %for.cond13
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_init.exit91

if.then.i89:                                      ; preds = %for.cond13
  call void @__sanitizer_cov_trace_pc() #11
  %82 = ptrtoint ptr %incoming to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %incoming, align 4
  %84 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %6, align 4
  %prev3.i.i87 = getelementptr inbounds %struct.list_head, ptr %81, i32 0, i32 1
  %86 = ptrtoint ptr %prev3.i.i87 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %incoming, ptr %prev3.i.i87, align 4
  store ptr %81, ptr %incoming, align 4
  %87 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %83, ptr %85, align 4
  %prev6.i.i88 = getelementptr inbounds %struct.list_head, ptr %83, i32 0, i32 1
  %88 = ptrtoint ptr %prev6.i.i88 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %85, ptr %prev6.i.i88, align 4
  %89 = ptrtoint ptr %busy to i32
  call void @__asan_store4_noabort(i32 %89)
  store volatile ptr %busy, ptr %busy, align 4
  store ptr %busy, ptr %6, align 4
  br label %list_splice_init.exit91

list_splice_init.exit91:                          ; preds = %if.then.i89, %for.cond13.list_splice_init.exit91_crit_edge
  %call14 = call fastcc zeroext i1 @prepare_al_transaction_nonblock(ptr noundef %add.ptr, ptr noundef nonnull %incoming, ptr noundef nonnull %pending, ptr noundef nonnull %busy)
  %90 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile ptr, ptr %pending, align 4
  %cmp.i92.not = icmp eq ptr %91, %pending
  br i1 %cmp.i92.not, label %if.end18, label %for.end

if.end18:                                         ; preds = %list_splice_init.exit91
  call void @schedule() #9
  %92 = ptrtoint ptr %incoming to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load volatile ptr, ptr %incoming, align 4
  %cmp.i94.not = icmp eq ptr %93, %incoming
  br i1 %cmp.i94.not, label %if.end22, label %if.end18.for.cond13.backedge_crit_edge

if.end18.for.cond13.backedge_crit_edge:           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond13.backedge

if.end22:                                         ; preds = %if.end18
  %94 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %add.ptr, align 8
  %req_lock24 = getelementptr inbounds %struct.drbd_resource, ptr %95, i32 0, i32 12
  call void @_raw_spin_lock_irq(ptr noundef %req_lock24) #9
  %96 = ptrtoint ptr %writes to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load volatile ptr, ptr %writes, align 4
  %cmp.i.not.i96 = icmp eq ptr %97, %writes
  br i1 %cmp.i.not.i96, label %if.end22.list_splice_tail_init.exit102_crit_edge, label %if.then.i100

if.end22.list_splice_tail_init.exit102_crit_edge: ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit102

if.then.i100:                                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %98 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %0, align 4
  %100 = ptrtoint ptr %prev2.i.i98 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %prev2.i.i98, align 4
  %prev3.i.i99 = getelementptr inbounds %struct.list_head, ptr %97, i32 0, i32 1
  %102 = ptrtoint ptr %prev3.i.i99 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %99, ptr %prev3.i.i99, align 4
  %103 = ptrtoint ptr %99 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %97, ptr %99, align 4
  %104 = ptrtoint ptr %101 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %incoming, ptr %101, align 4
  store ptr %101, ptr %0, align 4
  %105 = ptrtoint ptr %writes to i32
  call void @__asan_store4_noabort(i32 %105)
  store volatile ptr %writes, ptr %writes, align 4
  store ptr %writes, ptr %prev2.i.i98, align 4
  br label %list_splice_tail_init.exit102

list_splice_tail_init.exit102:                    ; preds = %if.then.i100, %if.end22.list_splice_tail_init.exit102_crit_edge
  %106 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %add.ptr, align 8
  %req_lock28 = getelementptr inbounds %struct.drbd_resource, ptr %107, i32 0, i32 12
  call void @_raw_spin_unlock_irq(ptr noundef %req_lock28) #9
  br label %for.cond13.backedge

for.cond13.backedge:                              ; preds = %list_splice_tail_init.exit102, %if.end18.for.cond13.backedge_crit_edge
  br label %for.cond13

for.end:                                          ; preds = %list_splice_init.exit91
  call void @finish_wait(ptr noundef %al_wait, ptr noundef nonnull %wait) #9
  %108 = ptrtoint ptr %incoming to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load volatile ptr, ptr %incoming, align 4
  %cmp.i103.not147 = icmp eq ptr %109, %incoming
  br i1 %cmp.i103.not147, label %for.end.while.body_crit_edge, label %for.end.while.end_crit_edge

for.end.while.end_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

for.end.while.body_crit_edge:                     ; preds = %for.end
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %for.end.while.body_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %more_pending) #9
  %110 = ptrtoint ptr %more_pending to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %more_pending, ptr %more_pending, align 4
  %111 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %more_pending, ptr %27, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %more_incoming) #9
  %112 = ptrtoint ptr %more_incoming to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %more_incoming, ptr %more_incoming, align 4
  %113 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %more_incoming, ptr %28, align 4
  %114 = ptrtoint ptr %writes to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load volatile ptr, ptr %writes, align 4
  %cmp.i105.not = icmp eq ptr %115, %writes
  br i1 %cmp.i105.not, label %while.body.cleanup.thread_crit_edge, label %if.end41

while.body.cleanup.thread_crit_edge:              ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

if.end41:                                         ; preds = %while.body
  %116 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %add.ptr, align 8
  %req_lock43 = getelementptr inbounds %struct.drbd_resource, ptr %117, i32 0, i32 12
  call void @_raw_spin_lock_irq(ptr noundef %req_lock43) #9
  %118 = ptrtoint ptr %writes to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load volatile ptr, ptr %writes, align 4
  %cmp.i.not.i107 = icmp eq ptr %119, %writes
  br i1 %cmp.i.not.i107, label %if.end41.list_splice_tail_init.exit113_crit_edge, label %if.then.i111

if.end41.list_splice_tail_init.exit113_crit_edge: ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit113

if.then.i111:                                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  %120 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %28, align 4
  %122 = ptrtoint ptr %prev2.i.i98 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %prev2.i.i98, align 4
  %prev3.i.i110 = getelementptr inbounds %struct.list_head, ptr %119, i32 0, i32 1
  %124 = ptrtoint ptr %prev3.i.i110 to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %121, ptr %prev3.i.i110, align 4
  %125 = ptrtoint ptr %121 to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %119, ptr %121, align 4
  %126 = ptrtoint ptr %123 to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %more_incoming, ptr %123, align 4
  store ptr %123, ptr %28, align 4
  %127 = ptrtoint ptr %writes to i32
  call void @__asan_store4_noabort(i32 %127)
  store volatile ptr %writes, ptr %writes, align 4
  store ptr %writes, ptr %prev2.i.i98, align 4
  br label %list_splice_tail_init.exit113

list_splice_tail_init.exit113:                    ; preds = %if.then.i111, %if.end41.list_splice_tail_init.exit113_crit_edge
  %128 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %add.ptr, align 8
  %req_lock47 = getelementptr inbounds %struct.drbd_resource, ptr %129, i32 0, i32 12
  call void @_raw_spin_unlock_irq(ptr noundef %req_lock47) #9
  %130 = ptrtoint ptr %more_incoming to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load volatile ptr, ptr %more_incoming, align 4
  %cmp.i114.not = icmp eq ptr %131, %more_incoming
  br i1 %cmp.i114.not, label %list_splice_tail_init.exit113.cleanup.thread_crit_edge, label %if.end51

list_splice_tail_init.exit113.cleanup.thread_crit_edge: ; preds = %list_splice_tail_init.exit113
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

if.end51:                                         ; preds = %list_splice_tail_init.exit113
  %call52 = call fastcc zeroext i1 @prepare_al_transaction_nonblock(ptr noundef %add.ptr, ptr noundef nonnull %more_incoming, ptr noundef nonnull %more_pending, ptr noundef nonnull %busy)
  %132 = ptrtoint ptr %more_pending to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load volatile ptr, ptr %more_pending, align 4
  %cmp.i.not.i116 = icmp eq ptr %133, %more_pending
  br i1 %cmp.i.not.i116, label %if.end51.list_splice_tail_init.exit122_crit_edge, label %if.then.i120

if.end51.list_splice_tail_init.exit122_crit_edge: ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit122

if.then.i120:                                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  %134 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %3, align 4
  %136 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %27, align 4
  %prev3.i.i119 = getelementptr inbounds %struct.list_head, ptr %133, i32 0, i32 1
  %138 = ptrtoint ptr %prev3.i.i119 to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %135, ptr %prev3.i.i119, align 4
  %139 = ptrtoint ptr %135 to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %133, ptr %135, align 4
  %140 = ptrtoint ptr %137 to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %pending, ptr %137, align 4
  store ptr %137, ptr %3, align 4
  %141 = ptrtoint ptr %more_pending to i32
  call void @__asan_store4_noabort(i32 %141)
  store volatile ptr %more_pending, ptr %more_pending, align 4
  br label %list_splice_tail_init.exit122

list_splice_tail_init.exit122:                    ; preds = %if.then.i120, %if.end51.list_splice_tail_init.exit122_crit_edge
  %142 = ptrtoint ptr %more_incoming to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load volatile ptr, ptr %more_incoming, align 4
  %cmp.i.not.i123 = icmp eq ptr %143, %more_incoming
  br i1 %cmp.i.not.i123, label %list_splice_tail_init.exit122.list_splice_tail_init.exit129_crit_edge, label %if.then.i127

list_splice_tail_init.exit122.list_splice_tail_init.exit129_crit_edge: ; preds = %list_splice_tail_init.exit122
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit129

if.then.i127:                                     ; preds = %list_splice_tail_init.exit122
  call void @__sanitizer_cov_trace_pc() #11
  %144 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %0, align 4
  %146 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %28, align 4
  %prev3.i.i126 = getelementptr inbounds %struct.list_head, ptr %143, i32 0, i32 1
  %148 = ptrtoint ptr %prev3.i.i126 to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %145, ptr %prev3.i.i126, align 4
  %149 = ptrtoint ptr %145 to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %143, ptr %145, align 4
  %150 = ptrtoint ptr %147 to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %incoming, ptr %147, align 4
  store ptr %147, ptr %0, align 4
  %151 = ptrtoint ptr %more_incoming to i32
  call void @__asan_store4_noabort(i32 %151)
  store volatile ptr %more_incoming, ptr %more_incoming, align 4
  br label %list_splice_tail_init.exit129

list_splice_tail_init.exit129:                    ; preds = %if.then.i127, %list_splice_tail_init.exit122.list_splice_tail_init.exit129_crit_edge
  br i1 %call52, label %cleanup, label %list_splice_tail_init.exit129.cleanup.thread_crit_edge

list_splice_tail_init.exit129.cleanup.thread_crit_edge: ; preds = %list_splice_tail_init.exit129
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %list_splice_tail_init.exit129.cleanup.thread_crit_edge, %list_splice_tail_init.exit113.cleanup.thread_crit_edge, %while.body.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %more_incoming) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %more_pending) #9
  br label %while.end

cleanup:                                          ; preds = %list_splice_tail_init.exit129
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %more_incoming) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %more_pending) #9
  %152 = ptrtoint ptr %incoming to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load volatile ptr, ptr %incoming, align 4
  %cmp.i103.not = icmp eq ptr %153, %incoming
  br i1 %cmp.i103.not, label %cleanup.while.body_crit_edge, label %cleanup.while.end_crit_edge

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %cleanup.thread, %for.end.while.end_crit_edge
  call void @drbd_al_begin_io_commit(ptr noundef %add.ptr) #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %plug.i130) #9
  %154 = call ptr @memset(ptr %plug.i130, i32 255, i32 24)
  call void @blk_start_plug(ptr noundef nonnull %plug.i130) #9
  %155 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load volatile ptr, ptr %pending, align 4
  %cmp.not11.i = icmp eq ptr %156, %pending
  %add.ptr12.i = getelementptr i8, ptr %156, i32 -76
  %tobool.not1013.i = icmp eq ptr %add.ptr12.i, null
  %tobool.not14.i = or i1 %cmp.not11.i, %tobool.not1013.i
  br i1 %tobool.not14.i, label %while.end.cleanup58_crit_edge, label %while.end.while.body.i_crit_edge

while.end.while.body.i_crit_edge:                 ; preds = %while.end
  br label %while.body.i

while.end.cleanup58_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup58

while.body.i:                                     ; preds = %list_del_init.exit.i142.while.body.i_crit_edge, %while.end.while.body.i_crit_edge
  %add.ptr15.i = phi ptr [ %add.ptr.i, %list_del_init.exit.i142.while.body.i_crit_edge ], [ %add.ptr12.i, %while.end.while.body.i_crit_edge ]
  %157 = phi ptr [ %172, %list_del_init.exit.i142.while.body.i_crit_edge ], [ %156, %while.end.while.body.i_crit_edge ]
  %rq_state.i132 = getelementptr i8, ptr %157, i32 60
  %158 = ptrtoint ptr %rq_state.i132 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %rq_state.i132, align 8
  %or.i133 = or i32 %159, 32768
  store i32 %or.i133, ptr %rq_state.i132, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %160 = load volatile i32, ptr @jiffies, align 128
  %in_actlog_jif.i134 = getelementptr i8, ptr %157, i32 32
  %161 = ptrtoint ptr %in_actlog_jif.i134 to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %160, ptr %in_actlog_jif.i134, align 4
  %call.i.i.i135 = call zeroext i1 @__kasan_check_write(ptr noundef %ap_actlog_cnt.i, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %ap_actlog_cnt.i, i32 1, i32 3, i32 1) #9
  %162 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ap_actlog_cnt.i, ptr %ap_actlog_cnt.i, i32 1, ptr elementtype(i32) %ap_actlog_cnt.i) #9, !srcloc !233
  %call.i.i9.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %157) #9
  br i1 %call.i.i9.i, label %if.end.i.i.i138, label %while.body.i.list_del_init.exit.i142_crit_edge

while.body.i.list_del_init.exit.i142_crit_edge:   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit.i142

if.end.i.i.i138:                                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i136 = getelementptr inbounds %struct.list_head, ptr %157, i32 0, i32 1
  %163 = ptrtoint ptr %prev.i.i.i136 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %prev.i.i.i136, align 4
  %165 = ptrtoint ptr %157 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %157, align 4
  %prev1.i.i.i.i137 = getelementptr inbounds %struct.list_head, ptr %166, i32 0, i32 1
  %167 = ptrtoint ptr %prev1.i.i.i.i137 to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr %164, ptr %prev1.i.i.i.i137, align 4
  %168 = ptrtoint ptr %164 to i32
  call void @__asan_store4_noabort(i32 %168)
  store volatile ptr %166, ptr %164, align 4
  br label %list_del_init.exit.i142

list_del_init.exit.i142:                          ; preds = %if.end.i.i.i138, %while.body.i.list_del_init.exit.i142_crit_edge
  %169 = ptrtoint ptr %157 to i32
  call void @__asan_store4_noabort(i32 %169)
  store volatile ptr %157, ptr %157, align 4
  %prev.i3.i.i139 = getelementptr inbounds %struct.list_head, ptr %157, i32 0, i32 1
  %170 = ptrtoint ptr %prev.i3.i.i139 to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr %157, ptr %prev.i3.i.i139, align 4
  call fastcc void @drbd_send_and_submit(ptr noundef %add.ptr, ptr noundef nonnull %add.ptr15.i) #9
  %171 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load volatile ptr, ptr %pending, align 4
  %cmp.not.i140 = icmp eq ptr %172, %pending
  %add.ptr.i = getelementptr i8, ptr %172, i32 -76
  %tobool.not10.i = icmp eq ptr %add.ptr.i, null
  %tobool.not.i141 = or i1 %cmp.not.i140, %tobool.not10.i
  br i1 %tobool.not.i141, label %list_del_init.exit.i142.cleanup58_crit_edge, label %list_del_init.exit.i142.while.body.i_crit_edge

list_del_init.exit.i142.while.body.i_crit_edge:   ; preds = %list_del_init.exit.i142
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

list_del_init.exit.i142.cleanup58_crit_edge:      ; preds = %list_del_init.exit.i142
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup58

cleanup58:                                        ; preds = %list_del_init.exit.i142.cleanup58_crit_edge, %while.end.cleanup58_crit_edge
  call void @blk_finish_plug(ptr noundef nonnull %plug.i130) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %plug.i130) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #9
  br label %for.cond

for.end61:                                        ; preds = %submit_fast_path.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %busy) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pending) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %incoming) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_to_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @prepare_al_transaction_nonblock(ptr noundef %device, ptr noundef %incoming, ptr noundef %pending, ptr noundef %later) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %al_lock = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 81
  tail call void @_raw_spin_lock_irq(ptr noundef %al_lock) #9
  %0 = ptrtoint ptr %incoming to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %incoming, align 4
  %cmp.not42 = icmp eq ptr %1, %incoming
  %add.ptr43 = getelementptr i8, ptr %1, i32 -76
  %tobool.not4144 = icmp eq ptr %add.ptr43, null
  %tobool.not45 = or i1 %cmp.not42, %tobool.not4144
  br i1 %tobool.not45, label %while.end.thread, label %while.body.lr.ph

while.end.thread:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irq(ptr noundef %al_lock) #9
  br label %if.end14

while.body.lr.ph:                                 ; preds = %entry
  %prev.i2.i31 = getelementptr inbounds %struct.list_head, ptr %pending, i32 0, i32 1
  %prev.i2.i = getelementptr inbounds %struct.list_head, ptr %later, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end10.while.body_crit_edge, %while.body.lr.ph
  %2 = phi ptr [ %1, %while.body.lr.ph ], [ %25, %if.end10.while.body_crit_edge ]
  %wake.046 = phi i32 [ 0, %while.body.lr.ph ], [ %wake.139, %if.end10.while.body_crit_edge ]
  %i = getelementptr i8, ptr %2, i32 -52
  %call = tail call i32 @drbd_al_begin_io_nonblock(ptr noundef %device, ptr noundef %i) #9
  %3 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.119)
  switch i32 %call, label %if.then8.fold.split [
    i32 -105, label %while.body.while.end_crit_edge
    i32 -16, label %while.body.if.then8_crit_edge
    i32 0, label %if.else
  ]

while.body.if.then8_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.then8.fold.split:                              ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8

if.then8:                                         ; preds = %if.then8.fold.split, %while.body.if.then8_crit_edge
  %wake.140 = phi i32 [ 1, %while.body.if.then8_crit_edge ], [ %wake.046, %if.then8.fold.split ]
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.then8.__list_del_entry.exit.i_crit_edge

if.then8.__list_del_entry.exit.i_crit_edge:       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %2, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.then8.__list_del_entry.exit.i_crit_edge
  %10 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %2, ptr noundef %11, ptr noundef %later) #9
  br i1 %call.i.i.i, label %__list_del_entry.exit.i.if.end10.sink.split_crit_edge, label %__list_del_entry.exit.i.if.end10_crit_edge

__list_del_entry.exit.i.if.end10_crit_edge:       ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

__list_del_entry.exit.i.if.end10.sink.split_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.sink.split

if.else:                                          ; preds = %while.body
  %call.i.i27 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #9
  br i1 %call.i.i27, label %if.end.i.i30, label %if.else.__list_del_entry.exit.i33_crit_edge

if.else.__list_del_entry.exit.i33_crit_edge:      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %__list_del_entry.exit.i33

if.end.i.i30:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i28 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i28 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i28, align 4
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %2, align 4
  %prev1.i.i.i29 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i29 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i29, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %__list_del_entry.exit.i33

__list_del_entry.exit.i33:                        ; preds = %if.end.i.i30, %if.else.__list_del_entry.exit.i33_crit_edge
  %18 = ptrtoint ptr %prev.i2.i31 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i2.i31, align 4
  %call.i.i.i32 = tail call zeroext i1 @__list_add_valid(ptr noundef %2, ptr noundef %19, ptr noundef %pending) #9
  br i1 %call.i.i.i32, label %__list_del_entry.exit.i33.if.end10.sink.split_crit_edge, label %__list_del_entry.exit.i33.if.end10_crit_edge

__list_del_entry.exit.i33.if.end10_crit_edge:     ; preds = %__list_del_entry.exit.i33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

__list_del_entry.exit.i33.if.end10.sink.split_crit_edge: ; preds = %__list_del_entry.exit.i33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.sink.split

if.end10.sink.split:                              ; preds = %__list_del_entry.exit.i33.if.end10.sink.split_crit_edge, %__list_del_entry.exit.i.if.end10.sink.split_crit_edge
  %prev.i2.i31.sink = phi ptr [ %prev.i2.i, %__list_del_entry.exit.i.if.end10.sink.split_crit_edge ], [ %prev.i2.i31, %__list_del_entry.exit.i33.if.end10.sink.split_crit_edge ]
  %pending.sink = phi ptr [ %later, %__list_del_entry.exit.i.if.end10.sink.split_crit_edge ], [ %pending, %__list_del_entry.exit.i33.if.end10.sink.split_crit_edge ]
  %.sink50 = phi ptr [ %11, %__list_del_entry.exit.i.if.end10.sink.split_crit_edge ], [ %19, %__list_del_entry.exit.i33.if.end10.sink.split_crit_edge ]
  %wake.139.ph = phi i32 [ %wake.140, %__list_del_entry.exit.i.if.end10.sink.split_crit_edge ], [ %wake.046, %__list_del_entry.exit.i33.if.end10.sink.split_crit_edge ]
  %20 = ptrtoint ptr %prev.i2.i31.sink to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %2, ptr %prev.i2.i31.sink, align 4
  %21 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %pending.sink, ptr %2, align 4
  %prev3.i.i.i34 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %22 = ptrtoint ptr %prev3.i.i.i34 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %.sink50, ptr %prev3.i.i.i34, align 4
  %23 = ptrtoint ptr %.sink50 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %2, ptr %.sink50, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.end10.sink.split, %__list_del_entry.exit.i33.if.end10_crit_edge, %__list_del_entry.exit.i.if.end10_crit_edge
  %wake.139 = phi i32 [ %wake.140, %__list_del_entry.exit.i.if.end10_crit_edge ], [ %wake.046, %__list_del_entry.exit.i33.if.end10_crit_edge ], [ %wake.139.ph, %if.end10.sink.split ]
  %24 = ptrtoint ptr %incoming to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %incoming, align 4
  %cmp.not = icmp eq ptr %25, %incoming
  %add.ptr = getelementptr i8, ptr %25, i32 -76
  %tobool.not41 = icmp eq ptr %add.ptr, null
  %tobool.not = or i1 %cmp.not, %tobool.not41
  br i1 %tobool.not, label %if.end10.while.end_crit_edge, label %if.end10.while.body_crit_edge

if.end10.while.body_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end10.while.end_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %if.end10.while.end_crit_edge, %while.body.while.end_crit_edge
  %wake.0.lcssa = phi i32 [ %wake.139, %if.end10.while.end_crit_edge ], [ %wake.046, %while.body.while.end_crit_edge ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %al_lock) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wake.0.lcssa)
  %tobool12.not = icmp eq i32 %wake.0.lcssa, 0
  br i1 %tobool12.not, label %while.end.if.end14_crit_edge, label %if.then13

while.end.if.end14_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then13:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %al_wait = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 82
  tail call void @__wake_up(ptr noundef %al_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %while.end.if.end14_crit_edge, %while.end.thread
  %26 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %pending, align 4
  %cmp.i = icmp ne ptr %27, %pending
  ret i1 %cmp.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drbd_al_begin_io_commit(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drbd_submit_bio(ptr noundef %bio) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  %bio.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bio.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %bio, ptr %bio.addr, align 4
  %bi_bdev = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 1
  %1 = ptrtoint ptr %bi_bdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bi_bdev, align 4
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %2, i32 0, i32 17
  %3 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bd_disk, align 8
  %private_data = getelementptr inbounds %struct.gendisk, ptr %4, i32 0, i32 10
  %5 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %private_data, align 8
  call void @blk_queue_split(ptr noundef nonnull %bio.addr) #9
  %7 = ptrtoint ptr %bio.addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bio.addr, align 4
  %bi_size = getelementptr inbounds %struct.bio, ptr %8, i32 0, i32 8, i32 1
  %9 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bi_size, align 8
  %and = and i32 %10, 511
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %vdisk = getelementptr inbounds %struct.drbd_device, ptr %6, i32 0, i32 18
  %11 = ptrtoint ptr %vdisk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vdisk, align 4
  %part0 = getelementptr inbounds %struct.gendisk, ptr %12, i32 0, i32 7
  %13 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %part0, align 4
  %bd_device = getelementptr inbounds %struct.block_device, ptr %14, i32 0, i32 10
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %bd_device, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.2, i32 noundef 1608) #12
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  call void @__might_sleep(ptr noundef nonnull @.str.59, i32 noundef 2273) #9
  %call.i = call fastcc zeroext i1 @inc_ap_bio_cond(ptr noundef %6) #9
  br i1 %call.i, label %do.end3.inc_ap_bio.exit_crit_edge, label %if.end.i

do.end3.inc_ap_bio.exit_crit_edge:                ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %inc_ap_bio.exit

if.end.i:                                         ; preds = %do.end3
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #9
  %15 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #9
  %misc_wait.i = getelementptr inbounds %struct.drbd_device, ptr %6, i32 0, i32 28
  %call415.i = call i32 @prepare_to_wait_event(ptr noundef %misc_wait.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #9
  %call516.i = call fastcc zeroext i1 @inc_ap_bio_cond(ptr noundef %6) #9
  br i1 %call516.i, label %if.end.i.for.end.i_crit_edge, label %if.end.i.cleanup.i_crit_edge

if.end.i.cleanup.i_crit_edge:                     ; preds = %if.end.i
  br label %cleanup.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

cleanup.i:                                        ; preds = %cleanup.i.cleanup.i_crit_edge, %if.end.i.cleanup.i_crit_edge
  call void @schedule() #9
  %call4.i = call i32 @prepare_to_wait_event(ptr noundef %misc_wait.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #9
  %call5.i = call fastcc zeroext i1 @inc_ap_bio_cond(ptr noundef %6) #9
  br i1 %call5.i, label %cleanup.i.for.end.i_crit_edge, label %cleanup.i.cleanup.i_crit_edge

cleanup.i.cleanup.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  call void @finish_wait(ptr noundef %misc_wait.i, ptr noundef nonnull %__wq_entry.i) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #9
  br label %inc_ap_bio.exit

inc_ap_bio.exit:                                  ; preds = %for.end.i, %do.end3.inc_ap_bio.exit_crit_edge
  %16 = ptrtoint ptr %bio.addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bio.addr, align 4
  call void @__drbd_make_request(ptr noundef %6, ptr noundef %17)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_split(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @request_timer_fn(ptr noundef %t) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -260
  %peer_devices.i = getelementptr i8, ptr %t, i32 -256
  %0 = ptrtoint ptr %peer_devices.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %peer_devices.i, align 4
  %cmp.not.i = icmp eq ptr %1, %peer_devices.i
  %spec.select.i = select i1 %cmp.not.i, ptr null, ptr %1
  %connection1 = getelementptr inbounds %struct.drbd_peer_device, ptr %spec.select.i, i32 0, i32 2
  %2 = ptrtoint ptr %connection1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %connection1, align 4
  %4 = tail call i32 @llvm.read_register.i32(metadata !211) #9
  %and.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !225
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.62, i32 noundef 696, ptr noundef nonnull @.str.63) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %net_conf = getelementptr inbounds %struct.drbd_connection, ptr %3, i32 0, i32 11
  %8 = ptrtoint ptr %net_conf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %net_conf, align 4
  %call4 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end10_crit_edge

rcu_read_lock.exit.do.end10_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end10

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call5 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.do.end10_crit_edge, label %land.lhs.true7

land.lhs.true.do.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end10

land.lhs.true7:                                   ; preds = %land.lhs.true
  %.b312 = load i1, ptr @request_timer_fn.__warned, align 1
  br i1 %.b312, label %land.lhs.true7.do.end10_crit_edge, label %if.then

land.lhs.true7.do.end10_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end10

if.then:                                          ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @request_timer_fn.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1698, ptr noundef nonnull @.str.17) #9
  br label %do.end10

do.end10:                                         ; preds = %if.then, %land.lhs.true7.do.end10_crit_edge, %land.lhs.true.do.end10_crit_edge, %rcu_read_lock.exit.do.end10_crit_edge
  %tobool12.not = icmp eq ptr %9, null
  br i1 %tobool12.not, label %do.end10.if.end17_crit_edge, label %land.lhs.true13

do.end10.if.end17_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

land.lhs.true13:                                  ; preds = %do.end10
  %state = getelementptr i8, ptr %t, i32 52
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %bf.load = load i32, ptr %state, align 8
  %11 = and i32 %bf.load, 496
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %11)
  %cmp = icmp ugt i32 %11, 128
  br i1 %cmp, label %if.then14, label %land.lhs.true13.if.end17_crit_edge

land.lhs.true13.if.end17_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then14:                                        ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #11
  %ko_count15 = getelementptr inbounds %struct.net_conf, ptr %9, i32 0, i32 17
  %12 = ptrtoint ptr %ko_count15 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ko_count15, align 4
  %timeout16 = getelementptr inbounds %struct.net_conf, ptr %9, i32 0, i32 12
  %14 = ptrtoint ptr %timeout16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %timeout16, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %land.lhs.true13.if.end17_crit_edge, %do.end10.if.end17_crit_edge
  %timeout.0 = phi i32 [ %15, %if.then14 ], [ 0, %land.lhs.true13.if.end17_crit_edge ], [ 0, %do.end10.if.end17_crit_edge ]
  %ko_count.0 = phi i32 [ %13, %if.then14 ], [ 0, %land.lhs.true13.if.end17_crit_edge ], [ 0, %do.end10.if.end17_crit_edge ]
  %state.i = getelementptr i8, ptr %t, i32 52
  %16 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %bf.load.i = load i32, ptr %state.i, align 8
  %17 = and i32 %bf.load.i, 7680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.i = icmp eq i32 %17, 0
  br i1 %cmp.i, label %if.end17.if.end40_crit_edge, label %if.end.i

if.end17.if.end40_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

if.end.i:                                         ; preds = %if.end17
  %local_cnt.i = getelementptr i8, ptr %t, i32 204
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %local_cnt.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %local_cnt.i, i32 1, i32 3, i32 1) #9
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %local_cnt.i, ptr %local_cnt.i, i32 1, ptr elementtype(i32) %local_cnt.i) #9, !srcloc !221
  %19 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %bf.load2.i = load i32, ptr %state.i, align 8
  %20 = and i32 %bf.load2.i, 6144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp5.not.i = icmp eq i32 %20, 0
  br i1 %cmp5.not.i, label %if.then6.i, label %if.then22

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @put_ldev(ptr noundef %add.ptr) #9
  br label %if.end40

if.then22:                                        ; preds = %if.end.i
  %ldev = getelementptr i8, ptr %t, i32 -192
  %21 = ptrtoint ptr %ldev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ldev, align 4
  %disk_conf = getelementptr inbounds %struct.drbd_backing_dev, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %disk_conf to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %disk_conf, align 8
  %call28 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %land.lhs.true30, label %if.then22.do.end38_crit_edge

if.then22.do.end38_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end38

land.lhs.true30:                                  ; preds = %if.then22
  %call31 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %land.lhs.true30.do.end38_crit_edge, label %land.lhs.true33

land.lhs.true30.do.end38_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end38

land.lhs.true33:                                  ; preds = %land.lhs.true30
  %.b310311 = load i1, ptr @request_timer_fn.__warned.54, align 1
  br i1 %.b310311, label %land.lhs.true33.do.end38_crit_edge, label %if.then35

land.lhs.true33.do.end38_crit_edge:               ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end38

if.then35:                                        ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @request_timer_fn.__warned.54, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1705, ptr noundef nonnull @.str.17) #9
  br label %do.end38

do.end38:                                         ; preds = %if.then35, %land.lhs.true33.do.end38_crit_edge, %land.lhs.true30.do.end38_crit_edge, %if.then22.do.end38_crit_edge
  %disk_timeout = getelementptr inbounds %struct.disk_conf, ptr %24, i32 0, i32 17
  %25 = ptrtoint ptr %disk_timeout to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %disk_timeout, align 4
  %mul = mul i32 %26, 100
  %div = udiv i32 %mul, 10
  tail call fastcc void @put_ldev(ptr noundef %add.ptr)
  br label %if.end40

if.end40:                                         ; preds = %do.end38, %if.then6.i, %if.end17.if.end40_crit_edge
  %dt.0 = phi i32 [ %div, %do.end38 ], [ 0, %if.end17.if.end40_crit_edge ], [ 0, %if.then6.i ]
  %call.i319 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i319, label %if.end40.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i322

if.end40.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i322:                               ; preds = %if.end40
  %call1.i320 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i320)
  %tobool.not.i321 = icmp eq i32 %call1.i320, 0
  br i1 %tobool.not.i321, label %land.lhs.true.i322.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i324

land.lhs.true.i322.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i322
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i324:                              ; preds = %land.lhs.true.i322
  %.b4.i323 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i323, label %land.lhs.true2.i324.rcu_read_unlock.exit_crit_edge, label %if.then.i325

land.lhs.true2.i324.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i324
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i325:                                     ; preds = %land.lhs.true2.i324
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.62, i32 noundef 724, ptr noundef nonnull @.str.64) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i325, %land.lhs.true2.i324.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i322.rcu_read_unlock.exit_crit_edge, %if.end40.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !226
  %27 = tail call i32 @llvm.read_register.i32(metadata !211) #9
  %and.i.i.i.i.i326 = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i.i.i326 to ptr
  %preempt_count.i.i.i.i327 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %preempt_count.i.i.i.i327 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %preempt_count.i.i.i.i327, align 4
  %sub.i.i.i = add i32 %30, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i327, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  %mul41 = mul i32 %timeout.0, 100
  %div42 = udiv i32 %mul41, 10
  %mul43 = mul i32 %div42, %ko_count.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dt.0)
  %cmp45 = icmp eq i32 %dt.0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul43)
  %tobool59.not = icmp eq i32 %mul43, 0
  br i1 %cmp45, label %cond.end57, label %cond.false47

cond.false47:                                     ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #11
  %31 = tail call i32 @llvm.umin.i32(i32 %dt.0, i32 %mul43)
  %spec.select342 = select i1 %tobool59.not, i32 %dt.0, i32 %31
  br label %if.end61

cond.end57:                                       ; preds = %rcu_read_unlock.exit
  br i1 %tobool59.not, label %cond.end57.cleanup_crit_edge, label %cond.end57.if.end61_crit_edge

cond.end57.if.end61_crit_edge:                    ; preds = %cond.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

cond.end57.cleanup_crit_edge:                     ; preds = %cond.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end61:                                         ; preds = %cond.end57.if.end61_crit_edge, %cond.false47
  %cond58337 = phi i32 [ %mul43, %cond.end57.if.end61_crit_edge ], [ %spec.select342, %cond.false47 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %32 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %32, %cond58337
  %33 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr, align 8
  %req_lock = getelementptr inbounds %struct.drbd_resource, ptr %34, i32 0, i32 12
  tail call void @_raw_spin_lock_irq(ptr noundef %req_lock) #9
  %pending_completion = getelementptr i8, ptr %t, i32 236
  %35 = ptrtoint ptr %pending_completion to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %pending_completion, align 4
  %cmp67.not = icmp eq ptr %36, %pending_completion
  %add.ptr71 = getelementptr i8, ptr %36, i32 -96
  %spec.select = select i1 %cmp67.not, ptr null, ptr %add.ptr71
  %arrayidx77 = getelementptr i8, ptr %t, i32 244
  %37 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile ptr, ptr %arrayidx77, align 4
  %cmp85.not = icmp eq ptr %38, %arrayidx77
  %add.ptr89 = getelementptr i8, ptr %38, i32 -96
  %cond92 = select i1 %cmp85.not, ptr null, ptr %add.ptr89
  %req_ack_pending = getelementptr inbounds %struct.drbd_connection, ptr %3, i32 0, i32 43
  %39 = ptrtoint ptr %req_ack_pending to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %req_ack_pending, align 4
  %tobool93.not = icmp eq ptr %40, null
  br i1 %tobool93.not, label %if.end95, label %if.end61.land.lhs.true97_crit_edge

if.end61.land.lhs.true97_crit_edge:               ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true97

if.end95:                                         ; preds = %if.end61
  %req_not_net_done = getelementptr inbounds %struct.drbd_connection, ptr %3, i32 0, i32 44
  %41 = ptrtoint ptr %req_not_net_done to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %req_not_net_done, align 4
  %tobool96.not = icmp eq ptr %42, null
  br i1 %tobool96.not, label %if.end95.if.end101_crit_edge, label %if.end95.land.lhs.true97_crit_edge

if.end95.land.lhs.true97_crit_edge:               ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true97

if.end95.if.end101_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end101

land.lhs.true97:                                  ; preds = %if.end95.land.lhs.true97_crit_edge, %if.end61.land.lhs.true97_crit_edge
  %req_peer.0340 = phi ptr [ %42, %if.end95.land.lhs.true97_crit_edge ], [ %40, %if.end61.land.lhs.true97_crit_edge ]
  %device98 = getelementptr inbounds %struct.drbd_request, ptr %req_peer.0340, i32 0, i32 1
  %43 = ptrtoint ptr %device98 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %device98, align 4
  %cmp99.not = icmp eq ptr %44, %add.ptr
  %spec.store.select = select i1 %cmp99.not, ptr %req_peer.0340, ptr null
  br label %if.end101

if.end101:                                        ; preds = %land.lhs.true97, %if.end95.if.end101_crit_edge
  %req_peer.1 = phi ptr [ %spec.store.select, %land.lhs.true97 ], [ null, %if.end95.if.end101_crit_edge ]
  %cmp102 = icmp eq ptr %req_peer.1, null
  %cmp104 = icmp eq ptr %cond92, null
  %or.cond = select i1 %cmp102, i1 %cmp104, i1 false
  %cmp106 = icmp eq ptr %spec.select, null
  %or.cond313 = select i1 %or.cond, i1 %cmp106, i1 false
  br i1 %or.cond313, label %if.end101.out_crit_edge, label %if.end108

if.end101.out_crit_edge:                          ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end108:                                        ; preds = %if.end101
  %or.cond314 = select i1 %cmp104, i1 true, i1 %cmp106
  br i1 %or.cond314, label %cond.false121, label %cond.true112

cond.true112:                                     ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #11
  %pre_submit_jif = getelementptr inbounds %struct.drbd_request, ptr %cond92, i32 0, i32 11
  %45 = ptrtoint ptr %pre_submit_jif to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %pre_submit_jif, align 8
  %pre_submit_jif113 = getelementptr inbounds %struct.drbd_request, ptr %spec.select, i32 0, i32 11
  %47 = ptrtoint ptr %pre_submit_jif113 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %pre_submit_jif113, align 8
  %sub = sub i32 %46, %48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp114 = icmp slt i32 %sub, 0
  %. = select i1 %cmp114, i32 %46, i32 %48
  br label %cond.end134

cond.false121:                                    ; preds = %if.end108
  br i1 %cmp104, label %cond.false125, label %cond.true123

cond.true123:                                     ; preds = %cond.false121
  call void @__sanitizer_cov_trace_pc() #11
  %pre_submit_jif124 = getelementptr inbounds %struct.drbd_request, ptr %cond92, i32 0, i32 11
  %49 = ptrtoint ptr %pre_submit_jif124 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %pre_submit_jif124, align 8
  br label %cond.end134

cond.false125:                                    ; preds = %cond.false121
  br i1 %cmp106, label %cond.false125.cond.end134_crit_edge, label %cond.true127

cond.false125.cond.end134_crit_edge:              ; preds = %cond.false125
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end134

cond.true127:                                     ; preds = %cond.false125
  call void @__sanitizer_cov_trace_pc() #11
  %pre_submit_jif128 = getelementptr inbounds %struct.drbd_request, ptr %spec.select, i32 0, i32 11
  %51 = ptrtoint ptr %pre_submit_jif128 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %pre_submit_jif128, align 8
  br label %cond.end134

cond.end134:                                      ; preds = %cond.true127, %cond.false125.cond.end134_crit_edge, %cond.true123, %cond.true112
  %cond135 = phi i32 [ %50, %cond.true123 ], [ %52, %cond.true127 ], [ %., %cond.true112 ], [ %32, %cond.false125.cond.end134_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul43)
  %tobool136.not = icmp eq i32 %mul43, 0
  %or.cond315 = select i1 %tobool136.not, i1 true, i1 %cmp102
  br i1 %or.cond315, label %cond.end134.if.end152_crit_edge, label %land.lhs.true139

cond.end134.if.end152_crit_edge:                  ; preds = %cond.end134
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end152

land.lhs.true139:                                 ; preds = %cond.end134
  %device1.i = getelementptr inbounds %struct.drbd_request, ptr %req_peer.1, i32 0, i32 1
  %53 = ptrtoint ptr %device1.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %device1.i, align 4
  %pre_send_jif.i = getelementptr inbounds %struct.drbd_request, ptr %req_peer.1, i32 0, i32 12
  %55 = ptrtoint ptr %pre_send_jif.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %pre_send_jif.i, align 4
  %add.i = sub i32 %mul43, %32
  %sub.i = add i32 %56, %add.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i328 = icmp slt i32 %sub.i, 0
  br i1 %cmp.i328, label %if.end.i329, label %land.lhs.true139.if.end152_crit_edge

land.lhs.true139.if.end152_crit_edge:             ; preds = %land.lhs.true139
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end152

if.end.i329:                                      ; preds = %land.lhs.true139
  %last_reconnect_jif.i = getelementptr inbounds %struct.drbd_connection, ptr %3, i32 0, i32 36
  %57 = ptrtoint ptr %last_reconnect_jif.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %last_reconnect_jif.i, align 4
  %sub2.i = sub i32 %32, %58
  %sub6.i = add i32 %58, %add.i
  %59 = or i32 %sub2.i, %sub6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %59)
  %60 = icmp sgt i32 %59, -1
  br i1 %60, label %if.end.i329.if.end152_crit_edge, label %if.end9.i

if.end.i329.if.end152_crit_edge:                  ; preds = %if.end.i329
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end152

if.end9.i:                                        ; preds = %if.end.i329
  %rq_state.i = getelementptr inbounds %struct.drbd_request, ptr %req_peer.1, i32 0, i32 17
  %61 = ptrtoint ptr %rq_state.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %rq_state.i, align 8
  %and.i = and i32 %62, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i330 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i330, label %if.end13.i, label %do.end.i

do.end.i:                                         ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  %vdisk.i = getelementptr inbounds %struct.drbd_device, ptr %54, i32 0, i32 18
  %63 = ptrtoint ptr %vdisk.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %vdisk.i, align 4
  %part0.i = getelementptr inbounds %struct.gendisk, ptr %64, i32 0, i32 7
  %65 = ptrtoint ptr %part0.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %part0.i, align 4
  %bd_device.i = getelementptr inbounds %struct.block_device, ptr %66, i32 0, i32 10
  %sub12.i = sub i32 %32, %56
  %call.i331 = tail call i32 @jiffies_to_msecs(i32 noundef %sub12.i) #9
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.10, ptr noundef %bd_device.i, ptr noundef nonnull @.str.102, i32 noundef %call.i331, i32 noundef %ko_count.0, i32 noundef %timeout.0) #12
  br label %if.then141

if.end13.i:                                       ; preds = %if.end9.i
  %epoch.i = getelementptr inbounds %struct.drbd_request, ptr %req_peer.1, i32 0, i32 4
  %67 = ptrtoint ptr %epoch.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %epoch.i, align 8
  %current_epoch_nr.i = getelementptr inbounds %struct.drbd_connection, ptr %3, i32 0, i32 50, i32 2
  %69 = ptrtoint ptr %current_epoch_nr.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %current_epoch_nr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %70)
  %cmp14.i = icmp eq i32 %68, %70
  br i1 %cmp14.i, label %do.end18.i, label %if.end25.i

do.end18.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  %vdisk19.i = getelementptr inbounds %struct.drbd_device, ptr %54, i32 0, i32 18
  %71 = ptrtoint ptr %vdisk19.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %vdisk19.i, align 4
  %part020.i = getelementptr inbounds %struct.gendisk, ptr %72, i32 0, i32 7
  %73 = ptrtoint ptr %part020.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %part020.i, align 4
  %bd_device21.i = getelementptr inbounds %struct.block_device, ptr %74, i32 0, i32 10
  %sub23.i = sub i32 %32, %56
  %call24.i = tail call i32 @jiffies_to_msecs(i32 noundef %sub23.i) #9
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.10, ptr noundef %bd_device21.i, ptr noundef nonnull @.str.105, i32 noundef %call24.i, i32 noundef %ko_count.0, i32 noundef %timeout.0) #12
  br label %if.end152

if.end25.i:                                       ; preds = %if.end13.i
  %send.i = getelementptr inbounds %struct.drbd_connection, ptr %3, i32 0, i32 50
  %75 = ptrtoint ptr %send.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %send.i, align 4
  %sub28.i = add i32 %76, %add.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub28.i)
  %cmp29.i = icmp slt i32 %sub28.i, 0
  br i1 %cmp29.i, label %do.end33.i, label %if.end25.i.if.end152_crit_edge

if.end25.i.if.end152_crit_edge:                   ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end152

do.end33.i:                                       ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #11
  %vdisk34.i = getelementptr inbounds %struct.drbd_device, ptr %54, i32 0, i32 18
  %77 = ptrtoint ptr %vdisk34.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %vdisk34.i, align 4
  %part035.i = getelementptr inbounds %struct.gendisk, ptr %78, i32 0, i32 7
  %79 = ptrtoint ptr %part035.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %part035.i, align 4
  %bd_device36.i = getelementptr inbounds %struct.block_device, ptr %80, i32 0, i32 10
  %sub41.i = sub i32 %32, %76
  %call42.i = tail call i32 @jiffies_to_msecs(i32 noundef %sub41.i) #9
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.10, ptr noundef %bd_device36.i, ptr noundef nonnull @.str.108, i32 noundef %76, i32 noundef %32, i32 noundef %call42.i, i32 noundef %ko_count.0, i32 noundef %timeout.0) #12
  br label %if.then141

if.then141:                                       ; preds = %do.end33.i, %do.end.i
  %call151 = tail call i32 @_conn_request_state(ptr noundef %3, [1 x i32] [i32 496], [1 x i32] [i32 48], i32 noundef 3) #9
  br label %if.end152

if.end152:                                        ; preds = %if.then141, %if.end25.i.if.end152_crit_edge, %do.end18.i, %if.end.i329.if.end152_crit_edge, %land.lhs.true139.if.end152_crit_edge, %cond.end134.if.end152_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %cond135, i32 %32)
  %cmp155.not = icmp eq i32 %cond135, %32
  %or.cond316 = select i1 %cmp45, i1 true, i1 %cmp155.not
  br i1 %or.cond316, label %if.end152.if.end172_crit_edge, label %land.lhs.true156

if.end152.if.end172_crit_edge:                    ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end172

land.lhs.true156:                                 ; preds = %if.end152
  %add157 = add i32 %cond135, %dt.0
  %sub158 = sub i32 %add157, %32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub158)
  %cmp159 = icmp slt i32 %sub158, 0
  br i1 %cmp159, label %land.lhs.true160, label %land.lhs.true156.if.end172_crit_edge

land.lhs.true156.if.end172_crit_edge:             ; preds = %land.lhs.true156
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end172

land.lhs.true160:                                 ; preds = %land.lhs.true156
  %last_reattach_jif = getelementptr i8, ptr %t, i32 -172
  %81 = ptrtoint ptr %last_reattach_jif to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %last_reattach_jif, align 8
  %sub161 = sub i32 %32, %82
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub161)
  %cmp162 = icmp sgt i32 %sub161, -1
  br i1 %cmp162, label %land.lhs.true163, label %land.lhs.true160.do.end171_crit_edge

land.lhs.true160.do.end171_crit_edge:             ; preds = %land.lhs.true160
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end171

land.lhs.true163:                                 ; preds = %land.lhs.true160
  %add165 = sub i32 %dt.0, %32
  %sub166 = add i32 %add165, %82
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub166)
  %cmp167 = icmp sgt i32 %sub166, -1
  br i1 %cmp167, label %land.lhs.true163.if.end172_crit_edge, label %land.lhs.true163.do.end171_crit_edge

land.lhs.true163.do.end171_crit_edge:             ; preds = %land.lhs.true163
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end171

land.lhs.true163.if.end172_crit_edge:             ; preds = %land.lhs.true163
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end172

do.end171:                                        ; preds = %land.lhs.true163.do.end171_crit_edge, %land.lhs.true160.do.end171_crit_edge
  %vdisk = getelementptr i8, ptr %t, i32 -176
  %83 = ptrtoint ptr %vdisk to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %vdisk, align 4
  %part0 = getelementptr inbounds %struct.gendisk, ptr %84, i32 0, i32 7
  %85 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %part0, align 4
  %bd_device = getelementptr inbounds %struct.block_device, ptr %86, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.10, ptr noundef %bd_device, ptr noundef nonnull @.str.55) #12
  tail call fastcc void @__drbd_chk_io_error_(ptr noundef %add.ptr, i32 noundef 3, ptr noundef nonnull @.str.56)
  br label %if.end172

if.end172:                                        ; preds = %do.end171, %land.lhs.true163.if.end172_crit_edge, %land.lhs.true156.if.end172_crit_edge, %if.end152.if.end172_crit_edge
  br i1 %or.cond315, label %if.end172.cond.false183_crit_edge, label %land.lhs.true176

if.end172.cond.false183_crit_edge:                ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false183

land.lhs.true176:                                 ; preds = %if.end172
  %pre_send_jif = getelementptr inbounds %struct.drbd_request, ptr %req_peer.1, i32 0, i32 12
  %87 = ptrtoint ptr %pre_send_jif to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %pre_send_jif, align 4
  %add177 = add i32 %88, %mul43
  %sub178 = sub i32 %32, %add177
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub178)
  %cmp179 = icmp slt i32 %sub178, 0
  br i1 %cmp179, label %land.lhs.true176.cond.end185_crit_edge, label %land.lhs.true176.cond.false183_crit_edge

land.lhs.true176.cond.false183_crit_edge:         ; preds = %land.lhs.true176
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false183

land.lhs.true176.cond.end185_crit_edge:           ; preds = %land.lhs.true176
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end185

cond.false183:                                    ; preds = %land.lhs.true176.cond.false183_crit_edge, %if.end172.cond.false183_crit_edge
  br label %cond.end185

cond.end185:                                      ; preds = %cond.false183, %land.lhs.true176.cond.end185_crit_edge
  %cond186 = phi i32 [ %add, %cond.false183 ], [ %add177, %land.lhs.true176.cond.end185_crit_edge ]
  br i1 %or.cond316, label %cond.end185.cond.false196_crit_edge, label %land.lhs.true190

cond.end185.cond.false196_crit_edge:              ; preds = %cond.end185
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false196

land.lhs.true190:                                 ; preds = %cond.end185
  %add191 = add i32 %cond135, %dt.0
  %sub192 = sub i32 %32, %add191
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub192)
  %cmp193 = icmp slt i32 %sub192, 0
  br i1 %cmp193, label %land.lhs.true190.cond.end198_crit_edge, label %land.lhs.true190.cond.false196_crit_edge

land.lhs.true190.cond.false196_crit_edge:         ; preds = %land.lhs.true190
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false196

land.lhs.true190.cond.end198_crit_edge:           ; preds = %land.lhs.true190
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end198

cond.false196:                                    ; preds = %land.lhs.true190.cond.false196_crit_edge, %cond.end185.cond.false196_crit_edge
  br label %cond.end198

cond.end198:                                      ; preds = %cond.false196, %land.lhs.true190.cond.end198_crit_edge
  %cond199 = phi i32 [ %add, %cond.false196 ], [ %add191, %land.lhs.true190.cond.end198_crit_edge ]
  %sub200 = sub i32 %cond186, %cond199
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub200)
  %cmp201 = icmp slt i32 %sub200, 0
  %cond186.cond199 = select i1 %cmp201, i32 %cond186, i32 %cond199
  br label %out

out:                                              ; preds = %cond.end198, %if.end101.out_crit_edge
  %nt.0 = phi i32 [ %cond186.cond199, %cond.end198 ], [ %add, %if.end101.out_crit_edge ]
  %89 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %add.ptr, align 8
  %req_lock207 = getelementptr inbounds %struct.drbd_resource, ptr %90, i32 0, i32 12
  tail call void @_raw_spin_unlock_irq(ptr noundef %req_lock207) #9
  %call208 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %nt.0) #9
  br label %cleanup

cleanup:                                          ; preds = %out, %cond.end57.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_conn_request_state(ptr noundef, [1 x i32], [1 x i32], i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drbd_remove_interval(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @drbd_get_max_buffers(ptr noundef %device) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = tail call i32 @llvm.read_register.i32(metadata !211) #9
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !225
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.62, i32 noundef 696, ptr noundef nonnull @.str.63) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %peer_devices.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 1
  %4 = ptrtoint ptr %peer_devices.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %peer_devices.i, align 4
  %cmp.not.i = icmp eq ptr %5, %peer_devices.i
  %spec.select.i = select i1 %cmp.not.i, ptr null, ptr %5
  %connection = getelementptr inbounds %struct.drbd_peer_device, ptr %spec.select.i, i32 0, i32 2
  %6 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %connection, align 4
  %net_conf = getelementptr inbounds %struct.drbd_connection, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %net_conf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %net_conf, align 4
  %call2 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end8_crit_edge

rcu_read_lock.exit.do.end8_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b12 = load i1, ptr @drbd_get_max_buffers.__warned, align 1
  br i1 %.b12, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @drbd_get_max_buffers.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.59, i32 noundef 2140, ptr noundef nonnull @.str.17) #9
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %rcu_read_lock.exit.do.end8_crit_edge
  %tobool10.not = icmp eq ptr %9, null
  br i1 %tobool10.not, label %do.end8.cond.end_crit_edge, label %cond.true

do.end8.cond.end_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  %max_buffers = getelementptr inbounds %struct.net_conf, ptr %9, i32 0, i32 18
  %10 = ptrtoint ptr %max_buffers to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_buffers, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end8.cond.end_crit_edge
  %cond = phi i32 [ %11, %cond.true ], [ 1000000, %do.end8.cond.end_crit_edge ]
  %call.i13 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i13, label %cond.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i16

cond.end.rcu_read_unlock.exit_crit_edge:          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i16:                                ; preds = %cond.end
  %call1.i14 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i14)
  %tobool.not.i15 = icmp eq i32 %call1.i14, 0
  br i1 %tobool.not.i15, label %land.lhs.true.i16.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i18

land.lhs.true.i16.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i16
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i18:                               ; preds = %land.lhs.true.i16
  %.b4.i17 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i17, label %land.lhs.true2.i18.rcu_read_unlock.exit_crit_edge, label %if.then.i19

land.lhs.true2.i18.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i18
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i19:                                      ; preds = %land.lhs.true2.i18
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.62, i32 noundef 724, ptr noundef nonnull @.str.64) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i19, %land.lhs.true2.i18.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i16.rcu_read_unlock.exit_crit_edge, %cond.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !226
  %12 = tail call i32 @llvm.read_register.i32(metadata !211) #9
  %and.i.i.i.i.i20 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i20 to ptr
  %preempt_count.i.i.i.i21 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i21 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i21, align 4
  %sub.i.i.i = add i32 %15, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i21, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  ret i32 %cond
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @drbd_req_put_completion_ref(ptr noundef %req, ptr noundef writeonly %m, i32 noundef %put) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %tobool.not = icmp eq ptr %m, null
  br i1 %tobool.not, label %lor.lhs.false, label %entry.do.end5_crit_edge

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end5

lor.lhs.false:                                    ; preds = %entry
  %rq_state = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 17
  %2 = ptrtoint ptr %rq_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rq_state, align 8
  %and = and i32 %3, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %do.end, label %lor.lhs.false.do.end5_crit_edge

lor.lhs.false.do.end5_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end5

do.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %vdisk = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 18
  %4 = ptrtoint ptr %vdisk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vdisk, align 4
  %part0 = getelementptr inbounds %struct.gendisk, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %part0, align 4
  %bd_device = getelementptr inbounds %struct.block_device, ptr %7, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %bd_device, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.2, i32 noundef 298) #12
  br label %do.end5

do.end5:                                          ; preds = %do.end, %lor.lhs.false.do.end5_crit_edge, %entry.do.end5_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %put)
  %tobool6.not = icmp eq i32 %put, 0
  br i1 %tobool6.not, label %do.end5.cleanup_crit_edge, label %if.end8

do.end5.cleanup_crit_edge:                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %do.end5
  %completion_ref = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 15
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %completion_ref, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !222
  tail call void @llvm.prefetch.p0(ptr %completion_ref, i32 1, i32 3, i32 1) #9
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %completion_ref, ptr %completion_ref, i32 %put, ptr elementtype(i32) %completion_ref) #9, !srcloc !223
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %8, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !224
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.end10, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %if.end8
  %rq_state.i = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 17
  %9 = ptrtoint ptr %rq_state.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rq_state.i, align 8
  %11 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %device1, align 4
  %13 = and i32 %10, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %14 = icmp ne i32 %13, 1
  %and4.i = and i32 %10, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  %or.cond106.i = and i1 %14, %tobool5.not.i
  %and7.i = and i32 %10, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  %or.cond107.i = select i1 %or.cond106.i, i1 %tobool8.not.i, i1 false
  %and10.i = and i32 %10, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  %or.cond108.i = select i1 %or.cond107.i, i1 %tobool11.not.i, i1 false
  br i1 %or.cond108.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %vdisk.i = getelementptr inbounds %struct.drbd_device, ptr %12, i32 0, i32 18
  %15 = ptrtoint ptr %vdisk.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vdisk.i, align 4
  %part0.i = getelementptr inbounds %struct.gendisk, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %part0.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %part0.i, align 4
  %bd_device.i = getelementptr inbounds %struct.block_device, ptr %18, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %bd_device.i, ptr noundef nonnull @.str.71, i32 noundef %10) #12
  br label %drbd_req_complete.exit

if.end.i:                                         ; preds = %if.end10
  %master_bio.i = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 6
  %19 = ptrtoint ptr %master_bio.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %master_bio.i, align 4
  %tobool12.not.i = icmp eq ptr %20, null
  br i1 %tobool12.not.i, label %do.end16.i, label %if.end20.i

do.end16.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %vdisk17.i = getelementptr inbounds %struct.drbd_device, ptr %12, i32 0, i32 18
  %21 = ptrtoint ptr %vdisk17.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %vdisk17.i, align 4
  %part018.i = getelementptr inbounds %struct.gendisk, ptr %22, i32 0, i32 7
  %23 = ptrtoint ptr %part018.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %part018.i, align 4
  %bd_device19.i = getelementptr inbounds %struct.block_device, ptr %24, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %bd_device19.i, ptr noundef nonnull @.str.74) #12
  br label %drbd_req_complete.exit

if.end20.i:                                       ; preds = %if.end.i
  %25 = and i32 %10, 260
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %.not.i = icmp eq i32 %25, 0
  %private_bio.i = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 2
  %26 = ptrtoint ptr %private_bio.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %private_bio.i, align 8
  %28 = ptrtoint ptr %27 to i32
  %bi_opf.i = getelementptr inbounds %struct.bio, ptr %20, i32 0, i32 2
  %29 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %bi_opf.i, align 8
  %and.i.i = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.end20.i.if.end34.i_crit_edge, label %land.lhs.true28.i

if.end20.i.if.end34.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.i

land.lhs.true28.i:                                ; preds = %if.end20.i
  %epoch.i = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 4
  %31 = ptrtoint ptr %epoch.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %epoch.i, align 8
  %peer_devices.i.i = getelementptr inbounds %struct.drbd_device, ptr %12, i32 0, i32 1
  %33 = ptrtoint ptr %peer_devices.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %peer_devices.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %34, %peer_devices.i.i
  %spec.select.i.i = select i1 %cmp.not.i.i, ptr null, ptr %34
  %connection.i = getelementptr inbounds %struct.drbd_peer_device, ptr %spec.select.i.i, i32 0, i32 2
  %35 = ptrtoint ptr %connection.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %connection.i, align 4
  %current_tle_nr.i = getelementptr inbounds %struct.drbd_connection, ptr %36, i32 0, i32 34
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %current_tle_nr.i, i32 noundef 4) #9
  %37 = ptrtoint ptr %current_tle_nr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %current_tle_nr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %38)
  %cmp.i = icmp eq i32 %32, %38
  br i1 %cmp.i, label %if.then31.i, label %land.lhs.true28.i.if.end34.i_crit_edge

land.lhs.true28.i.if.end34.i_crit_edge:           ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.i

if.then31.i:                                      ; preds = %land.lhs.true28.i
  %39 = ptrtoint ptr %peer_devices.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %peer_devices.i.i, align 4
  %cmp.not.i111.i = icmp eq ptr %40, %peer_devices.i.i
  %spec.select.i112.i = select i1 %cmp.not.i111.i, ptr null, ptr %40
  %connection33.i = getelementptr inbounds %struct.drbd_peer_device, ptr %spec.select.i112.i, i32 0, i32 2
  %41 = ptrtoint ptr %connection33.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %connection33.i, align 4
  %current_tle_writes.i.i = getelementptr inbounds %struct.drbd_connection, ptr %42, i32 0, i32 35
  %43 = ptrtoint ptr %current_tle_writes.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %current_tle_writes.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp.i.i31 = icmp eq i32 %44, 0
  br i1 %cmp.i.i31, label %if.then31.i.if.end34.i_crit_edge, label %if.end.i.i

if.then31.i.if.end34.i_crit_edge:                 ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.i

if.end.i.i:                                       ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %current_tle_writes.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %current_tle_writes.i.i, align 4
  %current_tle_nr.i.i = getelementptr inbounds %struct.drbd_connection, ptr %42, i32 0, i32 34
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %current_tle_nr.i.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %current_tle_nr.i.i, i32 1, i32 3, i32 1) #9
  %46 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %current_tle_nr.i.i, ptr %current_tle_nr.i.i, i32 1, ptr elementtype(i32) %current_tle_nr.i.i) #9, !srcloc !221
  %q_wait.i.i.i = getelementptr inbounds %struct.drbd_connection, ptr %42, i32 0, i32 45, i32 2
  tail call void @__wake_up(ptr noundef %q_wait.i.i.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.end.i.i, %if.then31.i.if.end34.i_crit_edge, %land.lhs.true28.i.if.end34.i_crit_edge, %if.end20.i.if.end34.i_crit_edge
  %47 = ptrtoint ptr %master_bio.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %master_bio.i, align 4
  %start_jif.i = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 9
  %49 = ptrtoint ptr %start_jif.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %start_jif.i, align 8
  %bi_bdev.i.i = getelementptr inbounds %struct.bio, ptr %48, i32 0, i32 1
  %51 = ptrtoint ptr %bi_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %bi_bdev.i.i, align 4
  tail call void @bio_end_io_acct_remapped(ptr noundef %48, i32 noundef %50, ptr noundef %52) #9
  br i1 %.not.i, label %land.lhs.true37.i, label %if.end34.i.if.end52.i_crit_edge

if.end34.i.if.end52.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52.i

land.lhs.true37.i:                                ; preds = %if.end34.i
  %53 = ptrtoint ptr %master_bio.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %master_bio.i, align 4
  %bi_opf39.i = getelementptr inbounds %struct.bio, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %bi_opf39.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %bi_opf39.i, align 8
  %57 = and i32 %56, 524543
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %land.lhs.true47.i, label %land.lhs.true37.i.if.end52.i_crit_edge

land.lhs.true37.i.if.end52.i_crit_edge:           ; preds = %land.lhs.true37.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52.i

land.lhs.true47.i:                                ; preds = %land.lhs.true37.i
  %tl_requests.i = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 5
  %59 = ptrtoint ptr %tl_requests.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile ptr, ptr %tl_requests.i, align 4
  %cmp.i113.not.i = icmp eq ptr %60, %tl_requests.i
  br i1 %cmp.i113.not.i, label %land.lhs.true47.i.if.end52.i_crit_edge, label %if.then50.i

land.lhs.true47.i.if.end52.i_crit_edge:           ; preds = %land.lhs.true47.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52.i

if.then50.i:                                      ; preds = %land.lhs.true47.i
  call void @__sanitizer_cov_trace_pc() #11
  %61 = ptrtoint ptr %rq_state.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %rq_state.i, align 8
  %or.i = or i32 %62, 131072
  store i32 %or.i, ptr %rq_state.i, align 8
  br label %if.end52.i

if.end52.i:                                       ; preds = %if.then50.i, %land.lhs.true47.i.if.end52.i_crit_edge, %land.lhs.true37.i.if.end52.i_crit_edge, %if.end34.i.if.end52.i_crit_edge
  %63 = ptrtoint ptr %rq_state.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %rq_state.i, align 8
  %and54.i = and i32 %64, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54.i)
  %tobool55.not.i = icmp eq i32 %and54.i, 0
  br i1 %tobool55.not.i, label %if.then56.i, label %if.end52.i.if.end66.i_crit_edge

if.end52.i.if.end66.i_crit_edge:                  ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66.i

if.then56.i:                                      ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #11
  %tobool58.not.i = icmp eq ptr %27, null
  %..i = select i1 %tobool58.not.i, i32 -5, i32 %28
  %cond62.i = select i1 %.not.i, i32 %..i, i32 0
  %error63.i = getelementptr inbounds %struct.bio_and_error, ptr %m, i32 0, i32 1
  %65 = ptrtoint ptr %error63.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %cond62.i, ptr %error63.i, align 4
  %66 = ptrtoint ptr %master_bio.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %master_bio.i, align 4
  %68 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %67, ptr %m, align 4
  store ptr null, ptr %master_bio.i, align 4
  %completed.i = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 3, i32 4
  %69 = ptrtoint ptr %completed.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %bf.load.i = load i8, ptr %completed.i, align 8
  %bf.set.i = or i8 %bf.load.i, 32
  store i8 %bf.set.i, ptr %completed.i, align 8
  br label %if.end66.i

if.end66.i:                                       ; preds = %if.then56.i, %if.end52.i.if.end66.i_crit_edge
  %waiting.i = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 3, i32 4
  %70 = ptrtoint ptr %waiting.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %bf.load68.i = load i8, ptr %waiting.i, align 8
  %71 = and i8 %bf.load68.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool70.not.i = icmp eq i8 %71, 0
  br i1 %tobool70.not.i, label %if.end66.i.if.end72.i_crit_edge, label %if.then71.i

if.end66.i.if.end72.i_crit_edge:                  ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end72.i

if.then71.i:                                      ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #11
  %misc_wait.i = getelementptr inbounds %struct.drbd_device, ptr %12, i32 0, i32 28
  tail call void @__wake_up(ptr noundef %misc_wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %if.end72.i

if.end72.i:                                       ; preds = %if.then71.i, %if.end66.i.if.end72.i_crit_edge
  %req_pending_master_completion.i = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 7
  %call.i.i114.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %req_pending_master_completion.i) #9
  br i1 %call.i.i114.i, label %if.end.i.i.i, label %if.end72.i.list_del_init.exit.i_crit_edge

if.end72.i.list_del_init.exit.i_crit_edge:        ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 7, i32 1
  %72 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %prev.i.i.i, align 4
  %74 = ptrtoint ptr %req_pending_master_completion.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %req_pending_master_completion.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %73, ptr %prev1.i.i.i.i, align 4
  %77 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile ptr %75, ptr %73, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.end72.i.list_del_init.exit.i_crit_edge
  %78 = ptrtoint ptr %req_pending_master_completion.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile ptr %req_pending_master_completion.i, ptr %req_pending_master_completion.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 7, i32 1
  %79 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %req_pending_master_completion.i, ptr %prev.i3.i.i, align 4
  br label %drbd_req_complete.exit

drbd_req_complete.exit:                           ; preds = %list_del_init.exit.i, %do.end16.i, %do.end.i
  %80 = ptrtoint ptr %rq_state.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %rq_state.i, align 8
  %and12 = and i32 %81, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end15, label %drbd_req_complete.exit.cleanup_crit_edge

drbd_req_complete.exit.cleanup_crit_edge:         ; preds = %drbd_req_complete.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15:                                         ; preds = %drbd_req_complete.exit
  %and17 = and i32 %81, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end20, label %if.then19

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @drbd_restart_request(ptr noundef %req) #9
  br label %cleanup

if.end20:                                         ; preds = %if.end15
  %kref = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 16
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !230
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #9
  %82 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #9, !srcloc !231
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %82, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !229

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #9
  br label %cleanup

if.then.i:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !232
  tail call void @drbd_req_destroy(ptr noundef %kref) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.then19, %drbd_req_complete.exit.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %do.end5.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drbd_restart_request(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_end_io_acct_remapped(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bdevname(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_drbd_set_state(ptr noundef, [1 x i32], i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bio_start_io_acct(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drbd_al_begin_io_fastpath(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @mempool_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bio_clone_fast(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drbd_request_endio(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_req_mod(ptr noundef %req, i32 noundef %what) unnamed_addr #4 align 64 {
entry:
  %m = alloca %struct.bio_and_error, align 4
  call void @__sanitizer_cov_trace_pc() #11
  %device1 = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %m) #9
  %2 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %m, align 4, !annotation !234
  %3 = getelementptr inbounds %struct.bio_and_error, ptr %m, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !234
  %call = call i32 @__req_mod(ptr noundef %req, i32 noundef %what, ptr noundef nonnull %m)
  %5 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %m, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %3, align 4
  %call.i = call zeroext i8 @errno_to_blk_status(i32 noundef %8) #9
  %9 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %m, align 4
  %bi_status.i = getelementptr inbounds %struct.bio, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %bi_status.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %call.i, ptr %bi_status.i, align 2
  call void @bio_endio(ptr noundef %10) #9
  call fastcc void @dec_ap_bio(ptr noundef %1) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %m) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drbd_find_overlap(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drbd_next_overlap(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drbd_bm_count_bits(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_change_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @blk_check_plugged(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @drbd_unplug(ptr noundef %cb, i1 noundef zeroext %from_schedule) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.blk_plug_cb, ptr %cb, i32 0, i32 2
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %most_recent_req = getelementptr inbounds %struct.drbd_plug_cb, ptr %cb, i32 0, i32 1
  %2 = ptrtoint ptr %most_recent_req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %most_recent_req, align 4
  tail call void @kfree(ptr noundef %cb) #9
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %req_lock = getelementptr inbounds %struct.drbd_resource, ptr %1, i32 0, i32 12
  tail call void @_raw_spin_lock_irq(ptr noundef %req_lock) #9
  %rq_state = getelementptr inbounds %struct.drbd_request, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %rq_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rq_state, align 8
  %or = or i32 %5, 65536
  store i32 %or, ptr %rq_state, align 8
  %device = getelementptr inbounds %struct.drbd_request, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 4
  tail call void @drbd_queue_unplug(ptr noundef %7) #9
  %kref = getelementptr inbounds %struct.drbd_request, ptr %3, i32 0, i32 16
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !230
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #9
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #9, !srcloc !231
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !229

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #9
  br label %kref_put.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !232
  tail call void @drbd_req_destroy(ptr noundef %kref) #9
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %req_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %kref_put.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drbd_queue_unplug(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @submit_bio_noacct(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_associate_blkg(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_drbd_insert_fault(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drbd_issue_discard_or_zero_out(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_start_plug(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_finish_plug(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drbd_al_begin_io_nonblock(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @inc_ap_bio_cond(ptr noundef %device) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 8
  %req_lock = getelementptr inbounds %struct.drbd_resource, ptr %1, i32 0, i32 12
  tail call void @_raw_spin_lock_irq(ptr noundef %req_lock) #9
  %call.i = tail call fastcc i32 @drbd_get_max_buffers(ptr noundef %device) #9
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 8
  %susp.i.i = getelementptr inbounds %struct.drbd_resource, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %susp.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load.i.i = load i8, ptr %susp.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %bf.load.i.i)
  %5 = icmp ult i8 %bf.load.i.i, 32
  br i1 %5, label %if.end.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %entry
  %suspend_cnt.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 42
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %suspend_cnt.i, i32 noundef 4) #9
  %6 = ptrtoint ptr %suspend_cnt.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %suspend_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not.i = icmp eq i32 %7, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end5.i:                                        ; preds = %if.end.i
  %state.i.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 27
  %8 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %s.sroa.0.0.copyload.i.i = load i32, ptr %state.i.i, align 8
  %bf.lshr.i.i = lshr i32 %s.sroa.0.0.copyload.i.i, 4
  %bf.clear.i.i = and i32 %bf.lshr.i.i, 31
  %9 = zext i32 %bf.clear.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.120)
  switch i32 %bf.clear.i.i, label %if.end5.i.sw.epilog.i.i_crit_edge [
    i32 31, label %if.end5.i.if.end_crit_edge
    i32 15, label %if.end5.i.if.end_crit_edge10
    i32 14, label %if.end5.i.if.end_crit_edge11
    i32 13, label %sw.bb1.i.i
  ]

if.end5.i.if.end_crit_edge11:                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end5.i.if.end_crit_edge10:                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end5.i.if.end_crit_edge:                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end5.i.sw.epilog.i.i_crit_edge:                ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i.i

sw.bb1.i.i:                                       ; preds = %if.end5.i
  %peer_devices.i.i.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 1
  %10 = ptrtoint ptr %peer_devices.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %peer_devices.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %11, %peer_devices.i.i.i
  %spec.select.i.i.i = select i1 %cmp.not.i.i.i, ptr null, ptr %11
  %connection.i.i = getelementptr inbounds %struct.drbd_peer_device, ptr %spec.select.i.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %connection.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %connection.i.i, align 4
  %agreed_pro_version.i.i = getelementptr inbounds %struct.drbd_connection, ptr %13, i32 0, i32 19
  %14 = ptrtoint ptr %agreed_pro_version.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %agreed_pro_version.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %15)
  %cmp.i.i = icmp slt i32 %15, 96
  br i1 %cmp.i.i, label %sw.bb1.i.i.if.end_crit_edge, label %sw.bb1.i.i.sw.epilog.i.i_crit_edge

sw.bb1.i.i.sw.epilog.i.i_crit_edge:               ; preds = %sw.bb1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i.i

sw.bb1.i.i.if.end_crit_edge:                      ; preds = %sw.bb1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

sw.epilog.i.i:                                    ; preds = %sw.bb1.i.i.sw.epilog.i.i_crit_edge, %if.end5.i.sw.epilog.i.i_crit_edge
  %bf.lshr4.i.i = lshr i32 %s.sroa.0.0.copyload.i.i, 9
  %bf.clear5.i.i = and i32 %bf.lshr4.i.i, 15
  %switch.tableidx = add nsw i32 %bf.clear5.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %switch.tableidx)
  %16 = icmp ult i32 %switch.tableidx, 15
  br i1 %16, label %switch.hole_check, label %sw.epilog.i.i.if.end9.i_crit_edge

sw.epilog.i.i.if.end9.i_crit_edge:                ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9.i

if.end9.i:                                        ; preds = %switch.hole_check.if.end9.i_crit_edge, %sw.epilog.i.i.if.end9.i_crit_edge
  %ap_bio_cnt.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 36
  %call.i.i22.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ap_bio_cnt.i, i32 noundef 4) #9
  %17 = ptrtoint ptr %ap_bio_cnt.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %ap_bio_cnt.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %call.i)
  %cmp.i = icmp sgt i32 %18, %call.i
  br i1 %cmp.i, label %if.end9.i.if.end_crit_edge, label %may_inc_ap_bio.exit

if.end9.i.if.end_crit_edge:                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

may_inc_ap_bio.exit:                              ; preds = %if.end9.i
  %flags.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 14
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %flags.i, align 4
  %21 = and i32 %20, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool14.not.i = icmp eq i32 %21, 0
  br i1 %tobool14.not.i, label %if.then, label %may_inc_ap_bio.exit.if.end_crit_edge

may_inc_ap_bio.exit.if.end_crit_edge:             ; preds = %may_inc_ap_bio.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %may_inc_ap_bio.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ap_bio_cnt.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %ap_bio_cnt.i, i32 1, i32 3, i32 1) #9
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ap_bio_cnt.i, ptr %ap_bio_cnt.i, i32 1, ptr elementtype(i32) %ap_bio_cnt.i) #9, !srcloc !221
  br label %if.end

switch.hole_check:                                ; preds = %sw.epilog.i.i
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 16421, %switch.maskindex
  %23 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %switch.lobit.not = icmp eq i16 %23, 0
  br i1 %switch.lobit.not, label %switch.hole_check.if.end9.i_crit_edge, label %switch.hole_check.if.end_crit_edge

switch.hole_check.if.end_crit_edge:               ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

switch.hole_check.if.end9.i_crit_edge:            ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9.i

if.end:                                           ; preds = %switch.hole_check.if.end_crit_edge, %if.then, %may_inc_ap_bio.exit.if.end_crit_edge, %if.end9.i.if.end_crit_edge, %sw.bb1.i.i.if.end_crit_edge, %if.end5.i.if.end_crit_edge, %if.end5.i.if.end_crit_edge10, %if.end5.i.if.end_crit_edge11, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %retval.0.i9 = phi i1 [ true, %if.then ], [ false, %may_inc_ap_bio.exit.if.end_crit_edge ], [ false, %entry.if.end_crit_edge ], [ false, %if.end.i.if.end_crit_edge ], [ false, %if.end9.i.if.end_crit_edge ], [ false, %sw.bb1.i.i.if.end_crit_edge ], [ false, %if.end5.i.if.end_crit_edge ], [ false, %if.end5.i.if.end_crit_edge10 ], [ false, %if.end5.i.if.end_crit_edge11 ], [ false, %switch.hole_check.if.end_crit_edge ]
  %24 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %device, align 8
  %req_lock2 = getelementptr inbounds %struct.drbd_resource, ptr %25, i32 0, i32 12
  tail call void @_raw_spin_unlock_irq(ptr noundef %req_lock2) #9
  ret i1 %retval.0.i9
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 86)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 86)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !17, !19, !20, !21, !22, !24, !25, !26, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !50, !51, !53, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !69, !70, !72, !73, !74, !76, !77, !79, !80, !81, !82, !84, !86, !88, !89, !90, !91, !93, !94, !95, !96, !97, !99, !100, !101, !102, !104, !106, !107, !108, !110, !111, !113, !114, !115, !116, !118, !119, !120, !121, !123, !124, !125, !126, !128, !129, !130, !131, !133, !134, !135, !137, !139, !140, !141, !142, !143, !145, !147, !149, !150, !151, !153, !154, !155, !157, !158, !159, !160, !162, !164, !165, !166, !168, !170, !171, !172, !173, !174, !176, !177, !178, !180, !182, !183, !184, !185, !187, !188, !189, !191, !192, !193, !194, !196, !197, !198, !200, !201, !202, !203, !205, !206, !207, !209, !210}
!llvm.named.register.sp = !{!211}
!llvm.module.flags = !{!212, !213, !214, !215, !216, !217, !218, !219}
!llvm.ident = !{!220}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/block/drbd/drbd_req.c", i32 86, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @drbd_req_destroy._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @drbd_req_destroy._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/block/drbd/drbd_req.c", i32 112, i32 3}
!10 = !{ptr @drbd_req_destroy._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @drbd_req_destroy._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/block/drbd/drbd_req.c", i32 153, i32 5}
!14 = !{ptr @.str.10, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @drbd_req_destroy._entry.8, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @drbd_req_destroy._entry_ptr.11, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.12, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/block/drbd/drbd_req.c", i32 564, i32 3}
!19 = !{ptr @.str.13, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @__req_mod._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @__req_mod._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.15, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/block/drbd/drbd_req.c", i32 576, i32 3}
!24 = !{ptr @__req_mod._entry.14, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @__req_mod._entry_ptr.16, !23, !"_entry_ptr", i1 false, i1 false}
!26 = distinct !{null, !27, !"__warned", i1 false, i1 false}
!27 = !{!"../drivers/block/drbd/drbd_req.c", i32 578, i32 8}
!28 = !{ptr @.str.17, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.19, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/block/drbd/drbd_req.c", i32 589, i32 3}
!31 = !{ptr @__req_mod._entry.18, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @__req_mod._entry_ptr.20, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.22, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/block/drbd/drbd_req.c", i32 641, i32 3}
!35 = !{ptr @__req_mod._entry.21, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @__req_mod._entry_ptr.23, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.25, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/block/drbd/drbd_req.c", i32 646, i32 3}
!39 = !{ptr @__req_mod._entry.24, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @__req_mod._entry_ptr.26, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.28, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/block/drbd/drbd_req.c", i32 647, i32 3}
!43 = !{ptr @__req_mod._entry.27, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @__req_mod._entry_ptr.29, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @__req_mod._entry.30, !46, !"_entry", i1 false, i1 false}
!46 = !{!"../drivers/block/drbd/drbd_req.c", i32 660, i32 3}
!47 = !{ptr @__req_mod._entry_ptr.31, !46, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @__req_mod._entry.32, !49, !"_entry", i1 false, i1 false}
!49 = !{!"../drivers/block/drbd/drbd_req.c", i32 683, i32 3}
!50 = !{ptr @__req_mod._entry_ptr.33, !49, !"_entry_ptr", i1 false, i1 false}
!51 = distinct !{null, !52, !"__warned", i1 false, i1 false}
!52 = !{!"../drivers/block/drbd/drbd_req.c", i32 691, i32 8}
!53 = !{ptr @__req_mod._entry.35, !54, !"_entry", i1 false, i1 false}
!54 = !{!"../drivers/block/drbd/drbd_req.c", i32 749, i32 3}
!55 = !{ptr @__req_mod._entry_ptr.36, !54, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.38, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/block/drbd/drbd_req.c", i32 750, i32 3}
!58 = !{ptr @__req_mod._entry.37, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @__req_mod._entry_ptr.39, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.41, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/block/drbd/drbd_req.c", i32 767, i32 3}
!62 = !{ptr @__req_mod._entry.40, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @__req_mod._entry_ptr.42, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @__req_mod._entry.43, !65, !"_entry", i1 false, i1 false}
!65 = !{!"../drivers/block/drbd/drbd_req.c", i32 776, i32 3}
!66 = !{ptr @__req_mod._entry_ptr.44, !65, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @__req_mod._entry.45, !68, !"_entry", i1 false, i1 false}
!68 = !{!"../drivers/block/drbd/drbd_req.c", i32 781, i32 3}
!69 = !{ptr @__req_mod._entry_ptr.46, !68, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.48, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/block/drbd/drbd_req.c", i32 854, i32 4}
!72 = !{ptr @__req_mod._entry.47, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @__req_mod._entry_ptr.49, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @__req_mod._entry.50, !75, !"_entry", i1 false, i1 false}
!75 = !{!"../drivers/block/drbd/drbd_req.c", i32 865, i32 3}
!76 = !{ptr @__req_mod._entry_ptr.51, !75, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.52, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/block/drbd/drbd_req.c", i32 1608, i32 2}
!79 = !{ptr @.str.53, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @drbd_submit_bio._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @drbd_submit_bio._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = distinct !{null, !83, !"__warned", i1 false, i1 false}
!83 = !{!"../drivers/block/drbd/drbd_req.c", i32 1698, i32 7}
!84 = distinct !{null, !85, !"__warned", i1 false, i1 false}
!85 = !{!"../drivers/block/drbd/drbd_req.c", i32 1705, i32 8}
!86 = !{ptr @.str.55, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/block/drbd/drbd_req.c", i32 1761, i32 3}
!88 = !{ptr @.str.56, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @request_timer_fn._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @request_timer_fn._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.57, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/block/drbd/drbd_int.h", i32 2099, i32 2}
!93 = !{ptr @.str.58, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.59, !92, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @put_ldev._entry, !92, !"_entry", i1 false, i1 false}
!96 = !{ptr @put_ldev._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.60, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/block/drbd/drbd_int.h", i32 2281, i32 2}
!99 = !{ptr @.str.61, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @dec_ap_bio._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @dec_ap_bio._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = distinct !{null, !103, !"__warned", i1 false, i1 false}
!103 = !{!"../drivers/block/drbd/drbd_int.h", i32 2140, i32 7}
!104 = distinct !{null, !105, !"__warned", i1 false, i1 false}
!105 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!106 = !{ptr @.str.62, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.63, !105, !"<string literal>", i1 false, i1 false}
!108 = distinct !{null, !109, !"__warned", i1 false, i1 false}
!109 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!110 = !{ptr @.str.64, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @.str.65, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/block/drbd/drbd_req.c", i32 462, i32 3}
!113 = !{ptr @.str.66, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @mod_rq_state._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @mod_rq_state._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.67, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/block/drbd/drbd_int.h", i32 2007, i32 2}
!118 = !{ptr @.str.68, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @_dec_ap_pending._entry, !117, !"_entry", i1 false, i1 false}
!120 = !{ptr @_dec_ap_pending._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.69, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/block/drbd/drbd_req.c", i32 298, i32 2}
!123 = !{ptr @.str.70, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @drbd_req_put_completion_ref._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @drbd_req_put_completion_ref._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.71, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/block/drbd/drbd_req.c", i32 214, i32 3}
!128 = !{ptr @.str.72, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @drbd_req_complete._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @drbd_req_complete._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.74, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/block/drbd/drbd_req.c", i32 219, i32 3}
!133 = !{ptr @drbd_req_complete._entry.73, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @drbd_req_complete._entry_ptr.75, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @__func__.drbd_report_io_error, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/block/drbd/drbd_req.c", i32 515, i32 7}
!137 = !{ptr @.str.76, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/block/drbd/drbd_req.c", i32 518, i32 2}
!139 = !{ptr @drbd_report_io_error._entry, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @drbd_report_io_error._entry_ptr, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.77, !138, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @.str.78, !138, !"<string literal>", i1 false, i1 false}
!143 = distinct !{null, !144, !"__warned", i1 false, i1 false}
!144 = !{!"../drivers/block/drbd/drbd_int.h", i32 1722, i32 7}
!145 = !{ptr @__func__.__drbd_chk_io_error_, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/block/drbd/drbd_int.h", i32 1727, i32 8}
!147 = !{ptr @.str.79, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/block/drbd/drbd_int.h", i32 1728, i32 5}
!149 = !{ptr @__drbd_chk_io_error_._entry, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @__drbd_chk_io_error_._entry_ptr, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.81, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/block/drbd/drbd_int.h", i32 1763, i32 4}
!153 = !{ptr @__drbd_chk_io_error_._entry.80, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @__drbd_chk_io_error_._entry_ptr.82, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.83, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/block/drbd/drbd_req.c", i32 1205, i32 3}
!157 = !{ptr @.str.84, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @drbd_request_prepare._entry, !156, !"_entry", i1 false, i1 false}
!159 = !{ptr @drbd_request_prepare._entry_ptr, !156, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @__func__.drbd_send_and_submit, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/block/drbd/drbd_req.c", i32 1399, i32 7}
!162 = !{ptr @.str.85, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/block/drbd/drbd_req.c", i32 1400, i32 4}
!164 = !{ptr @drbd_send_and_submit._entry, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @drbd_send_and_submit._entry_ptr, !163, !"_entry_ptr", i1 false, i1 false}
!166 = distinct !{null, !167, !"__warned", i1 false, i1 false}
!167 = !{!"../drivers/block/drbd/drbd_req.c", i32 983, i32 7}
!168 = !{ptr @.str.86, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/block/drbd/drbd_req.c", i32 1002, i32 3}
!170 = !{ptr @.str.87, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @.str.88, !169, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @maybe_pull_ahead._entry, !169, !"_entry", i1 false, i1 false}
!173 = !{ptr @maybe_pull_ahead._entry_ptr, !169, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.90, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/block/drbd/drbd_req.c", i32 1007, i32 3}
!176 = !{ptr @maybe_pull_ahead._entry.89, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @maybe_pull_ahead._entry_ptr.91, !175, !"_entry_ptr", i1 false, i1 false}
!178 = distinct !{null, !179, !"__warned", i1 false, i1 false}
!179 = !{!"../drivers/block/drbd/drbd_req.c", i32 1056, i32 8}
!180 = !{ptr @.str.92, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/block/drbd/drbd_req.c", i32 896, i32 2}
!182 = !{ptr @.str.93, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @drbd_may_do_local_read._entry, !181, !"_entry", i1 false, i1 false}
!184 = !{ptr @drbd_may_do_local_read._entry_ptr, !181, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.95, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/block/drbd/drbd_req.c", i32 897, i32 2}
!187 = !{ptr @drbd_may_do_local_read._entry.94, !186, !"_entry", i1 false, i1 false}
!188 = !{ptr @drbd_may_do_local_read._entry_ptr.96, !186, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.97, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/block/drbd/drbd_req.c", i32 1111, i32 3}
!191 = !{ptr @.str.98, !190, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @drbd_process_write_request._entry, !190, !"_entry", i1 false, i1 false}
!193 = !{ptr @drbd_process_write_request._entry_ptr, !190, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.100, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/block/drbd/drbd_req.c", i32 1120, i32 2}
!196 = !{ptr @drbd_process_write_request._entry.99, !195, !"_entry", i1 false, i1 false}
!197 = !{ptr @drbd_process_write_request._entry_ptr.101, !195, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.102, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/block/drbd/drbd_req.c", i32 1628, i32 3}
!200 = !{ptr @.str.103, !199, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @net_timeout_reached._entry, !199, !"_entry", i1 false, i1 false}
!202 = !{ptr @net_timeout_reached._entry_ptr, !199, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.105, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/block/drbd/drbd_req.c", i32 1638, i32 3}
!205 = !{ptr @net_timeout_reached._entry.104, !204, !"_entry", i1 false, i1 false}
!206 = !{ptr @net_timeout_reached._entry_ptr.106, !204, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.108, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/block/drbd/drbd_req.c", i32 1661, i32 3}
!209 = !{ptr @net_timeout_reached._entry.107, !208, !"_entry", i1 false, i1 false}
!210 = !{ptr @net_timeout_reached._entry_ptr.109, !208, !"_entry_ptr", i1 false, i1 false}
!211 = !{!"sp"}
!212 = !{i32 1, !"wchar_size", i32 2}
!213 = !{i32 1, !"min_enum_size", i32 4}
!214 = !{i32 8, !"branch-target-enforcement", i32 0}
!215 = !{i32 8, !"sign-return-address", i32 0}
!216 = !{i32 8, !"sign-return-address-all", i32 0}
!217 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!218 = !{i32 7, !"uwtable", i32 1}
!219 = !{i32 7, !"frame-pointer", i32 2}
!220 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!221 = !{i64 2148394918, i64 2148394944, i64 2148394973, i64 2148395007, i64 2148395038, i64 2148395061}
!222 = !{i64 2148483394}
!223 = !{i64 2148398103, i64 2148398135, i64 2148398164, i64 2148398198, i64 2148398229, i64 2148398252}
!224 = !{i64 2148483623}
!225 = !{i64 2149411077}
!226 = !{i64 2149411343}
!227 = !{i64 2148396448, i64 2148396480, i64 2148396509, i64 2148396543, i64 2148396574, i64 2148396597}
!228 = !{!"branch_weights", i32 1, i32 2000}
!229 = !{!"branch_weights", i32 2000, i32 1}
!230 = !{i64 2148484473}
!231 = !{i64 2148398913, i64 2148398945, i64 2148398974, i64 2148399008, i64 2148399039, i64 2148399062}
!232 = !{i64 2149360587}
!233 = !{i64 2148397383, i64 2148397409, i64 2148397438, i64 2148397472, i64 2148397503, i64 2148397526}
!234 = !{!"auto-init"}
