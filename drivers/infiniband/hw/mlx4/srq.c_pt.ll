; ModuleID = '/llk/IR_all_yes/drivers/infiniband/hw/mlx4/srq.c_pt.bc'
source_filename = "../drivers/infiniband/hw/mlx4/srq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mlx4_ib_create_srq = type { i64, i64 }
%struct.uverbs_attr_bundle = type { %struct.ib_udata, %struct.ib_udata, ptr, ptr, ptr, [2 x i32], [0 x %struct.uverbs_attr] }
%struct.ib_udata = type { ptr, ptr, i32, i32 }
%struct.uverbs_attr = type { %union.anon.162 }
%union.anon.162 = type { %struct.uverbs_ptr_attr }
%struct.uverbs_ptr_attr = type { %union.anon.163, i16, i16, i8 }
%union.anon.163 = type { i64 }
%struct.ib_srq_init_attr = type { ptr, ptr, %struct.ib_srq_attr, i32, %struct.anon.182 }
%struct.ib_srq_attr = type { i32, i32, i32 }
%struct.anon.182 = type { ptr, %union.anon.183 }
%union.anon.183 = type { %struct.anon.184 }
%struct.anon.184 = type { ptr }
%struct.mlx4_ib_dev = type { %struct.ib_device, ptr, i32, ptr, %struct.mlx4_uar, i32, %struct.spinlock, [2 x [2 x ptr]], [2 x ptr], %struct.spinlock, [2 x %struct.atomic64_t], %struct.mlx4_ib_sriov, %struct.mutex, i8, %struct.mlx4_ib_iboe, [2 x %struct.mlx4_ib_counters], ptr, ptr, ptr, [128 x ptr], [2 x %struct.mlx4_ib_iov_port], %struct.pkey_mgt, ptr, i32, i32, i32, [2 x ptr], [2 x %struct.mutex], i8, %struct.spinlock, %struct.list_head, [2 x %struct.mlx4_ib_diag_counters] }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.167, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%union.anon.167 = type { %struct.ib_core_device }
%struct.ib_core_device = type { %struct.device, %struct.possible_net_t, ptr, %struct.list_head, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type { ptr }
%struct.ib_device_attr = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i32, i32, %struct.ib_odp_caps, i64, i64, %struct.ib_rss_caps, i32, i32, %struct.ib_tm_caps, %struct.ib_cq_caps, i64, i32 }
%struct.ib_odp_caps = type { i64, %struct.anon.160 }
%struct.anon.160 = type { i32, i32, i32, i32 }
%struct.ib_rss_caps = type { i32, i32, i32 }
%struct.ib_tm_caps = type { i32, i32, i32, i32, i32 }
%struct.ib_cq_caps = type { i16, i16 }
%struct.rdmacg_device = type { %struct.list_head, %struct.list_head, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mlx4_uar = type { i32, i32, %struct.list_head, i32, ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.mlx4_ib_sriov = type { [2 x %struct.mlx4_ib_demux_ctx], [2 x ptr], %struct.spinlock, i32, %struct.mlx4_sriov_alias_guid, %struct.xarray, i32, %struct.spinlock, %struct.rb_root, %struct.list_head, %struct.xarray }
%struct.mlx4_ib_demux_ctx = type { ptr, i32, ptr, ptr, ptr, %struct.spinlock, %struct.atomic64_t, [128 x i64], ptr, %struct.mutex, %struct.rb_root, %struct.list_head, ptr, ptr, %struct.atomic_t, i32 }
%struct.mlx4_sriov_alias_guid = type { [2 x %struct.mlx4_sriov_alias_guid_port_rec_det], %struct.spinlock, ptr }
%struct.mlx4_sriov_alias_guid_port_rec_det = type { [16 x %struct.mlx4_sriov_alias_guid_info_rec_det], ptr, %struct.delayed_work, i32, i32, ptr, %struct.list_head }
%struct.mlx4_sriov_alias_guid_info_rec_det = type { [64 x i8], i64, i32, [8 x i32], i64 }
%struct.rb_root = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mlx4_ib_iboe = type { %struct.spinlock, [2 x ptr], [2 x %struct.atomic64_t], %struct.notifier_block, [2 x %struct.mlx4_port_gid_table], [2 x i32] }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mlx4_port_gid_table = type { [128 x %struct.gid_entry] }
%struct.gid_entry = type { %union.ib_gid, i32, ptr, i16 }
%union.ib_gid = type { %struct.anon.156 }
%struct.anon.156 = type { i64, i64 }
%struct.mlx4_ib_counters = type { %struct.list_head, %struct.mutex, i32 }
%struct.mlx4_ib_iov_port = type { [100 x i8], i8, ptr, %struct.list_head, ptr, %struct.ib_port_attr, ptr, ptr, ptr, ptr, ptr, %struct.mlx4_ib_iov_sysfs_attr }
%struct.ib_port_attr = type { i64, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i16, i32, i32, i8, i8, i8, i8, i8, i8, i16, i8, i16 }
%struct.mlx4_ib_iov_sysfs_attr = type { ptr, ptr, i32, i32, [15 x i8], %struct.device_attribute, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.pkey_mgt = type { [128 x [2 x [128 x i8]]], [2 x [128 x i16]], [128 x %struct.list_head], [128 x ptr] }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.mlx4_ib_diag_counters = type { ptr, ptr, i32 }
%struct.mlx4_dev = type { ptr, i32, i32, %struct.mlx4_caps, %struct.mlx4_phys_caps, %struct.mlx4_quotas, %struct.xarray, i8, i8, [64 x i8], i32, i32, [3 x i64], [3 x i64], ptr, i8 }
%struct.mlx4_caps = type { i64, i32, i32, [3 x i32], [3 x i32], [3 x i32], [3 x i64], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i64], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i16, [3 x i8], i32, i32, [5 x i32], i32, [5 x i32], i32, i32, [3 x i32], [3 x i8], [3 x i8], [3 x i8], [3 x i32], [3 x i32], i32, [3 x i8], i16, i32, i32, i8, i32, i32, i16, [3 x i64], i32, [3 x i8], [3 x i8], i8, i32, i32, i32, [3 x i8], %struct.mlx4_rate_limit_caps, i32, i8 }
%struct.mlx4_rate_limit_caps = type { i16, i8, i16, i8, i16 }
%struct.mlx4_phys_caps = type { [3 x i32], [3 x i32], i32, i32, i32, i32 }
%struct.mlx4_quotas = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.mlx4_ib_srq = type { %struct.ib_srq, %struct.mlx4_srq, %struct.mlx4_buf, %struct.mlx4_db, ptr, %struct.spinlock, i32, i32, i16, ptr, %struct.mlx4_mtt, %struct.mutex }
%struct.ib_srq = type { ptr, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.anon.179, %struct.rdma_restrack_entry }
%struct.anon.179 = type { ptr, %union.anon.180 }
%union.anon.180 = type { %struct.anon.181 }
%struct.anon.181 = type { ptr, i32 }
%struct.rdma_restrack_entry = type { i8, i8, %struct.kref, %struct.completion, ptr, ptr, i32, i8, i32 }
%struct.mlx4_srq = type { ptr, i32, i32, i32, i32, %struct.refcount_struct, %struct.completion }
%struct.mlx4_buf = type { %struct.mlx4_buf_list, ptr, i32, i32, i32 }
%struct.mlx4_buf_list = type { ptr, i32 }
%struct.mlx4_db = type { ptr, %union.anon.189, i32, i32, i32 }
%union.anon.189 = type { ptr }
%struct.mlx4_mtt = type { i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ib_umem = type { ptr, ptr, i64, i32, i32, i8, %struct.work_struct, %struct.sg_append_table }
%struct.sg_append_table = type { %struct.sg_table, ptr, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.mlx4_wqe_srq_next_seg = type { i16, i16, [3 x i32] }
%struct.mlx4_wqe_data_seg = type { i32, i32, i64 }
%struct.mlx4_ib_cq = type { %struct.ib_cq, %struct.mlx4_cq, %struct.mlx4_ib_cq_buf, ptr, %struct.mlx4_db, %struct.spinlock, %struct.mutex, ptr, ptr, i32, %struct.list_head, %struct.list_head }
%struct.ib_cq = type { ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.atomic_t, i32, ptr, %struct.list_head, %union.anon.132, ptr, ptr, i64, i8, i32, %struct.rdma_restrack_entry }
%union.anon.132 = type { %struct.work_struct }
%struct.mlx4_cq = type { ptr, ptr, ptr, i32, i16, ptr, ptr, i32, i32, i32, %struct.refcount_struct, %struct.completion, %struct.anon.191, i32, %struct.list_head, i8 }
%struct.anon.191 = type { %struct.list_head, ptr, ptr }
%struct.mlx4_ib_cq_buf = type { %struct.mlx4_buf, %struct.mlx4_mtt, i32 }
%struct.mlx4_ib_xrcd = type { %struct.ib_xrcd, i32, ptr, ptr }
%struct.ib_xrcd = type { ptr, %struct.atomic_t, ptr, %struct.rw_semaphore, %struct.xarray }
%struct.mlx4_ib_pd = type { %struct.ib_pd, i32 }
%struct.ib_pd = type { i32, i32, ptr, ptr, %struct.atomic_t, i32, ptr, %struct.rdma_restrack_entry }
%struct.ib_event = type { ptr, %union.anon.129, i32 }
%union.anon.129 = type { ptr }
%struct.mlx4_dev_persistent = type { ptr, ptr, [3 x i32], i32, [3 x i32], [3 x i32], %struct.work_struct, ptr, %struct.mutex, i8, %struct.mutex, i8, %struct.mutex, i32, %struct.mlx4_fw_crdump }
%struct.mlx4_fw_crdump = type { i8, ptr, ptr }
%struct.ib_recv_wr = type { ptr, %union.anon.159, ptr, i32 }
%union.anon.159 = type { i64 }
%struct.ib_sge = type { i64, i32, i32 }

@mlx4_ib_create_srq.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&srq->mutex\00", [20 x i8] zeroinitializer }, align 32
@mlx4_ib_create_srq.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&srq->lock\00", [21 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@mlx4_ib_srq_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 64, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014<mlx4_ib> %s: Unexpected event type %d on SRQ %06x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mlx4_ib_srq_event\00", [46 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/infiniband/hw/mlx4/srq.c\00", [63 x i8] zeroinitializer }, align 32
@mlx4_ib_srq_event._entry_ptr = internal global ptr @mlx4_ib_srq_event._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 18, i64 20]
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 98, i32 2 }
@___asan_gen_.15 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 99, i32 2 }
@___asan_gen_.22 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 156, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.34 = private constant [36 x i8] c"../drivers/infiniband/hw/mlx4/srq.c\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 63, i32 4 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @mlx4_ib_srq_event._entry, ptr @mlx4_ib_srq_event._entry_ptr, ptr @mlx4_ib_create_srq.__key, ptr @.str, ptr @mlx4_ib_create_srq.__key.1, ptr @.str.2, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_ib_create_srq.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_ib_create_srq.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_ib_srq_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx4_ib_create_srq(ptr noundef %ib_srq, ptr nocapture noundef %init_attr, ptr noundef %udata) local_unnamed_addr #0 align 64 {
entry:
  %ucmd = alloca %struct.mlx4_ib_create_srq, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ib_srq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ib_srq, align 4
  %tobool.not = icmp eq ptr %udata, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %context = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %udata, i32 0, i32 3
  %2 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %context, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %3, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  %srq_type = getelementptr inbounds %struct.ib_srq_init_attr, ptr %init_attr, i32 0, i32 3
  %4 = ptrtoint ptr %srq_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %srq_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %switch = icmp ult i32 %5, 2
  br i1 %switch, label %if.end, label %cond.end.cleanup309_crit_edge

cond.end.cleanup309_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup309

if.end:                                           ; preds = %cond.end
  %attr = getelementptr inbounds %struct.ib_srq_init_attr, ptr %init_attr, i32 0, i32 2
  %6 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %attr, align 4
  %dev5 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev5, align 8
  %max_srq_wqes = getelementptr inbounds %struct.mlx4_dev, ptr %9, i32 0, i32 3, i32 30
  %10 = ptrtoint ptr %max_srq_wqes to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_srq_wqes, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %11)
  %cmp6.not = icmp ult i32 %7, %11
  br i1 %cmp6.not, label %lor.lhs.false, label %if.end.cleanup309_crit_edge

if.end.cleanup309_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup309

lor.lhs.false:                                    ; preds = %if.end
  %max_sge = getelementptr inbounds %struct.ib_srq_init_attr, ptr %init_attr, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %max_sge to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_sge, align 4
  %max_srq_sge = getelementptr inbounds %struct.mlx4_dev, ptr %9, i32 0, i32 3, i32 31
  %14 = ptrtoint ptr %max_srq_sge to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max_srq_sge, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp10 = icmp ugt i32 %13, %15
  br i1 %cmp10, label %lor.lhs.false.cleanup309_crit_edge, label %do.body

lor.lhs.false.cleanup309_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup309

do.body:                                          ; preds = %lor.lhs.false
  %mutex = getelementptr inbounds %struct.mlx4_ib_srq, ptr %ib_srq, i32 0, i32 11
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str, ptr noundef nonnull @mlx4_ib_create_srq.__key) #8
  %lock = getelementptr inbounds %struct.mlx4_ib_srq, ptr %ib_srq, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @mlx4_ib_create_srq.__key.1, i16 noundef signext 3) #8
  %16 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %attr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp23 = icmp eq i32 %17, 0
  %18 = tail call i32 @llvm.ctlz.i32(i32 %17, i1 true) #8, !range !29
  %sub.i.i.i = sub nuw nsw i32 32, %18
  %sub.i.i.op.i = shl nuw i32 1, %sub.i.i.i
  %shl.i = select i1 %cmp23, i32 1, i32 %sub.i.i.op.i
  %msrq = getelementptr inbounds %struct.mlx4_ib_srq, ptr %ib_srq, i32 0, i32 1
  %max = getelementptr inbounds %struct.mlx4_ib_srq, ptr %ib_srq, i32 0, i32 1, i32 2
  %19 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %shl.i, ptr %max, align 4
  %20 = ptrtoint ptr %max_sge to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %max_sge, align 4
  %max_gs = getelementptr inbounds %struct.mlx4_ib_srq, ptr %ib_srq, i32 0, i32 1, i32 3
  %22 = ptrtoint ptr %max_gs to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %max_gs, align 4
  %mul = shl i32 %21, 4
  %sub81 = or i32 %mul, 15
  %23 = tail call i32 @llvm.ctlz.i32(i32 %sub81, i1 true) #8, !range !29
  %sub.i.i.i439.pn = sub nuw nsw i32 32, %23
  %cond122 = shl nuw i32 1, %sub.i.i.i439.pn
  %24 = tail call i32 @llvm.umax.i32(i32 %cond122, i32 32)
  %25 = tail call i32 @llvm.ctlz.i32(i32 %24, i1 true) #8, !range !29
  %sub.i.op.i441 = xor i32 %25, 31
  %wqe_shift = getelementptr inbounds %struct.mlx4_ib_srq, ptr %ib_srq, i32 0, i32 1, i32 4
  %26 = ptrtoint ptr %wqe_shift to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %sub.i.op.i441, ptr %wqe_shift, align 4
  %mul147 = mul i32 %24, %shl.i
  br i1 %tobool.not, label %if.else, label %if.then149

if.then149:                                       ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ucmd) #8
  %27 = getelementptr inbounds %struct.mlx4_ib_create_srq, ptr %ucmd, i32 0, i32 1
  %28 = call ptr @memset(ptr %ucmd, i32 255, i32 16)
  %29 = ptrtoint ptr %udata to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %udata, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 156) #8
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i.i, label %if.then149.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then149.if.then11.i.i.i_crit_edge:             ; preds = %if.then149
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then149
  %31 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %30, i32 16, i32 -1226833920) #11, !srcloc !30
  %asmresult.i.i.i = extractvalue { i32, i32 } %31, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i1.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i1.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !31

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %ucmd, i32 noundef 16) #8
  %32 = call i32 @llvm.read_register.i32(metadata !19) #8
  %and.i.i.i.i.i.i.i = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 4
  %34 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #5, !srcloc !32
  %and.i.i.i.i.i = and i32 %34, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #8, !srcloc !33
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !34
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %ucmd, ptr noundef %30, i32 noundef 16) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %34) #8, !srcloc !33
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end153, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !31

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %if.then149.if.then11.i.i.i_crit_edge
  %res.03.i.i.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 16, %if.then149.if.then11.i.i.i_crit_edge ], [ 16, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i442 = sub i32 16, %res.03.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %ucmd, i32 %sub.i.i.i442
  %35 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.03.i.i.i)
  br label %cleanup.thread

if.end153:                                        ; preds = %if.end.i.i.i
  %36 = ptrtoint ptr %ib_srq to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ib_srq, align 4
  %38 = ptrtoint ptr %ucmd to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %ucmd, align 8
  %conv155 = trunc i64 %39 to i32
  %call156 = call ptr @ib_umem_get(ptr noundef %37, i32 noundef %conv155, i32 noundef %mul147, i32 noundef 0) #8
  %umem = getelementptr inbounds %struct.mlx4_ib_srq, ptr %ib_srq, i32 0, i32 9
  %40 = ptrtoint ptr %umem to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call156, ptr %umem, align 4
  %cmp.i = icmp ugt ptr %call156, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then159, label %if.end162

if.then159:                                       ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %call156 to i32
  br label %cleanup.thread

if.end162:                                        ; preds = %if.end153
  %42 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev5, align 8
  %iova.i = getelementptr inbounds %struct.ib_umem, ptr %call156, i32 0, i32 2
  %44 = ptrtoint ptr %iova.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %iova.i, align 8
  %length.i = getelementptr inbounds %struct.ib_umem, ptr %call156, i32 0, i32 3
  %46 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %length.i, align 8
  %conv.i = zext i32 %47 to i64
  %add.i = add i64 %45, 4095
  %add2.i = add i64 %add.i, %conv.i
  %and.i = and i64 %add2.i, 4294963200
  %and15.i = and i64 %45, 4294963200
  %sub16.i = sub nsw i64 %and.i, %and15.i
  %conv17.i = trunc i64 %sub16.i to i32
  %div1.i = lshr exact i32 %conv17.i, 12
  %mtt = getelementptr inbounds %struct.mlx4_ib_srq, ptr %ib_srq, i32 0, i32 10
  %call166 = call i32 @mlx4_mtt_init(ptr noundef %43, i32 noundef %div1.i, i32 noundef 12, ptr noundef %mtt) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call166)
  %tobool167.not = icmp eq i32 %call166, 0
  br i1 %tobool167.not, label %if.end169, label %cleanup

if.end169:                                        ; preds = %if.end162
  %48 = ptrtoint ptr %umem to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %umem, align 4
  %call172 = call i32 @mlx4_ib_umem_write_mtt(ptr noundef %1, ptr noundef %mtt, ptr noundef %49) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call172)
  %tobool173.not = icmp eq i32 %call172, 0
  br i1 %tobool173.not, label %if.end175, label %if.end169.cleanup.thread450_crit_edge

if.end169.cleanup.thread450_crit_edge:            ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread450

if.end175:                                        ; preds = %if.end169
  %50 = ptrtoint ptr %27 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %27, align 8
  %conv176 = trunc i64 %51 to i32
  %db = getelementptr inbounds %struct.mlx4_ib_srq, ptr %ib_srq, i32 0, i32 3
  %call177 = call i32 @mlx4_ib_db_map_user(ptr noundef nonnull %udata, i32 noundef %conv176, ptr noundef %db) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call177)
  %tobool178.not = icmp eq i32 %call177, 0
  br i1 %tobool178.not, label %cleanup.thread454, label %if.end175.cleanup.thread450_crit_edge

if.end175.cleanup.thread450_crit_edge:            ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread450

cleanup.thread454:                                ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ucmd) #8
  br label %if.end237

cleanup.thread:                                   ; preds = %if.then159, %if.then11.i.i.i
  %retval.0.ph = phi i32 [ %41, %if.then159 ], [ -14, %if.then11.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ucmd) #8
  br label %cleanup309

cleanup.thread450:                                ; preds = %if.end175.cleanup.thread450_crit_edge, %if.end169.cleanup.thread450_crit_edge
  %err.0.ph = phi i32 [ %call177, %if.end175.cleanup.thread450_crit_edge ], [ %call172, %if.end169.cleanup.thread450_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ucmd) #8
  br label %err_mtt

cleanup:                                          ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ucmd) #8
  br label %err_buf

if.else:                                          ; preds = %do.body
  %52 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev5, align 8
  %db182 = getelementptr inbounds %struct.mlx4_ib_srq, ptr %ib_srq, i32 0, i32 3
  %call183 = tail call i32 @mlx4_db_alloc(ptr noundef %53, ptr noundef %db182, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call183)
  %tobool184.not = icmp eq i32 %call183, 0
  br i1 %tobool184.not, label %if.end186, label %if.else.cleanup309_crit_edge

if.else.cleanup309_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup309

if.end186:                                        ; preds = %if.else
  %54 = ptrtoint ptr %db182 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %db182, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %55, align 4
  %57 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev5, align 8
  %buf = getelementptr inbounds %struct.mlx4_ib_srq, ptr %ib_srq, i32 0, i32 2
  %call190 = tail call i32 @mlx4_buf_alloc(ptr noundef %58, i32 noundef %mul147, i32 noundef 8192, ptr noundef %buf) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call190)
  %tobool191.not = icmp eq i32 %call190, 0
  br i1 %tobool191.not, label %if.end193, label %if.end186.if.then305_crit_edge

if.end186.if.then305_crit_edge:                   ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then305

if.end193:                                        ; preds = %if.end186
  %head = getelementptr inbounds %struct.mlx4_ib_srq, ptr %ib_srq, i32 0, i32 6
  %59 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %head, align 4
  %60 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %max, align 4
  %sub196 = add i32 %61, -1
  %tail = getelementptr inbounds %struct.mlx4_ib_srq, ptr %ib_srq, i32 0, i32 7
  %62 = ptrtoint ptr %tail to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %sub196, ptr %tail, align 4
  %wqe_ctr = getelementptr inbounds %struct.mlx4_ib_srq, ptr %ib_srq, i32 0, i32 8
  %63 = ptrtoint ptr %wqe_ctr to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 0, ptr %wqe_ctr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp199472 = icmp sgt i32 %61, 0
  br i1 %cmp199472, label %for.body.lr.ph, label %if.end193.for.end214_crit_edge

if.end193.for.end214_crit_edge:                   ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end214

for.body.lr.ph:                                   ; preds = %if.end193
  %nbufs.i.i = getelementptr inbounds %struct.mlx4_ib_srq, ptr %ib_srq, i32 0, i32 2, i32 2
  %page_list.i.i = getelementptr inbounds %struct.mlx4_ib_srq, ptr %ib_srq, i32 0, i32 2, i32 1
  br label %for.body

for.cond.loopexit:                                ; preds = %for.body212.for.cond.loopexit_crit_edge, %get_wqe.exit.for.cond.loopexit_crit_edge
  %64 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %max, align 4
  %cmp199 = icmp slt i32 %add202, %65
  br i1 %cmp199, label %for.cond.loopexit.for.body_crit_edge, label %for.cond.loopexit.for.end214_crit_edge

for.cond.loopexit.for.end214_crit_edge:           ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end214

for.cond.loopexit.for.body_crit_edge:             ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body:                                         ; preds = %for.cond.loopexit.for.body_crit_edge, %for.body.lr.ph
  %66 = phi i32 [ %61, %for.body.lr.ph ], [ %65, %for.cond.loopexit.for.body_crit_edge ]
  %i.0473 = phi i32 [ 0, %for.body.lr.ph ], [ %add202, %for.cond.loopexit.for.body_crit_edge ]
  %67 = ptrtoint ptr %wqe_shift to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %wqe_shift, align 4
  %shl.i443 = shl i32 %i.0473, %68
  %69 = ptrtoint ptr %nbufs.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %nbufs.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %70)
  %cmp.i.i = icmp eq i32 %70, 1
  br i1 %cmp.i.i, label %if.then.i.i444, label %if.else.i.i

if.then.i.i444:                                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %71 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %buf, align 4
  %add.ptr.i.i = getelementptr i8, ptr %72, i32 %shl.i443
  br label %get_wqe.exit

if.else.i.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %73 = ptrtoint ptr %page_list.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %page_list.i.i, align 4
  %shr.i.i = ashr i32 %shl.i443, 12
  %arrayidx.i.i = getelementptr %struct.mlx4_buf_list, ptr %74, i32 %shr.i.i
  %75 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %shl.i443, 4095
  %add.ptr3.i.i = getelementptr i8, ptr %76, i32 %and.i.i
  br label %get_wqe.exit

get_wqe.exit:                                     ; preds = %if.else.i.i, %if.then.i.i444
  %retval.0.i.i = phi ptr [ %add.ptr.i.i, %if.then.i.i444 ], [ %add.ptr3.i.i, %if.else.i.i ]
  %add202 = add nuw nsw i32 %i.0473, 1
  %sub205 = add i32 %66, 65535
  %and = and i32 %sub205, %add202
  %conv206 = trunc i32 %and to i16
  %next_wqe_index = getelementptr inbounds %struct.mlx4_wqe_srq_next_seg, ptr %retval.0.i.i, i32 0, i32 1
  %77 = ptrtoint ptr %next_wqe_index to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %conv206, ptr %next_wqe_index, align 2
  %add.ptr207 = getelementptr %struct.mlx4_wqe_srq_next_seg, ptr %retval.0.i.i, i32 1
  %add.ptr209 = getelementptr i8, ptr %retval.0.i.i, i32 %24
  %cmp210470 = icmp ult ptr %add.ptr207, %add.ptr209
  br i1 %cmp210470, label %get_wqe.exit.for.body212_crit_edge, label %get_wqe.exit.for.cond.loopexit_crit_edge

get_wqe.exit.for.cond.loopexit_crit_edge:         ; preds = %get_wqe.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.loopexit

get_wqe.exit.for.body212_crit_edge:               ; preds = %get_wqe.exit
  br label %for.body212

for.body212:                                      ; preds = %for.body212.for.body212_crit_edge, %get_wqe.exit.for.body212_crit_edge
  %scatter.0471 = phi ptr [ %incdec.ptr, %for.body212.for.body212_crit_edge ], [ %add.ptr207, %get_wqe.exit.for.body212_crit_edge ]
  %lkey = getelementptr inbounds %struct.mlx4_wqe_data_seg, ptr %scatter.0471, i32 0, i32 1
  %78 = ptrtoint ptr %lkey to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 256, ptr %lkey, align 4
  %incdec.ptr = getelementptr %struct.mlx4_wqe_data_seg, ptr %scatter.0471, i32 1
  %cmp210 = icmp ult ptr %incdec.ptr, %add.ptr209
  br i1 %cmp210, label %for.body212.for.body212_crit_edge, label %for.body212.for.cond.loopexit_crit_edge

for.body212.for.cond.loopexit_crit_edge:          ; preds = %for.body212
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.loopexit

for.body212.for.body212_crit_edge:                ; preds = %for.body212
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body212

for.end214:                                       ; preds = %for.cond.loopexit.for.end214_crit_edge, %if.end193.for.end214_crit_edge
  %79 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev5, align 8
  %npages = getelementptr inbounds %struct.mlx4_ib_srq, ptr %ib_srq, i32 0, i32 2, i32 3
  %81 = ptrtoint ptr %npages to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %npages, align 4
  %page_shift = getelementptr inbounds %struct.mlx4_ib_srq, ptr %ib_srq, i32 0, i32 2, i32 4
  %83 = ptrtoint ptr %page_shift to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %page_shift, align 4
  %mtt218 = getelementptr inbounds %struct.mlx4_ib_srq, ptr %ib_srq, i32 0, i32 10
  %call219 = tail call i32 @mlx4_mtt_init(ptr noundef %80, i32 noundef %82, i32 noundef %84, ptr noundef %mtt218) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call219)
  %tobool220.not = icmp eq i32 %call219, 0
  br i1 %tobool220.not, label %if.end222, label %for.end214.err_buf_crit_edge

for.end214.err_buf_crit_edge:                     ; preds = %for.end214
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_buf

if.end222:                                        ; preds = %for.end214
  %85 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev5, align 8
  %call226 = tail call i32 @mlx4_buf_write_mtt(ptr noundef %86, ptr noundef %mtt218, ptr noundef %buf) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call226)
  %tobool227.not = icmp eq i32 %call226, 0
  br i1 %tobool227.not, label %if.end229, label %if.end222.err_mtt_crit_edge

if.end222.err_mtt_crit_edge:                      ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_mtt

if.end229:                                        ; preds = %if.end222
  %87 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %max, align 4
  %89 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %88, i32 8) #8
  %90 = extractvalue { i32, i1 } %89, 1
  br i1 %90, label %kvmalloc_array.exit.thread, label %kvmalloc_array.exit, !prof !35

kvmalloc_array.exit.thread:                       ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #10
  %wrid459 = getelementptr inbounds %struct.mlx4_ib_srq, ptr %ib_srq, i32 0, i32 4
  %91 = ptrtoint ptr %wrid459 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr null, ptr %wrid459, align 4
  br label %err_mtt

kvmalloc_array.exit:                              ; preds = %if.end229
  %92 = extractvalue { i32, i1 } %89, 0
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %92, i32 noundef 3264, i32 noundef -1) #12
  %wrid = getelementptr inbounds %struct.mlx4_ib_srq, ptr %ib_srq, i32 0, i32 4
  %93 = ptrtoint ptr %wrid to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %call.i.i, ptr %wrid, align 4
  %tobool234.not = icmp eq ptr %call.i.i, null
  br i1 %tobool234.not, label %kvmalloc_array.exit.err_mtt_crit_edge, label %kvmalloc_array.exit.if.end237_crit_edge

kvmalloc_array.exit.if.end237_crit_edge:          ; preds = %kvmalloc_array.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end237

kvmalloc_array.exit.err_mtt_crit_edge:            ; preds = %kvmalloc_array.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_mtt

if.end237:                                        ; preds = %kvmalloc_array.exit.if.end237_crit_edge, %cleanup.thread454
  %94 = ptrtoint ptr %srq_type to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %srq_type, align 4
  %96 = add i32 %95, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %96)
  %97 = icmp ult i32 %96, 2
  br i1 %97, label %cond.end245, label %if.end237.cond.false254_crit_edge

if.end237.cond.false254_crit_edge:                ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false254

cond.end245:                                      ; preds = %if.end237
  %ext = getelementptr inbounds %struct.ib_srq_init_attr, ptr %init_attr, i32 0, i32 4
  %98 = ptrtoint ptr %ext to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %ext, align 4
  %cqn243 = getelementptr inbounds %struct.mlx4_ib_cq, ptr %99, i32 0, i32 1, i32 8
  %100 = ptrtoint ptr %cqn243 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %cqn243, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %95)
  %cmp248 = icmp eq i32 %95, 1
  br i1 %cmp248, label %cond.true250, label %cond.end245.cond.false254_crit_edge

cond.end245.cond.false254_crit_edge:              ; preds = %cond.end245
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false254

cond.true250:                                     ; preds = %cond.end245
  call void @__sanitizer_cov_trace_pc() #10
  %102 = getelementptr inbounds %struct.ib_srq_init_attr, ptr %init_attr, i32 0, i32 4, i32 1
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %102, align 4
  %xrcdn253 = getelementptr inbounds %struct.mlx4_ib_xrcd, ptr %104, i32 0, i32 1
  %105 = ptrtoint ptr %xrcdn253 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %xrcdn253, align 4
  br label %cond.end259

cond.false254:                                    ; preds = %cond.end245.cond.false254_crit_edge, %if.end237.cond.false254_crit_edge
  %cond246464 = phi i32 [ %101, %cond.end245.cond.false254_crit_edge ], [ 0, %if.end237.cond.false254_crit_edge ]
  %107 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dev5, align 8
  %reserved_xrcds = getelementptr inbounds %struct.mlx4_dev, ptr %108, i32 0, i32 3, i32 56
  %109 = ptrtoint ptr %reserved_xrcds to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %reserved_xrcds, align 8
  %conv258 = and i32 %110, 65535
  br label %cond.end259

cond.end259:                                      ; preds = %cond.false254, %cond.true250
  %cond246463 = phi i32 [ %101, %cond.true250 ], [ %cond246464, %cond.false254 ]
  %cond260 = phi i32 [ %106, %cond.true250 ], [ %conv258, %cond.false254 ]
  %conv261 = trunc i32 %cond260 to i16
  %111 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %dev5, align 8
  %pd = getelementptr inbounds %struct.ib_srq, ptr %ib_srq, i32 0, i32 1
  %113 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %pd, align 4
  %pdn = getelementptr inbounds %struct.mlx4_ib_pd, ptr %114, i32 0, i32 1
  %115 = ptrtoint ptr %pdn to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %pdn, align 4
  %mtt264 = getelementptr inbounds %struct.mlx4_ib_srq, ptr %ib_srq, i32 0, i32 10
  %db265 = getelementptr inbounds %struct.mlx4_ib_srq, ptr %ib_srq, i32 0, i32 3
  %dma = getelementptr inbounds %struct.mlx4_ib_srq, ptr %ib_srq, i32 0, i32 3, i32 2
  %117 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %dma, align 4
  %conv266 = zext i32 %118 to i64
  %call268 = call i32 @mlx4_srq_alloc(ptr noundef %112, i32 noundef %116, i32 noundef %cond246463, i16 noundef zeroext %conv261, ptr noundef %mtt264, i64 noundef %conv266, ptr noundef %msrq) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call268)
  %tobool269.not = icmp eq i32 %call268, 0
  br i1 %tobool269.not, label %if.end271, label %err_wrid

if.end271:                                        ; preds = %cond.end259
  %119 = ptrtoint ptr %msrq to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr @mlx4_ib_srq_event, ptr %msrq, align 4
  %srqn = getelementptr inbounds %struct.mlx4_ib_srq, ptr %ib_srq, i32 0, i32 1, i32 1
  %120 = ptrtoint ptr %srqn to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %srqn, align 4
  %srq_num = getelementptr inbounds %struct.ib_srq, ptr %ib_srq, i32 0, i32 7, i32 1, i32 0, i32 1
  %122 = ptrtoint ptr %srq_num to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %121, ptr %srq_num, align 4
  br i1 %tobool.not, label %if.end271.if.end283_crit_edge, label %if.then276

if.end271.if.end283_crit_edge:                    ; preds = %if.end271
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end283

if.then276:                                       ; preds = %if.end271
  %call279 = call fastcc i32 @ib_copy_to_udata(ptr noundef nonnull %udata, ptr noundef %srqn)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call279)
  %tobool280.not = icmp eq i32 %call279, 0
  br i1 %tobool280.not, label %if.then276.if.end283_crit_edge, label %if.then276.if.then290_crit_edge

if.then276.if.then290_crit_edge:                  ; preds = %if.then276
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then290

if.then276.if.end283_crit_edge:                   ; preds = %if.then276
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end283

if.end283:                                        ; preds = %if.then276.if.end283_crit_edge, %if.end271.if.end283_crit_edge
  %123 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %max, align 4
  %sub286 = add i32 %124, -1
  %125 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %sub286, ptr %attr, align 4
  br label %cleanup309

err_wrid:                                         ; preds = %cond.end259
  br i1 %tobool.not, label %if.else292, label %err_wrid.if.then290_crit_edge

err_wrid.if.then290_crit_edge:                    ; preds = %err_wrid
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then290

if.then290:                                       ; preds = %err_wrid.if.then290_crit_edge, %if.then276.if.then290_crit_edge
  %err.1466 = phi i32 [ %call268, %err_wrid.if.then290_crit_edge ], [ -14, %if.then276.if.then290_crit_edge ]
  call void @mlx4_ib_db_unmap_user(ptr noundef %cond, ptr noundef %db265) #8
  br label %err_mtt

if.else292:                                       ; preds = %err_wrid
  call void @__sanitizer_cov_trace_pc() #10
  %wrid293 = getelementptr inbounds %struct.mlx4_ib_srq, ptr %ib_srq, i32 0, i32 4
  %126 = ptrtoint ptr %wrid293 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %wrid293, align 4
  call void @kvfree(ptr noundef %127) #8
  br label %err_mtt

err_mtt:                                          ; preds = %if.else292, %if.then290, %kvmalloc_array.exit.err_mtt_crit_edge, %kvmalloc_array.exit.thread, %if.end222.err_mtt_crit_edge, %cleanup.thread450
  %err.2 = phi i32 [ %err.1466, %if.then290 ], [ %call268, %if.else292 ], [ %call226, %if.end222.err_mtt_crit_edge ], [ -12, %kvmalloc_array.exit.err_mtt_crit_edge ], [ %err.0.ph, %cleanup.thread450 ], [ -12, %kvmalloc_array.exit.thread ]
  %128 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %dev5, align 8
  %mtt296 = getelementptr inbounds %struct.mlx4_ib_srq, ptr %ib_srq, i32 0, i32 10
  call void @mlx4_mtt_cleanup(ptr noundef %129, ptr noundef %mtt296) #8
  br label %err_buf

err_buf:                                          ; preds = %err_mtt, %for.end214.err_buf_crit_edge, %cleanup
  %err.3 = phi i32 [ %call166, %cleanup ], [ %err.2, %err_mtt ], [ %call219, %for.end214.err_buf_crit_edge ]
  %umem297 = getelementptr inbounds %struct.mlx4_ib_srq, ptr %ib_srq, i32 0, i32 9
  %130 = ptrtoint ptr %umem297 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %umem297, align 4
  %tobool298.not = icmp eq ptr %131, null
  br i1 %tobool298.not, label %if.then299, label %err_buf.err_db_crit_edge

err_buf.err_db_crit_edge:                         ; preds = %err_buf
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_db

if.then299:                                       ; preds = %err_buf
  call void @__sanitizer_cov_trace_pc() #10
  %132 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %dev5, align 8
  %buf301 = getelementptr inbounds %struct.mlx4_ib_srq, ptr %ib_srq, i32 0, i32 2
  call void @mlx4_buf_free(ptr noundef %133, i32 noundef %mul147, ptr noundef %buf301) #8
  br label %err_db

err_db:                                           ; preds = %if.then299, %err_buf.err_db_crit_edge
  %134 = ptrtoint ptr %umem297 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %umem297, align 4
  call void @ib_umem_release(ptr noundef %135) #8
  br i1 %tobool.not, label %err_db.if.then305_crit_edge, label %err_db.cleanup309_crit_edge

err_db.cleanup309_crit_edge:                      ; preds = %err_db
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup309

err_db.if.then305_crit_edge:                      ; preds = %err_db
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then305

if.then305:                                       ; preds = %err_db.if.then305_crit_edge, %if.end186.if.then305_crit_edge
  %err.4468 = phi i32 [ %err.3, %err_db.if.then305_crit_edge ], [ -12, %if.end186.if.then305_crit_edge ]
  %136 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %dev5, align 8
  %db307 = getelementptr inbounds %struct.mlx4_ib_srq, ptr %ib_srq, i32 0, i32 3
  call void @mlx4_db_free(ptr noundef %137, ptr noundef %db307) #8
  br label %cleanup309

cleanup309:                                       ; preds = %if.then305, %err_db.cleanup309_crit_edge, %if.end283, %if.else.cleanup309_crit_edge, %cleanup.thread, %lor.lhs.false.cleanup309_crit_edge, %if.end.cleanup309_crit_edge, %cond.end.cleanup309_crit_edge
  %retval.1 = phi i32 [ 0, %if.end283 ], [ -95, %cond.end.cleanup309_crit_edge ], [ -22, %lor.lhs.false.cleanup309_crit_edge ], [ -22, %if.end.cleanup309_crit_edge ], [ %call183, %if.else.cleanup309_crit_edge ], [ %err.4468, %if.then305 ], [ %err.3, %err_db.cleanup309_crit_edge ], [ %retval.0.ph, %cleanup.thread ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ib_umem_get(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_mtt_init(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_ib_umem_write_mtt(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_ib_db_map_user(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_db_alloc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_buf_alloc(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_buf_write_mtt(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_srq_alloc(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx4_ib_srq_event(ptr noundef %srq, i32 noundef %type) #0 align 64 {
entry:
  %event = alloca %struct.ib_event, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %event) #8
  %0 = getelementptr inbounds %struct.ib_event, ptr %event, i32 0, i32 2
  %event_handler = getelementptr i8, ptr %srq, i32 -112
  %1 = ptrtoint ptr %event_handler to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %event_handler, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %entry
  %3 = getelementptr inbounds %struct.ib_event, ptr %event, i32 0, i32 1
  %add.ptr.i = getelementptr i8, ptr %srq, i32 -124
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 4
  %6 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %event, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %add.ptr.i, ptr %3, align 4
  %8 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %do.end [
    i32 20, label %if.then.sw.epilog_crit_edge
    i32 18, label %sw.bb4
  ]

if.then.sw.epilog_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %srqn = getelementptr inbounds %struct.mlx4_srq, ptr %srq, i32 0, i32 1
  %9 = ptrtoint ptr %srqn to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %srqn, align 4
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef %type, i32 noundef %10) #13
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb4, %if.then.sw.epilog_crit_edge
  %storemerge = phi i32 [ 14, %sw.bb4 ], [ 15, %if.then.sw.epilog_crit_edge ]
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %storemerge, ptr %0, align 4
  %srq_context = getelementptr i8, ptr %srq, i32 -108
  %12 = ptrtoint ptr %srq_context to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %srq_context, align 4
  call void %2(ptr noundef nonnull %event, ptr noundef %13) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %event) #8
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ib_copy_to_udata(ptr nocapture noundef readonly %udata, ptr noundef %src) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %outbuf = getelementptr inbounds %struct.ib_udata, ptr %udata, i32 0, i32 1
  %0 = ptrtoint ptr %outbuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %outbuf, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 174) #8
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %entry.copy_to_user.exit.thread_crit_edge, label %if.end.i.i

entry.copy_to_user.exit.thread_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit.thread

if.end.i.i:                                       ; preds = %entry
  %2 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 4, i32 -1226833920) #11, !srcloc !36
  %asmresult.i.i = extractvalue { i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i1.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i1.i, label %copy_to_user.exit, label %if.end.i.i.copy_to_user.exit.thread_crit_edge

if.end.i.i.copy_to_user.exit.thread_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit.thread

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %src, i32 noundef 4) #8
  %call.i1.i.i = tail call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef %src, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool.not = icmp eq i32 %call.i1.i.i, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 -14
  br label %copy_to_user.exit.thread

copy_to_user.exit.thread:                         ; preds = %copy_to_user.exit, %if.end.i.i.copy_to_user.exit.thread_crit_edge, %entry.copy_to_user.exit.thread_crit_edge
  %3 = phi i32 [ -14, %entry.copy_to_user.exit.thread_crit_edge ], [ -14, %if.end.i.i.copy_to_user.exit.thread_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_ib_db_unmap_user(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_mtt_cleanup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_buf_free(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_umem_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_db_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx4_ib_modify_srq(ptr noundef %ibsrq, ptr nocapture noundef readonly %attr, i32 noundef %attr_mask, ptr nocapture noundef readnone %udata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ibsrq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ibsrq, align 4
  %and = and i32 %attr_mask, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %and2 = and i32 %attr_mask, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end15_crit_edge, label %if.then4

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then4:                                         ; preds = %if.end
  %srq_limit = getelementptr inbounds %struct.ib_srq_attr, ptr %attr, i32 0, i32 2
  %2 = ptrtoint ptr %srq_limit to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %srq_limit, align 4
  %max = getelementptr inbounds %struct.mlx4_ib_srq, ptr %ibsrq, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not = icmp ult i32 %3, %5
  br i1 %cmp.not, label %if.end6, label %if.then4.cleanup_crit_edge

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.then4
  %msrq = getelementptr inbounds %struct.mlx4_ib_srq, ptr %ibsrq, i32 0, i32 1
  %mutex = getelementptr inbounds %struct.mlx4_ib_srq, ptr %ibsrq, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %dev7 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev7, align 8
  %8 = ptrtoint ptr %srq_limit to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %srq_limit, align 4
  %call10 = tail call i32 @mlx4_srq_arm(ptr noundef %7, ptr noundef %msrq, i32 noundef %9) #8
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool12.not = icmp eq i32 %call10, 0
  br i1 %tobool12.not, label %if.end6.if.end15_crit_edge, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6.if.end15_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.end15:                                         ; preds = %if.end6.if.end15_crit_edge, %if.end.if.end15_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end6.cleanup_crit_edge, %if.then4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end15 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.then4.cleanup_crit_edge ], [ %call10, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_srq_arm(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx4_ib_query_srq(ptr noundef %ibsrq, ptr nocapture noundef writeonly %srq_attr) local_unnamed_addr #0 align 64 {
entry:
  %limit_watermark = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ibsrq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ibsrq, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %limit_watermark) #8
  %2 = ptrtoint ptr %limit_watermark to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %limit_watermark, align 4, !annotation !37
  %dev2 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev2, align 8
  %msrq = getelementptr inbounds %struct.mlx4_ib_srq, ptr %ibsrq, i32 0, i32 1
  %call3 = call i32 @mlx4_srq_query(ptr noundef %4, ptr noundef %msrq, ptr noundef nonnull %limit_watermark) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %limit_watermark to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %limit_watermark, align 4
  %srq_limit = getelementptr inbounds %struct.ib_srq_attr, ptr %srq_attr, i32 0, i32 2
  %7 = ptrtoint ptr %srq_limit to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %srq_limit, align 4
  %max = getelementptr inbounds %struct.mlx4_ib_srq, ptr %ibsrq, i32 0, i32 1, i32 2
  %8 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max, align 4
  %sub = add i32 %9, -1
  %10 = ptrtoint ptr %srq_attr to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %sub, ptr %srq_attr, align 4
  %max_gs = getelementptr inbounds %struct.mlx4_ib_srq, ptr %ibsrq, i32 0, i32 1, i32 3
  %11 = ptrtoint ptr %max_gs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %max_gs, align 4
  %max_sge = getelementptr inbounds %struct.ib_srq_attr, ptr %srq_attr, i32 0, i32 1
  %13 = ptrtoint ptr %max_sge to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %max_sge, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %limit_watermark) #8
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_srq_query(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx4_ib_destroy_srq(ptr noundef %srq, ptr noundef readonly %udata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %srq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %srq, align 4
  %dev2 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev2, align 8
  %msrq3 = getelementptr inbounds %struct.mlx4_ib_srq, ptr %srq, i32 0, i32 1
  tail call void @mlx4_srq_free(ptr noundef %3, ptr noundef %msrq3) #8
  %4 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev2, align 8
  %mtt = getelementptr inbounds %struct.mlx4_ib_srq, ptr %srq, i32 0, i32 10
  tail call void @mlx4_mtt_cleanup(ptr noundef %5, ptr noundef %mtt) #8
  %tobool.not = icmp eq ptr %udata, null
  br i1 %tobool.not, label %if.else, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %context = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %udata, i32 0, i32 3
  %6 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %context, align 4
  %db = getelementptr inbounds %struct.mlx4_ib_srq, ptr %srq, i32 0, i32 3
  tail call void @mlx4_ib_db_unmap_user(ptr noundef %7, ptr noundef %db) #8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %wrid = getelementptr inbounds %struct.mlx4_ib_srq, ptr %srq, i32 0, i32 4
  %8 = ptrtoint ptr %wrid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wrid, align 4
  tail call void @kvfree(ptr noundef %9) #8
  %10 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev2, align 8
  %max = getelementptr inbounds %struct.mlx4_ib_srq, ptr %srq, i32 0, i32 1, i32 2
  %12 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max, align 4
  %wqe_shift = getelementptr inbounds %struct.mlx4_ib_srq, ptr %srq, i32 0, i32 1, i32 4
  %14 = ptrtoint ptr %wqe_shift to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %wqe_shift, align 4
  %shl = shl i32 %13, %15
  %buf = getelementptr inbounds %struct.mlx4_ib_srq, ptr %srq, i32 0, i32 2
  tail call void @mlx4_buf_free(ptr noundef %11, i32 noundef %shl, ptr noundef %buf) #8
  %16 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev2, align 8
  %db11 = getelementptr inbounds %struct.mlx4_ib_srq, ptr %srq, i32 0, i32 3
  tail call void @mlx4_db_free(ptr noundef %17, ptr noundef %db11) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.true
  %umem = getelementptr inbounds %struct.mlx4_ib_srq, ptr %srq, i32 0, i32 9
  %18 = ptrtoint ptr %umem to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %umem, align 4
  tail call void @ib_umem_release(ptr noundef %19) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_srq_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx4_ib_free_srq_wqe(ptr noundef %srq, i32 noundef %wqe_index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.mlx4_ib_srq, ptr %srq, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %lock) #8
  %tail = getelementptr inbounds %struct.mlx4_ib_srq, ptr %srq, i32 0, i32 7
  %0 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tail, align 4
  %wqe_shift.i = getelementptr inbounds %struct.mlx4_ib_srq, ptr %srq, i32 0, i32 1, i32 4
  %2 = ptrtoint ptr %wqe_shift.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wqe_shift.i, align 4
  %shl.i = shl i32 %1, %3
  %nbufs.i.i = getelementptr inbounds %struct.mlx4_ib_srq, ptr %srq, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %nbufs.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nbufs.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.i.i = icmp eq i32 %5, 1
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %buf.i = getelementptr inbounds %struct.mlx4_ib_srq, ptr %srq, i32 0, i32 2
  %6 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buf.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %shl.i
  br label %get_wqe.exit

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %page_list.i.i = getelementptr inbounds %struct.mlx4_ib_srq, ptr %srq, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %page_list.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %page_list.i.i, align 4
  %shr.i.i = ashr i32 %shl.i, 12
  %arrayidx.i.i = getelementptr %struct.mlx4_buf_list, ptr %9, i32 %shr.i.i
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %shl.i, 4095
  %add.ptr3.i.i = getelementptr i8, ptr %11, i32 %and.i.i
  br label %get_wqe.exit

get_wqe.exit:                                     ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi ptr [ %add.ptr.i.i, %if.then.i.i ], [ %add.ptr3.i.i, %if.else.i.i ]
  %conv = trunc i32 %wqe_index to i16
  %next_wqe_index = getelementptr inbounds %struct.mlx4_wqe_srq_next_seg, ptr %retval.0.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %next_wqe_index to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv, ptr %next_wqe_index, align 2
  %13 = ptrtoint ptr %tail to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %wqe_index, ptr %tail, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx4_ib_post_srq_recv(ptr noundef %ibsrq, ptr noundef %wr, ptr nocapture noundef writeonly %bad_wr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ibsrq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ibsrq, align 4
  %lock = getelementptr inbounds %struct.mlx4_ib_srq, ptr %ibsrq, i32 0, i32 5
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %dev = getelementptr inbounds %struct.mlx4_ib_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %state = getelementptr inbounds %struct.mlx4_dev_persistent, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %state, align 4
  %8 = and i8 %7, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %for.cond.preheader, label %if.then

for.cond.preheader:                               ; preds = %entry
  %tobool8.not131 = icmp eq ptr %wr, null
  br i1 %tobool8.not131, label %for.cond.preheader.out_crit_edge, label %for.body.lr.ph

for.cond.preheader.out_crit_edge:                 ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %max_gs = getelementptr inbounds %struct.mlx4_ib_srq, ptr %ibsrq, i32 0, i32 1, i32 3
  %head = getelementptr inbounds %struct.mlx4_ib_srq, ptr %ibsrq, i32 0, i32 6
  %tail = getelementptr inbounds %struct.mlx4_ib_srq, ptr %ibsrq, i32 0, i32 7
  %wrid = getelementptr inbounds %struct.mlx4_ib_srq, ptr %ibsrq, i32 0, i32 4
  %wqe_shift.i = getelementptr inbounds %struct.mlx4_ib_srq, ptr %ibsrq, i32 0, i32 1, i32 4
  %nbufs.i.i = getelementptr inbounds %struct.mlx4_ib_srq, ptr %ibsrq, i32 0, i32 2, i32 2
  %page_list.i.i = getelementptr inbounds %struct.mlx4_ib_srq, ptr %ibsrq, i32 0, i32 2, i32 1
  %buf.i = getelementptr inbounds %struct.mlx4_ib_srq, ptr %ibsrq, i32 0, i32 2
  br label %for.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %bad_wr to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %wr, ptr %bad_wr, align 4
  br label %out

for.body:                                         ; preds = %for.inc57.for.body_crit_edge, %for.body.lr.ph
  %wr.addr.0133 = phi ptr [ %wr, %for.body.lr.ph ], [ %62, %for.inc57.for.body_crit_edge ]
  %nreq.0132 = phi i32 [ 0, %for.body.lr.ph ], [ %inc58, %for.inc57.for.body_crit_edge ]
  %num_sge = getelementptr inbounds %struct.ib_recv_wr, ptr %wr.addr.0133, i32 0, i32 3
  %10 = ptrtoint ptr %num_sge to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_sge, align 4
  %12 = ptrtoint ptr %max_gs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_gs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp9 = icmp sgt i32 %11, %13
  br i1 %cmp9, label %for.body.for.end60.sink.split_crit_edge, label %if.end14, !prof !35

for.body.for.end60.sink.split_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end60.sink.split

if.end14:                                         ; preds = %for.body
  %14 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %head, align 4
  %16 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp15 = icmp eq i32 %15, %17
  br i1 %cmp15, label %if.end14.for.end60.sink.split_crit_edge, label %if.end24, !prof !35

if.end14.for.end60.sink.split_crit_edge:          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end60.sink.split

if.end24:                                         ; preds = %if.end14
  %18 = getelementptr inbounds %struct.ib_recv_wr, ptr %wr.addr.0133, i32 0, i32 1
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %18, align 8
  %21 = ptrtoint ptr %wrid to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %wrid, align 4
  %arrayidx = getelementptr i64, ptr %22, i32 %15
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %20, ptr %arrayidx, align 8
  %24 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %head, align 4
  %26 = ptrtoint ptr %wqe_shift.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %wqe_shift.i, align 4
  %shl.i = shl i32 %25, %27
  %28 = ptrtoint ptr %nbufs.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nbufs.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp.i.i = icmp eq i32 %29, 1
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %buf.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %31, i32 %shl.i
  br label %get_wqe.exit

if.else.i.i:                                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %page_list.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %page_list.i.i, align 4
  %shr.i.i = ashr i32 %shl.i, 12
  %arrayidx.i.i = getelementptr %struct.mlx4_buf_list, ptr %33, i32 %shr.i.i
  %34 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %shl.i, 4095
  %add.ptr3.i.i = getelementptr i8, ptr %35, i32 %and.i.i
  br label %get_wqe.exit

get_wqe.exit:                                     ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi ptr [ %add.ptr.i.i, %if.then.i.i ], [ %add.ptr3.i.i, %if.else.i.i ]
  %next_wqe_index = getelementptr inbounds %struct.mlx4_wqe_srq_next_seg, ptr %retval.0.i.i, i32 0, i32 1
  %36 = ptrtoint ptr %next_wqe_index to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %next_wqe_index, align 2
  %conv28 = zext i16 %37 to i32
  %38 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %conv28, ptr %head, align 4
  %add.ptr = getelementptr %struct.mlx4_wqe_srq_next_seg, ptr %retval.0.i.i, i32 1
  %39 = ptrtoint ptr %num_sge to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %num_sge, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp32129 = icmp sgt i32 %40, 0
  br i1 %cmp32129, label %for.body34.lr.ph, label %get_wqe.exit.for.end_crit_edge

get_wqe.exit.for.end_crit_edge:                   ; preds = %get_wqe.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body34.lr.ph:                                 ; preds = %get_wqe.exit
  %sg_list = getelementptr inbounds %struct.ib_recv_wr, ptr %wr.addr.0133, i32 0, i32 2
  br label %for.body34

for.body34:                                       ; preds = %for.body34.for.body34_crit_edge, %for.body34.lr.ph
  %i.0130 = phi i32 [ 0, %for.body34.lr.ph ], [ %inc, %for.body34.for.body34_crit_edge ]
  %41 = ptrtoint ptr %sg_list to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %sg_list, align 8
  %length = getelementptr %struct.ib_sge, ptr %42, i32 %i.0130, i32 1
  %43 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %length, align 8
  %arrayidx36 = getelementptr %struct.mlx4_wqe_data_seg, ptr %add.ptr, i32 %i.0130
  %45 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %arrayidx36, align 8
  %46 = load ptr, ptr %sg_list, align 8
  %lkey = getelementptr %struct.ib_sge, ptr %46, i32 %i.0130, i32 2
  %47 = ptrtoint ptr %lkey to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %lkey, align 4
  %lkey40 = getelementptr inbounds %struct.mlx4_wqe_data_seg, ptr %arrayidx36, i32 0, i32 1
  %49 = ptrtoint ptr %lkey40 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %lkey40, align 4
  %50 = load ptr, ptr %sg_list, align 8
  %arrayidx42 = getelementptr %struct.ib_sge, ptr %50, i32 %i.0130
  %51 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %arrayidx42, align 8
  %addr44 = getelementptr inbounds %struct.mlx4_wqe_data_seg, ptr %arrayidx36, i32 0, i32 2
  %53 = ptrtoint ptr %addr44 to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %52, ptr %addr44, align 8
  %inc = add nuw nsw i32 %i.0130, 1
  %54 = ptrtoint ptr %num_sge to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %num_sge, align 4
  %cmp32 = icmp slt i32 %inc, %55
  br i1 %cmp32, label %for.body34.for.body34_crit_edge, label %for.body34.for.end_crit_edge

for.body34.for.end_crit_edge:                     ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body34.for.body34_crit_edge:                  ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body34

for.end:                                          ; preds = %for.body34.for.end_crit_edge, %get_wqe.exit.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %get_wqe.exit.for.end_crit_edge ], [ %inc, %for.body34.for.end_crit_edge ]
  %56 = ptrtoint ptr %max_gs to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %max_gs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %57)
  %cmp47 = icmp slt i32 %i.0.lcssa, %57
  br i1 %cmp47, label %if.then49, label %for.end.for.inc57_crit_edge

for.end.for.inc57_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc57

if.then49:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx50 = getelementptr %struct.mlx4_wqe_data_seg, ptr %add.ptr, i32 %i.0.lcssa
  %58 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %arrayidx50, align 8
  %lkey53 = getelementptr inbounds %struct.mlx4_wqe_data_seg, ptr %arrayidx50, i32 0, i32 1
  %59 = ptrtoint ptr %lkey53 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 256, ptr %lkey53, align 4
  %addr55 = getelementptr inbounds %struct.mlx4_wqe_data_seg, ptr %arrayidx50, i32 0, i32 2
  %60 = ptrtoint ptr %addr55 to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 0, ptr %addr55, align 8
  br label %for.inc57

for.inc57:                                        ; preds = %if.then49, %for.end.for.inc57_crit_edge
  %inc58 = add i32 %nreq.0132, 1
  %61 = ptrtoint ptr %wr.addr.0133 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %wr.addr.0133, align 8
  %tobool8.not = icmp eq ptr %62, null
  br i1 %tobool8.not, label %for.inc57.for.end60_crit_edge, label %for.inc57.for.body_crit_edge

for.inc57.for.body_crit_edge:                     ; preds = %for.inc57
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc57.for.end60_crit_edge:                    ; preds = %for.inc57
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end60

for.end60.sink.split:                             ; preds = %if.end14.for.end60.sink.split_crit_edge, %for.body.for.end60.sink.split_crit_edge
  %err.0.ph = phi i32 [ -22, %for.body.for.end60.sink.split_crit_edge ], [ -12, %if.end14.for.end60.sink.split_crit_edge ]
  %63 = ptrtoint ptr %bad_wr to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %wr.addr.0133, ptr %bad_wr, align 4
  br label %for.end60

for.end60:                                        ; preds = %for.end60.sink.split, %for.inc57.for.end60_crit_edge
  %nreq.0128 = phi i32 [ %nreq.0132, %for.end60.sink.split ], [ %inc58, %for.inc57.for.end60_crit_edge ]
  %err.0 = phi i32 [ %err.0.ph, %for.end60.sink.split ], [ 0, %for.inc57.for.end60_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nreq.0128)
  %tobool61.not = icmp eq i32 %nreq.0128, 0
  br i1 %tobool61.not, label %for.end60.out_crit_edge, label %if.then68, !prof !35

for.end60.out_crit_edge:                          ; preds = %for.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then68:                                        ; preds = %for.end60
  call void @__sanitizer_cov_trace_pc() #10
  %wqe_ctr = getelementptr inbounds %struct.mlx4_ib_srq, ptr %ibsrq, i32 0, i32 8
  %64 = ptrtoint ptr %wqe_ctr to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %wqe_ctr, align 4
  %66 = trunc i32 %nreq.0128 to i16
  %conv70 = add i16 %65, %66
  store i16 %conv70, ptr %wqe_ctr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !38
  tail call void @arm_heavy_mb() #8
  %67 = ptrtoint ptr %wqe_ctr to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %wqe_ctr, align 4
  %conv75 = zext i16 %68 to i32
  %db = getelementptr inbounds %struct.mlx4_ib_srq, ptr %ibsrq, i32 0, i32 3
  %69 = ptrtoint ptr %db to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %db, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %conv75, ptr %70, align 4
  br label %out

out:                                              ; preds = %if.then68, %for.end60.out_crit_edge, %if.then, %for.cond.preheader.out_crit_edge
  %err.1 = phi i32 [ -5, %if.then ], [ %err.0, %if.then68 ], [ %err.0, %for.end60.out_crit_edge ], [ 0, %for.cond.preheader.out_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #8
  ret i32 %err.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind readnone }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !13, !15, !16, !17, !18}
!llvm.named.register.sp = !{!19}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @mlx4_ib_create_srq.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/hw/mlx4/srq.c", i32 98, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @mlx4_ib_create_srq.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/infiniband/hw/mlx4/srq.c", i32 99, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = distinct !{null, !7, !"__already_done", i1 false, i1 false}
!7 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!8 = distinct !{null, !7, !"<string literal>", i1 false, i1 false}
!9 = distinct !{null, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/infiniband/hw/mlx4/srq.c", i32 63, i32 4}
!15 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @mlx4_ib_srq_event._entry, !14, !"_entry", i1 false, i1 false}
!18 = !{ptr @mlx4_ib_srq_event._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!19 = !{!"sp"}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{i32 0, i32 33}
!30 = !{i64 2152342982, i64 2152343007}
!31 = !{!"branch_weights", i32 2000, i32 1}
!32 = !{i64 4838537}
!33 = !{i64 4838734}
!34 = !{i64 2152323967}
!35 = !{!"branch_weights", i32 1, i32 2000}
!36 = !{i64 2152343663, i64 2152343688}
!37 = !{!"auto-init"}
!38 = !{i64 2158604860}
