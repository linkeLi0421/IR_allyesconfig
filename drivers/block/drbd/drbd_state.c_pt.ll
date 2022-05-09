; ModuleID = '/llk/IR_all_yes/drivers/block/drbd/drbd_state.c_pt.bc'
source_filename = "../drivers/block/drbd/drbd_state.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.drbd_resource = type { ptr, ptr, ptr, ptr, ptr, %struct.kref, %struct.idr, %struct.list_head, %struct.list_head, %struct.res_opts, %struct.mutex, %struct.mutex, %struct.spinlock, i8, i32, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.res_opts = type { [32 x i8], i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.drbd_state_change = type { %struct.list_head, i32, i32, [1 x %struct.drbd_resource_state_change], ptr, ptr, ptr }
%struct.drbd_resource_state_change = type { ptr, [2 x i32], [2 x i8], [2 x i8], [2 x i8] }
%struct.drbd_device_state_change = type { ptr, [2 x i32] }
%struct.drbd_connection_state_change = type { ptr, [2 x i32], [2 x i32] }
%struct.drbd_connection = type { %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.idr, i32, %struct.mutex, i32, i32, ptr, %struct.wait_queue_head, %struct.__kernel_sockaddr_storage, i32, %struct.__kernel_sockaddr_storage, i32, %struct.drbd_socket, %struct.drbd_socket, i32, i32, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.blk_plug, %struct.drbd_thread, %struct.drbd_thread, %struct.drbd_thread, ptr, ptr, ptr, ptr, %struct.drbd_work_queue, i32, i32, [16 x %struct.drbd_thread_timing_details], [16 x %struct.drbd_thread_timing_details], %struct.anon.176 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.__kernel_sockaddr_storage = type { %union.anon.172 }
%union.anon.172 = type { ptr, [124 x i8] }
%struct.drbd_socket = type { %struct.mutex, ptr, ptr, ptr }
%struct.blk_plug = type { ptr, ptr, i16, i16, i8, i8, i8, %struct.list_head }
%struct.drbd_thread = type { %struct.spinlock, ptr, %struct.completion, i32, ptr, ptr, ptr, i32, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.drbd_work_queue = type { %struct.list_head, %struct.spinlock, %struct.wait_queue_head }
%struct.drbd_thread_timing_details = type { i32, ptr, ptr, i32, i32 }
%struct.anon.176 = type { i32, i8, i32, i32 }
%struct.drbd_device = type { ptr, %struct.list_head, %struct.list_head, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.kref, i32, ptr, i64, ptr, ptr, i32, %struct.drbd_work, %struct.drbd_work, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, %union.drbd_state, %union.drbd_dev_state, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.rb_root, %struct.rb_root, [2 x %struct.list_head], [2 x %struct.list_head], i8, i32, i32, i32, i32, i32, [8 x i32], [8 x i32], i32, i32, i64, i64, i64, i64, i64, i32, ptr, i32, ptr, i32, i32, i32, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.list_head, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, %struct.drbd_md_io, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.wait_queue_head, %struct.atomic_t, i32, %struct.spinlock, i32, %struct.bm_io_work, i64, %struct.mutex, ptr, i8, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, ptr, i32, %struct.atomic_t, i32, i32, %struct.submit_worker }
%struct.drbd_work = type { %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%union.drbd_state = type { %struct.anon.170 }
%struct.anon.170 = type { i32 }
%union.drbd_dev_state = type { %struct.anon.171 }
%struct.anon.171 = type { i32 }
%struct.rb_root = type { ptr }
%struct.drbd_md_io = type { ptr, i32, i32, ptr, %struct.atomic_t, i32, i32 }
%struct.bm_io_work = type { %struct.drbd_work, ptr, i32, ptr, ptr }
%struct.submit_worker = type { ptr, %struct.work_struct, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.drbd_peer_device_state_change = type { ptr, [2 x i32], [2 x i32], [2 x i8], [2 x i8], [2 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.drbd_peer_device = type { %struct.list_head, ptr, ptr, %struct.work_struct, ptr }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.drbd_backing_dev = type { ptr, ptr, %struct.drbd_md, ptr, i64 }
%struct.drbd_md = type { i64, i64, %struct.spinlock, [4 x i64], i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.after_state_chg_work = type { %struct.drbd_work, ptr, %union.drbd_state, %union.drbd_state, i32, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.disk_conf = type { [128 x i8], i32, [128 x i8], i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8 }
%struct.net_conf = type { [64 x i8], i32, [64 x i8], i32, [64 x i8], i32, [64 x i8], i32, [64 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.sib_info = type { i32, %union.anon.196 }
%union.anon.196 = type { %struct.anon.197 }
%struct.anon.197 = type { ptr, i32 }
%struct.resource_info = type { i32, i8, i8, i8 }
%struct.connection_info = type { i32, i32 }
%struct.device_info = type { i32 }
%struct.peer_device_info = type { i32, i32, i32, i32, i32 }
%struct.after_conn_state_chg_work = type { %struct.drbd_work, i32, %union.drbd_state, %union.drbd_state, i32, ptr, ptr }

@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/block/drbd/drbd_state.c\00", [32 x i8] zeroinitializer }, align 32
@print_st_err._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 738, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"State change failed: %s\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"print_st_err\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@print_st_err._entry_ptr = internal global ptr @print_st_err._entry, section ".printk_index", align 4
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" state\00", [25 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wanted\00", [25 x i8] zeroinitializer }, align 32
@drbd_resume_al._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str, i32 1221, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Resumed AL updates\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"drbd_resume_al\00", [17 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@drbd_resume_al._entry_ptr = internal global ptr @drbd_resume_al._entry, section ".printk_index", align 4
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"attached to UUIDs\00", [46 x i8] zeroinitializer }, align 32
@_drbd_set_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str, i32 1367, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Online Verify reached sector %llu\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"_drbd_set_state\00", [16 x i8] zeroinitializer }, align 32
@_drbd_set_state._entry_ptr = internal global ptr @_drbd_set_state._entry, section ".printk_index", align 4
@_drbd_set_state._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str, i32 1372, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Syncer continues.\0A\00", [45 x i8] zeroinitializer }, align 32
@_drbd_set_state._entry_ptr.15 = internal global ptr @_drbd_set_state._entry.13, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@_drbd_set_state._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.12, ptr @.str, i32 1381, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Resync suspended\0A\00", [46 x i8] zeroinitializer }, align 32
@_drbd_set_state._entry_ptr.18 = internal global ptr @_drbd_set_state._entry.16, section ".printk_index", align 4
@_drbd_set_state._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.12, ptr @.str, i32 1405, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Starting Online Verify from sector %llu\0A\00", [55 x i8] zeroinitializer }, align 32
@_drbd_set_state._entry_ptr.21 = internal global ptr @_drbd_set_state._entry.19, section ".printk_index", align 4
@_drbd_set_state._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.12, ptr @.str, i32 1481, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Could not kmalloc an ascw\0A\00", [37 x i8] zeroinitializer }, align 32
@_drbd_set_state._entry_ptr.24 = internal global ptr @_drbd_set_state._entry.22, section ".printk_index", align 4
@drbd_bitmap_io_from_worker._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str, i32 1526, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"ASSERT( current == first_peer_device(device)->connection->worker.task ) in %s:%d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drbd_bitmap_io_from_worker\00", [37 x i8] zeroinitializer }, align 32
@drbd_bitmap_io_from_worker._entry_ptr = internal global ptr @drbd_bitmap_io_from_worker._entry, section ".printk_index", align 4
@_conn_request_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str, i32 2358, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013drbd %s: Could not kmalloc an acscw\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"_conn_request_state\00", [44 x i8] zeroinitializer }, align 32
@_conn_request_state._entry_ptr = internal global ptr @_conn_request_state._entry, section ".printk_index", align 4
@_conn_request_state._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str, i32 2371, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013drbd %s: State change failed: %s\0A\00", [60 x i8] zeroinitializer }, align 32
@_conn_request_state._entry_ptr.31 = internal global ptr @_conn_request_state._entry.29, section ".printk_index", align 4
@_conn_request_state._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.28, ptr @.str, i32 2372, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013drbd %s:  mask = 0x%x val = 0x%x\0A\00", [60 x i8] zeroinitializer }, align 32
@_conn_request_state._entry_ptr.34 = internal global ptr @_conn_request_state._entry.32, section ".printk_index", align 4
@_conn_request_state._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.28, ptr @.str, i32 2373, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013drbd %s:  old_conn:%s wanted_conn:%s\0A\00", [56 x i8] zeroinitializer }, align 32
@_conn_request_state._entry_ptr.37 = internal global ptr @_conn_request_state._entry.35, section ".printk_index", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.38 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.40 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__func__.drbd_req_state = private unnamed_addr constant [15 x i8] c"drbd_req_state\00", align 1
@drbd_req_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @__func__.drbd_req_state, ptr @.str, i32 625, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"ASSERT( current != first_peer_device(device)->connection->worker.task ) in %s:%d\0A\00", [46 x i8] zeroinitializer }, align 32
@drbd_req_state._entry_ptr = internal global ptr @drbd_req_state._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.42 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@print_st._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str, i32 730, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c" %s = { cs:%s ro:%s/%s ds:%s/%s %c%c%c%c%c%c }\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"print_st\00", [23 x i8] zeroinitializer }, align 32
@print_st._entry_ptr = internal global ptr @print_st._entry, section ".printk_index", align 4
@sanitize_state.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.45 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@is_valid_state.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@is_valid_state.__warned.46 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@print_sanitize_warnings.msg_table = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52], [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.48 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Online-verify aborted.\00", [41 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Resync aborted.\00", [16 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Connection lost while negotiating, no data!\00", [52 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Implicitly upgraded disk\00", [39 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Implicitly upgraded pdsk\00", [39 x i8] zeroinitializer }, align 32
@print_sanitize_warnings._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str, i32 1039, ptr @.str.55, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"print_sanitize_warnings\00", [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@print_sanitize_warnings._entry_ptr = internal global ptr @print_sanitize_warnings._entry, section ".printk_index", align 4
@.str.56 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"aftr_isp( %d -> %d ) \00", [42 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"peer_isp( %d -> %d ) \00", [42 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"user_isp( %d -> %d ) \00", [42 x i8] zeroinitializer }, align 32
@drbd_pr_state_change._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.59, ptr @.str, i32 796, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"drbd_pr_state_change\00", [43 x i8] zeroinitializer }, align 32
@drbd_pr_state_change._entry_ptr = internal global ptr @drbd_pr_state_change._entry, section ".printk_index", align 4
@.str.60 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"role( %s -> %s ) \00", [46 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"peer( %s -> %s ) \00", [46 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"conn( %s -> %s ) \00", [46 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"disk( %s -> %s ) \00", [46 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pdsk( %s -> %s ) \00", [46 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"susp( %d -> %d ) \00", [46 x i8] zeroinitializer }, align 32
@conn_pr_state_change._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str, i32 813, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\016drbd %s: %s\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"conn_pr_state_change\00", [43 x i8] zeroinitializer }, align 32
@conn_pr_state_change._entry_ptr = internal global ptr @conn_pr_state_change._entry, section ".printk_index", align 4
@put_ldev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.70, i32 2099, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ASSERT( i >= 0 ) in %s:%d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"put_ldev\00", [23 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/block/drbd/drbd_int.h\00", [34 x i8] zeroinitializer }, align 32
@put_ldev._entry_ptr = internal global ptr @put_ldev._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.71 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pri-on-incon-degr\00", [46 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"send_bitmap (WFBitMapS)\00", [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"demote diskless peer\00", [43 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"demote\00", [25 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"set_n_write from StartingSync\00", [34 x i8] zeroinitializer }, align 32
@after_state_ch.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.76 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"local-io-error\00", [17 x i8] zeroinitializer }, align 32
@after_state_ch._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str, i32 1938, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"ASSERT FAILED: disk is %s during detach\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"after_state_ch\00", [17 x i8] zeroinitializer }, align 32
@after_state_ch._entry_ptr = internal global ptr @after_state_ch._entry, section ".printk_index", align 4
@after_state_ch._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.78, ptr @.str, i32 1962, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"ASSERT FAILED: disk is %s while going diskless\0A\00", [48 x i8] zeroinitializer }, align 32
@after_state_ch._entry_ptr.81 = internal global ptr @after_state_ch._entry.79, section ".printk_index", align 4
@.str.82 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"write from resync_finished\00", [37 x i8] zeroinitializer }, align 32
@notification_mutex = external dso_local global %struct.mutex, align 4
@abw_start_sync._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str, i32 1505, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Writing the bitmap failed not starting resync.\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"abw_start_sync\00", [17 x i8] zeroinitializer }, align 32
@abw_start_sync._entry_ptr = internal global ptr @abw_start_sync._entry, section ".printk_index", align 4
@switch.table.sanitize_state = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 0, i32 4, i32 8, i32 4, i32 8, i32 8, i32 4, i32 8, i32 8, i32 8, i32 4, i32 8, i32 4, i32 8], [40 x i8] zeroinitializer }, align 32
@switch.table.sanitize_state.85 = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 8, i32 7, i32 8, i32 7, i32 8, i32 8, i32 4, i32 8, i32 8, i32 8, i32 7, i32 8, i32 7, i32 8], [40 x i8] zeroinitializer }, align 32
@switch.table.sanitize_state.86 = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 8, i32 8, i32 5, i32 8, i32 5, i32 5, i32 8, i32 4, i32 8, i32 8, i32 8, i32 5, i32 8, i32 5], [40 x i8] zeroinitializer }, align 32
@switch.table.sanitize_state.87 = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 0, i32 8, i32 4, i32 8, i32 4, i32 4, i32 8, i32 4, i32 8, i32 8, i32 8, i32 4, i32 8, i32 4], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 10, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21]
@__sancov_gen_cov_switch_values.88 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 7]
@__sancov_gen_cov_switch_values.89 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 7]
@__sancov_gen_cov_switch_values.90 = internal global [8 x i64] [i64 6, i64 32, i64 10, i64 13, i64 16, i64 18, i64 19, i64 20]
@__sancov_gen_cov_switch_values.91 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 8]
@__sancov_gen_cov_switch_values.92 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.93 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.94 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 20]
@__sancov_gen_cov_switch_values.95 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 20]
@__sancov_gen_cov_switch_values.96 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 6]
@__sancov_gen_cov_switch_values.97 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 5, i64 6]
@__sancov_gen_cov_switch_values.98 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 5, i64 6]
@__sancov_gen_cov_switch_values.99 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 5]
@__sancov_gen_cov_switch_values.100 = internal global [4 x i64] [i64 2, i64 32, i64 11, i64 12]
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 654, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 738, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 739, i32 19 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 740, i32 19 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 1221, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 1346, i32 28 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 1366, i32 4 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 1372, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 1381, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 1404, i32 4 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 1481, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 1526, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 2358, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 2371, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 2372, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 2373, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 695, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 723, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 625, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.228 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 87, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 717, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 1064, i32 8 }
@___asan_gen_.242 = private unnamed_addr constant [10 x i8] c"msg_table\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 1029, i32 21 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 1030, i32 18 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 1031, i32 29 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 1032, i32 22 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 1033, i32 35 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 1034, i32 32 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 1035, i32 32 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 1039, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 783, i32 23 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 787, i32 23 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 791, i32 23 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 796, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 751, i32 23 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 755, i32 23 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 759, i32 23 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 763, i32 23 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 767, i32 23 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 808, i32 23 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 813, i32 3 }
@___asan_gen_.327 = private unnamed_addr constant [33 x i8] c"../drivers/block/drbd/drbd_int.h\00", align 1
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 2099, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 1728, i32 24 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 1811, i32 5 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 1842, i32 5 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 1854, i32 5 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 1891, i32 4 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 1914, i32 26 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 1936, i32 5 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 1960, i32 4 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 2014, i32 4 }
@___asan_gen_.365 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.371 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.372 = private constant [35 x i8] c"../drivers/block/drbd/drbd_state.c\00", align 1
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 1505, i32 3 }
@___asan_gen_.374 = private unnamed_addr constant [28 x i8] c"switch.table.sanitize_state\00", align 1
@___asan_gen_.375 = private unnamed_addr constant [31 x i8] c"switch.table.sanitize_state.85\00", align 1
@___asan_gen_.376 = private unnamed_addr constant [31 x i8] c"switch.table.sanitize_state.86\00", align 1
@___asan_gen_.377 = private unnamed_addr constant [31 x i8] c"switch.table.sanitize_state.87\00", align 1
@llvm.compiler.used = appending global [116 x ptr] [ptr @_conn_request_state._entry, ptr @_conn_request_state._entry.29, ptr @_conn_request_state._entry.32, ptr @_conn_request_state._entry.35, ptr @_conn_request_state._entry_ptr, ptr @_conn_request_state._entry_ptr.31, ptr @_conn_request_state._entry_ptr.34, ptr @_conn_request_state._entry_ptr.37, ptr @_drbd_set_state._entry, ptr @_drbd_set_state._entry.13, ptr @_drbd_set_state._entry.16, ptr @_drbd_set_state._entry.19, ptr @_drbd_set_state._entry.22, ptr @_drbd_set_state._entry_ptr, ptr @_drbd_set_state._entry_ptr.15, ptr @_drbd_set_state._entry_ptr.18, ptr @_drbd_set_state._entry_ptr.21, ptr @_drbd_set_state._entry_ptr.24, ptr @abw_start_sync._entry, ptr @abw_start_sync._entry_ptr, ptr @after_state_ch._entry, ptr @after_state_ch._entry.79, ptr @after_state_ch._entry_ptr, ptr @after_state_ch._entry_ptr.81, ptr @conn_pr_state_change._entry, ptr @conn_pr_state_change._entry_ptr, ptr @drbd_bitmap_io_from_worker._entry, ptr @drbd_bitmap_io_from_worker._entry_ptr, ptr @drbd_pr_state_change._entry, ptr @drbd_pr_state_change._entry_ptr, ptr @drbd_req_state._entry, ptr @drbd_req_state._entry_ptr, ptr @drbd_resume_al._entry, ptr @drbd_resume_al._entry_ptr, ptr @print_sanitize_warnings._entry, ptr @print_sanitize_warnings._entry_ptr, ptr @print_st._entry, ptr @print_st._entry_ptr, ptr @print_st_err._entry, ptr @print_st_err._entry_ptr, ptr @put_ldev._entry, ptr @put_ldev._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @init_completion.__key, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @print_sanitize_warnings.msg_table, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.80, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @switch.table.sanitize_state, ptr @switch.table.sanitize_state.85, ptr @switch.table.sanitize_state.86, ptr @switch.table.sanitize_state.87], section "llvm.metadata"
@0 = internal global [95 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_st_err._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_resume_al._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_drbd_set_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_drbd_set_state._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_drbd_set_state._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_drbd_set_state._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_drbd_set_state._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_bitmap_io_from_worker._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_conn_request_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_conn_request_state._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_conn_request_state._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_conn_request_state._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_req_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_st._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_sanitize_warnings.msg_table to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_sanitize_warnings._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_pr_state_change._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @conn_pr_state_change._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @put_ldev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @after_state_ch._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @after_state_ch._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abw_start_sync._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sanitize_state to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sanitize_state.85 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sanitize_state.86 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sanitize_state.87 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @remember_old_state(ptr noundef %resource, i32 noundef %gfp) local_unnamed_addr #0 align 64 {
entry:
  %vnr.i = alloca i32, align 4
  %vnr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vnr) #13
  %0 = ptrtoint ptr %vnr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %vnr, align 4, !annotation !185
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vnr.i) #13
  %devices.i = getelementptr inbounds %struct.drbd_resource, ptr %resource, i32 0, i32 6
  %1 = ptrtoint ptr %vnr.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %vnr.i, align 4
  %call19.i = call ptr @idr_get_next(ptr noundef %devices.i, ptr noundef nonnull %vnr.i) #13
  %cmp.not20.i = icmp eq ptr %call19.i, null
  br i1 %cmp.not20.i, label %entry.for.end.i_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.for.end.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %n_devices.0 = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %inc.i = add i32 %n_devices.0, 1
  %2 = ptrtoint ptr %vnr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vnr.i, align 4
  %add.i = add i32 %3, 1
  store i32 %add.i, ptr %vnr.i, align 4
  %call.i = call ptr @idr_get_next(ptr noundef %devices.i, ptr noundef nonnull %vnr.i) #13
  %cmp.not.i = icmp eq ptr %call.i, null
  br i1 %cmp.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %entry.for.end.i_crit_edge
  %n_devices.1 = phi i32 [ 0, %entry.for.end.i_crit_edge ], [ %inc.i, %for.body.i.for.end.i_crit_edge ]
  %connections.i = getelementptr inbounds %struct.drbd_resource, ptr %resource, i32 0, i32 7
  %4 = ptrtoint ptr %connections.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %connection.021.i = load ptr, ptr %connections.i, align 4
  %cmp4.not22.i = icmp eq ptr %connection.021.i, %connections.i
  br i1 %cmp4.not22.i, label %for.end.i.count_objects.exit_crit_edge, label %for.end.i.for.body5.i_crit_edge

for.end.i.for.body5.i_crit_edge:                  ; preds = %for.end.i
  br label %for.body5.i

for.end.i.count_objects.exit_crit_edge:           ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %count_objects.exit

for.body5.i:                                      ; preds = %for.body5.i.for.body5.i_crit_edge, %for.end.i.for.body5.i_crit_edge
  %n_connections.0 = phi i32 [ %inc6.i, %for.body5.i.for.body5.i_crit_edge ], [ 0, %for.end.i.for.body5.i_crit_edge ]
  %connection.023.i = phi ptr [ %connection.0.i, %for.body5.i.for.body5.i_crit_edge ], [ %connection.021.i, %for.end.i.for.body5.i_crit_edge ]
  %inc6.i = add i32 %n_connections.0, 1
  %5 = ptrtoint ptr %connection.023.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %connection.0.i = load ptr, ptr %connection.023.i, align 4
  %cmp4.not.i = icmp eq ptr %connection.0.i, %connections.i
  br i1 %cmp4.not.i, label %for.body5.i.count_objects.exit_crit_edge, label %for.body5.i.for.body5.i_crit_edge

for.body5.i.for.body5.i_crit_edge:                ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body5.i

for.body5.i.count_objects.exit_crit_edge:         ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %count_objects.exit

count_objects.exit:                               ; preds = %for.body5.i.count_objects.exit_crit_edge, %for.end.i.count_objects.exit_crit_edge
  %n_connections.1 = phi i32 [ 0, %for.end.i.count_objects.exit_crit_edge ], [ %inc6.i, %for.body5.i.count_objects.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vnr.i) #13
  %mul.i = mul i32 %n_devices.1, 12
  %add2.i = add i32 %mul.i, 48
  %mul4.i = mul i32 %n_devices.1, 28
  %reass.add.i = add i32 %mul4.i, 20
  %reass.mul.i = mul i32 %n_connections.1, %reass.add.i
  %add5.i = add i32 %add2.i, %reass.mul.i
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add5.i, i32 noundef %gfp) #16
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %count_objects.exit.cleanup_crit_edge, label %if.end.i

count_objects.exit.cleanup_crit_edge:             ; preds = %count_objects.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i:                                         ; preds = %count_objects.exit
  %n_devices6.i = getelementptr inbounds %struct.drbd_state_change, ptr %call9.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %n_devices6.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %n_devices.1, ptr %n_devices6.i, align 8
  %n_connections7.i = getelementptr inbounds %struct.drbd_state_change, ptr %call9.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %n_connections7.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %n_connections.1, ptr %n_connections7.i, align 4
  %add.ptr.i = getelementptr %struct.drbd_state_change, ptr %call9.i.i, i32 1
  %devices.i176 = getelementptr inbounds %struct.drbd_state_change, ptr %call9.i.i, i32 0, i32 4
  %8 = ptrtoint ptr %devices.i176 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %add.ptr.i, ptr %devices.i176, align 4
  %arrayidx.i = getelementptr %struct.drbd_device_state_change, ptr %add.ptr.i, i32 %n_devices.1
  %connections.i177 = getelementptr inbounds %struct.drbd_state_change, ptr %call9.i.i, i32 0, i32 5
  %9 = ptrtoint ptr %connections.i177 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %arrayidx.i, ptr %connections.i177, align 8
  %arrayidx10.i = getelementptr %struct.drbd_connection_state_change, ptr %arrayidx.i, i32 %n_connections.1
  %peer_devices.i = getelementptr inbounds %struct.drbd_state_change, ptr %call9.i.i, i32 0, i32 6
  %10 = ptrtoint ptr %peer_devices.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %arrayidx10.i, ptr %peer_devices.i, align 4
  %resource.i = getelementptr inbounds %struct.drbd_state_change, ptr %call9.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %resource.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %resource.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_devices.1)
  %cmp52.not.i = icmp eq i32 %n_devices.1, 0
  br i1 %cmp52.not.i, label %if.end.i.for.cond14.preheader.i_crit_edge, label %if.end.i.for.body.i179_crit_edge

if.end.i.for.body.i179_crit_edge:                 ; preds = %if.end.i
  br label %for.body.i179

if.end.i.for.cond14.preheader.i_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond14.preheader.i

for.cond14.preheader.i:                           ; preds = %for.body.i179.for.cond14.preheader.i_crit_edge, %if.end.i.for.cond14.preheader.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_connections.1)
  %cmp1554.not.i = icmp eq i32 %n_connections.1, 0
  br i1 %cmp1554.not.i, label %for.cond14.preheader.i.if.end_crit_edge, label %for.cond14.preheader.i.for.body16.i_crit_edge

for.cond14.preheader.i.for.body16.i_crit_edge:    ; preds = %for.cond14.preheader.i
  br label %for.body16.i

for.cond14.preheader.i.if.end_crit_edge:          ; preds = %for.cond14.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

for.body.i179:                                    ; preds = %for.body.i179.for.body.i179_crit_edge, %if.end.i.for.body.i179_crit_edge
  %n.053.i = phi i32 [ %inc.i178, %for.body.i179.for.body.i179_crit_edge ], [ 0, %if.end.i.for.body.i179_crit_edge ]
  %12 = ptrtoint ptr %devices.i176 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %devices.i176, align 4
  %arrayidx13.i = getelementptr %struct.drbd_device_state_change, ptr %13, i32 %n.053.i
  %14 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %arrayidx13.i, align 4
  %inc.i178 = add nuw i32 %n.053.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i178, %n_devices.1
  br i1 %exitcond.not.i, label %for.body.i179.for.cond14.preheader.i_crit_edge, label %for.body.i179.for.body.i179_crit_edge

for.body.i179.for.body.i179_crit_edge:            ; preds = %for.body.i179
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i179

for.body.i179.for.cond14.preheader.i_crit_edge:   ; preds = %for.body.i179
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond14.preheader.i

for.body16.i:                                     ; preds = %for.body16.i.for.body16.i_crit_edge, %for.cond14.preheader.i.for.body16.i_crit_edge
  %n.155.i = phi i32 [ %inc20.i, %for.body16.i.for.body16.i_crit_edge ], [ 0, %for.cond14.preheader.i.for.body16.i_crit_edge ]
  %15 = ptrtoint ptr %connections.i177 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %connections.i177, align 8
  %arrayidx18.i = getelementptr %struct.drbd_connection_state_change, ptr %16, i32 %n.155.i
  %17 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %arrayidx18.i, align 4
  %inc20.i = add nuw i32 %n.155.i, 1
  %exitcond56.not.i = icmp eq i32 %inc20.i, %n_connections.1
  br i1 %exitcond56.not.i, label %for.body16.i.if.end_crit_edge, label %for.body16.i.for.body16.i_crit_edge

for.body16.i.for.body16.i_crit_edge:              ; preds = %for.body16.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body16.i

for.body16.i.if.end_crit_edge:                    ; preds = %for.body16.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end:                                           ; preds = %for.body16.i.if.end_crit_edge, %for.cond14.preheader.i.if.end_crit_edge
  %kref = getelementptr inbounds %struct.drbd_resource, ptr %resource, i32 0, i32 5
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #13
  %18 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #13, !srcloc !186
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !187

if.end.if.end15.sink.split.i.i.i.i_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %19 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %19)
  %.not.i.i.i.i = icmp sgt i32 %19, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !188

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef %.sink.i.i.i.i) #13
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  %20 = ptrtoint ptr %resource.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %resource, ptr %resource.i, align 16
  %21 = ptrtoint ptr %connections.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %connections.i, align 4
  %cmp.not.i181 = icmp eq ptr %22, %connections.i
  %spec.select.i = select i1 %cmp.not.i181, ptr null, ptr %22
  %call4 = call i32 @conn_highest_role(ptr noundef %spec.select.i)
  %role = getelementptr inbounds %struct.drbd_state_change, ptr %call9.i.i, i32 0, i32 3, i32 0, i32 1
  %23 = ptrtoint ptr %role to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call4, ptr %role, align 4
  %susp = getelementptr inbounds %struct.drbd_resource, ptr %resource, i32 0, i32 13
  %24 = ptrtoint ptr %susp to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load = load i8, ptr %susp, align 4
  %susp10 = getelementptr inbounds %struct.drbd_state_change, ptr %call9.i.i, i32 0, i32 3, i32 0, i32 2
  %bf.load.lobit = lshr i8 %bf.load, 7
  %25 = ptrtoint ptr %susp10 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %bf.load.lobit, ptr %susp10, align 4
  %susp_nod18 = getelementptr inbounds %struct.drbd_state_change, ptr %call9.i.i, i32 0, i32 3, i32 0, i32 3
  %26 = lshr i8 %bf.load, 6
  %.lobit = and i8 %26, 1
  %27 = ptrtoint ptr %susp_nod18 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %.lobit, ptr %susp_nod18, align 2
  %bf.load21 = load i8, ptr %susp, align 4
  %susp_fen28 = getelementptr inbounds %struct.drbd_state_change, ptr %call9.i.i, i32 0, i32 3, i32 0, i32 4
  %28 = lshr i8 %bf.load21, 5
  %.lobit172 = and i8 %28, 1
  %29 = ptrtoint ptr %susp_fen28 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %.lobit172, ptr %susp_fen28, align 32
  %30 = ptrtoint ptr %connections.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %connection.0206 = load ptr, ptr %connections.i, align 4
  %cmp.not207 = icmp eq ptr %connection.0206, %connections.i
  br i1 %cmp.not207, label %kref_get.exit.for.end_crit_edge, label %for.body.preheader

kref_get.exit.for.end_crit_edge:                  ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.preheader:                               ; preds = %kref_get.exit
  %31 = ptrtoint ptr %connections.i177 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %connections.i177, align 8
  br label %for.body

for.body:                                         ; preds = %kref_get.exit190.for.body_crit_edge, %for.body.preheader
  %connection.0209 = phi ptr [ %connection.0, %kref_get.exit190.for.body_crit_edge ], [ %connection.0206, %for.body.preheader ]
  %connection_state_change.0208 = phi ptr [ %incdec.ptr, %kref_get.exit190.for.body_crit_edge ], [ %32, %for.body.preheader ]
  %kref34 = getelementptr inbounds %struct.drbd_connection, ptr %connection.0209, i32 0, i32 5
  %call.i.i.i.i.i.i182 = call zeroext i1 @__kasan_check_write(ptr noundef %kref34, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %kref34, i32 1, i32 3, i32 1) #13
  %33 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref34, ptr %kref34, i32 1, ptr elementtype(i32) %kref34) #13, !srcloc !186
  %asmresult.i.i.i.i.i.i183 = extractvalue { i32, i32, i32 } %33, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i183)
  %tobool1.not.i.i.i.i184 = icmp eq i32 %asmresult.i.i.i.i.i.i183, 0
  br i1 %tobool1.not.i.i.i.i184, label %for.body.if.end15.sink.split.i.i.i.i189_crit_edge, label %if.else.i.i.i.i187, !prof !187

for.body.if.end15.sink.split.i.i.i.i189_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i189

if.else.i.i.i.i187:                               ; preds = %for.body
  %add.i.i.i.i185 = add i32 %asmresult.i.i.i.i.i.i183, 1
  %34 = or i32 %add.i.i.i.i185, %asmresult.i.i.i.i.i.i183
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %34)
  %.not.i.i.i.i186 = icmp sgt i32 %34, -1
  br i1 %.not.i.i.i.i186, label %if.else.i.i.i.i187.kref_get.exit190_crit_edge, label %if.else.i.i.i.i187.if.end15.sink.split.i.i.i.i189_crit_edge, !prof !188

if.else.i.i.i.i187.if.end15.sink.split.i.i.i.i189_crit_edge: ; preds = %if.else.i.i.i.i187
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i189

if.else.i.i.i.i187.kref_get.exit190_crit_edge:    ; preds = %if.else.i.i.i.i187
  call void @__sanitizer_cov_trace_pc() #15
  br label %kref_get.exit190

if.end15.sink.split.i.i.i.i189:                   ; preds = %if.else.i.i.i.i187.if.end15.sink.split.i.i.i.i189_crit_edge, %for.body.if.end15.sink.split.i.i.i.i189_crit_edge
  %.sink.i.i.i.i188 = phi i32 [ 2, %for.body.if.end15.sink.split.i.i.i.i189_crit_edge ], [ 1, %if.else.i.i.i.i187.if.end15.sink.split.i.i.i.i189_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %kref34, i32 noundef %.sink.i.i.i.i188) #13
  br label %kref_get.exit190

kref_get.exit190:                                 ; preds = %if.end15.sink.split.i.i.i.i189, %if.else.i.i.i.i187.kref_get.exit190_crit_edge
  %35 = ptrtoint ptr %connection_state_change.0208 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %connection.0209, ptr %connection_state_change.0208, align 4
  %cstate = getelementptr inbounds %struct.drbd_connection, ptr %connection.0209, i32 0, i32 7
  %36 = ptrtoint ptr %cstate to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cstate, align 4
  %cstate36 = getelementptr inbounds %struct.drbd_connection_state_change, ptr %connection_state_change.0208, i32 0, i32 1
  %38 = ptrtoint ptr %cstate36 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %cstate36, align 4
  %call38 = call i32 @conn_highest_peer(ptr noundef %connection.0209)
  %peer_role = getelementptr inbounds %struct.drbd_connection_state_change, ptr %connection_state_change.0208, i32 0, i32 2
  %39 = ptrtoint ptr %peer_role to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %call38, ptr %peer_role, align 4
  %incdec.ptr = getelementptr %struct.drbd_connection_state_change, ptr %connection_state_change.0208, i32 1
  %40 = ptrtoint ptr %connection.0209 to i32
  call void @__asan_load4_noabort(i32 %40)
  %connection.0 = load ptr, ptr %connection.0209, align 4
  %cmp.not = icmp eq ptr %connection.0, %connections.i
  br i1 %cmp.not, label %kref_get.exit190.for.end_crit_edge, label %kref_get.exit190.for.body_crit_edge

kref_get.exit190.for.body_crit_edge:              ; preds = %kref_get.exit190
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

kref_get.exit190.for.end_crit_edge:               ; preds = %kref_get.exit190
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %kref_get.exit190.for.end_crit_edge, %kref_get.exit.for.end_crit_edge
  %41 = ptrtoint ptr %devices.i176 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %devices.i176, align 4
  %43 = ptrtoint ptr %peer_devices.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %peer_devices.i, align 4
  %45 = ptrtoint ptr %vnr to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %vnr, align 4
  %call47214 = call ptr @idr_get_next(ptr noundef %devices.i, ptr noundef nonnull %vnr) #13
  %cmp48.not215 = icmp eq ptr %call47214, null
  br i1 %cmp48.not215, label %for.end.cleanup_crit_edge, label %for.end.for.body49_crit_edge

for.end.for.body49_crit_edge:                     ; preds = %for.end
  br label %for.body49

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body49:                                       ; preds = %for.end111.for.body49_crit_edge, %for.end.for.body49_crit_edge
  %call47218 = phi ptr [ %call47, %for.end111.for.body49_crit_edge ], [ %call47214, %for.end.for.body49_crit_edge ]
  %device_state_change.0217 = phi ptr [ %incdec.ptr112, %for.end111.for.body49_crit_edge ], [ %42, %for.end.for.body49_crit_edge ]
  %peer_device_state_change.0216 = phi ptr [ %peer_device_state_change.1.lcssa, %for.end111.for.body49_crit_edge ], [ %44, %for.end.for.body49_crit_edge ]
  %kref50 = getelementptr inbounds %struct.drbd_device, ptr %call47218, i32 0, i32 13
  %call.i.i.i.i.i.i191 = call zeroext i1 @__kasan_check_write(ptr noundef %kref50, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %kref50, i32 1, i32 3, i32 1) #13
  %46 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref50, ptr %kref50, i32 1, ptr elementtype(i32) %kref50) #13, !srcloc !186
  %asmresult.i.i.i.i.i.i192 = extractvalue { i32, i32, i32 } %46, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i192)
  %tobool1.not.i.i.i.i193 = icmp eq i32 %asmresult.i.i.i.i.i.i192, 0
  br i1 %tobool1.not.i.i.i.i193, label %for.body49.if.end15.sink.split.i.i.i.i198_crit_edge, label %if.else.i.i.i.i196, !prof !187

for.body49.if.end15.sink.split.i.i.i.i198_crit_edge: ; preds = %for.body49
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i198

if.else.i.i.i.i196:                               ; preds = %for.body49
  %add.i.i.i.i194 = add i32 %asmresult.i.i.i.i.i.i192, 1
  %47 = or i32 %add.i.i.i.i194, %asmresult.i.i.i.i.i.i192
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %47)
  %.not.i.i.i.i195 = icmp sgt i32 %47, -1
  br i1 %.not.i.i.i.i195, label %if.else.i.i.i.i196.kref_get.exit199_crit_edge, label %if.else.i.i.i.i196.if.end15.sink.split.i.i.i.i198_crit_edge, !prof !188

if.else.i.i.i.i196.if.end15.sink.split.i.i.i.i198_crit_edge: ; preds = %if.else.i.i.i.i196
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i198

if.else.i.i.i.i196.kref_get.exit199_crit_edge:    ; preds = %if.else.i.i.i.i196
  call void @__sanitizer_cov_trace_pc() #15
  br label %kref_get.exit199

if.end15.sink.split.i.i.i.i198:                   ; preds = %if.else.i.i.i.i196.if.end15.sink.split.i.i.i.i198_crit_edge, %for.body49.if.end15.sink.split.i.i.i.i198_crit_edge
  %.sink.i.i.i.i197 = phi i32 [ 2, %for.body49.if.end15.sink.split.i.i.i.i198_crit_edge ], [ 1, %if.else.i.i.i.i196.if.end15.sink.split.i.i.i.i198_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %kref50, i32 noundef %.sink.i.i.i.i197) #13
  br label %kref_get.exit199

kref_get.exit199:                                 ; preds = %if.end15.sink.split.i.i.i.i198, %if.else.i.i.i.i196.kref_get.exit199_crit_edge
  %48 = ptrtoint ptr %device_state_change.0217 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call47218, ptr %device_state_change.0217, align 4
  %state = getelementptr inbounds %struct.drbd_device, ptr %call47218, i32 0, i32 27
  %49 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %49)
  %bf.load52 = load i32, ptr %state, align 8
  %bf.lshr53 = lshr i32 %bf.load52, 9
  %bf.clear54 = and i32 %bf.lshr53, 15
  %disk_state = getelementptr inbounds %struct.drbd_device_state_change, ptr %device_state_change.0217, i32 0, i32 1
  %50 = ptrtoint ptr %disk_state to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %bf.clear54, ptr %disk_state, align 4
  %51 = ptrtoint ptr %connections.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %connection.1210 = load ptr, ptr %connections.i, align 4
  %cmp64.not211 = icmp eq ptr %connection.1210, %connections.i
  br i1 %cmp64.not211, label %kref_get.exit199.for.end111_crit_edge, label %for.body66.lr.ph

kref_get.exit199.for.end111_crit_edge:            ; preds = %kref_get.exit199
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end111

for.body66.lr.ph:                                 ; preds = %kref_get.exit199
  %vnr67 = getelementptr inbounds %struct.drbd_device, ptr %call47218, i32 0, i32 11
  br label %for.body66

for.body66:                                       ; preds = %for.body66.for.body66_crit_edge, %for.body66.lr.ph
  %connection.1213 = phi ptr [ %connection.1210, %for.body66.lr.ph ], [ %connection.1, %for.body66.for.body66_crit_edge ]
  %peer_device_state_change.1212 = phi ptr [ %peer_device_state_change.0216, %for.body66.lr.ph ], [ %incdec.ptr104, %for.body66.for.body66_crit_edge ]
  %52 = ptrtoint ptr %vnr67 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %vnr67, align 4
  %peer_devices.i200 = getelementptr inbounds %struct.drbd_connection, ptr %connection.1213, i32 0, i32 6
  %call.i201 = call ptr @idr_find(ptr noundef %peer_devices.i200, i32 noundef %53) #13
  %54 = ptrtoint ptr %peer_device_state_change.1212 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call.i201, ptr %peer_device_state_change.1212, align 4
  %55 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %55)
  %bf.load71 = load i32, ptr %state, align 8
  %bf.lshr72 = lshr i32 %bf.load71, 13
  %bf.clear73 = and i32 %bf.lshr72, 15
  %disk_state74 = getelementptr inbounds %struct.drbd_peer_device_state_change, ptr %peer_device_state_change.1212, i32 0, i32 1
  %56 = ptrtoint ptr %disk_state74 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %bf.clear73, ptr %disk_state74, align 4
  %bf.load77 = load i32, ptr %state, align 8
  %bf.lshr78 = lshr i32 %bf.load77, 4
  %bf.clear79 = and i32 %bf.lshr78, 31
  %57 = call i32 @llvm.umax.i32(i32 %bf.clear79, i32 9)
  %repl_state = getelementptr inbounds %struct.drbd_peer_device_state_change, ptr %peer_device_state_change.1212, i32 0, i32 2
  %58 = ptrtoint ptr %repl_state to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %repl_state, align 4
  %59 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %59)
  %bf.load84 = load i32, ptr %state, align 8
  %resync_susp_user = getelementptr inbounds %struct.drbd_peer_device_state_change, ptr %peer_device_state_change.1212, i32 0, i32 3
  %60 = lshr i32 %bf.load84, 20
  %61 = trunc i32 %60 to i8
  %62 = and i8 %61, 1
  %63 = ptrtoint ptr %resync_susp_user to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %62, ptr %resync_susp_user, align 4
  %bf.load91 = load i32, ptr %state, align 8
  %resync_susp_peer = getelementptr inbounds %struct.drbd_peer_device_state_change, ptr %peer_device_state_change.1212, i32 0, i32 4
  %64 = lshr i32 %bf.load91, 19
  %65 = trunc i32 %64 to i8
  %66 = and i8 %65, 1
  %67 = ptrtoint ptr %resync_susp_peer to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %66, ptr %resync_susp_peer, align 2
  %bf.load98 = load i32, ptr %state, align 8
  %resync_susp_dependency = getelementptr inbounds %struct.drbd_peer_device_state_change, ptr %peer_device_state_change.1212, i32 0, i32 5
  %68 = lshr i32 %bf.load98, 18
  %69 = trunc i32 %68 to i8
  %70 = and i8 %69, 1
  %71 = ptrtoint ptr %resync_susp_dependency to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %70, ptr %resync_susp_dependency, align 4
  %incdec.ptr104 = getelementptr %struct.drbd_peer_device_state_change, ptr %peer_device_state_change.1212, i32 1
  %72 = ptrtoint ptr %connection.1213 to i32
  call void @__asan_load4_noabort(i32 %72)
  %connection.1 = load ptr, ptr %connection.1213, align 4
  %cmp64.not = icmp eq ptr %connection.1, %connections.i
  br i1 %cmp64.not, label %for.body66.for.end111_crit_edge, label %for.body66.for.body66_crit_edge

for.body66.for.body66_crit_edge:                  ; preds = %for.body66
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body66

for.body66.for.end111_crit_edge:                  ; preds = %for.body66
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end111

for.end111:                                       ; preds = %for.body66.for.end111_crit_edge, %kref_get.exit199.for.end111_crit_edge
  %peer_device_state_change.1.lcssa = phi ptr [ %peer_device_state_change.0216, %kref_get.exit199.for.end111_crit_edge ], [ %incdec.ptr104, %for.body66.for.end111_crit_edge ]
  %incdec.ptr112 = getelementptr %struct.drbd_device_state_change, ptr %device_state_change.0217, i32 1
  %73 = ptrtoint ptr %vnr to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %vnr, align 4
  %add = add i32 %74, 1
  store i32 %add, ptr %vnr, align 4
  %call47 = call ptr @idr_get_next(ptr noundef %devices.i, ptr noundef nonnull %vnr) #13
  %cmp48.not = icmp eq ptr %call47, null
  br i1 %cmp48.not, label %for.end111.cleanup_crit_edge, label %for.end111.for.body49_crit_edge

for.end111.for.body49_crit_edge:                  ; preds = %for.end111
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body49

for.end111.cleanup_crit_edge:                     ; preds = %for.end111
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %for.end111.cleanup_crit_edge, %for.end.cleanup_crit_edge, %count_objects.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %count_objects.exit.cleanup_crit_edge ], [ %call9.i.i, %for.end.cleanup_crit_edge ], [ %call9.i.i, %for.end111.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vnr) #13
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @conn_highest_role(ptr noundef %connection) local_unnamed_addr #0 align 64 {
entry:
  %vnr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vnr) #13
  %0 = tail call i32 @llvm.read_register.i32(metadata !175) #13
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !189
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 696, ptr noundef nonnull @.str.39) #13
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %peer_devices = getelementptr inbounds %struct.drbd_connection, ptr %connection, i32 0, i32 6
  %4 = ptrtoint ptr %vnr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %vnr, align 4
  %call13 = call ptr @idr_get_next(ptr noundef %peer_devices, ptr noundef nonnull %vnr) #13
  %cmp.not14 = icmp eq ptr %call13, null
  br i1 %cmp.not14, label %rcu_read_lock.exit.for.end_crit_edge, label %rcu_read_lock.exit.for.body_crit_edge

rcu_read_lock.exit.for.body_crit_edge:            ; preds = %rcu_read_lock.exit
  br label %for.body

rcu_read_lock.exit.for.end_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %rcu_read_lock.exit.for.body_crit_edge
  %call16 = phi ptr [ %call, %for.body.for.body_crit_edge ], [ %call13, %rcu_read_lock.exit.for.body_crit_edge ]
  %role.015 = phi i32 [ %retval.0.i, %for.body.for.body_crit_edge ], [ 2, %rcu_read_lock.exit.for.body_crit_edge ]
  %device1 = getelementptr inbounds %struct.drbd_peer_device, ptr %call16, i32 0, i32 1
  %5 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %device1, align 4
  %state = getelementptr inbounds %struct.drbd_device, ptr %6, i32 0, i32 27
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %bf.load = load i32, ptr %state, align 8
  %bf.clear = and i32 %bf.load, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %role.015)
  %cmp.i = icmp eq i32 %role.015, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %bf.clear)
  %cmp1.i = icmp eq i32 %bf.clear, 1
  %or.cond.i = or i1 %cmp.i, %cmp1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %role.015)
  %cmp2.i = icmp eq i32 %role.015, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %bf.clear)
  %cmp4.i = icmp eq i32 %bf.clear, 2
  %or.cond9.i = or i1 %cmp2.i, %cmp4.i
  %spec.select.i = select i1 %or.cond9.i, i32 2, i32 0
  %retval.0.i = select i1 %or.cond.i, i32 1, i32 %spec.select.i
  %8 = ptrtoint ptr %vnr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vnr, align 4
  %add = add i32 %9, 1
  store i32 %add, ptr %vnr, align 4
  %call = call ptr @idr_get_next(ptr noundef %peer_devices, ptr noundef nonnull %vnr) #13
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %rcu_read_lock.exit.for.end_crit_edge
  %role.0.lcssa = phi i32 [ 2, %rcu_read_lock.exit.for.end_crit_edge ], [ %retval.0.i, %for.body.for.end_crit_edge ]
  %call.i4 = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i4, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i7

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true.i7:                                 ; preds = %for.end
  %call1.i5 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i5)
  %tobool.not.i6 = icmp eq i32 %call1.i5, 0
  br i1 %tobool.not.i6, label %land.lhs.true.i7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i9

land.lhs.true.i7.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i7
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true2.i9:                                ; preds = %land.lhs.true.i7
  %.b4.i8 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i8, label %land.lhs.true2.i9.rcu_read_unlock.exit_crit_edge, label %if.then.i10

land.lhs.true2.i9.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i9
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

if.then.i10:                                      ; preds = %land.lhs.true2.i9
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 724, ptr noundef nonnull @.str.40) #13
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i10, %land.lhs.true2.i9.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i7.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !190
  %10 = call i32 @llvm.read_register.i32(metadata !175) #13
  %and.i.i.i.i.i11 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i11 to ptr
  %preempt_count.i.i.i.i12 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i12, align 4
  %sub.i.i.i = add i32 %13, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i12, align 4
  call void @rcu_read_unlock_strict() #13
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vnr) #13
  ret i32 %role.0.lcssa
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @conn_highest_peer(ptr noundef %connection) local_unnamed_addr #0 align 64 {
entry:
  %vnr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vnr) #13
  %0 = tail call i32 @llvm.read_register.i32(metadata !175) #13
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !189
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 696, ptr noundef nonnull @.str.39) #13
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %peer_devices = getelementptr inbounds %struct.drbd_connection, ptr %connection, i32 0, i32 6
  %4 = ptrtoint ptr %vnr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %vnr, align 4
  %call13 = call ptr @idr_get_next(ptr noundef %peer_devices, ptr noundef nonnull %vnr) #13
  %cmp.not14 = icmp eq ptr %call13, null
  br i1 %cmp.not14, label %rcu_read_lock.exit.for.end_crit_edge, label %rcu_read_lock.exit.for.body_crit_edge

rcu_read_lock.exit.for.body_crit_edge:            ; preds = %rcu_read_lock.exit
  br label %for.body

rcu_read_lock.exit.for.end_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %rcu_read_lock.exit.for.body_crit_edge
  %call16 = phi ptr [ %call, %for.body.for.body_crit_edge ], [ %call13, %rcu_read_lock.exit.for.body_crit_edge ]
  %peer.015 = phi i32 [ %retval.0.i, %for.body.for.body_crit_edge ], [ 0, %rcu_read_lock.exit.for.body_crit_edge ]
  %device1 = getelementptr inbounds %struct.drbd_peer_device, ptr %call16, i32 0, i32 1
  %5 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %device1, align 4
  %state = getelementptr inbounds %struct.drbd_device, ptr %6, i32 0, i32 27
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %bf.load = load i32, ptr %state, align 8
  %bf.lshr = lshr i32 %bf.load, 2
  %bf.clear = and i32 %bf.lshr, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %peer.015)
  %cmp.i = icmp eq i32 %peer.015, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %bf.clear)
  %cmp1.i = icmp eq i32 %bf.clear, 1
  %or.cond.i = or i1 %cmp.i, %cmp1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %peer.015)
  %cmp2.i = icmp eq i32 %peer.015, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %bf.clear)
  %cmp4.i = icmp eq i32 %bf.clear, 2
  %or.cond9.i = or i1 %cmp2.i, %cmp4.i
  %spec.select.i = select i1 %or.cond9.i, i32 2, i32 0
  %retval.0.i = select i1 %or.cond.i, i32 1, i32 %spec.select.i
  %8 = ptrtoint ptr %vnr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vnr, align 4
  %add = add i32 %9, 1
  store i32 %add, ptr %vnr, align 4
  %call = call ptr @idr_get_next(ptr noundef %peer_devices, ptr noundef nonnull %vnr) #13
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %rcu_read_lock.exit.for.end_crit_edge
  %peer.0.lcssa = phi i32 [ 0, %rcu_read_lock.exit.for.end_crit_edge ], [ %retval.0.i, %for.body.for.end_crit_edge ]
  %call.i4 = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i4, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i7

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true.i7:                                 ; preds = %for.end
  %call1.i5 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i5)
  %tobool.not.i6 = icmp eq i32 %call1.i5, 0
  br i1 %tobool.not.i6, label %land.lhs.true.i7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i9

land.lhs.true.i7.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i7
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true2.i9:                                ; preds = %land.lhs.true.i7
  %.b4.i8 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i8, label %land.lhs.true2.i9.rcu_read_unlock.exit_crit_edge, label %if.then.i10

land.lhs.true2.i9.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i9
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

if.then.i10:                                      ; preds = %land.lhs.true2.i9
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 724, ptr noundef nonnull @.str.40) #13
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i10, %land.lhs.true2.i9.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i7.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !190
  %10 = call i32 @llvm.read_register.i32(metadata !175) #13
  %and.i.i.i.i.i11 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i11 to ptr
  %preempt_count.i.i.i.i12 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i12, align 4
  %sub.i.i.i = add i32 %13, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i12, align 4
  call void @rcu_read_unlock_strict() #13
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vnr) #13
  ret i32 %peer.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_get_next(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @copy_old_to_new_state_change(ptr nocapture noundef %state_change) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %role = getelementptr inbounds %struct.drbd_state_change, ptr %state_change, i32 0, i32 3, i32 0, i32 1
  %0 = ptrtoint ptr %role to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %role, align 4
  %arrayidx3 = getelementptr %struct.drbd_state_change, ptr %state_change, i32 0, i32 3, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %arrayidx3, align 4
  %susp = getelementptr inbounds %struct.drbd_state_change, ptr %state_change, i32 0, i32 3, i32 0, i32 2
  %3 = ptrtoint ptr %susp to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %susp, align 4, !range !191
  %arrayidx6 = getelementptr %struct.drbd_state_change, ptr %state_change, i32 0, i32 3, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %arrayidx6, align 1
  %susp_nod = getelementptr inbounds %struct.drbd_state_change, ptr %state_change, i32 0, i32 3, i32 0, i32 3
  %6 = ptrtoint ptr %susp_nod to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %susp_nod, align 2, !range !191
  %arrayidx10 = getelementptr %struct.drbd_state_change, ptr %state_change, i32 0, i32 3, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %arrayidx10, align 1
  %susp_fen = getelementptr inbounds %struct.drbd_state_change, ptr %state_change, i32 0, i32 3, i32 0, i32 4
  %9 = ptrtoint ptr %susp_fen to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %susp_fen, align 4, !range !191
  %arrayidx15 = getelementptr %struct.drbd_state_change, ptr %state_change, i32 0, i32 3, i32 0, i32 4, i32 1
  %11 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %arrayidx15, align 1
  %n_connections = getelementptr inbounds %struct.drbd_state_change, ptr %state_change, i32 0, i32 2
  %12 = ptrtoint ptr %n_connections to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %n_connections, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp98.not = icmp eq i32 %13, 0
  br i1 %cmp98.not, label %entry.for.cond24.preheader_crit_edge, label %for.body.lr.ph

entry.for.cond24.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond24.preheader

for.body.lr.ph:                                   ; preds = %entry
  %connections = getelementptr inbounds %struct.drbd_state_change, ptr %state_change, i32 0, i32 5
  br label %for.body

for.cond24.preheader:                             ; preds = %for.body.for.cond24.preheader_crit_edge, %entry.for.cond24.preheader_crit_edge
  %n_devices = getelementptr inbounds %struct.drbd_state_change, ptr %state_change, i32 0, i32 1
  %14 = ptrtoint ptr %n_devices to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %n_devices, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp25100.not = icmp eq i32 %15, 0
  br i1 %cmp25100.not, label %for.cond24.preheader.for.end33_crit_edge, label %for.body26.lr.ph

for.cond24.preheader.for.end33_crit_edge:         ; preds = %for.cond24.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end33

for.body26.lr.ph:                                 ; preds = %for.cond24.preheader
  %devices = getelementptr inbounds %struct.drbd_state_change, ptr %state_change, i32 0, i32 4
  br label %for.body26

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %n_connection.099 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %16 = ptrtoint ptr %connections to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %connections, align 4
  %peer_role = getelementptr %struct.drbd_connection_state_change, ptr %17, i32 %n_connection.099, i32 2
  %18 = ptrtoint ptr %peer_role to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %peer_role, align 4
  %arrayidx20 = getelementptr %struct.drbd_connection_state_change, ptr %17, i32 %n_connection.099, i32 2, i32 1
  %20 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx20, align 4
  %cstate = getelementptr %struct.drbd_connection_state_change, ptr %17, i32 %n_connection.099, i32 1
  %21 = ptrtoint ptr %cstate to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cstate, align 4
  %arrayidx23 = getelementptr %struct.drbd_connection_state_change, ptr %17, i32 %n_connection.099, i32 1, i32 1
  %23 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx23, align 4
  %inc = add nuw i32 %n_connection.099, 1
  %24 = ptrtoint ptr %n_connections to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %n_connections, align 4
  %cmp = icmp ult i32 %inc, %25
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.cond24.preheader_crit_edge

for.body.for.cond24.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond24.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body26:                                       ; preds = %for.body26.for.body26_crit_edge, %for.body26.lr.ph
  %n_device.0101 = phi i32 [ 0, %for.body26.lr.ph ], [ %inc32, %for.body26.for.body26_crit_edge ]
  %26 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %devices, align 4
  %disk_state = getelementptr %struct.drbd_device_state_change, ptr %27, i32 %n_device.0101, i32 1
  %28 = ptrtoint ptr %disk_state to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %disk_state, align 4
  %arrayidx30 = getelementptr %struct.drbd_device_state_change, ptr %27, i32 %n_device.0101, i32 1, i32 1
  %30 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %arrayidx30, align 4
  %inc32 = add nuw i32 %n_device.0101, 1
  %31 = ptrtoint ptr %n_devices to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %n_devices, align 4
  %cmp25 = icmp ult i32 %inc32, %32
  br i1 %cmp25, label %for.body26.for.body26_crit_edge, label %for.body26.for.end33_crit_edge

for.body26.for.end33_crit_edge:                   ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end33

for.body26.for.body26_crit_edge:                  ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body26

for.end33:                                        ; preds = %for.body26.for.end33_crit_edge, %for.cond24.preheader.for.end33_crit_edge
  %.lcssa = phi i32 [ 0, %for.cond24.preheader.for.end33_crit_edge ], [ %32, %for.body26.for.end33_crit_edge ]
  %33 = ptrtoint ptr %n_connections to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %n_connections, align 4
  %mul = mul i32 %34, %.lcssa
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp37102.not = icmp eq i32 %mul, 0
  br i1 %cmp37102.not, label %for.end33.for.end64_crit_edge, label %for.body38.lr.ph

for.end33.for.end64_crit_edge:                    ; preds = %for.end33
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end64

for.body38.lr.ph:                                 ; preds = %for.end33
  %peer_devices = getelementptr inbounds %struct.drbd_state_change, ptr %state_change, i32 0, i32 6
  br label %for.body38

for.body38:                                       ; preds = %for.body38.for.body38_crit_edge, %for.body38.lr.ph
  %n_peer_device.0103 = phi i32 [ 0, %for.body38.lr.ph ], [ %inc63, %for.body38.for.body38_crit_edge ]
  %35 = ptrtoint ptr %peer_devices to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %peer_devices, align 4
  %disk_state40 = getelementptr %struct.drbd_peer_device_state_change, ptr %36, i32 %n_peer_device.0103, i32 1
  %37 = ptrtoint ptr %disk_state40 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %disk_state40, align 4
  %arrayidx43 = getelementptr %struct.drbd_peer_device_state_change, ptr %36, i32 %n_peer_device.0103, i32 1, i32 1
  %39 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %arrayidx43, align 4
  %repl_state = getelementptr %struct.drbd_peer_device_state_change, ptr %36, i32 %n_peer_device.0103, i32 2
  %40 = ptrtoint ptr %repl_state to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %repl_state, align 4
  %arrayidx46 = getelementptr %struct.drbd_peer_device_state_change, ptr %36, i32 %n_peer_device.0103, i32 2, i32 1
  %42 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %arrayidx46, align 4
  %resync_susp_user = getelementptr %struct.drbd_peer_device_state_change, ptr %36, i32 %n_peer_device.0103, i32 3
  %43 = ptrtoint ptr %resync_susp_user to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %resync_susp_user, align 4, !range !191
  %arrayidx50 = getelementptr %struct.drbd_peer_device_state_change, ptr %36, i32 %n_peer_device.0103, i32 3, i32 1
  %45 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %arrayidx50, align 1
  %resync_susp_peer = getelementptr %struct.drbd_peer_device_state_change, ptr %36, i32 %n_peer_device.0103, i32 4
  %46 = ptrtoint ptr %resync_susp_peer to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %resync_susp_peer, align 2, !range !191
  %arrayidx55 = getelementptr %struct.drbd_peer_device_state_change, ptr %36, i32 %n_peer_device.0103, i32 4, i32 1
  %48 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %arrayidx55, align 1
  %resync_susp_dependency = getelementptr %struct.drbd_peer_device_state_change, ptr %36, i32 %n_peer_device.0103, i32 5
  %49 = ptrtoint ptr %resync_susp_dependency to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %resync_susp_dependency, align 4, !range !191
  %arrayidx60 = getelementptr %struct.drbd_peer_device_state_change, ptr %36, i32 %n_peer_device.0103, i32 5, i32 1
  %51 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %arrayidx60, align 1
  %inc63 = add nuw i32 %n_peer_device.0103, 1
  %exitcond.not = icmp eq i32 %inc63, %mul
  br i1 %exitcond.not, label %for.body38.for.end64_crit_edge, label %for.body38.for.body38_crit_edge

for.body38.for.body38_crit_edge:                  ; preds = %for.body38
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body38

for.body38.for.end64_crit_edge:                   ; preds = %for.body38
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end64

for.end64:                                        ; preds = %for.body38.for.end64_crit_edge, %for.end33.for.end64_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @forget_state_change(ptr noundef %state_change) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %state_change, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %resource = getelementptr inbounds %struct.drbd_state_change, ptr %state_change, i32 0, i32 3
  %0 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resource, align 4
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %if.end.if.end7_crit_edge, label %if.then3

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

if.then3:                                         ; preds = %if.end
  %kref = getelementptr inbounds %struct.drbd_resource, ptr %1, i32 0, i32 5
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !192
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #13
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #13, !srcloc !193
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end7_crit_edge, label %if.then10.i.i.i.i, !prof !188

if.end5.i.i.i.i.if.end7_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #13
  br label %if.end7

if.then.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !194
  tail call void @drbd_destroy_resource(ptr noundef %kref) #13, !callees !195
  br label %if.end7

if.end7:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %n_devices = getelementptr inbounds %struct.drbd_state_change, ptr %state_change, i32 0, i32 1
  %3 = ptrtoint ptr %n_devices to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %n_devices, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp59.not = icmp eq i32 %4, 0
  br i1 %cmp59.not, label %if.end7.for.cond14.preheader_crit_edge, label %for.body.lr.ph

if.end7.for.cond14.preheader_crit_edge:           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond14.preheader

for.body.lr.ph:                                   ; preds = %if.end7
  %devices = getelementptr inbounds %struct.drbd_state_change, ptr %state_change, i32 0, i32 4
  br label %for.body

for.cond14.preheader:                             ; preds = %if.end13.for.cond14.preheader_crit_edge, %if.end7.for.cond14.preheader_crit_edge
  %n_connections = getelementptr inbounds %struct.drbd_state_change, ptr %state_change, i32 0, i32 2
  %5 = ptrtoint ptr %n_connections to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %n_connections, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp1561.not = icmp eq i32 %6, 0
  br i1 %cmp1561.not, label %for.cond14.preheader.for.end26_crit_edge, label %for.body16.lr.ph

for.cond14.preheader.for.end26_crit_edge:         ; preds = %for.cond14.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end26

for.body16.lr.ph:                                 ; preds = %for.cond14.preheader
  %connections = getelementptr inbounds %struct.drbd_state_change, ptr %state_change, i32 0, i32 5
  br label %for.body16

for.body:                                         ; preds = %if.end13.for.body_crit_edge, %for.body.lr.ph
  %n.060 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end13.for.body_crit_edge ]
  %7 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %devices, align 4
  %arrayidx = getelementptr %struct.drbd_device_state_change, ptr %8, i32 %n.060
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %tobool9.not = icmp eq ptr %10, null
  br i1 %tobool9.not, label %for.body.if.end13_crit_edge, label %if.then10

for.body.if.end13_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

if.then10:                                        ; preds = %for.body
  %kref11 = getelementptr inbounds %struct.drbd_device, ptr %10, i32 0, i32 13
  %call.i.i.i.i.i.i43 = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref11, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !192
  tail call void @llvm.prefetch.p0(ptr %kref11, i32 1, i32 3, i32 1) #13
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref11, ptr %kref11, i32 1, ptr elementtype(i32) %kref11) #13, !srcloc !193
  %asmresult.i.i.i.i.i.i.i44 = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i44)
  %cmp.i.i.i.i45 = icmp eq i32 %asmresult.i.i.i.i.i.i.i44, 1
  br i1 %cmp.i.i.i.i45, label %if.then.i49, label %if.end5.i.i.i.i47

if.end5.i.i.i.i47:                                ; preds = %if.then10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i44)
  %.not.i.i.i.i46 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i44, 0
  br i1 %.not.i.i.i.i46, label %if.end5.i.i.i.i47.if.end13_crit_edge, label %if.then10.i.i.i.i48, !prof !188

if.end5.i.i.i.i47.if.end13_crit_edge:             ; preds = %if.end5.i.i.i.i47
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

if.then10.i.i.i.i48:                              ; preds = %if.end5.i.i.i.i47
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %kref11, i32 noundef 3) #13
  br label %if.end13

if.then.i49:                                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !194
  tail call void @drbd_destroy_device(ptr noundef %kref11) #13, !callees !195
  br label %if.end13

if.end13:                                         ; preds = %if.then.i49, %if.then10.i.i.i.i48, %if.end5.i.i.i.i47.if.end13_crit_edge, %for.body.if.end13_crit_edge
  %inc = add nuw i32 %n.060, 1
  %12 = ptrtoint ptr %n_devices to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %n_devices, align 4
  %cmp = icmp ult i32 %inc, %13
  br i1 %cmp, label %if.end13.for.body_crit_edge, label %if.end13.for.cond14.preheader_crit_edge

if.end13.for.cond14.preheader_crit_edge:          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond14.preheader

if.end13.for.body_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body16:                                       ; preds = %if.end23.for.body16_crit_edge, %for.body16.lr.ph
  %n.162 = phi i32 [ 0, %for.body16.lr.ph ], [ %inc25, %if.end23.for.body16_crit_edge ]
  %14 = ptrtoint ptr %connections to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %connections, align 4
  %arrayidx17 = getelementptr %struct.drbd_connection_state_change, ptr %15, i32 %n.162
  %16 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx17, align 4
  %tobool19.not = icmp eq ptr %17, null
  br i1 %tobool19.not, label %for.body16.if.end23_crit_edge, label %if.then20

for.body16.if.end23_crit_edge:                    ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

if.then20:                                        ; preds = %for.body16
  %kref21 = getelementptr inbounds %struct.drbd_connection, ptr %17, i32 0, i32 5
  %call.i.i.i.i.i.i51 = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref21, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !192
  tail call void @llvm.prefetch.p0(ptr %kref21, i32 1, i32 3, i32 1) #13
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref21, ptr %kref21, i32 1, ptr elementtype(i32) %kref21) #13, !srcloc !193
  %asmresult.i.i.i.i.i.i.i52 = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i52)
  %cmp.i.i.i.i53 = icmp eq i32 %asmresult.i.i.i.i.i.i.i52, 1
  br i1 %cmp.i.i.i.i53, label %if.then.i57, label %if.end5.i.i.i.i55

if.end5.i.i.i.i55:                                ; preds = %if.then20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i52)
  %.not.i.i.i.i54 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i52, 0
  br i1 %.not.i.i.i.i54, label %if.end5.i.i.i.i55.if.end23_crit_edge, label %if.then10.i.i.i.i56, !prof !188

if.end5.i.i.i.i55.if.end23_crit_edge:             ; preds = %if.end5.i.i.i.i55
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

if.then10.i.i.i.i56:                              ; preds = %if.end5.i.i.i.i55
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %kref21, i32 noundef 3) #13
  br label %if.end23

if.then.i57:                                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !194
  tail call void @drbd_destroy_connection(ptr noundef %kref21) #13, !callees !195
  br label %if.end23

if.end23:                                         ; preds = %if.then.i57, %if.then10.i.i.i.i56, %if.end5.i.i.i.i55.if.end23_crit_edge, %for.body16.if.end23_crit_edge
  %inc25 = add nuw i32 %n.162, 1
  %19 = ptrtoint ptr %n_connections to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %n_connections, align 4
  %cmp15 = icmp ult i32 %inc25, %20
  br i1 %cmp15, label %if.end23.for.body16_crit_edge, label %if.end23.for.end26_crit_edge

if.end23.for.end26_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end26

if.end23.for.body16_crit_edge:                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body16

for.end26:                                        ; preds = %if.end23.for.end26_crit_edge, %for.cond14.preheader.for.end26_crit_edge
  tail call void @kfree(ptr noundef nonnull %state_change) #13
  br label %cleanup

cleanup:                                          ; preds = %for.end26, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drbd_destroy_resource(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drbd_destroy_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drbd_destroy_connection(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @conn_all_vols_unconf(ptr noundef %connection) local_unnamed_addr #0 align 64 {
entry:
  %vnr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vnr) #13
  %0 = tail call i32 @llvm.read_register.i32(metadata !175) #13
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !189
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 696, ptr noundef nonnull @.str.39) #13
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %peer_devices = getelementptr inbounds %struct.drbd_connection, ptr %connection, i32 0, i32 6
  %4 = ptrtoint ptr %vnr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %vnr, align 4
  %call32 = call ptr @idr_get_next(ptr noundef %peer_devices, ptr noundef nonnull %vnr) #13
  %cmp.not33 = icmp eq ptr %call32, null
  br i1 %cmp.not33, label %rcu_read_lock.exit.for.end_crit_edge, label %rcu_read_lock.exit.for.body_crit_edge

rcu_read_lock.exit.for.body_crit_edge:            ; preds = %rcu_read_lock.exit
  br label %for.body

rcu_read_lock.exit.for.end_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %rcu_read_lock.exit.for.body_crit_edge
  %call34 = phi ptr [ %call, %for.inc.for.body_crit_edge ], [ %call32, %rcu_read_lock.exit.for.body_crit_edge ]
  %device1 = getelementptr inbounds %struct.drbd_peer_device, ptr %call34, i32 0, i32 1
  %5 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %device1, align 4
  %state = getelementptr inbounds %struct.drbd_device, ptr %6, i32 0, i32 27
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %bf.load = load i32, ptr %state, align 8
  %8 = and i32 %bf.load, 8179
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %for.inc, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc:                                          ; preds = %for.body
  %10 = ptrtoint ptr %vnr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vnr, align 4
  %add = add i32 %11, 1
  store i32 %add, ptr %vnr, align 4
  %call = call ptr @idr_get_next(ptr noundef %peer_devices, ptr noundef nonnull %vnr) #13
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge, %rcu_read_lock.exit.for.end_crit_edge
  %cmp.not.lcssa = phi i1 [ true, %rcu_read_lock.exit.for.end_crit_edge ], [ %9, %for.body.for.end_crit_edge ], [ %9, %for.inc.for.end_crit_edge ]
  %call.i23 = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i23, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i26

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true.i26:                                ; preds = %for.end
  %call1.i24 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i24)
  %tobool.not.i25 = icmp eq i32 %call1.i24, 0
  br i1 %tobool.not.i25, label %land.lhs.true.i26.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i28

land.lhs.true.i26.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i26
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true2.i28:                               ; preds = %land.lhs.true.i26
  %.b4.i27 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i27, label %land.lhs.true2.i28.rcu_read_unlock.exit_crit_edge, label %if.then.i29

land.lhs.true2.i28.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i28
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

if.then.i29:                                      ; preds = %land.lhs.true2.i28
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 724, ptr noundef nonnull @.str.40) #13
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i29, %land.lhs.true2.i28.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i26.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !190
  %12 = call i32 @llvm.read_register.i32(metadata !175) #13
  %and.i.i.i.i.i30 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i30 to ptr
  %preempt_count.i.i.i.i31 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i31 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i31, align 4
  %sub.i.i.i = add i32 %15, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i31, align 4
  call void @rcu_read_unlock_strict() #13
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vnr) #13
  ret i1 %cmp.not.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @conn_highest_disk(ptr noundef %connection) local_unnamed_addr #0 align 64 {
entry:
  %vnr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vnr) #13
  %0 = tail call i32 @llvm.read_register.i32(metadata !175) #13
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !189
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 696, ptr noundef nonnull @.str.39) #13
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %peer_devices = getelementptr inbounds %struct.drbd_connection, ptr %connection, i32 0, i32 6
  %4 = ptrtoint ptr %vnr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %vnr, align 4
  %call15 = call ptr @idr_get_next(ptr noundef %peer_devices, ptr noundef nonnull %vnr) #13
  %cmp.not16 = icmp eq ptr %call15, null
  br i1 %cmp.not16, label %rcu_read_lock.exit.for.end_crit_edge, label %rcu_read_lock.exit.for.body_crit_edge

rcu_read_lock.exit.for.body_crit_edge:            ; preds = %rcu_read_lock.exit
  br label %for.body

rcu_read_lock.exit.for.end_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %rcu_read_lock.exit.for.body_crit_edge
  %call18 = phi ptr [ %call, %for.body.for.body_crit_edge ], [ %call15, %rcu_read_lock.exit.for.body_crit_edge ]
  %disk_state.017 = phi i32 [ %8, %for.body.for.body_crit_edge ], [ 0, %rcu_read_lock.exit.for.body_crit_edge ]
  %device1 = getelementptr inbounds %struct.drbd_peer_device, ptr %call18, i32 0, i32 1
  %5 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %device1, align 4
  %state = getelementptr inbounds %struct.drbd_device, ptr %6, i32 0, i32 27
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %bf.load = load i32, ptr %state, align 8
  %bf.lshr = lshr i32 %bf.load, 9
  %bf.clear = and i32 %bf.lshr, 15
  %8 = call i32 @llvm.umax.i32(i32 %disk_state.017, i32 %bf.clear)
  %9 = ptrtoint ptr %vnr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vnr, align 4
  %add = add i32 %10, 1
  store i32 %add, ptr %vnr, align 4
  %call = call ptr @idr_get_next(ptr noundef %peer_devices, ptr noundef nonnull %vnr) #13
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %rcu_read_lock.exit.for.end_crit_edge
  %disk_state.0.lcssa = phi i32 [ 0, %rcu_read_lock.exit.for.end_crit_edge ], [ %8, %for.body.for.end_crit_edge ]
  %call.i6 = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i6, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i9

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true.i9:                                 ; preds = %for.end
  %call1.i7 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7)
  %tobool.not.i8 = icmp eq i32 %call1.i7, 0
  br i1 %tobool.not.i8, label %land.lhs.true.i9.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i11

land.lhs.true.i9.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i9
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true2.i11:                               ; preds = %land.lhs.true.i9
  %.b4.i10 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i10, label %land.lhs.true2.i11.rcu_read_unlock.exit_crit_edge, label %if.then.i12

land.lhs.true2.i11.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i11
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

if.then.i12:                                      ; preds = %land.lhs.true2.i11
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 724, ptr noundef nonnull @.str.40) #13
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i12, %land.lhs.true2.i11.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i9.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !190
  %11 = call i32 @llvm.read_register.i32(metadata !175) #13
  %and.i.i.i.i.i13 = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i13 to ptr
  %preempt_count.i.i.i.i14 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i.i.i14 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i.i.i14, align 4
  %sub.i.i.i = add i32 %14, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i14, align 4
  call void @rcu_read_unlock_strict() #13
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vnr) #13
  ret i32 %disk_state.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @conn_lowest_disk(ptr noundef %connection) local_unnamed_addr #0 align 64 {
entry:
  %vnr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vnr) #13
  %0 = tail call i32 @llvm.read_register.i32(metadata !175) #13
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !189
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 696, ptr noundef nonnull @.str.39) #13
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %peer_devices = getelementptr inbounds %struct.drbd_connection, ptr %connection, i32 0, i32 6
  %4 = ptrtoint ptr %vnr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %vnr, align 4
  %call15 = call ptr @idr_get_next(ptr noundef %peer_devices, ptr noundef nonnull %vnr) #13
  %cmp.not16 = icmp eq ptr %call15, null
  br i1 %cmp.not16, label %rcu_read_lock.exit.for.end_crit_edge, label %rcu_read_lock.exit.for.body_crit_edge

rcu_read_lock.exit.for.body_crit_edge:            ; preds = %rcu_read_lock.exit
  br label %for.body

rcu_read_lock.exit.for.end_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %rcu_read_lock.exit.for.body_crit_edge
  %call18 = phi ptr [ %call, %for.body.for.body_crit_edge ], [ %call15, %rcu_read_lock.exit.for.body_crit_edge ]
  %disk_state.017 = phi i32 [ %8, %for.body.for.body_crit_edge ], [ 15, %rcu_read_lock.exit.for.body_crit_edge ]
  %device1 = getelementptr inbounds %struct.drbd_peer_device, ptr %call18, i32 0, i32 1
  %5 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %device1, align 4
  %state = getelementptr inbounds %struct.drbd_device, ptr %6, i32 0, i32 27
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %bf.load = load i32, ptr %state, align 8
  %bf.lshr = lshr i32 %bf.load, 9
  %bf.clear = and i32 %bf.lshr, 15
  %8 = call i32 @llvm.umin.i32(i32 %disk_state.017, i32 %bf.clear)
  %9 = ptrtoint ptr %vnr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vnr, align 4
  %add = add i32 %10, 1
  store i32 %add, ptr %vnr, align 4
  %call = call ptr @idr_get_next(ptr noundef %peer_devices, ptr noundef nonnull %vnr) #13
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %rcu_read_lock.exit.for.end_crit_edge
  %disk_state.0.lcssa = phi i32 [ 15, %rcu_read_lock.exit.for.end_crit_edge ], [ %8, %for.body.for.end_crit_edge ]
  %call.i6 = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i6, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i9

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true.i9:                                 ; preds = %for.end
  %call1.i7 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7)
  %tobool.not.i8 = icmp eq i32 %call1.i7, 0
  br i1 %tobool.not.i8, label %land.lhs.true.i9.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i11

land.lhs.true.i9.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i9
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true2.i11:                               ; preds = %land.lhs.true.i9
  %.b4.i10 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i10, label %land.lhs.true2.i11.rcu_read_unlock.exit_crit_edge, label %if.then.i12

land.lhs.true2.i11.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i11
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

if.then.i12:                                      ; preds = %land.lhs.true2.i11
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 724, ptr noundef nonnull @.str.40) #13
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i12, %land.lhs.true2.i11.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i9.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !190
  %11 = call i32 @llvm.read_register.i32(metadata !175) #13
  %and.i.i.i.i.i13 = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i13 to ptr
  %preempt_count.i.i.i.i14 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i.i.i14 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i.i.i14, align 4
  %sub.i.i.i = add i32 %14, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i14, align 4
  call void @rcu_read_unlock_strict() #13
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vnr) #13
  ret i32 %disk_state.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @conn_highest_pdsk(ptr noundef %connection) local_unnamed_addr #0 align 64 {
entry:
  %vnr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vnr) #13
  %0 = tail call i32 @llvm.read_register.i32(metadata !175) #13
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !189
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 696, ptr noundef nonnull @.str.39) #13
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %peer_devices = getelementptr inbounds %struct.drbd_connection, ptr %connection, i32 0, i32 6
  %4 = ptrtoint ptr %vnr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %vnr, align 4
  %call15 = call ptr @idr_get_next(ptr noundef %peer_devices, ptr noundef nonnull %vnr) #13
  %cmp.not16 = icmp eq ptr %call15, null
  br i1 %cmp.not16, label %rcu_read_lock.exit.for.end_crit_edge, label %rcu_read_lock.exit.for.body_crit_edge

rcu_read_lock.exit.for.body_crit_edge:            ; preds = %rcu_read_lock.exit
  br label %for.body

rcu_read_lock.exit.for.end_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %rcu_read_lock.exit.for.body_crit_edge
  %call18 = phi ptr [ %call, %for.body.for.body_crit_edge ], [ %call15, %rcu_read_lock.exit.for.body_crit_edge ]
  %disk_state.017 = phi i32 [ %8, %for.body.for.body_crit_edge ], [ 0, %rcu_read_lock.exit.for.body_crit_edge ]
  %device1 = getelementptr inbounds %struct.drbd_peer_device, ptr %call18, i32 0, i32 1
  %5 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %device1, align 4
  %state = getelementptr inbounds %struct.drbd_device, ptr %6, i32 0, i32 27
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %bf.load = load i32, ptr %state, align 8
  %bf.lshr = lshr i32 %bf.load, 13
  %bf.clear = and i32 %bf.lshr, 15
  %8 = call i32 @llvm.umax.i32(i32 %disk_state.017, i32 %bf.clear)
  %9 = ptrtoint ptr %vnr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vnr, align 4
  %add = add i32 %10, 1
  store i32 %add, ptr %vnr, align 4
  %call = call ptr @idr_get_next(ptr noundef %peer_devices, ptr noundef nonnull %vnr) #13
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %rcu_read_lock.exit.for.end_crit_edge
  %disk_state.0.lcssa = phi i32 [ 0, %rcu_read_lock.exit.for.end_crit_edge ], [ %8, %for.body.for.end_crit_edge ]
  %call.i6 = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i6, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i9

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true.i9:                                 ; preds = %for.end
  %call1.i7 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7)
  %tobool.not.i8 = icmp eq i32 %call1.i7, 0
  br i1 %tobool.not.i8, label %land.lhs.true.i9.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i11

land.lhs.true.i9.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i9
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true2.i11:                               ; preds = %land.lhs.true.i9
  %.b4.i10 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i10, label %land.lhs.true2.i11.rcu_read_unlock.exit_crit_edge, label %if.then.i12

land.lhs.true2.i11.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i11
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

if.then.i12:                                      ; preds = %land.lhs.true2.i11
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 724, ptr noundef nonnull @.str.40) #13
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i12, %land.lhs.true2.i11.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i9.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !190
  %11 = call i32 @llvm.read_register.i32(metadata !175) #13
  %and.i.i.i.i.i13 = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i13 to ptr
  %preempt_count.i.i.i.i14 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i.i.i14 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i.i.i14, align 4
  %sub.i.i.i = add i32 %14, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i14, align 4
  call void @rcu_read_unlock_strict() #13
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vnr) #13
  ret i32 %disk_state.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @conn_lowest_conn(ptr noundef %connection) local_unnamed_addr #0 align 64 {
entry:
  %vnr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vnr) #13
  %0 = tail call i32 @llvm.read_register.i32(metadata !175) #13
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !189
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 696, ptr noundef nonnull @.str.39) #13
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %peer_devices = getelementptr inbounds %struct.drbd_connection, ptr %connection, i32 0, i32 6
  %4 = ptrtoint ptr %vnr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %vnr, align 4
  %call15 = call ptr @idr_get_next(ptr noundef %peer_devices, ptr noundef nonnull %vnr) #13
  %cmp.not16 = icmp eq ptr %call15, null
  br i1 %cmp.not16, label %rcu_read_lock.exit.for.end_crit_edge, label %rcu_read_lock.exit.for.body_crit_edge

rcu_read_lock.exit.for.body_crit_edge:            ; preds = %rcu_read_lock.exit
  br label %for.body

rcu_read_lock.exit.for.end_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %rcu_read_lock.exit.for.body_crit_edge
  %call18 = phi ptr [ %call, %for.body.for.body_crit_edge ], [ %call15, %rcu_read_lock.exit.for.body_crit_edge ]
  %conn.017 = phi i32 [ %8, %for.body.for.body_crit_edge ], [ 31, %rcu_read_lock.exit.for.body_crit_edge ]
  %device1 = getelementptr inbounds %struct.drbd_peer_device, ptr %call18, i32 0, i32 1
  %5 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %device1, align 4
  %state = getelementptr inbounds %struct.drbd_device, ptr %6, i32 0, i32 27
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %bf.load = load i32, ptr %state, align 8
  %bf.lshr = lshr i32 %bf.load, 4
  %bf.clear = and i32 %bf.lshr, 31
  %8 = call i32 @llvm.umin.i32(i32 %conn.017, i32 %bf.clear)
  %9 = ptrtoint ptr %vnr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vnr, align 4
  %add = add i32 %10, 1
  store i32 %add, ptr %vnr, align 4
  %call = call ptr @idr_get_next(ptr noundef %peer_devices, ptr noundef nonnull %vnr) #13
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %rcu_read_lock.exit.for.end_crit_edge
  %conn.0.lcssa = phi i32 [ 31, %rcu_read_lock.exit.for.end_crit_edge ], [ %8, %for.body.for.end_crit_edge ]
  %call.i6 = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i6, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i9

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true.i9:                                 ; preds = %for.end
  %call1.i7 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7)
  %tobool.not.i8 = icmp eq i32 %call1.i7, 0
  br i1 %tobool.not.i8, label %land.lhs.true.i9.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i11

land.lhs.true.i9.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i9
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true2.i11:                               ; preds = %land.lhs.true.i9
  %.b4.i10 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i10, label %land.lhs.true2.i11.rcu_read_unlock.exit_crit_edge, label %if.then.i12

land.lhs.true2.i11.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i11
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

if.then.i12:                                      ; preds = %land.lhs.true2.i11
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 724, ptr noundef nonnull @.str.40) #13
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i12, %land.lhs.true2.i11.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i9.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !190
  %11 = call i32 @llvm.read_register.i32(metadata !175) #13
  %and.i.i.i.i.i13 = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i13 to ptr
  %preempt_count.i.i.i.i14 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i.i.i14 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i.i.i14, align 4
  %sub.i.i.i = add i32 %14, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i14, align 4
  call void @rcu_read_unlock_strict() #13
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vnr) #13
  ret i32 %conn.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drbd_change_state(ptr noundef %device, i32 noundef %f, [1 x i32] %mask.coerce, [1 x i32] %val.coerce) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 8
  %req_lock = getelementptr inbounds %struct.drbd_resource, ptr %1, i32 0, i32 12
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %req_lock) #13
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 8
  %state.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 27
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state.i, align 8
  %susp.i = getelementptr inbounds %struct.drbd_resource, ptr %3, i32 0, i32 13
  %6 = ptrtoint ptr %susp.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load.i = load i8, ptr %susp.i, align 4
  %bf.lshr.i = lshr i8 %bf.load.i, 7
  %bf.cast.i = zext i8 %bf.lshr.i to i32
  %bf.shl.i = shl nuw nsw i32 %bf.cast.i, 17
  %bf.clear.i = and i32 %5, -6422529
  %bf.set.i = or i32 %bf.shl.i, %bf.clear.i
  %bf.lshr4.i = lshr i8 %bf.load.i, 6
  %bf.value8.i = zext i8 %bf.lshr4.i to i32
  %bf.shl9.i = shl nuw nsw i32 %bf.value8.i, 21
  %bf.lshr13.i = lshr i8 %bf.load.i, 5
  %7 = and i8 %bf.lshr13.i, 1
  %bf.value17.i = zext i8 %7 to i32
  %bf.shl18.i = shl nuw nsw i32 %bf.value17.i, 22
  %bf.shl9.masked.i = and i32 %bf.shl9.i, 2097152
  %bf.clear19.i = or i32 %bf.set.i, %bf.shl9.masked.i
  %bf.set20.i = or i32 %bf.clear19.i, %bf.shl18.i
  %mask.coerce.fca.0.extract.i = extractvalue [1 x i32] %mask.coerce, 0
  %val.coerce.fca.0.extract.i = extractvalue [1 x i32] %val.coerce, 0
  %neg.i = xor i32 %mask.coerce.fca.0.extract.i, -1
  %and.i = and i32 %bf.set20.i, %neg.i
  %or.i = or i32 %and.i, %val.coerce.fca.0.extract.i
  %.fca.0.insert26 = insertvalue [1 x i32] poison, i32 %or.i, 0
  %call23 = tail call i32 @_drbd_set_state(ptr noundef %device, [1 x i32] %.fca.0.insert26, i32 noundef %f, ptr noundef null)
  %8 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device, align 8
  %req_lock25 = getelementptr inbounds %struct.drbd_resource, ptr %9, i32 0, i32 12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %req_lock25, i32 noundef %call5) #13
  ret i32 %call23
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @_drbd_set_state(ptr noundef %device, [1 x i32] %ns.coerce, i32 noundef %flags, ptr noundef %done) local_unnamed_addr #0 align 64 {
entry:
  %vnr.i838 = alloca i32, align 4
  %vnr.i = alloca i32, align 4
  %pb.i825 = alloca [300 x i8], align 1
  %pb.i = alloca [300 x i8], align 1
  %ssw = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %peer_devices.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 1
  %0 = ptrtoint ptr %peer_devices.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %peer_devices.i, align 4
  %cmp.not.i = icmp eq ptr %1, %peer_devices.i
  %tobool.not888 = icmp eq ptr %1, null
  %tobool.not = or i1 %cmp.not.i, %tobool.not888
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %connection2 = getelementptr inbounds %struct.drbd_peer_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %connection2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %connection2, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %3, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ssw) #13
  %4 = ptrtoint ptr %ssw to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %ssw, align 4, !annotation !185
  %5 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %device, align 8
  %state.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 27
  %7 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state.i, align 8
  %susp.i = getelementptr inbounds %struct.drbd_resource, ptr %6, i32 0, i32 13
  %9 = ptrtoint ptr %susp.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load.i = load i8, ptr %susp.i, align 4
  %bf.lshr.i = lshr i8 %bf.load.i, 7
  %bf.cast.i = zext i8 %bf.lshr.i to i32
  %bf.shl.i = shl nuw nsw i32 %bf.cast.i, 17
  %bf.clear.i = and i32 %8, -6422529
  %bf.set.i = or i32 %bf.shl.i, %bf.clear.i
  %bf.lshr4.i = lshr i8 %bf.load.i, 6
  %bf.value8.i = zext i8 %bf.lshr4.i to i32
  %bf.shl9.i = shl nuw nsw i32 %bf.value8.i, 21
  %bf.lshr13.i = lshr i8 %bf.load.i, 5
  %10 = and i8 %bf.lshr13.i, 1
  %bf.value17.i = zext i8 %10 to i32
  %bf.shl18.i = shl nuw nsw i32 %bf.value17.i, 22
  %bf.shl9.masked.i = and i32 %bf.shl9.i, 2097152
  %bf.clear19.i = or i32 %bf.set.i, %bf.shl9.masked.i
  %bf.set20.i = or i32 %bf.clear19.i, %bf.shl18.i
  %.fca.0.insert591 = insertvalue [1 x i32] poison, i32 %bf.set20.i, 0
  %call11 = call fastcc i32 @sanitize_state(ptr noundef %device, [1 x i32] %.fca.0.insert591, [1 x i32] %ns.coerce, ptr noundef nonnull %ssw)
  call void @__sanitizer_cov_trace_cmp4(i32 %call11, i32 %bf.set20.i)
  %cmp = icmp eq i32 %call11, %bf.set20.i
  br i1 %cmp, label %cond.end.cleanup_crit_edge, label %if.end

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %.fca.0.insert730 = insertvalue [1 x i32] poison, i32 %call11, 0
  %bf.lshr.i809 = lshr i32 %8, 4
  %bf.clear.i810 = and i32 %bf.lshr.i809, 31
  %bf.lshr5.i = lshr i32 %call11, 4
  %bf.clear6.i = and i32 %bf.lshr5.i, 31
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.clear.i810, i32 %bf.clear6.i)
  %cmp.i.i = icmp eq i32 %bf.clear.i810, %bf.clear6.i
  br i1 %cmp.i.i, label %if.end.is_valid_transition.exit_crit_edge, label %if.end.i.i

if.end.is_valid_transition.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %is_valid_transition.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear.i810)
  %cmp1.i.i = icmp eq i32 %bf.clear.i810, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %bf.clear6.i)
  %cmp2.i.i = icmp eq i32 %bf.clear6.i, 1
  %or.cond.i.i = and i1 %cmp1.i.i, %cmp2.i.i
  br i1 %or.cond.i.i, label %if.end.i.i.is_valid_transition.exit_crit_edge, label %if.end4.i.i

if.end.i.i.is_valid_transition.exit_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %is_valid_transition.exit

if.end4.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %bf.clear6.i)
  %cmp7.not.i.i = icmp ne i32 %bf.clear6.i, 2
  %11 = and i1 %cmp1.i.i, %cmp7.not.i.i
  br i1 %11, label %if.end4.i.i.is_valid_transition.exit_crit_edge, label %if.end9.i.i

if.end4.i.i.is_valid_transition.exit_crit_edge:   ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %is_valid_transition.exit

if.end9.i.i:                                      ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %bf.clear.i810)
  %cmp10.i.i = icmp ult i32 %bf.clear.i810, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %bf.clear6.i)
  %cmp12.i.i = icmp ugt i32 %bf.clear6.i, 9
  %or.cond42.i.i = and i1 %cmp10.i.i, %cmp12.i.i
  br i1 %or.cond42.i.i, label %if.end9.i.i.is_valid_transition.exit_crit_edge, label %if.end14.i.i

if.end9.i.i.is_valid_transition.exit_crit_edge:   ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %is_valid_transition.exit

if.end14.i.i:                                     ; preds = %if.end9.i.i
  %12 = add nsw i32 %bf.clear.i810, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %12)
  %13 = icmp ult i32 %12, -5
  %nc.off.i.i = add nsw i32 %bf.clear6.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %nc.off.i.i)
  %switch.i.i = icmp ult i32 %nc.off.i.i, 2
  %or.cond47.i.i = or i1 %13, %switch.i.i
  br i1 %or.cond47.i.i, label %if.end23.i.i, label %if.end14.i.i.is_valid_transition.exit_crit_edge

if.end14.i.i.is_valid_transition.exit_crit_edge:  ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %is_valid_transition.exit

if.end23.i.i:                                     ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %bf.clear.i810)
  %cmp24.i.i = icmp ne i32 %bf.clear.i810, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear6.i)
  %cmp26.not.i.i = icmp eq i32 %bf.clear6.i, 0
  %or.cond46.i.i = or i1 %cmp24.i.i, %cmp26.not.i.i
  %spec.select.i.i = select i1 %or.cond46.i.i, i32 1, i32 -18
  br label %is_valid_transition.exit

is_valid_transition.exit:                         ; preds = %if.end23.i.i, %if.end14.i.i.is_valid_transition.exit_crit_edge, %if.end9.i.i.is_valid_transition.exit_crit_edge, %if.end4.i.i.is_valid_transition.exit_crit_edge, %if.end.i.i.is_valid_transition.exit_crit_edge, %if.end.is_valid_transition.exit_crit_edge
  %retval.0.i.i = phi i32 [ 2, %if.end.is_valid_transition.exit_crit_edge ], [ -9, %if.end.i.i.is_valid_transition.exit_crit_edge ], [ -15, %if.end4.i.i.is_valid_transition.exit_crit_edge ], [ -15, %if.end9.i.i.is_valid_transition.exit_crit_edge ], [ %spec.select.i.i, %if.end23.i.i ], [ -18, %if.end14.i.i.is_valid_transition.exit_crit_edge ]
  %14 = and i32 %call11, 7680
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %14)
  %cmp.i = icmp eq i32 %14, 1024
  %15 = and i32 %8, 7680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp13.i = icmp eq i32 %15, 0
  %or.cond.i = select i1 %cmp.i, i1 %cmp13.i, i1 false
  %rv.0.i = select i1 %or.cond.i, i32 -11, i32 %retval.0.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %rv.0.i)
  %cmp19 = icmp slt i32 %rv.0.i, 1
  br i1 %cmp19, label %is_valid_transition.exit.cleanup_crit_edge, label %if.end21

is_valid_transition.exit.cleanup_crit_edge:       ; preds = %is_valid_transition.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end21:                                         ; preds = %is_valid_transition.exit
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp eq i32 %and, 0
  br i1 %tobool22.not, label %if.then23, label %if.end21.if.end57_crit_edge

if.end21.if.end57_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end57

if.then23:                                        ; preds = %if.end21
  %call26 = call fastcc i32 @is_valid_state(ptr noundef %device, [1 x i32] %.fca.0.insert730)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 1
  br i1 %cmp27, label %if.then28, label %if.then23.if.end46_crit_edge

if.then23.if.end46_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end46

if.then28:                                        ; preds = %if.then23
  %call31 = call fastcc i32 @is_valid_state(ptr noundef %device, [1 x i32] %.fca.0.insert591)
  call void @__sanitizer_cov_trace_cmp4(i32 %call31, i32 %call26)
  %cmp32 = icmp eq i32 %call31, %call26
  br i1 %cmp32, label %if.then28.if.end46_crit_edge, label %if.then28.if.then48_crit_edge

if.then28.if.then48_crit_edge:                    ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then48

if.then28.if.end46_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end46

if.end46:                                         ; preds = %if.then28.if.end46_crit_edge, %if.then23.if.end46_crit_edge
  %call44 = call fastcc i32 @is_valid_soft_transition([1 x i32] %.fca.0.insert591, [1 x i32] %.fca.0.insert730, ptr noundef %cond)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call44)
  %cmp47 = icmp slt i32 %call44, 1
  br i1 %cmp47, label %if.end46.if.then48_crit_edge, label %if.end46.if.end57_crit_edge

if.end46.if.end57_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end57

if.end46.if.then48_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then48

if.then48:                                        ; preds = %if.end46.if.then48_crit_edge, %if.then28.if.then48_crit_edge
  %rv.0876 = phi i32 [ %call44, %if.end46.if.then48_crit_edge ], [ %call26, %if.then28.if.then48_crit_edge ]
  %and49 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.then48.cleanup_crit_edge, label %if.then51

if.then48.cleanup_crit_edge:                      ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then51:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_const_cmp4(i32 -18, i32 %rv.0876)
  %cmp.i811 = icmp eq i32 %rv.0876, -18
  br i1 %cmp.i811, label %if.then51.cleanup_crit_edge, label %do.end.i

if.then51.cleanup_crit_edge:                      ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end.i:                                         ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #15
  %vdisk.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %16 = ptrtoint ptr %vdisk.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vdisk.i, align 4
  %part0.i = getelementptr inbounds %struct.gendisk, ptr %17, i32 0, i32 7
  %18 = ptrtoint ptr %part0.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %part0.i, align 4
  %bd_device.i = getelementptr inbounds %struct.block_device, ptr %19, i32 0, i32 10
  %call.i = call ptr @drbd_set_st_err_str(i32 noundef %rv.0876) #13
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %bd_device.i, ptr noundef nonnull @.str.1, ptr noundef %call.i) #17
  call fastcc void @print_st(ptr noundef %device, ptr noundef nonnull @.str.5, [1 x i32] %.fca.0.insert591) #13
  call fastcc void @print_st(ptr noundef %device, ptr noundef nonnull @.str.6, [1 x i32] %.fca.0.insert730) #13
  br label %cleanup

if.end57:                                         ; preds = %if.end46.if.end57_crit_edge, %if.end21.if.end57_crit_edge
  %rv.0880 = phi i32 [ %call44, %if.end46.if.end57_crit_edge ], [ %retval.0.i.i, %if.end21.if.end57_crit_edge ]
  %20 = ptrtoint ptr %ssw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ssw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.not.i812 = icmp eq i32 %21, 0
  br i1 %cmp.not.i812, label %if.end57.print_sanitize_warnings.exit_crit_edge, label %do.end.i816

if.end57.print_sanitize_warnings.exit_crit_edge:  ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #15
  br label %print_sanitize_warnings.exit

do.end.i816:                                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #15
  %vdisk.i813 = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %22 = ptrtoint ptr %vdisk.i813 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vdisk.i813, align 4
  %part0.i814 = getelementptr inbounds %struct.gendisk, ptr %23, i32 0, i32 7
  %24 = ptrtoint ptr %part0.i814 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %part0.i814, align 4
  %bd_device.i815 = getelementptr inbounds %struct.block_device, ptr %25, i32 0, i32 10
  %arrayidx.i = getelementptr [6 x ptr], ptr @print_sanitize_warnings.msg_table, i32 0, i32 %21
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.55, ptr noundef %bd_device.i815, ptr noundef nonnull @.str.53, ptr noundef %27) #17
  br label %print_sanitize_warnings.exit

print_sanitize_warnings.exit:                     ; preds = %do.end.i816, %if.end57.print_sanitize_warnings.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 300, ptr nonnull %pb.i) #13
  %28 = call ptr @memset(ptr %pb.i, i32 255, i32 300)
  %xor.i = xor i32 %flags, 992
  %call.i817 = call fastcc i32 @print_state_change(ptr noundef nonnull %pb.i, [1 x i32] %.fca.0.insert591, [1 x i32] %.fca.0.insert730, i32 noundef %xor.i) #13
  %add.ptr.i = getelementptr i8, ptr %pb.i, i32 %call.i817
  %bf.lshr.i818 = lshr i32 %call11, 18
  %bf.clear.i819 = and i32 %bf.lshr.i818, 1
  %bf.lshr9.i = lshr i32 %8, 18
  %bf.clear10.i = and i32 %bf.lshr9.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.clear.i819, i32 %bf.clear10.i)
  %cmp.not.i820 = icmp eq i32 %bf.clear.i819, %bf.clear10.i
  br i1 %cmp.not.i820, label %print_sanitize_warnings.exit.if.end.i_crit_edge, label %if.then.i

print_sanitize_warnings.exit.if.end.i_crit_edge:  ; preds = %print_sanitize_warnings.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i:                                        ; preds = %print_sanitize_warnings.exit
  call void @__sanitizer_cov_trace_pc() #15
  %call17.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.56, i32 noundef %bf.clear10.i, i32 noundef %bf.clear.i819) #13
  %add.ptr18.i = getelementptr i8, ptr %add.ptr.i, i32 %call17.i
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %print_sanitize_warnings.exit.if.end.i_crit_edge
  %pbp.0.i = phi ptr [ %add.ptr18.i, %if.then.i ], [ %add.ptr.i, %print_sanitize_warnings.exit.if.end.i_crit_edge ]
  %bf.lshr20.i = lshr i32 %call11, 19
  %bf.clear21.i = and i32 %bf.lshr20.i, 1
  %bf.lshr23.i = lshr i32 %8, 19
  %bf.clear24.i = and i32 %bf.lshr23.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.clear21.i, i32 %bf.clear24.i)
  %cmp25.not.i = icmp eq i32 %bf.clear21.i, %bf.clear24.i
  br i1 %cmp25.not.i, label %if.end.i.if.end35.i_crit_edge, label %if.then26.i

if.end.i.if.end35.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35.i

if.then26.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %call33.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %pbp.0.i, ptr noundef nonnull @.str.57, i32 noundef %bf.clear24.i, i32 noundef %bf.clear21.i) #13
  %add.ptr34.i = getelementptr i8, ptr %pbp.0.i, i32 %call33.i
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then26.i, %if.end.i.if.end35.i_crit_edge
  %pbp.1.i = phi ptr [ %add.ptr34.i, %if.then26.i ], [ %pbp.0.i, %if.end.i.if.end35.i_crit_edge ]
  %bf.lshr37.i = lshr i32 %call11, 20
  %bf.clear38.i = and i32 %bf.lshr37.i, 1
  %bf.lshr40.i = lshr i32 %8, 20
  %bf.clear41.i = and i32 %bf.lshr40.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.clear38.i, i32 %bf.clear41.i)
  %cmp42.not.i = icmp eq i32 %bf.clear38.i, %bf.clear41.i
  br i1 %cmp42.not.i, label %if.end35.i.if.end52.i_crit_edge, label %if.then43.i

if.end35.i.if.end52.i_crit_edge:                  ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end52.i

if.then43.i:                                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #15
  %call50.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %pbp.1.i, ptr noundef nonnull @.str.58, i32 noundef %bf.clear41.i, i32 noundef %bf.clear38.i) #13
  %add.ptr51.i = getelementptr i8, ptr %pbp.1.i, i32 %call50.i
  br label %if.end52.i

if.end52.i:                                       ; preds = %if.then43.i, %if.end35.i.if.end52.i_crit_edge
  %pbp.2.i = phi ptr [ %add.ptr51.i, %if.then43.i ], [ %pbp.1.i, %if.end35.i.if.end52.i_crit_edge ]
  %cmp54.not.i = icmp eq ptr %pbp.2.i, %pb.i
  br i1 %cmp54.not.i, label %if.end52.i.drbd_pr_state_change.exit_crit_edge, label %do.end.i824

if.end52.i.drbd_pr_state_change.exit_crit_edge:   ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %drbd_pr_state_change.exit

do.end.i824:                                      ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #15
  %vdisk.i821 = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %29 = ptrtoint ptr %vdisk.i821 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %vdisk.i821, align 4
  %part0.i822 = getelementptr inbounds %struct.gendisk, ptr %30, i32 0, i32 7
  %31 = ptrtoint ptr %part0.i822 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %part0.i822, align 4
  %bd_device.i823 = getelementptr inbounds %struct.block_device, ptr %32, i32 0, i32 10
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %bd_device.i823, ptr noundef nonnull @.str.53, ptr noundef nonnull %pb.i) #17
  br label %drbd_pr_state_change.exit

drbd_pr_state_change.exit:                        ; preds = %do.end.i824, %if.end52.i.drbd_pr_state_change.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 300, ptr nonnull %pb.i) #13
  %and62 = and i32 %flags, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %if.then64, label %drbd_pr_state_change.exit.if.end70_crit_edge

drbd_pr_state_change.exit.if.end70_crit_edge:     ; preds = %drbd_pr_state_change.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end70

if.then64:                                        ; preds = %drbd_pr_state_change.exit
  %and65 = and i32 %flags, -2017
  %or = or i32 %and65, 1024
  call void @llvm.lifetime.start.p0(i64 300, ptr nonnull %pb.i825) #13
  %33 = call ptr @memset(ptr %pb.i825, i32 255, i32 300)
  %call.i826 = call fastcc i32 @print_state_change(ptr noundef nonnull %pb.i825, [1 x i32] %.fca.0.insert591, [1 x i32] %.fca.0.insert730, i32 noundef %or) #13
  %add.ptr.i827 = getelementptr i8, ptr %pb.i825, i32 %call.i826
  %34 = and i32 %call11, 6422528
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %35 = icmp ne i32 %34, 0
  %36 = and i32 %bf.set20.i, 6422528
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %35, %37
  br i1 %38, label %if.then.i828, label %if.then64.if.end.i830_crit_edge

if.then64.if.end.i830_crit_edge:                  ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i830

if.then.i828:                                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #15
  %conv19.i = zext i1 %37 to i32
  %conv23.i = zext i1 %35 to i32
  %call24.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.i827, ptr noundef nonnull @.str.65, i32 noundef %conv19.i, i32 noundef %conv23.i) #13
  %add.ptr25.i = getelementptr i8, ptr %add.ptr.i827, i32 %call24.i
  br label %if.end.i830

if.end.i830:                                      ; preds = %if.then.i828, %if.then64.if.end.i830_crit_edge
  %pbp.0.i829 = phi ptr [ %add.ptr25.i, %if.then.i828 ], [ %add.ptr.i827, %if.then64.if.end.i830_crit_edge ]
  %cmp27.not.i = icmp eq ptr %pbp.0.i829, %pb.i825
  br i1 %cmp27.not.i, label %if.end.i830.conn_pr_state_change.exit_crit_edge, label %do.end.i831

if.end.i830.conn_pr_state_change.exit_crit_edge:  ; preds = %if.end.i830
  call void @__sanitizer_cov_trace_pc() #15
  br label %conn_pr_state_change.exit

do.end.i831:                                      ; preds = %if.end.i830
  call void @__sanitizer_cov_trace_pc() #15
  %resource.i = getelementptr inbounds %struct.drbd_connection, ptr %cond, i32 0, i32 1
  %39 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %resource.i, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %call31.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef %42, ptr noundef nonnull %pb.i825) #17
  br label %conn_pr_state_change.exit

conn_pr_state_change.exit:                        ; preds = %do.end.i831, %if.end.i830.conn_pr_state_change.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 300, ptr nonnull %pb.i825) #13
  br label %if.end70

if.end70:                                         ; preds = %conn_pr_state_change.exit, %drbd_pr_state_change.exit.if.end70_crit_edge
  %bf.lshr = lshr i32 %8, 9
  %bf.clear = and i32 %bf.lshr, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %bf.clear)
  %cmp71.not = icmp ne i32 %bf.clear, 2
  %or.cond = select i1 %cmp71.not, i1 %cmp.i, i1 false
  br i1 %or.cond, label %if.end70.if.then85_crit_edge, label %lor.lhs.false

if.end70.if.then85_crit_edge:                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then85

lor.lhs.false:                                    ; preds = %if.end70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear)
  %cmp79.not = icmp ne i32 %bf.clear, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp84 = icmp eq i32 %14, 0
  %or.cond789 = select i1 %cmp79.not, i1 %cmp84, i1 false
  br i1 %or.cond789, label %lor.lhs.false.if.then85_crit_edge, label %lor.lhs.false.if.end86_crit_edge

lor.lhs.false.if.end86_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end86

lor.lhs.false.if.then85_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then85

if.then85:                                        ; preds = %lor.lhs.false.if.then85_crit_edge, %if.end70.if.then85_crit_edge
  %local_cnt = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 41
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %local_cnt, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %local_cnt, i32 1, i32 3, i32 1) #13
  %43 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %local_cnt, ptr %local_cnt, i32 1, ptr elementtype(i32) %local_cnt) #13, !srcloc !196
  br label %if.end86

if.end86:                                         ; preds = %if.then85, %lor.lhs.false.if.end86_crit_edge
  %44 = and i32 %8, 416
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %44)
  %45 = icmp ne i32 %44, 256
  %46 = and i32 %call11, 416
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %46)
  %47 = icmp eq i32 %46, 256
  %or.cond887 = select i1 %45, i1 %47, i1 false
  br i1 %or.cond887, label %if.then96, label %if.end86.if.end98_crit_edge

if.end86.if.end98_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end98

if.then96:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #15
  %flags97 = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 14
  call void @_clear_bit(i32 noundef 28, ptr noundef %flags97) #13
  br label %if.end98

if.end98:                                         ; preds = %if.then96, %if.end86.if.end98_crit_edge
  %48 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %device, align 8
  %call99 = call ptr @remember_old_state(ptr noundef %49, i32 noundef 2592)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !197
  %50 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %call11, ptr %state.i, align 8
  %51 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %device, align 8
  %susp = getelementptr inbounds %struct.drbd_resource, ptr %52, i32 0, i32 13
  %53 = ptrtoint ptr %susp to i32
  call void @__asan_load1_noabort(i32 %53)
  %bf.load107 = load i8, ptr %susp, align 4
  %sh.diff = lshr i32 %call11, 10
  %tr.sh.diff = trunc i32 %sh.diff to i8
  %bf.shl = and i8 %tr.sh.diff, -128
  %bf.clear108 = and i8 %bf.load107, 127
  %bf.set = or i8 %bf.clear108, %bf.shl
  store i8 %bf.set, ptr %susp, align 4
  %54 = load ptr, ptr %device, align 8
  %susp_nod = getelementptr inbounds %struct.drbd_resource, ptr %54, i32 0, i32 13
  %55 = ptrtoint ptr %susp_nod to i32
  call void @__asan_load1_noabort(i32 %55)
  %bf.load113 = load i8, ptr %susp_nod, align 4
  %sh.diff785 = lshr i32 %call11, 15
  %tr.sh.diff786 = trunc i32 %sh.diff785 to i8
  %bf.shl115 = and i8 %tr.sh.diff786, 64
  %bf.clear116 = and i8 %bf.load113, -65
  %bf.set117 = or i8 %bf.clear116, %bf.shl115
  store i8 %bf.set117, ptr %susp_nod, align 4
  %56 = load ptr, ptr %device, align 8
  %susp_fen = getelementptr inbounds %struct.drbd_resource, ptr %56, i32 0, i32 13
  %57 = ptrtoint ptr %susp_fen to i32
  call void @__asan_load1_noabort(i32 %57)
  %bf.load123 = load i8, ptr %susp_fen, align 4
  %sh.diff787 = lshr i32 %call11, 17
  %tr.sh.diff788 = trunc i32 %sh.diff787 to i8
  %bf.shl125 = and i8 %tr.sh.diff788, 32
  %bf.clear126 = and i8 %bf.load123, -33
  %bf.set127 = or i8 %bf.clear126, %bf.shl125
  store i8 %bf.set127, ptr %susp_fen, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !198
  call fastcc void @remember_new_state(ptr noundef %call99)
  %call137 = call zeroext i1 @drbd_should_do_remote([1 x i32] %.fca.0.insert591) #13
  %call141 = call zeroext i1 @drbd_should_do_remote([1 x i32] %.fca.0.insert730) #13
  %58 = xor i1 %call137, %call141
  br i1 %58, label %if.then145, label %if.end98.if.end146_crit_edge

if.end98.if.end146_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end146

if.then145:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #15
  call void @start_new_tl_epoch(ptr noundef %cond) #13
  br label %if.end146

if.end146:                                        ; preds = %if.then145, %if.end98.if.end146_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %bf.clear)
  %cmp150 = icmp eq i32 %bf.clear, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %14)
  %cmp156 = icmp ugt i32 %14, 1024
  %or.cond790 = select i1 %cmp150, i1 %cmp156, i1 false
  br i1 %or.cond790, label %if.then158, label %if.end146.if.end159_crit_edge

if.end146.if.end159_crit_edge:                    ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end159

if.then158:                                       ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #15
  call void @drbd_print_uuids(ptr noundef %device, ptr noundef nonnull @.str.10) #13
  br label %if.end159

if.end159:                                        ; preds = %if.then158, %if.end146.if.end159_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %bf.clear.i810)
  %cmp163 = icmp ne i32 %bf.clear.i810, 9
  %59 = and i32 %call11, 496
  call void @__sanitizer_cov_trace_const_cmp4(i32 144, i32 %59)
  %cmp169.not = icmp eq i32 %59, 144
  %or.cond791 = select i1 %cmp163, i1 true, i1 %cmp169.not
  br i1 %or.cond791, label %if.end159.if.end176_crit_edge, label %land.lhs.true171

if.end159.if.end176_crit_edge:                    ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end176

land.lhs.true171:                                 ; preds = %if.end159
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vnr.i) #13
  %60 = call i32 @llvm.read_register.i32(metadata !175) #13
  %and.i.i.i.i.i.i = and i32 %60, -16384
  %61 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %63, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !189
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i.i832 = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i.i832, label %land.lhs.true171.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

land.lhs.true171.rcu_read_lock.exit.i_crit_edge:  ; preds = %land.lhs.true171
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %land.lhs.true171
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 696, ptr noundef nonnull @.str.39) #13
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true171.rcu_read_lock.exit.i_crit_edge
  %peer_devices.i833 = getelementptr inbounds %struct.drbd_connection, ptr %cond, i32 0, i32 6
  %64 = ptrtoint ptr %vnr.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %vnr.i, align 4
  %call11.i = call ptr @idr_get_next(ptr noundef %peer_devices.i833, ptr noundef nonnull %vnr.i) #13
  %cmp.not12.i = icmp eq ptr %call11.i, null
  br i1 %cmp.not12.i, label %rcu_read_lock.exit.i.for.end.i_crit_edge, label %rcu_read_lock.exit.i.for.body.i_crit_edge

rcu_read_lock.exit.i.for.body.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  br label %for.body.i

rcu_read_lock.exit.i.for.end.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %rcu_read_lock.exit.i.for.body.i_crit_edge
  %call13.i = phi ptr [ %call.i836, %for.inc.i.for.body.i_crit_edge ], [ %call11.i, %rcu_read_lock.exit.i.for.body.i_crit_edge ]
  %device.i = getelementptr inbounds %struct.drbd_peer_device, ptr %call13.i, i32 0, i32 1
  %65 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %device.i, align 4
  %state.i834 = getelementptr inbounds %struct.drbd_device, ptr %66, i32 0, i32 27
  %67 = ptrtoint ptr %state.i834 to i32
  call void @__asan_load4_noabort(i32 %67)
  %bf.load.i835 = load i32, ptr %state.i834, align 8
  %68 = and i32 %bf.load.i835, 496
  call void @__sanitizer_cov_trace_const_cmp4(i32 144, i32 %68)
  %cmp1.i = icmp eq i32 %68, 144
  br i1 %cmp1.i, label %for.body.i.for.end.loopexit.i_crit_edge, label %for.inc.i

for.body.i.for.end.loopexit.i_crit_edge:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.loopexit.i

for.inc.i:                                        ; preds = %for.body.i
  %69 = ptrtoint ptr %vnr.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %vnr.i, align 4
  %add.i = add i32 %70, 1
  store i32 %add.i, ptr %vnr.i, align 4
  %call.i836 = call ptr @idr_get_next(ptr noundef %peer_devices.i833, ptr noundef nonnull %vnr.i) #13
  %cmp.not.i837 = icmp eq ptr %call.i836, null
  br i1 %cmp.not.i837, label %for.inc.i.for.end.loopexit.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.for.end.loopexit.i_crit_edge:           ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.loopexit.i

for.end.loopexit.i:                               ; preds = %for.inc.i.for.end.loopexit.i_crit_edge, %for.body.i.for.end.loopexit.i_crit_edge
  %71 = xor i1 %cmp1.i, true
  br label %for.end.i

for.end.i:                                        ; preds = %for.end.loopexit.i, %rcu_read_lock.exit.i.for.end.i_crit_edge
  %cmp.not.lcssa.i = phi i1 [ true, %rcu_read_lock.exit.i.for.end.i_crit_edge ], [ %71, %for.end.loopexit.i ]
  %call.i2.i = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i2.i, label %for.end.i.no_peer_wf_report_params.exit_crit_edge, label %land.lhs.true.i5.i

for.end.i.no_peer_wf_report_params.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %no_peer_wf_report_params.exit

land.lhs.true.i5.i:                               ; preds = %for.end.i
  %call1.i3.i = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3.i)
  %tobool.not.i4.i = icmp eq i32 %call1.i3.i, 0
  br i1 %tobool.not.i4.i, label %land.lhs.true.i5.i.no_peer_wf_report_params.exit_crit_edge, label %land.lhs.true2.i7.i

land.lhs.true.i5.i.no_peer_wf_report_params.exit_crit_edge: ; preds = %land.lhs.true.i5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %no_peer_wf_report_params.exit

land.lhs.true2.i7.i:                              ; preds = %land.lhs.true.i5.i
  %.b4.i6.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i6.i, label %land.lhs.true2.i7.i.no_peer_wf_report_params.exit_crit_edge, label %if.then.i8.i

land.lhs.true2.i7.i.no_peer_wf_report_params.exit_crit_edge: ; preds = %land.lhs.true2.i7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %no_peer_wf_report_params.exit

if.then.i8.i:                                     ; preds = %land.lhs.true2.i7.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 724, ptr noundef nonnull @.str.40) #13
  br label %no_peer_wf_report_params.exit

no_peer_wf_report_params.exit:                    ; preds = %if.then.i8.i, %land.lhs.true2.i7.i.no_peer_wf_report_params.exit_crit_edge, %land.lhs.true.i5.i.no_peer_wf_report_params.exit_crit_edge, %for.end.i.no_peer_wf_report_params.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !190
  %72 = call i32 @llvm.read_register.i32(metadata !175) #13
  %and.i.i.i.i.i9.i = and i32 %72, -16384
  %73 = inttoptr i32 %and.i.i.i.i.i9.i to ptr
  %preempt_count.i.i.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %preempt_count.i.i.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %preempt_count.i.i.i.i10.i, align 4
  %sub.i.i.i.i = add i32 %75, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i10.i, align 4
  call void @rcu_read_unlock_strict() #13
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vnr.i) #13
  br i1 %cmp.not.lcssa.i, label %if.then174, label %no_peer_wf_report_params.exit.if.end176_crit_edge

no_peer_wf_report_params.exit.if.end176_crit_edge: ; preds = %no_peer_wf_report_params.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end176

if.then174:                                       ; preds = %no_peer_wf_report_params.exit
  %flags175 = getelementptr inbounds %struct.drbd_connection, ptr %cond, i32 0, i32 10
  call void @_clear_bit(i32 noundef 9, ptr noundef %flags175) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vnr.i838) #13
  %76 = call i32 @llvm.read_register.i32(metadata !175) #13
  %and.i.i.i.i.i.i839 = and i32 %76, -16384
  %77 = inttoptr i32 %and.i.i.i.i.i.i839 to ptr
  %preempt_count.i.i.i.i.i840 = getelementptr inbounds %struct.thread_info, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %preempt_count.i.i.i.i.i840 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %preempt_count.i.i.i.i.i840, align 4
  %add.i.i.i.i841 = add i32 %79, 1
  store volatile i32 %add.i.i.i.i841, ptr %preempt_count.i.i.i.i.i840, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !189
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i.i842 = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i.i842, label %if.then174.rcu_read_lock.exit.i850_crit_edge, label %land.lhs.true.i.i845

if.then174.rcu_read_lock.exit.i850_crit_edge:     ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i850

land.lhs.true.i.i845:                             ; preds = %if.then174
  %call1.i.i843 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i843)
  %tobool.not.i.i844 = icmp eq i32 %call1.i.i843, 0
  br i1 %tobool.not.i.i844, label %land.lhs.true.i.i845.rcu_read_lock.exit.i850_crit_edge, label %land.lhs.true2.i.i847

land.lhs.true.i.i845.rcu_read_lock.exit.i850_crit_edge: ; preds = %land.lhs.true.i.i845
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i850

land.lhs.true2.i.i847:                            ; preds = %land.lhs.true.i.i845
  %.b4.i.i846 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i846, label %land.lhs.true2.i.i847.rcu_read_lock.exit.i850_crit_edge, label %if.then.i.i848

land.lhs.true2.i.i847.rcu_read_lock.exit.i850_crit_edge: ; preds = %land.lhs.true2.i.i847
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i850

if.then.i.i848:                                   ; preds = %land.lhs.true2.i.i847
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 696, ptr noundef nonnull @.str.39) #13
  br label %rcu_read_lock.exit.i850

rcu_read_lock.exit.i850:                          ; preds = %if.then.i.i848, %land.lhs.true2.i.i847.rcu_read_lock.exit.i850_crit_edge, %land.lhs.true.i.i845.rcu_read_lock.exit.i850_crit_edge, %if.then174.rcu_read_lock.exit.i850_crit_edge
  %80 = ptrtoint ptr %vnr.i838 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %vnr.i838, align 4
  %call10.i = call ptr @idr_get_next(ptr noundef %peer_devices.i833, ptr noundef nonnull %vnr.i838) #13
  %cmp.not11.i = icmp eq ptr %call10.i, null
  br i1 %cmp.not11.i, label %rcu_read_lock.exit.i850.for.end.i856_crit_edge, label %rcu_read_lock.exit.i850.for.body.i855_crit_edge

rcu_read_lock.exit.i850.for.body.i855_crit_edge:  ; preds = %rcu_read_lock.exit.i850
  br label %for.body.i855

rcu_read_lock.exit.i850.for.end.i856_crit_edge:   ; preds = %rcu_read_lock.exit.i850
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i856

for.body.i855:                                    ; preds = %for.body.i855.for.body.i855_crit_edge, %rcu_read_lock.exit.i850.for.body.i855_crit_edge
  %call12.i = phi ptr [ %call.i853, %for.body.i855.for.body.i855_crit_edge ], [ %call10.i, %rcu_read_lock.exit.i850.for.body.i855_crit_edge ]
  %device.i851 = getelementptr inbounds %struct.drbd_peer_device, ptr %call12.i, i32 0, i32 1
  %81 = ptrtoint ptr %device.i851 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %device.i851, align 4
  %state_wait.i = getelementptr inbounds %struct.drbd_device, ptr %82, i32 0, i32 29
  call void @__wake_up(ptr noundef %state_wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  %83 = ptrtoint ptr %vnr.i838 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %vnr.i838, align 4
  %add.i852 = add i32 %84, 1
  store i32 %add.i852, ptr %vnr.i838, align 4
  %call.i853 = call ptr @idr_get_next(ptr noundef %peer_devices.i833, ptr noundef nonnull %vnr.i838) #13
  %cmp.not.i854 = icmp eq ptr %call.i853, null
  br i1 %cmp.not.i854, label %for.body.i855.for.end.i856_crit_edge, label %for.body.i855.for.body.i855_crit_edge

for.body.i855.for.body.i855_crit_edge:            ; preds = %for.body.i855
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i855

for.body.i855.for.end.i856_crit_edge:             ; preds = %for.body.i855
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i856

for.end.i856:                                     ; preds = %for.body.i855.for.end.i856_crit_edge, %rcu_read_lock.exit.i850.for.end.i856_crit_edge
  %call.i1.i = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i1.i, label %for.end.i856.wake_up_all_devices.exit_crit_edge, label %land.lhs.true.i4.i

for.end.i856.wake_up_all_devices.exit_crit_edge:  ; preds = %for.end.i856
  call void @__sanitizer_cov_trace_pc() #15
  br label %wake_up_all_devices.exit

land.lhs.true.i4.i:                               ; preds = %for.end.i856
  %call1.i2.i = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i2.i)
  %tobool.not.i3.i = icmp eq i32 %call1.i2.i, 0
  br i1 %tobool.not.i3.i, label %land.lhs.true.i4.i.wake_up_all_devices.exit_crit_edge, label %land.lhs.true2.i6.i

land.lhs.true.i4.i.wake_up_all_devices.exit_crit_edge: ; preds = %land.lhs.true.i4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %wake_up_all_devices.exit

land.lhs.true2.i6.i:                              ; preds = %land.lhs.true.i4.i
  %.b4.i5.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i5.i, label %land.lhs.true2.i6.i.wake_up_all_devices.exit_crit_edge, label %if.then.i7.i

land.lhs.true2.i6.i.wake_up_all_devices.exit_crit_edge: ; preds = %land.lhs.true2.i6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %wake_up_all_devices.exit

if.then.i7.i:                                     ; preds = %land.lhs.true2.i6.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 724, ptr noundef nonnull @.str.40) #13
  br label %wake_up_all_devices.exit

wake_up_all_devices.exit:                         ; preds = %if.then.i7.i, %land.lhs.true2.i6.i.wake_up_all_devices.exit_crit_edge, %land.lhs.true.i4.i.wake_up_all_devices.exit_crit_edge, %for.end.i856.wake_up_all_devices.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !190
  %85 = call i32 @llvm.read_register.i32(metadata !175) #13
  %and.i.i.i.i.i8.i = and i32 %85, -16384
  %86 = inttoptr i32 %and.i.i.i.i.i8.i to ptr
  %preempt_count.i.i.i.i9.i = getelementptr inbounds %struct.thread_info, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %preempt_count.i.i.i.i9.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile i32, ptr %preempt_count.i.i.i.i9.i, align 4
  %sub.i.i.i.i857 = add i32 %88, -1
  store volatile i32 %sub.i.i.i.i857, ptr %preempt_count.i.i.i.i9.i, align 4
  call void @rcu_read_unlock_strict() #13
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vnr.i838) #13
  br label %if.end176

if.end176:                                        ; preds = %wake_up_all_devices.exit, %no_peer_wf_report_params.exit.if.end176_crit_edge, %if.end159.if.end176_crit_edge
  %misc_wait = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 28
  call void @__wake_up(ptr noundef %misc_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  %state_wait = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 29
  call void @__wake_up(ptr noundef %state_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  %ping_wait = getelementptr inbounds %struct.drbd_connection, ptr %cond, i32 0, i32 12
  call void @__wake_up(ptr noundef %ping_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  %89 = zext i32 %bf.clear.i810 to i64
  call void @__sanitizer_cov_trace_switch(i64 %89, ptr @__sancov_gen_cov_switch_values)
  switch i32 %bf.clear.i810, label %if.end176.if.end322_crit_edge [
    i32 18, label %if.end176.land.lhs.true188_crit_edge
    i32 19, label %if.end176.land.lhs.true188_crit_edge894
    i32 21, label %if.end176.land.lhs.true217_crit_edge
    i32 20, label %if.end176.land.lhs.true217_crit_edge895
    i32 17, label %if.end176.land.lhs.true257_crit_edge
    i32 16, label %if.end176.land.lhs.true257_crit_edge896
    i32 10, label %land.lhs.true285
  ]

if.end176.land.lhs.true257_crit_edge896:          ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true257

if.end176.land.lhs.true257_crit_edge:             ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true257

if.end176.land.lhs.true217_crit_edge895:          ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true217

if.end176.land.lhs.true217_crit_edge:             ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true217

if.end176.land.lhs.true188_crit_edge894:          ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true188

if.end176.land.lhs.true188_crit_edge:             ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true188

if.end176.if.end322_crit_edge:                    ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end322

land.lhs.true188:                                 ; preds = %if.end176.land.lhs.true188_crit_edge, %if.end176.land.lhs.true188_crit_edge894
  call void @__sanitizer_cov_trace_const_cmp4(i32 176, i32 %59)
  %cmp192 = icmp ult i32 %59, 176
  br i1 %cmp192, label %if.then194, label %land.lhs.true188.if.end322_crit_edge

land.lhs.true188.if.end322_crit_edge:             ; preds = %land.lhs.true188
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end322

if.then194:                                       ; preds = %land.lhs.true188
  %call195 = call i32 @drbd_bm_bits(ptr noundef %device) #13
  %ov_left = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 62
  %90 = ptrtoint ptr %ov_left to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %ov_left, align 8
  %sub = sub i32 %call195, %91
  %conv196 = zext i32 %sub to i64
  %shl = shl nuw nsw i64 %conv196, 3
  %ov_start_sector = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 57
  %92 = ptrtoint ptr %ov_start_sector to i32
  call void @__asan_store8_noabort(i32 %92)
  store i64 %shl, ptr %ov_start_sector, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool198.not = icmp eq i32 %91, 0
  br i1 %tobool198.not, label %if.then194.if.end322_crit_edge, label %do.end202

if.then194.if.end322_crit_edge:                   ; preds = %if.then194
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end322

do.end202:                                        ; preds = %if.then194
  call void @__sanitizer_cov_trace_pc() #15
  %vdisk = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %93 = ptrtoint ptr %vdisk to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %vdisk, align 4
  %part0 = getelementptr inbounds %struct.gendisk, ptr %94, i32 0, i32 7
  %95 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %part0, align 4
  %bd_device = getelementptr inbounds %struct.block_device, ptr %96, i32 0, i32 10
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %bd_device, ptr noundef nonnull @.str.11, i64 noundef %shl) #17
  br label %if.end322

land.lhs.true217:                                 ; preds = %if.end176.land.lhs.true217_crit_edge, %if.end176.land.lhs.true217_crit_edge895
  %97 = and i32 %call11, 480
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %97)
  %switch807 = icmp eq i32 %97, 256
  br i1 %switch807, label %do.end232, label %land.lhs.true217.if.end322_crit_edge

land.lhs.true217.if.end322_crit_edge:             ; preds = %land.lhs.true217
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end322

do.end232:                                        ; preds = %land.lhs.true217
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %bf.clear6.i)
  %cmp221 = icmp eq i32 %bf.clear6.i, 17
  %vdisk233 = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %98 = ptrtoint ptr %vdisk233 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %vdisk233, align 4
  %part0234 = getelementptr inbounds %struct.gendisk, ptr %99, i32 0, i32 7
  %100 = ptrtoint ptr %part0234 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %part0234, align 4
  %bd_device235 = getelementptr inbounds %struct.block_device, ptr %101, i32 0, i32 10
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %bd_device235, ptr noundef nonnull @.str.14) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %102 = load volatile i32, ptr @jiffies, align 128
  %rs_last_mark = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 55
  %103 = ptrtoint ptr %rs_last_mark to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %rs_last_mark, align 8
  %arrayidx = getelementptr %struct.drbd_device, ptr %device, i32 0, i32 54, i32 %104
  %105 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %arrayidx, align 4
  %sub236 = sub i32 %102, %106
  %rs_paused = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 51
  %107 = ptrtoint ptr %rs_paused to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %rs_paused, align 8
  %add = add i32 %sub236, %108
  store i32 %add, ptr %rs_paused, align 8
  br i1 %cmp221, label %if.then242, label %do.end232.if.end322_crit_edge

do.end232.if.end322_crit_edge:                    ; preds = %do.end232
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end322

if.then242:                                       ; preds = %do.end232
  call void @__sanitizer_cov_trace_pc() #15
  %resync_timer = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %109 = load volatile i32, ptr @jiffies, align 128
  %call243 = call i32 @mod_timer(ptr noundef %resync_timer, i32 noundef %109) #13
  br label %if.end322

land.lhs.true257:                                 ; preds = %if.end176.land.lhs.true257_crit_edge, %if.end176.land.lhs.true257_crit_edge896
  %110 = and i32 %call11, 480
  call void @__sanitizer_cov_trace_const_cmp4(i32 320, i32 %110)
  %switch = icmp eq i32 %110, 320
  br i1 %switch, label %do.end272, label %land.lhs.true257.if.end322_crit_edge

land.lhs.true257.if.end322_crit_edge:             ; preds = %land.lhs.true257
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end322

do.end272:                                        ; preds = %land.lhs.true257
  call void @__sanitizer_cov_trace_pc() #15
  %vdisk273 = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %111 = ptrtoint ptr %vdisk273 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %vdisk273, align 4
  %part0274 = getelementptr inbounds %struct.gendisk, ptr %112, i32 0, i32 7
  %113 = ptrtoint ptr %part0274 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %part0274, align 4
  %bd_device275 = getelementptr inbounds %struct.block_device, ptr %114, i32 0, i32 10
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %bd_device275, ptr noundef nonnull @.str.17) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %115 = load volatile i32, ptr @jiffies, align 128
  %rs_last_mark277 = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 55
  %116 = ptrtoint ptr %rs_last_mark277 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %rs_last_mark277, align 8
  %arrayidx278 = getelementptr %struct.drbd_device, ptr %device, i32 0, i32 54, i32 %117
  %118 = ptrtoint ptr %arrayidx278 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %115, ptr %arrayidx278, align 4
  br label %if.end322

land.lhs.true285:                                 ; preds = %if.end176
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %bf.clear6.i)
  %cmp289 = icmp eq i32 %bf.clear6.i, 18
  %119 = and i32 %call11, 480
  call void @__sanitizer_cov_trace_const_cmp4(i32 288, i32 %119)
  %switch808 = icmp eq i32 %119, 288
  br i1 %switch808, label %if.then297, label %land.lhs.true285.if.end322_crit_edge

land.lhs.true285.if.end322_crit_edge:             ; preds = %land.lhs.true285
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end322

if.then297:                                       ; preds = %land.lhs.true285
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %120 = load volatile i32, ptr @jiffies, align 128
  %121 = ptrtoint ptr %peer_devices.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load volatile ptr, ptr %peer_devices.i, align 4
  %cmp.not.i.i = icmp eq ptr %122, %peer_devices.i
  %spec.select.i.i858 = select i1 %cmp.not.i.i, ptr null, ptr %122
  %connection.i = getelementptr inbounds %struct.drbd_peer_device, ptr %spec.select.i.i858, i32 0, i32 2
  %123 = ptrtoint ptr %connection.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %connection.i, align 4
  %agreed_pro_version.i = getelementptr inbounds %struct.drbd_connection, ptr %124, i32 0, i32 19
  %125 = ptrtoint ptr %agreed_pro_version.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %agreed_pro_version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 90, i32 %126)
  %cmp.i859 = icmp slt i32 %126, 90
  br i1 %cmp.i859, label %if.then.i860, label %if.then297.if.end.i861_crit_edge

if.then297.if.end.i861_crit_edge:                 ; preds = %if.then297
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i861

if.then.i860:                                     ; preds = %if.then297
  call void @__sanitizer_cov_trace_pc() #15
  %ov_start_sector.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 57
  %127 = ptrtoint ptr %ov_start_sector.i to i32
  call void @__asan_store8_noabort(i32 %127)
  store i64 0, ptr %ov_start_sector.i, align 8
  br label %if.end.i861

if.end.i861:                                      ; preds = %if.then.i860, %if.then297.if.end.i861_crit_edge
  %call1.i = call i32 @drbd_bm_bits(ptr noundef %device) #13
  %rs_total.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 48
  %128 = ptrtoint ptr %rs_total.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %call1.i, ptr %rs_total.i, align 4
  %ov_position.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 59
  %129 = ptrtoint ptr %ov_position.i to i32
  call void @__asan_store8_noabort(i32 %129)
  store i64 0, ptr %ov_position.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %bf.clear6.i)
  %cmp2.i = icmp eq i32 %bf.clear6.i, 19
  %ov_start_sector4.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 57
  br i1 %cmp2.i, label %if.then3.i, label %if.else.i

if.then3.i:                                       ; preds = %if.end.i861
  call void @__sanitizer_cov_trace_pc() #15
  %130 = ptrtoint ptr %ov_start_sector4.i to i32
  call void @__asan_store8_noabort(i32 %130)
  store i64 -1, ptr %ov_start_sector4.i, align 8
  br label %set_ov_position.exit

if.else.i:                                        ; preds = %if.end.i861
  %131 = ptrtoint ptr %ov_start_sector4.i to i32
  call void @__asan_load8_noabort(i32 %131)
  %132 = load i64, ptr %ov_start_sector4.i, align 8
  %shr.i862 = lshr i64 %132, 3
  %conv.i = trunc i64 %shr.i862 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call1.i, i32 %conv.i)
  %cmp7.not.i = icmp ugt i32 %call1.i, %conv.i
  br i1 %cmp7.not.i, label %if.else14.i, label %if.then9.i

if.then9.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i = add i32 %call1.i, -1
  %conv11.i = zext i32 %sub.i to i64
  %shl.i = shl nuw nsw i64 %conv11.i, 3
  %133 = ptrtoint ptr %ov_start_sector4.i to i32
  call void @__asan_store8_noabort(i32 %133)
  store i64 %shl.i, ptr %ov_start_sector4.i, align 8
  br label %if.end17.i

if.else14.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub16.i = sub i32 %call1.i, %conv.i
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.else14.i, %if.then9.i
  %storemerge.i = phi i32 [ %sub16.i, %if.else14.i ], [ 1, %if.then9.i ]
  %134 = ptrtoint ptr %rs_total.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %storemerge.i, ptr %rs_total.i, align 4
  %135 = ptrtoint ptr %ov_start_sector4.i to i32
  call void @__asan_load8_noabort(i32 %135)
  %136 = load i64, ptr %ov_start_sector4.i, align 8
  %137 = ptrtoint ptr %ov_position.i to i32
  call void @__asan_store8_noabort(i32 %137)
  store i64 %136, ptr %ov_position.i, align 8
  br label %set_ov_position.exit

set_ov_position.exit:                             ; preds = %if.end17.i, %if.then3.i
  %138 = ptrtoint ptr %rs_total.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %rs_total.i, align 4
  %ov_left.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 62
  %140 = ptrtoint ptr %ov_left.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %139, ptr %ov_left.i, align 8
  %rs_start = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 50
  %141 = ptrtoint ptr %rs_start to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %120, ptr %rs_start, align 4
  %rs_last_sect_ev = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 98
  %142 = ptrtoint ptr %rs_last_sect_ev to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 0, ptr %rs_last_sect_ev, align 4
  %ov_last_oos_start = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 60
  %arrayidx304 = getelementptr %struct.drbd_device, ptr %device, i32 0, i32 53, i32 0
  %143 = call ptr @memset(ptr %ov_last_oos_start, i32 0, i32 16)
  %144 = ptrtoint ptr %arrayidx304 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %139, ptr %arrayidx304, align 4
  %arrayidx306 = getelementptr %struct.drbd_device, ptr %device, i32 0, i32 54, i32 0
  %145 = ptrtoint ptr %arrayidx306 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %120, ptr %arrayidx306, align 4
  %arrayidx304.1 = getelementptr %struct.drbd_device, ptr %device, i32 0, i32 53, i32 1
  %146 = ptrtoint ptr %arrayidx304.1 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %139, ptr %arrayidx304.1, align 4
  %arrayidx306.1 = getelementptr %struct.drbd_device, ptr %device, i32 0, i32 54, i32 1
  %147 = ptrtoint ptr %arrayidx306.1 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %120, ptr %arrayidx306.1, align 4
  %arrayidx304.2 = getelementptr %struct.drbd_device, ptr %device, i32 0, i32 53, i32 2
  %148 = ptrtoint ptr %arrayidx304.2 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %139, ptr %arrayidx304.2, align 4
  %arrayidx306.2 = getelementptr %struct.drbd_device, ptr %device, i32 0, i32 54, i32 2
  %149 = ptrtoint ptr %arrayidx306.2 to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %120, ptr %arrayidx306.2, align 4
  %arrayidx304.3 = getelementptr %struct.drbd_device, ptr %device, i32 0, i32 53, i32 3
  %150 = ptrtoint ptr %arrayidx304.3 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %139, ptr %arrayidx304.3, align 4
  %arrayidx306.3 = getelementptr %struct.drbd_device, ptr %device, i32 0, i32 54, i32 3
  %151 = ptrtoint ptr %arrayidx306.3 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %120, ptr %arrayidx306.3, align 4
  %arrayidx304.4 = getelementptr %struct.drbd_device, ptr %device, i32 0, i32 53, i32 4
  %152 = ptrtoint ptr %arrayidx304.4 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %139, ptr %arrayidx304.4, align 4
  %arrayidx306.4 = getelementptr %struct.drbd_device, ptr %device, i32 0, i32 54, i32 4
  %153 = ptrtoint ptr %arrayidx306.4 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %120, ptr %arrayidx306.4, align 4
  %arrayidx304.5 = getelementptr %struct.drbd_device, ptr %device, i32 0, i32 53, i32 5
  %154 = ptrtoint ptr %arrayidx304.5 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %139, ptr %arrayidx304.5, align 4
  %arrayidx306.5 = getelementptr %struct.drbd_device, ptr %device, i32 0, i32 54, i32 5
  %155 = ptrtoint ptr %arrayidx306.5 to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %120, ptr %arrayidx306.5, align 4
  %arrayidx304.6 = getelementptr %struct.drbd_device, ptr %device, i32 0, i32 53, i32 6
  %156 = ptrtoint ptr %arrayidx304.6 to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %139, ptr %arrayidx304.6, align 4
  %arrayidx306.6 = getelementptr %struct.drbd_device, ptr %device, i32 0, i32 54, i32 6
  %157 = ptrtoint ptr %arrayidx306.6 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %120, ptr %arrayidx306.6, align 4
  %arrayidx304.7 = getelementptr %struct.drbd_device, ptr %device, i32 0, i32 53, i32 7
  %158 = ptrtoint ptr %arrayidx304.7 to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %139, ptr %arrayidx304.7, align 4
  %arrayidx306.7 = getelementptr %struct.drbd_device, ptr %device, i32 0, i32 54, i32 7
  %159 = ptrtoint ptr %arrayidx306.7 to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %120, ptr %arrayidx306.7, align 4
  call void @drbd_rs_controller_reset(ptr noundef %device) #13
  br i1 %cmp289, label %do.end315, label %set_ov_position.exit.if.end322_crit_edge

set_ov_position.exit.if.end322_crit_edge:         ; preds = %set_ov_position.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end322

do.end315:                                        ; preds = %set_ov_position.exit
  call void @__sanitizer_cov_trace_pc() #15
  %vdisk316 = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %160 = ptrtoint ptr %vdisk316 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %vdisk316, align 4
  %part0317 = getelementptr inbounds %struct.gendisk, ptr %161, i32 0, i32 7
  %162 = ptrtoint ptr %part0317 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %part0317, align 4
  %bd_device318 = getelementptr inbounds %struct.block_device, ptr %163, i32 0, i32 10
  %164 = ptrtoint ptr %ov_position.i to i32
  call void @__asan_load8_noabort(i32 %164)
  %165 = load i64, ptr %ov_position.i, align 8
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %bd_device318, ptr noundef nonnull @.str.20, i64 noundef %165) #17
  %resync_timer319 = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %166 = load volatile i32, ptr @jiffies, align 128
  %call320 = call i32 @mod_timer(ptr noundef %resync_timer319, i32 noundef %166) #13
  br label %if.end322

if.end322:                                        ; preds = %do.end315, %set_ov_position.exit.if.end322_crit_edge, %land.lhs.true285.if.end322_crit_edge, %do.end272, %land.lhs.true257.if.end322_crit_edge, %if.then242, %do.end232.if.end322_crit_edge, %land.lhs.true217.if.end322_crit_edge, %do.end202, %if.then194.if.end322_crit_edge, %land.lhs.true188.if.end322_crit_edge, %if.end176.if.end322_crit_edge
  %167 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %bf.load.i864 = load i32, ptr %state.i, align 8
  %168 = and i32 %bf.load.i864, 7680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %168)
  %cmp.i865 = icmp eq i32 %168, 0
  br i1 %cmp.i865, label %if.end322.if.end431_crit_edge, label %if.end.i866

if.end322.if.end431_crit_edge:                    ; preds = %if.end322
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end431

if.end.i866:                                      ; preds = %if.end322
  %local_cnt.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 41
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %local_cnt.i, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %local_cnt.i, i32 1, i32 3, i32 1) #13
  %169 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %local_cnt.i, ptr %local_cnt.i, i32 1, ptr elementtype(i32) %local_cnt.i) #13, !srcloc !196
  %170 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %bf.load2.i = load i32, ptr %state.i, align 8
  %171 = and i32 %bf.load2.i, 6144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %171)
  %cmp5.not.i = icmp eq i32 %171, 0
  br i1 %cmp5.not.i, label %if.then6.i, label %if.then329

if.then6.i:                                       ; preds = %if.end.i866
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @put_ldev(ptr noundef %device) #13
  br label %if.end431

if.then329:                                       ; preds = %if.end.i866
  %ldev = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 15
  %172 = ptrtoint ptr %ldev to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %ldev, align 4
  %flags330 = getelementptr inbounds %struct.drbd_backing_dev, ptr %173, i32 0, i32 2, i32 5
  %174 = ptrtoint ptr %flags330 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %flags330, align 8
  %and332 = and i32 %175, -248
  %flags333 = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 14
  %176 = ptrtoint ptr %flags333 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load volatile i32, ptr %flags333, align 4
  %178 = shl i32 %177, 1
  %179 = and i32 %178, 64
  %180 = or i32 %179, %and332
  %181 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %bf.load340 = load i32, ptr %state.i, align 8
  %bf.clear341 = and i32 %bf.load340, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %bf.clear341)
  %cmp342 = icmp eq i32 %bf.clear341, 1
  %182 = and i32 %bf.load340, 98316
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %182)
  %183 = icmp eq i32 %182, 4
  %or.cond890 = or i1 %cmp342, %183
  %or359 = or i32 %180, 2
  %mdf.1 = select i1 %or.cond890, i32 %or359, i32 %180
  %184 = and i32 %bf.load340, 480
  call void @__sanitizer_cov_trace_const_cmp4(i32 144, i32 %184)
  %cmp365 = icmp ugt i32 %184, 144
  %or368 = or i32 %mdf.1, 4
  %spec.select795 = select i1 %cmp365, i32 %or368, i32 %mdf.1
  %185 = and i32 %bf.load340, 7680
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %185)
  %cmp374 = icmp ugt i32 %185, 2048
  %or377 = zext i1 %cmp374 to i32
  %mdf.3 = or i32 %spec.select795, %or377
  %186 = and i32 %bf.load340, 7168
  call void @__sanitizer_cov_trace_const_cmp4(i32 2560, i32 %186)
  %cmp383 = icmp ugt i32 %186, 2560
  %or386 = or i32 %mdf.3, 16
  %mdf.4 = select i1 %cmp383, i32 %or386, i32 %mdf.3
  %187 = and i32 %bf.load340, 114688
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %187)
  %188 = icmp eq i32 %187, 32768
  %or402 = or i32 %mdf.4, 32
  %mdf.5 = select i1 %188, i32 %or402, i32 %mdf.4
  call void @__sanitizer_cov_trace_cmp4(i32 %mdf.5, i32 %175)
  %cmp407.not = icmp eq i32 %mdf.5, %175
  br i1 %cmp407.not, label %if.then329.if.end413_crit_edge, label %if.then409

if.then329.if.end413_crit_edge:                   ; preds = %if.then329
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end413

if.then409:                                       ; preds = %if.then329
  call void @__sanitizer_cov_trace_pc() #15
  %189 = ptrtoint ptr %flags330 to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 %mdf.5, ptr %flags330, align 8
  call void @drbd_md_mark_dirty(ptr noundef %device) #13
  br label %if.end413

if.end413:                                        ; preds = %if.then409, %if.then329.if.end413_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %bf.clear)
  %cmp417 = icmp ult i32 %bf.clear, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3072, i32 %14)
  %cmp423 = icmp ugt i32 %14, 3072
  %or.cond797 = select i1 %cmp417, i1 %cmp423, i1 false
  br i1 %or.cond797, label %if.then425, label %if.end413.if.end430_crit_edge

if.end413.if.end430_crit_edge:                    ; preds = %if.end413
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end430

if.then425:                                       ; preds = %if.end413
  call void @__sanitizer_cov_trace_pc() #15
  %190 = ptrtoint ptr %ldev to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %ldev, align 4
  %uuid = getelementptr inbounds %struct.drbd_backing_dev, ptr %191, i32 0, i32 2, i32 3
  %192 = ptrtoint ptr %uuid to i32
  call void @__asan_load8_noabort(i32 %192)
  %193 = load i64, ptr %uuid, align 8
  %ed_uuid.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 92
  %194 = ptrtoint ptr %ed_uuid.i to i32
  call void @__asan_store8_noabort(i32 %194)
  store i64 %193, ptr %ed_uuid.i, align 8
  br label %if.end430

if.end430:                                        ; preds = %if.then425, %if.end413.if.end430_crit_edge
  call fastcc void @put_ldev(ptr noundef %device)
  br label %if.end431

if.end431:                                        ; preds = %if.end430, %if.then6.i, %if.end322.if.end431_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %bf.clear)
  %cmp435 = icmp eq i32 %bf.clear, 4
  %195 = and i32 %8, 122880
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %195)
  %cmp441 = icmp eq i32 %195, 32768
  %or.cond798 = select i1 %cmp435, i1 %cmp441, i1 false
  %196 = and i32 %8, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %196)
  %cmp447 = icmp eq i32 %196, 8
  %or.cond799 = select i1 %or.cond798, i1 %cmp447, i1 false
  %197 = and i32 %call11, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %197)
  %cmp453 = icmp eq i32 %197, 4
  %or.cond800 = select i1 %or.cond799, i1 %cmp453, i1 false
  br i1 %or.cond800, label %if.then455, label %if.end431.if.end457_crit_edge

if.end431.if.end457_crit_edge:                    ; preds = %if.end431
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end457

if.then455:                                       ; preds = %if.end431
  call void @__sanitizer_cov_trace_pc() #15
  %flags456 = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 14
  call void @_set_bit(i32 noundef 6, ptr noundef %flags456) #13
  br label %if.end457

if.end457:                                        ; preds = %if.then455, %if.end431.if.end457_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %bf.clear.i810)
  %cmp461.not = icmp ne i32 %bf.clear.i810, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %59)
  %cmp467 = icmp eq i32 %59, 16
  %or.cond801 = select i1 %cmp461.not, i1 %cmp467, i1 false
  br i1 %or.cond801, label %if.end457.if.end484.sink.split_crit_edge, label %if.end470

if.end457.if.end484.sink.split_crit_edge:         ; preds = %if.end457
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end484.sink.split

if.end470:                                        ; preds = %if.end457
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear.i810)
  %cmp474.not = icmp ne i32 %bf.clear.i810, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp480 = icmp eq i32 %59, 0
  %or.cond802 = select i1 %cmp474.not, i1 %cmp480, i1 false
  br i1 %or.cond802, label %if.end470.if.end484.sink.split_crit_edge, label %if.end470.if.end484_crit_edge

if.end470.if.end484_crit_edge:                    ; preds = %if.end470
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end484

if.end470.if.end484.sink.split_crit_edge:         ; preds = %if.end470
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end484.sink.split

if.end484.sink.split:                             ; preds = %if.end470.if.end484.sink.split_crit_edge, %if.end457.if.end484.sink.split_crit_edge
  %receiver = getelementptr inbounds %struct.drbd_connection, ptr %cond, i32 0, i32 38
  call void @_drbd_thread_stop(ptr noundef %receiver, i32 noundef 0, i32 noundef 0) #13
  br label %if.end484

if.end484:                                        ; preds = %if.end484.sink.split, %if.end470.if.end484_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %bf.clear.i810)
  %cmp488 = icmp ugt i32 %bf.clear.i810, 8
  %198 = add nsw i32 %bf.clear6.i, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %198)
  %199 = icmp ult i32 %198, 5
  %or.cond892 = select i1 %cmp488, i1 %199, i1 false
  br i1 %or.cond892, label %if.then502, label %if.end484.if.end504_crit_edge

if.end484.if.end504_crit_edge:                    ; preds = %if.end484
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end504

if.then502:                                       ; preds = %if.end484
  call void @__sanitizer_cov_trace_pc() #15
  %receiver503 = getelementptr inbounds %struct.drbd_connection, ptr %cond, i32 0, i32 38
  call void @_drbd_thread_stop(ptr noundef %receiver503, i32 noundef 1, i32 noundef 0) #13
  br label %if.end504

if.end504:                                        ; preds = %if.then502, %if.end484.if.end504_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %bf.clear.i810)
  %cmp508 = icmp ult i32 %bf.clear.i810, 10
  %200 = and i32 %call11, 480
  call void @__sanitizer_cov_trace_const_cmp4(i32 144, i32 %200)
  %cmp514 = icmp ugt i32 %200, 144
  %or.cond804 = select i1 %cmp508, i1 %cmp514, i1 false
  br i1 %or.cond804, label %if.then516, label %if.end504.if.end518_crit_edge

if.end504.if.end518_crit_edge:                    ; preds = %if.end504
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end518

if.then516:                                       ; preds = %if.end504
  %flags.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 14
  %call.i867 = call i32 @_test_and_clear_bit(i32 noundef 16, ptr noundef %flags.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i867)
  %tobool.not.i = icmp eq i32 %call.i867, 0
  br i1 %tobool.not.i, label %if.then516.drbd_resume_al.exit_crit_edge, label %do.end.i871

if.then516.drbd_resume_al.exit_crit_edge:         ; preds = %if.then516
  call void @__sanitizer_cov_trace_pc() #15
  br label %drbd_resume_al.exit

do.end.i871:                                      ; preds = %if.then516
  call void @__sanitizer_cov_trace_pc() #15
  %vdisk.i868 = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %201 = ptrtoint ptr %vdisk.i868 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %vdisk.i868, align 4
  %part0.i869 = getelementptr inbounds %struct.gendisk, ptr %202, i32 0, i32 7
  %203 = ptrtoint ptr %part0.i869 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %part0.i869, align 4
  %bd_device.i870 = getelementptr inbounds %struct.block_device, ptr %204, i32 0, i32 10
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %bd_device.i870, ptr noundef nonnull @.str.7) #17
  br label %drbd_resume_al.exit

drbd_resume_al.exit:                              ; preds = %do.end.i871, %if.then516.drbd_resume_al.exit_crit_edge
  %connect_cnt = getelementptr inbounds %struct.drbd_connection, ptr %cond, i32 0, i32 9
  %205 = ptrtoint ptr %connect_cnt to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %connect_cnt, align 4
  %inc517 = add i32 %206, 1
  store i32 %inc517, ptr %connect_cnt, align 4
  br label %if.end518

if.end518:                                        ; preds = %drbd_resume_al.exit, %if.end504.if.end518_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %bf.clear)
  %cmp528 = icmp eq i32 %bf.clear, 3
  %or.cond805 = or i1 %cmp150, %cmp528
  %or.cond805.not = xor i1 %or.cond805, true
  %207 = and i32 %call11, 6144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %207)
  %cmp534.not = icmp eq i32 %207, 0
  %or.cond806 = select i1 %or.cond805.not, i1 true, i1 %cmp534.not
  br i1 %or.cond806, label %if.end518.if.end537_crit_edge, label %if.then536

if.end518.if.end537_crit_edge:                    ; preds = %if.end518
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end537

if.then536:                                       ; preds = %if.end518
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %208 = load volatile i32, ptr @jiffies, align 128
  %last_reattach_jif = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 19
  %209 = ptrtoint ptr %last_reattach_jif to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 %208, ptr %last_reattach_jif, align 8
  br label %if.end537

if.end537:                                        ; preds = %if.then536, %if.end518.if.end537_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %210 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %210, i32 noundef 2592, i32 noundef 36) #18
  %tobool539.not = icmp eq ptr %call7.i, null
  br i1 %tobool539.not, label %do.end551, label %if.then540

if.then540:                                       ; preds = %if.end537
  %os541 = getelementptr inbounds %struct.after_state_chg_work, ptr %call7.i, i32 0, i32 2
  %211 = ptrtoint ptr %os541 to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 %bf.set20.i, ptr %os541, align 8
  %ns542 = getelementptr inbounds %struct.after_state_chg_work, ptr %call7.i, i32 0, i32 3
  %212 = ptrtoint ptr %ns542 to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 %call11, ptr %ns542, align 4
  %flags543 = getelementptr inbounds %struct.after_state_chg_work, ptr %call7.i, i32 0, i32 4
  %213 = ptrtoint ptr %flags543 to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 %flags, ptr %flags543, align 8
  %cb = getelementptr inbounds %struct.drbd_work, ptr %call7.i, i32 0, i32 1
  %214 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %214)
  store ptr @w_after_state_ch, ptr %cb, align 8
  %device544 = getelementptr inbounds %struct.after_state_chg_work, ptr %call7.i, i32 0, i32 1
  %215 = ptrtoint ptr %device544 to i32
  call void @__asan_store4_noabort(i32 %215)
  store ptr %device, ptr %device544, align 4
  %done545 = getelementptr inbounds %struct.after_state_chg_work, ptr %call7.i, i32 0, i32 5
  %216 = ptrtoint ptr %done545 to i32
  call void @__asan_store4_noabort(i32 %216)
  store ptr %done, ptr %done545, align 4
  %state_change546 = getelementptr inbounds %struct.after_state_chg_work, ptr %call7.i, i32 0, i32 6
  %217 = ptrtoint ptr %state_change546 to i32
  call void @__asan_store4_noabort(i32 %217)
  store ptr %call99, ptr %state_change546, align 8
  %sender_work = getelementptr inbounds %struct.drbd_connection, ptr %cond, i32 0, i32 45
  %q_lock.i = getelementptr inbounds %struct.drbd_connection, ptr %cond, i32 0, i32 45, i32 1
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %q_lock.i) #13
  %prev.i.i = getelementptr inbounds %struct.drbd_connection, ptr %cond, i32 0, i32 45, i32 0, i32 1
  %218 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i873 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i, ptr noundef %219, ptr noundef %sender_work) #13
  br i1 %call.i.i.i873, label %if.end.i.i.i, label %if.then540.drbd_queue_work.exit_crit_edge

if.then540.drbd_queue_work.exit_crit_edge:        ; preds = %if.then540
  call void @__sanitizer_cov_trace_pc() #15
  br label %drbd_queue_work.exit

if.end.i.i.i:                                     ; preds = %if.then540
  call void @__sanitizer_cov_trace_pc() #15
  %220 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %220)
  store ptr %call7.i, ptr %prev.i.i, align 4
  %221 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store ptr %sender_work, ptr %call7.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %222 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store ptr %219, ptr %prev3.i.i.i, align 4
  %223 = ptrtoint ptr %219 to i32
  call void @__asan_store4_noabort(i32 %223)
  store volatile ptr %call7.i, ptr %219, align 4
  br label %drbd_queue_work.exit

drbd_queue_work.exit:                             ; preds = %if.end.i.i.i, %if.then540.drbd_queue_work.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %q_lock.i, i32 noundef %call2.i) #13
  %q_wait.i = getelementptr inbounds %struct.drbd_connection, ptr %cond, i32 0, i32 45, i32 2
  call void @__wake_up(ptr noundef %q_wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  br label %cleanup

do.end551:                                        ; preds = %if.end537
  call void @__sanitizer_cov_trace_pc() #15
  %vdisk552 = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %224 = ptrtoint ptr %vdisk552 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %vdisk552, align 4
  %part0553 = getelementptr inbounds %struct.gendisk, ptr %225, i32 0, i32 7
  %226 = ptrtoint ptr %part0553 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %part0553, align 4
  %bd_device554 = getelementptr inbounds %struct.block_device, ptr %227, i32 0, i32 10
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %bd_device554, ptr noundef nonnull @.str.23) #17
  br label %cleanup

cleanup:                                          ; preds = %do.end551, %drbd_queue_work.exit, %do.end.i, %if.then51.cleanup_crit_edge, %if.then48.cleanup_crit_edge, %is_valid_transition.exit.cleanup_crit_edge, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %cond.end.cleanup_crit_edge ], [ %rv.0.i, %is_valid_transition.exit.cleanup_crit_edge ], [ %rv.0876, %if.then48.cleanup_crit_edge ], [ %rv.0880, %do.end551 ], [ %rv.0880, %drbd_queue_work.exit ], [ -18, %if.then51.cleanup_crit_edge ], [ %rv.0876, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ssw) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drbd_force_state(ptr noundef %device, [1 x i32] %mask.coerce, [1 x i32] %val.coerce) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 8
  %req_lock.i = getelementptr inbounds %struct.drbd_resource, ptr %1, i32 0, i32 12
  %call5.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %req_lock.i) #13
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 8
  %state.i.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 27
  %4 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state.i.i, align 8
  %susp.i.i = getelementptr inbounds %struct.drbd_resource, ptr %3, i32 0, i32 13
  %6 = ptrtoint ptr %susp.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load.i.i = load i8, ptr %susp.i.i, align 4
  %bf.lshr.i.i = lshr i8 %bf.load.i.i, 7
  %bf.cast.i.i = zext i8 %bf.lshr.i.i to i32
  %bf.shl.i.i = shl nuw nsw i32 %bf.cast.i.i, 17
  %bf.clear.i.i = and i32 %5, -6422529
  %bf.set.i.i = or i32 %bf.shl.i.i, %bf.clear.i.i
  %bf.lshr4.i.i = lshr i8 %bf.load.i.i, 6
  %bf.value8.i.i = zext i8 %bf.lshr4.i.i to i32
  %bf.shl9.i.i = shl nuw nsw i32 %bf.value8.i.i, 21
  %bf.lshr13.i.i = lshr i8 %bf.load.i.i, 5
  %7 = and i8 %bf.lshr13.i.i, 1
  %bf.value17.i.i = zext i8 %7 to i32
  %bf.shl18.i.i = shl nuw nsw i32 %bf.value17.i.i, 22
  %bf.shl9.masked.i.i = and i32 %bf.shl9.i.i, 2097152
  %bf.clear19.i.i = or i32 %bf.set.i.i, %bf.shl9.masked.i.i
  %bf.set20.i.i = or i32 %bf.clear19.i.i, %bf.shl18.i.i
  %mask.coerce.fca.0.extract.i.i = extractvalue [1 x i32] %mask.coerce, 0
  %val.coerce.fca.0.extract.i.i = extractvalue [1 x i32] %val.coerce, 0
  %neg.i.i = xor i32 %mask.coerce.fca.0.extract.i.i, -1
  %and.i.i = and i32 %bf.set20.i.i, %neg.i.i
  %or.i.i = or i32 %and.i.i, %val.coerce.fca.0.extract.i.i
  %.fca.0.insert26.i = insertvalue [1 x i32] poison, i32 %or.i.i, 0
  %call23.i = tail call i32 @_drbd_set_state(ptr noundef %device, [1 x i32] %.fca.0.insert26.i, i32 noundef 1, ptr noundef null) #13
  %8 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device, align 8
  %req_lock25.i = getelementptr inbounds %struct.drbd_resource, ptr %9, i32 0, i32 12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %req_lock25.i, i32 noundef %call5.i) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @_drbd_request_state(ptr noundef %device, [1 x i32] %mask.coerce, [1 x i32] %val.coerce, i32 noundef %f) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 655) #13
  %call = tail call fastcc i32 @drbd_req_state(ptr noundef %device, [1 x i32] %mask.coerce, [1 x i32] %val.coerce, i32 noundef %f)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -18, i32 %call)
  %cmp.not = icmp eq i32 %call, -18
  br i1 %cmp.not, label %if.end, label %entry.do.end23_crit_edge

entry.do.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end23

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #13
  %0 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #13
  %state_wait = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 29
  %call1240 = call i32 @prepare_to_wait_event(ptr noundef %state_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #13
  %call1741 = call fastcc i32 @drbd_req_state(ptr noundef %device, [1 x i32] %mask.coerce, [1 x i32] %val.coerce, i32 noundef %f)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -18, i32 %call1741)
  %cmp18.not42 = icmp eq i32 %call1741, -18
  br i1 %cmp18.not42, label %if.end.cleanup_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  br label %cleanup

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end.cleanup_crit_edge
  call void @schedule() #13
  %call12 = call i32 @prepare_to_wait_event(ptr noundef %state_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #13
  %call17 = call fastcc i32 @drbd_req_state(ptr noundef %device, [1 x i32] %mask.coerce, [1 x i32] %val.coerce, i32 noundef %f)
  %cmp18.not = icmp eq i32 %call17, -18
  br i1 %cmp18.not, label %cleanup.cleanup_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end.for.end_crit_edge
  %call17.lcssa = phi i32 [ %call1741, %if.end.for.end_crit_edge ], [ %call17, %cleanup.for.end_crit_edge ]
  call void @finish_wait(ptr noundef %state_wait, ptr noundef nonnull %__wq_entry) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #13
  br label %do.end23

do.end23:                                         ; preds = %for.end, %entry.do.end23_crit_edge
  %rv.0 = phi i32 [ %call, %entry.do.end23_crit_edge ], [ %call17.lcssa, %for.end ]
  ret i32 %rv.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @drbd_req_state(ptr noundef %device, [1 x i32] %mask.coerce, [1 x i32] %val.coerce, i32 noundef %f) unnamed_addr #0 align 64 {
entry:
  %done = alloca %struct.completion, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %done) #13
  %0 = getelementptr inbounds i8, ptr %done, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 52)
  %2 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %done, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %done, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.42, ptr noundef nonnull @init_completion.__key) #13
  %and = and i32 %f, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %state_mutex = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 94
  %3 = ptrtoint ptr %state_mutex to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %state_mutex, align 4
  call void @mutex_lock_nested(ptr noundef %4, i32 noundef 0) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and4 = and i32 %f, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end.do.body8_crit_edge, label %if.then6

if.end.do.body8_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call = call ptr @drbd_md_get_buffer(ptr noundef %device, ptr noundef nonnull @__func__.drbd_req_state) #13
  br label %do.body8

do.body8:                                         ; preds = %if.then6, %if.end.do.body8_crit_edge
  %buffer.0 = phi ptr [ %call, %if.then6 ], [ null, %if.end.do.body8_crit_edge ]
  %5 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %device, align 8
  %req_lock = getelementptr inbounds %struct.drbd_resource, ptr %6, i32 0, i32 12
  %call10 = call i32 @_raw_spin_lock_irqsave(ptr noundef %req_lock) #13
  %7 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %device, align 8
  %state.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 27
  %9 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %state.i, align 8
  %susp.i = getelementptr inbounds %struct.drbd_resource, ptr %8, i32 0, i32 13
  %11 = ptrtoint ptr %susp.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load.i = load i8, ptr %susp.i, align 4
  %bf.lshr.i = lshr i8 %bf.load.i, 7
  %bf.cast.i = zext i8 %bf.lshr.i to i32
  %bf.shl.i = shl nuw nsw i32 %bf.cast.i, 17
  %bf.clear.i = and i32 %10, -6422529
  %bf.set.i = or i32 %bf.shl.i, %bf.clear.i
  %bf.lshr4.i = lshr i8 %bf.load.i, 6
  %bf.value8.i = zext i8 %bf.lshr4.i to i32
  %bf.shl9.i = shl nuw nsw i32 %bf.value8.i, 21
  %bf.lshr13.i = lshr i8 %bf.load.i, 5
  %12 = and i8 %bf.lshr13.i, 1
  %bf.value17.i = zext i8 %12 to i32
  %bf.shl18.i = shl nuw nsw i32 %bf.value17.i, 22
  %bf.shl9.masked.i = and i32 %bf.shl9.i, 2097152
  %bf.clear19.i = or i32 %bf.set.i, %bf.shl9.masked.i
  %bf.set20.i = or i32 %bf.clear19.i, %bf.shl18.i
  %.fca.0.insert250 = insertvalue [1 x i32] poison, i32 %bf.set20.i, 0
  %mask.coerce.fca.0.extract.i = extractvalue [1 x i32] %mask.coerce, 0
  %val.coerce.fca.0.extract.i = extractvalue [1 x i32] %val.coerce, 0
  %neg.i = xor i32 %mask.coerce.fca.0.extract.i, -1
  %and.i = and i32 %bf.set20.i, %neg.i
  %or.i = or i32 %and.i, %val.coerce.fca.0.extract.i
  %.fca.0.insert208 = insertvalue [1 x i32] poison, i32 %or.i, 0
  %call31 = call fastcc i32 @sanitize_state(ptr noundef %device, [1 x i32] %.fca.0.insert250, [1 x i32] %.fca.0.insert208, ptr noundef null)
  %.fca.0.insert217 = insertvalue [1 x i32] poison, i32 %call31, 0
  %bf.lshr.i349 = lshr i32 %10, 4
  %bf.clear.i350 = and i32 %bf.lshr.i349, 31
  %bf.lshr5.i = lshr i32 %call31, 4
  %bf.clear6.i = and i32 %bf.lshr5.i, 31
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.clear.i350, i32 %bf.clear6.i)
  %cmp.i.i = icmp eq i32 %bf.clear.i350, %bf.clear6.i
  br i1 %cmp.i.i, label %do.body8.is_valid_transition.exit_crit_edge, label %if.end.i.i

do.body8.is_valid_transition.exit_crit_edge:      ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #15
  br label %is_valid_transition.exit

if.end.i.i:                                       ; preds = %do.body8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear.i350)
  %cmp1.i.i = icmp eq i32 %bf.clear.i350, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %bf.clear6.i)
  %cmp2.i.i = icmp eq i32 %bf.clear6.i, 1
  %or.cond.i.i = and i1 %cmp1.i.i, %cmp2.i.i
  br i1 %or.cond.i.i, label %if.end.i.i.is_valid_transition.exit_crit_edge, label %if.end4.i.i

if.end.i.i.is_valid_transition.exit_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %is_valid_transition.exit

if.end4.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %bf.clear6.i)
  %cmp7.not.i.i = icmp ne i32 %bf.clear6.i, 2
  %13 = and i1 %cmp1.i.i, %cmp7.not.i.i
  br i1 %13, label %if.end4.i.i.is_valid_transition.exit_crit_edge, label %if.end9.i.i

if.end4.i.i.is_valid_transition.exit_crit_edge:   ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %is_valid_transition.exit

if.end9.i.i:                                      ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %bf.clear.i350)
  %cmp10.i.i = icmp ult i32 %bf.clear.i350, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %bf.clear6.i)
  %cmp12.i.i = icmp ugt i32 %bf.clear6.i, 9
  %or.cond42.i.i = and i1 %cmp10.i.i, %cmp12.i.i
  br i1 %or.cond42.i.i, label %if.end9.i.i.is_valid_transition.exit_crit_edge, label %if.end14.i.i

if.end9.i.i.is_valid_transition.exit_crit_edge:   ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %is_valid_transition.exit

if.end14.i.i:                                     ; preds = %if.end9.i.i
  %14 = add nsw i32 %bf.clear.i350, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %14)
  %15 = icmp ult i32 %14, -5
  %nc.off.i.i = add nsw i32 %bf.clear6.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %nc.off.i.i)
  %switch.i.i = icmp ult i32 %nc.off.i.i, 2
  %or.cond47.i.i = or i1 %15, %switch.i.i
  br i1 %or.cond47.i.i, label %if.end23.i.i, label %if.end14.i.i.is_valid_transition.exit_crit_edge

if.end14.i.i.is_valid_transition.exit_crit_edge:  ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %is_valid_transition.exit

if.end23.i.i:                                     ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %bf.clear.i350)
  %cmp24.i.i = icmp ne i32 %bf.clear.i350, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear6.i)
  %cmp26.not.i.i = icmp eq i32 %bf.clear6.i, 0
  %or.cond46.i.i = or i1 %cmp24.i.i, %cmp26.not.i.i
  %spec.select.i.i = select i1 %or.cond46.i.i, i32 1, i32 -18
  br label %is_valid_transition.exit

is_valid_transition.exit:                         ; preds = %if.end23.i.i, %if.end14.i.i.is_valid_transition.exit_crit_edge, %if.end9.i.i.is_valid_transition.exit_crit_edge, %if.end4.i.i.is_valid_transition.exit_crit_edge, %if.end.i.i.is_valid_transition.exit_crit_edge, %do.body8.is_valid_transition.exit_crit_edge
  %retval.0.i.i = phi i32 [ 2, %do.body8.is_valid_transition.exit_crit_edge ], [ -9, %if.end.i.i.is_valid_transition.exit_crit_edge ], [ -15, %if.end4.i.i.is_valid_transition.exit_crit_edge ], [ -15, %if.end9.i.i.is_valid_transition.exit_crit_edge ], [ %spec.select.i.i, %if.end23.i.i ], [ -18, %if.end14.i.i.is_valid_transition.exit_crit_edge ]
  %16 = and i32 %call31, 7680
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %16)
  %cmp.i = icmp eq i32 %16, 1024
  %17 = and i32 %10, 7680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp13.i = icmp eq i32 %17, 0
  %or.cond.i = select i1 %cmp.i, i1 %cmp13.i, i1 false
  %rv.0.i = select i1 %or.cond.i, i32 -11, i32 %retval.0.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %rv.0.i)
  %cmp39 = icmp slt i32 %rv.0.i, 1
  br i1 %cmp39, label %if.then41, label %if.end44

if.then41:                                        ; preds = %is_valid_transition.exit
  call void @__sanitizer_cov_trace_pc() #15
  %18 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %device, align 8
  %req_lock43 = getelementptr inbounds %struct.drbd_resource, ptr %19, i32 0, i32 12
  call void @_raw_spin_unlock_irqrestore(ptr noundef %req_lock43, i32 noundef %call10) #13
  br label %abort

if.end44:                                         ; preds = %is_valid_transition.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %bf.clear.i350)
  %cmp.i353 = icmp ugt i32 %bf.clear.i350, 9
  br i1 %cmp.i353, label %land.lhs.true.i, label %entry.lor.lhs.false55_crit_edge.i

entry.lor.lhs.false55_crit_edge.i:                ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  %.pre.i = and i32 %call31, 496
  br label %cl_wide_st_chg.exit

land.lhs.true.i:                                  ; preds = %if.end44
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %bf.clear6.i)
  %cmp7.i = icmp ugt i32 %bf.clear6.i, 9
  br i1 %cmp7.i, label %land.lhs.true8.i, label %land.lhs.true50.i

land.lhs.true8.i:                                 ; preds = %land.lhs.true.i
  %bf.clear10.i = and i32 %10, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %bf.clear10.i)
  %cmp11.not.i = icmp ne i32 %bf.clear10.i, 1
  %bf.clear14.i = and i32 %call31, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %bf.clear14.i)
  %cmp15.i = icmp eq i32 %bf.clear14.i, 1
  %or.cond.i356 = select i1 %cmp11.not.i, i1 %cmp15.i, i1 false
  br i1 %or.cond.i356, label %land.lhs.true8.i.if.then51_crit_edge, label %lor.lhs.false.i

land.lhs.true8.i.if.then51_crit_edge:             ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then51

lor.lhs.false.i:                                  ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %bf.clear.i350)
  %cmp19.not.i = icmp ne i32 %bf.clear.i350, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %bf.clear6.i)
  %cmp24.i = icmp eq i32 %bf.clear6.i, 12
  %or.cond1.i = select i1 %cmp19.not.i, i1 %cmp24.i, i1 false
  br i1 %or.cond1.i, label %lor.lhs.false.i.if.then51_crit_edge, label %lor.lhs.false25.i

lor.lhs.false.i.if.then51_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then51

lor.lhs.false25.i:                                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %bf.clear.i350)
  %cmp29.not.i = icmp ne i32 %bf.clear.i350, 11
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %bf.clear6.i)
  %cmp34.i = icmp eq i32 %bf.clear6.i, 11
  %or.cond2.i = select i1 %cmp29.not.i, i1 %cmp34.i, i1 false
  br i1 %or.cond2.i, label %lor.lhs.false25.i.if.then51_crit_edge, label %lor.lhs.false35.i

lor.lhs.false25.i.if.then51_crit_edge:            ; preds = %lor.lhs.false25.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then51

lor.lhs.false35.i:                                ; preds = %lor.lhs.false25.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %17)
  %cmp39.not.i = icmp ne i32 %17, 1024
  %or.cond3.i = select i1 %cmp39.not.i, i1 %cmp.i, i1 false
  %20 = and i32 %call31, 496
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %20)
  %cmp54.i = icmp eq i32 %20, 16
  %or.cond6.i = select i1 %or.cond3.i, i1 true, i1 %cmp54.i
  br i1 %or.cond6.i, label %lor.lhs.false35.i.if.then51_crit_edge, label %lor.lhs.false35.i.cl_wide_st_chg.exit_crit_edge

lor.lhs.false35.i.cl_wide_st_chg.exit_crit_edge:  ; preds = %lor.lhs.false35.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cl_wide_st_chg.exit

lor.lhs.false35.i.if.then51_crit_edge:            ; preds = %lor.lhs.false35.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then51

land.lhs.true50.i:                                ; preds = %land.lhs.true.i
  %.old.i = and i32 %call31, 496
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %.old.i)
  %cmp54.old.i = icmp eq i32 %.old.i, 16
  br i1 %cmp54.old.i, label %land.lhs.true50.i.if.then51_crit_edge, label %land.lhs.true50.i.cl_wide_st_chg.exit_crit_edge

land.lhs.true50.i.cl_wide_st_chg.exit_crit_edge:  ; preds = %land.lhs.true50.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cl_wide_st_chg.exit

land.lhs.true50.i.if.then51_crit_edge:            ; preds = %land.lhs.true50.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then51

cl_wide_st_chg.exit:                              ; preds = %land.lhs.true50.i.cl_wide_st_chg.exit_crit_edge, %lor.lhs.false35.i.cl_wide_st_chg.exit_crit_edge, %entry.lor.lhs.false55_crit_edge.i
  %.pre-phi.i = phi i32 [ %.pre.i, %entry.lor.lhs.false55_crit_edge.i ], [ %20, %lor.lhs.false35.i.cl_wide_st_chg.exit_crit_edge ], [ %.old.i, %land.lhs.true50.i.cl_wide_st_chg.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %bf.clear.i350)
  %cmp59.i = icmp eq i32 %bf.clear.i350, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 288, i32 %.pre-phi.i)
  %cmp64.i = icmp eq i32 %.pre-phi.i, 288
  %or.cond5.i = select i1 %cmp59.i, i1 %cmp64.i, i1 false
  %cmp59.not.i = xor i1 %cmp59.i, true
  %brmerge.i = or i1 %or.cond5.i, %cmp59.not.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 144, i32 %.pre-phi.i)
  %cmp72.i = icmp eq i32 %.pre-phi.i, 144
  %spec.select.i = select i1 %brmerge.i, i1 %or.cond5.i, i1 %cmp72.i
  br i1 %spec.select.i, label %cl_wide_st_chg.exit.if.then51_crit_edge, label %cl_wide_st_chg.exit.if.end171_crit_edge

cl_wide_st_chg.exit.if.end171_crit_edge:          ; preds = %cl_wide_st_chg.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end171

cl_wide_st_chg.exit.if.then51_crit_edge:          ; preds = %cl_wide_st_chg.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then51

if.then51:                                        ; preds = %cl_wide_st_chg.exit.if.then51_crit_edge, %land.lhs.true50.i.if.then51_crit_edge, %lor.lhs.false35.i.if.then51_crit_edge, %lor.lhs.false25.i.if.then51_crit_edge, %lor.lhs.false.i.if.then51_crit_edge, %land.lhs.true8.i.if.then51_crit_edge
  %call54 = call fastcc i32 @is_valid_state(ptr noundef %device, [1 x i32] %.fca.0.insert217)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call54)
  %cmp55 = icmp eq i32 %call54, 1
  br i1 %cmp55, label %if.then57, label %if.then51.if.end64_crit_edge

if.then51.if.end64_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end64

if.then57:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #15
  %peer_devices.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 1
  %21 = ptrtoint ptr %peer_devices.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %peer_devices.i, align 4
  %cmp.not.i = icmp eq ptr %22, %peer_devices.i
  %spec.select.i357 = select i1 %cmp.not.i, ptr null, ptr %22
  %connection = getelementptr inbounds %struct.drbd_peer_device, ptr %spec.select.i357, i32 0, i32 2
  %23 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %connection, align 4
  %call63 = call fastcc i32 @is_valid_soft_transition([1 x i32] %.fca.0.insert250, [1 x i32] %.fca.0.insert217, ptr noundef %24)
  br label %if.end64

if.end64:                                         ; preds = %if.then57, %if.then51.if.end64_crit_edge
  %rv.0 = phi i32 [ %call63, %if.then57 ], [ %call54, %if.then51.if.end64_crit_edge ]
  %25 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %device, align 8
  %req_lock66 = getelementptr inbounds %struct.drbd_resource, ptr %26, i32 0, i32 12
  call void @_raw_spin_unlock_irqrestore(ptr noundef %req_lock66, i32 noundef %call10) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %rv.0)
  %cmp67 = icmp slt i32 %rv.0, 1
  br i1 %cmp67, label %if.then69, label %if.end78

if.then69:                                        ; preds = %if.end64
  %and70 = and i32 %f, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %if.then69.abort_crit_edge, label %if.then72

if.then69.abort_crit_edge:                        ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #15
  br label %abort

if.then72:                                        ; preds = %if.then69
  call void @__sanitizer_cov_trace_const_cmp4(i32 -18, i32 %rv.0)
  %cmp.i358 = icmp eq i32 %rv.0, -18
  br i1 %cmp.i358, label %if.then72.abort_crit_edge, label %do.end.i

if.then72.abort_crit_edge:                        ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #15
  br label %abort

do.end.i:                                         ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #15
  %vdisk.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %27 = ptrtoint ptr %vdisk.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %vdisk.i, align 4
  %part0.i = getelementptr inbounds %struct.gendisk, ptr %28, i32 0, i32 7
  %29 = ptrtoint ptr %part0.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %part0.i, align 4
  %bd_device.i = getelementptr inbounds %struct.block_device, ptr %30, i32 0, i32 10
  %call.i = call ptr @drbd_set_st_err_str(i32 noundef %rv.0) #13
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %bd_device.i, ptr noundef nonnull @.str.1, ptr noundef %call.i) #17
  call fastcc void @print_st(ptr noundef %device, ptr noundef nonnull @.str.5, [1 x i32] %.fca.0.insert250) #13
  call fastcc void @print_st(ptr noundef %device, ptr noundef nonnull @.str.6, [1 x i32] %.fca.0.insert217) #13
  br label %abort

if.end78:                                         ; preds = %if.end64
  %peer_devices.i359 = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 1
  %31 = ptrtoint ptr %peer_devices.i359 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %peer_devices.i359, align 4
  %cmp.not.i360 = icmp eq ptr %32, %peer_devices.i359
  %spec.select.i361 = select i1 %cmp.not.i360, ptr null, ptr %32
  %call84 = call i32 @drbd_send_state_req(ptr noundef %spec.select.i361, [1 x i32] %mask.coerce, [1 x i32] %val.coerce) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %do.body97, label %if.then86

if.then86:                                        ; preds = %if.end78
  %and87 = and i32 %f, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87)
  %tobool88.not = icmp eq i32 %and87, 0
  br i1 %tobool88.not, label %if.then86.abort_crit_edge, label %if.then89

if.then86.abort_crit_edge:                        ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #15
  br label %abort

if.then89:                                        ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #15
  %vdisk.i362 = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %33 = ptrtoint ptr %vdisk.i362 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %vdisk.i362, align 4
  %part0.i363 = getelementptr inbounds %struct.gendisk, ptr %34, i32 0, i32 7
  %35 = ptrtoint ptr %part0.i363 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %part0.i363, align 4
  %bd_device.i364 = getelementptr inbounds %struct.block_device, ptr %36, i32 0, i32 10
  %call.i365 = call ptr @drbd_set_st_err_str(i32 noundef -10) #13
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %bd_device.i364, ptr noundef nonnull @.str.1, ptr noundef %call.i365) #17
  call fastcc void @print_st(ptr noundef %device, ptr noundef nonnull @.str.5, [1 x i32] %.fca.0.insert250) #13
  call fastcc void @print_st(ptr noundef %device, ptr noundef nonnull @.str.6, [1 x i32] %.fca.0.insert217) #13
  br label %abort

do.body97:                                        ; preds = %if.end78
  call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 608) #13
  %call107 = call fastcc i32 @_req_st_cond(ptr noundef %device, [1 x i32] %mask.coerce, [1 x i32] %val.coerce)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %if.end110, label %do.body97.do.end123_crit_edge

do.body97.do.end123_crit_edge:                    ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end123

if.end110:                                        ; preds = %do.body97
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #13
  %37 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #13
  %state_wait = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 29
  %call111397 = call i32 @prepare_to_wait_event(ptr noundef %state_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #13
  %call116398 = call fastcc i32 @_req_st_cond(ptr noundef %device, [1 x i32] %mask.coerce, [1 x i32] %val.coerce)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116398)
  %tobool117.not399 = icmp eq i32 %call116398, 0
  br i1 %tobool117.not399, label %if.end110.cleanup_crit_edge, label %if.end110.for.end_crit_edge

if.end110.for.end_crit_edge:                      ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end110.cleanup_crit_edge:                      ; preds = %if.end110
  br label %cleanup

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end110.cleanup_crit_edge
  call void @schedule() #13
  %call111 = call i32 @prepare_to_wait_event(ptr noundef %state_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #13
  %call116 = call fastcc i32 @_req_st_cond(ptr noundef %device, [1 x i32] %mask.coerce, [1 x i32] %val.coerce)
  %tobool117.not = icmp eq i32 %call116, 0
  br i1 %tobool117.not, label %cleanup.cleanup_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end110.for.end_crit_edge
  %call116.lcssa = phi i32 [ %call116398, %if.end110.for.end_crit_edge ], [ %call116, %cleanup.for.end_crit_edge ]
  call void @finish_wait(ptr noundef %state_wait, ptr noundef nonnull %__wq_entry) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #13
  br label %do.end123

do.end123:                                        ; preds = %for.end, %do.body97.do.end123_crit_edge
  %rv.1 = phi i32 [ %call107, %do.body97.do.end123_crit_edge ], [ %call116.lcssa, %for.end ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %rv.1)
  %cmp124 = icmp slt i32 %rv.1, 1
  br i1 %cmp124, label %if.then126, label %do.body137

if.then126:                                       ; preds = %do.end123
  %and127 = and i32 %f, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and127)
  %tobool128.not = icmp eq i32 %and127, 0
  br i1 %tobool128.not, label %if.then126.abort_crit_edge, label %if.then129

if.then126.abort_crit_edge:                       ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #15
  br label %abort

if.then129:                                       ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #15
  call void @print_st_err(ptr noundef %device, [1 x i32] %.fca.0.insert250, [1 x i32] %.fca.0.insert217, i32 noundef %rv.1)
  br label %abort

do.body137:                                       ; preds = %do.end123
  call void @__sanitizer_cov_trace_pc() #15
  %38 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %device, align 8
  %req_lock144 = getelementptr inbounds %struct.drbd_resource, ptr %39, i32 0, i32 12
  %call146 = call i32 @_raw_spin_lock_irqsave(ptr noundef %req_lock144) #13
  %40 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %device, align 8
  %42 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %state.i, align 8
  %susp.i368 = getelementptr inbounds %struct.drbd_resource, ptr %41, i32 0, i32 13
  %44 = ptrtoint ptr %susp.i368 to i32
  call void @__asan_load1_noabort(i32 %44)
  %bf.load.i369 = load i8, ptr %susp.i368, align 4
  %bf.lshr.i370 = lshr i8 %bf.load.i369, 7
  %bf.cast.i371 = zext i8 %bf.lshr.i370 to i32
  %bf.shl.i372 = shl nuw nsw i32 %bf.cast.i371, 17
  %bf.clear.i373 = and i32 %43, -6422529
  %bf.set.i374 = or i32 %bf.shl.i372, %bf.clear.i373
  %bf.lshr4.i375 = lshr i8 %bf.load.i369, 6
  %bf.value8.i376 = zext i8 %bf.lshr4.i375 to i32
  %bf.shl9.i377 = shl nuw nsw i32 %bf.value8.i376, 21
  %bf.lshr13.i378 = lshr i8 %bf.load.i369, 5
  %45 = and i8 %bf.lshr13.i378, 1
  %bf.value17.i379 = zext i8 %45 to i32
  %bf.shl18.i380 = shl nuw nsw i32 %bf.value17.i379, 22
  %bf.shl9.masked.i381 = and i32 %bf.shl9.i377, 2097152
  %bf.clear19.i382 = or i32 %bf.set.i374, %bf.shl9.masked.i381
  %bf.set20.i383 = or i32 %bf.clear19.i382, %bf.shl18.i380
  %and.i387 = and i32 %bf.set20.i383, %neg.i
  %or.i388 = or i32 %and.i387, %val.coerce.fca.0.extract.i
  %.fca.0.insert238 = insertvalue [1 x i32] poison, i32 %or.i388, 0
  br label %if.end171

if.end171:                                        ; preds = %do.body137, %cl_wide_st_chg.exit.if.end171_crit_edge
  %.fca.0.insert217.sink = phi [1 x i32] [ %.fca.0.insert238, %do.body137 ], [ %.fca.0.insert217, %cl_wide_st_chg.exit.if.end171_crit_edge ]
  %flags.0 = phi i32 [ %call146, %do.body137 ], [ %call10, %cl_wide_st_chg.exit.if.end171_crit_edge ]
  %call170 = call i32 @_drbd_set_state(ptr noundef %device, [1 x i32] %.fca.0.insert217.sink, i32 noundef %f, ptr noundef nonnull %done)
  %46 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %device, align 8
  %req_lock173 = getelementptr inbounds %struct.drbd_resource, ptr %47, i32 0, i32 12
  call void @_raw_spin_unlock_irqrestore(ptr noundef %req_lock173, i32 noundef %flags.0) #13
  %and174 = and i32 %f, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and174)
  %tobool175.not = icmp ne i32 %and174, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call170)
  %cmp176 = icmp eq i32 %call170, 1
  %or.cond = select i1 %tobool175.not, i1 %cmp176, i1 false
  br i1 %or.cond, label %do.body179, label %if.end171.abort_crit_edge

if.end171.abort_crit_edge:                        ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #15
  br label %abort

do.body179:                                       ; preds = %if.end171
  %48 = call i32 @llvm.read_register.i32(metadata !175) #13
  %and.i389 = and i32 %48, -16384
  %49 = inttoptr i32 %and.i389 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %task, align 8
  %peer_devices.i390 = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 1
  %52 = ptrtoint ptr %peer_devices.i390 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile ptr, ptr %peer_devices.i390, align 4
  %cmp.not.i391 = icmp eq ptr %53, %peer_devices.i390
  %spec.select.i392 = select i1 %cmp.not.i391, ptr null, ptr %53
  %connection182 = getelementptr inbounds %struct.drbd_peer_device, ptr %spec.select.i392, i32 0, i32 2
  %54 = ptrtoint ptr %connection182 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %connection182, align 4
  %task183 = getelementptr inbounds %struct.drbd_connection, ptr %55, i32 0, i32 39, i32 1
  %56 = ptrtoint ptr %task183 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %task183, align 4
  %cmp184.not = icmp eq ptr %51, %57
  br i1 %cmp184.not, label %do.end189, label %do.body179.do.end192_crit_edge

do.body179.do.end192_crit_edge:                   ; preds = %do.body179
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end192

do.end189:                                        ; preds = %do.body179
  call void @__sanitizer_cov_trace_pc() #15
  %vdisk = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %58 = ptrtoint ptr %vdisk to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %vdisk, align 4
  %part0 = getelementptr inbounds %struct.gendisk, ptr %59, i32 0, i32 7
  %60 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %part0, align 4
  %bd_device = getelementptr inbounds %struct.block_device, ptr %61, i32 0, i32 10
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %bd_device, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str, i32 noundef 625) #17
  br label %do.end192

do.end192:                                        ; preds = %do.end189, %do.body179.do.end192_crit_edge
  call void @wait_for_completion(ptr noundef nonnull %done) #13
  br label %abort

abort:                                            ; preds = %do.end192, %if.end171.abort_crit_edge, %if.then129, %if.then126.abort_crit_edge, %if.then89, %if.then86.abort_crit_edge, %do.end.i, %if.then72.abort_crit_edge, %if.then69.abort_crit_edge, %if.then41
  %rv.3 = phi i32 [ %rv.0.i, %if.then41 ], [ %rv.0, %if.then69.abort_crit_edge ], [ -10, %if.then89 ], [ -10, %if.then86.abort_crit_edge ], [ %rv.1, %if.then129 ], [ %rv.1, %if.then126.abort_crit_edge ], [ 1, %do.end192 ], [ %call170, %if.end171.abort_crit_edge ], [ -18, %if.then72.abort_crit_edge ], [ %rv.0, %do.end.i ]
  %tobool194.not = icmp eq ptr %buffer.0, null
  br i1 %tobool194.not, label %abort.if.end196_crit_edge, label %if.then195

abort.if.end196_crit_edge:                        ; preds = %abort
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end196

if.then195:                                       ; preds = %abort
  call void @__sanitizer_cov_trace_pc() #15
  call void @drbd_md_put_buffer(ptr noundef %device) #13
  br label %if.end196

if.end196:                                        ; preds = %if.then195, %abort.if.end196_crit_edge
  br i1 %tobool.not, label %if.end196.if.end201_crit_edge, label %if.then199

if.end196.if.end201_crit_edge:                    ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end201

if.then199:                                       ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #15
  %state_mutex200 = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 94
  %62 = ptrtoint ptr %state_mutex200 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %state_mutex200, align 4
  call void @mutex_unlock(ptr noundef %63) #13
  br label %if.end201

if.end201:                                        ; preds = %if.then199, %if.end196.if.end201_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %done) #13
  ret i32 %rv.3
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
define dso_local i32 @drbd_request_detach_interruptible(ptr noundef %device) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  %__wq_entry23 = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @drbd_suspend_io(ptr noundef %device) #13
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 685) #13
  %call.i = tail call fastcc i32 @drbd_req_state(ptr noundef %device, [1 x i32] [i32 7680], [1 x i32] [i32 1024], i32 noundef 4110) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -18, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, -18
  br i1 %cmp.not, label %if.then, label %entry.if.end12_crit_edge

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #13
  %0 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #13
  %state_wait = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 29
  %call596 = call i32 @prepare_to_wait_event(ptr noundef %state_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #13
  %call.i6997 = call fastcc i32 @drbd_req_state(ptr noundef %device, [1 x i32] [i32 7680], [1 x i32] [i32 1024], i32 noundef 4110) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -18, i32 %call.i6997)
  %cmp7.not98 = icmp eq i32 %call.i6997, -18
  br i1 %cmp7.not98, label %if.then.if.end_crit_edge, label %if.then.for.end_crit_edge

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.then.if.end_crit_edge:                         ; preds = %if.then
  br label %if.end

if.end:                                           ; preds = %cleanup.if.end_crit_edge, %if.then.if.end_crit_edge
  %call599 = phi i32 [ %call5, %cleanup.if.end_crit_edge ], [ %call596, %if.then.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call599)
  %tobool.not = icmp eq i32 %call599, 0
  br i1 %tobool.not, label %cleanup, label %if.end.__out_crit_edge

if.end.__out_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %__out

cleanup:                                          ; preds = %if.end
  call void @schedule() #13
  %call5 = call i32 @prepare_to_wait_event(ptr noundef %state_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #13
  %call.i69 = call fastcc i32 @drbd_req_state(ptr noundef %device, [1 x i32] [i32 7680], [1 x i32] [i32 1024], i32 noundef 4110) #13
  %cmp7.not = icmp eq i32 %call.i69, -18
  br i1 %cmp7.not, label %cleanup.if.end_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

cleanup.if.end_crit_edge:                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then.for.end_crit_edge
  %call.i69.lcssa = phi i32 [ %call.i6997, %if.then.for.end_crit_edge ], [ %call.i69, %cleanup.for.end_crit_edge ]
  call void @finish_wait(ptr noundef %state_wait, ptr noundef nonnull %__wq_entry) #13
  br label %__out

__out:                                            ; preds = %for.end, %if.end.__out_crit_edge
  %call.i6994 = phi i32 [ %call.i69.lcssa, %for.end ], [ -18, %if.end.__out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #13
  br label %if.end12

if.end12:                                         ; preds = %__out, %entry.if.end12_crit_edge
  %rv.0 = phi i32 [ %call.i, %entry.if.end12_crit_edge ], [ %call.i6994, %__out ]
  call void @drbd_resume_io(ptr noundef %device) #13
  call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 689) #13
  %state = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 27
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %1)
  %bf.load = load i32, ptr %state, align 8
  %2 = and i32 %bf.load, 7680
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %2)
  %cmp21.not = icmp eq i32 %2, 1024
  br i1 %cmp21.not, label %if.then22, label %if.end45.thread

if.end45.thread:                                  ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %rv.0)
  %cmp4783 = icmp eq i32 %rv.0, -11
  %spec.store.select84 = select i1 %cmp4783, i32 2, i32 %rv.0
  br label %8

if.then22:                                        ; preds = %if.end12
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry23) #13
  %3 = call ptr @memset(ptr %__wq_entry23, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry23, i32 noundef 0) #13
  %misc_wait = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 28
  %call27102 = call i32 @prepare_to_wait_event(ptr noundef %misc_wait, ptr noundef nonnull %__wq_entry23, i32 noundef 1) #13
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %bf.load29103 = load i32, ptr %state, align 8
  %5 = and i32 %bf.load29103, 7680
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %5)
  %cmp32.not104 = icmp eq i32 %5, 1024
  br i1 %cmp32.not104, label %if.then22.if.end34_crit_edge, label %if.then22.if.end45.thread87_crit_edge

if.then22.if.end45.thread87_crit_edge:            ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end45.thread87

if.then22.if.end34_crit_edge:                     ; preds = %if.then22
  br label %if.end34

if.end34:                                         ; preds = %cleanup38.if.end34_crit_edge, %if.then22.if.end34_crit_edge
  %call27105 = phi i32 [ %call27, %cleanup38.if.end34_crit_edge ], [ %call27102, %if.then22.if.end34_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27105)
  %tobool35.not = icmp eq i32 %call27105, 0
  br i1 %tobool35.not, label %cleanup38, label %if.end45

cleanup38:                                        ; preds = %if.end34
  call void @schedule() #13
  %call27 = call i32 @prepare_to_wait_event(ptr noundef %misc_wait, ptr noundef nonnull %__wq_entry23, i32 noundef 1) #13
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %bf.load29 = load i32, ptr %state, align 8
  %7 = and i32 %bf.load29, 7680
  %cmp32.not = icmp eq i32 %7, 1024
  br i1 %cmp32.not, label %cleanup38.if.end34_crit_edge, label %cleanup38.if.end45.thread87_crit_edge

cleanup38.if.end45.thread87_crit_edge:            ; preds = %cleanup38
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end45.thread87

cleanup38.if.end34_crit_edge:                     ; preds = %cleanup38
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34

if.end45.thread87:                                ; preds = %cleanup38.if.end45.thread87_crit_edge, %if.then22.if.end45.thread87_crit_edge
  call void @finish_wait(ptr noundef %misc_wait, ptr noundef nonnull %__wq_entry23) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry23) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %rv.0)
  %cmp4789 = icmp eq i32 %rv.0, -11
  %spec.store.select90 = select i1 %cmp4789, i32 2, i32 %rv.0
  br label %8

if.end45:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry23) #13
  br label %8

8:                                                ; preds = %if.end45, %if.end45.thread87, %if.end45.thread
  %9 = phi i32 [ 129, %if.end45 ], [ %spec.store.select84, %if.end45.thread ], [ %spec.store.select90, %if.end45.thread87 ]
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drbd_suspend_io(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drbd_resume_io(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @_drbd_request_state_holding_state_mutex(ptr noundef %device, [1 x i32] %mask.coerce, [1 x i32] %val.coerce, i32 noundef %f) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %f, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body12, label %do.body6, !prof !188

do.body6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/block/drbd/drbd_state.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 705, 0\0A.popsection", ""() #13, !srcloc !199
  unreachable

do.body12:                                        ; preds = %entry
  %call = tail call fastcc i32 @drbd_req_state(ptr noundef %device, [1 x i32] %mask.coerce, [1 x i32] %val.coerce, i32 noundef %f)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -18, i32 %call)
  %cmp.not = icmp eq i32 %call, -18
  br i1 %cmp.not, label %if.end18, label %do.body12.do.end31_crit_edge

do.body12.do.end31_crit_edge:                     ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end31

if.end18:                                         ; preds = %do.body12
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #13
  %0 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #13
  %state_wait = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 29
  %call1951 = call i32 @prepare_to_wait_event(ptr noundef %state_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #13
  %call2452 = call fastcc i32 @drbd_req_state(ptr noundef %device, [1 x i32] %mask.coerce, [1 x i32] %val.coerce, i32 noundef %f)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -18, i32 %call2452)
  %cmp25.not53 = icmp eq i32 %call2452, -18
  br i1 %cmp25.not53, label %cleanup.lr.ph, label %if.end18.for.end_crit_edge

if.end18.for.end_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

cleanup.lr.ph:                                    ; preds = %if.end18
  %state_mutex = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 94
  br label %cleanup

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %cleanup.lr.ph
  %1 = ptrtoint ptr %state_mutex to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %state_mutex, align 4
  call void @mutex_unlock(ptr noundef %2) #13
  call void @schedule() #13
  %3 = ptrtoint ptr %state_mutex to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %state_mutex, align 4
  call void @mutex_lock_nested(ptr noundef %4, i32 noundef 0) #13
  %call19 = call i32 @prepare_to_wait_event(ptr noundef %state_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #13
  %call24 = call fastcc i32 @drbd_req_state(ptr noundef %device, [1 x i32] %mask.coerce, [1 x i32] %val.coerce, i32 noundef %f)
  %cmp25.not = icmp eq i32 %call24, -18
  br i1 %cmp25.not, label %cleanup.cleanup_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end18.for.end_crit_edge
  %call24.lcssa = phi i32 [ %call2452, %if.end18.for.end_crit_edge ], [ %call24, %cleanup.for.end_crit_edge ]
  call void @finish_wait(ptr noundef %state_wait, ptr noundef nonnull %__wq_entry) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #13
  br label %do.end31

do.end31:                                         ; preds = %for.end, %do.body12.do.end31_crit_edge
  %rv.0 = phi i32 [ %call, %do.body12.do.end31_crit_edge ], [ %call24.lcssa, %for.end ]
  ret i32 %rv.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @print_st_err(ptr nocapture noundef readonly %device, [1 x i32] %os.coerce, [1 x i32] %ns.coerce, i32 noundef %err) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -18, i32 %err)
  %cmp = icmp eq i32 %err, -18
  br i1 %cmp, label %entry.return_crit_edge, label %do.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %vdisk = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %0 = ptrtoint ptr %vdisk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdisk, align 4
  %part0 = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %part0, align 4
  %bd_device = getelementptr inbounds %struct.block_device, ptr %3, i32 0, i32 10
  %call = tail call ptr @drbd_set_st_err_str(i32 noundef %err) #13
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %bd_device, ptr noundef nonnull @.str.1, ptr noundef %call) #17
  tail call fastcc void @print_st(ptr noundef %device, ptr noundef nonnull @.str.5, [1 x i32] %os.coerce)
  tail call fastcc void @print_st(ptr noundef %device, ptr noundef nonnull @.str.6, [1 x i32] %ns.coerce)
  br label %return

return:                                           ; preds = %do.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drbd_set_st_err_str(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @print_st(ptr nocapture noundef readonly %device, ptr noundef %name, [1 x i32] %ns.coerce) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ns.coerce.fca.0.extract = extractvalue [1 x i32] %ns.coerce, 0
  %vdisk = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %0 = ptrtoint ptr %vdisk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdisk, align 4
  %part0 = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %part0, align 4
  %bd_device = getelementptr inbounds %struct.block_device, ptr %3, i32 0, i32 10
  %bf.lshr = lshr i32 %ns.coerce.fca.0.extract, 4
  %bf.clear = and i32 %bf.lshr, 31
  %call = tail call ptr @drbd_conn_str(i32 noundef %bf.clear) #13
  %bf.clear3 = and i32 %ns.coerce.fca.0.extract, 3
  %call4 = tail call ptr @drbd_role_str(i32 noundef %bf.clear3) #13
  %bf.lshr6 = lshr i32 %ns.coerce.fca.0.extract, 2
  %bf.clear7 = and i32 %bf.lshr6, 3
  %call8 = tail call ptr @drbd_role_str(i32 noundef %bf.clear7) #13
  %bf.lshr10 = lshr i32 %ns.coerce.fca.0.extract, 9
  %bf.clear11 = and i32 %bf.lshr10, 15
  %call12 = tail call ptr @drbd_disk_str(i32 noundef %bf.clear11) #13
  %bf.lshr14 = lshr i32 %ns.coerce.fca.0.extract, 13
  %bf.clear15 = and i32 %bf.lshr14, 15
  %call16 = tail call ptr @drbd_disk_str(i32 noundef %bf.clear15) #13
  %4 = and i32 %ns.coerce.fca.0.extract, 6422528
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %.not = icmp eq i32 %4, 0
  %cond = select i1 %.not, i32 114, i32 115
  %5 = and i32 %ns.coerce.fca.0.extract, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %cond23 = select i1 %tobool.not, i32 45, i32 97
  %6 = and i32 %ns.coerce.fca.0.extract, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool27.not = icmp eq i32 %6, 0
  %cond28 = select i1 %tobool27.not, i32 45, i32 112
  %7 = and i32 %ns.coerce.fca.0.extract, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool32.not = icmp eq i32 %7, 0
  %cond33 = select i1 %tobool32.not, i32 45, i32 117
  %8 = and i32 %ns.coerce.fca.0.extract, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool37.not = icmp eq i32 %8, 0
  %cond38 = select i1 %tobool37.not, i32 45, i32 70
  %9 = and i32 %ns.coerce.fca.0.extract, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool42.not = icmp eq i32 %9, 0
  %cond43 = select i1 %tobool42.not, i32 45, i32 78
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %bd_device, ptr noundef nonnull @.str.43, ptr noundef %name, ptr noundef %call, ptr noundef %call4, ptr noundef %call8, ptr noundef %call12, ptr noundef %call16, i32 noundef %cond, i32 noundef %cond23, i32 noundef %cond28, i32 noundef %cond33, i32 noundef %cond38, i32 noundef %cond43) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drbd_resume_al(ptr noundef %device) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 14
  %call = tail call i32 @_test_and_clear_bit(i32 noundef 16, ptr noundef %flags) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %vdisk = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %0 = ptrtoint ptr %vdisk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdisk, align 4
  %part0 = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %part0, align 4
  %bd_device = getelementptr inbounds %struct.block_device, ptr %3, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %bd_device, ptr noundef nonnull @.str.7) #17
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sanitize_state(ptr noundef %device, [1 x i32] %os.coerce, [1 x i32] %ns.coerce, ptr noundef writeonly %warn) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %os.coerce.fca.0.extract = extractvalue [1 x i32] %os.coerce, 0
  %ns.coerce.fca.0.extract = extractvalue [1 x i32] %ns.coerce, 0
  %tobool.not = icmp eq ptr %warn, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %0 = ptrtoint ptr %warn to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %warn, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %state.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 27
  %1 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %bf.load.i = load i32, ptr %state.i, align 8
  %2 = and i32 %bf.load.i, 7680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.i = icmp eq i32 %2, 0
  br i1 %cmp.i, label %if.end.if.end20_crit_edge, label %if.end.i

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

if.end.i:                                         ; preds = %if.end
  %local_cnt.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 41
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %local_cnt.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %local_cnt.i, i32 1, i32 3, i32 1) #13
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %local_cnt.i, ptr %local_cnt.i, i32 1, ptr elementtype(i32) %local_cnt.i) #13, !srcloc !196
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %bf.load2.i = load i32, ptr %state.i, align 8
  %5 = and i32 %bf.load2.i, 6144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp5.not.i = icmp eq i32 %5, 0
  br i1 %cmp5.not.i, label %if.then6.i, label %if.then6

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @put_ldev(ptr noundef %device) #13
  br label %if.end20

if.then6:                                         ; preds = %if.end.i
  %6 = tail call i32 @llvm.read_register.i32(metadata !175) #13
  %and.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %9, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !189
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %if.then6.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.then6.rcu_read_lock.exit_crit_edge:            ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.then6
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 696, ptr noundef nonnull @.str.39) #13
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.then6.rcu_read_lock.exit_crit_edge
  %ldev = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 15
  %10 = ptrtoint ptr %ldev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ldev, align 4
  %disk_conf = getelementptr inbounds %struct.drbd_backing_dev, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %disk_conf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %disk_conf, align 8
  %call9 = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end18_crit_edge

rcu_read_lock.exit.do.end18_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end18

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call11 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %land.lhs.true.do.end18_crit_edge, label %land.lhs.true13

land.lhs.true.do.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end18

land.lhs.true13:                                  ; preds = %land.lhs.true
  %.b440 = load i1, ptr @sanitize_state.__warned, align 1
  br i1 %.b440, label %land.lhs.true13.do.end18_crit_edge, label %if.then15

land.lhs.true13.do.end18_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end18

if.then15:                                        ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @sanitize_state.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1064, ptr noundef nonnull @.str.45) #13
  br label %do.end18

do.end18:                                         ; preds = %if.then15, %land.lhs.true13.do.end18_crit_edge, %land.lhs.true.do.end18_crit_edge, %rcu_read_lock.exit.do.end18_crit_edge
  %fencing = getelementptr inbounds %struct.disk_conf, ptr %13, i32 0, i32 8
  %14 = ptrtoint ptr %fencing to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fencing, align 8
  %call.i460 = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i460, label %do.end18.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i463

do.end18.rcu_read_unlock.exit_crit_edge:          ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true.i463:                               ; preds = %do.end18
  %call1.i461 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i461)
  %tobool.not.i462 = icmp eq i32 %call1.i461, 0
  br i1 %tobool.not.i462, label %land.lhs.true.i463.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i465

land.lhs.true.i463.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i463
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true2.i465:                              ; preds = %land.lhs.true.i463
  %.b4.i464 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i464, label %land.lhs.true2.i465.rcu_read_unlock.exit_crit_edge, label %if.then.i466

land.lhs.true2.i465.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i465
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

if.then.i466:                                     ; preds = %land.lhs.true2.i465
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 724, ptr noundef nonnull @.str.40) #13
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i466, %land.lhs.true2.i465.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i463.rcu_read_unlock.exit_crit_edge, %do.end18.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !190
  %16 = tail call i32 @llvm.read_register.i32(metadata !175) #13
  %and.i.i.i.i.i467 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i467 to ptr
  %preempt_count.i.i.i.i468 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i.i468 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i.i468, align 4
  %sub.i.i.i = add i32 %19, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i468, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  tail call fastcc void @put_ldev(ptr noundef %device)
  br label %if.end20

if.end20:                                         ; preds = %rcu_read_unlock.exit, %if.then6.i, %if.end.if.end20_crit_edge
  %fp.0 = phi i32 [ %15, %rcu_read_unlock.exit ], [ 0, %if.end.if.end20_crit_edge ], [ 0, %if.then6.i ]
  %20 = and i32 %ns.coerce.fca.0.extract, 480
  call void @__sanitizer_cov_trace_const_cmp4(i32 160, i32 %20)
  %cmp = icmp ult i32 %20, 160
  br i1 %cmp, label %if.then21, label %if.end20.if.end40_crit_edge

if.end20.if.end40_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40

if.then21:                                        ; preds = %if.end20
  %bf.lshr28 = lshr i32 %ns.coerce.fca.0.extract, 13
  %bf.clear29 = and i32 %bf.lshr28, 15
  %bf.clear25 = and i32 %ns.coerce.fca.0.extract, -524301
  %21 = add nsw i32 %bf.clear29, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %21)
  %22 = icmp ult i32 %21, -3
  br i1 %22, label %if.then35, label %if.then21.if.end40_crit_edge

if.then21.if.end40_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40

if.then35:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #15
  %bf.clear37 = and i32 %ns.coerce.fca.0.extract, -647181
  %bf.set38 = or i32 %bf.clear37, 49152
  br label %if.end40

if.end40:                                         ; preds = %if.then35, %if.then21.if.end40_crit_edge, %if.end20.if.end40_crit_edge
  %ns.sroa.0.0 = phi i32 [ %bf.set38, %if.then35 ], [ %ns.coerce.fca.0.extract, %if.end20.if.end40_crit_edge ], [ %bf.clear25, %if.then21.if.end40_crit_edge ]
  %23 = and i32 %ns.sroa.0.0, 8179
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %24 = icmp eq i32 %23, 2
  %bf.clear56 = and i32 %ns.sroa.0.0, -262145
  %ns.sroa.0.1 = select i1 %24, i32 %bf.clear56, i32 %ns.sroa.0.0
  %25 = and i32 %ns.sroa.0.1, 496
  call void @__sanitizer_cov_trace_const_cmp4(i32 160, i32 %25)
  %cmp62 = icmp ugt i32 %25, 160
  br i1 %cmp62, label %land.lhs.true63, label %if.end40.if.end88_crit_edge

if.end40.if.end88_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end88

land.lhs.true63:                                  ; preds = %if.end40
  %26 = and i32 %ns.sroa.0.1, 7680
  call void @__sanitizer_cov_trace_const_cmp4(i32 1536, i32 %26)
  %cmp67 = icmp ult i32 %26, 1536
  %27 = and i32 %ns.sroa.0.1, 122880
  call void @__sanitizer_cov_trace_const_cmp4(i32 24576, i32 %27)
  %cmp72 = icmp ult i32 %27, 24576
  %or.cond443 = or i1 %cmp67, %cmp72
  br i1 %or.cond443, label %if.then73, label %land.lhs.true63.if.end88_crit_edge

land.lhs.true63.if.end88_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end88

if.then73:                                        ; preds = %land.lhs.true63
  br i1 %tobool.not, label %if.then73.if.end84_crit_edge, label %if.then75

if.then73.if.end84_crit_edge:                     ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end84

if.then75:                                        ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #15
  %28 = and i32 %ns.sroa.0.1, 480
  call void @__sanitizer_cov_trace_const_cmp4(i32 288, i32 %28)
  %29 = icmp eq i32 %28, 288
  %cond = select i1 %29, i32 1, i32 2
  %30 = ptrtoint ptr %warn to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %cond, ptr %warn, align 4
  br label %if.end84

if.end84:                                         ; preds = %if.then75, %if.then73.if.end84_crit_edge
  %bf.clear86 = and i32 %ns.sroa.0.1, -497
  %bf.set87 = or i32 %bf.clear86, 160
  br label %if.end88

if.end88:                                         ; preds = %if.end84, %land.lhs.true63.if.end88_crit_edge, %if.end40.if.end88_crit_edge
  %ns.sroa.0.2 = phi i32 [ %bf.set87, %if.end84 ], [ %ns.sroa.0.1, %if.end40.if.end88_crit_edge ], [ %ns.sroa.0.1, %land.lhs.true63.if.end88_crit_edge ]
  %31 = and i32 %ns.sroa.0.2, 480
  call void @__sanitizer_cov_trace_const_cmp4(i32 160, i32 %31)
  %cmp92 = icmp ult i32 %31, 160
  %32 = and i32 %ns.sroa.0.2, 7680
  call void @__sanitizer_cov_trace_const_cmp4(i32 1536, i32 %32)
  %cmp97 = icmp eq i32 %32, 1536
  %or.cond444 = and i1 %cmp92, %cmp97
  br i1 %or.cond444, label %land.lhs.true98, label %if.end88.if.end134_crit_edge

if.end88.if.end134_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end134

land.lhs.true98:                                  ; preds = %if.end88
  %33 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %bf.load.i470 = load i32, ptr %state.i, align 8
  %34 = and i32 %bf.load.i470, 7680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp.i471 = icmp eq i32 %34, 0
  br i1 %cmp.i471, label %land.lhs.true98.if.end134_crit_edge, label %if.end.i478

land.lhs.true98.if.end134_crit_edge:              ; preds = %land.lhs.true98
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end134

if.end.i478:                                      ; preds = %land.lhs.true98
  %local_cnt.i472 = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 41
  %call.i.i.i473 = tail call zeroext i1 @__kasan_check_write(ptr noundef %local_cnt.i472, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %local_cnt.i472, i32 1, i32 3, i32 1) #13
  %35 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %local_cnt.i472, ptr %local_cnt.i472, i32 1, ptr elementtype(i32) %local_cnt.i472) #13, !srcloc !196
  %36 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %bf.load2.i474 = load i32, ptr %state.i, align 8
  %37 = and i32 %bf.load2.i474, 7680
  call void @__sanitizer_cov_trace_const_cmp4(i32 1536, i32 %37)
  %cmp5.not.i477 = icmp ult i32 %37, 1536
  br i1 %cmp5.not.i477, label %if.then6.i479, label %if.then105

if.then6.i479:                                    ; preds = %if.end.i478
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @put_ldev(ptr noundef %device) #13
  br label %if.end134

if.then105:                                       ; preds = %if.end.i478
  %ed_uuid = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 92
  %38 = ptrtoint ptr %ed_uuid to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %ed_uuid, align 8
  %ldev106 = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 15
  %40 = ptrtoint ptr %ldev106 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ldev106, align 4
  %uuid = getelementptr inbounds %struct.drbd_backing_dev, ptr %41, i32 0, i32 2, i32 3
  %42 = ptrtoint ptr %uuid to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %uuid, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %39, i64 %43)
  %cmp107 = icmp eq i64 %39, %43
  br i1 %cmp107, label %if.then108, label %if.else

if.then108:                                       ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #15
  %new_state_tmp = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 26
  %44 = ptrtoint ptr %new_state_tmp to i32
  call void @__asan_load4_noabort(i32 %44)
  %bf.load109 = load i32, ptr %new_state_tmp, align 4
  %bf.clear111 = and i32 %bf.load109, 7680
  %bf.clear113 = and i32 %ns.sroa.0.2, -130561
  %bf.set114 = or i32 %bf.clear111, %bf.clear113
  %bf.clear118 = and i32 %bf.load109, 122880
  %bf.set123 = or i32 %bf.set114, %bf.clear118
  br label %if.end133

if.else:                                          ; preds = %if.then105
  br i1 %tobool.not, label %if.else.if.end126_crit_edge, label %if.then125

if.else.if.end126_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end126

if.then125:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %45 = ptrtoint ptr %warn to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 3, ptr %warn, align 4
  br label %if.end126

if.end126:                                        ; preds = %if.then125, %if.else.if.end126_crit_edge
  %bf.clear131 = and i32 %ns.sroa.0.2, -130561
  %bf.set132 = or i32 %bf.clear131, 49152
  br label %if.end133

if.end133:                                        ; preds = %if.end126, %if.then108
  %ns.sroa.0.3 = phi i32 [ %bf.set123, %if.then108 ], [ %bf.set132, %if.end126 ]
  tail call fastcc void @put_ldev(ptr noundef %device)
  br label %if.end134

if.end134:                                        ; preds = %if.end133, %if.then6.i479, %land.lhs.true98.if.end134_crit_edge, %if.end88.if.end134_crit_edge
  %ns.sroa.0.4 = phi i32 [ %ns.sroa.0.3, %if.end133 ], [ %ns.sroa.0.2, %if.end88.if.end134_crit_edge ], [ %ns.sroa.0.2, %land.lhs.true98.if.end134_crit_edge ], [ %ns.sroa.0.2, %if.then6.i479 ]
  %bf.lshr136 = lshr i32 %ns.sroa.0.4, 4
  %bf.clear137 = and i32 %bf.lshr136, 31
  %46 = add nsw i32 %bf.clear137, -10
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %46)
  %47 = icmp ult i32 %46, 12
  br i1 %47, label %if.then144, label %if.end134.if.end173_crit_edge

if.end134.if.end173_crit_edge:                    ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end173

if.then144:                                       ; preds = %if.end134
  %bf.lshr146 = lshr i32 %ns.sroa.0.4, 9
  %bf.clear147 = and i32 %bf.lshr146, 15
  %48 = zext i32 %bf.clear147 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %bf.clear147, label %if.then144.if.end158_crit_edge [
    i32 7, label %if.then144.if.then154_crit_edge
    i32 5, label %if.then144.if.then154_crit_edge494
  ]

if.then144.if.then154_crit_edge494:               ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then154

if.then144.if.then154_crit_edge:                  ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then154

if.then144.if.end158_crit_edge:                   ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end158

if.then154:                                       ; preds = %if.then144.if.then154_crit_edge, %if.then144.if.then154_crit_edge494
  %bf.clear156 = and i32 %ns.sroa.0.4, -7681
  %bf.set157 = or i32 %bf.clear156, 4096
  br label %if.end158

if.end158:                                        ; preds = %if.then154, %if.then144.if.end158_crit_edge
  %ns.sroa.0.5 = phi i32 [ %bf.set157, %if.then154 ], [ %ns.sroa.0.4, %if.then144.if.end158_crit_edge ]
  %bf.lshr160 = lshr i32 %ns.sroa.0.5, 13
  %bf.clear161 = and i32 %bf.lshr160, 15
  %49 = zext i32 %bf.clear161 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.89)
  switch i32 %bf.clear161, label %if.end158.if.end173_crit_edge [
    i32 7, label %if.end158.if.then168_crit_edge
    i32 5, label %if.end158.if.then168_crit_edge495
  ]

if.end158.if.then168_crit_edge495:                ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then168

if.end158.if.then168_crit_edge:                   ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then168

if.end158.if.end173_crit_edge:                    ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end173

if.then168:                                       ; preds = %if.end158.if.then168_crit_edge, %if.end158.if.then168_crit_edge495
  %bf.clear170 = and i32 %ns.sroa.0.5, -122881
  %bf.set171 = or i32 %bf.clear170, 65536
  br label %if.end173

if.end173:                                        ; preds = %if.then168, %if.end158.if.end173_crit_edge, %if.end134.if.end173_crit_edge
  %ns.sroa.0.6 = phi i32 [ %bf.set171, %if.then168 ], [ %ns.sroa.0.4, %if.end134.if.end173_crit_edge ], [ %ns.sroa.0.5, %if.end158.if.end173_crit_edge ]
  %bf.lshr175 = lshr i32 %ns.sroa.0.6, 4
  %bf.clear176 = and i32 %bf.lshr175, 31
  %switch.tableidx = add nsw i32 %bf.clear176, -10
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %switch.tableidx)
  %50 = icmp ult i32 %switch.tableidx, 14
  br i1 %50, label %switch.lookup, label %if.end173.sw.epilog_crit_edge

if.end173.sw.epilog_crit_edge:                    ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #15
  %switch.gep = getelementptr inbounds [14 x i32], ptr @switch.table.sanitize_state, i32 0, i32 %switch.tableidx
  %51 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %51)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep488 = getelementptr inbounds [14 x i32], ptr @switch.table.sanitize_state.85, i32 0, i32 %switch.tableidx
  %52 = ptrtoint ptr %switch.gep488 to i32
  call void @__asan_load4_noabort(i32 %52)
  %switch.load489 = load i32, ptr %switch.gep488, align 4
  %switch.gep490 = getelementptr inbounds [14 x i32], ptr @switch.table.sanitize_state.86, i32 0, i32 %switch.tableidx
  %53 = ptrtoint ptr %switch.gep490 to i32
  call void @__asan_load4_noabort(i32 %53)
  %switch.load491 = load i32, ptr %switch.gep490, align 4
  %switch.gep492 = getelementptr inbounds [14 x i32], ptr @switch.table.sanitize_state.87, i32 0, i32 %switch.tableidx
  %54 = ptrtoint ptr %switch.gep492 to i32
  call void @__asan_load4_noabort(i32 %54)
  %switch.load493 = load i32, ptr %switch.gep492, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %if.end173.sw.epilog_crit_edge
  %pdsk_min.0 = phi i32 [ 4, %if.end173.sw.epilog_crit_edge ], [ %switch.load, %switch.lookup ]
  %pdsk_max.0 = phi i32 [ 6, %if.end173.sw.epilog_crit_edge ], [ %switch.load489, %switch.lookup ]
  %disk_max.0 = phi i32 [ 8, %if.end173.sw.epilog_crit_edge ], [ %switch.load491, %switch.lookup ]
  %disk_min.0 = phi i32 [ 0, %if.end173.sw.epilog_crit_edge ], [ %switch.load493, %switch.lookup ]
  %bf.lshr184 = lshr i32 %ns.sroa.0.6, 9
  %bf.clear185 = and i32 %bf.lshr184, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.clear185, i32 %disk_max.0)
  %cmp186 = icmp ugt i32 %bf.clear185, %disk_max.0
  %bf.shl190 = shl nuw nsw i32 %disk_max.0, 9
  %bf.clear191 = and i32 %ns.sroa.0.6, -7681
  %bf.set192 = or i32 %bf.shl190, %bf.clear191
  %ns.sroa.0.7 = select i1 %cmp186, i32 %bf.set192, i32 %ns.sroa.0.6
  %bf.lshr195 = lshr i32 %ns.sroa.0.7, 9
  %bf.clear196 = and i32 %bf.lshr195, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.clear196, i32 %disk_min.0)
  %cmp197 = icmp ult i32 %bf.clear196, %disk_min.0
  br i1 %cmp197, label %if.then198, label %sw.epilog.if.end207_crit_edge

sw.epilog.if.end207_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end207

if.then198:                                       ; preds = %sw.epilog
  br i1 %tobool.not, label %if.then198.if.end201_crit_edge, label %if.then200

if.then198.if.end201_crit_edge:                   ; preds = %if.then198
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end201

if.then200:                                       ; preds = %if.then198
  call void @__sanitizer_cov_trace_pc() #15
  %55 = ptrtoint ptr %warn to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 4, ptr %warn, align 4
  br label %if.end201

if.end201:                                        ; preds = %if.then200, %if.then198.if.end201_crit_edge
  %bf.shl204 = shl nuw nsw i32 %disk_min.0, 9
  %bf.clear205 = and i32 %ns.sroa.0.7, -7681
  %bf.set206 = or i32 %bf.clear205, %bf.shl204
  br label %if.end207

if.end207:                                        ; preds = %if.end201, %sw.epilog.if.end207_crit_edge
  %ns.sroa.0.8 = phi i32 [ %bf.set206, %if.end201 ], [ %ns.sroa.0.7, %sw.epilog.if.end207_crit_edge ]
  %bf.lshr209 = lshr i32 %ns.sroa.0.8, 13
  %bf.clear210 = and i32 %bf.lshr209, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.clear210, i32 %pdsk_max.0)
  %cmp211 = icmp ugt i32 %bf.clear210, %pdsk_max.0
  %bf.shl215 = shl nuw nsw i32 %pdsk_max.0, 13
  %bf.clear216 = and i32 %ns.sroa.0.8, -122881
  %bf.set217 = or i32 %bf.clear216, %bf.shl215
  %ns.sroa.0.9 = select i1 %cmp211, i32 %bf.set217, i32 %ns.sroa.0.8
  %bf.lshr220 = lshr i32 %ns.sroa.0.9, 13
  %bf.clear221 = and i32 %bf.lshr220, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.clear221, i32 %pdsk_min.0)
  %cmp222 = icmp ult i32 %bf.clear221, %pdsk_min.0
  br i1 %cmp222, label %if.then223, label %if.end207.if.end232_crit_edge

if.end207.if.end232_crit_edge:                    ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end232

if.then223:                                       ; preds = %if.end207
  br i1 %tobool.not, label %if.then223.if.end226_crit_edge, label %if.then225

if.then223.if.end226_crit_edge:                   ; preds = %if.then223
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end226

if.then225:                                       ; preds = %if.then223
  call void @__sanitizer_cov_trace_pc() #15
  %56 = ptrtoint ptr %warn to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 5, ptr %warn, align 4
  br label %if.end226

if.end226:                                        ; preds = %if.then225, %if.then223.if.end226_crit_edge
  %bf.shl229 = shl nuw nsw i32 %pdsk_min.0, 13
  %bf.clear230 = and i32 %ns.sroa.0.9, -122881
  %bf.set231 = or i32 %bf.clear230, %bf.shl229
  br label %if.end232

if.end232:                                        ; preds = %if.end226, %if.end207.if.end232_crit_edge
  %ns.sroa.0.10 = phi i32 [ %bf.set231, %if.end226 ], [ %ns.sroa.0.9, %if.end207.if.end232_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %fp.0)
  %cmp233 = icmp eq i32 %fp.0, 2
  %bf.clear236 = and i32 %ns.sroa.0.10, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %bf.clear236)
  %cmp237 = icmp eq i32 %bf.clear236, 1
  %or.cond446 = select i1 %cmp233, i1 %cmp237, i1 false
  %57 = and i32 %ns.sroa.0.10, 480
  call void @__sanitizer_cov_trace_const_cmp4(i32 160, i32 %57)
  %cmp242 = icmp ult i32 %57, 160
  %or.cond447 = select i1 %or.cond446, i1 %cmp242, i1 false
  %58 = and i32 %ns.sroa.0.10, 114688
  call void @__sanitizer_cov_trace_const_cmp4(i32 40960, i32 %58)
  %cmp247 = icmp ugt i32 %58, 40960
  %or.cond448 = select i1 %or.cond447, i1 %cmp247, i1 false
  br i1 %or.cond448, label %land.lhs.true248, label %if.end232.if.end266_crit_edge

if.end232.if.end266_crit_edge:                    ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end266

land.lhs.true248:                                 ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #15
  %bf.clear250 = and i32 %os.coerce.fca.0.extract, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %bf.clear250)
  %cmp251 = icmp eq i32 %bf.clear250, 1
  %59 = and i32 %os.coerce.fca.0.extract, 480
  call void @__sanitizer_cov_trace_const_cmp4(i32 160, i32 %59)
  %cmp256 = icmp ult i32 %59, 160
  %or.cond449 = and i1 %cmp251, %cmp256
  %60 = and i32 %os.coerce.fca.0.extract, 114688
  call void @__sanitizer_cov_trace_const_cmp4(i32 40960, i32 %60)
  %cmp261 = icmp ugt i32 %60, 40960
  %or.cond450 = select i1 %or.cond449, i1 %cmp261, i1 false
  %bf.set265 = or i32 %ns.sroa.0.10, 4194304
  %spec.select458 = select i1 %or.cond450, i32 %ns.sroa.0.10, i32 %bf.set265
  %.pre = and i32 %spec.select458, 3
  br label %if.end266

if.end266:                                        ; preds = %land.lhs.true248, %if.end232.if.end266_crit_edge
  %bf.clear270.pre-phi = phi i32 [ %.pre, %land.lhs.true248 ], [ %bf.clear236, %if.end232.if.end266_crit_edge ]
  %ns.sroa.0.11 = phi i32 [ %spec.select458, %land.lhs.true248 ], [ %ns.sroa.0.10, %if.end232.if.end266_crit_edge ]
  %61 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %device, align 8
  %on_no_data = getelementptr inbounds %struct.drbd_resource, ptr %62, i32 0, i32 9, i32 2
  %63 = ptrtoint ptr %on_no_data to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %on_no_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %64)
  %cmp267 = icmp eq i32 %64, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %bf.clear270.pre-phi)
  %cmp271 = icmp eq i32 %bf.clear270.pre-phi, 1
  %or.cond451 = select i1 %cmp267, i1 %cmp271, i1 false
  %65 = and i32 %ns.sroa.0.11, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp276.not.not = icmp eq i32 %65, 0
  %or.cond452 = select i1 %or.cond451, i1 %cmp276.not.not, i1 false
  %66 = and i32 %ns.sroa.0.11, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp281.not.not = icmp eq i32 %66, 0
  %or.cond453 = select i1 %or.cond452, i1 %cmp281.not.not, i1 false
  %67 = and i32 %os.coerce.fca.0.extract, 69635
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %67)
  %68 = icmp eq i32 %67, 1
  %bf.set299 = or i32 %ns.sroa.0.11, 2097152
  %spec.select459 = select i1 %68, i32 %ns.sroa.0.11, i32 %bf.set299
  %ns.sroa.0.12 = select i1 %or.cond453, i32 %spec.select459, i32 %ns.sroa.0.11
  %69 = and i32 %ns.sroa.0.12, 1835008
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %70 = icmp eq i32 %69, 0
  %71 = and i32 %ns.sroa.0.12, 496
  br i1 %70, label %if.else334, label %if.then315

if.then315:                                       ; preds = %if.end266
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %71)
  %cmp319 = icmp eq i32 %71, 256
  %bf.clear322 = and i32 %ns.sroa.0.12, -497
  %bf.set323 = or i32 %bf.clear322, 320
  %ns.sroa.0.13 = select i1 %cmp319, i32 %bf.set323, i32 %ns.sroa.0.12
  %72 = and i32 %ns.sroa.0.13, 496
  call void @__sanitizer_cov_trace_const_cmp4(i32 272, i32 %72)
  %cmp328 = icmp eq i32 %72, 272
  %bf.set332 = or i32 %bf.clear322, 336
  %spec.select486 = select i1 %cmp328, i32 %bf.set332, i32 %ns.sroa.0.13
  br label %if.end353

if.else334:                                       ; preds = %if.end266
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 320, i32 %71)
  %cmp338 = icmp eq i32 %71, 320
  %bf.clear341 = and i32 %ns.sroa.0.12, -497
  %bf.set342 = or i32 %bf.clear341, 256
  %ns.sroa.0.14 = select i1 %cmp338, i32 %bf.set342, i32 %ns.sroa.0.12
  %73 = and i32 %ns.sroa.0.14, 496
  call void @__sanitizer_cov_trace_const_cmp4(i32 336, i32 %73)
  %cmp347 = icmp eq i32 %73, 336
  %bf.set351 = or i32 %bf.clear341, 272
  %spec.select487 = select i1 %cmp347, i32 %bf.set351, i32 %ns.sroa.0.14
  br label %if.end353

if.end353:                                        ; preds = %if.else334, %if.then315
  %ns.sroa.0.15 = phi i32 [ %spec.select486, %if.then315 ], [ %spec.select487, %if.else334 ]
  ret i32 %ns.sroa.0.15
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @is_valid_state(ptr noundef %device, [1 x i32] %ns.coerce) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ns.coerce.fca.0.extract = extractvalue [1 x i32] %ns.coerce, 0
  %0 = tail call i32 @llvm.read_register.i32(metadata !175) #13
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !189
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 696, ptr noundef nonnull @.str.39) #13
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %state.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 27
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %bf.load.i = load i32, ptr %state.i, align 8
  %5 = and i32 %bf.load.i, 7680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp eq i32 %5, 0
  br i1 %cmp.i, label %rcu_read_lock.exit.if.end15_crit_edge, label %if.end.i

rcu_read_lock.exit.if.end15_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.end.i:                                         ; preds = %rcu_read_lock.exit
  %local_cnt.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 41
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %local_cnt.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %local_cnt.i, i32 1, i32 3, i32 1) #13
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %local_cnt.i, ptr %local_cnt.i, i32 1, ptr elementtype(i32) %local_cnt.i) #13, !srcloc !196
  %7 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %bf.load2.i = load i32, ptr %state.i, align 8
  %8 = and i32 %bf.load2.i, 6144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp5.not.i = icmp eq i32 %8, 0
  br i1 %cmp5.not.i, label %if.then6.i, label %if.then

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @put_ldev(ptr noundef %device) #13
  br label %if.end15

if.then:                                          ; preds = %if.end.i
  %ldev = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 15
  %9 = ptrtoint ptr %ldev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ldev, align 4
  %disk_conf = getelementptr inbounds %struct.drbd_backing_dev, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %disk_conf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %disk_conf, align 8
  %call5 = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true, label %if.then.do.end13_crit_edge

if.then.do.end13_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end13

land.lhs.true:                                    ; preds = %if.then
  %call7 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true.do.end13_crit_edge, label %land.lhs.true9

land.lhs.true.do.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end13

land.lhs.true9:                                   ; preds = %land.lhs.true
  %.b313 = load i1, ptr @is_valid_state.__warned, align 1
  br i1 %.b313, label %land.lhs.true9.do.end13_crit_edge, label %if.then11

land.lhs.true9.do.end13_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end13

if.then11:                                        ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @is_valid_state.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 834, ptr noundef nonnull @.str.45) #13
  br label %do.end13

do.end13:                                         ; preds = %if.then11, %land.lhs.true9.do.end13_crit_edge, %land.lhs.true.do.end13_crit_edge, %if.then.do.end13_crit_edge
  %fencing = getelementptr inbounds %struct.disk_conf, ptr %12, i32 0, i32 8
  %13 = ptrtoint ptr %fencing to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fencing, align 8
  tail call fastcc void @put_ldev(ptr noundef %device)
  br label %if.end15

if.end15:                                         ; preds = %do.end13, %if.then6.i, %rcu_read_lock.exit.if.end15_crit_edge
  %fp.0 = phi i32 [ %14, %do.end13 ], [ 0, %rcu_read_lock.exit.if.end15_crit_edge ], [ 0, %if.then6.i ]
  %peer_devices.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 1
  %15 = ptrtoint ptr %peer_devices.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %peer_devices.i, align 4
  %cmp.not.i = icmp eq ptr %16, %peer_devices.i
  %spec.select.i = select i1 %cmp.not.i, ptr null, ptr %16
  %connection = getelementptr inbounds %struct.drbd_peer_device, ptr %spec.select.i, i32 0, i32 2
  %17 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %connection, align 4
  %net_conf = getelementptr inbounds %struct.drbd_connection, ptr %18, i32 0, i32 11
  %19 = ptrtoint ptr %net_conf to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %net_conf, align 4
  %call22 = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %land.lhs.true24, label %if.end15.do.end32_crit_edge

if.end15.do.end32_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end32

land.lhs.true24:                                  ; preds = %if.end15
  %call25 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %land.lhs.true24.do.end32_crit_edge, label %land.lhs.true27

land.lhs.true24.do.end32_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end32

land.lhs.true27:                                  ; preds = %land.lhs.true24
  %.b311312 = load i1, ptr @is_valid_state.__warned.46, align 1
  br i1 %.b311312, label %land.lhs.true27.do.end32_crit_edge, label %if.then29

land.lhs.true27.do.end32_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end32

if.then29:                                        ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @is_valid_state.__warned.46, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 838, ptr noundef nonnull @.str.45) #13
  br label %do.end32

do.end32:                                         ; preds = %if.then29, %land.lhs.true27.do.end32_crit_edge, %land.lhs.true24.do.end32_crit_edge, %if.end15.do.end32_crit_edge
  %tobool34.not = icmp eq ptr %20, null
  br i1 %tobool34.not, label %do.end32.if.else54_crit_edge, label %if.then35

do.end32.if.else54_crit_edge:                     ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #15
  %.pre = and i32 %ns.coerce.fca.0.extract, 3
  br label %if.else54

if.then35:                                        ; preds = %do.end32
  %two_primaries = getelementptr inbounds %struct.net_conf, ptr %20, i32 0, i32 28
  %21 = ptrtoint ptr %two_primaries to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %two_primaries, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool36.not = icmp eq i8 %22, 0
  %bf.clear = and i32 %ns.coerce.fca.0.extract, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %bf.clear)
  %cmp = icmp eq i32 %bf.clear, 1
  %or.cond = select i1 %tobool36.not, i1 %cmp, i1 false
  br i1 %or.cond, label %if.then38, label %if.then35.if.else54_crit_edge

if.then35.if.else54_crit_edge:                    ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else54

if.then38:                                        ; preds = %if.then35
  %23 = and i32 %ns.coerce.fca.0.extract, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %23)
  %cmp41 = icmp eq i32 %23, 4
  br i1 %cmp41, label %if.then38.out_crit_edge, label %if.end51

if.then38.out_crit_edge:                          ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end51:                                         ; preds = %if.then38
  %24 = ptrtoint ptr %peer_devices.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %peer_devices.i, align 4
  %cmp.not.i337 = icmp eq ptr %25, %peer_devices.i
  %spec.select.i338 = select i1 %cmp.not.i337, ptr null, ptr %25
  %connection44 = getelementptr inbounds %struct.drbd_peer_device, ptr %spec.select.i338, i32 0, i32 2
  %26 = ptrtoint ptr %connection44 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %connection44, align 4
  %call45 = tail call i32 @conn_highest_peer(ptr noundef %27)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call45)
  %cmp46 = icmp eq i32 %call45, 1
  br i1 %cmp46, label %if.end51.out_crit_edge, label %if.end51.if.else61_crit_edge

if.end51.if.else61_crit_edge:                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else61

if.end51.out_crit_edge:                           ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.else54:                                        ; preds = %if.then35.if.else54_crit_edge, %do.end32.if.else54_crit_edge
  %bf.clear56.pre-phi = phi i32 [ %.pre, %do.end32.if.else54_crit_edge ], [ %bf.clear, %if.then35.if.else54_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %bf.clear56.pre-phi)
  %cmp57 = icmp eq i32 %bf.clear56.pre-phi, 2
  br i1 %cmp57, label %land.lhs.true58, label %if.else54.if.else61_crit_edge

if.else54.if.else61_crit_edge:                    ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else61

land.lhs.true58:                                  ; preds = %if.else54
  %open_cnt = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 68
  %28 = ptrtoint ptr %open_cnt to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %open_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool59.not = icmp eq i32 %29, 0
  br i1 %tobool59.not, label %land.lhs.true58.if.else61_crit_edge, label %land.lhs.true58.out_crit_edge

land.lhs.true58.out_crit_edge:                    ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

land.lhs.true58.if.else61_crit_edge:              ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else61

if.else61:                                        ; preds = %land.lhs.true58.if.else61_crit_edge, %if.else54.if.else61_crit_edge, %if.end51.if.else61_crit_edge
  %bf.clear56.pre-phi362 = phi i32 [ 2, %land.lhs.true58.if.else61_crit_edge ], [ %bf.clear56.pre-phi, %if.else54.if.else61_crit_edge ], [ 1, %if.end51.if.else61_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %bf.clear56.pre-phi362)
  %cmp64 = icmp eq i32 %bf.clear56.pre-phi362, 1
  %30 = and i32 %ns.coerce.fca.0.extract, 480
  call void @__sanitizer_cov_trace_const_cmp4(i32 160, i32 %30)
  %cmp69 = icmp ult i32 %30, 160
  %or.cond315 = and i1 %cmp64, %cmp69
  %31 = and i32 %ns.coerce.fca.0.extract, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp74.not.not = icmp eq i32 %31, 0
  %or.cond316 = select i1 %or.cond315, i1 %cmp74.not.not, i1 false
  br i1 %or.cond316, label %if.else61.out_crit_edge, label %if.else76

if.else61.out_crit_edge:                          ; preds = %if.else61
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.else76:                                        ; preds = %if.else61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fp.0)
  %cmp77 = icmp sgt i32 %fp.0, 0
  %brmerge.not = select i1 %cmp77, i1 %cmp64, i1 false
  %or.cond317 = select i1 %brmerge.not, i1 %cmp69, i1 false
  %32 = and i32 %ns.coerce.fca.0.extract, 114688
  call void @__sanitizer_cov_trace_const_cmp4(i32 40960, i32 %32)
  %cmp91 = icmp ugt i32 %32, 40960
  %or.cond318 = select i1 %or.cond317, i1 %cmp91, i1 false
  br i1 %or.cond318, label %if.else76.out_crit_edge, label %if.else93

if.else76.out_crit_edge:                          ; preds = %if.else76
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.else93:                                        ; preds = %if.else76
  %33 = and i32 %ns.coerce.fca.0.extract, 7680
  call void @__sanitizer_cov_trace_const_cmp4(i32 2560, i32 %33)
  %cmp101 = icmp ult i32 %33, 2560
  %or.cond319 = and i1 %cmp64, %cmp101
  %34 = and i32 %ns.coerce.fca.0.extract, 122880
  call void @__sanitizer_cov_trace_const_cmp4(i32 40960, i32 %34)
  %cmp106 = icmp ult i32 %34, 40960
  %or.cond320 = select i1 %or.cond319, i1 %cmp106, i1 false
  br i1 %or.cond320, label %if.else93.out_crit_edge, label %if.else108

if.else93.out_crit_edge:                          ; preds = %if.else93
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.else108:                                       ; preds = %if.else93
  %bf.lshr110 = lshr i32 %ns.coerce.fca.0.extract, 4
  %bf.clear111 = and i32 %bf.lshr110, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %bf.clear111)
  %cmp112 = icmp ugt i32 %bf.clear111, 10
  %35 = and i32 %ns.coerce.fca.0.extract, 6144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp117 = icmp eq i32 %35, 0
  %or.cond321 = select i1 %cmp112, i1 %cmp117, i1 false
  br i1 %or.cond321, label %if.else108.out_crit_edge, label %if.else119

if.else108.out_crit_edge:                         ; preds = %if.else108
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.else119:                                       ; preds = %if.else108
  %36 = and i32 %ns.coerce.fca.0.extract, 98304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp128 = icmp eq i32 %36, 0
  %or.cond322 = select i1 %cmp112, i1 %cmp128, i1 false
  br i1 %or.cond322, label %if.else119.out_crit_edge, label %if.else130

if.else119.out_crit_edge:                         ; preds = %if.else119
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.else130:                                       ; preds = %if.else119
  %or.cond323 = select i1 %cmp112, i1 %cmp74.not.not, i1 false
  %37 = and i32 %ns.coerce.fca.0.extract, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp144.not.not = icmp eq i32 %37, 0
  %or.cond324 = select i1 %or.cond323, i1 %cmp144.not.not, i1 false
  br i1 %or.cond324, label %if.else130.out_crit_edge, label %if.else146

if.else130.out_crit_edge:                         ; preds = %if.else130
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.else146:                                       ; preds = %if.else130
  %38 = zext i32 %bf.clear111 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %bf.clear111, label %if.else146.if.else203_crit_edge [
    i32 10, label %if.else146.land.lhs.true165_crit_edge
    i32 13, label %if.else146.land.lhs.true165_crit_edge363
    i32 16, label %if.else146.land.lhs.true165_crit_edge364
    i32 20, label %if.else146.land.lhs.true165_crit_edge365
    i32 19, label %if.else146.land.lhs.true181_crit_edge
    i32 18, label %if.else146.land.lhs.true181_crit_edge366
  ]

if.else146.land.lhs.true181_crit_edge366:         ; preds = %if.else146
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true181

if.else146.land.lhs.true181_crit_edge:            ; preds = %if.else146
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true181

if.else146.land.lhs.true165_crit_edge365:         ; preds = %if.else146
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true165

if.else146.land.lhs.true165_crit_edge364:         ; preds = %if.else146
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true165

if.else146.land.lhs.true165_crit_edge363:         ; preds = %if.else146
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true165

if.else146.land.lhs.true165_crit_edge:            ; preds = %if.else146
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true165

if.else146.if.else203_crit_edge:                  ; preds = %if.else146
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else203

land.lhs.true165:                                 ; preds = %if.else146.land.lhs.true165_crit_edge, %if.else146.land.lhs.true165_crit_edge363, %if.else146.land.lhs.true165_crit_edge364, %if.else146.land.lhs.true165_crit_edge365
  call void @__sanitizer_cov_trace_const_cmp4(i32 2560, i32 %33)
  %cmp169 = icmp eq i32 %33, 2560
  br i1 %cmp169, label %land.lhs.true165.out_crit_edge, label %if.else171

land.lhs.true165.out_crit_edge:                   ; preds = %land.lhs.true165
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.else171:                                       ; preds = %land.lhs.true165
  call void @__sanitizer_cov_trace_const_cmp4(i32 288, i32 %30)
  %switch333 = icmp eq i32 %30, 288
  br i1 %switch333, label %if.else171.land.lhs.true181_crit_edge, label %if.else171.if.else203_crit_edge

if.else171.if.else203_crit_edge:                  ; preds = %if.else171
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else203

if.else171.land.lhs.true181_crit_edge:            ; preds = %if.else171
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true181

land.lhs.true181:                                 ; preds = %if.else171.land.lhs.true181_crit_edge, %if.else146.land.lhs.true181_crit_edge, %if.else146.land.lhs.true181_crit_edge366
  %verify_alg = getelementptr inbounds %struct.net_conf, ptr %20, i32 0, i32 6
  %39 = ptrtoint ptr %verify_alg to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %verify_alg, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %cmp182 = icmp eq i8 %40, 0
  br i1 %cmp182, label %land.lhs.true181.out_crit_edge, label %land.lhs.true197

land.lhs.true181.out_crit_edge:                   ; preds = %land.lhs.true181
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

land.lhs.true197:                                 ; preds = %land.lhs.true181
  %41 = ptrtoint ptr %peer_devices.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile ptr, ptr %peer_devices.i, align 4
  %cmp.not.i340 = icmp eq ptr %42, %peer_devices.i
  %spec.select.i341 = select i1 %cmp.not.i340, ptr null, ptr %42
  %connection199 = getelementptr inbounds %struct.drbd_peer_device, ptr %spec.select.i341, i32 0, i32 2
  %43 = ptrtoint ptr %connection199 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %connection199, align 4
  %agreed_pro_version = getelementptr inbounds %struct.drbd_connection, ptr %44, i32 0, i32 19
  %45 = ptrtoint ptr %agreed_pro_version to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %agreed_pro_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 88, i32 %46)
  %cmp200 = icmp slt i32 %46, 88
  br i1 %cmp200, label %land.lhs.true197.out_crit_edge, label %land.lhs.true197.if.else203_crit_edge

land.lhs.true197.if.else203_crit_edge:            ; preds = %land.lhs.true197
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else203

land.lhs.true197.out_crit_edge:                   ; preds = %land.lhs.true197
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.else203:                                       ; preds = %land.lhs.true197.if.else203_crit_edge, %if.else171.if.else203_crit_edge, %if.else146.if.else203_crit_edge
  %47 = and i32 %ns.coerce.fca.0.extract, 69635
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %47)
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %if.else203.out_crit_edge, label %if.else221

if.else203.out_crit_edge:                         ; preds = %if.else203
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.else221:                                       ; preds = %if.else203
  %bf.clear111.off = add nsw i32 %bf.clear111, -11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %bf.clear111.off)
  %switch = icmp ult i32 %bf.clear111.off, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 49152, i32 %34)
  %cmp237 = icmp eq i32 %34, 49152
  %or.cond330 = select i1 %switch, i1 %cmp237, i1 false
  br i1 %or.cond330, label %if.else221.out_crit_edge, label %if.else240

if.else221.out_crit_edge:                         ; preds = %if.else221
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.else240:                                       ; preds = %if.else221
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %bf.clear111)
  %cmp244 = icmp ugt i32 %bf.clear111, 9
  %or.cond329 = select i1 %cmp244, i1 %cmp237, i1 false
  %spec.select331 = select i1 %or.cond329, i32 -6, i32 1
  br label %out

out:                                              ; preds = %if.else240, %if.else221.out_crit_edge, %if.else203.out_crit_edge, %land.lhs.true197.out_crit_edge, %land.lhs.true181.out_crit_edge, %land.lhs.true165.out_crit_edge, %if.else130.out_crit_edge, %if.else119.out_crit_edge, %if.else108.out_crit_edge, %if.else93.out_crit_edge, %if.else76.out_crit_edge, %if.else61.out_crit_edge, %land.lhs.true58.out_crit_edge, %if.end51.out_crit_edge, %if.then38.out_crit_edge
  %rv.1 = phi i32 [ -20, %if.end51.out_crit_edge ], [ -12, %land.lhs.true58.out_crit_edge ], [ -2, %if.else61.out_crit_edge ], [ -7, %if.else76.out_crit_edge ], [ -2, %if.else93.out_crit_edge ], [ -4, %if.else108.out_crit_edge ], [ -5, %if.else119.out_crit_edge ], [ -2, %if.else130.out_crit_edge ], [ -6, %land.lhs.true165.out_crit_edge ], [ -14, %land.lhs.true181.out_crit_edge ], [ -17, %land.lhs.true197.out_crit_edge ], [ -2, %if.else203.out_crit_edge ], [ -15, %if.else221.out_crit_edge ], [ %spec.select331, %if.else240 ], [ -1, %if.then38.out_crit_edge ]
  %call.i342 = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i342, label %out.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i345

out.rcu_read_unlock.exit_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true.i345:                               ; preds = %out
  %call1.i343 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i343)
  %tobool.not.i344 = icmp eq i32 %call1.i343, 0
  br i1 %tobool.not.i344, label %land.lhs.true.i345.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i347

land.lhs.true.i345.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i345
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true2.i347:                              ; preds = %land.lhs.true.i345
  %.b4.i346 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i346, label %land.lhs.true2.i347.rcu_read_unlock.exit_crit_edge, label %if.then.i348

land.lhs.true2.i347.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i347
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

if.then.i348:                                     ; preds = %land.lhs.true2.i347
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 724, ptr noundef nonnull @.str.40) #13
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i348, %land.lhs.true2.i347.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i345.rcu_read_unlock.exit_crit_edge, %out.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !190
  %49 = tail call i32 @llvm.read_register.i32(metadata !175) #13
  %and.i.i.i.i.i349 = and i32 %49, -16384
  %50 = inttoptr i32 %and.i.i.i.i.i349 to ptr
  %preempt_count.i.i.i.i350 = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %preempt_count.i.i.i.i350 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %preempt_count.i.i.i.i350, align 4
  %sub.i.i.i = add i32 %52, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i350, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  ret i32 %rv.1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @is_valid_soft_transition([1 x i32] %os.coerce, [1 x i32] %ns.coerce, ptr noundef %connection) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %os.coerce.fca.0.extract = extractvalue [1 x i32] %os.coerce, 0
  %ns.coerce.fca.0.extract = extractvalue [1 x i32] %ns.coerce, 0
  %bf.lshr = lshr i32 %ns.coerce.fca.0.extract, 4
  %bf.clear = and i32 %bf.lshr, 31
  %0 = add nsw i32 %bf.clear, -11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %1 = icmp ult i32 %0, 2
  %2 = and i32 %os.coerce.fca.0.extract, 496
  call void @__sanitizer_cov_trace_const_cmp4(i32 160, i32 %2)
  %cmp11 = icmp ugt i32 %2, 160
  %or.cond266 = select i1 %1, i1 %cmp11, i1 false
  %rv.0 = select i1 %or.cond266, i32 -8, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %bf.clear)
  %cmp15 = icmp eq i32 %bf.clear, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp20 = icmp eq i32 %2, 0
  %or.cond267 = select i1 %cmp15, i1 %cmp20, i1 false
  %rv.1 = select i1 %or.cond267, i32 -9, i32 %rv.0
  %bf.lshr24 = lshr i32 %ns.coerce.fca.0.extract, 9
  %bf.clear25 = and i32 %bf.lshr24, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %bf.clear25)
  %cmp26 = icmp ugt i32 %bf.clear25, 1
  %3 = and i32 %os.coerce.fca.0.extract, 7680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp31 = icmp eq i32 %3, 0
  %or.cond268 = select i1 %cmp26, i1 %cmp31, i1 false
  %rv.2 = select i1 %or.cond268, i32 -11, i32 %rv.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %bf.clear)
  %cmp37 = icmp eq i32 %bf.clear, 8
  %4 = and i32 %os.coerce.fca.0.extract, 480
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp42 = icmp eq i32 %4, 0
  %or.cond269 = select i1 %cmp37, i1 %cmp42, i1 false
  %rv.3 = select i1 %or.cond269, i32 -13, i32 %rv.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %bf.clear25)
  %cmp48 = icmp eq i32 %bf.clear25, 5
  br i1 %cmp48, label %land.lhs.true49, label %entry.if.end60_crit_edge

entry.if.end60_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end60

land.lhs.true49:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %bf.lshr51 = lshr i32 %os.coerce.fca.0.extract, 9
  %bf.clear52 = and i32 %bf.lshr51, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %bf.clear52)
  %cmp53 = icmp ugt i32 %bf.clear52, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %bf.clear52)
  %cmp58.not = icmp eq i32 %bf.clear52, 1
  %or.cond270 = or i1 %cmp53, %cmp58.not
  %spec.select287 = select i1 %or.cond270, i32 %rv.3, i32 -16
  br label %if.end60

if.end60:                                         ; preds = %land.lhs.true49, %entry.if.end60_crit_edge
  %rv.4 = phi i32 [ %rv.3, %entry.if.end60_crit_edge ], [ %spec.select287, %land.lhs.true49 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %2)
  %cmp69 = icmp eq i32 %2, 32
  %or.cond271 = select i1 %cmp15, i1 %cmp69, i1 false
  %rv.5 = select i1 %or.cond271, i32 -18, i32 %rv.4
  %flags = getelementptr inbounds %struct.drbd_connection, ptr %connection, i32 0, i32 10
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flags, align 4
  %7 = and i32 %6, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.end60.if.end93_crit_edge, label %land.lhs.true72

if.end60.if.end93_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end93

land.lhs.true72:                                  ; preds = %if.end60
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %bf.clear)
  %cmp76 = icmp eq i32 %bf.clear, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %2)
  %cmp81 = icmp eq i32 %2, 128
  %or.cond272 = select i1 %cmp76, i1 %cmp81, i1 false
  br i1 %or.cond272, label %land.lhs.true72.if.end93_crit_edge, label %lor.lhs.false82

land.lhs.true72.if.end93_crit_edge:               ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end93

lor.lhs.false82:                                  ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %bf.clear)
  %cmp86 = icmp ugt i32 %bf.clear, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 144, i32 %2)
  %cmp91 = icmp eq i32 %2, 144
  %or.cond273 = select i1 %cmp86, i1 %cmp91, i1 false
  %spec.select288 = select i1 %or.cond273, i32 %rv.5, i32 -18
  br label %if.end93

if.end93:                                         ; preds = %lor.lhs.false82, %land.lhs.true72.if.end93_crit_edge, %if.end60.if.end93_crit_edge
  %rv.6 = phi i32 [ %rv.5, %if.end60.if.end93_crit_edge ], [ %rv.5, %land.lhs.true72.if.end93_crit_edge ], [ %spec.select288, %lor.lhs.false82 ]
  %bf.clear95 = and i32 %os.coerce.fca.0.extract, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %bf.clear95)
  %cmp96.not = icmp eq i32 %bf.clear95, 1
  %bf.clear99 = and i32 %ns.coerce.fca.0.extract, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %bf.clear99)
  %cmp100 = icmp ne i32 %bf.clear99, 1
  %or.cond274 = select i1 %cmp96.not, i1 true, i1 %cmp100
  %8 = and i32 %ns.coerce.fca.0.extract, 122880
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %8)
  %cmp105 = icmp ne i32 %8, 65536
  %or.cond275 = select i1 %or.cond274, i1 true, i1 %cmp105
  %9 = freeze i1 %or.cond275
  br i1 %9, label %if.end93.if.end130_crit_edge, label %switch.early.test

if.end93.if.end130_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end130

switch.early.test:                                ; preds = %if.end93
  %10 = zext i32 %bf.clear25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %bf.clear25, label %land.lhs.true116 [
    i32 8, label %switch.early.test.if.end130_crit_edge
    i32 0, label %switch.early.test.if.end130_crit_edge293
  ]

switch.early.test.if.end130_crit_edge293:         ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end130

switch.early.test.if.end130_crit_edge:            ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end130

land.lhs.true116:                                 ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %bf.clear)
  %cmp120 = icmp ugt i32 %bf.clear, 15
  %bf.lshr126 = lshr i32 %os.coerce.fca.0.extract, 4
  %bf.clear127 = and i32 %bf.lshr126, 31
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.clear, i32 %bf.clear127)
  %cmp128.not = icmp eq i32 %bf.clear, %bf.clear127
  %or.cond278 = select i1 %cmp120, i1 %cmp128.not, i1 false
  %spec.select289 = select i1 %or.cond278, i32 %rv.6, i32 -18
  br label %if.end130

if.end130:                                        ; preds = %land.lhs.true116, %switch.early.test.if.end130_crit_edge, %switch.early.test.if.end130_crit_edge293, %if.end93.if.end130_crit_edge
  %rv.7 = phi i32 [ %rv.6, %switch.early.test.if.end130_crit_edge ], [ %rv.6, %if.end93.if.end130_crit_edge ], [ %rv.6, %switch.early.test.if.end130_crit_edge293 ], [ %spec.select289, %land.lhs.true116 ]
  %11 = and i32 %ns.coerce.fca.0.extract, 480
  call void @__sanitizer_cov_trace_const_cmp4(i32 288, i32 %11)
  %12 = icmp eq i32 %11, 288
  call void @__sanitizer_cov_trace_const_cmp4(i32 160, i32 %4)
  %cmp144 = icmp ult i32 %4, 160
  %or.cond280 = select i1 %12, i1 %cmp144, i1 false
  %rv.8 = select i1 %or.cond280, i32 -15, i32 %rv.7
  br i1 %12, label %land.lhs.true156, label %if.end130.if.end170_crit_edge

if.end130.if.end170_crit_edge:                    ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end170

land.lhs.true156:                                 ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #15
  %bf.lshr161 = lshr i32 %os.coerce.fca.0.extract, 4
  %bf.clear162 = and i32 %bf.lshr161, 31
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.clear, i32 %bf.clear162)
  %cmp163.not = icmp ne i32 %bf.clear, %bf.clear162
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %bf.clear162)
  %cmp168 = icmp ugt i32 %bf.clear162, 10
  %or.cond282 = and i1 %cmp168, %cmp163.not
  %spec.select290 = select i1 %or.cond282, i32 -8, i32 %rv.8
  br label %if.end170

if.end170:                                        ; preds = %land.lhs.true156, %if.end130.if.end170_crit_edge
  %rv.9 = phi i32 [ %rv.8, %if.end130.if.end170_crit_edge ], [ %spec.select290, %land.lhs.true156 ]
  %or.cond283 = select i1 %1, i1 %cmp144, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %11)
  %switch = icmp eq i32 %11, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 144, i32 %2)
  %cmp200 = icmp ult i32 %2, 144
  %13 = select i1 %switch, i1 %cmp200, i1 false
  %14 = select i1 %13, i1 true, i1 %or.cond283
  %rv.11 = select i1 %14, i32 -15, i32 %rv.9
  call void @__sanitizer_cov_trace_const_cmp4(i32 40960, i32 %8)
  %cmp211 = icmp eq i32 %8, 40960
  %or.cond284 = select i1 %cmp15, i1 %cmp211, i1 false
  %or.cond285 = select i1 %or.cond284, i1 %cmp144, i1 false
  %15 = and i32 %os.coerce.fca.0.extract, 114688
  call void @__sanitizer_cov_trace_const_cmp4(i32 40960, i32 %15)
  %cmp221 = icmp ugt i32 %15, 40960
  %or.cond286 = select i1 %or.cond285, i1 %cmp221, i1 false
  %rv.12 = select i1 %or.cond286, i32 -21, i32 %rv.11
  ret i32 %rv.12
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @remember_new_state(ptr noundef %state_change) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %state_change, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %resource1 = getelementptr inbounds %struct.drbd_state_change, ptr %state_change, i32 0, i32 3
  %0 = ptrtoint ptr %resource1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resource1, align 4
  %connections.i = getelementptr inbounds %struct.drbd_resource, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %connections.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %connections.i, align 4
  %cmp.not.i = icmp eq ptr %3, %connections.i
  %spec.select.i = select i1 %cmp.not.i, ptr null, ptr %3
  %call3 = tail call i32 @conn_highest_role(ptr noundef %spec.select.i)
  %arrayidx4 = getelementptr %struct.drbd_state_change, ptr %state_change, i32 0, i32 3, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call3, ptr %arrayidx4, align 4
  %susp = getelementptr inbounds %struct.drbd_resource, ptr %1, i32 0, i32 13
  %5 = ptrtoint ptr %susp to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %susp, align 4
  %arrayidx7 = getelementptr %struct.drbd_state_change, ptr %state_change, i32 0, i32 3, i32 0, i32 2, i32 1
  %bf.load.lobit = lshr i8 %bf.load, 7
  %6 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %bf.load.lobit, ptr %arrayidx7, align 1
  %bf.load8 = load i8, ptr %susp, align 4
  %arrayidx13 = getelementptr %struct.drbd_state_change, ptr %state_change, i32 0, i32 3, i32 0, i32 3, i32 1
  %7 = lshr i8 %bf.load8, 6
  %.lobit = and i8 %7, 1
  %8 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %.lobit, ptr %arrayidx13, align 1
  %bf.load15 = load i8, ptr %susp, align 4
  %arrayidx21 = getelementptr %struct.drbd_state_change, ptr %state_change, i32 0, i32 3, i32 0, i32 4, i32 1
  %9 = lshr i8 %bf.load15, 5
  %.lobit122 = and i8 %9, 1
  %10 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %.lobit122, ptr %arrayidx21, align 1
  %n_devices = getelementptr inbounds %struct.drbd_state_change, ptr %state_change, i32 0, i32 1
  %11 = ptrtoint ptr %n_devices to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %n_devices, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp126.not = icmp eq i32 %12, 0
  br i1 %cmp126.not, label %if.end.for.cond29.preheader_crit_edge, label %for.body.lr.ph

if.end.for.cond29.preheader_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond29.preheader

for.body.lr.ph:                                   ; preds = %if.end
  %devices = getelementptr inbounds %struct.drbd_state_change, ptr %state_change, i32 0, i32 4
  br label %for.body

for.cond29.preheader:                             ; preds = %for.body.for.cond29.preheader_crit_edge, %if.end.for.cond29.preheader_crit_edge
  %n_connections = getelementptr inbounds %struct.drbd_state_change, ptr %state_change, i32 0, i32 2
  %13 = ptrtoint ptr %n_connections to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %n_connections, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp30128.not = icmp eq i32 %14, 0
  br i1 %cmp30128.not, label %for.cond29.preheader.for.cond41.preheader_crit_edge, label %for.body31.lr.ph

for.cond29.preheader.for.cond41.preheader_crit_edge: ; preds = %for.cond29.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond41.preheader

for.body31.lr.ph:                                 ; preds = %for.cond29.preheader
  %connections = getelementptr inbounds %struct.drbd_state_change, ptr %state_change, i32 0, i32 5
  br label %for.body31

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %n.0127 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %15 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %devices, align 4
  %arrayidx23 = getelementptr %struct.drbd_device_state_change, ptr %16, i32 %n.0127
  %17 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx23, align 4
  %state = getelementptr inbounds %struct.drbd_device, ptr %18, i32 0, i32 27
  %19 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %19)
  %bf.load25 = load i32, ptr %state, align 8
  %bf.lshr26 = lshr i32 %bf.load25, 9
  %bf.clear27 = and i32 %bf.lshr26, 15
  %arrayidx28 = getelementptr %struct.drbd_device_state_change, ptr %16, i32 %n.0127, i32 1, i32 1
  %20 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %bf.clear27, ptr %arrayidx28, align 4
  %inc = add nuw i32 %n.0127, 1
  %21 = ptrtoint ptr %n_devices to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %n_devices, align 4
  %cmp = icmp ult i32 %inc, %22
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.cond29.preheader_crit_edge

for.body.for.cond29.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond29.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.cond41.preheader:                             ; preds = %for.body31.for.cond41.preheader_crit_edge, %for.cond29.preheader.for.cond41.preheader_crit_edge
  %23 = ptrtoint ptr %n_devices to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %n_devices, align 4
  %25 = ptrtoint ptr %n_connections to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %n_connections, align 4
  %mul130 = mul i32 %26, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul130)
  %cmp44131.not = icmp eq i32 %mul130, 0
  br i1 %cmp44131.not, label %for.cond41.preheader.cleanup_crit_edge, label %for.body45.lr.ph

for.cond41.preheader.cleanup_crit_edge:           ; preds = %for.cond41.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body45.lr.ph:                                 ; preds = %for.cond41.preheader
  %peer_devices = getelementptr inbounds %struct.drbd_state_change, ptr %state_change, i32 0, i32 6
  br label %for.body45

for.body31:                                       ; preds = %for.body31.for.body31_crit_edge, %for.body31.lr.ph
  %n.1129 = phi i32 [ 0, %for.body31.lr.ph ], [ %inc39, %for.body31.for.body31_crit_edge ]
  %27 = ptrtoint ptr %connections to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %connections, align 4
  %arrayidx32 = getelementptr %struct.drbd_connection_state_change, ptr %28, i32 %n.1129
  %29 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx32, align 4
  %cstate = getelementptr inbounds %struct.drbd_connection, ptr %30, i32 0, i32 7
  %31 = ptrtoint ptr %cstate to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cstate, align 4
  %arrayidx35 = getelementptr %struct.drbd_connection_state_change, ptr %28, i32 %n.1129, i32 1, i32 1
  %33 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %arrayidx35, align 4
  %call36 = tail call i32 @conn_highest_peer(ptr noundef %30)
  %arrayidx37 = getelementptr %struct.drbd_connection_state_change, ptr %28, i32 %n.1129, i32 2, i32 1
  %34 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %call36, ptr %arrayidx37, align 4
  %inc39 = add nuw i32 %n.1129, 1
  %35 = ptrtoint ptr %n_connections to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %n_connections, align 4
  %cmp30 = icmp ult i32 %inc39, %36
  br i1 %cmp30, label %for.body31.for.body31_crit_edge, label %for.body31.for.cond41.preheader_crit_edge

for.body31.for.cond41.preheader_crit_edge:        ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond41.preheader

for.body31.for.body31_crit_edge:                  ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body31

for.body45:                                       ; preds = %for.body45.for.body45_crit_edge, %for.body45.lr.ph
  %n.2132 = phi i32 [ 0, %for.body45.lr.ph ], [ %inc80, %for.body45.for.body45_crit_edge ]
  %37 = ptrtoint ptr %peer_devices to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %peer_devices, align 4
  %arrayidx46 = getelementptr %struct.drbd_peer_device_state_change, ptr %38, i32 %n.2132
  %39 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx46, align 4
  %device48 = getelementptr inbounds %struct.drbd_peer_device, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %device48 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %device48, align 4
  %state50 = getelementptr inbounds %struct.drbd_device, ptr %42, i32 0, i32 27
  %43 = ptrtoint ptr %state50 to i32
  call void @__asan_load4_noabort(i32 %43)
  %state49.sroa.0.0.copyload = load i32, ptr %state50, align 8
  %bf.lshr52 = lshr i32 %state49.sroa.0.0.copyload, 13
  %bf.clear53 = and i32 %bf.lshr52, 15
  %arrayidx55 = getelementptr %struct.drbd_peer_device_state_change, ptr %38, i32 %n.2132, i32 1, i32 1
  %44 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %bf.clear53, ptr %arrayidx55, align 4
  %bf.lshr57 = lshr i32 %state49.sroa.0.0.copyload, 4
  %bf.clear58 = and i32 %bf.lshr57, 31
  %45 = tail call i32 @llvm.umax.i32(i32 %bf.clear58, i32 9)
  %arrayidx60 = getelementptr %struct.drbd_peer_device_state_change, ptr %38, i32 %n.2132, i32 2, i32 1
  %46 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %arrayidx60, align 4
  %arrayidx65 = getelementptr %struct.drbd_peer_device_state_change, ptr %38, i32 %n.2132, i32 3, i32 1
  %47 = lshr i32 %state49.sroa.0.0.copyload, 20
  %48 = trunc i32 %47 to i8
  %49 = and i8 %48, 1
  %50 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %arrayidx65, align 1
  %arrayidx71 = getelementptr %struct.drbd_peer_device_state_change, ptr %38, i32 %n.2132, i32 4, i32 1
  %51 = lshr i32 %state49.sroa.0.0.copyload, 19
  %52 = trunc i32 %51 to i8
  %53 = and i8 %52, 1
  %54 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %arrayidx71, align 1
  %arrayidx77 = getelementptr %struct.drbd_peer_device_state_change, ptr %38, i32 %n.2132, i32 5, i32 1
  %55 = lshr i32 %state49.sroa.0.0.copyload, 18
  %56 = trunc i32 %55 to i8
  %57 = and i8 %56, 1
  %58 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %arrayidx77, align 1
  %inc80 = add nuw i32 %n.2132, 1
  %59 = ptrtoint ptr %n_devices to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %n_devices, align 4
  %61 = ptrtoint ptr %n_connections to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %n_connections, align 4
  %mul = mul i32 %62, %60
  %cmp44 = icmp ult i32 %inc80, %mul
  br i1 %cmp44, label %for.body45.for.body45_crit_edge, label %for.body45.cleanup_crit_edge

for.body45.cleanup_crit_edge:                     ; preds = %for.body45
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body45.for.body45_crit_edge:                  ; preds = %for.body45
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body45

cleanup:                                          ; preds = %for.body45.cleanup_crit_edge, %for.cond41.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drbd_should_do_remote([1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @start_new_tl_epoch(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drbd_print_uuids(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drbd_bm_bits(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drbd_rs_controller_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drbd_md_mark_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @put_ldev(ptr noundef %device) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %state = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 27
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %state, align 8
  %bf.lshr = lshr i32 %bf.load, 9
  %bf.clear = and i32 %bf.lshr, 15
  %local_cnt = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 41
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %local_cnt, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !200
  tail call void @llvm.prefetch.p0(ptr %local_cnt, i32 1, i32 3, i32 1) #13
  %1 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %local_cnt, ptr %local_cnt, i32 1, ptr elementtype(i32) %local_cnt) #13, !srcloc !201
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %1, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !202
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %asmresult.i.i.i.i)
  %cmp = icmp sgt i32 %asmresult.i.i.i.i, -1
  br i1 %cmp, label %do.end3, label %do.end3.thread

do.end3.thread:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %vdisk = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %2 = ptrtoint ptr %vdisk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdisk, align 4
  %part0 = getelementptr inbounds %struct.gendisk, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %part0, align 4
  %bd_device = getelementptr inbounds %struct.block_device, ptr %5, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %bd_device, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.70, i32 noundef 2099) #17
  br label %if.end15

do.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp4 = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp4, label %if.then5, label %do.end3.if.end15_crit_edge

do.end3.if.end15_crit_edge:                       ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.then5:                                         ; preds = %do.end3
  %6 = zext i32 %bf.clear to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.92)
  switch i32 %bf.clear, label %if.then5.if.end14_crit_edge [
    i32 0, label %if.then7
    i32 2, label %if.then10
  ]

if.then5.if.end14_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

if.then7:                                         ; preds = %if.then5
  %flags.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 14
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 24, ptr noundef %flags.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then7.if.end14_crit_edge

if.then7.if.end14_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #15
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
  %call4.i = tail call i32 @_test_and_set_bit(i32 noundef 12, ptr noundef %flags3.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.then.i.if.end14.sink.split_crit_edge, label %if.then.i.if.end14_crit_edge

if.then.i.if.end14_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

if.then.i.if.end14.sink.split_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14.sink.split

if.then10:                                        ; preds = %if.then5
  %flags = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 14
  %call11 = tail call i32 @_test_and_set_bit(i32 noundef 22, ptr noundef %flags) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %if.then12, label %if.then10.if.end14_crit_edge

if.then10.if.end14_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

if.then12:                                        ; preds = %if.then10
  %call.i25 = tail call i32 @_test_and_set_bit(i32 noundef 23, ptr noundef %flags) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i25)
  %tobool.not.i26 = icmp eq i32 %call.i25, 0
  br i1 %tobool.not.i26, label %if.then.i34, label %if.then12.if.end14_crit_edge

if.then12.if.end14_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #15
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
  %call4.i32 = tail call i32 @_test_and_set_bit(i32 noundef 12, ptr noundef %flags3.i31) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i32)
  %tobool5.not.i33 = icmp eq i32 %call4.i32, 0
  br i1 %tobool5.not.i33, label %if.then.i34.if.end14.sink.split_crit_edge, label %if.then.i34.if.end14_crit_edge

if.then.i34.if.end14_crit_edge:                   ; preds = %if.then.i34
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

if.then.i34.if.end14.sink.split_crit_edge:        ; preds = %if.then.i34
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14.sink.split

if.end14.sink.split:                              ; preds = %if.then.i34.if.end14.sink.split_crit_edge, %if.then.i.if.end14.sink.split_crit_edge
  %.sink = phi ptr [ %10, %if.then.i.if.end14.sink.split_crit_edge ], [ %14, %if.then.i34.if.end14.sink.split_crit_edge ]
  %q_wait.i35 = getelementptr inbounds %struct.drbd_connection, ptr %.sink, i32 0, i32 45, i32 2
  tail call void @__wake_up(ptr noundef %q_wait.i35, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  br label %if.end14

if.end14:                                         ; preds = %if.end14.sink.split, %if.then.i34.if.end14_crit_edge, %if.then12.if.end14_crit_edge, %if.then10.if.end14_crit_edge, %if.then.i.if.end14_crit_edge, %if.then7.if.end14_crit_edge, %if.then5.if.end14_crit_edge
  %misc_wait = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 28
  tail call void @__wake_up(ptr noundef %misc_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %do.end3.if.end15_crit_edge, %do.end3.thread
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w_after_state_ch(ptr noundef %w, i32 noundef %unused) #0 align 64 {
entry:
  %sib.i = alloca %struct.sib_info, align 4
  %vnr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.after_state_chg_work, ptr %w, i32 0, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %os = getelementptr inbounds %struct.after_state_chg_work, ptr %w, i32 0, i32 2
  %ns = getelementptr inbounds %struct.after_state_chg_work, ptr %w, i32 0, i32 3
  %flags = getelementptr inbounds %struct.after_state_chg_work, ptr %w, i32 0, i32 4
  %state_change = getelementptr inbounds %struct.after_state_chg_work, ptr %w, i32 0, i32 6
  %2 = ptrtoint ptr %state_change to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state_change, align 4
  %4 = ptrtoint ptr %os to i32
  call void @__asan_load4_noabort(i32 %4)
  %.unpack = load i32, ptr %os, align 4
  %5 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %5)
  %.unpack15 = load i32, ptr %ns, align 4
  %6 = insertvalue [1 x i32] undef, i32 %.unpack15, 0
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 8
  %peer_devices.i.i = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %peer_devices.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %peer_devices.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %10, %peer_devices.i.i
  %spec.select.i.i = select i1 %cmp.not.i.i, ptr null, ptr %10
  %tobool.not.i = icmp eq ptr %spec.select.i.i, null
  br i1 %tobool.not.i, label %entry.cond.end.i_crit_edge, label %cond.true.i

entry.cond.end.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end.i

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %connection5.i = getelementptr inbounds %struct.drbd_peer_device, ptr %spec.select.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %connection5.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %connection5.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %entry.cond.end.i_crit_edge
  %cond.i = phi ptr [ %12, %cond.true.i ], [ null, %entry.cond.end.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %sib.i) #13
  %13 = getelementptr inbounds %struct.sib_info, ptr %sib.i, i32 0, i32 1
  %14 = getelementptr inbounds %struct.sib_info, ptr %sib.i, i32 0, i32 1, i32 0, i32 1
  tail call fastcc void @broadcast_state_change(ptr noundef %3) #13
  %15 = ptrtoint ptr %sib.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2, ptr %sib.i, align 4
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %.unpack, ptr %13, align 4
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %.unpack15, ptr %14, align 4
  %bf.lshr.i = lshr i32 %.unpack, 9
  %bf.clear.i = and i32 %bf.lshr.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %bf.clear.i)
  %cmp.not.i = icmp ne i32 %bf.clear.i, 8
  %18 = and i32 %.unpack, 122880
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %18)
  %cmp11.not.i = icmp ne i32 %18, 65536
  %or.cond.i = select i1 %cmp.not.i, i1 true, i1 %cmp11.not.i
  %19 = and i32 %.unpack15, 7680
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %19)
  %cmp15.i = icmp eq i32 %19, 4096
  %or.cond4.i = select i1 %or.cond.i, i1 %cmp15.i, i1 false
  %20 = and i32 %.unpack15, 122880
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %20)
  %cmp20.i = icmp eq i32 %20, 65536
  %or.cond5.i = select i1 %or.cond4.i, i1 %cmp20.i, i1 false
  br i1 %or.cond5.i, label %if.then.i, label %cond.end.i.if.end25.i_crit_edge

cond.end.i.if.end25.i_crit_edge:                  ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25.i

if.then.i:                                        ; preds = %cond.end.i
  %flags21.i = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 14
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %flags21.i) #13
  %p_uuid.i = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 69
  %21 = ptrtoint ptr %p_uuid.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %p_uuid.i, align 4
  %tobool22.not.i = icmp eq ptr %22, null
  br i1 %tobool22.not.i, label %if.then.i.if.end25.i_crit_edge, label %if.then23.i

if.then.i.if.end25.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25.i

if.then23.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i = getelementptr i64, ptr %22, i32 5
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %arrayidx.i, align 8
  %and.i = and i64 %24, -3
  store i64 %and.i, ptr %arrayidx.i, align 8
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then23.i, %if.then.i.if.end25.i_crit_edge, %cond.end.i.if.end25.i_crit_edge
  call void @drbd_bcast_event(ptr noundef %1, ptr noundef nonnull %sib.i) #13
  %bf.clear27.i = and i32 %.unpack, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %bf.clear27.i)
  %cmp28.i = icmp eq i32 %bf.clear27.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %bf.clear.i)
  %cmp33.i = icmp ult i32 %bf.clear.i, 8
  %or.cond6.i = select i1 %cmp28.i, i1 %cmp33.i, i1 false
  %25 = and i32 %.unpack, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp38.not.not.i = icmp ne i32 %25, 0
  %not.or.cond6.i = xor i1 %or.cond6.i, true
  %or.cond7.i = select i1 %not.or.cond6.i, i1 true, i1 %cmp38.not.not.i
  %bf.clear41.i = and i32 %.unpack15, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %bf.clear41.i)
  %cmp42.i = icmp eq i32 %bf.clear41.i, 1
  %or.cond8.i = select i1 %or.cond7.i, i1 %cmp42.i, i1 false
  %26 = and i32 %.unpack15, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp47.not.not.i = icmp eq i32 %26, 0
  %or.cond9.i = select i1 %or.cond8.i, i1 %cmp47.not.not.i, i1 false
  %27 = and i32 %.unpack15, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp52.not.not.i = icmp eq i32 %27, 0
  %or.cond10.i = select i1 %or.cond9.i, i1 %cmp52.not.not.i, i1 false
  br i1 %or.cond10.i, label %if.then53.i, label %if.end25.i.if.end55.i_crit_edge

if.end25.i.if.end55.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end55.i

if.then53.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #15
  %call54.i = call i32 @drbd_khelper(ptr noundef %1, ptr noundef nonnull @.str.71) #13
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.then53.i, %if.end25.i.if.end55.i_crit_edge
  %28 = and i32 %.unpack15, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool59.not.i = icmp eq i32 %28, 0
  br i1 %tobool59.not.i, label %if.end55.i.if.end172.i_crit_edge, label %if.then60.i

if.end55.i.if.end172.i_crit_edge:                 ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end172.i

if.then60.i:                                      ; preds = %if.end55.i
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 8
  %req_lock.i = getelementptr inbounds %struct.drbd_resource, ptr %30, i32 0, i32 12
  call void @_raw_spin_lock_irq(ptr noundef %req_lock.i) #13
  %31 = and i32 %.unpack, 480
  call void @__sanitizer_cov_trace_const_cmp4(i32 160, i32 %31)
  %cmp65.i = icmp ult i32 %31, 160
  br i1 %cmp65.i, label %land.lhs.true66.i, label %if.then60.i.if.end70.i_crit_edge

if.then60.i.if.end70.i_crit_edge:                 ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end70.i

land.lhs.true66.i:                                ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #15
  %call67.i = call i32 @conn_lowest_conn(ptr noundef %cond.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %call67.i)
  %cmp68.i = icmp ugt i32 %call67.i, 9
  %spec.select.i = select i1 %cmp68.i, i32 28, i32 31
  br label %if.end70.i

if.end70.i:                                       ; preds = %land.lhs.true66.i, %if.then60.i.if.end70.i_crit_edge
  %what.0.i = phi i32 [ 31, %if.then60.i.if.end70.i_crit_edge ], [ %spec.select.i, %land.lhs.true66.i ]
  %32 = zext i32 %bf.clear.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.93)
  switch i32 %bf.clear.i, label %if.end70.i.if.end84.i_crit_edge [
    i32 1, label %if.end70.i.land.lhs.true80.i_crit_edge
    i32 3, label %if.end70.i.land.lhs.true80.i_crit_edge16
  ]

if.end70.i.land.lhs.true80.i_crit_edge16:         ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true80.i

if.end70.i.land.lhs.true80.i_crit_edge:           ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true80.i

if.end70.i.if.end84.i_crit_edge:                  ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end84.i

land.lhs.true80.i:                                ; preds = %if.end70.i.land.lhs.true80.i_crit_edge, %if.end70.i.land.lhs.true80.i_crit_edge16
  %call81.i = call i32 @conn_lowest_disk(ptr noundef %cond.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call81.i)
  %cmp82.i = icmp eq i32 %call81.i, 8
  %spec.select11.i = select i1 %cmp82.i, i32 30, i32 %what.0.i
  br label %if.end84.i

if.end84.i:                                       ; preds = %land.lhs.true80.i, %if.end70.i.if.end84.i_crit_edge
  %what.1.i = phi i32 [ %what.0.i, %if.end70.i.if.end84.i_crit_edge ], [ %spec.select11.i, %land.lhs.true80.i ]
  %susp_nod.i = getelementptr inbounds %struct.drbd_resource, ptr %8, i32 0, i32 13
  %33 = ptrtoint ptr %susp_nod.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load85.i = load i8, ptr %susp_nod.i, align 4
  %34 = and i8 %bf.load85.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool88.not.i = icmp eq i8 %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %what.1.i)
  %cmp90.not.i = icmp eq i32 %what.1.i, 31
  %or.cond12.i = select i1 %tobool88.not.i, i1 true, i1 %cmp90.not.i
  br i1 %or.cond12.i, label %if.end84.i.if.end169.i_crit_edge, label %if.then91.i

if.end84.i.if.end169.i_crit_edge:                 ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end169.i

if.then91.i:                                      ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @_tl_restart(ptr noundef %cond.i, i32 noundef %what.1.i) #13
  %call168.i = call i32 @_conn_request_state(ptr noundef %cond.i, [1 x i32] [i32 2097152], [1 x i32] zeroinitializer, i32 noundef 2) #13
  br label %if.end169.i

if.end169.i:                                      ; preds = %if.then91.i, %if.end84.i.if.end169.i_crit_edge
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 8
  %req_lock171.i = getelementptr inbounds %struct.drbd_resource, ptr %36, i32 0, i32 12
  call void @_raw_spin_unlock_irq(ptr noundef %req_lock171.i) #13
  br label %if.end172.i

if.end172.i:                                      ; preds = %if.end169.i, %if.end55.i.if.end172.i_crit_edge
  %37 = and i32 %.unpack15, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool176.not.i = icmp eq i32 %37, 0
  br i1 %tobool176.not.i, label %if.end172.i.if.end276.i_crit_edge, label %if.then177.i

if.end172.i.if.end276.i_crit_edge:                ; preds = %if.end172.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end276.i

if.then177.i:                                     ; preds = %if.end172.i
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 8
  %req_lock179.i = getelementptr inbounds %struct.drbd_resource, ptr %39, i32 0, i32 12
  call void @_raw_spin_lock_irq(ptr noundef %req_lock179.i) #13
  %susp_fen.i = getelementptr inbounds %struct.drbd_resource, ptr %8, i32 0, i32 13
  %40 = ptrtoint ptr %susp_fen.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %bf.load180.i = load i8, ptr %susp_fen.i, align 4
  %41 = and i8 %bf.load180.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool184.not.i = icmp eq i8 %41, 0
  br i1 %tobool184.not.i, label %if.then177.i.if.end273.i_crit_edge, label %land.lhs.true185.i

if.then177.i.if.end273.i_crit_edge:               ; preds = %if.then177.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end273.i

land.lhs.true185.i:                               ; preds = %if.then177.i
  %call186.i = call i32 @conn_lowest_conn(ptr noundef %cond.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %call186.i)
  %cmp187.i = icmp ugt i32 %call186.i, 9
  br i1 %cmp187.i, label %if.then188.i, label %land.lhs.true185.i.if.end273.i_crit_edge

land.lhs.true185.i.if.end273.i_crit_edge:         ; preds = %land.lhs.true185.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end273.i

if.then188.i:                                     ; preds = %land.lhs.true185.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vnr.i) #13
  %42 = ptrtoint ptr %vnr.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -1, ptr %vnr.i, align 4, !annotation !185
  %43 = call i32 @llvm.read_register.i32(metadata !175) #13
  %and.i.i.i.i.i.i = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %46, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !189
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i.i = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i.i, label %if.then188.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.then188.i.rcu_read_lock.exit.i_crit_edge:      ; preds = %if.then188.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.then188.i
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 696, ptr noundef nonnull @.str.39) #13
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.then188.i.rcu_read_lock.exit.i_crit_edge
  %peer_devices.i = getelementptr inbounds %struct.drbd_connection, ptr %cond.i, i32 0, i32 6
  %47 = ptrtoint ptr %vnr.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %vnr.i, align 4
  %call190191.i = call ptr @idr_get_next(ptr noundef %peer_devices.i, ptr noundef nonnull %vnr.i) #13
  %cmp191.not192.i = icmp eq ptr %call190191.i, null
  br i1 %cmp191.not192.i, label %rcu_read_lock.exit.i.for.end.i_crit_edge, label %rcu_read_lock.exit.i.for.body.i_crit_edge

rcu_read_lock.exit.i.for.body.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  br label %for.body.i

rcu_read_lock.exit.i.for.end.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %rcu_read_lock.exit.i.for.body.i_crit_edge
  %call190193.i = phi ptr [ %call190.i, %for.body.i.for.body.i_crit_edge ], [ %call190191.i, %rcu_read_lock.exit.i.for.body.i_crit_edge ]
  %device192.i = getelementptr inbounds %struct.drbd_peer_device, ptr %call190193.i, i32 0, i32 1
  %48 = ptrtoint ptr %device192.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %device192.i, align 4
  %flags193.i = getelementptr inbounds %struct.drbd_device, ptr %49, i32 0, i32 14
  call void @_clear_bit(i32 noundef 15, ptr noundef %flags193.i) #13
  %50 = ptrtoint ptr %vnr.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %vnr.i, align 4
  %add.i = add i32 %51, 1
  store i32 %add.i, ptr %vnr.i, align 4
  %call190.i = call ptr @idr_get_next(ptr noundef %peer_devices.i, ptr noundef nonnull %vnr.i) #13
  %cmp191.not.i = icmp eq ptr %call190.i, null
  br i1 %cmp191.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %rcu_read_lock.exit.i.for.end.i_crit_edge
  %call.i59.i = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i59.i, label %for.end.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i62.i

for.end.i.rcu_read_unlock.exit.i_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit.i

land.lhs.true.i62.i:                              ; preds = %for.end.i
  %call1.i60.i = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i60.i)
  %tobool.not.i61.i = icmp eq i32 %call1.i60.i, 0
  br i1 %tobool.not.i61.i, label %land.lhs.true.i62.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i64.i

land.lhs.true.i62.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i62.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i64.i:                             ; preds = %land.lhs.true.i62.i
  %.b4.i63.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i63.i, label %land.lhs.true2.i64.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i65.i

land.lhs.true2.i64.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i64.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit.i

if.then.i65.i:                                    ; preds = %land.lhs.true2.i64.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 724, ptr noundef nonnull @.str.40) #13
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i65.i, %land.lhs.true2.i64.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i62.i.rcu_read_unlock.exit.i_crit_edge, %for.end.i.rcu_read_unlock.exit.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !190
  %52 = call i32 @llvm.read_register.i32(metadata !175) #13
  %and.i.i.i.i.i66.i = and i32 %52, -16384
  %53 = inttoptr i32 %and.i.i.i.i.i66.i to ptr
  %preempt_count.i.i.i.i67.i = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %preempt_count.i.i.i.i67.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %preempt_count.i.i.i.i67.i, align 4
  %sub.i.i.i.i = add i32 %55, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i67.i, align 4
  call void @rcu_read_unlock_strict() #13
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  call void @_tl_restart(ptr noundef %cond.i, i32 noundef 28) #13
  %call272.i = call i32 @_conn_request_state(ptr noundef %cond.i, [1 x i32] [i32 4194304], [1 x i32] zeroinitializer, i32 noundef 2) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vnr.i) #13
  br label %if.end273.i

if.end273.i:                                      ; preds = %rcu_read_unlock.exit.i, %land.lhs.true185.i.if.end273.i_crit_edge, %if.then177.i.if.end273.i_crit_edge
  %56 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %1, align 8
  %req_lock275.i = getelementptr inbounds %struct.drbd_resource, ptr %57, i32 0, i32 12
  call void @_raw_spin_unlock_irq(ptr noundef %req_lock275.i) #13
  br label %if.end276.i

if.end276.i:                                      ; preds = %if.end273.i, %if.end172.i.if.end276.i_crit_edge
  %bf.lshr278.i = lshr i32 %.unpack, 4
  %bf.clear279.i = and i32 %bf.lshr278.i, 31
  %58 = zext i32 %bf.clear279.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.94)
  switch i32 %bf.clear279.i, label %land.lhs.true286.i [
    i32 16, label %if.end276.i.if.end305.i_crit_edge
    i32 20, label %if.end276.i.if.end305.i_crit_edge17
  ]

if.end276.i.if.end305.i_crit_edge17:              ; preds = %if.end276.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end305.i

if.end276.i.if.end305.i_crit_edge:                ; preds = %if.end276.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end305.i

land.lhs.true286.i:                               ; preds = %if.end276.i
  %bf.lshr288.i = lshr i32 %.unpack15, 4
  %bf.clear289.i = and i32 %bf.lshr288.i, 31
  %59 = zext i32 %bf.clear289.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.95)
  switch i32 %bf.clear289.i, label %land.lhs.true286.i.if.end305.i_crit_edge [
    i32 16, label %land.lhs.true286.i.land.lhs.true296.i_crit_edge
    i32 20, label %land.lhs.true286.i.land.lhs.true296.i_crit_edge18
  ]

land.lhs.true286.i.land.lhs.true296.i_crit_edge18: ; preds = %land.lhs.true286.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true296.i

land.lhs.true286.i.land.lhs.true296.i_crit_edge:  ; preds = %land.lhs.true286.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true296.i

land.lhs.true286.i.if.end305.i_crit_edge:         ; preds = %land.lhs.true286.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end305.i

land.lhs.true296.i:                               ; preds = %land.lhs.true286.i.land.lhs.true296.i_crit_edge, %land.lhs.true286.i.land.lhs.true296.i_crit_edge18
  %agreed_pro_version.i = getelementptr inbounds %struct.drbd_connection, ptr %cond.i, i32 0, i32 19
  %60 = ptrtoint ptr %agreed_pro_version.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %agreed_pro_version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 95, i32 %61)
  %cmp297.i = icmp sgt i32 %61, 95
  br i1 %cmp297.i, label %land.lhs.true298.i, label %land.lhs.true296.i.if.end305.i_crit_edge

land.lhs.true296.i.if.end305.i_crit_edge:         ; preds = %land.lhs.true296.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end305.i

land.lhs.true298.i:                               ; preds = %land.lhs.true296.i
  %state.i.i = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 27
  %62 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %bf.load.i.i = load i32, ptr %state.i.i, align 8
  %63 = and i32 %bf.load.i.i, 7680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp.i.i = icmp eq i32 %63, 0
  br i1 %cmp.i.i, label %land.lhs.true298.i.if.end305.i_crit_edge, label %if.end.i.i

land.lhs.true298.i.if.end305.i_crit_edge:         ; preds = %land.lhs.true298.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end305.i

if.end.i.i:                                       ; preds = %land.lhs.true298.i
  %local_cnt.i.i = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 41
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %local_cnt.i.i, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %local_cnt.i.i, i32 1, i32 3, i32 1) #13
  %64 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %local_cnt.i.i, ptr %local_cnt.i.i, i32 1, ptr elementtype(i32) %local_cnt.i.i) #13, !srcloc !196
  %65 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %bf.load2.i.i = load i32, ptr %state.i.i, align 8
  %66 = and i32 %bf.load2.i.i, 6144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp5.not.i.i = icmp eq i32 %66, 0
  br i1 %cmp5.not.i.i, label %if.end.i.i.if.end305.i.sink.split_crit_edge, label %if.then304.i

if.end.i.i.if.end305.i.sink.split_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end305.i.sink.split

if.then304.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @drbd_gen_and_send_sync_uuid(ptr noundef %spec.select.i.i) #13
  br label %if.end305.i.sink.split

if.end305.i.sink.split:                           ; preds = %if.then304.i, %if.end.i.i.if.end305.i.sink.split_crit_edge
  call fastcc void @put_ldev(ptr noundef %1) #13
  br label %if.end305.i

if.end305.i:                                      ; preds = %if.end305.i.sink.split, %land.lhs.true298.i.if.end305.i_crit_edge, %land.lhs.true296.i.if.end305.i_crit_edge, %land.lhs.true286.i.if.end305.i_crit_edge, %if.end276.i.if.end305.i_crit_edge, %if.end276.i.if.end305.i_crit_edge17
  %bf.lshr307.i = lshr i32 %.unpack, 13
  %bf.clear308.i = and i32 %bf.lshr307.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear308.i)
  %cmp309.i = icmp eq i32 %bf.clear308.i, 0
  br i1 %cmp309.i, label %land.lhs.true310.i, label %if.end305.i.if.end325.i_crit_edge

if.end305.i.if.end325.i_crit_edge:                ; preds = %if.end305.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end325.i

land.lhs.true310.i:                               ; preds = %if.end305.i
  %bf.lshr312.i = lshr i32 %.unpack15, 13
  %bf.clear313.i = and i32 %bf.lshr312.i, 15
  %67 = zext i32 %bf.clear313.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %bf.clear313.i, label %if.then320.i [
    i32 0, label %land.lhs.true310.i.if.end325.i_crit_edge
    i32 6, label %land.lhs.true310.i.if.end325.i_crit_edge19
  ]

land.lhs.true310.i.if.end325.i_crit_edge19:       ; preds = %land.lhs.true310.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end325.i

land.lhs.true310.i.if.end325.i_crit_edge:         ; preds = %land.lhs.true310.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end325.i

if.then320.i:                                     ; preds = %land.lhs.true310.i
  call void @__sanitizer_cov_trace_pc() #15
  %rs_total.i = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 48
  %68 = ptrtoint ptr %rs_total.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %rs_total.i, align 4
  %rs_failed.i = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 49
  %69 = ptrtoint ptr %rs_failed.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %rs_failed.i, align 8
  %rs_pending_cnt.i = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 39
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %rs_pending_cnt.i, i32 noundef 4) #13
  %70 = ptrtoint ptr %rs_pending_cnt.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile i32 0, ptr %rs_pending_cnt.i, align 4
  call void @drbd_rs_cancel_all(ptr noundef %1) #13
  %call321.i = call i32 @drbd_send_uuids(ptr noundef %spec.select.i.i) #13
  %call324.i = call i32 @drbd_send_state(ptr noundef %spec.select.i.i, [1 x i32] %6) #13
  br label %if.end325.i

if.end325.i:                                      ; preds = %if.then320.i, %land.lhs.true310.i.if.end325.i_crit_edge, %land.lhs.true310.i.if.end325.i_crit_edge19, %if.end305.i.if.end325.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %bf.clear279.i)
  %cmp329.not.i = icmp ne i32 %bf.clear279.i, 13
  %71 = and i32 %.unpack15, 496
  call void @__sanitizer_cov_trace_const_cmp4(i32 208, i32 %71)
  %cmp334.i = icmp eq i32 %71, 208
  %or.cond13.i = select i1 %cmp329.not.i, i1 %cmp334.i, i1 false
  br i1 %or.cond13.i, label %land.lhs.true335.i, label %if.end325.i.if.end341.i_crit_edge

if.end325.i.if.end341.i_crit_edge:                ; preds = %if.end325.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end341.i

land.lhs.true335.i:                               ; preds = %if.end325.i
  %state.i = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 27
  %72 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %bf.load336.i = load i32, ptr %state.i, align 8
  %73 = and i32 %bf.load336.i, 496
  call void @__sanitizer_cov_trace_const_cmp4(i32 208, i32 %73)
  %cmp339.i = icmp eq i32 %73, 208
  br i1 %cmp339.i, label %if.then340.i, label %land.lhs.true335.i.if.end341.i_crit_edge

land.lhs.true335.i.if.end341.i_crit_edge:         ; preds = %land.lhs.true335.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end341.i

if.then340.i:                                     ; preds = %land.lhs.true335.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @drbd_queue_bitmap_io(ptr noundef %1, ptr noundef nonnull @drbd_send_bitmap, ptr noundef null, ptr noundef nonnull @.str.72, i32 noundef 11) #13
  br label %if.end341.i

if.end341.i:                                      ; preds = %if.then340.i, %land.lhs.true335.i.if.end341.i_crit_edge, %if.end325.i.if.end341.i_crit_edge
  %bf.lshr346.i = lshr i32 %.unpack15, 13
  %bf.clear347.i = and i32 %bf.lshr346.i, 15
  %74 = zext i32 %bf.clear308.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values.97)
  switch i32 %bf.clear308.i, label %land.lhs.true4.i.i [
    i32 6, label %if.end341.i.land.lhs.true10.i.i_crit_edge
    i32 0, label %if.end341.i.if.end382.i_crit_edge
    i32 1, label %if.end341.i.if.end382.i_crit_edge20
    i32 2, label %if.end341.i.if.end382.i_crit_edge21
    i32 3, label %if.end341.i.if.end382.i_crit_edge22
    i32 5, label %if.end341.i.if.end382.i_crit_edge23
  ]

if.end341.i.if.end382.i_crit_edge23:              ; preds = %if.end341.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end382.i

if.end341.i.if.end382.i_crit_edge22:              ; preds = %if.end341.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end382.i

if.end341.i.if.end382.i_crit_edge21:              ; preds = %if.end341.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end382.i

if.end341.i.if.end382.i_crit_edge20:              ; preds = %if.end341.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end382.i

if.end341.i.if.end382.i_crit_edge:                ; preds = %if.end341.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end382.i

if.end341.i.land.lhs.true10.i.i_crit_edge:        ; preds = %if.end341.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true10.i.i

land.lhs.true4.i.i:                               ; preds = %if.end341.i
  %75 = zext i32 %bf.clear347.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values.98)
  switch i32 %bf.clear347.i, label %if.end.i68.i [
    i32 6, label %land.lhs.true4.i.i.if.then349.i_crit_edge
    i32 5, label %land.lhs.true4.i.i.if.then349.i_crit_edge24
    i32 3, label %land.lhs.true4.i.i.if.then349.i_crit_edge25
    i32 2, label %land.lhs.true4.i.i.if.then349.i_crit_edge26
    i32 1, label %land.lhs.true4.i.i.if.then349.i_crit_edge27
    i32 0, label %land.lhs.true4.i.i.if.then349.i_crit_edge28
  ]

land.lhs.true4.i.i.if.then349.i_crit_edge28:      ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then349.i

land.lhs.true4.i.i.if.then349.i_crit_edge27:      ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then349.i

land.lhs.true4.i.i.if.then349.i_crit_edge26:      ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then349.i

land.lhs.true4.i.i.if.then349.i_crit_edge25:      ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then349.i

land.lhs.true4.i.i.if.then349.i_crit_edge24:      ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then349.i

land.lhs.true4.i.i.if.then349.i_crit_edge:        ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then349.i

if.end.i68.i:                                     ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %bf.clear308.i)
  %cmp9.i.i = icmp eq i32 %bf.clear308.i, 6
  br i1 %cmp9.i.i, label %if.end.i68.i.land.lhs.true10.i.i_crit_edge, label %if.end.i68.i.if.end382.i_crit_edge

if.end.i68.i.if.end382.i_crit_edge:               ; preds = %if.end.i68.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end382.i

if.end.i68.i.land.lhs.true10.i.i_crit_edge:       ; preds = %if.end.i68.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true10.i.i

land.lhs.true10.i.i:                              ; preds = %if.end.i68.i.land.lhs.true10.i.i_crit_edge, %if.end341.i.land.lhs.true10.i.i_crit_edge
  %76 = zext i32 %bf.clear347.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %76, ptr @__sancov_gen_cov_switch_values.99)
  switch i32 %bf.clear347.i, label %land.lhs.true10.i.i.if.end382.i_crit_edge [
    i32 0, label %land.lhs.true10.i.i.if.then349.i_crit_edge
    i32 2, label %land.lhs.true10.i.i.if.then349.i_crit_edge29
    i32 5, label %land.lhs.true10.i.i.if.then349.i_crit_edge30
  ]

land.lhs.true10.i.i.if.then349.i_crit_edge30:     ; preds = %land.lhs.true10.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then349.i

land.lhs.true10.i.i.if.then349.i_crit_edge29:     ; preds = %land.lhs.true10.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then349.i

land.lhs.true10.i.i.if.then349.i_crit_edge:       ; preds = %land.lhs.true10.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then349.i

land.lhs.true10.i.i.if.end382.i_crit_edge:        ; preds = %land.lhs.true10.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end382.i

if.then349.i:                                     ; preds = %land.lhs.true10.i.i.if.then349.i_crit_edge, %land.lhs.true10.i.i.if.then349.i_crit_edge29, %land.lhs.true10.i.i.if.then349.i_crit_edge30, %land.lhs.true4.i.i.if.then349.i_crit_edge, %land.lhs.true4.i.i.if.then349.i_crit_edge24, %land.lhs.true4.i.i.if.then349.i_crit_edge25, %land.lhs.true4.i.i.if.then349.i_crit_edge26, %land.lhs.true4.i.i.if.then349.i_crit_edge27, %land.lhs.true4.i.i.if.then349.i_crit_edge28
  %state.i70.i = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 27
  %77 = ptrtoint ptr %state.i70.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %bf.load.i71.i = load i32, ptr %state.i70.i, align 8
  %78 = and i32 %bf.load.i71.i, 7680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %cmp.i72.i = icmp eq i32 %78, 0
  br i1 %cmp.i72.i, label %if.then349.i.if.end382.i_crit_edge, label %if.end.i79.i

if.then349.i.if.end382.i_crit_edge:               ; preds = %if.then349.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end382.i

if.end.i79.i:                                     ; preds = %if.then349.i
  %local_cnt.i73.i = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 41
  %call.i.i.i74.i = call zeroext i1 @__kasan_check_write(ptr noundef %local_cnt.i73.i, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %local_cnt.i73.i, i32 1, i32 3, i32 1) #13
  %79 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %local_cnt.i73.i, ptr %local_cnt.i73.i, i32 1, ptr elementtype(i32) %local_cnt.i73.i) #13, !srcloc !196
  %80 = ptrtoint ptr %state.i70.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %bf.load2.i75.i = load i32, ptr %state.i70.i, align 8
  %81 = and i32 %bf.load2.i75.i, 6144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %cmp5.not.i78.i = icmp eq i32 %81, 0
  br i1 %cmp5.not.i78.i, label %if.end.i79.i.if.end382.i.sink.split_crit_edge, label %if.then356.i

if.end.i79.i.if.end382.i.sink.split_crit_edge:    ; preds = %if.end.i79.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end382.i.sink.split

if.then356.i:                                     ; preds = %if.end.i79.i
  %82 = and i32 %.unpack15, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %82)
  %cmp364.i = icmp eq i32 %82, 4
  %or.cond14.i = or i1 %cmp42.i, %cmp364.i
  br i1 %or.cond14.i, label %land.lhs.true365.i, label %if.then356.i.if.end382.i.sink.split_crit_edge

if.then356.i.if.end382.i.sink.split_crit_edge:    ; preds = %if.then356.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end382.i.sink.split

land.lhs.true365.i:                               ; preds = %if.then356.i
  %ldev.i = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 15
  %83 = ptrtoint ptr %ldev.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %ldev.i, align 4
  %arrayidx366.i = getelementptr %struct.drbd_backing_dev, ptr %84, i32 0, i32 2, i32 3, i32 1
  %85 = ptrtoint ptr %arrayidx366.i to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %arrayidx366.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %86)
  %cmp367.i = icmp ne i64 %86, 0
  %or.cond15.i = select i1 %cmp367.i, i1 true, i1 %cmp47.not.not.i
  br i1 %or.cond15.i, label %land.lhs.true365.i.if.end382.i.sink.split_crit_edge, label %if.then373.i

land.lhs.true365.i.if.end382.i.sink.split_crit_edge: ; preds = %land.lhs.true365.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end382.i.sink.split

if.then373.i:                                     ; preds = %land.lhs.true365.i
  %87 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %1, align 8
  %susp.i.i = getelementptr inbounds %struct.drbd_resource, ptr %88, i32 0, i32 13
  %89 = ptrtoint ptr %susp.i.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %bf.load.i83.i = load i8, ptr %susp.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %bf.load.i83.i)
  %90 = icmp ult i8 %bf.load.i83.i, 32
  br i1 %90, label %if.else.i, label %if.then376.i

if.then376.i:                                     ; preds = %if.then373.i
  call void @__sanitizer_cov_trace_pc() #15
  %flags377.i = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 14
  call void @_set_bit(i32 noundef 15, ptr noundef %flags377.i) #13
  br label %if.end382.i.sink.split

if.else.i:                                        ; preds = %if.then373.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @drbd_uuid_new_current(ptr noundef %1) #13
  %call378.i = call i32 @drbd_send_uuids(ptr noundef %spec.select.i.i) #13
  br label %if.end382.i.sink.split

if.end382.i.sink.split:                           ; preds = %if.else.i, %if.then376.i, %land.lhs.true365.i.if.end382.i.sink.split_crit_edge, %if.then356.i.if.end382.i.sink.split_crit_edge, %if.end.i79.i.if.end382.i.sink.split_crit_edge
  call fastcc void @put_ldev(ptr noundef %1) #13
  br label %if.end382.i

if.end382.i:                                      ; preds = %if.end382.i.sink.split, %if.then349.i.if.end382.i_crit_edge, %land.lhs.true10.i.i.if.end382.i_crit_edge, %if.end.i68.i.if.end382.i_crit_edge, %if.end341.i.if.end382.i_crit_edge, %if.end341.i.if.end382.i_crit_edge20, %if.end341.i.if.end382.i_crit_edge21, %if.end341.i.if.end382.i_crit_edge22, %if.end341.i.if.end382.i_crit_edge23
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %bf.clear347.i)
  %cmp386.i = icmp ult i32 %bf.clear347.i, 4
  br i1 %cmp386.i, label %land.lhs.true387.i, label %if.end382.i.if.end430.i_crit_edge

if.end382.i.if.end430.i_crit_edge:                ; preds = %if.end382.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end430.i

land.lhs.true387.i:                               ; preds = %if.end382.i
  %state.i84.i = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 27
  %91 = ptrtoint ptr %state.i84.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %bf.load.i85.i = load i32, ptr %state.i84.i, align 8
  %92 = and i32 %bf.load.i85.i, 7680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %cmp.i86.i = icmp eq i32 %92, 0
  br i1 %cmp.i86.i, label %land.lhs.true387.i.if.end430.i_crit_edge, label %if.end.i93.i

land.lhs.true387.i.if.end430.i_crit_edge:         ; preds = %land.lhs.true387.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end430.i

if.end.i93.i:                                     ; preds = %land.lhs.true387.i
  %local_cnt.i87.i = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 41
  %call.i.i.i88.i = call zeroext i1 @__kasan_check_write(ptr noundef %local_cnt.i87.i, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %local_cnt.i87.i, i32 1, i32 3, i32 1) #13
  %93 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %local_cnt.i87.i, ptr %local_cnt.i87.i, i32 1, ptr elementtype(i32) %local_cnt.i87.i) #13, !srcloc !196
  %94 = ptrtoint ptr %state.i84.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %bf.load2.i89.i = load i32, ptr %state.i84.i, align 8
  %95 = and i32 %bf.load2.i89.i, 6144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %cmp5.not.i92.i = icmp eq i32 %95, 0
  br i1 %cmp5.not.i92.i, label %if.end.i93.i.if.end430.i.sink.split_crit_edge, label %if.then394.i

if.end.i93.i.if.end430.i.sink.split_crit_edge:    ; preds = %if.end.i93.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end430.i.sink.split

if.then394.i:                                     ; preds = %if.end.i93.i
  %bf.lshr396.i = lshr i32 %.unpack, 2
  %bf.clear397.i = and i32 %bf.lshr396.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %bf.clear397.i)
  %cmp398.not.i = icmp ne i32 %bf.clear397.i, 1
  %96 = and i32 %.unpack15, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %96)
  %cmp403.i = icmp eq i32 %96, 4
  %or.cond16.i = select i1 %cmp398.not.i, i1 %cmp403.i, i1 false
  br i1 %or.cond16.i, label %land.lhs.true404.i, label %if.end417.i

land.lhs.true404.i:                               ; preds = %if.then394.i
  %ldev405.i = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 15
  %97 = ptrtoint ptr %ldev405.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %ldev405.i, align 4
  %arrayidx408.i = getelementptr %struct.drbd_backing_dev, ptr %98, i32 0, i32 2, i32 3, i32 1
  %99 = ptrtoint ptr %arrayidx408.i to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %arrayidx408.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %100)
  %cmp409.i = icmp ne i64 %100, 0
  %or.cond17.i = select i1 %cmp409.i, i1 true, i1 %cmp47.not.not.i
  br i1 %or.cond17.i, label %land.lhs.true404.i.if.end430.i.sink.split_crit_edge, label %if.then415.i

land.lhs.true404.i.if.end430.i.sink.split_crit_edge: ; preds = %land.lhs.true404.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end430.i.sink.split

if.then415.i:                                     ; preds = %land.lhs.true404.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @drbd_uuid_new_current(ptr noundef %1) #13
  %call416.i = call i32 @drbd_send_uuids(ptr noundef %spec.select.i.i) #13
  br label %if.end430.i.sink.split

if.end417.i:                                      ; preds = %if.then394.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %bf.clear397.i)
  %cmp421.i = icmp eq i32 %bf.clear397.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %96)
  %cmp426.i = icmp eq i32 %96, 8
  %or.cond18.i = select i1 %cmp421.i, i1 %cmp426.i, i1 false
  br i1 %or.cond18.i, label %if.then427.i, label %if.end417.i.if.end430.i.sink.split_crit_edge

if.end417.i.if.end430.i.sink.split_crit_edge:     ; preds = %if.end417.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end430.i.sink.split

if.then427.i:                                     ; preds = %if.end417.i
  %101 = call i32 @llvm.read_register.i32(metadata !175) #13
  %and.i.i.i = and i32 %101, -16384
  %102 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %102, i32 0, i32 2
  %103 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %task.i.i, align 8
  %105 = ptrtoint ptr %peer_devices.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load volatile ptr, ptr %peer_devices.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %106, %peer_devices.i.i
  %spec.select.i.i.i = select i1 %cmp.not.i.i.i, ptr null, ptr %106
  %connection.i.i = getelementptr inbounds %struct.drbd_peer_device, ptr %spec.select.i.i.i, i32 0, i32 2
  %107 = ptrtoint ptr %connection.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %connection.i.i, align 4
  %task2.i.i = getelementptr inbounds %struct.drbd_connection, ptr %108, i32 0, i32 39, i32 1
  %109 = ptrtoint ptr %task2.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %task2.i.i, align 4
  %cmp.i97.i = icmp eq ptr %104, %110
  br i1 %cmp.i97.i, label %if.then427.i.drbd_bitmap_io_from_worker.exit.i_crit_edge, label %do.end.i.i

if.then427.i.drbd_bitmap_io_from_worker.exit.i_crit_edge: ; preds = %if.then427.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %drbd_bitmap_io_from_worker.exit.i

do.end.i.i:                                       ; preds = %if.then427.i
  call void @__sanitizer_cov_trace_pc() #15
  %vdisk.i.i = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 18
  %111 = ptrtoint ptr %vdisk.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %vdisk.i.i, align 4
  %part0.i.i = getelementptr inbounds %struct.gendisk, ptr %112, i32 0, i32 7
  %113 = ptrtoint ptr %part0.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %part0.i.i, align 4
  %bd_device.i.i = getelementptr inbounds %struct.block_device, ptr %114, i32 0, i32 10
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %bd_device.i.i, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str, i32 noundef 1526) #17
  br label %drbd_bitmap_io_from_worker.exit.i

drbd_bitmap_io_from_worker.exit.i:                ; preds = %do.end.i.i, %if.then427.i.drbd_bitmap_io_from_worker.exit.i_crit_edge
  %suspend_cnt.i.i = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 42
  %call.i.i.i98.i = call zeroext i1 @__kasan_check_write(ptr noundef %suspend_cnt.i.i, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %suspend_cnt.i.i, i32 1, i32 3, i32 1) #13
  %115 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %suspend_cnt.i.i, ptr %suspend_cnt.i.i, i32 1, ptr elementtype(i32) %suspend_cnt.i.i) #13, !srcloc !196
  call void @drbd_bm_lock(ptr noundef %1, ptr noundef nonnull @.str.73, i32 noundef 9) #13
  %call6.i.i = call i32 @drbd_bm_write(ptr noundef %1) #13
  call void @drbd_bm_unlock(ptr noundef %1) #13
  call void @drbd_resume_io(ptr noundef %1) #13
  br label %if.end430.i.sink.split

if.end430.i.sink.split:                           ; preds = %drbd_bitmap_io_from_worker.exit.i, %if.end417.i.if.end430.i.sink.split_crit_edge, %if.then415.i, %land.lhs.true404.i.if.end430.i.sink.split_crit_edge, %if.end.i93.i.if.end430.i.sink.split_crit_edge
  call fastcc void @put_ldev(ptr noundef %1) #13
  br label %if.end430.i

if.end430.i:                                      ; preds = %if.end430.i.sink.split, %land.lhs.true387.i.if.end430.i_crit_edge, %if.end382.i.if.end430.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %bf.clear41.i)
  %cmp437.i = icmp eq i32 %bf.clear41.i, 2
  %or.cond19.i = select i1 %cmp28.i, i1 %cmp437.i, i1 false
  br i1 %or.cond19.i, label %land.lhs.true438.i, label %if.end430.i.if.end453.i_crit_edge

if.end430.i.if.end453.i_crit_edge:                ; preds = %if.end430.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end453.i

land.lhs.true438.i:                               ; preds = %if.end430.i
  %state439.i = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 27
  %116 = ptrtoint ptr %state439.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %bf.load440.i = load i32, ptr %state439.i, align 8
  %117 = and i32 %bf.load440.i, 496
  call void @__sanitizer_cov_trace_const_cmp4(i32 175, i32 %117)
  %cmp443.i = icmp ugt i32 %117, 175
  %118 = and i32 %bf.load440.i, 7680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %cmp.i101.i = icmp eq i32 %118, 0
  %or.cond185.i = or i1 %cmp443.i, %cmp.i101.i
  br i1 %or.cond185.i, label %land.lhs.true438.i.if.end453.i_crit_edge, label %if.end.i108.i

land.lhs.true438.i.if.end453.i_crit_edge:         ; preds = %land.lhs.true438.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end453.i

if.end.i108.i:                                    ; preds = %land.lhs.true438.i
  %local_cnt.i102.i = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 41
  %call.i.i.i103.i = call zeroext i1 @__kasan_check_write(ptr noundef %local_cnt.i102.i, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %local_cnt.i102.i, i32 1, i32 3, i32 1) #13
  %119 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %local_cnt.i102.i, ptr %local_cnt.i102.i, i32 1, ptr elementtype(i32) %local_cnt.i102.i) #13, !srcloc !196
  %120 = ptrtoint ptr %state439.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %bf.load2.i104.i = load i32, ptr %state439.i, align 8
  %121 = and i32 %bf.load2.i104.i, 6144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %cmp5.not.i107.i = icmp eq i32 %121, 0
  br i1 %cmp5.not.i107.i, label %if.end.i108.i.if.end453.i.sink.split_crit_edge, label %if.then451.i

if.end.i108.i.if.end453.i.sink.split_crit_edge:   ; preds = %if.end.i108.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end453.i.sink.split

if.then451.i:                                     ; preds = %if.end.i108.i
  %122 = call i32 @llvm.read_register.i32(metadata !175) #13
  %and.i.i112.i = and i32 %122, -16384
  %123 = inttoptr i32 %and.i.i112.i to ptr
  %task.i113.i = getelementptr inbounds %struct.thread_info, ptr %123, i32 0, i32 2
  %124 = ptrtoint ptr %task.i113.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %task.i113.i, align 8
  %126 = ptrtoint ptr %peer_devices.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load volatile ptr, ptr %peer_devices.i.i, align 4
  %cmp.not.i.i115.i = icmp eq ptr %127, %peer_devices.i.i
  %spec.select.i.i116.i = select i1 %cmp.not.i.i115.i, ptr null, ptr %127
  %connection.i117.i = getelementptr inbounds %struct.drbd_peer_device, ptr %spec.select.i.i116.i, i32 0, i32 2
  %128 = ptrtoint ptr %connection.i117.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %connection.i117.i, align 4
  %task2.i118.i = getelementptr inbounds %struct.drbd_connection, ptr %129, i32 0, i32 39, i32 1
  %130 = ptrtoint ptr %task2.i118.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %task2.i118.i, align 4
  %cmp.i119.i = icmp eq ptr %125, %131
  br i1 %cmp.i119.i, label %if.then451.i.drbd_bitmap_io_from_worker.exit127.i_crit_edge, label %do.end.i123.i

if.then451.i.drbd_bitmap_io_from_worker.exit127.i_crit_edge: ; preds = %if.then451.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %drbd_bitmap_io_from_worker.exit127.i

do.end.i123.i:                                    ; preds = %if.then451.i
  call void @__sanitizer_cov_trace_pc() #15
  %vdisk.i120.i = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 18
  %132 = ptrtoint ptr %vdisk.i120.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %vdisk.i120.i, align 4
  %part0.i121.i = getelementptr inbounds %struct.gendisk, ptr %133, i32 0, i32 7
  %134 = ptrtoint ptr %part0.i121.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %part0.i121.i, align 4
  %bd_device.i122.i = getelementptr inbounds %struct.block_device, ptr %135, i32 0, i32 10
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %bd_device.i122.i, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str, i32 noundef 1526) #17
  br label %drbd_bitmap_io_from_worker.exit127.i

drbd_bitmap_io_from_worker.exit127.i:             ; preds = %do.end.i123.i, %if.then451.i.drbd_bitmap_io_from_worker.exit127.i_crit_edge
  %suspend_cnt.i124.i = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 42
  %call.i.i.i125.i = call zeroext i1 @__kasan_check_write(ptr noundef %suspend_cnt.i124.i, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %suspend_cnt.i124.i, i32 1, i32 3, i32 1) #13
  %136 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %suspend_cnt.i124.i, ptr %suspend_cnt.i124.i, i32 1, ptr elementtype(i32) %suspend_cnt.i124.i) #13, !srcloc !196
  call void @drbd_bm_lock(ptr noundef %1, ptr noundef nonnull @.str.74, i32 noundef 11) #13
  %call6.i126.i = call i32 @drbd_bm_write(ptr noundef %1) #13
  call void @drbd_bm_unlock(ptr noundef %1) #13
  call void @drbd_resume_io(ptr noundef %1) #13
  br label %if.end453.i.sink.split

if.end453.i.sink.split:                           ; preds = %drbd_bitmap_io_from_worker.exit127.i, %if.end.i108.i.if.end453.i.sink.split_crit_edge
  call fastcc void @put_ldev(ptr noundef %1) #13
  br label %if.end453.i

if.end453.i:                                      ; preds = %if.end453.i.sink.split, %land.lhs.true438.i.if.end453.i_crit_edge, %if.end430.i.if.end453.i_crit_edge
  %bf.lshr455.i = lshr i32 %.unpack15, 4
  %bf.clear456.i = and i32 %bf.lshr455.i, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %bf.clear456.i)
  %cmp457.i = icmp ugt i32 %bf.clear456.i, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %bf.clear.i)
  %cmp462.i = icmp eq i32 %bf.clear.i, 1
  %or.cond20.i = select i1 %cmp457.i, i1 %cmp462.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 1536, i32 %19)
  %cmp467.i = icmp eq i32 %19, 1536
  %or.cond21.i = select i1 %or.cond20.i, i1 %cmp467.i, i1 false
  br i1 %or.cond21.i, label %if.then468.i, label %if.end453.i.if.end474.i_crit_edge

if.end453.i.if.end474.i_crit_edge:                ; preds = %if.end453.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end474.i

if.then468.i:                                     ; preds = %if.end453.i
  call void @__sanitizer_cov_trace_pc() #15
  %call469.i = call i32 @drbd_send_sizes(ptr noundef %spec.select.i.i, i32 noundef 0, i32 noundef 0) #13
  %call470.i = call i32 @drbd_send_uuids(ptr noundef %spec.select.i.i) #13
  %call473.i = call i32 @drbd_send_state(ptr noundef %spec.select.i.i, [1 x i32] %6) #13
  br label %if.end474.i

if.end474.i:                                      ; preds = %if.then468.i, %if.end453.i.if.end474.i_crit_edge
  br i1 %cmp457.i, label %land.lhs.true479.i, label %if.end474.i.if.end499.i_crit_edge

if.end474.i.if.end499.i_crit_edge:                ; preds = %if.end474.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end499.i

land.lhs.true479.i:                               ; preds = %if.end474.i
  %bf.lshr4812.i = xor i32 %.unpack15, %.unpack
  %137 = and i32 %bf.lshr4812.i, 1310720
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %137)
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %land.lhs.true479.i.if.end499.i_crit_edge, label %if.then495.i

land.lhs.true479.i.if.end499.i_crit_edge:         ; preds = %land.lhs.true479.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end499.i

if.then495.i:                                     ; preds = %land.lhs.true479.i
  call void @__sanitizer_cov_trace_pc() #15
  %call498.i = call i32 @drbd_send_state(ptr noundef %spec.select.i.i, [1 x i32] %6) #13
  br label %if.end499.i

if.end499.i:                                      ; preds = %if.then495.i, %land.lhs.true479.i.if.end499.i_crit_edge, %if.end474.i.if.end499.i_crit_edge
  %bf.lshr501.i = lshr i32 %.unpack, 18
  %bf.clear502.i = and i32 %bf.lshr501.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear502.i)
  %tobool503.not.i = icmp ne i32 %bf.clear502.i, 0
  %139 = and i32 %.unpack, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %tobool508.not.i = icmp ne i32 %139, 0
  %or.cond22.i = select i1 %tobool503.not.i, i1 true, i1 %tobool508.not.i
  %140 = and i32 %.unpack, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %140)
  %tobool513.not.i = icmp ne i32 %140, 0
  %or.cond23.i = select i1 %or.cond22.i, i1 true, i1 %tobool513.not.i
  %141 = and i32 %.unpack15, 1835008
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %142 = icmp eq i32 %141, 0
  %or.cond190.i = select i1 %or.cond23.i, i1 true, i1 %142
  br i1 %or.cond190.i, label %if.end499.i.if.end530.i_crit_edge, label %if.then529.i

if.end499.i.if.end530.i_crit_edge:                ; preds = %if.end499.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end530.i

if.then529.i:                                     ; preds = %if.end499.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @suspend_other_sg(ptr noundef %1) #13
  br label %if.end530.i

if.end530.i:                                      ; preds = %if.then529.i, %if.end499.i.if.end530.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %bf.clear279.i)
  %cmp534.i = icmp ne i32 %bf.clear279.i, 9
  %cmp457.not.i = xor i1 %cmp457.i, true
  %brmerge.i = select i1 %cmp534.i, i1 true, i1 %cmp457.not.i
  br i1 %brmerge.i, label %if.end530.i.if.end544.i_crit_edge, label %if.then540.i

if.end530.i.if.end544.i_crit_edge:                ; preds = %if.end530.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end544.i

if.then540.i:                                     ; preds = %if.end530.i
  call void @__sanitizer_cov_trace_pc() #15
  %call543.i = call i32 @drbd_send_state(ptr noundef %spec.select.i.i, [1 x i32] %6) #13
  br label %if.end544.i

if.end544.i:                                      ; preds = %if.then540.i, %if.end530.i.if.end544.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %bf.clear279.i)
  %cmp548.not.i = icmp ne i32 %bf.clear279.i, 22
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %bf.clear456.i)
  %cmp553.i = icmp eq i32 %bf.clear456.i, 22
  %or.cond26.i = select i1 %cmp548.not.i, i1 %cmp553.i, i1 false
  br i1 %or.cond26.i, label %lor.lhs.false568.thread.i, label %if.end558.i

lor.lhs.false568.thread.i:                        ; preds = %if.end544.i
  call void @__sanitizer_cov_trace_pc() #15
  %call557.i = call i32 @drbd_send_state(ptr noundef %spec.select.i.i, [1 x i32] %6) #13
  br label %if.end579.i

if.end558.i:                                      ; preds = %if.end544.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %bf.clear279.i)
  %cmp562.not.i = icmp ne i32 %bf.clear279.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %bf.clear456.i)
  %cmp567.i = icmp eq i32 %bf.clear456.i, 12
  %or.cond27.i = select i1 %cmp562.not.i, i1 %cmp567.i, i1 false
  br i1 %or.cond27.i, label %if.end558.i.if.then578.i_crit_edge, label %lor.lhs.false568.i

if.end558.i.if.then578.i_crit_edge:               ; preds = %if.end558.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then578.i

lor.lhs.false568.i:                               ; preds = %if.end558.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %bf.clear279.i)
  %cmp572.not.i = icmp ne i32 %bf.clear279.i, 11
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %bf.clear456.i)
  %cmp577.i = icmp eq i32 %bf.clear456.i, 11
  %or.cond28.i = select i1 %cmp572.not.i, i1 %cmp577.i, i1 false
  br i1 %or.cond28.i, label %lor.lhs.false568.i.if.then578.i_crit_edge, label %lor.lhs.false568.i.if.end579.i_crit_edge

lor.lhs.false568.i.if.end579.i_crit_edge:         ; preds = %lor.lhs.false568.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end579.i

lor.lhs.false568.i.if.then578.i_crit_edge:        ; preds = %lor.lhs.false568.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then578.i

if.then578.i:                                     ; preds = %lor.lhs.false568.i.if.then578.i_crit_edge, %if.end558.i.if.then578.i_crit_edge
  call void @drbd_queue_bitmap_io(ptr noundef %1, ptr noundef nonnull @drbd_bmio_set_n_write, ptr noundef nonnull @abw_start_sync, ptr noundef nonnull @.str.75, i32 noundef 11) #13
  br label %if.end579.i

if.end579.i:                                      ; preds = %if.then578.i, %lor.lhs.false568.i.if.end579.i_crit_edge, %lor.lhs.false568.thread.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %bf.clear.i)
  %cmp583.not.i = icmp ne i32 %bf.clear.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %19)
  %cmp588.i = icmp eq i32 %19, 1024
  %or.cond29.i = select i1 %cmp583.not.i, i1 %cmp588.i, i1 false
  br i1 %or.cond29.i, label %if.then589.i, label %if.end646.i

if.then589.i:                                     ; preds = %if.end579.i
  %ldev590.i = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 15
  %143 = ptrtoint ptr %ldev590.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %ldev590.i, align 4
  %tobool591.not.i = icmp eq ptr %144, null
  br i1 %tobool591.not.i, label %if.then589.i.if.end646.thread.i_crit_edge, label %if.then592.i

if.then589.i.if.end646.thread.i_crit_edge:        ; preds = %if.then589.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end646.thread.i

if.then592.i:                                     ; preds = %if.then589.i
  %145 = call i32 @llvm.read_register.i32(metadata !175) #13
  %and.i.i.i.i.i48.i = and i32 %145, -16384
  %146 = inttoptr i32 %and.i.i.i.i.i48.i to ptr
  %preempt_count.i.i.i.i49.i = getelementptr inbounds %struct.thread_info, ptr %146, i32 0, i32 1
  %147 = ptrtoint ptr %preempt_count.i.i.i.i49.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load volatile i32, ptr %preempt_count.i.i.i.i49.i, align 4
  %add.i.i.i50.i = add i32 %148, 1
  store volatile i32 %add.i.i.i50.i, ptr %preempt_count.i.i.i.i49.i, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !189
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i51.i = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i51.i, label %if.then592.i.rcu_read_lock.exit58.i_crit_edge, label %land.lhs.true.i54.i

if.then592.i.rcu_read_lock.exit58.i_crit_edge:    ; preds = %if.then592.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit58.i

land.lhs.true.i54.i:                              ; preds = %if.then592.i
  %call1.i52.i = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i52.i)
  %tobool.not.i53.i = icmp eq i32 %call1.i52.i, 0
  br i1 %tobool.not.i53.i, label %land.lhs.true.i54.i.rcu_read_lock.exit58.i_crit_edge, label %land.lhs.true2.i56.i

land.lhs.true.i54.i.rcu_read_lock.exit58.i_crit_edge: ; preds = %land.lhs.true.i54.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit58.i

land.lhs.true2.i56.i:                             ; preds = %land.lhs.true.i54.i
  %.b4.i55.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i55.i, label %land.lhs.true2.i56.i.rcu_read_lock.exit58.i_crit_edge, label %if.then.i57.i

land.lhs.true2.i56.i.rcu_read_lock.exit58.i_crit_edge: ; preds = %land.lhs.true2.i56.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit58.i

if.then.i57.i:                                    ; preds = %land.lhs.true2.i56.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 696, ptr noundef nonnull @.str.39) #13
  br label %rcu_read_lock.exit58.i

rcu_read_lock.exit58.i:                           ; preds = %if.then.i57.i, %land.lhs.true2.i56.i.rcu_read_lock.exit58.i_crit_edge, %land.lhs.true.i54.i.rcu_read_lock.exit58.i_crit_edge, %if.then592.i.rcu_read_lock.exit58.i_crit_edge
  %149 = ptrtoint ptr %ldev590.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %ldev590.i, align 4
  %disk_conf.i = getelementptr inbounds %struct.drbd_backing_dev, ptr %150, i32 0, i32 3
  %151 = ptrtoint ptr %disk_conf.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load volatile ptr, ptr %disk_conf.i, align 8
  %call596.i = call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call596.i)
  %tobool597.not.i = icmp eq i32 %call596.i, 0
  br i1 %tobool597.not.i, label %land.lhs.true598.i, label %rcu_read_lock.exit58.i.do.end606.i_crit_edge

rcu_read_lock.exit58.i.do.end606.i_crit_edge:     ; preds = %rcu_read_lock.exit58.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end606.i

land.lhs.true598.i:                               ; preds = %rcu_read_lock.exit58.i
  %call599.i = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call599.i)
  %tobool600.not.i = icmp eq i32 %call599.i, 0
  br i1 %tobool600.not.i, label %land.lhs.true598.i.do.end606.i_crit_edge, label %land.lhs.true601.i

land.lhs.true598.i.do.end606.i_crit_edge:         ; preds = %land.lhs.true598.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end606.i

land.lhs.true601.i:                               ; preds = %land.lhs.true598.i
  %.b1.i = load i1, ptr @after_state_ch.__warned, align 1
  br i1 %.b1.i, label %land.lhs.true601.i.do.end606.i_crit_edge, label %if.then603.i

land.lhs.true601.i.do.end606.i_crit_edge:         ; preds = %land.lhs.true601.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end606.i

if.then603.i:                                     ; preds = %land.lhs.true601.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @after_state_ch.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1904, ptr noundef nonnull @.str.45) #13
  br label %do.end606.i

do.end606.i:                                      ; preds = %if.then603.i, %land.lhs.true601.i.do.end606.i_crit_edge, %land.lhs.true598.i.do.end606.i_crit_edge, %rcu_read_lock.exit58.i.do.end606.i_crit_edge
  %on_io_error.i = getelementptr inbounds %struct.disk_conf, ptr %152, i32 0, i32 7
  %153 = ptrtoint ptr %on_io_error.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %on_io_error.i, align 4
  %call.i128.i = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i128.i, label %do.end606.i.rcu_read_unlock.exit139.i_crit_edge, label %land.lhs.true.i131.i

do.end606.i.rcu_read_unlock.exit139.i_crit_edge:  ; preds = %do.end606.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit139.i

land.lhs.true.i131.i:                             ; preds = %do.end606.i
  %call1.i129.i = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i129.i)
  %tobool.not.i130.i = icmp eq i32 %call1.i129.i, 0
  br i1 %tobool.not.i130.i, label %land.lhs.true.i131.i.rcu_read_unlock.exit139.i_crit_edge, label %land.lhs.true2.i133.i

land.lhs.true.i131.i.rcu_read_unlock.exit139.i_crit_edge: ; preds = %land.lhs.true.i131.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit139.i

land.lhs.true2.i133.i:                            ; preds = %land.lhs.true.i131.i
  %.b4.i132.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i132.i, label %land.lhs.true2.i133.i.rcu_read_unlock.exit139.i_crit_edge, label %if.then.i134.i

land.lhs.true2.i133.i.rcu_read_unlock.exit139.i_crit_edge: ; preds = %land.lhs.true2.i133.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit139.i

if.then.i134.i:                                   ; preds = %land.lhs.true2.i133.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 724, ptr noundef nonnull @.str.40) #13
  br label %rcu_read_unlock.exit139.i

rcu_read_unlock.exit139.i:                        ; preds = %if.then.i134.i, %land.lhs.true2.i133.i.rcu_read_unlock.exit139.i_crit_edge, %land.lhs.true.i131.i.rcu_read_unlock.exit139.i_crit_edge, %do.end606.i.rcu_read_unlock.exit139.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !190
  %155 = call i32 @llvm.read_register.i32(metadata !175) #13
  %and.i.i.i.i.i135.i = and i32 %155, -16384
  %156 = inttoptr i32 %and.i.i.i.i.i135.i to ptr
  %preempt_count.i.i.i.i136.i = getelementptr inbounds %struct.thread_info, ptr %156, i32 0, i32 1
  %157 = ptrtoint ptr %preempt_count.i.i.i.i136.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load volatile i32, ptr %preempt_count.i.i.i.i136.i, align 4
  %sub.i.i.i137.i = add i32 %158, -1
  store volatile i32 %sub.i.i.i137.i, ptr %preempt_count.i.i.i.i136.i, align 4
  call void @rcu_read_unlock_strict() #13
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  %flags608.i = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 14
  %call609.i = call i32 @_test_and_clear_bit(i32 noundef 10, ptr noundef %flags608.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call609.i)
  %tobool610.not.i = icmp ne i32 %call609.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %154)
  %cmp612.i = icmp eq i32 %154, 1
  %or.cond30.i = select i1 %tobool610.not.i, i1 %cmp612.i, i1 false
  br i1 %or.cond30.i, label %if.then613.i, label %rcu_read_unlock.exit139.i.if.end615.i_crit_edge

rcu_read_unlock.exit139.i.if.end615.i_crit_edge:  ; preds = %rcu_read_unlock.exit139.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end615.i

if.then613.i:                                     ; preds = %rcu_read_unlock.exit139.i
  call void @__sanitizer_cov_trace_pc() #15
  %call614.i = call i32 @drbd_khelper(ptr noundef %1, ptr noundef nonnull @.str.76) #13
  br label %if.end615.i

if.end615.i:                                      ; preds = %if.then613.i, %rcu_read_unlock.exit139.i.if.end615.i_crit_edge
  %call617.i = call i32 @_test_and_clear_bit(i32 noundef 12, ptr noundef %flags608.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call617.i)
  %tobool618.not.i = icmp eq i32 %call617.i, 0
  br i1 %tobool618.not.i, label %if.end615.i.if.end620.i_crit_edge, label %if.then619.i

if.end615.i.if.end620.i_crit_edge:                ; preds = %if.end615.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end620.i

if.then619.i:                                     ; preds = %if.end615.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @tl_abort_disk_io(ptr noundef %1) #13
  br label %if.end620.i

if.end620.i:                                      ; preds = %if.then619.i, %if.end615.i.if.end620.i_crit_edge
  %state621.i = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 27
  %159 = ptrtoint ptr %state621.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %bf.load622.i = load i32, ptr %state621.i, align 8
  %bf.lshr623.i = lshr i32 %bf.load622.i, 9
  %bf.clear624.i = and i32 %bf.lshr623.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %bf.clear624.i)
  %cmp625.not.i = icmp eq i32 %bf.clear624.i, 2
  br i1 %cmp625.not.i, label %if.end620.i.if.end635.i_crit_edge, label %do.end629.i

if.end620.i.if.end635.i_crit_edge:                ; preds = %if.end620.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end635.i

do.end629.i:                                      ; preds = %if.end620.i
  call void @__sanitizer_cov_trace_pc() #15
  %vdisk.i = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 18
  %160 = ptrtoint ptr %vdisk.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %vdisk.i, align 4
  %part0.i = getelementptr inbounds %struct.gendisk, ptr %161, i32 0, i32 7
  %162 = ptrtoint ptr %part0.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %part0.i, align 4
  %bd_device.i = getelementptr inbounds %struct.block_device, ptr %163, i32 0, i32 10
  %call634.i = call ptr @drbd_disk_str(i32 noundef %bf.clear624.i) #13
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %bd_device.i, ptr noundef nonnull @.str.77, ptr noundef %call634.i) #17
  br label %if.end635.i

if.end635.i:                                      ; preds = %do.end629.i, %if.end620.i.if.end635.i_crit_edge
  br i1 %cmp457.i, label %if.then640.i, label %if.end635.i.if.end644.i_crit_edge

if.end635.i.if.end644.i_crit_edge:                ; preds = %if.end635.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end644.i

if.then640.i:                                     ; preds = %if.end635.i
  call void @__sanitizer_cov_trace_pc() #15
  %call643.i = call i32 @drbd_send_state(ptr noundef %spec.select.i.i, [1 x i32] %6) #13
  br label %if.end644.i

if.end644.i:                                      ; preds = %if.then640.i, %if.end635.i.if.end644.i_crit_edge
  call void @drbd_rs_cancel_all(ptr noundef %1) #13
  call void @drbd_md_sync(ptr noundef %1) #13
  br label %if.end646.thread.i

if.end646.thread.i:                               ; preds = %if.end644.i, %if.then589.i.if.end646.thread.i_crit_edge
  call fastcc void @put_ldev(ptr noundef %1) #13
  br label %if.end703.i

if.end646.i:                                      ; preds = %if.end579.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear.i)
  %cmp650.not.i = icmp ne i32 %bf.clear.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp655.i = icmp eq i32 %19, 0
  %or.cond31.i = select i1 %cmp650.not.i, i1 %cmp655.i, i1 false
  br i1 %or.cond31.i, label %if.then656.i, label %if.end684.i

if.then656.i:                                     ; preds = %if.end646.i
  %state657.i = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 27
  %164 = ptrtoint ptr %state657.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %bf.load658.i = load i32, ptr %state657.i, align 8
  %bf.lshr659.i = lshr i32 %bf.load658.i, 9
  %bf.clear660.i = and i32 %bf.lshr659.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear660.i)
  %cmp661.not.i = icmp eq i32 %bf.clear660.i, 0
  br i1 %cmp661.not.i, label %if.then656.i.if.end674.i_crit_edge, label %do.end665.i

if.then656.i.if.end674.i_crit_edge:               ; preds = %if.then656.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end674.i

do.end665.i:                                      ; preds = %if.then656.i
  call void @__sanitizer_cov_trace_pc() #15
  %vdisk666.i = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 18
  %165 = ptrtoint ptr %vdisk666.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %vdisk666.i, align 4
  %part0667.i = getelementptr inbounds %struct.gendisk, ptr %166, i32 0, i32 7
  %167 = ptrtoint ptr %part0667.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %part0667.i, align 4
  %bd_device668.i = getelementptr inbounds %struct.block_device, ptr %168, i32 0, i32 10
  %call673.i = call ptr @drbd_disk_str(i32 noundef %bf.clear660.i) #13
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %bd_device668.i, ptr noundef nonnull @.str.80, ptr noundef %call673.i) #17
  br label %if.end674.i

if.end674.i:                                      ; preds = %do.end665.i, %if.then656.i.if.end674.i_crit_edge
  br i1 %cmp457.i, label %if.then679.i, label %if.end674.i.if.end683.i_crit_edge

if.end674.i.if.end683.i_crit_edge:                ; preds = %if.end674.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end683.i

if.then679.i:                                     ; preds = %if.end674.i
  call void @__sanitizer_cov_trace_pc() #15
  %call682.i = call i32 @drbd_send_state(ptr noundef %spec.select.i.i, [1 x i32] %6) #13
  br label %if.end683.i

if.end683.i:                                      ; preds = %if.then679.i, %if.end674.i.if.end683.i_crit_edge
  call fastcc void @put_ldev(ptr noundef %1) #13
  br label %if.end703.i

if.end684.i:                                      ; preds = %if.end646.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %19)
  %cmp693.i = icmp ne i32 %19, 2048
  %or.cond32.i = select i1 %cmp.not.i, i1 true, i1 %cmp693.i
  %brmerge34.i = select i1 %or.cond32.i, i1 true, i1 %cmp457.not.i
  br i1 %brmerge34.i, label %if.end684.i.if.end703.i_crit_edge, label %if.then699.i

if.end684.i.if.end703.i_crit_edge:                ; preds = %if.end684.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end703.i

if.then699.i:                                     ; preds = %if.end684.i
  call void @__sanitizer_cov_trace_pc() #15
  %call702.i = call i32 @drbd_send_state(ptr noundef %spec.select.i.i, [1 x i32] %6) #13
  br label %if.end703.i

if.end703.i:                                      ; preds = %if.then699.i, %if.end684.i.if.end703.i_crit_edge, %if.end683.i, %if.end646.thread.i
  %bf.lshr705.i = lshr i32 %.unpack15, 9
  %bf.clear706.i = and i32 %bf.lshr705.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %bf.clear706.i)
  %cmp707.i = icmp ugt i32 %bf.clear706.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %bf.clear347.i)
  %cmp712.i = icmp ugt i32 %bf.clear347.i, 3
  %or.cond35.i = and i1 %cmp707.i, %cmp712.i
  br i1 %or.cond35.i, label %land.lhs.true713.i, label %if.end703.i.if.end724.i_crit_edge

if.end703.i.if.end724.i_crit_edge:                ; preds = %if.end703.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end724.i

land.lhs.true713.i:                               ; preds = %if.end703.i
  %flags714.i = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 14
  %call715.i = call i32 @_test_and_clear_bit(i32 noundef 13, ptr noundef %flags714.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call715.i)
  %tobool716.not.i = icmp ne i32 %call715.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %bf.clear456.i)
  %cmp721.i = icmp eq i32 %bf.clear456.i, 10
  %or.cond36.i = select i1 %tobool716.not.i, i1 %cmp721.i, i1 false
  br i1 %or.cond36.i, label %if.then722.i, label %land.lhs.true713.i.if.end724.i_crit_edge

land.lhs.true713.i.if.end724.i_crit_edge:         ; preds = %land.lhs.true713.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end724.i

if.then722.i:                                     ; preds = %land.lhs.true713.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @resync_after_online_grow(ptr noundef %1) #13
  br label %if.end724.i

if.end724.i:                                      ; preds = %if.then722.i, %land.lhs.true713.i.if.end724.i_crit_edge, %if.end703.i.if.end724.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %bf.clear279.i)
  %cmp728.i = icmp ugt i32 %bf.clear279.i, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %bf.clear456.i)
  %cmp733.i = icmp ult i32 %bf.clear456.i, 11
  %or.cond37.i = select i1 %cmp728.i, i1 %cmp733.i, i1 false
  br i1 %or.cond37.i, label %if.end724.i.if.then754.i_crit_edge, label %lor.lhs.false734.i

if.end724.i.if.then754.i_crit_edge:               ; preds = %if.end724.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then754.i

lor.lhs.false734.i:                               ; preds = %if.end724.i
  %169 = and i32 %.unpack15, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %169)
  %tobool743.not.i = icmp eq i32 %169, 0
  %or.cond38.i = select i1 %tobool508.not.i, i1 %tobool743.not.i, i1 false
  br i1 %or.cond38.i, label %lor.lhs.false734.i.if.then754.i_crit_edge, label %lor.lhs.false744.i

lor.lhs.false734.i.if.then754.i_crit_edge:        ; preds = %lor.lhs.false734.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then754.i

lor.lhs.false744.i:                               ; preds = %lor.lhs.false734.i
  %170 = and i32 %.unpack15, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %170)
  %tobool753.not.i = icmp eq i32 %170, 0
  %or.cond39.i = select i1 %tobool513.not.i, i1 %tobool753.not.i, i1 false
  br i1 %or.cond39.i, label %lor.lhs.false744.i.if.then754.i_crit_edge, label %lor.lhs.false744.i.if.end755.i_crit_edge

lor.lhs.false744.i.if.end755.i_crit_edge:         ; preds = %lor.lhs.false744.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end755.i

lor.lhs.false744.i.if.then754.i_crit_edge:        ; preds = %lor.lhs.false744.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then754.i

if.then754.i:                                     ; preds = %lor.lhs.false744.i.if.then754.i_crit_edge, %lor.lhs.false734.i.if.then754.i_crit_edge, %if.end724.i.if.then754.i_crit_edge
  call void @resume_next_sg(ptr noundef %1) #13
  br label %if.end755.i

if.end755.i:                                      ; preds = %if.then754.i, %lor.lhs.false744.i.if.end755.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %bf.clear279.i)
  %cmp764.i = icmp ugt i32 %bf.clear279.i, 15
  %or.cond40.i = select i1 %cmp33.i, i1 %cmp764.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %bf.clear456.i)
  %cmp769.i = icmp eq i32 %bf.clear456.i, 10
  %or.cond41.i = select i1 %or.cond40.i, i1 %cmp769.i, i1 false
  br i1 %or.cond41.i, label %if.then770.i, label %if.end755.i.if.end774.i_crit_edge

if.end755.i.if.end774.i_crit_edge:                ; preds = %if.end755.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end774.i

if.then770.i:                                     ; preds = %if.end755.i
  call void @__sanitizer_cov_trace_pc() #15
  %call773.i = call i32 @drbd_send_state(ptr noundef %spec.select.i.i, [1 x i32] %6) #13
  br label %if.end774.i

if.end774.i:                                      ; preds = %if.then770.i, %if.end755.i.if.end774.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %bf.clear279.i)
  %cmp778.i = icmp eq i32 %bf.clear279.i, 18
  %or.cond42.i = select i1 %cmp778.i, i1 %cmp769.i, i1 false
  br i1 %or.cond42.i, label %land.lhs.true784.i, label %if.end774.i.if.end790.i_crit_edge

if.end774.i.if.end790.i_crit_edge:                ; preds = %if.end774.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end790.i

land.lhs.true784.i:                               ; preds = %if.end774.i
  %171 = ptrtoint ptr %peer_devices.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load volatile ptr, ptr %peer_devices.i.i, align 4
  %cmp.not.i.i141.i = icmp eq ptr %172, %peer_devices.i.i
  %spec.select.i.i142.i = select i1 %cmp.not.i.i141.i, ptr null, ptr %172
  %connection.i143.i = getelementptr inbounds %struct.drbd_peer_device, ptr %spec.select.i.i142.i, i32 0, i32 2
  %173 = ptrtoint ptr %connection.i143.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %connection.i143.i, align 4
  %agreed_pro_version.i.i = getelementptr inbounds %struct.drbd_connection, ptr %174, i32 0, i32 19
  %175 = ptrtoint ptr %agreed_pro_version.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %agreed_pro_version.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %176)
  %cmp.i144.i = icmp sgt i32 %176, 96
  br i1 %cmp.i144.i, label %verify_can_do_stop_sector.exit.i, label %land.lhs.true784.i.if.end790.i_crit_edge

land.lhs.true784.i.if.end790.i_crit_edge:         ; preds = %land.lhs.true784.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end790.i

verify_can_do_stop_sector.exit.i:                 ; preds = %land.lhs.true784.i
  %177 = ptrtoint ptr %peer_devices.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load volatile ptr, ptr %peer_devices.i.i, align 4
  %cmp.not.i7.i.i = icmp eq ptr %178, %peer_devices.i.i
  %spec.select.i8.i.i = select i1 %cmp.not.i7.i.i, ptr null, ptr %178
  %connection2.i.i = getelementptr inbounds %struct.drbd_peer_device, ptr %spec.select.i8.i.i, i32 0, i32 2
  %179 = ptrtoint ptr %connection2.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %connection2.i.i, align 4
  %agreed_pro_version3.i.i = getelementptr inbounds %struct.drbd_connection, ptr %180, i32 0, i32 19
  %181 = ptrtoint ptr %agreed_pro_version3.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %agreed_pro_version3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %182)
  %cmp4.i.not.i = icmp eq i32 %182, 100
  br i1 %cmp4.i.not.i, label %verify_can_do_stop_sector.exit.i.if.end790.i_crit_edge, label %if.then786.i

verify_can_do_stop_sector.exit.i.if.end790.i_crit_edge: ; preds = %verify_can_do_stop_sector.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end790.i

if.then786.i:                                     ; preds = %verify_can_do_stop_sector.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %call789.i = call i32 @drbd_send_state(ptr noundef %spec.select.i.i, [1 x i32] %6) #13
  br label %if.end790.i

if.end790.i:                                      ; preds = %if.then786.i, %verify_can_do_stop_sector.exit.i.if.end790.i_crit_edge, %land.lhs.true784.i.if.end790.i_crit_edge, %if.end774.i.if.end790.i_crit_edge
  %183 = add nsw i32 %bf.clear279.i, -11
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %183)
  %184 = icmp ult i32 %183, 11
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %bf.clear456.i)
  %cmp809.i = icmp ugt i32 %bf.clear456.i, 21
  %or.cond44.i = or i1 %cmp769.i, %cmp809.i
  %or.cond187.i = select i1 %184, i1 %or.cond44.i, i1 false
  br i1 %or.cond187.i, label %land.lhs.true810.i, label %if.end790.i.if.end818.i_crit_edge

if.end790.i.if.end818.i_crit_edge:                ; preds = %if.end790.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end818.i

land.lhs.true810.i:                               ; preds = %if.end790.i
  %state.i145.i = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 27
  %185 = ptrtoint ptr %state.i145.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %bf.load.i146.i = load i32, ptr %state.i145.i, align 8
  %186 = and i32 %bf.load.i146.i, 7680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %186)
  %cmp.i147.i = icmp eq i32 %186, 0
  br i1 %cmp.i147.i, label %land.lhs.true810.i.if.end818.i_crit_edge, label %if.end.i154.i

land.lhs.true810.i.if.end818.i_crit_edge:         ; preds = %land.lhs.true810.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end818.i

if.end.i154.i:                                    ; preds = %land.lhs.true810.i
  %local_cnt.i148.i = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 41
  %call.i.i.i149.i = call zeroext i1 @__kasan_check_write(ptr noundef %local_cnt.i148.i, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %local_cnt.i148.i, i32 1, i32 3, i32 1) #13
  %187 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %local_cnt.i148.i, ptr %local_cnt.i148.i, i32 1, ptr elementtype(i32) %local_cnt.i148.i) #13, !srcloc !196
  %188 = ptrtoint ptr %state.i145.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %bf.load2.i150.i = load i32, ptr %state.i145.i, align 8
  %189 = and i32 %bf.load2.i150.i, 6144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %189)
  %cmp5.not.i153.i = icmp eq i32 %189, 0
  br i1 %cmp5.not.i153.i, label %if.end.i154.i.if.end818.i.sink.split_crit_edge, label %if.then817.i

if.end.i154.i.if.end818.i.sink.split_crit_edge:   ; preds = %if.end.i154.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end818.i.sink.split

if.then817.i:                                     ; preds = %if.end.i154.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @drbd_queue_bitmap_io(ptr noundef %1, ptr noundef nonnull @drbd_bm_write_copy_pages, ptr noundef null, ptr noundef nonnull @.str.82, i32 noundef 8) #13
  br label %if.end818.i.sink.split

if.end818.i.sink.split:                           ; preds = %if.then817.i, %if.end.i154.i.if.end818.i.sink.split_crit_edge
  call fastcc void @put_ldev(ptr noundef %1) #13
  br label %if.end818.i

if.end818.i:                                      ; preds = %if.end818.i.sink.split, %land.lhs.true810.i.if.end818.i_crit_edge, %if.end790.i.if.end818.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear706.i)
  %cmp822.i = icmp eq i32 %bf.clear706.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear456.i)
  %cmp827.i = icmp eq i32 %bf.clear456.i, 0
  %or.cond45.i = select i1 %cmp822.i, i1 %cmp827.i, i1 false
  %or.cond46.i = select i1 %or.cond45.i, i1 %cmp437.i, i1 false
  %or.cond46.not.i = xor i1 %or.cond46.i, true
  %bf.lshr837.i = lshr i32 %.unpack15, 18
  %bf.clear838.i = and i32 %bf.lshr837.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.clear502.i, i32 %bf.clear838.i)
  %cmp839.not.i = icmp eq i32 %bf.clear502.i, %bf.clear838.i
  %or.cond47.i = select i1 %or.cond46.not.i, i1 true, i1 %cmp839.not.i
  br i1 %or.cond47.i, label %if.end818.i.after_state_ch.exit_crit_edge, label %if.then840.i

if.end818.i.after_state_ch.exit_crit_edge:        ; preds = %if.end818.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %after_state_ch.exit

if.then840.i:                                     ; preds = %if.end818.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @resume_next_sg(ptr noundef %1) #13
  br label %after_state_ch.exit

after_state_ch.exit:                              ; preds = %if.then840.i, %if.end818.i.after_state_ch.exit_crit_edge
  call void @drbd_md_sync(ptr noundef %1) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %sib.i) #13
  %190 = ptrtoint ptr %state_change to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %state_change, align 4
  call void @forget_state_change(ptr noundef %191)
  %192 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %flags, align 4
  %and = and i32 %193, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %after_state_ch.exit.if.end_crit_edge, label %if.then

after_state_ch.exit.if.end_crit_edge:             ; preds = %after_state_ch.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %after_state_ch.exit
  call void @__sanitizer_cov_trace_pc() #15
  %done = getelementptr inbounds %struct.after_state_chg_work, ptr %w, i32 0, i32 5
  %194 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %done, align 4
  call void @complete(ptr noundef %195) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %after_state_ch.exit.if.end_crit_edge
  call void @kfree(ptr noundef %w) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drbd_bitmap_io_from_worker(ptr noundef %device, ptr nocapture noundef readonly %io_fn, ptr noundef %why, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !175) #13
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
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
  %task2 = getelementptr inbounds %struct.drbd_connection, ptr %7, i32 0, i32 39, i32 1
  %8 = ptrtoint ptr %task2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task2, align 4
  %cmp = icmp eq ptr %3, %9
  br i1 %cmp, label %entry.do.end5_crit_edge, label %do.end

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %vdisk = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %10 = ptrtoint ptr %vdisk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vdisk, align 4
  %part0 = getelementptr inbounds %struct.gendisk, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %part0, align 4
  %bd_device = getelementptr inbounds %struct.block_device, ptr %13, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %bd_device, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str, i32 noundef 1526) #17
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %suspend_cnt = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 42
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %suspend_cnt, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %suspend_cnt, i32 1, i32 3, i32 1) #13
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %suspend_cnt, ptr %suspend_cnt, i32 1, ptr elementtype(i32) %suspend_cnt) #13, !srcloc !196
  tail call void @drbd_bm_lock(ptr noundef %device, ptr noundef %why, i32 noundef %flags) #13
  %call6 = tail call i32 %io_fn(ptr noundef %device) #13
  tail call void @drbd_bm_unlock(ptr noundef %device) #13
  tail call void @drbd_resume_io(ptr noundef %device) #13
  ret i32 %call6
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drbd_bm_lock(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drbd_bm_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @notify_resource_state_change(ptr noundef %skb, i32 noundef %seq, ptr nocapture noundef readonly %resource_state_change, i32 noundef %type) #0 align 64 {
entry:
  %resource_info = alloca %struct.resource_info, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %resource_state_change to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resource_state_change, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %resource_info) #13
  %2 = ptrtoint ptr %resource_info to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %resource_info, align 8, !annotation !185
  %arrayidx = getelementptr %struct.drbd_resource_state_change, ptr %resource_state_change, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  store i32 %4, ptr %resource_info, align 8
  %res_susp = getelementptr inbounds %struct.resource_info, ptr %resource_info, i32 0, i32 1
  %arrayidx2 = getelementptr %struct.drbd_resource_state_change, ptr %resource_state_change, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx2, align 1, !range !191
  %7 = ptrtoint ptr %res_susp to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %res_susp, align 4
  %res_susp_nod = getelementptr inbounds %struct.resource_info, ptr %resource_info, i32 0, i32 2
  %arrayidx3 = getelementptr %struct.drbd_resource_state_change, ptr %resource_state_change, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx3, align 1, !range !191
  %10 = ptrtoint ptr %res_susp_nod to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %res_susp_nod, align 1
  %res_susp_fen = getelementptr inbounds %struct.resource_info, ptr %resource_info, i32 0, i32 3
  %arrayidx6 = getelementptr %struct.drbd_resource_state_change, ptr %resource_state_change, i32 0, i32 4, i32 1
  %11 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx6, align 1, !range !191
  %13 = ptrtoint ptr %res_susp_fen to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %res_susp_fen, align 2
  call void @notify_resource_state(ptr noundef %skb, i32 noundef %seq, ptr noundef %1, ptr noundef nonnull %resource_info, i32 noundef %type) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %resource_info) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @notify_resource_state(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @notify_connection_state_change(ptr noundef %skb, i32 noundef %seq, ptr nocapture noundef readonly %connection_state_change, i32 noundef %type) #0 align 64 {
entry:
  %connection_info = alloca %struct.connection_info, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connection_state_change to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connection_state_change, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %connection_info) #13
  %2 = getelementptr inbounds %struct.connection_info, ptr %connection_info, i32 0, i32 1
  %arrayidx = getelementptr %struct.drbd_connection_state_change, ptr %connection_state_change, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %5 = ptrtoint ptr %connection_info to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %connection_info, align 4
  %arrayidx2 = getelementptr %struct.drbd_connection_state_change, ptr %connection_state_change, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx2, align 4
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %2, align 4
  call void @notify_connection_state(ptr noundef %skb, i32 noundef %seq, ptr noundef %1, ptr noundef nonnull %connection_info, i32 noundef %type) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %connection_info) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @notify_connection_state(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @notify_device_state_change(ptr noundef %skb, i32 noundef %seq, ptr nocapture noundef readonly %device_state_change, i32 noundef %type) #0 align 64 {
entry:
  %device_info = alloca %struct.device_info, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %device_state_change to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device_state_change, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %device_info) #13
  %arrayidx = getelementptr %struct.drbd_device_state_change, ptr %device_state_change, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %4 = ptrtoint ptr %device_info to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %device_info, align 4
  call void @notify_device_state(ptr noundef %skb, i32 noundef %seq, ptr noundef %1, ptr noundef nonnull %device_info, i32 noundef %type) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %device_info) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @notify_device_state(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @notify_peer_device_state_change(ptr noundef %skb, i32 noundef %seq, ptr nocapture noundef readonly %p, i32 noundef %type) #0 align 64 {
entry:
  %peer_device_info = alloca %struct.peer_device_info, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %peer_device_info) #13
  %2 = getelementptr inbounds %struct.peer_device_info, ptr %peer_device_info, i32 0, i32 1
  %3 = getelementptr inbounds %struct.peer_device_info, ptr %peer_device_info, i32 0, i32 2
  %4 = getelementptr inbounds %struct.peer_device_info, ptr %peer_device_info, i32 0, i32 3
  %5 = getelementptr inbounds %struct.peer_device_info, ptr %peer_device_info, i32 0, i32 4
  %arrayidx = getelementptr %struct.drbd_peer_device_state_change, ptr %p, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %8 = ptrtoint ptr %peer_device_info to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %peer_device_info, align 4
  %arrayidx2 = getelementptr %struct.drbd_peer_device_state_change, ptr %p, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx2, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %2, align 4
  %arrayidx3 = getelementptr %struct.drbd_peer_device_state_change, ptr %p, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx3, align 1, !range !191
  %14 = zext i8 %13 to i32
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %3, align 4
  %arrayidx4 = getelementptr %struct.drbd_peer_device_state_change, ptr %p, i32 0, i32 4, i32 1
  %16 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx4, align 1, !range !191
  %18 = zext i8 %17 to i32
  %19 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %4, align 4
  %arrayidx7 = getelementptr %struct.drbd_peer_device_state_change, ptr %p, i32 0, i32 5, i32 1
  %20 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx7, align 1, !range !191
  %22 = zext i8 %21 to i32
  %23 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %5, align 4
  call void @notify_peer_device_state(ptr noundef %skb, i32 noundef %seq, ptr noundef %1, ptr noundef nonnull %peer_device_info, i32 noundef %type) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %peer_device_info) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @notify_peer_device_state(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @_conn_request_state(ptr noundef %connection, [1 x i32] %mask.coerce, [1 x i32] %val.coerce, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  %pb.i = alloca [300 x i8], align 1
  %vnr.i265 = alloca i32, align 4
  %vnr.i = alloca i32, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %mask.coerce.fca.0.extract = extractvalue [1 x i32] %mask.coerce, 0
  %val.coerce.fca.0.extract = extractvalue [1 x i32] %val.coerce, 0
  %cstate = getelementptr inbounds %struct.drbd_connection, ptr %connection, i32 0, i32 7
  %0 = ptrtoint ptr %cstate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cstate, align 4
  %2 = and i32 %mask.coerce.fca.0.extract, 496
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

if.then:                                          ; preds = %entry
  %bf.lshr5 = lshr i32 %val.coerce.fca.0.extract, 4
  %bf.clear6 = and i32 %bf.lshr5, 31
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %bf.clear6)
  %cmp.i = icmp eq i32 %1, %bf.clear6
  br i1 %cmp.i, label %if.then.if.end8_crit_edge, label %if.end.i

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp1.i = icmp eq i32 %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %bf.clear6)
  %cmp2.i = icmp eq i32 %bf.clear6, 1
  %or.cond.i = and i1 %cmp2.i, %cmp1.i
  br i1 %or.cond.i, label %if.end.i.land.lhs.true110_crit_edge, label %if.end4.i

if.end.i.land.lhs.true110_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true110

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %bf.clear6)
  %cmp7.not.i = icmp ne i32 %bf.clear6, 2
  %3 = and i1 %cmp7.not.i, %cmp1.i
  br i1 %3, label %if.end4.i.land.lhs.true110_crit_edge, label %if.end9.i

if.end4.i.land.lhs.true110_crit_edge:             ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true110

if.end9.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %1)
  %cmp10.i = icmp ult i32 %1, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %bf.clear6)
  %cmp12.i = icmp ugt i32 %bf.clear6, 9
  %or.cond42.i = and i1 %cmp12.i, %cmp10.i
  br i1 %or.cond42.i, label %if.end9.i.land.lhs.true110_crit_edge, label %if.end14.i

if.end9.i.land.lhs.true110_crit_edge:             ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true110

if.end14.i:                                       ; preds = %if.end9.i
  %4 = add i32 %1, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %4)
  %5 = icmp ult i32 %4, -5
  %nc.off.i = add nsw i32 %bf.clear6, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %nc.off.i)
  %switch.i = icmp ult i32 %nc.off.i, 2
  %or.cond47.i = or i1 %switch.i, %5
  br i1 %or.cond47.i, label %if.end23.i, label %if.end14.i.land.lhs.true110_crit_edge

if.end14.i.land.lhs.true110_crit_edge:            ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true110

if.end23.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp24.i = icmp ne i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear6)
  %cmp26.not.i = icmp eq i32 %bf.clear6, 0
  %or.cond46.i = or i1 %cmp26.not.i, %cmp24.i
  br i1 %or.cond46.i, label %if.end23.i.if.end8_crit_edge, label %if.end23.i.land.lhs.true110_crit_edge

if.end23.i.land.lhs.true110_crit_edge:            ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true110

if.end23.i.if.end8_crit_edge:                     ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

if.end8:                                          ; preds = %if.end23.i.if.end8_crit_edge, %if.then.if.end8_crit_edge, %entry.if.end8_crit_edge
  %call13 = tail call fastcc i32 @conn_is_valid_transition(ptr noundef %connection, [1 x i32] %mask.coerce, [1 x i32] %val.coerce, i32 noundef %flags)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 1
  br i1 %cmp14, label %if.end8.land.lhs.true110_crit_edge, label %if.end16

if.end8.land.lhs.true110_crit_edge:               ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true110

if.end16:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %1)
  %cmp17 = icmp eq i32 %1, 9
  %6 = and i32 %val.coerce.fca.0.extract, 496
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %6)
  %cmp21 = icmp eq i32 %6, 16
  %or.cond = select i1 %cmp17, i1 %cmp21, i1 false
  %and = and i32 %flags, 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool23.not = icmp eq i32 %and, 0
  %or.cond324 = and i1 %tobool23.not, %or.cond
  br i1 %or.cond324, label %if.then24, label %if.end16.if.end70_crit_edge

if.end16.if.end70_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end70

if.then24:                                        ; preds = %if.end16
  %resource = getelementptr inbounds %struct.drbd_connection, ptr %connection, i32 0, i32 1
  %7 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %resource, align 4
  %req_lock = getelementptr inbounds %struct.drbd_resource, ptr %8, i32 0, i32 12
  tail call void @_raw_spin_unlock_irq(ptr noundef %req_lock) #13
  %cstate_mutex = getelementptr inbounds %struct.drbd_connection, ptr %connection, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %cstate_mutex, i32 noundef 0) #13
  %flags25 = getelementptr inbounds %struct.drbd_connection, ptr %connection, i32 0, i32 10
  tail call void @_set_bit(i32 noundef 4, ptr noundef %flags25) #13
  %call30 = tail call i32 @conn_send_state_req(ptr noundef %connection, [1 x i32] %mask.coerce, [1 x i32] %val.coerce) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.then39, label %if.then32

if.then32:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %flags25) #13
  br label %abort_unlocked

if.then39:                                        ; preds = %if.then24
  tail call void @_set_bit(i32 noundef 11, ptr noundef %flags25) #13
  %9 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %resource, align 4
  %req_lock43 = getelementptr inbounds %struct.drbd_resource, ptr %10, i32 0, i32 12
  tail call void @_raw_spin_lock_irq(ptr noundef %req_lock43) #13
  %call.i = tail call i32 @_test_and_clear_bit(i32 noundef 5, ptr noundef %flags25) #13
  %call5.i = tail call i32 @_test_and_clear_bit(i32 noundef 6, ptr noundef %flags25) #13
  %call13.i = tail call fastcc i32 @conn_is_valid_transition(ptr noundef %connection, [1 x i32] %mask.coerce, [1 x i32] %val.coerce, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call13.i)
  %cmp.i244 = icmp eq i32 %call13.i, 1
  br i1 %cmp.i244, label %land.lhs.true.i, label %if.then39.if.end16.i_crit_edge

if.then39.if.end16.i_crit_edge:                   ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16.i

land.lhs.true.i:                                  ; preds = %if.then39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  %spec.select.i245 = select i1 %tobool.not.i, i32 0, i32 3
  %rv.1.i = select i1 %tobool6.not.i, i32 %spec.select.i245, i32 -10
  %11 = ptrtoint ptr %cstate to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cstate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %12)
  %cmp14.i = icmp eq i32 %12, 9
  br i1 %cmp14.i, label %land.lhs.true.i._conn_rq_cond.exit_crit_edge, label %land.lhs.true.i.if.end16.i_crit_edge

land.lhs.true.i.if.end16.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16.i

land.lhs.true.i._conn_rq_cond.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %_conn_rq_cond.exit

if.end16.i:                                       ; preds = %land.lhs.true.i.if.end16.i_crit_edge, %if.then39.if.end16.i_crit_edge
  br label %_conn_rq_cond.exit

_conn_rq_cond.exit:                               ; preds = %if.end16.i, %land.lhs.true.i._conn_rq_cond.exit_crit_edge
  %retval.0.i246 = phi i32 [ %call13.i, %if.end16.i ], [ %rv.1.i, %land.lhs.true.i._conn_rq_cond.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i246)
  %tobool49.not = icmp eq i32 %retval.0.i246, 0
  br i1 %tobool49.not, label %if.end51, label %_conn_rq_cond.exit.do.end_crit_edge

_conn_rq_cond.exit.do.end_crit_edge:              ; preds = %_conn_rq_cond.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.end51:                                         ; preds = %_conn_rq_cond.exit
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #13
  %13 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #13
  %ping_wait = getelementptr inbounds %struct.drbd_connection, ptr %connection, i32 0, i32 12
  br label %for.cond

for.cond:                                         ; preds = %cleanup, %if.end51
  %call52 = call i32 @prepare_to_wait_event(ptr noundef %ping_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #13
  %call.i248 = call i32 @_test_and_clear_bit(i32 noundef 5, ptr noundef %flags25) #13
  %call5.i249 = call i32 @_test_and_clear_bit(i32 noundef 6, ptr noundef %flags25) #13
  %call13.i250 = call fastcc i32 @conn_is_valid_transition(ptr noundef %connection, [1 x i32] %mask.coerce, [1 x i32] %val.coerce, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call13.i250)
  %cmp.i251 = icmp eq i32 %call13.i250, 1
  br i1 %cmp.i251, label %land.lhs.true.i258, label %for.cond.if.end16.i259_crit_edge

for.cond.if.end16.i259_crit_edge:                 ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16.i259

land.lhs.true.i258:                               ; preds = %for.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i249)
  %tobool6.not.i252 = icmp eq i32 %call5.i249, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i248)
  %tobool.not.i253 = icmp eq i32 %call.i248, 0
  %spec.select.i254 = select i1 %tobool.not.i253, i32 0, i32 3
  %rv.1.i255 = select i1 %tobool6.not.i252, i32 %spec.select.i254, i32 -10
  %14 = ptrtoint ptr %cstate to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cstate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %15)
  %cmp14.i257 = icmp eq i32 %15, 9
  br i1 %cmp14.i257, label %land.lhs.true.i258._conn_rq_cond.exit261_crit_edge, label %land.lhs.true.i258.if.end16.i259_crit_edge

land.lhs.true.i258.if.end16.i259_crit_edge:       ; preds = %land.lhs.true.i258
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16.i259

land.lhs.true.i258._conn_rq_cond.exit261_crit_edge: ; preds = %land.lhs.true.i258
  call void @__sanitizer_cov_trace_pc() #15
  br label %_conn_rq_cond.exit261

if.end16.i259:                                    ; preds = %land.lhs.true.i258.if.end16.i259_crit_edge, %for.cond.if.end16.i259_crit_edge
  br label %_conn_rq_cond.exit261

_conn_rq_cond.exit261:                            ; preds = %if.end16.i259, %land.lhs.true.i258._conn_rq_cond.exit261_crit_edge
  %retval.0.i260 = phi i32 [ %call13.i250, %if.end16.i259 ], [ %rv.1.i255, %land.lhs.true.i258._conn_rq_cond.exit261_crit_edge ]
  %tobool58.not = icmp eq i32 %retval.0.i260, 0
  br i1 %tobool58.not, label %cleanup, label %for.end

cleanup:                                          ; preds = %_conn_rq_cond.exit261
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %resource, align 4
  %req_lock62 = getelementptr inbounds %struct.drbd_resource, ptr %17, i32 0, i32 12
  call void @_raw_spin_unlock_irq(ptr noundef %req_lock62) #13
  call void @schedule() #13
  %18 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %resource, align 4
  %req_lock64 = getelementptr inbounds %struct.drbd_resource, ptr %19, i32 0, i32 12
  call void @_raw_spin_lock_irq(ptr noundef %req_lock64) #13
  br label %for.cond

for.end:                                          ; preds = %_conn_rq_cond.exit261
  call void @__sanitizer_cov_trace_pc() #15
  call void @finish_wait(ptr noundef %ping_wait, ptr noundef nonnull %__wq_entry) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #13
  br label %do.end

do.end:                                           ; preds = %for.end, %_conn_rq_cond.exit.do.end_crit_edge
  %rv.0 = phi i32 [ %retval.0.i246, %_conn_rq_cond.exit.do.end_crit_edge ], [ %retval.0.i260, %for.end ]
  call void @_clear_bit(i32 noundef 4, ptr noundef %flags25) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %rv.0)
  %cmp67 = icmp slt i32 %rv.0, 1
  br i1 %cmp67, label %do.end.if.then102_crit_edge, label %do.end.if.end70_crit_edge

do.end.if.end70_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end70

do.end.if.then102_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then102

if.end70:                                         ; preds = %do.end.if.end70_crit_edge, %if.end16.if.end70_crit_edge
  %rv.1 = phi i32 [ %rv.0, %do.end.if.end70_crit_edge ], [ %call13, %if.end16.if.end70_crit_edge ]
  %resource71 = getelementptr inbounds %struct.drbd_connection, ptr %connection, i32 0, i32 1
  %20 = ptrtoint ptr %resource71 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %resource71, align 4
  %call72 = call ptr @remember_old_state(ptr noundef %21, i32 noundef 2592)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vnr.i) #13
  %22 = ptrtoint ptr %cstate to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cstate, align 4
  %bf.value.i = shl i32 %23, 4
  %bf.shl.i = and i32 %bf.value.i, 496
  %bf.set27.i = or i32 %bf.shl.i, 49154
  %24 = call i32 @llvm.read_register.i32(metadata !175) #13
  %and.i.i.i.i.i.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %27, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !189
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i.i = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i.i, label %if.end70.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end70.rcu_read_lock.exit.i_crit_edge:          ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end70
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 696, ptr noundef nonnull @.str.39) #13
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end70.rcu_read_lock.exit.i_crit_edge
  %peer_devices.i = getelementptr inbounds %struct.drbd_connection, ptr %connection, i32 0, i32 6
  %28 = ptrtoint ptr %vnr.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %vnr.i, align 4
  %call116.i = call ptr @idr_get_next(ptr noundef %peer_devices.i, ptr noundef nonnull %vnr.i) #13
  %cmp.not117.i = icmp eq ptr %call116.i, null
  br i1 %cmp.not117.i, label %rcu_read_lock.exit.i.for.end.i_crit_edge, label %cleanup.peel.i

rcu_read_lock.exit.i.for.end.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

cleanup.peel.i:                                   ; preds = %rcu_read_lock.exit.i
  %device28.peel.i = getelementptr inbounds %struct.drbd_peer_device, ptr %call116.i, i32 0, i32 1
  %29 = ptrtoint ptr %device28.peel.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %device28.peel.i, align 4
  %state.peel.i = getelementptr inbounds %struct.drbd_device, ptr %30, i32 0, i32 27
  %31 = ptrtoint ptr %state.peel.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %os.sroa.0.0.copyload.peel.i = load i32, ptr %state.peel.i, align 8
  %32 = ptrtoint ptr %vnr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %vnr.i, align 4
  %add.peel.i = add i32 %33, 1
  store i32 %add.peel.i, ptr %vnr.i, align 4
  %call.peel.i = call ptr @idr_get_next(ptr noundef %peer_devices.i, ptr noundef nonnull %vnr.i) #13
  %cmp.not.peel.i = icmp eq ptr %call.peel.i, null
  br i1 %cmp.not.peel.i, label %cleanup.peel.i.for.end.i_crit_edge, label %cleanup.peel.i.cleanup.i_crit_edge

cleanup.peel.i.cleanup.i_crit_edge:               ; preds = %cleanup.peel.i
  br label %cleanup.i

cleanup.peel.i.for.end.i_crit_edge:               ; preds = %cleanup.peel.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

cleanup.i:                                        ; preds = %cleanup.i.cleanup.i_crit_edge, %cleanup.peel.i.cleanup.i_crit_edge
  %call121.i = phi ptr [ %call.i264, %cleanup.i.cleanup.i_crit_edge ], [ %call.peel.i, %cleanup.peel.i.cleanup.i_crit_edge ]
  %flags.0120.i = phi i32 [ %flags.5.i, %cleanup.i.cleanup.i_crit_edge ], [ -1, %cleanup.peel.i.cleanup.i_crit_edge ]
  %device28.i = getelementptr inbounds %struct.drbd_peer_device, ptr %call121.i, i32 0, i32 1
  %34 = ptrtoint ptr %device28.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %device28.i, align 4
  %state.i = getelementptr inbounds %struct.drbd_device, ptr %35, i32 0, i32 27
  %36 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %os.sroa.0.0.copyload.i = load i32, ptr %state.i, align 8
  %37 = xor i32 %os.sroa.0.0.copyload.i, %os.sroa.0.0.copyload.peel.i
  %38 = and i32 %37, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp33.not.i = icmp eq i32 %38, 0
  %and.i = and i32 %flags.0120.i, -33
  %spec.select.i263 = select i1 %cmp33.not.i, i32 %flags.0120.i, i32 %and.i
  %39 = and i32 %37, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp41.not.i = icmp eq i32 %39, 0
  %and43.i = and i32 %spec.select.i263, -65
  %flags.2.i = select i1 %cmp41.not.i, i32 %spec.select.i263, i32 %and43.i
  %40 = and i32 %37, 496
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp51.not.i = icmp eq i32 %40, 0
  %and53.i = and i32 %flags.2.i, -129
  %flags.3.i = select i1 %cmp51.not.i, i32 %flags.2.i, i32 %and53.i
  %41 = and i32 %37, 7680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp61.not.i = icmp eq i32 %41, 0
  %and63.i = and i32 %flags.3.i, -257
  %flags.4.i = select i1 %cmp61.not.i, i32 %flags.3.i, i32 %and63.i
  %42 = and i32 %37, 122880
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp71.not.i = icmp eq i32 %42, 0
  %and73.i = and i32 %flags.4.i, -513
  %flags.5.i = select i1 %cmp71.not.i, i32 %flags.4.i, i32 %and73.i
  %43 = ptrtoint ptr %vnr.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %vnr.i, align 4
  %add.i = add i32 %44, 1
  store i32 %add.i, ptr %vnr.i, align 4
  %call.i264 = call ptr @idr_get_next(ptr noundef %peer_devices.i, ptr noundef nonnull %vnr.i) #13
  %cmp.not.i = icmp eq ptr %call.i264, null
  br i1 %cmp.not.i, label %cleanup.i.for.end.i_crit_edge, label %cleanup.i.cleanup.i_crit_edge, !llvm.loop !203

cleanup.i.cleanup.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %cleanup.peel.i.for.end.i_crit_edge, %rcu_read_lock.exit.i.for.end.i_crit_edge
  %cs.sroa.0.0.lcssa.i = phi i32 [ %bf.set27.i, %rcu_read_lock.exit.i.for.end.i_crit_edge ], [ %os.sroa.0.0.copyload.peel.i, %cleanup.peel.i.for.end.i_crit_edge ], [ %os.sroa.0.0.copyload.peel.i, %cleanup.i.for.end.i_crit_edge ]
  %flags.0.lcssa.i = phi i32 [ -1, %rcu_read_lock.exit.i.for.end.i_crit_edge ], [ -1, %cleanup.peel.i.for.end.i_crit_edge ], [ %flags.5.i, %cleanup.i.for.end.i_crit_edge ]
  %call.i107.i = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i107.i, label %for.end.i.conn_old_common_state.exit_crit_edge, label %land.lhs.true.i110.i

for.end.i.conn_old_common_state.exit_crit_edge:   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %conn_old_common_state.exit

land.lhs.true.i110.i:                             ; preds = %for.end.i
  %call1.i108.i = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i108.i)
  %tobool.not.i109.i = icmp eq i32 %call1.i108.i, 0
  br i1 %tobool.not.i109.i, label %land.lhs.true.i110.i.conn_old_common_state.exit_crit_edge, label %land.lhs.true2.i112.i

land.lhs.true.i110.i.conn_old_common_state.exit_crit_edge: ; preds = %land.lhs.true.i110.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %conn_old_common_state.exit

land.lhs.true2.i112.i:                            ; preds = %land.lhs.true.i110.i
  %.b4.i111.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i111.i, label %land.lhs.true2.i112.i.conn_old_common_state.exit_crit_edge, label %if.then.i113.i

land.lhs.true2.i112.i.conn_old_common_state.exit_crit_edge: ; preds = %land.lhs.true2.i112.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %conn_old_common_state.exit

if.then.i113.i:                                   ; preds = %land.lhs.true2.i112.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 724, ptr noundef nonnull @.str.40) #13
  br label %conn_old_common_state.exit

conn_old_common_state.exit:                       ; preds = %if.then.i113.i, %land.lhs.true2.i112.i.conn_old_common_state.exit_crit_edge, %land.lhs.true.i110.i.conn_old_common_state.exit_crit_edge, %for.end.i.conn_old_common_state.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !190
  %45 = call i32 @llvm.read_register.i32(metadata !175) #13
  %and.i.i.i.i.i114.i = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i.i.i114.i to ptr
  %preempt_count.i.i.i.i115.i = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %preempt_count.i.i.i.i115.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %preempt_count.i.i.i.i115.i, align 4
  %sub.i.i.i.i = add i32 %48, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i115.i, align 4
  call void @rcu_read_unlock_strict() #13
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  %or.i = or i32 %flags, 992
  %and75.i = and i32 %flags.0.lcssa.i, %or.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vnr.i) #13
  %or = or i32 %and75.i, 1024
  %bf.lshr.i = lshr i32 %val.coerce.fca.0.extract, 4
  %bf.clear29.i = and i32 %bf.lshr.i, 31
  %bf.shl.i266 = shl nuw nsw i32 %bf.clear29.i, 4
  %bf.set32.i = or i32 %bf.shl.i266, 130575
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vnr.i265) #13
  %49 = ptrtoint ptr %vnr.i265 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -1, ptr %vnr.i265, align 4, !annotation !185
  call void @__sanitizer_cov_trace_const_cmp4(i32 496, i32 %2)
  %cmp.i267 = icmp eq i32 %2, 496
  br i1 %cmp.i267, label %if.then.i, label %conn_old_common_state.exit.if.end52.i_crit_edge

conn_old_common_state.exit.if.end52.i_crit_edge:  ; preds = %conn_old_common_state.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end52.i

if.then.i:                                        ; preds = %conn_old_common_state.exit
  %50 = ptrtoint ptr %cstate to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %cstate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %51)
  %cmp42.not.i = icmp ne i32 %51, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %bf.clear29.i)
  %cmp46.i = icmp eq i32 %bf.clear29.i, 9
  %or.cond.i269 = select i1 %cmp42.not.i, i1 %cmp46.i, i1 false
  br i1 %or.cond.i269, label %if.then47.i, label %if.then.i.if.end.i270_crit_edge

if.then.i.if.end.i270_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i270

if.then47.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %52 = load volatile i32, ptr @jiffies, align 128
  %last_reconnect_jif.i = getelementptr inbounds %struct.drbd_connection, ptr %connection, i32 0, i32 36
  %53 = ptrtoint ptr %last_reconnect_jif.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %last_reconnect_jif.i, align 4
  br label %if.end.i270

if.end.i270:                                      ; preds = %if.then47.i, %if.then.i.if.end.i270_crit_edge
  %54 = ptrtoint ptr %cstate to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %bf.clear29.i, ptr %cstate, align 4
  br label %if.end52.i

if.end52.i:                                       ; preds = %if.end.i270, %conn_old_common_state.exit.if.end52.i_crit_edge
  %55 = call i32 @llvm.read_register.i32(metadata !175) #13
  %and.i.i.i.i.i.i271 = and i32 %55, -16384
  %56 = inttoptr i32 %and.i.i.i.i.i.i271 to ptr
  %preempt_count.i.i.i.i.i272 = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %preempt_count.i.i.i.i.i272 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %preempt_count.i.i.i.i.i272, align 4
  %add.i.i.i.i273 = add i32 %58, 1
  store volatile i32 %add.i.i.i.i273, ptr %preempt_count.i.i.i.i.i272, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !189
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i.i274 = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i.i274, label %if.end52.i.rcu_read_lock.exit.i282_crit_edge, label %land.lhs.true.i.i277

if.end52.i.rcu_read_lock.exit.i282_crit_edge:     ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i282

land.lhs.true.i.i277:                             ; preds = %if.end52.i
  %call1.i.i275 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i275)
  %tobool.not.i.i276 = icmp eq i32 %call1.i.i275, 0
  br i1 %tobool.not.i.i276, label %land.lhs.true.i.i277.rcu_read_lock.exit.i282_crit_edge, label %land.lhs.true2.i.i279

land.lhs.true.i.i277.rcu_read_lock.exit.i282_crit_edge: ; preds = %land.lhs.true.i.i277
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i282

land.lhs.true2.i.i279:                            ; preds = %land.lhs.true.i.i277
  %.b4.i.i278 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i278, label %land.lhs.true2.i.i279.rcu_read_lock.exit.i282_crit_edge, label %if.then.i.i280

land.lhs.true2.i.i279.rcu_read_lock.exit.i282_crit_edge: ; preds = %land.lhs.true2.i.i279
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i282

if.then.i.i280:                                   ; preds = %land.lhs.true2.i.i279
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 696, ptr noundef nonnull @.str.39) #13
  br label %rcu_read_lock.exit.i282

rcu_read_lock.exit.i282:                          ; preds = %if.then.i.i280, %land.lhs.true2.i.i279.rcu_read_lock.exit.i282_crit_edge, %land.lhs.true.i.i277.rcu_read_lock.exit.i282_crit_edge, %if.end52.i.rcu_read_lock.exit.i282_crit_edge
  %59 = ptrtoint ptr %vnr.i265 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %vnr.i265, align 4
  %call476.i = call ptr @idr_get_next(ptr noundef %peer_devices.i, ptr noundef nonnull %vnr.i265) #13
  %cmp53.not477.i = icmp eq ptr %call476.i, null
  br i1 %cmp53.not477.i, label %rcu_read_lock.exit.i282.for.end.i287_crit_edge, label %for.body.lr.ph.i

rcu_read_lock.exit.i282.for.end.i287_crit_edge:   ; preds = %rcu_read_lock.exit.i282
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i287

for.body.lr.ph.i:                                 ; preds = %rcu_read_lock.exit.i282
  %neg.i.i = xor i32 %mask.coerce.fca.0.extract, -1
  %and.i283 = and i32 %and75.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i283)
  %tobool.not.i284 = icmp ne i32 %and.i283, 0
  br label %for.body.i

for.body.i:                                       ; preds = %do.end109.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %call481.i = phi ptr [ %call476.i, %for.body.lr.ph.i ], [ %call.i286, %do.end109.i.for.body.i_crit_edge ]
  %ns_max.sroa.0.0480.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %bf.set177.i, %do.end109.i.for.body.i_crit_edge ]
  %ns_min.sroa.0.0479.i = phi i32 [ %bf.set32.i, %for.body.lr.ph.i ], [ %bf.set249.i, %do.end109.i.for.body.i_crit_edge ]
  %number_of_volumes.0478.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %do.end109.i.for.body.i_crit_edge ]
  %device54.i = getelementptr inbounds %struct.drbd_peer_device, ptr %call481.i, i32 0, i32 1
  %60 = ptrtoint ptr %device54.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %device54.i, align 4
  %inc.i = add i32 %number_of_volumes.0478.i, 1
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 8
  %state.i.i = getelementptr inbounds %struct.drbd_device, ptr %61, i32 0, i32 27
  %64 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %state.i.i, align 8
  %susp.i.i = getelementptr inbounds %struct.drbd_resource, ptr %63, i32 0, i32 13
  %66 = ptrtoint ptr %susp.i.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %bf.load.i.i = load i8, ptr %susp.i.i, align 4
  %bf.lshr.i.i = lshr i8 %bf.load.i.i, 7
  %bf.cast.i.i = zext i8 %bf.lshr.i.i to i32
  %bf.shl.i.i = shl nuw nsw i32 %bf.cast.i.i, 17
  %bf.clear.i.i = and i32 %65, -6422529
  %bf.set.i.i = or i32 %bf.shl.i.i, %bf.clear.i.i
  %bf.lshr4.i.i = lshr i8 %bf.load.i.i, 6
  %bf.value8.i.i = zext i8 %bf.lshr4.i.i to i32
  %bf.shl9.i.i = shl nuw nsw i32 %bf.value8.i.i, 21
  %bf.lshr13.i.i = lshr i8 %bf.load.i.i, 5
  %67 = and i8 %bf.lshr13.i.i, 1
  %bf.value17.i.i = zext i8 %67 to i32
  %bf.shl18.i.i = shl nuw nsw i32 %bf.value17.i.i, 22
  %bf.shl9.masked.i.i = and i32 %bf.shl9.i.i, 2097152
  %bf.clear19.i.i = or i32 %bf.set.i.i, %bf.shl9.masked.i.i
  %bf.set20.i.i = or i32 %bf.clear19.i.i, %bf.shl18.i.i
  %.fca.0.insert.i = insertvalue [1 x i32] poison, i32 %bf.set20.i.i, 0
  %and.i.i = and i32 %bf.set20.i.i, %neg.i.i
  %or.i.i = or i32 %and.i.i, %val.coerce.fca.0.extract
  %.fca.0.insert407.i = insertvalue [1 x i32] poison, i32 %or.i.i, 0
  %call73.i = call fastcc i32 @sanitize_state(ptr noundef %61, [1 x i32] %.fca.0.insert.i, [1 x i32] %.fca.0.insert407.i, ptr noundef null) #13
  %68 = and i32 %call73.i, 7680
  call void @__sanitizer_cov_trace_const_cmp4(i32 2560, i32 %68)
  %cmp80.i = icmp eq i32 %68, 2560
  %or.cond438.i = select i1 %tobool.not.i284, i1 %cmp80.i, i1 false
  br i1 %or.cond438.i, label %land.lhs.true81.i, label %for.body.i.if.end95.i_crit_edge

for.body.i.if.end95.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end95.i

land.lhs.true81.i:                                ; preds = %for.body.i
  %bf.lshr83.i = lshr i32 %65, 9
  %bf.clear84.i = and i32 %bf.lshr83.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %bf.clear84.i)
  %cmp85.i = icmp ult i32 %bf.clear84.i, 5
  br i1 %cmp85.i, label %if.then86.i, label %land.lhs.true81.i.if.end95.i_crit_edge

land.lhs.true81.i.if.end95.i_crit_edge:           ; preds = %land.lhs.true81.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end95.i

if.then86.i:                                      ; preds = %land.lhs.true81.i
  call void @__sanitizer_cov_trace_pc() #15
  %bf.shl92.i = shl nuw nsw i32 %bf.clear84.i, 9
  %bf.clear93.i = and i32 %call73.i, -7681
  %bf.set94.i = or i32 %bf.clear93.i, %bf.shl92.i
  br label %if.end95.i

if.end95.i:                                       ; preds = %if.then86.i, %land.lhs.true81.i.if.end95.i_crit_edge, %for.body.i.if.end95.i_crit_edge
  %ns.sroa.0.0.i = phi i32 [ %bf.set94.i, %if.then86.i ], [ %call73.i, %land.lhs.true81.i.if.end95.i_crit_edge ], [ %call73.i, %for.body.i.if.end95.i_crit_edge ]
  %.fca.0.insert410.i = insertvalue [1 x i32] poison, i32 %ns.sroa.0.0.i, 0
  %call98.i = call i32 @_drbd_set_state(ptr noundef %61, [1 x i32] %.fca.0.insert410.i, i32 noundef %or, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call98.i)
  %cmp99.i = icmp slt i32 %call98.i, 1
  br i1 %cmp99.i, label %do.body103.i, label %do.end109.i, !prof !187

do.body103.i:                                     ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/block/drbd/drbd_state.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2232, 0\0A.popsection", ""() #13, !srcloc !205
  unreachable

do.end109.i:                                      ; preds = %if.end95.i
  %69 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %state.i.i, align 8
  %bf.clear111.i = and i32 %70, 3
  %bf.clear113.i = and i32 %ns_max.sroa.0.0480.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %bf.clear111.i)
  %cmp.i.i = icmp eq i32 %bf.clear111.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %bf.clear113.i)
  %cmp1.i.i = icmp eq i32 %bf.clear113.i, 1
  %or.cond.i.i = or i1 %cmp1.i.i, %cmp.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %bf.clear111.i)
  %cmp2.i.i = icmp eq i32 %bf.clear111.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %bf.clear113.i)
  %cmp4.i.i = icmp eq i32 %bf.clear113.i, 2
  %or.cond9.i.i = or i1 %cmp4.i.i, %cmp2.i.i
  %spec.select.i.i = select i1 %or.cond9.i.i, i32 2, i32 0
  %retval.0.i.i = select i1 %or.cond.i.i, i32 1, i32 %spec.select.i.i
  %bf.clear117.i = and i32 %ns_max.sroa.0.0480.i, -131072
  %bf.lshr120.i = lshr i32 %70, 2
  %bf.clear121.i = and i32 %bf.lshr120.i, 3
  %bf.lshr123.i = lshr i32 %ns_max.sroa.0.0480.i, 2
  %bf.clear124.i = and i32 %bf.lshr123.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %bf.clear121.i)
  %cmp.i440.i = icmp eq i32 %bf.clear121.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %bf.clear124.i)
  %cmp1.i441.i = icmp eq i32 %bf.clear124.i, 1
  %or.cond.i442.i = or i1 %cmp1.i441.i, %cmp.i440.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %bf.clear121.i)
  %cmp2.i443.i = icmp eq i32 %bf.clear121.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %bf.clear124.i)
  %cmp4.i444.i = icmp eq i32 %bf.clear124.i, 2
  %or.cond9.i445.i = or i1 %cmp4.i444.i, %cmp2.i443.i
  %spec.select.i446.i = select i1 %or.cond9.i445.i, i32 8, i32 0
  %retval.0.i447.i = select i1 %or.cond.i442.i, i32 4, i32 %spec.select.i446.i
  %bf.lshr132.i = lshr i32 %70, 4
  %bf.clear133.i = and i32 %bf.lshr132.i, 31
  %bf.lshr135.i = lshr i32 %ns_max.sroa.0.0480.i, 4
  %bf.clear136.i = and i32 %bf.lshr135.i, 31
  %71 = call i32 @llvm.umax.i32(i32 %bf.clear133.i, i32 %bf.clear136.i) #13
  %bf.shl141.i = shl nuw nsw i32 %71, 4
  %bf.lshr145.i = lshr i32 %70, 9
  %bf.clear146.i = and i32 %bf.lshr145.i, 15
  %bf.lshr148.i = lshr i32 %ns_max.sroa.0.0480.i, 9
  %bf.clear149.i = and i32 %bf.lshr148.i, 15
  %72 = call i32 @llvm.umax.i32(i32 %bf.clear146.i, i32 %bf.clear149.i) #13
  %bf.shl158.i = shl nuw nsw i32 %72, 9
  %bf.lshr162.i = lshr i32 %70, 13
  %bf.clear163.i = and i32 %bf.lshr162.i, 15
  %bf.lshr165.i = lshr i32 %ns_max.sroa.0.0480.i, 13
  %bf.clear166.i = and i32 %bf.lshr165.i, 15
  %73 = call i32 @llvm.umax.i32(i32 %bf.clear163.i, i32 %bf.clear166.i) #13
  %bf.shl175.i = shl nuw nsw i32 %73, 13
  %bf.set118.i = or i32 %bf.shl141.i, %bf.clear117.i
  %bf.set130.i = or i32 %bf.set118.i, %bf.shl158.i
  %bf.set143.i = or i32 %bf.set130.i, %bf.shl175.i
  %bf.set160.i = or i32 %bf.set143.i, %retval.0.i.i
  %bf.set177.i = or i32 %bf.set160.i, %retval.0.i447.i
  %bf.clear181.i = and i32 %ns_min.sroa.0.0479.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear111.i)
  %cmp.i448.i = icmp eq i32 %bf.clear111.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear181.i)
  %cmp1.i449.i = icmp eq i32 %bf.clear181.i, 0
  %or.cond.i450.i = or i1 %cmp1.i449.i, %cmp.i448.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %bf.clear181.i)
  %cmp4.i452.i = icmp eq i32 %bf.clear181.i, 2
  %or.cond9.i453.i = or i1 %cmp4.i452.i, %cmp2.i.i
  %spec.select.i454.i = select i1 %or.cond9.i453.i, i32 2, i32 1
  %retval.0.i455.i = select i1 %or.cond.i450.i, i32 0, i32 %spec.select.i454.i
  %bf.clear185.i = and i32 %ns_min.sroa.0.0479.i, -131072
  %bf.lshr191.i = lshr i32 %ns_min.sroa.0.0479.i, 2
  %bf.clear192.i = and i32 %bf.lshr191.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear121.i)
  %cmp.i456.i = icmp eq i32 %bf.clear121.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear192.i)
  %cmp1.i457.i = icmp eq i32 %bf.clear192.i, 0
  %or.cond.i458.i = or i1 %cmp1.i457.i, %cmp.i456.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %bf.clear192.i)
  %cmp4.i460.i = icmp eq i32 %bf.clear192.i, 2
  %or.cond9.i461.i = or i1 %cmp4.i460.i, %cmp2.i443.i
  %spec.select.i462.i = select i1 %or.cond9.i461.i, i32 8, i32 4
  %retval.0.i463.i = select i1 %or.cond.i458.i, i32 0, i32 %spec.select.i462.i
  %bf.lshr203.i = lshr i32 %ns_min.sroa.0.0479.i, 4
  %bf.clear204.i = and i32 %bf.lshr203.i, 31
  %74 = call i32 @llvm.umin.i32(i32 %bf.clear133.i, i32 %bf.clear204.i) #13
  %bf.shl213.i = shl nuw nsw i32 %74, 4
  %bf.lshr220.i = lshr i32 %ns_min.sroa.0.0479.i, 9
  %bf.clear221.i = and i32 %bf.lshr220.i, 15
  %75 = call i32 @llvm.umin.i32(i32 %bf.clear146.i, i32 %bf.clear221.i) #13
  %bf.shl230.i = shl nuw nsw i32 %75, 9
  %bf.lshr237.i = lshr i32 %ns_min.sroa.0.0479.i, 13
  %bf.clear238.i = and i32 %bf.lshr237.i, 15
  %76 = call i32 @llvm.umin.i32(i32 %bf.clear163.i, i32 %bf.clear238.i) #13
  %bf.shl247.i = shl nuw nsw i32 %76, 13
  %bf.set186.i = or i32 %bf.shl213.i, %bf.clear185.i
  %bf.set198.i = or i32 %bf.set186.i, %bf.shl230.i
  %bf.set215.i = or i32 %bf.set198.i, %bf.shl247.i
  %bf.set232.i = or i32 %bf.set215.i, %retval.0.i455.i
  %bf.set249.i = or i32 %bf.set232.i, %retval.0.i463.i
  %77 = ptrtoint ptr %vnr.i265 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %vnr.i265, align 4
  %add.i285 = add i32 %78, 1
  store i32 %add.i285, ptr %vnr.i265, align 4
  %call.i286 = call ptr @idr_get_next(ptr noundef %peer_devices.i, ptr noundef nonnull %vnr.i265) #13
  %cmp53.not.i = icmp eq ptr %call.i286, null
  br i1 %cmp53.not.i, label %do.end109.i.for.end.i287_crit_edge, label %do.end109.i.for.body.i_crit_edge

do.end109.i.for.body.i_crit_edge:                 ; preds = %do.end109.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

do.end109.i.for.end.i287_crit_edge:               ; preds = %do.end109.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i287

for.end.i287:                                     ; preds = %do.end109.i.for.end.i287_crit_edge, %rcu_read_lock.exit.i282.for.end.i287_crit_edge
  %number_of_volumes.0.lcssa.i = phi i32 [ 0, %rcu_read_lock.exit.i282.for.end.i287_crit_edge ], [ %inc.i, %do.end109.i.for.end.i287_crit_edge ]
  %ns_min.sroa.0.0.lcssa.i = phi i32 [ %bf.set32.i, %rcu_read_lock.exit.i282.for.end.i287_crit_edge ], [ %bf.set249.i, %do.end109.i.for.end.i287_crit_edge ]
  %ns_max.sroa.0.0.lcssa.i = phi i32 [ 0, %rcu_read_lock.exit.i282.for.end.i287_crit_edge ], [ %bf.set177.i, %do.end109.i.for.end.i287_crit_edge ]
  %call.i464.i = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i464.i, label %for.end.i287.conn_set_state.exit_crit_edge, label %land.lhs.true.i467.i

for.end.i287.conn_set_state.exit_crit_edge:       ; preds = %for.end.i287
  call void @__sanitizer_cov_trace_pc() #15
  br label %conn_set_state.exit

land.lhs.true.i467.i:                             ; preds = %for.end.i287
  %call1.i465.i = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i465.i)
  %tobool.not.i466.i = icmp eq i32 %call1.i465.i, 0
  br i1 %tobool.not.i466.i, label %land.lhs.true.i467.i.conn_set_state.exit_crit_edge, label %land.lhs.true2.i469.i

land.lhs.true.i467.i.conn_set_state.exit_crit_edge: ; preds = %land.lhs.true.i467.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %conn_set_state.exit

land.lhs.true2.i469.i:                            ; preds = %land.lhs.true.i467.i
  %.b4.i468.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i468.i, label %land.lhs.true2.i469.i.conn_set_state.exit_crit_edge, label %if.then.i470.i

land.lhs.true2.i469.i.conn_set_state.exit_crit_edge: ; preds = %land.lhs.true2.i469.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %conn_set_state.exit

if.then.i470.i:                                   ; preds = %land.lhs.true2.i469.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 724, ptr noundef nonnull @.str.40) #13
  br label %conn_set_state.exit

conn_set_state.exit:                              ; preds = %if.then.i470.i, %land.lhs.true2.i469.i.conn_set_state.exit_crit_edge, %land.lhs.true.i467.i.conn_set_state.exit_crit_edge, %for.end.i287.conn_set_state.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !190
  %79 = call i32 @llvm.read_register.i32(metadata !175) #13
  %and.i.i.i.i.i471.i = and i32 %79, -16384
  %80 = inttoptr i32 %and.i.i.i.i.i471.i to ptr
  %preempt_count.i.i.i.i472.i = getelementptr inbounds %struct.thread_info, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %preempt_count.i.i.i.i472.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %preempt_count.i.i.i.i472.i, align 4
  %sub.i.i.i.i288 = add i32 %82, -1
  store volatile i32 %sub.i.i.i.i288, ptr %preempt_count.i.i.i.i472.i, align 4
  call void @rcu_read_unlock_strict() #13
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %number_of_volumes.0.lcssa.i)
  %cmp250.i = icmp eq i32 %number_of_volumes.0.lcssa.i, 0
  %bf.set292.i = or i32 %bf.shl.i266, 49154
  %spec.select.i289 = select i1 %cmp250.i, i32 %bf.set292.i, i32 %ns_min.sroa.0.0.lcssa.i
  %spec.select439.i = select i1 %cmp250.i, i32 %bf.set292.i, i32 %ns_max.sroa.0.0.lcssa.i
  %83 = ptrtoint ptr %resource71 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %resource71, align 4
  %susp.i = getelementptr inbounds %struct.drbd_resource, ptr %84, i32 0, i32 13
  %85 = ptrtoint ptr %susp.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %bf.load294.i = load i8, ptr %susp.i, align 4
  %bf.lshr295.i = lshr i8 %bf.load294.i, 7
  %bf.cast.i = zext i8 %bf.lshr295.i to i32
  %bf.shl298.i = shl nuw nsw i32 %bf.cast.i, 17
  %bf.clear299.i = and i32 %spec.select439.i, -6422529
  %bf.clear304.i = and i32 %spec.select.i289, -6422529
  %bf.lshr308.i = lshr i8 %bf.load294.i, 6
  %86 = and i8 %bf.lshr308.i, 1
  %bf.value312.i = zext i8 %86 to i32
  %bf.shl313.i = shl nuw nsw i32 %bf.value312.i, 21
  %bf.lshr323.i = lshr i8 %bf.load294.i, 5
  %87 = and i8 %bf.lshr323.i, 1
  %bf.value327.i = zext i8 %87 to i32
  %bf.shl328.i = shl nuw nsw i32 %bf.value327.i, 22
  %bf.set300.i = or i32 %bf.shl328.i, %bf.shl313.i
  %bf.set315.i = or i32 %bf.shl298.i, %bf.clear299.i
  %bf.set330.i = or i32 %bf.set315.i, %bf.set300.i
  %bf.set320.i = or i32 %bf.shl298.i, %bf.clear304.i
  %bf.set335.i = or i32 %bf.set320.i, %bf.set300.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vnr.i265) #13
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %cs.sroa.0.0.lcssa.i, 0
  %.fca.0.insert153 = insertvalue [1 x i32] poison, i32 %bf.set330.i, 0
  call void @llvm.lifetime.start.p0(i64 300, ptr nonnull %pb.i) #13
  %88 = call ptr @memset(ptr %pb.i, i32 255, i32 300)
  %call.i290 = call fastcc i32 @print_state_change(ptr noundef nonnull %pb.i, [1 x i32] %.fca.0.insert, [1 x i32] %.fca.0.insert153, i32 noundef %or) #13
  %add.ptr.i = getelementptr i8, ptr %pb.i, i32 %call.i290
  %89 = and i32 %bf.set330.i, 6422528
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %90 = icmp ne i32 %89, 0
  %91 = and i32 %cs.sroa.0.0.lcssa.i, 6422528
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %92 = icmp ne i32 %91, 0
  %93 = xor i1 %92, %90
  br i1 %93, label %if.then.i293, label %conn_set_state.exit.if.end.i294_crit_edge

conn_set_state.exit.if.end.i294_crit_edge:        ; preds = %conn_set_state.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i294

if.then.i293:                                     ; preds = %conn_set_state.exit
  call void @__sanitizer_cov_trace_pc() #15
  %conv19.i = zext i1 %92 to i32
  %conv23.i = zext i1 %90 to i32
  %call24.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.65, i32 noundef %conv19.i, i32 noundef %conv23.i) #13
  %add.ptr25.i = getelementptr i8, ptr %add.ptr.i, i32 %call24.i
  br label %if.end.i294

if.end.i294:                                      ; preds = %if.then.i293, %conn_set_state.exit.if.end.i294_crit_edge
  %pbp.0.i = phi ptr [ %add.ptr25.i, %if.then.i293 ], [ %add.ptr.i, %conn_set_state.exit.if.end.i294_crit_edge ]
  %cmp27.not.i = icmp eq ptr %pbp.0.i, %pb.i
  br i1 %cmp27.not.i, label %if.end.i294.conn_pr_state_change.exit_crit_edge, label %do.end.i

if.end.i294.conn_pr_state_change.exit_crit_edge:  ; preds = %if.end.i294
  call void @__sanitizer_cov_trace_pc() #15
  br label %conn_pr_state_change.exit

do.end.i:                                         ; preds = %if.end.i294
  call void @__sanitizer_cov_trace_pc() #15
  %94 = ptrtoint ptr %resource71 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %resource71, align 4
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %95, align 4
  %call31.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef %97, ptr noundef nonnull %pb.i) #17
  br label %conn_pr_state_change.exit

conn_pr_state_change.exit:                        ; preds = %do.end.i, %if.end.i294.conn_pr_state_change.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 300, ptr nonnull %pb.i) #13
  call fastcc void @remember_new_state(ptr noundef %call72)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %98 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %98, i32 noundef 2592, i32 noundef 36) #18
  %tobool82.not = icmp eq ptr %call7.i, null
  br i1 %tobool82.not, label %abort, label %if.then83

if.then83:                                        ; preds = %conn_pr_state_change.exit
  %bf.lshr85 = lshr i32 %cs.sroa.0.0.lcssa.i, 4
  %bf.clear86 = and i32 %bf.lshr85, 31
  %oc87 = getelementptr inbounds %struct.after_conn_state_chg_work, ptr %call7.i, i32 0, i32 1
  %99 = ptrtoint ptr %oc87 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %bf.clear86, ptr %oc87, align 4
  %ns_min88 = getelementptr inbounds %struct.after_conn_state_chg_work, ptr %call7.i, i32 0, i32 2
  %100 = ptrtoint ptr %ns_min88 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %bf.set335.i, ptr %ns_min88, align 8
  %ns_max89 = getelementptr inbounds %struct.after_conn_state_chg_work, ptr %call7.i, i32 0, i32 3
  %101 = ptrtoint ptr %ns_max89 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %bf.set330.i, ptr %ns_max89, align 4
  %flags90 = getelementptr inbounds %struct.after_conn_state_chg_work, ptr %call7.i, i32 0, i32 4
  %102 = ptrtoint ptr %flags90 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %or, ptr %flags90, align 8
  %cb = getelementptr inbounds %struct.drbd_work, ptr %call7.i, i32 0, i32 1
  %103 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr @w_after_conn_state_ch, ptr %cb, align 8
  %kref = getelementptr inbounds %struct.drbd_connection, ptr %connection, i32 0, i32 5
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #13
  %104 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #13, !srcloc !186
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %104, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then83.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !187

if.then83.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then83
  %add.i.i.i.i296 = add i32 %asmresult.i.i.i.i.i.i, 1
  %105 = or i32 %add.i.i.i.i296, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %105)
  %.not.i.i.i.i = icmp sgt i32 %105, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !188

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then83.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then83.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef %.sink.i.i.i.i) #13
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  %connection91 = getelementptr inbounds %struct.after_conn_state_chg_work, ptr %call7.i, i32 0, i32 5
  %106 = ptrtoint ptr %connection91 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %connection, ptr %connection91, align 4
  %state_change92 = getelementptr inbounds %struct.after_conn_state_chg_work, ptr %call7.i, i32 0, i32 6
  %107 = ptrtoint ptr %state_change92 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %call72, ptr %state_change92, align 8
  %sender_work = getelementptr inbounds %struct.drbd_connection, ptr %connection, i32 0, i32 45
  %q_lock.i = getelementptr inbounds %struct.drbd_connection, ptr %connection, i32 0, i32 45, i32 1
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %q_lock.i) #13
  %prev.i.i = getelementptr inbounds %struct.drbd_connection, ptr %connection, i32 0, i32 45, i32 0, i32 1
  %108 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i, ptr noundef %109, ptr noundef %sender_work) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %kref_get.exit.drbd_queue_work.exit_crit_edge

kref_get.exit.drbd_queue_work.exit_crit_edge:     ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %drbd_queue_work.exit

if.end.i.i.i:                                     ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #15
  %110 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %call7.i, ptr %prev.i.i, align 4
  %111 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %sender_work, ptr %call7.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %112 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %109, ptr %prev3.i.i.i, align 4
  %113 = ptrtoint ptr %109 to i32
  call void @__asan_store4_noabort(i32 %113)
  store volatile ptr %call7.i, ptr %109, align 4
  br label %drbd_queue_work.exit

drbd_queue_work.exit:                             ; preds = %if.end.i.i.i, %kref_get.exit.drbd_queue_work.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %q_lock.i, i32 noundef %call2.i) #13
  %q_wait.i = getelementptr inbounds %struct.drbd_connection, ptr %connection, i32 0, i32 45, i32 2
  call void @__wake_up(ptr noundef %q_wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  br i1 %or.cond324, label %drbd_queue_work.exit.if.then102_crit_edge, label %drbd_queue_work.exit.if.end108_crit_edge

drbd_queue_work.exit.if.end108_crit_edge:         ; preds = %drbd_queue_work.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end108

drbd_queue_work.exit.if.then102_crit_edge:        ; preds = %drbd_queue_work.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then102

abort:                                            ; preds = %conn_pr_state_change.exit
  %114 = ptrtoint ptr %resource71 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %resource71, align 4
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %115, align 4
  %call99 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %117) #17
  br i1 %or.cond324, label %abort.if.then102_crit_edge, label %abort.if.end108_crit_edge

abort.if.end108_crit_edge:                        ; preds = %abort
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end108

abort.if.then102_crit_edge:                       ; preds = %abort
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then102

if.then102:                                       ; preds = %abort.if.then102_crit_edge, %drbd_queue_work.exit.if.then102_crit_edge, %do.end.if.then102_crit_edge
  %rv.2317 = phi i32 [ %rv.1, %abort.if.then102_crit_edge ], [ %rv.1, %drbd_queue_work.exit.if.then102_crit_edge ], [ %rv.0, %do.end.if.then102_crit_edge ]
  %flags.addr.0316 = phi i32 [ %or, %abort.if.then102_crit_edge ], [ %or, %drbd_queue_work.exit.if.then102_crit_edge ], [ %flags, %do.end.if.then102_crit_edge ]
  %resource103 = getelementptr inbounds %struct.drbd_connection, ptr %connection, i32 0, i32 1
  %118 = ptrtoint ptr %resource103 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %resource103, align 4
  %req_lock104 = getelementptr inbounds %struct.drbd_resource, ptr %119, i32 0, i32 12
  call void @_raw_spin_unlock_irq(ptr noundef %req_lock104) #13
  br label %abort_unlocked

abort_unlocked:                                   ; preds = %if.then102, %if.then32
  %flags.addr.1 = phi i32 [ %flags.addr.0316, %if.then102 ], [ %flags, %if.then32 ]
  %rv.3 = phi i32 [ %rv.2317, %if.then102 ], [ -10, %if.then32 ]
  %cstate_mutex105 = getelementptr inbounds %struct.drbd_connection, ptr %connection, i32 0, i32 8
  call void @mutex_unlock(ptr noundef %cstate_mutex105) #13
  %resource106 = getelementptr inbounds %struct.drbd_connection, ptr %connection, i32 0, i32 1
  %120 = ptrtoint ptr %resource106 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %resource106, align 4
  %req_lock107 = getelementptr inbounds %struct.drbd_resource, ptr %121, i32 0, i32 12
  call void @_raw_spin_lock_irq(ptr noundef %req_lock107) #13
  br label %if.end108

if.end108:                                        ; preds = %abort_unlocked, %abort.if.end108_crit_edge, %drbd_queue_work.exit.if.end108_crit_edge
  %flags.addr.2 = phi i32 [ %flags.addr.1, %abort_unlocked ], [ %or, %abort.if.end108_crit_edge ], [ %or, %drbd_queue_work.exit.if.end108_crit_edge ]
  %rv.4 = phi i32 [ %rv.3, %abort_unlocked ], [ %rv.1, %abort.if.end108_crit_edge ], [ %rv.1, %drbd_queue_work.exit.if.end108_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %rv.4)
  %cmp109 = icmp slt i32 %rv.4, 1
  br i1 %cmp109, label %if.end108.land.lhs.true110_crit_edge, label %if.end108.if.end141_crit_edge

if.end108.if.end141_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end141

if.end108.land.lhs.true110_crit_edge:             ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true110

land.lhs.true110:                                 ; preds = %if.end108.land.lhs.true110_crit_edge, %if.end8.land.lhs.true110_crit_edge, %if.end23.i.land.lhs.true110_crit_edge, %if.end14.i.land.lhs.true110_crit_edge, %if.end9.i.land.lhs.true110_crit_edge, %if.end4.i.land.lhs.true110_crit_edge, %if.end.i.land.lhs.true110_crit_edge
  %rv.4323 = phi i32 [ %rv.4, %if.end108.land.lhs.true110_crit_edge ], [ %call13, %if.end8.land.lhs.true110_crit_edge ], [ -18, %if.end14.i.land.lhs.true110_crit_edge ], [ -18, %if.end23.i.land.lhs.true110_crit_edge ], [ -15, %if.end9.i.land.lhs.true110_crit_edge ], [ -15, %if.end4.i.land.lhs.true110_crit_edge ], [ -9, %if.end.i.land.lhs.true110_crit_edge ]
  %flags.addr.2321 = phi i32 [ %flags.addr.2, %if.end108.land.lhs.true110_crit_edge ], [ %flags, %if.end8.land.lhs.true110_crit_edge ], [ %flags, %if.end14.i.land.lhs.true110_crit_edge ], [ %flags, %if.end23.i.land.lhs.true110_crit_edge ], [ %flags, %if.end9.i.land.lhs.true110_crit_edge ], [ %flags, %if.end4.i.land.lhs.true110_crit_edge ], [ %flags, %if.end.i.land.lhs.true110_crit_edge ]
  %and111 = and i32 %flags.addr.2321, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and111)
  %tobool112.not = icmp eq i32 %and111, 0
  br i1 %tobool112.not, label %land.lhs.true110.if.end141_crit_edge, label %do.end116

land.lhs.true110.if.end141_crit_edge:             ; preds = %land.lhs.true110
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end141

do.end116:                                        ; preds = %land.lhs.true110
  call void @__sanitizer_cov_trace_pc() #15
  %resource118 = getelementptr inbounds %struct.drbd_connection, ptr %connection, i32 0, i32 1
  %122 = ptrtoint ptr %resource118 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %resource118, align 4
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %123, align 4
  %call120 = call ptr @drbd_set_st_err_str(i32 noundef %rv.4323) #13
  %call121 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %125, ptr noundef %call120) #17
  %126 = ptrtoint ptr %resource118 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %resource118, align 4
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %127, align 4
  %call128 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %129, i32 noundef %mask.coerce.fca.0.extract, i32 noundef %val.coerce.fca.0.extract) #17
  %130 = ptrtoint ptr %resource118 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %resource118, align 4
  %132 = ptrtoint ptr %131 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %131, align 4
  %call135 = call ptr @drbd_conn_str(i32 noundef %1) #13
  %bf.lshr137 = lshr i32 %val.coerce.fca.0.extract, 4
  %bf.clear138 = and i32 %bf.lshr137, 31
  %call139 = call ptr @drbd_conn_str(i32 noundef %bf.clear138) #13
  %call140 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %133, ptr noundef %call135, ptr noundef %call139) #17
  br label %if.end141

if.end141:                                        ; preds = %do.end116, %land.lhs.true110.if.end141_crit_edge, %if.end108.if.end141_crit_edge
  %rv.4322 = phi i32 [ %rv.4323, %do.end116 ], [ %rv.4323, %land.lhs.true110.if.end141_crit_edge ], [ %rv.4, %if.end108.if.end141_crit_edge ]
  ret i32 %rv.4322
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @conn_is_valid_transition(ptr noundef %connection, [1 x i32] %mask.coerce, [1 x i32] %val.coerce, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  %vnr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vnr) #13
  %0 = tail call i32 @llvm.read_register.i32(metadata !175) #13
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !189
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 696, ptr noundef nonnull @.str.39) #13
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %peer_devices = getelementptr inbounds %struct.drbd_connection, ptr %connection, i32 0, i32 6
  %4 = ptrtoint ptr %vnr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %vnr, align 4
  %call174 = call ptr @idr_get_next(ptr noundef %peer_devices, ptr noundef nonnull %vnr) #13
  %cmp.not175 = icmp eq ptr %call174, null
  br i1 %cmp.not175, label %rcu_read_lock.exit.for.end_crit_edge, label %for.body.lr.ph

rcu_read_lock.exit.for.end_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %rcu_read_lock.exit
  %mask.coerce.fca.0.extract.i = extractvalue [1 x i32] %mask.coerce, 0
  %val.coerce.fca.0.extract.i = extractvalue [1 x i32] %val.coerce, 0
  %neg.i = xor i32 %mask.coerce.fca.0.extract.i, -1
  %and = and i32 %flags, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  %and46 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %call177 = phi ptr [ %call174, %for.body.lr.ph ], [ %call, %for.inc.for.body_crit_edge ]
  %rv.0176 = phi i32 [ 1, %for.body.lr.ph ], [ %rv.2, %for.inc.for.body_crit_edge ]
  %device4 = getelementptr inbounds %struct.drbd_peer_device, ptr %call177, i32 0, i32 1
  %5 = ptrtoint ptr %device4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %device4, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  %state.i = getelementptr inbounds %struct.drbd_device, ptr %6, i32 0, i32 27
  %9 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %state.i, align 8
  %susp.i = getelementptr inbounds %struct.drbd_resource, ptr %8, i32 0, i32 13
  %11 = ptrtoint ptr %susp.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load.i = load i8, ptr %susp.i, align 4
  %bf.lshr.i = lshr i8 %bf.load.i, 7
  %bf.cast.i = zext i8 %bf.lshr.i to i32
  %bf.shl.i = shl nuw nsw i32 %bf.cast.i, 17
  %bf.clear.i = and i32 %10, -6422529
  %bf.set.i = or i32 %bf.shl.i, %bf.clear.i
  %bf.lshr4.i = lshr i8 %bf.load.i, 6
  %bf.value8.i = zext i8 %bf.lshr4.i to i32
  %bf.shl9.i = shl nuw nsw i32 %bf.value8.i, 21
  %bf.lshr13.i = lshr i8 %bf.load.i, 5
  %12 = and i8 %bf.lshr13.i, 1
  %bf.value17.i = zext i8 %12 to i32
  %bf.shl18.i = shl nuw nsw i32 %bf.value17.i, 22
  %bf.shl9.masked.i = and i32 %bf.shl9.i, 2097152
  %bf.clear19.i = or i32 %bf.set.i, %bf.shl9.masked.i
  %bf.set20.i = or i32 %bf.clear19.i, %bf.shl18.i
  %.fca.0.insert92 = insertvalue [1 x i32] poison, i32 %bf.set20.i, 0
  %and.i = and i32 %bf.set20.i, %neg.i
  %or.i = or i32 %and.i, %val.coerce.fca.0.extract.i
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %or.i, 0
  %call22 = call fastcc i32 @sanitize_state(ptr noundef %6, [1 x i32] %.fca.0.insert92, [1 x i32] %.fca.0.insert, ptr noundef null)
  %13 = and i32 %call22, 7680
  call void @__sanitizer_cov_trace_const_cmp4(i32 2560, i32 %13)
  %cmp25 = icmp eq i32 %13, 2560
  %or.cond = select i1 %tobool.not, i1 %cmp25, i1 false
  br i1 %or.cond, label %land.lhs.true26, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true26:                                  ; preds = %for.body
  %bf.lshr28 = lshr i32 %10, 9
  %bf.clear29 = and i32 %bf.lshr28, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %bf.clear29)
  %cmp30 = icmp ult i32 %bf.clear29, 5
  br i1 %cmp30, label %if.then, label %land.lhs.true26.if.end_crit_edge

land.lhs.true26.if.end_crit_edge:                 ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #15
  %bf.shl = shl nuw nsw i32 %bf.clear29, 9
  %bf.clear35 = and i32 %call22, -7681
  %bf.set = or i32 %bf.clear35, %bf.shl
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true26.if.end_crit_edge, %for.body.if.end_crit_edge
  %ns.sroa.0.0 = phi i32 [ %bf.set, %if.then ], [ %call22, %land.lhs.true26.if.end_crit_edge ], [ %call22, %for.body.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %ns.sroa.0.0, i32 %bf.set20.i)
  %cmp36 = icmp eq i32 %ns.sroa.0.0, %bf.set20.i
  br i1 %cmp36, label %if.end.for.inc_crit_edge, label %if.end38

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end38:                                         ; preds = %if.end
  %.fca.0.insert120 = insertvalue [1 x i32] poison, i32 %ns.sroa.0.0, 0
  %bf.lshr.i152 = lshr i32 %10, 4
  %bf.clear.i153 = and i32 %bf.lshr.i152, 31
  %bf.lshr5.i = lshr i32 %ns.sroa.0.0, 4
  %bf.clear6.i = and i32 %bf.lshr5.i, 31
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.clear.i153, i32 %bf.clear6.i)
  %cmp.i.i = icmp eq i32 %bf.clear.i153, %bf.clear6.i
  br i1 %cmp.i.i, label %if.end38.is_valid_transition.exit_crit_edge, label %if.end.i.i

if.end38.is_valid_transition.exit_crit_edge:      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #15
  br label %is_valid_transition.exit

if.end.i.i:                                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear.i153)
  %cmp1.i.i = icmp eq i32 %bf.clear.i153, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %bf.clear6.i)
  %cmp2.i.i = icmp eq i32 %bf.clear6.i, 1
  %or.cond.i.i = and i1 %cmp1.i.i, %cmp2.i.i
  br i1 %or.cond.i.i, label %if.end.i.i.is_valid_transition.exit_crit_edge, label %if.end4.i.i

if.end.i.i.is_valid_transition.exit_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %is_valid_transition.exit

if.end4.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %bf.clear6.i)
  %cmp7.not.i.i = icmp ne i32 %bf.clear6.i, 2
  %14 = and i1 %cmp1.i.i, %cmp7.not.i.i
  br i1 %14, label %if.end4.i.i.is_valid_transition.exit_crit_edge, label %if.end9.i.i

if.end4.i.i.is_valid_transition.exit_crit_edge:   ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %is_valid_transition.exit

if.end9.i.i:                                      ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %bf.clear.i153)
  %cmp10.i.i = icmp ult i32 %bf.clear.i153, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %bf.clear6.i)
  %cmp12.i.i = icmp ugt i32 %bf.clear6.i, 9
  %or.cond42.i.i = and i1 %cmp10.i.i, %cmp12.i.i
  br i1 %or.cond42.i.i, label %if.end9.i.i.is_valid_transition.exit_crit_edge, label %if.end14.i.i

if.end9.i.i.is_valid_transition.exit_crit_edge:   ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %is_valid_transition.exit

if.end14.i.i:                                     ; preds = %if.end9.i.i
  %15 = add nsw i32 %bf.clear.i153, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %15)
  %16 = icmp ult i32 %15, -5
  %nc.off.i.i = add nsw i32 %bf.clear6.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %nc.off.i.i)
  %switch.i.i = icmp ult i32 %nc.off.i.i, 2
  %or.cond47.i.i = or i1 %16, %switch.i.i
  br i1 %or.cond47.i.i, label %if.end23.i.i, label %if.end14.i.i.is_valid_transition.exit_crit_edge

if.end14.i.i.is_valid_transition.exit_crit_edge:  ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %is_valid_transition.exit

if.end23.i.i:                                     ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %bf.clear.i153)
  %cmp24.i.i = icmp ne i32 %bf.clear.i153, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear6.i)
  %cmp26.not.i.i = icmp eq i32 %bf.clear6.i, 0
  %or.cond46.i.i = or i1 %cmp24.i.i, %cmp26.not.i.i
  %spec.select.i.i = select i1 %or.cond46.i.i, i32 1, i32 -18
  br label %is_valid_transition.exit

is_valid_transition.exit:                         ; preds = %if.end23.i.i, %if.end14.i.i.is_valid_transition.exit_crit_edge, %if.end9.i.i.is_valid_transition.exit_crit_edge, %if.end4.i.i.is_valid_transition.exit_crit_edge, %if.end.i.i.is_valid_transition.exit_crit_edge, %if.end38.is_valid_transition.exit_crit_edge
  %retval.0.i.i = phi i32 [ 2, %if.end38.is_valid_transition.exit_crit_edge ], [ -9, %if.end.i.i.is_valid_transition.exit_crit_edge ], [ -15, %if.end4.i.i.is_valid_transition.exit_crit_edge ], [ -15, %if.end9.i.i.is_valid_transition.exit_crit_edge ], [ %spec.select.i.i, %if.end23.i.i ], [ -18, %if.end14.i.i.is_valid_transition.exit_crit_edge ]
  %17 = and i32 %ns.sroa.0.0, 7680
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %17)
  %cmp.i = icmp eq i32 %17, 1024
  %18 = and i32 %10, 7680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp13.i = icmp eq i32 %18, 0
  %or.cond.i = select i1 %cmp.i, i1 %cmp13.i, i1 false
  %rv.0.i = select i1 %or.cond.i, i32 -11, i32 %retval.0.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rv.0.i)
  %cmp44 = icmp sgt i32 %rv.0.i, 0
  %or.cond151 = and i1 %tobool47.not, %cmp44
  br i1 %or.cond151, label %if.then48, label %is_valid_transition.exit.if.end71_crit_edge

is_valid_transition.exit.if.end71_crit_edge:      ; preds = %is_valid_transition.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end71

if.then48:                                        ; preds = %is_valid_transition.exit
  %call51 = call fastcc i32 @is_valid_state(ptr noundef %6, [1 x i32] %.fca.0.insert120)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call51)
  %cmp52 = icmp slt i32 %call51, 1
  br i1 %cmp52, label %if.then53, label %if.then48.if.end71.sink.split_crit_edge

if.then48.if.end71.sink.split_crit_edge:          ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end71.sink.split

if.then53:                                        ; preds = %if.then48
  %call56 = call fastcc i32 @is_valid_state(ptr noundef %6, [1 x i32] %.fca.0.insert92)
  call void @__sanitizer_cov_trace_cmp4(i32 %call56, i32 %call51)
  %cmp57 = icmp eq i32 %call56, %call51
  br i1 %cmp57, label %if.then53.if.end71.sink.split_crit_edge, label %if.then53.if.then73_crit_edge

if.then53.if.then73_crit_edge:                    ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then73

if.then53.if.end71.sink.split_crit_edge:          ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end71.sink.split

if.end71.sink.split:                              ; preds = %if.then53.if.end71.sink.split_crit_edge, %if.then48.if.end71.sink.split_crit_edge
  %call69 = call fastcc i32 @is_valid_soft_transition([1 x i32] %.fca.0.insert92, [1 x i32] %.fca.0.insert120, ptr noundef %connection)
  br label %if.end71

if.end71:                                         ; preds = %if.end71.sink.split, %is_valid_transition.exit.if.end71_crit_edge
  %rv.1 = phi i32 [ %rv.0.i, %is_valid_transition.exit.if.end71_crit_edge ], [ %call69, %if.end71.sink.split ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %rv.1)
  %cmp72 = icmp slt i32 %rv.1, 1
  br i1 %cmp72, label %if.end71.if.then73_crit_edge, label %if.end71.for.inc_crit_edge

if.end71.for.inc_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end71.if.then73_crit_edge:                     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then73

if.then73:                                        ; preds = %if.end71.if.then73_crit_edge, %if.then53.if.then73_crit_edge
  %rv.1168 = phi i32 [ %rv.1, %if.end71.if.then73_crit_edge ], [ %call51, %if.then53.if.then73_crit_edge ]
  %and74 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  br i1 %tobool75.not, label %if.then73.for.end_crit_edge, label %if.then76

if.then73.for.end_crit_edge:                      ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.then76:                                        ; preds = %if.then73
  call void @__sanitizer_cov_trace_const_cmp4(i32 -18, i32 %rv.1168)
  %cmp.i154 = icmp eq i32 %rv.1168, -18
  br i1 %cmp.i154, label %if.then76.for.end_crit_edge, label %do.end.i

if.then76.for.end_crit_edge:                      ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

do.end.i:                                         ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #15
  %vdisk.i = getelementptr inbounds %struct.drbd_device, ptr %6, i32 0, i32 18
  %19 = ptrtoint ptr %vdisk.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %vdisk.i, align 4
  %part0.i = getelementptr inbounds %struct.gendisk, ptr %20, i32 0, i32 7
  %21 = ptrtoint ptr %part0.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %part0.i, align 4
  %bd_device.i = getelementptr inbounds %struct.block_device, ptr %22, i32 0, i32 10
  %call.i155 = call ptr @drbd_set_st_err_str(i32 noundef %rv.1168) #13
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %bd_device.i, ptr noundef nonnull @.str.1, ptr noundef %call.i155) #17
  call fastcc void @print_st(ptr noundef %6, ptr noundef nonnull @.str.5, [1 x i32] %.fca.0.insert92) #13
  call fastcc void @print_st(ptr noundef %6, ptr noundef nonnull @.str.6, [1 x i32] %.fca.0.insert120) #13
  br label %for.end

for.inc:                                          ; preds = %if.end71.for.inc_crit_edge, %if.end.for.inc_crit_edge
  %rv.2 = phi i32 [ %rv.0176, %if.end.for.inc_crit_edge ], [ %rv.1, %if.end71.for.inc_crit_edge ]
  %23 = ptrtoint ptr %vnr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %vnr, align 4
  %add = add i32 %24, 1
  store i32 %add, ptr %vnr, align 4
  %call = call ptr @idr_get_next(ptr noundef %peer_devices, ptr noundef nonnull %vnr) #13
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.i, %if.then76.for.end_crit_edge, %if.then73.for.end_crit_edge, %rcu_read_lock.exit.for.end_crit_edge
  %rv.3 = phi i32 [ %rv.1168, %if.then73.for.end_crit_edge ], [ -18, %if.then76.for.end_crit_edge ], [ %rv.1168, %do.end.i ], [ 1, %rcu_read_lock.exit.for.end_crit_edge ], [ %rv.2, %for.inc.for.end_crit_edge ]
  %call.i156 = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i156, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i159

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true.i159:                               ; preds = %for.end
  %call1.i157 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i157)
  %tobool.not.i158 = icmp eq i32 %call1.i157, 0
  br i1 %tobool.not.i158, label %land.lhs.true.i159.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i161

land.lhs.true.i159.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i159
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true2.i161:                              ; preds = %land.lhs.true.i159
  %.b4.i160 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i160, label %land.lhs.true2.i161.rcu_read_unlock.exit_crit_edge, label %if.then.i162

land.lhs.true2.i161.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i161
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

if.then.i162:                                     ; preds = %land.lhs.true2.i161
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 724, ptr noundef nonnull @.str.40) #13
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i162, %land.lhs.true2.i161.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i159.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !190
  %25 = call i32 @llvm.read_register.i32(metadata !175) #13
  %and.i.i.i.i.i163 = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i.i.i163 to ptr
  %preempt_count.i.i.i.i164 = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %preempt_count.i.i.i.i164 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %preempt_count.i.i.i.i164, align 4
  %sub.i.i.i = add i32 %28, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i164, align 4
  call void @rcu_read_unlock_strict() #13
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vnr) #13
  ret i32 %rv.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @conn_send_state_req(ptr noundef, [1 x i32], [1 x i32]) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w_after_conn_state_ch(ptr noundef %w, i32 noundef %unused) #0 align 64 {
entry:
  %vnr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %connection1 = getelementptr inbounds %struct.after_conn_state_chg_work, ptr %w, i32 0, i32 5
  %0 = ptrtoint ptr %connection1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connection1, align 4
  %oc2 = getelementptr inbounds %struct.after_conn_state_chg_work, ptr %w, i32 0, i32 1
  %2 = ptrtoint ptr %oc2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %oc2, align 4
  %ns_max3 = getelementptr inbounds %struct.after_conn_state_chg_work, ptr %w, i32 0, i32 3
  %4 = ptrtoint ptr %ns_max3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %ns_max.sroa.0.0.copyload = load i32, ptr %ns_max3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vnr) #13
  %5 = ptrtoint ptr %vnr to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %vnr, align 4, !annotation !185
  %state_change = getelementptr inbounds %struct.after_conn_state_chg_work, ptr %w, i32 0, i32 6
  %6 = ptrtoint ptr %state_change to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %state_change, align 4
  tail call fastcc void @broadcast_state_change(ptr noundef %7)
  %8 = ptrtoint ptr %state_change to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %state_change, align 4
  tail call void @forget_state_change(ptr noundef %9)
  tail call void @kfree(ptr noundef %w) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  %10 = and i32 %ns_max.sroa.0.0.copyload, 496
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %10)
  %cmp5 = icmp eq i32 %10, 32
  %or.cond = select i1 %cmp, i1 %cmp5, i1 false
  br i1 %or.cond, label %if.end.thread, label %if.end

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %receiver = getelementptr inbounds %struct.drbd_connection, ptr %1, i32 0, i32 38
  %call = tail call i32 @drbd_thread_start(ptr noundef %receiver) #13
  br label %if.end27

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp6 = icmp eq i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp11 = icmp eq i32 %10, 0
  %or.cond187 = select i1 %cmp6, i1 %cmp11, i1 false
  br i1 %or.cond187, label %if.then12, label %if.end.if.end27_crit_edge

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

if.then12:                                        ; preds = %if.end
  tail call void @mutex_lock_nested(ptr noundef nonnull @notification_mutex, i32 noundef 0) #13
  %peer_devices = getelementptr inbounds %struct.drbd_connection, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %vnr to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %vnr, align 4
  %call13202 = call ptr @idr_get_next(ptr noundef %peer_devices, ptr noundef nonnull %vnr) #13
  %cmp14.not203 = icmp eq ptr %call13202, null
  br i1 %cmp14.not203, label %if.then12.for.end_crit_edge, label %if.then12.for.body_crit_edge

if.then12.for.body_crit_edge:                     ; preds = %if.then12
  br label %for.body

if.then12.for.end_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then12.for.body_crit_edge
  %call13204 = phi ptr [ %call13, %for.body.for.body_crit_edge ], [ %call13202, %if.then12.for.body_crit_edge ]
  call void @notify_peer_device_state(ptr noundef null, i32 noundef 0, ptr noundef nonnull %call13204, ptr noundef null, i32 noundef 32771) #13
  %12 = ptrtoint ptr %vnr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vnr, align 4
  %add = add i32 %13, 1
  store i32 %add, ptr %vnr, align 4
  %call13 = call ptr @idr_get_next(ptr noundef %peer_devices, ptr noundef nonnull %vnr) #13
  %cmp14.not = icmp eq ptr %call13, null
  br i1 %cmp14.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.then12.for.end_crit_edge
  call void @notify_connection_state(ptr noundef null, i32 noundef 0, ptr noundef %1, ptr noundef null, i32 noundef 3) #13
  call void @mutex_unlock(ptr noundef nonnull @notification_mutex) #13
  %resource = getelementptr inbounds %struct.drbd_connection, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %resource, align 4
  %conf_update = getelementptr inbounds %struct.drbd_resource, ptr %15, i32 0, i32 10
  call void @mutex_lock_nested(ptr noundef %conf_update, i32 noundef 0) #13
  %net_conf = getelementptr inbounds %struct.drbd_connection, ptr %1, i32 0, i32 11
  %16 = ptrtoint ptr %net_conf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %net_conf, align 4
  %my_addr_len = getelementptr inbounds %struct.drbd_connection, ptr %1, i32 0, i32 14
  %18 = ptrtoint ptr %my_addr_len to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %my_addr_len, align 4
  %peer_addr_len = getelementptr inbounds %struct.drbd_connection, ptr %1, i32 0, i32 16
  %19 = ptrtoint ptr %peer_addr_len to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %peer_addr_len, align 4
  store volatile ptr null, ptr %net_conf, align 4
  call void @conn_free_crypto(ptr noundef %1) #13
  %20 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %resource, align 4
  %conf_update26 = getelementptr inbounds %struct.drbd_resource, ptr %21, i32 0, i32 10
  call void @mutex_unlock(ptr noundef %conf_update26) #13
  call void @synchronize_rcu() #13
  call void @kfree(ptr noundef %17) #13
  br label %if.end27

if.end27:                                         ; preds = %for.end, %if.end.if.end27_crit_edge, %if.end.thread
  %22 = and i32 %ns_max.sroa.0.0.copyload, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not = icmp ne i32 %22, 0
  %23 = and i32 %ns_max.sroa.0.0.copyload, 114688
  call void @__sanitizer_cov_trace_const_cmp4(i32 49152, i32 %23)
  %cmp35 = icmp ult i32 %23, 49152
  %or.cond188 = and i1 %tobool.not, %cmp35
  br i1 %or.cond188, label %if.then36, label %if.end27.if.end131_crit_edge

if.end27.if.end131_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end131

if.then36:                                        ; preds = %if.end27
  %24 = call i32 @llvm.read_register.i32(metadata !175) #13
  %and.i.i.i.i.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %27, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !189
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %if.then36.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.then36.rcu_read_lock.exit_crit_edge:           ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.then36
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 696, ptr noundef nonnull @.str.39) #13
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.then36.rcu_read_lock.exit_crit_edge
  %peer_devices38 = getelementptr inbounds %struct.drbd_connection, ptr %1, i32 0, i32 6
  %28 = ptrtoint ptr %vnr to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %vnr, align 4
  %call39205 = call ptr @idr_get_next(ptr noundef %peer_devices38, ptr noundef nonnull %vnr) #13
  %cmp40.not206 = icmp eq ptr %call39205, null
  br i1 %cmp40.not206, label %rcu_read_lock.exit.for.end50_crit_edge, label %rcu_read_lock.exit.for.body41_crit_edge

rcu_read_lock.exit.for.body41_crit_edge:          ; preds = %rcu_read_lock.exit
  br label %for.body41

rcu_read_lock.exit.for.end50_crit_edge:           ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end50

for.body41:                                       ; preds = %if.end47.for.body41_crit_edge, %rcu_read_lock.exit.for.body41_crit_edge
  %call39207 = phi ptr [ %call39, %if.end47.for.body41_crit_edge ], [ %call39205, %rcu_read_lock.exit.for.body41_crit_edge ]
  %device42 = getelementptr inbounds %struct.drbd_peer_device, ptr %call39207, i32 0, i32 1
  %29 = ptrtoint ptr %device42 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %device42, align 4
  %flags = getelementptr inbounds %struct.drbd_device, ptr %30, i32 0, i32 14
  %31 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %flags, align 4
  %33 = and i32 %32, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool44.not = icmp eq i32 %33, 0
  br i1 %tobool44.not, label %for.body41.if.end47_crit_edge, label %if.then45

for.body41.if.end47_crit_edge:                    ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end47

if.then45:                                        ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #15
  call void @drbd_uuid_new_current(ptr noundef %30) #13
  call void @_clear_bit(i32 noundef 15, ptr noundef %flags) #13
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %for.body41.if.end47_crit_edge
  %34 = ptrtoint ptr %vnr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %vnr, align 4
  %add49 = add i32 %35, 1
  store i32 %add49, ptr %vnr, align 4
  %call39 = call ptr @idr_get_next(ptr noundef %peer_devices38, ptr noundef nonnull %vnr) #13
  %cmp40.not = icmp eq ptr %call39, null
  br i1 %cmp40.not, label %if.end47.for.end50_crit_edge, label %if.end47.for.body41_crit_edge

if.end47.for.body41_crit_edge:                    ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body41

if.end47.for.end50_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end50

for.end50:                                        ; preds = %if.end47.for.end50_crit_edge, %rcu_read_lock.exit.for.end50_crit_edge
  %call.i189 = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i189, label %for.end50.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i192

for.end50.rcu_read_unlock.exit_crit_edge:         ; preds = %for.end50
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true.i192:                               ; preds = %for.end50
  %call1.i190 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i190)
  %tobool.not.i191 = icmp eq i32 %call1.i190, 0
  br i1 %tobool.not.i191, label %land.lhs.true.i192.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i194

land.lhs.true.i192.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i192
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true2.i194:                              ; preds = %land.lhs.true.i192
  %.b4.i193 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i193, label %land.lhs.true2.i194.rcu_read_unlock.exit_crit_edge, label %if.then.i195

land.lhs.true2.i194.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i194
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

if.then.i195:                                     ; preds = %land.lhs.true2.i194
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 724, ptr noundef nonnull @.str.40) #13
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i195, %land.lhs.true2.i194.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i192.rcu_read_unlock.exit_crit_edge, %for.end50.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !190
  %36 = call i32 @llvm.read_register.i32(metadata !175) #13
  %and.i.i.i.i.i196 = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i.i.i.i196 to ptr
  %preempt_count.i.i.i.i197 = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %preempt_count.i.i.i.i197 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %preempt_count.i.i.i.i197, align 4
  %sub.i.i.i = add i32 %39, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i197, align 4
  call void @rcu_read_unlock_strict() #13
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  %resource51 = getelementptr inbounds %struct.drbd_connection, ptr %1, i32 0, i32 1
  %40 = ptrtoint ptr %resource51 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %resource51, align 4
  %req_lock = getelementptr inbounds %struct.drbd_resource, ptr %41, i32 0, i32 12
  call void @_raw_spin_lock_irq(ptr noundef %req_lock) #13
  call void @_tl_restart(ptr noundef %1, i32 noundef 11) #13
  %call127 = call i32 @_conn_request_state(ptr noundef %1, [1 x i32] [i32 4194304], [1 x i32] zeroinitializer, i32 noundef 2)
  %42 = ptrtoint ptr %resource51 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %resource51, align 4
  %req_lock129 = getelementptr inbounds %struct.drbd_resource, ptr %43, i32 0, i32 12
  call void @_raw_spin_unlock_irq(ptr noundef %req_lock129) #13
  br label %if.end131

if.end131:                                        ; preds = %rcu_read_unlock.exit, %if.end27.if.end131_crit_edge
  call void @conn_md_sync(ptr noundef %1) #13
  %kref = getelementptr inbounds %struct.drbd_connection, ptr %1, i32 0, i32 5
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !192
  call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #13
  %44 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #13, !srcloc !193
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %44, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i198, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end131
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !188

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #13
  br label %kref_put.exit

if.then.i198:                                     ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !194
  call void @drbd_destroy_connection(ptr noundef %kref) #13, !callees !195
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i198, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vnr) #13
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drbd_conn_str(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @conn_request_state(ptr noundef %connection, [1 x i32] %mask.coerce, [1 x i32] %val.coerce, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %resource = getelementptr inbounds %struct.drbd_connection, ptr %connection, i32 0, i32 1
  %0 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resource, align 4
  %req_lock = getelementptr inbounds %struct.drbd_resource, ptr %1, i32 0, i32 12
  tail call void @_raw_spin_lock_irq(ptr noundef %req_lock) #13
  %call = tail call i32 @_conn_request_state(ptr noundef %connection, [1 x i32] %mask.coerce, [1 x i32] %val.coerce, i32 noundef %flags)
  %2 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resource, align 4
  %req_lock9 = getelementptr inbounds %struct.drbd_resource, ptr %3, i32 0, i32 12
  tail call void @_raw_spin_unlock_irq(ptr noundef %req_lock9) #13
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drbd_md_get_buffer(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drbd_send_state_req(ptr noundef, [1 x i32], [1 x i32]) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_req_st_cond(ptr noundef %device, [1 x i32] %mask.coerce, [1 x i32] %val.coerce) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %flags4 = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 14
  %call = tail call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %flags4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call6 = tail call i32 @_test_and_clear_bit(i32 noundef 4, ptr noundef %flags4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %do.body10, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body10:                                        ; preds = %if.end
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 8
  %req_lock = getelementptr inbounds %struct.drbd_resource, ptr %1, i32 0, i32 12
  %call12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %req_lock) #13
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 8
  %state.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 27
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state.i, align 8
  %susp.i = getelementptr inbounds %struct.drbd_resource, ptr %3, i32 0, i32 13
  %6 = ptrtoint ptr %susp.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load.i = load i8, ptr %susp.i, align 4
  %bf.lshr.i = lshr i8 %bf.load.i, 7
  %bf.cast.i = zext i8 %bf.lshr.i to i32
  %bf.shl.i = shl nuw nsw i32 %bf.cast.i, 17
  %bf.clear.i = and i32 %5, -6422529
  %bf.set.i = or i32 %bf.shl.i, %bf.clear.i
  %bf.lshr4.i = lshr i8 %bf.load.i, 6
  %bf.value8.i = zext i8 %bf.lshr4.i to i32
  %bf.shl9.i = shl nuw nsw i32 %bf.value8.i, 21
  %bf.lshr13.i = lshr i8 %bf.load.i, 5
  %7 = and i8 %bf.lshr13.i, 1
  %bf.value17.i = zext i8 %7 to i32
  %bf.shl18.i = shl nuw nsw i32 %bf.value17.i, 22
  %bf.shl9.masked.i = and i32 %bf.shl9.i, 2097152
  %bf.clear19.i = or i32 %bf.set.i, %bf.shl9.masked.i
  %bf.set20.i = or i32 %bf.clear19.i, %bf.shl18.i
  %.fca.0.insert97 = insertvalue [1 x i32] poison, i32 %bf.set20.i, 0
  %mask.coerce.fca.0.extract.i = extractvalue [1 x i32] %mask.coerce, 0
  %val.coerce.fca.0.extract.i = extractvalue [1 x i32] %val.coerce, 0
  %neg.i = xor i32 %mask.coerce.fca.0.extract.i, -1
  %and.i = and i32 %bf.set20.i, %neg.i
  %or.i = or i32 %and.i, %val.coerce.fca.0.extract.i
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %or.i, 0
  %call33 = tail call fastcc i32 @sanitize_state(ptr noundef %device, [1 x i32] %.fca.0.insert97, [1 x i32] %.fca.0.insert, ptr noundef null)
  %.fca.0.insert84 = insertvalue [1 x i32] poison, i32 %call33, 0
  %bf.lshr.i124 = lshr i32 %5, 4
  %bf.clear.i125 = and i32 %bf.lshr.i124, 31
  %bf.lshr5.i = lshr i32 %call33, 4
  %bf.clear6.i = and i32 %bf.lshr5.i, 31
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.clear.i125, i32 %bf.clear6.i)
  %cmp.i.i = icmp eq i32 %bf.clear.i125, %bf.clear6.i
  br i1 %cmp.i.i, label %do.body10.is_valid_transition.exit_crit_edge, label %if.end.i.i

do.body10.is_valid_transition.exit_crit_edge:     ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #15
  br label %is_valid_transition.exit

if.end.i.i:                                       ; preds = %do.body10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear.i125)
  %cmp1.i.i = icmp eq i32 %bf.clear.i125, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %bf.clear6.i)
  %cmp2.i.i = icmp eq i32 %bf.clear6.i, 1
  %or.cond.i.i = and i1 %cmp1.i.i, %cmp2.i.i
  br i1 %or.cond.i.i, label %if.end.i.i.is_valid_transition.exit_crit_edge, label %if.end4.i.i

if.end.i.i.is_valid_transition.exit_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %is_valid_transition.exit

if.end4.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %bf.clear6.i)
  %cmp7.not.i.i = icmp ne i32 %bf.clear6.i, 2
  %8 = and i1 %cmp1.i.i, %cmp7.not.i.i
  br i1 %8, label %if.end4.i.i.is_valid_transition.exit_crit_edge, label %if.end9.i.i

if.end4.i.i.is_valid_transition.exit_crit_edge:   ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %is_valid_transition.exit

if.end9.i.i:                                      ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %bf.clear.i125)
  %cmp10.i.i = icmp ult i32 %bf.clear.i125, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %bf.clear6.i)
  %cmp12.i.i = icmp ugt i32 %bf.clear6.i, 9
  %or.cond42.i.i = and i1 %cmp10.i.i, %cmp12.i.i
  br i1 %or.cond42.i.i, label %if.end9.i.i.is_valid_transition.exit_crit_edge, label %if.end14.i.i

if.end9.i.i.is_valid_transition.exit_crit_edge:   ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %is_valid_transition.exit

if.end14.i.i:                                     ; preds = %if.end9.i.i
  %9 = add nsw i32 %bf.clear.i125, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %9)
  %10 = icmp ult i32 %9, -5
  %nc.off.i.i = add nsw i32 %bf.clear6.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %nc.off.i.i)
  %switch.i.i = icmp ult i32 %nc.off.i.i, 2
  %or.cond47.i.i = or i1 %10, %switch.i.i
  br i1 %or.cond47.i.i, label %if.end23.i.i, label %if.end14.i.i.is_valid_transition.exit_crit_edge

if.end14.i.i.is_valid_transition.exit_crit_edge:  ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %is_valid_transition.exit

if.end23.i.i:                                     ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %bf.clear.i125)
  %cmp24.i.i = icmp ne i32 %bf.clear.i125, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear6.i)
  %cmp26.not.i.i = icmp eq i32 %bf.clear6.i, 0
  %or.cond46.i.i = or i1 %cmp24.i.i, %cmp26.not.i.i
  %spec.select.i.i = select i1 %or.cond46.i.i, i32 1, i32 -18
  br label %is_valid_transition.exit

is_valid_transition.exit:                         ; preds = %if.end23.i.i, %if.end14.i.i.is_valid_transition.exit_crit_edge, %if.end9.i.i.is_valid_transition.exit_crit_edge, %if.end4.i.i.is_valid_transition.exit_crit_edge, %if.end.i.i.is_valid_transition.exit_crit_edge, %do.body10.is_valid_transition.exit_crit_edge
  %retval.0.i.i = phi i32 [ 2, %do.body10.is_valid_transition.exit_crit_edge ], [ -9, %if.end.i.i.is_valid_transition.exit_crit_edge ], [ -15, %if.end4.i.i.is_valid_transition.exit_crit_edge ], [ -15, %if.end9.i.i.is_valid_transition.exit_crit_edge ], [ %spec.select.i.i, %if.end23.i.i ], [ -18, %if.end14.i.i.is_valid_transition.exit_crit_edge ]
  %11 = and i32 %call33, 7680
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %11)
  %cmp.i = icmp eq i32 %11, 1024
  %12 = and i32 %5, 7680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp13.i = icmp eq i32 %12, 0
  %or.cond.i = select i1 %cmp.i, i1 %cmp13.i, i1 false
  %13 = tail call i32 @llvm.smin.i32(i32 %retval.0.i.i, i32 0)
  %14 = select i1 %or.cond.i, i32 -11, i32 %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %bf.clear.i125)
  %cmp.i128 = icmp ugt i32 %bf.clear.i125, 9
  br i1 %cmp.i128, label %land.lhs.true.i, label %entry.lor.lhs.false55_crit_edge.i

entry.lor.lhs.false55_crit_edge.i:                ; preds = %is_valid_transition.exit
  call void @__sanitizer_cov_trace_pc() #15
  %.pre.i = and i32 %call33, 496
  br label %cl_wide_st_chg.exit

land.lhs.true.i:                                  ; preds = %is_valid_transition.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %bf.clear6.i)
  %cmp7.i = icmp ugt i32 %bf.clear6.i, 9
  br i1 %cmp7.i, label %land.lhs.true8.i, label %land.lhs.true50.i

land.lhs.true8.i:                                 ; preds = %land.lhs.true.i
  %bf.clear10.i = and i32 %5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %bf.clear10.i)
  %cmp11.not.i = icmp ne i32 %bf.clear10.i, 1
  %bf.clear14.i = and i32 %call33, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %bf.clear14.i)
  %cmp15.i = icmp eq i32 %bf.clear14.i, 1
  %or.cond.i131 = select i1 %cmp11.not.i, i1 %cmp15.i, i1 false
  br i1 %or.cond.i131, label %land.lhs.true8.i.cl_wide_st_chg.exit.thread_crit_edge, label %lor.lhs.false.i

land.lhs.true8.i.cl_wide_st_chg.exit.thread_crit_edge: ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cl_wide_st_chg.exit.thread

lor.lhs.false.i:                                  ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %bf.clear.i125)
  %cmp19.not.i = icmp ne i32 %bf.clear.i125, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %bf.clear6.i)
  %cmp24.i = icmp eq i32 %bf.clear6.i, 12
  %or.cond1.i = select i1 %cmp19.not.i, i1 %cmp24.i, i1 false
  br i1 %or.cond1.i, label %lor.lhs.false.i.cl_wide_st_chg.exit.thread_crit_edge, label %lor.lhs.false25.i

lor.lhs.false.i.cl_wide_st_chg.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cl_wide_st_chg.exit.thread

lor.lhs.false25.i:                                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %bf.clear.i125)
  %cmp29.not.i = icmp ne i32 %bf.clear.i125, 11
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %bf.clear6.i)
  %cmp34.i = icmp eq i32 %bf.clear6.i, 11
  %or.cond2.i = select i1 %cmp29.not.i, i1 %cmp34.i, i1 false
  br i1 %or.cond2.i, label %lor.lhs.false25.i.cl_wide_st_chg.exit.thread_crit_edge, label %lor.lhs.false35.i

lor.lhs.false25.i.cl_wide_st_chg.exit.thread_crit_edge: ; preds = %lor.lhs.false25.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cl_wide_st_chg.exit.thread

lor.lhs.false35.i:                                ; preds = %lor.lhs.false25.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %12)
  %cmp39.not.i = icmp ne i32 %12, 1024
  %or.cond3.i = select i1 %cmp39.not.i, i1 %cmp.i, i1 false
  %15 = and i32 %call33, 496
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %15)
  %cmp54.i = icmp eq i32 %15, 16
  %or.cond6.i = select i1 %or.cond3.i, i1 true, i1 %cmp54.i
  br i1 %or.cond6.i, label %lor.lhs.false35.i.cl_wide_st_chg.exit.thread_crit_edge, label %lor.lhs.false35.i.cl_wide_st_chg.exit_crit_edge

lor.lhs.false35.i.cl_wide_st_chg.exit_crit_edge:  ; preds = %lor.lhs.false35.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cl_wide_st_chg.exit

lor.lhs.false35.i.cl_wide_st_chg.exit.thread_crit_edge: ; preds = %lor.lhs.false35.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cl_wide_st_chg.exit.thread

land.lhs.true50.i:                                ; preds = %land.lhs.true.i
  %.old.i = and i32 %call33, 496
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %.old.i)
  %cmp54.old.i = icmp eq i32 %.old.i, 16
  br i1 %cmp54.old.i, label %land.lhs.true50.i.cl_wide_st_chg.exit.thread_crit_edge, label %land.lhs.true50.i.cl_wide_st_chg.exit_crit_edge

land.lhs.true50.i.cl_wide_st_chg.exit_crit_edge:  ; preds = %land.lhs.true50.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cl_wide_st_chg.exit

land.lhs.true50.i.cl_wide_st_chg.exit.thread_crit_edge: ; preds = %land.lhs.true50.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cl_wide_st_chg.exit.thread

cl_wide_st_chg.exit:                              ; preds = %land.lhs.true50.i.cl_wide_st_chg.exit_crit_edge, %lor.lhs.false35.i.cl_wide_st_chg.exit_crit_edge, %entry.lor.lhs.false55_crit_edge.i
  %.pre-phi.i = phi i32 [ %.pre.i, %entry.lor.lhs.false55_crit_edge.i ], [ %15, %lor.lhs.false35.i.cl_wide_st_chg.exit_crit_edge ], [ %.old.i, %land.lhs.true50.i.cl_wide_st_chg.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %bf.clear.i125)
  %cmp59.i = icmp eq i32 %bf.clear.i125, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 288, i32 %.pre-phi.i)
  %cmp64.i = icmp eq i32 %.pre-phi.i, 288
  %or.cond5.i = select i1 %cmp59.i, i1 %cmp64.i, i1 false
  %cmp59.not.i = xor i1 %cmp59.i, true
  %brmerge.i = or i1 %or.cond5.i, %cmp59.not.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 144, i32 %.pre-phi.i)
  %cmp72.i = icmp eq i32 %.pre-phi.i, 144
  %spec.select.i = select i1 %brmerge.i, i1 %or.cond5.i, i1 %cmp72.i
  br i1 %spec.select.i, label %cl_wide_st_chg.exit.cl_wide_st_chg.exit.thread_crit_edge, label %cl_wide_st_chg.exit.if.end73_crit_edge

cl_wide_st_chg.exit.if.end73_crit_edge:           ; preds = %cl_wide_st_chg.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end73

cl_wide_st_chg.exit.cl_wide_st_chg.exit.thread_crit_edge: ; preds = %cl_wide_st_chg.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cl_wide_st_chg.exit.thread

cl_wide_st_chg.exit.thread:                       ; preds = %cl_wide_st_chg.exit.cl_wide_st_chg.exit.thread_crit_edge, %land.lhs.true50.i.cl_wide_st_chg.exit.thread_crit_edge, %lor.lhs.false35.i.cl_wide_st_chg.exit.thread_crit_edge, %lor.lhs.false25.i.cl_wide_st_chg.exit.thread_crit_edge, %lor.lhs.false.i.cl_wide_st_chg.exit.thread_crit_edge, %land.lhs.true8.i.cl_wide_st_chg.exit.thread_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp53 = icmp eq i32 %14, 0
  br i1 %cmp53, label %if.then55, label %cl_wide_st_chg.exit.thread.if.end73_crit_edge

cl_wide_st_chg.exit.thread.if.end73_crit_edge:    ; preds = %cl_wide_st_chg.exit.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end73

if.then55:                                        ; preds = %cl_wide_st_chg.exit.thread
  %call58 = tail call fastcc i32 @is_valid_state(ptr noundef %device, [1 x i32] %.fca.0.insert84)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp59 = icmp sgt i32 %call58, 0
  br i1 %cmp59, label %if.then61, label %if.then55.if.end73_crit_edge

if.then55.if.end73_crit_edge:                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end73

if.then61:                                        ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #15
  %peer_devices.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 1
  %16 = ptrtoint ptr %peer_devices.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %peer_devices.i, align 4
  %cmp.not.i = icmp eq ptr %17, %peer_devices.i
  %spec.select.i132 = select i1 %cmp.not.i, ptr null, ptr %17
  %connection = getelementptr inbounds %struct.drbd_peer_device, ptr %spec.select.i132, i32 0, i32 2
  %18 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %connection, align 4
  %call67 = tail call fastcc i32 @is_valid_soft_transition([1 x i32] %.fca.0.insert97, [1 x i32] %.fca.0.insert84, ptr noundef %19)
  %20 = tail call i32 @llvm.smin.i32(i32 %call67, i32 0)
  br label %if.end73

if.end73:                                         ; preds = %if.then61, %if.then55.if.end73_crit_edge, %cl_wide_st_chg.exit.thread.if.end73_crit_edge, %cl_wide_st_chg.exit.if.end73_crit_edge
  %rv.1 = phi i32 [ %20, %if.then61 ], [ %call58, %if.then55.if.end73_crit_edge ], [ %14, %cl_wide_st_chg.exit.thread.if.end73_crit_edge ], [ 4, %cl_wide_st_chg.exit.if.end73_crit_edge ]
  %21 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %device, align 8
  %req_lock75 = getelementptr inbounds %struct.drbd_resource, ptr %22, i32 0, i32 12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %req_lock75, i32 noundef %call12) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end73, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rv.1, %if.end73 ], [ 3, %entry.cleanup_crit_edge ], [ -10, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drbd_md_put_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drbd_role_str(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drbd_disk_str(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @print_state_change(ptr noundef %pb, [1 x i32] %os.coerce, [1 x i32] %ns.coerce, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %os.coerce.fca.0.extract = extractvalue [1 x i32] %os.coerce, 0
  %ns.coerce.fca.0.extract = extractvalue [1 x i32] %ns.coerce, 0
  %0 = ptrtoint ptr %pb to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %pb, align 1
  %bf.clear = and i32 %ns.coerce.fca.0.extract, 3
  %bf.clear5 = and i32 %os.coerce.fca.0.extract, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.clear, i32 %bf.clear5)
  %cmp.not = icmp eq i32 %bf.clear, %bf.clear5
  %and = and i32 %flags, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %or.cond = or i1 %cmp.not, %tobool.not
  br i1 %or.cond, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call ptr @drbd_role_str(i32 noundef %bf.clear5) #13
  %call10 = tail call ptr @drbd_role_str(i32 noundef %bf.clear) #13
  %call11 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %pb, ptr noundef nonnull @.str.60, ptr noundef %call, ptr noundef %call10)
  %add.ptr = getelementptr i8, ptr %pb, i32 %call11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %pbp.0 = phi ptr [ %add.ptr, %if.then ], [ %pb, %entry.if.end_crit_edge ]
  %bf.lshr = lshr i32 %ns.coerce.fca.0.extract, 2
  %bf.clear13 = and i32 %bf.lshr, 3
  %bf.lshr15 = lshr i32 %os.coerce.fca.0.extract, 2
  %bf.clear16 = and i32 %bf.lshr15, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.clear13, i32 %bf.clear16)
  %cmp17.not = icmp eq i32 %bf.clear13, %bf.clear16
  %and19 = and i32 %flags, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  %or.cond133 = or i1 %tobool20.not, %cmp17.not
  br i1 %or.cond133, label %if.end.if.end32_crit_edge, label %if.then21

if.end.if.end32_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32

if.then21:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call25 = tail call ptr @drbd_role_str(i32 noundef %bf.clear16) #13
  %call29 = tail call ptr @drbd_role_str(i32 noundef %bf.clear13) #13
  %call30 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %pbp.0, ptr noundef nonnull @.str.61, ptr noundef %call25, ptr noundef %call29)
  %add.ptr31 = getelementptr i8, ptr %pbp.0, i32 %call30
  br label %if.end32

if.end32:                                         ; preds = %if.then21, %if.end.if.end32_crit_edge
  %pbp.1 = phi ptr [ %add.ptr31, %if.then21 ], [ %pbp.0, %if.end.if.end32_crit_edge ]
  %bf.lshr34 = lshr i32 %ns.coerce.fca.0.extract, 4
  %bf.clear35 = and i32 %bf.lshr34, 31
  %bf.lshr37 = lshr i32 %os.coerce.fca.0.extract, 4
  %bf.clear38 = and i32 %bf.lshr37, 31
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.clear35, i32 %bf.clear38)
  %cmp39.not = icmp eq i32 %bf.clear35, %bf.clear38
  %and41 = and i32 %flags, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  %or.cond134 = or i1 %tobool42.not, %cmp39.not
  br i1 %or.cond134, label %if.end32.if.end54_crit_edge, label %if.then43

if.end32.if.end54_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end54

if.then43:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  %call47 = tail call ptr @drbd_conn_str(i32 noundef %bf.clear38) #13
  %call51 = tail call ptr @drbd_conn_str(i32 noundef %bf.clear35) #13
  %call52 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %pbp.1, ptr noundef nonnull @.str.62, ptr noundef %call47, ptr noundef %call51)
  %add.ptr53 = getelementptr i8, ptr %pbp.1, i32 %call52
  br label %if.end54

if.end54:                                         ; preds = %if.then43, %if.end32.if.end54_crit_edge
  %pbp.2 = phi ptr [ %add.ptr53, %if.then43 ], [ %pbp.1, %if.end32.if.end54_crit_edge ]
  %bf.lshr56 = lshr i32 %ns.coerce.fca.0.extract, 9
  %bf.clear57 = and i32 %bf.lshr56, 15
  %bf.lshr59 = lshr i32 %os.coerce.fca.0.extract, 9
  %bf.clear60 = and i32 %bf.lshr59, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.clear57, i32 %bf.clear60)
  %cmp61.not = icmp eq i32 %bf.clear57, %bf.clear60
  %and63 = and i32 %flags, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  %or.cond135 = or i1 %tobool64.not, %cmp61.not
  br i1 %or.cond135, label %if.end54.if.end76_crit_edge, label %if.then65

if.end54.if.end76_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end76

if.then65:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #15
  %call69 = tail call ptr @drbd_disk_str(i32 noundef %bf.clear60) #13
  %call73 = tail call ptr @drbd_disk_str(i32 noundef %bf.clear57) #13
  %call74 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %pbp.2, ptr noundef nonnull @.str.63, ptr noundef %call69, ptr noundef %call73)
  %add.ptr75 = getelementptr i8, ptr %pbp.2, i32 %call74
  br label %if.end76

if.end76:                                         ; preds = %if.then65, %if.end54.if.end76_crit_edge
  %pbp.3 = phi ptr [ %add.ptr75, %if.then65 ], [ %pbp.2, %if.end54.if.end76_crit_edge ]
  %bf.lshr78 = lshr i32 %ns.coerce.fca.0.extract, 13
  %bf.clear79 = and i32 %bf.lshr78, 15
  %bf.lshr81 = lshr i32 %os.coerce.fca.0.extract, 13
  %bf.clear82 = and i32 %bf.lshr81, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.clear79, i32 %bf.clear82)
  %cmp83.not = icmp eq i32 %bf.clear79, %bf.clear82
  %and85 = and i32 %flags, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85)
  %tobool86.not = icmp eq i32 %and85, 0
  %or.cond136 = or i1 %tobool86.not, %cmp83.not
  br i1 %or.cond136, label %if.end76.if.end98_crit_edge, label %if.then87

if.end76.if.end98_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end98

if.then87:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #15
  %call91 = tail call ptr @drbd_disk_str(i32 noundef %bf.clear82) #13
  %call95 = tail call ptr @drbd_disk_str(i32 noundef %bf.clear79) #13
  %call96 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %pbp.3, ptr noundef nonnull @.str.64, ptr noundef %call91, ptr noundef %call95)
  %add.ptr97 = getelementptr i8, ptr %pbp.3, i32 %call96
  br label %if.end98

if.end98:                                         ; preds = %if.then87, %if.end76.if.end98_crit_edge
  %pbp.4 = phi ptr [ %add.ptr97, %if.then87 ], [ %pbp.3, %if.end76.if.end98_crit_edge ]
  %sub.ptr.lhs.cast = ptrtoint ptr %pbp.4 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %pb to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  ret i32 %sub.ptr.sub
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_drbd_thread_stop(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @broadcast_state_change(ptr noundef %state_change) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %resource = getelementptr inbounds %struct.drbd_state_change, ptr %state_change, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef nonnull @notification_mutex, i32 noundef 0) #13
  %role = getelementptr inbounds %struct.drbd_state_change, ptr %state_change, i32 0, i32 3, i32 0, i32 1
  %0 = ptrtoint ptr %role to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %role, align 4
  %arrayidx3 = getelementptr %struct.drbd_state_change, ptr %state_change, i32 0, i32 3, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not = icmp eq i32 %1, %3
  br i1 %cmp.not, label %lor.lhs.false, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

lor.lhs.false:                                    ; preds = %entry
  %susp = getelementptr inbounds %struct.drbd_state_change, ptr %state_change, i32 0, i32 3, i32 0, i32 2
  %4 = ptrtoint ptr %susp to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %susp, align 4, !range !191
  %arrayidx6 = getelementptr %struct.drbd_state_change, ptr %state_change, i32 0, i32 3, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx6, align 1, !range !191
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %7)
  %cmp9.not = icmp eq i8 %5, %7
  br i1 %cmp9.not, label %lor.lhs.false11, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

lor.lhs.false11:                                  ; preds = %lor.lhs.false
  %susp_nod = getelementptr inbounds %struct.drbd_state_change, ptr %state_change, i32 0, i32 3, i32 0, i32 3
  %8 = ptrtoint ptr %susp_nod to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %susp_nod, align 2, !range !191
  %arrayidx16 = getelementptr %struct.drbd_state_change, ptr %state_change, i32 0, i32 3, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx16, align 1, !range !191
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %11)
  %cmp19.not = icmp eq i8 %9, %11
  br i1 %cmp19.not, label %lor.rhs, label %lor.lhs.false11.if.end_crit_edge

lor.lhs.false11.if.end_crit_edge:                 ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

lor.rhs:                                          ; preds = %lor.lhs.false11
  %susp_fen = getelementptr inbounds %struct.drbd_state_change, ptr %state_change, i32 0, i32 3, i32 0, i32 4
  %12 = ptrtoint ptr %susp_fen to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %susp_fen, align 4, !range !191
  %arrayidx25 = getelementptr %struct.drbd_state_change, ptr %state_change, i32 0, i32 3, i32 0, i32 4, i32 1
  %14 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx25, align 1, !range !191
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %15)
  %cmp28.not = icmp eq i8 %13, %15
  br i1 %cmp28.not, label %lor.rhs.if.end33_crit_edge, label %lor.rhs.if.end_crit_edge

lor.rhs.if.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

lor.rhs.if.end33_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33

if.end:                                           ; preds = %lor.rhs.if.end_crit_edge, %lor.lhs.false11.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge, %entry.if.end_crit_edge
  br label %if.end33

if.end33:                                         ; preds = %if.end, %lor.rhs.if.end33_crit_edge
  %last_func.0 = phi ptr [ @notify_resource_state_change, %if.end ], [ null, %lor.rhs.if.end33_crit_edge ]
  %last_arg.0 = phi ptr [ %resource, %if.end ], [ null, %lor.rhs.if.end33_crit_edge ]
  %n_connections = getelementptr inbounds %struct.drbd_state_change, ptr %state_change, i32 0, i32 2
  %16 = ptrtoint ptr %n_connections to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %n_connections, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp34186.not = icmp eq i32 %17, 0
  br i1 %cmp34186.not, label %if.end33.for.cond54.preheader_crit_edge, label %for.body.lr.ph

if.end33.for.cond54.preheader_crit_edge:          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond54.preheader

for.body.lr.ph:                                   ; preds = %if.end33
  %connections = getelementptr inbounds %struct.drbd_state_change, ptr %state_change, i32 0, i32 5
  br label %for.body

for.cond54.preheader:                             ; preds = %if.end53.for.cond54.preheader_crit_edge, %if.end33.for.cond54.preheader_crit_edge
  %last_func.1.lcssa = phi ptr [ %last_func.0, %if.end33.for.cond54.preheader_crit_edge ], [ %last_func.2, %if.end53.for.cond54.preheader_crit_edge ]
  %last_arg.1.lcssa = phi ptr [ %last_arg.0, %if.end33.for.cond54.preheader_crit_edge ], [ %last_arg.2, %if.end53.for.cond54.preheader_crit_edge ]
  %n_devices = getelementptr inbounds %struct.drbd_state_change, ptr %state_change, i32 0, i32 1
  %18 = ptrtoint ptr %n_devices to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %n_devices, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp55195.not = icmp eq i32 %19, 0
  br i1 %cmp55195.not, label %for.cond54.preheader.for.end72_crit_edge, label %for.body57.lr.ph

for.cond54.preheader.for.end72_crit_edge:         ; preds = %for.cond54.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end72

for.body57.lr.ph:                                 ; preds = %for.cond54.preheader
  %devices = getelementptr inbounds %struct.drbd_state_change, ptr %state_change, i32 0, i32 4
  br label %for.body57

for.body:                                         ; preds = %if.end53.for.body_crit_edge, %for.body.lr.ph
  %n_connection.0191 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end53.for.body_crit_edge ]
  %last_arg.1189 = phi ptr [ %last_arg.0, %for.body.lr.ph ], [ %last_arg.2, %if.end53.for.body_crit_edge ]
  %last_func.1187 = phi ptr [ %last_func.0, %for.body.lr.ph ], [ %last_func.2, %if.end53.for.body_crit_edge ]
  %20 = ptrtoint ptr %connections to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %connections, align 4
  %arrayidx36 = getelementptr %struct.drbd_connection_state_change, ptr %21, i32 %n_connection.0191
  %peer_role = getelementptr %struct.drbd_connection_state_change, ptr %21, i32 %n_connection.0191, i32 2
  %22 = ptrtoint ptr %peer_role to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %peer_role, align 4
  %arrayidx39 = getelementptr %struct.drbd_connection_state_change, ptr %21, i32 %n_connection.0191, i32 2, i32 1
  %24 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx39, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp40.not = icmp eq i32 %23, %25
  br i1 %cmp40.not, label %lor.lhs.false42, label %for.body.if.then48_crit_edge

for.body.if.then48_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then48

lor.lhs.false42:                                  ; preds = %for.body
  %cstate = getelementptr %struct.drbd_connection_state_change, ptr %21, i32 %n_connection.0191, i32 1
  %26 = ptrtoint ptr %cstate to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cstate, align 4
  %arrayidx45 = getelementptr %struct.drbd_connection_state_change, ptr %21, i32 %n_connection.0191, i32 1, i32 1
  %28 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx45, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp46.not = icmp eq i32 %27, %29
  br i1 %cmp46.not, label %lor.lhs.false42.if.end53_crit_edge, label %lor.lhs.false42.if.then48_crit_edge

lor.lhs.false42.if.then48_crit_edge:              ; preds = %lor.lhs.false42
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then48

lor.lhs.false42.if.end53_crit_edge:               ; preds = %lor.lhs.false42
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end53

if.then48:                                        ; preds = %lor.lhs.false42.if.then48_crit_edge, %for.body.if.then48_crit_edge
  %tobool49.not = icmp eq ptr %last_func.1187, null
  br i1 %tobool49.not, label %if.then48.if.end53_crit_edge, label %if.then50

if.then48.if.end53_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end53

if.then50:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #15
  tail call void %last_func.1187(ptr noundef null, i32 noundef 0, ptr noundef %last_arg.1189, i32 noundef 32770) #13, !callees !206
  br label %if.end53

if.end53:                                         ; preds = %if.then50, %if.then48.if.end53_crit_edge, %lor.lhs.false42.if.end53_crit_edge
  %last_func.2 = phi ptr [ %last_func.1187, %lor.lhs.false42.if.end53_crit_edge ], [ @notify_connection_state_change, %if.then50 ], [ @notify_connection_state_change, %if.then48.if.end53_crit_edge ]
  %last_arg.2 = phi ptr [ %last_arg.1189, %lor.lhs.false42.if.end53_crit_edge ], [ %arrayidx36, %if.then50 ], [ %arrayidx36, %if.then48.if.end53_crit_edge ]
  %inc = add nuw i32 %n_connection.0191, 1
  %30 = ptrtoint ptr %n_connections to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %n_connections, align 4
  %cmp34 = icmp ult i32 %inc, %31
  br i1 %cmp34, label %if.end53.for.body_crit_edge, label %if.end53.for.cond54.preheader_crit_edge

if.end53.for.cond54.preheader_crit_edge:          ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond54.preheader

if.end53.for.body_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body57:                                       ; preds = %if.end69.for.body57_crit_edge, %for.body57.lr.ph
  %n_device.0198 = phi i32 [ 0, %for.body57.lr.ph ], [ %inc71, %if.end69.for.body57_crit_edge ]
  %last_arg.3197 = phi ptr [ %last_arg.1.lcssa, %for.body57.lr.ph ], [ %last_arg.4, %if.end69.for.body57_crit_edge ]
  %last_func.3196 = phi ptr [ %last_func.1.lcssa, %for.body57.lr.ph ], [ %last_func.4, %if.end69.for.body57_crit_edge ]
  %32 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %devices, align 4
  %arrayidx58 = getelementptr %struct.drbd_device_state_change, ptr %33, i32 %n_device.0198
  %disk_state = getelementptr %struct.drbd_device_state_change, ptr %33, i32 %n_device.0198, i32 1
  %34 = ptrtoint ptr %disk_state to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %disk_state, align 4
  %arrayidx61 = getelementptr %struct.drbd_device_state_change, ptr %33, i32 %n_device.0198, i32 1, i32 1
  %36 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx61, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %37)
  %cmp62.not = icmp eq i32 %35, %37
  br i1 %cmp62.not, label %for.body57.if.end69_crit_edge, label %if.then64

for.body57.if.end69_crit_edge:                    ; preds = %for.body57
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then64:                                        ; preds = %for.body57
  %tobool65.not = icmp eq ptr %last_func.3196, null
  br i1 %tobool65.not, label %if.then64.if.end69_crit_edge, label %if.then66

if.then64.if.end69_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then66:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #15
  tail call void %last_func.3196(ptr noundef null, i32 noundef 0, ptr noundef %last_arg.3197, i32 noundef 32770) #13, !callees !207
  br label %if.end69

if.end69:                                         ; preds = %if.then66, %if.then64.if.end69_crit_edge, %for.body57.if.end69_crit_edge
  %last_func.4 = phi ptr [ %last_func.3196, %for.body57.if.end69_crit_edge ], [ @notify_device_state_change, %if.then66 ], [ @notify_device_state_change, %if.then64.if.end69_crit_edge ]
  %last_arg.4 = phi ptr [ %last_arg.3197, %for.body57.if.end69_crit_edge ], [ %arrayidx58, %if.then66 ], [ %arrayidx58, %if.then64.if.end69_crit_edge ]
  %inc71 = add nuw i32 %n_device.0198, 1
  %38 = ptrtoint ptr %n_devices to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %n_devices, align 4
  %cmp55 = icmp ult i32 %inc71, %39
  br i1 %cmp55, label %if.end69.for.body57_crit_edge, label %if.end69.for.end72_crit_edge

if.end69.for.end72_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end72

if.end69.for.body57_crit_edge:                    ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body57

for.end72:                                        ; preds = %if.end69.for.end72_crit_edge, %for.cond54.preheader.for.end72_crit_edge
  %last_func.3.lcssa = phi ptr [ %last_func.1.lcssa, %for.cond54.preheader.for.end72_crit_edge ], [ %last_func.4, %if.end69.for.end72_crit_edge ]
  %last_arg.3.lcssa = phi ptr [ %last_arg.1.lcssa, %for.cond54.preheader.for.end72_crit_edge ], [ %last_arg.4, %if.end69.for.end72_crit_edge ]
  %.lcssa = phi i32 [ 0, %for.cond54.preheader.for.end72_crit_edge ], [ %39, %if.end69.for.end72_crit_edge ]
  %40 = ptrtoint ptr %n_connections to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %n_connections, align 4
  %mul = mul i32 %41, %.lcssa
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp76202.not = icmp eq i32 %mul, 0
  br i1 %cmp76202.not, label %for.end72.for.end130_crit_edge, label %for.body78.lr.ph

for.end72.for.end130_crit_edge:                   ; preds = %for.end72
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end130

for.body78.lr.ph:                                 ; preds = %for.end72
  %peer_devices = getelementptr inbounds %struct.drbd_state_change, ptr %state_change, i32 0, i32 6
  br label %for.body78

for.body78:                                       ; preds = %if.end127.for.body78_crit_edge, %for.body78.lr.ph
  %last_arg.5208 = phi ptr [ %last_arg.3.lcssa, %for.body78.lr.ph ], [ %last_arg.6, %if.end127.for.body78_crit_edge ]
  %last_func.5206 = phi ptr [ %last_func.3.lcssa, %for.body78.lr.ph ], [ %last_func.6, %if.end127.for.body78_crit_edge ]
  %n_peer_device.0203 = phi i32 [ 0, %for.body78.lr.ph ], [ %inc129, %if.end127.for.body78_crit_edge ]
  %42 = ptrtoint ptr %peer_devices to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %peer_devices, align 4
  %arrayidx79 = getelementptr %struct.drbd_peer_device_state_change, ptr %43, i32 %n_peer_device.0203
  %disk_state80 = getelementptr %struct.drbd_peer_device_state_change, ptr %43, i32 %n_peer_device.0203, i32 1
  %44 = ptrtoint ptr %disk_state80 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %disk_state80, align 4
  %arrayidx83 = getelementptr %struct.drbd_peer_device_state_change, ptr %43, i32 %n_peer_device.0203, i32 1, i32 1
  %46 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx83, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %47)
  %cmp84.not = icmp eq i32 %45, %47
  br i1 %cmp84.not, label %lor.lhs.false86, label %for.body78.if.then122_crit_edge

for.body78.if.then122_crit_edge:                  ; preds = %for.body78
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then122

lor.lhs.false86:                                  ; preds = %for.body78
  %repl_state = getelementptr %struct.drbd_peer_device_state_change, ptr %43, i32 %n_peer_device.0203, i32 2
  %48 = ptrtoint ptr %repl_state to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %repl_state, align 4
  %arrayidx89 = getelementptr %struct.drbd_peer_device_state_change, ptr %43, i32 %n_peer_device.0203, i32 2, i32 1
  %50 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx89, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %51)
  %cmp90.not = icmp eq i32 %49, %51
  br i1 %cmp90.not, label %lor.lhs.false92, label %lor.lhs.false86.if.then122_crit_edge

lor.lhs.false86.if.then122_crit_edge:             ; preds = %lor.lhs.false86
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then122

lor.lhs.false92:                                  ; preds = %lor.lhs.false86
  %resync_susp_user = getelementptr %struct.drbd_peer_device_state_change, ptr %43, i32 %n_peer_device.0203, i32 3
  %52 = ptrtoint ptr %resync_susp_user to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %resync_susp_user, align 4, !range !191
  %arrayidx97 = getelementptr %struct.drbd_peer_device_state_change, ptr %43, i32 %n_peer_device.0203, i32 3, i32 1
  %54 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx97, align 1, !range !191
  call void @__sanitizer_cov_trace_cmp1(i8 %53, i8 %55)
  %cmp100.not = icmp eq i8 %53, %55
  br i1 %cmp100.not, label %lor.lhs.false102, label %lor.lhs.false92.if.then122_crit_edge

lor.lhs.false92.if.then122_crit_edge:             ; preds = %lor.lhs.false92
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then122

lor.lhs.false102:                                 ; preds = %lor.lhs.false92
  %resync_susp_peer = getelementptr %struct.drbd_peer_device_state_change, ptr %43, i32 %n_peer_device.0203, i32 4
  %56 = ptrtoint ptr %resync_susp_peer to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %resync_susp_peer, align 2, !range !191
  %arrayidx107 = getelementptr %struct.drbd_peer_device_state_change, ptr %43, i32 %n_peer_device.0203, i32 4, i32 1
  %58 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx107, align 1, !range !191
  call void @__sanitizer_cov_trace_cmp1(i8 %57, i8 %59)
  %cmp110.not = icmp eq i8 %57, %59
  br i1 %cmp110.not, label %lor.lhs.false112, label %lor.lhs.false102.if.then122_crit_edge

lor.lhs.false102.if.then122_crit_edge:            ; preds = %lor.lhs.false102
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then122

lor.lhs.false112:                                 ; preds = %lor.lhs.false102
  %resync_susp_dependency = getelementptr %struct.drbd_peer_device_state_change, ptr %43, i32 %n_peer_device.0203, i32 5
  %60 = ptrtoint ptr %resync_susp_dependency to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %resync_susp_dependency, align 4, !range !191
  %arrayidx117 = getelementptr %struct.drbd_peer_device_state_change, ptr %43, i32 %n_peer_device.0203, i32 5, i32 1
  %62 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx117, align 1, !range !191
  call void @__sanitizer_cov_trace_cmp1(i8 %61, i8 %63)
  %cmp120.not = icmp eq i8 %61, %63
  br i1 %cmp120.not, label %lor.lhs.false112.if.end127_crit_edge, label %lor.lhs.false112.if.then122_crit_edge

lor.lhs.false112.if.then122_crit_edge:            ; preds = %lor.lhs.false112
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then122

lor.lhs.false112.if.end127_crit_edge:             ; preds = %lor.lhs.false112
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end127

if.then122:                                       ; preds = %lor.lhs.false112.if.then122_crit_edge, %lor.lhs.false102.if.then122_crit_edge, %lor.lhs.false92.if.then122_crit_edge, %lor.lhs.false86.if.then122_crit_edge, %for.body78.if.then122_crit_edge
  %tobool123.not = icmp eq ptr %last_func.5206, null
  br i1 %tobool123.not, label %if.then122.if.end127_crit_edge, label %if.then124

if.then122.if.end127_crit_edge:                   ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end127

if.then124:                                       ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #15
  tail call void %last_func.5206(ptr noundef null, i32 noundef 0, ptr noundef %last_arg.5208, i32 noundef 32770) #13, !callees !208
  br label %if.end127

if.end127:                                        ; preds = %if.then124, %if.then122.if.end127_crit_edge, %lor.lhs.false112.if.end127_crit_edge
  %last_func.6 = phi ptr [ %last_func.5206, %lor.lhs.false112.if.end127_crit_edge ], [ @notify_peer_device_state_change, %if.then124 ], [ @notify_peer_device_state_change, %if.then122.if.end127_crit_edge ]
  %last_arg.6 = phi ptr [ %last_arg.5208, %lor.lhs.false112.if.end127_crit_edge ], [ %arrayidx79, %if.then124 ], [ %arrayidx79, %if.then122.if.end127_crit_edge ]
  %inc129 = add nuw i32 %n_peer_device.0203, 1
  %exitcond.not = icmp eq i32 %inc129, %mul
  br i1 %exitcond.not, label %if.end127.for.end130_crit_edge, label %if.end127.for.body78_crit_edge

if.end127.for.body78_crit_edge:                   ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body78

if.end127.for.end130_crit_edge:                   ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end130

for.end130:                                       ; preds = %if.end127.for.end130_crit_edge, %for.end72.for.end130_crit_edge
  %last_func.5.lcssa = phi ptr [ %last_func.3.lcssa, %for.end72.for.end130_crit_edge ], [ %last_func.6, %if.end127.for.end130_crit_edge ]
  %last_arg.5.lcssa = phi ptr [ %last_arg.3.lcssa, %for.end72.for.end130_crit_edge ], [ %last_arg.6, %if.end127.for.end130_crit_edge ]
  %tobool131.not = icmp eq ptr %last_func.5.lcssa, null
  br i1 %tobool131.not, label %for.end130.if.end133_crit_edge, label %if.then132

for.end130.if.end133_crit_edge:                   ; preds = %for.end130
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end133

if.then132:                                       ; preds = %for.end130
  call void @__sanitizer_cov_trace_pc() #15
  tail call void %last_func.5.lcssa(ptr noundef null, i32 noundef 0, ptr noundef %last_arg.5.lcssa, i32 noundef 2) #13, !callees !208
  br label %if.end133

if.end133:                                        ; preds = %if.then132, %for.end130.if.end133_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @notification_mutex) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drbd_bcast_event(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drbd_khelper(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_tl_restart(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drbd_gen_and_send_sync_uuid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drbd_rs_cancel_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drbd_send_uuids(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drbd_send_state(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drbd_queue_bitmap_io(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drbd_send_bitmap(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drbd_uuid_new_current(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drbd_bm_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drbd_send_sizes(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @suspend_other_sg(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drbd_bmio_set_n_write(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @abw_start_sync(ptr noundef %device, i32 noundef %rv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rv)
  %tobool.not = icmp eq i32 %rv, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %vdisk = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %0 = ptrtoint ptr %vdisk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdisk, align 4
  %part0 = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %part0, align 4
  %bd_device = getelementptr inbounds %struct.block_device, ptr %3, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %bd_device, ptr noundef nonnull @.str.83) #17
  %call = tail call i32 @_drbd_request_state(ptr noundef %device, [1 x i32] [i32 496], [1 x i32] [i32 160], i32 noundef 2)
  br label %sw.epilog

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 27
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %bf.load8 = load i32, ptr %state, align 8
  %bf.lshr = lshr i32 %bf.load8, 4
  %bf.clear9 = and i32 %bf.lshr, 31
  %5 = zext i32 %bf.clear9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.100)
  switch i32 %bf.clear9, label %if.end.sw.epilog_crit_edge [
    i32 12, label %sw.bb
    i32 11, label %sw.bb25
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call24 = tail call i32 @_drbd_request_state(ptr noundef %device, [1 x i32] [i32 496], [1 x i32] [i32 240], i32 noundef 2)
  br label %sw.epilog

sw.bb25:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @drbd_start_resync(ptr noundef %device, i32 noundef 16) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb25, %sw.bb, %if.end.sw.epilog_crit_edge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tl_abort_disk_io(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drbd_md_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @resync_after_online_grow(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @resume_next_sg(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drbd_bm_write_copy_pages(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drbd_start_resync(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drbd_thread_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @conn_free_crypto(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @conn_md_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 95)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 95)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind readonly }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !11, !13, !15, !16, !17, !18, !19, !21, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !47, !49, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !73, !75, !76, !77, !79, !80, !82, !83, !84, !85, !87, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !109, !110, !111, !112, !114, !116, !118, !120, !121, !122, !124, !126, !128, !130, !132, !134, !136, !137, !138, !139, !141, !142, !143, !144, !145, !147, !149, !151, !153, !155, !157, !159, !161, !162, !163, !164, !166, !167, !168, !170, !172, !173, !174}
!llvm.named.register.sp = !{!175}
!llvm.module.flags = !{!176, !177, !178, !179, !180, !181, !182, !183}
!llvm.ident = !{!184}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/block/drbd/drbd_state.c", i32 654, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/block/drbd/drbd_state.c", i32 738, i32 2}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @print_st_err._entry, !3, !"_entry", i1 false, i1 false}
!8 = !{ptr @print_st_err._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/block/drbd/drbd_state.c", i32 739, i32 19}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/block/drbd/drbd_state.c", i32 740, i32 19}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/block/drbd/drbd_state.c", i32 1221, i32 3}
!15 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.9, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @drbd_resume_al._entry, !14, !"_entry", i1 false, i1 false}
!18 = !{ptr @drbd_resume_al._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/block/drbd/drbd_state.c", i32 1346, i32 28}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/block/drbd/drbd_state.c", i32 1366, i32 4}
!23 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @_drbd_set_state._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @_drbd_set_state._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/block/drbd/drbd_state.c", i32 1372, i32 3}
!28 = !{ptr @_drbd_set_state._entry.13, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @_drbd_set_state._entry_ptr.15, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/block/drbd/drbd_state.c", i32 1381, i32 3}
!32 = !{ptr @_drbd_set_state._entry.16, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @_drbd_set_state._entry_ptr.18, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.20, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/block/drbd/drbd_state.c", i32 1404, i32 4}
!36 = !{ptr @_drbd_set_state._entry.19, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @_drbd_set_state._entry_ptr.21, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.23, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/block/drbd/drbd_state.c", i32 1481, i32 3}
!40 = !{ptr @_drbd_set_state._entry.22, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @_drbd_set_state._entry_ptr.24, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.25, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/block/drbd/drbd_state.c", i32 1526, i32 2}
!44 = !{ptr @.str.26, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @drbd_bitmap_io_from_worker._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @drbd_bitmap_io_from_worker._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.27, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/block/drbd/drbd_state.c", i32 2358, i32 3}
!49 = !{ptr @.str.28, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @_conn_request_state._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @_conn_request_state._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.30, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/block/drbd/drbd_state.c", i32 2371, i32 3}
!54 = !{ptr @_conn_request_state._entry.29, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @_conn_request_state._entry_ptr.31, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.33, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/block/drbd/drbd_state.c", i32 2372, i32 3}
!58 = !{ptr @_conn_request_state._entry.32, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @_conn_request_state._entry_ptr.34, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.36, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/block/drbd/drbd_state.c", i32 2373, i32 3}
!62 = !{ptr @_conn_request_state._entry.35, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @_conn_request_state._entry_ptr.37, !61, !"_entry_ptr", i1 false, i1 false}
!64 = distinct !{null, !65, !"__warned", i1 false, i1 false}
!65 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!66 = !{ptr @.str.38, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.39, !65, !"<string literal>", i1 false, i1 false}
!68 = distinct !{null, !69, !"__warned", i1 false, i1 false}
!69 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!70 = !{ptr @.str.40, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @__func__.drbd_req_state, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/block/drbd/drbd_state.c", i32 577, i32 39}
!73 = !{ptr @.str.41, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/block/drbd/drbd_state.c", i32 625, i32 3}
!75 = !{ptr @drbd_req_state._entry, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @drbd_req_state._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @init_completion.__key, !78, !"__key", i1 false, i1 false}
!78 = !{!"../include/linux/completion.h", i32 87, i32 2}
!79 = !{ptr @.str.42, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.43, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/block/drbd/drbd_state.c", i32 717, i32 2}
!82 = !{ptr @.str.44, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @print_st._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @print_st._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = distinct !{null, !86, !"__warned", i1 false, i1 false}
!86 = !{!"../drivers/block/drbd/drbd_state.c", i32 1064, i32 8}
!87 = !{ptr @.str.45, !86, !"<string literal>", i1 false, i1 false}
!88 = distinct !{null, !89, !"__warned", i1 false, i1 false}
!89 = !{!"../drivers/block/drbd/drbd_state.c", i32 834, i32 8}
!90 = distinct !{null, !91, !"__warned", i1 false, i1 false}
!91 = !{!"../drivers/block/drbd/drbd_state.c", i32 838, i32 7}
!92 = !{ptr @.str.47, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/block/drbd/drbd_state.c", i32 1030, i32 18}
!94 = !{ptr @.str.48, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/block/drbd/drbd_state.c", i32 1031, i32 29}
!96 = !{ptr @.str.49, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/block/drbd/drbd_state.c", i32 1032, i32 22}
!98 = !{ptr @.str.50, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/block/drbd/drbd_state.c", i32 1033, i32 35}
!100 = !{ptr @.str.51, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/block/drbd/drbd_state.c", i32 1034, i32 32}
!102 = !{ptr @.str.52, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/block/drbd/drbd_state.c", i32 1035, i32 32}
!104 = !{ptr @print_sanitize_warnings.msg_table, !105, !"msg_table", i1 false, i1 false}
!105 = !{!"../drivers/block/drbd/drbd_state.c", i32 1029, i32 21}
!106 = !{ptr @.str.53, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/block/drbd/drbd_state.c", i32 1039, i32 3}
!108 = !{ptr @.str.54, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.55, !107, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @print_sanitize_warnings._entry, !107, !"_entry", i1 false, i1 false}
!111 = !{ptr @print_sanitize_warnings._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.56, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/block/drbd/drbd_state.c", i32 783, i32 23}
!114 = !{ptr @.str.57, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/block/drbd/drbd_state.c", i32 787, i32 23}
!116 = !{ptr @.str.58, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/block/drbd/drbd_state.c", i32 791, i32 23}
!118 = !{ptr @.str.59, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/block/drbd/drbd_state.c", i32 796, i32 3}
!120 = !{ptr @drbd_pr_state_change._entry, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @drbd_pr_state_change._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.60, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/block/drbd/drbd_state.c", i32 751, i32 23}
!124 = !{ptr @.str.61, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/block/drbd/drbd_state.c", i32 755, i32 23}
!126 = !{ptr @.str.62, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/block/drbd/drbd_state.c", i32 759, i32 23}
!128 = !{ptr @.str.63, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/block/drbd/drbd_state.c", i32 763, i32 23}
!130 = !{ptr @.str.64, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/block/drbd/drbd_state.c", i32 767, i32 23}
!132 = !{ptr @.str.65, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/block/drbd/drbd_state.c", i32 808, i32 23}
!134 = !{ptr @.str.66, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/block/drbd/drbd_state.c", i32 813, i32 3}
!136 = !{ptr @.str.67, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @conn_pr_state_change._entry, !135, !"_entry", i1 false, i1 false}
!138 = !{ptr @conn_pr_state_change._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.68, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/block/drbd/drbd_int.h", i32 2099, i32 2}
!141 = !{ptr @.str.69, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @.str.70, !140, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @put_ldev._entry, !140, !"_entry", i1 false, i1 false}
!144 = !{ptr @put_ldev._entry_ptr, !140, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.71, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/block/drbd/drbd_state.c", i32 1728, i32 24}
!147 = !{ptr @.str.72, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/block/drbd/drbd_state.c", i32 1811, i32 5}
!149 = !{ptr @.str.73, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/block/drbd/drbd_state.c", i32 1842, i32 5}
!151 = !{ptr @.str.74, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/block/drbd/drbd_state.c", i32 1854, i32 5}
!153 = !{ptr @.str.75, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/block/drbd/drbd_state.c", i32 1891, i32 4}
!155 = distinct !{null, !156, !"__warned", i1 false, i1 false}
!156 = !{!"../drivers/block/drbd/drbd_state.c", i32 1904, i32 9}
!157 = !{ptr @.str.76, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/block/drbd/drbd_state.c", i32 1914, i32 26}
!159 = !{ptr @.str.77, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/block/drbd/drbd_state.c", i32 1936, i32 5}
!161 = !{ptr @.str.78, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @after_state_ch._entry, !160, !"_entry", i1 false, i1 false}
!163 = !{ptr @after_state_ch._entry_ptr, !160, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.80, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/block/drbd/drbd_state.c", i32 1960, i32 4}
!166 = !{ptr @after_state_ch._entry.79, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @after_state_ch._entry_ptr.81, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.82, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/block/drbd/drbd_state.c", i32 2014, i32 4}
!170 = !{ptr @.str.83, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/block/drbd/drbd_state.c", i32 1505, i32 3}
!172 = !{ptr @.str.84, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @abw_start_sync._entry, !171, !"_entry", i1 false, i1 false}
!174 = !{ptr @abw_start_sync._entry_ptr, !171, !"_entry_ptr", i1 false, i1 false}
!175 = !{!"sp"}
!176 = !{i32 1, !"wchar_size", i32 2}
!177 = !{i32 1, !"min_enum_size", i32 4}
!178 = !{i32 8, !"branch-target-enforcement", i32 0}
!179 = !{i32 8, !"sign-return-address", i32 0}
!180 = !{i32 8, !"sign-return-address-all", i32 0}
!181 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!182 = !{i32 7, !"uwtable", i32 1}
!183 = !{i32 7, !"frame-pointer", i32 2}
!184 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!185 = !{!"auto-init"}
!186 = !{i64 2148344969, i64 2148345001, i64 2148345030, i64 2148345064, i64 2148345095, i64 2148345118}
!187 = !{!"branch_weights", i32 1, i32 2000}
!188 = !{!"branch_weights", i32 2000, i32 1}
!189 = !{i64 2150142426}
!190 = !{i64 2150142692}
!191 = !{i8 0, i8 2}
!192 = !{i64 2148432970}
!193 = !{i64 2148347434, i64 2148347466, i64 2148347495, i64 2148347529, i64 2148347560, i64 2148347583}
!194 = !{i64 2149058313}
!195 = !{ptr @drbd_destroy_connection, ptr @drbd_destroy_device, ptr @drbd_destroy_resource}
!196 = !{i64 2148343439, i64 2148343465, i64 2148343494, i64 2148343528, i64 2148343559, i64 2148343582}
!197 = !{i64 2159669339}
!198 = !{i64 2159669495}
!199 = !{i64 2159586384, i64 2159590941, i64 2159586421, i64 2159586477, i64 2159586511, i64 2159586535, i64 2159586576, i64 2159586597, i64 2159586625, i64 2159586659}
!200 = !{i64 2148431891}
!201 = !{i64 2148346624, i64 2148346656, i64 2148346685, i64 2148346719, i64 2148346750, i64 2148346773}
!202 = !{i64 2148432120}
!203 = distinct !{!203, !204}
!204 = !{!"llvm.loop.peeled.count", i32 1}
!205 = !{i64 2159777793, i64 2159778290, i64 2159777830, i64 2159777886, i64 2159777920, i64 2159777944, i64 2159777985, i64 2159778006, i64 2159778034, i64 2159778068}
!206 = !{ptr @notify_connection_state_change, ptr @notify_resource_state_change}
!207 = !{ptr @notify_connection_state_change, ptr @notify_device_state_change, ptr @notify_resource_state_change}
!208 = !{ptr @notify_connection_state_change, ptr @notify_device_state_change, ptr @notify_peer_device_state_change, ptr @notify_resource_state_change}
