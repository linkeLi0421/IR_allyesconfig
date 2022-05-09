; ModuleID = '/llk/IR_all_yes/drivers/infiniband/hw/mlx4/cq.c_pt.bc'
source_filename = "../drivers/infiniband/hw/mlx4/cq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.mlx4_ib_dev = type { %struct.ib_device, ptr, i32, ptr, %struct.mlx4_uar, i32, %struct.spinlock, [2 x [2 x ptr]], [2 x ptr], %struct.spinlock, [2 x %struct.atomic64_t], %struct.mlx4_ib_sriov, %struct.mutex, i8, %struct.mlx4_ib_iboe, [2 x %struct.mlx4_ib_counters], ptr, ptr, ptr, [128 x ptr], [2 x %struct.mlx4_ib_iov_port], %struct.pkey_mgt, ptr, i32, i32, i32, [2 x ptr], [2 x %struct.mutex], i8, %struct.spinlock, %struct.list_head, [2 x %struct.mlx4_ib_diag_counters] }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.173, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%union.anon.173 = type { %struct.ib_core_device }
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
%struct.ib_odp_caps = type { i64, %struct.anon.162 }
%struct.anon.162 = type { i32, i32, i32, i32 }
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
%struct.mlx4_ib_cq = type { %struct.ib_cq, %struct.mlx4_cq, %struct.mlx4_ib_cq_buf, ptr, %struct.mlx4_db, %struct.spinlock, %struct.mutex, ptr, ptr, i32, %struct.list_head, %struct.list_head }
%struct.ib_cq = type { ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.atomic_t, i32, ptr, %struct.list_head, %union.anon.185, ptr, ptr, i64, i8, i32, %struct.rdma_restrack_entry }
%union.anon.185 = type { %struct.work_struct }
%struct.rdma_restrack_entry = type { i8, i8, %struct.kref, %struct.completion, ptr, ptr, i32, i8, i32 }
%struct.mlx4_cq = type { ptr, ptr, ptr, i32, i16, ptr, ptr, i32, i32, i32, %struct.refcount_struct, %struct.completion, %struct.anon.186, i32, %struct.list_head, i8 }
%struct.anon.186 = type { %struct.list_head, ptr, ptr }
%struct.mlx4_ib_cq_buf = type { %struct.mlx4_buf, %struct.mlx4_mtt, i32 }
%struct.mlx4_buf = type { %struct.mlx4_buf_list, ptr, i32, i32, i32 }
%struct.mlx4_buf_list = type { ptr, i32 }
%struct.mlx4_mtt = type { i32, i32, i32 }
%struct.mlx4_db = type { ptr, %union.anon.187, i32, i32, i32 }
%union.anon.187 = type { ptr }
%struct.mlx4_ib_create_cq = type { i64, i64 }
%struct.ib_cq_init_attr = type { i32, i32, i32 }
%struct.uverbs_attr_bundle = type { %struct.ib_udata, %struct.ib_udata, ptr, ptr, ptr, [2 x i32], [0 x %struct.uverbs_attr] }
%struct.ib_udata = type { ptr, ptr, i32, i32 }
%struct.uverbs_attr = type { %union.anon.168 }
%union.anon.168 = type { %struct.uverbs_ptr_attr }
%struct.uverbs_ptr_attr = type { %union.anon.169, i16, i16, i8 }
%union.anon.169 = type { i64 }
%struct.mlx4_dev = type { ptr, i32, i32, %struct.mlx4_caps, %struct.mlx4_phys_caps, %struct.mlx4_quotas, %struct.xarray, i8, i8, [64 x i8], i32, i32, [3 x i64], [3 x i64], ptr, i8 }
%struct.mlx4_caps = type { i64, i32, i32, [3 x i32], [3 x i32], [3 x i32], [3 x i64], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i64], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i16, [3 x i8], i32, i32, [5 x i32], i32, [5 x i32], i32, i32, [3 x i32], [3 x i8], [3 x i8], [3 x i8], [3 x i32], [3 x i32], i32, [3 x i8], i16, i32, i32, i8, i32, i32, i16, [3 x i64], i32, [3 x i8], [3 x i8], i8, i32, i32, i32, [3 x i8], %struct.mlx4_rate_limit_caps, i32, i8 }
%struct.mlx4_rate_limit_caps = type { i16, i8, i16, i8, i16 }
%struct.mlx4_phys_caps = type { [3 x i32], [3 x i32], i32, i32, i32, i32 }
%struct.mlx4_quotas = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.mlx4_ib_ucontext = type { %struct.ib_ucontext, %struct.mlx4_uar, %struct.list_head, %struct.mutex, %struct.list_head, %struct.mutex }
%struct.ib_ucontext = type { ptr, ptr, %struct.ib_rdmacg_object, %struct.rdma_restrack_entry, %struct.xarray }
%struct.ib_rdmacg_object = type { ptr }
%struct.ib_event = type { ptr, %union.anon.129, i32 }
%union.anon.129 = type { ptr }
%struct.mlx4_ib_resize_cq = type { i64 }
%struct.mlx4_ib_cq_resize = type { %struct.mlx4_ib_cq_buf, i32 }
%struct.mlx4_cqe = type { i32, i32, i32, i16, %union.anon.192, i32, i16, i16, [3 x i8], i8 }
%union.anon.192 = type { %struct.anon.193 }
%struct.anon.193 = type { i16, i16, i8, i8 }
%struct.mlx4_dev_persistent = type { ptr, ptr, [3 x i32], i32, [3 x i32], [3 x i32], %struct.work_struct, ptr, %struct.mutex, i8, %struct.mutex, i8, %struct.mutex, i32, %struct.mlx4_fw_crdump }
%struct.mlx4_fw_crdump = type { i8, ptr, ptr }
%struct.ib_wc = type { %union.anon.158, i32, i32, i32, i32, ptr, %union.anon.159, i32, i32, i32, i16, i8, i8, i32, [6 x i8], i16, i8 }
%union.anon.158 = type { i64 }
%union.anon.159 = type { i32 }
%struct.mlx4_ib_qp = type { %union.anon.190, %struct.mlx4_qp, %struct.mlx4_buf, %struct.mlx4_db, %struct.mlx4_ib_wq, i32, i32, i32, i32, %struct.mlx4_ib_wq, i32, ptr, %struct.mlx4_mtt, i32, %struct.mutex, i16, i32, i8, i8, i8, i8, i8, i8, i32, i32, %struct.list_head, %struct.list_head, ptr, %struct.mlx4_roce_smac_vlan_info, %struct.mlx4_roce_smac_vlan_info, i64, %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, i32, %union.anon.191 }
%union.anon.190 = type { %struct.ib_qp }
%struct.ib_qp = type { ptr, ptr, ptr, ptr, %struct.spinlock, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, %struct.atomic_t, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i8, %struct.rdma_restrack_entry, ptr }
%struct.mlx4_qp = type { ptr, i32, %struct.refcount_struct, %struct.completion, i8 }
%struct.mlx4_ib_wq = type { ptr, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32 }
%struct.mlx4_roce_smac_vlan_info = type { i64, i32, i32, i64, i32, i32, i16, i32, i32, i16, i32, i32, i32 }
%union.anon.191 = type { ptr }
%struct.mlx4_ib_srq = type { %struct.ib_srq, %struct.mlx4_srq, %struct.mlx4_buf, %struct.mlx4_db, ptr, %struct.spinlock, i32, i32, i16, ptr, %struct.mlx4_mtt, %struct.mutex }
%struct.ib_srq = type { ptr, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.anon.130, %struct.rdma_restrack_entry }
%struct.anon.130 = type { ptr, %union.anon.131 }
%union.anon.131 = type { %struct.anon.132 }
%struct.anon.132 = type { ptr, i32 }
%struct.mlx4_srq = type { ptr, i32, i32, i32, i32, %struct.refcount_struct, %struct.completion }
%struct.mlx4_ib_buf = type { ptr, i32 }
%struct.mlx4_ib_proxy_sqp_hdr = type { %struct.ib_grh, %struct.mlx4_rcv_tunnel_hdr }
%struct.ib_grh = type { i32, i16, i8, i8, %union.ib_gid, %union.ib_gid }
%struct.mlx4_rcv_tunnel_hdr = type { i32, i8, i8, i16, i16, i16, i32 }
%struct.mlx4_err_cqe = type { i32, [5 x i32], i16, i8, i8, [3 x i8], i8 }

@mlx4_ib_create_cq.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&cq->resize_mutex\00", [46 x i8] zeroinitializer }, align 32
@mlx4_ib_create_cq.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&cq->lock\00", [22 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@mlx4_ib_cq_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 56, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\014<mlx4_ib> %s: Unexpected event type %d on CQ %06x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mlx4_ib_cq_event\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/infiniband/hw/mlx4/cq.c\00", [32 x i8] zeroinitializer }, align 32
@mlx4_ib_cq_event._entry_ptr = internal global ptr @mlx4_ib_cq_event._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mlx4_ib_handle_error_cqe.__UNIQUE_ID_ddebug509 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.10, ptr @.str.8, ptr @.str.11, i8 0, i8 -127, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mlx4_ib\00", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mlx4_ib_handle_error_cqe\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"local QP operation err (QPN %06x, WQE index %x, vendor syndrome %02x, opcode = %02x)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [100 x i8], [60 x i8] } { [100 x i8] c"<mlx4_ib> %s: local QP operation err (QPN %06x, WQE index %x, vendor syndrome %02x, opcode = %02x)\0A\00", [60 x i8] zeroinitializer }, align 32
@dump_cqe.__UNIQUE_ID_ddebug508 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.13, ptr @.str.8, ptr @.str.14, i8 0, i8 126, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dump_cqe\00", [23 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"CQE contents %08x %08x %08x %08x %08x %08x %08x %08x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"<mlx4_ib> %s: CQE contents %08x %08x %08x %08x %08x %08x %08x %08x\0A\00", [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [15 x i64] [i64 13, i64 32, i64 1, i64 8, i64 9, i64 10, i64 11, i64 14, i64 16, i64 17, i64 18, i64 20, i64 21, i64 25, i64 27]
@__sancov_gen_cov_switch_values.16 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.17 = internal global [15 x i64] [i64 13, i64 8, i64 1, i64 2, i64 4, i64 5, i64 6, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 34]
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 196, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 197, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 156, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 55, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 514, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.64 = private constant [35 x i8] c"../drivers/infiniband/hw/mlx4/cq.c\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 504, i32 2 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @mlx4_ib_cq_event._entry, ptr @mlx4_ib_cq_event._entry_ptr, ptr @mlx4_ib_create_cq.__key, ptr @.str, ptr @mlx4_ib_create_cq.__key.1, ptr @.str.2, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_ib_create_cq.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_ib_create_cq.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_ib_cq_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx4_ib_modify_cq(ptr noundef %cq, i16 noundef zeroext %cq_count, i16 noundef zeroext %cq_period) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cq, align 8
  %dev2 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev2, align 8
  %mcq3 = getelementptr inbounds %struct.mlx4_ib_cq, ptr %cq, i32 0, i32 1
  %call4 = tail call i32 @mlx4_cq_modify(ptr noundef %3, ptr noundef %mcq3, i16 noundef zeroext %cq_count, i16 noundef zeroext %cq_period) #9
  ret i32 %call4
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_cq_modify(ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx4_ib_create_cq(ptr noundef %ibcq, ptr nocapture noundef readonly %attr, ptr noundef %udata) local_unnamed_addr #0 align 64 {
entry:
  %ucmd = alloca %struct.mlx4_ib_create_cq, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ibcq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ibcq, align 8
  %2 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %attr, align 4
  %comp_vector = getelementptr inbounds %struct.ib_cq_init_attr, ptr %attr, i32 0, i32 1
  %4 = ptrtoint ptr %comp_vector to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %comp_vector, align 4
  %tobool = icmp ne ptr %udata, null
  br i1 %tobool, label %cond.true, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %context3 = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %udata, i32 0, i32 3
  %6 = ptrtoint ptr %context3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %context3, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %7, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp slt i32 %3, 1
  br i1 %cmp, label %cond.end.cleanup153_crit_edge, label %lor.lhs.false

cond.end.cleanup153_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup153

lor.lhs.false:                                    ; preds = %cond.end
  %dev4 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev4, align 8
  %max_cqes = getelementptr inbounds %struct.mlx4_dev, ptr %9, i32 0, i32 3, i32 34
  %10 = ptrtoint ptr %max_cqes to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_cqes, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %11)
  %cmp5 = icmp sgt i32 %3, %11
  br i1 %cmp5, label %lor.lhs.false.cleanup153_crit_edge, label %if.end

lor.lhs.false.cleanup153_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup153

if.end:                                           ; preds = %lor.lhs.false
  %flags = getelementptr inbounds %struct.ib_cq_init_attr, ptr %attr, i32 0, i32 2
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %tobool6.not = icmp ult i32 %13, 2
  br i1 %tobool6.not, label %cond.end38, label %if.end.cleanup153_crit_edge

if.end.cleanup153_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup153

cond.end38:                                       ; preds = %if.end
  %14 = tail call i32 @llvm.ctlz.i32(i32 %3, i1 true) #9, !range !40
  %sub.i.i.i = sub nuw nsw i32 32, %14
  %cond39 = shl nuw i32 1, %sub.i.i.i
  %sub40 = add i32 %cond39, -1
  %cqe42 = getelementptr inbounds %struct.ib_cq, ptr %ibcq, i32 0, i32 5
  %15 = ptrtoint ptr %cqe42 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %sub40, ptr %cqe42, align 4
  %resize_mutex = getelementptr inbounds %struct.mlx4_ib_cq, ptr %ibcq, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %resize_mutex, ptr noundef nonnull @.str, ptr noundef nonnull @mlx4_ib_create_cq.__key) #9
  %lock = getelementptr inbounds %struct.mlx4_ib_cq, ptr %ibcq, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @mlx4_ib_create_cq.__key.1, i16 noundef signext 3) #9
  %resize_buf = getelementptr inbounds %struct.mlx4_ib_cq, ptr %ibcq, i32 0, i32 3
  %16 = ptrtoint ptr %resize_buf to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %resize_buf, align 4
  %resize_umem = getelementptr inbounds %struct.mlx4_ib_cq, ptr %ibcq, i32 0, i32 8
  %17 = ptrtoint ptr %resize_umem to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %resize_umem, align 8
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags, align 4
  %create_flags = getelementptr inbounds %struct.mlx4_ib_cq, ptr %ibcq, i32 0, i32 9
  %20 = ptrtoint ptr %create_flags to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %create_flags, align 4
  %send_qp_list = getelementptr inbounds %struct.mlx4_ib_cq, ptr %ibcq, i32 0, i32 10
  %21 = ptrtoint ptr %send_qp_list to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %send_qp_list, ptr %send_qp_list, align 4
  %prev.i = getelementptr inbounds %struct.mlx4_ib_cq, ptr %ibcq, i32 0, i32 10, i32 1
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %send_qp_list, ptr %prev.i, align 4
  %recv_qp_list = getelementptr inbounds %struct.mlx4_ib_cq, ptr %ibcq, i32 0, i32 11
  %23 = ptrtoint ptr %recv_qp_list to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %recv_qp_list, ptr %recv_qp_list, align 4
  %prev.i246 = getelementptr inbounds %struct.mlx4_ib_cq, ptr %ibcq, i32 0, i32 11, i32 1
  %24 = ptrtoint ptr %prev.i246 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %recv_qp_list, ptr %prev.i246, align 4
  br i1 %tobool, label %if.then49, label %if.else

if.then49:                                        ; preds = %cond.end38
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ucmd) #9
  %25 = getelementptr inbounds %struct.mlx4_ib_create_cq, ptr %ucmd, i32 0, i32 1
  %26 = call ptr @memset(ptr %ucmd, i32 255, i32 16)
  %27 = ptrtoint ptr %udata to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %udata, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 156) #9
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i.i, label %if.then49.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then49.if.then11.i.i.i_crit_edge:              ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then49
  %29 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %28, i32 16, i32 -1226833920) #12, !srcloc !41
  %asmresult.i.i.i = extractvalue { i32, i32 } %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !42

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %ucmd, i32 noundef 16) #9
  %30 = call i32 @llvm.read_register.i32(metadata !30) #9
  %and.i.i.i.i.i.i.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 4
  %32 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #6, !srcloc !43
  %and.i.i.i.i.i = and i32 %32, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #9, !srcloc !44
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !45
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %ucmd, ptr noundef %28, i32 noundef 16) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %32) #9, !srcloc !44
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end53, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !42

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %if.then49.if.then11.i.i.i_crit_edge
  %res.0.i.i.i250 = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 16, %if.then49.if.then11.i.i.i_crit_edge ], [ 16, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i247 = sub i32 16, %res.0.i.i.i250
  %add.ptr.i.i.i = getelementptr i8, ptr %ucmd, i32 %sub.i.i.i247
  %33 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i.i250)
  br label %cleanup.thread

if.end53:                                         ; preds = %if.end.i.i.i
  %34 = ptrtoint ptr %ucmd to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %ucmd, align 8
  %conv55 = trunc i64 %35 to i32
  %36 = inttoptr i32 %conv55 to ptr
  %buf = getelementptr inbounds %struct.mlx4_ib_cq, ptr %ibcq, i32 0, i32 2
  %umem = getelementptr inbounds %struct.mlx4_ib_cq, ptr %ibcq, i32 0, i32 7
  %call57 = call fastcc i32 @mlx4_ib_get_cq_umem(ptr noundef %1, ptr noundef %buf, ptr noundef %umem, i64 noundef %35, i32 noundef %cond39)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end60, label %if.end53.cleanup.thread_crit_edge

if.end53.cleanup.thread_crit_edge:                ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

if.end60:                                         ; preds = %if.end53
  %37 = ptrtoint ptr %25 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %25, align 8
  %conv61 = trunc i64 %38 to i32
  %db = getelementptr inbounds %struct.mlx4_ib_cq, ptr %ibcq, i32 0, i32 4
  %call62 = call i32 @mlx4_ib_db_map_user(ptr noundef nonnull %udata, i32 noundef %conv61, ptr noundef %db) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %cleanup.thread256, label %cleanup

cleanup.thread256:                                ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  %uar66 = getelementptr inbounds %struct.mlx4_ib_ucontext, ptr %cond, i32 0, i32 1
  %usage = getelementptr inbounds %struct.mlx4_ib_cq, ptr %ibcq, i32 0, i32 1, i32 15
  %39 = ptrtoint ptr %usage to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 2, ptr %usage, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ucmd) #9
  br label %if.end93

cleanup.thread:                                   ; preds = %if.end53.cleanup.thread_crit_edge, %if.then11.i.i.i
  %err.0.ph = phi i32 [ %call57, %if.end53.cleanup.thread_crit_edge ], [ -14, %if.then11.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ucmd) #9
  br label %cleanup153

cleanup:                                          ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ucmd) #9
  br label %err_mtt

if.else:                                          ; preds = %cond.end38
  %40 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev4, align 8
  %db68 = getelementptr inbounds %struct.mlx4_ib_cq, ptr %ibcq, i32 0, i32 4
  %call69 = tail call i32 @mlx4_db_alloc(ptr noundef %41, ptr noundef %db68, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end72, label %if.else.cleanup153_crit_edge

if.else.cleanup153_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup153

if.end72:                                         ; preds = %if.else
  %42 = ptrtoint ptr %db68 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %db68, align 8
  %set_ci_db = getelementptr inbounds %struct.mlx4_ib_cq, ptr %ibcq, i32 0, i32 1, i32 5
  %44 = ptrtoint ptr %set_ci_db to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %43, ptr %set_ci_db, align 4
  %add.ptr78 = getelementptr i32, ptr %43, i32 1
  %arm_db = getelementptr inbounds %struct.mlx4_ib_cq, ptr %ibcq, i32 0, i32 1, i32 6
  %45 = ptrtoint ptr %arm_db to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %add.ptr78, ptr %arm_db, align 8
  %46 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %43, align 4
  %47 = load ptr, ptr %arm_db, align 8
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %47, align 4
  %buf84 = getelementptr inbounds %struct.mlx4_ib_cq, ptr %ibcq, i32 0, i32 2
  %call85 = tail call fastcc i32 @mlx4_ib_alloc_cq_buf(ptr noundef %1, ptr noundef %buf84, i32 noundef %cond39)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.end88, label %if.end72.if.then149_crit_edge

if.end72.if.then149_crit_edge:                    ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then149

if.end88:                                         ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  %priv_uar = getelementptr inbounds %struct.mlx4_ib_dev, ptr %1, i32 0, i32 4
  %usage92 = getelementptr inbounds %struct.mlx4_ib_cq, ptr %ibcq, i32 0, i32 1, i32 15
  %49 = ptrtoint ptr %usage92 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %usage92, align 8
  br label %if.end93

if.end93:                                         ; preds = %if.end88, %cleanup.thread256
  %uar.1 = phi ptr [ %priv_uar, %if.end88 ], [ %uar66, %cleanup.thread256 ]
  %buf_addr.1 = phi ptr [ %buf84, %if.end88 ], [ %36, %cleanup.thread256 ]
  %eq_table = getelementptr inbounds %struct.mlx4_ib_dev, ptr %1, i32 0, i32 16
  %50 = ptrtoint ptr %eq_table to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %eq_table, align 8
  %tobool94.not = icmp eq ptr %51, null
  br i1 %tobool94.not, label %if.end93.if.end97_crit_edge, label %if.then95

if.end93.if.end97_crit_edge:                      ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end97

if.then95:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #11
  %num_comp_vectors = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 12
  %52 = ptrtoint ptr %num_comp_vectors to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %num_comp_vectors, align 4
  %rem = srem i32 %5, %53
  %arrayidx = getelementptr i32, ptr %51, i32 %rem
  %54 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx, align 4
  br label %if.end97

if.end97:                                         ; preds = %if.then95, %if.end93.if.end97_crit_edge
  %vector.0 = phi i32 [ %55, %if.then95 ], [ %5, %if.end93.if.end97_crit_edge ]
  %56 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev4, align 8
  %mtt = getelementptr inbounds %struct.mlx4_ib_cq, ptr %ibcq, i32 0, i32 2, i32 1
  %db100 = getelementptr inbounds %struct.mlx4_ib_cq, ptr %ibcq, i32 0, i32 4
  %dma = getelementptr inbounds %struct.mlx4_ib_cq, ptr %ibcq, i32 0, i32 4, i32 2
  %58 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %dma, align 8
  %conv101 = zext i32 %59 to i64
  %mcq102 = getelementptr inbounds %struct.mlx4_ib_cq, ptr %ibcq, i32 0, i32 1
  %60 = ptrtoint ptr %create_flags to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %create_flags, align 4
  %and104 = and i32 %61, 1
  %call112 = call i32 @mlx4_cq_alloc(ptr noundef %57, i32 noundef %cond39, ptr noundef %mtt, ptr noundef %uar.1, i64 noundef %conv101, ptr noundef %mcq102, i32 noundef %vector.0, i32 noundef 0, i32 noundef %and104, ptr noundef %buf_addr.1, i1 noundef zeroext %tobool) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112)
  %tobool113.not = icmp eq i32 %call112, 0
  br i1 %tobool113.not, label %if.end115, label %err_dbmap

if.end115:                                        ; preds = %if.end97
  br i1 %tobool, label %if.then117, label %if.else119

if.then117:                                       ; preds = %if.end115
  %comp = getelementptr inbounds %struct.mlx4_ib_cq, ptr %ibcq, i32 0, i32 1, i32 12, i32 1
  %62 = ptrtoint ptr %comp to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @mlx4_ib_cq_comp, ptr %comp, align 4
  %event.c245 = getelementptr inbounds %struct.mlx4_ib_cq, ptr %ibcq, i32 0, i32 1, i32 1
  %63 = ptrtoint ptr %event.c245 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @mlx4_ib_cq_event, ptr %event.c245, align 4
  %cqn = getelementptr inbounds %struct.mlx4_ib_cq, ptr %ibcq, i32 0, i32 1, i32 8
  %call127 = call fastcc i32 @ib_copy_to_udata(ptr noundef nonnull %udata, ptr noundef %cqn)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call127)
  %tobool128.not = icmp eq i32 %call127, 0
  br i1 %tobool128.not, label %if.then117.cleanup153_crit_edge, label %err_dbmap.thread

if.then117.cleanup153_crit_edge:                  ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup153

if.else119:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #11
  %64 = ptrtoint ptr %mcq102 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @mlx4_ib_cq_comp, ptr %mcq102, align 8
  %event.c = getelementptr inbounds %struct.mlx4_ib_cq, ptr %ibcq, i32 0, i32 1, i32 1
  %65 = ptrtoint ptr %event.c to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @mlx4_ib_cq_event, ptr %event.c, align 4
  br label %cleanup153

err_dbmap.thread:                                 ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #11
  %66 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev4, align 8
  call void @mlx4_cq_free(ptr noundef %67, ptr noundef %mcq102) #9
  br label %if.then135

err_dbmap:                                        ; preds = %if.end97
  br i1 %tobool, label %err_dbmap.if.then135_crit_edge, label %err_dbmap.err_mtt_crit_edge

err_dbmap.err_mtt_crit_edge:                      ; preds = %err_dbmap
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_mtt

err_dbmap.if.then135_crit_edge:                   ; preds = %err_dbmap
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then135

if.then135:                                       ; preds = %err_dbmap.if.then135_crit_edge, %err_dbmap.thread
  %err.1262 = phi i32 [ -14, %err_dbmap.thread ], [ %call112, %err_dbmap.if.then135_crit_edge ]
  call void @mlx4_ib_db_unmap_user(ptr noundef %cond, ptr noundef %db100) #9
  br label %err_mtt

err_mtt:                                          ; preds = %if.then135, %err_dbmap.err_mtt_crit_edge, %cleanup
  %err.2 = phi i32 [ %call62, %cleanup ], [ %err.1262, %if.then135 ], [ %call112, %err_dbmap.err_mtt_crit_edge ]
  %68 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev4, align 8
  %mtt140 = getelementptr inbounds %struct.mlx4_ib_cq, ptr %ibcq, i32 0, i32 2, i32 1
  call void @mlx4_mtt_cleanup(ptr noundef %69, ptr noundef %mtt140) #9
  %umem141 = getelementptr inbounds %struct.mlx4_ib_cq, ptr %ibcq, i32 0, i32 7
  %70 = ptrtoint ptr %umem141 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %umem141, align 4
  call void @ib_umem_release(ptr noundef %71) #9
  br i1 %tobool, label %err_mtt.cleanup153_crit_edge, label %if.then143

err_mtt.cleanup153_crit_edge:                     ; preds = %err_mtt
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup153

if.then143:                                       ; preds = %err_mtt
  call void @__sanitizer_cov_trace_pc() #11
  %buf139 = getelementptr inbounds %struct.mlx4_ib_cq, ptr %ibcq, i32 0, i32 2
  %72 = ptrtoint ptr %cqe42 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %cqe42, align 4
  %74 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev4, align 8
  %add.i = add i32 %73, 1
  %entry_size.i = getelementptr inbounds %struct.mlx4_ib_cq, ptr %ibcq, i32 0, i32 2, i32 2
  %76 = ptrtoint ptr %entry_size.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %entry_size.i, align 4
  %mul.i = mul i32 %77, %add.i
  call void @mlx4_buf_free(ptr noundef %75, i32 noundef %mul.i, ptr noundef %buf139) #9
  br label %if.then149

if.then149:                                       ; preds = %if.then143, %if.end72.if.then149_crit_edge
  %err.3.ph = phi i32 [ %call85, %if.end72.if.then149_crit_edge ], [ %err.2, %if.then143 ]
  %78 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev4, align 8
  %db151 = getelementptr inbounds %struct.mlx4_ib_cq, ptr %ibcq, i32 0, i32 4
  call void @mlx4_db_free(ptr noundef %79, ptr noundef %db151) #9
  br label %cleanup153

cleanup153:                                       ; preds = %if.then149, %err_mtt.cleanup153_crit_edge, %if.else119, %if.then117.cleanup153_crit_edge, %if.else.cleanup153_crit_edge, %cleanup.thread, %if.end.cleanup153_crit_edge, %lor.lhs.false.cleanup153_crit_edge, %cond.end.cleanup153_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup153_crit_edge ], [ -22, %cond.end.cleanup153_crit_edge ], [ -22, %if.end.cleanup153_crit_edge ], [ 0, %if.else119 ], [ 0, %if.then117.cleanup153_crit_edge ], [ %err.3.ph, %if.then149 ], [ %call69, %if.else.cleanup153_crit_edge ], [ %err.0.ph, %cleanup.thread ], [ %err.2, %err_mtt.cleanup153_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx4_ib_get_cq_umem(ptr noundef %dev, ptr noundef %buf, ptr nocapture noundef %umem, i64 noundef %buf_addr, i32 noundef %cqe) unnamed_addr #0 align 64 {
entry:
  %n = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %cqe_size2 = getelementptr inbounds %struct.mlx4_dev, ptr %1, i32 0, i32 3, i32 83
  %2 = ptrtoint ptr %cqe_size2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cqe_size2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #9
  %4 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %n, align 4, !annotation !46
  %conv = trunc i64 %buf_addr to i32
  %mul = mul i32 %3, %cqe
  %call = tail call ptr @ib_umem_get(ptr noundef %dev, i32 noundef %conv, i32 noundef %mul, i32 noundef 1) #9
  %5 = ptrtoint ptr %umem to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call, ptr %umem, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = call i32 @mlx4_ib_umem_calc_optimal_mtt_size(ptr noundef %call, i64 noundef 0, ptr noundef nonnull %n) #9
  %7 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev1, align 8
  %9 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %n, align 4
  %mtt = getelementptr inbounds %struct.mlx4_ib_cq_buf, ptr %buf, i32 0, i32 1
  %call7 = call i32 @mlx4_mtt_init(ptr noundef %8, i32 noundef %10, i32 noundef %call5, ptr noundef %mtt) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end9, label %if.end.err_buf_crit_edge

if.end.err_buf_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_buf

if.end9:                                          ; preds = %if.end
  %11 = ptrtoint ptr %umem to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %umem, align 4
  %call11 = call i32 @mlx4_ib_umem_write_mtt(ptr noundef %dev, ptr noundef %mtt, ptr noundef %12) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end9.cleanup_crit_edge, label %err_mtt

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

err_mtt:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev1, align 8
  call void @mlx4_mtt_cleanup(ptr noundef %14, ptr noundef %mtt) #9
  br label %err_buf

err_buf:                                          ; preds = %err_mtt, %if.end.err_buf_crit_edge
  %err.0 = phi i32 [ %call7, %if.end.err_buf_crit_edge ], [ %call11, %err_mtt ]
  %15 = ptrtoint ptr %umem to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %umem, align 4
  call void @ib_umem_release(ptr noundef %16) #9
  br label %cleanup

cleanup:                                          ; preds = %err_buf, %if.end9.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %6, %if.then ], [ %err.0, %err_buf ], [ 0, %if.end9.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_ib_db_map_user(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_db_alloc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx4_ib_alloc_cq_buf(ptr nocapture noundef readonly %dev, ptr noundef %buf, i32 noundef %nent) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %cqe_size = getelementptr inbounds %struct.mlx4_dev, ptr %1, i32 0, i32 3, i32 83
  %2 = ptrtoint ptr %cqe_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cqe_size, align 4
  %mul = mul i32 %3, %nent
  %call = tail call i32 @mlx4_buf_alloc(ptr noundef %1, i32 noundef %mul, i32 noundef 8192, ptr noundef %buf) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 8
  %cqe_size6 = getelementptr inbounds %struct.mlx4_dev, ptr %5, i32 0, i32 3, i32 83
  %6 = ptrtoint ptr %cqe_size6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cqe_size6, align 4
  %entry_size = getelementptr inbounds %struct.mlx4_ib_cq_buf, ptr %buf, i32 0, i32 2
  %8 = ptrtoint ptr %entry_size to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %entry_size, align 4
  %9 = load ptr, ptr %dev1, align 8
  %npages = getelementptr inbounds %struct.mlx4_buf, ptr %buf, i32 0, i32 3
  %10 = ptrtoint ptr %npages to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %npages, align 4
  %page_shift = getelementptr inbounds %struct.mlx4_buf, ptr %buf, i32 0, i32 4
  %12 = ptrtoint ptr %page_shift to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %page_shift, align 4
  %mtt = getelementptr inbounds %struct.mlx4_ib_cq_buf, ptr %buf, i32 0, i32 1
  %call10 = tail call i32 @mlx4_mtt_init(ptr noundef %9, i32 noundef %11, i32 noundef %13, ptr noundef %mtt) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end.err_buf_crit_edge

if.end.err_buf_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_buf

if.end13:                                         ; preds = %if.end
  %14 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev1, align 8
  %call17 = tail call i32 @mlx4_buf_write_mtt(ptr noundef %15, ptr noundef %mtt, ptr noundef %buf) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end13.cleanup_crit_edge, label %err_mtt

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

err_mtt:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev1, align 8
  tail call void @mlx4_mtt_cleanup(ptr noundef %17, ptr noundef %mtt) #9
  br label %err_buf

err_buf:                                          ; preds = %err_mtt, %if.end.err_buf_crit_edge
  %err.0 = phi i32 [ %call10, %if.end.err_buf_crit_edge ], [ %call17, %err_mtt ]
  %18 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev1, align 8
  %20 = ptrtoint ptr %entry_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %entry_size, align 4
  %mul25 = mul i32 %21, %nent
  tail call void @mlx4_buf_free(ptr noundef %19, i32 noundef %mul25, ptr noundef %buf) #9
  br label %cleanup

cleanup:                                          ; preds = %err_buf, %if.end13.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end13.cleanup_crit_edge ], [ %call, %entry.cleanup_crit_edge ], [ %err.0, %err_buf ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_cq_alloc(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx4_ib_cq_comp(ptr noundef %cq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %cq, i32 -208
  %comp_handler = getelementptr i8, ptr %cq, i32 -200
  %0 = ptrtoint ptr %comp_handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %comp_handler, align 8
  %cq_context = getelementptr i8, ptr %cq, i32 -192
  %2 = ptrtoint ptr %cq_context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cq_context, align 8
  tail call void %1(ptr noundef %add.ptr.i, ptr noundef %3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx4_ib_cq_event(ptr noundef %cq, i32 noundef %type) #0 align 64 {
entry:
  %event = alloca %struct.ib_event, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %event) #9
  %0 = getelementptr inbounds %struct.ib_event, ptr %event, i32 0, i32 1
  %1 = getelementptr inbounds %struct.ib_event, ptr %event, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %type)
  %cmp.not = icmp eq i32 %type, 4
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %cqn = getelementptr inbounds %struct.mlx4_cq, ptr %cq, i32 0, i32 8
  %2 = ptrtoint ptr %cqn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cqn, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef %type, i32 noundef %3) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %event_handler = getelementptr i8, ptr %cq, i32 -196
  %4 = ptrtoint ptr %event_handler to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %event_handler, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %cq, i32 -208
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 8
  %8 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %event, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %1, align 4
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr.i, ptr %0, align 4
  %cq_context = getelementptr i8, ptr %cq, i32 -192
  %11 = ptrtoint ptr %cq_context to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cq_context, align 8
  call void %5(ptr noundef nonnull %event, ptr noundef %12) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %do.end
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %event) #9
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ib_copy_to_udata(ptr nocapture noundef readonly %udata, ptr noundef %src) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %outbuf = getelementptr inbounds %struct.ib_udata, ptr %udata, i32 0, i32 1
  %0 = ptrtoint ptr %outbuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %outbuf, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 174) #9
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %entry.copy_to_user.exit.thread_crit_edge, label %if.end.i.i

entry.copy_to_user.exit.thread_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit.thread

if.end.i.i:                                       ; preds = %entry
  %2 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 4, i32 -1226833920) #12, !srcloc !47
  %asmresult.i.i = extractvalue { i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i1.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i1.i, label %copy_to_user.exit, label %if.end.i.i.copy_to_user.exit.thread_crit_edge

if.end.i.i.copy_to_user.exit.thread_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit.thread

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %src, i32 noundef 4) #9
  %call.i1.i.i = tail call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef %src, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool.not = icmp eq i32 %call.i1.i.i, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 -14
  br label %copy_to_user.exit.thread

copy_to_user.exit.thread:                         ; preds = %copy_to_user.exit, %if.end.i.i.copy_to_user.exit.thread_crit_edge, %entry.copy_to_user.exit.thread_crit_edge
  %3 = phi i32 [ -14, %entry.copy_to_user.exit.thread_crit_edge ], [ -14, %if.end.i.i.copy_to_user.exit.thread_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_cq_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_ib_db_unmap_user(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_mtt_cleanup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_umem_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_db_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx4_ib_resize_cq(ptr noundef %ibcq, i32 noundef %entries, ptr nocapture noundef readonly %udata) local_unnamed_addr #0 align 64 {
entry:
  %ucmd.i = alloca %struct.mlx4_ib_resize_cq, align 8
  %mtt = alloca %struct.mlx4_mtt, align 4
  %tmp_buf = alloca %struct.mlx4_ib_cq_buf, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ibcq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ibcq, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %mtt) #9
  %2 = ptrtoint ptr %mtt to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %mtt, align 4, !annotation !46
  %3 = getelementptr inbounds %struct.mlx4_mtt, ptr %mtt, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !46
  %5 = getelementptr inbounds %struct.mlx4_mtt, ptr %mtt, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !46
  %resize_mutex = getelementptr inbounds %struct.mlx4_ib_cq, ptr %ibcq, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %resize_mutex, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %entries)
  %cmp = icmp slt i32 %entries, 1
  br i1 %cmp, label %entry.out_crit_edge, label %lor.lhs.false

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

lor.lhs.false:                                    ; preds = %entry
  %dev2 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev2, align 8
  %max_cqes = getelementptr inbounds %struct.mlx4_dev, ptr %8, i32 0, i32 3, i32 34
  %9 = ptrtoint ptr %max_cqes to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_cqes, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %entries)
  %cmp3 = icmp slt i32 %10, %entries
  br i1 %cmp3, label %lor.lhs.false.out_crit_edge, label %cond.end29

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

cond.end29:                                       ; preds = %lor.lhs.false
  %11 = tail call i32 @llvm.ctlz.i32(i32 %entries, i1 true) #9, !range !40
  %sub.i.i.i = sub nuw nsw i32 32, %11
  %cond30 = shl nuw i32 1, %sub.i.i.i
  %cqe = getelementptr inbounds %struct.ib_cq, ptr %ibcq, i32 0, i32 5
  %12 = ptrtoint ptr %cqe to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cqe, align 4
  %add31 = add i32 %13, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %cond30, i32 %add31)
  %cmp32 = icmp eq i32 %cond30, %add31
  br i1 %cmp32, label %cond.end29.out_crit_edge, label %if.end35

cond.end29.out_crit_edge:                         ; preds = %cond.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end35:                                         ; preds = %cond.end29
  %add39 = add i32 %10, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %cond30, i32 %add39)
  %cmp40 = icmp sgt i32 %cond30, %add39
  br i1 %cmp40, label %if.end35.out_crit_edge, label %if.end43

if.end35.out_crit_edge:                           ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end43:                                         ; preds = %if.end35
  %uobject = getelementptr inbounds %struct.ib_cq, ptr %ibcq, i32 0, i32 1
  %14 = ptrtoint ptr %uobject to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %uobject, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %if.else, label %if.then44

if.then44:                                        ; preds = %if.end43
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ucmd.i) #9
  %16 = ptrtoint ptr %ucmd.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 -1, ptr %ucmd.i, align 8, !annotation !46
  %resize_umem.i = getelementptr inbounds %struct.mlx4_ib_cq, ptr %ibcq, i32 0, i32 8
  %17 = ptrtoint ptr %resize_umem.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %resize_umem.i, align 8
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then44.mlx4_alloc_resize_umem.exit.thread_crit_edge

if.then44.mlx4_alloc_resize_umem.exit.thread_crit_edge: ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlx4_alloc_resize_umem.exit.thread

if.end.i:                                         ; preds = %if.then44
  %19 = ptrtoint ptr %udata to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %udata, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 156) #9
  %call.i.i.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i.i.i, label %if.end.i.if.then11.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.end.i.if.then11.i.i.i.i_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end.i
  %21 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %20, i32 8, i32 -1226833920) #12, !srcloc !41
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i6.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.i6.i.i.i, label %if.end.i.i.i.i, label %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !42

land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %land.lhs.true.i.i.i.i
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %ucmd.i, i32 noundef 8) #9
  %22 = call i32 @llvm.read_register.i32(metadata !30) #9
  %and.i.i.i.i.i.i.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 4
  %24 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i) #6, !srcloc !43
  %and.i.i.i.i.i.i = and i32 %24, -13
  %or.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i) #9, !srcloc !44
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !45
  %call1.i.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %ucmd.i, ptr noundef %20, i32 noundef 8) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %24) #9, !srcloc !44
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i)
  %tobool4.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i, label %if.end3.i, label %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !42

if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge:       ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i.i

if.then11.i.i.i.i:                                ; preds = %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, %if.end.i.if.then11.i.i.i.i_crit_edge
  %res.0.i.i.i30.i = phi i32 [ %call1.i.i.i.i.i, %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge ], [ 8, %if.end.i.if.then11.i.i.i.i_crit_edge ], [ 8, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge ]
  %sub.i.i.i.i = sub i32 8, %res.0.i.i.i30.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %ucmd.i, i32 %sub.i.i.i.i
  %25 = call ptr @memset(ptr %add.ptr.i.i.i.i, i32 0, i32 %res.0.i.i.i30.i)
  br label %mlx4_alloc_resize_umem.exit.thread

if.end3.i:                                        ; preds = %if.end.i.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %26 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 3264, i32 noundef 44) #14
  %resize_buf.i = getelementptr inbounds %struct.mlx4_ib_cq, ptr %ibcq, i32 0, i32 3
  %27 = ptrtoint ptr %resize_buf.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call7.i.i, ptr %resize_buf.i, align 4
  %tobool6.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool6.not.i, label %if.end3.i.mlx4_alloc_resize_umem.exit.thread_crit_edge, label %if.end8.i

if.end3.i.mlx4_alloc_resize_umem.exit.thread_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlx4_alloc_resize_umem.exit.thread

if.end8.i:                                        ; preds = %if.end3.i
  %28 = ptrtoint ptr %ucmd.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %ucmd.i, align 8
  %call11.i = call fastcc i32 @mlx4_ib_get_cq_umem(ptr noundef %1, ptr noundef nonnull %call7.i.i, ptr noundef %resize_umem.i, i64 noundef %29, i32 noundef %cond30) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %mlx4_alloc_resize_umem.exit, label %if.then13.i

if.then13.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %resize_buf.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %resize_buf.i, align 4
  call void @kfree(ptr noundef %31) #9
  %32 = ptrtoint ptr %resize_buf.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %resize_buf.i, align 4
  br label %mlx4_alloc_resize_umem.exit.thread

mlx4_alloc_resize_umem.exit.thread:               ; preds = %if.then13.i, %if.end3.i.mlx4_alloc_resize_umem.exit.thread_crit_edge, %if.then11.i.i.i.i, %if.then44.mlx4_alloc_resize_umem.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -14, %if.then11.i.i.i.i ], [ -12, %if.end3.i.mlx4_alloc_resize_umem.exit.thread_crit_edge ], [ -16, %if.then44.mlx4_alloc_resize_umem.exit.thread_crit_edge ], [ %call11.i, %if.then13.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ucmd.i) #9
  br label %out

mlx4_alloc_resize_umem.exit:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i189 = add i32 %cond30, -1
  %33 = ptrtoint ptr %resize_buf.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %resize_buf.i, align 4
  %cqe.i = getelementptr inbounds %struct.mlx4_ib_cq_resize, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %cqe.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %sub.i189, ptr %cqe.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ucmd.i) #9
  br label %if.end59

if.else:                                          ; preds = %if.end43
  %cons_index.i = getelementptr inbounds %struct.mlx4_ib_cq, ptr %ibcq, i32 0, i32 1, i32 3
  %36 = ptrtoint ptr %cons_index.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cons_index.i, align 4
  %entry_size.i.i.i.i = getelementptr inbounds %struct.mlx4_ib_cq, ptr %ibcq, i32 0, i32 2, i32 2
  %38 = ptrtoint ptr %entry_size.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %entry_size.i.i.i.i, align 4
  %nbufs.i.i.i.i.i = getelementptr inbounds %struct.mlx4_ib_cq, ptr %ibcq, i32 0, i32 2, i32 0, i32 2
  %40 = ptrtoint ptr %nbufs.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %nbufs.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %41)
  %cmp.i.i.i.i.i = icmp eq i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %39)
  %cmp.i.i = icmp eq i32 %39, 64
  %cond.idx.i.i = zext i1 %cmp.i.i to i32
  %page_list.i.i.i.i.i = getelementptr inbounds %struct.mlx4_ib_cq, ptr %ibcq, i32 0, i32 2, i32 0, i32 1
  %buf.i.i.i = getelementptr inbounds %struct.mlx4_ib_cq, ptr %ibcq, i32 0, i32 2
  br label %while.cond.i

while.cond.i:                                     ; preds = %get_sw_cqe.exit.i.while.cond.i_crit_edge, %if.else
  %i.0.i = phi i32 [ %37, %if.else ], [ %inc.i, %get_sw_cqe.exit.i.while.cond.i_crit_edge ]
  %and.i.i = and i32 %i.0.i, %13
  %mul.i.i.i.i = mul i32 %and.i.i, %39
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %if.else.i.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %buf.i.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %43, i32 %mul.i.i.i.i
  br label %get_sw_cqe.exit.i

if.else.i.i.i.i.i:                                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %page_list.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %page_list.i.i.i.i.i, align 4
  %shr.i.i.i.i.i = ashr i32 %mul.i.i.i.i, 12
  %arrayidx.i.i.i.i.i = getelementptr %struct.mlx4_buf_list, ptr %45, i32 %shr.i.i.i.i.i
  %46 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.i.i.i.i.i, align 4
  %and.i.i.i.i.i = and i32 %mul.i.i.i.i, 4095
  %add.ptr3.i.i.i.i.i = getelementptr i8, ptr %47, i32 %and.i.i.i.i.i
  br label %get_sw_cqe.exit.i

get_sw_cqe.exit.i:                                ; preds = %if.else.i.i.i.i.i, %if.then.i.i.i.i.i
  %retval.0.i.i.i.i.i = phi ptr [ %add.ptr.i.i.i.i.i, %if.then.i.i.i.i.i ], [ %add.ptr3.i.i.i.i.i, %if.else.i.i.i.i.i ]
  %owner_sr_opcode.i.i = getelementptr %struct.mlx4_cqe, ptr %retval.0.i.i.i.i.i, i32 %cond.idx.i.i, i32 9
  %48 = ptrtoint ptr %owner_sr_opcode.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %owner_sr_opcode.i.i, align 1
  %.lobit.i.i = lshr i8 %49, 7
  %and6.i.i = and i32 %i.0.i, %add31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i)
  %tobool7.i.i = icmp ne i32 %and6.i.i, 0
  %50 = zext i1 %tobool7.i.i to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %.lobit.i.i, i8 %50)
  %tobool12.not.i.i = icmp ne i8 %.lobit.i.i, %50
  %tobool.not7.i = icmp eq ptr %retval.0.i.i.i.i.i, null
  %tobool.not.i190 = select i1 %tobool12.not.i.i, i1 true, i1 %tobool.not7.i
  %inc.i = add i32 %i.0.i, 1
  br i1 %tobool.not.i190, label %mlx4_ib_get_outstanding_cqes.exit, label %get_sw_cqe.exit.i.while.cond.i_crit_edge

get_sw_cqe.exit.i.while.cond.i_crit_edge:         ; preds = %get_sw_cqe.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i

mlx4_ib_get_outstanding_cqes.exit:                ; preds = %get_sw_cqe.exit.i
  %sub.i191 = sub i32 1, %37
  %add50 = add i32 %sub.i191, %i.0.i
  call void @__sanitizer_cov_trace_cmp4(i32 %cond30, i32 %add50)
  %cmp51 = icmp slt i32 %cond30, %add50
  br i1 %cmp51, label %mlx4_ib_get_outstanding_cqes.exit.out_crit_edge, label %if.end54

mlx4_ib_get_outstanding_cqes.exit.out_crit_edge:  ; preds = %mlx4_ib_get_outstanding_cqes.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end54:                                         ; preds = %mlx4_ib_get_outstanding_cqes.exit
  %call55 = tail call fastcc i32 @mlx4_alloc_resize_buf(ptr noundef %1, ptr noundef %ibcq, i32 noundef %cond30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end54.if.end59_crit_edge, label %if.end54.out_crit_edge

if.end54.out_crit_edge:                           ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end54.if.end59_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

if.end59:                                         ; preds = %if.end54.if.end59_crit_edge, %mlx4_alloc_resize_umem.exit
  %buf = getelementptr inbounds %struct.mlx4_ib_cq, ptr %ibcq, i32 0, i32 2
  %mtt60 = getelementptr inbounds %struct.mlx4_ib_cq, ptr %ibcq, i32 0, i32 2, i32 1
  %51 = call ptr @memcpy(ptr %mtt, ptr %mtt60, i32 12)
  %52 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev2, align 8
  %mcq = getelementptr inbounds %struct.mlx4_ib_cq, ptr %ibcq, i32 0, i32 1
  %resize_buf = getelementptr inbounds %struct.mlx4_ib_cq, ptr %ibcq, i32 0, i32 3
  %54 = ptrtoint ptr %resize_buf to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %resize_buf, align 4
  %mtt63 = getelementptr inbounds %struct.mlx4_ib_cq_buf, ptr %55, i32 0, i32 1
  %call64 = call i32 @mlx4_cq_resize(ptr noundef %53, ptr noundef %mcq, i32 noundef %cond30, ptr noundef %mtt63) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  %56 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev2, align 8
  br i1 %tobool65.not, label %if.end67, label %err_buf

if.end67:                                         ; preds = %if.end59
  call void @mlx4_mtt_cleanup(ptr noundef %57, ptr noundef nonnull %mtt) #9
  %58 = ptrtoint ptr %uobject to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %uobject, align 4
  %tobool70.not = icmp eq ptr %59, null
  br i1 %tobool70.not, label %if.else83, label %if.then71

if.then71:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  %60 = ptrtoint ptr %resize_buf to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %resize_buf, align 4
  %62 = call ptr @memcpy(ptr %buf, ptr %61, i32 40)
  %cqe76 = getelementptr inbounds %struct.mlx4_ib_cq_resize, ptr %61, i32 0, i32 1
  %63 = ptrtoint ptr %cqe76 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %cqe76, align 4
  %65 = ptrtoint ptr %cqe to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %cqe, align 4
  %umem = getelementptr inbounds %struct.mlx4_ib_cq, ptr %ibcq, i32 0, i32 7
  %66 = ptrtoint ptr %umem to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %umem, align 4
  call void @ib_umem_release(ptr noundef %67) #9
  %resize_umem = getelementptr inbounds %struct.mlx4_ib_cq, ptr %ibcq, i32 0, i32 8
  %68 = ptrtoint ptr %resize_umem to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %resize_umem, align 8
  %70 = ptrtoint ptr %umem to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %69, ptr %umem, align 4
  %71 = ptrtoint ptr %resize_buf to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %resize_buf, align 4
  call void @kfree(ptr noundef %72) #9
  %73 = ptrtoint ptr %resize_buf to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr null, ptr %resize_buf, align 4
  %74 = ptrtoint ptr %resize_umem to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr null, ptr %resize_umem, align 8
  br label %out

if.else83:                                        ; preds = %if.end67
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %tmp_buf) #9
  %lock = getelementptr inbounds %struct.mlx4_ib_cq, ptr %ibcq, i32 0, i32 5
  call void @_raw_spin_lock_irq(ptr noundef %lock) #9
  %75 = ptrtoint ptr %resize_buf to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %resize_buf, align 4
  %tobool85.not = icmp eq ptr %76, null
  br i1 %tobool85.not, label %if.end99.thread, label %if.end99

if.end99.thread:                                  ; preds = %if.else83
  call void @__sanitizer_cov_trace_pc() #11
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #9
  br label %if.end103

if.end99:                                         ; preds = %if.else83
  call fastcc void @mlx4_ib_cq_resize_copy_cqes(ptr noundef %ibcq)
  %77 = call ptr @memcpy(ptr %tmp_buf, ptr %buf, i32 40)
  %78 = ptrtoint ptr %cqe to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %cqe, align 4
  %80 = ptrtoint ptr %resize_buf to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %resize_buf, align 4
  %82 = call ptr @memcpy(ptr %buf, ptr %81, i32 40)
  %cqe94 = getelementptr inbounds %struct.mlx4_ib_cq_resize, ptr %81, i32 0, i32 1
  %83 = ptrtoint ptr %cqe94 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %cqe94, align 4
  store i32 %84, ptr %cqe, align 4
  call void @kfree(ptr noundef %81) #9
  %85 = ptrtoint ptr %resize_buf to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr null, ptr %resize_buf, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool101.not = icmp eq i32 %79, 0
  br i1 %tobool101.not, label %if.end99.if.end103_crit_edge, label %if.then102

if.end99.if.end103_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end103

if.then102:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #11
  %86 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev2, align 8
  %add.i = add i32 %79, 1
  %entry_size.i = getelementptr inbounds %struct.mlx4_ib_cq_buf, ptr %tmp_buf, i32 0, i32 2
  %88 = ptrtoint ptr %entry_size.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %entry_size.i, align 4
  %mul.i = mul i32 %89, %add.i
  call void @mlx4_buf_free(ptr noundef %87, i32 noundef %mul.i, ptr noundef nonnull %tmp_buf) #9
  br label %if.end103

if.end103:                                        ; preds = %if.then102, %if.end99.if.end103_crit_edge, %if.end99.thread
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %tmp_buf) #9
  br label %out

err_buf:                                          ; preds = %if.end59
  %90 = ptrtoint ptr %resize_buf to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %resize_buf, align 4
  %mtt108 = getelementptr inbounds %struct.mlx4_ib_cq_buf, ptr %91, i32 0, i32 1
  call void @mlx4_mtt_cleanup(ptr noundef %57, ptr noundef %mtt108) #9
  %92 = ptrtoint ptr %uobject to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %uobject, align 4
  %tobool110.not = icmp eq ptr %93, null
  br i1 %tobool110.not, label %if.then111, label %err_buf.if.end116_crit_edge

err_buf.if.end116_crit_edge:                      ; preds = %err_buf
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end116

if.then111:                                       ; preds = %err_buf
  call void @__sanitizer_cov_trace_pc() #11
  %94 = ptrtoint ptr %resize_buf to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %resize_buf, align 4
  %cqe115 = getelementptr inbounds %struct.mlx4_ib_cq_resize, ptr %95, i32 0, i32 1
  %96 = ptrtoint ptr %cqe115 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %cqe115, align 4
  %98 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dev2, align 8
  %add.i193 = add i32 %97, 1
  %entry_size.i194 = getelementptr inbounds %struct.mlx4_ib_cq_buf, ptr %95, i32 0, i32 2
  %100 = ptrtoint ptr %entry_size.i194 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %entry_size.i194, align 4
  %mul.i195 = mul i32 %101, %add.i193
  call void @mlx4_buf_free(ptr noundef %99, i32 noundef %mul.i195, ptr noundef %95) #9
  br label %if.end116

if.end116:                                        ; preds = %if.then111, %err_buf.if.end116_crit_edge
  %102 = ptrtoint ptr %resize_buf to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %resize_buf, align 4
  call void @kfree(ptr noundef %103) #9
  %104 = ptrtoint ptr %resize_buf to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr null, ptr %resize_buf, align 4
  %resize_umem119 = getelementptr inbounds %struct.mlx4_ib_cq, ptr %ibcq, i32 0, i32 8
  %105 = ptrtoint ptr %resize_umem119 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %resize_umem119, align 8
  call void @ib_umem_release(ptr noundef %106) #9
  %107 = ptrtoint ptr %resize_umem119 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr null, ptr %resize_umem119, align 8
  br label %out

out:                                              ; preds = %if.end116, %if.end103, %if.then71, %if.end54.out_crit_edge, %mlx4_ib_get_outstanding_cqes.exit.out_crit_edge, %mlx4_alloc_resize_umem.exit.thread, %if.end35.out_crit_edge, %cond.end29.out_crit_edge, %lor.lhs.false.out_crit_edge, %entry.out_crit_edge
  %err.0 = phi i32 [ %call64, %if.end116 ], [ 0, %if.then71 ], [ 0, %if.end103 ], [ %call55, %if.end54.out_crit_edge ], [ -22, %lor.lhs.false.out_crit_edge ], [ -22, %entry.out_crit_edge ], [ 0, %cond.end29.out_crit_edge ], [ -22, %if.end35.out_crit_edge ], [ -22, %mlx4_ib_get_outstanding_cqes.exit.out_crit_edge ], [ %retval.0.i.ph, %mlx4_alloc_resize_umem.exit.thread ]
  call void @mutex_unlock(ptr noundef %resize_mutex) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %mtt) #9
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx4_alloc_resize_buf(ptr nocapture noundef readonly %dev, ptr nocapture noundef %cq, i32 noundef %entries) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %resize_buf = getelementptr inbounds %struct.mlx4_ib_cq, ptr %cq, i32 0, i32 3
  %0 = ptrtoint ptr %resize_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resize_buf, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 44) #14
  %3 = ptrtoint ptr %resize_buf to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i, ptr %resize_buf, align 4
  %tobool3.not = icmp eq ptr %call7.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call7 = tail call fastcc i32 @mlx4_ib_alloc_cq_buf(ptr noundef %dev, ptr noundef nonnull %call7.i, i32 noundef %entries)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end12, label %if.then9

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %resize_buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %resize_buf, align 4
  tail call void @kfree(ptr noundef %5) #9
  %6 = ptrtoint ptr %resize_buf to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %resize_buf, align 4
  br label %cleanup

if.end12:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %sub = add i32 %entries, -1
  %7 = ptrtoint ptr %resize_buf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %resize_buf, align 4
  %cqe = getelementptr inbounds %struct.mlx4_ib_cq_resize, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %cqe to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %sub, ptr %cqe, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.then9 ], [ 0, %if.end12 ], [ -16, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_cq_resize(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx4_ib_cq_resize_copy_cqes(ptr nocapture noundef %cq) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %entry_size = getelementptr inbounds %struct.mlx4_ib_cq, ptr %cq, i32 0, i32 2, i32 2
  %0 = ptrtoint ptr %entry_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %entry_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %1)
  %cmp = icmp eq i32 %1, 64
  %cond = zext i1 %cmp to i32
  %cons_index = getelementptr inbounds %struct.mlx4_ib_cq, ptr %cq, i32 0, i32 1, i32 3
  %2 = ptrtoint ptr %cons_index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cons_index, align 4
  %cqe1 = getelementptr inbounds %struct.ib_cq, ptr %cq, i32 0, i32 5
  %4 = ptrtoint ptr %cqe1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cqe1, align 4
  %and = and i32 %5, %3
  %mul.i.i = mul i32 %and, %1
  %nbufs.i.i.i = getelementptr inbounds %struct.mlx4_ib_cq, ptr %cq, i32 0, i32 2, i32 0, i32 2
  %6 = ptrtoint ptr %nbufs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nbufs.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.i.i.i = icmp eq i32 %7, 1
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %buf.i = getelementptr inbounds %struct.mlx4_ib_cq, ptr %cq, i32 0, i32 2
  %8 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buf.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 %mul.i.i
  br label %get_cqe.exit

if.else.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %page_list.i.i.i = getelementptr inbounds %struct.mlx4_ib_cq, ptr %cq, i32 0, i32 2, i32 0, i32 1
  %10 = ptrtoint ptr %page_list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %page_list.i.i.i, align 4
  %shr.i.i.i = ashr i32 %mul.i.i, 12
  %arrayidx.i.i.i = getelementptr %struct.mlx4_buf_list, ptr %11, i32 %shr.i.i.i
  %12 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %mul.i.i, 4095
  %add.ptr3.i.i.i = getelementptr i8, ptr %13, i32 %and.i.i.i
  br label %get_cqe.exit

get_cqe.exit:                                     ; preds = %if.else.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi ptr [ %add.ptr.i.i.i, %if.then.i.i.i ], [ %add.ptr3.i.i.i, %if.else.i.i.i ]
  %owner_sr_opcode87 = getelementptr %struct.mlx4_cqe, ptr %retval.0.i.i.i, i32 %cond, i32 9
  %14 = ptrtoint ptr %owner_sr_opcode87 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %owner_sr_opcode87, align 1
  %16 = and i8 %15, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 22, i8 %16)
  %cmp3.not88 = icmp eq i8 %16, 22
  br i1 %cmp3.not88, label %get_cqe.exit.while.end_crit_edge, label %while.body.lr.ph

get_cqe.exit.while.end_crit_edge:                 ; preds = %get_cqe.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %get_cqe.exit
  %resize_buf = getelementptr inbounds %struct.mlx4_ib_cq, ptr %cq, i32 0, i32 3
  %page_list.i.i.i64 = getelementptr inbounds %struct.mlx4_ib_cq, ptr %cq, i32 0, i32 2, i32 0, i32 1
  %buf.i61 = getelementptr inbounds %struct.mlx4_ib_cq, ptr %cq, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %get_cqe.exit86.while.body_crit_edge, %while.body.lr.ph
  %owner_sr_opcode90 = phi ptr [ %owner_sr_opcode87, %while.body.lr.ph ], [ %owner_sr_opcode, %get_cqe.exit86.while.body_crit_edge ]
  %i.089 = phi i32 [ %3, %while.body.lr.ph ], [ %add, %get_cqe.exit86.while.body_crit_edge ]
  %17 = ptrtoint ptr %resize_buf to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %resize_buf, align 4
  %add = add i32 %i.089, 1
  %cqe7 = getelementptr inbounds %struct.mlx4_ib_cq_resize, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %cqe7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cqe7, align 4
  %and8 = and i32 %20, %add
  %entry_size.i = getelementptr inbounds %struct.mlx4_ib_cq_buf, ptr %18, i32 0, i32 2
  %21 = ptrtoint ptr %entry_size.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %entry_size.i, align 4
  %mul.i = mul i32 %22, %and8
  %nbufs.i.i = getelementptr inbounds %struct.mlx4_buf, ptr %18, i32 0, i32 2
  %23 = ptrtoint ptr %nbufs.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nbufs.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp.i.i = icmp eq i32 %24, 1
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %18, align 4
  %add.ptr.i.i = getelementptr i8, ptr %26, i32 %mul.i
  br label %get_cqe_from_buf.exit

if.else.i.i:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %page_list.i.i = getelementptr inbounds %struct.mlx4_buf, ptr %18, i32 0, i32 1
  %27 = ptrtoint ptr %page_list.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %page_list.i.i, align 4
  %shr.i.i = ashr i32 %mul.i, 12
  %arrayidx.i.i = getelementptr %struct.mlx4_buf_list, ptr %28, i32 %shr.i.i
  %29 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %mul.i, 4095
  %add.ptr3.i.i = getelementptr i8, ptr %30, i32 %and.i.i
  br label %get_cqe_from_buf.exit

get_cqe_from_buf.exit:                            ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi ptr [ %add.ptr.i.i, %if.then.i.i ], [ %add.ptr3.i.i, %if.else.i.i ]
  %31 = ptrtoint ptr %cqe1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cqe1, align 4
  %and12 = and i32 %32, %i.089
  %33 = ptrtoint ptr %entry_size to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %entry_size, align 4
  %mul.i.i58 = mul i32 %34, %and12
  %35 = ptrtoint ptr %nbufs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %nbufs.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %36)
  %cmp.i.i.i60 = icmp eq i32 %36, 1
  br i1 %cmp.i.i.i60, label %if.then.i.i.i63, label %if.else.i.i.i69

if.then.i.i.i63:                                  ; preds = %get_cqe_from_buf.exit
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %buf.i61 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %buf.i61, align 4
  %add.ptr.i.i.i62 = getelementptr i8, ptr %38, i32 %mul.i.i58
  br label %get_cqe.exit71

if.else.i.i.i69:                                  ; preds = %get_cqe_from_buf.exit
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %page_list.i.i.i64 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %page_list.i.i.i64, align 4
  %shr.i.i.i65 = ashr i32 %mul.i.i58, 12
  %arrayidx.i.i.i66 = getelementptr %struct.mlx4_buf_list, ptr %40, i32 %shr.i.i.i65
  %41 = ptrtoint ptr %arrayidx.i.i.i66 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx.i.i.i66, align 4
  %and.i.i.i67 = and i32 %mul.i.i58, 4095
  %add.ptr3.i.i.i68 = getelementptr i8, ptr %42, i32 %and.i.i.i67
  br label %get_cqe.exit71

get_cqe.exit71:                                   ; preds = %if.else.i.i.i69, %if.then.i.i.i63
  %retval.0.i.i.i70 = phi ptr [ %add.ptr.i.i.i62, %if.then.i.i.i63 ], [ %add.ptr3.i.i.i68, %if.else.i.i.i69 ]
  %43 = call ptr @memcpy(ptr %retval.0.i.i, ptr %retval.0.i.i.i70, i32 %1)
  %44 = ptrtoint ptr %owner_sr_opcode90 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %owner_sr_opcode90, align 1
  %46 = and i8 %45, 127
  %47 = ptrtoint ptr %resize_buf to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %resize_buf, align 4
  %cqe20 = getelementptr inbounds %struct.mlx4_ib_cq_resize, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %cqe20 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %cqe20, align 4
  %add21 = add i32 %50, 1
  %and22 = and i32 %add21, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool.not = icmp eq i32 %and22, 0
  %cond23 = select i1 %tobool.not, i8 0, i8 -128
  %or = or i8 %cond23, %46
  %owner_sr_opcode25 = getelementptr %struct.mlx4_cqe, ptr %retval.0.i.i, i32 %cond, i32 9
  %51 = ptrtoint ptr %owner_sr_opcode25 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %or, ptr %owner_sr_opcode25, align 1
  %52 = ptrtoint ptr %cqe1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %cqe1, align 4
  %and28 = and i32 %53, %add
  %54 = ptrtoint ptr %entry_size to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %entry_size, align 4
  %mul.i.i73 = mul i32 %55, %and28
  %56 = ptrtoint ptr %nbufs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %nbufs.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %57)
  %cmp.i.i.i75 = icmp eq i32 %57, 1
  br i1 %cmp.i.i.i75, label %if.then.i.i.i78, label %if.else.i.i.i84

if.then.i.i.i78:                                  ; preds = %get_cqe.exit71
  call void @__sanitizer_cov_trace_pc() #11
  %58 = ptrtoint ptr %buf.i61 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %buf.i61, align 4
  %add.ptr.i.i.i77 = getelementptr i8, ptr %59, i32 %mul.i.i73
  br label %get_cqe.exit86

if.else.i.i.i84:                                  ; preds = %get_cqe.exit71
  call void @__sanitizer_cov_trace_pc() #11
  %60 = ptrtoint ptr %page_list.i.i.i64 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %page_list.i.i.i64, align 4
  %shr.i.i.i80 = ashr i32 %mul.i.i73, 12
  %arrayidx.i.i.i81 = getelementptr %struct.mlx4_buf_list, ptr %61, i32 %shr.i.i.i80
  %62 = ptrtoint ptr %arrayidx.i.i.i81 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx.i.i.i81, align 4
  %and.i.i.i82 = and i32 %mul.i.i73, 4095
  %add.ptr3.i.i.i83 = getelementptr i8, ptr %63, i32 %and.i.i.i82
  br label %get_cqe.exit86

get_cqe.exit86:                                   ; preds = %if.else.i.i.i84, %if.then.i.i.i78
  %retval.0.i.i.i85 = phi ptr [ %add.ptr.i.i.i77, %if.then.i.i.i78 ], [ %add.ptr3.i.i.i83, %if.else.i.i.i84 ]
  %owner_sr_opcode = getelementptr %struct.mlx4_cqe, ptr %retval.0.i.i.i85, i32 %cond, i32 9
  %64 = ptrtoint ptr %owner_sr_opcode to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %owner_sr_opcode, align 1
  %66 = and i8 %65, 31
  %cmp3.not = icmp eq i8 %66, 22
  br i1 %cmp3.not, label %get_cqe.exit86.while.end_crit_edge, label %get_cqe.exit86.while.body_crit_edge

get_cqe.exit86.while.body_crit_edge:              ; preds = %get_cqe.exit86
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

get_cqe.exit86.while.end_crit_edge:               ; preds = %get_cqe.exit86
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %get_cqe.exit86.while.end_crit_edge, %get_cqe.exit.while.end_crit_edge
  %67 = ptrtoint ptr %cons_index to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %cons_index, align 4
  %inc33 = add i32 %68, 1
  store i32 %inc33, ptr %cons_index, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx4_ib_destroy_cq(ptr noundef %cq, ptr noundef readonly %udata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cq, align 8
  %dev2 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev2, align 8
  %mcq3 = getelementptr inbounds %struct.mlx4_ib_cq, ptr %cq, i32 0, i32 1
  tail call void @mlx4_cq_free(ptr noundef %3, ptr noundef %mcq3) #9
  %4 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev2, align 8
  %mtt = getelementptr inbounds %struct.mlx4_ib_cq, ptr %cq, i32 0, i32 2, i32 1
  tail call void @mlx4_mtt_cleanup(ptr noundef %5, ptr noundef %mtt) #9
  %tobool.not = icmp eq ptr %udata, null
  br i1 %tobool.not, label %if.else, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %context = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %udata, i32 0, i32 3
  %6 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %context, align 4
  %db = getelementptr inbounds %struct.mlx4_ib_cq, ptr %cq, i32 0, i32 4
  tail call void @mlx4_ib_db_unmap_user(ptr noundef %7, ptr noundef %db) #9
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %buf = getelementptr inbounds %struct.mlx4_ib_cq, ptr %cq, i32 0, i32 2
  %cqe = getelementptr inbounds %struct.ib_cq, ptr %cq, i32 0, i32 5
  %8 = ptrtoint ptr %cqe to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cqe, align 4
  %10 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev2, align 8
  %add.i = add i32 %9, 1
  %entry_size.i = getelementptr inbounds %struct.mlx4_ib_cq, ptr %cq, i32 0, i32 2, i32 2
  %12 = ptrtoint ptr %entry_size.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %entry_size.i, align 4
  %mul.i = mul i32 %13, %add.i
  tail call void @mlx4_buf_free(ptr noundef %11, i32 noundef %mul.i, ptr noundef %buf) #9
  %14 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev2, align 8
  %db9 = getelementptr inbounds %struct.mlx4_ib_cq, ptr %cq, i32 0, i32 4
  tail call void @mlx4_db_free(ptr noundef %15, ptr noundef %db9) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.true
  %umem = getelementptr inbounds %struct.mlx4_ib_cq, ptr %cq, i32 0, i32 7
  %16 = ptrtoint ptr %umem to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %umem, align 4
  tail call void @ib_umem_release(ptr noundef %17) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx4_ib_poll_cq(ptr noundef %ibcq, i32 noundef %num_entries, ptr noundef %wc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ibcq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ibcq, align 8
  %lock = getelementptr inbounds %struct.mlx4_ib_cq, ptr %ibcq, i32 0, i32 5
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_entries)
  %cmp961 = icmp sgt i32 %num_entries, 0
  br i1 %cmp961, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %cons_index.i.i = getelementptr inbounds %struct.mlx4_ib_cq, ptr %ibcq, i32 0, i32 1, i32 3
  %cqe1.i.i.i = getelementptr inbounds %struct.ib_cq, ptr %ibcq, i32 0, i32 5
  %entry_size.i.i.i.i.i = getelementptr inbounds %struct.mlx4_ib_cq, ptr %ibcq, i32 0, i32 2, i32 2
  %nbufs.i.i.i.i.i.i = getelementptr inbounds %struct.mlx4_ib_cq, ptr %ibcq, i32 0, i32 2, i32 0, i32 2
  %page_list.i.i.i.i.i.i = getelementptr inbounds %struct.mlx4_ib_cq, ptr %ibcq, i32 0, i32 2, i32 0, i32 1
  %buf.i.i.i.i = getelementptr inbounds %struct.mlx4_ib_cq, ptr %ibcq, i32 0, i32 2
  %resize_buf.i = getelementptr inbounds %struct.mlx4_ib_cq, ptr %ibcq, i32 0, i32 3
  br label %for.body

if.then:                                          ; preds = %entry
  %send_qp_list.i = getelementptr inbounds %struct.mlx4_ib_cq, ptr %ibcq, i32 0, i32 10
  br label %for.cond.i

for.cond.i:                                       ; preds = %mlx4_ib_qp_sw_comp.exit.i.for.cond.i_crit_edge, %if.then
  %npolled.0 = phi i32 [ 0, %if.then ], [ %npolled.2, %mlx4_ib_qp_sw_comp.exit.i.for.cond.i_crit_edge ]
  %.pn.in.i = phi ptr [ %send_qp_list.i, %if.then ], [ %.pn.i, %mlx4_ib_qp_sw_comp.exit.i.for.cond.i_crit_edge ]
  %9 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn.i = load ptr, ptr %.pn.in.i, align 8
  %cmp.not.i = icmp eq ptr %.pn.i, %send_qp_list.i
  br i1 %cmp.not.i, label %for.end.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %qp.0.i = getelementptr i8, ptr %.pn.i, i32 -848
  %sq.i.i = getelementptr i8, ptr %.pn.i, i32 -388
  %head.i.i = getelementptr i8, ptr %.pn.i, i32 -320
  %10 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %head.i.i, align 4
  %tail.i.i = getelementptr i8, ptr %.pn.i, i32 -316
  %12 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tail.i.i, align 4
  %sub.i.i = sub i32 %11, %13
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp.not.i.i = icmp eq i32 %11, %13
  br i1 %cmp.not.i.i, label %for.body.i.mlx4_ib_qp_sw_comp.exit.i_crit_edge, label %land.rhs.lr.ph.i.i

for.body.i.mlx4_ib_qp_sw_comp.exit.i_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlx4_ib_qp_sw_comp.exit.i

land.rhs.lr.ph.i.i:                               ; preds = %for.body.i
  %add.ptr2.i = getelementptr %struct.ib_wc, ptr %wc, i32 %npolled.0
  %wqe_cnt.i.i = getelementptr i8, ptr %.pn.i, i32 -340
  %smax = call i32 @llvm.smax.i32(i32 %npolled.0, i32 %num_entries)
  %14 = sub i32 %smax, %npolled.0
  br label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %for.body.i.i.land.rhs.i.i_crit_edge, %land.rhs.lr.ph.i.i
  %npolled.1 = phi i32 [ %npolled.0, %land.rhs.lr.ph.i.i ], [ %inc6.i.i, %for.body.i.i.land.rhs.i.i_crit_edge ]
  %i.027.i.i = phi i32 [ 0, %land.rhs.lr.ph.i.i ], [ %inc8.i.i, %for.body.i.i.land.rhs.i.i_crit_edge ]
  %wc.addr.026.i.i = phi ptr [ %add.ptr2.i, %land.rhs.lr.ph.i.i ], [ %incdec.ptr.i.i, %for.body.i.i.land.rhs.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.027.i.i, i32 %14)
  %exitcond.not = icmp eq i32 %i.027.i.i, %14
  br i1 %exitcond.not, label %land.rhs.i.i.mlx4_ib_qp_sw_comp.exit.i_crit_edge, label %for.body.i.i

land.rhs.i.i.mlx4_ib_qp_sw_comp.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlx4_ib_qp_sw_comp.exit.i

for.body.i.i:                                     ; preds = %land.rhs.i.i
  %15 = ptrtoint ptr %sq.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sq.i.i, align 4
  %17 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tail.i.i, align 4
  %19 = ptrtoint ptr %wqe_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %wqe_cnt.i.i, align 4
  %sub4.i.i = add i32 %20, -1
  %and.i.i = and i32 %sub4.i.i, %18
  %arrayidx.i.i = getelementptr i64, ptr %16, i32 %and.i.i
  %21 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %arrayidx.i.i, align 8
  %23 = ptrtoint ptr %wc.addr.026.i.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %wc.addr.026.i.i, align 8
  %status.i.i = getelementptr inbounds %struct.ib_wc, ptr %wc.addr.026.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %status.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 5, ptr %status.i.i, align 8
  %vendor_err.i.i = getelementptr inbounds %struct.ib_wc, ptr %wc.addr.026.i.i, i32 0, i32 3
  %25 = ptrtoint ptr %vendor_err.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 5, ptr %vendor_err.i.i, align 8
  %26 = load i32, ptr %tail.i.i, align 4
  %inc.i.i = add i32 %26, 1
  store i32 %inc.i.i, ptr %tail.i.i, align 4
  %inc6.i.i = add nsw i32 %npolled.1, 1
  %qp7.i.i = getelementptr inbounds %struct.ib_wc, ptr %wc.addr.026.i.i, i32 0, i32 5
  %27 = ptrtoint ptr %qp7.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %qp.0.i, ptr %qp7.i.i, align 8
  %incdec.ptr.i.i = getelementptr %struct.ib_wc, ptr %wc.addr.026.i.i, i32 1
  %inc8.i.i = add nuw i32 %i.027.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc8.i.i, %sub.i.i
  br i1 %exitcond.not.i.i, label %for.body.i.i.mlx4_ib_qp_sw_comp.exit.i_crit_edge, label %for.body.i.i.land.rhs.i.i_crit_edge

for.body.i.i.land.rhs.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i.i

for.body.i.i.mlx4_ib_qp_sw_comp.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlx4_ib_qp_sw_comp.exit.i

mlx4_ib_qp_sw_comp.exit.i:                        ; preds = %for.body.i.i.mlx4_ib_qp_sw_comp.exit.i_crit_edge, %land.rhs.i.i.mlx4_ib_qp_sw_comp.exit.i_crit_edge, %for.body.i.mlx4_ib_qp_sw_comp.exit.i_crit_edge
  %npolled.2 = phi i32 [ %npolled.0, %for.body.i.mlx4_ib_qp_sw_comp.exit.i_crit_edge ], [ %npolled.1, %land.rhs.i.i.mlx4_ib_qp_sw_comp.exit.i_crit_edge ], [ %inc6.i.i, %for.body.i.i.mlx4_ib_qp_sw_comp.exit.i_crit_edge ]
  %cmp3.not.i = icmp slt i32 %npolled.2, %num_entries
  br i1 %cmp3.not.i, label %mlx4_ib_qp_sw_comp.exit.i.for.cond.i_crit_edge, label %mlx4_ib_qp_sw_comp.exit.i.out_crit_edge

mlx4_ib_qp_sw_comp.exit.i.out_crit_edge:          ; preds = %mlx4_ib_qp_sw_comp.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

mlx4_ib_qp_sw_comp.exit.i.for.cond.i_crit_edge:   ; preds = %mlx4_ib_qp_sw_comp.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

for.end.i:                                        ; preds = %for.cond.i
  %recv_qp_list.i = getelementptr inbounds %struct.mlx4_ib_cq, ptr %ibcq, i32 0, i32 11
  br label %for.cond13.i

for.cond13.i:                                     ; preds = %mlx4_ib_qp_sw_comp.exit72.i.for.cond13.i_crit_edge, %for.end.i
  %npolled.3 = phi i32 [ %npolled.0, %for.end.i ], [ %npolled.5, %mlx4_ib_qp_sw_comp.exit72.i.for.cond13.i_crit_edge ]
  %.pn47.in.i = phi ptr [ %recv_qp_list.i, %for.end.i ], [ %.pn47.i, %mlx4_ib_qp_sw_comp.exit72.i.for.cond13.i_crit_edge ]
  %28 = ptrtoint ptr %.pn47.in.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pn47.i = load ptr, ptr %.pn47.in.i, align 8
  %cmp15.not.i = icmp eq ptr %.pn47.i, %recv_qp_list.i
  br i1 %cmp15.not.i, label %for.cond13.i.out_crit_edge, label %for.body17.i

for.cond13.i.out_crit_edge:                       ; preds = %for.cond13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.body17.i:                                     ; preds = %for.cond13.i
  %qp.1.i = getelementptr i8, ptr %.pn47.i, i32 -840
  %rq.i49.i = getelementptr i8, ptr %.pn47.i, i32 -472
  %head.i50.i = getelementptr i8, ptr %.pn47.i, i32 -404
  %29 = ptrtoint ptr %head.i50.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %head.i50.i, align 4
  %tail.i51.i = getelementptr i8, ptr %.pn47.i, i32 -400
  %31 = ptrtoint ptr %tail.i51.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tail.i51.i, align 4
  %sub.i52.i = sub i32 %30, %32
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %32)
  %cmp.not.i53.i = icmp eq i32 %30, %32
  br i1 %cmp.not.i53.i, label %for.body17.i.mlx4_ib_qp_sw_comp.exit72.i_crit_edge, label %land.rhs.lr.ph.i55.i

for.body17.i.mlx4_ib_qp_sw_comp.exit72.i_crit_edge: ; preds = %for.body17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlx4_ib_qp_sw_comp.exit72.i

land.rhs.lr.ph.i55.i:                             ; preds = %for.body17.i
  %add.ptr18.i = getelementptr %struct.ib_wc, ptr %wc, i32 %npolled.3
  %wqe_cnt.i54.i = getelementptr i8, ptr %.pn47.i, i32 -424
  %smax85 = call i32 @llvm.smax.i32(i32 %npolled.3, i32 %num_entries)
  %33 = sub i32 %smax85, %npolled.3
  br label %land.rhs.i59.i

land.rhs.i59.i:                                   ; preds = %for.body.i71.i.land.rhs.i59.i_crit_edge, %land.rhs.lr.ph.i55.i
  %npolled.4 = phi i32 [ %npolled.3, %land.rhs.lr.ph.i55.i ], [ %inc6.i66.i, %for.body.i71.i.land.rhs.i59.i_crit_edge ]
  %i.027.i56.i = phi i32 [ 0, %land.rhs.lr.ph.i55.i ], [ %inc8.i69.i, %for.body.i71.i.land.rhs.i59.i_crit_edge ]
  %wc.addr.026.i57.i = phi ptr [ %add.ptr18.i, %land.rhs.lr.ph.i55.i ], [ %incdec.ptr.i68.i, %for.body.i71.i.land.rhs.i59.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.027.i56.i, i32 %33)
  %exitcond86.not = icmp eq i32 %i.027.i56.i, %33
  br i1 %exitcond86.not, label %land.rhs.i59.i.mlx4_ib_qp_sw_comp.exit72.i_crit_edge, label %for.body.i71.i

land.rhs.i59.i.mlx4_ib_qp_sw_comp.exit72.i_crit_edge: ; preds = %land.rhs.i59.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlx4_ib_qp_sw_comp.exit72.i

for.body.i71.i:                                   ; preds = %land.rhs.i59.i
  %34 = ptrtoint ptr %rq.i49.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rq.i49.i, align 4
  %36 = ptrtoint ptr %tail.i51.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tail.i51.i, align 4
  %38 = ptrtoint ptr %wqe_cnt.i54.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %wqe_cnt.i54.i, align 4
  %sub4.i60.i = add i32 %39, -1
  %and.i61.i = and i32 %sub4.i60.i, %37
  %arrayidx.i62.i = getelementptr i64, ptr %35, i32 %and.i61.i
  %40 = ptrtoint ptr %arrayidx.i62.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %arrayidx.i62.i, align 8
  %42 = ptrtoint ptr %wc.addr.026.i57.i to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %41, ptr %wc.addr.026.i57.i, align 8
  %status.i63.i = getelementptr inbounds %struct.ib_wc, ptr %wc.addr.026.i57.i, i32 0, i32 1
  %43 = ptrtoint ptr %status.i63.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 5, ptr %status.i63.i, align 8
  %vendor_err.i64.i = getelementptr inbounds %struct.ib_wc, ptr %wc.addr.026.i57.i, i32 0, i32 3
  %44 = ptrtoint ptr %vendor_err.i64.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 5, ptr %vendor_err.i64.i, align 8
  %45 = load i32, ptr %tail.i51.i, align 4
  %inc.i65.i = add i32 %45, 1
  store i32 %inc.i65.i, ptr %tail.i51.i, align 4
  %inc6.i66.i = add nsw i32 %npolled.4, 1
  %qp7.i67.i = getelementptr inbounds %struct.ib_wc, ptr %wc.addr.026.i57.i, i32 0, i32 5
  %46 = ptrtoint ptr %qp7.i67.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %qp.1.i, ptr %qp7.i67.i, align 8
  %incdec.ptr.i68.i = getelementptr %struct.ib_wc, ptr %wc.addr.026.i57.i, i32 1
  %inc8.i69.i = add nuw i32 %i.027.i56.i, 1
  %exitcond.not.i70.i = icmp eq i32 %inc8.i69.i, %sub.i52.i
  br i1 %exitcond.not.i70.i, label %for.body.i71.i.mlx4_ib_qp_sw_comp.exit72.i_crit_edge, label %for.body.i71.i.land.rhs.i59.i_crit_edge

for.body.i71.i.land.rhs.i59.i_crit_edge:          ; preds = %for.body.i71.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i59.i

for.body.i71.i.mlx4_ib_qp_sw_comp.exit72.i_crit_edge: ; preds = %for.body.i71.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlx4_ib_qp_sw_comp.exit72.i

mlx4_ib_qp_sw_comp.exit72.i:                      ; preds = %for.body.i71.i.mlx4_ib_qp_sw_comp.exit72.i_crit_edge, %land.rhs.i59.i.mlx4_ib_qp_sw_comp.exit72.i_crit_edge, %for.body17.i.mlx4_ib_qp_sw_comp.exit72.i_crit_edge
  %npolled.5 = phi i32 [ %npolled.3, %for.body17.i.mlx4_ib_qp_sw_comp.exit72.i_crit_edge ], [ %npolled.4, %land.rhs.i59.i.mlx4_ib_qp_sw_comp.exit72.i_crit_edge ], [ %inc6.i66.i, %for.body.i71.i.mlx4_ib_qp_sw_comp.exit72.i_crit_edge ]
  %cmp19.not.i = icmp slt i32 %npolled.5, %num_entries
  br i1 %cmp19.not.i, label %mlx4_ib_qp_sw_comp.exit72.i.for.cond13.i_crit_edge, label %mlx4_ib_qp_sw_comp.exit72.i.out_crit_edge

mlx4_ib_qp_sw_comp.exit72.i.out_crit_edge:        ; preds = %mlx4_ib_qp_sw_comp.exit72.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

mlx4_ib_qp_sw_comp.exit72.i.for.cond13.i_crit_edge: ; preds = %mlx4_ib_qp_sw_comp.exit72.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond13.i

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %storemerge63 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %cur_qp.062 = phi ptr [ null, %for.body.lr.ph ], [ %cur_qp.1, %for.inc.for.body_crit_edge ]
  %add.ptr = getelementptr %struct.ib_wc, ptr %wc, i32 %storemerge63
  br label %repoll.i

repoll.i:                                         ; preds = %repoll.i.backedge, %for.body
  %47 = ptrtoint ptr %cons_index.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cons_index.i.i, align 4
  %49 = ptrtoint ptr %cqe1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %cqe1.i.i.i, align 4
  %and.i.i.i = and i32 %50, %48
  %51 = ptrtoint ptr %entry_size.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %entry_size.i.i.i.i.i, align 4
  %mul.i.i.i.i.i = mul i32 %52, %and.i.i.i
  %53 = ptrtoint ptr %nbufs.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %nbufs.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %54)
  %cmp.i.i.i.i.i.i = icmp eq i32 %54, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i

if.then.i.i.i.i.i.i:                              ; preds = %repoll.i
  call void @__sanitizer_cov_trace_pc() #11
  %55 = ptrtoint ptr %buf.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %buf.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i.i = getelementptr i8, ptr %56, i32 %mul.i.i.i.i.i
  br label %next_cqe_sw.exit.i

if.else.i.i.i.i.i.i:                              ; preds = %repoll.i
  call void @__sanitizer_cov_trace_pc() #11
  %57 = ptrtoint ptr %page_list.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %page_list.i.i.i.i.i.i, align 4
  %shr.i.i.i.i.i.i = ashr i32 %mul.i.i.i.i.i, 12
  %arrayidx.i.i.i.i.i.i = getelementptr %struct.mlx4_buf_list, ptr %58, i32 %shr.i.i.i.i.i.i
  %59 = ptrtoint ptr %arrayidx.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx.i.i.i.i.i.i, align 4
  %and.i.i.i.i.i.i = and i32 %mul.i.i.i.i.i, 4095
  %add.ptr3.i.i.i.i.i.i = getelementptr i8, ptr %60, i32 %and.i.i.i.i.i.i
  br label %next_cqe_sw.exit.i

next_cqe_sw.exit.i:                               ; preds = %if.else.i.i.i.i.i.i, %if.then.i.i.i.i.i.i
  %retval.0.i.i.i.i.i.i = phi ptr [ %add.ptr.i.i.i.i.i.i, %if.then.i.i.i.i.i.i ], [ %add.ptr3.i.i.i.i.i.i, %if.else.i.i.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %52)
  %cmp.i.i.i = icmp eq i32 %52, 64
  %cond.idx.i.i.i = zext i1 %cmp.i.i.i to i32
  %owner_sr_opcode.i.i.i = getelementptr %struct.mlx4_cqe, ptr %retval.0.i.i.i.i.i.i, i32 %cond.idx.i.i.i, i32 9
  %61 = ptrtoint ptr %owner_sr_opcode.i.i.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %owner_sr_opcode.i.i.i, align 1
  %.lobit.i.i.i = lshr i8 %62, 7
  %add.i.i.i = add i32 %50, 1
  %and6.i.i.i = and i32 %add.i.i.i, %48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.i.i.i = icmp ne i32 %and6.i.i.i, 0
  %63 = zext i1 %tobool7.i.i.i to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %.lobit.i.i.i, i8 %63)
  %tobool12.not.i.i.i = icmp ne i8 %.lobit.i.i.i, %63
  %tobool.not389.i = icmp eq ptr %retval.0.i.i.i.i.i.i, null
  %tobool.not.i = select i1 %tobool12.not.i.i.i, i1 true, i1 %tobool.not389.i
  br i1 %tobool.not.i, label %next_cqe_sw.exit.i.for.end_crit_edge, label %if.end.i

next_cqe_sw.exit.i.for.end_crit_edge:             ; preds = %next_cqe_sw.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end.i:                                         ; preds = %next_cqe_sw.exit.i
  %inc.i = add i32 %48, 1
  %64 = ptrtoint ptr %cons_index.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %inc.i, ptr %cons_index.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !48
  %65 = ptrtoint ptr %owner_sr_opcode.i.i.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %owner_sr_opcode.i.i.i, align 1
  %67 = and i8 %66, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 22, i8 %67)
  %cmp11.i = icmp eq i8 %67, 22
  br i1 %cmp11.i, label %if.then15.i, label %if.end32.i, !prof !49

if.then15.i:                                      ; preds = %if.end.i
  %68 = ptrtoint ptr %resize_buf.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %resize_buf.i, align 4
  %tobool16.not.i = icmp eq ptr %69, null
  br i1 %tobool16.not.i, label %if.then15.i.repoll.i.backedge_crit_edge, label %if.then17.i

if.then15.i.repoll.i.backedge_crit_edge:          ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %repoll.i.backedge

if.then17.i:                                      ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #11
  %70 = ptrtoint ptr %ibcq to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ibcq, align 8
  %72 = ptrtoint ptr %cqe1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %cqe1.i.i.i, align 4
  %dev1.i.i = getelementptr inbounds %struct.mlx4_ib_dev, ptr %71, i32 0, i32 1
  %74 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev1.i.i, align 8
  %add.i.i = add i32 %73, 1
  %76 = ptrtoint ptr %entry_size.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %entry_size.i.i.i.i.i, align 4
  %mul.i.i = mul i32 %77, %add.i.i
  tail call void @mlx4_buf_free(ptr noundef %75, i32 noundef %mul.i.i, ptr noundef %buf.i.i.i.i) #9
  %78 = ptrtoint ptr %resize_buf.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %resize_buf.i, align 4
  %80 = call ptr @memcpy(ptr %buf.i.i.i.i, ptr %79, i32 40)
  %cqe26.i = getelementptr inbounds %struct.mlx4_ib_cq_resize, ptr %79, i32 0, i32 1
  %81 = ptrtoint ptr %cqe26.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %cqe26.i, align 4
  %83 = ptrtoint ptr %cqe1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %cqe1.i.i.i, align 4
  tail call void @kfree(ptr noundef %79) #9
  %84 = ptrtoint ptr %resize_buf.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr null, ptr %resize_buf.i, align 4
  br label %repoll.i.backedge

repoll.i.backedge:                                ; preds = %if.then17.i, %if.then15.i.repoll.i.backedge_crit_edge
  br label %repoll.i

if.end32.i:                                       ; preds = %if.end.i
  %spec.select.le.i = getelementptr %struct.mlx4_cqe, ptr %retval.0.i.i.i.i.i.i, i32 %cond.idx.i.i.i
  %85 = and i8 %66, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 30, i8 %67)
  %cmp6.le.i = icmp eq i8 %67, 30
  %tobool33.not.i = icmp eq ptr %cur_qp.062, null
  br i1 %tobool33.not.i, label %if.end32.i.if.then38.i_crit_edge, label %lor.lhs.false.i

if.end32.i.if.then38.i_crit_edge:                 ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then38.i

lor.lhs.false.i:                                  ; preds = %if.end32.i
  %86 = ptrtoint ptr %spec.select.le.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %spec.select.le.i, align 4
  %and34.i = and i32 %87, 16777215
  %qpn.i = getelementptr inbounds %struct.mlx4_ib_qp, ptr %cur_qp.062, i32 0, i32 1, i32 1
  %88 = ptrtoint ptr %qpn.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %qpn.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and34.i, i32 %89)
  %cmp36.not.i = icmp eq i32 %and34.i, %89
  br i1 %cmp36.not.i, label %lor.lhs.false.i.if.end46.i_crit_edge, label %lor.lhs.false.i.if.then38.i_crit_edge

lor.lhs.false.i.if.then38.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then38.i

lor.lhs.false.i.if.end46.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46.i

if.then38.i:                                      ; preds = %lor.lhs.false.i.if.then38.i_crit_edge, %if.end32.i.if.then38.i_crit_edge
  %90 = ptrtoint ptr %ibcq to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %ibcq, align 8
  %dev42.i = getelementptr inbounds %struct.mlx4_ib_dev, ptr %91, i32 0, i32 1
  %92 = ptrtoint ptr %dev42.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dev42.i, align 8
  %94 = ptrtoint ptr %spec.select.le.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %spec.select.le.i, align 4
  %qp_table_tree.i.i = getelementptr inbounds %struct.mlx4_dev, ptr %93, i32 0, i32 6
  %num_qps.i.i = getelementptr inbounds %struct.mlx4_dev, ptr %93, i32 0, i32 3, i32 21
  %96 = ptrtoint ptr %num_qps.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %num_qps.i.i, align 4
  %sub.i.i23 = add i32 %97, -1
  %and.i.i24 = and i32 %sub.i.i23, %95
  %call.i.i = tail call ptr @radix_tree_lookup(ptr noundef %qp_table_tree.i.i, i32 noundef %and.i.i24) #9
  %add.ptr.i.i = getelementptr i8, ptr %call.i.i, i32 -252
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.then38.i, %lor.lhs.false.i.if.end46.i_crit_edge
  %cur_qp.1 = phi ptr [ %add.ptr.i.i, %if.then38.i ], [ %cur_qp.062, %lor.lhs.false.i.if.end46.i_crit_edge ]
  %qp.i = getelementptr %struct.ib_wc, ptr %wc, i32 %storemerge63, i32 5
  %98 = ptrtoint ptr %qp.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %cur_qp.1, ptr %qp.i, align 8
  %qp_type.i = getelementptr inbounds %struct.ib_qp, ptr %cur_qp.1, i32 0, i32 22
  %99 = ptrtoint ptr %qp_type.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %qp_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %100)
  %cmp48.i = icmp eq i32 %100, 10
  br i1 %cmp48.i, label %if.then50.i, label %if.end46.i.if.end58.i_crit_edge

if.end46.i.if.end58.i_crit_edge:                  ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58.i

if.then50.i:                                      ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #11
  %g_mlpath_rqpn51.i = getelementptr %struct.mlx4_cqe, ptr %retval.0.i.i.i.i.i.i, i32 %cond.idx.i.i.i, i32 2
  %101 = ptrtoint ptr %g_mlpath_rqpn51.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %g_mlpath_rqpn51.i, align 4
  %and52.i = and i32 %102, 16777215
  %103 = ptrtoint ptr %ibcq to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %ibcq, align 8
  %dev56.i = getelementptr inbounds %struct.mlx4_ib_dev, ptr %104, i32 0, i32 1
  %105 = ptrtoint ptr %dev56.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dev56.i, align 8
  %call57.i = tail call ptr @mlx4_srq_lookup(ptr noundef %106, i32 noundef %and52.i) #9
  br label %if.end58.i

if.end58.i:                                       ; preds = %if.then50.i, %if.end46.i.if.end58.i_crit_edge
  %msrq.0.i = phi ptr [ %call57.i, %if.then50.i ], [ null, %if.end46.i.if.end58.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool59.not.i = icmp eq i8 %85, 0
  br i1 %tobool59.not.i, label %if.else.i, label %if.then60.i

if.then60.i:                                      ; preds = %if.end58.i
  %sq.i = getelementptr inbounds %struct.mlx4_ib_qp, ptr %cur_qp.1, i32 0, i32 9
  %sq_signal_bits.i = getelementptr inbounds %struct.mlx4_ib_qp, ptr %cur_qp.1, i32 0, i32 6
  %107 = ptrtoint ptr %sq_signal_bits.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %sq_signal_bits.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool61.not.i = icmp eq i32 %108, 0
  br i1 %tobool61.not.i, label %if.then62.i, label %if.then60.i.if.end105.thread.i_crit_edge

if.then60.i.if.end105.thread.i_crit_edge:         ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end105.thread.i

if.then62.i:                                      ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #11
  %wqe_index.i = getelementptr %struct.mlx4_cqe, ptr %retval.0.i.i.i.i.i.i, i32 %cond.idx.i.i.i, i32 6
  %109 = ptrtoint ptr %wqe_index.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %wqe_index.i, align 4
  %tail64.i = getelementptr inbounds %struct.mlx4_ib_qp, ptr %cur_qp.1, i32 0, i32 9, i32 8
  %111 = ptrtoint ptr %tail64.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %tail64.i, align 4
  %113 = trunc i32 %112 to i16
  %conv67.i = sub i16 %110, %113
  %conv68.i = zext i16 %conv67.i to i32
  %add.i = add i32 %112, %conv68.i
  store i32 %add.i, ptr %tail64.i, align 4
  br label %if.end105.thread.i

if.else.i:                                        ; preds = %if.end58.i
  %srq76.i = getelementptr inbounds %struct.ib_qp, ptr %cur_qp.1, i32 0, i32 8
  %114 = ptrtoint ptr %srq76.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %srq76.i, align 8
  %tobool77.not.i = icmp eq ptr %115, null
  br i1 %tobool77.not.i, label %if.else85.i, label %if.then78.i

if.then78.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %wqe_index81.i = getelementptr %struct.mlx4_cqe, ptr %retval.0.i.i.i.i.i.i, i32 %cond.idx.i.i.i, i32 6
  %116 = ptrtoint ptr %wqe_index81.i to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %wqe_index81.i, align 4
  %wrid82.i = getelementptr inbounds %struct.mlx4_ib_srq, ptr %115, i32 0, i32 4
  %118 = ptrtoint ptr %wrid82.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %wrid82.i, align 4
  %idxprom.i = zext i16 %117 to i32
  %arrayidx83.i = getelementptr i64, ptr %119, i32 %idxprom.i
  %120 = ptrtoint ptr %arrayidx83.i to i32
  call void @__asan_load8_noabort(i32 %120)
  %121 = load i64, ptr %arrayidx83.i, align 8
  %122 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store8_noabort(i32 %122)
  store i64 %121, ptr %add.ptr, align 8
  tail call void @mlx4_ib_free_srq_wqe(ptr noundef nonnull %115, i32 noundef %idxprom.i) #9
  br label %if.end105.i

if.else85.i:                                      ; preds = %if.else.i
  %tobool86.not.i = icmp eq ptr %msrq.0.i, null
  br i1 %tobool86.not.i, label %if.else94.i, label %if.then87.i

if.then87.i:                                      ; preds = %if.else85.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i379.i = getelementptr i8, ptr %msrq.0.i, i32 -124
  %wqe_index89.i = getelementptr %struct.mlx4_cqe, ptr %retval.0.i.i.i.i.i.i, i32 %cond.idx.i.i.i, i32 6
  %123 = ptrtoint ptr %wqe_index89.i to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %wqe_index89.i, align 4
  %wrid90.i = getelementptr i8, ptr %msrq.0.i, i32 124
  %125 = ptrtoint ptr %wrid90.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %wrid90.i, align 4
  %idxprom91.i = zext i16 %124 to i32
  %arrayidx92.i = getelementptr i64, ptr %126, i32 %idxprom91.i
  %127 = ptrtoint ptr %arrayidx92.i to i32
  call void @__asan_load8_noabort(i32 %127)
  %128 = load i64, ptr %arrayidx92.i, align 8
  %129 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store8_noabort(i32 %129)
  store i64 %128, ptr %add.ptr, align 8
  tail call void @mlx4_ib_free_srq_wqe(ptr noundef %add.ptr.i379.i, i32 noundef %idxprom91.i) #9
  br label %if.end105.i

if.else94.i:                                      ; preds = %if.else85.i
  call void @__sanitizer_cov_trace_pc() #11
  %rq.i = getelementptr inbounds %struct.mlx4_ib_qp, ptr %cur_qp.1, i32 0, i32 4
  %tail95.i = getelementptr inbounds %struct.mlx4_ib_qp, ptr %cur_qp.1, i32 0, i32 4, i32 8
  %130 = ptrtoint ptr %tail95.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %tail95.i, align 4
  %wqe_cnt96.i = getelementptr inbounds %struct.mlx4_ib_qp, ptr %cur_qp.1, i32 0, i32 4, i32 2
  %132 = ptrtoint ptr %wqe_cnt96.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %wqe_cnt96.i, align 4
  %sub97.i = add i32 %133, -1
  %and98.i = and i32 %sub97.i, %131
  %134 = ptrtoint ptr %rq.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %rq.i, align 4
  %arrayidx100.i = getelementptr i64, ptr %135, i32 %and98.i
  %136 = ptrtoint ptr %arrayidx100.i to i32
  call void @__asan_load8_noabort(i32 %136)
  %137 = load i64, ptr %arrayidx100.i, align 8
  %138 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store8_noabort(i32 %138)
  store i64 %137, ptr %add.ptr, align 8
  %139 = load i32, ptr %tail95.i, align 4
  %inc102.i = add i32 %139, 1
  store i32 %inc102.i, ptr %tail95.i, align 4
  br label %if.end105.i

if.end105.i:                                      ; preds = %if.else94.i, %if.then87.i, %if.then78.i
  %tail.0.i = phi i32 [ 0, %if.then78.i ], [ 0, %if.then87.i ], [ %and98.i, %if.else94.i ]
  br i1 %cmp6.le.i, label %if.end105.i.if.then113.i_crit_edge, label %if.else147.i, !prof !49

if.end105.i.if.then113.i_crit_edge:               ; preds = %if.end105.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then113.i

if.end105.thread.i:                               ; preds = %if.then62.i, %if.then60.i.if.end105.thread.i_crit_edge
  %140 = ptrtoint ptr %sq.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %sq.i, align 4
  %tail71.i = getelementptr inbounds %struct.mlx4_ib_qp, ptr %cur_qp.1, i32 0, i32 9, i32 8
  %142 = ptrtoint ptr %tail71.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %tail71.i, align 4
  %wqe_cnt.i = getelementptr inbounds %struct.mlx4_ib_qp, ptr %cur_qp.1, i32 0, i32 9, i32 2
  %144 = ptrtoint ptr %wqe_cnt.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %wqe_cnt.i, align 4
  %sub72.i = add i32 %145, -1
  %and73.i = and i32 %sub72.i, %143
  %arrayidx.i = getelementptr i64, ptr %141, i32 %and73.i
  %146 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %146)
  %147 = load i64, ptr %arrayidx.i, align 8
  %148 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store8_noabort(i32 %148)
  store i64 %147, ptr %add.ptr, align 8
  %149 = load i32, ptr %tail71.i, align 4
  %inc75.i = add i32 %149, 1
  store i32 %inc75.i, ptr %tail71.i, align 4
  br i1 %cmp6.le.i, label %if.end105.thread.i.if.then113.i_crit_edge, label %if.then116.i, !prof !49

if.end105.thread.i.if.then113.i_crit_edge:        ; preds = %if.end105.thread.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then113.i

if.then113.i:                                     ; preds = %if.end105.thread.i.if.then113.i_crit_edge, %if.end105.i.if.then113.i_crit_edge
  tail call fastcc void @mlx4_ib_handle_error_cqe(ptr noundef %spec.select.le.i, ptr noundef %add.ptr) #9
  br label %for.inc

if.then116.i:                                     ; preds = %if.end105.thread.i
  %status385.i = getelementptr %struct.ib_wc, ptr %wc, i32 %storemerge63, i32 1
  %150 = ptrtoint ptr %status385.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 0, ptr %status385.i, align 8
  %wc_flags.i = getelementptr %struct.ib_wc, ptr %wc, i32 %storemerge63, i32 9
  %151 = ptrtoint ptr %wc_flags.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 0, ptr %wc_flags.i, align 8
  %152 = ptrtoint ptr %owner_sr_opcode.i.i.i to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %owner_sr_opcode.i.i.i, align 1
  %154 = and i8 %153, 31
  %and119.i = zext i8 %154 to i32
  %155 = zext i32 %and119.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %155, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and119.i, label %if.then116.i.for.inc_crit_edge [
    i32 9, label %sw.bb.i
    i32 8, label %if.then116.i.sw.bb121.i_crit_edge
    i32 11, label %sw.bb122.i
    i32 10, label %if.then116.i.sw.bb125.i_crit_edge
    i32 1, label %if.then116.i.sw.bb125.i_crit_edge118
    i32 16, label %sw.bb127.i
    i32 17, label %sw.bb129.i
    i32 18, label %sw.bb132.i
    i32 20, label %sw.bb135.i
    i32 21, label %sw.bb138.i
    i32 14, label %sw.bb141.i
    i32 25, label %sw.bb143.i
    i32 27, label %sw.bb145.i
  ]

if.then116.i.sw.bb125.i_crit_edge118:             ; preds = %if.then116.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb125.i

if.then116.i.sw.bb125.i_crit_edge:                ; preds = %if.then116.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb125.i

if.then116.i.sw.bb121.i_crit_edge:                ; preds = %if.then116.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb121.i

if.then116.i.for.inc_crit_edge:                   ; preds = %if.then116.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

sw.bb.i:                                          ; preds = %if.then116.i
  call void @__sanitizer_cov_trace_pc() #11
  %156 = ptrtoint ptr %wc_flags.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 2, ptr %wc_flags.i, align 8
  br label %sw.bb121.i

sw.bb121.i:                                       ; preds = %sw.bb.i, %if.then116.i.sw.bb121.i_crit_edge
  %opcode.i = getelementptr %struct.ib_wc, ptr %wc, i32 %storemerge63, i32 2
  %157 = ptrtoint ptr %opcode.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 1, ptr %opcode.i, align 4
  br label %for.inc

sw.bb122.i:                                       ; preds = %if.then116.i
  call void @__sanitizer_cov_trace_pc() #11
  %158 = ptrtoint ptr %wc_flags.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 2, ptr %wc_flags.i, align 8
  br label %sw.bb125.i

sw.bb125.i:                                       ; preds = %sw.bb122.i, %if.then116.i.sw.bb125.i_crit_edge, %if.then116.i.sw.bb125.i_crit_edge118
  %opcode126.i = getelementptr %struct.ib_wc, ptr %wc, i32 %storemerge63, i32 2
  %159 = ptrtoint ptr %opcode126.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 0, ptr %opcode126.i, align 4
  br label %for.inc

sw.bb127.i:                                       ; preds = %if.then116.i
  call void @__sanitizer_cov_trace_pc() #11
  %opcode128.i = getelementptr %struct.ib_wc, ptr %wc, i32 %storemerge63, i32 2
  %160 = ptrtoint ptr %opcode128.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 2, ptr %opcode128.i, align 4
  %byte_cnt.i = getelementptr %struct.mlx4_cqe, ptr %retval.0.i.i.i.i.i.i, i32 %cond.idx.i.i.i, i32 5
  %161 = ptrtoint ptr %byte_cnt.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %byte_cnt.i, align 4
  %byte_len.i = getelementptr %struct.ib_wc, ptr %wc, i32 %storemerge63, i32 4
  %163 = ptrtoint ptr %byte_len.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %162, ptr %byte_len.i, align 4
  br label %for.inc

sw.bb129.i:                                       ; preds = %if.then116.i
  call void @__sanitizer_cov_trace_pc() #11
  %opcode130.i = getelementptr %struct.ib_wc, ptr %wc, i32 %storemerge63, i32 2
  %164 = ptrtoint ptr %opcode130.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 3, ptr %opcode130.i, align 4
  %byte_len131.i = getelementptr %struct.ib_wc, ptr %wc, i32 %storemerge63, i32 4
  %165 = ptrtoint ptr %byte_len131.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 8, ptr %byte_len131.i, align 4
  br label %for.inc

sw.bb132.i:                                       ; preds = %if.then116.i
  call void @__sanitizer_cov_trace_pc() #11
  %opcode133.i = getelementptr %struct.ib_wc, ptr %wc, i32 %storemerge63, i32 2
  %166 = ptrtoint ptr %opcode133.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 4, ptr %opcode133.i, align 4
  %byte_len134.i = getelementptr %struct.ib_wc, ptr %wc, i32 %storemerge63, i32 4
  %167 = ptrtoint ptr %byte_len134.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 8, ptr %byte_len134.i, align 4
  br label %for.inc

sw.bb135.i:                                       ; preds = %if.then116.i
  call void @__sanitizer_cov_trace_pc() #11
  %opcode136.i = getelementptr %struct.ib_wc, ptr %wc, i32 %storemerge63, i32 2
  %168 = ptrtoint ptr %opcode136.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 9, ptr %opcode136.i, align 4
  %byte_len137.i = getelementptr %struct.ib_wc, ptr %wc, i32 %storemerge63, i32 4
  %169 = ptrtoint ptr %byte_len137.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 8, ptr %byte_len137.i, align 4
  br label %for.inc

sw.bb138.i:                                       ; preds = %if.then116.i
  call void @__sanitizer_cov_trace_pc() #11
  %opcode139.i = getelementptr %struct.ib_wc, ptr %wc, i32 %storemerge63, i32 2
  %170 = ptrtoint ptr %opcode139.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 10, ptr %opcode139.i, align 4
  %byte_len140.i = getelementptr %struct.ib_wc, ptr %wc, i32 %storemerge63, i32 4
  %171 = ptrtoint ptr %byte_len140.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 8, ptr %byte_len140.i, align 4
  br label %for.inc

sw.bb141.i:                                       ; preds = %if.then116.i
  call void @__sanitizer_cov_trace_pc() #11
  %opcode142.i = getelementptr %struct.ib_wc, ptr %wc, i32 %storemerge63, i32 2
  %172 = ptrtoint ptr %opcode142.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 7, ptr %opcode142.i, align 4
  br label %for.inc

sw.bb143.i:                                       ; preds = %if.then116.i
  call void @__sanitizer_cov_trace_pc() #11
  %opcode144.i = getelementptr %struct.ib_wc, ptr %wc, i32 %storemerge63, i32 2
  %173 = ptrtoint ptr %opcode144.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 8, ptr %opcode144.i, align 4
  br label %for.inc

sw.bb145.i:                                       ; preds = %if.then116.i
  call void @__sanitizer_cov_trace_pc() #11
  %opcode146.i = getelementptr %struct.ib_wc, ptr %wc, i32 %storemerge63, i32 2
  %174 = ptrtoint ptr %opcode146.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 6, ptr %opcode146.i, align 4
  br label %for.inc

if.else147.i:                                     ; preds = %if.end105.i
  %status.i = getelementptr %struct.ib_wc, ptr %wc, i32 %storemerge63, i32 1
  %175 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 0, ptr %status.i, align 8
  %byte_cnt148.i = getelementptr %struct.mlx4_cqe, ptr %retval.0.i.i.i.i.i.i, i32 %cond.idx.i.i.i, i32 5
  %176 = ptrtoint ptr %byte_cnt148.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %byte_cnt148.i, align 4
  %byte_len149.i = getelementptr %struct.ib_wc, ptr %wc, i32 %storemerge63, i32 4
  %178 = ptrtoint ptr %byte_len149.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %177, ptr %byte_len149.i, align 4
  %179 = ptrtoint ptr %owner_sr_opcode.i.i.i to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %owner_sr_opcode.i.i.i, align 1
  %181 = and i8 %180, 31
  %and152.i = zext i8 %181 to i32
  %182 = zext i32 %and152.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %182, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %and152.i, label %if.else147.i.sw.epilog169.i_crit_edge [
    i32 0, label %sw.bb153.i
    i32 3, label %sw.bb156.i
    i32 1, label %sw.bb161.i
    i32 2, label %sw.bb164.i
  ]

if.else147.i.sw.epilog169.i_crit_edge:            ; preds = %if.else147.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog169.i

sw.bb153.i:                                       ; preds = %if.else147.i
  call void @__sanitizer_cov_trace_pc() #11
  %opcode154.i = getelementptr %struct.ib_wc, ptr %wc, i32 %storemerge63, i32 2
  %183 = ptrtoint ptr %opcode154.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 129, ptr %opcode154.i, align 4
  %wc_flags155.i = getelementptr %struct.ib_wc, ptr %wc, i32 %storemerge63, i32 9
  %184 = ptrtoint ptr %wc_flags155.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 2, ptr %wc_flags155.i, align 8
  %immed_rss_invalid.i = getelementptr %struct.mlx4_cqe, ptr %retval.0.i.i.i.i.i.i, i32 %cond.idx.i.i.i, i32 1
  %185 = ptrtoint ptr %immed_rss_invalid.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %immed_rss_invalid.i, align 4
  %ex.i = getelementptr %struct.ib_wc, ptr %wc, i32 %storemerge63, i32 6
  %187 = ptrtoint ptr %ex.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %186, ptr %ex.i, align 4
  br label %sw.epilog169.i

sw.bb156.i:                                       ; preds = %if.else147.i
  call void @__sanitizer_cov_trace_pc() #11
  %opcode157.i = getelementptr %struct.ib_wc, ptr %wc, i32 %storemerge63, i32 2
  %188 = ptrtoint ptr %opcode157.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 128, ptr %opcode157.i, align 4
  %wc_flags158.i = getelementptr %struct.ib_wc, ptr %wc, i32 %storemerge63, i32 9
  %189 = ptrtoint ptr %wc_flags158.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 4, ptr %wc_flags158.i, align 8
  %immed_rss_invalid159.i = getelementptr %struct.mlx4_cqe, ptr %retval.0.i.i.i.i.i.i, i32 %cond.idx.i.i.i, i32 1
  %190 = ptrtoint ptr %immed_rss_invalid159.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %immed_rss_invalid159.i, align 4
  %ex160.i = getelementptr %struct.ib_wc, ptr %wc, i32 %storemerge63, i32 6
  %192 = ptrtoint ptr %ex160.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 %191, ptr %ex160.i, align 4
  br label %sw.epilog169.i

sw.bb161.i:                                       ; preds = %if.else147.i
  call void @__sanitizer_cov_trace_pc() #11
  %opcode162.i = getelementptr %struct.ib_wc, ptr %wc, i32 %storemerge63, i32 2
  %193 = ptrtoint ptr %opcode162.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 128, ptr %opcode162.i, align 4
  %wc_flags163.i = getelementptr %struct.ib_wc, ptr %wc, i32 %storemerge63, i32 9
  %194 = ptrtoint ptr %wc_flags163.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 0, ptr %wc_flags163.i, align 8
  br label %sw.epilog169.i

sw.bb164.i:                                       ; preds = %if.else147.i
  call void @__sanitizer_cov_trace_pc() #11
  %opcode165.i = getelementptr %struct.ib_wc, ptr %wc, i32 %storemerge63, i32 2
  %195 = ptrtoint ptr %opcode165.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 128, ptr %opcode165.i, align 4
  %wc_flags166.i = getelementptr %struct.ib_wc, ptr %wc, i32 %storemerge63, i32 9
  %196 = ptrtoint ptr %wc_flags166.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 2, ptr %wc_flags166.i, align 8
  %immed_rss_invalid167.i = getelementptr %struct.mlx4_cqe, ptr %retval.0.i.i.i.i.i.i, i32 %cond.idx.i.i.i, i32 1
  %197 = ptrtoint ptr %immed_rss_invalid167.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %immed_rss_invalid167.i, align 4
  %ex168.i = getelementptr %struct.ib_wc, ptr %wc, i32 %storemerge63, i32 6
  %199 = ptrtoint ptr %ex168.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 %198, ptr %ex168.i, align 4
  br label %sw.epilog169.i

sw.epilog169.i:                                   ; preds = %sw.bb164.i, %sw.bb161.i, %sw.bb156.i, %sw.bb153.i, %if.else147.i.sw.epilog169.i_crit_edge
  %200 = ptrtoint ptr %qp.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %qp.i, align 8
  %202 = ptrtoint ptr %201 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %201, align 4
  %port.i = getelementptr inbounds %struct.mlx4_ib_qp, ptr %cur_qp.1, i32 0, i32 17
  %204 = ptrtoint ptr %port.i to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %port.i, align 4
  %conv172.i = zext i8 %205 to i32
  %call173.i = tail call i32 @rdma_port_get_link_layer(ptr noundef %203, i32 noundef %conv172.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call173.i)
  %cmp174.i = icmp eq i32 %call173.i, 2
  %206 = ptrtoint ptr %ibcq to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %ibcq, align 8
  %dev179.i = getelementptr inbounds %struct.mlx4_ib_dev, ptr %207, i32 0, i32 1
  %208 = ptrtoint ptr %dev179.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %dev179.i, align 8
  %flags.i.i = getelementptr inbounds %struct.mlx4_dev, ptr %209, i32 0, i32 1
  %210 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %flags.i.i, align 4
  %and.i380.i = and i32 %211, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i380.i)
  %tobool181.not.i = icmp eq i32 %and.i380.i, 0
  br i1 %tobool181.not.i, label %sw.epilog169.i.if.end187.i_crit_edge, label %if.then182.i

sw.epilog169.i.if.end187.i_crit_edge:             ; preds = %sw.epilog169.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end187.i

if.then182.i:                                     ; preds = %sw.epilog169.i
  %mlx4_ib_qp_type.i = getelementptr inbounds %struct.mlx4_ib_qp, ptr %cur_qp.1, i32 0, i32 10
  %212 = ptrtoint ptr %mlx4_ib_qp_type.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %mlx4_ib_qp_type.i, align 8
  %and183.i = and i32 %213, 458752
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and183.i)
  %tobool184.not.i = icmp eq i32 %and183.i, 0
  br i1 %tobool184.not.i, label %if.then182.i.if.end187.i_crit_edge, label %if.then185.i

if.then182.i.if.end187.i_crit_edge:               ; preds = %if.then182.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end187.i

if.then185.i:                                     ; preds = %if.then182.i
  %214 = ptrtoint ptr %cur_qp.1 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %cur_qp.1, align 8
  %sqp_proxy_rcv.i.i = getelementptr inbounds %struct.mlx4_ib_qp, ptr %cur_qp.1, i32 0, i32 27
  %216 = ptrtoint ptr %sqp_proxy_rcv.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %sqp_proxy_rcv.i.i, align 4
  %map.i.i = getelementptr %struct.mlx4_ib_buf, ptr %217, i32 %tail.0.i, i32 1
  %218 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %map.i.i, align 4
  %220 = ptrtoint ptr %215 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %215, align 8
  tail call void @dma_sync_single_for_cpu(ptr noundef %221, i32 noundef %219, i32 noundef 56, i32 noundef 2) #9
  %222 = ptrtoint ptr %sqp_proxy_rcv.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %sqp_proxy_rcv.i.i, align 4
  %arrayidx2.i.i = getelementptr %struct.mlx4_ib_buf, ptr %223, i32 %tail.0.i
  %224 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %arrayidx2.i.i, align 4
  %tun.i.i = getelementptr inbounds %struct.mlx4_ib_proxy_sqp_hdr, ptr %225, i32 0, i32 1
  %pkey_index.i.i = getelementptr inbounds %struct.mlx4_ib_proxy_sqp_hdr, ptr %225, i32 0, i32 1, i32 3
  %226 = ptrtoint ptr %pkey_index.i.i to i32
  call void @__asan_loadN_noabort(i32 %226, i32 2)
  %227 = load i16, ptr %pkey_index.i.i, align 1
  %pkey_index3.i.i = getelementptr %struct.ib_wc, ptr %wc, i32 %storemerge63, i32 10
  %228 = ptrtoint ptr %pkey_index3.i.i to i32
  call void @__asan_store2_noabort(i32 %228)
  store i16 %227, ptr %pkey_index3.i.i, align 4
  %229 = ptrtoint ptr %tun.i.i to i32
  call void @__asan_loadN_noabort(i32 %229, i32 4)
  %230 = load i32, ptr %tun.i.i, align 1
  %and.i381.i = and i32 %230, 16777215
  %src_qp.i.i = getelementptr %struct.ib_wc, ptr %wc, i32 %storemerge63, i32 7
  %231 = ptrtoint ptr %src_qp.i.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 %and.i381.i, ptr %src_qp.i.i, align 8
  %g_ml_path.i.i = getelementptr inbounds %struct.mlx4_ib_proxy_sqp_hdr, ptr %225, i32 0, i32 1, i32 1
  %232 = ptrtoint ptr %g_ml_path.i.i to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %g_ml_path.i.i, align 1
  %.lobit.i.i = lshr i8 %233, 7
  %234 = zext i8 %.lobit.i.i to i32
  %wc_flags.i.i = getelementptr %struct.ib_wc, ptr %wc, i32 %storemerge63, i32 9
  %235 = ptrtoint ptr %wc_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %wc_flags.i.i, align 8
  %or.i.i = or i32 %236, %234
  store i32 %or.i.i, ptr %wc_flags.i.i, align 8
  %dlid_path_bits.i.i = getelementptr %struct.ib_wc, ptr %wc, i32 %storemerge63, i32 12
  %237 = ptrtoint ptr %dlid_path_bits.i.i to i32
  call void @__asan_store1_noabort(i32 %237)
  store i8 0, ptr %dlid_path_bits.i.i, align 1
  br i1 %cmp174.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then185.i
  call void @__sanitizer_cov_trace_pc() #11
  %slid.i.i = getelementptr %struct.ib_wc, ptr %wc, i32 %storemerge63, i32 8
  %238 = ptrtoint ptr %slid.i.i to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 0, ptr %slid.i.i, align 4
  %sl_vid.i.i = getelementptr inbounds %struct.mlx4_ib_proxy_sqp_hdr, ptr %225, i32 0, i32 1, i32 4
  %239 = ptrtoint ptr %sl_vid.i.i to i32
  call void @__asan_loadN_noabort(i32 %239, i32 2)
  %240 = load i16, ptr %sl_vid.i.i, align 1
  %vlan_id.i.i = getelementptr %struct.ib_wc, ptr %wc, i32 %storemerge63, i32 15
  %241 = ptrtoint ptr %vlan_id.i.i to i32
  call void @__asan_store2_noabort(i32 %241)
  store i16 %240, ptr %vlan_id.i.i, align 2
  %smac.i.i = getelementptr %struct.ib_wc, ptr %wc, i32 %storemerge63, i32 14
  %mac_31_0.i.i = getelementptr inbounds %struct.mlx4_ib_proxy_sqp_hdr, ptr %225, i32 0, i32 1, i32 6
  %242 = ptrtoint ptr %mac_31_0.i.i to i32
  call void @__asan_loadN_noabort(i32 %242, i32 4)
  %243 = load i32, ptr %mac_31_0.i.i, align 1
  %244 = ptrtoint ptr %smac.i.i to i32
  call void @__asan_store4_noabort(i32 %244)
  store i32 %243, ptr %smac.i.i, align 4
  %arrayidx13.i.i = getelementptr %struct.ib_wc, ptr %wc, i32 %storemerge63, i32 14, i32 4
  %slid_mac_47_32.i.i = getelementptr inbounds %struct.mlx4_ib_proxy_sqp_hdr, ptr %225, i32 0, i32 1, i32 5
  %245 = ptrtoint ptr %slid_mac_47_32.i.i to i32
  call void @__asan_loadN_noabort(i32 %245, i32 2)
  %246 = load i16, ptr %slid_mac_47_32.i.i, align 1
  %247 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_store2_noabort(i32 %247)
  store i16 %246, ptr %arrayidx13.i.i, align 4
  %or16.i.i = or i32 %or.i.i, 48
  %248 = ptrtoint ptr %wc_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %248)
  store i32 %or16.i.i, ptr %wc_flags.i.i, align 8
  br label %for.inc

if.else.i.i:                                      ; preds = %if.then185.i
  call void @__sanitizer_cov_trace_pc() #11
  %slid_mac_47_3218.i.i = getelementptr inbounds %struct.mlx4_ib_proxy_sqp_hdr, ptr %225, i32 0, i32 1, i32 5
  %249 = ptrtoint ptr %slid_mac_47_3218.i.i to i32
  call void @__asan_loadN_noabort(i32 %249, i32 2)
  %250 = load i16, ptr %slid_mac_47_3218.i.i, align 1
  %conv19.i.i = zext i16 %250 to i32
  %slid20.i.i = getelementptr %struct.ib_wc, ptr %wc, i32 %storemerge63, i32 8
  %251 = ptrtoint ptr %slid20.i.i to i32
  call void @__asan_store4_noabort(i32 %251)
  store i32 %conv19.i.i, ptr %slid20.i.i, align 4
  %sl_vid22.i.i = getelementptr inbounds %struct.mlx4_ib_proxy_sqp_hdr, ptr %225, i32 0, i32 1, i32 4
  %252 = ptrtoint ptr %sl_vid22.i.i to i32
  call void @__asan_loadN_noabort(i32 %252, i32 2)
  %253 = load i16, ptr %sl_vid22.i.i, align 1
  %254 = lshr i16 %253, 12
  %conv24.i.i = trunc i16 %254 to i8
  %sl.i.i = getelementptr %struct.ib_wc, ptr %wc, i32 %storemerge63, i32 11
  %255 = ptrtoint ptr %sl.i.i to i32
  call void @__asan_store1_noabort(i32 %255)
  store i8 %conv24.i.i, ptr %sl.i.i, align 2
  br label %for.inc

if.end187.i:                                      ; preds = %if.then182.i.if.end187.i_crit_edge, %sw.epilog169.i.if.end187.i_crit_edge
  %g_mlpath_rqpn188.i = getelementptr %struct.mlx4_cqe, ptr %retval.0.i.i.i.i.i.i, i32 %cond.idx.i.i.i, i32 2
  %256 = ptrtoint ptr %g_mlpath_rqpn188.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %g_mlpath_rqpn188.i, align 4
  %and189.i = and i32 %257, 16777215
  %src_qp.i = getelementptr %struct.ib_wc, ptr %wc, i32 %storemerge63, i32 7
  %258 = ptrtoint ptr %src_qp.i to i32
  call void @__asan_store4_noabort(i32 %258)
  store i32 %and189.i, ptr %src_qp.i, align 8
  %shr.i = lshr i32 %257, 24
  %259 = trunc i32 %shr.i to i8
  %conv191.i = and i8 %259, 127
  %dlid_path_bits.i = getelementptr %struct.ib_wc, ptr %wc, i32 %storemerge63, i32 12
  %260 = ptrtoint ptr %dlid_path_bits.i to i32
  call void @__asan_store1_noabort(i32 %260)
  store i8 %conv191.i, ptr %dlid_path_bits.i, align 1
  %.lobit.i = lshr i32 %257, 31
  %wc_flags194.i = getelementptr %struct.ib_wc, ptr %wc, i32 %storemerge63, i32 9
  %261 = ptrtoint ptr %wc_flags194.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %wc_flags194.i, align 8
  %or195.i = or i32 %262, %.lobit.i
  store i32 %or195.i, ptr %wc_flags194.i, align 8
  %immed_rss_invalid196.i = getelementptr %struct.mlx4_cqe, ptr %retval.0.i.i.i.i.i.i, i32 %cond.idx.i.i.i, i32 1
  %263 = ptrtoint ptr %immed_rss_invalid196.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %immed_rss_invalid196.i, align 4
  %265 = trunc i32 %264 to i16
  %conv198.i = and i16 %265, 127
  %pkey_index.i = getelementptr %struct.ib_wc, ptr %wc, i32 %storemerge63, i32 10
  %266 = ptrtoint ptr %pkey_index.i to i32
  call void @__asan_store2_noabort(i32 %266)
  store i16 %conv198.i, ptr %pkey_index.i, align 4
  %267 = getelementptr %struct.mlx4_cqe, ptr %retval.0.i.i.i.i.i.i, i32 %cond.idx.i.i.i, i32 4
  %badfcs_enc.i = getelementptr %struct.mlx4_cqe, ptr %retval.0.i.i.i.i.i.i, i32 %cond.idx.i.i.i, i32 4, i32 0, i32 3
  %268 = ptrtoint ptr %badfcs_enc.i to i32
  call void @__asan_load1_noabort(i32 %268)
  %269 = load i8, ptr %badfcs_enc.i, align 1
  %270 = and i8 %269, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %270)
  %tobool.not.i.i = icmp eq i8 %270, 0
  br i1 %tobool.not.i.i, label %lor.rhs.i.i, label %if.end187.i.mlx4_ib_ipoib_csum_ok.exit.thread387.i_crit_edge

if.end187.i.mlx4_ib_ipoib_csum_ok.exit.thread387.i_crit_edge: ; preds = %if.end187.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlx4_ib_ipoib_csum_ok.exit.thread387.i

lor.rhs.i.i:                                      ; preds = %if.end187.i
  call void @__sanitizer_cov_trace_pc() #11
  %checksum.i = getelementptr %struct.mlx4_cqe, ptr %retval.0.i.i.i.i.i.i, i32 %cond.idx.i.i.i, i32 7
  %271 = ptrtoint ptr %checksum.i to i32
  call void @__asan_load2_noabort(i32 %271)
  %272 = load i16, ptr %checksum.i, align 2
  %status199.i = getelementptr %struct.mlx4_cqe, ptr %retval.0.i.i.i.i.i.i, i32 %cond.idx.i.i.i, i32 4, i32 0, i32 1
  %273 = ptrtoint ptr %status199.i to i32
  call void @__asan_load2_noabort(i32 %273)
  %274 = load i16, ptr %status199.i, align 2
  %conv1.i.i = zext i16 %274 to i32
  %and2.i.i = and i32 %conv1.i.i, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool3.not.i.i = icmp ne i32 %and2.i.i, 0
  %and5.i.i = and i32 %conv1.i.i, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i)
  %tobool6.not.i.i = icmp ne i32 %and5.i.i, 0
  %or.cond.i.not.i = and i1 %tobool3.not.i.i, %tobool6.not.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %272)
  %cmp.i.not.i = icmp eq i16 %272, -1
  %or.cond.i = select i1 %or.cond.i.not.i, i1 %cmp.i.not.i, i1 false
  %spec.select390.i = select i1 %or.cond.i, i32 8, i32 0
  br label %mlx4_ib_ipoib_csum_ok.exit.thread387.i

mlx4_ib_ipoib_csum_ok.exit.thread387.i:           ; preds = %lor.rhs.i.i, %if.end187.i.mlx4_ib_ipoib_csum_ok.exit.thread387.i_crit_edge
  %275 = phi i32 [ 8, %if.end187.i.mlx4_ib_ipoib_csum_ok.exit.thread387.i_crit_edge ], [ %spec.select390.i, %lor.rhs.i.i ]
  %or204.i = or i32 %275, %or195.i
  %276 = ptrtoint ptr %wc_flags194.i to i32
  call void @__asan_store4_noabort(i32 %276)
  store i32 %or204.i, ptr %wc_flags194.i, align 8
  br i1 %cmp174.i, label %if.then206.i, label %if.else224.i

if.then206.i:                                     ; preds = %mlx4_ib_ipoib_csum_ok.exit.thread387.i
  %slid.i = getelementptr %struct.ib_wc, ptr %wc, i32 %storemerge63, i32 8
  %277 = ptrtoint ptr %slid.i to i32
  call void @__asan_store4_noabort(i32 %277)
  store i32 0, ptr %slid.i, align 4
  %sl_vid.i = getelementptr %struct.mlx4_cqe, ptr %retval.0.i.i.i.i.i.i, i32 %cond.idx.i.i.i, i32 3
  %278 = ptrtoint ptr %sl_vid.i to i32
  call void @__asan_load2_noabort(i32 %278)
  %279 = load i16, ptr %sl_vid.i, align 4
  %280 = lshr i16 %279, 13
  %conv209.i = trunc i16 %280 to i8
  %sl.i = getelementptr %struct.ib_wc, ptr %wc, i32 %storemerge63, i32 11
  %281 = ptrtoint ptr %sl.i to i32
  call void @__asan_store1_noabort(i32 %281)
  store i8 %conv209.i, ptr %sl.i, align 2
  %282 = ptrtoint ptr %spec.select.le.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %spec.select.le.i, align 4
  %and211.i = and i32 %283, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and211.i)
  %tobool212.not.i = icmp eq i32 %and211.i, 0
  br i1 %tobool212.not.i, label %if.then206.i.if.end220.i_crit_edge, label %if.then213.i

if.then206.i.if.end220.i_crit_edge:               ; preds = %if.then206.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end220.i

if.then213.i:                                     ; preds = %if.then206.i
  call void @__sanitizer_cov_trace_pc() #11
  %284 = ptrtoint ptr %sl_vid.i to i32
  call void @__asan_load2_noabort(i32 %284)
  %285 = load i16, ptr %sl_vid.i, align 4
  %286 = and i16 %285, 4095
  br label %if.end220.i

if.end220.i:                                      ; preds = %if.then213.i, %if.then206.i.if.end220.i_crit_edge
  %.sink.i = phi i16 [ %286, %if.then213.i ], [ -1, %if.then206.i.if.end220.i_crit_edge ]
  %287 = getelementptr %struct.ib_wc, ptr %wc, i32 %storemerge63, i32 15
  %288 = ptrtoint ptr %287 to i32
  call void @__asan_store2_noabort(i32 %288)
  store i16 %.sink.i, ptr %287, align 2
  %smac.i = getelementptr %struct.ib_wc, ptr %wc, i32 %storemerge63, i32 14
  %289 = call ptr @memcpy(ptr %smac.i, ptr %267, i32 6)
  %or223.i = or i32 %or204.i, 48
  %290 = ptrtoint ptr %wc_flags194.i to i32
  call void @__asan_store4_noabort(i32 %290)
  store i32 %or223.i, ptr %wc_flags194.i, align 8
  br label %for.inc

if.else224.i:                                     ; preds = %mlx4_ib_ipoib_csum_ok.exit.thread387.i
  call void @__sanitizer_cov_trace_pc() #11
  %291 = ptrtoint ptr %267 to i32
  call void @__asan_load2_noabort(i32 %291)
  %292 = load i16, ptr %267, align 2
  %conv225.i = zext i16 %292 to i32
  %slid226.i = getelementptr %struct.ib_wc, ptr %wc, i32 %storemerge63, i32 8
  %293 = ptrtoint ptr %slid226.i to i32
  call void @__asan_store4_noabort(i32 %293)
  store i32 %conv225.i, ptr %slid226.i, align 4
  %sl_vid227.i = getelementptr %struct.mlx4_cqe, ptr %retval.0.i.i.i.i.i.i, i32 %cond.idx.i.i.i, i32 3
  %294 = ptrtoint ptr %sl_vid227.i to i32
  call void @__asan_load2_noabort(i32 %294)
  %295 = load i16, ptr %sl_vid227.i, align 4
  %296 = lshr i16 %295, 12
  %conv230.i = trunc i16 %296 to i8
  %sl231.i = getelementptr %struct.ib_wc, ptr %wc, i32 %storemerge63, i32 11
  %297 = ptrtoint ptr %sl231.i to i32
  call void @__asan_store1_noabort(i32 %297)
  store i8 %conv230.i, ptr %sl231.i, align 2
  %vlan_id232.i = getelementptr %struct.ib_wc, ptr %wc, i32 %storemerge63, i32 15
  %298 = ptrtoint ptr %vlan_id232.i to i32
  call void @__asan_store2_noabort(i32 %298)
  store i16 -1, ptr %vlan_id232.i, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.else224.i, %if.end220.i, %if.else.i.i, %if.then.i.i, %sw.bb145.i, %sw.bb143.i, %sw.bb141.i, %sw.bb138.i, %sw.bb135.i, %sw.bb132.i, %sw.bb129.i, %sw.bb127.i, %sw.bb125.i, %sw.bb121.i, %if.then116.i.for.inc_crit_edge, %if.then113.i
  %inc = add nuw nsw i32 %storemerge63, 1
  %exitcond87.not = icmp eq i32 %inc, %num_entries
  br i1 %exitcond87.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %next_cqe_sw.exit.i.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %storemerge59 = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %storemerge63, %next_cqe_sw.exit.i.for.end_crit_edge ], [ %num_entries, %for.inc.for.end_crit_edge ]
  %cons_index.i = getelementptr inbounds %struct.mlx4_ib_cq, ptr %ibcq, i32 0, i32 1, i32 3
  %299 = ptrtoint ptr %cons_index.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %cons_index.i, align 4
  %and.i = and i32 %300, 16777215
  %set_ci_db.i = getelementptr inbounds %struct.mlx4_ib_cq, ptr %ibcq, i32 0, i32 1, i32 5
  %301 = ptrtoint ptr %set_ci_db.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %set_ci_db.i, align 4
  %303 = ptrtoint ptr %302 to i32
  call void @__asan_store4_noabort(i32 %303)
  store i32 %and.i, ptr %302, align 4
  br label %out

out:                                              ; preds = %for.end, %mlx4_ib_qp_sw_comp.exit72.i.out_crit_edge, %for.cond13.i.out_crit_edge, %mlx4_ib_qp_sw_comp.exit.i.out_crit_edge
  %npolled.7 = phi i32 [ %storemerge59, %for.end ], [ %npolled.5, %mlx4_ib_qp_sw_comp.exit72.i.out_crit_edge ], [ %npolled.3, %for.cond13.i.out_crit_edge ], [ %npolled.2, %mlx4_ib_qp_sw_comp.exit.i.out_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #9
  ret i32 %npolled.7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx4_ib_arm_cq(ptr nocapture noundef readonly %ibcq, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp = icmp eq i32 %and, 1
  %cond = select i1 %cmp, i32 16777216, i32 33554432
  %0 = ptrtoint ptr %ibcq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ibcq, align 8
  %uar_map = getelementptr inbounds %struct.mlx4_ib_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %uar_map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %uar_map, align 8
  %uar_lock = getelementptr inbounds %struct.mlx4_ib_dev, ptr %1, i32 0, i32 6
  %arm_sn.i = getelementptr inbounds %struct.mlx4_ib_cq, ptr %ibcq, i32 0, i32 1, i32 7
  %4 = ptrtoint ptr %arm_sn.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arm_sn.i, align 4
  %cons_index.i = getelementptr inbounds %struct.mlx4_ib_cq, ptr %ibcq, i32 0, i32 1, i32 3
  %6 = ptrtoint ptr %cons_index.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cons_index.i, align 4
  %and1.i = and i32 %7, 16777215
  %and.i = shl i32 %5, 28
  %shl.i = and i32 %and.i, 805306368
  %or.i = or i32 %shl.i, %cond
  %or2.i = or i32 %or.i, %and1.i
  %arm_db.i = getelementptr inbounds %struct.mlx4_ib_cq, ptr %ibcq, i32 0, i32 1, i32 6
  %8 = ptrtoint ptr %arm_db.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arm_db.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or2.i, ptr %9, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !50
  tail call void @arm_heavy_mb() #9
  %cqn.i = getelementptr inbounds %struct.mlx4_ib_cq, ptr %ibcq, i32 0, i32 1, i32 8
  %11 = ptrtoint ptr %cqn.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cqn.i, align 4
  %or5.i = or i32 %12, %or.i
  %add.ptr.i = getelementptr i8, ptr %3, i32 32
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %uar_lock) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %or5.i) #9, !srcloc !51
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %and1.i) #9, !srcloc !51
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %uar_lock, i32 noundef %call2.i.i) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__mlx4_ib_cq_clean(ptr nocapture noundef %cq, i32 noundef %qpn, ptr noundef %srq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %entry_size = getelementptr inbounds %struct.mlx4_ib_cq, ptr %cq, i32 0, i32 2, i32 2
  %0 = ptrtoint ptr %entry_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %entry_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %1)
  %cmp = icmp eq i32 %1, 64
  %cond = zext i1 %cmp to i32
  %cons_index = getelementptr inbounds %struct.mlx4_ib_cq, ptr %cq, i32 0, i32 1, i32 3
  %2 = ptrtoint ptr %cons_index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cons_index, align 4
  %cqe1.i = getelementptr inbounds %struct.ib_cq, ptr %cq, i32 0, i32 5
  %4 = ptrtoint ptr %cqe1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cqe1.i, align 4
  %nbufs.i.i.i.i = getelementptr inbounds %struct.mlx4_ib_cq, ptr %cq, i32 0, i32 2, i32 0, i32 2
  %6 = ptrtoint ptr %nbufs.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nbufs.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.i.i.i.i = icmp eq i32 %7, 1
  %add.i = add i32 %5, 1
  %add = add i32 %5, %3
  %page_list.i.i.i.i = getelementptr inbounds %struct.mlx4_ib_cq, ptr %cq, i32 0, i32 2, i32 0, i32 1
  %buf.i.i = getelementptr inbounds %struct.mlx4_ib_cq, ptr %cq, i32 0, i32 2
  br label %for.cond

for.cond:                                         ; preds = %get_sw_cqe.exit.for.cond_crit_edge, %entry
  %prod_index.0 = phi i32 [ %3, %entry ], [ %inc, %get_sw_cqe.exit.for.cond_crit_edge ]
  %and.i = and i32 %5, %prod_index.0
  %mul.i.i.i = mul i32 %and.i, %1
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %if.else.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buf.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %9, i32 %mul.i.i.i
  br label %get_sw_cqe.exit

if.else.i.i.i.i:                                  ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %page_list.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %page_list.i.i.i.i, align 4
  %shr.i.i.i.i = ashr i32 %mul.i.i.i, 12
  %arrayidx.i.i.i.i = getelementptr %struct.mlx4_buf_list, ptr %11, i32 %shr.i.i.i.i
  %12 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %and.i.i.i.i = and i32 %mul.i.i.i, 4095
  %add.ptr3.i.i.i.i = getelementptr i8, ptr %13, i32 %and.i.i.i.i
  br label %get_sw_cqe.exit

get_sw_cqe.exit:                                  ; preds = %if.else.i.i.i.i, %if.then.i.i.i.i
  %retval.0.i.i.i.i = phi ptr [ %add.ptr.i.i.i.i, %if.then.i.i.i.i ], [ %add.ptr3.i.i.i.i, %if.else.i.i.i.i ]
  %owner_sr_opcode.i = getelementptr %struct.mlx4_cqe, ptr %retval.0.i.i.i.i, i32 %cond, i32 9
  %14 = ptrtoint ptr %owner_sr_opcode.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %owner_sr_opcode.i, align 1
  %.lobit.i = lshr i8 %15, 7
  %and6.i = and i32 %add.i, %prod_index.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.i = icmp ne i32 %and6.i, 0
  %16 = zext i1 %tobool7.i to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %.lobit.i, i8 %16)
  %tobool12.not.i = icmp ne i8 %.lobit.i, %16
  %tobool.not95 = icmp eq ptr %retval.0.i.i.i.i, null
  %tobool.not = select i1 %tobool12.not.i, i1 true, i1 %tobool.not95
  call void @__sanitizer_cov_trace_cmp4(i32 %prod_index.0, i32 %add)
  %cmp4 = icmp eq i32 %prod_index.0, %add
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp4
  %inc = add i32 %prod_index.0, 1
  br i1 %or.cond, label %while.cond.preheader, label %get_sw_cqe.exit.for.cond_crit_edge

get_sw_cqe.exit.for.cond_crit_edge:               ; preds = %get_sw_cqe.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

while.cond.preheader:                             ; preds = %get_sw_cqe.exit
  %dec96 = add i32 %prod_index.0, -1
  %17 = ptrtoint ptr %cons_index to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cons_index, align 4
  %sub97 = sub i32 %dec96, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub97)
  %cmp798 = icmp sgt i32 %sub97, -1
  br i1 %cmp798, label %while.body.lr.ph, label %while.cond.preheader.if.end47_crit_edge

while.cond.preheader.if.end47_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %tobool14.not = icmp eq ptr %srq, null
  br label %while.body

while.body:                                       ; preds = %if.end40.while.body_crit_edge, %while.body.lr.ph
  %dec100 = phi i32 [ %dec96, %while.body.lr.ph ], [ %dec, %if.end40.while.body_crit_edge ]
  %nfreed.099 = phi i32 [ 0, %while.body.lr.ph ], [ %nfreed.1, %if.end40.while.body_crit_edge ]
  %19 = ptrtoint ptr %cqe1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cqe1.i, align 4
  %and = and i32 %20, %dec100
  %21 = ptrtoint ptr %entry_size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %entry_size, align 4
  %mul.i.i = mul i32 %22, %and
  %23 = ptrtoint ptr %nbufs.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nbufs.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp.i.i.i = icmp eq i32 %24, 1
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %buf.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %26, i32 %mul.i.i
  br label %get_cqe.exit

if.else.i.i.i:                                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %page_list.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %page_list.i.i.i.i, align 4
  %shr.i.i.i = ashr i32 %mul.i.i, 12
  %arrayidx.i.i.i = getelementptr %struct.mlx4_buf_list, ptr %28, i32 %shr.i.i.i
  %29 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %mul.i.i, 4095
  %add.ptr3.i.i.i = getelementptr i8, ptr %30, i32 %and.i.i.i
  br label %get_cqe.exit

get_cqe.exit:                                     ; preds = %if.else.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi ptr [ %add.ptr.i.i.i, %if.then.i.i.i ], [ %add.ptr3.i.i.i, %if.else.i.i.i ]
  %add.ptr = getelementptr %struct.mlx4_cqe, ptr %retval.0.i.i.i, i32 %cond
  %31 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %add.ptr, align 4
  %and11 = and i32 %32, 16777215
  call void @__sanitizer_cov_trace_cmp4(i32 %and11, i32 %qpn)
  %cmp12 = icmp eq i32 %and11, %qpn
  br i1 %cmp12, label %if.then13, label %if.else

if.then13:                                        ; preds = %get_cqe.exit
  br i1 %tobool14.not, label %if.then13.if.end19_crit_edge, label %land.lhs.true

if.then13.if.end19_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

land.lhs.true:                                    ; preds = %if.then13
  %owner_sr_opcode = getelementptr %struct.mlx4_cqe, ptr %retval.0.i.i.i, i32 %cond, i32 9
  %33 = ptrtoint ptr %owner_sr_opcode to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %owner_sr_opcode, align 1
  %35 = and i8 %34, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool16.not = icmp eq i8 %35, 0
  br i1 %tobool16.not, label %if.then17, label %land.lhs.true.if.end19_crit_edge

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then17:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %wqe_index = getelementptr %struct.mlx4_cqe, ptr %retval.0.i.i.i, i32 %cond, i32 6
  %36 = ptrtoint ptr %wqe_index to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %wqe_index, align 4
  %conv18 = zext i16 %37 to i32
  tail call void @mlx4_ib_free_srq_wqe(ptr noundef nonnull %srq, i32 noundef %conv18) #9
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %land.lhs.true.if.end19_crit_edge, %if.then13.if.end19_crit_edge
  %inc20 = add i32 %nfreed.099, 1
  br label %if.end40

if.else:                                          ; preds = %get_cqe.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nfreed.099)
  %tobool21.not = icmp eq i32 %nfreed.099, 0
  br i1 %tobool21.not, label %if.else.if.end40_crit_edge, label %if.then22

if.else.if.end40_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

if.then22:                                        ; preds = %if.else
  %add23 = add i32 %dec100, %nfreed.099
  %and26 = and i32 %20, %add23
  %mul.i.i80 = mul i32 %22, %and26
  br i1 %cmp.i.i.i, label %if.then.i.i.i85, label %if.else.i.i.i91

if.then.i.i.i85:                                  ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %buf.i.i, align 4
  %add.ptr.i.i.i84 = getelementptr i8, ptr %39, i32 %mul.i.i80
  br label %get_cqe.exit93

if.else.i.i.i91:                                  ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %page_list.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %page_list.i.i.i.i, align 4
  %shr.i.i.i87 = ashr i32 %mul.i.i80, 12
  %arrayidx.i.i.i88 = getelementptr %struct.mlx4_buf_list, ptr %41, i32 %shr.i.i.i87
  %42 = ptrtoint ptr %arrayidx.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.i.i.i88, align 4
  %and.i.i.i89 = and i32 %mul.i.i80, 4095
  %add.ptr3.i.i.i90 = getelementptr i8, ptr %43, i32 %and.i.i.i89
  br label %get_cqe.exit93

get_cqe.exit93:                                   ; preds = %if.else.i.i.i91, %if.then.i.i.i85
  %retval.0.i.i.i92 = phi ptr [ %add.ptr.i.i.i84, %if.then.i.i.i85 ], [ %add.ptr3.i.i.i90, %if.else.i.i.i91 ]
  %add.ptr28 = getelementptr %struct.mlx4_cqe, ptr %retval.0.i.i.i92, i32 %cond
  %owner_sr_opcode29 = getelementptr %struct.mlx4_cqe, ptr %retval.0.i.i.i92, i32 %cond, i32 9
  %44 = ptrtoint ptr %owner_sr_opcode29 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %owner_sr_opcode29, align 1
  %46 = and i8 %45, -128
  %47 = call ptr @memcpy(ptr %add.ptr28, ptr %add.ptr, i32 32)
  %48 = load i8, ptr %owner_sr_opcode29, align 1
  %49 = and i8 %48, 127
  %or78 = or i8 %49, %46
  store i8 %or78, ptr %owner_sr_opcode29, align 1
  br label %if.end40

if.end40:                                         ; preds = %get_cqe.exit93, %if.else.if.end40_crit_edge, %if.end19
  %nfreed.1 = phi i32 [ %inc20, %if.end19 ], [ %nfreed.099, %get_cqe.exit93 ], [ 0, %if.else.if.end40_crit_edge ]
  %dec = add i32 %dec100, -1
  %50 = ptrtoint ptr %cons_index to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %cons_index, align 4
  %sub = sub i32 %dec, %51
  %cmp7 = icmp sgt i32 %sub, -1
  br i1 %cmp7, label %if.end40.while.body_crit_edge, label %while.end

if.end40.while.body_crit_edge:                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nfreed.1)
  %tobool41.not = icmp eq i32 %nfreed.1, 0
  br i1 %tobool41.not, label %while.end.if.end47_crit_edge, label %if.then42

while.end.if.end47_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

if.then42:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %add45 = add i32 %51, %nfreed.1
  %52 = ptrtoint ptr %cons_index to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %add45, ptr %cons_index, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !52
  tail call void @arm_heavy_mb() #9
  %53 = ptrtoint ptr %cons_index to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %cons_index, align 4
  %and.i94 = and i32 %54, 16777215
  %set_ci_db.i = getelementptr inbounds %struct.mlx4_ib_cq, ptr %cq, i32 0, i32 1, i32 5
  %55 = ptrtoint ptr %set_ci_db.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %set_ci_db.i, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %and.i94, ptr %56, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then42, %while.end.if.end47_crit_edge, %while.cond.preheader.if.end47_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_ib_free_srq_wqe(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx4_ib_cq_clean(ptr noundef %cq, i32 noundef %qpn, ptr noundef %srq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.mlx4_ib_cq, ptr %cq, i32 0, i32 5
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #9
  tail call void @__mlx4_ib_cq_clean(ptr noundef %cq, i32 noundef %qpn, ptr noundef %srq)
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ib_umem_get(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_ib_umem_calc_optimal_mtt_size(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_mtt_init(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_ib_umem_write_mtt(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_buf_alloc(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_buf_write_mtt(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_buf_free(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx4_srq_lookup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx4_ib_handle_error_cqe(ptr nocapture noundef readonly %cqe, ptr nocapture noundef writeonly %wc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %syndrome = getelementptr inbounds %struct.mlx4_err_cqe, ptr %cqe, i32 0, i32 4
  %0 = ptrtoint ptr %syndrome to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %syndrome, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp = icmp eq i8 %1, 2
  br i1 %cmp, label %do.body, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx4_ib_handle_error_cqe.__UNIQUE_ID_ddebug509, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx4_ib_handle_error_cqe, %if.then4)) #9
          to label %do.end [label %if.then4], !srcloc !53

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %cqe to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cqe, align 4
  %wqe_index = getelementptr inbounds %struct.mlx4_err_cqe, ptr %cqe, i32 0, i32 2
  %4 = ptrtoint ptr %wqe_index to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %wqe_index, align 4
  %conv5 = zext i16 %5 to i32
  %vendor_err_syndrome = getelementptr inbounds %struct.mlx4_err_cqe, ptr %cqe, i32 0, i32 3
  %6 = ptrtoint ptr %vendor_err_syndrome to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %vendor_err_syndrome, align 2
  %conv6 = zext i8 %7 to i32
  %owner_sr_opcode = getelementptr inbounds %struct.mlx4_err_cqe, ptr %cqe, i32 0, i32 6
  %8 = ptrtoint ptr %owner_sr_opcode to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %owner_sr_opcode, align 1
  %10 = and i8 %9, 127
  %and = zext i8 %10 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mlx4_ib_handle_error_cqe.__UNIQUE_ID_ddebug509, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.10, i32 noundef %3, i32 noundef %conv5, i32 noundef %conv6, i32 noundef %and) #9
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dump_cqe.__UNIQUE_ID_ddebug508, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx4_ib_handle_error_cqe, %if.then.i)) #9
          to label %if.end8 [label %if.then.i], !srcloc !53

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %cqe to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cqe, align 4
  %arrayidx3.i = getelementptr i32, ptr %cqe, i32 1
  %13 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx3.i, align 4
  %arrayidx4.i = getelementptr i32, ptr %cqe, i32 2
  %15 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx4.i, align 4
  %arrayidx5.i = getelementptr i32, ptr %cqe, i32 3
  %17 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx5.i, align 4
  %arrayidx6.i = getelementptr i32, ptr %cqe, i32 4
  %19 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx6.i, align 4
  %arrayidx7.i = getelementptr i32, ptr %cqe, i32 5
  %21 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx7.i, align 4
  %arrayidx8.i = getelementptr i32, ptr %cqe, i32 6
  %23 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx8.i, align 4
  %arrayidx9.i = getelementptr i32, ptr %cqe, i32 7
  %25 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx9.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dump_cqe.__UNIQUE_ID_ddebug508, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.13, i32 noundef %12, i32 noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %22, i32 noundef %24, i32 noundef %26) #9
  br label %if.end8

if.end8:                                          ; preds = %if.then.i, %do.end, %entry.if.end8_crit_edge
  %27 = ptrtoint ptr %syndrome to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %syndrome, align 1
  %29 = zext i8 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.17)
  switch i8 %28, label %sw.default [
    i8 1, label %if.end8.sw.epilog_crit_edge
    i8 2, label %sw.bb11
    i8 4, label %sw.bb13
    i8 5, label %sw.bb15
    i8 6, label %sw.bb17
    i8 16, label %sw.bb19
    i8 17, label %sw.bb21
    i8 18, label %sw.bb23
    i8 19, label %sw.bb25
    i8 20, label %sw.bb27
    i8 21, label %sw.bb29
    i8 22, label %sw.bb31
    i8 34, label %sw.bb33
  ]

if.end8.sw.epilog_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb19:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb21:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb23:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb25:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb27:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb29:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb31:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb33:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.default:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb33, %sw.bb31, %sw.bb29, %sw.bb27, %sw.bb25, %sw.bb23, %sw.bb21, %sw.bb19, %sw.bb17, %sw.bb15, %sw.bb13, %sw.bb11, %if.end8.sw.epilog_crit_edge
  %.sink = phi i32 [ 21, %sw.default ], [ 16, %sw.bb33 ], [ 13, %sw.bb31 ], [ 12, %sw.bb29 ], [ 11, %sw.bb27 ], [ 10, %sw.bb25 ], [ 9, %sw.bb23 ], [ 8, %sw.bb21 ], [ 7, %sw.bb19 ], [ 6, %sw.bb17 ], [ 5, %sw.bb15 ], [ 4, %sw.bb13 ], [ 2, %sw.bb11 ], [ 1, %if.end8.sw.epilog_crit_edge ]
  %status35 = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 1
  %30 = ptrtoint ptr %status35 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %.sink, ptr %status35, align 8
  %vendor_err_syndrome36 = getelementptr inbounds %struct.mlx4_err_cqe, ptr %cqe, i32 0, i32 3
  %31 = ptrtoint ptr %vendor_err_syndrome36 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %vendor_err_syndrome36, align 2
  %conv37 = zext i8 %32 to i32
  %vendor_err = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 3
  %33 = ptrtoint ptr %vendor_err to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %conv37, ptr %vendor_err, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_port_get_link_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radix_tree_lookup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind readnone }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !13, !15, !16, !17, !18, !19, !21, !22, !23, !24, !25, !27, !28, !29}
!llvm.named.register.sp = !{!30}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @mlx4_ib_create_cq.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/hw/mlx4/cq.c", i32 196, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @mlx4_ib_create_cq.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/infiniband/hw/mlx4/cq.c", i32 197, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = distinct !{null, !7, !"__already_done", i1 false, i1 false}
!7 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!8 = distinct !{null, !7, !"<string literal>", i1 false, i1 false}
!9 = distinct !{null, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/infiniband/hw/mlx4/cq.c", i32 55, i32 3}
!15 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @mlx4_ib_cq_event._entry, !14, !"_entry", i1 false, i1 false}
!18 = !{ptr @mlx4_ib_cq_event._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/infiniband/hw/mlx4/cq.c", i32 514, i32 3}
!21 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @mlx4_ib_handle_error_cqe.__UNIQUE_ID_ddebug509, !20, !"__UNIQUE_ID_ddebug509", i1 false, i1 false}
!24 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/infiniband/hw/mlx4/cq.c", i32 504, i32 2}
!27 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @dump_cqe.__UNIQUE_ID_ddebug508, !26, !"__UNIQUE_ID_ddebug508", i1 false, i1 false}
!29 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!30 = !{!"sp"}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!40 = !{i32 0, i32 33}
!41 = !{i64 2152402406, i64 2152402431}
!42 = !{!"branch_weights", i32 2000, i32 1}
!43 = !{i64 4897961}
!44 = !{i64 4898158}
!45 = !{i64 2152383391}
!46 = !{!"auto-init"}
!47 = !{i64 2152403087, i64 2152403112}
!48 = !{i64 2158614899}
!49 = !{!"branch_weights", i32 1, i32 2000}
!50 = !{i64 2155323477}
!51 = !{i64 6104611}
!52 = !{i64 2158616723}
!53 = !{i64 2148911202, i64 2148911207, i64 2148911220, i64 2148911264, i64 2148911298, i64 2148911319}
