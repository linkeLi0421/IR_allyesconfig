; ModuleID = '/llk/IR_all_yes/net/rds/ib_frmr.c_pt.bc'
source_filename = "../net/rds/ib_frmr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rds_ib_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ib_wc = type { %union.anon.137, i32, i32, i32, i32, ptr, %union.anon.138, i32, i32, i32, i16, i8, i8, i32, [6 x i8], i16, i8 }
%union.anon.137 = type { i64 }
%union.anon.138 = type { i32 }
%struct.rds_ib_mr = type { %struct.delayed_work, ptr, ptr, ptr, %struct.llist_node, %struct.list_head, i32, ptr, i32, i32, i8, %union.anon.182 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.llist_node = type { ptr }
%union.anon.182 = type { %struct.rds_ib_frmr }
%struct.rds_ib_frmr = type { ptr, i32, i8, %struct.wait_queue_head, i8, %struct.wait_queue_head, %struct.ib_send_wr, i32, i32 }
%struct.ib_send_wr = type { ptr, %union.anon.159, ptr, i32, i32, i32, %union.anon.160 }
%union.anon.159 = type { i64 }
%union.anon.160 = type { i32 }
%struct.rds_ib_connection = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, [32 x %struct.ib_wc], [32 x %struct.ib_wc], %struct.atomic_t, %struct.atomic_t, %struct.tasklet_struct, %struct.tasklet_struct, %struct.rds_ib_work_ring, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.mutex, %struct.rds_ib_work_ring, ptr, i32, ptr, ptr, ptr, i64, %struct.rds_ib_refill_cache, %struct.rds_ib_refill_cache, %struct.atomic_t, i32, %struct.atomic64_t, ptr, %struct.ib_send_wr, %struct.ib_sge, i32, i32, %struct.atomic_t, i8, i32, i8, %struct.atomic_t, i32, i32, i8 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.180, i32 }
%union.anon.180 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rds_ib_work_ring = type { i32, i32, i32, i32, %struct.atomic_t }
%struct.rds_ib_refill_cache = type { ptr, ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.ib_sge = type { i64, i32, i32 }
%struct.rds_connection = type { %struct.hlist_node, %struct.in6_addr, %struct.in6_addr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, %struct.possible_net_t, i8, %struct.list_head, i32, ptr, %struct.wait_queue_head, i32, i32 }
%struct.in6_addr = type { %union.anon.71 }
%union.anon.71 = type { [4 x i32] }
%struct.possible_net_t = type { ptr }
%struct.rds_transport = type { [16 x i8], %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rds_conn_path = type { ptr, ptr, i32, i32, i32, i32, i32, i32, %struct.spinlock, i64, %struct.list_head, %struct.list_head, i64, ptr, %struct.atomic_t, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.mutex, %struct.wait_queue_head, i32, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.rdma_cm_id = type { ptr, ptr, ptr, ptr, %struct.rdma_route, i32, i32, i32 }
%struct.rdma_route = type { %struct.rdma_addr, ptr, i32 }
%struct.rdma_addr = type { %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage, %struct.rdma_dev_addr }
%struct.__kernel_sockaddr_storage = type { %union.anon.172 }
%union.anon.172 = type { ptr, [124 x i8] }
%struct.rdma_dev_addr = type { [32 x i8], [32 x i8], [32 x i8], i16, i32, i32, ptr, ptr, i32, i32 }
%struct.ib_mr = type { ptr, ptr, i32, i32, i64, i64, i32, i32, i8, %union.anon.127, ptr, ptr, %struct.rdma_restrack_entry }
%union.anon.127 = type { %struct.list_head }
%struct.rdma_restrack_entry = type { i8, i8, %struct.kref, %struct.completion, ptr, ptr, i32, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.175, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%union.anon.175 = type { %struct.ib_core_device }
%struct.ib_core_device = type { %struct.device, %struct.possible_net_t, ptr, %struct.list_head, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.ib_device_attr = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i32, i32, %struct.ib_odp_caps, i64, i64, %struct.ib_rss_caps, i32, i32, %struct.ib_tm_caps, %struct.ib_cq_caps, i64, i32 }
%struct.ib_odp_caps = type { i64, %struct.anon.162 }
%struct.anon.162 = type { i32, i32, i32, i32 }
%struct.ib_rss_caps = type { i32, i32, i32 }
%struct.ib_tm_caps = type { i32, i32, i32, i32, i32 }
%struct.ib_cq_caps = type { i16, i16 }
%struct.rdmacg_device = type { %struct.list_head, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ib_reg_wr = type { %struct.ib_send_wr, ptr, i32, i32 }
%struct.rds_ib_device = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, i8, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, %struct.spinlock, %struct.refcount_struct, %struct.work_struct, ptr }
%struct.rds_ib_mr_pool = type { i32, %struct.mutex, %struct.delayed_work, %struct.atomic_t, %struct.atomic_t, %struct.llist_head, %struct.llist_head, %struct.llist_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i32, i32, i32, i32 }
%struct.llist_head = type { ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }

@.str = internal constant { [102 x i8], [58 x i8] } { [102 x i8] c"\014RDS/IB: frmr completion <%pI4,%pI4> status %u(%s), vendor_err 0x%x, disconnecting and reconnecting\0A\00", [58 x i8] zeroinitializer }, align 32
@rds_ib_unreg_frmr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 375, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\014RDS/IB: %s failed (err=%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rds_ib_unreg_frmr\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"net/rds/ib_frmr.c\00", [46 x i8] zeroinitializer }, align 32
@rds_ib_unreg_frmr._entry_ptr = internal global ptr @rds_ib_unreg_frmr._entry, section ".printk_index", align 4
@rds_ib_stats = external dso_local global %struct.rds_ib_statistics, section ".data..percpu..shared_aligned", align 128
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@rds_ib_ring_empty_wait = external dso_local global %struct.wait_queue_head, align 4
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"net/rds/rds.h\00", [18 x i8] zeroinitializer }, align 32
@rds_ib_post_inv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.3, i32 302, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013RDS/IB: %s returned error(%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rds_ib_post_inv\00", [16 x i8] zeroinitializer }, align 32
@rds_ib_post_inv._entry_ptr = internal global ptr @rds_ib_post_inv._entry, section ".printk_index", align 4
@rds_ib_mr_wq = external dso_local local_unnamed_addr global ptr, align 4
@rds_ib_alloc_frmr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.3, i32 81, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014RDS/IB: %s failed to allocate MR\00", [61 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rds_ib_alloc_frmr\00", [46 x i8] zeroinitializer }, align 32
@rds_ib_alloc_frmr._entry_ptr = internal global ptr @rds_ib_alloc_frmr._entry, section ".printk_index", align 4
@rds_ib_alloc_frmr.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&frmr->fr_inv_done\00", [45 x i8] zeroinitializer }, align 32
@rds_ib_alloc_frmr.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&frmr->fr_reg_done\00", [45 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@rds_ib_map_frmr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.3, i32 211, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\014RDS/IB: %s failed!\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rds_ib_map_frmr\00", [16 x i8] zeroinitializer }, align 32
@rds_ib_map_frmr._entry_ptr = internal global ptr @rds_ib_map_frmr._entry, section ".printk_index", align 4
@__func__.rds_ib_post_reg_frmr = private unnamed_addr constant [21 x i8] c"rds_ib_post_reg_frmr\00", align 1
@rds_ib_post_reg_frmr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @__func__.rds_ib_post_reg_frmr, ptr @.str.3, i32 172, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\014RDS/IB: %s returned error(%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@rds_ib_post_reg_frmr._entry_ptr = internal global ptr @rds_ib_post_reg_frmr._entry, section ".printk_index", align 4
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 330, i32 4 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 375, i32 3 }
@___asan_gen_.31 = private unnamed_addr constant [17 x i8] c"../net/rds/rds.h\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 835, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 302, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 81, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 96, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 97, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 211, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.75 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.76 = private constant [21 x i8] c"../net/rds/ib_frmr.c\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 171, i32 4 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @rds_ib_alloc_frmr._entry, ptr @rds_ib_alloc_frmr._entry_ptr, ptr @rds_ib_map_frmr._entry, ptr @rds_ib_map_frmr._entry_ptr, ptr @rds_ib_post_inv._entry, ptr @rds_ib_post_inv._entry_ptr, ptr @rds_ib_post_reg_frmr._entry, ptr @rds_ib_post_reg_frmr._entry_ptr, ptr @rds_ib_unreg_frmr._entry, ptr @rds_ib_unreg_frmr._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @rds_ib_alloc_frmr.__key, ptr @.str.9, ptr @rds_ib_alloc_frmr.__key.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 102, i32 160, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_ib_unreg_frmr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_ib_post_inv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_ib_alloc_frmr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_ib_alloc_frmr.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_ib_alloc_frmr.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_ib_map_frmr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_ib_post_reg_frmr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_ib_mr_cqe_handler(ptr noundef %ic, ptr nocapture noundef readonly %wc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wc to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %wc, align 8
  %conv = trunc i64 %1 to i32
  %2 = inttoptr i32 %conv to ptr
  %status = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 1
  %3 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not = icmp eq i32 %4, 0
  br i1 %cmp.not, label %entry.if.end9_crit_edge, label %if.then

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then:                                          ; preds = %entry
  %fr_state.i = getelementptr inbounds %struct.rds_ib_mr, ptr %2, i32 0, i32 11, i32 0, i32 1
  %call.i.i36 = tail call zeroext i1 @__kasan_check_write(ptr noundef %fr_state.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !47
  tail call void @llvm.prefetch.p0(ptr %fr_state.i, i32 1, i32 3, i32 1) #9
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %if.then
  %5 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %fr_state.i, i32 1, i32 2) #9, !srcloc !48
  %asmresult.i.i = extractvalue { i32, i32 } %5, 0
  %tobool.not.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool.not.i.i, label %__cmpxchg.exit.i, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i

__cmpxchg.exit.i:                                 ; preds = %do.body.i.i
  %asmresult1.i.i = extractvalue { i32, i32 } %5, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !49
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult1.i.i)
  %cmp.i = icmp eq i32 %asmresult1.i.i, 1
  br i1 %cmp.i, label %do.end19.i, label %__cmpxchg.exit.i.rds_transition_frwr_state.exit_crit_edge

__cmpxchg.exit.i.rds_transition_frwr_state.exit_crit_edge: ; preds = %__cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rds_transition_frwr_state.exit

do.end19.i:                                       ; preds = %__cmpxchg.exit.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !50
  %ic.i = getelementptr inbounds %struct.rds_ib_mr, ptr %2, i32 0, i32 3
  %6 = ptrtoint ptr %ic.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ic.i, align 4
  %i_fastreg_inuse_count.i = getelementptr inbounds %struct.rds_ib_connection, ptr %7, i32 0, i32 10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_fastreg_inuse_count.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %i_fastreg_inuse_count.i, i32 1, i32 3, i32 1) #9
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %i_fastreg_inuse_count.i, ptr %i_fastreg_inuse_count.i, i32 1, ptr elementtype(i32) %i_fastreg_inuse_count.i) #9, !srcloc !51
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.wait_queue_head, ptr @rds_ib_ring_empty_wait, i32 0, i32 1) to i32))
  %9 = load volatile ptr, ptr getelementptr inbounds (%struct.wait_queue_head, ptr @rds_ib_ring_empty_wait, i32 0, i32 1), align 4
  %cmp.i.i.not.i = icmp eq ptr %9, getelementptr inbounds (%struct.wait_queue_head, ptr @rds_ib_ring_empty_wait, i32 0, i32 1)
  br i1 %cmp.i.i.not.i, label %do.end19.i.rds_transition_frwr_state.exit_crit_edge, label %if.then23.i

do.end19.i.rds_transition_frwr_state.exit_crit_edge: ; preds = %do.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rds_transition_frwr_state.exit

if.then23.i:                                      ; preds = %do.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__wake_up(ptr noundef nonnull @rds_ib_ring_empty_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %rds_transition_frwr_state.exit

rds_transition_frwr_state.exit:                   ; preds = %if.then23.i, %do.end19.i.rds_transition_frwr_state.exit_crit_edge, %__cmpxchg.exit.i.rds_transition_frwr_state.exit_crit_edge
  %conn = getelementptr inbounds %struct.rds_ib_connection, ptr %ic, i32 0, i32 2
  %10 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %conn, align 4
  %c_trans.i = getelementptr inbounds %struct.rds_connection, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %c_trans.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %c_trans.i, align 4
  %t_mp_capable.i = getelementptr inbounds %struct.rds_transport, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %t_mp_capable.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load.i = load i8, ptr %t_mp_capable.i, align 4
  %15 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i = icmp eq i8 %15, 0
  br i1 %tobool.not.i, label %rds_transition_frwr_state.exit.rds_conn_up.exit_crit_edge, label %do.end.i, !prof !52

rds_transition_frwr_state.exit.rds_conn_up.exit_crit_edge: ; preds = %rds_transition_frwr_state.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %rds_conn_up.exit

do.end.i:                                         ; preds = %rds_transition_frwr_state.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 835, i32 noundef 9, ptr noundef null) #9
  br label %rds_conn_up.exit

rds_conn_up.exit:                                 ; preds = %do.end.i, %rds_transition_frwr_state.exit.rds_conn_up.exit_crit_edge
  %c_path.i = getelementptr inbounds %struct.rds_connection, ptr %11, i32 0, i32 17
  %16 = ptrtoint ptr %c_path.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %c_path.i, align 4
  %cp_state.i.i = getelementptr inbounds %struct.rds_conn_path, ptr %17, i32 0, i32 14
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %cp_state.i.i, i32 noundef 4) #9
  %18 = ptrtoint ptr %cp_state.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %cp_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %19)
  %cmp.i.i.not = icmp eq i32 %19, 3
  br i1 %cmp.i.i.not, label %if.then2, label %rds_conn_up.exit.if.end9_crit_edge

rds_conn_up.exit.if.end9_crit_edge:               ; preds = %rds_conn_up.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then2:                                         ; preds = %rds_conn_up.exit
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %conn, align 4
  %c_laddr = getelementptr inbounds %struct.rds_connection, ptr %21, i32 0, i32 1
  %c_faddr = getelementptr inbounds %struct.rds_connection, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %status, align 8
  %call8 = tail call ptr @ib_wc_status_msg(i32 noundef %23) #12
  %vendor_err = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 3
  %24 = ptrtoint ptr %vendor_err to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %vendor_err, align 8
  tail call void (ptr, ptr, ...) @__rds_ib_conn_error(ptr noundef %21, ptr noundef nonnull @.str, ptr noundef %c_laddr, ptr noundef %c_faddr, i32 noundef %23, ptr noundef %call8, i32 noundef %25) #9
  br label %if.end9

if.end9:                                          ; preds = %if.then2, %rds_conn_up.exit.if.end9_crit_edge, %entry.if.end9_crit_edge
  %fr_inv = getelementptr inbounds %struct.rds_ib_mr, ptr %2, i32 0, i32 11, i32 0, i32 2
  %26 = ptrtoint ptr %fr_inv to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %fr_inv, align 8, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool10.not = icmp eq i8 %27, 0
  br i1 %tobool10.not, label %if.end9.if.end13_crit_edge, label %if.then11

if.end9.if.end13_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then11:                                        ; preds = %if.end9
  %fr_state.i37 = getelementptr inbounds %struct.rds_ib_mr, ptr %2, i32 0, i32 11, i32 0, i32 1
  %call.i.i38 = tail call zeroext i1 @__kasan_check_write(ptr noundef %fr_state.i37, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !47
  tail call void @llvm.prefetch.p0(ptr %fr_state.i37, i32 1, i32 3, i32 1) #9
  br label %do.body.i.i41

do.body.i.i41:                                    ; preds = %do.body.i.i41.do.body.i.i41_crit_edge, %if.then11
  %28 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %fr_state.i37, i32 1, i32 0) #9, !srcloc !48
  %asmresult.i.i39 = extractvalue { i32, i32 } %28, 0
  %tobool.not.i.i40 = icmp eq i32 %asmresult.i.i39, 0
  br i1 %tobool.not.i.i40, label %__cmpxchg.exit.i44, label %do.body.i.i41.do.body.i.i41_crit_edge

do.body.i.i41.do.body.i.i41_crit_edge:            ; preds = %do.body.i.i41
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i41

__cmpxchg.exit.i44:                               ; preds = %do.body.i.i41
  %asmresult1.i.i42 = extractvalue { i32, i32 } %28, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !49
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult1.i.i42)
  %cmp.i43 = icmp eq i32 %asmresult1.i.i42, 1
  br i1 %cmp.i43, label %do.end19.i49, label %__cmpxchg.exit.i44.rds_transition_frwr_state.exit51_crit_edge

__cmpxchg.exit.i44.rds_transition_frwr_state.exit51_crit_edge: ; preds = %__cmpxchg.exit.i44
  call void @__sanitizer_cov_trace_pc() #11
  br label %rds_transition_frwr_state.exit51

do.end19.i49:                                     ; preds = %__cmpxchg.exit.i44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !50
  %ic.i45 = getelementptr inbounds %struct.rds_ib_mr, ptr %2, i32 0, i32 3
  %29 = ptrtoint ptr %ic.i45 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ic.i45, align 4
  %i_fastreg_inuse_count.i46 = getelementptr inbounds %struct.rds_ib_connection, ptr %30, i32 0, i32 10
  %call.i.i.i47 = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_fastreg_inuse_count.i46, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %i_fastreg_inuse_count.i46, i32 1, i32 3, i32 1) #9
  %31 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %i_fastreg_inuse_count.i46, ptr %i_fastreg_inuse_count.i46, i32 1, ptr elementtype(i32) %i_fastreg_inuse_count.i46) #9, !srcloc !51
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.wait_queue_head, ptr @rds_ib_ring_empty_wait, i32 0, i32 1) to i32))
  %32 = load volatile ptr, ptr getelementptr inbounds (%struct.wait_queue_head, ptr @rds_ib_ring_empty_wait, i32 0, i32 1), align 4
  %cmp.i.i.not.i48 = icmp eq ptr %32, getelementptr inbounds (%struct.wait_queue_head, ptr @rds_ib_ring_empty_wait, i32 0, i32 1)
  br i1 %cmp.i.i.not.i48, label %do.end19.i49.rds_transition_frwr_state.exit51_crit_edge, label %if.then23.i50

do.end19.i49.rds_transition_frwr_state.exit51_crit_edge: ; preds = %do.end19.i49
  call void @__sanitizer_cov_trace_pc() #11
  br label %rds_transition_frwr_state.exit51

if.then23.i50:                                    ; preds = %do.end19.i49
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__wake_up(ptr noundef nonnull @rds_ib_ring_empty_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %rds_transition_frwr_state.exit51

rds_transition_frwr_state.exit51:                 ; preds = %if.then23.i50, %do.end19.i49.rds_transition_frwr_state.exit51_crit_edge, %__cmpxchg.exit.i44.rds_transition_frwr_state.exit51_crit_edge
  %33 = ptrtoint ptr %fr_inv to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %fr_inv, align 8
  %fr_inv_done = getelementptr inbounds %struct.rds_ib_mr, ptr %2, i32 0, i32 11, i32 0, i32 3
  tail call void @__wake_up(ptr noundef %fr_inv_done, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %if.end13

if.end13:                                         ; preds = %rds_transition_frwr_state.exit51, %if.end9.if.end13_crit_edge
  %fr_reg = getelementptr inbounds %struct.rds_ib_mr, ptr %2, i32 0, i32 11, i32 0, i32 4
  %34 = ptrtoint ptr %fr_reg to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %fr_reg, align 8, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool14.not = icmp eq i8 %35, 0
  br i1 %tobool14.not, label %if.end13.do.end_crit_edge, label %if.then15

if.end13.do.end_crit_edge:                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %fr_reg to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %fr_reg, align 8
  %fr_reg_done = getelementptr inbounds %struct.rds_ib_mr, ptr %2, i32 0, i32 11, i32 0, i32 5
  tail call void @__wake_up(ptr noundef %fr_reg_done, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %do.end

do.end:                                           ; preds = %if.then15, %if.end13.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !54
  %i_fastreg_wrs = getelementptr inbounds %struct.rds_ib_connection, ptr %ic, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_fastreg_wrs, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %i_fastreg_wrs, i32 1, i32 3, i32 1) #9
  %37 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %i_fastreg_wrs, ptr %i_fastreg_wrs, i32 1, ptr elementtype(i32) %i_fastreg_wrs) #9, !srcloc !55
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rds_transition_frwr_state(ptr noundef %ibmr, i32 noundef %new_state) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %fr_state = getelementptr inbounds %struct.rds_ib_mr, ptr %ibmr, i32 0, i32 11, i32 0, i32 1
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fr_state, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !47
  tail call void @llvm.prefetch.p0(ptr %fr_state, i32 1, i32 3, i32 1) #9
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %entry
  %0 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %fr_state, i32 1, i32 %new_state) #9, !srcloc !48
  %asmresult.i = extractvalue { i32, i32 } %0, 0
  %tobool.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i, label %__cmpxchg.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

__cmpxchg.exit:                                   ; preds = %do.body.i
  %asmresult1.i = extractvalue { i32, i32 } %0, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !49
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult1.i)
  %cmp = icmp eq i32 %asmresult1.i, 1
  br i1 %cmp, label %do.end19, label %__cmpxchg.exit.if.end24_crit_edge

__cmpxchg.exit.if.end24_crit_edge:                ; preds = %__cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

do.end19:                                         ; preds = %__cmpxchg.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !50
  %ic = getelementptr inbounds %struct.rds_ib_mr, ptr %ibmr, i32 0, i32 3
  %1 = ptrtoint ptr %ic to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ic, align 4
  %i_fastreg_inuse_count = getelementptr inbounds %struct.rds_ib_connection, ptr %2, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_fastreg_inuse_count, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %i_fastreg_inuse_count, i32 1, i32 3, i32 1) #9
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %i_fastreg_inuse_count, ptr %i_fastreg_inuse_count, i32 1, ptr elementtype(i32) %i_fastreg_inuse_count) #9, !srcloc !51
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.wait_queue_head, ptr @rds_ib_ring_empty_wait, i32 0, i32 1) to i32))
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.wait_queue_head, ptr @rds_ib_ring_empty_wait, i32 0, i32 1), align 4
  %cmp.i.i.not = icmp eq ptr %4, getelementptr inbounds (%struct.wait_queue_head, ptr @rds_ib_ring_empty_wait, i32 0, i32 1)
  br i1 %cmp.i.i.not, label %do.end19.if.end24_crit_edge, label %if.then23

do.end19.if.end24_crit_edge:                      ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then23:                                        ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__wake_up(ptr noundef nonnull @rds_ib_ring_empty_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %do.end19.if.end24_crit_edge, %__cmpxchg.exit.if.end24_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rds_ib_conn_error(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local ptr @ib_wc_status_msg(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_ib_unreg_frmr(ptr noundef readonly %list, ptr nocapture noundef %nfreed, ptr nocapture noundef %unpinned, i32 noundef %goal) local_unnamed_addr #0 align 64 {
entry:
  %dummy.i.i = alloca ptr, align 4
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %nfreed to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nfreed, align 4
  %2 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn130 = load ptr, ptr %list, align 4
  %cmp.not132 = icmp eq ptr %.pn130, %list
  br i1 %cmp.not132, label %entry.if.end15_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn134 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn130, %entry.for.body_crit_edge ]
  %ret.0133 = phi i32 [ %ret.1, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %ibmr.0135 = getelementptr i8, ptr %.pn134, i32 -116
  %sg_dma_len = getelementptr i8, ptr %.pn134, i32 20
  %3 = ptrtoint ptr %sg_dma_len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sg_dma_len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then:                                          ; preds = %for.body
  %u.i = getelementptr i8, ptr %.pn134, i32 28
  %ic.i = getelementptr i8, ptr %.pn134, i32 -8
  %5 = ptrtoint ptr %ic.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ic.i, align 4
  %i_cm_id1.i = getelementptr inbounds %struct.rds_ib_connection, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %i_cm_id1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_cm_id1.i, align 8
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.then.rds_ib_post_inv.exit_crit_edge, label %lor.lhs.false.i

if.then.rds_ib_post_inv.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %rds_ib_post_inv.exit

lor.lhs.false.i:                                  ; preds = %if.then
  %qp.i = getelementptr inbounds %struct.rdma_cm_id, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %qp.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %qp.i, align 4
  %tobool2.not.i = icmp eq ptr %10, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i.rds_ib_post_inv.exit_crit_edge, label %lor.lhs.false3.i

lor.lhs.false.i.rds_ib_post_inv.exit_crit_edge:   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rds_ib_post_inv.exit

lor.lhs.false3.i:                                 ; preds = %lor.lhs.false.i
  %11 = ptrtoint ptr %u.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %u.i, align 8
  %tobool4.not.i = icmp eq ptr %12, null
  br i1 %tobool4.not.i, label %lor.lhs.false3.i.rds_ib_post_inv.exit_crit_edge, label %if.end.i

lor.lhs.false3.i.rds_ib_post_inv.exit_crit_edge:  ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rds_ib_post_inv.exit

if.end.i:                                         ; preds = %lor.lhs.false3.i
  %fr_state.i = getelementptr i8, ptr %.pn134, i32 32
  %13 = ptrtoint ptr %fr_state.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fr_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp.not.i = icmp eq i32 %14, 1
  br i1 %cmp.not.i, label %if.end.i.while.cond.i_crit_edge, label %if.end.i.rds_ib_post_inv.exit_crit_edge

if.end.i.rds_ib_post_inv.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rds_ib_post_inv.exit

if.end.i.while.cond.i_crit_edge:                  ; preds = %if.end.i
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i, %if.end.i.while.cond.i_crit_edge
  %15 = ptrtoint ptr %ic.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ic.i, align 4
  %i_fastreg_wrs.i = getelementptr inbounds %struct.rds_ib_connection, ptr %16, i32 0, i32 9
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %i_fastreg_wrs.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !56
  call void @llvm.prefetch.p0(ptr %i_fastreg_wrs.i, i32 1, i32 3, i32 1) #9
  %17 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %i_fastreg_wrs.i, ptr %i_fastreg_wrs.i, i32 1, ptr elementtype(i32) %i_fastreg_wrs.i) #9, !srcloc !57
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %17, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !58
  %cmp8.i = icmp slt i32 %asmresult.i.i.i.i.i, 1
  br i1 %cmp8.i, label %while.body.i, label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %ic.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ic.i, align 4
  %i_fastreg_wrs10.i = getelementptr inbounds %struct.rds_ib_connection, ptr %19, i32 0, i32 9
  %call.i.i88.i = call zeroext i1 @__kasan_check_write(ptr noundef %i_fastreg_wrs10.i, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %i_fastreg_wrs10.i, i32 1, i32 3, i32 1) #9
  %20 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %i_fastreg_wrs10.i, ptr %i_fastreg_wrs10.i, i32 1, ptr elementtype(i32) %i_fastreg_wrs10.i) #9, !srcloc !55
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !59
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !60
  br label %while.cond.i

while.end.i:                                      ; preds = %while.cond.i
  %fr_inv.i = getelementptr i8, ptr %.pn134, i32 36
  %21 = ptrtoint ptr %fr_inv.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %fr_inv.i, align 8
  %fr_wr.i = getelementptr i8, ptr %.pn134, i32 148
  %22 = call ptr @memset(ptr %fr_wr.i, i32 0, i32 40)
  %23 = ptrtoint ptr %ibmr.0135 to i32
  %conv.i = zext i32 %23 to i64
  %24 = getelementptr i8, ptr %.pn134, i32 156
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %conv.i, ptr %24, align 8
  %opcode.i = getelementptr i8, ptr %.pn134, i32 172
  %26 = ptrtoint ptr %opcode.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 7, ptr %opcode.i, align 8
  %27 = ptrtoint ptr %u.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %u.i, align 8
  %rkey.i = getelementptr inbounds %struct.ib_mr, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %rkey.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rkey.i, align 4
  %ex.i = getelementptr i8, ptr %.pn134, i32 180
  %31 = ptrtoint ptr %ex.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %ex.i, align 8
  %send_flags.i = getelementptr i8, ptr %.pn134, i32 176
  %32 = ptrtoint ptr %send_flags.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 2, ptr %send_flags.i, align 4
  %33 = ptrtoint ptr %qp.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %qp.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i.i) #9
  %35 = ptrtoint ptr %dummy.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr inttoptr (i32 -1 to ptr), ptr %dummy.i.i, align 4, !annotation !61
  %36 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %34, align 4
  %post_send.i.i = getelementptr inbounds %struct.ib_device, ptr %37, i32 0, i32 1, i32 6
  %38 = ptrtoint ptr %post_send.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %post_send.i.i, align 4
  %call.i.i = call i32 %39(ptr noundef %34, ptr noundef %fr_wr.i, ptr noundef nonnull %dummy.i.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool20.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool20.not.i, label %do.body39.i, label %if.then23.i, !prof !52

if.then23.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @rds_transition_frwr_state(ptr noundef %ibmr.0135, i32 noundef 2) #9
  %40 = ptrtoint ptr %fr_inv.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %fr_inv.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !62
  %41 = ptrtoint ptr %ic.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ic.i, align 4
  %i_fastreg_wrs32.i = getelementptr inbounds %struct.rds_ib_connection, ptr %42, i32 0, i32 9
  %call.i.i89.i = call zeroext i1 @__kasan_check_write(ptr noundef %i_fastreg_wrs32.i, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %i_fastreg_wrs32.i, i32 1, i32 3, i32 1) #9
  %43 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %i_fastreg_wrs32.i, ptr %i_fastreg_wrs32.i, i32 1, ptr elementtype(i32) %i_fastreg_wrs32.i) #9, !srcloc !55
  %call36.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef %call.i.i) #13
  br label %rds_ib_post_inv.exit

do.body39.i:                                      ; preds = %while.end.i
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 316) #9
  %44 = ptrtoint ptr %fr_state.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %fr_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %45)
  %cmp46.not.i = icmp eq i32 %45, 1
  br i1 %cmp46.not.i, label %if.end49.i, label %do.body39.i.rds_ib_post_inv.exit_crit_edge

do.body39.i.rds_ib_post_inv.exit_crit_edge:       ; preds = %do.body39.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rds_ib_post_inv.exit

if.end49.i:                                       ; preds = %do.body39.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #9
  %46 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #9
  %fr_inv_done.i = getelementptr i8, ptr %.pn134, i32 40
  %call5092.i = call i32 @prepare_to_wait_event(ptr noundef %fr_inv_done.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #9
  %47 = ptrtoint ptr %fr_state.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %fr_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %48)
  %cmp52.not93.i = icmp eq i32 %48, 1
  br i1 %cmp52.not93.i, label %if.end49.i.cleanup.i_crit_edge, label %if.end49.i.for.end.i_crit_edge

if.end49.i.for.end.i_crit_edge:                   ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

if.end49.i.cleanup.i_crit_edge:                   ; preds = %if.end49.i
  br label %cleanup.i

cleanup.i:                                        ; preds = %cleanup.i.cleanup.i_crit_edge, %if.end49.i.cleanup.i_crit_edge
  call void @schedule() #9
  %call50.i = call i32 @prepare_to_wait_event(ptr noundef %fr_inv_done.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #9
  %49 = ptrtoint ptr %fr_state.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %fr_state.i, align 4
  %cmp52.not.i = icmp eq i32 %50, 1
  br i1 %cmp52.not.i, label %cleanup.i.cleanup.i_crit_edge, label %cleanup.i.for.end.i_crit_edge

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

cleanup.i.cleanup.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %if.end49.i.for.end.i_crit_edge
  call void @finish_wait(ptr noundef %fr_inv_done.i, ptr noundef nonnull %__wq_entry.i) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #9
  br label %rds_ib_post_inv.exit

rds_ib_post_inv.exit:                             ; preds = %for.end.i, %do.body39.i.rds_ib_post_inv.exit_crit_edge, %if.then23.i, %if.end.i.rds_ib_post_inv.exit_crit_edge, %lor.lhs.false3.i.rds_ib_post_inv.exit_crit_edge, %lor.lhs.false.i.rds_ib_post_inv.exit_crit_edge, %if.then.rds_ib_post_inv.exit_crit_edge
  %ret.0.i = phi i32 [ -22, %if.end.i.rds_ib_post_inv.exit_crit_edge ], [ %call.i.i, %if.then23.i ], [ 0, %do.body39.i.rds_ib_post_inv.exit_crit_edge ], [ 0, %for.end.i ], [ -22, %lor.lhs.false3.i.rds_ib_post_inv.exit_crit_edge ], [ -22, %lor.lhs.false.i.rds_ib_post_inv.exit_crit_edge ], [ -22, %if.then.rds_ib_post_inv.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool2.not = icmp ne i32 %ret.0.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0133)
  %tobool3.not = icmp eq i32 %ret.0133, 0
  %or.cond = select i1 %tobool2.not, i1 %tobool3.not, i1 false
  %spec.select = select i1 %or.cond, i32 %ret.0.i, i32 %ret.0133
  br label %for.inc

for.inc:                                          ; preds = %rds_ib_post_inv.exit, %for.body.for.inc_crit_edge
  %ret.1 = phi i32 [ %ret.0133, %for.body.for.inc_crit_edge ], [ %spec.select, %rds_ib_post_inv.exit ]
  %51 = ptrtoint ptr %.pn134 to i32
  call void @__asan_load4_noabort(i32 %51)
  %.pn = load ptr, ptr %.pn134, align 4
  %cmp.not = icmp eq ptr %.pn, %list
  br i1 %cmp.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool11.not = icmp eq i32 %ret.1, 0
  br i1 %tobool11.not, label %for.end.if.end15_crit_edge, label %do.end

for.end.if.end15_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef %ret.1) #13
  br label %if.end15

if.end15:                                         ; preds = %do.end, %for.end.if.end15_crit_edge, %entry.if.end15_crit_edge
  %52 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %list, align 4
  %cmp27.not138 = icmp eq ptr %53, %list
  br i1 %cmp27.not138, label %if.end15.for.end93_crit_edge, label %if.end15.for.body29_crit_edge

if.end15.for.body29_crit_edge:                    ; preds = %if.end15
  br label %for.body29

if.end15.for.end93_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end93

for.body29:                                       ; preds = %for.inc87.for.body29_crit_edge, %if.end15.for.body29_crit_edge
  %.pn118.in141 = phi ptr [ %.pn118144, %for.inc87.for.body29_crit_edge ], [ %53, %if.end15.for.body29_crit_edge ]
  %freed.0139 = phi i32 [ %freed.1, %for.inc87.for.body29_crit_edge ], [ %1, %if.end15.for.body29_crit_edge ]
  %ibmr.1143 = getelementptr i8, ptr %.pn118.in141, i32 -116
  %54 = ptrtoint ptr %.pn118.in141 to i32
  call void @__asan_load4_noabort(i32 %54)
  %.pn118144 = load ptr, ptr %.pn118.in141, align 4
  %sg_len = getelementptr i8, ptr %.pn118.in141, i32 16
  %55 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %sg_len, align 4
  %57 = ptrtoint ptr %unpinned to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %unpinned, align 4
  %add = add i32 %58, %56
  store i32 %add, ptr %unpinned, align 4
  %u = getelementptr i8, ptr %.pn118.in141, i32 28
  call void @__rds_ib_teardown_mr(ptr noundef %ibmr.1143) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %freed.0139, i32 %goal)
  %cmp30 = icmp ult i32 %freed.0139, %goal
  br i1 %cmp30, label %for.body29.if.then32_crit_edge, label %lor.lhs.false

for.body29.if.then32_crit_edge:                   ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then32

lor.lhs.false:                                    ; preds = %for.body29
  %fr_state = getelementptr i8, ptr %.pn118.in141, i32 32
  %59 = ptrtoint ptr %fr_state to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %fr_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %60)
  %cmp31 = icmp eq i32 %60, 2
  br i1 %cmp31, label %lor.lhs.false.if.then32_crit_edge, label %lor.lhs.false.for.inc87_crit_edge

lor.lhs.false.for.inc87_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc87

lor.lhs.false.if.then32_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then32

if.then32:                                        ; preds = %lor.lhs.false.if.then32_crit_edge, %for.body29.if.then32_crit_edge
  %fr_state33 = getelementptr i8, ptr %.pn118.in141, i32 32
  %61 = ptrtoint ptr %fr_state33 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %fr_state33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %62)
  %cmp34 = icmp eq i32 %62, 1
  br i1 %cmp34, label %if.then32.for.inc87_crit_edge, label %if.end36

if.then32.for.inc87_crit_edge:                    ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc87

if.end36:                                         ; preds = %if.then32
  %pool = getelementptr i8, ptr %.pn118.in141, i32 -12
  %63 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %pool, align 8
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp37 = icmp eq i32 %66, 0
  %67 = call i32 @llvm.read_register.i32(metadata !37) #9
  %and.i.i.i = and i32 %67, -16384
  %68 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %70, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #9
  %71 = call i32 @llvm.read_register.i32(metadata !37) #9
  %and.i = and i32 %71, -16384
  %72 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %72, i32 0, i32 3
  %73 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %74
  %75 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx, align 4
  %add50 = add i32 %76, ptrtoint (ptr @rds_ib_stats to i32)
  %77 = inttoptr i32 %add50 to ptr
  br i1 %cmp37, label %do.body40, label %do.body57

do.body40:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  %s_ib_rdma_mr_8k_free = getelementptr inbounds %struct.rds_ib_statistics, ptr %77, i32 0, i32 24
  %78 = ptrtoint ptr %s_ib_rdma_mr_8k_free to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %s_ib_rdma_mr_8k_free, align 8
  %inc = add i64 %79, 1
  store i64 %inc, ptr %s_ib_rdma_mr_8k_free, align 8
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !63
  br label %if.end78

do.body57:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  %s_ib_rdma_mr_1m_free = getelementptr inbounds %struct.rds_ib_statistics, ptr %77, i32 0, i32 30
  %80 = ptrtoint ptr %s_ib_rdma_mr_1m_free to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %s_ib_rdma_mr_1m_free, align 8
  %inc72 = add i64 %81, 1
  store i64 %inc72, ptr %s_ib_rdma_mr_1m_free, align 8
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !64
  br label %if.end78

if.end78:                                         ; preds = %do.body57, %do.body40
  %82 = call i32 @llvm.read_register.i32(metadata !37) #9
  %and.i.i.i125 = and i32 %82, -16384
  %83 = inttoptr i32 %and.i.i.i125 to ptr
  %preempt_count.i.i126 = getelementptr inbounds %struct.thread_info, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %preempt_count.i.i126 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %preempt_count.i.i126, align 4
  %sub.i127 = add i32 %85, -1
  store volatile i32 %sub.i127, ptr %preempt_count.i.i126, align 4
  %call.i.i129 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn118.in141) #9
  br i1 %call.i.i129, label %if.end.i.i, label %if.end78.list_del.exit_crit_edge

if.end78.list_del.exit_crit_edge:                 ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn118.in141, i32 0, i32 1
  %86 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %prev.i.i, align 4
  %88 = ptrtoint ptr %.pn118.in141 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %.pn118.in141, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %87, ptr %prev1.i.i.i, align 4
  %91 = ptrtoint ptr %87 to i32
  call void @__asan_store4_noabort(i32 %91)
  store volatile ptr %89, ptr %87, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end78.list_del.exit_crit_edge
  %92 = ptrtoint ptr %.pn118.in141 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn118.in141, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn118.in141, i32 0, i32 1
  %93 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %94 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %u, align 8
  %tobool80.not = icmp eq ptr %95, null
  br i1 %tobool80.not, label %list_del.exit.if.end84_crit_edge, label %if.then81

list_del.exit.if.end84_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end84

if.then81:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = call i32 @ib_dereg_mr_user(ptr noundef nonnull %95, ptr noundef null) #9
  br label %if.end84

if.end84:                                         ; preds = %if.then81, %list_del.exit.if.end84_crit_edge
  call void @kfree(ptr noundef %ibmr.1143) #9
  %inc85 = add i32 %freed.0139, 1
  br label %for.inc87

for.inc87:                                        ; preds = %if.end84, %if.then32.for.inc87_crit_edge, %lor.lhs.false.for.inc87_crit_edge
  %freed.1 = phi i32 [ %freed.0139, %if.then32.for.inc87_crit_edge ], [ %inc85, %if.end84 ], [ %freed.0139, %lor.lhs.false.for.inc87_crit_edge ]
  %cmp27.not = icmp eq ptr %.pn118144, %list
  br i1 %cmp27.not, label %for.inc87.for.end93_crit_edge, label %for.inc87.for.body29_crit_edge

for.inc87.for.body29_crit_edge:                   ; preds = %for.inc87
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body29

for.inc87.for.end93_crit_edge:                    ; preds = %for.inc87
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end93

for.end93:                                        ; preds = %for.inc87.for.end93_crit_edge, %if.end15.for.end93_crit_edge
  %freed.0.lcssa = phi i32 [ %1, %if.end15.for.end93_crit_edge ], [ %freed.1, %for.inc87.for.end93_crit_edge ]
  %96 = ptrtoint ptr %nfreed to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %freed.0.lcssa, ptr %nfreed, align 4
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rds_ib_teardown_mr(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rds_ib_reg_frmr(ptr noundef %rds_ibdev, ptr noundef %ic, ptr noundef %sg, i32 noundef %nents, ptr nocapture noundef writeonly %key) local_unnamed_addr #0 align 64 {
entry:
  %dummy.i.i.i = alloca ptr, align 4
  %reg_wr.i.i = alloca %struct.ib_reg_wr, align 8
  %off.i.i = alloca i32, align 4
  %__wq_entry.i.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ic, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body.preheader:                                ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %nents)
  %cmp.i = icmp slt i32 %nents, 3
  %mr_8k_pool.i = getelementptr inbounds %struct.rds_ib_device, ptr %rds_ibdev, i32 0, i32 8
  %mr_1m_pool.i = getelementptr inbounds %struct.rds_ib_device, ptr %rds_ibdev, i32 0, i32 7
  %pool.0.in.i = select i1 %cmp.i, ptr %mr_8k_pool.i, ptr %mr_1m_pool.i
  %pd.i = getelementptr inbounds %struct.rds_ib_device, ptr %rds_ibdev, i32 0, i32 4
  br label %do.body

do.body:                                          ; preds = %if.end7.do.body_crit_edge, %do.body.preheader
  %ibmr.0 = phi ptr [ %retval.0.i, %if.end7.do.body_crit_edge ], [ null, %do.body.preheader ]
  %tobool1.not = icmp eq ptr %ibmr.0, null
  br i1 %tobool1.not, label %do.body.if.end3_crit_edge, label %if.then2

do.body.if.end3_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

if.then2:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @rds_ib_free_frmr(ptr noundef nonnull %ibmr.0, i1 noundef zeroext true)
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %do.body.if.end3_crit_edge
  %0 = ptrtoint ptr %pool.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %pool.0.i = load ptr, ptr %pool.0.in.i, align 4
  %call.i = tail call ptr @rds_ib_try_reuse_ibmr(ptr noundef %pool.0.i) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end2.i, label %if.end3.rds_ib_alloc_frmr.exit_crit_edge

if.end3.rds_ib_alloc_frmr.exit_crit_edge:         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %rds_ib_alloc_frmr.exit

if.end2.i:                                        ; preds = %if.end3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 312) #14
  %tobool5.not.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool5.not.i, label %if.end2.i.out_no_cigar.i_crit_edge, label %if.end7.i

if.end2.i.out_no_cigar.i_crit_edge:               ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_no_cigar.i

if.end7.i:                                        ; preds = %if.end2.i
  %u.i = getelementptr inbounds %struct.rds_ib_mr, ptr %call.i.i.i.i, i32 0, i32 11
  %2 = ptrtoint ptr %pd.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pd.i, align 4
  %max_pages.i = getelementptr inbounds %struct.rds_ib_mr_pool, ptr %pool.0.i, i32 0, i32 14
  %4 = ptrtoint ptr %max_pages.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_pages.i, align 4
  %call8.i = tail call ptr @ib_alloc_mr(ptr noundef %3, i32 noundef 0, i32 noundef %5) #9
  %6 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call8.i, ptr %u.i, align 8
  %cmp.i.i = icmp ugt ptr %call8.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end.i, label %if.end15.i

do.end.i:                                         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  %call12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #13
  %7 = ptrtoint ptr %u.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %u.i, align 8
  br label %out_no_cigar.i

if.end15.i:                                       ; preds = %if.end7.i
  %pool16.i = getelementptr inbounds %struct.rds_ib_mr, ptr %call.i.i.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %pool16.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %pool.0.i, ptr %pool16.i, align 8
  %10 = ptrtoint ptr %pool.0.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pool.0.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp17.i = icmp eq i32 %11, 0
  %12 = tail call i32 @llvm.read_register.i32(metadata !37) #9
  %and.i.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %15, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9
  %16 = tail call i32 @llvm.read_register.i32(metadata !37) #9
  %and.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %19
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %21, ptrtoint (ptr @rds_ib_stats to i32)
  %22 = inttoptr i32 %add.i to ptr
  br i1 %cmp17.i, label %do.body20.i, label %do.body37.i

do.body20.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  %s_ib_rdma_mr_8k_alloc.i = getelementptr inbounds %struct.rds_ib_statistics, ptr %22, i32 0, i32 23
  %23 = ptrtoint ptr %s_ib_rdma_mr_8k_alloc.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %s_ib_rdma_mr_8k_alloc.i, align 8
  %inc.i = add i64 %24, 1
  store i64 %inc.i, ptr %s_ib_rdma_mr_8k_alloc.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !65
  br label %if.end58.i

do.body37.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  %s_ib_rdma_mr_1m_alloc.i = getelementptr inbounds %struct.rds_ib_statistics, ptr %22, i32 0, i32 29
  %25 = ptrtoint ptr %s_ib_rdma_mr_1m_alloc.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %s_ib_rdma_mr_1m_alloc.i, align 8
  %inc52.i = add i64 %26, 1
  store i64 %inc52.i, ptr %s_ib_rdma_mr_1m_alloc.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !66
  br label %if.end58.i

if.end58.i:                                       ; preds = %do.body37.i, %do.body20.i
  %27 = tail call i32 @llvm.read_register.i32(metadata !37) #9
  %and.i.i.i102.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i102.i to ptr
  %preempt_count.i.i103.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %preempt_count.i.i103.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %preempt_count.i.i103.i, align 4
  %sub.i104.i = add i32 %30, -1
  store volatile i32 %sub.i104.i, ptr %preempt_count.i.i103.i, align 4
  %item_count.i = getelementptr inbounds %struct.rds_ib_mr_pool, ptr %pool.0.i, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %item_count.i, i32 noundef 4) #9
  %31 = ptrtoint ptr %item_count.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %item_count.i, align 4
  %max_items_soft.i = getelementptr inbounds %struct.rds_ib_mr_pool, ptr %pool.0.i, i32 0, i32 12
  %33 = ptrtoint ptr %max_items_soft.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %max_items_soft.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %34)
  %cmp60.i = icmp ugt i32 %32, %34
  br i1 %cmp60.i, label %if.then61.i, label %if.end58.i.if.end63.i_crit_edge

if.end58.i.if.end63.i_crit_edge:                  ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end63.i

if.then61.i:                                      ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #11
  %max_items.i = getelementptr inbounds %struct.rds_ib_mr_pool, ptr %pool.0.i, i32 0, i32 11
  %35 = ptrtoint ptr %max_items.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %max_items.i, align 4
  %37 = ptrtoint ptr %max_items_soft.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %max_items_soft.i, align 4
  br label %if.end63.i

if.end63.i:                                       ; preds = %if.then61.i, %if.end58.i.if.end63.i_crit_edge
  %fr_state.i = getelementptr inbounds %struct.rds_ib_mr, ptr %call.i.i.i.i, i32 0, i32 11, i32 0, i32 1
  %38 = ptrtoint ptr %fr_state.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %fr_state.i, align 4
  %fr_inv_done.i = getelementptr inbounds %struct.rds_ib_mr, ptr %call.i.i.i.i, i32 0, i32 11, i32 0, i32 3
  tail call void @__init_waitqueue_head(ptr noundef %fr_inv_done.i, ptr noundef nonnull @.str.9, ptr noundef nonnull @rds_ib_alloc_frmr.__key) #9
  %fr_reg_done.i = getelementptr inbounds %struct.rds_ib_mr, ptr %call.i.i.i.i, i32 0, i32 11, i32 0, i32 5
  tail call void @__init_waitqueue_head(ptr noundef %fr_reg_done.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @rds_ib_alloc_frmr.__key.10) #9
  br label %rds_ib_alloc_frmr.exit

out_no_cigar.i:                                   ; preds = %do.end.i, %if.end2.i.out_no_cigar.i_crit_edge
  %err.0.i = phi ptr [ %8, %do.end.i ], [ inttoptr (i32 -12 to ptr), %if.end2.i.out_no_cigar.i_crit_edge ]
  tail call void @kfree(ptr noundef %call.i.i.i.i) #9
  %item_count70.i = getelementptr inbounds %struct.rds_ib_mr_pool, ptr %pool.0.i, i32 0, i32 3
  %call.i.i105.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %item_count70.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %item_count70.i, i32 1, i32 3, i32 1) #9
  %39 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %item_count70.i, ptr %item_count70.i, i32 1, ptr elementtype(i32) %item_count70.i) #9, !srcloc !51
  br label %rds_ib_alloc_frmr.exit

rds_ib_alloc_frmr.exit:                           ; preds = %out_no_cigar.i, %if.end63.i, %if.end3.rds_ib_alloc_frmr.exit_crit_edge
  %retval.0.i = phi ptr [ %err.0.i, %out_no_cigar.i ], [ %call.i.i.i.i, %if.end63.i ], [ %call.i, %if.end3.rds_ib_alloc_frmr.exit_crit_edge ]
  %cmp.i32 = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i32, label %rds_ib_alloc_frmr.exit.cleanup_crit_edge, label %if.end7

rds_ib_alloc_frmr.exit.cleanup_crit_edge:         ; preds = %rds_ib_alloc_frmr.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %rds_ib_alloc_frmr.exit
  %fr_state = getelementptr inbounds %struct.rds_ib_mr, ptr %retval.0.i, i32 0, i32 11, i32 0, i32 1
  %40 = ptrtoint ptr %fr_state to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %fr_state, align 4
  %cmp.not = icmp eq i32 %41, 0
  br i1 %cmp.not, label %do.end, label %if.end7.do.body_crit_edge

if.end7.do.body_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.end:                                           ; preds = %if.end7
  %fr_state.le = getelementptr inbounds %struct.rds_ib_mr, ptr %retval.0.i, i32 0, i32 11, i32 0, i32 1
  %u.le = getelementptr inbounds %struct.rds_ib_mr, ptr %retval.0.i, i32 0, i32 11
  %ic8 = getelementptr inbounds %struct.rds_ib_mr, ptr %retval.0.i, i32 0, i32 3
  %42 = ptrtoint ptr %ic8 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %ic, ptr %ic8, align 4
  %device = getelementptr inbounds %struct.rds_ib_mr, ptr %retval.0.i, i32 0, i32 1
  %43 = ptrtoint ptr %device to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %rds_ibdev, ptr %device, align 4
  %dev1.i = getelementptr inbounds %struct.rds_ib_device, ptr %rds_ibdev, i32 0, i32 3
  %44 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev1.i, align 4
  tail call void @rds_ib_teardown_mr(ptr noundef %retval.0.i) #9
  %sg2.i = getelementptr inbounds %struct.rds_ib_mr, ptr %retval.0.i, i32 0, i32 7
  %46 = ptrtoint ptr %sg2.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %sg, ptr %sg2.i, align 8
  %sg_len3.i = getelementptr inbounds %struct.rds_ib_mr, ptr %retval.0.i, i32 0, i32 8
  %47 = ptrtoint ptr %sg_len3.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %nents, ptr %sg_len3.i, align 4
  %sg_dma_len.i = getelementptr inbounds %struct.rds_ib_mr, ptr %retval.0.i, i32 0, i32 9
  %48 = ptrtoint ptr %sg_dma_len.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %sg_dma_len.i, align 8
  %sg_byte_len.i = getelementptr inbounds %struct.rds_ib_mr, ptr %retval.0.i, i32 0, i32 11, i32 0, i32 8
  %49 = ptrtoint ptr %sg_byte_len.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %sg_byte_len.i, align 4
  %50 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %45, align 8
  %call2.i.i.i = tail call i32 @dma_map_sg_attrs(ptr noundef %51, ptr noundef %sg, i32 noundef %nents, i32 noundef 0, i32 noundef 0) #9
  %52 = ptrtoint ptr %sg_dma_len.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %call2.i.i.i, ptr %sg_dma_len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool28.not.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool28.not.i, label %do.end40.i, label %if.end43.i, !prof !67

do.end40.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %call42.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) #13
  br label %if.else

if.end43.i:                                       ; preds = %do.end
  %53 = ptrtoint ptr %sg_byte_len.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %sg_byte_len.i, align 4
  %dma_npages.i = getelementptr inbounds %struct.rds_ib_mr, ptr %retval.0.i, i32 0, i32 11, i32 0, i32 7
  %54 = ptrtoint ptr %dma_npages.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %dma_npages.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %cmp15.i = icmp sgt i32 %call2.i.i.i, 0
  br i1 %cmp15.i, label %for.body.lr.ph.i, label %if.end43.i.for.end.i_crit_edge

if.end43.i.for.end.i_crit_edge:                   ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end43.i
  %55 = ptrtoint ptr %sg2.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %sg2.i, align 8
  %sub.i = add nsw i32 %call2.i.i.i, -1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.017.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc74.i, %for.inc.i.for.body.i_crit_edge ]
  %len.016.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add72.i, %for.inc.i.for.body.i_crit_edge ]
  %dma_length.i = getelementptr %struct.scatterlist, ptr %56, i32 %i.017.i, i32 4
  %57 = ptrtoint ptr %dma_length.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %dma_length.i, align 4
  %dma_address.i = getelementptr %struct.scatterlist, ptr %56, i32 %i.017.i, i32 3
  %59 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %dma_address.i, align 4
  %conv.i = zext i32 %60 to i64
  %61 = ptrtoint ptr %sg_byte_len.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %sg_byte_len.i, align 4
  %add.i33 = add i32 %62, %58
  store i32 %add.i33, ptr %sg_byte_len.i, align 4
  %and.i = and i64 %conv.i, 4095
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool50.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool50.not.i, label %for.body.i.if.end57.i_crit_edge, label %if.then51.i

for.body.i.if.end57.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57.i

if.then51.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.017.i)
  %cmp52.not.i = icmp eq i32 %i.017.i, 0
  br i1 %cmp52.not.i, label %if.else.i, label %if.then51.i.out_unmap.i_crit_edge

if.then51.i.out_unmap.i_crit_edge:                ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unmap.i

if.else.i:                                        ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_pc() #11
  %63 = ptrtoint ptr %dma_npages.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %dma_npages.i, align 8
  %inc.i34 = add i32 %64, 1
  store i32 %inc.i34, ptr %dma_npages.i, align 8
  br label %if.end57.i

if.end57.i:                                       ; preds = %if.else.i, %for.body.i.if.end57.i_crit_edge
  %conv58.i = zext i32 %58 to i64
  %add59.i = add nuw nsw i64 %conv.i, %conv58.i
  %and60.i = and i64 %add59.i, 4095
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and60.i)
  %tobool61.not.i = icmp eq i64 %and60.i, 0
  br i1 %tobool61.not.i, label %if.end57.i.for.inc.i_crit_edge, label %if.then62.i

if.end57.i.for.inc.i_crit_edge:                   ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then62.i:                                      ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_cmp4(i32 %i.017.i, i32 %sub.i)
  %cmp64.i = icmp slt i32 %i.017.i, %sub.i
  br i1 %cmp64.i, label %if.then62.i.out_unmap.i_crit_edge, label %if.else67.i

if.then62.i.out_unmap.i_crit_edge:                ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unmap.i

if.else67.i:                                      ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #11
  %65 = ptrtoint ptr %dma_npages.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %dma_npages.i, align 8
  %inc69.i = add i32 %66, 1
  store i32 %inc69.i, ptr %dma_npages.i, align 8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else67.i, %if.end57.i.for.inc.i_crit_edge
  %add72.i = add i32 %58, %len.016.i
  %inc74.i = add nuw nsw i32 %i.017.i, 1
  %exitcond.not.i = icmp eq i32 %inc74.i, %call2.i.i.i
  br i1 %exitcond.not.i, label %for.end.loopexit.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.loopexit.i:                               ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  %phi.bo.i = lshr i32 %add72.i, 12
  br label %for.end.i

for.end.i:                                        ; preds = %for.end.loopexit.i, %if.end43.i.for.end.i_crit_edge
  %len.0.lcssa.i = phi i32 [ 0, %if.end43.i.for.end.i_crit_edge ], [ %phi.bo.i, %for.end.loopexit.i ]
  %67 = ptrtoint ptr %dma_npages.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %dma_npages.i, align 8
  %add76.i = add i32 %68, %len.0.lcssa.i
  store i32 %add76.i, ptr %dma_npages.i, align 8
  %pool78.i = getelementptr inbounds %struct.rds_ib_mr, ptr %retval.0.i, i32 0, i32 2
  %69 = ptrtoint ptr %pool78.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pool78.i, align 8
  %max_pages.i35 = getelementptr inbounds %struct.rds_ib_mr_pool, ptr %70, i32 0, i32 14
  %71 = ptrtoint ptr %max_pages.i35 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %max_pages.i35, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add76.i, i32 %72)
  %cmp79.i = icmp ugt i32 %add76.i, %72
  br i1 %cmp79.i, label %for.end.i.out_unmap.i_crit_edge, label %if.end82.i

for.end.i.out_unmap.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unmap.i

if.end82.i:                                       ; preds = %for.end.i
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %reg_wr.i.i) #9
  %73 = call ptr @memset(ptr %reg_wr.i.i, i32 255, i32 56)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %off.i.i) #9
  %74 = ptrtoint ptr %off.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %off.i.i, align 4
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i, %if.end82.i
  %75 = ptrtoint ptr %ic8 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ic8, align 4
  %i_fastreg_wrs.i.i = getelementptr inbounds %struct.rds_ib_connection, ptr %76, i32 0, i32 9
  %call.i.i.i.i36 = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_fastreg_wrs.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !56
  tail call void @llvm.prefetch.p0(ptr %i_fastreg_wrs.i.i, i32 1, i32 3, i32 1) #9
  %77 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %i_fastreg_wrs.i.i, ptr %i_fastreg_wrs.i.i, i32 1, ptr elementtype(i32) %i_fastreg_wrs.i.i) #9, !srcloc !57
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %77, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !58
  %cmp.i.i37 = icmp slt i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i37, label %while.body.i.i, label %while.end.i.i

while.body.i.i:                                   ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %78 = ptrtoint ptr %ic8 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ic8, align 4
  %i_fastreg_wrs2.i.i = getelementptr inbounds %struct.rds_ib_connection, ptr %79, i32 0, i32 9
  %call.i.i118.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_fastreg_wrs2.i.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %i_fastreg_wrs2.i.i, i32 1, i32 3, i32 1) #9
  %80 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %i_fastreg_wrs2.i.i, ptr %i_fastreg_wrs2.i.i, i32 1, ptr elementtype(i32) %i_fastreg_wrs2.i.i) #9, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !68
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !69
  br label %while.cond.i.i

while.end.i.i:                                    ; preds = %while.cond.i.i
  %81 = ptrtoint ptr %u.le to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %u.le, align 8
  %83 = ptrtoint ptr %sg2.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %sg2.i, align 8
  %85 = ptrtoint ptr %sg_dma_len.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %sg_dma_len.i, align 8
  %call.i121.i.i = call i32 @ib_map_mr_sg(ptr noundef %82, ptr noundef %84, i32 noundef %86, ptr noundef nonnull %off.i.i, i32 noundef 4096) #9
  %iova.i.i.i = getelementptr inbounds %struct.ib_mr, ptr %82, i32 0, i32 4
  %87 = ptrtoint ptr %iova.i.i.i to i32
  call void @__asan_store8_noabort(i32 %87)
  store i64 0, ptr %iova.i.i.i, align 8
  %88 = ptrtoint ptr %sg_dma_len.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %sg_dma_len.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i121.i.i, i32 %89)
  %cmp11.not.i.i = icmp eq i32 %call.i121.i.i, %89
  br i1 %cmp11.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !52

if.then.i.i:                                      ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i121.i.i)
  %cmp13.i.i = icmp slt i32 %call.i121.i.i, 0
  %spec.select.i = select i1 %cmp13.i.i, i32 %call.i121.i.i, i32 -22
  br label %rds_ib_post_reg_frmr.exit.thread.i

if.end.i.i:                                       ; preds = %while.end.i.i
  %call.i.i.i38 = call zeroext i1 @__kasan_check_write(ptr noundef %fr_state.le, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !70
  call void @llvm.prefetch.p0(ptr %fr_state.le, i32 1, i32 3, i32 1) #9
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %if.end.i.i
  %90 = call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %fr_state.le, i32 0, i32 1) #9, !srcloc !48
  %asmresult.i.i.i = extractvalue { i32, i32 } %90, 0
  %tobool.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %__cmpxchg.exit.i.i, label %do.body.i.i.i.do.body.i.i.i_crit_edge

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i.i

__cmpxchg.exit.i.i:                               ; preds = %do.body.i.i.i
  %asmresult1.i.i.i = extractvalue { i32, i32 } %90, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !71
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult1.i.i.i)
  %cmp32.not.i.i = icmp eq i32 %asmresult1.i.i.i, 0
  br i1 %cmp32.not.i.i, label %if.end34.i.i, label %__cmpxchg.exit.i.i.rds_ib_post_reg_frmr.exit.thread.i_crit_edge

__cmpxchg.exit.i.i.rds_ib_post_reg_frmr.exit.thread.i_crit_edge: ; preds = %__cmpxchg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rds_ib_post_reg_frmr.exit.thread.i

if.end34.i.i:                                     ; preds = %__cmpxchg.exit.i.i
  %91 = ptrtoint ptr %ic8 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %ic8, align 4
  %i_fastreg_inuse_count.i.i = getelementptr inbounds %struct.rds_ib_connection, ptr %92, i32 0, i32 10
  %call.i.i119.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %i_fastreg_inuse_count.i.i, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %i_fastreg_inuse_count.i.i, i32 1, i32 3, i32 1) #9
  %93 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %i_fastreg_inuse_count.i.i, ptr %i_fastreg_inuse_count.i.i, i32 1, ptr elementtype(i32) %i_fastreg_inuse_count.i.i) #9, !srcloc !55
  %94 = ptrtoint ptr %u.le to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %u.le, align 8
  %remap_count.i.i = getelementptr inbounds %struct.rds_ib_mr, ptr %retval.0.i, i32 0, i32 6
  %96 = ptrtoint ptr %remap_count.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %remap_count.i.i, align 4
  %inc.i.i = add i32 %97, 1
  store i32 %inc.i.i, ptr %remap_count.i.i, align 4
  %lkey.i.i.i = getelementptr inbounds %struct.ib_mr, ptr %95, i32 0, i32 2
  %98 = ptrtoint ptr %lkey.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %lkey.i.i.i, align 8
  %and.i.i.i = and i32 %99, -256
  %conv.i.i.i = and i32 %97, 255
  %or.i.i.i = or i32 %and.i.i.i, %conv.i.i.i
  store i32 %or.i.i.i, ptr %lkey.i.i.i, align 8
  %rkey.i.i.i = getelementptr inbounds %struct.ib_mr, ptr %95, i32 0, i32 3
  %100 = ptrtoint ptr %rkey.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %rkey.i.i.i, align 4
  %and2.i.i.i = and i32 %101, -256
  %or4.i.i.i = or i32 %and2.i.i.i, %conv.i.i.i
  store i32 %or4.i.i.i, ptr %rkey.i.i.i, align 4
  %fr_reg.i.i = getelementptr inbounds %struct.rds_ib_mr, ptr %retval.0.i, i32 0, i32 11, i32 0, i32 4
  %102 = ptrtoint ptr %fr_reg.i.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 1, ptr %fr_reg.i.i, align 8
  %103 = call ptr @memset(ptr %reg_wr.i.i, i32 0, i32 56)
  %104 = ptrtoint ptr %retval.0.i to i32
  %conv37.i.i = zext i32 %104 to i64
  %105 = getelementptr inbounds %struct.ib_send_wr, ptr %reg_wr.i.i, i32 0, i32 1
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_store8_noabort(i32 %106)
  store i64 %conv37.i.i, ptr %105, align 8
  %opcode.i.i = getelementptr inbounds %struct.ib_send_wr, ptr %reg_wr.i.i, i32 0, i32 4
  %107 = ptrtoint ptr %opcode.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 32, ptr %opcode.i.i, align 8
  %108 = load ptr, ptr %u.le, align 8
  %mr41.i.i = getelementptr inbounds %struct.ib_reg_wr, ptr %reg_wr.i.i, i32 0, i32 1
  %109 = ptrtoint ptr %mr41.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %108, ptr %mr41.i.i, align 8
  %rkey.i.i = getelementptr inbounds %struct.ib_mr, ptr %108, i32 0, i32 3
  %110 = ptrtoint ptr %rkey.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %rkey.i.i, align 4
  %key.i.i = getelementptr inbounds %struct.ib_reg_wr, ptr %reg_wr.i.i, i32 0, i32 2
  %112 = ptrtoint ptr %key.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %key.i.i, align 4
  %access.i.i = getelementptr inbounds %struct.ib_reg_wr, ptr %reg_wr.i.i, i32 0, i32 3
  %113 = ptrtoint ptr %access.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 7, ptr %access.i.i, align 8
  %send_flags.i.i = getelementptr inbounds %struct.ib_send_wr, ptr %reg_wr.i.i, i32 0, i32 5
  %114 = ptrtoint ptr %send_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 2, ptr %send_flags.i.i, align 4
  %115 = ptrtoint ptr %ic8 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %ic8, align 4
  %i_cm_id.i.i = getelementptr inbounds %struct.rds_ib_connection, ptr %116, i32 0, i32 3
  %117 = ptrtoint ptr %i_cm_id.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %i_cm_id.i.i, align 8
  %qp.i.i = getelementptr inbounds %struct.rdma_cm_id, ptr %118, i32 0, i32 2
  %119 = ptrtoint ptr %qp.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %qp.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i.i.i) #9
  %121 = ptrtoint ptr %dummy.i.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr inttoptr (i32 -1 to ptr), ptr %dummy.i.i.i, align 4, !annotation !61
  %122 = ptrtoint ptr %120 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %120, align 4
  %post_send.i.i.i = getelementptr inbounds %struct.ib_device, ptr %123, i32 0, i32 1, i32 6
  %124 = ptrtoint ptr %post_send.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %post_send.i.i.i, align 4
  %call.i122.i.i = call i32 %125(ptr noundef %120, ptr noundef nonnull %reg_wr.i.i, ptr noundef nonnull %dummy.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i122.i.i)
  %tobool47.not.i.i = icmp eq i32 %call.i122.i.i, 0
  br i1 %tobool47.not.i.i, label %do.body68.i.i, label %if.then54.i.i, !prof !52

if.then54.i.i:                                    ; preds = %if.end34.i.i
  call fastcc void @rds_transition_frwr_state(ptr noundef %retval.0.i, i32 noundef 2) #9
  %126 = ptrtoint ptr %ic8 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %ic8, align 4
  %i_fastreg_wrs56.i.i = getelementptr inbounds %struct.rds_ib_connection, ptr %127, i32 0, i32 9
  %call.i.i120.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %i_fastreg_wrs56.i.i, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %i_fastreg_wrs56.i.i, i32 1, i32 3, i32 1) #9
  %128 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %i_fastreg_wrs56.i.i, ptr %i_fastreg_wrs56.i.i, i32 1, ptr elementtype(i32) %i_fastreg_wrs56.i.i) #9, !srcloc !55
  %call57.i.i = call i32 @__printk_ratelimit(ptr noundef nonnull @__func__.rds_ib_post_reg_frmr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.i.i)
  %tobool58.not.i.i = icmp eq i32 %call57.i.i, 0
  br i1 %tobool58.not.i.i, label %if.then54.i.i.rds_ib_post_reg_frmr.exit.thread.i_crit_edge, label %do.end62.i.i

if.then54.i.i.rds_ib_post_reg_frmr.exit.thread.i_crit_edge: ; preds = %if.then54.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rds_ib_post_reg_frmr.exit.thread.i

do.end62.i.i:                                     ; preds = %if.then54.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call64.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.rds_ib_post_reg_frmr, i32 noundef %call.i122.i.i) #13
  br label %rds_ib_post_reg_frmr.exit.thread.i

do.body68.i.i:                                    ; preds = %if.end34.i.i
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 180) #9
  %129 = ptrtoint ptr %fr_reg.i.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %fr_reg.i.i, align 8, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %130)
  %tobool75.not.i.i = icmp eq i8 %130, 0
  br i1 %tobool75.not.i.i, label %do.body68.i.i.if.end86.i_crit_edge, label %if.end77.i.i

do.body68.i.i.if.end86.i_crit_edge:               ; preds = %do.body68.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end86.i

if.end77.i.i:                                     ; preds = %do.body68.i.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i.i) #9
  %131 = call ptr @memset(ptr %__wq_entry.i.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i.i, i32 noundef 0) #9
  %fr_reg_done.i.i = getelementptr inbounds %struct.rds_ib_mr, ptr %retval.0.i, i32 0, i32 11, i32 0, i32 5
  %call79125.i.i = call i32 @prepare_to_wait_event(ptr noundef %fr_reg_done.i.i, ptr noundef nonnull %__wq_entry.i.i, i32 noundef 2) #9
  %132 = ptrtoint ptr %fr_reg.i.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %fr_reg.i.i, align 8, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %133)
  %tobool81.not126.i.i = icmp eq i8 %133, 0
  br i1 %tobool81.not126.i.i, label %if.end77.i.i.for.end.i.i_crit_edge, label %if.end77.i.i.cleanup.i.i_crit_edge

if.end77.i.i.cleanup.i.i_crit_edge:               ; preds = %if.end77.i.i
  br label %cleanup.i.i

if.end77.i.i.for.end.i.i_crit_edge:               ; preds = %if.end77.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

cleanup.i.i:                                      ; preds = %cleanup.i.i.cleanup.i.i_crit_edge, %if.end77.i.i.cleanup.i.i_crit_edge
  call void @schedule() #9
  %call79.i.i = call i32 @prepare_to_wait_event(ptr noundef %fr_reg_done.i.i, ptr noundef nonnull %__wq_entry.i.i, i32 noundef 2) #9
  %134 = ptrtoint ptr %fr_reg.i.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %fr_reg.i.i, align 8, !range !53
  %tobool81.not.i.i = icmp eq i8 %135, 0
  br i1 %tobool81.not.i.i, label %cleanup.i.i.for.end.i.i_crit_edge, label %cleanup.i.i.cleanup.i.i_crit_edge

cleanup.i.i.cleanup.i.i_crit_edge:                ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i.i

cleanup.i.i.for.end.i.i_crit_edge:                ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %cleanup.i.i.for.end.i.i_crit_edge, %if.end77.i.i.for.end.i.i_crit_edge
  call void @finish_wait(ptr noundef %fr_reg_done.i.i, ptr noundef nonnull %__wq_entry.i.i) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i.i) #9
  br label %if.end86.i

rds_ib_post_reg_frmr.exit.thread.i:               ; preds = %do.end62.i.i, %if.then54.i.i.rds_ib_post_reg_frmr.exit.thread.i_crit_edge, %__cmpxchg.exit.i.i.rds_ib_post_reg_frmr.exit.thread.i_crit_edge, %if.then.i.i
  %retval.0.i.ph.i = phi i32 [ %call.i122.i.i, %do.end62.i.i ], [ %call.i122.i.i, %if.then54.i.i.rds_ib_post_reg_frmr.exit.thread.i_crit_edge ], [ -16, %__cmpxchg.exit.i.i.rds_ib_post_reg_frmr.exit.thread.i_crit_edge ], [ %spec.select.i, %if.then.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %off.i.i) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %reg_wr.i.i) #9
  br label %out_unmap.i

if.end86.i:                                       ; preds = %for.end.i.i, %do.body68.i.i.if.end86.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %off.i.i) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %reg_wr.i.i) #9
  %136 = ptrtoint ptr %pool78.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %pool78.i, align 8
  %138 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %137, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %cmp88.i = icmp eq i32 %139, 0
  %140 = call i32 @llvm.read_register.i32(metadata !37) #9
  %and.i.i.i.i39 = and i32 %140, -16384
  %141 = inttoptr i32 %and.i.i.i.i39 to ptr
  %preempt_count.i.i.i40 = getelementptr inbounds %struct.thread_info, ptr %141, i32 0, i32 1
  %142 = ptrtoint ptr %preempt_count.i.i.i40 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load volatile i32, ptr %preempt_count.i.i.i40, align 4
  %add.i.i41 = add i32 %143, 1
  store volatile i32 %add.i.i41, ptr %preempt_count.i.i.i40, align 4
  call void asm sideeffect "", "~{memory}"() #9
  %144 = call i32 @llvm.read_register.i32(metadata !37) #9
  %and.i.i42 = and i32 %144, -16384
  %145 = inttoptr i32 %and.i.i42 to ptr
  %cpu.i43 = getelementptr inbounds %struct.thread_info, ptr %145, i32 0, i32 3
  %146 = ptrtoint ptr %cpu.i43 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %cpu.i43, align 4
  %arrayidx102.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %147
  %148 = ptrtoint ptr %arrayidx102.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %arrayidx102.i, align 4
  %add103.i = add i32 %149, ptrtoint (ptr @rds_ib_stats to i32)
  %150 = inttoptr i32 %add103.i to ptr
  br i1 %cmp88.i, label %do.body92.i, label %do.body112.i

do.body92.i:                                      ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #11
  %s_ib_rdma_mr_8k_used.i = getelementptr inbounds %struct.rds_ib_statistics, ptr %150, i32 0, i32 25
  %151 = ptrtoint ptr %s_ib_rdma_mr_8k_used.i to i32
  call void @__asan_load8_noabort(i32 %151)
  %152 = load i64, ptr %s_ib_rdma_mr_8k_used.i, align 8
  %inc104.i = add i64 %152, 1
  store i64 %inc104.i, ptr %s_ib_rdma_mr_8k_used.i, align 8
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !72
  br label %if.then11

do.body112.i:                                     ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #11
  %s_ib_rdma_mr_1m_used.i = getelementptr inbounds %struct.rds_ib_statistics, ptr %150, i32 0, i32 31
  %153 = ptrtoint ptr %s_ib_rdma_mr_1m_used.i to i32
  call void @__asan_load8_noabort(i32 %153)
  %154 = load i64, ptr %s_ib_rdma_mr_1m_used.i, align 8
  %inc127.i = add i64 %154, 1
  store i64 %inc127.i, ptr %s_ib_rdma_mr_1m_used.i, align 8
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !73
  br label %if.then11

out_unmap.i:                                      ; preds = %rds_ib_post_reg_frmr.exit.thread.i, %for.end.i.out_unmap.i_crit_edge, %if.then62.i.out_unmap.i_crit_edge, %if.then51.i.out_unmap.i_crit_edge
  %ret.0.i = phi i32 [ -90, %for.end.i.out_unmap.i_crit_edge ], [ %retval.0.i.ph.i, %rds_ib_post_reg_frmr.exit.thread.i ], [ -22, %if.then51.i.out_unmap.i_crit_edge ], [ -22, %if.then62.i.out_unmap.i_crit_edge ]
  %155 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %dev1.i, align 4
  %157 = ptrtoint ptr %sg2.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %sg2.i, align 8
  %159 = ptrtoint ptr %sg_len3.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %sg_len3.i, align 4
  %161 = ptrtoint ptr %156 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %156, align 8
  call void @dma_unmap_sg_attrs(ptr noundef %162, ptr noundef %158, i32 noundef %160, i32 noundef 0, i32 noundef 0) #9
  %163 = ptrtoint ptr %sg_dma_len.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 0, ptr %sg_dma_len.i, align 8
  br label %if.else

if.then11:                                        ; preds = %do.body112.i, %do.body92.i
  %164 = call i32 @llvm.read_register.i32(metadata !37) #9
  %and.i.i.i6.i = and i32 %164, -16384
  %165 = inttoptr i32 %and.i.i.i6.i to ptr
  %preempt_count.i.i7.i = getelementptr inbounds %struct.thread_info, ptr %165, i32 0, i32 1
  %166 = ptrtoint ptr %preempt_count.i.i7.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load volatile i32, ptr %preempt_count.i.i7.i, align 4
  %sub.i8.i = add i32 %167, -1
  store volatile i32 %sub.i8.i, ptr %preempt_count.i.i7.i, align 4
  %168 = ptrtoint ptr %u.le to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %u.le, align 8
  %rkey = getelementptr inbounds %struct.ib_mr, ptr %169, i32 0, i32 3
  %170 = ptrtoint ptr %rkey to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %rkey, align 4
  %172 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %171, ptr %key, align 4
  br label %cleanup

if.else:                                          ; preds = %out_unmap.i, %do.end40.i
  %retval.0.i44 = phi i32 [ -16, %do.end40.i ], [ %ret.0.i, %out_unmap.i ]
  call fastcc void @rds_ib_free_frmr(ptr noundef %retval.0.i, i1 noundef zeroext false)
  %173 = inttoptr i32 %retval.0.i44 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then11, %rds_ib_alloc_frmr.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %retval.0.i, %if.then11 ], [ %173, %if.else ], [ inttoptr (i32 -95 to ptr), %entry.cleanup_crit_edge ], [ %retval.0.i, %rds_ib_alloc_frmr.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rds_ib_free_frmr(ptr noundef %ibmr, i1 noundef zeroext %drop) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pool1 = getelementptr inbounds %struct.rds_ib_mr, ptr %ibmr, i32 0, i32 2
  %0 = ptrtoint ptr %pool1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pool1, align 8
  %llnode = getelementptr inbounds %struct.rds_ib_mr, ptr %ibmr, i32 0, i32 4
  %free_list = getelementptr inbounds %struct.rds_ib_mr_pool, ptr %1, i32 0, i32 6
  %drop_list = getelementptr inbounds %struct.rds_ib_mr_pool, ptr %1, i32 0, i32 5
  %free_list.sink = select i1 %drop, ptr %drop_list, ptr %free_list
  %call.i26 = tail call zeroext i1 @llist_add_batch(ptr noundef %llnode, ptr noundef %llnode, ptr noundef %free_list.sink) #9
  %sg_len = getelementptr inbounds %struct.rds_ib_mr, ptr %ibmr, i32 0, i32 8
  %2 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sg_len, align 4
  %free_pinned = getelementptr inbounds %struct.rds_ib_mr_pool, ptr %1, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %free_pinned, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %free_pinned, i32 1, i32 3, i32 1) #9
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %free_pinned, ptr %free_pinned, i32 %3, ptr elementtype(i32) %free_pinned) #9, !srcloc !55
  %dirty_count = getelementptr inbounds %struct.rds_ib_mr_pool, ptr %1, i32 0, i32 4
  %call.i.i23 = tail call zeroext i1 @__kasan_check_write(ptr noundef %dirty_count, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %dirty_count, i32 1, i32 3, i32 1) #9
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dirty_count, ptr %dirty_count, i32 1, ptr elementtype(i32) %dirty_count) #9, !srcloc !55
  %call.i.i24 = tail call zeroext i1 @__kasan_check_read(ptr noundef %free_pinned, i32 noundef 4) #9
  %6 = ptrtoint ptr %free_pinned to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %free_pinned, align 4
  %max_free_pinned = getelementptr inbounds %struct.rds_ib_mr_pool, ptr %1, i32 0, i32 13
  %8 = ptrtoint ptr %max_free_pinned to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_free_pinned, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp.not = icmp ult i32 %7, %9
  br i1 %cmp.not, label %lor.lhs.false, label %entry.if.then9_crit_edge

entry.if.then9_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9

lor.lhs.false:                                    ; preds = %entry
  %call.i.i25 = tail call zeroext i1 @__kasan_check_read(ptr noundef %dirty_count, i32 noundef 4) #9
  %10 = ptrtoint ptr %dirty_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %dirty_count, align 4
  %max_items = getelementptr inbounds %struct.rds_ib_mr_pool, ptr %1, i32 0, i32 11
  %12 = ptrtoint ptr %max_items to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_items, align 4
  %div = udiv i32 %13, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %div)
  %cmp8.not = icmp ult i32 %11, %div
  br i1 %cmp8.not, label %lor.lhs.false.if.end11_crit_edge, label %lor.lhs.false.if.then9_crit_edge

lor.lhs.false.if.then9_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9

lor.lhs.false.if.end11_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then9:                                         ; preds = %lor.lhs.false.if.then9_crit_edge, %entry.if.then9_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rds_ib_mr_wq to i32))
  %14 = load ptr, ptr @rds_ib_mr_wq, align 4
  %flush_worker = getelementptr inbounds %struct.rds_ib_mr_pool, ptr %1, i32 0, i32 2
  %call.i27 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %14, ptr noundef %flush_worker, i32 noundef 10) #9
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %lor.lhs.false.if.end11_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_ib_free_frmr_list(ptr noundef %ibmr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pool1 = getelementptr inbounds %struct.rds_ib_mr, ptr %ibmr, i32 0, i32 2
  %0 = ptrtoint ptr %pool1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pool1, align 8
  %fr_state = getelementptr inbounds %struct.rds_ib_mr, ptr %ibmr, i32 0, i32 11, i32 0, i32 1
  %2 = ptrtoint ptr %fr_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fr_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  %llnode = getelementptr inbounds %struct.rds_ib_mr, ptr %ibmr, i32 0, i32 4
  %free_list = getelementptr inbounds %struct.rds_ib_mr_pool, ptr %1, i32 0, i32 6
  %drop_list = getelementptr inbounds %struct.rds_ib_mr_pool, ptr %1, i32 0, i32 5
  %free_list.sink = select i1 %cmp, ptr %drop_list, ptr %free_list
  %call.i8 = tail call zeroext i1 @llist_add_batch(ptr noundef %llnode, ptr noundef %llnode, ptr noundef %free_list.sink) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

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

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_dereg_mr_user(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rds_ib_try_reuse_ibmr(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ib_alloc_mr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_ib_teardown_mr(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__printk_ratelimit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_map_mr_sg(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @llist_add_batch(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind readnone willreturn }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !13, !14, !15, !17, !18, !19, !20, !22, !23, !25, !26, !28, !29, !30, !31, !33, !35, !36}
!llvm.named.register.sp = !{!37}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/rds/ib_frmr.c", i32 330, i32 4}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/rds/ib_frmr.c", i32 375, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @rds_ib_unreg_frmr._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @rds_ib_unreg_frmr._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/rds/rds.h", i32 835, i32 2}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/rds/ib_frmr.c", i32 302, i32 3}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @rds_ib_post_inv._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @rds_ib_post_inv._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../net/rds/ib_frmr.c", i32 81, i32 3}
!17 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @rds_ib_alloc_frmr._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @rds_ib_alloc_frmr._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @rds_ib_alloc_frmr.__key, !21, !"__key", i1 false, i1 false}
!21 = !{!"../net/rds/ib_frmr.c", i32 96, i32 2}
!22 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @rds_ib_alloc_frmr.__key.10, !24, !"__key", i1 false, i1 false}
!24 = !{!"../net/rds/ib_frmr.c", i32 97, i32 2}
!25 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../net/rds/ib_frmr.c", i32 211, i32 3}
!28 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @rds_ib_map_frmr._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @rds_ib_map_frmr._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @__func__.rds_ib_post_reg_frmr, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../net/rds/ib_frmr.c", i32 170, i32 7}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../net/rds/ib_frmr.c", i32 171, i32 4}
!35 = !{ptr @rds_ib_post_reg_frmr._entry, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @rds_ib_post_reg_frmr._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{!"sp"}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!47 = !{i64 2158549307}
!48 = !{i64 734301, i64 734322, i64 734345, i64 734364, i64 734383}
!49 = !{i64 2158549724}
!50 = !{i64 2158549902}
!51 = !{i64 2148227274, i64 2148227300, i64 2148227329, i64 2148227363, i64 2148227394, i64 2148227417}
!52 = !{!"branch_weights", i32 2000, i32 1}
!53 = !{i8 0, i8 2}
!54 = !{i64 2158571434}
!55 = !{i64 2148224809, i64 2148224835, i64 2148224864, i64 2148224898, i64 2148224929, i64 2148224952}
!56 = !{i64 2148313261}
!57 = !{i64 2148227994, i64 2148228026, i64 2148228055, i64 2148228089, i64 2148228120, i64 2148228143}
!58 = !{i64 2148313490}
!59 = !{i64 2158567523}
!60 = !{i64 2158567365}
!61 = !{!"auto-init"}
!62 = !{i64 2158567744}
!63 = !{i64 2158583373}
!64 = !{i64 2158585383}
!65 = !{i64 2158553876}
!66 = !{i64 2158555888}
!67 = !{!"branch_weights", i32 1, i32 2000}
!68 = !{i64 2158556525}
!69 = !{i64 2158556367}
!70 = !{i64 2158557661}
!71 = !{i64 2158558085}
!72 = !{i64 2158565233}
!73 = !{i64 2158567243}
