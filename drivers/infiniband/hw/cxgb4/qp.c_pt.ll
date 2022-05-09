; ModuleID = '/llk/IR_all_yes/drivers/infiniband/hw/cxgb4/qp.c_pt.bc'
source_filename = "../drivers/infiniband/hw/cxgb4/qp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.164 }
%union.anon.164 = type { ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.c4iw_rdev = type { %struct.c4iw_resource, i32, i32, %struct.c4iw_dev_ucontext, ptr, ptr, ptr, i32, %struct.cxgb4_lld_info, i32, ptr, i32, ptr, %struct.c4iw_stats, %struct.c4iw_hw_queue, ptr, %struct.atomic_t, ptr, i32, ptr, %struct.completion, %struct.completion, %struct.kref, %struct.kref }
%struct.c4iw_resource = type { %struct.c4iw_id_table, %struct.c4iw_id_table, %struct.c4iw_id_table, %struct.c4iw_id_table }
%struct.c4iw_id_table = type { i32, i32, i32, i32, %struct.spinlock, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.c4iw_dev_ucontext = type { %struct.list_head, %struct.list_head, %struct.mutex, %struct.kref }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.cxgb4_lld_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i16, i8, i8, i8, i8, i8, i32, i32, i32, i16, i16, i32, i16, [4 x i16], ptr, ptr, i32, i32, i32, i32, i32, i8, i32, i32, i8, i32, i32, i32, i32, ptr, i32, i8, i8, i8 }
%struct.c4iw_stats = type { %struct.mutex, %struct.c4iw_stat, %struct.c4iw_stat, %struct.c4iw_stat, %struct.c4iw_stat, %struct.c4iw_stat, %struct.c4iw_stat, %struct.c4iw_stat, %struct.c4iw_stat, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.c4iw_stat = type { i64, i64, i64, i64 }
%struct.c4iw_hw_queue = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.c4iw_qp = type { %struct.ib_qp, %struct.list_head, ptr, ptr, %struct.c4iw_qp_attributes, %struct.t4_wq, %struct.spinlock, %struct.mutex, %struct.wait_queue_head, i32, ptr, ptr, ptr, %struct.completion, %struct.refcount_struct }
%struct.ib_qp = type { ptr, ptr, ptr, ptr, %struct.spinlock, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, %struct.atomic_t, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i8, %struct.rdma_restrack_entry, ptr }
%struct.rdma_restrack_entry = type { i8, i8, %struct.kref, %struct.completion, ptr, ptr, i32, i8, i32 }
%struct.c4iw_qp_attributes = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, i32, [52 x i8], i32, i8, %struct.c4iw_mpa_attributes, ptr, i8, i8, i16, i16, i8 }
%struct.c4iw_mpa_attributes = type { i8, i8, i8, i8, i8, i8, i8 }
%struct.t4_wq = type { %struct.t4_sq, %struct.t4_rq, ptr, ptr, i32, ptr, ptr }
%struct.t4_sq = type { ptr, i32, i32, i32, ptr, ptr, ptr, i64, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.t4_rq = type { ptr, i32, i32, ptr, ptr, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.ib_send_wr = type { ptr, %union.anon.194, ptr, i32, i32, i32, %union.anon.204 }
%union.anon.194 = type { i64 }
%union.anon.204 = type { i32 }
%struct.c4iw_cq = type { %struct.ib_cq, ptr, ptr, %struct.t4_cq, %struct.spinlock, %struct.spinlock, %struct.refcount_struct, %struct.completion, ptr }
%struct.ib_cq = type { ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.atomic_t, i32, ptr, %struct.list_head, %union.anon.203, ptr, ptr, i64, i8, i32, %struct.rdma_restrack_entry }
%union.anon.203 = type { %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.t4_cq = type { ptr, i32, i32, ptr, ptr, ptr, i64, i32, ptr, i32, i64, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i8, ptr, i32 }
%struct.t4_cqe = type { i32, i32, %union.anon.239, [3 x i64], i64 }
%union.anon.239 = type { [3 x i64] }
%struct.c4iw_dev = type { %struct.ib_device, %struct.c4iw_rdev, i32, %struct.xarray, %struct.xarray, %struct.xarray, %struct.mutex, ptr, i32, %struct.xarray, %struct.xarray, %struct.xarray, %struct.list_head, i32, %struct.wait_queue_head }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.222, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%union.anon.222 = type { %struct.ib_core_device }
%struct.ib_core_device = type { %struct.device, %struct.possible_net_t, ptr, %struct.list_head, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
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
%struct.possible_net_t = type { ptr }
%struct.ib_device_attr = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i32, i32, %struct.ib_odp_caps, i64, i64, %struct.ib_rss_caps, i32, i32, %struct.ib_tm_caps, %struct.ib_cq_caps, i64, i32 }
%struct.ib_odp_caps = type { i64, %struct.anon.207 }
%struct.anon.207 = type { i32, i32, i32, i32 }
%struct.ib_rss_caps = type { i32, i32, i32 }
%struct.ib_tm_caps = type { i32, i32, i32, i32, i32 }
%struct.ib_cq_caps = type { i16, i16 }
%struct.rdmacg_device = type { %struct.list_head, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ib_sge = type { i64, i32, i32 }
%struct.t4_swsqe = type { i64, %struct.t4_cqe, i32, i32, i32, i32, i16, i32, i64, i64 }
%struct.fw_ri_send_wr = type { i8, i8, i16, [3 x i8], i8, i32, i32, i32, i32, i64, %union.anon.238 }
%union.anon.238 = type { [0 x %struct.fw_ri_isgl] }
%struct.fw_ri_isgl = type { i8, i8, i16, i32, [0 x %struct.fw_ri_sge] }
%struct.fw_ri_sge = type { i32, i32, i64 }
%union.t4_wr = type { [40 x i64] }
%struct.fw_ri_rdma_write_wr = type { i8, i8, i16, [3 x i8], i8, %union.anon.235, i32, i32, i64, %union.anon.237 }
%union.anon.235 = type { i64 }
%union.anon.237 = type { [0 x %struct.fw_ri_isgl] }
%struct.ib_rdma_wr = type { %struct.ib_send_wr, i64, i32 }
%struct.fw_ri_rdma_read_wr = type { i8, i8, i16, [3 x i8], i8, i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ib_reg_wr = type { %struct.ib_send_wr, ptr, i32, i32 }
%struct.c4iw_mr = type { %struct.ib_mr, ptr, ptr, ptr, i64, %struct.tpt_attributes, ptr, i32, i32, i32, ptr }
%struct.ib_mr = type { ptr, ptr, i32, i32, i64, i64, i32, i32, i8, %union.anon.196, ptr, ptr, %struct.rdma_restrack_entry }
%union.anon.196 = type { %struct.list_head }
%struct.tpt_attributes = type { i64, i64, i32, i32, i32, i32, i32, i32, i16 }
%struct.fw_ri_fr_nsmr_tpte_wr = type { i8, i8, i16, [3 x i8], i8, i32, i32, %struct.fw_ri_tpte, [2 x i64] }
%struct.fw_ri_tpte = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cxgb4_virt_res = type { %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, i32, %struct.cxgb4_range }
%struct.cxgb4_range = type { i32, i32 }
%struct.fw_ri_fr_nsmr_wr = type { i8, i8, i16, [3 x i8], i8, i8, i8, i8, i8, i32, i32, i32, i32, i32 }
%struct.fw_ri_inv_lstag_wr = type { i8, i8, i16, [3 x i8], i8, i32, i32 }
%struct.fw_ri_rdma_write_cmpl_wr = type { i8, i8, i16, [3 x i8], i8, i8, i8, i16, i32, i32, i32, i64, %union.fw_ri_cmpl, i64, %union.fw_ri_write }
%union.fw_ri_cmpl = type { %struct.fw_ri_isgl, [16 x i8] }
%union.fw_ri_write = type { [0 x %struct.fw_ri_isgl] }
%struct.fw_ri_immd_cmpl = type { i8, [6 x i8], i8, [16 x i8] }
%struct.ib_recv_wr = type { ptr, %union.anon.205, ptr, i32 }
%union.anon.205 = type { i64 }
%union.t4_recv_wr = type { [16 x i64] }
%struct.fw_ri_recv_wr = type { i8, i8, i16, [3 x i8], i8, %struct.fw_ri_isgl }
%struct.t4_swrqe = type { i64, i64, i64, i32 }
%struct.c4iw_srq = type { %struct.ib_srq, %struct.list_head, ptr, %struct.t4_srq, ptr, i32, i32, i32, i32, %struct.spinlock, ptr, i8 }
%struct.ib_srq = type { ptr, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.anon.198, %struct.rdma_restrack_entry }
%struct.anon.198 = type { ptr, %union.anon.199 }
%union.anon.199 = type { %struct.anon.200 }
%struct.anon.200 = type { ptr, i32 }
%struct.t4_srq = type { ptr, i32, i32, ptr, ptr, i64, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, ptr, i16, i16, i16, i16 }
%struct.t4_srq_pending_wr = type { i64, %union.t4_recv_wr, i8 }
%struct.t4_status_page = type { i32, i16, i16, i16, i16, i8, i8, [2 x i8], i16, i16, i16, i16, i32 }
%struct.c4iw_ep_common = type { ptr, ptr, ptr, %struct.sk_buff_head, i32, %struct.kref, %struct.mutex, %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage, ptr, i32, i32 }
%struct.sk_buff_head = type { %union.anon.106, i32, %struct.spinlock }
%union.anon.106 = type { %struct.anon.107 }
%struct.anon.107 = type { ptr, ptr }
%struct.__kernel_sockaddr_storage = type { %union.anon.219 }
%union.anon.219 = type { ptr, [124 x i8] }
%struct.c4iw_ep = type { %struct.c4iw_ep_common, ptr, %struct.timer_list, %struct.list_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.c4iw_mpa_attributes, [276 x i8], i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i8, i8, i32, i32, i32, i32, %struct.c4iw_ep_stats, i32, i32, ptr }
%struct.c4iw_ep_stats = type { i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.193, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.193 = type { ptr }
%struct.sk_buff = type { %union.anon.50, %union.anon.53, %union.anon.54, [48 x i8], %union.anon.55, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.57, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
%union.anon.53 = type { ptr }
%union.anon.54 = type { i64 }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { i32, ptr }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.59, i32, i32, i32, i16, i16, %union.anon.61, i32, %union.anon.62, %union.anon.63, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.59 = type { i32 }
%union.anon.61 = type { i32 }
%union.anon.62 = type { i32 }
%union.anon.63 = type { i16 }
%struct.fw_ri_wr = type { i32, i32, i64, %union.fw_ri }
%union.fw_ri = type { %struct.fw_ri_init }
%struct.fw_ri_init = type { i8, i8, [2 x i8], i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, %union.fw_ri_init_p2p }
%union.fw_ri_init_p2p = type { %struct.fw_ri_rdma_read_wr }
%struct.terminate_message = type { i8, i8, i16, [0 x i8] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.c4iw_ucontext = type { %struct.ib_ucontext, %struct.c4iw_dev_ucontext, i32, %struct.spinlock, %struct.list_head, i8 }
%struct.ib_ucontext = type { ptr, ptr, %struct.ib_rdmacg_object, %struct.rdma_restrack_entry, %struct.xarray }
%struct.ib_rdmacg_object = type { ptr }
%struct.c4iw_wr_wait = type { %struct.completion, i32, %struct.kref }
%struct.c4iw_create_qp_resp = type { i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32 }
%struct.uverbs_attr_bundle = type { %struct.ib_udata, %struct.ib_udata, ptr, ptr, ptr, [2 x i32], [0 x %struct.uverbs_attr] }
%struct.ib_udata = type { ptr, ptr, i32, i32 }
%struct.uverbs_attr = type { %union.anon.213 }
%union.anon.213 = type { %struct.uverbs_ptr_attr }
%struct.uverbs_ptr_attr = type { %union.anon.214, i16, i16, i8 }
%union.anon.214 = type { i64 }
%struct.ib_qp_init_attr = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.ib_qp_cap, i32, i32, i32, i32, ptr, i32 }
%struct.ib_qp_cap = type { i32, i32, i32, i32, i32, i32 }
%struct.c4iw_pd = type { %struct.ib_pd, i32, ptr }
%struct.ib_pd = type { i32, i32, ptr, ptr, %struct.atomic_t, i32, ptr, %struct.rdma_restrack_entry }
%struct.c4iw_mm_entry = type { %struct.list_head, i64, i32, i32 }
%struct.fw_ri_res_wr = type { i32, i32, i64, [0 x %struct.fw_ri_res] }
%struct.fw_ri_res = type { %union.fw_ri_restype }
%union.fw_ri_restype = type { %struct.fw_ri_res_cq }
%struct.fw_ri_res_cq = type { i8, i8, i16, i32, [2 x i32], i32, i16, i16, i64, i32, i32, i64 }
%struct.fw_ri_res_sqrq = type { i8, i8, i16, i32, [2 x i32], i32, i32, i64 }
%struct.ib_qp_attr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ib_qp_cap, %struct.rdma_ah_attr, %struct.rdma_ah_attr, i16, i16, i8, i8, i8, i8, i8, i32, i8, i8, i8, i32, i8, i32, ptr }
%struct.rdma_ah_attr = type { %struct.ib_global_route, i8, i8, i32, i8, i32, %union.anon.208 }
%struct.ib_global_route = type { ptr, %union.ib_gid, i32, i8, i8, i8 }
%union.ib_gid = type { %struct.anon.206 }
%struct.anon.206 = type { i64, i64 }
%union.anon.208 = type { %struct.opa_ah_attr }
%struct.opa_ah_attr = type { i32, i8, i8 }
%struct.ib_event = type { ptr, %union.anon.195, i32 }
%union.anon.195 = type { ptr }
%struct.ib_srq_attr = type { i32, i32, i32 }
%struct.c4iw_create_srq_resp = type { i64, i64, i64, i32, i32, i32, i32, i32, i32 }
%struct.ib_srq_init_attr = type { ptr, ptr, %struct.ib_srq_attr, i32, %struct.anon.209 }
%struct.anon.209 = type { ptr, %union.anon.210 }
%union.anon.210 = type { %struct.anon.211 }
%struct.anon.211 = type { ptr }
%struct.fw_ri_res_srq = type { i8, i8, i16, i32, [2 x i32], i32, i32, i64, i32, i32, i32, i32 }

@__param_str_db_delay_usecs = internal constant [24 x i8] c"iw_cxgb4.db_delay_usecs\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@db_delay_usecs = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_db_delay_usecs = internal constant %struct.kernel_param { ptr @__param_str_db_delay_usecs, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.164 { ptr @db_delay_usecs } }, section "__param", align 4
@__UNIQUE_ID_db_delay_usecstype676 = internal constant [37 x i8] c"iw_cxgb4.parmtype=db_delay_usecs:int\00", section ".modinfo", align 1
@__UNIQUE_ID_db_delay_usecs677 = internal constant [70 x i8] c"iw_cxgb4.parm=db_delay_usecs:Usecs to delay awaiting db fifo to drain\00", section ".modinfo", align 1
@__param_str_ocqp_support = internal constant [22 x i8] c"iw_cxgb4.ocqp_support\00", align 1
@ocqp_support = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_ocqp_support = internal constant %struct.kernel_param { ptr @__param_str_ocqp_support, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.164 { ptr @ocqp_support } }, section "__param", align 4
@__UNIQUE_ID_ocqp_supporttype678 = internal constant [35 x i8] c"iw_cxgb4.parmtype=ocqp_support:int\00", section ".modinfo", align 1
@__UNIQUE_ID_ocqp_support679 = internal constant [59 x i8] c"iw_cxgb4.parm=ocqp_support:Support on-chip SQs (default=1)\00", section ".modinfo", align 1
@db_fc_threshold = dso_local global { i32, [28 x i8] } { i32 1000, [28 x i8] zeroinitializer }, align 32
@__param_str_db_fc_threshold = internal constant [25 x i8] c"iw_cxgb4.db_fc_threshold\00", align 1
@__param_db_fc_threshold = internal constant %struct.kernel_param { ptr @__param_str_db_fc_threshold, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.164 { ptr @db_fc_threshold } }, section "__param", align 4
@__UNIQUE_ID_db_fc_thresholdtype680 = internal constant [38 x i8] c"iw_cxgb4.parmtype=db_fc_threshold:int\00", section ".modinfo", align 1
@__UNIQUE_ID_db_fc_threshold681 = internal constant [111 x i8] c"iw_cxgb4.parm=db_fc_threshold:QP count/threshold that triggers automatic db flow control mode (default = 1000)\00", section ".modinfo", align 1
@__param_str_db_coalescing_threshold = internal constant [33 x i8] c"iw_cxgb4.db_coalescing_threshold\00", align 1
@db_coalescing_threshold = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_db_coalescing_threshold = internal constant %struct.kernel_param { ptr @__param_str_db_coalescing_threshold, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.164 { ptr @db_coalescing_threshold } }, section "__param", align 4
@__UNIQUE_ID_db_coalescing_thresholdtype682 = internal constant [46 x i8] c"iw_cxgb4.parmtype=db_coalescing_threshold:int\00", section ".modinfo", align 1
@__UNIQUE_ID_db_coalescing_threshold683 = internal constant [109 x i8] c"iw_cxgb4.parm=db_coalescing_threshold:QP count/threshold that triggers disabling db coalescing (default = 0)\00", section ".modinfo", align 1
@__param_str_max_fr_immd = internal constant [21 x i8] c"iw_cxgb4.max_fr_immd\00", align 1
@max_fr_immd = internal global { i32, [28 x i8] } { i32 256, [28 x i8] zeroinitializer }, align 32
@__param_max_fr_immd = internal constant %struct.kernel_param { ptr @__param_str_max_fr_immd, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.164 { ptr @max_fr_immd } }, section "__param", align 4
@__UNIQUE_ID_max_fr_immdtype684 = internal constant [34 x i8] c"iw_cxgb4.parmtype=max_fr_immd:int\00", section ".modinfo", align 1
@__UNIQUE_ID_max_fr_immd685 = internal constant [80 x i8] c"iw_cxgb4.parm=max_fr_immd:fastreg threshold for using DSGL instead of immediate\00", section ".modinfo", align 1
@c4iw_qp_add_ref.__UNIQUE_ID_ddebug691 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -33, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"iw_cxgb4\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"c4iw_qp_add_ref\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/infiniband/hw/cxgb4/qp.c\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ib_qp %p\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"iw_cxgb4: ib_qp %p\0A\00", [44 x i8] zeroinitializer }, align 32
@c4iw_qp_rem_ref.__UNIQUE_ID_ddebug692 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.3, i8 0, i8 -31, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"c4iw_qp_rem_ref\00", [16 x i8] zeroinitializer }, align 32
@c4iw_post_send._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 1222, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014iw_cxgb4: %s post of type=%d TBD!\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"c4iw_post_send\00", [17 x i8] zeroinitializer }, align 32
@c4iw_post_send._entry_ptr = internal global ptr @c4iw_post_send._entry, section ".printk_index", align 4
@c4iw_wr_log = external dso_local local_unnamed_addr global i32, align 4
@c4iw_post_send.__UNIQUE_ID_ddebug693 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.8, i8 1, i8 55, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"cookie 0x%llx pidx 0x%x opcode 0x%x read_len %u\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"iw_cxgb4: cookie 0x%llx pidx 0x%x opcode 0x%x read_len %u\0A\00", [37 x i8] zeroinitializer }, align 32
@c4iw_post_receive.__UNIQUE_ID_ddebug694 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 1, i8 75, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"c4iw_post_receive\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cookie 0x%llx pidx %u\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"iw_cxgb4: cookie 0x%llx pidx %u\0A\00", [63 x i8] zeroinitializer }, align 32
@c4iw_post_srq_recv.__UNIQUE_ID_ddebug696 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.14, i8 1, i8 96, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"c4iw_post_srq_recv\00", [45 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s cidx %u pidx %u wq_pidx %u in_use %u wr_id 0x%llx\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"iw_cxgb4: %s cidx %u pidx %u wq_pidx %u in_use %u wr_id 0x%llx\0A\00", [32 x i8] zeroinitializer }, align 32
@c4iw_modify_qp.__UNIQUE_ID_ddebug704 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.17, i8 1, i8 -51, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"c4iw_modify_qp\00", [17 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"qhp %p sqid 0x%x rqid 0x%x ep %p state %d -> %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"iw_cxgb4: qhp %p sqid 0x%x rqid 0x%x ep %p state %d -> %d\0A\00", [37 x i8] zeroinitializer }, align 32
@c4iw_max_read_depth = external dso_local local_unnamed_addr global i32, align 4
@c4iw_modify_qp.__UNIQUE_ID_ddebug705 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.19, i8 1, i8 -33, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"get_ep ep %p, refcnt %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"iw_cxgb4: get_ep ep %p, refcnt %d\0A\00", [61 x i8] zeroinitializer }, align 32
@c4iw_modify_qp.__UNIQUE_ID_ddebug706 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.19, i8 1, i8 -27, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@c4iw_modify_qp.__UNIQUE_ID_ddebug707 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.19, i8 1, i8 -24, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@c4iw_modify_qp.__UNIQUE_ID_ddebug708 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.19, i8 1, i8 -20, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@c4iw_modify_qp.__UNIQUE_ID_ddebug709 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.21, i8 1, i8 -14, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"put_ep ep %p refcnt %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"iw_cxgb4: put_ep ep %p refcnt %d\0A\00", [62 x i8] zeroinitializer }, align 32
@c4iw_modify_qp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.16, ptr @.str.2, i32 2023, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013iw_cxgb4: %s in a bad state %d\0A\00", [62 x i8] zeroinitializer }, align 32
@c4iw_modify_qp._entry_ptr = internal global ptr @c4iw_modify_qp._entry, section ".printk_index", align 4
@c4iw_modify_qp.__UNIQUE_ID_ddebug710 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.24, i8 1, i8 -5, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"disassociating ep %p qpid 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"iw_cxgb4: disassociating ep %p qpid 0x%x\0A\00", [54 x i8] zeroinitializer }, align 32
@c4iw_modify_qp.__UNIQUE_ID_ddebug711 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.21, i8 2, i8 2, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@c4iw_modify_qp.__UNIQUE_ID_ddebug712 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.21, i8 2, i8 4, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@c4iw_modify_qp.__UNIQUE_ID_ddebug713 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.26, i8 2, i8 4, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"exit state %d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"iw_cxgb4: exit state %d\0A\00", [39 x i8] zeroinitializer }, align 32
@c4iw_destroy_qp.__UNIQUE_ID_ddebug714 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.29, i8 2, i8 12, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"c4iw_destroy_qp\00", [16 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ib_qp %p qpid 0x%0x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"iw_cxgb4: ib_qp %p qpid 0x%0x\0A\00", [33 x i8] zeroinitializer }, align 32
@c4iw_destroy_qp.__UNIQUE_ID_ddebug715 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.31, i8 2, i8 13, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qhp %p ucontext %p\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"iw_cxgb4: qhp %p ucontext %p\0A\00", [34 x i8] zeroinitializer }, align 32
@c4iw_create_qp.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&qhp->lock\00", [21 x i8] zeroinitializer }, align 32
@c4iw_create_qp.__key.34 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&qhp->mutex\00", [20 x i8] zeroinitializer }, align 32
@c4iw_create_qp.__key.36 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.37 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&qhp->wait\00", [21 x i8] zeroinitializer }, align 32
@c4iw_create_qp.__UNIQUE_ID_ddebug716 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.38, ptr @.str.2, ptr @.str.39, i8 2, i8 71, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"c4iw_create_qp\00", [17 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"sq id %u size %u memsize %zu num_entries %u rq id %u size %u memsize %zu num_entries %u\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [99 x i8], [61 x i8] } { [99 x i8] c"iw_cxgb4: sq id %u size %u memsize %zu num_entries %u rq id %u size %u memsize %zu num_entries %u\0A\00", [61 x i8] zeroinitializer }, align 32
@c4iw_ib_modify_qp.__UNIQUE_ID_ddebug717 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.2, ptr @.str.3, i8 2, i8 79, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"c4iw_ib_modify_qp\00", [46 x i8] zeroinitializer }, align 32
@c4iw_get_qp.__UNIQUE_ID_ddebug718 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.2, ptr @.str.43, i8 2, i8 91, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"c4iw_get_qp\00", [20 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ib_dev %p qpn 0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"iw_cxgb4: ib_dev %p qpn 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@c4iw_create_srq.__UNIQUE_ID_ddebug720 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.2, ptr @.str.46, i8 2, i8 -99, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"c4iw_create_srq\00", [16 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s ib_pd %p\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"iw_cxgb4: %s ib_pd %p\0A\00", [41 x i8] zeroinitializer }, align 32
@c4iw_create_srq.__UNIQUE_ID_ddebug723 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.2, ptr @.str.48, i8 2, i8 -75, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%s srq qid %u idx %u size %u memsize %lu num_entries %u\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"iw_cxgb4: %s srq qid %u idx %u size %u memsize %lu num_entries %u\0A\00", [61 x i8] zeroinitializer }, align 32
@c4iw_create_srq.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.50 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&srq->lock\00", [21 x i8] zeroinitializer }, align 32
@c4iw_destroy_srq.__UNIQUE_ID_ddebug724 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.2, ptr @.str.52, i8 2, i8 -67, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"c4iw_destroy_srq\00", [47 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s id %d\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"iw_cxgb4: %s id %d\0A\00", [44 x i8] zeroinitializer }, align 32
@t4_swcq_produce._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.56, i32 738, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014iw_cxgb4: %s cxgb4 sw cq overflow cqid %u\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"t4_swcq_produce\00", [16 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/infiniband/hw/cxgb4/t4.h\00", [63 x i8] zeroinitializer }, align 32
@t4_swcq_produce._entry_ptr = internal global ptr @t4_swcq_produce._entry, section ".printk_index", align 4
@use_dsgl = external dso_local local_unnamed_addr global i32, align 4
@t4_ring_sq_db.__UNIQUE_ID_ddebug664 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.56, ptr @.str.58, i8 0, i8 -104, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"t4_ring_sq_db\00", [18 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"WC wq->sq.pidx = %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"iw_cxgb4: WC wq->sq.pidx = %d\0A\00", [33 x i8] zeroinitializer }, align 32
@t4_ring_sq_db.__UNIQUE_ID_ddebug665 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.56, ptr @.str.60, i8 0, i8 -103, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DB wq->sq.pidx = %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"iw_cxgb4: DB wq->sq.pidx = %d\0A\00", [33 x i8] zeroinitializer }, align 32
@t4_ring_rq_db.__UNIQUE_ID_ddebug666 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.62, ptr @.str.56, ptr @.str.63, i8 0, i8 -98, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"t4_ring_rq_db\00", [18 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"WC wq->rq.pidx = %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"iw_cxgb4: WC wq->rq.pidx = %d\0A\00", [33 x i8] zeroinitializer }, align 32
@t4_ring_rq_db.__UNIQUE_ID_ddebug667 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.62, ptr @.str.56, ptr @.str.65, i8 0, i8 -97, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DB wq->rq.pidx = %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"iw_cxgb4: DB wq->rq.pidx = %d\0A\00", [33 x i8] zeroinitializer }, align 32
@defer_srq_wr.__UNIQUE_ID_ddebug695 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.67, ptr @.str.2, ptr @.str.68, i8 1, i8 81, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"defer_srq_wr\00", [19 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [117 x i8], [43 x i8] } { [117 x i8] c"%s cidx %u pidx %u wq_pidx %u in_use %u ooo_count %u wr_id 0x%llx pending_cidx %u pending_pidx %u pending_in_use %u\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [127 x i8], [33 x i8] } { [127 x i8] c"iw_cxgb4: %s cidx %u pidx %u wq_pidx %u in_use %u ooo_count %u wr_id 0x%llx pending_cidx %u pending_pidx %u pending_in_use %u\0A\00", [33 x i8] zeroinitializer }, align 32
@t4_ring_srq_db.__UNIQUE_ID_ddebug662 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.70, ptr @.str.56, ptr @.str.71, i8 0, i8 -109, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"t4_ring_srq_db\00", [17 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s : WC srq->pidx = %d; len16=%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"iw_cxgb4: %s : WC srq->pidx = %d; len16=%d\0A\00", [52 x i8] zeroinitializer }, align 32
@t4_ring_srq_db.__UNIQUE_ID_ddebug663 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.70, ptr @.str.56, ptr @.str.73, i8 0, i8 -108, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: DB srq->pidx = %d; len16=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"iw_cxgb4: %s: DB srq->pidx = %d; len16=%d\0A\00", [53 x i8] zeroinitializer }, align 32
@rdma_init.__UNIQUE_ID_ddebug702 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.75, ptr @.str.2, ptr @.str.76, i8 1, i8 -73, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rdma_init\00", [22 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"qhp %p qid 0x%x tid %u ird %u ord %u\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"iw_cxgb4: qhp %p qid 0x%x tid %u ird %u ord %u\0A\00", [48 x i8] zeroinitializer }, align 32
@rdma_init.__UNIQUE_ID_ddebug703 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.75, ptr @.str.2, ptr @.str.78, i8 1, i8 -55, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ret %d\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"iw_cxgb4: ret %d\0A\00", [46 x i8] zeroinitializer }, align 32
@alloc_ird._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.2, i32 75, ptr @.str.82, ptr @.str.83 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"device IRD resources exhausted\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"alloc_ird\00", [22 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@alloc_ird._entry_ptr = internal global ptr @alloc_ird._entry, section ".printk_index", align 4
@build_rtr_msg.__UNIQUE_ID_ddebug701 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.84, ptr @.str.2, ptr @.str.85, i8 1, i8 -81, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"build_rtr_msg\00", [18 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"p2p_type = %d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"iw_cxgb4: p2p_type = %d\0A\00", [39 x i8] zeroinitializer }, align 32
@c4iw_ref_send_wait.__UNIQUE_ID_ddebug671 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.87, ptr @.str.88, ptr @.str.89, i8 0, i8 74, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"c4iw_ref_send_wait\00", [45 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/infiniband/hw/cxgb4/iw_cxgb4.h\00", [57 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s wr_wait %p hwtid %u qpid %u\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"iw_cxgb4: %s wr_wait %p hwtid %u qpid %u\0A\00", [54 x i8] zeroinitializer }, align 32
@c4iw_get_wr_wait.__UNIQUE_ID_ddebug669 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.91, ptr @.str.88, ptr @.str.92, i8 0, i8 57, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"c4iw_get_wr_wait\00", [47 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"wr_wait %p ref before get %u\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"iw_cxgb4: wr_wait %p ref before get %u\0A\00", [56 x i8] zeroinitializer }, align 32
@c4iw_wait_for_reply._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.95, ptr @.str.88, i32 274, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\013iw_cxgb4: %s - Device %s not responding (disabling device) - tid %u qpid %u\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"c4iw_wait_for_reply\00", [44 x i8] zeroinitializer }, align 32
@c4iw_wait_for_reply._entry_ptr = internal global ptr @c4iw_wait_for_reply._entry, section ".printk_index", align 4
@c4iw_wait_for_reply.__UNIQUE_ID_ddebug670 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.95, ptr @.str.88, ptr @.str.96, i8 0, i8 70, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.96 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: FW reply %d tid %u qpid %u\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"iw_cxgb4: %s: FW reply %d tid %u qpid %u\0A\00", [54 x i8] zeroinitializer }, align 32
@__flush_qp.__UNIQUE_ID_ddebug698 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.98, ptr @.str.2, ptr @.str.99, i8 1, i8 -112, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.98 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"__flush_qp\00", [21 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"qhp %p rchp %p schp %p\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"iw_cxgb4: qhp %p rchp %p schp %p\0A\00", [62 x i8] zeroinitializer }, align 32
@rdma_fini.__UNIQUE_ID_ddebug699 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.101, ptr @.str.2, ptr @.str.102, i8 1, i8 -88, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.101 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rdma_fini\00", [22 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"qhp %p qid 0x%x tid %u\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"iw_cxgb4: qhp %p qid 0x%x tid %u\0A\00", [62 x i8] zeroinitializer }, align 32
@rdma_fini.__UNIQUE_ID_ddebug700 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.101, ptr @.str.2, ptr @.str.78, i8 1, i8 -82, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@post_terminate.__UNIQUE_ID_ddebug697 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.104, ptr @.str.2, ptr @.str.102, i8 1, i8 -120, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.104 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"post_terminate\00", [17 x i8] zeroinitializer }, align 32
@c4iw_put_wr_wait.__UNIQUE_ID_ddebug668 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.105, ptr @.str.88, ptr @.str.106, i8 0, i8 55, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.105 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"c4iw_put_wr_wait\00", [47 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"wr_wait %p ref before put %u\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"iw_cxgb4: wr_wait %p ref before put %u\0A\00", [56 x i8] zeroinitializer }, align 32
@create_qp.__UNIQUE_ID_ddebug688 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.108, ptr @.str.2, ptr @.str.109, i8 0, i8 69, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.108 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"create_qp\00", [22 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"sq base va 0x%p pa 0x%llx rq base va 0x%p pa 0x%llx\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"iw_cxgb4: sq base va 0x%p pa 0x%llx rq base va 0x%p pa 0x%llx\0A\00", [33 x i8] zeroinitializer }, align 32
@create_qp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.108, ptr @.str.2, i32 297, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014iw_cxgb4: %s: sqid %u or rqid %u not in BAR2 range\0A\00", [42 x i8] zeroinitializer }, align 32
@create_qp._entry_ptr = internal global ptr @create_qp._entry, section ".printk_index", align 4
@create_qp.__UNIQUE_ID_ddebug689 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.108, ptr @.str.2, ptr @.str.112, i8 0, i8 97, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.112 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"sqid 0x%x rqid 0x%x kdb 0x%p sq_bar2_addr %p rq_bar2_addr %p\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"iw_cxgb4: sqid 0x%x rqid 0x%x kdb 0x%p sq_bar2_addr %p rq_bar2_addr %p\0A\00", [56 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.114 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.115 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@insert_mmap.__UNIQUE_ID_ddebug675 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.118, ptr @.str.88, ptr @.str.119, i8 0, i8 -114, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.118 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"insert_mmap\00", [20 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"key 0x%x addr 0x%llx len %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"iw_cxgb4: key 0x%x addr 0x%llx len %d\0A\00", [57 x i8] zeroinitializer }, align 32
@alloc_srq_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.122, ptr @.str.2, i32 2563, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014iw_cxgb4: iw_cxgb4:%s: srqid %u not in BAR2 range.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"alloc_srq_queue\00", [16 x i8] zeroinitializer }, align 32
@alloc_srq_queue._entry_ptr = internal global ptr @alloc_srq_queue._entry, section ".printk_index", align 4
@alloc_srq_queue.__UNIQUE_ID_ddebug719 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.122, ptr @.str.2, ptr @.str.123, i8 2, i8 -112, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.123 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"%s srq %u eqid %u pdid %u queue va %p pa 0x%llx\0A bar2_addr %p rqt addr 0x%x size %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [95 x i8], [33 x i8] } { [95 x i8] c"iw_cxgb4: %s srq %u eqid %u pdid %u queue va %p pa 0x%llx\0A bar2_addr %p rqt addr 0x%x size %d\0A\00", [33 x i8] zeroinitializer }, align 32
@__func__.free_srq_queue = private unnamed_addr constant [15 x i8] c"free_srq_queue\00", align 1
@switch.table.c4iw_ib_modify_qp = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 0, i32 0, i32 -1, i32 1, i32 4, i32 3, i32 2], [36 x i8] zeroinitializer }, align 32
@switch.table.c4iw_ib_query_qp = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 1, i32 3, i32 6, i32 5, i32 4], [44 x i8] zeroinitializer }, align 32
@switch.table.c4iw_ib_query_qp.125 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 1, i32 3, i32 6, i32 5, i32 4], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 4, i64 7, i64 9, i64 11, i64 32]
@__sancov_gen_cov_switch_values.126 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 9]
@__sancov_gen_cov_switch_values.127 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 4, i64 7, i64 9, i64 11, i64 32]
@__sancov_gen_cov_switch_values.128 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 9]
@__sancov_gen_cov_switch_values.129 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.130 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.131 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.132 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.133 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.134 = private unnamed_addr constant [15 x i8] c"db_delay_usecs\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 38, i32 12 }
@___asan_gen_.137 = private unnamed_addr constant [13 x i8] c"ocqp_support\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 42, i32 12 }
@___asan_gen_.140 = private unnamed_addr constant [16 x i8] c"db_fc_threshold\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 46, i32 5 }
@___asan_gen_.143 = private unnamed_addr constant [24 x i8] c"db_coalescing_threshold\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 52, i32 5 }
@___asan_gen_.146 = private unnamed_addr constant [12 x i8] c"max_fr_immd\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 58, i32 12 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 895, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 901, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1221, i32 4 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1243, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1324, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1407, i32 4 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1845, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1917, i32 4 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1993, i32 4 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 2023, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 2030, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 2066, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 2099, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 2100, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 2205, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 2206, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 2207, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 2329, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 2364, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 2412, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 2679, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 2773, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 2777, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 2805, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 737, i32 3 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 608, i32 4 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 613, i32 4 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 633, i32 4 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 638, i32 4 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1346, i32 2 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 588, i32 3 }
@___asan_gen_.387 = private unnamed_addr constant [36 x i8] c"../drivers/infiniband/hw/cxgb4/t4.h\00", align 1
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 592, i32 3 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1755, i32 2 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1828, i32 2 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 74, i32 3 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1727, i32 2 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 296, i32 2 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 228, i32 2 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 273, i32 3 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 280, i32 3 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1603, i32 2 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1699, i32 2 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 1567, i32 2 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 220, i32 2 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 272, i32 3 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 296, i32 3 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 386, i32 2 }
@___asan_gen_.515 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.519 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 87, i32 2 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 230, i32 6 }
@___asan_gen_.525 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 214, i32 2 }
@___asan_gen_.528 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 174, i32 2 }
@___asan_gen_.537 = private unnamed_addr constant [42 x i8] c"../drivers/infiniband/hw/cxgb4/iw_cxgb4.h\00", align 1
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 569, i32 2 }
@___asan_gen_.539 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 2562, i32 3 }
@___asan_gen_.551 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.552 = private constant [36 x i8] c"../drivers/infiniband/hw/cxgb4/qp.c\00", align 1
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 2620, i32 2 }
@___asan_gen_.554 = private unnamed_addr constant [31 x i8] c"switch.table.c4iw_ib_modify_qp\00", align 1
@___asan_gen_.555 = private unnamed_addr constant [30 x i8] c"switch.table.c4iw_ib_query_qp\00", align 1
@___asan_gen_.556 = private unnamed_addr constant [34 x i8] c"switch.table.c4iw_ib_query_qp.125\00", align 1
@llvm.compiler.used = appending global [165 x ptr] [ptr @__UNIQUE_ID_db_coalescing_threshold683, ptr @__UNIQUE_ID_db_coalescing_thresholdtype682, ptr @__UNIQUE_ID_db_delay_usecs677, ptr @__UNIQUE_ID_db_delay_usecstype676, ptr @__UNIQUE_ID_db_fc_threshold681, ptr @__UNIQUE_ID_db_fc_thresholdtype680, ptr @__UNIQUE_ID_max_fr_immd685, ptr @__UNIQUE_ID_max_fr_immdtype684, ptr @__UNIQUE_ID_ocqp_support679, ptr @__UNIQUE_ID_ocqp_supporttype678, ptr @__param_db_coalescing_threshold, ptr @__param_db_delay_usecs, ptr @__param_db_fc_threshold, ptr @__param_max_fr_immd, ptr @__param_ocqp_support, ptr @alloc_ird._entry, ptr @alloc_ird._entry_ptr, ptr @alloc_srq_queue._entry, ptr @alloc_srq_queue._entry_ptr, ptr @c4iw_modify_qp._entry, ptr @c4iw_modify_qp._entry_ptr, ptr @c4iw_post_send._entry, ptr @c4iw_post_send._entry_ptr, ptr @c4iw_wait_for_reply._entry, ptr @c4iw_wait_for_reply._entry_ptr, ptr @create_qp._entry, ptr @create_qp._entry_ptr, ptr @t4_swcq_produce._entry, ptr @t4_swcq_produce._entry_ptr, ptr @db_delay_usecs, ptr @ocqp_support, ptr @db_fc_threshold, ptr @db_coalescing_threshold, ptr @max_fr_immd, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @c4iw_create_qp.__key, ptr @.str.33, ptr @c4iw_create_qp.__key.34, ptr @.str.35, ptr @c4iw_create_qp.__key.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @c4iw_create_srq.__key, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @init_completion.__key, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @switch.table.c4iw_ib_modify_qp, ptr @switch.table.c4iw_ib_query_qp, ptr @switch.table.c4iw_ib_query_qp.125], section "llvm.metadata"
@0 = internal global [143 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db_delay_usecs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocqp_support to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db_fc_threshold to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db_coalescing_threshold to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_fr_immd to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c4iw_post_send._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c4iw_modify_qp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c4iw_create_qp.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c4iw_create_qp.__key.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c4iw_create_qp.__key.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 99, i32 160, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c4iw_create_srq.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t4_swcq_produce._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 117, i32 160, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 127, i32 160, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_ird._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c4iw_wait_for_reply._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_qp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_srq_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 95, i32 128, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.c4iw_ib_modify_qp to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.c4iw_ib_query_qp to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.c4iw_ib_query_qp.125 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @c4iw_bar2_addrs(ptr nocapture noundef readonly %rdev, i32 noundef %qid, i32 noundef %qtype, ptr noundef %pbar2_qid, ptr noundef writeonly %pbar2_pa) local_unnamed_addr #0 align 64 {
entry:
  %bar2_qoffset = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bar2_qoffset) #11
  %0 = ptrtoint ptr %bar2_qoffset to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %bar2_qoffset, align 8, !annotation !299
  %ports = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 8, i32 3
  %1 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ports, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %tobool.not = icmp eq ptr %pbar2_pa, null
  %not.tobool.not = xor i1 %tobool.not, true
  %cond = zext i1 %not.tobool.not to i32
  %call = call i32 @cxgb4_bar2_sge_qregs(ptr noundef %4, i32 noundef %qid, i32 noundef %qtype, i32 noundef %cond, ptr noundef nonnull %bar2_qoffset, ptr noundef %pbar2_qid) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %tobool.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %bar2_pa = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 9
  %5 = ptrtoint ptr %bar2_pa to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bar2_pa, align 4
  %conv = zext i32 %6 to i64
  %7 = ptrtoint ptr %bar2_qoffset to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %bar2_qoffset, align 8
  %add = add i64 %8, %conv
  %and = and i64 %add, -4096
  %9 = ptrtoint ptr %pbar2_pa to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %and, ptr %pbar2_pa, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %adapter_type = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 8, i32 13
  %10 = ptrtoint ptr %adapter_type to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %adapter_type, align 8
  %12 = and i8 %11, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %12)
  %cmp.i.not = icmp eq i8 %12, 64
  br i1 %cmp.i.not, label %if.end4.cleanup_crit_edge, label %if.end10

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end10:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %bar2_kva = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 10
  %13 = ptrtoint ptr %bar2_kva to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bar2_kva, align 8
  %15 = ptrtoint ptr %bar2_qoffset to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %bar2_qoffset, align 8
  %idx.ext = trunc i64 %16 to i32
  %add.ptr = getelementptr i8, ptr %14, i32 %idx.ext
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %add.ptr, %if.end10 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bar2_qoffset) #11
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgb4_bar2_sge_qregs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @c4iw_qp_add_ref(ptr noundef %qp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c4iw_qp_add_ref.__UNIQUE_ID_ddebug691, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c4iw_qp_add_ref, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !300

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @c4iw_qp_add_ref.__UNIQUE_ID_ddebug691, ptr noundef nonnull @.str.4, ptr noundef %qp) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %qp_refcnt = getelementptr inbounds %struct.c4iw_qp, ptr %qp, i32 0, i32 14
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %qp_refcnt, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %qp_refcnt, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %qp_refcnt, ptr %qp_refcnt, i32 1, ptr elementtype(i32) %qp_refcnt) #11, !srcloc !301
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %do.end.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !302

do.end.if.end15.sink.split.i.i.i_crit_edge:       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %do.end
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !303

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %do.end.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %do.end.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %qp_refcnt, i32 noundef %.sink.i.i.i) #11
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @c4iw_qp_rem_ref(ptr noundef %qp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c4iw_qp_rem_ref.__UNIQUE_ID_ddebug692, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c4iw_qp_rem_ref, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !300

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @c4iw_qp_rem_ref.__UNIQUE_ID_ddebug692, ptr noundef nonnull @.str.4, ptr noundef %qp) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %qp_refcnt = getelementptr inbounds %struct.c4iw_qp, ptr %qp, i32 0, i32 14
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %qp_refcnt, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !304
  tail call void @llvm.prefetch.p0(ptr %qp_refcnt, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %qp_refcnt, ptr %qp_refcnt, i32 1, ptr elementtype(i32) %qp_refcnt) #11, !srcloc !305
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then5, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end7_crit_edge, label %if.then10.i.i.i, !prof !303

if.end5.i.i.i.if.end7_crit_edge:                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %qp_refcnt, i32 noundef 3) #11
  br label %if.end7

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !306
  %qp_rel_comp = getelementptr inbounds %struct.c4iw_qp, ptr %qp, i32 0, i32 13
  tail call void @complete(ptr noundef %qp_rel_comp) #11
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.then10.i.i.i, %if.end5.i.i.i.if.end7_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @c4iw_post_send(ptr noundef %ibqp, ptr noundef %wr, ptr nocapture noundef writeonly %bad_wr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rhp1 = getelementptr inbounds %struct.c4iw_qp, ptr %ibqp, i32 0, i32 2
  %0 = ptrtoint ptr %rhp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rhp1, align 4
  %lock = getelementptr inbounds %struct.c4iw_qp, ptr %ibqp, i32 0, i32 6
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %wq = getelementptr inbounds %struct.c4iw_qp, ptr %ibqp, i32 0, i32 5
  %flushed = getelementptr inbounds %struct.c4iw_qp, ptr %ibqp, i32 0, i32 5, i32 4
  %2 = ptrtoint ptr %flushed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flushed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #11
  %tobool.not9.i = icmp eq ptr %wr, null
  br i1 %tobool.not9.i, label %if.then.cleanup257_crit_edge, label %while.body.lr.ph.i

if.then.cleanup257_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup257

while.body.lr.ph.i:                               ; preds = %if.then
  %send_cq.i.i = getelementptr inbounds %struct.ib_qp, ptr %ibqp, i32 0, i32 2
  %qid.i.i = getelementptr inbounds %struct.c4iw_qp, ptr %ibqp, i32 0, i32 5, i32 0, i32 10
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %wr.addr.010.i = phi ptr [ %wr, %while.body.lr.ph.i ], [ %43, %if.end.i.while.body.i_crit_edge ]
  %4 = ptrtoint ptr %send_cq.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %send_cq.i.i, align 8
  %opcode2.i.i = getelementptr inbounds %struct.ib_send_wr, ptr %wr.addr.010.i, i32 0, i32 4
  %6 = ptrtoint ptr %opcode2.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %opcode2.i.i, align 8
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %if.then.i [
    i32 9, label %while.body.i.if.end.i.i_crit_edge
    i32 2, label %sw.bb1.i.i.i
    i32 0, label %sw.bb2.i.i.i
    i32 1, label %sw.bb3.i.i.i
    i32 4, label %while.body.i.sw.bb4.i.i.i_crit_edge
    i32 11, label %while.body.i.sw.bb4.i.i.i_crit_edge877
    i32 32, label %sw.bb5.i.i.i
    i32 7, label %sw.bb6.i.i.i
  ]

while.body.i.sw.bb4.i.i.i_crit_edge877:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb4.i.i.i

while.body.i.sw.bb4.i.i.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb4.i.i.i

while.body.i.if.end.i.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

sw.bb1.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

sw.bb2.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

sw.bb3.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

sw.bb4.i.i.i:                                     ; preds = %while.body.i.sw.bb4.i.i.i_crit_edge, %while.body.i.sw.bb4.i.i.i_crit_edge877
  br label %if.end.i.i

sw.bb5.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

sw.bb6.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %sw.bb6.i.i.i, %sw.bb5.i.i.i, %sw.bb4.i.i.i, %sw.bb3.i.i.i, %sw.bb2.i.i.i, %sw.bb1.i.i.i, %while.body.i.if.end.i.i_crit_edge
  %opcode.0.i.ph.i.i = phi i32 [ 4, %while.body.i.if.end.i.i_crit_edge ], [ 3, %sw.bb1.i.i.i ], [ 0, %sw.bb2.i.i.i ], [ 8, %sw.bb3.i.i.i ], [ 1, %sw.bb4.i.i.i ], [ 10, %sw.bb5.i.i.i ], [ 11, %sw.bb6.i.i.i ]
  %9 = getelementptr inbounds %struct.ib_send_wr, ptr %wr.addr.010.i, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %9, align 8
  %12 = ptrtoint ptr %qid.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %qid.i.i, align 8
  %shl7.i.i = shl i32 %13, 12
  %or6.i.i = or i32 %shl7.i.i, %opcode.0.i.ph.i.i
  %or8.i.i = or i32 %or6.i.i, 3472
  %lock.i.i = getelementptr inbounds %struct.c4iw_cq, ptr %5, i32 0, i32 4
  %call12.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #11
  %gen.i.i = getelementptr inbounds %struct.c4iw_cq, ptr %5, i32 0, i32 3, i32 20
  %14 = ptrtoint ptr %gen.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %gen.i.i, align 8
  %conv15.i.i = zext i8 %15 to i64
  %shl16.i.i = shl i64 %conv15.i.i, 63
  %sw_queue.i.i = getelementptr inbounds %struct.c4iw_cq, ptr %5, i32 0, i32 3, i32 3
  %16 = ptrtoint ptr %sw_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sw_queue.i.i, align 4
  %sw_pidx.i.i = getelementptr inbounds %struct.c4iw_cq, ptr %5, i32 0, i32 3, i32 16
  %18 = ptrtoint ptr %sw_pidx.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %sw_pidx.i.i, align 8
  %idxprom.i.i = zext i16 %19 to i32
  %arrayidx.i.i = getelementptr %struct.t4_cqe, ptr %17, i32 %idxprom.i.i
  %20 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or8.i.i, ptr %arrayidx.i.i, align 8
  %cqe.sroa.5.0.arrayidx.sroa_idx.i.i = getelementptr inbounds i8, ptr %arrayidx.i.i, i32 4
  %21 = ptrtoint ptr %cqe.sroa.5.0.arrayidx.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %cqe.sroa.5.0.arrayidx.sroa_idx.i.i, align 4
  %cqe.sroa.556.0.arrayidx.sroa_idx.i.i = getelementptr inbounds i8, ptr %arrayidx.i.i, i32 8
  %22 = ptrtoint ptr %cqe.sroa.556.0.arrayidx.sroa_idx.i.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %11, ptr %cqe.sroa.556.0.arrayidx.sroa_idx.i.i, align 8
  %cqe.sroa.6.0.arrayidx.sroa_idx.i.i = getelementptr inbounds i8, ptr %arrayidx.i.i, i32 16
  %23 = call ptr @memset(ptr %cqe.sroa.6.0.arrayidx.sroa_idx.i.i, i32 0, i32 40)
  %cqe.sroa.657.0.arrayidx.sroa_idx.i.i = getelementptr inbounds i8, ptr %arrayidx.i.i, i32 56
  %24 = ptrtoint ptr %cqe.sroa.657.0.arrayidx.sroa_idx.i.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %shl16.i.i, ptr %cqe.sroa.657.0.arrayidx.sroa_idx.i.i, align 8
  %sw_in_use.i.i.i = getelementptr inbounds %struct.c4iw_cq, ptr %5, i32 0, i32 3, i32 18
  %25 = ptrtoint ptr %sw_in_use.i.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %sw_in_use.i.i.i, align 4
  %inc.i.i.i = add i16 %26, 1
  store i16 %inc.i.i.i, ptr %sw_in_use.i.i.i, align 4
  %size.i.i.i = getelementptr inbounds %struct.c4iw_cq, ptr %5, i32 0, i32 3, i32 14
  %27 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %size.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i.i.i, i16 %28)
  %cmp.i.i.i = icmp eq i16 %inc.i.i.i, %28
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %cqid.i.i.i = getelementptr inbounds %struct.c4iw_cq, ptr %5, i32 0, i32 3, i32 11
  %29 = ptrtoint ptr %cqid.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cqid.i.i.i, align 8
  %call.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.55, i32 noundef %30) #14
  %error.i.i.i = getelementptr inbounds %struct.c4iw_cq, ptr %5, i32 0, i32 3, i32 21
  %31 = ptrtoint ptr %error.i.i.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %error.i.i.i, align 1
  %32 = ptrtoint ptr %sw_in_use.i.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %sw_in_use.i.i.i, align 4
  %dec.i.i.i = add i16 %33, -1
  store i16 %dec.i.i.i, ptr %sw_in_use.i.i.i, align 4
  br label %t4_swcq_produce.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %34 = ptrtoint ptr %sw_pidx.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %sw_pidx.i.i, align 8
  %inc5.i.i.i = add i16 %35, 1
  call void @__sanitizer_cov_trace_cmp2(i16 %inc5.i.i.i, i16 %28)
  %cmp9.i.i.i = icmp eq i16 %inc5.i.i.i, %28
  %spec.store.select.i.i.i = select i1 %cmp9.i.i.i, i16 0, i16 %inc5.i.i.i
  %36 = ptrtoint ptr %sw_pidx.i.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %spec.store.select.i.i.i, ptr %sw_pidx.i.i, align 8
  br label %t4_swcq_produce.exit.i.i

t4_swcq_produce.exit.i.i:                         ; preds = %if.end.i.i.i, %do.end.i.i.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call12.i.i) #11
  %flags.i.i.i = getelementptr inbounds %struct.c4iw_cq, ptr %5, i32 0, i32 3, i32 23
  %call.i60.i.i = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %flags.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i60.i.i, 0
  br i1 %tobool.not.i.i, label %t4_swcq_produce.exit.i.i.if.end.i_crit_edge, label %do.body22.i.i

t4_swcq_produce.exit.i.i.if.end.i_crit_edge:      ; preds = %t4_swcq_produce.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

do.body22.i.i:                                    ; preds = %t4_swcq_produce.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %comp_handler_lock.i.i = getelementptr inbounds %struct.c4iw_cq, ptr %5, i32 0, i32 5
  %call29.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %comp_handler_lock.i.i) #11
  %comp_handler.i.i = getelementptr inbounds %struct.ib_cq, ptr %5, i32 0, i32 2
  %37 = ptrtoint ptr %comp_handler.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %comp_handler.i.i, align 8
  %cq_context.i.i = getelementptr inbounds %struct.ib_cq, ptr %5, i32 0, i32 4
  %39 = ptrtoint ptr %cq_context.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cq_context.i.i, align 8
  tail call void %38(ptr noundef %5, ptr noundef %40) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %comp_handler_lock.i.i, i32 noundef %call29.i.i) #11
  br label %if.end.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %41 = ptrtoint ptr %bad_wr to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %wr.addr.010.i, ptr %bad_wr, align 4
  br label %cleanup257

if.end.i:                                         ; preds = %do.body22.i.i, %t4_swcq_produce.exit.i.i.if.end.i_crit_edge
  %42 = ptrtoint ptr %wr.addr.010.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %wr.addr.010.i, align 8
  %tobool.not.i = icmp eq ptr %43, null
  br i1 %tobool.not.i, label %if.end.i.cleanup257_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

if.end.i.cleanup257_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup257

if.end:                                           ; preds = %entry
  %size.i = getelementptr inbounds %struct.c4iw_qp, ptr %ibqp, i32 0, i32 5, i32 0, i32 12
  %44 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %size.i, align 2
  %conv.i = zext i16 %45 to i32
  %in_use.i = getelementptr inbounds %struct.c4iw_qp, ptr %ibqp, i32 0, i32 5, i32 0, i32 11
  %46 = ptrtoint ptr %in_use.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %in_use.i, align 4
  %conv2.i = zext i16 %47 to i32
  %48 = xor i32 %conv2.i, -1
  %sub3.i = add nsw i32 %48, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub3.i)
  %cmp11 = icmp eq i32 %sub3.i, 0
  br i1 %cmp11, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #11
  %49 = ptrtoint ptr %bad_wr to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %wr, ptr %bad_wr, align 4
  br label %cleanup257

if.end15:                                         ; preds = %if.end
  %50 = ptrtoint ptr %rhp1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rhp1, align 4
  %write_cmpl_support = getelementptr inbounds %struct.c4iw_dev, ptr %51, i32 0, i32 1, i32 8, i32 43
  %52 = ptrtoint ptr %write_cmpl_support to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %write_cmpl_support, align 2, !range !307
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool17.not = icmp eq i8 %53, 0
  br i1 %tobool17.not, label %if.end15.if.end67_crit_edge, label %land.lhs.true

if.end15.if.end67_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end67

land.lhs.true:                                    ; preds = %if.end15
  %adapter_type = getelementptr inbounds %struct.c4iw_dev, ptr %51, i32 0, i32 1, i32 8, i32 13
  %54 = ptrtoint ptr %adapter_type to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %adapter_type, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 80, i8 %55)
  %cmp23 = icmp ult i8 %55, 80
  %tobool26.not = icmp eq ptr %wr, null
  %or.cond = or i1 %tobool26.not, %cmp23
  br i1 %or.cond, label %land.lhs.true.if.end67_crit_edge, label %land.lhs.true27

land.lhs.true.if.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end67

land.lhs.true27:                                  ; preds = %land.lhs.true
  %56 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %wr, align 8
  %tobool28.not = icmp eq ptr %57, null
  br i1 %tobool28.not, label %land.lhs.true27.while.body.lr.ph_crit_edge, label %land.lhs.true29

land.lhs.true27.while.body.lr.ph_crit_edge:       ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.lr.ph

land.lhs.true29:                                  ; preds = %land.lhs.true27
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 8
  %tobool32.not = icmp eq ptr %59, null
  br i1 %tobool32.not, label %land.lhs.true33, label %land.lhs.true29.while.body.lr.ph_crit_edge

land.lhs.true29.while.body.lr.ph_crit_edge:       ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.lr.ph

land.lhs.true33:                                  ; preds = %land.lhs.true29
  %opcode = getelementptr inbounds %struct.ib_send_wr, ptr %wr, i32 0, i32 4
  %60 = ptrtoint ptr %opcode to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %opcode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp34 = icmp eq i32 %61, 0
  br i1 %cmp34, label %land.lhs.true36, label %land.lhs.true33.while.body.lr.ph_crit_edge

land.lhs.true33.while.body.lr.ph_crit_edge:       ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.lr.ph

land.lhs.true36:                                  ; preds = %land.lhs.true33
  %sg_list = getelementptr inbounds %struct.ib_send_wr, ptr %wr, i32 0, i32 2
  %62 = ptrtoint ptr %sg_list to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %sg_list, align 8
  %length = getelementptr inbounds %struct.ib_sge, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %length, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool37.not = icmp eq i32 %65, 0
  br i1 %tobool37.not, label %land.lhs.true36.while.body.lr.ph_crit_edge, label %land.lhs.true38

land.lhs.true36.while.body.lr.ph_crit_edge:       ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.lr.ph

land.lhs.true38:                                  ; preds = %land.lhs.true36
  %num_sge = getelementptr inbounds %struct.ib_send_wr, ptr %wr, i32 0, i32 3
  %66 = ptrtoint ptr %num_sge to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %num_sge, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %67)
  %cmp39 = icmp slt i32 %67, 5
  br i1 %cmp39, label %land.lhs.true41, label %land.lhs.true38.while.body.lr.ph_crit_edge

land.lhs.true38.while.body.lr.ph_crit_edge:       ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.lr.ph

land.lhs.true41:                                  ; preds = %land.lhs.true38
  %opcode43 = getelementptr inbounds %struct.ib_send_wr, ptr %57, i32 0, i32 4
  %68 = ptrtoint ptr %opcode43 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %opcode43, align 8
  %70 = zext i32 %69 to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.126)
  switch i32 %69, label %land.lhs.true41.while.body.lr.ph_crit_edge [
    i32 2, label %land.lhs.true41.land.lhs.true50_crit_edge
    i32 9, label %land.lhs.true41.land.lhs.true50_crit_edge878
  ]

land.lhs.true41.land.lhs.true50_crit_edge878:     ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true50

land.lhs.true41.land.lhs.true50_crit_edge:        ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true50

land.lhs.true41.while.body.lr.ph_crit_edge:       ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.lr.ph

land.lhs.true50:                                  ; preds = %land.lhs.true41.land.lhs.true50_crit_edge, %land.lhs.true41.land.lhs.true50_crit_edge878
  %sg_list52 = getelementptr inbounds %struct.ib_send_wr, ptr %57, i32 0, i32 2
  %71 = ptrtoint ptr %sg_list52 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %sg_list52, align 8
  %length54 = getelementptr inbounds %struct.ib_sge, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %length54 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %length54, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %74)
  %cmp55 = icmp eq i32 %74, 16
  br i1 %cmp55, label %land.lhs.true57, label %land.lhs.true50.while.body.lr.ph_crit_edge

land.lhs.true50.while.body.lr.ph_crit_edge:       ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.lr.ph

land.lhs.true57:                                  ; preds = %land.lhs.true50
  %num_sge59 = getelementptr inbounds %struct.ib_send_wr, ptr %57, i32 0, i32 3
  %75 = ptrtoint ptr %num_sge59 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %num_sge59, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %76)
  %cmp60 = icmp eq i32 %76, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub3.i)
  %cmp63 = icmp ugt i32 %sub3.i, 1
  %or.cond390 = select i1 %cmp60, i1 %cmp63, i1 false
  br i1 %or.cond390, label %if.then65, label %land.lhs.true57.while.body.lr.ph_crit_edge

land.lhs.true57.while.body.lr.ph_crit_edge:       ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.lr.ph

if.then65:                                        ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @post_write_cmpl(ptr noundef %ibqp, ptr noundef nonnull %wr)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #11
  br label %cleanup257

if.end67:                                         ; preds = %land.lhs.true.if.end67_crit_edge, %if.end15.if.end67_crit_edge
  %tobool68.not618 = icmp eq ptr %wr, null
  br i1 %tobool68.not618, label %if.end67.while.end_crit_edge, label %if.end67.while.body.lr.ph_crit_edge

if.end67.while.body.lr.ph_crit_edge:              ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.lr.ph

if.end67.while.end_crit_edge:                     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end67.while.body.lr.ph_crit_edge, %land.lhs.true57.while.body.lr.ph_crit_edge, %land.lhs.true50.while.body.lr.ph_crit_edge, %land.lhs.true41.while.body.lr.ph_crit_edge, %land.lhs.true38.while.body.lr.ph_crit_edge, %land.lhs.true36.while.body.lr.ph_crit_edge, %land.lhs.true33.while.body.lr.ph_crit_edge, %land.lhs.true29.while.body.lr.ph_crit_edge, %land.lhs.true27.while.body.lr.ph_crit_edge
  %wq_pidx = getelementptr inbounds %struct.c4iw_qp, ptr %ibqp, i32 0, i32 5, i32 0, i32 15
  %sq_sig_all = getelementptr inbounds %struct.c4iw_qp, ptr %ibqp, i32 0, i32 9
  %sw_sq = getelementptr inbounds %struct.c4iw_qp, ptr %ibqp, i32 0, i32 5, i32 0, i32 4
  %pidx = getelementptr inbounds %struct.c4iw_qp, ptr %ibqp, i32 0, i32 5, i32 0, i32 14
  %fr_nsmr_tpte_wr_support = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 1, i32 8, i32 41
  %ulptx_memwrite_dsgl = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 1, i32 8, i32 34
  %oldest_read = getelementptr inbounds %struct.c4iw_qp, ptr %ibqp, i32 0, i32 5, i32 0, i32 5
  %write_w_imm_support = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 1, i32 8, i32 42
  %ports = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 1, i32 8, i32 3
  br label %if.end72

while.body:                                       ; preds = %t4_sq_produce.exit
  %cmp69 = icmp eq i32 %dec, 0
  br i1 %cmp69, label %while.body.while.end.sink.split_crit_edge, label %while.body.if.end72_crit_edge

while.body.if.end72_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end72

while.body.while.end.sink.split_crit_edge:        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.sink.split

if.end72:                                         ; preds = %while.body.if.end72_crit_edge, %while.body.lr.ph
  %num_wrs.0620785 = phi i32 [ %sub3.i, %while.body.lr.ph ], [ %dec, %while.body.if.end72_crit_edge ]
  %idx.0621776 = phi i16 [ 0, %while.body.lr.ph ], [ %add246, %while.body.if.end72_crit_edge ]
  %wr.addr.0630767 = phi ptr [ %wr, %while.body.lr.ph ], [ %453, %while.body.if.end72_crit_edge ]
  %77 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %wq, align 8
  %79 = ptrtoint ptr %wq_pidx to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %wq_pidx, align 4
  %conv76 = zext i16 %80 to i32
  %mul = shl nuw nsw i32 %conv76, 6
  %add.ptr = getelementptr i8, ptr %78, i32 %mul
  %send_flags = getelementptr inbounds %struct.ib_send_wr, ptr %wr.addr.0630767, i32 0, i32 5
  %81 = ptrtoint ptr %send_flags to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %send_flags, align 4
  %and77 = and i32 %82, 4
  %and82 = and i32 %82, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %tobool83.not = icmp eq i32 %and82, 0
  br i1 %tobool83.not, label %lor.lhs.false84, label %if.end72.if.then86_crit_edge

if.end72.if.then86_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then86

lor.lhs.false84:                                  ; preds = %if.end72
  %83 = ptrtoint ptr %sq_sig_all to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %sq_sig_all, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool85.not = icmp eq i32 %84, 0
  br i1 %tobool85.not, label %lor.lhs.false84.if.end88_crit_edge, label %lor.lhs.false84.if.then86_crit_edge

lor.lhs.false84.if.then86_crit_edge:              ; preds = %lor.lhs.false84
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then86

lor.lhs.false84.if.end88_crit_edge:               ; preds = %lor.lhs.false84
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end88

if.then86:                                        ; preds = %lor.lhs.false84.if.then86_crit_edge, %if.end72.if.then86_crit_edge
  %or87 = or i32 %and77, 1
  br label %if.end88

if.end88:                                         ; preds = %if.then86, %lor.lhs.false84.if.end88_crit_edge
  %fw_flags.1 = phi i32 [ %or87, %if.then86 ], [ %and77, %lor.lhs.false84.if.end88_crit_edge ]
  %85 = ptrtoint ptr %sw_sq to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %sw_sq, align 8
  %87 = ptrtoint ptr %pidx to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %pidx, align 2
  %idxprom = zext i16 %88 to i32
  %arrayidx93 = getelementptr %struct.t4_swsqe, ptr %86, i32 %idxprom
  %opcode94 = getelementptr inbounds %struct.ib_send_wr, ptr %wr.addr.0630767, i32 0, i32 4
  %89 = ptrtoint ptr %opcode94 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %opcode94, align 8
  %91 = zext i32 %90 to i64
  call void @__sanitizer_cov_trace_switch(i64 %91, ptr @__sancov_gen_cov_switch_values.127)
  switch i32 %90, label %do.end192 [
    i32 9, label %if.end88.sw.bb_crit_edge
    i32 2, label %if.end88.sw.bb_crit_edge879
    i32 1, label %sw.bb111
    i32 0, label %if.end88.sw.bb121_crit_edge
    i32 4, label %if.end88.sw.bb126_crit_edge
    i32 11, label %if.end88.sw.bb126_crit_edge880
    i32 32, label %sw.bb151
    i32 7, label %sw.bb181
  ]

if.end88.sw.bb126_crit_edge880:                   ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb126

if.end88.sw.bb126_crit_edge:                      ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb126

if.end88.sw.bb121_crit_edge:                      ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb121

if.end88.sw.bb_crit_edge879:                      ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end88.sw.bb_crit_edge:                         ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

sw.bb:                                            ; preds = %if.end88.sw.bb_crit_edge, %if.end88.sw.bb_crit_edge879
  %and96 = shl i32 %82, 3
  %92 = and i32 %and96, 8
  %93 = or i32 %fw_flags.1, %92
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %90)
  %cmp102 = icmp eq i32 %90, 2
  %spec.select = select i1 %cmp102, i32 3, i32 4
  %94 = getelementptr %struct.t4_swsqe, ptr %86, i32 %idxprom, i32 3
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %spec.select, ptr %94, align 4
  %num_sge.i = getelementptr inbounds %struct.ib_send_wr, ptr %wr.addr.0630767, i32 0, i32 3
  %96 = ptrtoint ptr %num_sge.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %num_sge.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %97)
  %cmp.i = icmp ugt i32 %97, 17
  br i1 %cmp.i, label %sw.bb.while.end.sink.split_crit_edge, label %if.end.i393

sw.bb.while.end.sink.split_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.sink.split

if.end.i393:                                      ; preds = %sw.bb
  %98 = ptrtoint ptr %opcode94 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %opcode94, align 8
  %100 = zext i32 %99 to i64
  call void @__sanitizer_cov_trace_switch(i64 %100, ptr @__sancov_gen_cov_switch_values.128)
  switch i32 %99, label %if.end.i393.while.end.sink.split_crit_edge [
    i32 2, label %sw.bb.i
    i32 9, label %sw.bb4.i
  ]

if.end.i393.while.end.sink.split_crit_edge:       ; preds = %if.end.i393
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.sink.split

sw.bb.i:                                          ; preds = %if.end.i393
  call void @__sanitizer_cov_trace_pc() #13
  %101 = ptrtoint ptr %send_flags to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %send_flags, align 4
  %and.i = and i32 %102, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i394 = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool.not.i394, i32 3, i32 5
  %103 = getelementptr inbounds %struct.fw_ri_send_wr, ptr %add.ptr, i32 0, i32 5
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %spec.select.i, ptr %103, align 8
  br label %sw.epilog.i

sw.bb4.i:                                         ; preds = %if.end.i393
  call void @__sanitizer_cov_trace_pc() #13
  %105 = ptrtoint ptr %send_flags to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %send_flags, align 4
  %and6.i = and i32 %106, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  %spec.select114.i = select i1 %tobool7.not.i, i32 4, i32 6
  %107 = getelementptr inbounds %struct.fw_ri_send_wr, ptr %add.ptr, i32 0, i32 5
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %spec.select114.i, ptr %107, align 8
  %ex.i = getelementptr inbounds %struct.ib_send_wr, ptr %wr.addr.0630767, i32 0, i32 6
  %109 = ptrtoint ptr %ex.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %ex.i, align 8
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb4.i, %sw.bb.i
  %.sink.i = phi i32 [ %110, %sw.bb4.i ], [ 0, %sw.bb.i ]
  %stag_inv13.i = getelementptr inbounds %struct.fw_ri_send_wr, ptr %add.ptr, i32 0, i32 6
  %111 = ptrtoint ptr %stag_inv13.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %.sink.i, ptr %stag_inv13.i, align 4
  %r3.i = getelementptr inbounds %struct.fw_ri_send_wr, ptr %add.ptr, i32 0, i32 8
  %112 = ptrtoint ptr %r3.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 0, ptr %r3.i, align 4
  %r4.i = getelementptr inbounds %struct.fw_ri_send_wr, ptr %add.ptr, i32 0, i32 9
  %113 = ptrtoint ptr %r4.i to i32
  call void @__asan_store8_noabort(i32 %113)
  store i64 0, ptr %r4.i, align 8
  %114 = ptrtoint ptr %num_sge.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %num_sge.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %tobool15.not.i = icmp eq i32 %115, 0
  br i1 %tobool15.not.i, label %if.else37.i, label %if.then16.i

if.then16.i:                                      ; preds = %sw.epilog.i
  %116 = ptrtoint ptr %send_flags to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %send_flags, align 4
  %and18.i = and i32 %117, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  br i1 %tobool19.not.i, label %if.else24.i, label %if.then20.i

if.then20.i:                                      ; preds = %if.then16.i
  %u.i = getelementptr inbounds %struct.fw_ri_send_wr, ptr %add.ptr, i32 0, i32 10
  %data.i.i = getelementptr inbounds %struct.fw_ri_send_wr, ptr %add.ptr, i32 1, i32 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %cmp8.i.i = icmp sgt i32 %115, 0
  br i1 %cmp8.i.i, label %for.body.lr.ph.i.i, label %if.then20.i.for.end.i.i_crit_edge

if.then20.i.for.end.i.i_crit_edge:                ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %if.then20.i
  %sg_list.i.i = getelementptr inbounds %struct.ib_send_wr, ptr %wr.addr.0630767, i32 0, i32 2
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %dstp.011.i.i = phi ptr [ %data.i.i, %for.body.lr.ph.i.i ], [ %dstp.1.lcssa.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %i.010.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %plen.09.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %add.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %118 = ptrtoint ptr %sg_list.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %sg_list.i.i, align 8
  %length.i.i = getelementptr %struct.ib_sge, ptr %119, i32 %i.010.i.i, i32 1
  %120 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %length.i.i, align 8
  %add.i.i = add i32 %121, %plen.09.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 280, i32 %add.i.i)
  %cmp1.i.i = icmp ugt i32 %add.i.i, 280
  br i1 %cmp1.i.i, label %for.body.i.i.while.end.sink.split_crit_edge, label %if.end.i.i395

for.body.i.i.while.end.sink.split_crit_edge:      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.sink.split

if.end.i.i395:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %tobool.not4.i.i = icmp eq i32 %121, 0
  br i1 %tobool.not4.i.i, label %if.end.i.i395.for.inc.i.i_crit_edge, label %while.body.preheader.i.i

if.end.i.i395.for.inc.i.i_crit_edge:              ; preds = %if.end.i.i395
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

while.body.preheader.i.i:                         ; preds = %if.end.i.i395
  %arrayidx.i.i396 = getelementptr %struct.ib_sge, ptr %119, i32 %i.010.i.i
  %122 = ptrtoint ptr %arrayidx.i.i396 to i32
  call void @__asan_load8_noabort(i32 %122)
  %123 = load i64, ptr %arrayidx.i.i396, align 8
  %conv.i.i = trunc i64 %123 to i32
  %124 = inttoptr i32 %conv.i.i to ptr
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.body.preheader.i.i
  %dstp.17.i.i = phi ptr [ %add.ptr.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %dstp.011.i.i, %while.body.preheader.i.i ]
  %rem.06.i.i = phi i32 [ %sub.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %121, %while.body.preheader.i.i ]
  %srcp.05.i.i = phi ptr [ %add.ptr32.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %124, %while.body.preheader.i.i ]
  %125 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %wq, align 8
  %127 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %size.i, align 2
  %idxprom.i.i397 = zext i16 %128 to i32
  %arrayidx11.i.i = getelementptr %union.t4_wr, ptr %126, i32 %idxprom.i.i397
  %cmp12.i.i = icmp eq ptr %dstp.17.i.i, %arrayidx11.i.i
  %spec.select.i.i = select i1 %cmp12.i.i, ptr %126, ptr %dstp.17.i.i
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %arrayidx11.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %spec.select.i.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %129 = tail call i32 @llvm.smin.i32(i32 %rem.06.i.i, i32 %sub.ptr.sub.i.i) #11
  %130 = call ptr @memcpy(ptr %spec.select.i.i, ptr %srcp.05.i.i, i32 %129)
  %add.ptr.i.i = getelementptr i8, ptr %spec.select.i.i, i32 %129
  %add.ptr32.i.i = getelementptr i8, ptr %srcp.05.i.i, i32 %129
  %sub.i.i = sub i32 %rem.06.i.i, %129
  %tobool.not.i.i398 = icmp eq i32 %sub.i.i, 0
  br i1 %tobool.not.i.i398, label %while.body.i.i.for.inc.i.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i.i

while.body.i.i.for.inc.i.i_crit_edge:             ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %while.body.i.i.for.inc.i.i_crit_edge, %if.end.i.i395.for.inc.i.i_crit_edge
  %dstp.1.lcssa.i.i = phi ptr [ %dstp.011.i.i, %if.end.i.i395.for.inc.i.i_crit_edge ], [ %add.ptr.i.i, %while.body.i.i.for.inc.i.i_crit_edge ]
  %inc.i.i = add nuw nsw i32 %i.010.i.i, 1
  %131 = ptrtoint ptr %num_sge.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %num_sge.i, align 4
  %cmp.i.i = icmp slt i32 %inc.i.i, %132
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.for.end.i.i_crit_edge

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %if.then20.i.for.end.i.i_crit_edge
  %plen.0.lcssa.i.i = phi i32 [ 0, %if.then20.i.for.end.i.i_crit_edge ], [ %add.i.i, %for.inc.i.i.for.end.i.i_crit_edge ]
  %dstp.0.lcssa.i.i = phi ptr [ %data.i.i, %if.then20.i.for.end.i.i_crit_edge ], [ %dstp.1.lcssa.i.i, %for.inc.i.i.for.end.i.i_crit_edge ]
  %add33.i.i = add i32 %plen.0.lcssa.i.i, 8
  %add35.i.i = add i32 %plen.0.lcssa.i.i, 23
  %div1.i.i = and i32 %add35.i.i, -16
  call void @__sanitizer_cov_trace_cmp4(i32 %div1.i.i, i32 %add33.i.i)
  %tobool38.not.i.i = icmp eq i32 %div1.i.i, %add33.i.i
  br i1 %tobool38.not.i.i, label %for.end.i.i.if.end23.i_crit_edge, label %if.then39.i.i

for.end.i.i.if.end23.i_crit_edge:                 ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23.i

if.then39.i.i:                                    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub37.i.i = sub i32 %div1.i.i, %add33.i.i
  %133 = call ptr @memset(ptr %dstp.0.lcssa.i.i, i32 0, i32 %sub37.i.i)
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then39.i.i, %for.end.i.i.if.end23.i_crit_edge
  %134 = ptrtoint ptr %u.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 -127, ptr %u.i, align 4
  %r1.i.i = getelementptr inbounds %struct.fw_ri_send_wr, ptr %add.ptr, i32 1, i32 1
  %135 = ptrtoint ptr %r1.i.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 0, ptr %r1.i.i, align 1
  %r2.i.i = getelementptr inbounds %struct.fw_ri_send_wr, ptr %add.ptr, i32 1, i32 2
  %136 = ptrtoint ptr %r2.i.i to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 0, ptr %r2.i.i, align 2
  %immdlen.i.i = getelementptr inbounds %struct.fw_ri_send_wr, ptr %add.ptr, i32 1, i32 3
  %137 = ptrtoint ptr %immdlen.i.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %plen.0.lcssa.i.i, ptr %immdlen.i.i, align 4
  %add.i = add i32 %plen.0.lcssa.i.i, 40
  br label %if.end46.i

if.else24.i:                                      ; preds = %if.then16.i
  %138 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %wq, align 8
  %140 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %size.i, align 2
  %idxprom.i = zext i16 %141 to i32
  %arrayidx.i = getelementptr %union.t4_wr, ptr %139, i32 %idxprom.i
  %u27.i = getelementptr inbounds %struct.fw_ri_send_wr, ptr %add.ptr, i32 0, i32 10
  %sg_list.i = getelementptr inbounds %struct.ib_send_wr, ptr %wr.addr.0630767, i32 0, i32 2
  %142 = ptrtoint ptr %sg_list.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %sg_list.i, align 8
  %cmp.i81.i = icmp eq ptr %u27.i, %arrayidx.i
  %spec.select.i82.i = select i1 %cmp.i81.i, ptr %139, ptr %u27.i
  %sge.i.i = getelementptr inbounds %struct.fw_ri_isgl, ptr %spec.select.i82.i, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %cmp158.i.i = icmp sgt i32 %115, 0
  br i1 %cmp158.i.i, label %if.else24.i.for.body.i85.i_crit_edge, label %if.else24.i.if.end33.i_crit_edge

if.else24.i.if.end33.i_crit_edge:                 ; preds = %if.else24.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33.i

if.else24.i.for.body.i85.i_crit_edge:             ; preds = %if.else24.i
  br label %for.body.i85.i

for.body.i85.i:                                   ; preds = %if.end4.i.i.for.body.i85.i_crit_edge, %if.else24.i.for.body.i85.i_crit_edge
  %flitp.061.i.i = phi ptr [ %flitp.2.i.i, %if.end4.i.i.for.body.i85.i_crit_edge ], [ %sge.i.i, %if.else24.i.for.body.i85.i_crit_edge ]
  %plen.060.i.i = phi i32 [ %add.i84.i, %if.end4.i.i.for.body.i85.i_crit_edge ], [ 0, %if.else24.i.for.body.i85.i_crit_edge ]
  %i.059.i.i = phi i32 [ %inc.i89.i, %if.end4.i.i.for.body.i85.i_crit_edge ], [ 0, %if.else24.i.for.body.i85.i_crit_edge ]
  %length.i83.i = getelementptr %struct.ib_sge, ptr %143, i32 %i.059.i.i, i32 1
  %144 = ptrtoint ptr %length.i83.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %length.i83.i, align 8
  %add.i84.i = add i32 %145, %plen.060.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i84.i, i32 %plen.060.i.i)
  %cmp2.i.i = icmp ult i32 %add.i84.i, %plen.060.i.i
  br i1 %cmp2.i.i, label %for.body.i85.i.while.end.sink.split_crit_edge, label %if.end4.i.i

for.body.i85.i.while.end.sink.split_crit_edge:    ; preds = %for.body.i85.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.sink.split

if.end4.i.i:                                      ; preds = %for.body.i85.i
  %arrayidx.i86.i = getelementptr %struct.ib_sge, ptr %143, i32 %i.059.i.i
  %lkey.i.i = getelementptr %struct.ib_sge, ptr %143, i32 %i.059.i.i, i32 2
  %146 = ptrtoint ptr %lkey.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %lkey.i.i, align 4
  %conv.i87.i = zext i32 %147 to i64
  %shl.i.i = shl nuw i64 %conv.i87.i, 32
  %conv11.i.i = zext i32 %145 to i64
  %or.i.i = or i64 %shl.i.i, %conv11.i.i
  %148 = ptrtoint ptr %flitp.061.i.i to i32
  call void @__asan_store8_noabort(i32 %148)
  store i64 %or.i.i, ptr %flitp.061.i.i, align 8
  %incdec.ptr.i.i = getelementptr i64, ptr %flitp.061.i.i, i32 1
  %cmp12.i88.i = icmp eq ptr %incdec.ptr.i.i, %arrayidx.i
  %spec.select55.i.i = select i1 %cmp12.i88.i, ptr %139, ptr %incdec.ptr.i.i
  %149 = ptrtoint ptr %arrayidx.i86.i to i32
  call void @__asan_load8_noabort(i32 %149)
  %150 = load i64, ptr %arrayidx.i86.i, align 8
  %151 = ptrtoint ptr %spec.select55.i.i to i32
  call void @__asan_store8_noabort(i32 %151)
  store i64 %150, ptr %spec.select55.i.i, align 8
  %incdec.ptr17.i.i = getelementptr i64, ptr %spec.select55.i.i, i32 1
  %cmp18.i.i = icmp eq ptr %incdec.ptr17.i.i, %arrayidx.i
  %flitp.2.i.i = select i1 %cmp18.i.i, ptr %139, ptr %incdec.ptr17.i.i
  %inc.i89.i = add nuw nsw i32 %i.059.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i89.i, %115
  br i1 %exitcond.not.i.i, label %if.end4.i.i.if.end33.i_crit_edge, label %if.end4.i.i.for.body.i85.i_crit_edge

if.end4.i.i.for.body.i85.i_crit_edge:             ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i85.i

if.end4.i.i.if.end33.i_crit_edge:                 ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.end4.i.i.if.end33.i_crit_edge, %if.else24.i.if.end33.i_crit_edge
  %plen.0.lcssa.i90.i = phi i32 [ 0, %if.else24.i.if.end33.i_crit_edge ], [ %add.i84.i, %if.end4.i.i.if.end33.i_crit_edge ]
  %flitp.0.lcssa.i.i = phi ptr [ %sge.i.i, %if.else24.i.if.end33.i_crit_edge ], [ %flitp.2.i.i, %if.end4.i.i.if.end33.i_crit_edge ]
  %152 = ptrtoint ptr %flitp.0.lcssa.i.i to i32
  call void @__asan_store8_noabort(i32 %152)
  store i64 0, ptr %flitp.0.lcssa.i.i, align 8
  %153 = ptrtoint ptr %spec.select.i82.i to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 -125, ptr %spec.select.i82.i, align 8
  %r1.i91.i = getelementptr inbounds %struct.fw_ri_isgl, ptr %spec.select.i82.i, i32 0, i32 1
  %154 = ptrtoint ptr %r1.i91.i to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 0, ptr %r1.i91.i, align 1
  %conv22.i.i = trunc i32 %115 to i16
  %nsge.i.i = getelementptr inbounds %struct.fw_ri_isgl, ptr %spec.select.i82.i, i32 0, i32 2
  %155 = ptrtoint ptr %nsge.i.i to i32
  call void @__asan_store2_noabort(i32 %155)
  store i16 %conv22.i.i, ptr %nsge.i.i, align 2
  %r2.i92.i = getelementptr inbounds %struct.fw_ri_isgl, ptr %spec.select.i82.i, i32 0, i32 3
  %156 = ptrtoint ptr %r2.i92.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 0, ptr %r2.i92.i, align 4
  %157 = ptrtoint ptr %num_sge.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %num_sge.i, align 4
  %mul.i = shl i32 %158, 4
  %add35.i = add i32 %mul.i, 40
  br label %if.end46.i

if.else37.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  %u38.i = getelementptr inbounds %struct.fw_ri_send_wr, ptr %add.ptr, i32 0, i32 10
  %159 = ptrtoint ptr %u38.i to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 -127, ptr %u38.i, align 8
  %r1.i = getelementptr inbounds %struct.fw_ri_send_wr, ptr %add.ptr, i32 1, i32 1
  %160 = ptrtoint ptr %r1.i to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 0, ptr %r1.i, align 1
  %r2.i = getelementptr inbounds %struct.fw_ri_send_wr, ptr %add.ptr, i32 1, i32 2
  %161 = ptrtoint ptr %r2.i to i32
  call void @__asan_store2_noabort(i32 %161)
  store i16 0, ptr %r2.i, align 2
  %immdlen.i = getelementptr inbounds %struct.fw_ri_send_wr, ptr %add.ptr, i32 1, i32 3
  %162 = ptrtoint ptr %immdlen.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 0, ptr %immdlen.i, align 4
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.else37.i, %if.end33.i, %if.end23.i
  %plen.2.i = phi i32 [ 0, %if.else37.i ], [ %plen.0.lcssa.i90.i, %if.end33.i ], [ %plen.0.lcssa.i.i, %if.end23.i ]
  %size.0.i = phi i32 [ 40, %if.else37.i ], [ %add35.i, %if.end33.i ], [ %add.i, %if.end23.i ]
  %sub.i = add i32 %size.0.i, 15
  %div.i = sdiv i32 %sub.i, 16
  %conv.i399 = trunc i32 %div.i to i8
  %plen48.i = getelementptr inbounds %struct.fw_ri_send_wr, ptr %add.ptr, i32 0, i32 7
  %163 = ptrtoint ptr %plen48.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %plen.2.i, ptr %plen48.i, align 8
  br label %if.end198

sw.bb111:                                         ; preds = %if.end88
  %164 = ptrtoint ptr %write_w_imm_support to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %write_w_imm_support, align 1, !range !307
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %165)
  %tobool114.not = icmp eq i8 %165, 0
  br i1 %tobool114.not, label %sw.bb111.while.end.sink.split_crit_edge, label %if.end119, !prof !302

sw.bb111.while.end.sink.split_crit_edge:          ; preds = %sw.bb111
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.sink.split

if.end119:                                        ; preds = %sw.bb111
  call void @__sanitizer_cov_trace_pc() #13
  %or120 = or i32 %fw_flags.1, 64
  br label %sw.bb121

sw.bb121:                                         ; preds = %if.end119, %if.end88.sw.bb121_crit_edge
  %fw_flags.3 = phi i32 [ %fw_flags.1, %if.end88.sw.bb121_crit_edge ], [ %or120, %if.end119 ]
  %opcode122 = getelementptr %struct.t4_swsqe, ptr %86, i32 %idxprom, i32 3
  %166 = ptrtoint ptr %opcode122 to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 0, ptr %opcode122, align 4
  %num_sge.i401 = getelementptr inbounds %struct.ib_send_wr, ptr %wr.addr.0630767, i32 0, i32 3
  %167 = ptrtoint ptr %num_sge.i401 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %num_sge.i401, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %168)
  %cmp.i402 = icmp ugt i32 %168, 17
  br i1 %cmp.i402, label %sw.bb121.while.end.sink.split_crit_edge, label %if.end.i404

sw.bb121.while.end.sink.split_crit_edge:          ; preds = %sw.bb121
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.sink.split

if.end.i404:                                      ; preds = %sw.bb121
  %169 = ptrtoint ptr %opcode94 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %opcode94, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %170)
  %cmp1.i = icmp eq i32 %170, 1
  br i1 %cmp1.i, label %if.then2.i, label %if.end.i404.if.end5.i_crit_edge

if.end.i404.if.end5.i_crit_edge:                  ; preds = %if.end.i404
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.i

if.then2.i:                                       ; preds = %if.end.i404
  call void @__sanitizer_cov_trace_pc() #13
  %ex.i405 = getelementptr inbounds %struct.ib_send_wr, ptr %wr.addr.0630767, i32 0, i32 6
  %171 = ptrtoint ptr %ex.i405 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %ex.i405, align 8
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then2.i, %if.end.i404.if.end5.i_crit_edge
  %.sink.i406 = phi i32 [ %172, %if.then2.i ], [ 0, %if.end.i404.if.end5.i_crit_edge ]
  %173 = getelementptr inbounds %struct.fw_ri_rdma_write_wr, ptr %add.ptr, i32 0, i32 5
  %174 = ptrtoint ptr %173 to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %.sink.i406, ptr %173, align 8
  %rkey.i = getelementptr inbounds %struct.ib_rdma_wr, ptr %wr.addr.0630767, i32 0, i32 2
  %175 = ptrtoint ptr %rkey.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %rkey.i, align 8
  %stag_sink.i = getelementptr inbounds %struct.fw_ri_rdma_write_wr, ptr %add.ptr, i32 0, i32 7
  %177 = ptrtoint ptr %stag_sink.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %176, ptr %stag_sink.i, align 4
  %remote_addr.i = getelementptr inbounds %struct.ib_rdma_wr, ptr %wr.addr.0630767, i32 0, i32 1
  %178 = ptrtoint ptr %remote_addr.i to i32
  call void @__asan_load8_noabort(i32 %178)
  %179 = load i64, ptr %remote_addr.i, align 8
  %to_sink.i = getelementptr inbounds %struct.fw_ri_rdma_write_wr, ptr %add.ptr, i32 0, i32 8
  %180 = ptrtoint ptr %to_sink.i to i32
  call void @__asan_store8_noabort(i32 %180)
  store i64 %179, ptr %to_sink.i, align 8
  %181 = ptrtoint ptr %num_sge.i401 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %num_sge.i401, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %182)
  %tobool.not.i407 = icmp eq i32 %182, 0
  br i1 %tobool.not.i407, label %if.else28.i, label %if.then8.i

if.then8.i:                                       ; preds = %if.end5.i
  %183 = ptrtoint ptr %send_flags to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %send_flags, align 4
  %and.i409 = and i32 %184, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i409)
  %tobool9.not.i = icmp eq i32 %and.i409, 0
  br i1 %tobool9.not.i, label %if.else15.i, label %if.then10.i

if.then10.i:                                      ; preds = %if.then8.i
  %u.i410 = getelementptr inbounds %struct.fw_ri_rdma_write_wr, ptr %add.ptr, i32 0, i32 9
  %data.i.i411 = getelementptr inbounds %struct.fw_ri_rdma_write_wr, ptr %add.ptr, i32 1, i32 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %182)
  %cmp8.i.i412 = icmp sgt i32 %182, 0
  br i1 %cmp8.i.i412, label %for.body.lr.ph.i.i415, label %if.then10.i.for.end.i.i453_crit_edge

if.then10.i.for.end.i.i453_crit_edge:             ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i453

for.body.lr.ph.i.i415:                            ; preds = %if.then10.i
  %sg_list.i.i413 = getelementptr inbounds %struct.ib_send_wr, ptr %wr.addr.0630767, i32 0, i32 2
  br label %for.body.i.i422

for.body.i.i422:                                  ; preds = %for.inc.i.i446.for.body.i.i422_crit_edge, %for.body.lr.ph.i.i415
  %dstp.011.i.i416 = phi ptr [ %data.i.i411, %for.body.lr.ph.i.i415 ], [ %dstp.1.lcssa.i.i443, %for.inc.i.i446.for.body.i.i422_crit_edge ]
  %i.010.i.i417 = phi i32 [ 0, %for.body.lr.ph.i.i415 ], [ %inc.i.i444, %for.inc.i.i446.for.body.i.i422_crit_edge ]
  %plen.09.i.i418 = phi i32 [ 0, %for.body.lr.ph.i.i415 ], [ %add.i.i420, %for.inc.i.i446.for.body.i.i422_crit_edge ]
  %185 = ptrtoint ptr %sg_list.i.i413 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %sg_list.i.i413, align 8
  %length.i.i419 = getelementptr %struct.ib_sge, ptr %186, i32 %i.010.i.i417, i32 1
  %187 = ptrtoint ptr %length.i.i419 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %length.i.i419, align 8
  %add.i.i420 = add i32 %188, %plen.09.i.i418
  call void @__sanitizer_cov_trace_const_cmp4(i32 280, i32 %add.i.i420)
  %cmp1.i.i421 = icmp ugt i32 %add.i.i420, 280
  br i1 %cmp1.i.i421, label %for.body.i.i422.while.end.sink.split_crit_edge, label %if.end.i.i424

for.body.i.i422.while.end.sink.split_crit_edge:   ; preds = %for.body.i.i422
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.sink.split

if.end.i.i424:                                    ; preds = %for.body.i.i422
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %188)
  %tobool.not4.i.i423 = icmp eq i32 %188, 0
  br i1 %tobool.not4.i.i423, label %if.end.i.i424.for.inc.i.i446_crit_edge, label %while.body.preheader.i.i427

if.end.i.i424.for.inc.i.i446_crit_edge:           ; preds = %if.end.i.i424
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i446

while.body.preheader.i.i427:                      ; preds = %if.end.i.i424
  %arrayidx.i.i425 = getelementptr %struct.ib_sge, ptr %186, i32 %i.010.i.i417
  %189 = ptrtoint ptr %arrayidx.i.i425 to i32
  call void @__asan_load8_noabort(i32 %189)
  %190 = load i64, ptr %arrayidx.i.i425, align 8
  %conv.i.i426 = trunc i64 %190 to i32
  %191 = inttoptr i32 %conv.i.i426 to ptr
  br label %while.body.i.i442

while.body.i.i442:                                ; preds = %while.body.i.i442.while.body.i.i442_crit_edge, %while.body.preheader.i.i427
  %dstp.17.i.i428 = phi ptr [ %add.ptr.i.i438, %while.body.i.i442.while.body.i.i442_crit_edge ], [ %dstp.011.i.i416, %while.body.preheader.i.i427 ]
  %rem.06.i.i429 = phi i32 [ %sub.i.i440, %while.body.i.i442.while.body.i.i442_crit_edge ], [ %188, %while.body.preheader.i.i427 ]
  %srcp.05.i.i430 = phi ptr [ %add.ptr32.i.i439, %while.body.i.i442.while.body.i.i442_crit_edge ], [ %191, %while.body.preheader.i.i427 ]
  %192 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %wq, align 8
  %194 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %194)
  %195 = load i16, ptr %size.i, align 2
  %idxprom.i.i431 = zext i16 %195 to i32
  %arrayidx11.i.i432 = getelementptr %union.t4_wr, ptr %193, i32 %idxprom.i.i431
  %cmp12.i.i433 = icmp eq ptr %dstp.17.i.i428, %arrayidx11.i.i432
  %spec.select.i.i434 = select i1 %cmp12.i.i433, ptr %193, ptr %dstp.17.i.i428
  %sub.ptr.lhs.cast.i.i435 = ptrtoint ptr %arrayidx11.i.i432 to i32
  %sub.ptr.rhs.cast.i.i436 = ptrtoint ptr %spec.select.i.i434 to i32
  %sub.ptr.sub.i.i437 = sub i32 %sub.ptr.lhs.cast.i.i435, %sub.ptr.rhs.cast.i.i436
  %196 = tail call i32 @llvm.smin.i32(i32 %rem.06.i.i429, i32 %sub.ptr.sub.i.i437) #11
  %197 = call ptr @memcpy(ptr %spec.select.i.i434, ptr %srcp.05.i.i430, i32 %196)
  %add.ptr.i.i438 = getelementptr i8, ptr %spec.select.i.i434, i32 %196
  %add.ptr32.i.i439 = getelementptr i8, ptr %srcp.05.i.i430, i32 %196
  %sub.i.i440 = sub i32 %rem.06.i.i429, %196
  %tobool.not.i.i441 = icmp eq i32 %sub.i.i440, 0
  br i1 %tobool.not.i.i441, label %while.body.i.i442.for.inc.i.i446_crit_edge, label %while.body.i.i442.while.body.i.i442_crit_edge

while.body.i.i442.while.body.i.i442_crit_edge:    ; preds = %while.body.i.i442
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i.i442

while.body.i.i442.for.inc.i.i446_crit_edge:       ; preds = %while.body.i.i442
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i446

for.inc.i.i446:                                   ; preds = %while.body.i.i442.for.inc.i.i446_crit_edge, %if.end.i.i424.for.inc.i.i446_crit_edge
  %dstp.1.lcssa.i.i443 = phi ptr [ %dstp.011.i.i416, %if.end.i.i424.for.inc.i.i446_crit_edge ], [ %add.ptr.i.i438, %while.body.i.i442.for.inc.i.i446_crit_edge ]
  %inc.i.i444 = add nuw nsw i32 %i.010.i.i417, 1
  %198 = ptrtoint ptr %num_sge.i401 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %num_sge.i401, align 4
  %cmp.i.i445 = icmp slt i32 %inc.i.i444, %199
  br i1 %cmp.i.i445, label %for.inc.i.i446.for.body.i.i422_crit_edge, label %for.inc.i.i446.for.end.i.i453_crit_edge

for.inc.i.i446.for.end.i.i453_crit_edge:          ; preds = %for.inc.i.i446
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i453

for.inc.i.i446.for.body.i.i422_crit_edge:         ; preds = %for.inc.i.i446
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i422

for.end.i.i453:                                   ; preds = %for.inc.i.i446.for.end.i.i453_crit_edge, %if.then10.i.for.end.i.i453_crit_edge
  %plen.0.lcssa.i.i447 = phi i32 [ 0, %if.then10.i.for.end.i.i453_crit_edge ], [ %add.i.i420, %for.inc.i.i446.for.end.i.i453_crit_edge ]
  %dstp.0.lcssa.i.i448 = phi ptr [ %data.i.i411, %if.then10.i.for.end.i.i453_crit_edge ], [ %dstp.1.lcssa.i.i443, %for.inc.i.i446.for.end.i.i453_crit_edge ]
  %add33.i.i449 = add i32 %plen.0.lcssa.i.i447, 8
  %add35.i.i450 = add i32 %plen.0.lcssa.i.i447, 23
  %div1.i.i451 = and i32 %add35.i.i450, -16
  call void @__sanitizer_cov_trace_cmp4(i32 %div1.i.i451, i32 %add33.i.i449)
  %tobool38.not.i.i452 = icmp eq i32 %div1.i.i451, %add33.i.i449
  br i1 %tobool38.not.i.i452, label %for.end.i.i453.if.end14.i_crit_edge, label %if.then39.i.i455

for.end.i.i453.if.end14.i_crit_edge:              ; preds = %for.end.i.i453
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14.i

if.then39.i.i455:                                 ; preds = %for.end.i.i453
  call void @__sanitizer_cov_trace_pc() #13
  %sub37.i.i454 = sub i32 %div1.i.i451, %add33.i.i449
  %200 = call ptr @memset(ptr %dstp.0.lcssa.i.i448, i32 0, i32 %sub37.i.i454)
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then39.i.i455, %for.end.i.i453.if.end14.i_crit_edge
  %201 = ptrtoint ptr %u.i410 to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 -127, ptr %u.i410, align 4
  %r1.i.i456 = getelementptr inbounds %struct.fw_ri_rdma_write_wr, ptr %add.ptr, i32 1, i32 1
  %202 = ptrtoint ptr %r1.i.i456 to i32
  call void @__asan_store1_noabort(i32 %202)
  store i8 0, ptr %r1.i.i456, align 1
  %r2.i.i457 = getelementptr inbounds %struct.fw_ri_rdma_write_wr, ptr %add.ptr, i32 1, i32 2
  %203 = ptrtoint ptr %r2.i.i457 to i32
  call void @__asan_store2_noabort(i32 %203)
  store i16 0, ptr %r2.i.i457, align 2
  %immdlen.i.i458 = getelementptr inbounds %struct.fw_ri_rdma_write_wr, ptr %add.ptr, i32 1, i32 3
  %204 = ptrtoint ptr %immdlen.i.i458 to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 %plen.0.lcssa.i.i447, ptr %immdlen.i.i458, align 4
  %add.i459 = add i32 %plen.0.lcssa.i.i447, 40
  br label %if.end37.i

if.else15.i:                                      ; preds = %if.then8.i
  %205 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %wq, align 8
  %207 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %207)
  %208 = load i16, ptr %size.i, align 2
  %idxprom.i460 = zext i16 %208 to i32
  %arrayidx.i461 = getelementptr %union.t4_wr, ptr %206, i32 %idxprom.i460
  %u18.i = getelementptr inbounds %struct.fw_ri_rdma_write_wr, ptr %add.ptr, i32 0, i32 9
  %sg_list.i462 = getelementptr inbounds %struct.ib_send_wr, ptr %wr.addr.0630767, i32 0, i32 2
  %209 = ptrtoint ptr %sg_list.i462 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %sg_list.i462, align 8
  %cmp.i68.i = icmp eq ptr %u18.i, %arrayidx.i461
  %spec.select.i69.i = select i1 %cmp.i68.i, ptr %206, ptr %u18.i
  %sge.i.i463 = getelementptr inbounds %struct.fw_ri_isgl, ptr %spec.select.i69.i, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %182)
  %cmp158.i.i464 = icmp sgt i32 %182, 0
  br i1 %cmp158.i.i464, label %if.else15.i.for.body.i72.i_crit_edge, label %if.else15.i.if.end24.i_crit_edge

if.else15.i.if.end24.i_crit_edge:                 ; preds = %if.else15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24.i

if.else15.i.for.body.i72.i_crit_edge:             ; preds = %if.else15.i
  br label %for.body.i72.i

for.body.i72.i:                                   ; preds = %if.end4.i.i479.for.body.i72.i_crit_edge, %if.else15.i.for.body.i72.i_crit_edge
  %flitp.061.i.i465 = phi ptr [ %flitp.2.i.i477, %if.end4.i.i479.for.body.i72.i_crit_edge ], [ %sge.i.i463, %if.else15.i.for.body.i72.i_crit_edge ]
  %plen.060.i.i466 = phi i32 [ %add.i71.i, %if.end4.i.i479.for.body.i72.i_crit_edge ], [ 0, %if.else15.i.for.body.i72.i_crit_edge ]
  %i.059.i.i467 = phi i32 [ %inc.i76.i, %if.end4.i.i479.for.body.i72.i_crit_edge ], [ 0, %if.else15.i.for.body.i72.i_crit_edge ]
  %length.i70.i = getelementptr %struct.ib_sge, ptr %210, i32 %i.059.i.i467, i32 1
  %211 = ptrtoint ptr %length.i70.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %length.i70.i, align 8
  %add.i71.i = add i32 %212, %plen.060.i.i466
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i71.i, i32 %plen.060.i.i466)
  %cmp2.i.i468 = icmp ult i32 %add.i71.i, %plen.060.i.i466
  br i1 %cmp2.i.i468, label %for.body.i72.i.while.end.sink.split_crit_edge, label %if.end4.i.i479

for.body.i72.i.while.end.sink.split_crit_edge:    ; preds = %for.body.i72.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.sink.split

if.end4.i.i479:                                   ; preds = %for.body.i72.i
  %arrayidx.i73.i = getelementptr %struct.ib_sge, ptr %210, i32 %i.059.i.i467
  %lkey.i.i469 = getelementptr %struct.ib_sge, ptr %210, i32 %i.059.i.i467, i32 2
  %213 = ptrtoint ptr %lkey.i.i469 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %lkey.i.i469, align 4
  %conv.i74.i = zext i32 %214 to i64
  %shl.i.i470 = shl nuw i64 %conv.i74.i, 32
  %conv11.i.i471 = zext i32 %212 to i64
  %or.i.i472 = or i64 %shl.i.i470, %conv11.i.i471
  %215 = ptrtoint ptr %flitp.061.i.i465 to i32
  call void @__asan_store8_noabort(i32 %215)
  store i64 %or.i.i472, ptr %flitp.061.i.i465, align 8
  %incdec.ptr.i.i473 = getelementptr i64, ptr %flitp.061.i.i465, i32 1
  %cmp12.i75.i = icmp eq ptr %incdec.ptr.i.i473, %arrayidx.i461
  %spec.select55.i.i474 = select i1 %cmp12.i75.i, ptr %206, ptr %incdec.ptr.i.i473
  %216 = ptrtoint ptr %arrayidx.i73.i to i32
  call void @__asan_load8_noabort(i32 %216)
  %217 = load i64, ptr %arrayidx.i73.i, align 8
  %218 = ptrtoint ptr %spec.select55.i.i474 to i32
  call void @__asan_store8_noabort(i32 %218)
  store i64 %217, ptr %spec.select55.i.i474, align 8
  %incdec.ptr17.i.i475 = getelementptr i64, ptr %spec.select55.i.i474, i32 1
  %cmp18.i.i476 = icmp eq ptr %incdec.ptr17.i.i475, %arrayidx.i461
  %flitp.2.i.i477 = select i1 %cmp18.i.i476, ptr %206, ptr %incdec.ptr17.i.i475
  %inc.i76.i = add nuw nsw i32 %i.059.i.i467, 1
  %exitcond.not.i.i478 = icmp eq i32 %inc.i76.i, %182
  br i1 %exitcond.not.i.i478, label %if.end4.i.i479.if.end24.i_crit_edge, label %if.end4.i.i479.for.body.i72.i_crit_edge

if.end4.i.i479.for.body.i72.i_crit_edge:          ; preds = %if.end4.i.i479
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i72.i

if.end4.i.i479.if.end24.i_crit_edge:              ; preds = %if.end4.i.i479
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.end4.i.i479.if.end24.i_crit_edge, %if.else15.i.if.end24.i_crit_edge
  %plen.0.lcssa.i77.i = phi i32 [ 0, %if.else15.i.if.end24.i_crit_edge ], [ %add.i71.i, %if.end4.i.i479.if.end24.i_crit_edge ]
  %flitp.0.lcssa.i.i480 = phi ptr [ %sge.i.i463, %if.else15.i.if.end24.i_crit_edge ], [ %flitp.2.i.i477, %if.end4.i.i479.if.end24.i_crit_edge ]
  %219 = ptrtoint ptr %flitp.0.lcssa.i.i480 to i32
  call void @__asan_store8_noabort(i32 %219)
  store i64 0, ptr %flitp.0.lcssa.i.i480, align 8
  %220 = ptrtoint ptr %spec.select.i69.i to i32
  call void @__asan_store1_noabort(i32 %220)
  store i8 -125, ptr %spec.select.i69.i, align 8
  %r1.i78.i = getelementptr inbounds %struct.fw_ri_isgl, ptr %spec.select.i69.i, i32 0, i32 1
  %221 = ptrtoint ptr %r1.i78.i to i32
  call void @__asan_store1_noabort(i32 %221)
  store i8 0, ptr %r1.i78.i, align 1
  %conv22.i.i481 = trunc i32 %182 to i16
  %nsge.i.i482 = getelementptr inbounds %struct.fw_ri_isgl, ptr %spec.select.i69.i, i32 0, i32 2
  %222 = ptrtoint ptr %nsge.i.i482 to i32
  call void @__asan_store2_noabort(i32 %222)
  store i16 %conv22.i.i481, ptr %nsge.i.i482, align 2
  %r2.i79.i = getelementptr inbounds %struct.fw_ri_isgl, ptr %spec.select.i69.i, i32 0, i32 3
  %223 = ptrtoint ptr %r2.i79.i to i32
  call void @__asan_store4_noabort(i32 %223)
  store i32 0, ptr %r2.i79.i, align 4
  %224 = ptrtoint ptr %num_sge.i401 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %num_sge.i401, align 4
  %mul.i483 = shl i32 %225, 4
  %add26.i = add i32 %mul.i483, 40
  br label %if.end37.i

if.else28.i:                                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  %u29.i = getelementptr inbounds %struct.fw_ri_rdma_write_wr, ptr %add.ptr, i32 0, i32 9
  %226 = ptrtoint ptr %u29.i to i32
  call void @__asan_store1_noabort(i32 %226)
  store i8 -127, ptr %u29.i, align 8
  %r1.i484 = getelementptr inbounds %struct.fw_ri_rdma_write_wr, ptr %add.ptr, i32 1, i32 1
  %227 = ptrtoint ptr %r1.i484 to i32
  call void @__asan_store1_noabort(i32 %227)
  store i8 0, ptr %r1.i484, align 1
  %r2.i485 = getelementptr inbounds %struct.fw_ri_rdma_write_wr, ptr %add.ptr, i32 1, i32 2
  %228 = ptrtoint ptr %r2.i485 to i32
  call void @__asan_store2_noabort(i32 %228)
  store i16 0, ptr %r2.i485, align 2
  %immdlen.i486 = getelementptr inbounds %struct.fw_ri_rdma_write_wr, ptr %add.ptr, i32 1, i32 3
  %229 = ptrtoint ptr %immdlen.i486 to i32
  call void @__asan_store4_noabort(i32 %229)
  store i32 0, ptr %immdlen.i486, align 4
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.else28.i, %if.end24.i, %if.end14.i
  %plen.2.i487 = phi i32 [ 0, %if.else28.i ], [ %plen.0.lcssa.i77.i, %if.end24.i ], [ %plen.0.lcssa.i.i447, %if.end14.i ]
  %size.0.i488 = phi i32 [ 40, %if.else28.i ], [ %add26.i, %if.end24.i ], [ %add.i459, %if.end14.i ]
  %sub.i489 = add i32 %size.0.i488, 15
  %div.i490 = sdiv i32 %sub.i489, 16
  %conv.i491 = trunc i32 %div.i490 to i8
  %plen39.i = getelementptr inbounds %struct.fw_ri_rdma_write_wr, ptr %add.ptr, i32 0, i32 6
  %230 = ptrtoint ptr %plen39.i to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 %plen.2.i487, ptr %plen39.i, align 8
  br label %if.end198

sw.bb126:                                         ; preds = %if.end88.sw.bb126_crit_edge, %if.end88.sw.bb126_crit_edge880
  %opcode127 = getelementptr %struct.t4_swsqe, ptr %86, i32 %idxprom, i32 3
  %231 = ptrtoint ptr %opcode127 to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 1, ptr %opcode127, align 4
  %232 = ptrtoint ptr %opcode94 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %opcode94, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %233)
  %cmp129 = icmp eq i32 %233, 11
  br i1 %cmp129, label %if.then131, label %sw.bb126.if.end135_crit_edge

sw.bb126.if.end135_crit_edge:                     ; preds = %sw.bb126
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end135

if.then131:                                       ; preds = %sw.bb126
  call void @__sanitizer_cov_trace_pc() #13
  %sg_list132 = getelementptr inbounds %struct.ib_send_wr, ptr %wr.addr.0630767, i32 0, i32 2
  %234 = ptrtoint ptr %sg_list132 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %sg_list132, align 8
  %lkey = getelementptr inbounds %struct.ib_sge, ptr %235, i32 0, i32 2
  %236 = ptrtoint ptr %lkey to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %lkey, align 4
  tail call void @c4iw_invalidate_mr(ptr noundef %1, i32 noundef %237) #11
  br label %if.end135

if.end135:                                        ; preds = %if.then131, %sw.bb126.if.end135_crit_edge
  %fw_flags.4 = phi i32 [ 32, %if.then131 ], [ 0, %sw.bb126.if.end135_crit_edge ]
  %num_sge.i493 = getelementptr inbounds %struct.ib_send_wr, ptr %wr.addr.0630767, i32 0, i32 3
  %238 = ptrtoint ptr %num_sge.i493 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %num_sge.i493, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %239)
  %cmp.i494 = icmp sgt i32 %239, 1
  br i1 %cmp.i494, label %if.end135.while.end.sink.split_crit_edge, label %if.end.i496

if.end135.while.end.sink.split_crit_edge:         ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.sink.split

if.end.i496:                                      ; preds = %if.end135
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %239)
  %tobool.not.i495 = icmp eq i32 %239, 0
  br i1 %tobool.not.i495, label %if.end.i496.if.else.i_crit_edge, label %land.lhs.true.i

if.end.i496.if.else.i_crit_edge:                  ; preds = %if.end.i496
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end.i496
  %sg_list.i497 = getelementptr inbounds %struct.ib_send_wr, ptr %wr.addr.0630767, i32 0, i32 2
  %240 = ptrtoint ptr %sg_list.i497 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %sg_list.i497, align 8
  %length.i = getelementptr inbounds %struct.ib_sge, ptr %241, i32 0, i32 1
  %242 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %243)
  %tobool2.not.i = icmp eq i32 %243, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then3.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

if.then3.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %rkey.i498 = getelementptr inbounds %struct.ib_rdma_wr, ptr %wr.addr.0630767, i32 0, i32 2
  %244 = ptrtoint ptr %rkey.i498 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %rkey.i498, align 8
  %stag_src.i = getelementptr inbounds %struct.fw_ri_rdma_read_wr, ptr %add.ptr, i32 0, i32 10
  %246 = ptrtoint ptr %stag_src.i to i32
  call void @__asan_store4_noabort(i32 %246)
  store i32 %245, ptr %stag_src.i, align 8
  %remote_addr.i499 = getelementptr inbounds %struct.ib_rdma_wr, ptr %wr.addr.0630767, i32 0, i32 1
  %247 = ptrtoint ptr %remote_addr.i499 to i32
  call void @__asan_load8_noabort(i32 %247)
  %248 = load i64, ptr %remote_addr.i499, align 8
  %shr.i = lshr i64 %248, 32
  %conv.i500 = trunc i64 %shr.i to i32
  %to_src_hi.i = getelementptr inbounds %struct.fw_ri_rdma_read_wr, ptr %add.ptr, i32 0, i32 11
  %249 = ptrtoint ptr %to_src_hi.i to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 %conv.i500, ptr %to_src_hi.i, align 4
  %250 = load i64, ptr %remote_addr.i499, align 8
  %conv7.i = trunc i64 %250 to i32
  %to_src_lo.i = getelementptr inbounds %struct.fw_ri_rdma_read_wr, ptr %add.ptr, i32 0, i32 12
  %251 = ptrtoint ptr %to_src_lo.i to i32
  call void @__asan_store4_noabort(i32 %251)
  store i32 %conv7.i, ptr %to_src_lo.i, align 8
  %252 = ptrtoint ptr %sg_list.i497 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %sg_list.i497, align 8
  %lkey.i = getelementptr inbounds %struct.ib_sge, ptr %253, i32 0, i32 2
  %254 = ptrtoint ptr %lkey.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %lkey.i, align 4
  %stag_sink.i501 = getelementptr inbounds %struct.fw_ri_rdma_read_wr, ptr %add.ptr, i32 0, i32 6
  %256 = ptrtoint ptr %stag_sink.i501 to i32
  call void @__asan_store4_noabort(i32 %256)
  store i32 %255, ptr %stag_sink.i501, align 8
  %257 = load ptr, ptr %sg_list.i497, align 8
  %length12.i = getelementptr inbounds %struct.ib_sge, ptr %257, i32 0, i32 1
  %258 = ptrtoint ptr %length12.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %length12.i, align 8
  %plen.i = getelementptr inbounds %struct.fw_ri_rdma_read_wr, ptr %add.ptr, i32 0, i32 9
  %260 = ptrtoint ptr %plen.i to i32
  call void @__asan_store4_noabort(i32 %260)
  store i32 %259, ptr %plen.i, align 4
  %261 = load ptr, ptr %sg_list.i497, align 8
  %262 = ptrtoint ptr %261 to i32
  call void @__asan_load8_noabort(i32 %262)
  %263 = load i64, ptr %261, align 8
  %shr15.i = lshr i64 %263, 32
  %conv16.i = trunc i64 %shr15.i to i32
  %to_sink_hi.i = getelementptr inbounds %struct.fw_ri_rdma_read_wr, ptr %add.ptr, i32 0, i32 7
  %264 = ptrtoint ptr %to_sink_hi.i to i32
  call void @__asan_store4_noabort(i32 %264)
  store i32 %conv16.i, ptr %to_sink_hi.i, align 4
  %265 = load ptr, ptr %sg_list.i497, align 8
  %266 = ptrtoint ptr %265 to i32
  call void @__asan_load8_noabort(i32 %266)
  %267 = load i64, ptr %265, align 8
  %conv20.i = trunc i64 %267 to i32
  br label %if.end139

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end.i496.if.else.i_crit_edge
  %stag_src21.i = getelementptr inbounds %struct.fw_ri_rdma_read_wr, ptr %add.ptr, i32 0, i32 10
  %268 = ptrtoint ptr %stag_src21.i to i32
  call void @__asan_store4_noabort(i32 %268)
  store i32 2, ptr %stag_src21.i, align 8
  %to_src_hi22.i = getelementptr inbounds %struct.fw_ri_rdma_read_wr, ptr %add.ptr, i32 0, i32 11
  %269 = ptrtoint ptr %to_src_hi22.i to i32
  call void @__asan_store4_noabort(i32 %269)
  store i32 0, ptr %to_src_hi22.i, align 4
  %to_src_lo23.i = getelementptr inbounds %struct.fw_ri_rdma_read_wr, ptr %add.ptr, i32 0, i32 12
  %270 = ptrtoint ptr %to_src_lo23.i to i32
  call void @__asan_store4_noabort(i32 %270)
  store i32 0, ptr %to_src_lo23.i, align 8
  %stag_sink24.i = getelementptr inbounds %struct.fw_ri_rdma_read_wr, ptr %add.ptr, i32 0, i32 6
  %271 = ptrtoint ptr %stag_sink24.i to i32
  call void @__asan_store4_noabort(i32 %271)
  store i32 2, ptr %stag_sink24.i, align 8
  %plen25.i = getelementptr inbounds %struct.fw_ri_rdma_read_wr, ptr %add.ptr, i32 0, i32 9
  %272 = ptrtoint ptr %plen25.i to i32
  call void @__asan_store4_noabort(i32 %272)
  store i32 0, ptr %plen25.i, align 4
  %to_sink_hi26.i = getelementptr inbounds %struct.fw_ri_rdma_read_wr, ptr %add.ptr, i32 0, i32 7
  %273 = ptrtoint ptr %to_sink_hi26.i to i32
  call void @__asan_store4_noabort(i32 %273)
  store i32 0, ptr %to_sink_hi26.i, align 4
  br label %if.end139

if.end139:                                        ; preds = %if.else.i, %if.then3.i
  %.sink.i502 = phi i32 [ 0, %if.else.i ], [ %conv20.i, %if.then3.i ]
  %to_sink_lo27.i = getelementptr inbounds %struct.fw_ri_rdma_read_wr, ptr %add.ptr, i32 0, i32 8
  %274 = ptrtoint ptr %to_sink_lo27.i to i32
  call void @__asan_store4_noabort(i32 %274)
  store i32 %.sink.i502, ptr %to_sink_lo27.i, align 8
  %r2.i503 = getelementptr inbounds %struct.fw_ri_rdma_read_wr, ptr %add.ptr, i32 0, i32 5
  %275 = ptrtoint ptr %r2.i503 to i32
  call void @__asan_store8_noabort(i32 %275)
  store i64 0, ptr %r2.i503, align 8
  %r5.i = getelementptr inbounds %struct.fw_ri_rdma_read_wr, ptr %add.ptr, i32 0, i32 13
  %276 = ptrtoint ptr %r5.i to i32
  call void @__asan_store4_noabort(i32 %276)
  store i32 0, ptr %r5.i, align 4
  %sg_list140 = getelementptr inbounds %struct.ib_send_wr, ptr %wr.addr.0630767, i32 0, i32 2
  %277 = ptrtoint ptr %sg_list140 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %sg_list140, align 8
  %length142 = getelementptr inbounds %struct.ib_sge, ptr %278, i32 0, i32 1
  %279 = ptrtoint ptr %length142 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %length142, align 8
  %read_len = getelementptr %struct.t4_swsqe, ptr %86, i32 %idxprom, i32 2
  %281 = ptrtoint ptr %read_len to i32
  call void @__asan_store4_noabort(i32 %281)
  store i32 %280, ptr %read_len, align 8
  %282 = ptrtoint ptr %oldest_read to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %oldest_read, align 4
  %tobool145.not = icmp eq ptr %283, null
  br i1 %tobool145.not, label %if.then146, label %if.end139.if.end198_crit_edge

if.end139.if.end198_crit_edge:                    ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end198

if.then146:                                       ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #13
  %284 = ptrtoint ptr %oldest_read to i32
  call void @__asan_store4_noabort(i32 %284)
  store ptr %arrayidx93, ptr %oldest_read, align 4
  br label %if.end198

sw.bb151:                                         ; preds = %if.end88
  %mr = getelementptr inbounds %struct.ib_reg_wr, ptr %wr.addr.0630767, i32 0, i32 1
  %285 = ptrtoint ptr %mr to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %mr, align 8
  %opcode154 = getelementptr %struct.t4_swsqe, ptr %86, i32 %idxprom, i32 3
  %287 = ptrtoint ptr %opcode154 to i32
  call void @__asan_store4_noabort(i32 %287)
  store i32 10, ptr %opcode154, align 4
  %288 = ptrtoint ptr %fr_nsmr_tpte_wr_support to i32
  call void @__asan_load1_noabort(i32 %288)
  %289 = load i8, ptr %fr_nsmr_tpte_wr_support, align 8, !range !307
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %289)
  %tobool157.not = icmp eq i8 %289, 0
  br i1 %tobool157.not, label %sw.bb151.if.else166_crit_edge, label %land.lhs.true159

sw.bb151.if.else166_crit_edge:                    ; preds = %sw.bb151
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else166

land.lhs.true159:                                 ; preds = %sw.bb151
  %state = getelementptr inbounds %struct.c4iw_mr, ptr %286, i32 0, i32 5, i32 8
  %290 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %290)
  %bf.load = load i16, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load)
  %tobool160.not = icmp sgt i16 %bf.load, -1
  br i1 %tobool160.not, label %land.lhs.true161, label %land.lhs.true159.if.else166_crit_edge

land.lhs.true159.if.else166_crit_edge:            ; preds = %land.lhs.true159
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else166

land.lhs.true161:                                 ; preds = %land.lhs.true159
  %mpl_len = getelementptr inbounds %struct.c4iw_mr, ptr %286, i32 0, i32 9
  %291 = ptrtoint ptr %mpl_len to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %mpl_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %292)
  %cmp162 = icmp ult i32 %292, 3
  br i1 %cmp162, label %if.then164, label %land.lhs.true161.if.else166_crit_edge

land.lhs.true161.if.else166_crit_edge:            ; preds = %land.lhs.true161
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else166

if.then164:                                       ; preds = %land.lhs.true161
  call void @__sanitizer_cov_trace_pc() #13
  %r2.i505 = getelementptr inbounds %struct.fw_ri_fr_nsmr_tpte_wr, ptr %add.ptr, i32 0, i32 5
  %293 = ptrtoint ptr %r2.i505 to i32
  call void @__asan_store4_noabort(i32 %293)
  store i32 0, ptr %r2.i505, align 8
  %rkey.i506 = getelementptr inbounds %struct.ib_mr, ptr %286, i32 0, i32 3
  %294 = ptrtoint ptr %rkey.i506 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %rkey.i506, align 4
  %stag.i = getelementptr inbounds %struct.fw_ri_fr_nsmr_tpte_wr, ptr %add.ptr, i32 0, i32 6
  %296 = ptrtoint ptr %stag.i to i32
  call void @__asan_store4_noabort(i32 %296)
  store i32 %295, ptr %stag.i, align 4
  %297 = load i32, ptr %rkey.i506, align 4
  %and.i507 = shl i32 %297, 23
  %pdid.i = getelementptr inbounds %struct.c4iw_mr, ptr %286, i32 0, i32 5, i32 4
  %298 = ptrtoint ptr %pdid.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %pdid.i, align 8
  %or3.i = or i32 %and.i507, %299
  %or6.i = or i32 %or3.i, -2143289344
  %tpte.i = getelementptr inbounds %struct.fw_ri_fr_nsmr_tpte_wr, ptr %add.ptr, i32 0, i32 7
  %300 = ptrtoint ptr %tpte.i to i32
  call void @__asan_store4_noabort(i32 %300)
  store i32 %or6.i, ptr %tpte.i, align 8
  %access.i = getelementptr inbounds %struct.ib_reg_wr, ptr %wr.addr.0630767, i32 0, i32 3
  %301 = ptrtoint ptr %access.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %access.i, align 8
  %303 = ptrtoint ptr %mr to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %mr, align 8
  %page_size.i = getelementptr inbounds %struct.ib_mr, ptr %304, i32 0, i32 6
  %305 = ptrtoint ptr %page_size.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %page_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %306)
  %tobool.not.i.i.i = icmp eq i32 %306, 0
  %307 = tail call i32 @llvm.ctlz.i32(i32 %306, i1 true) #11, !range !308
  %308 = shl i32 %302, 30
  %309 = shl i32 %302, 27
  %310 = and i32 %309, 805306368
  %or8.i.i511 = or i32 %310, %308
  %pbl.i = getelementptr inbounds %struct.fw_ri_fr_nsmr_tpte_wr, ptr %add.ptr, i32 0, i32 8
  %sub.i.op.i.i = shl nuw nsw i32 %307, 20
  %sub.i.op.i.i.op = xor i32 %sub.i.op.i.i, 32505856
  %sub.i.op.i.i.op.op = add nuw i32 %sub.i.op.i.i.op, 2134900736
  %shl21.i = select i1 %tobool.not.i.i.i, i32 2066743296, i32 %sub.i.op.i.i.op.op
  %shl7.i = or i32 %or8.i.i511, %shl21.i
  %or22.i = or i32 %shl7.i, -2080374784
  %locread_to_qpid.i = getelementptr inbounds %struct.fw_ri_fr_nsmr_tpte_wr, ptr %add.ptr, i32 0, i32 7, i32 1
  %311 = ptrtoint ptr %locread_to_qpid.i to i32
  call void @__asan_store4_noabort(i32 %311)
  store i32 %or22.i, ptr %locread_to_qpid.i, align 4
  %pbl_addr.i = getelementptr inbounds %struct.c4iw_mr, ptr %286, i32 0, i32 5, i32 6
  %312 = ptrtoint ptr %pbl_addr.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %pbl_addr.i, align 8
  %rhp.i = getelementptr inbounds %struct.c4iw_mr, ptr %286, i32 0, i32 2
  %314 = ptrtoint ptr %rhp.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %rhp.i, align 4
  %vr.i = getelementptr inbounds %struct.c4iw_dev, ptr %315, i32 0, i32 1, i32 8, i32 4
  %316 = ptrtoint ptr %vr.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %vr.i, align 8
  %pbl25.i = getelementptr inbounds %struct.cxgb4_virt_res, ptr %317, i32 0, i32 5
  %318 = ptrtoint ptr %pbl25.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %pbl25.i, align 4
  %sub26.i = sub i32 %313, %319
  %shr.i512 = lshr i32 %sub26.i, 3
  %nosnoop_pbladdr.i = getelementptr inbounds %struct.fw_ri_fr_nsmr_tpte_wr, ptr %add.ptr, i32 0, i32 7, i32 2
  %320 = ptrtoint ptr %nosnoop_pbladdr.i to i32
  call void @__asan_store4_noabort(i32 %320)
  store i32 %shr.i512, ptr %nosnoop_pbladdr.i, align 8
  %dca_mwbcnt_pstag.i = getelementptr inbounds %struct.fw_ri_fr_nsmr_tpte_wr, ptr %add.ptr, i32 0, i32 7, i32 6
  %321 = ptrtoint ptr %dca_mwbcnt_pstag.i to i32
  call void @__asan_store4_noabort(i32 %321)
  store i32 0, ptr %dca_mwbcnt_pstag.i, align 8
  %len_hi.i = getelementptr inbounds %struct.fw_ri_fr_nsmr_tpte_wr, ptr %add.ptr, i32 0, i32 7, i32 7
  %322 = ptrtoint ptr %len_hi.i to i32
  call void @__asan_store4_noabort(i32 %322)
  store i32 0, ptr %len_hi.i, align 4
  %length.i513 = getelementptr inbounds %struct.ib_mr, ptr %286, i32 0, i32 5
  %323 = ptrtoint ptr %length.i513 to i32
  call void @__asan_load8_noabort(i32 %323)
  %324 = load i64, ptr %length.i513, align 8
  %conv32.i = trunc i64 %324 to i32
  %len_lo.i = getelementptr inbounds %struct.fw_ri_fr_nsmr_tpte_wr, ptr %add.ptr, i32 0, i32 7, i32 3
  %325 = ptrtoint ptr %len_lo.i to i32
  call void @__asan_store4_noabort(i32 %325)
  store i32 %conv32.i, ptr %len_lo.i, align 4
  %iova.i = getelementptr inbounds %struct.ib_mr, ptr %286, i32 0, i32 4
  %326 = ptrtoint ptr %iova.i to i32
  call void @__asan_load8_noabort(i32 %326)
  %327 = load i64, ptr %iova.i, align 8
  %shr35.i = lshr i64 %327, 32
  %conv36.i = trunc i64 %shr35.i to i32
  %va_hi.i = getelementptr inbounds %struct.fw_ri_fr_nsmr_tpte_wr, ptr %add.ptr, i32 0, i32 7, i32 4
  %328 = ptrtoint ptr %va_hi.i to i32
  call void @__asan_store4_noabort(i32 %328)
  store i32 %conv36.i, ptr %va_hi.i, align 8
  %329 = load i64, ptr %iova.i, align 8
  %conv41.i = trunc i64 %329 to i32
  %va_lo_fbo.i = getelementptr inbounds %struct.fw_ri_fr_nsmr_tpte_wr, ptr %add.ptr, i32 0, i32 7, i32 5
  %330 = ptrtoint ptr %va_lo_fbo.i to i32
  call void @__asan_store4_noabort(i32 %330)
  store i32 %conv41.i, ptr %va_lo_fbo.i, align 4
  %mpl.i = getelementptr inbounds %struct.c4iw_mr, ptr %286, i32 0, i32 6
  %331 = ptrtoint ptr %mpl.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %mpl.i, align 8
  %333 = ptrtoint ptr %332 to i32
  call void @__asan_load8_noabort(i32 %333)
  %334 = load i64, ptr %332, align 8
  %335 = ptrtoint ptr %pbl.i to i32
  call void @__asan_store8_noabort(i32 %335)
  store i64 %334, ptr %pbl.i, align 8
  %336 = load ptr, ptr %mpl.i, align 8
  %arrayidx45.i = getelementptr i64, ptr %336, i32 1
  %337 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_load8_noabort(i32 %337)
  %338 = load i64, ptr %arrayidx45.i, align 8
  %arrayidx46.i = getelementptr %struct.fw_ri_fr_nsmr_tpte_wr, ptr %add.ptr, i32 0, i32 8, i32 1
  %339 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_store8_noabort(i32 %339)
  store i64 %338, ptr %arrayidx46.i, align 8
  br label %if.end177

if.else166:                                       ; preds = %land.lhs.true161.if.else166_crit_edge, %land.lhs.true159.if.else166_crit_edge, %sw.bb151.if.else166_crit_edge
  %340 = ptrtoint ptr %ulptx_memwrite_dsgl to i32
  call void @__asan_load1_noabort(i32 %340)
  %341 = load i8, ptr %ulptx_memwrite_dsgl, align 4, !range !307
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %341)
  %tobool172.not = icmp eq i8 %341, 0
  %mpl_len.i = getelementptr inbounds %struct.c4iw_mr, ptr %286, i32 0, i32 9
  %342 = ptrtoint ptr %mpl_len.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %mpl_len.i, align 4
  %mul.i514 = shl i32 %343, 3
  %add.i515 = add i32 %mul.i514, 31
  %div140.i = and i32 %add.i515, -32
  br i1 %tobool172.not, label %if.else166.land.end.thread.i_crit_edge, label %land.end.i

if.else166.land.end.thread.i_crit_edge:           ; preds = %if.else166
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.end.thread.i

land.end.i:                                       ; preds = %if.else166
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @use_dsgl to i32))
  %344 = load i32, ptr @use_dsgl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %344)
  %tobool3.not.i = icmp eq i32 %344, 0
  br i1 %tobool3.not.i, label %land.end.i.land.end.thread.i_crit_edge, label %land.end.i._crit_edge

land.end.i._crit_edge:                            ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %345

land.end.i.land.end.thread.i_crit_edge:           ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.end.thread.i

land.end.thread.i:                                ; preds = %land.end.i.land.end.thread.i_crit_edge, %if.else166.land.end.thread.i_crit_edge
  br label %345

345:                                              ; preds = %land.end.thread.i, %land.end.i._crit_edge
  %346 = phi i32 [ 32, %land.end.thread.i ], [ 128, %land.end.i._crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %343, i32 %346)
  %cmp.i516 = icmp ugt i32 %343, %346
  br i1 %cmp.i516, label %.while.end.sink.split_crit_edge, label %if.end.i519

.while.end.sink.split_crit_edge:                  ; preds = %345
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.sink.split

if.end.i519:                                      ; preds = %345
  %qpbinde_to_dcacpu.i = getelementptr inbounds %struct.fw_ri_fr_nsmr_wr, ptr %add.ptr, i32 0, i32 5
  %347 = ptrtoint ptr %qpbinde_to_dcacpu.i to i32
  call void @__asan_store1_noabort(i32 %347)
  store i8 0, ptr %qpbinde_to_dcacpu.i, align 8
  %348 = ptrtoint ptr %mr to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %mr, align 8
  %page_size.i518 = getelementptr inbounds %struct.ib_mr, ptr %349, i32 0, i32 6
  %350 = ptrtoint ptr %page_size.i518 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load i32, ptr %page_size.i518, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %351)
  %tobool.not.i.i.i522 = icmp eq i32 %351, 0
  %352 = tail call i32 @llvm.ctlz.i32(i32 %351, i1 true) #11, !range !308
  %353 = trunc i32 %352 to i8
  %.op = sub nsw i8 19, %353
  %conv18.i = select i1 %tobool.not.i.i.i522, i8 -13, i8 %.op
  %pgsz_shift.i = getelementptr inbounds %struct.fw_ri_fr_nsmr_wr, ptr %add.ptr, i32 0, i32 6
  %354 = ptrtoint ptr %pgsz_shift.i to i32
  call void @__asan_store1_noabort(i32 %354)
  store i8 %conv18.i, ptr %pgsz_shift.i, align 1
  %addr_type.i = getelementptr inbounds %struct.fw_ri_fr_nsmr_wr, ptr %add.ptr, i32 0, i32 7
  %355 = ptrtoint ptr %addr_type.i to i32
  call void @__asan_store1_noabort(i32 %355)
  store i8 1, ptr %addr_type.i, align 2
  %access.i525 = getelementptr inbounds %struct.ib_reg_wr, ptr %wr.addr.0630767, i32 0, i32 3
  %356 = ptrtoint ptr %access.i525 to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load i32, ptr %access.i525, align 8
  %and.i.i = lshr i32 %357, 1
  %or.i.i526 = and i32 %and.i.i, 3
  %and4.i.i = shl i32 %357, 2
  %358 = and i32 %and4.i.i, 4
  %or7.i.i = or i32 %358, %or.i.i526
  %359 = trunc i32 %or7.i.i to i8
  %conv20.i527 = or i8 %359, 8
  %mem_perms.i = getelementptr inbounds %struct.fw_ri_fr_nsmr_wr, ptr %add.ptr, i32 0, i32 8
  %360 = ptrtoint ptr %mem_perms.i to i32
  call void @__asan_store1_noabort(i32 %360)
  store i8 %conv20.i527, ptr %mem_perms.i, align 1
  %len_hi.i528 = getelementptr inbounds %struct.fw_ri_fr_nsmr_wr, ptr %add.ptr, i32 0, i32 10
  %361 = ptrtoint ptr %len_hi.i528 to i32
  call void @__asan_store4_noabort(i32 %361)
  store i32 0, ptr %len_hi.i528, align 8
  %length.i529 = getelementptr inbounds %struct.ib_mr, ptr %286, i32 0, i32 5
  %362 = ptrtoint ptr %length.i529 to i32
  call void @__asan_load8_noabort(i32 %362)
  %363 = load i64, ptr %length.i529, align 8
  %conv21.i = trunc i64 %363 to i32
  %len_lo.i530 = getelementptr inbounds %struct.fw_ri_fr_nsmr_wr, ptr %add.ptr, i32 0, i32 11
  %364 = ptrtoint ptr %len_lo.i530 to i32
  call void @__asan_store4_noabort(i32 %364)
  store i32 %conv21.i, ptr %len_lo.i530, align 4
  %key.i = getelementptr inbounds %struct.ib_reg_wr, ptr %wr.addr.0630767, i32 0, i32 2
  %365 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load i32, ptr %key.i, align 4
  %stag.i531 = getelementptr inbounds %struct.fw_ri_fr_nsmr_wr, ptr %add.ptr, i32 0, i32 9
  %367 = ptrtoint ptr %stag.i531 to i32
  call void @__asan_store4_noabort(i32 %367)
  store i32 %366, ptr %stag.i531, align 4
  %iova.i532 = getelementptr inbounds %struct.ib_mr, ptr %286, i32 0, i32 4
  %368 = ptrtoint ptr %iova.i532 to i32
  call void @__asan_load8_noabort(i32 %368)
  %369 = load i64, ptr %iova.i532, align 8
  %shr.i533 = lshr i64 %369, 32
  %conv23.i = trunc i64 %shr.i533 to i32
  %va_hi.i534 = getelementptr inbounds %struct.fw_ri_fr_nsmr_wr, ptr %add.ptr, i32 0, i32 12
  %370 = ptrtoint ptr %va_hi.i534 to i32
  call void @__asan_store4_noabort(i32 %370)
  store i32 %conv23.i, ptr %va_hi.i534, align 8
  %371 = load i64, ptr %iova.i532, align 8
  %conv26.i = trunc i64 %371 to i32
  %va_lo_fbo.i535 = getelementptr inbounds %struct.fw_ri_fr_nsmr_wr, ptr %add.ptr, i32 0, i32 13
  %372 = ptrtoint ptr %va_lo_fbo.i535 to i32
  call void @__asan_store4_noabort(i32 %372)
  store i32 %conv26.i, ptr %va_lo_fbo.i535, align 4
  br i1 %tobool172.not, label %if.end.i519.if.else.i540_crit_edge, label %land.lhs.true.i536

if.end.i519.if.else.i540_crit_edge:               ; preds = %if.end.i519
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i540

land.lhs.true.i536:                               ; preds = %if.end.i519
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @use_dsgl to i32))
  %373 = load i32, ptr @use_dsgl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %373)
  %tobool29.not.i = icmp eq i32 %373, 0
  br i1 %tobool29.not.i, label %land.lhs.true.i536.if.else.i540_crit_edge, label %land.lhs.true30.i

land.lhs.true.i536.if.else.i540_crit_edge:        ; preds = %land.lhs.true.i536
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i540

land.lhs.true30.i:                                ; preds = %land.lhs.true.i536
  %374 = load i32, ptr @max_fr_immd, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div140.i, i32 %374)
  %cmp31.i = icmp sgt i32 %div140.i, %374
  br i1 %cmp31.i, label %for.cond.preheader.i, label %land.lhs.true30.i.if.else.i540_crit_edge

land.lhs.true30.i.if.else.i540_crit_edge:         ; preds = %land.lhs.true30.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i540

for.cond.preheader.i:                             ; preds = %land.lhs.true30.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i = getelementptr %struct.fw_ri_fr_nsmr_wr, ptr %add.ptr, i32 1
  %375 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %375)
  store i8 -126, ptr %add.ptr.i, align 8
  %r1.i537 = getelementptr %struct.fw_ri_fr_nsmr_wr, ptr %add.ptr, i32 1, i32 1
  %376 = ptrtoint ptr %r1.i537 to i32
  call void @__asan_store1_noabort(i32 %376)
  store i8 0, ptr %r1.i537, align 1
  %nsge.i = getelementptr %struct.fw_ri_fr_nsmr_wr, ptr %add.ptr, i32 1, i32 2
  %377 = ptrtoint ptr %nsge.i to i32
  call void @__asan_store2_noabort(i32 %377)
  store i16 1, ptr %nsge.i, align 2
  %mpl_addr.i = getelementptr inbounds %struct.c4iw_mr, ptr %286, i32 0, i32 7
  %378 = ptrtoint ptr %mpl_addr.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load i32, ptr %mpl_addr.i, align 4
  %conv39.i = zext i32 %379 to i64
  %addr0.i = getelementptr %struct.fw_ri_fr_nsmr_wr, ptr %add.ptr, i32 1, i32 5
  %380 = ptrtoint ptr %addr0.i to i32
  call void @__asan_store8_noabort(i32 %380)
  store i64 %conv39.i, ptr %addr0.i, align 8
  %len0.i = getelementptr %struct.fw_ri_fr_nsmr_wr, ptr %add.ptr, i32 1, i32 3
  %381 = ptrtoint ptr %len0.i to i32
  call void @__asan_store4_noabort(i32 %381)
  store i32 %div140.i, ptr %len0.i, align 4
  br label %if.end177

if.else.i540:                                     ; preds = %land.lhs.true30.i.if.else.i540_crit_edge, %land.lhs.true.i536.if.else.i540_crit_edge, %if.end.i519.if.else.i540_crit_edge
  %add.ptr40.i = getelementptr %struct.fw_ri_fr_nsmr_wr, ptr %add.ptr, i32 1
  %382 = ptrtoint ptr %add.ptr40.i to i32
  call void @__asan_store1_noabort(i32 %382)
  store i8 -127, ptr %add.ptr40.i, align 4
  %r142.i = getelementptr %struct.fw_ri_fr_nsmr_wr, ptr %add.ptr, i32 1, i32 1
  %383 = ptrtoint ptr %r142.i to i32
  call void @__asan_store1_noabort(i32 %383)
  store i8 0, ptr %r142.i, align 1
  %r2.i538 = getelementptr %struct.fw_ri_fr_nsmr_wr, ptr %add.ptr, i32 1, i32 2
  %384 = ptrtoint ptr %r2.i538 to i32
  call void @__asan_store2_noabort(i32 %384)
  store i16 0, ptr %r2.i538, align 2
  %immdlen.i539 = getelementptr %struct.fw_ri_fr_nsmr_wr, ptr %add.ptr, i32 1, i32 3
  %385 = ptrtoint ptr %immdlen.i539 to i32
  call void @__asan_store4_noabort(i32 %385)
  store i32 %div140.i, ptr %immdlen.i539, align 4
  %add.ptr43.i = getelementptr %struct.fw_ri_fr_nsmr_wr, ptr %add.ptr, i32 1, i32 5
  %386 = ptrtoint ptr %mpl_len.i to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load i32, ptr %mpl_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %387)
  %cmp46144.not.i = icmp eq i32 %387, 0
  br i1 %cmp46144.not.i, label %if.else.i540.while.cond.preheader.i_crit_edge, label %for.body48.lr.ph.i

if.else.i540.while.cond.preheader.i_crit_edge:    ; preds = %if.else.i540
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.preheader.i

for.body48.lr.ph.i:                               ; preds = %if.else.i540
  %mpl49.i = getelementptr inbounds %struct.c4iw_mr, ptr %286, i32 0, i32 6
  br label %for.body48.i

while.cond.preheader.i:                           ; preds = %for.body48.i.while.cond.preheader.i_crit_edge, %if.else.i540.while.cond.preheader.i_crit_edge
  %p.0.lcssa.i = phi ptr [ %add.ptr43.i, %if.else.i540.while.cond.preheader.i_crit_edge ], [ %spec.select.i544, %for.body48.i.while.cond.preheader.i_crit_edge ]
  %rem.0.lcssa.i = phi i32 [ %div140.i, %if.else.i540.while.cond.preheader.i_crit_edge ], [ %sub51.i, %for.body48.i.while.cond.preheader.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.0.lcssa.i)
  %tobool61.not149.i = icmp eq i32 %rem.0.lcssa.i, 0
  br i1 %tobool61.not149.i, label %while.cond.preheader.i.while.end.i_crit_edge, label %while.cond.preheader.i.while.body.i545_crit_edge

while.cond.preheader.i.while.body.i545_crit_edge: ; preds = %while.cond.preheader.i
  br label %while.body.i545

while.cond.preheader.i.while.end.i_crit_edge:     ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

for.body48.i:                                     ; preds = %for.body48.i.for.body48.i_crit_edge, %for.body48.lr.ph.i
  %rem.0147.i = phi i32 [ %div140.i, %for.body48.lr.ph.i ], [ %sub51.i, %for.body48.i.for.body48.i_crit_edge ]
  %i.1146.i = phi i32 [ 0, %for.body48.lr.ph.i ], [ %inc59.i, %for.body48.i.for.body48.i_crit_edge ]
  %p.0145.i = phi ptr [ %add.ptr43.i, %for.body48.lr.ph.i ], [ %spec.select.i544, %for.body48.i.for.body48.i_crit_edge ]
  %388 = ptrtoint ptr %mpl49.i to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %mpl49.i, align 8
  %arrayidx50.i = getelementptr i64, ptr %389, i32 %i.1146.i
  %390 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_load8_noabort(i32 %390)
  %391 = load i64, ptr %arrayidx50.i, align 8
  %392 = ptrtoint ptr %p.0145.i to i32
  call void @__asan_store8_noabort(i32 %392)
  store i64 %391, ptr %p.0145.i, align 8
  %sub51.i = add i32 %rem.0147.i, -8
  %incdec.ptr.i = getelementptr i64, ptr %p.0145.i, i32 1
  %393 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %wq, align 8
  %395 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %395)
  %396 = load i16, ptr %size.i, align 2
  %idxprom.i543 = zext i16 %396 to i32
  %arrayidx52.i = getelementptr %union.t4_wr, ptr %394, i32 %idxprom.i543
  %cmp53.i = icmp eq ptr %incdec.ptr.i, %arrayidx52.i
  %spec.select.i544 = select i1 %cmp53.i, ptr %394, ptr %incdec.ptr.i
  %inc59.i = add nuw i32 %i.1146.i, 1
  %397 = ptrtoint ptr %mpl_len.i to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load i32, ptr %mpl_len.i, align 4
  %cmp46.i = icmp ult i32 %inc59.i, %398
  br i1 %cmp46.i, label %for.body48.i.for.body48.i_crit_edge, label %for.body48.i.while.cond.preheader.i_crit_edge

for.body48.i.while.cond.preheader.i_crit_edge:    ; preds = %for.body48.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.preheader.i

for.body48.i.for.body48.i_crit_edge:              ; preds = %for.body48.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body48.i

while.body.i545:                                  ; preds = %while.body.i545.while.body.i545_crit_edge, %while.cond.preheader.i.while.body.i545_crit_edge
  %rem.1151.i = phi i32 [ %sub62.i, %while.body.i545.while.body.i545_crit_edge ], [ %rem.0.lcssa.i, %while.cond.preheader.i.while.body.i545_crit_edge ]
  %p.2150.i = phi ptr [ %spec.select142.i, %while.body.i545.while.body.i545_crit_edge ], [ %p.0.lcssa.i, %while.cond.preheader.i.while.body.i545_crit_edge ]
  %399 = ptrtoint ptr %p.2150.i to i32
  call void @__asan_store8_noabort(i32 %399)
  store i64 0, ptr %p.2150.i, align 8
  %sub62.i = add i32 %rem.1151.i, -8
  %incdec.ptr63.i = getelementptr i64, ptr %p.2150.i, i32 1
  %400 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %wq, align 8
  %402 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %402)
  %403 = load i16, ptr %size.i, align 2
  %idxprom66.i = zext i16 %403 to i32
  %arrayidx67.i = getelementptr %union.t4_wr, ptr %401, i32 %idxprom66.i
  %cmp68.i = icmp eq ptr %incdec.ptr63.i, %arrayidx67.i
  %spec.select142.i = select i1 %cmp68.i, ptr %401, ptr %incdec.ptr63.i
  %tobool61.not.i = icmp eq i32 %sub62.i, 0
  br i1 %tobool61.not.i, label %while.body.i545.while.end.i_crit_edge, label %while.body.i545.while.body.i545_crit_edge

while.body.i545.while.body.i545_crit_edge:        ; preds = %while.body.i545
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i545

while.body.i545.while.end.i_crit_edge:            ; preds = %while.body.i545
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i545.while.end.i_crit_edge, %while.cond.preheader.i.while.end.i_crit_edge
  %sub75.i = add i32 %div140.i, 55
  %div76141.i = lshr i32 %sub75.i, 4
  %conv77.i = trunc i32 %div76141.i to i8
  br label %if.end177

if.end177:                                        ; preds = %while.end.i, %for.cond.preheader.i, %if.then164
  %len16.5 = phi i8 [ 4, %if.then164 ], [ 3, %for.cond.preheader.i ], [ %conv77.i, %while.end.i ]
  %fw_opcode.1 = phi i8 [ 32, %if.then164 ], [ 25, %for.cond.preheader.i ], [ 25, %while.end.i ]
  %state179 = getelementptr inbounds %struct.c4iw_mr, ptr %286, i32 0, i32 5, i32 8
  %404 = ptrtoint ptr %state179 to i32
  call void @__asan_load2_noabort(i32 %404)
  %bf.load180 = load i16, ptr %state179, align 8
  %bf.set = or i16 %bf.load180, -32768
  store i16 %bf.set, ptr %state179, align 8
  br label %if.end198

sw.bb181:                                         ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #13
  %and183 = shl i32 %82, 4
  %405 = and i32 %and183, 16
  %406 = or i32 %fw_flags.1, %405
  %opcode188 = getelementptr %struct.t4_swsqe, ptr %86, i32 %idxprom, i32 3
  %407 = ptrtoint ptr %opcode188 to i32
  call void @__asan_store4_noabort(i32 %407)
  store i32 11, ptr %opcode188, align 4
  %ex.i547 = getelementptr inbounds %struct.ib_send_wr, ptr %wr.addr.0630767, i32 0, i32 6
  %408 = ptrtoint ptr %ex.i547 to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load i32, ptr %ex.i547, align 8
  %stag_inv.i = getelementptr inbounds %struct.fw_ri_inv_lstag_wr, ptr %add.ptr, i32 0, i32 6
  %410 = ptrtoint ptr %stag_inv.i to i32
  call void @__asan_store4_noabort(i32 %410)
  store i32 %409, ptr %stag_inv.i, align 4
  %r2.i548 = getelementptr inbounds %struct.fw_ri_inv_lstag_wr, ptr %add.ptr, i32 0, i32 5
  %411 = ptrtoint ptr %r2.i548 to i32
  call void @__asan_store4_noabort(i32 %411)
  store i32 0, ptr %r2.i548, align 8
  %412 = load i32, ptr %ex.i547, align 8
  tail call void @c4iw_invalidate_mr(ptr noundef %1, i32 noundef %412) #11
  br label %if.end198

do.end192:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #13
  %call195 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef %90) #14
  br label %while.end.sink.split

if.end198:                                        ; preds = %sw.bb181, %if.end177, %if.then146, %if.end139.if.end198_crit_edge, %if.end37.i, %if.end46.i
  %len16.6 = phi i8 [ 1, %sw.bb181 ], [ %len16.5, %if.end177 ], [ 3, %if.then146 ], [ 3, %if.end139.if.end198_crit_edge ], [ %conv.i399, %if.end46.i ], [ %conv.i491, %if.end37.i ]
  %fw_flags.6 = phi i32 [ %406, %sw.bb181 ], [ %fw_flags.1, %if.end177 ], [ %fw_flags.4, %if.then146 ], [ %fw_flags.4, %if.end139.if.end198_crit_edge ], [ %93, %if.end46.i ], [ %fw_flags.3, %if.end37.i ]
  %fw_opcode.3 = phi i8 [ 26, %sw.bb181 ], [ %fw_opcode.1, %if.end177 ], [ 22, %if.then146 ], [ 22, %if.end139.if.end198_crit_edge ], [ 21, %if.end46.i ], [ 20, %if.end37.i ]
  %413 = ptrtoint ptr %pidx to i32
  call void @__asan_load2_noabort(i32 %413)
  %414 = load i16, ptr %pidx, align 2
  %idx202 = getelementptr %struct.t4_swsqe, ptr %86, i32 %idxprom, i32 6
  %415 = ptrtoint ptr %idx202 to i32
  call void @__asan_store2_noabort(i32 %415)
  store i16 %414, ptr %idx202, align 8
  %complete = getelementptr %struct.t4_swsqe, ptr %86, i32 %idxprom, i32 4
  %416 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %416)
  store i32 0, ptr %complete, align 8
  %417 = ptrtoint ptr %send_flags to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load i32, ptr %send_flags, align 4
  %and204 = and i32 %418, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and204)
  %tobool205.not = icmp eq i32 %and204, 0
  br i1 %tobool205.not, label %lor.rhs, label %if.end198.lor.end_crit_edge

if.end198.lor.end_crit_edge:                      ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.end

lor.rhs:                                          ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #13
  %419 = ptrtoint ptr %sq_sig_all to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load i32, ptr %sq_sig_all, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %420)
  %tobool207 = icmp ne i32 %420, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end198.lor.end_crit_edge
  %421 = phi i1 [ true, %if.end198.lor.end_crit_edge ], [ %tobool207, %lor.rhs ]
  %lor.ext = zext i1 %421 to i32
  %signaled = getelementptr %struct.t4_swsqe, ptr %86, i32 %idxprom, i32 5
  %422 = ptrtoint ptr %signaled to i32
  call void @__asan_store4_noabort(i32 %422)
  store i32 %lor.ext, ptr %signaled, align 4
  %flushed208 = getelementptr %struct.t4_swsqe, ptr %86, i32 %idxprom, i32 7
  %423 = ptrtoint ptr %flushed208 to i32
  call void @__asan_store4_noabort(i32 %423)
  store i32 0, ptr %flushed208, align 4
  %424 = getelementptr inbounds %struct.ib_send_wr, ptr %wr.addr.0630767, i32 0, i32 1
  %425 = ptrtoint ptr %424 to i32
  call void @__asan_load8_noabort(i32 %425)
  %426 = load i64, ptr %424, align 8
  %427 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_store8_noabort(i32 %427)
  store i64 %426, ptr %arrayidx93, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @c4iw_wr_log to i32))
  %428 = load i32, ptr @c4iw_wr_log, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %428)
  %tobool209.not = icmp eq i32 %428, 0
  br i1 %tobool209.not, label %lor.end.if.end216_crit_edge, label %if.then210

lor.end.if.end216_crit_edge:                      ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end216

if.then210:                                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #13
  %429 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load ptr, ptr %ports, align 4
  %431 = ptrtoint ptr %430 to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load ptr, ptr %430, align 4
  %call214 = tail call i64 @cxgb4_read_sge_timestamp(ptr noundef %432) #11
  %sge_ts = getelementptr %struct.t4_swsqe, ptr %86, i32 %idxprom, i32 9
  %433 = ptrtoint ptr %sge_ts to i32
  call void @__asan_store8_noabort(i32 %433)
  store i64 %call214, ptr %sge_ts, align 8
  %call215 = tail call i64 @ktime_get() #11
  %host_time = getelementptr %struct.t4_swsqe, ptr %86, i32 %idxprom, i32 8
  %434 = ptrtoint ptr %host_time to i32
  call void @__asan_store8_noabort(i32 %434)
  store i64 %call215, ptr %host_time, align 8
  br label %if.end216

if.end216:                                        ; preds = %if.then210, %lor.end.if.end216_crit_edge
  %435 = ptrtoint ptr %pidx to i32
  call void @__asan_load2_noabort(i32 %435)
  %436 = load i16, ptr %pidx, align 2
  %conv220 = trunc i32 %fw_flags.6 to i8
  %437 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %437)
  store i8 %fw_opcode.3, ptr %add.ptr, align 8
  %flags2.i = getelementptr inbounds %struct.fw_ri_send_wr, ptr %add.ptr, i32 0, i32 1
  %438 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store1_noabort(i32 %438)
  store i8 %conv220, ptr %flags2.i, align 1
  %wrid3.i = getelementptr inbounds %struct.fw_ri_send_wr, ptr %add.ptr, i32 0, i32 2
  %439 = ptrtoint ptr %wrid3.i to i32
  call void @__asan_store2_noabort(i32 %439)
  store i16 %436, ptr %wrid3.i, align 2
  %r1.i550 = getelementptr inbounds %struct.fw_ri_send_wr, ptr %add.ptr, i32 0, i32 3
  %440 = ptrtoint ptr %r1.i550 to i32
  call void @__asan_store1_noabort(i32 %440)
  store i8 0, ptr %r1.i550, align 4
  %arrayidx5.i = getelementptr %struct.fw_ri_send_wr, ptr %add.ptr, i32 0, i32 3, i32 1
  %441 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %441)
  store i8 0, ptr %arrayidx5.i, align 1
  %arrayidx7.i = getelementptr %struct.fw_ri_send_wr, ptr %add.ptr, i32 0, i32 3, i32 2
  %442 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %442)
  store i8 0, ptr %arrayidx7.i, align 2
  %len168.i = getelementptr inbounds %struct.fw_ri_send_wr, ptr %add.ptr, i32 0, i32 4
  %443 = ptrtoint ptr %len168.i to i32
  call void @__asan_store1_noabort(i32 %443)
  store i8 %len16.6, ptr %len168.i, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c4iw_post_send.__UNIQUE_ID_ddebug693, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c4iw_post_send, %if.then231)) #11
          to label %do.end240 [label %if.then231], !srcloc !300

if.then231:                                       ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #13
  %444 = ptrtoint ptr %424 to i32
  call void @__asan_load8_noabort(i32 %444)
  %445 = load i64, ptr %424, align 8
  %446 = ptrtoint ptr %pidx to i32
  call void @__asan_load2_noabort(i32 %446)
  %447 = load i16, ptr %pidx, align 2
  %conv235 = zext i16 %447 to i32
  %opcode236 = getelementptr %struct.t4_swsqe, ptr %86, i32 %idxprom, i32 3
  %448 = ptrtoint ptr %opcode236 to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load i32, ptr %opcode236, align 4
  %read_len237 = getelementptr %struct.t4_swsqe, ptr %86, i32 %idxprom, i32 2
  %450 = ptrtoint ptr %read_len237 to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load i32, ptr %read_len237, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @c4iw_post_send.__UNIQUE_ID_ddebug693, ptr noundef nonnull @.str.9, i64 noundef %445, i32 noundef %conv235, i32 noundef %449, i32 noundef %451) #11
  br label %do.end240

do.end240:                                        ; preds = %if.then231, %if.end216
  %452 = ptrtoint ptr %wr.addr.0630767 to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load ptr, ptr %wr.addr.0630767, align 8
  %dec = add i32 %num_wrs.0620785, -1
  %454 = ptrtoint ptr %in_use.i to i32
  call void @__asan_load2_noabort(i32 %454)
  %455 = load i16, ptr %in_use.i, align 4
  %inc.i = add i16 %455, 1
  store i16 %inc.i, ptr %in_use.i, align 4
  %456 = ptrtoint ptr %pidx to i32
  call void @__asan_load2_noabort(i32 %456)
  %457 = load i16, ptr %pidx, align 2
  %inc2.i = add i16 %457, 1
  %458 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %458)
  %459 = load i16, ptr %size.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc2.i, i16 %459)
  %cmp.i553 = icmp eq i16 %inc2.i, %459
  %spec.store.select.i = select i1 %cmp.i553, i16 0, i16 %inc2.i
  %460 = ptrtoint ptr %pidx to i32
  call void @__asan_store2_noabort(i32 %460)
  store i16 %spec.store.select.i, ptr %pidx, align 2
  %conv8.i = zext i8 %len16.6 to i16
  %mul.i554 = shl nuw nsw i16 %conv8.i, 4
  %sub.i555 = add nuw nsw i16 %mul.i554, 63
  %div40.i = lshr i16 %sub.i555, 6
  %461 = ptrtoint ptr %wq_pidx to i32
  call void @__asan_load2_noabort(i32 %461)
  %462 = load i16, ptr %wq_pidx, align 4
  %add11.i = add i16 %462, %div40.i
  %conv15.i = zext i16 %add11.i to i32
  %conv18.i556 = zext i16 %459 to i32
  %mul19.i = mul nuw nsw i32 %conv18.i556, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %mul19.i, i32 %conv15.i)
  %cmp20.not.i = icmp ugt i32 %mul19.i, %conv15.i
  br i1 %cmp20.not.i, label %do.end240.t4_sq_produce.exit_crit_edge, label %if.then22.i

do.end240.t4_sq_produce.exit_crit_edge:           ; preds = %do.end240
  call void @__sanitizer_cov_trace_pc() #13
  br label %t4_sq_produce.exit

if.then22.i:                                      ; preds = %do.end240
  call void @__sanitizer_cov_trace_pc() #13
  %rem.i = urem i32 %conv15.i, %mul19.i
  %conv30.i = trunc i32 %rem.i to i16
  br label %t4_sq_produce.exit

t4_sq_produce.exit:                               ; preds = %if.then22.i, %do.end240.t4_sq_produce.exit_crit_edge
  %storemerge.i557 = phi i16 [ %conv30.i, %if.then22.i ], [ %add11.i, %do.end240.t4_sq_produce.exit_crit_edge ]
  %463 = ptrtoint ptr %wq_pidx to i32
  call void @__asan_store2_noabort(i32 %463)
  store i16 %storemerge.i557, ptr %wq_pidx, align 4
  %add246 = add i16 %div40.i, %idx.0621776
  %tobool68.not = icmp eq ptr %453, null
  br i1 %tobool68.not, label %t4_sq_produce.exit.while.end_crit_edge, label %while.body

t4_sq_produce.exit.while.end_crit_edge:           ; preds = %t4_sq_produce.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end.sink.split:                             ; preds = %do.end192, %.while.end.sink.split_crit_edge, %if.end135.while.end.sink.split_crit_edge, %for.body.i72.i.while.end.sink.split_crit_edge, %for.body.i.i422.while.end.sink.split_crit_edge, %sw.bb121.while.end.sink.split_crit_edge, %sw.bb111.while.end.sink.split_crit_edge, %for.body.i85.i.while.end.sink.split_crit_edge, %for.body.i.i.while.end.sink.split_crit_edge, %if.end.i393.while.end.sink.split_crit_edge, %sw.bb.while.end.sink.split_crit_edge, %while.body.while.end.sink.split_crit_edge
  %wr.addr.0630754 = phi ptr [ %wr.addr.0630767, %do.end192 ], [ %wr.addr.0630767, %for.body.i85.i.while.end.sink.split_crit_edge ], [ %wr.addr.0630767, %for.body.i.i.while.end.sink.split_crit_edge ], [ %wr.addr.0630767, %for.body.i72.i.while.end.sink.split_crit_edge ], [ %wr.addr.0630767, %for.body.i.i422.while.end.sink.split_crit_edge ], [ %wr.addr.0630767, %.while.end.sink.split_crit_edge ], [ %wr.addr.0630767, %if.end135.while.end.sink.split_crit_edge ], [ %wr.addr.0630767, %sw.bb121.while.end.sink.split_crit_edge ], [ %wr.addr.0630767, %if.end.i393.while.end.sink.split_crit_edge ], [ %wr.addr.0630767, %sw.bb.while.end.sink.split_crit_edge ], [ %wr.addr.0630767, %sw.bb111.while.end.sink.split_crit_edge ], [ %453, %while.body.while.end.sink.split_crit_edge ]
  %idx.0621747 = phi i16 [ %idx.0621776, %do.end192 ], [ %idx.0621776, %for.body.i85.i.while.end.sink.split_crit_edge ], [ %idx.0621776, %for.body.i.i.while.end.sink.split_crit_edge ], [ %idx.0621776, %for.body.i72.i.while.end.sink.split_crit_edge ], [ %idx.0621776, %for.body.i.i422.while.end.sink.split_crit_edge ], [ %idx.0621776, %.while.end.sink.split_crit_edge ], [ %idx.0621776, %if.end135.while.end.sink.split_crit_edge ], [ %idx.0621776, %sw.bb121.while.end.sink.split_crit_edge ], [ %idx.0621776, %if.end.i393.while.end.sink.split_crit_edge ], [ %idx.0621776, %sw.bb.while.end.sink.split_crit_edge ], [ %idx.0621776, %sw.bb111.while.end.sink.split_crit_edge ], [ %add246, %while.body.while.end.sink.split_crit_edge ]
  %err.4.ph = phi i32 [ -22, %do.end192 ], [ -90, %for.body.i85.i.while.end.sink.split_crit_edge ], [ -90, %for.body.i.i.while.end.sink.split_crit_edge ], [ -90, %for.body.i72.i.while.end.sink.split_crit_edge ], [ -90, %for.body.i.i422.while.end.sink.split_crit_edge ], [ -22, %.while.end.sink.split_crit_edge ], [ -22, %if.end135.while.end.sink.split_crit_edge ], [ -22, %sw.bb121.while.end.sink.split_crit_edge ], [ -22, %if.end.i393.while.end.sink.split_crit_edge ], [ -22, %sw.bb.while.end.sink.split_crit_edge ], [ -22, %sw.bb111.while.end.sink.split_crit_edge ], [ -12, %while.body.while.end.sink.split_crit_edge ]
  %464 = ptrtoint ptr %bad_wr to i32
  call void @__asan_store4_noabort(i32 %464)
  store ptr %wr.addr.0630754, ptr %bad_wr, align 4
  br label %while.end

while.end:                                        ; preds = %while.end.sink.split, %t4_sq_produce.exit.while.end_crit_edge, %if.end67.while.end_crit_edge
  %idx.0597 = phi i16 [ 0, %if.end67.while.end_crit_edge ], [ %idx.0621747, %while.end.sink.split ], [ %add246, %t4_sq_produce.exit.while.end_crit_edge ]
  %wqe.1 = phi ptr [ null, %if.end67.while.end_crit_edge ], [ %add.ptr, %while.end.sink.split ], [ %add.ptr, %t4_sq_produce.exit.while.end_crit_edge ]
  %err.4 = phi i32 [ 0, %if.end67.while.end_crit_edge ], [ %err.4.ph, %while.end.sink.split ], [ 0, %t4_sq_produce.exit.while.end_crit_edge ]
  %status_page = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 1, i32 15
  %465 = ptrtoint ptr %status_page to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load ptr, ptr %status_page, align 8
  %467 = ptrtoint ptr %466 to i32
  call void @__asan_load1_noabort(i32 %467)
  %468 = load i8, ptr %466, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %468)
  %tobool249.not = icmp eq i8 %468, 0
  br i1 %tobool249.not, label %if.then250, label %if.else253

if.then250:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @t4_ring_sq_db(ptr noundef %wq, i16 noundef zeroext %idx.0597, ptr noundef %wqe.1)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #11
  br label %cleanup257

if.else253:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #11
  tail call fastcc void @ring_kernel_sq_db(ptr noundef %ibqp, i16 noundef zeroext %idx.0597)
  br label %cleanup257

cleanup257:                                       ; preds = %if.else253, %if.then250, %if.then65, %if.then13, %if.end.i.cleanup257_crit_edge, %if.then.i, %if.then.cleanup257_crit_edge
  %retval.0 = phi i32 [ -12, %if.then13 ], [ 0, %if.then65 ], [ %err.4, %if.else253 ], [ %err.4, %if.then250 ], [ -22, %if.then.i ], [ 0, %if.then.cleanup257_crit_edge ], [ 0, %if.end.i.cleanup257_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @post_write_cmpl(ptr nocapture noundef %qhp, ptr nocapture noundef readonly %wr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wr, align 8
  %send_flags = getelementptr inbounds %struct.ib_send_wr, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %send_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %send_flags, align 4
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.rhs, label %entry.lor.end_crit_edge

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.end

lor.rhs:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %sq_sig_all = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 9
  %4 = ptrtoint ptr %sq_sig_all to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sq_sig_all, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1 = icmp ne i32 %5, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry.lor.end_crit_edge
  %6 = phi i1 [ true, %entry.lor.end_crit_edge ], [ %tobool1, %lor.rhs ]
  %send_flags2 = getelementptr inbounds %struct.ib_send_wr, ptr %wr, i32 0, i32 5
  %7 = ptrtoint ptr %send_flags2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %send_flags2, align 4
  %and3 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %lor.rhs5, label %lor.end.lor.end8_crit_edge

lor.end.lor.end8_crit_edge:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.end8

lor.rhs5:                                         ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #13
  %sq_sig_all6 = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 9
  %9 = ptrtoint ptr %sq_sig_all6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sq_sig_all6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool7 = icmp ne i32 %10, 0
  br label %lor.end8

lor.end8:                                         ; preds = %lor.rhs5, %lor.end.lor.end8_crit_edge
  %11 = phi i1 [ true, %lor.end.lor.end8_crit_edge ], [ %tobool7, %lor.rhs5 ]
  %wq = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 5
  %12 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wq, align 8
  %wq_pidx = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 5, i32 0, i32 15
  %14 = ptrtoint ptr %wq_pidx to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %wq_pidx, align 4
  %conv = zext i16 %15 to i32
  %mul = shl nuw nsw i32 %conv, 6
  %add.ptr = getelementptr i8, ptr %13, i32 %mul
  %rkey.i = getelementptr inbounds %struct.ib_rdma_wr, ptr %wr, i32 0, i32 2
  %16 = ptrtoint ptr %rkey.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rkey.i, align 8
  %stag_sink.i = getelementptr inbounds %struct.fw_ri_rdma_write_cmpl_wr, ptr %add.ptr, i32 0, i32 10
  %18 = ptrtoint ptr %stag_sink.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %stag_sink.i, align 4
  %remote_addr.i = getelementptr inbounds %struct.ib_rdma_wr, ptr %wr, i32 0, i32 1
  %19 = ptrtoint ptr %remote_addr.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %remote_addr.i, align 8
  %to_sink.i = getelementptr inbounds %struct.fw_ri_rdma_write_cmpl_wr, ptr %add.ptr, i32 0, i32 11
  %21 = ptrtoint ptr %to_sink.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %to_sink.i, align 8
  %22 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %wr, align 8
  %opcode.i = getelementptr inbounds %struct.ib_send_wr, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %opcode.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %opcode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %cmp.i = icmp eq i32 %25, 2
  br i1 %cmp.i, label %lor.end8.if.end.i_crit_edge, label %if.else.i

lor.end8.if.end.i_crit_edge:                      ; preds = %lor.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.else.i:                                        ; preds = %lor.end8
  call void @__sanitizer_cov_trace_pc() #13
  %ex.i = getelementptr inbounds %struct.ib_send_wr, ptr %23, i32 0, i32 6
  %26 = ptrtoint ptr %ex.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ex.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %lor.end8.if.end.i_crit_edge
  %.sink.i = phi i32 [ %27, %if.else.i ], [ 0, %lor.end8.if.end.i_crit_edge ]
  %28 = getelementptr inbounds %struct.fw_ri_rdma_write_cmpl_wr, ptr %add.ptr, i32 0, i32 8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %.sink.i, ptr %28, align 4
  %r2.i = getelementptr inbounds %struct.fw_ri_rdma_write_cmpl_wr, ptr %add.ptr, i32 0, i32 5
  %30 = ptrtoint ptr %r2.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %r2.i, align 8
  %r3.i = getelementptr inbounds %struct.fw_ri_rdma_write_cmpl_wr, ptr %add.ptr, i32 0, i32 13
  %31 = ptrtoint ptr %r3.i to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 0, ptr %r3.i, align 8
  %32 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %wr, align 8
  %send_flags.i = getelementptr inbounds %struct.ib_send_wr, ptr %33, i32 0, i32 5
  %34 = ptrtoint ptr %send_flags.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %send_flags.i, align 4
  %and.i = and i32 %35, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end4.i.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %u_cmpl.i = getelementptr inbounds %struct.fw_ri_rdma_write_cmpl_wr, ptr %add.ptr, i32 0, i32 12
  %data.i.i = getelementptr inbounds %struct.fw_ri_rdma_write_cmpl_wr, ptr %add.ptr, i32 0, i32 12, i32 1
  %sg_list.i.i = getelementptr inbounds %struct.ib_send_wr, ptr %33, i32 0, i32 2
  %36 = ptrtoint ptr %sg_list.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sg_list.i.i, align 8
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %37, align 8
  %conv.i.i = trunc i64 %39 to i32
  %40 = inttoptr i32 %conv.i.i to ptr
  %41 = call ptr @memcpy(ptr %data.i.i, ptr %40, i32 16)
  %r1.i.i = getelementptr inbounds %struct.fw_ri_rdma_write_cmpl_wr, ptr %add.ptr, i32 0, i32 12, i32 0, i32 1
  %42 = call ptr @memset(ptr %r1.i.i, i32 0, i32 6)
  %43 = ptrtoint ptr %u_cmpl.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 -127, ptr %u_cmpl.i, align 1
  %immdlen.i.i = getelementptr inbounds %struct.fw_ri_immd_cmpl, ptr %u_cmpl.i, i32 0, i32 2
  %44 = ptrtoint ptr %immdlen.i.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 16, ptr %immdlen.i.i, align 1
  br label %if.end13.i

if.end4.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %sg_list.i = getelementptr inbounds %struct.ib_send_wr, ptr %33, i32 0, i32 2
  %45 = ptrtoint ptr %sg_list.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %sg_list.i, align 8
  %length.i.i = getelementptr %struct.ib_sge, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %length.i.i, align 8
  %u_cmpl10.i = getelementptr inbounds %struct.fw_ri_rdma_write_cmpl_wr, ptr %add.ptr, i32 0, i32 12
  %49 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %wq, align 8
  %size9.i = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 5, i32 0, i32 12
  %51 = ptrtoint ptr %size9.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %size9.i, align 2
  %idxprom.i = zext i16 %52 to i32
  %arrayidx.i = getelementptr %union.t4_wr, ptr %50, i32 %idxprom.i
  %cmp.i.i = icmp eq ptr %u_cmpl10.i, %arrayidx.i
  %spec.select.i.i = select i1 %cmp.i.i, ptr %50, ptr %u_cmpl10.i
  %sge.i.i = getelementptr inbounds %struct.fw_ri_isgl, ptr %spec.select.i.i, i32 0, i32 4
  %lkey.i.i = getelementptr %struct.ib_sge, ptr %46, i32 0, i32 2
  %53 = ptrtoint ptr %lkey.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %lkey.i.i, align 4
  %conv.i48.i = zext i32 %54 to i64
  %shl.i.i = shl nuw i64 %conv.i48.i, 32
  %conv11.i.i = zext i32 %48 to i64
  %or.i.i = or i64 %shl.i.i, %conv11.i.i
  %55 = ptrtoint ptr %sge.i.i to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %or.i.i, ptr %sge.i.i, align 8
  %incdec.ptr.i.i = getelementptr %struct.fw_ri_isgl, ptr %spec.select.i.i, i32 2
  %cmp12.i.i = icmp eq ptr %incdec.ptr.i.i, %arrayidx.i
  %spec.select55.i.i = select i1 %cmp12.i.i, ptr %50, ptr %incdec.ptr.i.i
  %56 = ptrtoint ptr %46 to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %46, align 8
  %58 = ptrtoint ptr %spec.select55.i.i to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %57, ptr %spec.select55.i.i, align 8
  %incdec.ptr17.i.i = getelementptr i64, ptr %spec.select55.i.i, i32 1
  %cmp18.i.i = icmp eq ptr %incdec.ptr17.i.i, %arrayidx.i
  %flitp.2.i.i = select i1 %cmp18.i.i, ptr %50, ptr %incdec.ptr17.i.i
  %59 = ptrtoint ptr %flitp.2.i.i to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 0, ptr %flitp.2.i.i, align 8
  %60 = ptrtoint ptr %spec.select.i.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 -125, ptr %spec.select.i.i, align 8
  %r1.i49.i = getelementptr inbounds %struct.fw_ri_isgl, ptr %spec.select.i.i, i32 0, i32 1
  %61 = ptrtoint ptr %r1.i49.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %r1.i49.i, align 1
  %nsge.i.i = getelementptr inbounds %struct.fw_ri_isgl, ptr %spec.select.i.i, i32 0, i32 2
  %62 = ptrtoint ptr %nsge.i.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 1, ptr %nsge.i.i, align 2
  %r2.i.i = getelementptr inbounds %struct.fw_ri_isgl, ptr %spec.select.i.i, i32 0, i32 3
  %63 = ptrtoint ptr %r2.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %r2.i.i, align 4
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.end4.i.i, %if.then5.i
  %64 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %wq, align 8
  %size16.i = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 5, i32 0, i32 12
  %66 = ptrtoint ptr %size16.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %size16.i, align 2
  %idxprom17.i = zext i16 %67 to i32
  %arrayidx18.i = getelementptr %union.t4_wr, ptr %65, i32 %idxprom17.i
  %u.i = getelementptr inbounds %struct.fw_ri_rdma_write_cmpl_wr, ptr %add.ptr, i32 0, i32 14
  %sg_list19.i = getelementptr inbounds %struct.ib_send_wr, ptr %wr, i32 0, i32 2
  %68 = ptrtoint ptr %sg_list19.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %sg_list19.i, align 8
  %num_sge.i = getelementptr inbounds %struct.ib_send_wr, ptr %wr, i32 0, i32 3
  %70 = ptrtoint ptr %num_sge.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %num_sge.i, align 4
  %cmp.i50.i = icmp eq ptr %u.i, %arrayidx18.i
  %spec.select.i51.i = select i1 %cmp.i50.i, ptr %65, ptr %u.i
  %sge.i52.i = getelementptr inbounds %struct.fw_ri_isgl, ptr %spec.select.i51.i, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp158.i.i = icmp sgt i32 %71, 0
  br i1 %cmp158.i.i, label %if.end13.i.for.body.i59.i_crit_edge, label %if.end13.i.for.end.i78.i_crit_edge

if.end13.i.for.end.i78.i_crit_edge:               ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i78.i

if.end13.i.for.body.i59.i_crit_edge:              ; preds = %if.end13.i
  br label %for.body.i59.i

for.body.i59.i:                                   ; preds = %if.end4.i74.i.for.body.i59.i_crit_edge, %if.end13.i.for.body.i59.i_crit_edge
  %flitp.061.i53.i = phi ptr [ %flitp.2.i71.i, %if.end4.i74.i.for.body.i59.i_crit_edge ], [ %sge.i52.i, %if.end13.i.for.body.i59.i_crit_edge ]
  %plen.060.i54.i = phi i32 [ %add.i57.i, %if.end4.i74.i.for.body.i59.i_crit_edge ], [ 0, %if.end13.i.for.body.i59.i_crit_edge ]
  %i.059.i55.i = phi i32 [ %inc.i72.i, %if.end4.i74.i.for.body.i59.i_crit_edge ], [ 0, %if.end13.i.for.body.i59.i_crit_edge ]
  %length.i56.i = getelementptr %struct.ib_sge, ptr %69, i32 %i.059.i55.i, i32 1
  %72 = ptrtoint ptr %length.i56.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %length.i56.i, align 8
  %add.i57.i = add i32 %73, %plen.060.i54.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i57.i, i32 %plen.060.i54.i)
  %cmp2.i58.i = icmp ult i32 %add.i57.i, %plen.060.i54.i
  br i1 %cmp2.i58.i, label %for.body.i59.i.build_rdma_write_cmpl.exit_crit_edge, label %if.end4.i74.i

for.body.i59.i.build_rdma_write_cmpl.exit_crit_edge: ; preds = %for.body.i59.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %build_rdma_write_cmpl.exit

if.end4.i74.i:                                    ; preds = %for.body.i59.i
  %arrayidx.i60.i = getelementptr %struct.ib_sge, ptr %69, i32 %i.059.i55.i
  %lkey.i61.i = getelementptr %struct.ib_sge, ptr %69, i32 %i.059.i55.i, i32 2
  %74 = ptrtoint ptr %lkey.i61.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %lkey.i61.i, align 4
  %conv.i62.i = zext i32 %75 to i64
  %shl.i63.i = shl nuw i64 %conv.i62.i, 32
  %conv11.i64.i = zext i32 %73 to i64
  %or.i65.i = or i64 %shl.i63.i, %conv11.i64.i
  %76 = ptrtoint ptr %flitp.061.i53.i to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 %or.i65.i, ptr %flitp.061.i53.i, align 8
  %incdec.ptr.i66.i = getelementptr i64, ptr %flitp.061.i53.i, i32 1
  %cmp12.i67.i = icmp eq ptr %incdec.ptr.i66.i, %arrayidx18.i
  %spec.select55.i68.i = select i1 %cmp12.i67.i, ptr %65, ptr %incdec.ptr.i66.i
  %77 = ptrtoint ptr %arrayidx.i60.i to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %arrayidx.i60.i, align 8
  %79 = ptrtoint ptr %spec.select55.i68.i to i32
  call void @__asan_store8_noabort(i32 %79)
  store i64 %78, ptr %spec.select55.i68.i, align 8
  %incdec.ptr17.i69.i = getelementptr i64, ptr %spec.select55.i68.i, i32 1
  %cmp18.i70.i = icmp eq ptr %incdec.ptr17.i69.i, %arrayidx18.i
  %flitp.2.i71.i = select i1 %cmp18.i70.i, ptr %65, ptr %incdec.ptr17.i69.i
  %inc.i72.i = add nuw nsw i32 %i.059.i55.i, 1
  %exitcond.not.i73.i = icmp eq i32 %inc.i72.i, %71
  br i1 %exitcond.not.i73.i, label %if.end4.i74.i.for.end.i78.i_crit_edge, label %if.end4.i74.i.for.body.i59.i_crit_edge

if.end4.i74.i.for.body.i59.i_crit_edge:           ; preds = %if.end4.i74.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i59.i

if.end4.i74.i.for.end.i78.i_crit_edge:            ; preds = %if.end4.i74.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i78.i

for.end.i78.i:                                    ; preds = %if.end4.i74.i.for.end.i78.i_crit_edge, %if.end13.i.for.end.i78.i_crit_edge
  %plen.0.lcssa.i.i = phi i32 [ 0, %if.end13.i.for.end.i78.i_crit_edge ], [ %add.i57.i, %if.end4.i74.i.for.end.i78.i_crit_edge ]
  %flitp.0.lcssa.i.i = phi ptr [ %sge.i52.i, %if.end13.i.for.end.i78.i_crit_edge ], [ %flitp.2.i71.i, %if.end4.i74.i.for.end.i78.i_crit_edge ]
  %80 = ptrtoint ptr %flitp.0.lcssa.i.i to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 0, ptr %flitp.0.lcssa.i.i, align 8
  %81 = ptrtoint ptr %spec.select.i51.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 -125, ptr %spec.select.i51.i, align 8
  %r1.i75.i = getelementptr inbounds %struct.fw_ri_isgl, ptr %spec.select.i51.i, i32 0, i32 1
  %82 = ptrtoint ptr %r1.i75.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 0, ptr %r1.i75.i, align 1
  %conv22.i.i = trunc i32 %71 to i16
  %nsge.i76.i = getelementptr inbounds %struct.fw_ri_isgl, ptr %spec.select.i51.i, i32 0, i32 2
  %83 = ptrtoint ptr %nsge.i76.i to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %conv22.i.i, ptr %nsge.i76.i, align 2
  %r2.i77.i = getelementptr inbounds %struct.fw_ri_isgl, ptr %spec.select.i51.i, i32 0, i32 3
  %84 = ptrtoint ptr %r2.i77.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 0, ptr %r2.i77.i, align 4
  br label %build_rdma_write_cmpl.exit

build_rdma_write_cmpl.exit:                       ; preds = %for.end.i78.i, %for.body.i59.i.build_rdma_write_cmpl.exit_crit_edge
  %plen.0.i = phi i32 [ %plen.0.lcssa.i.i, %for.end.i78.i ], [ -1, %for.body.i59.i.build_rdma_write_cmpl.exit_crit_edge ]
  %85 = ptrtoint ptr %num_sge.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %num_sge.i, align 4
  %mul.i = shl i32 %86, 4
  %plen22.i = getelementptr inbounds %struct.fw_ri_rdma_write_cmpl_wr, ptr %add.ptr, i32 0, i32 9
  %87 = ptrtoint ptr %plen22.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %plen.0.i, ptr %plen22.i, align 8
  %sub.i = add i32 %mul.i, 87
  %div.i = sdiv i32 %sub.i, 16
  %conv.i = trunc i32 %div.i to i8
  %sw_sq = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 5, i32 0, i32 4
  %88 = ptrtoint ptr %sw_sq to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %sw_sq, align 8
  %pidx = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 5, i32 0, i32 14
  %90 = ptrtoint ptr %pidx to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %pidx, align 2
  %idxprom = zext i16 %91 to i32
  %arrayidx = getelementptr %struct.t4_swsqe, ptr %89, i32 %idxprom
  %opcode = getelementptr %struct.t4_swsqe, ptr %89, i32 %idxprom, i32 3
  %92 = ptrtoint ptr %opcode to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 0, ptr %opcode, align 4
  %93 = load i16, ptr %pidx, align 2
  %idx21 = getelementptr %struct.t4_swsqe, ptr %89, i32 %idxprom, i32 6
  %94 = ptrtoint ptr %idx21 to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 %93, ptr %idx21, align 8
  %complete = getelementptr %struct.t4_swsqe, ptr %89, i32 %idxprom, i32 4
  %95 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 0, ptr %complete, align 8
  %conv23 = zext i1 %11 to i32
  %signaled = getelementptr %struct.t4_swsqe, ptr %89, i32 %idxprom, i32 5
  %96 = ptrtoint ptr %signaled to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %conv23, ptr %signaled, align 4
  %flushed = getelementptr %struct.t4_swsqe, ptr %89, i32 %idxprom, i32 7
  %97 = ptrtoint ptr %flushed to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 0, ptr %flushed, align 4
  %98 = getelementptr inbounds %struct.ib_send_wr, ptr %wr, i32 0, i32 1
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %98, align 8
  %101 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %101)
  store i64 %100, ptr %arrayidx, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @c4iw_wr_log to i32))
  %102 = load i32, ptr @c4iw_wr_log, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %tobool24.not = icmp eq i32 %102, 0
  br i1 %tobool24.not, label %build_rdma_write_cmpl.exit.if.end_crit_edge, label %if.then

build_rdma_write_cmpl.exit.if.end_crit_edge:      ; preds = %build_rdma_write_cmpl.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %build_rdma_write_cmpl.exit
  call void @__sanitizer_cov_trace_pc() #13
  %rhp = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 2
  %103 = ptrtoint ptr %rhp to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %rhp, align 4
  %ports = getelementptr inbounds %struct.c4iw_dev, ptr %104, i32 0, i32 1, i32 8, i32 3
  %105 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %ports, align 4
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %106, align 4
  %call = tail call i64 @cxgb4_read_sge_timestamp(ptr noundef %108) #11
  %sge_ts = getelementptr %struct.t4_swsqe, ptr %89, i32 %idxprom, i32 9
  %109 = ptrtoint ptr %sge_ts to i32
  call void @__asan_store8_noabort(i32 %109)
  store i64 %call, ptr %sge_ts, align 8
  %call26 = tail call i64 @ktime_get() #11
  %host_time = getelementptr %struct.t4_swsqe, ptr %89, i32 %idxprom, i32 8
  %110 = ptrtoint ptr %host_time to i32
  call void @__asan_store8_noabort(i32 %110)
  store i64 %call26, ptr %host_time, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %build_rdma_write_cmpl.exit.if.end_crit_edge
  %111 = ptrtoint ptr %pidx to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %pidx, align 2
  %in_use = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 5, i32 0, i32 11
  %113 = ptrtoint ptr %in_use to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %in_use, align 4
  %inc = add i16 %114, 1
  store i16 %inc, ptr %in_use, align 4
  %inc35 = add i16 %112, 1
  %115 = ptrtoint ptr %size16.i to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %size16.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc35, i16 %116)
  %cmp = icmp eq i16 %inc35, %116
  %spec.store.select = select i1 %cmp, i16 0, i16 %inc35
  %117 = ptrtoint ptr %pidx to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 %spec.store.select, ptr %pidx, align 2
  %118 = ptrtoint ptr %sw_sq to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %sw_sq, align 8
  %idxprom52 = zext i16 %spec.store.select to i32
  %arrayidx53 = getelementptr %struct.t4_swsqe, ptr %119, i32 %idxprom52
  %120 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %wr, align 8
  %opcode55 = getelementptr inbounds %struct.ib_send_wr, ptr %121, i32 0, i32 4
  %122 = ptrtoint ptr %opcode55 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %opcode55, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %123)
  %cmp56 = icmp eq i32 %123, 2
  %spec.select = select i1 %cmp56, i32 3, i32 4
  %124 = getelementptr %struct.t4_swsqe, ptr %119, i32 %idxprom52, i32 3
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %spec.select, ptr %124, align 4
  %126 = ptrtoint ptr %pidx to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %pidx, align 2
  %idx65 = getelementptr %struct.t4_swsqe, ptr %119, i32 %idxprom52, i32 6
  %128 = ptrtoint ptr %idx65 to i32
  call void @__asan_store2_noabort(i32 %128)
  store i16 %127, ptr %idx65, align 8
  %complete66 = getelementptr %struct.t4_swsqe, ptr %119, i32 %idxprom52, i32 4
  %129 = ptrtoint ptr %complete66 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 0, ptr %complete66, align 8
  %conv68 = zext i1 %6 to i32
  %signaled69 = getelementptr %struct.t4_swsqe, ptr %119, i32 %idxprom52, i32 5
  %130 = ptrtoint ptr %signaled69 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %conv68, ptr %signaled69, align 4
  %flushed70 = getelementptr %struct.t4_swsqe, ptr %119, i32 %idxprom52, i32 7
  %131 = ptrtoint ptr %flushed70 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 0, ptr %flushed70, align 4
  %132 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %wr, align 8
  %134 = getelementptr inbounds %struct.ib_send_wr, ptr %133, i32 0, i32 1
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_load8_noabort(i32 %135)
  %136 = load i64, ptr %134, align 8
  %137 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store8_noabort(i32 %137)
  store i64 %136, ptr %arrayidx53, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @c4iw_wr_log to i32))
  %138 = load i32, ptr @c4iw_wr_log, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %tobool73.not = icmp eq i32 %138, 0
  br i1 %tobool73.not, label %if.end.if.end84_crit_edge, label %if.then74

if.end.if.end84_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end84

if.then74:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %rhp75 = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 2
  %139 = ptrtoint ptr %rhp75 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %rhp75, align 4
  %ports78 = getelementptr inbounds %struct.c4iw_dev, ptr %140, i32 0, i32 1, i32 8, i32 3
  %141 = ptrtoint ptr %ports78 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %ports78, align 4
  %143 = ptrtoint ptr %142 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %142, align 4
  %call80 = tail call i64 @cxgb4_read_sge_timestamp(ptr noundef %144) #11
  %sge_ts81 = getelementptr %struct.t4_swsqe, ptr %119, i32 %idxprom52, i32 9
  %145 = ptrtoint ptr %sge_ts81 to i32
  call void @__asan_store8_noabort(i32 %145)
  store i64 %call80, ptr %sge_ts81, align 8
  %call82 = tail call i64 @ktime_get() #11
  %host_time83 = getelementptr %struct.t4_swsqe, ptr %119, i32 %idxprom52, i32 8
  %146 = ptrtoint ptr %host_time83 to i32
  call void @__asan_store8_noabort(i32 %146)
  store i64 %call82, ptr %host_time83, align 8
  br label %if.end84

if.end84:                                         ; preds = %if.then74, %if.end.if.end84_crit_edge
  %conv87 = zext i1 %6 to i8
  %flags_send = getelementptr inbounds %struct.fw_ri_rdma_write_cmpl_wr, ptr %add.ptr, i32 0, i32 6
  %147 = ptrtoint ptr %flags_send to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 %conv87, ptr %flags_send, align 1
  %148 = ptrtoint ptr %pidx to i32
  call void @__asan_load2_noabort(i32 %148)
  %149 = load i16, ptr %pidx, align 2
  %wrid_send = getelementptr inbounds %struct.fw_ri_rdma_write_cmpl_wr, ptr %add.ptr, i32 0, i32 7
  %150 = ptrtoint ptr %wrid_send to i32
  call void @__asan_store2_noabort(i32 %150)
  store i16 %149, ptr %wrid_send, align 2
  %conv94 = zext i1 %11 to i8
  %151 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 33, ptr %add.ptr, align 8
  %flags2.i = getelementptr inbounds %struct.fw_ri_send_wr, ptr %add.ptr, i32 0, i32 1
  %152 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 %conv94, ptr %flags2.i, align 1
  %wrid3.i = getelementptr inbounds %struct.fw_ri_send_wr, ptr %add.ptr, i32 0, i32 2
  %153 = ptrtoint ptr %wrid3.i to i32
  call void @__asan_store2_noabort(i32 %153)
  store i16 %112, ptr %wrid3.i, align 2
  %r1.i = getelementptr inbounds %struct.fw_ri_send_wr, ptr %add.ptr, i32 0, i32 3
  %154 = ptrtoint ptr %r1.i to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 0, ptr %r1.i, align 4
  %arrayidx5.i = getelementptr %struct.fw_ri_send_wr, ptr %add.ptr, i32 0, i32 3, i32 1
  %155 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 0, ptr %arrayidx5.i, align 1
  %arrayidx7.i = getelementptr %struct.fw_ri_send_wr, ptr %add.ptr, i32 0, i32 3, i32 2
  %156 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 0, ptr %arrayidx7.i, align 2
  %len168.i = getelementptr inbounds %struct.fw_ri_send_wr, ptr %add.ptr, i32 0, i32 4
  %157 = ptrtoint ptr %len168.i to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 %conv.i, ptr %len168.i, align 1
  %158 = ptrtoint ptr %in_use to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %in_use, align 4
  %inc.i = add i16 %159, 1
  store i16 %inc.i, ptr %in_use, align 4
  %160 = load i16, ptr %pidx, align 2
  %inc2.i = add i16 %160, 1
  %161 = ptrtoint ptr %size16.i to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %size16.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc2.i, i16 %162)
  %cmp.i148 = icmp eq i16 %inc2.i, %162
  %spec.store.select.i = select i1 %cmp.i148, i16 0, i16 %inc2.i
  %163 = ptrtoint ptr %pidx to i32
  call void @__asan_store2_noabort(i32 %163)
  store i16 %spec.store.select.i, ptr %pidx, align 2
  %164 = trunc i32 %div.i to i16
  %conv8.i = shl i16 %164, 4
  %mul.i149 = and i16 %conv8.i, 4080
  %sub.i150 = add nuw nsw i16 %mul.i149, 63
  %div40.i = lshr i16 %sub.i150, 6
  %165 = ptrtoint ptr %wq_pidx to i32
  call void @__asan_load2_noabort(i32 %165)
  %166 = load i16, ptr %wq_pidx, align 4
  %add11.i = add i16 %166, %div40.i
  %conv15.i = zext i16 %add11.i to i32
  %conv18.i = zext i16 %162 to i32
  %mul19.i = mul nuw nsw i32 %conv18.i, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %mul19.i, i32 %conv15.i)
  %cmp20.not.i = icmp ugt i32 %mul19.i, %conv15.i
  br i1 %cmp20.not.i, label %if.end84.t4_sq_produce.exit_crit_edge, label %if.then22.i

if.end84.t4_sq_produce.exit_crit_edge:            ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #13
  br label %t4_sq_produce.exit

if.then22.i:                                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #13
  %rem.i = urem i32 %conv15.i, %mul19.i
  %conv30.i = trunc i32 %rem.i to i16
  br label %t4_sq_produce.exit

t4_sq_produce.exit:                               ; preds = %if.then22.i, %if.end84.t4_sq_produce.exit_crit_edge
  %storemerge.i = phi i16 [ %conv30.i, %if.then22.i ], [ %add11.i, %if.end84.t4_sq_produce.exit_crit_edge ]
  %167 = ptrtoint ptr %wq_pidx to i32
  call void @__asan_store2_noabort(i32 %167)
  store i16 %storemerge.i, ptr %wq_pidx, align 4
  tail call fastcc void @t4_ring_sq_db(ptr noundef %wq, i16 noundef zeroext %div40.i, ptr noundef %add.ptr)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @c4iw_invalidate_mr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @cxgb4_read_sge_timestamp(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @t4_ring_sq_db(ptr nocapture noundef readonly %wq, i16 noundef zeroext %inc, ptr noundef readonly %wqe) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !309
  tail call void @arm_heavy_mb() #11
  %bar2_va = getelementptr inbounds %struct.t4_sq, ptr %wq, i32 0, i32 6
  %0 = ptrtoint ptr %bar2_va to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bar2_va, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body49, label %if.then

if.then:                                          ; preds = %entry
  %conv = zext i16 %inc to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %inc)
  %cmp = icmp eq i16 %inc, 1
  br i1 %cmp, label %land.lhs.true, label %if.then.do.body18_crit_edge

if.then.do.body18_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body18

land.lhs.true:                                    ; preds = %if.then
  %bar2_qid = getelementptr inbounds %struct.t4_sq, ptr %wq, i32 0, i32 9
  %2 = ptrtoint ptr %bar2_qid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bar2_qid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp3 = icmp ne i32 %3, 0
  %tobool6.not = icmp eq ptr %wqe, null
  %or.cond = or i1 %tobool6.not, %cmp3
  br i1 %or.cond, label %land.lhs.true.do.body18_crit_edge, label %do.body8

land.lhs.true.do.body18_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body18

do.body8:                                         ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @t4_ring_sq_db.__UNIQUE_ID_ddebug664, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@t4_ring_sq_db, %if.then12)) #11
          to label %do.end15 [label %if.then12], !srcloc !300

if.then12:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #13
  %pidx = getelementptr inbounds %struct.t4_sq, ptr %wq, i32 0, i32 14
  %4 = ptrtoint ptr %pidx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %pidx, align 2
  %conv14 = zext i16 %5 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @t4_ring_sq_db.__UNIQUE_ID_ddebug664, ptr noundef nonnull @.str.59, i32 noundef %conv14) #11
  br label %do.end15

do.end15:                                         ; preds = %if.then12, %do.body8
  %6 = ptrtoint ptr %bar2_va to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bar2_va, align 8
  %add.ptr = getelementptr i8, ptr %7, i32 64
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %do.end15
  %count.07.i = phi i32 [ 8, %do.end15 ], [ %dec.i, %while.body.i.while.body.i_crit_edge ]
  %src.addr.06.i = phi ptr [ %wqe, %do.end15 ], [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ]
  %dst.addr.05.i = phi ptr [ %add.ptr, %do.end15 ], [ %incdec.ptr1.i, %while.body.i.while.body.i_crit_edge ]
  %8 = ptrtoint ptr %src.addr.06.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %src.addr.06.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !310
  tail call void @arm_heavy_mb() #11
  %conv.i.i = trunc i64 %9 to i32
  %10 = tail call i32 @llvm.bswap.i32(i32 %conv.i.i) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dst.addr.05.i, i32 %10) #11, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !312
  tail call void @arm_heavy_mb() #11
  %shr.i.i = lshr i64 %9, 32
  %conv3.i.i = trunc i64 %shr.i.i to i32
  %11 = tail call i32 @llvm.bswap.i32(i32 %conv3.i.i) #11
  %add.ptr.i.i = getelementptr i8, ptr %dst.addr.05.i, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %11) #11, !srcloc !311
  %incdec.ptr.i = getelementptr i64, ptr %src.addr.06.i, i32 1
  %incdec.ptr1.i = getelementptr i64, ptr %dst.addr.05.i, i32 1
  %dec.i = add nsw i32 %count.07.i, -1
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %while.body.i.do.body46_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

while.body.i.do.body46_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body46

do.body18:                                        ; preds = %land.lhs.true.do.body18_crit_edge, %if.then.do.body18_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @t4_ring_sq_db.__UNIQUE_ID_ddebug665, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@t4_ring_sq_db, %if.then30)) #11
          to label %do.body36 [label %if.then30], !srcloc !300

if.then30:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #13
  %pidx32 = getelementptr inbounds %struct.t4_sq, ptr %wq, i32 0, i32 14
  %12 = ptrtoint ptr %pidx32 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %pidx32, align 2
  %conv33 = zext i16 %13 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @t4_ring_sq_db.__UNIQUE_ID_ddebug665, ptr noundef nonnull @.str.61, i32 noundef %conv33) #11
  br label %do.body36

do.body36:                                        ; preds = %if.then30, %do.body18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !313
  tail call void @arm_heavy_mb() #11
  %bar2_qid40 = getelementptr inbounds %struct.t4_sq, ptr %wq, i32 0, i32 9
  %14 = ptrtoint ptr %bar2_qid40 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bar2_qid40, align 4
  %shl41 = shl i32 %15, 15
  %or = or i32 %shl41, %conv
  %16 = tail call i32 @llvm.bswap.i32(i32 %or)
  %17 = ptrtoint ptr %bar2_va to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bar2_va, align 8
  %add.ptr44 = getelementptr i8, ptr %18, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44, i32 %16) #11, !srcloc !311
  br label %do.body46

do.body46:                                        ; preds = %do.body36, %while.body.i.do.body46_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !314
  tail call void @arm_heavy_mb() #11
  br label %return

do.body49:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !315
  tail call void @arm_heavy_mb() #11
  %qid = getelementptr inbounds %struct.t4_sq, ptr %wq, i32 0, i32 10
  %19 = ptrtoint ptr %qid to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %qid, align 8
  %shl52 = shl i32 %20, 15
  %conv53 = zext i16 %inc to i32
  %or55 = or i32 %shl52, %conv53
  %21 = tail call i32 @llvm.bswap.i32(i32 %or55)
  %db = getelementptr inbounds %struct.t4_wq, ptr %wq, i32 0, i32 2
  %22 = ptrtoint ptr %db to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %db, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #11, !srcloc !311
  br label %return

return:                                           ; preds = %do.body49, %do.body46
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ring_kernel_sq_db(ptr noundef %qhp, i16 noundef zeroext %inc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rhp = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 2
  %0 = ptrtoint ptr %rhp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rhp, align 4
  %qps = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %qps) #11
  %lock = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lock) #11
  %2 = ptrtoint ptr %rhp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rhp, align 4
  %db_state = getelementptr inbounds %struct.c4iw_dev, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %db_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %db_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp6 = icmp eq i32 %5, 0
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !309
  tail call void @arm_heavy_mb() #11
  %bar2_va.i = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 5, i32 0, i32 6
  %6 = ptrtoint ptr %bar2_va.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bar2_va.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %do.body49.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  %conv.i = zext i16 %inc to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @t4_ring_sq_db.__UNIQUE_ID_ddebug665, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ring_kernel_sq_db, %if.then30.i)) #11
          to label %do.body36.i [label %if.then30.i], !srcloc !300

if.then30.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %pidx32.i = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 5, i32 0, i32 14
  %8 = ptrtoint ptr %pidx32.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %pidx32.i, align 2
  %conv33.i = zext i16 %9 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @t4_ring_sq_db.__UNIQUE_ID_ddebug665, ptr noundef nonnull @.str.61, i32 noundef %conv33.i) #11
  br label %do.body36.i

do.body36.i:                                      ; preds = %if.then30.i, %if.then.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !313
  tail call void @arm_heavy_mb() #11
  %bar2_qid40.i = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 5, i32 0, i32 9
  %10 = ptrtoint ptr %bar2_qid40.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bar2_qid40.i, align 4
  %shl41.i = shl i32 %11, 15
  %or.i = or i32 %shl41.i, %conv.i
  %12 = tail call i32 @llvm.bswap.i32(i32 %or.i) #11
  %13 = ptrtoint ptr %bar2_va.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bar2_va.i, align 8
  %add.ptr44.i = getelementptr i8, ptr %14, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44.i, i32 %12) #11, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !314
  tail call void @arm_heavy_mb() #11
  br label %if.end

do.body49.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !315
  tail call void @arm_heavy_mb() #11
  %qid.i = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 5, i32 0, i32 10
  %15 = ptrtoint ptr %qid.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %qid.i, align 8
  %shl52.i = shl i32 %16, 15
  %conv53.i = zext i16 %inc to i32
  %or55.i = or i32 %shl52.i, %conv53.i
  %17 = tail call i32 @llvm.bswap.i32(i32 %or55.i) #11
  %db.i = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 5, i32 2
  %18 = ptrtoint ptr %db.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %db.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #11, !srcloc !311
  br label %if.end

if.else:                                          ; preds = %entry
  %db_fc_list = getelementptr inbounds %struct.c4iw_dev, ptr %3, i32 0, i32 12
  %db_fc_entry = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 1
  %20 = ptrtoint ptr %db_fc_entry to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %db_fc_entry, align 4
  %cmp.i.not.i = icmp eq ptr %21, %db_fc_entry
  br i1 %cmp.i.not.i, label %if.then.i1, label %if.else.add_to_fc_list.exit_crit_edge

if.else.add_to_fc_list.exit_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %add_to_fc_list.exit

if.then.i1:                                       ; preds = %if.else
  %prev.i.i = getelementptr inbounds %struct.c4iw_dev, ptr %3, i32 0, i32 12, i32 1
  %22 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %db_fc_entry, ptr noundef %23, ptr noundef %db_fc_list) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i1.add_to_fc_list.exit_crit_edge

if.then.i1.add_to_fc_list.exit_crit_edge:         ; preds = %if.then.i1
  call void @__sanitizer_cov_trace_pc() #13
  br label %add_to_fc_list.exit

if.end.i.i.i:                                     ; preds = %if.then.i1
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %db_fc_entry, ptr %prev.i.i, align 4
  %25 = ptrtoint ptr %db_fc_entry to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %db_fc_list, ptr %db_fc_entry, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 1, i32 1
  %26 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev3.i.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %db_fc_entry, ptr %23, align 4
  br label %add_to_fc_list.exit

add_to_fc_list.exit:                              ; preds = %if.end.i.i.i, %if.then.i1.add_to_fc_list.exit_crit_edge, %if.else.add_to_fc_list.exit_crit_edge
  %wq_pidx_inc = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 5, i32 0, i32 16
  %28 = ptrtoint ptr %wq_pidx_inc to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %wq_pidx_inc, align 2
  %add = add i16 %29, %inc
  store i16 %add, ptr %wq_pidx_inc, align 2
  br label %if.end

if.end:                                           ; preds = %add_to_fc_list.exit, %do.body49.i, %do.body36.i
  tail call void @_raw_spin_unlock(ptr noundef %lock) #11
  %30 = ptrtoint ptr %rhp to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rhp, align 4
  %qps15 = getelementptr inbounds %struct.c4iw_dev, ptr %31, i32 0, i32 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %qps15, i32 noundef %call2) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @c4iw_post_receive(ptr noundef %ibqp, ptr noundef %wr, ptr nocapture noundef writeonly %bad_wr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.c4iw_qp, ptr %ibqp, i32 0, i32 6
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %wq = getelementptr inbounds %struct.c4iw_qp, ptr %ibqp, i32 0, i32 5
  %flushed = getelementptr inbounds %struct.c4iw_qp, ptr %ibqp, i32 0, i32 5, i32 4
  %0 = ptrtoint ptr %flushed to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flushed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #11
  %tobool.not3.i = icmp eq ptr %wr, null
  br i1 %tobool.not3.i, label %if.then.cleanup_crit_edge, label %while.body.lr.ph.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.body.lr.ph.i:                               ; preds = %if.then
  %recv_cq.i.i = getelementptr inbounds %struct.ib_qp, ptr %ibqp, i32 0, i32 3
  %qid.i.i = getelementptr inbounds %struct.c4iw_qp, ptr %ibqp, i32 0, i32 5, i32 0, i32 10
  br label %while.body.i

while.body.i:                                     ; preds = %complete_rq_drain_wr.exit.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %wr.addr.04.i = phi ptr [ %wr, %while.body.lr.ph.i ], [ %37, %complete_rq_drain_wr.exit.i.while.body.i_crit_edge ]
  %2 = ptrtoint ptr %recv_cq.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %recv_cq.i.i, align 4
  %4 = getelementptr inbounds %struct.ib_recv_wr, ptr %wr.addr.04.i, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %4, align 8
  %7 = ptrtoint ptr %qid.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %qid.i.i, align 8
  %shl.i.i = shl i32 %8, 12
  %or.i.i = or i32 %shl.i.i, 3459
  %lock.i.i = getelementptr inbounds %struct.c4iw_cq, ptr %3, i32 0, i32 4
  %call4.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #11
  %gen.i.i = getelementptr inbounds %struct.c4iw_cq, ptr %3, i32 0, i32 3, i32 20
  %9 = ptrtoint ptr %gen.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %gen.i.i, align 8
  %conv7.i.i = zext i8 %10 to i64
  %shl8.i.i = shl i64 %conv7.i.i, 63
  %sw_queue.i.i = getelementptr inbounds %struct.c4iw_cq, ptr %3, i32 0, i32 3, i32 3
  %11 = ptrtoint ptr %sw_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sw_queue.i.i, align 4
  %sw_pidx.i.i = getelementptr inbounds %struct.c4iw_cq, ptr %3, i32 0, i32 3, i32 16
  %13 = ptrtoint ptr %sw_pidx.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %sw_pidx.i.i, align 8
  %idxprom.i.i = zext i16 %14 to i32
  %arrayidx.i.i = getelementptr %struct.t4_cqe, ptr %12, i32 %idxprom.i.i
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or.i.i, ptr %arrayidx.i.i, align 8
  %cqe.sroa.5.0.arrayidx.sroa_idx.i.i = getelementptr inbounds i8, ptr %arrayidx.i.i, i32 4
  %16 = ptrtoint ptr %cqe.sroa.5.0.arrayidx.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %cqe.sroa.5.0.arrayidx.sroa_idx.i.i, align 4
  %cqe.sroa.540.0.arrayidx.sroa_idx.i.i = getelementptr inbounds i8, ptr %arrayidx.i.i, i32 8
  %17 = ptrtoint ptr %cqe.sroa.540.0.arrayidx.sroa_idx.i.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %6, ptr %cqe.sroa.540.0.arrayidx.sroa_idx.i.i, align 8
  %cqe.sroa.6.0.arrayidx.sroa_idx.i.i = getelementptr inbounds i8, ptr %arrayidx.i.i, i32 16
  %18 = call ptr @memset(ptr %cqe.sroa.6.0.arrayidx.sroa_idx.i.i, i32 0, i32 40)
  %cqe.sroa.641.0.arrayidx.sroa_idx.i.i = getelementptr inbounds i8, ptr %arrayidx.i.i, i32 56
  %19 = ptrtoint ptr %cqe.sroa.641.0.arrayidx.sroa_idx.i.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %shl8.i.i, ptr %cqe.sroa.641.0.arrayidx.sroa_idx.i.i, align 8
  %sw_in_use.i.i.i = getelementptr inbounds %struct.c4iw_cq, ptr %3, i32 0, i32 3, i32 18
  %20 = ptrtoint ptr %sw_in_use.i.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %sw_in_use.i.i.i, align 4
  %inc.i.i.i = add i16 %21, 1
  store i16 %inc.i.i.i, ptr %sw_in_use.i.i.i, align 4
  %size.i.i.i = getelementptr inbounds %struct.c4iw_cq, ptr %3, i32 0, i32 3, i32 14
  %22 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %size.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i.i.i, i16 %23)
  %cmp.i.i.i = icmp eq i16 %inc.i.i.i, %23
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %cqid.i.i.i = getelementptr inbounds %struct.c4iw_cq, ptr %3, i32 0, i32 3, i32 11
  %24 = ptrtoint ptr %cqid.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cqid.i.i.i, align 8
  %call.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.55, i32 noundef %25) #14
  %error.i.i.i = getelementptr inbounds %struct.c4iw_cq, ptr %3, i32 0, i32 3, i32 21
  %26 = ptrtoint ptr %error.i.i.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %error.i.i.i, align 1
  %27 = ptrtoint ptr %sw_in_use.i.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %sw_in_use.i.i.i, align 4
  %dec.i.i.i = add i16 %28, -1
  store i16 %dec.i.i.i, ptr %sw_in_use.i.i.i, align 4
  br label %t4_swcq_produce.exit.i.i

if.end.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %29 = ptrtoint ptr %sw_pidx.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %sw_pidx.i.i, align 8
  %inc5.i.i.i = add i16 %30, 1
  call void @__sanitizer_cov_trace_cmp2(i16 %inc5.i.i.i, i16 %23)
  %cmp9.i.i.i = icmp eq i16 %inc5.i.i.i, %23
  %spec.store.select.i.i.i = select i1 %cmp9.i.i.i, i16 0, i16 %inc5.i.i.i
  %31 = ptrtoint ptr %sw_pidx.i.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %spec.store.select.i.i.i, ptr %sw_pidx.i.i, align 8
  br label %t4_swcq_produce.exit.i.i

t4_swcq_produce.exit.i.i:                         ; preds = %if.end.i.i.i, %do.end.i.i.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call4.i.i) #11
  %flags.i.i.i = getelementptr inbounds %struct.c4iw_cq, ptr %3, i32 0, i32 3, i32 23
  %call.i43.i.i = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %flags.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i43.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i43.i.i, 0
  br i1 %tobool.not.i.i, label %t4_swcq_produce.exit.i.i.complete_rq_drain_wr.exit.i_crit_edge, label %do.body13.i.i

t4_swcq_produce.exit.i.i.complete_rq_drain_wr.exit.i_crit_edge: ; preds = %t4_swcq_produce.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %complete_rq_drain_wr.exit.i

do.body13.i.i:                                    ; preds = %t4_swcq_produce.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %comp_handler_lock.i.i = getelementptr inbounds %struct.c4iw_cq, ptr %3, i32 0, i32 5
  %call20.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %comp_handler_lock.i.i) #11
  %comp_handler.i.i = getelementptr inbounds %struct.ib_cq, ptr %3, i32 0, i32 2
  %32 = ptrtoint ptr %comp_handler.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %comp_handler.i.i, align 8
  %cq_context.i.i = getelementptr inbounds %struct.ib_cq, ptr %3, i32 0, i32 4
  %34 = ptrtoint ptr %cq_context.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cq_context.i.i, align 8
  tail call void %33(ptr noundef %3, ptr noundef %35) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %comp_handler_lock.i.i, i32 noundef %call20.i.i) #11
  br label %complete_rq_drain_wr.exit.i

complete_rq_drain_wr.exit.i:                      ; preds = %do.body13.i.i, %t4_swcq_produce.exit.i.i.complete_rq_drain_wr.exit.i_crit_edge
  %36 = ptrtoint ptr %wr.addr.04.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %wr.addr.04.i, align 8
  %tobool.not.i = icmp eq ptr %37, null
  br i1 %tobool.not.i, label %complete_rq_drain_wr.exit.i.cleanup_crit_edge, label %complete_rq_drain_wr.exit.i.while.body.i_crit_edge

complete_rq_drain_wr.exit.i.while.body.i_crit_edge: ; preds = %complete_rq_drain_wr.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

complete_rq_drain_wr.exit.i.cleanup_crit_edge:    ; preds = %complete_rq_drain_wr.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %size.i = getelementptr inbounds %struct.c4iw_qp, ptr %ibqp, i32 0, i32 5, i32 1, i32 13
  %38 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %size.i, align 8
  %conv.i = zext i16 %39 to i32
  %in_use.i = getelementptr inbounds %struct.c4iw_qp, ptr %ibqp, i32 0, i32 5, i32 1, i32 12
  %40 = ptrtoint ptr %in_use.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %in_use.i, align 2
  %conv2.i = zext i16 %41 to i32
  %42 = xor i32 %conv2.i, -1
  %sub3.i = add nsw i32 %42, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub3.i)
  %cmp9 = icmp eq i32 %sub3.i, 0
  br i1 %cmp9, label %if.then11, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end
  %tobool14.not183 = icmp eq ptr %wr, null
  br i1 %tobool14.not183, label %while.cond.preheader.while.end_crit_edge, label %while.body.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %rq = getelementptr inbounds %struct.c4iw_qp, ptr %ibqp, i32 0, i32 5, i32 1
  %wq_pidx = getelementptr inbounds %struct.c4iw_qp, ptr %ibqp, i32 0, i32 5, i32 1, i32 16
  %sw_rq = getelementptr inbounds %struct.c4iw_qp, ptr %ibqp, i32 0, i32 5, i32 1, i32 3
  %pidx = getelementptr inbounds %struct.c4iw_qp, ptr %ibqp, i32 0, i32 5, i32 1, i32 15
  %rhp = getelementptr inbounds %struct.c4iw_qp, ptr %ibqp, i32 0, i32 2
  %num_sge229 = getelementptr inbounds %struct.ib_recv_wr, ptr %wr, i32 0, i32 3
  %43 = ptrtoint ptr %num_sge229 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %num_sge229, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %44)
  %cmp15230 = icmp sgt i32 %44, 4
  br i1 %cmp15230, label %while.body.lr.ph.while.end.sink.split_crit_edge, label %while.body.lr.ph.if.end18_crit_edge

while.body.lr.ph.if.end18_crit_edge:              ; preds = %while.body.lr.ph
  br label %if.end18

while.body.lr.ph.while.end.sink.split_crit_edge:  ; preds = %while.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.sink.split

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #11
  %45 = ptrtoint ptr %bad_wr to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %wr, ptr %bad_wr, align 4
  br label %cleanup

while.body:                                       ; preds = %t4_rq_produce.exit
  %dec = add i32 %num_wrs.0185235, -1
  %num_sge = getelementptr inbounds %struct.ib_recv_wr, ptr %122, i32 0, i32 3
  %46 = ptrtoint ptr %num_sge to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %num_sge, align 4
  %cmp15 = icmp sgt i32 %47, 4
  br i1 %cmp15, label %while.body.while.end.sink.split_crit_edge, label %while.body.if.end18_crit_edge

while.body.if.end18_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

while.body.while.end.sink.split_crit_edge:        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.sink.split

if.end18:                                         ; preds = %while.body.if.end18_crit_edge, %while.body.lr.ph.if.end18_crit_edge
  %48 = phi i32 [ %47, %while.body.if.end18_crit_edge ], [ %44, %while.body.lr.ph.if.end18_crit_edge ]
  %num_sge236 = phi ptr [ %num_sge, %while.body.if.end18_crit_edge ], [ %num_sge229, %while.body.lr.ph.if.end18_crit_edge ]
  %num_wrs.0185235 = phi i32 [ %dec, %while.body.if.end18_crit_edge ], [ %sub3.i, %while.body.lr.ph.if.end18_crit_edge ]
  %idx.0186233 = phi i16 [ %add83, %while.body.if.end18_crit_edge ], [ 0, %while.body.lr.ph.if.end18_crit_edge ]
  %wr.addr.0188231 = phi ptr [ %122, %while.body.if.end18_crit_edge ], [ %wr, %while.body.lr.ph.if.end18_crit_edge ]
  %49 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rq, align 8
  %51 = ptrtoint ptr %wq_pidx to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %wq_pidx, align 2
  %conv22 = zext i16 %52 to i32
  %mul = shl nuw nsw i32 %conv22, 6
  %add.ptr = getelementptr i8, ptr %50, i32 %mul
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_wrs.0185235)
  %tobool23.not = icmp eq i32 %num_wrs.0185235, 0
  br i1 %tobool23.not, label %if.end18.while.end.sink.split_crit_edge, label %if.then24

if.end18.while.end.sink.split_crit_edge:          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.sink.split

if.then24:                                        ; preds = %if.end18
  %53 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %size.i, align 8
  %idxprom.i = zext i16 %54 to i32
  %arrayidx.i = getelementptr %union.t4_recv_wr, ptr %50, i32 %idxprom.i
  %isgl.i = getelementptr inbounds %struct.fw_ri_recv_wr, ptr %add.ptr, i32 0, i32 5
  %sg_list.i = getelementptr inbounds %struct.ib_recv_wr, ptr %wr.addr.0188231, i32 0, i32 2
  %55 = ptrtoint ptr %sg_list.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %sg_list.i, align 8
  %cmp.i.i = icmp eq ptr %isgl.i, %arrayidx.i
  %spec.select.i.i = select i1 %cmp.i.i, ptr %50, ptr %isgl.i
  %sge.i.i = getelementptr inbounds %struct.fw_ri_isgl, ptr %spec.select.i.i, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp158.i.i = icmp sgt i32 %48, 0
  br i1 %cmp158.i.i, label %if.then24.for.body.i.i_crit_edge, label %if.then24.if.end29_crit_edge

if.then24.if.end29_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.then24.for.body.i.i_crit_edge:                 ; preds = %if.then24
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end4.i.i.for.body.i.i_crit_edge, %if.then24.for.body.i.i_crit_edge
  %flitp.061.i.i = phi ptr [ %flitp.2.i.i, %if.end4.i.i.for.body.i.i_crit_edge ], [ %sge.i.i, %if.then24.for.body.i.i_crit_edge ]
  %plen.060.i.i = phi i32 [ %add.i.i, %if.end4.i.i.for.body.i.i_crit_edge ], [ 0, %if.then24.for.body.i.i_crit_edge ]
  %i.059.i.i = phi i32 [ %inc.i.i, %if.end4.i.i.for.body.i.i_crit_edge ], [ 0, %if.then24.for.body.i.i_crit_edge ]
  %length.i.i = getelementptr %struct.ib_sge, ptr %56, i32 %i.059.i.i, i32 1
  %57 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %length.i.i, align 8
  %add.i.i = add i32 %58, %plen.060.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %plen.060.i.i)
  %cmp2.i.i = icmp ult i32 %add.i.i, %plen.060.i.i
  br i1 %cmp2.i.i, label %for.body.i.i.while.end.sink.split_crit_edge, label %if.end4.i.i

for.body.i.i.while.end.sink.split_crit_edge:      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.sink.split

if.end4.i.i:                                      ; preds = %for.body.i.i
  %arrayidx.i.i154 = getelementptr %struct.ib_sge, ptr %56, i32 %i.059.i.i
  %lkey.i.i = getelementptr %struct.ib_sge, ptr %56, i32 %i.059.i.i, i32 2
  %59 = ptrtoint ptr %lkey.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %lkey.i.i, align 4
  %conv.i.i = zext i32 %60 to i64
  %shl.i.i155 = shl nuw i64 %conv.i.i, 32
  %conv11.i.i = zext i32 %58 to i64
  %or.i.i156 = or i64 %shl.i.i155, %conv11.i.i
  %61 = ptrtoint ptr %flitp.061.i.i to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %or.i.i156, ptr %flitp.061.i.i, align 8
  %incdec.ptr.i.i = getelementptr i64, ptr %flitp.061.i.i, i32 1
  %cmp12.i.i = icmp eq ptr %incdec.ptr.i.i, %arrayidx.i
  %spec.select55.i.i = select i1 %cmp12.i.i, ptr %50, ptr %incdec.ptr.i.i
  %62 = ptrtoint ptr %arrayidx.i.i154 to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %arrayidx.i.i154, align 8
  %64 = ptrtoint ptr %spec.select55.i.i to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %63, ptr %spec.select55.i.i, align 8
  %incdec.ptr17.i.i = getelementptr i64, ptr %spec.select55.i.i, i32 1
  %cmp18.i.i = icmp eq ptr %incdec.ptr17.i.i, %arrayidx.i
  %flitp.2.i.i = select i1 %cmp18.i.i, ptr %50, ptr %incdec.ptr17.i.i
  %inc.i.i = add nuw nsw i32 %i.059.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %48
  br i1 %exitcond.not.i.i, label %if.end4.i.i.if.end29_crit_edge, label %if.end4.i.i.for.body.i.i_crit_edge

if.end4.i.i.for.body.i.i_crit_edge:               ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

if.end4.i.i.if.end29_crit_edge:                   ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.end29:                                         ; preds = %if.end4.i.i.if.end29_crit_edge, %if.then24.if.end29_crit_edge
  %flitp.0.lcssa.i.i = phi ptr [ %sge.i.i, %if.then24.if.end29_crit_edge ], [ %flitp.2.i.i, %if.end4.i.i.if.end29_crit_edge ]
  %65 = ptrtoint ptr %flitp.0.lcssa.i.i to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 0, ptr %flitp.0.lcssa.i.i, align 8
  %66 = ptrtoint ptr %spec.select.i.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 -125, ptr %spec.select.i.i, align 8
  %r1.i.i = getelementptr inbounds %struct.fw_ri_isgl, ptr %spec.select.i.i, i32 0, i32 1
  %67 = ptrtoint ptr %r1.i.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %r1.i.i, align 1
  %conv22.i.i = trunc i32 %48 to i16
  %nsge.i.i = getelementptr inbounds %struct.fw_ri_isgl, ptr %spec.select.i.i, i32 0, i32 2
  %68 = ptrtoint ptr %nsge.i.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %conv22.i.i, ptr %nsge.i.i, align 2
  %r2.i.i = getelementptr inbounds %struct.fw_ri_isgl, ptr %spec.select.i.i, i32 0, i32 3
  %69 = ptrtoint ptr %r2.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %r2.i.i, align 4
  %70 = ptrtoint ptr %num_sge236 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %num_sge236, align 4
  %72 = trunc i32 %71 to i8
  %conv.i157 = add i8 %72, 1
  %73 = getelementptr inbounds %struct.ib_recv_wr, ptr %wr.addr.0188231, i32 0, i32 1
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %73, align 8
  %76 = ptrtoint ptr %sw_rq to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %sw_rq, align 4
  %78 = ptrtoint ptr %pidx to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %pidx, align 4
  %idxprom = zext i16 %79 to i32
  %arrayidx = getelementptr %struct.t4_swrqe, ptr %77, i32 %idxprom
  %80 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 %75, ptr %arrayidx, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @c4iw_wr_log to i32))
  %81 = load i32, ptr @c4iw_wr_log, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool34.not = icmp eq i32 %81, 0
  br i1 %tobool34.not, label %if.end29.if.end55_crit_edge, label %if.then35

if.end29.if.end55_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end55

if.then35:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  %82 = ptrtoint ptr %rhp to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %rhp, align 4
  %ports = getelementptr inbounds %struct.c4iw_dev, ptr %83, i32 0, i32 1, i32 8, i32 3
  %84 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ports, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %85, align 4
  %call37 = tail call i64 @cxgb4_read_sge_timestamp(ptr noundef %87) #11
  %88 = ptrtoint ptr %sw_rq to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %sw_rq, align 4
  %90 = ptrtoint ptr %pidx to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %pidx, align 4
  %idxprom44 = zext i16 %91 to i32
  %sge_ts = getelementptr %struct.t4_swrqe, ptr %89, i32 %idxprom44, i32 2
  %92 = ptrtoint ptr %sge_ts to i32
  call void @__asan_store8_noabort(i32 %92)
  store i64 %call37, ptr %sge_ts, align 8
  %call46 = tail call i64 @ktime_get() #11
  %93 = ptrtoint ptr %sw_rq to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %sw_rq, align 4
  %95 = ptrtoint ptr %pidx to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %pidx, align 4
  %idxprom53 = zext i16 %96 to i32
  %host_time = getelementptr %struct.t4_swrqe, ptr %94, i32 %idxprom53, i32 1
  %97 = ptrtoint ptr %host_time to i32
  call void @__asan_store8_noabort(i32 %97)
  store i64 %call46, ptr %host_time, align 8
  br label %if.end55

if.end55:                                         ; preds = %if.then35, %if.end29.if.end55_crit_edge
  %98 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 23, ptr %add.ptr, align 8
  %r1 = getelementptr inbounds %struct.fw_ri_recv_wr, ptr %add.ptr, i32 0, i32 1
  %99 = ptrtoint ptr %r1 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 0, ptr %r1, align 1
  %100 = ptrtoint ptr %pidx to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %pidx, align 4
  %wrid = getelementptr inbounds %struct.fw_ri_recv_wr, ptr %add.ptr, i32 0, i32 2
  %102 = ptrtoint ptr %wrid to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 %101, ptr %wrid, align 2
  %r2 = getelementptr inbounds %struct.fw_ri_recv_wr, ptr %add.ptr, i32 0, i32 3
  %103 = ptrtoint ptr %r2 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 0, ptr %r2, align 4
  %arrayidx61 = getelementptr [3 x i8], ptr %r2, i32 0, i32 1
  %104 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 0, ptr %arrayidx61, align 1
  %arrayidx63 = getelementptr [3 x i8], ptr %r2, i32 0, i32 2
  %105 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 0, ptr %arrayidx63, align 2
  %len1664 = getelementptr inbounds %struct.fw_ri_recv_wr, ptr %add.ptr, i32 0, i32 4
  %106 = ptrtoint ptr %len1664 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %conv.i157, ptr %len1664, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c4iw_post_receive.__UNIQUE_ID_ddebug694, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c4iw_post_receive, %if.then71)) #11
          to label %do.end78 [label %if.then71], !srcloc !300

if.then71:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  %107 = ptrtoint ptr %73 to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %73, align 8
  %109 = ptrtoint ptr %pidx to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %pidx, align 4
  %conv75 = zext i16 %110 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @c4iw_post_receive.__UNIQUE_ID_ddebug694, ptr noundef nonnull @.str.12, i64 noundef %108, i32 noundef %conv75) #11
  br label %do.end78

do.end78:                                         ; preds = %if.then71, %if.end55
  %111 = ptrtoint ptr %in_use.i to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %in_use.i, align 2
  %inc.i = add i16 %112, 1
  store i16 %inc.i, ptr %in_use.i, align 2
  %113 = ptrtoint ptr %pidx to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %pidx, align 4
  %inc2.i = add i16 %114, 1
  %115 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %size.i, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %inc2.i, i16 %116)
  %cmp.i = icmp eq i16 %inc2.i, %116
  %spec.store.select.i = select i1 %cmp.i, i16 0, i16 %inc2.i
  %117 = ptrtoint ptr %pidx to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 %spec.store.select.i, ptr %pidx, align 4
  %conv8.i = zext i8 %conv.i157 to i16
  %mul.i = shl nuw nsw i16 %conv8.i, 4
  %sub.i = add nuw nsw i16 %mul.i, 63
  %div40.i = lshr i16 %sub.i, 6
  %118 = ptrtoint ptr %wq_pidx to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %wq_pidx, align 2
  %add11.i = add i16 %119, %div40.i
  %conv15.i = zext i16 %add11.i to i32
  %conv18.i = zext i16 %116 to i32
  %mul19.i = shl nuw nsw i32 %conv18.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul19.i, i32 %conv15.i)
  %cmp20.not.i = icmp ugt i32 %mul19.i, %conv15.i
  br i1 %cmp20.not.i, label %do.end78.t4_rq_produce.exit_crit_edge, label %if.then22.i

do.end78.t4_rq_produce.exit_crit_edge:            ; preds = %do.end78
  call void @__sanitizer_cov_trace_pc() #13
  br label %t4_rq_produce.exit

if.then22.i:                                      ; preds = %do.end78
  call void @__sanitizer_cov_trace_pc() #13
  %rem.i = urem i32 %conv15.i, %mul19.i
  %conv30.i = trunc i32 %rem.i to i16
  br label %t4_rq_produce.exit

t4_rq_produce.exit:                               ; preds = %if.then22.i, %do.end78.t4_rq_produce.exit_crit_edge
  %storemerge.i = phi i16 [ %conv30.i, %if.then22.i ], [ %add11.i, %do.end78.t4_rq_produce.exit_crit_edge ]
  %120 = ptrtoint ptr %wq_pidx to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 %storemerge.i, ptr %wq_pidx, align 2
  %add83 = add i16 %div40.i, %idx.0186233
  %121 = ptrtoint ptr %wr.addr.0188231 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %wr.addr.0188231, align 8
  %tobool14.not = icmp eq ptr %122, null
  br i1 %tobool14.not, label %t4_rq_produce.exit.while.end_crit_edge, label %while.body

t4_rq_produce.exit.while.end_crit_edge:           ; preds = %t4_rq_produce.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end.sink.split:                             ; preds = %for.body.i.i.while.end.sink.split_crit_edge, %if.end18.while.end.sink.split_crit_edge, %while.body.while.end.sink.split_crit_edge, %while.body.lr.ph.while.end.sink.split_crit_edge
  %wr.addr.0188227 = phi ptr [ %wr, %while.body.lr.ph.while.end.sink.split_crit_edge ], [ %wr.addr.0188231, %for.body.i.i.while.end.sink.split_crit_edge ], [ %wr.addr.0188231, %if.end18.while.end.sink.split_crit_edge ], [ %122, %while.body.while.end.sink.split_crit_edge ]
  %idx.0186224 = phi i16 [ 0, %while.body.lr.ph.while.end.sink.split_crit_edge ], [ %idx.0186233, %for.body.i.i.while.end.sink.split_crit_edge ], [ %idx.0186233, %if.end18.while.end.sink.split_crit_edge ], [ %add83, %while.body.while.end.sink.split_crit_edge ]
  %wqe.1.ph = phi ptr [ null, %while.body.lr.ph.while.end.sink.split_crit_edge ], [ %add.ptr, %for.body.i.i.while.end.sink.split_crit_edge ], [ %add.ptr, %if.end18.while.end.sink.split_crit_edge ], [ %add.ptr, %while.body.while.end.sink.split_crit_edge ]
  %err.2.ph = phi i32 [ -22, %while.body.lr.ph.while.end.sink.split_crit_edge ], [ -90, %for.body.i.i.while.end.sink.split_crit_edge ], [ -12, %if.end18.while.end.sink.split_crit_edge ], [ -22, %while.body.while.end.sink.split_crit_edge ]
  %123 = ptrtoint ptr %bad_wr to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %wr.addr.0188227, ptr %bad_wr, align 4
  br label %while.end

while.end:                                        ; preds = %while.end.sink.split, %t4_rq_produce.exit.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %idx.0176 = phi i16 [ 0, %while.cond.preheader.while.end_crit_edge ], [ %idx.0186224, %while.end.sink.split ], [ %add83, %t4_rq_produce.exit.while.end_crit_edge ]
  %wqe.1 = phi ptr [ null, %while.cond.preheader.while.end_crit_edge ], [ %wqe.1.ph, %while.end.sink.split ], [ %add.ptr, %t4_rq_produce.exit.while.end_crit_edge ]
  %err.2 = phi i32 [ 0, %while.cond.preheader.while.end_crit_edge ], [ %err.2.ph, %while.end.sink.split ], [ 0, %t4_rq_produce.exit.while.end_crit_edge ]
  %rhp85 = getelementptr inbounds %struct.c4iw_qp, ptr %ibqp, i32 0, i32 2
  %124 = ptrtoint ptr %rhp85 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %rhp85, align 4
  %status_page = getelementptr inbounds %struct.c4iw_dev, ptr %125, i32 0, i32 1, i32 15
  %126 = ptrtoint ptr %status_page to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %status_page, align 8
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %127, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %129)
  %tobool87.not = icmp eq i8 %129, 0
  br i1 %tobool87.not, label %if.then88, label %if.else91

if.then88:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @t4_ring_rq_db(ptr noundef %wq, i16 noundef zeroext %idx.0176, ptr noundef %wqe.1)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #11
  br label %cleanup

if.else91:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #11
  tail call fastcc void @ring_kernel_rq_db(ptr noundef %ibqp, i16 noundef zeroext %idx.0176)
  br label %cleanup

cleanup:                                          ; preds = %if.else91, %if.then88, %if.then11, %complete_rq_drain_wr.exit.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then11 ], [ %err.2, %if.else91 ], [ %err.2, %if.then88 ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %complete_rq_drain_wr.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @t4_ring_rq_db(ptr nocapture noundef readonly %wq, i16 noundef zeroext %inc, ptr noundef readonly %wqe) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !316
  tail call void @arm_heavy_mb() #11
  %bar2_va = getelementptr inbounds %struct.t4_wq, ptr %wq, i32 0, i32 1, i32 4
  %0 = ptrtoint ptr %bar2_va to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bar2_va, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body49, label %if.then

if.then:                                          ; preds = %entry
  %conv = zext i16 %inc to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %inc)
  %cmp = icmp eq i16 %inc, 1
  br i1 %cmp, label %land.lhs.true, label %if.then.do.body18_crit_edge

if.then.do.body18_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body18

land.lhs.true:                                    ; preds = %if.then
  %bar2_qid = getelementptr inbounds %struct.t4_wq, ptr %wq, i32 0, i32 1, i32 7
  %2 = ptrtoint ptr %bar2_qid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bar2_qid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp3 = icmp ne i32 %3, 0
  %tobool6.not = icmp eq ptr %wqe, null
  %or.cond = or i1 %tobool6.not, %cmp3
  br i1 %or.cond, label %land.lhs.true.do.body18_crit_edge, label %do.body8

land.lhs.true.do.body18_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body18

do.body8:                                         ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @t4_ring_rq_db.__UNIQUE_ID_ddebug666, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@t4_ring_rq_db, %if.then12)) #11
          to label %do.end15 [label %if.then12], !srcloc !300

if.then12:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #13
  %pidx = getelementptr inbounds %struct.t4_wq, ptr %wq, i32 0, i32 1, i32 15
  %4 = ptrtoint ptr %pidx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %pidx, align 4
  %conv14 = zext i16 %5 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @t4_ring_rq_db.__UNIQUE_ID_ddebug666, ptr noundef nonnull @.str.64, i32 noundef %conv14) #11
  br label %do.end15

do.end15:                                         ; preds = %if.then12, %do.body8
  %6 = ptrtoint ptr %bar2_va to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bar2_va, align 8
  %add.ptr = getelementptr i8, ptr %7, i32 64
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %do.end15
  %count.07.i = phi i32 [ 8, %do.end15 ], [ %dec.i, %while.body.i.while.body.i_crit_edge ]
  %src.addr.06.i = phi ptr [ %wqe, %do.end15 ], [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ]
  %dst.addr.05.i = phi ptr [ %add.ptr, %do.end15 ], [ %incdec.ptr1.i, %while.body.i.while.body.i_crit_edge ]
  %8 = ptrtoint ptr %src.addr.06.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %src.addr.06.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !310
  tail call void @arm_heavy_mb() #11
  %conv.i.i = trunc i64 %9 to i32
  %10 = tail call i32 @llvm.bswap.i32(i32 %conv.i.i) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dst.addr.05.i, i32 %10) #11, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !312
  tail call void @arm_heavy_mb() #11
  %shr.i.i = lshr i64 %9, 32
  %conv3.i.i = trunc i64 %shr.i.i to i32
  %11 = tail call i32 @llvm.bswap.i32(i32 %conv3.i.i) #11
  %add.ptr.i.i = getelementptr i8, ptr %dst.addr.05.i, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %11) #11, !srcloc !311
  %incdec.ptr.i = getelementptr i64, ptr %src.addr.06.i, i32 1
  %incdec.ptr1.i = getelementptr i64, ptr %dst.addr.05.i, i32 1
  %dec.i = add nsw i32 %count.07.i, -1
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %while.body.i.do.body46_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

while.body.i.do.body46_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body46

do.body18:                                        ; preds = %land.lhs.true.do.body18_crit_edge, %if.then.do.body18_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @t4_ring_rq_db.__UNIQUE_ID_ddebug667, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@t4_ring_rq_db, %if.then30)) #11
          to label %do.body36 [label %if.then30], !srcloc !300

if.then30:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #13
  %pidx32 = getelementptr inbounds %struct.t4_wq, ptr %wq, i32 0, i32 1, i32 15
  %12 = ptrtoint ptr %pidx32 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %pidx32, align 4
  %conv33 = zext i16 %13 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @t4_ring_rq_db.__UNIQUE_ID_ddebug667, ptr noundef nonnull @.str.66, i32 noundef %conv33) #11
  br label %do.body36

do.body36:                                        ; preds = %if.then30, %do.body18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !317
  tail call void @arm_heavy_mb() #11
  %bar2_qid40 = getelementptr inbounds %struct.t4_wq, ptr %wq, i32 0, i32 1, i32 7
  %14 = ptrtoint ptr %bar2_qid40 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bar2_qid40, align 4
  %shl41 = shl i32 %15, 15
  %or = or i32 %shl41, %conv
  %16 = tail call i32 @llvm.bswap.i32(i32 %or)
  %17 = ptrtoint ptr %bar2_va to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bar2_va, align 8
  %add.ptr44 = getelementptr i8, ptr %18, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44, i32 %16) #11, !srcloc !311
  br label %do.body46

do.body46:                                        ; preds = %do.body36, %while.body.i.do.body46_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !318
  tail call void @arm_heavy_mb() #11
  br label %return

do.body49:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !319
  tail call void @arm_heavy_mb() #11
  %qid = getelementptr inbounds %struct.t4_wq, ptr %wq, i32 0, i32 1, i32 8
  %19 = ptrtoint ptr %qid to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %qid, align 8
  %shl52 = shl i32 %20, 15
  %conv53 = zext i16 %inc to i32
  %or55 = or i32 %shl52, %conv53
  %21 = tail call i32 @llvm.bswap.i32(i32 %or55)
  %db = getelementptr inbounds %struct.t4_wq, ptr %wq, i32 0, i32 2
  %22 = ptrtoint ptr %db to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %db, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #11, !srcloc !311
  br label %return

return:                                           ; preds = %do.body49, %do.body46
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ring_kernel_rq_db(ptr noundef %qhp, i16 noundef zeroext %inc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rhp = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 2
  %0 = ptrtoint ptr %rhp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rhp, align 4
  %qps = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %qps) #11
  %lock = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lock) #11
  %2 = ptrtoint ptr %rhp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rhp, align 4
  %db_state = getelementptr inbounds %struct.c4iw_dev, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %db_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %db_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp6 = icmp eq i32 %5, 0
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !316
  tail call void @arm_heavy_mb() #11
  %bar2_va.i = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 5, i32 1, i32 4
  %6 = ptrtoint ptr %bar2_va.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bar2_va.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %do.body49.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  %conv.i = zext i16 %inc to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @t4_ring_rq_db.__UNIQUE_ID_ddebug667, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ring_kernel_rq_db, %if.then30.i)) #11
          to label %do.body36.i [label %if.then30.i], !srcloc !300

if.then30.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %pidx32.i = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 5, i32 1, i32 15
  %8 = ptrtoint ptr %pidx32.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %pidx32.i, align 4
  %conv33.i = zext i16 %9 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @t4_ring_rq_db.__UNIQUE_ID_ddebug667, ptr noundef nonnull @.str.66, i32 noundef %conv33.i) #11
  br label %do.body36.i

do.body36.i:                                      ; preds = %if.then30.i, %if.then.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !317
  tail call void @arm_heavy_mb() #11
  %bar2_qid40.i = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 5, i32 1, i32 7
  %10 = ptrtoint ptr %bar2_qid40.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bar2_qid40.i, align 4
  %shl41.i = shl i32 %11, 15
  %or.i = or i32 %shl41.i, %conv.i
  %12 = tail call i32 @llvm.bswap.i32(i32 %or.i) #11
  %13 = ptrtoint ptr %bar2_va.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bar2_va.i, align 8
  %add.ptr44.i = getelementptr i8, ptr %14, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44.i, i32 %12) #11, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !318
  tail call void @arm_heavy_mb() #11
  br label %if.end

do.body49.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !319
  tail call void @arm_heavy_mb() #11
  %qid.i = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 5, i32 1, i32 8
  %15 = ptrtoint ptr %qid.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %qid.i, align 8
  %shl52.i = shl i32 %16, 15
  %conv53.i = zext i16 %inc to i32
  %or55.i = or i32 %shl52.i, %conv53.i
  %17 = tail call i32 @llvm.bswap.i32(i32 %or55.i) #11
  %db.i = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 5, i32 2
  %18 = ptrtoint ptr %db.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %db.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #11, !srcloc !311
  br label %if.end

if.else:                                          ; preds = %entry
  %db_fc_list = getelementptr inbounds %struct.c4iw_dev, ptr %3, i32 0, i32 12
  %db_fc_entry = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 1
  %20 = ptrtoint ptr %db_fc_entry to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %db_fc_entry, align 4
  %cmp.i.not.i = icmp eq ptr %21, %db_fc_entry
  br i1 %cmp.i.not.i, label %if.then.i1, label %if.else.add_to_fc_list.exit_crit_edge

if.else.add_to_fc_list.exit_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %add_to_fc_list.exit

if.then.i1:                                       ; preds = %if.else
  %prev.i.i = getelementptr inbounds %struct.c4iw_dev, ptr %3, i32 0, i32 12, i32 1
  %22 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %db_fc_entry, ptr noundef %23, ptr noundef %db_fc_list) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i1.add_to_fc_list.exit_crit_edge

if.then.i1.add_to_fc_list.exit_crit_edge:         ; preds = %if.then.i1
  call void @__sanitizer_cov_trace_pc() #13
  br label %add_to_fc_list.exit

if.end.i.i.i:                                     ; preds = %if.then.i1
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %db_fc_entry, ptr %prev.i.i, align 4
  %25 = ptrtoint ptr %db_fc_entry to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %db_fc_list, ptr %db_fc_entry, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 1, i32 1
  %26 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev3.i.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %db_fc_entry, ptr %23, align 4
  br label %add_to_fc_list.exit

add_to_fc_list.exit:                              ; preds = %if.end.i.i.i, %if.then.i1.add_to_fc_list.exit_crit_edge, %if.else.add_to_fc_list.exit_crit_edge
  %wq_pidx_inc = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 5, i32 1, i32 17
  %28 = ptrtoint ptr %wq_pidx_inc to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %wq_pidx_inc, align 8
  %add = add i16 %29, %inc
  store i16 %add, ptr %wq_pidx_inc, align 8
  br label %if.end

if.end:                                           ; preds = %add_to_fc_list.exit, %do.body49.i, %do.body36.i
  tail call void @_raw_spin_unlock(ptr noundef %lock) #11
  %30 = ptrtoint ptr %rhp to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rhp, align 4
  %qps15 = getelementptr inbounds %struct.c4iw_dev, ptr %31, i32 0, i32 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %qps15, i32 noundef %call2) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @c4iw_post_srq_recv(ptr noundef %ibsrq, ptr noundef %wr, ptr nocapture noundef writeonly %bad_wr) local_unnamed_addr #0 align 64 {
entry:
  %lwqe = alloca %union.t4_recv_wr, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %lwqe) #11
  %0 = call ptr @memset(ptr %lwqe, i32 255, i32 128)
  %lock = getelementptr inbounds %struct.c4iw_srq, ptr %ibsrq, i32 0, i32 9
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %wq = getelementptr inbounds %struct.c4iw_srq, ptr %ibsrq, i32 0, i32 3
  %size.i = getelementptr inbounds %struct.c4iw_srq, ptr %ibsrq, i32 0, i32 3, i32 13
  %1 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %size.i, align 2
  %conv.i = zext i16 %2 to i32
  %in_use.i = getelementptr inbounds %struct.c4iw_srq, ptr %ibsrq, i32 0, i32 3, i32 18
  %3 = ptrtoint ptr %in_use.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %in_use.i, align 4
  %conv1.i = zext i16 %4 to i32
  %5 = xor i32 %conv1.i, -1
  %sub2.i = add nsw i32 %5, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub2.i)
  %cmp7 = icmp eq i32 %sub2.i, 0
  br i1 %cmp7, label %if.then, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %tobool.not191 = icmp eq ptr %wr, null
  br i1 %tobool.not191, label %while.cond.preheader.if.end84_crit_edge, label %while.body.lr.ph

while.cond.preheader.if.end84_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end84

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %add.ptr.i = getelementptr inbounds %union.t4_recv_wr, ptr %lwqe, i32 1
  %isgl.i = getelementptr inbounds %struct.fw_ri_recv_wr, ptr %lwqe, i32 0, i32 5
  %sge.i.i = getelementptr inbounds %struct.fw_ri_recv_wr, ptr %lwqe, i32 1
  %r1.i.i = getelementptr inbounds %struct.fw_ri_recv_wr, ptr %lwqe, i32 0, i32 5, i32 1
  %nsge.i.i = getelementptr inbounds %struct.fw_ri_recv_wr, ptr %lwqe, i32 0, i32 5, i32 2
  %r2.i.i = getelementptr inbounds %struct.fw_ri_recv_wr, ptr %lwqe, i32 0, i32 5, i32 3
  %r1 = getelementptr inbounds %struct.fw_ri_recv_wr, ptr %lwqe, i32 0, i32 1
  %pidx = getelementptr inbounds %struct.c4iw_srq, ptr %ibsrq, i32 0, i32 3, i32 15
  %wrid = getelementptr inbounds %struct.fw_ri_recv_wr, ptr %lwqe, i32 0, i32 2
  %r2 = getelementptr inbounds %struct.fw_ri_recv_wr, ptr %lwqe, i32 0, i32 3
  %arrayidx23 = getelementptr inbounds %struct.fw_ri_recv_wr, ptr %lwqe, i32 0, i32 3, i32 1
  %arrayidx25 = getelementptr inbounds %struct.fw_ri_recv_wr, ptr %lwqe, i32 0, i32 3, i32 2
  %len1626 = getelementptr inbounds %struct.fw_ri_recv_wr, ptr %lwqe, i32 0, i32 4
  %ooo_count = getelementptr inbounds %struct.c4iw_srq, ptr %ibsrq, i32 0, i32 3, i32 23
  %pending_in_use = getelementptr inbounds %struct.c4iw_srq, ptr %ibsrq, i32 0, i32 3, i32 22
  %sw_rq = getelementptr inbounds %struct.c4iw_srq, ptr %ibsrq, i32 0, i32 3, i32 3
  %pending_wrs.i = getelementptr inbounds %struct.c4iw_srq, ptr %ibsrq, i32 0, i32 3, i32 19
  %pending_pidx.i = getelementptr inbounds %struct.c4iw_srq, ptr %ibsrq, i32 0, i32 3, i32 21
  %cidx.i = getelementptr inbounds %struct.c4iw_srq, ptr %ibsrq, i32 0, i32 3, i32 14
  %wq_pidx.i = getelementptr inbounds %struct.c4iw_srq, ptr %ibsrq, i32 0, i32 3, i32 16
  %pending_cidx.i = getelementptr inbounds %struct.c4iw_srq, ptr %ibsrq, i32 0, i32 3, i32 20
  %num_sge251 = getelementptr inbounds %struct.ib_recv_wr, ptr %wr, i32 0, i32 3
  %6 = ptrtoint ptr %num_sge251 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_sge251, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %cmp10252 = icmp sgt i32 %7, 4
  br i1 %cmp10252, label %while.body.lr.ph.while.end.sink.split_crit_edge, label %while.body.lr.ph.if.end13_crit_edge

while.body.lr.ph.if.end13_crit_edge:              ; preds = %while.body.lr.ph
  br label %if.end13

while.body.lr.ph.while.end.sink.split_crit_edge:  ; preds = %while.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.sink.split

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #11
  br label %cleanup

while.body:                                       ; preds = %if.end80
  %dec = add i32 %num_wrs.0196255, -1
  %num_sge = getelementptr inbounds %struct.ib_recv_wr, ptr %130, i32 0, i32 3
  %8 = ptrtoint ptr %num_sge to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_sge, align 4
  %cmp10 = icmp sgt i32 %9, 4
  br i1 %cmp10, label %while.body.while.end.sink.split_crit_edge, label %while.body.if.end13_crit_edge

while.body.if.end13_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

while.body.while.end.sink.split_crit_edge:        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.sink.split

if.end13:                                         ; preds = %while.body.if.end13_crit_edge, %while.body.lr.ph.if.end13_crit_edge
  %10 = phi i32 [ %9, %while.body.if.end13_crit_edge ], [ %7, %while.body.lr.ph.if.end13_crit_edge ]
  %num_sge259 = phi ptr [ %num_sge, %while.body.if.end13_crit_edge ], [ %num_sge251, %while.body.lr.ph.if.end13_crit_edge ]
  %len16.0192258 = phi i8 [ %conv.i139, %while.body.if.end13_crit_edge ], [ 0, %while.body.lr.ph.if.end13_crit_edge ]
  %idx.0193256 = phi i16 [ %idx.1, %while.body.if.end13_crit_edge ], [ 0, %while.body.lr.ph.if.end13_crit_edge ]
  %num_wrs.0196255 = phi i32 [ %dec, %while.body.if.end13_crit_edge ], [ %sub2.i, %while.body.lr.ph.if.end13_crit_edge ]
  %wr.addr.0198253 = phi ptr [ %130, %while.body.if.end13_crit_edge ], [ %wr, %while.body.lr.ph.if.end13_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_wrs.0196255)
  %tobool14.not = icmp eq i32 %num_wrs.0196255, 0
  br i1 %tobool14.not, label %if.end13.while.end.sink.split_crit_edge, label %if.then15

if.end13.while.end.sink.split_crit_edge:          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.sink.split

if.then15:                                        ; preds = %if.end13
  %sg_list.i = getelementptr inbounds %struct.ib_recv_wr, ptr %wr.addr.0198253, i32 0, i32 2
  %11 = ptrtoint ptr %sg_list.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sg_list.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp158.i.i = icmp sgt i32 %10, 0
  br i1 %cmp158.i.i, label %if.then15.for.body.i.i_crit_edge, label %if.then15.if.end20_crit_edge

if.then15.if.end20_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.then15.for.body.i.i_crit_edge:                 ; preds = %if.then15
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end4.i.i.for.body.i.i_crit_edge, %if.then15.for.body.i.i_crit_edge
  %flitp.061.i.i = phi ptr [ %flitp.2.i.i, %if.end4.i.i.for.body.i.i_crit_edge ], [ %sge.i.i, %if.then15.for.body.i.i_crit_edge ]
  %plen.060.i.i = phi i32 [ %add.i.i, %if.end4.i.i.for.body.i.i_crit_edge ], [ 0, %if.then15.for.body.i.i_crit_edge ]
  %i.059.i.i = phi i32 [ %inc.i.i, %if.end4.i.i.for.body.i.i_crit_edge ], [ 0, %if.then15.for.body.i.i_crit_edge ]
  %length.i.i = getelementptr %struct.ib_sge, ptr %12, i32 %i.059.i.i, i32 1
  %13 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %length.i.i, align 8
  %add.i.i = add i32 %14, %plen.060.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %plen.060.i.i)
  %cmp2.i.i = icmp ult i32 %add.i.i, %plen.060.i.i
  br i1 %cmp2.i.i, label %for.body.i.i.while.end.sink.split_crit_edge, label %if.end4.i.i

for.body.i.i.while.end.sink.split_crit_edge:      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.sink.split

if.end4.i.i:                                      ; preds = %for.body.i.i
  %arrayidx.i.i = getelementptr %struct.ib_sge, ptr %12, i32 %i.059.i.i
  %lkey.i.i = getelementptr %struct.ib_sge, ptr %12, i32 %i.059.i.i, i32 2
  %15 = ptrtoint ptr %lkey.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %lkey.i.i, align 4
  %conv.i.i = zext i32 %16 to i64
  %shl.i.i = shl nuw i64 %conv.i.i, 32
  %conv11.i.i = zext i32 %14 to i64
  %or.i.i = or i64 %shl.i.i, %conv11.i.i
  %17 = ptrtoint ptr %flitp.061.i.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %or.i.i, ptr %flitp.061.i.i, align 8
  %incdec.ptr.i.i = getelementptr i64, ptr %flitp.061.i.i, i32 1
  %cmp12.i.i = icmp eq ptr %incdec.ptr.i.i, %add.ptr.i
  %spec.select55.i.i = select i1 %cmp12.i.i, ptr %lwqe, ptr %incdec.ptr.i.i
  %18 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %arrayidx.i.i, align 8
  %20 = ptrtoint ptr %spec.select55.i.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %spec.select55.i.i, align 8
  %incdec.ptr.i.i.sroa.gep = getelementptr i64, ptr %flitp.061.i.i, i32 2
  %spec.select55.i.i.sroa.sel = select i1 %cmp12.i.i, ptr %isgl.i, ptr %incdec.ptr.i.i.sroa.gep
  %cmp18.i.i = icmp eq ptr %spec.select55.i.i.sroa.sel, %add.ptr.i
  %flitp.2.i.i = select i1 %cmp18.i.i, ptr %lwqe, ptr %spec.select55.i.i.sroa.sel
  %inc.i.i = add nuw nsw i32 %i.059.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %10
  br i1 %exitcond.not.i.i, label %if.end4.i.i.if.end20_crit_edge, label %if.end4.i.i.for.body.i.i_crit_edge

if.end4.i.i.for.body.i.i_crit_edge:               ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

if.end4.i.i.if.end20_crit_edge:                   ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.end20:                                         ; preds = %if.end4.i.i.if.end20_crit_edge, %if.then15.if.end20_crit_edge
  %flitp.0.lcssa.i.i = phi ptr [ %sge.i.i, %if.then15.if.end20_crit_edge ], [ %flitp.2.i.i, %if.end4.i.i.if.end20_crit_edge ]
  %21 = ptrtoint ptr %flitp.0.lcssa.i.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 0, ptr %flitp.0.lcssa.i.i, align 8
  %22 = ptrtoint ptr %isgl.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -125, ptr %isgl.i, align 8
  %23 = ptrtoint ptr %r1.i.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %r1.i.i, align 1
  %conv22.i.i = trunc i32 %10 to i16
  %24 = ptrtoint ptr %nsge.i.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv22.i.i, ptr %nsge.i.i, align 2
  %25 = ptrtoint ptr %r2.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %r2.i.i, align 4
  %26 = ptrtoint ptr %num_sge259 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_sge259, align 4
  %28 = trunc i32 %27 to i8
  %conv.i139 = add i8 %28, 1
  %29 = ptrtoint ptr %lwqe to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 23, ptr %lwqe, align 8
  %30 = ptrtoint ptr %r1 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %r1, align 1
  %31 = ptrtoint ptr %pidx to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %pidx, align 2
  %33 = ptrtoint ptr %wrid to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %wrid, align 2
  %34 = ptrtoint ptr %r2 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %r2, align 4
  %35 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %arrayidx23, align 1
  %36 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %arrayidx25, align 2
  %37 = ptrtoint ptr %len1626 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv.i139, ptr %len1626, align 1
  %38 = ptrtoint ptr %ooo_count to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %ooo_count, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %tobool29.not = icmp eq i16 %39, 0
  br i1 %tobool29.not, label %lor.lhs.false, label %if.end20.if.then39_crit_edge

if.end20.if.then39_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then39

lor.lhs.false:                                    ; preds = %if.end20
  %40 = ptrtoint ptr %pending_in_use to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %pending_in_use, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %tobool32.not = icmp eq i16 %41, 0
  br i1 %tobool32.not, label %lor.lhs.false33, label %lor.lhs.false.if.then39_crit_edge

lor.lhs.false.if.then39_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then39

lor.lhs.false33:                                  ; preds = %lor.lhs.false
  %42 = ptrtoint ptr %sw_rq to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sw_rq, align 4
  %idxprom = zext i16 %32 to i32
  %valid = getelementptr %struct.t4_swrqe, ptr %43, i32 %idxprom, i32 3
  %44 = ptrtoint ptr %valid to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %valid, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool38.not = icmp eq i32 %45, 0
  br i1 %tobool38.not, label %if.else41, label %lor.lhs.false33.if.then39_crit_edge

lor.lhs.false33.if.then39_crit_edge:              ; preds = %lor.lhs.false33
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then39

if.then39:                                        ; preds = %lor.lhs.false33.if.then39_crit_edge, %lor.lhs.false.if.then39_crit_edge, %if.end20.if.then39_crit_edge
  %46 = getelementptr inbounds %struct.ib_recv_wr, ptr %wr.addr.0198253, i32 0, i32 1
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %46, align 8
  %49 = ptrtoint ptr %pending_wrs.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pending_wrs.i, align 8
  %51 = ptrtoint ptr %pending_pidx.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %pending_pidx.i, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @defer_srq_wr.__UNIQUE_ID_ddebug695, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c4iw_post_srq_recv, %if.then.i)) #11
          to label %defer_srq_wr.exit [label %if.then.i], !srcloc !300

if.then.i:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #13
  %53 = ptrtoint ptr %cidx.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %cidx.i, align 4
  %conv.i141 = zext i16 %54 to i32
  %55 = ptrtoint ptr %pidx to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %pidx, align 2
  %conv3.i = zext i16 %56 to i32
  %57 = ptrtoint ptr %wq_pidx.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %wq_pidx.i, align 8
  %conv4.i = zext i16 %58 to i32
  %59 = ptrtoint ptr %in_use.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %in_use.i, align 4
  %conv5.i = zext i16 %60 to i32
  %61 = ptrtoint ptr %ooo_count to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %ooo_count, align 2
  %conv6.i = zext i16 %62 to i32
  %63 = ptrtoint ptr %pending_cidx.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %pending_cidx.i, align 4
  %conv7.i = zext i16 %64 to i32
  %65 = ptrtoint ptr %pending_pidx.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %pending_pidx.i, align 2
  %conv9.i = zext i16 %66 to i32
  %67 = ptrtoint ptr %pending_in_use to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %pending_in_use, align 8
  %conv10.i = zext i16 %68 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @defer_srq_wr.__UNIQUE_ID_ddebug695, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.67, i32 noundef %conv.i141, i32 noundef %conv3.i, i32 noundef %conv4.i, i32 noundef %conv5.i, i32 noundef %conv6.i, i64 noundef %48, i32 noundef %conv7.i, i32 noundef %conv9.i, i32 noundef %conv10.i) #11
  br label %defer_srq_wr.exit

defer_srq_wr.exit:                                ; preds = %if.then.i, %if.then39
  %idxprom.i = zext i16 %52 to i32
  %arrayidx.i = getelementptr %struct.t4_srq_pending_wr, ptr %50, i32 %idxprom.i
  %69 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 %48, ptr %arrayidx.i, align 8
  %len1612.i = getelementptr %struct.t4_srq_pending_wr, ptr %50, i32 %idxprom.i, i32 2
  %70 = ptrtoint ptr %len1612.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %conv.i139, ptr %len1612.i, align 8
  %wqe13.i = getelementptr %struct.t4_srq_pending_wr, ptr %50, i32 %idxprom.i, i32 1
  %conv14.i = zext i8 %conv.i139 to i32
  %mul.i = shl nuw nsw i32 %conv14.i, 4
  %71 = call ptr @memcpy(ptr %wqe13.i, ptr %lwqe, i32 %mul.i)
  %72 = ptrtoint ptr %pending_in_use to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %pending_in_use, align 8
  %inc.i.i143 = add i16 %73, 1
  store i16 %inc.i.i143, ptr %pending_in_use, align 8
  %74 = ptrtoint ptr %in_use.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %in_use.i, align 4
  %inc1.i.i = add i16 %75, 1
  store i16 %inc1.i.i, ptr %in_use.i, align 4
  %76 = ptrtoint ptr %pending_pidx.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %pending_pidx.i, align 2
  %inc2.i.i = add i16 %77, 1
  %78 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %size.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc2.i.i, i16 %79)
  %cmp.i.i = icmp eq i16 %inc2.i.i, %79
  %spec.store.select.i.i = select i1 %cmp.i.i, i16 0, i16 %inc2.i.i
  %80 = ptrtoint ptr %pending_pidx.i to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %spec.store.select.i.i, ptr %pending_pidx.i, align 2
  br label %if.end80

if.else41:                                        ; preds = %lor.lhs.false33
  %arrayidx37 = getelementptr %struct.t4_swrqe, ptr %43, i32 %idxprom
  %81 = getelementptr inbounds %struct.ib_recv_wr, ptr %wr.addr.0198253, i32 0, i32 1
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %81, align 8
  %84 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store8_noabort(i32 %84)
  store i64 %83, ptr %arrayidx37, align 8
  %85 = ptrtoint ptr %sw_rq to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %sw_rq, align 4
  %87 = ptrtoint ptr %pidx to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %pidx, align 2
  %idxprom52 = zext i16 %88 to i32
  %valid54 = getelementptr %struct.t4_swrqe, ptr %86, i32 %idxprom52, i32 3
  %89 = ptrtoint ptr %valid54 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 1, ptr %valid54, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i139)
  %tobool.not28.i = icmp eq i8 %conv.i139, 0
  br i1 %tobool.not28.i, label %if.else41.c4iw_copy_wr_to_srq.exit_crit_edge, label %while.body.lr.ph.i

if.else41.c4iw_copy_wr_to_srq.exit_crit_edge:     ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #13
  br label %c4iw_copy_wr_to_srq.exit

while.body.lr.ph.i:                               ; preds = %if.else41
  %90 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %wq, align 8
  %92 = ptrtoint ptr %wq_pidx.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %wq_pidx.i, align 8
  %conv.i145 = zext i16 %93 to i32
  %mul.i146 = shl nuw nsw i32 %conv.i145, 6
  %add.ptr.i147 = getelementptr i8, ptr %91, i32 %mul.i146
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %dst.031.i = phi ptr [ %add.ptr.i147, %while.body.lr.ph.i ], [ %dst.2.i, %while.body.i.while.body.i_crit_edge ]
  %src.030.i = phi ptr [ %lwqe, %while.body.lr.ph.i ], [ %incdec.ptr5.i, %while.body.i.while.body.i_crit_edge ]
  %len16.addr.029.i = phi i8 [ %conv.i139, %while.body.lr.ph.i ], [ %dec.i, %while.body.i.while.body.i_crit_edge ]
  %incdec.ptr.i = getelementptr i64, ptr %src.030.i, i32 1
  %94 = ptrtoint ptr %src.030.i to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %src.030.i, align 8
  %incdec.ptr1.i = getelementptr i64, ptr %dst.031.i, i32 1
  %96 = ptrtoint ptr %dst.031.i to i32
  call void @__asan_store8_noabort(i32 %96)
  store i64 %95, ptr %dst.031.i, align 8
  %97 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %wq, align 8
  %99 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %size.i, align 2
  %idxprom.i149 = zext i16 %100 to i32
  %arrayidx.i150 = getelementptr %union.t4_recv_wr, ptr %98, i32 %idxprom.i149
  %cmp.not.i = icmp ult ptr %incdec.ptr1.i, %arrayidx.i150
  %spec.select.i = select i1 %cmp.not.i, ptr %incdec.ptr1.i, ptr %98
  %incdec.ptr5.i = getelementptr i64, ptr %src.030.i, i32 2
  %101 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %incdec.ptr.i, align 8
  %incdec.ptr6.i = getelementptr i64, ptr %spec.select.i, i32 1
  %103 = ptrtoint ptr %spec.select.i to i32
  call void @__asan_store8_noabort(i32 %103)
  store i64 %102, ptr %spec.select.i, align 8
  %104 = load ptr, ptr %wq, align 8
  %105 = load i16, ptr %size.i, align 2
  %idxprom9.i = zext i16 %105 to i32
  %arrayidx10.i = getelementptr %union.t4_recv_wr, ptr %104, i32 %idxprom9.i
  %cmp11.not.i = icmp ult ptr %incdec.ptr6.i, %arrayidx10.i
  %dst.2.i = select i1 %cmp11.not.i, ptr %incdec.ptr6.i, ptr %104
  %dec.i = add i8 %len16.addr.029.i, -1
  %tobool.not.i = icmp eq i8 %dec.i, 0
  br i1 %tobool.not.i, label %while.body.i.c4iw_copy_wr_to_srq.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

while.body.i.c4iw_copy_wr_to_srq.exit_crit_edge:  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %c4iw_copy_wr_to_srq.exit

c4iw_copy_wr_to_srq.exit:                         ; preds = %while.body.i.c4iw_copy_wr_to_srq.exit_crit_edge, %if.else41.c4iw_copy_wr_to_srq.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c4iw_post_srq_recv.__UNIQUE_ID_ddebug696, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c4iw_post_srq_recv, %if.then62)) #11
          to label %do.end74 [label %if.then62], !srcloc !300

if.then62:                                        ; preds = %c4iw_copy_wr_to_srq.exit
  call void @__sanitizer_cov_trace_pc() #13
  %106 = ptrtoint ptr %cidx.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %cidx.i, align 4
  %conv64 = zext i16 %107 to i32
  %108 = ptrtoint ptr %pidx to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %pidx, align 2
  %conv67 = zext i16 %109 to i32
  %110 = ptrtoint ptr %wq_pidx.i to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %wq_pidx.i, align 8
  %conv69 = zext i16 %111 to i32
  %112 = ptrtoint ptr %in_use.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %in_use.i, align 4
  %conv71 = zext i16 %113 to i32
  %114 = ptrtoint ptr %81 to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %81, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @c4iw_post_srq_recv.__UNIQUE_ID_ddebug696, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.13, i32 noundef %conv64, i32 noundef %conv67, i32 noundef %conv69, i32 noundef %conv71, i64 noundef %115) #11
  br label %do.end74

do.end74:                                         ; preds = %if.then62, %c4iw_copy_wr_to_srq.exit
  %116 = ptrtoint ptr %in_use.i to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %in_use.i, align 4
  %inc.i = add i16 %117, 1
  store i16 %inc.i, ptr %in_use.i, align 4
  %118 = ptrtoint ptr %pidx to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %pidx, align 2
  %inc1.i = add i16 %119, 1
  %120 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %size.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc1.i, i16 %121)
  %cmp.i = icmp eq i16 %inc1.i, %121
  %spec.store.select.i = select i1 %cmp.i, i16 0, i16 %inc1.i
  %122 = ptrtoint ptr %pidx to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 %spec.store.select.i, ptr %pidx, align 2
  %conv5.i154 = zext i8 %conv.i139 to i16
  %mul.i155 = shl nuw nsw i16 %conv5.i154, 4
  %sub.i = add nuw nsw i16 %mul.i155, 63
  %div37.i = lshr i16 %sub.i, 6
  %123 = ptrtoint ptr %wq_pidx.i to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %wq_pidx.i, align 8
  %add7.i = add i16 %124, %div37.i
  %conv10.i157 = zext i16 %add7.i to i32
  %conv12.i = zext i16 %121 to i32
  %mul13.i = shl nuw nsw i32 %conv12.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul13.i, i32 %conv10.i157)
  %cmp14.not.i = icmp ugt i32 %mul13.i, %conv10.i157
  br i1 %cmp14.not.i, label %do.end74.t4_srq_produce.exit_crit_edge, label %if.then16.i

do.end74.t4_srq_produce.exit_crit_edge:           ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #13
  br label %t4_srq_produce.exit

if.then16.i:                                      ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #13
  %rem.i = urem i32 %conv10.i157, %mul13.i
  %conv22.i = trunc i32 %rem.i to i16
  br label %t4_srq_produce.exit

t4_srq_produce.exit:                              ; preds = %if.then16.i, %do.end74.t4_srq_produce.exit_crit_edge
  %storemerge.i = phi i16 [ %conv22.i, %if.then16.i ], [ %add7.i, %do.end74.t4_srq_produce.exit_crit_edge ]
  %125 = ptrtoint ptr %wq_pidx.i to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 %storemerge.i, ptr %wq_pidx.i, align 8
  %126 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %wq, align 8
  %arrayidx.i158 = getelementptr %union.t4_recv_wr, ptr %127, i32 %conv12.i
  %host_pidx.i = getelementptr inbounds %struct.t4_status_page, ptr %arrayidx.i158, i32 0, i32 10
  %128 = ptrtoint ptr %host_pidx.i to i32
  call void @__asan_store2_noabort(i32 %128)
  store i16 %spec.store.select.i, ptr %host_pidx.i, align 4
  %add78 = add i16 %div37.i, %idx.0193256
  br label %if.end80

if.end80:                                         ; preds = %t4_srq_produce.exit, %defer_srq_wr.exit
  %idx.1 = phi i16 [ %idx.0193256, %defer_srq_wr.exit ], [ %add78, %t4_srq_produce.exit ]
  %129 = ptrtoint ptr %wr.addr.0198253 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %wr.addr.0198253, align 8
  %tobool.not = icmp eq ptr %130, null
  br i1 %tobool.not, label %if.end80.while.end_crit_edge, label %while.body

if.end80.while.end_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end.sink.split:                             ; preds = %for.body.i.i.while.end.sink.split_crit_edge, %if.end13.while.end.sink.split_crit_edge, %while.body.while.end.sink.split_crit_edge, %while.body.lr.ph.while.end.sink.split_crit_edge
  %wr.addr.0198250 = phi ptr [ %wr, %while.body.lr.ph.while.end.sink.split_crit_edge ], [ %wr.addr.0198253, %for.body.i.i.while.end.sink.split_crit_edge ], [ %wr.addr.0198253, %if.end13.while.end.sink.split_crit_edge ], [ %130, %while.body.while.end.sink.split_crit_edge ]
  %idx.0193247 = phi i16 [ 0, %while.body.lr.ph.while.end.sink.split_crit_edge ], [ %idx.0193256, %for.body.i.i.while.end.sink.split_crit_edge ], [ %idx.0193256, %if.end13.while.end.sink.split_crit_edge ], [ %idx.1, %while.body.while.end.sink.split_crit_edge ]
  %len16.0192244 = phi i8 [ 0, %while.body.lr.ph.while.end.sink.split_crit_edge ], [ %len16.0192258, %for.body.i.i.while.end.sink.split_crit_edge ], [ %len16.0192258, %if.end13.while.end.sink.split_crit_edge ], [ %conv.i139, %while.body.while.end.sink.split_crit_edge ]
  %err.2.ph = phi i32 [ -22, %while.body.lr.ph.while.end.sink.split_crit_edge ], [ -90, %for.body.i.i.while.end.sink.split_crit_edge ], [ -12, %if.end13.while.end.sink.split_crit_edge ], [ -22, %while.body.while.end.sink.split_crit_edge ]
  %wqe.1.ph = phi ptr [ inttoptr (i32 -1 to ptr), %while.body.lr.ph.while.end.sink.split_crit_edge ], [ %lwqe, %for.body.i.i.while.end.sink.split_crit_edge ], [ %lwqe, %if.end13.while.end.sink.split_crit_edge ], [ %lwqe, %while.body.while.end.sink.split_crit_edge ]
  %131 = ptrtoint ptr %bad_wr to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %wr.addr.0198250, ptr %bad_wr, align 4
  br label %while.end

while.end:                                        ; preds = %while.end.sink.split, %if.end80.while.end_crit_edge
  %len16.0189 = phi i8 [ %len16.0192244, %while.end.sink.split ], [ %conv.i139, %if.end80.while.end_crit_edge ]
  %idx.0184 = phi i16 [ %idx.0193247, %while.end.sink.split ], [ %idx.1, %if.end80.while.end_crit_edge ]
  %err.2 = phi i32 [ %err.2.ph, %while.end.sink.split ], [ 0, %if.end80.while.end_crit_edge ]
  %wqe.1 = phi ptr [ %wqe.1.ph, %while.end.sink.split ], [ %lwqe, %if.end80.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %idx.0184)
  %tobool81.not = icmp eq i16 %idx.0184, 0
  br i1 %tobool81.not, label %while.end.if.end84_crit_edge, label %if.then82

while.end.if.end84_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end84

if.then82:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @t4_ring_srq_db(ptr noundef %wq, i16 noundef zeroext %idx.0184, i8 noundef zeroext %len16.0189, ptr noundef %wqe.1)
  br label %if.end84

if.end84:                                         ; preds = %if.then82, %while.end.if.end84_crit_edge, %while.cond.preheader.if.end84_crit_edge
  %err.2224 = phi i32 [ %err.2, %if.then82 ], [ %err.2, %while.end.if.end84_crit_edge ], [ 0, %while.cond.preheader.if.end84_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end84, %if.then
  %retval.0 = phi i32 [ -12, %if.then ], [ %err.2224, %if.end84 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %lwqe) #11
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @c4iw_copy_wr_to_srq(ptr nocapture noundef readonly %srq, ptr nocapture noundef readonly %wqe, i8 noundef zeroext %len16) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %len16)
  %tobool.not28 = icmp eq i8 %len16, 0
  br i1 %tobool.not28, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %0 = ptrtoint ptr %srq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %srq, align 8
  %wq_pidx = getelementptr inbounds %struct.t4_srq, ptr %srq, i32 0, i32 16
  %2 = ptrtoint ptr %wq_pidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %wq_pidx, align 8
  %conv = zext i16 %3 to i32
  %mul = shl nuw nsw i32 %conv, 6
  %add.ptr = getelementptr i8, ptr %1, i32 %mul
  %size = getelementptr inbounds %struct.t4_srq, ptr %srq, i32 0, i32 13
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %dst.031 = phi ptr [ %add.ptr, %while.body.lr.ph ], [ %dst.2, %while.body.while.body_crit_edge ]
  %src.030 = phi ptr [ %wqe, %while.body.lr.ph ], [ %incdec.ptr5, %while.body.while.body_crit_edge ]
  %len16.addr.029 = phi i8 [ %len16, %while.body.lr.ph ], [ %dec, %while.body.while.body_crit_edge ]
  %incdec.ptr = getelementptr i64, ptr %src.030, i32 1
  %4 = ptrtoint ptr %src.030 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %src.030, align 8
  %incdec.ptr1 = getelementptr i64, ptr %dst.031, i32 1
  %6 = ptrtoint ptr %dst.031 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %dst.031, align 8
  %7 = ptrtoint ptr %srq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %srq, align 8
  %9 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %size, align 2
  %idxprom = zext i16 %10 to i32
  %arrayidx = getelementptr %union.t4_recv_wr, ptr %8, i32 %idxprom
  %cmp.not = icmp ult ptr %incdec.ptr1, %arrayidx
  %spec.select = select i1 %cmp.not, ptr %incdec.ptr1, ptr %8
  %incdec.ptr5 = getelementptr i64, ptr %src.030, i32 2
  %11 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %incdec.ptr, align 8
  %incdec.ptr6 = getelementptr i64, ptr %spec.select, i32 1
  %13 = ptrtoint ptr %spec.select to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %spec.select, align 8
  %14 = load ptr, ptr %srq, align 8
  %15 = load i16, ptr %size, align 2
  %idxprom9 = zext i16 %15 to i32
  %arrayidx10 = getelementptr %union.t4_recv_wr, ptr %14, i32 %idxprom9
  %cmp11.not = icmp ult ptr %incdec.ptr6, %arrayidx10
  %dst.2 = select i1 %cmp11.not, ptr %incdec.ptr6, ptr %14
  %dec = add i8 %len16.addr.029, -1
  %tobool.not = icmp eq i8 %dec, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @t4_ring_srq_db(ptr nocapture noundef readonly %srq, i16 noundef zeroext %inc, i8 noundef zeroext %len16, ptr noundef readonly %wqe) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !320
  tail call void @arm_heavy_mb() #11
  %conv = zext i16 %inc to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %inc)
  %cmp = icmp eq i16 %inc, 1
  br i1 %cmp, label %land.lhs.true, label %entry.do.body13_crit_edge

entry.do.body13_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body13

land.lhs.true:                                    ; preds = %entry
  %bar2_qid = getelementptr inbounds %struct.t4_srq, ptr %srq, i32 0, i32 7
  %0 = ptrtoint ptr %bar2_qid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bar2_qid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp2 = icmp ne i32 %1, 0
  %tobool.not = icmp eq ptr %wqe, null
  %or.cond = or i1 %tobool.not, %cmp2
  br i1 %or.cond, label %land.lhs.true.do.body13_crit_edge, label %do.body5

land.lhs.true.do.body13_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body13

do.body5:                                         ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @t4_ring_srq_db.__UNIQUE_ID_ddebug662, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@t4_ring_srq_db, %if.then9)) #11
          to label %do.end12 [label %if.then9], !srcloc !300

if.then9:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #13
  %pidx = getelementptr inbounds %struct.t4_srq, ptr %srq, i32 0, i32 15
  %2 = ptrtoint ptr %pidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %pidx, align 2
  %conv10 = zext i16 %3 to i32
  %conv11 = zext i8 %len16 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @t4_ring_srq_db.__UNIQUE_ID_ddebug662, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.70, i32 noundef %conv10, i32 noundef %conv11) #11
  br label %do.end12

do.end12:                                         ; preds = %if.then9, %do.body5
  %bar2_va = getelementptr inbounds %struct.t4_srq, ptr %srq, i32 0, i32 4
  %4 = ptrtoint ptr %bar2_va to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bar2_va, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 64
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %do.end12
  %count.07.i = phi i32 [ 8, %do.end12 ], [ %dec.i, %while.body.i.while.body.i_crit_edge ]
  %src.addr.06.i = phi ptr [ %wqe, %do.end12 ], [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ]
  %dst.addr.05.i = phi ptr [ %add.ptr, %do.end12 ], [ %incdec.ptr1.i, %while.body.i.while.body.i_crit_edge ]
  %6 = ptrtoint ptr %src.addr.06.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %src.addr.06.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !310
  tail call void @arm_heavy_mb() #11
  %conv.i.i = trunc i64 %7 to i32
  %8 = tail call i32 @llvm.bswap.i32(i32 %conv.i.i) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dst.addr.05.i, i32 %8) #11, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !312
  tail call void @arm_heavy_mb() #11
  %shr.i.i = lshr i64 %7, 32
  %conv3.i.i = trunc i64 %shr.i.i to i32
  %9 = tail call i32 @llvm.bswap.i32(i32 %conv3.i.i) #11
  %add.ptr.i.i = getelementptr i8, ptr %dst.addr.05.i, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %9) #11, !srcloc !311
  %incdec.ptr.i = getelementptr i64, ptr %src.addr.06.i, i32 1
  %incdec.ptr1.i = getelementptr i64, ptr %dst.addr.05.i, i32 1
  %dec.i = add nsw i32 %count.07.i, -1
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %while.body.i.do.body39_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

while.body.i.do.body39_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body39

do.body13:                                        ; preds = %land.lhs.true.do.body13_crit_edge, %entry.do.body13_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @t4_ring_srq_db.__UNIQUE_ID_ddebug663, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@t4_ring_srq_db, %if.then25)) #11
          to label %do.body31 [label %if.then25], !srcloc !300

if.then25:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #13
  %pidx26 = getelementptr inbounds %struct.t4_srq, ptr %srq, i32 0, i32 15
  %10 = ptrtoint ptr %pidx26 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %pidx26, align 2
  %conv27 = zext i16 %11 to i32
  %conv28 = zext i8 %len16 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @t4_ring_srq_db.__UNIQUE_ID_ddebug663, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.70, i32 noundef %conv27, i32 noundef %conv28) #11
  br label %do.body31

do.body31:                                        ; preds = %if.then25, %do.body13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !321
  tail call void @arm_heavy_mb() #11
  %bar2_qid34 = getelementptr inbounds %struct.t4_srq, ptr %srq, i32 0, i32 7
  %12 = ptrtoint ptr %bar2_qid34 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bar2_qid34, align 4
  %shl35 = shl i32 %13, 15
  %or = or i32 %shl35, %conv
  %14 = tail call i32 @llvm.bswap.i32(i32 %or)
  %bar2_va36 = getelementptr inbounds %struct.t4_srq, ptr %srq, i32 0, i32 4
  %15 = ptrtoint ptr %bar2_va36 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bar2_va36, align 8
  %add.ptr37 = getelementptr i8, ptr %16, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37, i32 %14) #11, !srcloc !311
  br label %do.body39

do.body39:                                        ; preds = %do.body31, %while.body.i.do.body39_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !322
  tail call void @arm_heavy_mb() #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @c4iw_modify_qp(ptr noundef %rhp, ptr noundef %qhp, i32 noundef %mask, ptr nocapture noundef readonly %attrs, i32 noundef %internal) local_unnamed_addr #0 align 64 {
entry:
  %newattr.sroa.0 = alloca { i32, i32, i32, i32, i32, i32, i32, i32 }, align 4
  %newattr.sroa.10 = alloca { i32, i32, [52 x i8], i32, i8, %struct.c4iw_mpa_attributes, ptr, i8, i8, i16, i16, i8 }, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %newattr.sroa.0)
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %newattr.sroa.10)
  %attr = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 4
  %0 = call ptr @memcpy(ptr %newattr.sroa.0, ptr %attr, i32 32)
  %newattr.sroa.5.0.attr.sroa_idx = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 4, i32 8
  %1 = ptrtoint ptr %newattr.sroa.5.0.attr.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %1)
  %newattr.sroa.5.0.copyload = load i8, ptr %newattr.sroa.5.0.attr.sroa_idx, align 4
  %newattr.sroa.6.0.attr.sroa_idx = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 4, i32 9
  %2 = ptrtoint ptr %newattr.sroa.6.0.attr.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %2)
  %newattr.sroa.6.0.copyload = load i8, ptr %newattr.sroa.6.0.attr.sroa_idx, align 1
  %newattr.sroa.7.0.attr.sroa_idx = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 4, i32 10
  %3 = ptrtoint ptr %newattr.sroa.7.0.attr.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %3)
  %newattr.sroa.7.0.copyload = load i8, ptr %newattr.sroa.7.0.attr.sroa_idx, align 2
  %newattr.sroa.8.0.attr.sroa_idx = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 4, i32 11
  %4 = ptrtoint ptr %newattr.sroa.8.0.attr.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %4)
  %newattr.sroa.8.0.copyload = load i8, ptr %newattr.sroa.8.0.attr.sroa_idx, align 1
  %newattr.sroa.8528.0.attr.sroa_idx = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 4, i32 12
  %5 = ptrtoint ptr %newattr.sroa.8528.0.attr.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %5)
  %newattr.sroa.8528.0.copyload = load i32, ptr %newattr.sroa.8528.0.attr.sroa_idx, align 4
  %newattr.sroa.9.0.attr.sroa_idx = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 4, i32 13
  %6 = ptrtoint ptr %newattr.sroa.9.0.attr.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %6)
  %newattr.sroa.9.0.copyload = load i32, ptr %newattr.sroa.9.0.attr.sroa_idx, align 4
  %newattr.sroa.10.0.attr.sroa_idx = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 4, i32 14
  %7 = call ptr @memcpy(ptr %newattr.sroa.10, ptr %newattr.sroa.10.0.attr.sroa_idx, i32 84)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c4iw_modify_qp.__UNIQUE_ID_ddebug704, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c4iw_modify_qp, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !300

if.then:                                          ; preds = %entry
  %qid = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 5, i32 0, i32 10
  %8 = ptrtoint ptr %qid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %qid, align 8
  %qid4 = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 5, i32 1, i32 8
  %10 = ptrtoint ptr %qid4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %qid4, align 8
  %ep5 = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 3
  %12 = ptrtoint ptr %ep5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ep5, align 8
  %state = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 4, i32 7
  %14 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %state, align 4
  %and = and i32 %mask, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.then.cond.end_crit_edge, label %cond.true

if.then.cond.end_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %next_state = getelementptr inbounds %struct.c4iw_qp_attributes, ptr %attrs, i32 0, i32 15
  %16 = ptrtoint ptr %next_state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %next_state, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then.cond.end_crit_edge
  %cond = phi i32 [ %17, %cond.true ], [ -1, %if.then.cond.end_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @c4iw_modify_qp.__UNIQUE_ID_ddebug704, ptr noundef nonnull @.str.18, ptr noundef %qhp, i32 noundef %9, i32 noundef %11, ptr noundef %13, i32 noundef %15, i32 noundef %cond) #11
  br label %do.end

do.end:                                           ; preds = %cond.end, %entry
  %mutex = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #11
  %and8 = and i32 %mask, 62921088
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %do.end.if.end50_crit_edge, label %if.then10

do.end.if.end50_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50

if.then10:                                        ; preds = %do.end
  %state12 = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 4, i32 7
  %18 = ptrtoint ptr %state12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %state12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.not = icmp eq i32 %19, 0
  br i1 %cmp.not, label %if.end14, label %if.then10.out.thread_crit_edge

if.then10.out.thread_crit_edge:                   ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.thread

if.end14:                                         ; preds = %if.then10
  %and15 = and i32 %mask, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end14.if.end19_crit_edge, label %if.then17

if.end14.if.end19_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  %enable_rdma_read = getelementptr inbounds %struct.c4iw_qp_attributes, ptr %attrs, i32 0, i32 8
  %20 = ptrtoint ptr %enable_rdma_read to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %enable_rdma_read, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end14.if.end19_crit_edge
  %newattr.sroa.5.0 = phi i8 [ %21, %if.then17 ], [ %newattr.sroa.5.0.copyload, %if.end14.if.end19_crit_edge ]
  %and20 = and i32 %mask, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end19.if.end24_crit_edge, label %if.then22

if.end19.if.end24_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  %enable_rdma_write = getelementptr inbounds %struct.c4iw_qp_attributes, ptr %attrs, i32 0, i32 9
  %22 = ptrtoint ptr %enable_rdma_write to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %enable_rdma_write, align 1
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end19.if.end24_crit_edge
  %newattr.sroa.6.0 = phi i8 [ %23, %if.then22 ], [ %newattr.sroa.6.0.copyload, %if.end19.if.end24_crit_edge ]
  %and25 = and i32 %mask, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end24.if.end29_crit_edge, label %if.then27

if.end24.if.end29_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  %enable_bind = getelementptr inbounds %struct.c4iw_qp_attributes, ptr %attrs, i32 0, i32 10
  %24 = ptrtoint ptr %enable_bind to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %enable_bind, align 2
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.end24.if.end29_crit_edge
  %newattr.sroa.7.0 = phi i8 [ %25, %if.then27 ], [ %newattr.sroa.7.0.copyload, %if.end24.if.end29_crit_edge ]
  %and30 = and i32 %mask, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.end29.if.end38_crit_edge, label %if.then32

if.end29.if.end38_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

if.then32:                                        ; preds = %if.end29
  %max_ord = getelementptr inbounds %struct.c4iw_qp_attributes, ptr %attrs, i32 0, i32 12
  %26 = ptrtoint ptr %max_ord to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %max_ord, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @c4iw_max_read_depth to i32))
  %28 = load i32, ptr @c4iw_max_read_depth, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %28)
  %cmp33 = icmp ugt i32 %27, %28
  br i1 %cmp33, label %if.then32.out.thread_crit_edge, label %if.then32.if.end38_crit_edge

if.then32.if.end38_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

if.then32.out.thread_crit_edge:                   ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.thread

if.end38:                                         ; preds = %if.then32.if.end38_crit_edge, %if.end29.if.end38_crit_edge
  %newattr.sroa.8528.0 = phi i32 [ %newattr.sroa.8528.0.copyload, %if.end29.if.end38_crit_edge ], [ %27, %if.then32.if.end38_crit_edge ]
  %and39 = and i32 %mask, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.end38.if.end48_crit_edge, label %if.then41

if.end38.if.end48_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48

if.then41:                                        ; preds = %if.end38
  %max_ird = getelementptr inbounds %struct.c4iw_qp_attributes, ptr %attrs, i32 0, i32 13
  %29 = ptrtoint ptr %max_ird to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %max_ird, align 4
  %max_ordird_qp.i = getelementptr inbounds %struct.c4iw_dev, ptr %rhp, i32 0, i32 1, i32 8, i32 32
  %31 = ptrtoint ptr %max_ordird_qp.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %max_ordird_qp.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @c4iw_max_read_depth to i32))
  %33 = load i32, ptr @c4iw_max_read_depth, align 4
  %34 = tail call i32 @llvm.umin.i32(i32 %32, i32 %33) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %34)
  %cmp43 = icmp ugt i32 %30, %34
  br i1 %cmp43, label %if.then41.out.thread_crit_edge, label %if.then41.if.end48_crit_edge

if.then41.if.end48_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48

if.then41.out.thread_crit_edge:                   ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.thread

if.end48:                                         ; preds = %if.then41.if.end48_crit_edge, %if.end38.if.end48_crit_edge
  %newattr.sroa.9.0 = phi i32 [ %newattr.sroa.9.0.copyload, %if.end38.if.end48_crit_edge ], [ %30, %if.then41.if.end48_crit_edge ]
  %35 = call ptr @memcpy(ptr %attr, ptr %newattr.sroa.0, i32 32)
  %36 = ptrtoint ptr %newattr.sroa.5.0.attr.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %newattr.sroa.5.0, ptr %newattr.sroa.5.0.attr.sroa_idx, align 4
  %37 = ptrtoint ptr %newattr.sroa.6.0.attr.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %newattr.sroa.6.0, ptr %newattr.sroa.6.0.attr.sroa_idx, align 1
  %38 = ptrtoint ptr %newattr.sroa.7.0.attr.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %newattr.sroa.7.0, ptr %newattr.sroa.7.0.attr.sroa_idx, align 2
  %39 = ptrtoint ptr %newattr.sroa.8.0.attr.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %newattr.sroa.8.0.copyload, ptr %newattr.sroa.8.0.attr.sroa_idx, align 1
  %40 = ptrtoint ptr %newattr.sroa.8528.0.attr.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %newattr.sroa.8528.0, ptr %newattr.sroa.8528.0.attr.sroa_idx, align 4
  %41 = ptrtoint ptr %newattr.sroa.9.0.attr.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %newattr.sroa.9.0, ptr %newattr.sroa.9.0.attr.sroa_idx, align 4
  %42 = call ptr @memcpy(ptr %newattr.sroa.10.0.attr.sroa_idx, ptr %newattr.sroa.10, i32 84)
  br label %if.end50

if.end50:                                         ; preds = %if.end48, %do.end.if.end50_crit_edge
  %and51 = and i32 %mask, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %if.end55, label %if.then53

if.then53:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  %sq_db_inc = getelementptr inbounds %struct.c4iw_qp_attributes, ptr %attrs, i32 0, i32 23
  %43 = ptrtoint ptr %sq_db_inc to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %sq_db_inc, align 2
  tail call fastcc void @ring_kernel_sq_db(ptr noundef %qhp, i16 noundef zeroext %44)
  br label %out.thread

if.end55:                                         ; preds = %if.end50
  %and56 = and i32 %mask, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %if.end60, label %if.then58

if.then58:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  %rq_db_inc = getelementptr inbounds %struct.c4iw_qp_attributes, ptr %attrs, i32 0, i32 24
  %45 = ptrtoint ptr %rq_db_inc to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %rq_db_inc, align 4
  tail call fastcc void @ring_kernel_rq_db(ptr noundef %qhp, i16 noundef zeroext %46)
  br label %out.thread

if.end60:                                         ; preds = %if.end55
  %and61 = and i32 %mask, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %if.end60.out.thread_crit_edge, label %if.end64

if.end60.out.thread_crit_edge:                    ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.thread

if.end64:                                         ; preds = %if.end60
  %state66 = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 4, i32 7
  %47 = ptrtoint ptr %state66 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %state66, align 4
  %next_state67 = getelementptr inbounds %struct.c4iw_qp_attributes, ptr %attrs, i32 0, i32 15
  %49 = ptrtoint ptr %next_state67 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %next_state67, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %50)
  %cmp68 = icmp eq i32 %48, %50
  br i1 %cmp68, label %if.end64.out.thread_crit_edge, label %if.end70

if.end64.out.thread_crit_edge:                    ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.thread

if.end70:                                         ; preds = %if.end64
  %51 = zext i32 %48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.129)
  switch i32 %48, label %do.end324 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb118
    i32 4, label %sw.bb225
    i32 2, label %sw.bb302
    i32 3, label %sw.bb317
  ]

sw.bb:                                            ; preds = %if.end70
  %52 = zext i32 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.130)
  switch i32 %50, label %sw.bb.out.thread_crit_edge [
    i32 1, label %sw.bb74
    i32 2, label %sw.bb117
  ]

sw.bb.out.thread_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.thread

sw.bb74:                                          ; preds = %sw.bb
  %53 = and i32 %mask, 20971520
  call void @__sanitizer_cov_trace_const_cmp4(i32 20971520, i32 %53)
  %.not = icmp eq i32 %53, 20971520
  br i1 %.not, label %if.end82, label %sw.bb74.out.thread_crit_edge

sw.bb74.out.thread_crit_edge:                     ; preds = %sw.bb74
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.thread

if.end82:                                         ; preds = %sw.bb74
  %mpa_attr = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 4, i32 19
  %mpa_attr84 = getelementptr inbounds %struct.c4iw_qp_attributes, ptr %attrs, i32 0, i32 19
  %54 = call ptr @memcpy(ptr %mpa_attr, ptr %mpa_attr84, i32 7)
  %llp_stream_handle = getelementptr inbounds %struct.c4iw_qp_attributes, ptr %attrs, i32 0, i32 20
  %55 = ptrtoint ptr %llp_stream_handle to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %llp_stream_handle, align 4
  %llp_stream_handle86 = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 4, i32 20
  %57 = ptrtoint ptr %llp_stream_handle86 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %56, ptr %llp_stream_handle86, align 4
  %ep89 = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 3
  %58 = ptrtoint ptr %ep89 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %56, ptr %ep89, align 8
  %lock.i = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 6
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #11
  %59 = ptrtoint ptr %state66 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 1, ptr %state66, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c4iw_modify_qp.__UNIQUE_ID_ddebug705, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c4iw_modify_qp, %if.then102)) #11
          to label %do.end109 [label %if.then102], !srcloc !300

if.then102:                                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #13
  %60 = ptrtoint ptr %ep89 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ep89, align 8
  %kref = getelementptr inbounds %struct.c4iw_ep_common, ptr %61, i32 0, i32 5
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %kref, i32 noundef 4) #11
  %62 = ptrtoint ptr %kref to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %kref, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @c4iw_modify_qp.__UNIQUE_ID_ddebug705, ptr noundef nonnull @.str.20, ptr noundef %61, i32 noundef %63) #11
  br label %do.end109

do.end109:                                        ; preds = %if.then102, %if.end82
  %64 = ptrtoint ptr %ep89 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ep89, align 8
  %kref112 = getelementptr inbounds %struct.c4iw_ep_common, ptr %65, i32 0, i32 5
  tail call fastcc void @kref_get(ptr noundef %kref112)
  %call113 = tail call fastcc i32 @rdma_init(ptr noundef %rhp, ptr noundef %qhp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %do.end109.out.thread_crit_edge, label %do.end109.do.body330_crit_edge

do.end109.do.body330_crit_edge:                   ; preds = %do.end109
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body330

do.end109.out.thread_crit_edge:                   ; preds = %do.end109
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.thread

sw.bb117:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %lock.i671 = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 6
  %call2.i672 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i671) #11
  %66 = ptrtoint ptr %state66 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 2, ptr %state66, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i671, i32 noundef %call2.i672) #11
  tail call fastcc void @flush_qp(ptr noundef %qhp)
  br label %out.thread

sw.bb118:                                         ; preds = %if.end70
  %67 = zext i32 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.131)
  switch i32 %50, label %sw.bb118.out.thread_crit_edge [
    i32 4, label %sw.bb120
    i32 3, label %sw.bb155
    i32 2, label %sw.bb192
  ]

sw.bb118.out.thread_crit_edge:                    ; preds = %sw.bb118
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.thread

sw.bb120:                                         ; preds = %sw.bb118
  %qp_errp.i = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 5, i32 5
  %68 = ptrtoint ptr %qp_errp.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %qp_errp.i, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 1, ptr %69, align 1
  %lock.i674 = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 6
  %call2.i675 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i674) #11
  %71 = ptrtoint ptr %state66 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 4, ptr %state66, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i674, i32 noundef %call2.i675) #11
  %ep122 = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 3
  %72 = ptrtoint ptr %ep122 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ep122, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %internal)
  %tobool123.not = icmp eq i32 %internal, 0
  br i1 %tobool123.not, label %if.then124, label %sw.bb120.if.end150_crit_edge

sw.bb120.if.end150_crit_edge:                     ; preds = %sw.bb120
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end150

if.then124:                                       ; preds = %sw.bb120
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c4iw_modify_qp.__UNIQUE_ID_ddebug706, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c4iw_modify_qp, %if.then137)) #11
          to label %do.end146 [label %if.then137], !srcloc !300

if.then137:                                       ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #13
  %74 = ptrtoint ptr %ep122 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ep122, align 8
  %kref142 = getelementptr inbounds %struct.c4iw_ep_common, ptr %75, i32 0, i32 5
  %call.i.i.i.i677 = tail call zeroext i1 @__kasan_check_read(ptr noundef %kref142, i32 noundef 4) #11
  %76 = ptrtoint ptr %kref142 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %kref142, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @c4iw_modify_qp.__UNIQUE_ID_ddebug706, ptr noundef nonnull @.str.20, ptr noundef %75, i32 noundef %77) #11
  br label %do.end146

do.end146:                                        ; preds = %if.then137, %if.then124
  %78 = ptrtoint ptr %ep122 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ep122, align 8
  %kref149 = getelementptr inbounds %struct.c4iw_ep_common, ptr %79, i32 0, i32 5
  tail call fastcc void @kref_get(ptr noundef %kref149)
  br label %if.end150

if.end150:                                        ; preds = %do.end146, %sw.bb120.if.end150_crit_edge
  %disconnect.0 = phi i32 [ 0, %sw.bb120.if.end150_crit_edge ], [ 1, %do.end146 ]
  %call151 = tail call fastcc i32 @rdma_fini(ptr noundef %rhp, ptr noundef %qhp, ptr noundef %73)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call151)
  %tobool152.not = icmp eq i32 %call151, 0
  br i1 %tobool152.not, label %if.end150.out.thread_crit_edge, label %if.end150.do.body330_crit_edge

if.end150.do.body330_crit_edge:                   ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body330

if.end150.out.thread_crit_edge:                   ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.thread

sw.bb155:                                         ; preds = %sw.bb118
  %qp_errp.i678 = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 5, i32 5
  %80 = ptrtoint ptr %qp_errp.i678 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %qp_errp.i678, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 1, ptr %81, align 1
  %lock.i679 = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 6
  %call2.i680 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i679) #11
  %83 = ptrtoint ptr %state66 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 3, ptr %state66, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i679, i32 noundef %call2.i680) #11
  %layer_etype = getelementptr inbounds %struct.c4iw_qp_attributes, ptr %attrs, i32 0, i32 21
  %84 = ptrtoint ptr %layer_etype to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %layer_etype, align 4
  %layer_etype158 = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 4, i32 21
  %86 = ptrtoint ptr %layer_etype158 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %85, ptr %layer_etype158, align 4
  %ecode = getelementptr inbounds %struct.c4iw_qp_attributes, ptr %attrs, i32 0, i32 22
  %87 = ptrtoint ptr %ecode to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %ecode, align 1
  %ecode160 = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 4, i32 22
  %89 = ptrtoint ptr %ecode160 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %88, ptr %ecode160, align 1
  %ep161 = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 3
  %90 = ptrtoint ptr %ep161 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %ep161, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %internal)
  %tobool162.not = icmp eq i32 %internal, 0
  br i1 %tobool162.not, label %do.body164, label %if.else

do.body164:                                       ; preds = %sw.bb155
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c4iw_modify_qp.__UNIQUE_ID_ddebug707, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c4iw_modify_qp, %if.then176)) #11
          to label %out.thread736 [label %if.then176], !srcloc !300

if.then176:                                       ; preds = %do.body164
  call void @__sanitizer_cov_trace_pc() #13
  %kref179 = getelementptr inbounds %struct.c4iw_ep_common, ptr %91, i32 0, i32 5
  %call.i.i.i.i682 = tail call zeroext i1 @__kasan_check_read(ptr noundef %kref179, i32 noundef 4) #11
  %92 = ptrtoint ptr %kref179 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load volatile i32, ptr %kref179, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @c4iw_modify_qp.__UNIQUE_ID_ddebug707, ptr noundef nonnull @.str.20, ptr noundef %91, i32 noundef %93) #11
  br label %out.thread736

out.thread736:                                    ; preds = %if.then176, %do.body164
  %kref185 = getelementptr inbounds %struct.c4iw_ep_common, ptr %91, i32 0, i32 5
  tail call fastcc void @kref_get(ptr noundef %kref185)
  tail call void @mutex_unlock(ptr noundef %mutex) #11
  br label %if.then360

if.else:                                          ; preds = %sw.bb155
  %send_term = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 4, i32 25
  %94 = ptrtoint ptr %send_term to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %send_term, align 2
  %conv = zext i8 %95 to i32
  %call187 = tail call fastcc i32 @rdma_fini(ptr noundef %rhp, ptr noundef %qhp, ptr noundef %91)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call187)
  %tobool188.not = icmp eq i32 %call187, 0
  br i1 %tobool188.not, label %if.else.out_crit_edge, label %if.else.do.body330_crit_edge

if.else.do.body330_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body330

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

sw.bb192:                                         ; preds = %sw.bb118
  %qp_errp.i683 = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 5, i32 5
  %96 = ptrtoint ptr %qp_errp.i683 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %qp_errp.i683, align 4
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 1, ptr %97, align 1
  %lock.i684 = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 6
  %call2.i685 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i684) #11
  %99 = ptrtoint ptr %state66 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 2, ptr %state66, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i684, i32 noundef %call2.i685) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %internal)
  %tobool194.not = icmp eq i32 %internal, 0
  br i1 %tobool194.not, label %if.then195, label %sw.bb192.do.body330_crit_edge

sw.bb192.do.body330_crit_edge:                    ; preds = %sw.bb192
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body330

if.then195:                                       ; preds = %sw.bb192
  %ep196 = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 3
  %100 = ptrtoint ptr %ep196 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %ep196, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c4iw_modify_qp.__UNIQUE_ID_ddebug708, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c4iw_modify_qp, %if.then209)) #11
          to label %do.end218 [label %if.then209], !srcloc !300

if.then209:                                       ; preds = %if.then195
  call void @__sanitizer_cov_trace_pc() #13
  %102 = ptrtoint ptr %ep196 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %ep196, align 8
  %kref214 = getelementptr inbounds %struct.c4iw_ep_common, ptr %103, i32 0, i32 5
  %call.i.i.i.i687 = tail call zeroext i1 @__kasan_check_read(ptr noundef %kref214, i32 noundef 4) #11
  %104 = ptrtoint ptr %kref214 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load volatile i32, ptr %kref214, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @c4iw_modify_qp.__UNIQUE_ID_ddebug708, ptr noundef nonnull @.str.20, ptr noundef %103, i32 noundef %105) #11
  br label %do.end218

do.end218:                                        ; preds = %if.then209, %if.then195
  %106 = ptrtoint ptr %ep196 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %ep196, align 8
  %kref221 = getelementptr inbounds %struct.c4iw_ep_common, ptr %107, i32 0, i32 5
  tail call fastcc void @kref_get(ptr noundef %kref221)
  br label %do.body330

sw.bb225:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %internal)
  %tobool226.not = icmp eq i32 %internal, 0
  br i1 %tobool226.not, label %land.lhs.true, label %if.end232

land.lhs.true:                                    ; preds = %sw.bb225
  %uobject = getelementptr inbounds %struct.ib_qp, ptr %qhp, i32 0, i32 14
  %108 = ptrtoint ptr %uobject to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %uobject, align 8
  %tobool227.not = icmp eq ptr %109, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %50)
  %cmp229.not = icmp eq i32 %50, 2
  %or.cond = select i1 %tobool227.not, i1 %cmp229.not, i1 false
  br i1 %or.cond, label %land.lhs.true.do.body330_crit_edge, label %land.lhs.true.out.thread_crit_edge

land.lhs.true.out.thread_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.thread

land.lhs.true.do.body330_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body330

if.end232:                                        ; preds = %sw.bb225
  %110 = zext i32 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %110, ptr @__sancov_gen_cov_switch_values.132)
  switch i32 %50, label %sw.default300 [
    i32 0, label %sw.bb234
    i32 2, label %if.end232.do.body330_crit_edge
  ]

if.end232.do.body330_crit_edge:                   ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body330

sw.bb234:                                         ; preds = %if.end232
  tail call fastcc void @flush_qp(ptr noundef %qhp)
  %lock.i688 = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 6
  %call2.i689 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i688) #11
  %111 = ptrtoint ptr %state66 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 0, ptr %state66, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i688, i32 noundef %call2.i689) #11
  %llp_stream_handle236 = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 4, i32 20
  %112 = ptrtoint ptr %llp_stream_handle236 to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr null, ptr %llp_stream_handle236, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c4iw_modify_qp.__UNIQUE_ID_ddebug709, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c4iw_modify_qp, %if.then249)) #11
          to label %do.end258 [label %if.then249], !srcloc !300

if.then249:                                       ; preds = %sw.bb234
  call void @__sanitizer_cov_trace_pc() #13
  %ep250 = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 3
  %113 = ptrtoint ptr %ep250 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %ep250, align 8
  %kref254 = getelementptr inbounds %struct.c4iw_ep_common, ptr %114, i32 0, i32 5
  %call.i.i.i.i691 = tail call zeroext i1 @__kasan_check_read(ptr noundef %kref254, i32 noundef 4) #11
  %115 = ptrtoint ptr %kref254 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load volatile i32, ptr %kref254, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @c4iw_modify_qp.__UNIQUE_ID_ddebug709, ptr noundef nonnull @.str.22, ptr noundef %114, i32 noundef %116) #11
  br label %do.end258

do.end258:                                        ; preds = %if.then249, %sw.bb234
  %ep259 = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 3
  %117 = ptrtoint ptr %ep259 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %ep259, align 8
  %kref261 = getelementptr inbounds %struct.c4iw_ep_common, ptr %118, i32 0, i32 5
  %call.i.i.i.i692 = tail call zeroext i1 @__kasan_check_read(ptr noundef %kref261, i32 noundef 4) #11
  %119 = ptrtoint ptr %kref261 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load volatile i32, ptr %kref261, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %cmp263 = icmp eq i32 %120, 0
  br i1 %cmp263, label %do.end280, label %do.end258.if.end286_crit_edge, !prof !302

do.end258.if.end286_crit_edge:                    ; preds = %do.end258
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end286

do.end280:                                        ; preds = %do.end258
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1993, i32 noundef 9, ptr noundef null) #11
  br label %if.end286

if.end286:                                        ; preds = %do.end280, %do.end258.if.end286_crit_edge
  %121 = ptrtoint ptr %ep259 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %ep259, align 8
  %kref296 = getelementptr inbounds %struct.c4iw_ep_common, ptr %122, i32 0, i32 5
  tail call fastcc void @kref_put(ptr noundef %kref296, ptr noundef nonnull @_c4iw_free_ep)
  %123 = ptrtoint ptr %ep259 to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr null, ptr %ep259, align 8
  %wait = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 8
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  br label %out.thread

sw.default300:                                    ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body330

sw.bb302:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp304.not = icmp eq i32 %50, 0
  br i1 %cmp304.not, label %if.end307, label %sw.bb302.out.thread_crit_edge

sw.bb302.out.thread_crit_edge:                    ; preds = %sw.bb302
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.thread

if.end307:                                        ; preds = %sw.bb302
  %in_use.i = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 5, i32 0, i32 11
  %124 = ptrtoint ptr %in_use.i to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %in_use.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %125)
  %cmp.i.not = icmp eq i16 %125, 0
  br i1 %cmp.i.not, label %lor.lhs.false311, label %if.end307.out.thread_crit_edge

if.end307.out.thread_crit_edge:                   ; preds = %if.end307
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.thread

lor.lhs.false311:                                 ; preds = %if.end307
  %in_use.i693 = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 5, i32 1, i32 12
  %126 = ptrtoint ptr %in_use.i693 to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %in_use.i693, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %127)
  %cmp.i694.not = icmp eq i16 %127, 0
  br i1 %cmp.i694.not, label %if.end316, label %lor.lhs.false311.out.thread_crit_edge

lor.lhs.false311.out.thread_crit_edge:            ; preds = %lor.lhs.false311
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.thread

if.end316:                                        ; preds = %lor.lhs.false311
  call void @__sanitizer_cov_trace_pc() #13
  %lock.i696 = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 6
  %call2.i697 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i696) #11
  %128 = ptrtoint ptr %state66 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 0, ptr %state66, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i696, i32 noundef %call2.i697) #11
  br label %out.thread

sw.bb317:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %internal)
  %tobool318.not = icmp eq i32 %internal, 0
  br i1 %tobool318.not, label %sw.bb317.out.thread_crit_edge, label %sw.bb317.do.body330_crit_edge

sw.bb317.do.body330_crit_edge:                    ; preds = %sw.bb317
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body330

sw.bb317.out.thread_crit_edge:                    ; preds = %sw.bb317
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.thread

do.end324:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #13
  %call328 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.16, i32 noundef %48) #14
  br label %do.body330

do.body330:                                       ; preds = %do.end324, %sw.bb317.do.body330_crit_edge, %sw.default300, %if.end232.do.body330_crit_edge, %land.lhs.true.do.body330_crit_edge, %do.end218, %sw.bb192.do.body330_crit_edge, %if.else.do.body330_crit_edge, %if.end150.do.body330_crit_edge, %do.end109.do.body330_crit_edge
  %ep.0 = phi ptr [ null, %do.end324 ], [ null, %sw.bb317.do.body330_crit_edge ], [ null, %sw.default300 ], [ null, %if.end232.do.body330_crit_edge ], [ null, %sw.bb192.do.body330_crit_edge ], [ %101, %do.end218 ], [ %91, %if.else.do.body330_crit_edge ], [ %73, %if.end150.do.body330_crit_edge ], [ null, %do.end109.do.body330_crit_edge ], [ null, %land.lhs.true.do.body330_crit_edge ]
  %terminate.0 = phi i32 [ 0, %do.end324 ], [ 0, %sw.bb317.do.body330_crit_edge ], [ 0, %sw.default300 ], [ 0, %if.end232.do.body330_crit_edge ], [ 0, %sw.bb192.do.body330_crit_edge ], [ 0, %do.end218 ], [ %conv, %if.else.do.body330_crit_edge ], [ 0, %if.end150.do.body330_crit_edge ], [ 0, %do.end109.do.body330_crit_edge ], [ 0, %land.lhs.true.do.body330_crit_edge ]
  %disconnect.1 = phi i32 [ 0, %do.end324 ], [ 0, %sw.bb317.do.body330_crit_edge ], [ 0, %sw.default300 ], [ 0, %if.end232.do.body330_crit_edge ], [ 0, %sw.bb192.do.body330_crit_edge ], [ 1, %do.end218 ], [ 0, %if.else.do.body330_crit_edge ], [ %disconnect.0, %if.end150.do.body330_crit_edge ], [ 0, %do.end109.do.body330_crit_edge ], [ 0, %land.lhs.true.do.body330_crit_edge ]
  %ret.0 = phi i32 [ -22, %do.end324 ], [ 0, %sw.bb317.do.body330_crit_edge ], [ -22, %sw.default300 ], [ 0, %if.end232.do.body330_crit_edge ], [ 0, %sw.bb192.do.body330_crit_edge ], [ 0, %do.end218 ], [ %call187, %if.else.do.body330_crit_edge ], [ %call151, %if.end150.do.body330_crit_edge ], [ %call113, %do.end109.do.body330_crit_edge ], [ 0, %land.lhs.true.do.body330_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c4iw_modify_qp.__UNIQUE_ID_ddebug710, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c4iw_modify_qp, %if.then342)) #11
          to label %do.end349 [label %if.then342], !srcloc !300

if.then342:                                       ; preds = %do.body330
  call void @__sanitizer_cov_trace_pc() #13
  %ep343 = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 3
  %129 = ptrtoint ptr %ep343 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %ep343, align 8
  %qid346 = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 5, i32 0, i32 10
  %131 = ptrtoint ptr %qid346 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %qid346, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @c4iw_modify_qp.__UNIQUE_ID_ddebug710, ptr noundef nonnull @.str.25, ptr noundef %130, i32 noundef %132) #11
  br label %do.end349

do.end349:                                        ; preds = %if.then342, %do.body330
  %llp_stream_handle351 = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 4, i32 20
  %133 = ptrtoint ptr %llp_stream_handle351 to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr null, ptr %llp_stream_handle351, align 4
  %tobool352.not = icmp eq ptr %ep.0, null
  br i1 %tobool352.not, label %if.then353, label %do.end349.if.end355_crit_edge

do.end349.if.end355_crit_edge:                    ; preds = %do.end349
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end355

if.then353:                                       ; preds = %do.end349
  call void @__sanitizer_cov_trace_pc() #13
  %ep354 = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 3
  %134 = ptrtoint ptr %ep354 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %ep354, align 8
  br label %if.end355

if.end355:                                        ; preds = %if.then353, %do.end349.if.end355_crit_edge
  %ep.1 = phi ptr [ %ep.0, %do.end349.if.end355_crit_edge ], [ %135, %if.then353 ]
  %ep356 = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 3
  %136 = ptrtoint ptr %ep356 to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr null, ptr %ep356, align 8
  %lock.i699 = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 6
  %call2.i700 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i699) #11
  %137 = ptrtoint ptr %state66 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 2, ptr %state66, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i699, i32 noundef %call2.i700) #11
  tail call fastcc void @flush_qp(ptr noundef %qhp)
  %wait357 = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 8
  tail call void @__wake_up(ptr noundef %wait357, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  br label %out

out.thread:                                       ; preds = %sw.bb317.out.thread_crit_edge, %if.end316, %lor.lhs.false311.out.thread_crit_edge, %if.end307.out.thread_crit_edge, %sw.bb302.out.thread_crit_edge, %if.end286, %land.lhs.true.out.thread_crit_edge, %if.end150.out.thread_crit_edge, %sw.bb118.out.thread_crit_edge, %sw.bb117, %do.end109.out.thread_crit_edge, %sw.bb74.out.thread_crit_edge, %sw.bb.out.thread_crit_edge, %if.end64.out.thread_crit_edge, %if.end60.out.thread_crit_edge, %if.then58, %if.then53, %if.then41.out.thread_crit_edge, %if.then32.out.thread_crit_edge, %if.then10.out.thread_crit_edge
  %ep.2.ph = phi ptr [ null, %sw.bb317.out.thread_crit_edge ], [ null, %if.end307.out.thread_crit_edge ], [ null, %lor.lhs.false311.out.thread_crit_edge ], [ null, %sw.bb302.out.thread_crit_edge ], [ null, %land.lhs.true.out.thread_crit_edge ], [ null, %sw.bb118.out.thread_crit_edge ], [ null, %sw.bb.out.thread_crit_edge ], [ null, %sw.bb74.out.thread_crit_edge ], [ null, %if.then41.out.thread_crit_edge ], [ null, %if.then32.out.thread_crit_edge ], [ null, %if.then10.out.thread_crit_edge ], [ null, %if.end60.out.thread_crit_edge ], [ null, %do.end109.out.thread_crit_edge ], [ null, %sw.bb117 ], [ %73, %if.end150.out.thread_crit_edge ], [ null, %if.end286 ], [ null, %if.end316 ], [ null, %if.end64.out.thread_crit_edge ], [ null, %if.then58 ], [ null, %if.then53 ]
  %disconnect.2.ph = phi i32 [ 0, %sw.bb317.out.thread_crit_edge ], [ 0, %if.end307.out.thread_crit_edge ], [ 0, %lor.lhs.false311.out.thread_crit_edge ], [ 0, %sw.bb302.out.thread_crit_edge ], [ 0, %land.lhs.true.out.thread_crit_edge ], [ 0, %sw.bb118.out.thread_crit_edge ], [ 0, %sw.bb.out.thread_crit_edge ], [ 0, %sw.bb74.out.thread_crit_edge ], [ 0, %if.then41.out.thread_crit_edge ], [ 0, %if.then32.out.thread_crit_edge ], [ 0, %if.then10.out.thread_crit_edge ], [ 0, %if.end60.out.thread_crit_edge ], [ 0, %do.end109.out.thread_crit_edge ], [ 0, %sw.bb117 ], [ %disconnect.0, %if.end150.out.thread_crit_edge ], [ 0, %if.end286 ], [ 0, %if.end316 ], [ 0, %if.end64.out.thread_crit_edge ], [ 0, %if.then58 ], [ 0, %if.then53 ]
  %ret.1.ph = phi i32 [ -22, %sw.bb317.out.thread_crit_edge ], [ -22, %if.end307.out.thread_crit_edge ], [ -22, %lor.lhs.false311.out.thread_crit_edge ], [ -22, %sw.bb302.out.thread_crit_edge ], [ -22, %land.lhs.true.out.thread_crit_edge ], [ -22, %sw.bb118.out.thread_crit_edge ], [ -22, %sw.bb.out.thread_crit_edge ], [ -22, %sw.bb74.out.thread_crit_edge ], [ -22, %if.then41.out.thread_crit_edge ], [ -22, %if.then32.out.thread_crit_edge ], [ -5, %if.then10.out.thread_crit_edge ], [ 0, %if.end60.out.thread_crit_edge ], [ 0, %do.end109.out.thread_crit_edge ], [ 0, %sw.bb117 ], [ 0, %if.end150.out.thread_crit_edge ], [ 0, %if.end286 ], [ 0, %if.end316 ], [ 0, %if.end64.out.thread_crit_edge ], [ 0, %if.then58 ], [ 0, %if.then53 ]
  tail call void @mutex_unlock(ptr noundef %mutex) #11
  br label %if.end363

out:                                              ; preds = %if.end355, %if.else.out_crit_edge
  %ep.2 = phi ptr [ %ep.1, %if.end355 ], [ %91, %if.else.out_crit_edge ]
  %tobool428.not = phi i1 [ false, %if.end355 ], [ true, %if.else.out_crit_edge ]
  %abort.1 = phi i32 [ 1, %if.end355 ], [ 0, %if.else.out_crit_edge ]
  %terminate.1 = phi i32 [ %terminate.0, %if.end355 ], [ %conv, %if.else.out_crit_edge ]
  %disconnect.2 = phi i32 [ %disconnect.1, %if.end355 ], [ 0, %if.else.out_crit_edge ]
  %ret.1 = phi i32 [ %ret.0, %if.end355 ], [ 0, %if.else.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %terminate.1)
  %tobool359.not = icmp eq i32 %terminate.1, 0
  br i1 %tobool359.not, label %out.if.end363_crit_edge, label %out.if.then360_crit_edge

out.if.then360_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then360

out.if.end363_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end363

if.then360:                                       ; preds = %out.if.then360_crit_edge, %out.thread736
  %ret.1748 = phi i32 [ 0, %out.thread736 ], [ %ret.1, %out.if.then360_crit_edge ]
  %disconnect.2747 = phi i32 [ 1, %out.thread736 ], [ %disconnect.2, %out.if.then360_crit_edge ]
  %abort.1746 = phi i32 [ 0, %out.thread736 ], [ %abort.1, %out.if.then360_crit_edge ]
  %tobool428.not745 = phi i1 [ true, %out.thread736 ], [ %tobool428.not, %out.if.then360_crit_edge ]
  %ep.2744 = phi ptr [ %91, %out.thread736 ], [ %ep.2, %out.if.then360_crit_edge ]
  tail call fastcc void @post_terminate(ptr noundef %qhp)
  br label %if.end363

if.end363:                                        ; preds = %if.then360, %out.if.end363_crit_edge, %out.thread
  %ret.1735 = phi i32 [ %ret.1.ph, %out.thread ], [ %ret.1748, %if.then360 ], [ %ret.1, %out.if.end363_crit_edge ]
  %disconnect.2734 = phi i32 [ %disconnect.2.ph, %out.thread ], [ %disconnect.2747, %if.then360 ], [ %disconnect.2, %out.if.end363_crit_edge ]
  %abort.1733 = phi i32 [ 0, %out.thread ], [ %abort.1746, %if.then360 ], [ %abort.1, %out.if.end363_crit_edge ]
  %tobool428.not732 = phi i1 [ true, %out.thread ], [ %tobool428.not745, %if.then360 ], [ %tobool428.not, %out.if.end363_crit_edge ]
  %ep.2728 = phi ptr [ %ep.2.ph, %out.thread ], [ %ep.2744, %if.then360 ], [ %ep.2, %out.if.end363_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %disconnect.2734)
  %tobool364.not = icmp eq i32 %disconnect.2734, 0
  br i1 %tobool364.not, label %if.end363.if.end427_crit_edge, label %if.then365

if.end363.if.end427_crit_edge:                    ; preds = %if.end363
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end427

if.then365:                                       ; preds = %if.end363
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %internal)
  %tobool366.not = icmp eq i32 %internal, 0
  %cond367 = select i1 %tobool366.not, i32 3264, i32 2592
  %call368 = tail call i32 @c4iw_ep_disconnect(ptr noundef %ep.2728, i32 noundef %abort.1733, i32 noundef %cond367) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c4iw_modify_qp.__UNIQUE_ID_ddebug711, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c4iw_modify_qp, %if.then381)) #11
          to label %do.end388 [label %if.then381], !srcloc !300

if.then381:                                       ; preds = %if.then365
  call void @__sanitizer_cov_trace_pc() #13
  %kref384 = getelementptr inbounds %struct.c4iw_ep_common, ptr %ep.2728, i32 0, i32 5
  %call.i.i.i.i702 = tail call zeroext i1 @__kasan_check_read(ptr noundef %kref384, i32 noundef 4) #11
  %138 = ptrtoint ptr %kref384 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load volatile i32, ptr %kref384, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @c4iw_modify_qp.__UNIQUE_ID_ddebug711, ptr noundef nonnull @.str.22, ptr noundef %ep.2728, i32 noundef %139) #11
  br label %do.end388

do.end388:                                        ; preds = %if.then381, %if.then365
  %kref391 = getelementptr inbounds %struct.c4iw_ep_common, ptr %ep.2728, i32 0, i32 5
  %call.i.i.i.i703 = tail call zeroext i1 @__kasan_check_read(ptr noundef %kref391, i32 noundef 4) #11
  %140 = ptrtoint ptr %kref391 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load volatile i32, ptr %kref391, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %cmp393 = icmp eq i32 %141, 0
  br i1 %cmp393, label %do.end410, label %do.end388.if.end416_crit_edge, !prof !302

do.end388.if.end416_crit_edge:                    ; preds = %do.end388
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end416

do.end410:                                        ; preds = %do.end388
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2057, i32 noundef 9, ptr noundef null) #11
  br label %if.end416

if.end416:                                        ; preds = %do.end410, %do.end388.if.end416_crit_edge
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref391, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !304
  tail call void @llvm.prefetch.p0(ptr %kref391, i32 1, i32 3, i32 1) #11
  %142 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref391, ptr %kref391, i32 1, ptr elementtype(i32) %kref391) #11, !srcloc !305
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %142, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end416
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end427_crit_edge, label %if.then10.i.i.i.i, !prof !303

if.end5.i.i.i.i.if.end427_crit_edge:              ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end427

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %kref391, i32 noundef 3) #11
  br label %if.end427

if.then.i:                                        ; preds = %if.end416
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !306
  tail call void @_c4iw_free_ep(ptr noundef %kref391) #11, !callees !323
  br label %if.end427

if.end427:                                        ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end427_crit_edge, %if.end363.if.end427_crit_edge
  br i1 %tobool428.not732, label %if.end427.do.body489_crit_edge, label %do.body430

if.end427.do.body489_crit_edge:                   ; preds = %if.end427
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body489

do.body430:                                       ; preds = %if.end427
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c4iw_modify_qp.__UNIQUE_ID_ddebug712, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c4iw_modify_qp, %if.then442)) #11
          to label %do.end449 [label %if.then442], !srcloc !300

if.then442:                                       ; preds = %do.body430
  call void @__sanitizer_cov_trace_pc() #13
  %kref445 = getelementptr inbounds %struct.c4iw_ep_common, ptr %ep.2728, i32 0, i32 5
  %call.i.i.i.i704 = tail call zeroext i1 @__kasan_check_read(ptr noundef %kref445, i32 noundef 4) #11
  %143 = ptrtoint ptr %kref445 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load volatile i32, ptr %kref445, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @c4iw_modify_qp.__UNIQUE_ID_ddebug712, ptr noundef nonnull @.str.22, ptr noundef %ep.2728, i32 noundef %144) #11
  br label %do.end449

do.end449:                                        ; preds = %if.then442, %do.body430
  %kref452 = getelementptr inbounds %struct.c4iw_ep_common, ptr %ep.2728, i32 0, i32 5
  %call.i.i.i.i705 = tail call zeroext i1 @__kasan_check_read(ptr noundef %kref452, i32 noundef 4) #11
  %145 = ptrtoint ptr %kref452 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load volatile i32, ptr %kref452, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %cmp454 = icmp eq i32 %146, 0
  br i1 %cmp454, label %do.end471, label %do.end449.if.end477_crit_edge, !prof !302

do.end449.if.end477_crit_edge:                    ; preds = %do.end449
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end477

do.end471:                                        ; preds = %do.end449
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2065, i32 noundef 9, ptr noundef null) #11
  br label %if.end477

if.end477:                                        ; preds = %do.end471, %do.end449.if.end477_crit_edge
  %call.i.i.i.i.i.i706 = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref452, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !304
  tail call void @llvm.prefetch.p0(ptr %kref452, i32 1, i32 3, i32 1) #11
  %147 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref452, ptr %kref452, i32 1, ptr elementtype(i32) %kref452) #11, !srcloc !305
  %asmresult.i.i.i.i.i.i.i707 = extractvalue { i32, i32, i32 } %147, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i707)
  %cmp.i.i.i.i708 = icmp eq i32 %asmresult.i.i.i.i.i.i.i707, 1
  br i1 %cmp.i.i.i.i708, label %if.then.i712, label %if.end5.i.i.i.i710

if.end5.i.i.i.i710:                               ; preds = %if.end477
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i707)
  %.not.i.i.i.i709 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i707, 0
  br i1 %.not.i.i.i.i709, label %if.end5.i.i.i.i710.do.body489_crit_edge, label %if.then10.i.i.i.i711, !prof !303

if.end5.i.i.i.i710.do.body489_crit_edge:          ; preds = %if.end5.i.i.i.i710
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body489

if.then10.i.i.i.i711:                             ; preds = %if.end5.i.i.i.i710
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %kref452, i32 noundef 3) #11
  br label %do.body489

if.then.i712:                                     ; preds = %if.end477
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !306
  tail call void @_c4iw_free_ep(ptr noundef %kref452) #11, !callees !323
  br label %do.body489

do.body489:                                       ; preds = %if.then.i712, %if.then10.i.i.i.i711, %if.end5.i.i.i.i710.do.body489_crit_edge, %if.end427.do.body489_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c4iw_modify_qp.__UNIQUE_ID_ddebug713, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c4iw_modify_qp, %if.then501)) #11
          to label %do.end506 [label %if.then501], !srcloc !300

if.then501:                                       ; preds = %do.body489
  call void @__sanitizer_cov_trace_pc() #13
  %state503 = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 4, i32 7
  %148 = ptrtoint ptr %state503 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %state503, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @c4iw_modify_qp.__UNIQUE_ID_ddebug713, ptr noundef nonnull @.str.27, i32 noundef %149) #11
  br label %do.end506

do.end506:                                        ; preds = %if.then501, %do.body489
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %newattr.sroa.0)
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %newattr.sroa.10)
  ret i32 %ret.1735
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kref_get(ptr noundef %kref) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #11, !srcloc !301
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %entry.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !302

entry.if.end15.sink.split.i.i.i_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %entry
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !303

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef %.sink.i.i.i) #11
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rdma_init(ptr noundef %rhp, ptr noundef %qhp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rdma_init.__UNIQUE_ID_ddebug702, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rdma_init, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !300

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %qid = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 5, i32 0, i32 10
  %0 = ptrtoint ptr %qid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %qid, align 8
  %ep = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 3
  %2 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ep, align 8
  %hwtid = getelementptr inbounds %struct.c4iw_ep, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %hwtid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwtid, align 4
  %ird = getelementptr inbounds %struct.c4iw_ep, ptr %3, i32 0, i32 14
  %6 = ptrtoint ptr %ird to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ird, align 4
  %ord = getelementptr inbounds %struct.c4iw_ep, ptr %3, i32 0, i32 15
  %8 = ptrtoint ptr %ord to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ord, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rdma_init.__UNIQUE_ID_ddebug702, ptr noundef nonnull @.str.77, ptr noundef %qhp, i32 noundef %1, i32 noundef %5, i32 noundef %7, i32 noundef %9) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call.i = tail call ptr @__alloc_skb(i32 noundef 128, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #11
  %tobool6.not = icmp eq ptr %call.i, null
  br i1 %tobool6.not, label %do.end.do.body141_crit_edge, label %if.end8

do.end.do.body141_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body141

if.end8:                                          ; preds = %do.end
  %attr = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 4
  %max_ird = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 4, i32 13
  %10 = ptrtoint ptr %max_ird to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_ird, align 4
  %qps.i = getelementptr inbounds %struct.c4iw_dev, ptr %rhp, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %qps.i) #11
  %avail_ird.i = getelementptr inbounds %struct.c4iw_dev, ptr %rhp, i32 0, i32 13
  %12 = ptrtoint ptr %avail_ird.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %avail_ird.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %11)
  %cmp.not.i = icmp ult i32 %13, %11
  br i1 %cmp.not.i, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_irq(ptr noundef %qps.i) #11
  %lldi.i = getelementptr inbounds %struct.c4iw_dev, ptr %rhp, i32 0, i32 1, i32 8
  %14 = ptrtoint ptr %lldi.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lldi.i, align 8
  %dev5.i = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev5.i, ptr noundef nonnull @.str.80) #14
  %16 = ptrtoint ptr %max_ird to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %max_ird, align 4
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i, i32 noundef 0) #11
  br label %do.body141

if.end14:                                         ; preds = %if.end8
  %sub.i = sub i32 %13, %11
  %17 = ptrtoint ptr %avail_ird.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %sub.i, ptr %avail_ird.i, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %qps.i) #11
  %ep15 = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 3
  %18 = ptrtoint ptr %ep15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ep15, align 8
  %txq_idx = getelementptr inbounds %struct.c4iw_ep, ptr %19, i32 0, i32 23
  %20 = ptrtoint ptr %txq_idx to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %txq_idx, align 4
  %shl.i = shl i16 %21, 1
  %queue_mapping1.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 10
  %22 = ptrtoint ptr %queue_mapping1.i.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %shl.i, ptr %queue_mapping1.i.i, align 8
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 7
  %23 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.i.not.i.i = icmp eq i32 %24, 0
  br i1 %tobool.i.not.i.i, label %__skb_put_zero.exit, label %do.body3.i.i, !prof !303

do.body3.i.i:                                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #11, !srcloc !324
  unreachable

__skb_put_zero.exit:                              ; preds = %if.end14
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %25 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %26, i32 128
  store ptr %add.ptr.i.i, ptr %tail.i.i.i, align 8
  %len9.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 6
  %27 = ptrtoint ptr %len9.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len9.i.i, align 4
  %add.i.i = add i32 %28, 128
  store i32 %add.i.i, ptr %len9.i.i, align 4
  %29 = getelementptr inbounds i8, ptr %26, i32 4
  %30 = call ptr @memset(ptr %29, i32 0, i32 124)
  %31 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 220200960, ptr %26, align 8
  %32 = ptrtoint ptr %ep15 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ep15, align 8
  %hwtid18 = getelementptr inbounds %struct.c4iw_ep, ptr %33, i32 0, i32 5
  %34 = ptrtoint ptr %hwtid18 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %hwtid18, align 4
  %shl = shl i32 %35, 8
  %or = or i32 %shl, 8
  %flowid_len16 = getelementptr inbounds %struct.fw_ri_wr, ptr %26, i32 0, i32 1
  %36 = ptrtoint ptr %flowid_len16 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %or, ptr %flowid_len16, align 4
  %37 = load ptr, ptr %ep15, align 8
  %wr_waitp = getelementptr inbounds %struct.c4iw_ep_common, ptr %37, i32 0, i32 9
  %38 = ptrtoint ptr %wr_waitp to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %wr_waitp, align 4
  %40 = ptrtoint ptr %39 to i32
  %conv20 = zext i32 %40 to i64
  %cookie = getelementptr inbounds %struct.fw_ri_wr, ptr %26, i32 0, i32 2
  %41 = ptrtoint ptr %cookie to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %conv20, ptr %cookie, align 8
  %u = getelementptr inbounds %struct.fw_ri_wr, ptr %26, i32 0, i32 3
  %42 = ptrtoint ptr %u to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %u, align 8
  %mpa_attr = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 4, i32 19
  %43 = ptrtoint ptr %mpa_attr to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %mpa_attr, align 1
  %shl23 = shl i8 %44, 7
  %p2p_type = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 4, i32 19, i32 6
  %45 = ptrtoint ptr %p2p_type to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %p2p_type, align 1
  %or28 = or i8 %shl23, %46
  %mpareqbit_p2ptype = getelementptr inbounds %struct.fw_ri_wr, ptr %26, i32 0, i32 3, i32 0, i32 1
  %47 = ptrtoint ptr %mpareqbit_p2ptype to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %or28, ptr %mpareqbit_p2ptype, align 1
  %mpa_attrs = getelementptr inbounds %struct.fw_ri_wr, ptr %26, i32 0, i32 3, i32 0, i32 3
  %48 = ptrtoint ptr %mpa_attrs to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 8, ptr %mpa_attrs, align 4
  %recv_marker_enabled = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 4, i32 19, i32 1
  %49 = ptrtoint ptr %recv_marker_enabled to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %recv_marker_enabled, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool34.not = icmp eq i8 %50, 0
  %spec.store.select = select i1 %tobool34.not, i8 8, i8 9
  %51 = ptrtoint ptr %mpa_attrs to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %spec.store.select, ptr %mpa_attrs, align 4
  %xmit_marker_enabled = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 4, i32 19, i32 2
  %52 = ptrtoint ptr %xmit_marker_enabled to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %xmit_marker_enabled, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool44.not = icmp eq i8 %53, 0
  br i1 %tobool44.not, label %__skb_put_zero.exit.if.end51_crit_edge, label %if.then45

__skb_put_zero.exit.if.end51_crit_edge:           ; preds = %__skb_put_zero.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end51

if.then45:                                        ; preds = %__skb_put_zero.exit
  call void @__sanitizer_cov_trace_pc() #13
  %54 = or i8 %spec.store.select, 2
  %55 = ptrtoint ptr %mpa_attrs to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %mpa_attrs, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.then45, %__skb_put_zero.exit.if.end51_crit_edge
  %crc_enabled = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 4, i32 19, i32 3
  %56 = ptrtoint ptr %crc_enabled to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %crc_enabled, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool54.not = icmp eq i8 %57, 0
  br i1 %tobool54.not, label %if.end51.if.end61_crit_edge, label %if.then55

if.end51.if.end61_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end61

if.then55:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  %58 = ptrtoint ptr %mpa_attrs to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %mpa_attrs, align 4
  %60 = or i8 %59, 4
  store i8 %60, ptr %mpa_attrs, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.then55, %if.end51.if.end61_crit_edge
  %qp_caps = getelementptr inbounds %struct.fw_ri_wr, ptr %26, i32 0, i32 3, i32 0, i32 4
  %61 = ptrtoint ptr %qp_caps to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 7, ptr %qp_caps, align 1
  %uobject = getelementptr inbounds %struct.ib_qp, ptr %qhp, i32 0, i32 14
  %62 = ptrtoint ptr %uobject to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %uobject, align 8
  %tobool63.not = icmp eq ptr %63, null
  %spec.store.select228 = select i1 %tobool63.not, i8 31, i8 7
  store i8 %spec.store.select228, ptr %qp_caps, align 1
  %in_use.i = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 5, i32 1, i32 12
  %64 = ptrtoint ptr %in_use.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %in_use.i, align 2
  %nrqe = getelementptr inbounds %struct.fw_ri_wr, ptr %26, i32 0, i32 3, i32 0, i32 5
  %66 = ptrtoint ptr %nrqe to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %65, ptr %nrqe, align 2
  %pd = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 4, i32 14
  %67 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %pd, align 4
  %pdid = getelementptr inbounds %struct.fw_ri_wr, ptr %26, i32 0, i32 3, i32 0, i32 6
  %69 = ptrtoint ptr %pdid to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %pdid, align 8
  %qid79 = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 5, i32 0, i32 10
  %70 = ptrtoint ptr %qid79 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %qid79, align 8
  %qpid = getelementptr inbounds %struct.fw_ri_wr, ptr %26, i32 0, i32 3, i32 0, i32 7
  %72 = ptrtoint ptr %qpid to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %qpid, align 4
  %73 = load i32, ptr %qid79, align 8
  %sq_eqid = getelementptr inbounds %struct.fw_ri_wr, ptr %26, i32 0, i32 3, i32 0, i32 8
  %74 = ptrtoint ptr %sq_eqid to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %sq_eqid, align 8
  %srq = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 10
  %75 = ptrtoint ptr %srq to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %srq, align 8
  %tobool85.not = icmp eq ptr %76, null
  br i1 %tobool85.not, label %if.else, label %if.then86

if.then86:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  %idx = getelementptr inbounds %struct.c4iw_srq, ptr %76, i32 0, i32 7
  %77 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %idx, align 4
  %or88 = or i32 %78, -2147483648
  %rq_eqid = getelementptr inbounds %struct.fw_ri_wr, ptr %26, i32 0, i32 3, i32 0, i32 9
  %79 = ptrtoint ptr %rq_eqid to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %or88, ptr %rq_eqid, align 4
  br label %if.end102

if.else:                                          ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  %qid91 = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 5, i32 1, i32 8
  %80 = ptrtoint ptr %qid91 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %qid91, align 8
  %rq_eqid93 = getelementptr inbounds %struct.fw_ri_wr, ptr %26, i32 0, i32 3, i32 0, i32 9
  %82 = ptrtoint ptr %rq_eqid93 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %rq_eqid93, align 4
  %rqt_size = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 5, i32 1, i32 11
  %83 = ptrtoint ptr %rqt_size to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %rqt_size, align 4
  %conv96 = zext i16 %84 to i32
  %hwrqsize = getelementptr inbounds %struct.fw_ri_wr, ptr %26, i32 0, i32 3, i32 0, i32 16
  %85 = ptrtoint ptr %hwrqsize to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %conv96, ptr %hwrqsize, align 8
  %rqt_hwaddr = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 5, i32 1, i32 10
  %86 = ptrtoint ptr %rqt_hwaddr to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %rqt_hwaddr, align 8
  %vr = getelementptr inbounds %struct.c4iw_dev, ptr %rhp, i32 0, i32 1, i32 8, i32 4
  %88 = ptrtoint ptr %vr to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %vr, align 8
  %rq100 = getelementptr inbounds %struct.cxgb4_virt_res, ptr %89, i32 0, i32 3
  %90 = ptrtoint ptr %rq100 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %rq100, align 4
  %sub = sub i32 %87, %91
  %hwrqaddr = getelementptr inbounds %struct.fw_ri_wr, ptr %26, i32 0, i32 3, i32 0, i32 17
  %92 = ptrtoint ptr %hwrqaddr to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %sub, ptr %hwrqaddr, align 4
  br label %if.end102

if.end102:                                        ; preds = %if.else, %if.then86
  %93 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %attr, align 4
  %scqid = getelementptr inbounds %struct.fw_ri_wr, ptr %26, i32 0, i32 3, i32 0, i32 10
  %95 = ptrtoint ptr %scqid to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %scqid, align 8
  %rcq = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 4, i32 1
  %96 = ptrtoint ptr %rcq to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %rcq, align 4
  %rcqid = getelementptr inbounds %struct.fw_ri_wr, ptr %26, i32 0, i32 3, i32 0, i32 11
  %98 = ptrtoint ptr %rcqid to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %rcqid, align 4
  %max_ord = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 4, i32 12
  %99 = ptrtoint ptr %max_ord to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %max_ord, align 4
  %ord_max = getelementptr inbounds %struct.fw_ri_wr, ptr %26, i32 0, i32 3, i32 0, i32 12
  %101 = ptrtoint ptr %ord_max to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %ord_max, align 8
  %102 = ptrtoint ptr %max_ird to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %max_ird, align 4
  %ird_max = getelementptr inbounds %struct.fw_ri_wr, ptr %26, i32 0, i32 3, i32 0, i32 13
  %104 = ptrtoint ptr %ird_max to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %ird_max, align 4
  %105 = ptrtoint ptr %ep15 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %ep15, align 8
  %snd_seq = getelementptr inbounds %struct.c4iw_ep, ptr %106, i32 0, i32 6
  %107 = ptrtoint ptr %snd_seq to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %snd_seq, align 4
  %iss = getelementptr inbounds %struct.fw_ri_wr, ptr %26, i32 0, i32 3, i32 0, i32 14
  %109 = ptrtoint ptr %iss to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %iss, align 8
  %110 = load ptr, ptr %ep15, align 8
  %rcv_seq = getelementptr inbounds %struct.c4iw_ep, ptr %110, i32 0, i32 7
  %111 = ptrtoint ptr %rcv_seq to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %rcv_seq, align 4
  %irs = getelementptr inbounds %struct.fw_ri_wr, ptr %26, i32 0, i32 3, i32 0, i32 15
  %113 = ptrtoint ptr %irs to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %irs, align 4
  %114 = ptrtoint ptr %mpa_attr to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %mpa_attr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %tobool119.not = icmp eq i8 %115, 0
  br i1 %tobool119.not, label %if.end102.if.end125_crit_edge, label %if.then120

if.end102.if.end125_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end125

if.then120:                                       ; preds = %if.end102
  %116 = ptrtoint ptr %p2p_type to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %p2p_type, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @build_rtr_msg.__UNIQUE_ID_ddebug701, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rdma_init, %if.then.i)) #11
          to label %do.end.i234 [label %if.then.i], !srcloc !300

if.then.i:                                        ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i233 = zext i8 %117 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @build_rtr_msg.__UNIQUE_ID_ddebug701, ptr noundef nonnull @.str.86, i32 noundef %conv.i233) #11
  br label %do.end.i234

do.end.i234:                                      ; preds = %if.then.i, %if.then120
  %u.i = getelementptr inbounds %struct.fw_ri_wr, ptr %26, i32 0, i32 3, i32 0, i32 19
  %118 = call ptr @memset(ptr %u.i, i32 0, i32 48)
  %119 = zext i8 %117 to i64
  call void @__sanitizer_cov_trace_switch(i64 %119, ptr @__sancov_gen_cov_switch_values.133)
  switch i8 %117, label %do.end.i234.if.end125_crit_edge [
    i8 0, label %sw.bb.i
    i8 1, label %sw.bb10.i
  ]

do.end.i234.if.end125_crit_edge:                  ; preds = %do.end.i234
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end125

sw.bb.i:                                          ; preds = %do.end.i234
  call void @__sanitizer_cov_trace_pc() #13
  %120 = ptrtoint ptr %u.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 20, ptr %u.i, align 8
  %stag_sink.i = getelementptr inbounds %struct.fw_ri_wr, ptr %26, i32 0, i32 3, i32 0, i32 19, i32 0, i32 7
  %121 = ptrtoint ptr %stag_sink.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 1, ptr %stag_sink.i, align 4
  %to_sink.i = getelementptr inbounds %struct.fw_ri_wr, ptr %26, i32 0, i32 3, i32 0, i32 19, i32 0, i32 8
  %122 = ptrtoint ptr %to_sink.i to i32
  call void @__asan_store8_noabort(i32 %122)
  store i64 1, ptr %to_sink.i, align 8
  %u8.i = getelementptr inbounds %struct.fw_ri_wr, ptr %26, i32 0, i32 3, i32 0, i32 19, i32 0, i32 10
  %123 = ptrtoint ptr %u8.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 -127, ptr %u8.i, align 8
  br label %sw.epilog.sink.split.i

sw.bb10.i:                                        ; preds = %do.end.i234
  call void @__sanitizer_cov_trace_pc() #13
  %124 = ptrtoint ptr %u.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 22, ptr %u.i, align 8
  %stag_src.i = getelementptr inbounds %struct.fw_ri_wr, ptr %26, i32 0, i32 3, i32 0, i32 19, i32 0, i32 10
  %125 = ptrtoint ptr %stag_src.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 1, ptr %stag_src.i, align 8
  %to_src_lo.i = getelementptr inbounds %struct.fw_ri_wr, ptr %26, i32 0, i32 3, i32 0, i32 19, i32 0, i32 12
  %126 = ptrtoint ptr %to_src_lo.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 1, ptr %to_src_lo.i, align 8
  %stag_sink16.i = getelementptr inbounds %struct.fw_ri_wr, ptr %26, i32 0, i32 3, i32 0, i32 19, i32 0, i32 6
  %127 = ptrtoint ptr %stag_sink16.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 1, ptr %stag_sink16.i, align 8
  %to_sink_lo.i = getelementptr inbounds %struct.fw_ri_wr, ptr %26, i32 0, i32 3, i32 0, i32 19, i32 0, i32 8
  %128 = ptrtoint ptr %to_sink_lo.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 1, ptr %to_sink_lo.i, align 8
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb10.i, %sw.bb.i
  %len1619.i = getelementptr inbounds %struct.fw_ri_wr, ptr %26, i32 0, i32 3, i32 0, i32 19, i32 0, i32 4
  %129 = ptrtoint ptr %len1619.i to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 3, ptr %len1619.i, align 1
  br label %if.end125

if.end125:                                        ; preds = %sw.epilog.sink.split.i, %do.end.i234.if.end125_crit_edge, %if.end102.if.end125_crit_edge
  %rdev126 = getelementptr inbounds %struct.c4iw_dev, ptr %rhp, i32 0, i32 1
  %130 = ptrtoint ptr %ep15 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %ep15, align 8
  %wr_waitp129 = getelementptr inbounds %struct.c4iw_ep_common, ptr %131, i32 0, i32 9
  %132 = ptrtoint ptr %wr_waitp129 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %wr_waitp129, align 4
  %hwtid131 = getelementptr inbounds %struct.c4iw_ep, ptr %131, i32 0, i32 5
  %134 = ptrtoint ptr %hwtid131 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %hwtid131, align 4
  %136 = ptrtoint ptr %qid79 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %qid79, align 8
  %call135 = tail call fastcc i32 @c4iw_ref_send_wait(ptr noundef %rdev126, ptr noundef nonnull %call.i, ptr noundef %133, i32 noundef %135, i32 noundef %137, ptr noundef nonnull @.str.75)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call135)
  %tobool136.not = icmp eq i32 %call135, 0
  br i1 %tobool136.not, label %if.end125.do.body141_crit_edge, label %if.end138

if.end125.do.body141_crit_edge:                   ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body141

if.end138:                                        ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #13
  %138 = ptrtoint ptr %max_ird to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %max_ird, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %qps.i) #11
  %140 = ptrtoint ptr %avail_ird.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %avail_ird.i, align 8
  %add.i = add i32 %141, %139
  store i32 %add.i, ptr %avail_ird.i, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %qps.i) #11
  br label %do.body141

do.body141:                                       ; preds = %if.end138, %if.end125.do.body141_crit_edge, %if.then11, %do.end.do.body141_crit_edge
  %ret.0 = phi i32 [ -12, %if.then11 ], [ %call135, %if.end138 ], [ 0, %if.end125.do.body141_crit_edge ], [ -12, %do.end.do.body141_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rdma_init.__UNIQUE_ID_ddebug703, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rdma_init, %if.then153)) #11
          to label %do.end156 [label %if.then153], !srcloc !300

if.then153:                                       ; preds = %do.body141
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rdma_init.__UNIQUE_ID_ddebug703, ptr noundef nonnull @.str.79, i32 noundef %ret.0) #11
  br label %do.end156

do.end156:                                        ; preds = %if.then153, %do.body141
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @flush_qp(ptr noundef %qhp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %recv_cq = getelementptr inbounds %struct.ib_qp, ptr %qhp, i32 0, i32 3
  %0 = ptrtoint ptr %recv_cq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %recv_cq, align 4
  %send_cq = getelementptr inbounds %struct.ib_qp, ptr %qhp, i32 0, i32 2
  %2 = ptrtoint ptr %send_cq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %send_cq, align 8
  %uobject = getelementptr inbounds %struct.ib_qp, ptr %qhp, i32 0, i32 14
  %4 = ptrtoint ptr %uobject to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %uobject, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end42, label %if.then

if.then:                                          ; preds = %entry
  %flushed = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 5, i32 4
  %6 = ptrtoint ptr %flushed to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flushed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool4.not = icmp eq i32 %7, 0
  br i1 %tobool4.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %if.then
  %8 = ptrtoint ptr %flushed to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %flushed, align 8
  %qp_errp.i = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 5, i32 5
  %9 = ptrtoint ptr %qp_errp.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %qp_errp.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %10, align 1
  %qp_errp.i66 = getelementptr inbounds %struct.c4iw_cq, ptr %1, i32 0, i32 3, i32 22
  %12 = ptrtoint ptr %qp_errp.i66 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %qp_errp.i66, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %13, align 1
  %comp_handler_lock = getelementptr inbounds %struct.c4iw_cq, ptr %1, i32 0, i32 5
  %call11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %comp_handler_lock) #11
  %comp_handler = getelementptr inbounds %struct.ib_cq, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %comp_handler to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %comp_handler, align 8
  %cq_context = getelementptr inbounds %struct.ib_cq, ptr %1, i32 0, i32 4
  %17 = ptrtoint ptr %cq_context to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cq_context, align 8
  tail call void %16(ptr noundef %1, ptr noundef %18) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %comp_handler_lock, i32 noundef %call11) #11
  %cmp17.not = icmp eq ptr %3, %1
  br i1 %cmp17.not, label %if.end.cleanup_crit_edge, label %if.then19

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %qp_errp.i67 = getelementptr inbounds %struct.c4iw_cq, ptr %3, i32 0, i32 3, i32 22
  %19 = ptrtoint ptr %qp_errp.i67 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %qp_errp.i67, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %20, align 1
  %comp_handler_lock28 = getelementptr inbounds %struct.c4iw_cq, ptr %3, i32 0, i32 5
  %call30 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %comp_handler_lock28) #11
  %comp_handler36 = getelementptr inbounds %struct.ib_cq, ptr %3, i32 0, i32 2
  %22 = ptrtoint ptr %comp_handler36 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %comp_handler36, align 8
  %cq_context39 = getelementptr inbounds %struct.ib_cq, ptr %3, i32 0, i32 4
  %24 = ptrtoint ptr %cq_context39 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cq_context39, align 8
  tail call void %23(ptr noundef %3, ptr noundef %25) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %comp_handler_lock28, i32 noundef %call30) #11
  br label %cleanup

if.end42:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @__flush_qp(ptr noundef %qhp, ptr noundef %1, ptr noundef %3)
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %if.then19, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rdma_fini(ptr noundef %rhp, ptr noundef %qhp, ptr noundef %ep) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rdma_fini.__UNIQUE_ID_ddebug699, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rdma_fini, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !300

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %qid = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 5, i32 0, i32 10
  %0 = ptrtoint ptr %qid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %qid, align 8
  %hwtid = getelementptr inbounds %struct.c4iw_ep, ptr %ep, i32 0, i32 5
  %2 = ptrtoint ptr %hwtid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwtid, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rdma_fini.__UNIQUE_ID_ddebug699, ptr noundef nonnull @.str.103, ptr noundef %qhp, i32 noundef %1, i32 noundef %3) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %ep_skb_list = getelementptr inbounds %struct.c4iw_ep_common, ptr %ep, i32 0, i32 3
  %call3 = tail call ptr @skb_dequeue(ptr noundef %ep_skb_list) #11
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %do.end22, label %if.end38, !prof !302

do.end22:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1702, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.end38:                                         ; preds = %do.end
  %txq_idx = getelementptr inbounds %struct.c4iw_ep, ptr %ep, i32 0, i32 23
  %4 = ptrtoint ptr %txq_idx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %txq_idx, align 4
  %shl.i = shl i16 %5, 1
  %queue_mapping1.i.i = getelementptr inbounds %struct.sk_buff, ptr %call3, i32 0, i32 10
  %6 = ptrtoint ptr %queue_mapping1.i.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %shl.i, ptr %queue_mapping1.i.i, align 8
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call3, i32 0, i32 7
  %7 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not.i.i = icmp eq i32 %8, 0
  br i1 %tobool.i.not.i.i, label %__skb_put_zero.exit, label %do.body3.i.i, !prof !303

do.body3.i.i:                                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #11, !srcloc !324
  unreachable

__skb_put_zero.exit:                              ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call3, i32 0, i32 16
  %9 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 128
  store ptr %add.ptr.i.i, ptr %tail.i.i.i, align 8
  %len9.i.i = getelementptr inbounds %struct.sk_buff, ptr %call3, i32 0, i32 6
  %11 = ptrtoint ptr %len9.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len9.i.i, align 4
  %add.i.i = add i32 %12, 128
  store i32 %add.i.i, ptr %len9.i.i, align 4
  %13 = getelementptr inbounds i8, ptr %10, i32 4
  %14 = call ptr @memset(ptr %13, i32 0, i32 124)
  %15 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 220200960, ptr %10, align 8
  %hwtid40 = getelementptr inbounds %struct.c4iw_ep, ptr %ep, i32 0, i32 5
  %16 = ptrtoint ptr %hwtid40 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %hwtid40, align 4
  %shl = shl i32 %17, 8
  %or = or i32 %shl, 8
  %flowid_len16 = getelementptr inbounds %struct.fw_ri_wr, ptr %10, i32 0, i32 1
  %18 = ptrtoint ptr %flowid_len16 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or, ptr %flowid_len16, align 4
  %wr_waitp = getelementptr inbounds %struct.c4iw_ep_common, ptr %ep, i32 0, i32 9
  %19 = ptrtoint ptr %wr_waitp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %wr_waitp, align 4
  %21 = ptrtoint ptr %20 to i32
  %conv42 = zext i32 %21 to i64
  %cookie = getelementptr inbounds %struct.fw_ri_wr, ptr %10, i32 0, i32 2
  %22 = ptrtoint ptr %cookie to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %conv42, ptr %cookie, align 8
  %u = getelementptr inbounds %struct.fw_ri_wr, ptr %10, i32 0, i32 3
  %23 = ptrtoint ptr %u to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %u, align 8
  %rdev = getelementptr inbounds %struct.c4iw_dev, ptr %rhp, i32 0, i32 1
  %24 = load ptr, ptr %wr_waitp, align 4
  %ep45 = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 3
  %25 = ptrtoint ptr %ep45 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ep45, align 8
  %hwtid46 = getelementptr inbounds %struct.c4iw_ep, ptr %26, i32 0, i32 5
  %27 = ptrtoint ptr %hwtid46 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %hwtid46, align 4
  %qid49 = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 5, i32 0, i32 10
  %29 = ptrtoint ptr %qid49 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %qid49, align 8
  %call50 = tail call fastcc i32 @c4iw_ref_send_wait(ptr noundef %rdev, ptr noundef nonnull %call3, ptr noundef %24, i32 noundef %28, i32 noundef %30, ptr noundef nonnull @.str.101)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rdma_fini.__UNIQUE_ID_ddebug700, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rdma_fini, %if.then63)) #11
          to label %cleanup [label %if.then63], !srcloc !300

if.then63:                                        ; preds = %__skb_put_zero.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rdma_fini.__UNIQUE_ID_ddebug700, ptr noundef nonnull @.str.79, i32 noundef %call50) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then63, %__skb_put_zero.exit, %do.end22
  %retval.0 = phi i32 [ -12, %do.end22 ], [ %call50, %if.then63 ], [ %call50, %__skb_put_zero.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kref_put(ptr noundef %kref, ptr nocapture noundef readonly %release) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !304
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #11, !srcloc !305
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.return_crit_edge, label %if.then10.i.i.i, !prof !303

if.end5.i.i.i.return_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #11
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !306
  tail call void %release(ptr noundef %kref) #11, !callees !323
  br label %return

return:                                           ; preds = %if.then, %if.then10.i.i.i, %if.end5.i.i.i.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_c4iw_free_ep(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @post_terminate(ptr noundef %qhp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @post_terminate.__UNIQUE_ID_ddebug697, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@post_terminate, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !300

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %qid = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 5, i32 0, i32 10
  %0 = ptrtoint ptr %qid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %qid, align 8
  %ep = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 3
  %2 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ep, align 8
  %hwtid = getelementptr inbounds %struct.c4iw_ep, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %hwtid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwtid, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @post_terminate.__UNIQUE_ID_ddebug697, ptr noundef nonnull @.str.103, ptr noundef %qhp, i32 noundef %1, i32 noundef %5) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %ep3 = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 3
  %6 = ptrtoint ptr %ep3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ep3, align 8
  %ep_skb_list = getelementptr inbounds %struct.c4iw_ep_common, ptr %7, i32 0, i32 3
  %call4 = tail call ptr @skb_dequeue(ptr noundef %ep_skb_list) #11
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %do.end23, label %if.end39, !prof !302

do.end23:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1571, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.end39:                                         ; preds = %do.end
  %8 = ptrtoint ptr %ep3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ep3, align 8
  %txq_idx = getelementptr inbounds %struct.c4iw_ep, ptr %9, i32 0, i32 23
  %10 = ptrtoint ptr %txq_idx to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %txq_idx, align 4
  %shl.i = shl i16 %11, 1
  %queue_mapping1.i.i = getelementptr inbounds %struct.sk_buff, ptr %call4, i32 0, i32 10
  %12 = ptrtoint ptr %queue_mapping1.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %shl.i, ptr %queue_mapping1.i.i, align 8
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call4, i32 0, i32 7
  %13 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.i.not.i.i = icmp eq i32 %14, 0
  br i1 %tobool.i.not.i.i, label %__skb_put_zero.exit, label %do.body3.i.i, !prof !303

do.body3.i.i:                                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #11, !srcloc !324
  unreachable

__skb_put_zero.exit:                              ; preds = %if.end39
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call4, i32 0, i32 16
  %15 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 128
  store ptr %add.ptr.i.i, ptr %tail.i.i.i, align 8
  %len9.i.i = getelementptr inbounds %struct.sk_buff, ptr %call4, i32 0, i32 6
  %17 = ptrtoint ptr %len9.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len9.i.i, align 4
  %add.i.i = add i32 %18, 128
  store i32 %add.i.i, ptr %len9.i.i, align 4
  %19 = getelementptr inbounds i8, ptr %16, i32 4
  %20 = call ptr @memset(ptr %19, i32 0, i32 124)
  %21 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 218103808, ptr %16, align 8
  %22 = ptrtoint ptr %ep3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ep3, align 8
  %hwtid43 = getelementptr inbounds %struct.c4iw_ep, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %hwtid43 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %hwtid43, align 4
  %shl = shl i32 %25, 8
  %or = or i32 %shl, 8
  %flowid_len16 = getelementptr inbounds %struct.fw_ri_wr, ptr %16, i32 0, i32 1
  %26 = ptrtoint ptr %flowid_len16 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %or, ptr %flowid_len16, align 4
  %u = getelementptr inbounds %struct.fw_ri_wr, ptr %16, i32 0, i32 3
  %27 = ptrtoint ptr %u to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 2, ptr %u, align 8
  %immdlen = getelementptr inbounds %struct.fw_ri_wr, ptr %16, i32 0, i32 3, i32 0, i32 3
  %28 = ptrtoint ptr %immdlen to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 4, ptr %immdlen, align 4
  %termmsg = getelementptr inbounds %struct.fw_ri_wr, ptr %16, i32 0, i32 3, i32 0, i32 6
  %layer_etype = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 4, i32 21
  %29 = ptrtoint ptr %layer_etype to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %layer_etype, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 35, i8 %30)
  %cmp = icmp eq i8 %30, 35
  br i1 %cmp, label %if.then48, label %if.else

if.then48:                                        ; preds = %__skb_put_zero.exit
  call void @__sanitizer_cov_trace_pc() #13
  %31 = ptrtoint ptr %termmsg to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 35, ptr %termmsg, align 2
  %ecode = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 4, i32 22
  %32 = ptrtoint ptr %ecode to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %ecode, align 1
  br label %if.end56

if.else:                                          ; preds = %__skb_put_zero.exit
  call void @__sanitizer_cov_trace_pc() #13
  %34 = ptrtoint ptr %termmsg to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %termmsg, align 1
  br label %if.end56

if.end56:                                         ; preds = %if.else, %if.then48
  %.sink = phi i8 [ %33, %if.then48 ], [ 0, %if.else ]
  %35 = getelementptr inbounds %struct.terminate_message, ptr %termmsg, i32 0, i32 1
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %.sink, ptr %35, align 1
  %rhp = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 2
  %37 = ptrtoint ptr %rhp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rhp, align 4
  %rdev = getelementptr inbounds %struct.c4iw_dev, ptr %38, i32 0, i32 1
  %call57 = tail call i32 @c4iw_ofld_send(ptr noundef %rdev, ptr noundef nonnull %call4) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end56, %do.end23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @c4iw_ep_disconnect(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @c4iw_destroy_qp(ptr noundef %ib_qp, ptr nocapture noundef readnone %udata) local_unnamed_addr #0 align 64 {
entry:
  %attrs = alloca %struct.c4iw_qp_attributes, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %attrs) #11
  %0 = call ptr @memset(ptr %attrs, i32 255, i32 128)
  %rhp1 = getelementptr inbounds %struct.c4iw_qp, ptr %ib_qp, i32 0, i32 2
  %1 = ptrtoint ptr %rhp1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rhp1, align 4
  %ucontext2 = getelementptr inbounds %struct.c4iw_qp, ptr %ib_qp, i32 0, i32 11
  %3 = ptrtoint ptr %ucontext2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ucontext2, align 4
  %next_state = getelementptr inbounds %struct.c4iw_qp_attributes, ptr %attrs, i32 0, i32 15
  %5 = ptrtoint ptr %next_state to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %next_state, align 4
  %state = getelementptr inbounds %struct.c4iw_qp, ptr %ib_qp, i32 0, i32 4, i32 7
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp = icmp eq i32 %7, 3
  %. = zext i1 %cmp to i32
  %call4 = call i32 @c4iw_modify_qp(ptr noundef %2, ptr noundef %ib_qp, i32 noundef 1, ptr noundef nonnull %attrs, i32 noundef %.)
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 2086) #11
  %ep = getelementptr inbounds %struct.c4iw_qp, ptr %ib_qp, i32 0, i32 3
  %8 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ep, align 8
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.do.end18_crit_edge, label %if.end10

entry.do.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end18

if.end10:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #11
  %10 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #11
  %wait = getelementptr inbounds %struct.c4iw_qp, ptr %ib_qp, i32 0, i32 8
  %call11106 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #11
  %11 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ep, align 8
  %tobool13.not107 = icmp eq ptr %12, null
  br i1 %tobool13.not107, label %if.end10.for.end_crit_edge, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  br label %cleanup

if.end10.for.end_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end10.cleanup_crit_edge
  call void @schedule() #11
  %call11 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #11
  %13 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ep, align 8
  %tobool13.not = icmp eq ptr %14, null
  br i1 %tobool13.not, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end10.for.end_crit_edge
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #11
  br label %do.end18

do.end18:                                         ; preds = %for.end, %entry.do.end18_crit_edge
  %qps = getelementptr inbounds %struct.c4iw_dev, ptr %2, i32 0, i32 4
  call void @_raw_spin_lock_irq(ptr noundef %qps) #11
  %qid = getelementptr inbounds %struct.c4iw_qp, ptr %ib_qp, i32 0, i32 5, i32 0, i32 10
  %15 = ptrtoint ptr %qid to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %qid, align 8
  %call20 = call ptr @__xa_erase(ptr noundef %qps, i32 noundef %16) #11
  %db_fc_entry = getelementptr inbounds %struct.c4iw_qp, ptr %ib_qp, i32 0, i32 1
  %17 = ptrtoint ptr %db_fc_entry to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %db_fc_entry, align 4
  %cmp.i.not = icmp eq ptr %18, %db_fc_entry
  br i1 %cmp.i.not, label %do.end18.if.end25_crit_edge, label %if.then23

do.end18.if.end25_crit_edge:                      ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.then23:                                        ; preds = %do.end18
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %db_fc_entry) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.then23.list_del_init.exit_crit_edge

if.then23.list_del_init.exit_crit_edge:           ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.c4iw_qp, ptr %ib_qp, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i, align 4
  %21 = ptrtoint ptr %db_fc_entry to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %db_fc_entry, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev1.i.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %20, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then23.list_del_init.exit_crit_edge
  %25 = ptrtoint ptr %db_fc_entry to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %db_fc_entry, ptr %db_fc_entry, align 4
  %prev.i3.i = getelementptr inbounds %struct.c4iw_qp, ptr %ib_qp, i32 0, i32 1, i32 1
  %26 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %db_fc_entry, ptr %prev.i3.i, align 4
  br label %if.end25

if.end25:                                         ; preds = %list_del_init.exit, %do.end18.if.end25_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef %qps) #11
  %max_ird = getelementptr inbounds %struct.c4iw_qp, ptr %ib_qp, i32 0, i32 4, i32 13
  %27 = ptrtoint ptr %max_ird to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %max_ird, align 4
  call void @_raw_spin_lock_irq(ptr noundef %qps) #11
  %avail_ird.i = getelementptr inbounds %struct.c4iw_dev, ptr %2, i32 0, i32 13
  %29 = ptrtoint ptr %avail_ird.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %avail_ird.i, align 8
  %add.i = add i32 %30, %28
  store i32 %add.i, ptr %avail_ird.i, align 8
  call void @_raw_spin_unlock_irq(ptr noundef %qps) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c4iw_qp_rem_ref.__UNIQUE_ID_ddebug692, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c4iw_destroy_qp, %if.then.i)) #11
          to label %do.end.i [label %if.then.i], !srcloc !300

if.then.i:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @c4iw_qp_rem_ref.__UNIQUE_ID_ddebug692, ptr noundef nonnull @.str.4, ptr noundef %ib_qp) #11
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end25
  %qp_refcnt.i = getelementptr inbounds %struct.c4iw_qp, ptr %ib_qp, i32 0, i32 14
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %qp_refcnt.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !304
  call void @llvm.prefetch.p0(ptr %qp_refcnt.i, i32 1, i32 3, i32 1) #11
  %31 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %qp_refcnt.i, ptr %qp_refcnt.i, i32 1, ptr elementtype(i32) %qp_refcnt.i) #11, !srcloc !305
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %31, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then5.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.c4iw_qp_rem_ref.exit_crit_edge, label %if.then10.i.i.i.i, !prof !303

if.end5.i.i.i.i.c4iw_qp_rem_ref.exit_crit_edge:   ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %c4iw_qp_rem_ref.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %qp_refcnt.i, i32 noundef 3) #11
  br label %c4iw_qp_rem_ref.exit

if.then5.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !306
  %qp_rel_comp.i = getelementptr inbounds %struct.c4iw_qp, ptr %ib_qp, i32 0, i32 13
  call void @complete(ptr noundef %qp_rel_comp.i) #11
  br label %c4iw_qp_rem_ref.exit

c4iw_qp_rem_ref.exit:                             ; preds = %if.then5.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.c4iw_qp_rem_ref.exit_crit_edge
  %qp_rel_comp = getelementptr inbounds %struct.c4iw_qp, ptr %ib_qp, i32 0, i32 13
  call void @wait_for_completion(ptr noundef %qp_rel_comp) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c4iw_destroy_qp.__UNIQUE_ID_ddebug714, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c4iw_destroy_qp, %if.then35)) #11
          to label %do.body42 [label %if.then35], !srcloc !300

if.then35:                                        ; preds = %c4iw_qp_rem_ref.exit
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %qid to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %qid, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @c4iw_destroy_qp.__UNIQUE_ID_ddebug714, ptr noundef nonnull @.str.30, ptr noundef %ib_qp, i32 noundef %33) #11
  br label %do.body42

do.body42:                                        ; preds = %if.then35, %c4iw_qp_rem_ref.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c4iw_destroy_qp.__UNIQUE_ID_ddebug715, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c4iw_destroy_qp, %if.then54)) #11
          to label %do.end57 [label %if.then54], !srcloc !300

if.then54:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @c4iw_destroy_qp.__UNIQUE_ID_ddebug715, ptr noundef nonnull @.str.32, ptr noundef %ib_qp, ptr noundef %4) #11
  br label %do.end57

do.end57:                                         ; preds = %if.then54, %do.body42
  %tobool59.not = icmp eq ptr %4, null
  %uctx = getelementptr inbounds %struct.c4iw_ucontext, ptr %4, i32 0, i32 1
  %uctx61 = getelementptr inbounds %struct.c4iw_dev, ptr %2, i32 0, i32 1, i32 3
  %cond = select i1 %tobool59.not, ptr %uctx61, ptr %uctx
  %rdev = getelementptr inbounds %struct.c4iw_dev, ptr %2, i32 0, i32 1
  %wq = getelementptr inbounds %struct.c4iw_qp, ptr %ib_qp, i32 0, i32 5
  %srq = getelementptr inbounds %struct.c4iw_qp, ptr %ib_qp, i32 0, i32 10
  %34 = ptrtoint ptr %srq to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %srq, align 8
  %tobool62.not = icmp eq ptr %35, null
  %lnot.ext64 = zext i1 %tobool62.not to i32
  call fastcc void @destroy_qp(ptr noundef %rdev, ptr noundef %wq, ptr noundef %cond, i32 noundef %lnot.ext64)
  %wr_waitp = getelementptr inbounds %struct.c4iw_qp, ptr %ib_qp, i32 0, i32 12
  %36 = ptrtoint ptr %wr_waitp to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %wr_waitp, align 8
  call fastcc void @c4iw_put_wr_wait(ptr noundef %37)
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %attrs) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__xa_erase(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @destroy_qp(ptr noundef %rdev, ptr nocapture noundef readonly %wq, ptr noundef %uctx, i32 noundef %has_rq) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i.i = getelementptr inbounds %struct.t4_sq, ptr %wq, i32 0, i32 17
  %0 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %flags.i.i, align 8
  %2 = and i16 %1, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not.i = icmp eq i16 %2, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dma_addr.i.i = getelementptr inbounds %struct.t4_sq, ptr %wq, i32 0, i32 1
  %3 = ptrtoint ptr %dma_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dma_addr.i.i, align 4
  %memsize.i.i = getelementptr inbounds %struct.t4_sq, ptr %wq, i32 0, i32 8
  %5 = ptrtoint ptr %memsize.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %memsize.i.i, align 8
  tail call void @c4iw_ocqp_pool_free(ptr noundef %rdev, i32 noundef %4, i32 noundef %6) #11
  br label %dealloc_sq.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %lldi.i.i = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 8
  %7 = ptrtoint ptr %lldi.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lldi.i.i, align 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  %memsize.i4.i = getelementptr inbounds %struct.t4_sq, ptr %wq, i32 0, i32 8
  %9 = ptrtoint ptr %memsize.i4.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %memsize.i4.i, align 8
  %11 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %wq, align 8
  %mapping.i.i = getelementptr inbounds %struct.t4_sq, ptr %wq, i32 0, i32 2
  %13 = ptrtoint ptr %mapping.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mapping.i.i, align 8
  tail call void @dma_free_attrs(ptr noundef %dev.i.i, i32 noundef %10, ptr noundef %12, i32 noundef %14, i32 noundef 0) #11
  br label %dealloc_sq.exit

dealloc_sq.exit:                                  ; preds = %if.else.i, %if.then.i
  %sw_sq = getelementptr inbounds %struct.t4_sq, ptr %wq, i32 0, i32 4
  %15 = ptrtoint ptr %sw_sq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sw_sq, align 8
  tail call void @kfree(ptr noundef %16) #11
  %qid = getelementptr inbounds %struct.t4_sq, ptr %wq, i32 0, i32 10
  %17 = ptrtoint ptr %qid to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %qid, align 8
  tail call void @c4iw_put_qpid(ptr noundef %rdev, i32 noundef %18, ptr noundef %uctx) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %has_rq)
  %tobool.not = icmp eq i32 %has_rq, 0
  br i1 %tobool.not, label %dealloc_sq.exit.if.end_crit_edge, label %if.then

dealloc_sq.exit.if.end_crit_edge:                 ; preds = %dealloc_sq.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %dealloc_sq.exit
  call void @__sanitizer_cov_trace_pc() #13
  %lldi = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 8
  %19 = ptrtoint ptr %lldi to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %lldi, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  %rq = getelementptr inbounds %struct.t4_wq, ptr %wq, i32 0, i32 1
  %memsize = getelementptr inbounds %struct.t4_wq, ptr %wq, i32 0, i32 1, i32 6
  %21 = ptrtoint ptr %memsize to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %memsize, align 8
  %23 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rq, align 8
  %mapping = getelementptr inbounds %struct.t4_wq, ptr %wq, i32 0, i32 1, i32 2
  %25 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mapping, align 8
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %22, ptr noundef %24, i32 noundef %26, i32 noundef 0) #11
  %rqt_hwaddr = getelementptr inbounds %struct.t4_wq, ptr %wq, i32 0, i32 1, i32 10
  %27 = ptrtoint ptr %rqt_hwaddr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rqt_hwaddr, align 8
  %rqt_size = getelementptr inbounds %struct.t4_wq, ptr %wq, i32 0, i32 1, i32 11
  %29 = ptrtoint ptr %rqt_size to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %rqt_size, align 4
  %conv = zext i16 %30 to i32
  tail call void @c4iw_rqtpool_free(ptr noundef %rdev, i32 noundef %28, i32 noundef %conv) #11
  %sw_rq = getelementptr inbounds %struct.t4_wq, ptr %wq, i32 0, i32 1, i32 3
  %31 = ptrtoint ptr %sw_rq to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sw_rq, align 4
  tail call void @kfree(ptr noundef %32) #11
  %qid9 = getelementptr inbounds %struct.t4_wq, ptr %wq, i32 0, i32 1, i32 8
  %33 = ptrtoint ptr %qid9 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %qid9, align 8
  tail call void @c4iw_put_qpid(ptr noundef %rdev, i32 noundef %34, ptr noundef %uctx) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %dealloc_sq.exit.if.end_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @c4iw_put_wr_wait(ptr noundef %wr_waitp) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c4iw_put_wr_wait.__UNIQUE_ID_ddebug668, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c4iw_put_wr_wait, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !300

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %kref = getelementptr inbounds %struct.c4iw_wr_wait, ptr %wr_waitp, i32 0, i32 2
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %kref, i32 noundef 4) #11
  %0 = ptrtoint ptr %kref to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %kref, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @c4iw_put_wr_wait.__UNIQUE_ID_ddebug668, ptr noundef nonnull @.str.107, ptr noundef %wr_waitp, i32 noundef %1) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %kref4 = getelementptr inbounds %struct.c4iw_wr_wait, ptr %wr_waitp, i32 0, i32 2
  %call.i.i.i.i40 = tail call zeroext i1 @__kasan_check_read(ptr noundef %kref4, i32 noundef 4) #11
  %2 = ptrtoint ptr %kref4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %kref4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %do.end20, label %do.end.if.end26_crit_edge, !prof !302

do.end.if.end26_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

do.end20:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.88, i32 noundef 222, i32 noundef 9, ptr noundef null) #11
  br label %if.end26

if.end26:                                         ; preds = %do.end20, %do.end.if.end26_crit_edge
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref4, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !304
  tail call void @llvm.prefetch.p0(ptr %kref4, i32 1, i32 3, i32 1) #11
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref4, ptr %kref4, i32 1, ptr elementtype(i32) %kref4) #11, !srcloc !305
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !303

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %kref4, i32 noundef 3) #11
  br label %kref_put.exit

if.then.i:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !306
  tail call void @_c4iw_free_wr_wait(ptr noundef %kref4) #11, !callees !323
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @c4iw_create_qp(ptr noundef %qp, ptr nocapture noundef %attrs, ptr noundef readonly %udata) local_unnamed_addr #0 align 64 {
entry:
  %uresp = alloca %struct.c4iw_create_qp_resp, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pd1 = getelementptr inbounds %struct.ib_qp, ptr %qp, i32 0, i32 1
  %0 = ptrtoint ptr %pd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pd1, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %uresp) #11
  %2 = call ptr @memset(ptr %uresp, i32 255, i32 80)
  %tobool.not = icmp eq ptr %udata, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %context = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %udata, i32 0, i32 3
  %3 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %context, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %4, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  %qp_type = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attrs, i32 0, i32 8
  %5 = ptrtoint ptr %qp_type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %qp_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp.not = icmp eq i32 %6, 2
  br i1 %cmp.not, label %lor.lhs.false, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %cond.end
  %create_flags = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attrs, i32 0, i32 9
  %7 = ptrtoint ptr %create_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %create_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool3.not = icmp eq i32 %8, 0
  br i1 %tobool3.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %rhp5 = getelementptr inbounds %struct.c4iw_pd, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %rhp5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rhp5, align 4
  %send_cq = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attrs, i32 0, i32 2
  %11 = ptrtoint ptr %send_cq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %send_cq, align 4
  %cqid = getelementptr inbounds %struct.c4iw_cq, ptr %12, i32 0, i32 3, i32 11
  %13 = ptrtoint ptr %cqid to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cqid, align 8
  %cqs.i = getelementptr inbounds %struct.c4iw_dev, ptr %10, i32 0, i32 3
  %call.i = tail call ptr @xa_load(ptr noundef %cqs.i, i32 noundef %14) #11
  %recv_cq = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attrs, i32 0, i32 3
  %15 = ptrtoint ptr %recv_cq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %recv_cq, align 4
  %cqid8 = getelementptr inbounds %struct.c4iw_cq, ptr %16, i32 0, i32 3, i32 11
  %17 = ptrtoint ptr %cqid8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cqid8, align 8
  %call.i672 = tail call ptr @xa_load(ptr noundef %cqs.i, i32 noundef %18) #11
  %tobool10.not = icmp eq ptr %call.i, null
  %tobool12.not = icmp eq ptr %call.i672, null
  %or.cond = select i1 %tobool10.not, i1 true, i1 %tobool12.not
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end14

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %cap = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attrs, i32 0, i32 6
  %max_inline_data = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attrs, i32 0, i32 6, i32 4
  %19 = ptrtoint ptr %max_inline_data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %max_inline_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 280, i32 %20)
  %cmp15 = icmp ugt i32 %20, 280
  br i1 %cmp15, label %if.end14.cleanup_crit_edge, label %if.end17

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end17:                                         ; preds = %if.end14
  %srq = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attrs, i32 0, i32 4
  %21 = ptrtoint ptr %srq to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %srq, align 4
  %tobool18.not = icmp eq ptr %22, null
  br i1 %tobool18.not, label %if.then19, label %if.end17.if.end29_crit_edge

if.end17.if.end29_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.then19:                                        ; preds = %if.end17
  %max_recv_wr = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attrs, i32 0, i32 6, i32 1
  %23 = ptrtoint ptr %max_recv_wr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %max_recv_wr, align 4
  %t4_max_rq_size = getelementptr inbounds %struct.c4iw_dev, ptr %10, i32 0, i32 1, i32 14, i32 3
  %25 = ptrtoint ptr %t4_max_rq_size to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %t4_max_rq_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %26)
  %cmp21 = icmp ugt i32 %24, %26
  br i1 %cmp21, label %if.then19.cleanup_crit_edge, label %if.end23

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end23:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  %add = add i32 %24, 1
  %27 = tail call i32 @llvm.umax.i32(i32 %add, i32 8)
  br label %if.end29

if.end29:                                         ; preds = %if.end23, %if.end17.if.end29_crit_edge
  %rqsize.0 = phi i32 [ 0, %if.end17.if.end29_crit_edge ], [ %27, %if.end23 ]
  %28 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cap, align 4
  %rdev31 = getelementptr inbounds %struct.c4iw_dev, ptr %10, i32 0, i32 1
  %hw_queue32 = getelementptr inbounds %struct.c4iw_dev, ptr %10, i32 0, i32 1, i32 14
  %t4_max_sq_size = getelementptr inbounds %struct.c4iw_dev, ptr %10, i32 0, i32 1, i32 14, i32 4
  %30 = ptrtoint ptr %t4_max_sq_size to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %t4_max_sq_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp33 = icmp ugt i32 %29, %31
  br i1 %cmp33, label %if.end29.cleanup_crit_edge, label %if.end35

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end35:                                         ; preds = %if.end29
  %add38 = add i32 %29, 1
  %32 = tail call i32 @llvm.umax.i32(i32 %add38, i32 8)
  %call42 = tail call ptr @c4iw_alloc_wr_wait(i32 noundef 3264) #11
  %wr_waitp = getelementptr inbounds %struct.c4iw_qp, ptr %qp, i32 0, i32 12
  %33 = ptrtoint ptr %wr_waitp to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call42, ptr %wr_waitp, align 8
  %tobool44.not = icmp eq ptr %call42, null
  br i1 %tobool44.not, label %if.end35.cleanup_crit_edge, label %if.end46

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end46:                                         ; preds = %if.end35
  %conv = trunc i32 %32 to i16
  %wq = getelementptr inbounds %struct.c4iw_qp, ptr %qp, i32 0, i32 5
  %size = getelementptr inbounds %struct.c4iw_qp, ptr %qp, i32 0, i32 5, i32 0, i32 12
  %34 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv, ptr %size, align 2
  %35 = ptrtoint ptr %hw_queue32 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %hw_queue32, align 8
  %add49 = add i32 %36, %32
  %mul = mul i32 %add49, 320
  %add50 = add i32 %mul, 128
  %memsize = getelementptr inbounds %struct.c4iw_qp, ptr %qp, i32 0, i32 5, i32 0, i32 8
  %37 = ptrtoint ptr %memsize to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %add50, ptr %memsize, align 8
  %flush_cidx = getelementptr inbounds %struct.c4iw_qp, ptr %qp, i32 0, i32 5, i32 0, i32 18
  %38 = ptrtoint ptr %flush_cidx to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 -1, ptr %flush_cidx, align 2
  %39 = ptrtoint ptr %srq to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %srq, align 4
  %tobool56.not = icmp eq ptr %40, null
  br i1 %tobool56.not, label %if.then57, label %if.end46.if.end69_crit_edge

if.end46.if.end69_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then57:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  %conv58 = trunc i32 %rqsize.0 to i16
  %size60 = getelementptr inbounds %struct.c4iw_qp, ptr %qp, i32 0, i32 5, i32 1, i32 13
  %41 = ptrtoint ptr %size60 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv58, ptr %size60, align 8
  %42 = ptrtoint ptr %hw_queue32 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %hw_queue32, align 8
  %add64 = add i32 %43, %rqsize.0
  %mul65 = shl i32 %add64, 7
  %memsize68 = getelementptr inbounds %struct.c4iw_qp, ptr %qp, i32 0, i32 5, i32 1, i32 6
  %44 = ptrtoint ptr %memsize68 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %mul65, ptr %memsize68, align 8
  br label %if.end69

if.end69:                                         ; preds = %if.then57, %if.end46.if.end69_crit_edge
  %tobool70.not = icmp eq ptr %cond, null
  br i1 %tobool70.not, label %if.end69.if.end97_crit_edge, label %if.then71

if.end69.if.end97_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end97

if.then71:                                        ; preds = %if.end69
  %add76 = add i32 %mul, 4223
  %div665 = and i32 %add76, -4096
  %45 = ptrtoint ptr %memsize to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %div665, ptr %memsize, align 8
  %46 = ptrtoint ptr %srq to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %srq, align 4
  %tobool82.not = icmp eq ptr %47, null
  br i1 %tobool82.not, label %if.then83, label %if.then71.if.end97_crit_edge

if.then71.if.end97_crit_edge:                     ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end97

if.then83:                                        ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #13
  %memsize88 = getelementptr inbounds %struct.c4iw_qp, ptr %qp, i32 0, i32 5, i32 1, i32 6
  %48 = ptrtoint ptr %memsize88 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %memsize88, align 8
  %add90 = add i32 %49, 4095
  %div91666 = and i32 %add90, -4096
  store i32 %div91666, ptr %memsize88, align 8
  br label %if.end97

if.end97:                                         ; preds = %if.then83, %if.then71.if.end97_crit_edge, %if.end69.if.end97_crit_edge
  %cq100 = getelementptr inbounds %struct.c4iw_cq, ptr %call.i, i32 0, i32 3
  %cq101 = getelementptr inbounds %struct.c4iw_cq, ptr %call.i672, i32 0, i32 3
  %uctx = getelementptr inbounds %struct.c4iw_ucontext, ptr %cond, i32 0, i32 1
  %uctx106 = getelementptr inbounds %struct.c4iw_dev, ptr %10, i32 0, i32 1, i32 3
  %cond108 = select i1 %tobool70.not, ptr %uctx106, ptr %uctx
  %50 = ptrtoint ptr %srq to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %srq, align 4
  %tobool111.not = icmp eq ptr %51, null
  %lnot.ext = zext i1 %tobool111.not to i32
  %call112 = tail call fastcc i32 @create_qp(ptr noundef %rdev31, ptr noundef %wq, ptr noundef %cq100, ptr noundef %cq101, ptr noundef %cond108, ptr noundef nonnull %call42, i32 noundef %lnot.ext)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112)
  %tobool113.not = icmp eq i32 %call112, 0
  br i1 %tobool113.not, label %if.end115, label %if.end97.err_free_wr_wait_crit_edge

if.end97.err_free_wr_wait_crit_edge:              ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_wr_wait

if.end115:                                        ; preds = %if.end97
  %sub116 = add i32 %rqsize.0, -1
  %max_recv_wr118 = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attrs, i32 0, i32 6, i32 1
  %52 = ptrtoint ptr %max_recv_wr118 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %sub116, ptr %max_recv_wr118, align 4
  %sub119 = add i32 %32, -1
  %53 = ptrtoint ptr %cap to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %sub119, ptr %cap, align 4
  %54 = ptrtoint ptr %max_inline_data to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 280, ptr %max_inline_data, align 4
  %rhp124 = getelementptr inbounds %struct.c4iw_qp, ptr %qp, i32 0, i32 2
  %55 = ptrtoint ptr %rhp124 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %10, ptr %rhp124, align 4
  %pdid = getelementptr inbounds %struct.c4iw_pd, ptr %1, i32 0, i32 1
  %56 = ptrtoint ptr %pdid to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %pdid, align 4
  %attr = getelementptr inbounds %struct.c4iw_qp, ptr %qp, i32 0, i32 4
  %pd125 = getelementptr inbounds %struct.c4iw_qp, ptr %qp, i32 0, i32 4, i32 14
  %58 = ptrtoint ptr %pd125 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %pd125, align 4
  %59 = ptrtoint ptr %send_cq to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %send_cq, align 4
  %cqid128 = getelementptr inbounds %struct.c4iw_cq, ptr %60, i32 0, i32 3, i32 11
  %61 = ptrtoint ptr %cqid128 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %cqid128, align 8
  %63 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %attr, align 4
  %64 = ptrtoint ptr %recv_cq to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %recv_cq, align 4
  %cqid132 = getelementptr inbounds %struct.c4iw_cq, ptr %65, i32 0, i32 3, i32 11
  %66 = ptrtoint ptr %cqid132 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %cqid132, align 8
  %rcq = getelementptr inbounds %struct.c4iw_qp, ptr %qp, i32 0, i32 4, i32 1
  %68 = ptrtoint ptr %rcq to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %rcq, align 4
  %69 = load i32, ptr %cap, align 4
  %sq_num_entries = getelementptr inbounds %struct.c4iw_qp, ptr %qp, i32 0, i32 4, i32 2
  %70 = ptrtoint ptr %sq_num_entries to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %sq_num_entries, align 4
  %max_send_sge = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attrs, i32 0, i32 6, i32 2
  %71 = ptrtoint ptr %max_send_sge to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %max_send_sge, align 4
  %sq_max_sges = getelementptr inbounds %struct.c4iw_qp, ptr %qp, i32 0, i32 4, i32 4
  %73 = ptrtoint ptr %sq_max_sges to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %sq_max_sges, align 4
  %74 = load i32, ptr %max_send_sge, align 4
  %sq_max_sges_rdma_write = getelementptr inbounds %struct.c4iw_qp, ptr %qp, i32 0, i32 4, i32 5
  %75 = ptrtoint ptr %sq_max_sges_rdma_write to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %sq_max_sges_rdma_write, align 4
  %76 = ptrtoint ptr %srq to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %srq, align 4
  %tobool143.not = icmp eq ptr %77, null
  br i1 %tobool143.not, label %if.then144, label %if.end115.if.end150_crit_edge

if.end115.if.end150_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end150

if.then144:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #13
  %78 = ptrtoint ptr %max_recv_wr118 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %max_recv_wr118, align 4
  %rq_num_entries = getelementptr inbounds %struct.c4iw_qp, ptr %qp, i32 0, i32 4, i32 3
  %80 = ptrtoint ptr %rq_num_entries to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %rq_num_entries, align 4
  %max_recv_sge = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attrs, i32 0, i32 6, i32 3
  %81 = ptrtoint ptr %max_recv_sge to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %max_recv_sge, align 4
  %rq_max_sges = getelementptr inbounds %struct.c4iw_qp, ptr %qp, i32 0, i32 4, i32 6
  %83 = ptrtoint ptr %rq_max_sges to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %rq_max_sges, align 4
  br label %if.end150

if.end150:                                        ; preds = %if.then144, %if.end115.if.end150_crit_edge
  %state = getelementptr inbounds %struct.c4iw_qp, ptr %qp, i32 0, i32 4, i32 7
  %84 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 0, ptr %state, align 4
  %next_state = getelementptr inbounds %struct.c4iw_qp, ptr %qp, i32 0, i32 4, i32 15
  %85 = ptrtoint ptr %next_state to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %next_state, align 4
  %enable_rdma_read = getelementptr inbounds %struct.c4iw_qp, ptr %qp, i32 0, i32 4, i32 8
  %86 = ptrtoint ptr %enable_rdma_read to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 1, ptr %enable_rdma_read, align 4
  %enable_rdma_write = getelementptr inbounds %struct.c4iw_qp, ptr %qp, i32 0, i32 4, i32 9
  %87 = ptrtoint ptr %enable_rdma_write to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 1, ptr %enable_rdma_write, align 1
  %enable_bind = getelementptr inbounds %struct.c4iw_qp, ptr %qp, i32 0, i32 4, i32 10
  %88 = ptrtoint ptr %enable_bind to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 1, ptr %enable_bind, align 2
  %max_ord = getelementptr inbounds %struct.c4iw_qp, ptr %qp, i32 0, i32 4, i32 12
  %89 = ptrtoint ptr %max_ord to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 0, ptr %max_ord, align 4
  %max_ird = getelementptr inbounds %struct.c4iw_qp, ptr %qp, i32 0, i32 4, i32 13
  %90 = ptrtoint ptr %max_ird to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 0, ptr %max_ird, align 4
  %sq_sig_type = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attrs, i32 0, i32 7
  %91 = ptrtoint ptr %sq_sig_type to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %sq_sig_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %cmp158 = icmp eq i32 %92, 0
  %conv159 = zext i1 %cmp158 to i32
  %sq_sig_all = getelementptr inbounds %struct.c4iw_qp, ptr %qp, i32 0, i32 9
  %93 = ptrtoint ptr %sq_sig_all to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %conv159, ptr %sq_sig_all, align 4
  %lock = getelementptr inbounds %struct.c4iw_qp, ptr %qp, i32 0, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.33, ptr noundef nonnull @c4iw_create_qp.__key, i16 noundef signext 3) #11
  %mutex = getelementptr inbounds %struct.c4iw_qp, ptr %qp, i32 0, i32 7
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.35, ptr noundef nonnull @c4iw_create_qp.__key.34) #11
  %wait = getelementptr inbounds %struct.c4iw_qp, ptr %qp, i32 0, i32 8
  tail call void @__init_waitqueue_head(ptr noundef %wait, ptr noundef nonnull @.str.37, ptr noundef nonnull @c4iw_create_qp.__key.36) #11
  %qp_rel_comp = getelementptr inbounds %struct.c4iw_qp, ptr %qp, i32 0, i32 13
  %94 = ptrtoint ptr %qp_rel_comp to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 0, ptr %qp_rel_comp, align 4
  %wait.i = getelementptr inbounds %struct.c4iw_qp, ptr %qp, i32 0, i32 13, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.114, ptr noundef nonnull @init_completion.__key) #11
  %qp_refcnt = getelementptr inbounds %struct.c4iw_qp, ptr %qp, i32 0, i32 14
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %qp_refcnt, i32 noundef 4) #11
  %95 = ptrtoint ptr %qp_refcnt to i32
  call void @__asan_store4_noabort(i32 %95)
  store volatile i32 1, ptr %qp_refcnt, align 4
  %qps = getelementptr inbounds %struct.c4iw_dev, ptr %10, i32 0, i32 4
  %qid = getelementptr inbounds %struct.c4iw_qp, ptr %qp, i32 0, i32 5, i32 0, i32 10
  %96 = ptrtoint ptr %qid to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %qid, align 8
  %call169 = tail call fastcc i32 @xa_insert_irq(ptr noundef %qps, i32 noundef %97, ptr noundef %qp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call169)
  %tobool170.not = icmp eq i32 %call169, 0
  br i1 %tobool170.not, label %if.end172, label %if.end150.err_destroy_qp_crit_edge

if.end150.err_destroy_qp_crit_edge:               ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_destroy_qp

if.end172:                                        ; preds = %if.end150
  %brmerge = select i1 %tobool.not, i1 true, i1 %tobool70.not
  br i1 %brmerge, label %if.end172.if.end342_crit_edge, label %if.then175

if.end172.if.end342_crit_edge:                    ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end342

if.then175:                                       ; preds = %if.end172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %98 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %98, i32 noundef 3264, i32 noundef 24) #15
  %tobool177.not = icmp eq ptr %call7.i, null
  br i1 %tobool177.not, label %if.then175.err_remove_handle_crit_edge, label %if.end179

if.then175.err_remove_handle_crit_edge:           ; preds = %if.then175
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_remove_handle

if.end179:                                        ; preds = %if.then175
  %99 = ptrtoint ptr %srq to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %srq, align 4
  %tobool181.not = icmp eq ptr %100, null
  br i1 %tobool181.not, label %if.then182, label %if.end179.if.end187_crit_edge

if.end179.if.end187_crit_edge:                    ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end187

if.then182:                                       ; preds = %if.end179
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %101 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i667 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %101, i32 noundef 3264, i32 noundef 24) #15
  %tobool184.not = icmp eq ptr %call7.i667, null
  br i1 %tobool184.not, label %if.then182.err_free_sq_key_crit_edge, label %if.then182.if.end187_crit_edge

if.then182.if.end187_crit_edge:                   ; preds = %if.then182
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end187

if.then182.err_free_sq_key_crit_edge:             ; preds = %if.then182
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_sq_key

if.end187:                                        ; preds = %if.then182.if.end187_crit_edge, %if.end179.if.end187_crit_edge
  %rq_key_mm.0 = phi ptr [ null, %if.end179.if.end187_crit_edge ], [ %call7.i667, %if.then182.if.end187_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %102 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i668 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %102, i32 noundef 3264, i32 noundef 24) #15
  %tobool189.not = icmp eq ptr %call7.i668, null
  br i1 %tobool189.not, label %if.end187.err_free_rq_key_crit_edge, label %if.end191

if.end187.err_free_rq_key_crit_edge:              ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_rq_key

if.end191:                                        ; preds = %if.end187
  %103 = ptrtoint ptr %srq to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %srq, align 4
  %tobool193.not = icmp eq ptr %104, null
  br i1 %tobool193.not, label %if.then194, label %if.end191.if.end199_crit_edge

if.end191.if.end199_crit_edge:                    ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end199

if.then194:                                       ; preds = %if.end191
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %105 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i669 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %105, i32 noundef 3264, i32 noundef 24) #15
  %tobool196.not = icmp eq ptr %call7.i669, null
  br i1 %tobool196.not, label %if.then194.err_free_sq_db_key_crit_edge, label %if.then194.if.end199_crit_edge

if.then194.if.end199_crit_edge:                   ; preds = %if.then194
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end199

if.then194.err_free_sq_db_key_crit_edge:          ; preds = %if.then194
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_sq_db_key

if.end199:                                        ; preds = %if.then194.if.end199_crit_edge, %if.end191.if.end199_crit_edge
  %rq_db_key_mm.0 = phi ptr [ null, %if.end191.if.end199_crit_edge ], [ %call7.i669, %if.then194.if.end199_crit_edge ]
  %106 = call ptr @memset(ptr %uresp, i32 0, i32 80)
  %flags.i = getelementptr inbounds %struct.c4iw_qp, ptr %qp, i32 0, i32 5, i32 0, i32 17
  %107 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %flags.i, align 8
  %109 = and i16 %108, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %109)
  %tobool203.not = icmp eq i16 %109, 0
  br i1 %tobool203.not, label %if.end199.if.end209_crit_edge, label %if.then204

if.end199.if.end209_crit_edge:                    ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end209

if.then204:                                       ; preds = %if.end199
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %110 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i670 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %110, i32 noundef 3264, i32 noundef 24) #15
  %tobool206.not = icmp eq ptr %call7.i670, null
  br i1 %tobool206.not, label %if.then204.err_free_rq_db_key_crit_edge, label %if.end208

if.then204.err_free_rq_db_key_crit_edge:          ; preds = %if.then204
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_rq_db_key

if.end208:                                        ; preds = %if.then204
  call void @__sanitizer_cov_trace_pc() #13
  %flags = getelementptr inbounds %struct.c4iw_create_qp_resp, ptr %uresp, i32 0, i32 12
  %111 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 1, ptr %flags, align 4
  br label %if.end209

if.end209:                                        ; preds = %if.end208, %if.end199.if.end209_crit_edge
  %ma_sync_key_mm.0 = phi ptr [ %call7.i670, %if.end208 ], [ null, %if.end199.if.end209_crit_edge ]
  %lldi = getelementptr inbounds %struct.c4iw_dev, ptr %10, i32 0, i32 1, i32 8
  %write_w_imm_support = getelementptr inbounds %struct.c4iw_dev, ptr %10, i32 0, i32 1, i32 8, i32 42
  %112 = ptrtoint ptr %write_w_imm_support to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %write_w_imm_support, align 1, !range !307
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool211.not = icmp eq i8 %113, 0
  br i1 %tobool211.not, label %if.end209.if.end214_crit_edge, label %if.then212

if.end209.if.end214_crit_edge:                    ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end214

if.then212:                                       ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #13
  %flags213 = getelementptr inbounds %struct.c4iw_create_qp_resp, ptr %uresp, i32 0, i32 12
  %114 = ptrtoint ptr %flags213 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %flags213, align 4
  %or = or i32 %115, 2
  store i32 %or, ptr %flags213, align 4
  br label %if.end214

if.end214:                                        ; preds = %if.then212, %if.end209.if.end214_crit_edge
  %qpmask = getelementptr inbounds %struct.c4iw_dev, ptr %10, i32 0, i32 1, i32 1
  %116 = ptrtoint ptr %qpmask to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %qpmask, align 8
  %qid_mask = getelementptr inbounds %struct.c4iw_create_qp_resp, ptr %uresp, i32 0, i32 11
  %118 = ptrtoint ptr %qid_mask to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %117, ptr %qid_mask, align 8
  %119 = ptrtoint ptr %qid to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %qid, align 8
  %sqid = getelementptr inbounds %struct.c4iw_create_qp_resp, ptr %uresp, i32 0, i32 7
  %121 = ptrtoint ptr %sqid to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %120, ptr %sqid, align 8
  %122 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %size, align 2
  %conv222 = zext i16 %123 to i32
  %sq_size = getelementptr inbounds %struct.c4iw_create_qp_resp, ptr %uresp, i32 0, i32 9
  %124 = ptrtoint ptr %sq_size to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %conv222, ptr %sq_size, align 8
  %125 = ptrtoint ptr %memsize to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %memsize, align 8
  %conv226 = zext i32 %126 to i64
  %sq_memsize = getelementptr inbounds %struct.c4iw_create_qp_resp, ptr %uresp, i32 0, i32 5
  %127 = ptrtoint ptr %sq_memsize to i32
  call void @__asan_store8_noabort(i32 %127)
  store i64 %conv226, ptr %sq_memsize, align 8
  %128 = ptrtoint ptr %srq to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %srq, align 4
  %tobool228.not = icmp eq ptr %129, null
  br i1 %tobool228.not, label %if.then229, label %if.end214.if.end241_crit_edge

if.end214.if.end241_crit_edge:                    ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end241

if.then229:                                       ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #13
  %qid232 = getelementptr inbounds %struct.c4iw_qp, ptr %qp, i32 0, i32 5, i32 1, i32 8
  %130 = ptrtoint ptr %qid232 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %qid232, align 8
  %rqid = getelementptr inbounds %struct.c4iw_create_qp_resp, ptr %uresp, i32 0, i32 8
  %132 = ptrtoint ptr %rqid to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %131, ptr %rqid, align 4
  %size235 = getelementptr inbounds %struct.c4iw_qp, ptr %qp, i32 0, i32 5, i32 1, i32 13
  %133 = ptrtoint ptr %size235 to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %size235, align 8
  %conv236 = zext i16 %134 to i32
  %rq_size = getelementptr inbounds %struct.c4iw_create_qp_resp, ptr %uresp, i32 0, i32 10
  %135 = ptrtoint ptr %rq_size to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %conv236, ptr %rq_size, align 4
  %memsize239 = getelementptr inbounds %struct.c4iw_qp, ptr %qp, i32 0, i32 5, i32 1, i32 6
  %136 = ptrtoint ptr %memsize239 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %memsize239, align 8
  %conv240 = zext i32 %137 to i64
  %rq_memsize = getelementptr inbounds %struct.c4iw_create_qp_resp, ptr %uresp, i32 0, i32 6
  %138 = ptrtoint ptr %rq_memsize to i32
  call void @__asan_store8_noabort(i32 %138)
  store i64 %conv240, ptr %rq_memsize, align 8
  br label %if.end241

if.end241:                                        ; preds = %if.then229, %if.end214.if.end241_crit_edge
  %mmap_lock = getelementptr inbounds %struct.c4iw_ucontext, ptr %cond, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %mmap_lock) #11
  %tobool242.not = icmp eq ptr %ma_sync_key_mm.0, null
  br i1 %tobool242.not, label %if.end241.if.end247_crit_edge, label %if.then243

if.end241.if.end247_crit_edge:                    ; preds = %if.end241
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end247

if.then243:                                       ; preds = %if.end241
  call void @__sanitizer_cov_trace_pc() #13
  %key = getelementptr inbounds %struct.c4iw_ucontext, ptr %cond, i32 0, i32 2
  %139 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %key, align 4
  %conv244 = zext i32 %140 to i64
  %141 = ptrtoint ptr %uresp to i32
  call void @__asan_store8_noabort(i32 %141)
  store i64 %conv244, ptr %uresp, align 8
  %add246 = add i32 %140, 4096
  store i32 %add246, ptr %key, align 4
  br label %if.end247

if.end247:                                        ; preds = %if.then243, %if.end241.if.end247_crit_edge
  %key248 = getelementptr inbounds %struct.c4iw_ucontext, ptr %cond, i32 0, i32 2
  %142 = ptrtoint ptr %key248 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %key248, align 4
  %conv249 = zext i32 %143 to i64
  %sq_key = getelementptr inbounds %struct.c4iw_create_qp_resp, ptr %uresp, i32 0, i32 1
  %144 = ptrtoint ptr %sq_key to i32
  call void @__asan_store8_noabort(i32 %144)
  store i64 %conv249, ptr %sq_key, align 8
  %add251 = add i32 %143, 4096
  store i32 %add251, ptr %key248, align 4
  %145 = ptrtoint ptr %srq to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %srq, align 4
  %tobool253.not = icmp eq ptr %146, null
  br i1 %tobool253.not, label %if.then254, label %if.end247.if.end259_crit_edge

if.end247.if.end259_crit_edge:                    ; preds = %if.end247
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end259

if.then254:                                       ; preds = %if.end247
  call void @__sanitizer_cov_trace_pc() #13
  %conv256 = zext i32 %add251 to i64
  %rq_key = getelementptr inbounds %struct.c4iw_create_qp_resp, ptr %uresp, i32 0, i32 2
  %147 = ptrtoint ptr %rq_key to i32
  call void @__asan_store8_noabort(i32 %147)
  store i64 %conv256, ptr %rq_key, align 8
  %add258 = add i32 %143, 8192
  %148 = ptrtoint ptr %key248 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %add258, ptr %key248, align 4
  br label %if.end259

if.end259:                                        ; preds = %if.then254, %if.end247.if.end259_crit_edge
  %149 = ptrtoint ptr %key248 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %key248, align 4
  %conv261 = zext i32 %150 to i64
  %sq_db_gts_key = getelementptr inbounds %struct.c4iw_create_qp_resp, ptr %uresp, i32 0, i32 3
  %151 = ptrtoint ptr %sq_db_gts_key to i32
  call void @__asan_store8_noabort(i32 %151)
  store i64 %conv261, ptr %sq_db_gts_key, align 8
  %add263 = add i32 %150, 4096
  store i32 %add263, ptr %key248, align 4
  %152 = ptrtoint ptr %srq to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %srq, align 4
  %tobool265.not = icmp eq ptr %153, null
  br i1 %tobool265.not, label %if.then266, label %if.end259.if.end271_crit_edge

if.end259.if.end271_crit_edge:                    ; preds = %if.end259
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end271

if.then266:                                       ; preds = %if.end259
  call void @__sanitizer_cov_trace_pc() #13
  %conv268 = zext i32 %add263 to i64
  %rq_db_gts_key = getelementptr inbounds %struct.c4iw_create_qp_resp, ptr %uresp, i32 0, i32 4
  %154 = ptrtoint ptr %rq_db_gts_key to i32
  call void @__asan_store8_noabort(i32 %154)
  store i64 %conv268, ptr %rq_db_gts_key, align 8
  %add270 = add i32 %150, 8192
  %155 = ptrtoint ptr %key248 to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %add270, ptr %key248, align 4
  br label %if.end271

if.end271:                                        ; preds = %if.then266, %if.end259.if.end271_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %mmap_lock) #11
  %call273 = call fastcc i32 @ib_copy_to_udata(ptr noundef nonnull %udata, ptr noundef nonnull %uresp, i32 noundef 80)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call273)
  %tobool274.not = icmp eq i32 %call273, 0
  br i1 %tobool274.not, label %if.end276, label %err_free_ma_sync_key

if.end276:                                        ; preds = %if.end271
  %156 = ptrtoint ptr %sq_key to i32
  call void @__asan_load8_noabort(i32 %156)
  %157 = load i64, ptr %sq_key, align 8
  %conv278 = trunc i64 %157 to i32
  %key279 = getelementptr inbounds %struct.c4iw_mm_entry, ptr %call7.i, i32 0, i32 2
  %158 = ptrtoint ptr %key279 to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %conv278, ptr %key279, align 8
  %phys_addr = getelementptr inbounds %struct.c4iw_qp, ptr %qp, i32 0, i32 5, i32 0, i32 3
  %159 = ptrtoint ptr %phys_addr to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %phys_addr, align 4
  %conv282 = zext i32 %160 to i64
  %addr = getelementptr inbounds %struct.c4iw_mm_entry, ptr %call7.i, i32 0, i32 1
  %161 = ptrtoint ptr %addr to i32
  call void @__asan_store8_noabort(i32 %161)
  store i64 %conv282, ptr %addr, align 8
  %162 = ptrtoint ptr %memsize to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %memsize, align 8
  %add286 = add i32 %163, 4095
  %and = and i32 %add286, -4096
  %len = getelementptr inbounds %struct.c4iw_mm_entry, ptr %call7.i, i32 0, i32 3
  %164 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %and, ptr %len, align 4
  call fastcc void @insert_mmap(ptr noundef nonnull %cond, ptr noundef nonnull %call7.i)
  %165 = ptrtoint ptr %srq to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %srq, align 4
  %tobool288.not = icmp eq ptr %166, null
  br i1 %tobool288.not, label %if.then289, label %if.end276.if.end304_crit_edge

if.end276.if.end304_crit_edge:                    ; preds = %if.end276
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end304

if.then289:                                       ; preds = %if.end276
  call void @__sanitizer_cov_trace_pc() #13
  %rq_key290 = getelementptr inbounds %struct.c4iw_create_qp_resp, ptr %uresp, i32 0, i32 2
  %167 = ptrtoint ptr %rq_key290 to i32
  call void @__asan_load8_noabort(i32 %167)
  %168 = load i64, ptr %rq_key290, align 8
  %conv291 = trunc i64 %168 to i32
  %key292 = getelementptr inbounds %struct.c4iw_mm_entry, ptr %rq_key_mm.0, i32 0, i32 2
  %169 = ptrtoint ptr %key292 to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %conv291, ptr %key292, align 8
  %rq294 = getelementptr inbounds %struct.c4iw_qp, ptr %qp, i32 0, i32 5, i32 1
  %170 = ptrtoint ptr %rq294 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %rq294, align 8
  %172 = ptrtoint ptr %171 to i32
  %call.i673 = call i32 @__virt_to_phys(i32 noundef %172) #11
  %conv296 = zext i32 %call.i673 to i64
  %addr297 = getelementptr inbounds %struct.c4iw_mm_entry, ptr %rq_key_mm.0, i32 0, i32 1
  %173 = ptrtoint ptr %addr297 to i32
  call void @__asan_store8_noabort(i32 %173)
  store i64 %conv296, ptr %addr297, align 8
  %memsize300 = getelementptr inbounds %struct.c4iw_qp, ptr %qp, i32 0, i32 5, i32 1, i32 6
  %174 = ptrtoint ptr %memsize300 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %memsize300, align 8
  %add301 = add i32 %175, 4095
  %and302 = and i32 %add301, -4096
  %len303 = getelementptr inbounds %struct.c4iw_mm_entry, ptr %rq_key_mm.0, i32 0, i32 3
  %176 = ptrtoint ptr %len303 to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %and302, ptr %len303, align 4
  call fastcc void @insert_mmap(ptr noundef nonnull %cond, ptr noundef %rq_key_mm.0)
  br label %if.end304

if.end304:                                        ; preds = %if.then289, %if.end276.if.end304_crit_edge
  %177 = ptrtoint ptr %sq_db_gts_key to i32
  call void @__asan_load8_noabort(i32 %177)
  %178 = load i64, ptr %sq_db_gts_key, align 8
  %conv306 = trunc i64 %178 to i32
  %key307 = getelementptr inbounds %struct.c4iw_mm_entry, ptr %call7.i668, i32 0, i32 2
  %179 = ptrtoint ptr %key307 to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %conv306, ptr %key307, align 8
  %bar2_pa = getelementptr inbounds %struct.c4iw_qp, ptr %qp, i32 0, i32 5, i32 0, i32 7
  %180 = ptrtoint ptr %bar2_pa to i32
  call void @__asan_load8_noabort(i32 %180)
  %181 = load i64, ptr %bar2_pa, align 8
  %conv311 = and i64 %181, 4294967295
  %addr312 = getelementptr inbounds %struct.c4iw_mm_entry, ptr %call7.i668, i32 0, i32 1
  %182 = ptrtoint ptr %addr312 to i32
  call void @__asan_store8_noabort(i32 %182)
  store i64 %conv311, ptr %addr312, align 8
  %len313 = getelementptr inbounds %struct.c4iw_mm_entry, ptr %call7.i668, i32 0, i32 3
  %183 = ptrtoint ptr %len313 to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 4096, ptr %len313, align 4
  call fastcc void @insert_mmap(ptr noundef nonnull %cond, ptr noundef nonnull %call7.i668)
  %184 = ptrtoint ptr %srq to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %srq, align 4
  %tobool315.not = icmp eq ptr %185, null
  br i1 %tobool315.not, label %if.then316, label %if.end304.if.end327_crit_edge

if.end304.if.end327_crit_edge:                    ; preds = %if.end304
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end327

if.then316:                                       ; preds = %if.end304
  call void @__sanitizer_cov_trace_pc() #13
  %rq_db_gts_key317 = getelementptr inbounds %struct.c4iw_create_qp_resp, ptr %uresp, i32 0, i32 4
  %186 = ptrtoint ptr %rq_db_gts_key317 to i32
  call void @__asan_load8_noabort(i32 %186)
  %187 = load i64, ptr %rq_db_gts_key317, align 8
  %conv318 = trunc i64 %187 to i32
  %key319 = getelementptr inbounds %struct.c4iw_mm_entry, ptr %rq_db_key_mm.0, i32 0, i32 2
  %188 = ptrtoint ptr %key319 to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 %conv318, ptr %key319, align 8
  %bar2_pa322 = getelementptr inbounds %struct.c4iw_qp, ptr %qp, i32 0, i32 5, i32 1, i32 5
  %189 = ptrtoint ptr %bar2_pa322 to i32
  call void @__asan_load8_noabort(i32 %189)
  %190 = load i64, ptr %bar2_pa322, align 8
  %conv324 = and i64 %190, 4294967295
  %addr325 = getelementptr inbounds %struct.c4iw_mm_entry, ptr %rq_db_key_mm.0, i32 0, i32 1
  %191 = ptrtoint ptr %addr325 to i32
  call void @__asan_store8_noabort(i32 %191)
  store i64 %conv324, ptr %addr325, align 8
  %len326 = getelementptr inbounds %struct.c4iw_mm_entry, ptr %rq_db_key_mm.0, i32 0, i32 3
  %192 = ptrtoint ptr %len326 to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 4096, ptr %len326, align 4
  call fastcc void @insert_mmap(ptr noundef nonnull %cond, ptr noundef %rq_db_key_mm.0)
  br label %if.end327

if.end327:                                        ; preds = %if.then316, %if.end304.if.end327_crit_edge
  br i1 %tobool242.not, label %if.end327.if.end340_crit_edge, label %if.then329

if.end327.if.end340_crit_edge:                    ; preds = %if.end327
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end340

if.then329:                                       ; preds = %if.end327
  call void @__sanitizer_cov_trace_pc() #13
  %193 = ptrtoint ptr %uresp to i32
  call void @__asan_load8_noabort(i32 %193)
  %194 = load i64, ptr %uresp, align 8
  %conv331 = trunc i64 %194 to i32
  %key332 = getelementptr inbounds %struct.c4iw_mm_entry, ptr %ma_sync_key_mm.0, i32 0, i32 2
  %195 = ptrtoint ptr %key332 to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 %conv331, ptr %key332, align 8
  %196 = ptrtoint ptr %lldi to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %lldi, align 8
  %resource = getelementptr inbounds %struct.pci_dev, ptr %197, i32 0, i32 47
  %198 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %resource, align 8
  %add335 = add i32 %199, 12468
  %and336 = and i32 %add335, -4096
  %conv337 = zext i32 %and336 to i64
  %addr338 = getelementptr inbounds %struct.c4iw_mm_entry, ptr %ma_sync_key_mm.0, i32 0, i32 1
  %200 = ptrtoint ptr %addr338 to i32
  call void @__asan_store8_noabort(i32 %200)
  store i64 %conv337, ptr %addr338, align 8
  %len339 = getelementptr inbounds %struct.c4iw_mm_entry, ptr %ma_sync_key_mm.0, i32 0, i32 3
  %201 = ptrtoint ptr %len339 to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 4096, ptr %len339, align 4
  call fastcc void @insert_mmap(ptr noundef nonnull %cond, ptr noundef nonnull %ma_sync_key_mm.0)
  br label %if.end340

if.end340:                                        ; preds = %if.then329, %if.end327.if.end340_crit_edge
  %ucontext341 = getelementptr inbounds %struct.c4iw_qp, ptr %qp, i32 0, i32 11
  %202 = ptrtoint ptr %ucontext341 to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr %cond, ptr %ucontext341, align 4
  br label %if.end342

if.end342:                                        ; preds = %if.end340, %if.end172.if.end342_crit_edge
  %203 = ptrtoint ptr %srq to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %srq, align 4
  %tobool344.not = icmp eq ptr %204, null
  br i1 %tobool344.not, label %if.then345, label %if.else

if.then345:                                       ; preds = %if.end342
  call void @__sanitizer_cov_trace_pc() #13
  %rq347 = getelementptr inbounds %struct.c4iw_qp, ptr %qp, i32 0, i32 5, i32 1
  %205 = ptrtoint ptr %rq347 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %rq347, align 8
  %size351 = getelementptr inbounds %struct.c4iw_qp, ptr %qp, i32 0, i32 5, i32 1, i32 13
  %207 = ptrtoint ptr %size351 to i32
  call void @__asan_load2_noabort(i32 %207)
  %208 = load i16, ptr %size351, align 8
  %idxprom = zext i16 %208 to i32
  %arrayidx352 = getelementptr %union.t4_recv_wr, ptr %206, i32 %idxprom
  br label %if.end374

if.else:                                          ; preds = %if.end342
  call void @__sanitizer_cov_trace_pc() #13
  %209 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %wq, align 8
  %211 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %211)
  %212 = load i16, ptr %size, align 2
  %idxprom360 = zext i16 %212 to i32
  %arrayidx361 = getelementptr %union.t4_wr, ptr %210, i32 %idxprom360
  %srqidx = getelementptr %union.t4_wr, ptr %210, i32 %idxprom360, i32 0, i32 3
  %srqidxp = getelementptr inbounds %struct.c4iw_qp, ptr %qp, i32 0, i32 5, i32 6
  %213 = ptrtoint ptr %srqidxp to i32
  call void @__asan_store4_noabort(i32 %213)
  store ptr %srqidx, ptr %srqidxp, align 8
  br label %if.end374

if.end374:                                        ; preds = %if.else, %if.then345
  %arrayidx352.pn = phi ptr [ %arrayidx352, %if.then345 ], [ %arrayidx361, %if.else ]
  %qp_err362.sink = getelementptr inbounds %struct.t4_status_page, ptr %arrayidx352.pn, i32 0, i32 5
  %214 = getelementptr inbounds %struct.c4iw_qp, ptr %qp, i32 0, i32 5, i32 5
  %215 = ptrtoint ptr %214 to i32
  call void @__asan_store4_noabort(i32 %215)
  store ptr %qp_err362.sink, ptr %214, align 4
  %216 = ptrtoint ptr %qid to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %qid, align 8
  %qp_num = getelementptr inbounds %struct.ib_qp, ptr %qp, i32 0, i32 19
  %218 = ptrtoint ptr %qp_num to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 %217, ptr %qp_num, align 4
  %219 = ptrtoint ptr %srq to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %srq, align 4
  %tobool379.not = icmp eq ptr %220, null
  br i1 %tobool379.not, label %if.end374.if.end384_crit_edge, label %if.then380

if.end374.if.end384_crit_edge:                    ; preds = %if.end374
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end384

if.then380:                                       ; preds = %if.end374
  call void @__sanitizer_cov_trace_pc() #13
  %srq383 = getelementptr inbounds %struct.c4iw_qp, ptr %qp, i32 0, i32 10
  %221 = ptrtoint ptr %srq383 to i32
  call void @__asan_store4_noabort(i32 %221)
  store ptr %220, ptr %srq383, align 8
  br label %if.end384

if.end384:                                        ; preds = %if.then380, %if.end374.if.end384_crit_edge
  %db_fc_entry = getelementptr inbounds %struct.c4iw_qp, ptr %qp, i32 0, i32 1
  %222 = ptrtoint ptr %db_fc_entry to i32
  call void @__asan_store4_noabort(i32 %222)
  store volatile ptr %db_fc_entry, ptr %db_fc_entry, align 4
  %prev.i = getelementptr inbounds %struct.c4iw_qp, ptr %qp, i32 0, i32 1, i32 1
  %223 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %223)
  store ptr %db_fc_entry, ptr %prev.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c4iw_create_qp.__UNIQUE_ID_ddebug716, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c4iw_create_qp, %if.then394)) #11
          to label %cleanup [label %if.then394], !srcloc !300

if.then394:                                       ; preds = %if.end384
  call void @__sanitizer_cov_trace_pc() #13
  %224 = ptrtoint ptr %qid to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %qid, align 8
  %226 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %226)
  %227 = load i16, ptr %size, align 2
  %conv401 = zext i16 %227 to i32
  %228 = ptrtoint ptr %memsize to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %memsize, align 8
  %230 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %cap, align 4
  %qid409 = getelementptr inbounds %struct.c4iw_qp, ptr %qp, i32 0, i32 5, i32 1, i32 8
  %232 = ptrtoint ptr %qid409 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %qid409, align 8
  %size412 = getelementptr inbounds %struct.c4iw_qp, ptr %qp, i32 0, i32 5, i32 1, i32 13
  %234 = ptrtoint ptr %size412 to i32
  call void @__asan_load2_noabort(i32 %234)
  %235 = load i16, ptr %size412, align 8
  %conv413 = zext i16 %235 to i32
  %memsize416 = getelementptr inbounds %struct.c4iw_qp, ptr %qp, i32 0, i32 5, i32 1, i32 6
  %236 = ptrtoint ptr %memsize416 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %memsize416, align 8
  %238 = ptrtoint ptr %max_recv_wr118 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %max_recv_wr118, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @c4iw_create_qp.__UNIQUE_ID_ddebug716, ptr noundef nonnull @.str.40, i32 noundef %225, i32 noundef %conv401, i32 noundef %229, i32 noundef %231, i32 noundef %233, i32 noundef %conv413, i32 noundef %237, i32 noundef %239) #11
  br label %cleanup

err_free_ma_sync_key:                             ; preds = %if.end271
  call void @__sanitizer_cov_trace_pc() #13
  call void @kfree(ptr noundef %ma_sync_key_mm.0) #11
  br label %err_free_rq_db_key

err_free_rq_db_key:                               ; preds = %err_free_ma_sync_key, %if.then204.err_free_rq_db_key_crit_edge
  %ret.0 = phi i32 [ %call273, %err_free_ma_sync_key ], [ -12, %if.then204.err_free_rq_db_key_crit_edge ]
  %240 = ptrtoint ptr %srq to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %srq, align 4
  %tobool423.not = icmp eq ptr %241, null
  br i1 %tobool423.not, label %if.then424, label %err_free_rq_db_key.err_free_sq_db_key_crit_edge

err_free_rq_db_key.err_free_sq_db_key_crit_edge:  ; preds = %err_free_rq_db_key
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_sq_db_key

if.then424:                                       ; preds = %err_free_rq_db_key
  call void @__sanitizer_cov_trace_pc() #13
  call void @kfree(ptr noundef %rq_db_key_mm.0) #11
  br label %err_free_sq_db_key

err_free_sq_db_key:                               ; preds = %if.then424, %err_free_rq_db_key.err_free_sq_db_key_crit_edge, %if.then194.err_free_sq_db_key_crit_edge
  %ret.1 = phi i32 [ %ret.0, %err_free_rq_db_key.err_free_sq_db_key_crit_edge ], [ %ret.0, %if.then424 ], [ -12, %if.then194.err_free_sq_db_key_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i668) #11
  br label %err_free_rq_key

err_free_rq_key:                                  ; preds = %err_free_sq_db_key, %if.end187.err_free_rq_key_crit_edge
  %ret.2 = phi i32 [ %ret.1, %err_free_sq_db_key ], [ -12, %if.end187.err_free_rq_key_crit_edge ]
  %242 = ptrtoint ptr %srq to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %srq, align 4
  %tobool427.not = icmp eq ptr %243, null
  br i1 %tobool427.not, label %if.then428, label %err_free_rq_key.err_free_sq_key_crit_edge

err_free_rq_key.err_free_sq_key_crit_edge:        ; preds = %err_free_rq_key
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_sq_key

if.then428:                                       ; preds = %err_free_rq_key
  call void @__sanitizer_cov_trace_pc() #13
  call void @kfree(ptr noundef %rq_key_mm.0) #11
  br label %err_free_sq_key

err_free_sq_key:                                  ; preds = %if.then428, %err_free_rq_key.err_free_sq_key_crit_edge, %if.then182.err_free_sq_key_crit_edge
  %ret.3 = phi i32 [ %ret.2, %err_free_rq_key.err_free_sq_key_crit_edge ], [ %ret.2, %if.then428 ], [ -12, %if.then182.err_free_sq_key_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i) #11
  br label %err_remove_handle

err_remove_handle:                                ; preds = %err_free_sq_key, %if.then175.err_remove_handle_crit_edge
  %ret.4 = phi i32 [ %ret.3, %err_free_sq_key ], [ -12, %if.then175.err_remove_handle_crit_edge ]
  %244 = ptrtoint ptr %qid to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %qid, align 8
  call fastcc void @xa_erase_irq(ptr noundef %qps, i32 noundef %245)
  br label %err_destroy_qp

err_destroy_qp:                                   ; preds = %err_remove_handle, %if.end150.err_destroy_qp_crit_edge
  %ret.5 = phi i32 [ %call169, %if.end150.err_destroy_qp_crit_edge ], [ %ret.4, %err_remove_handle ]
  %246 = ptrtoint ptr %srq to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %srq, align 4
  %tobool446.not = icmp eq ptr %247, null
  %lnot.ext448 = zext i1 %tobool446.not to i32
  call fastcc void @destroy_qp(ptr noundef %rdev31, ptr noundef %wq, ptr noundef %cond108, i32 noundef %lnot.ext448)
  br label %err_free_wr_wait

err_free_wr_wait:                                 ; preds = %err_destroy_qp, %if.end97.err_free_wr_wait_crit_edge
  %ret.6 = phi i32 [ %call112, %if.end97.err_free_wr_wait_crit_edge ], [ %ret.5, %err_destroy_qp ]
  %248 = ptrtoint ptr %wr_waitp to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %wr_waitp, align 8
  call fastcc void @c4iw_put_wr_wait(ptr noundef %249)
  br label %cleanup

cleanup:                                          ; preds = %err_free_wr_wait, %if.then394, %if.end384, %if.end35.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %if.then19.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.6, %err_free_wr_wait ], [ -95, %lor.lhs.false.cleanup_crit_edge ], [ -95, %cond.end.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end14.cleanup_crit_edge ], [ -7, %if.then19.cleanup_crit_edge ], [ -7, %if.end29.cleanup_crit_edge ], [ -12, %if.end35.cleanup_crit_edge ], [ 0, %if.then394 ], [ 0, %if.end384 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %uresp) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @c4iw_alloc_wr_wait(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @create_qp(ptr noundef %rdev, ptr noundef %wq, ptr nocapture noundef readonly %rcq, ptr nocapture noundef readonly %scq, ptr noundef %uctx, ptr noundef %wr_waitp, i32 noundef %need_rq) unnamed_addr #0 align 64 {
entry:
  %bar2_qoffset.i633 = alloca i64, align 8
  %bar2_qoffset.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %uctx1 = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 3
  %cmp.not = icmp eq ptr %uctx1, %uctx
  %call = tail call i32 @c4iw_get_qpid(ptr noundef %rdev, ptr noundef %uctx) #11
  %qid = getelementptr inbounds %struct.t4_sq, ptr %wq, i32 0, i32 10
  %0 = ptrtoint ptr %qid to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call, ptr %qid, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %need_rq)
  %tobool4.not = icmp eq i32 %need_rq, 0
  br i1 %tobool4.not, label %if.end13, label %if.then5

if.then5:                                         ; preds = %if.end
  %call6 = tail call i32 @c4iw_get_qpid(ptr noundef %rdev, ptr noundef %uctx) #11
  %qid7 = getelementptr inbounds %struct.t4_wq, ptr %wq, i32 0, i32 1, i32 8
  %1 = ptrtoint ptr %qid7 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %call6, ptr %qid7, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool10.not = icmp eq i32 %call6, 0
  br i1 %tobool10.not, label %if.then5.free_sq_qid_crit_edge, label %if.end13.thread

if.then5.free_sq_qid_crit_edge:                   ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_sq_qid

if.end13:                                         ; preds = %if.end
  br i1 %cmp.not, label %if.end13.if.end7.i.i_crit_edge, label %if.end13.if.end178_crit_edge

if.end13.if.end178_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end178

if.end13.if.end7.i.i_crit_edge:                   ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.i.i

if.end13.thread:                                  ; preds = %if.then5
  br i1 %cmp.not, label %if.end13.thread.if.end7.i.i_crit_edge, label %if.end13.thread.cond.end164_crit_edge

if.end13.thread.cond.end164_crit_edge:            ; preds = %if.end13.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end164

if.end13.thread.if.end7.i.i_crit_edge:            ; preds = %if.end13.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.end13.thread.if.end7.i.i_crit_edge, %if.end13.if.end7.i.i_crit_edge
  %size = getelementptr inbounds %struct.t4_sq, ptr %wq, i32 0, i32 12
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %size, align 2
  %conv17 = zext i16 %3 to i32
  %4 = mul nuw nsw i32 %conv17, 112
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %4, i32 noundef 3520) #16
  %sw_sq = getelementptr inbounds %struct.t4_sq, ptr %wq, i32 0, i32 4
  %5 = ptrtoint ptr %sw_sq to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call8.i.i, ptr %sw_sq, align 8
  %tobool22.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool22.not, label %if.end7.i.i.free_rq_qid_crit_edge, label %if.end24

if.end7.i.i.free_rq_qid_crit_edge:                ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_rq_qid

if.end24:                                         ; preds = %if.end7.i.i
  br i1 %tobool4.not, label %if.end24.if.end178_crit_edge, label %if.end7.i.i622

if.end24.if.end178_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end178

if.end7.i.i622:                                   ; preds = %if.end24
  %size28 = getelementptr inbounds %struct.t4_wq, ptr %wq, i32 0, i32 1, i32 13
  %6 = ptrtoint ptr %size28 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %size28, align 8
  %conv29 = zext i16 %7 to i32
  %8 = shl nuw nsw i32 %conv29, 5
  %call8.i.i621 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %8, i32 noundef 3520) #16
  %sw_rq = getelementptr inbounds %struct.t4_wq, ptr %wq, i32 0, i32 1, i32 3
  %9 = ptrtoint ptr %sw_rq to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call8.i.i621, ptr %sw_rq, align 4
  %tobool34.not = icmp eq ptr %call8.i.i621, null
  br i1 %tobool34.not, label %if.end7.i.i622.free_sw_sq_crit_edge, label %if.end7.i.i622.cond.end164_crit_edge

if.end7.i.i622.cond.end164_crit_edge:             ; preds = %if.end7.i.i622
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end164

if.end7.i.i622.free_sw_sq_crit_edge:              ; preds = %if.end7.i.i622
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_sw_sq

cond.end164:                                      ; preds = %if.end7.i.i622.cond.end164_crit_edge, %if.end13.thread.cond.end164_crit_edge
  %size42 = getelementptr inbounds %struct.t4_wq, ptr %wq, i32 0, i32 1, i32 13
  %10 = ptrtoint ptr %size42 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %size42, align 8
  %12 = tail call i16 @llvm.umax.i16(i16 %11, i16 16)
  %cond = zext i16 %12 to i32
  %sub = add nsw i32 %cond, -1
  %13 = tail call i32 @llvm.ctlz.i32(i32 %sub, i1 true) #11, !range !308
  %sub.i.i.i = sub nuw nsw i32 32, %13
  %cond165 = shl nuw i32 1, %sub.i.i.i
  %conv166 = trunc i32 %cond165 to i16
  %rqt_size = getelementptr inbounds %struct.t4_wq, ptr %wq, i32 0, i32 1, i32 11
  %14 = ptrtoint ptr %rqt_size to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv166, ptr %rqt_size, align 4
  %conv170 = and i32 %cond165, 65535
  %call171 = tail call i32 @c4iw_rqtpool_alloc(ptr noundef %rdev, i32 noundef %conv170) #11
  %rqt_hwaddr = getelementptr inbounds %struct.t4_wq, ptr %wq, i32 0, i32 1, i32 10
  %15 = ptrtoint ptr %rqt_hwaddr to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call171, ptr %rqt_hwaddr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call171)
  %tobool175.not = icmp eq i32 %call171, 0
  br i1 %tobool175.not, label %cond.end164.if.then412_crit_edge, label %cond.end164.if.end178_crit_edge

cond.end164.if.end178_crit_edge:                  ; preds = %cond.end164
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end178

cond.end164.if.then412_crit_edge:                 ; preds = %cond.end164
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then412

if.end178:                                        ; preds = %cond.end164.if.end178_crit_edge, %if.end24.if.end178_crit_edge, %if.end13.if.end178_crit_edge
  %lldi.i.i = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 8
  %16 = ptrtoint ptr %lldi.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %lldi.i.i, align 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  %memsize.i.i = getelementptr inbounds %struct.t4_sq, ptr %wq, i32 0, i32 8
  %18 = ptrtoint ptr %memsize.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %memsize.i.i, align 8
  %dma_addr.i.i = getelementptr inbounds %struct.t4_sq, ptr %wq, i32 0, i32 1
  %call.i.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev.i.i, i32 noundef %19, ptr noundef %dma_addr.i.i, i32 noundef 3264, i32 noundef 0) #11
  %20 = ptrtoint ptr %wq to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i.i.i, ptr %wq, align 8
  %tobool.not.i.i626 = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i626, label %if.end178.free_hwaddr_crit_edge, label %if.end183

if.end178.free_hwaddr_crit_edge:                  ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_hwaddr

if.end183:                                        ; preds = %if.end178
  %21 = ptrtoint ptr %call.i.i.i to i32
  %call.i12.i.i = tail call i32 @__virt_to_phys(i32 noundef %21) #11
  %phys_addr.i.i = getelementptr inbounds %struct.t4_sq, ptr %wq, i32 0, i32 3
  %22 = ptrtoint ptr %phys_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call.i12.i.i, ptr %phys_addr.i.i, align 4
  %mapping.i.i = getelementptr inbounds %struct.t4_sq, ptr %wq, i32 0, i32 2
  %23 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %wq, align 8
  %25 = ptrtoint ptr %memsize.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %memsize.i.i, align 8
  %27 = call ptr @memset(ptr %24, i32 0, i32 %26)
  %28 = ptrtoint ptr %dma_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dma_addr.i.i, align 4
  %30 = ptrtoint ptr %mapping.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %mapping.i.i, align 8
  br i1 %tobool4.not, label %if.end183.if.end225_crit_edge, label %if.then189

if.end183.if.end225_crit_edge:                    ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end225

if.then189:                                       ; preds = %if.end183
  %31 = ptrtoint ptr %lldi.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %lldi.i.i, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  %rq190 = getelementptr inbounds %struct.t4_wq, ptr %wq, i32 0, i32 1
  %memsize191 = getelementptr inbounds %struct.t4_wq, ptr %wq, i32 0, i32 1, i32 6
  %33 = ptrtoint ptr %memsize191 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %memsize191, align 8
  %dma_addr193 = getelementptr inbounds %struct.t4_wq, ptr %wq, i32 0, i32 1, i32 1
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef %34, ptr noundef %dma_addr193, i32 noundef 3264, i32 noundef 0) #11
  %35 = ptrtoint ptr %rq190 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call.i, ptr %rq190, align 8
  %tobool199.not = icmp eq ptr %call.i, null
  br i1 %tobool199.not, label %if.then189.free_sq_crit_edge, label %do.body

if.then189.free_sq_crit_edge:                     ; preds = %if.then189
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_sq

do.body:                                          ; preds = %if.then189
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @create_qp.__UNIQUE_ID_ddebug688, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@create_qp, %if.then207)) #11
          to label %do.end [label %if.then207], !srcloc !300

if.then207:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %36 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %wq, align 8
  %38 = ptrtoint ptr %37 to i32
  %call.i629 = tail call i32 @__virt_to_phys(i32 noundef %38) #11
  %conv213 = zext i32 %call.i629 to i64
  %39 = ptrtoint ptr %rq190 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rq190, align 8
  %41 = ptrtoint ptr %40 to i32
  %call.i630 = tail call i32 @__virt_to_phys(i32 noundef %41) #11
  %conv219 = zext i32 %call.i630 to i64
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @create_qp.__UNIQUE_ID_ddebug688, ptr noundef nonnull @.str.110, ptr noundef %37, i64 noundef %conv213, ptr noundef %40, i64 noundef %conv219) #11
  br label %do.end

do.end:                                           ; preds = %if.then207, %do.body
  %42 = ptrtoint ptr %dma_addr193 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dma_addr193, align 4
  %mapping224 = getelementptr inbounds %struct.t4_wq, ptr %wq, i32 0, i32 1, i32 2
  %44 = ptrtoint ptr %mapping224 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %mapping224, align 8
  br label %if.end225

if.end225:                                        ; preds = %do.end, %if.end183.if.end225_crit_edge
  %db_reg = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 8, i32 25
  %45 = ptrtoint ptr %db_reg to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %db_reg, align 8
  %db = getelementptr inbounds %struct.t4_wq, ptr %wq, i32 0, i32 2
  %47 = ptrtoint ptr %db to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %46, ptr %db, align 8
  %48 = ptrtoint ptr %qid to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %qid, align 8
  %bar2_qid = getelementptr inbounds %struct.t4_sq, ptr %wq, i32 0, i32 9
  %bar2_pa = getelementptr inbounds %struct.t4_sq, ptr %wq, i32 0, i32 7
  %spec.select = select i1 %cmp.not, ptr null, ptr %bar2_pa
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bar2_qoffset.i) #11
  %50 = ptrtoint ptr %bar2_qoffset.i to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 -1, ptr %bar2_qoffset.i, align 8, !annotation !299
  %ports.i = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 8, i32 3
  %51 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ports.i, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %tobool.not.i = icmp eq ptr %spec.select, null
  %not.tobool.not.i = xor i1 %tobool.not.i, true
  %cond.i = zext i1 %not.tobool.not.i to i32
  %call.i631 = call i32 @cxgb4_bar2_sge_qregs(ptr noundef %54, i32 noundef %49, i32 noundef 0, i32 noundef %cond.i, ptr noundef nonnull %bar2_qoffset.i, ptr noundef %bar2_qid) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i631)
  %tobool1.not.i = icmp eq i32 %call.i631, 0
  br i1 %tobool1.not.i, label %if.end.i, label %if.end225.c4iw_bar2_addrs.exit_crit_edge

if.end225.c4iw_bar2_addrs.exit_crit_edge:         ; preds = %if.end225
  call void @__sanitizer_cov_trace_pc() #13
  br label %c4iw_bar2_addrs.exit

if.end.i:                                         ; preds = %if.end225
  br i1 %tobool.not.i, label %if.end.i.if.end4.i_crit_edge, label %if.then3.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %bar2_pa.i = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 9
  %55 = ptrtoint ptr %bar2_pa.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %bar2_pa.i, align 4
  %conv.i = zext i32 %56 to i64
  %57 = ptrtoint ptr %bar2_qoffset.i to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %bar2_qoffset.i, align 8
  %add.i = add i64 %58, %conv.i
  %and.i = and i64 %add.i, -4096
  %59 = ptrtoint ptr %spec.select to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %and.i, ptr %spec.select, align 8
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then3.i, %if.end.i.if.end4.i_crit_edge
  %adapter_type.i = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 8, i32 13
  %60 = ptrtoint ptr %adapter_type.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %adapter_type.i, align 8
  %62 = and i8 %61, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %62)
  %cmp.i.not.i = icmp eq i8 %62, 64
  br i1 %cmp.i.not.i, label %if.end4.i.c4iw_bar2_addrs.exit_crit_edge, label %if.end10.i

if.end4.i.c4iw_bar2_addrs.exit_crit_edge:         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %c4iw_bar2_addrs.exit

if.end10.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  %bar2_kva.i = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 10
  %63 = ptrtoint ptr %bar2_kva.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %bar2_kva.i, align 8
  %65 = ptrtoint ptr %bar2_qoffset.i to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %bar2_qoffset.i, align 8
  %idx.ext.i = trunc i64 %66 to i32
  %add.ptr.i = getelementptr i8, ptr %64, i32 %idx.ext.i
  br label %c4iw_bar2_addrs.exit

c4iw_bar2_addrs.exit:                             ; preds = %if.end10.i, %if.end4.i.c4iw_bar2_addrs.exit_crit_edge, %if.end225.c4iw_bar2_addrs.exit_crit_edge
  %retval.0.i632 = phi ptr [ %add.ptr.i, %if.end10.i ], [ null, %if.end225.c4iw_bar2_addrs.exit_crit_edge ], [ null, %if.end4.i.c4iw_bar2_addrs.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bar2_qoffset.i) #11
  %bar2_va = getelementptr inbounds %struct.t4_sq, ptr %wq, i32 0, i32 6
  %67 = ptrtoint ptr %bar2_va to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %retval.0.i632, ptr %bar2_va, align 8
  br i1 %tobool4.not, label %c4iw_bar2_addrs.exit.if.end254_crit_edge, label %if.then239

c4iw_bar2_addrs.exit.if.end254_crit_edge:         ; preds = %c4iw_bar2_addrs.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end254

if.then239:                                       ; preds = %c4iw_bar2_addrs.exit
  %qid241 = getelementptr inbounds %struct.t4_wq, ptr %wq, i32 0, i32 1, i32 8
  %68 = ptrtoint ptr %qid241 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %qid241, align 8
  %bar2_qid243 = getelementptr inbounds %struct.t4_wq, ptr %wq, i32 0, i32 1, i32 7
  %bar2_pa247 = getelementptr inbounds %struct.t4_wq, ptr %wq, i32 0, i32 1, i32 5
  %spec.select584 = select i1 %cmp.not, ptr null, ptr %bar2_pa247
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bar2_qoffset.i633) #11
  %70 = ptrtoint ptr %bar2_qoffset.i633 to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 -1, ptr %bar2_qoffset.i633, align 8, !annotation !299
  %71 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ports.i, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %72, align 4
  %tobool.not.i635 = icmp eq ptr %spec.select584, null
  %not.tobool.not.i636 = xor i1 %tobool.not.i635, true
  %cond.i637 = zext i1 %not.tobool.not.i636 to i32
  %call.i638 = call i32 @cxgb4_bar2_sge_qregs(ptr noundef %74, i32 noundef %69, i32 noundef 0, i32 noundef %cond.i637, ptr noundef nonnull %bar2_qoffset.i633, ptr noundef %bar2_qid243) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i638)
  %tobool1.not.i639 = icmp eq i32 %call.i638, 0
  br i1 %tobool1.not.i639, label %if.end.i640, label %if.then239.c4iw_bar2_addrs.exit654_crit_edge

if.then239.c4iw_bar2_addrs.exit654_crit_edge:     ; preds = %if.then239
  call void @__sanitizer_cov_trace_pc() #13
  br label %c4iw_bar2_addrs.exit654

if.end.i640:                                      ; preds = %if.then239
  br i1 %tobool.not.i635, label %if.end.i640.if.end4.i648_crit_edge, label %if.then3.i645

if.end.i640.if.end4.i648_crit_edge:               ; preds = %if.end.i640
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i648

if.then3.i645:                                    ; preds = %if.end.i640
  call void @__sanitizer_cov_trace_pc() #13
  %bar2_pa.i641 = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 9
  %75 = ptrtoint ptr %bar2_pa.i641 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %bar2_pa.i641, align 4
  %conv.i642 = zext i32 %76 to i64
  %77 = ptrtoint ptr %bar2_qoffset.i633 to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %bar2_qoffset.i633, align 8
  %add.i643 = add i64 %78, %conv.i642
  %and.i644 = and i64 %add.i643, -4096
  %79 = ptrtoint ptr %spec.select584 to i32
  call void @__asan_store8_noabort(i32 %79)
  store i64 %and.i644, ptr %spec.select584, align 8
  br label %if.end4.i648

if.end4.i648:                                     ; preds = %if.then3.i645, %if.end.i640.if.end4.i648_crit_edge
  %adapter_type.i646 = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 8, i32 13
  %80 = ptrtoint ptr %adapter_type.i646 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %adapter_type.i646, align 8
  %82 = and i8 %81, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %82)
  %cmp.i.not.i647 = icmp eq i8 %82, 64
  br i1 %cmp.i.not.i647, label %if.end4.i648.c4iw_bar2_addrs.exit654_crit_edge, label %if.end10.i652

if.end4.i648.c4iw_bar2_addrs.exit654_crit_edge:   ; preds = %if.end4.i648
  call void @__sanitizer_cov_trace_pc() #13
  br label %c4iw_bar2_addrs.exit654

if.end10.i652:                                    ; preds = %if.end4.i648
  call void @__sanitizer_cov_trace_pc() #13
  %bar2_kva.i649 = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 10
  %83 = ptrtoint ptr %bar2_kva.i649 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %bar2_kva.i649, align 8
  %85 = ptrtoint ptr %bar2_qoffset.i633 to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %bar2_qoffset.i633, align 8
  %idx.ext.i650 = trunc i64 %86 to i32
  %add.ptr.i651 = getelementptr i8, ptr %84, i32 %idx.ext.i650
  br label %c4iw_bar2_addrs.exit654

c4iw_bar2_addrs.exit654:                          ; preds = %if.end10.i652, %if.end4.i648.c4iw_bar2_addrs.exit654_crit_edge, %if.then239.c4iw_bar2_addrs.exit654_crit_edge
  %retval.0.i653 = phi ptr [ %add.ptr.i651, %if.end10.i652 ], [ null, %if.then239.c4iw_bar2_addrs.exit654_crit_edge ], [ null, %if.end4.i648.c4iw_bar2_addrs.exit654_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bar2_qoffset.i633) #11
  %bar2_va253 = getelementptr inbounds %struct.t4_wq, ptr %wq, i32 0, i32 1, i32 4
  %87 = ptrtoint ptr %bar2_va253 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %retval.0.i653, ptr %bar2_va253, align 8
  br label %if.end254

if.end254:                                        ; preds = %c4iw_bar2_addrs.exit654, %c4iw_bar2_addrs.exit.if.end254_crit_edge
  br i1 %cmp.not, label %if.end254.if.end277_crit_edge, label %land.lhs.true

if.end254.if.end277_crit_edge:                    ; preds = %if.end254
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end277

land.lhs.true:                                    ; preds = %if.end254
  %88 = ptrtoint ptr %bar2_pa to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %bar2_pa, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %89)
  %tobool258.not = icmp eq i64 %89, 0
  br i1 %tobool258.not, label %land.lhs.true.do.end267_crit_edge, label %lor.lhs.false

land.lhs.true.do.end267_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end267

lor.lhs.false:                                    ; preds = %land.lhs.true
  br i1 %tobool4.not, label %lor.lhs.false.if.end277_crit_edge, label %land.lhs.true260

lor.lhs.false.if.end277_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end277

land.lhs.true260:                                 ; preds = %lor.lhs.false
  %bar2_pa262 = getelementptr inbounds %struct.t4_wq, ptr %wq, i32 0, i32 1, i32 5
  %90 = ptrtoint ptr %bar2_pa262 to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %bar2_pa262, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %91)
  %tobool263.not = icmp eq i64 %91, 0
  br i1 %tobool263.not, label %land.lhs.true260.do.end267_crit_edge, label %land.lhs.true260.if.end277_crit_edge

land.lhs.true260.if.end277_crit_edge:             ; preds = %land.lhs.true260
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end277

land.lhs.true260.do.end267_crit_edge:             ; preds = %land.lhs.true260
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end267

do.end267:                                        ; preds = %land.lhs.true260.do.end267_crit_edge, %land.lhs.true.do.end267_crit_edge
  %92 = ptrtoint ptr %lldi.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %lldi.i.i, align 8
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %93, i32 0, i32 44, i32 3
  %94 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i655 = icmp eq ptr %95, null
  br i1 %tobool.not.i.i655, label %if.end.i.i656, label %do.end267.pci_name.exit_crit_edge

do.end267.pci_name.exit_crit_edge:                ; preds = %do.end267
  call void @__sanitizer_cov_trace_pc() #13
  br label %pci_name.exit

if.end.i.i656:                                    ; preds = %do.end267
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %93, i32 0, i32 44
  %96 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i656, %do.end267.pci_name.exit_crit_edge
  %retval.0.i.i657 = phi ptr [ %97, %if.end.i.i656 ], [ %95, %do.end267.pci_name.exit_crit_edge ]
  %98 = ptrtoint ptr %qid to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %qid, align 8
  %qid275 = getelementptr inbounds %struct.t4_wq, ptr %wq, i32 0, i32 1, i32 8
  %100 = ptrtoint ptr %qid275 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %qid275, align 8
  %call276 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, ptr noundef %retval.0.i.i657, i32 noundef %99, i32 noundef %101) #14
  br label %free_dma

if.end277:                                        ; preds = %land.lhs.true260.if.end277_crit_edge, %lor.lhs.false.if.end277_crit_edge, %if.end254.if.end277_crit_edge
  %rdev278 = getelementptr inbounds %struct.t4_wq, ptr %wq, i32 0, i32 3
  %102 = ptrtoint ptr %rdev278 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %rdev, ptr %rdev278, align 4
  %msn = getelementptr inbounds %struct.t4_wq, ptr %wq, i32 0, i32 1, i32 9
  %103 = ptrtoint ptr %msn to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 1, ptr %msn, align 4
  %spec.select585 = select i1 %tobool4.not, i32 112, i32 160
  %call.i658 = call ptr @__alloc_skb(i32 noundef %spec.select585, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #11
  %tobool285.not = icmp eq ptr %call.i658, null
  br i1 %tobool285.not, label %if.end277.free_dma_crit_edge, label %if.end287

if.end277.free_dma_crit_edge:                     ; preds = %if.end277
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_dma

if.end287:                                        ; preds = %if.end277
  %queue_mapping1.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i658, i32 0, i32 10
  %104 = ptrtoint ptr %queue_mapping1.i.i to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 1, ptr %queue_mapping1.i.i, align 8
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i658, i32 0, i32 7
  %105 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool.i.not.i.i = icmp eq i32 %106, 0
  br i1 %tobool.i.not.i.i, label %__skb_put_zero.exit, label %do.body3.i.i, !prof !303

do.body3.i.i:                                     ; preds = %if.end287
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #11, !srcloc !324
  unreachable

__skb_put_zero.exit:                              ; preds = %if.end287
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i658, i32 0, i32 16
  %107 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %108, i32 %spec.select585
  store ptr %add.ptr.i.i, ptr %tail.i.i.i, align 8
  %len9.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i658, i32 0, i32 6
  %109 = ptrtoint ptr %len9.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %len9.i.i, align 4
  %add.i.i = add i32 %110, %spec.select585
  store i32 %add.i.i, ptr %len9.i.i, align 4
  %111 = call ptr @memset(ptr %108, i32 0, i32 %spec.select585)
  %or292 = select i1 %tobool4.not, i32 203423745, i32 203423746
  %112 = ptrtoint ptr %108 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %or292, ptr %108, align 8
  %div583 = lshr exact i32 %spec.select585, 4
  %len16_pkd = getelementptr inbounds %struct.fw_ri_res_wr, ptr %108, i32 0, i32 1
  %113 = ptrtoint ptr %len16_pkd to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %div583, ptr %len16_pkd, align 4
  %114 = ptrtoint ptr %wr_waitp to i32
  %conv295 = zext i32 %114 to i64
  %cookie = getelementptr inbounds %struct.fw_ri_res_wr, ptr %108, i32 0, i32 2
  %115 = ptrtoint ptr %cookie to i32
  call void @__asan_store8_noabort(i32 %115)
  store i64 %conv295, ptr %cookie, align 8
  %res296 = getelementptr inbounds %struct.fw_ri_res_wr, ptr %108, i32 0, i32 3
  %116 = ptrtoint ptr %res296 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 0, ptr %res296, align 8
  %op = getelementptr inbounds %struct.fw_ri_res_sqrq, ptr %res296, i32 0, i32 1
  %117 = ptrtoint ptr %op to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 0, ptr %op, align 1
  %size299 = getelementptr inbounds %struct.t4_sq, ptr %wq, i32 0, i32 12
  %118 = ptrtoint ptr %size299 to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %size299, align 2
  %conv300 = zext i16 %119 to i32
  %mul = mul nuw nsw i32 %conv300, 5
  %hw_queue = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 14
  %120 = ptrtoint ptr %hw_queue to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %hw_queue, align 8
  %add301 = add i32 %mul, %121
  %flags.i = getelementptr inbounds %struct.t4_sq, ptr %wq, i32 0, i32 17
  %122 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %flags.i, align 8
  %124 = and i16 %123, 1
  %125 = zext i16 %124 to i32
  %126 = shl nuw nsw i32 %125, 18
  %cqid = getelementptr inbounds %struct.t4_cq, ptr %scq, i32 0, i32 11
  %127 = ptrtoint ptr %cqid to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %cqid, align 8
  %or308 = or i32 %126, %128
  %fetchszm_to_iqid = getelementptr inbounds %struct.fw_ri_res_wr, ptr %108, i32 2
  %129 = ptrtoint ptr %fetchszm_to_iqid to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %or308, ptr %fetchszm_to_iqid, align 8
  %130 = load i16, ptr %flags.i, align 8
  %131 = and i16 %130, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %131)
  %tobool312.not = icmp eq i16 %131, 0
  %or314 = select i1 %tobool312.not, i32 19922944, i32 18874368
  %or318 = or i32 %or314, %add301
  %dcaen_to_eqsize = getelementptr inbounds %struct.fw_ri_res_wr, ptr %108, i32 2, i32 1
  %132 = ptrtoint ptr %dcaen_to_eqsize to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %or318, ptr %dcaen_to_eqsize, align 4
  %133 = ptrtoint ptr %qid to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %qid, align 8
  %eqid = getelementptr inbounds %struct.fw_ri_res_wr, ptr %108, i32 1, i32 1
  %135 = ptrtoint ptr %eqid to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %134, ptr %eqid, align 4
  %136 = ptrtoint ptr %dma_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %dma_addr.i.i, align 4
  %conv325 = zext i32 %137 to i64
  %eqaddr = getelementptr inbounds %struct.fw_ri_res_wr, ptr %108, i32 2, i32 2
  %138 = ptrtoint ptr %eqaddr to i32
  call void @__asan_store8_noabort(i32 %138)
  store i64 %conv325, ptr %eqaddr, align 8
  br i1 %tobool4.not, label %__skb_put_zero.exit.if.end358_crit_edge, label %if.then328

__skb_put_zero.exit.if.end358_crit_edge:          ; preds = %__skb_put_zero.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end358

if.then328:                                       ; preds = %__skb_put_zero.exit
  call void @__sanitizer_cov_trace_pc() #13
  %incdec.ptr = getelementptr %struct.fw_ri_res_wr, ptr %108, i32 4
  %139 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 1, ptr %incdec.ptr, align 8
  %op332 = getelementptr inbounds %struct.fw_ri_res_sqrq, ptr %incdec.ptr, i32 0, i32 1
  %140 = ptrtoint ptr %op332 to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 0, ptr %op332, align 1
  %size334 = getelementptr inbounds %struct.t4_wq, ptr %wq, i32 0, i32 1, i32 13
  %141 = ptrtoint ptr %size334 to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %size334, align 8
  %conv335 = zext i16 %142 to i32
  %mul336 = shl nuw nsw i32 %conv335, 1
  %143 = ptrtoint ptr %hw_queue to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %hw_queue, align 8
  %add339 = add i32 %mul336, %144
  %cqid340 = getelementptr inbounds %struct.t4_cq, ptr %rcq, i32 0, i32 11
  %145 = ptrtoint ptr %cqid340 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %cqid340, align 8
  %fetchszm_to_iqid344 = getelementptr %struct.fw_ri_res_wr, ptr %108, i32 5
  %147 = ptrtoint ptr %fetchszm_to_iqid344 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %146, ptr %fetchszm_to_iqid344, align 8
  %or346 = or i32 %add339, 19922944
  %dcaen_to_eqsize348 = getelementptr %struct.fw_ri_res_wr, ptr %108, i32 5, i32 1
  %148 = ptrtoint ptr %dcaen_to_eqsize348 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %or346, ptr %dcaen_to_eqsize348, align 4
  %qid350 = getelementptr inbounds %struct.t4_wq, ptr %wq, i32 0, i32 1, i32 8
  %149 = ptrtoint ptr %qid350 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %qid350, align 8
  %eqid352 = getelementptr %struct.fw_ri_res_wr, ptr %108, i32 4, i32 1
  %151 = ptrtoint ptr %eqid352 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %150, ptr %eqid352, align 4
  %dma_addr354 = getelementptr inbounds %struct.t4_wq, ptr %wq, i32 0, i32 1, i32 1
  %152 = ptrtoint ptr %dma_addr354 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %dma_addr354, align 4
  %conv355 = zext i32 %153 to i64
  %eqaddr357 = getelementptr %struct.fw_ri_res_wr, ptr %108, i32 5, i32 2
  %154 = ptrtoint ptr %eqaddr357 to i32
  call void @__asan_store8_noabort(i32 %154)
  store i64 %conv355, ptr %eqaddr357, align 8
  br label %if.end358

if.end358:                                        ; preds = %if.then328, %__skb_put_zero.exit.if.end358_crit_edge
  %ret.i = getelementptr inbounds %struct.c4iw_wr_wait, ptr %wr_waitp, i32 0, i32 1
  %155 = ptrtoint ptr %ret.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 0, ptr %ret.i, align 4
  %156 = ptrtoint ptr %wr_waitp to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 0, ptr %wr_waitp, align 4
  %wait.i.i = getelementptr inbounds %struct.completion, ptr %wr_waitp, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.114, ptr noundef nonnull @init_completion.__key) #11
  %157 = ptrtoint ptr %qid to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %qid, align 8
  %call361 = call fastcc i32 @c4iw_ref_send_wait(ptr noundef %rdev, ptr noundef nonnull %call.i658, ptr noundef %wr_waitp, i32 noundef 0, i32 noundef %158, ptr noundef nonnull @.str.108)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call361)
  %tobool362.not = icmp eq i32 %call361, 0
  br i1 %tobool362.not, label %do.body365, label %if.end358.free_dma_crit_edge

if.end358.free_dma_crit_edge:                     ; preds = %if.end358
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_dma

do.body365:                                       ; preds = %if.end358
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @create_qp.__UNIQUE_ID_ddebug689, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@create_qp, %if.then377)) #11
          to label %cleanup [label %if.then377], !srcloc !300

if.then377:                                       ; preds = %do.body365
  call void @__sanitizer_cov_trace_pc() #13
  %159 = ptrtoint ptr %qid to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %qid, align 8
  %qid381 = getelementptr inbounds %struct.t4_wq, ptr %wq, i32 0, i32 1, i32 8
  %161 = ptrtoint ptr %qid381 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %qid381, align 8
  %163 = ptrtoint ptr %db to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %db, align 8
  %165 = ptrtoint ptr %bar2_va to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %bar2_va, align 8
  %bar2_va386 = getelementptr inbounds %struct.t4_wq, ptr %wq, i32 0, i32 1, i32 4
  %167 = ptrtoint ptr %bar2_va386 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %bar2_va386, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @create_qp.__UNIQUE_ID_ddebug689, ptr noundef nonnull @.str.113, i32 noundef %160, i32 noundef %162, ptr noundef %164, ptr noundef %166, ptr noundef %168) #11
  br label %cleanup

free_dma:                                         ; preds = %if.end358.free_dma_crit_edge, %if.end277.free_dma_crit_edge, %pci_name.exit
  %ret.0 = phi i32 [ %call361, %if.end358.free_dma_crit_edge ], [ -22, %pci_name.exit ], [ -12, %if.end277.free_dma_crit_edge ]
  br i1 %tobool4.not, label %free_dma.free_sq_crit_edge, label %if.then391

free_dma.free_sq_crit_edge:                       ; preds = %free_dma
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_sq

if.then391:                                       ; preds = %free_dma
  call void @__sanitizer_cov_trace_pc() #13
  %169 = ptrtoint ptr %lldi.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %lldi.i.i, align 8
  %dev394 = getelementptr inbounds %struct.pci_dev, ptr %170, i32 0, i32 44
  %rq395 = getelementptr inbounds %struct.t4_wq, ptr %wq, i32 0, i32 1
  %memsize396 = getelementptr inbounds %struct.t4_wq, ptr %wq, i32 0, i32 1, i32 6
  %171 = ptrtoint ptr %memsize396 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %memsize396, align 8
  %173 = ptrtoint ptr %rq395 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %rq395, align 8
  %mapping400 = getelementptr inbounds %struct.t4_wq, ptr %wq, i32 0, i32 1, i32 2
  %175 = ptrtoint ptr %mapping400 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %mapping400, align 8
  call void @dma_free_attrs(ptr noundef %dev394, i32 noundef %172, ptr noundef %174, i32 noundef %176, i32 noundef 0) #11
  br label %free_sq

free_sq:                                          ; preds = %if.then391, %free_dma.free_sq_crit_edge, %if.then189.free_sq_crit_edge
  %ret.1 = phi i32 [ %ret.0, %if.then391 ], [ %ret.0, %free_dma.free_sq_crit_edge ], [ -12, %if.then189.free_sq_crit_edge ]
  %flags.i.i = getelementptr inbounds %struct.t4_sq, ptr %wq, i32 0, i32 17
  %177 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %177)
  %178 = load i16, ptr %flags.i.i, align 8
  %179 = and i16 %178, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %179)
  %tobool.not.i662 = icmp eq i16 %179, 0
  br i1 %tobool.not.i662, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %free_sq
  call void @__sanitizer_cov_trace_pc() #13
  %180 = ptrtoint ptr %dma_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %dma_addr.i.i, align 4
  %182 = ptrtoint ptr %memsize.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %memsize.i.i, align 8
  call void @c4iw_ocqp_pool_free(ptr noundef %rdev, i32 noundef %181, i32 noundef %183) #11
  br label %free_hwaddr

if.else.i:                                        ; preds = %free_sq
  call void @__sanitizer_cov_trace_pc() #13
  %184 = ptrtoint ptr %lldi.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %lldi.i.i, align 8
  %dev.i.i666 = getelementptr inbounds %struct.pci_dev, ptr %185, i32 0, i32 44
  %186 = ptrtoint ptr %memsize.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %memsize.i.i, align 8
  %188 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %wq, align 8
  %190 = ptrtoint ptr %mapping.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %mapping.i.i, align 8
  call void @dma_free_attrs(ptr noundef %dev.i.i666, i32 noundef %187, ptr noundef %189, i32 noundef %191, i32 noundef 0) #11
  br label %free_hwaddr

free_hwaddr:                                      ; preds = %if.else.i, %if.then.i, %if.end178.free_hwaddr_crit_edge
  %ret.2 = phi i32 [ -12, %if.end178.free_hwaddr_crit_edge ], [ %ret.1, %if.then.i ], [ %ret.1, %if.else.i ]
  br i1 %tobool4.not, label %free_hwaddr.free_sw_sq_crit_edge, label %if.then404

free_hwaddr.free_sw_sq_crit_edge:                 ; preds = %free_hwaddr
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_sw_sq

if.then404:                                       ; preds = %free_hwaddr
  call void @__sanitizer_cov_trace_pc() #13
  %rqt_hwaddr406 = getelementptr inbounds %struct.t4_wq, ptr %wq, i32 0, i32 1, i32 10
  %192 = ptrtoint ptr %rqt_hwaddr406 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %rqt_hwaddr406, align 8
  %rqt_size408 = getelementptr inbounds %struct.t4_wq, ptr %wq, i32 0, i32 1, i32 11
  %194 = ptrtoint ptr %rqt_size408 to i32
  call void @__asan_load2_noabort(i32 %194)
  %195 = load i16, ptr %rqt_size408, align 4
  %conv409 = zext i16 %195 to i32
  call void @c4iw_rqtpool_free(ptr noundef %rdev, i32 noundef %193, i32 noundef %conv409) #11
  br label %if.then412

if.then412:                                       ; preds = %if.then404, %cond.end164.if.then412_crit_edge
  %ret.3.ph = phi i32 [ -12, %cond.end164.if.then412_crit_edge ], [ %ret.2, %if.then404 ]
  %sw_rq414 = getelementptr inbounds %struct.t4_wq, ptr %wq, i32 0, i32 1, i32 3
  %196 = ptrtoint ptr %sw_rq414 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %sw_rq414, align 4
  call void @kfree(ptr noundef %197) #11
  br label %free_sw_sq

free_sw_sq:                                       ; preds = %if.then412, %free_hwaddr.free_sw_sq_crit_edge, %if.end7.i.i622.free_sw_sq_crit_edge
  %ret.4 = phi i32 [ %ret.3.ph, %if.then412 ], [ -12, %if.end7.i.i622.free_sw_sq_crit_edge ], [ %ret.2, %free_hwaddr.free_sw_sq_crit_edge ]
  %sw_sq417 = getelementptr inbounds %struct.t4_sq, ptr %wq, i32 0, i32 4
  %198 = ptrtoint ptr %sw_sq417 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %sw_sq417, align 8
  call void @kfree(ptr noundef %199) #11
  br label %free_rq_qid

free_rq_qid:                                      ; preds = %free_sw_sq, %if.end7.i.i.free_rq_qid_crit_edge
  %ret.5 = phi i32 [ %ret.4, %free_sw_sq ], [ -12, %if.end7.i.i.free_rq_qid_crit_edge ]
  br i1 %tobool4.not, label %free_rq_qid.free_sq_qid_crit_edge, label %if.then419

free_rq_qid.free_sq_qid_crit_edge:                ; preds = %free_rq_qid
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_sq_qid

if.then419:                                       ; preds = %free_rq_qid
  call void @__sanitizer_cov_trace_pc() #13
  %qid421 = getelementptr inbounds %struct.t4_wq, ptr %wq, i32 0, i32 1, i32 8
  %200 = ptrtoint ptr %qid421 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %qid421, align 8
  call void @c4iw_put_qpid(ptr noundef %rdev, i32 noundef %201, ptr noundef %uctx) #11
  br label %free_sq_qid

free_sq_qid:                                      ; preds = %if.then419, %free_rq_qid.free_sq_qid_crit_edge, %if.then5.free_sq_qid_crit_edge
  %ret.6 = phi i32 [ %ret.5, %if.then419 ], [ %ret.5, %free_rq_qid.free_sq_qid_crit_edge ], [ -12, %if.then5.free_sq_qid_crit_edge ]
  %202 = ptrtoint ptr %qid to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %qid, align 8
  call void @c4iw_put_qpid(ptr noundef %rdev, i32 noundef %203, ptr noundef %uctx) #11
  br label %cleanup

cleanup:                                          ; preds = %free_sq_qid, %if.then377, %do.body365, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.6, %free_sq_qid ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.then377 ], [ 0, %do.body365 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xa_insert_irq(ptr noundef %xa, i32 noundef %index, ptr noundef %entry1) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_lock_irq(ptr noundef %xa) #11
  %call = tail call i32 @__xa_insert(ptr noundef %xa, i32 noundef %index, ptr noundef %entry1, i32 noundef 3264) #11
  tail call void @_raw_spin_unlock_irq(ptr noundef %xa) #11
  ret i32 %call
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ib_copy_to_udata(ptr nocapture noundef readonly %udata, ptr noundef %src, i32 noundef %len) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %outbuf = getelementptr inbounds %struct.ib_udata, ptr %udata, i32 0, i32 1
  %0 = ptrtoint ptr %outbuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %outbuf, align 4
  tail call void @__check_object_size(ptr noundef %src, i32 noundef %len, i1 noundef zeroext true) #11
  tail call void @__might_fault(ptr noundef nonnull @.str.117, i32 noundef 174) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %entry.copy_to_user.exit.thread_crit_edge, label %if.end.i.i

entry.copy_to_user.exit.thread_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit.thread

if.end.i.i:                                       ; preds = %entry
  %2 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %len, i32 -1226833920) #17, !srcloc !325
  %asmresult.i.i = extractvalue { i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit.thread_crit_edge

if.end.i.i.copy_to_user.exit.thread_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit.thread

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %src, i32 noundef %len) #11
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef %src, i32 noundef %len) #11
  br label %copy_to_user.exit.thread

copy_to_user.exit.thread:                         ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit.thread_crit_edge, %entry.copy_to_user.exit.thread_crit_edge
  %n.addr.0.i = phi i32 [ %len, %entry.copy_to_user.exit.thread_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %len, %if.end.i.i.copy_to_user.exit.thread_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool.not = icmp eq i32 %n.addr.0.i, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 -14
  ret i32 %spec.select
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @insert_mmap(ptr noundef %ucontext, ptr noundef %mm) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %mmap_lock = getelementptr inbounds %struct.c4iw_ucontext, ptr %ucontext, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %mmap_lock) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @insert_mmap.__UNIQUE_ID_ddebug675, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@insert_mmap, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !300

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %key = getelementptr inbounds %struct.c4iw_mm_entry, ptr %mm, i32 0, i32 2
  %0 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %key, align 8
  %addr = getelementptr inbounds %struct.c4iw_mm_entry, ptr %mm, i32 0, i32 1
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %addr, align 8
  %len = getelementptr inbounds %struct.c4iw_mm_entry, ptr %mm, i32 0, i32 3
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @insert_mmap.__UNIQUE_ID_ddebug675, ptr noundef nonnull @.str.120, i32 noundef %1, i64 noundef %3, i32 noundef %5) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %mmaps = getelementptr inbounds %struct.c4iw_ucontext, ptr %ucontext, i32 0, i32 4
  %prev.i = getelementptr inbounds %struct.c4iw_ucontext, ptr %ucontext, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %mm, ptr noundef %7, ptr noundef %mmaps) #11
  br i1 %call.i.i, label %if.end.i.i, label %do.end.list_add_tail.exit_crit_edge

do.end.list_add_tail.exit_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %mm, ptr %prev.i, align 4
  %9 = ptrtoint ptr %mm to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %mmaps, ptr %mm, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %mm, i32 0, i32 1
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev3.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %mm, ptr %7, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.end.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %mmap_lock) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xa_erase_irq(ptr noundef %xa, i32 noundef %index) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_lock_irq(ptr noundef %xa) #11
  %call = tail call ptr @__xa_erase(ptr noundef %xa, i32 noundef %index) #11
  tail call void @_raw_spin_unlock_irq(ptr noundef %xa) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @c4iw_ib_modify_qp(ptr noundef %ibqp, ptr nocapture noundef readonly %attr, i32 noundef %attr_mask, ptr nocapture noundef readnone %udata) local_unnamed_addr #0 align 64 {
entry:
  %attrs = alloca %struct.c4iw_qp_attributes, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %attrs) #11
  %0 = call ptr @memset(ptr %attrs, i32 0, i32 128)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c4iw_ib_modify_qp.__UNIQUE_ID_ddebug717, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c4iw_ib_modify_qp, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !300

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @c4iw_ib_modify_qp.__UNIQUE_ID_ddebug717, ptr noundef nonnull @.str.4, ptr noundef %ibqp) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %attr_mask)
  %tobool3.not = icmp ult i32 %attr_mask, 2097152
  br i1 %tobool3.not, label %if.end5, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %do.end
  %and6 = and i32 %attr_mask, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end5.if.end10_crit_edge, label %land.lhs.true

if.end5.if.end10_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

land.lhs.true:                                    ; preds = %if.end5
  %1 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %attr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp = icmp eq i32 %2, 2
  %and9 = and i32 %attr_mask, -2
  br i1 %cmp, label %land.lhs.true.if.end10_crit_edge, label %land.lhs.true.if.end13_crit_edge

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.end10:                                         ; preds = %land.lhs.true.if.end10_crit_edge, %if.end5.if.end10_crit_edge
  %attr_mask.addr.0 = phi i32 [ %attr_mask, %if.end5.if.end10_crit_edge ], [ %and9, %land.lhs.true.if.end10_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %attr_mask.addr.0)
  %tobool11.not = icmp eq i32 %attr_mask.addr.0, 0
  br i1 %tobool11.not, label %if.end10.cleanup_crit_edge, label %if.end13thread-pre-split

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end13thread-pre-split:                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pr = load i32, ptr %attr, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.end13thread-pre-split, %land.lhs.true.if.end13_crit_edge
  %4 = phi i32 [ %.pr, %if.end13thread-pre-split ], [ %2, %land.lhs.true.if.end13_crit_edge ]
  %attr_mask.addr.086 = phi i32 [ %attr_mask.addr.0, %if.end13thread-pre-split ], [ %attr_mask, %land.lhs.true.if.end13_crit_edge ]
  %rhp15 = getelementptr inbounds %struct.c4iw_qp, ptr %ibqp, i32 0, i32 2
  %5 = ptrtoint ptr %rhp15 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rhp15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %4)
  %7 = icmp ult i32 %4, 7
  br i1 %7, label %switch.lookup, label %if.end13.c4iw_convert_state.exit_crit_edge

if.end13.c4iw_convert_state.exit_crit_edge:       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %c4iw_convert_state.exit

switch.lookup:                                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.c4iw_ib_modify_qp, i32 0, i32 %4
  %8 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %c4iw_convert_state.exit

c4iw_convert_state.exit:                          ; preds = %switch.lookup, %if.end13.c4iw_convert_state.exit_crit_edge
  %retval.0.i82 = phi i32 [ %switch.load, %switch.lookup ], [ -1, %if.end13.c4iw_convert_state.exit_crit_edge ]
  %next_state = getelementptr inbounds %struct.c4iw_qp_attributes, ptr %attrs, i32 0, i32 15
  %9 = ptrtoint ptr %next_state to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %retval.0.i82, ptr %next_state, align 4
  %qp_access_flags = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 8
  %10 = ptrtoint ptr %qp_access_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %qp_access_flags, align 8
  %12 = trunc i32 %11 to i8
  %13 = lshr i8 %12, 2
  %14 = and i8 %13, 1
  %enable_rdma_read = getelementptr inbounds %struct.c4iw_qp_attributes, ptr %attrs, i32 0, i32 8
  %15 = ptrtoint ptr %enable_rdma_read to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %enable_rdma_read, align 4
  %16 = lshr i8 %12, 1
  %17 = and i8 %16, 1
  %enable_rdma_write = getelementptr inbounds %struct.c4iw_qp_attributes, ptr %attrs, i32 0, i32 9
  %18 = ptrtoint ptr %enable_rdma_write to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %enable_rdma_write, align 1
  %19 = lshr i8 %12, 4
  %20 = and i8 %19, 1
  %enable_bind = getelementptr inbounds %struct.c4iw_qp_attributes, ptr %attrs, i32 0, i32 10
  %21 = ptrtoint ptr %enable_bind to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %enable_bind, align 2
  %sq_psn = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 6
  %22 = ptrtoint ptr %sq_psn to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sq_psn, align 8
  %conv37 = trunc i32 %23 to i16
  %sq_db_inc = getelementptr inbounds %struct.c4iw_qp_attributes, ptr %attrs, i32 0, i32 23
  %24 = ptrtoint ptr %sq_db_inc to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv37, ptr %sq_db_inc, align 2
  %rq_psn = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 5
  %25 = ptrtoint ptr %rq_psn to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rq_psn, align 4
  %conv38 = trunc i32 %26 to i16
  %rq_db_inc = getelementptr inbounds %struct.c4iw_qp_attributes, ptr %attrs, i32 0, i32 24
  %27 = ptrtoint ptr %rq_db_inc to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv38, ptr %rq_db_inc, align 4
  %and39 = lshr i32 %attr_mask.addr.086, 15
  %28 = and i32 %and39, 2
  %and43 = lshr i32 %attr_mask.addr.086, 10
  %29 = and i32 %and43, 4
  %adapter_type = getelementptr inbounds %struct.c4iw_dev, ptr %6, i32 0, i32 1, i32 8, i32 13
  %30 = ptrtoint ptr %adapter_type to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %adapter_type, align 8
  %32 = and i8 %31, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %32)
  %cmp.i = icmp eq i8 %32, 64
  %and53 = or i32 %28, %29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  %or.cond = or i1 %tobool54.not, %cmp.i
  br i1 %or.cond, label %if.end56, label %c4iw_convert_state.exit.cleanup_crit_edge

c4iw_convert_state.exit.cleanup_crit_edge:        ; preds = %c4iw_convert_state.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end56:                                         ; preds = %c4iw_convert_state.exit
  call void @__sanitizer_cov_trace_pc() #13
  %and30 = and i32 %attr_mask.addr.086, 1
  %and33 = and i32 %attr_mask.addr.086, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  %cond35 = select i1 %tobool34.not, i32 0, i32 896
  %or42 = or i32 %and53, %and30
  %or46 = or i32 %or42, %cond35
  %call57 = call i32 @c4iw_modify_qp(ptr noundef %6, ptr noundef %ibqp, i32 noundef %or46, ptr noundef nonnull %attrs, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end56, %c4iw_convert_state.exit.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call57, %if.end56 ], [ -95, %do.end.cleanup_crit_edge ], [ 0, %if.end10.cleanup_crit_edge ], [ -22, %c4iw_convert_state.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %attrs) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @c4iw_get_qp(ptr noundef %dev, i32 noundef %qpn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c4iw_get_qp.__UNIQUE_ID_ddebug718, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c4iw_get_qp, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !300

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @c4iw_get_qp.__UNIQUE_ID_ddebug718, ptr noundef nonnull @.str.44, ptr noundef %dev, i32 noundef %qpn) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %qps.i = getelementptr inbounds %struct.c4iw_dev, ptr %dev, i32 0, i32 4
  %call.i = tail call ptr @xa_load(ptr noundef %qps.i, i32 noundef %qpn) #11
  ret ptr %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @c4iw_dispatch_srq_limit_reached_event(ptr noundef %srq) local_unnamed_addr #0 align 64 {
entry:
  %event = alloca %struct.ib_event, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %event) #11
  %rhp = getelementptr inbounds %struct.c4iw_srq, ptr %srq, i32 0, i32 2
  %0 = ptrtoint ptr %rhp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rhp, align 4
  %2 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %event, align 4
  %element = getelementptr inbounds %struct.ib_event, ptr %event, i32 0, i32 1
  %3 = ptrtoint ptr %element to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %srq, ptr %element, align 4
  %event1 = getelementptr inbounds %struct.ib_event, ptr %event, i32 0, i32 2
  %4 = ptrtoint ptr %event1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 15, ptr %event1, align 4
  call void @ib_dispatch_event(ptr noundef nonnull %event) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %event) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_dispatch_event(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @c4iw_modify_srq(ptr noundef %ib_srq, ptr nocapture noundef readonly %attr, i32 noundef %srq_attr_mask, ptr noundef readnone %udata) local_unnamed_addr #0 align 64 {
entry:
  %event.i = alloca %struct.ib_event, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp ne ptr %udata, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %srq_attr_mask)
  %tobool1.not = icmp eq i32 %srq_attr_mask, 0
  %or.cond = and i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %event.i) #11
  %rhp.i = getelementptr inbounds %struct.c4iw_srq, ptr %ib_srq, i32 0, i32 2
  %0 = ptrtoint ptr %rhp.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rhp.i, align 4
  %2 = ptrtoint ptr %event.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %event.i, align 4
  %element.i = getelementptr inbounds %struct.ib_event, ptr %event.i, i32 0, i32 1
  %3 = ptrtoint ptr %element.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %ib_srq, ptr %element.i, align 4
  %event1.i = getelementptr inbounds %struct.ib_event, ptr %event.i, i32 0, i32 2
  %4 = ptrtoint ptr %event1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 15, ptr %event1.i, align 4
  call void @ib_dispatch_event(ptr noundef nonnull %event.i) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %event.i) #11
  br label %out

if.end:                                           ; preds = %entry
  %and = and i32 %srq_attr_mask, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp ne i32 %and, 0
  %brmerge = or i1 %tobool2.not, %tobool.not
  %.mux = select i1 %tobool2.not, i32 -22, i32 0
  br i1 %brmerge, label %if.end.out_crit_edge, label %land.lhs.true6

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

land.lhs.true6:                                   ; preds = %if.end
  %and7 = and i32 %srq_attr_mask, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %land.lhs.true6.out_crit_edge, label %if.then9

land.lhs.true6.out_crit_edge:                     ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then9:                                         ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #13
  %armed = getelementptr inbounds %struct.c4iw_srq, ptr %ib_srq, i32 0, i32 11
  %5 = ptrtoint ptr %armed to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %armed, align 4
  %srq_limit = getelementptr inbounds %struct.ib_srq_attr, ptr %attr, i32 0, i32 2
  %6 = ptrtoint ptr %srq_limit to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %srq_limit, align 4
  %srq_limit10 = getelementptr inbounds %struct.c4iw_srq, ptr %ib_srq, i32 0, i32 5
  %8 = ptrtoint ptr %srq_limit10 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %srq_limit10, align 4
  br label %out

out:                                              ; preds = %if.then9, %land.lhs.true6.out_crit_edge, %if.end.out_crit_edge, %if.then
  %ret.0 = phi i32 [ 0, %if.then9 ], [ 0, %land.lhs.true6.out_crit_edge ], [ 0, %if.then ], [ %.mux, %if.end.out_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @c4iw_ib_query_qp(ptr nocapture noundef readonly %ibqp, ptr nocapture noundef writeonly %attr, i32 noundef %attr_mask, ptr nocapture noundef writeonly %init_attr) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %attr, i32 0, i32 216)
  %1 = call ptr @memset(ptr %init_attr, i32 0, i32 72)
  %state = getelementptr inbounds %struct.c4iw_qp, ptr %ibqp, i32 0, i32 4, i32 7
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %3)
  %4 = icmp ult i32 %3, 5
  br i1 %4, label %switch.lookup, label %entry.to_ib_qp_state.exit_crit_edge

entry.to_ib_qp_state.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %to_ib_qp_state.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.c4iw_ib_query_qp, i32 0, i32 %3
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %to_ib_qp_state.exit

to_ib_qp_state.exit:                              ; preds = %switch.lookup, %entry.to_ib_qp_state.exit_crit_edge
  %retval.0.i = phi i32 [ %switch.load, %switch.lookup ], [ 6, %entry.to_ib_qp_state.exit_crit_edge ]
  %6 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %retval.0.i, ptr %attr, align 8
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %8)
  %9 = icmp ult i32 %8, 5
  br i1 %9, label %switch.lookup35, label %to_ib_qp_state.exit.to_ib_qp_state.exit34_crit_edge

to_ib_qp_state.exit.to_ib_qp_state.exit34_crit_edge: ; preds = %to_ib_qp_state.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %to_ib_qp_state.exit34

switch.lookup35:                                  ; preds = %to_ib_qp_state.exit
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep36 = getelementptr inbounds [5 x i32], ptr @switch.table.c4iw_ib_query_qp.125, i32 0, i32 %8
  %10 = ptrtoint ptr %switch.gep36 to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load37 = load i32, ptr %switch.gep36, align 4
  br label %to_ib_qp_state.exit34

to_ib_qp_state.exit34:                            ; preds = %switch.lookup35, %to_ib_qp_state.exit.to_ib_qp_state.exit34_crit_edge
  %retval.0.i33 = phi i32 [ %switch.load37, %switch.lookup35 ], [ 6, %to_ib_qp_state.exit.to_ib_qp_state.exit34_crit_edge ]
  %cur_qp_state = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 1
  %11 = ptrtoint ptr %cur_qp_state to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %retval.0.i33, ptr %cur_qp_state, align 4
  %sq_num_entries = getelementptr inbounds %struct.c4iw_qp, ptr %ibqp, i32 0, i32 4, i32 2
  %12 = ptrtoint ptr %sq_num_entries to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sq_num_entries, align 4
  %cap = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr, i32 0, i32 6
  %14 = ptrtoint ptr %cap to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %cap, align 4
  %rq_num_entries = getelementptr inbounds %struct.c4iw_qp, ptr %ibqp, i32 0, i32 4, i32 3
  %15 = ptrtoint ptr %rq_num_entries to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rq_num_entries, align 4
  %max_recv_wr = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr, i32 0, i32 6, i32 1
  %17 = ptrtoint ptr %max_recv_wr to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %max_recv_wr, align 4
  %sq_max_sges = getelementptr inbounds %struct.c4iw_qp, ptr %ibqp, i32 0, i32 4, i32 4
  %18 = ptrtoint ptr %sq_max_sges to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sq_max_sges, align 4
  %max_send_sge = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr, i32 0, i32 6, i32 2
  %20 = ptrtoint ptr %max_send_sge to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %max_send_sge, align 4
  %rq_max_sges = getelementptr inbounds %struct.c4iw_qp, ptr %ibqp, i32 0, i32 4, i32 6
  %21 = ptrtoint ptr %rq_max_sges to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rq_max_sges, align 4
  %max_recv_sge = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr, i32 0, i32 6, i32 3
  %23 = ptrtoint ptr %max_recv_sge to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %max_recv_sge, align 4
  %max_inline_data = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr, i32 0, i32 6, i32 4
  %24 = ptrtoint ptr %max_inline_data to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 280, ptr %max_inline_data, align 4
  %sq_sig_type = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr, i32 0, i32 7
  %25 = ptrtoint ptr %sq_sig_type to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %sq_sig_type, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @c4iw_create_srq(ptr noundef %ib_srq, ptr nocapture noundef %attrs, ptr noundef readonly %udata) local_unnamed_addr #0 align 64 {
entry:
  %uresp = alloca %struct.c4iw_create_srq_resp, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pd1 = getelementptr inbounds %struct.ib_srq, ptr %ib_srq, i32 0, i32 1
  %0 = ptrtoint ptr %pd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pd1, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %uresp) #11
  %2 = call ptr @memset(ptr %uresp, i32 255, i32 48)
  %srq_type = getelementptr inbounds %struct.ib_srq_init_attr, ptr %attrs, i32 0, i32 3
  %3 = ptrtoint ptr %srq_type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %srq_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not = icmp eq i32 %4, 0
  br i1 %cmp.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c4iw_create_srq.__UNIQUE_ID_ddebug720, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c4iw_create_srq, %if.then5)) #11
          to label %do.end [label %if.then5], !srcloc !300

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @c4iw_create_srq.__UNIQUE_ID_ddebug720, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.45, ptr noundef %1) #11
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %rhp8 = getelementptr inbounds %struct.c4iw_pd, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %rhp8 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rhp8, align 4
  %rdev = getelementptr inbounds %struct.c4iw_dev, ptr %6, i32 0, i32 1
  %vr = getelementptr inbounds %struct.c4iw_dev, ptr %6, i32 0, i32 1, i32 8, i32 4
  %7 = ptrtoint ptr %vr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vr, align 8
  %size = getelementptr inbounds %struct.cxgb4_virt_res, ptr %8, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool10.not = icmp eq i32 %10, 0
  br i1 %tobool10.not, label %do.end.cleanup_crit_edge, label %if.end12

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end12:                                         ; preds = %do.end
  %attr = getelementptr inbounds %struct.ib_srq_init_attr, ptr %attrs, i32 0, i32 2
  %11 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %attr, align 4
  %hw_queue = getelementptr inbounds %struct.c4iw_dev, ptr %6, i32 0, i32 1, i32 14
  %t4_max_rq_size = getelementptr inbounds %struct.c4iw_dev, ptr %6, i32 0, i32 1, i32 14, i32 3
  %13 = ptrtoint ptr %t4_max_rq_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %t4_max_rq_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp14 = icmp ugt i32 %12, %14
  br i1 %cmp14, label %if.end12.cleanup_crit_edge, label %if.end16

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %max_sge = getelementptr inbounds %struct.ib_srq_init_attr, ptr %attrs, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %max_sge to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %max_sge, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %16)
  %cmp18 = icmp ugt i32 %16, 4
  br i1 %cmp18, label %if.end16.cleanup_crit_edge, label %cond.end140

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cond.end140:                                      ; preds = %if.end16
  %conv = add i32 %12, 1
  %conv24 = and i32 %conv, 65535
  %17 = tail call i32 @llvm.umax.i32(i32 %conv24, i32 16)
  %sub = add nsw i32 %17, -1
  %18 = tail call i32 @llvm.ctlz.i32(i32 %sub, i1 true) #11, !range !308
  %sub.i.i.i = sub nuw nsw i32 32, %18
  %cond141 = shl nuw i32 1, %sub.i.i.i
  %tobool142.not = icmp eq ptr %udata, null
  br i1 %tobool142.not, label %cond.end140.cond.end147_crit_edge, label %cond.true143

cond.end140.cond.end147_crit_edge:                ; preds = %cond.end140
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end147

cond.true143:                                     ; preds = %cond.end140
  call void @__sanitizer_cov_trace_pc() #13
  %context = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %udata, i32 0, i32 3
  %19 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %context, align 4
  br label %cond.end147

cond.end147:                                      ; preds = %cond.true143, %cond.end140.cond.end147_crit_edge
  %cond148 = phi ptr [ %20, %cond.true143 ], [ null, %cond.end140.cond.end147_crit_edge ]
  %call149 = tail call ptr @c4iw_alloc_wr_wait(i32 noundef 3264) #11
  %wr_waitp = getelementptr inbounds %struct.c4iw_srq, ptr %ib_srq, i32 0, i32 10
  %21 = ptrtoint ptr %wr_waitp to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call149, ptr %wr_waitp, align 8
  %tobool151.not = icmp eq ptr %call149, null
  br i1 %tobool151.not, label %cond.end147.cleanup_crit_edge, label %if.end153

cond.end147.cleanup_crit_edge:                    ; preds = %cond.end147
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end153:                                        ; preds = %cond.end147
  %call155 = tail call i32 @c4iw_alloc_srq_idx(ptr noundef %rdev) #11
  %idx = getelementptr inbounds %struct.c4iw_srq, ptr %ib_srq, i32 0, i32 7
  %22 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call155, ptr %idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call155)
  %cmp157 = icmp slt i32 %call155, 0
  br i1 %cmp157, label %if.end153.err_free_wr_wait_crit_edge, label %if.end160

if.end153.err_free_wr_wait_crit_edge:             ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_wr_wait

if.end160:                                        ; preds = %if.end153
  %call.i = tail call ptr @__alloc_skb(i32 noundef 64, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #11
  %destroy_skb = getelementptr inbounds %struct.c4iw_srq, ptr %ib_srq, i32 0, i32 4
  %23 = ptrtoint ptr %destroy_skb to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i, ptr %destroy_skb, align 8
  %tobool163.not = icmp eq ptr %call.i, null
  br i1 %tobool163.not, label %if.end160.err_free_srq_idx_crit_edge, label %if.end165

if.end160.err_free_srq_idx_crit_edge:             ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_srq_idx

if.end165:                                        ; preds = %if.end160
  %rhp166 = getelementptr inbounds %struct.c4iw_srq, ptr %ib_srq, i32 0, i32 2
  %24 = ptrtoint ptr %rhp166 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %6, ptr %rhp166, align 4
  %pdid = getelementptr inbounds %struct.c4iw_pd, ptr %1, i32 0, i32 1
  %25 = ptrtoint ptr %pdid to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pdid, align 4
  %pdid167 = getelementptr inbounds %struct.c4iw_srq, ptr %ib_srq, i32 0, i32 6
  %27 = ptrtoint ptr %pdid167 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %pdid167, align 8
  %conv168 = trunc i32 %cond141 to i16
  %wq = getelementptr inbounds %struct.c4iw_srq, ptr %ib_srq, i32 0, i32 3
  %size169 = getelementptr inbounds %struct.c4iw_srq, ptr %ib_srq, i32 0, i32 3, i32 13
  %28 = ptrtoint ptr %size169 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv168, ptr %size169, align 2
  %29 = ptrtoint ptr %hw_queue to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %hw_queue, align 8
  %add172 = add i32 %30, %cond141
  %mul = shl i32 %add172, 7
  %memsize = getelementptr inbounds %struct.c4iw_srq, ptr %ib_srq, i32 0, i32 3, i32 6
  %tobool174.not = icmp eq ptr %cond148, null
  %add180 = add i32 %mul, 4095
  %div414 = and i32 %add180, -4096
  %storemerge = select i1 %tobool174.not, i32 %mul, i32 %div414
  %31 = ptrtoint ptr %memsize to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %storemerge, ptr %memsize, align 8
  %uctx = getelementptr inbounds %struct.c4iw_ucontext, ptr %cond148, i32 0, i32 1
  %uctx189 = getelementptr inbounds %struct.c4iw_dev, ptr %6, i32 0, i32 1, i32 3
  %cond191 = select i1 %tobool174.not, ptr %uctx189, ptr %uctx
  %32 = ptrtoint ptr %wr_waitp to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %wr_waitp, align 8
  %call193 = tail call fastcc i32 @alloc_srq_queue(ptr noundef %ib_srq, ptr noundef %cond191, ptr noundef %33)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call193)
  %tobool194.not = icmp eq i32 %call193, 0
  br i1 %tobool194.not, label %if.end196, label %if.end165.err_free_skb_crit_edge

if.end165.err_free_skb_crit_edge:                 ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_skb

if.end196:                                        ; preds = %if.end165
  %sub197 = add i32 %cond141, -1
  %34 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %sub197, ptr %attr, align 4
  %adapter_type = getelementptr inbounds %struct.c4iw_dev, ptr %6, i32 0, i32 1, i32 8, i32 13
  %35 = ptrtoint ptr %adapter_type to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %adapter_type, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 111, i8 %36)
  %cmp203 = icmp ugt i8 %36, 111
  br i1 %cmp203, label %if.then205, label %if.end196.if.end206_crit_edge

if.end196.if.end206_crit_edge:                    ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end206

if.then205:                                       ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #13
  %flags = getelementptr inbounds %struct.c4iw_srq, ptr %ib_srq, i32 0, i32 8
  %37 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %flags, align 8
  br label %if.end206

if.end206:                                        ; preds = %if.then205, %if.end196.if.end206_crit_edge
  br i1 %tobool142.not, label %if.end206.do.body260_crit_edge, label %if.then208

if.end206.do.body260_crit_edge:                   ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body260

if.then208:                                       ; preds = %if.end206
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %38 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %38, i32 noundef 3264, i32 noundef 24) #15
  %tobool210.not = icmp eq ptr %call7.i, null
  br i1 %tobool210.not, label %if.then208.err_free_queue_crit_edge, label %if.end212

if.then208.err_free_queue_crit_edge:              ; preds = %if.then208
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_queue

if.end212:                                        ; preds = %if.then208
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %39 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i419 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %39, i32 noundef 3264, i32 noundef 24) #15
  %tobool214.not = icmp eq ptr %call7.i419, null
  br i1 %tobool214.not, label %if.end212.err_free_srq_key_mm_crit_edge, label %if.end216

if.end212.err_free_srq_key_mm_crit_edge:          ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_srq_key_mm

if.end216:                                        ; preds = %if.end212
  %40 = getelementptr inbounds i8, ptr %uresp, i32 40
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 0, ptr %40, align 8
  %flags217 = getelementptr inbounds %struct.c4iw_srq, ptr %ib_srq, i32 0, i32 8
  %42 = ptrtoint ptr %flags217 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %flags217, align 8
  %flags218 = getelementptr inbounds %struct.c4iw_create_srq_resp, ptr %uresp, i32 0, i32 7
  %44 = ptrtoint ptr %flags218 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %flags218, align 8
  %qpmask = getelementptr inbounds %struct.c4iw_dev, ptr %6, i32 0, i32 1, i32 1
  %45 = ptrtoint ptr %qpmask to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %qpmask, align 8
  %qid_mask = getelementptr inbounds %struct.c4iw_create_srq_resp, ptr %uresp, i32 0, i32 6
  %47 = ptrtoint ptr %qid_mask to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %qid_mask, align 4
  %qid = getelementptr inbounds %struct.c4iw_srq, ptr %ib_srq, i32 0, i32 3, i32 8
  %48 = ptrtoint ptr %qid to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %qid, align 8
  %srqid = getelementptr inbounds %struct.c4iw_create_srq_resp, ptr %uresp, i32 0, i32 3
  %50 = ptrtoint ptr %srqid to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %srqid, align 8
  %51 = ptrtoint ptr %size169 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %size169, align 2
  %conv223 = zext i16 %52 to i32
  %srq_size = getelementptr inbounds %struct.c4iw_create_srq_resp, ptr %uresp, i32 0, i32 4
  %53 = ptrtoint ptr %srq_size to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %conv223, ptr %srq_size, align 4
  %54 = ptrtoint ptr %memsize to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %memsize, align 8
  %conv226 = zext i32 %55 to i64
  %srq_memsize = getelementptr inbounds %struct.c4iw_create_srq_resp, ptr %uresp, i32 0, i32 2
  %56 = ptrtoint ptr %srq_memsize to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %conv226, ptr %srq_memsize, align 8
  %rqt_abs_idx = getelementptr inbounds %struct.c4iw_srq, ptr %ib_srq, i32 0, i32 3, i32 11
  %57 = ptrtoint ptr %rqt_abs_idx to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %rqt_abs_idx, align 4
  %rqt_abs_idx228 = getelementptr inbounds %struct.c4iw_create_srq_resp, ptr %uresp, i32 0, i32 5
  %59 = ptrtoint ptr %rqt_abs_idx228 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %rqt_abs_idx228, align 8
  %mmap_lock = getelementptr inbounds %struct.c4iw_ucontext, ptr %cond148, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %mmap_lock) #11
  %key = getelementptr inbounds %struct.c4iw_ucontext, ptr %cond148, i32 0, i32 2
  %60 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %key, align 4
  %conv229 = zext i32 %61 to i64
  %62 = ptrtoint ptr %uresp to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %conv229, ptr %uresp, align 8
  %add231 = add i32 %61, 4096
  %conv233 = zext i32 %add231 to i64
  %srq_db_gts_key = getelementptr inbounds %struct.c4iw_create_srq_resp, ptr %uresp, i32 0, i32 1
  %63 = ptrtoint ptr %srq_db_gts_key to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %conv233, ptr %srq_db_gts_key, align 8
  %add235 = add i32 %61, 8192
  store i32 %add235, ptr %key, align 4
  tail call void @_raw_spin_unlock(ptr noundef %mmap_lock) #11
  %call237 = call fastcc i32 @ib_copy_to_udata(ptr noundef nonnull %udata, ptr noundef nonnull %uresp, i32 noundef 48)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call237)
  %tobool238.not = icmp eq i32 %call237, 0
  br i1 %tobool238.not, label %if.end240, label %err_free_srq_db_key_mm

if.end240:                                        ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #13
  %64 = ptrtoint ptr %uresp to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %uresp, align 8
  %conv242 = trunc i64 %65 to i32
  %key243 = getelementptr inbounds %struct.c4iw_mm_entry, ptr %call7.i, i32 0, i32 2
  %66 = ptrtoint ptr %key243 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %conv242, ptr %key243, align 8
  %67 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %wq, align 8
  %69 = ptrtoint ptr %68 to i32
  %call.i424 = call i32 @__virt_to_phys(i32 noundef %69) #11
  %conv246 = zext i32 %call.i424 to i64
  %addr = getelementptr inbounds %struct.c4iw_mm_entry, ptr %call7.i, i32 0, i32 1
  %70 = ptrtoint ptr %addr to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 %conv246, ptr %addr, align 8
  %71 = ptrtoint ptr %memsize to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %memsize, align 8
  %add249 = add i32 %72, 4095
  %and250 = and i32 %add249, -4096
  %len = getelementptr inbounds %struct.c4iw_mm_entry, ptr %call7.i, i32 0, i32 3
  %73 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %and250, ptr %len, align 4
  call fastcc void @insert_mmap(ptr noundef %cond148, ptr noundef nonnull %call7.i)
  %74 = ptrtoint ptr %srq_db_gts_key to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %srq_db_gts_key, align 8
  %conv252 = trunc i64 %75 to i32
  %key253 = getelementptr inbounds %struct.c4iw_mm_entry, ptr %call7.i419, i32 0, i32 2
  %76 = ptrtoint ptr %key253 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %conv252, ptr %key253, align 8
  %bar2_pa = getelementptr inbounds %struct.c4iw_srq, ptr %ib_srq, i32 0, i32 3, i32 5
  %77 = ptrtoint ptr %bar2_pa to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %bar2_pa, align 8
  %conv256 = and i64 %78, 4294967295
  %addr257 = getelementptr inbounds %struct.c4iw_mm_entry, ptr %call7.i419, i32 0, i32 1
  %79 = ptrtoint ptr %addr257 to i32
  call void @__asan_store8_noabort(i32 %79)
  store i64 %conv256, ptr %addr257, align 8
  %len258 = getelementptr inbounds %struct.c4iw_mm_entry, ptr %call7.i419, i32 0, i32 3
  %80 = ptrtoint ptr %len258 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 4096, ptr %len258, align 4
  call fastcc void @insert_mmap(ptr noundef %cond148, ptr noundef nonnull %call7.i419)
  br label %do.body260

do.body260:                                       ; preds = %if.end240, %if.end206.do.body260_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c4iw_create_srq.__UNIQUE_ID_ddebug723, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c4iw_create_srq, %if.then272)) #11
          to label %do.body286 [label %if.then272], !srcloc !300

if.then272:                                       ; preds = %do.body260
  call void @__sanitizer_cov_trace_pc() #13
  %qid274 = getelementptr inbounds %struct.c4iw_srq, ptr %ib_srq, i32 0, i32 3, i32 8
  %81 = ptrtoint ptr %qid274 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %qid274, align 8
  %83 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %idx, align 4
  %85 = ptrtoint ptr %size169 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %size169, align 2
  %conv278 = zext i16 %86 to i32
  %87 = ptrtoint ptr %memsize to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %memsize, align 8
  %89 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %attr, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @c4iw_create_srq.__UNIQUE_ID_ddebug723, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.45, i32 noundef %82, i32 noundef %84, i32 noundef %conv278, i32 noundef %88, i32 noundef %90) #11
  br label %do.body286

do.body286:                                       ; preds = %if.then272, %do.body260
  %lock = getelementptr inbounds %struct.c4iw_srq, ptr %ib_srq, i32 0, i32 9
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.50, ptr noundef nonnull @c4iw_create_srq.__key, i16 noundef signext 3) #11
  br label %cleanup

err_free_srq_db_key_mm:                           ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #13
  call void @kfree(ptr noundef nonnull %call7.i419) #11
  br label %err_free_srq_key_mm

err_free_srq_key_mm:                              ; preds = %err_free_srq_db_key_mm, %if.end212.err_free_srq_key_mm_crit_edge
  %ret.0 = phi i32 [ %call237, %err_free_srq_db_key_mm ], [ -12, %if.end212.err_free_srq_key_mm_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i) #11
  br label %err_free_queue

err_free_queue:                                   ; preds = %err_free_srq_key_mm, %if.then208.err_free_queue_crit_edge
  %ret.1 = phi i32 [ %ret.0, %err_free_srq_key_mm ], [ -12, %if.then208.err_free_queue_crit_edge ]
  %91 = ptrtoint ptr %wr_waitp to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %wr_waitp, align 8
  call fastcc void @free_srq_queue(ptr noundef %ib_srq, ptr noundef %cond191, ptr noundef %92)
  br label %err_free_skb

err_free_skb:                                     ; preds = %err_free_queue, %if.end165.err_free_skb_crit_edge
  %ret.2 = phi i32 [ %call193, %if.end165.err_free_skb_crit_edge ], [ %ret.1, %err_free_queue ]
  %93 = ptrtoint ptr %destroy_skb to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %destroy_skb, align 8
  call void @kfree_skb_reason(ptr noundef %94, i32 noundef 0) #11
  br label %err_free_srq_idx

err_free_srq_idx:                                 ; preds = %err_free_skb, %if.end160.err_free_srq_idx_crit_edge
  %ret.3 = phi i32 [ %ret.2, %err_free_skb ], [ -12, %if.end160.err_free_srq_idx_crit_edge ]
  %95 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %idx, align 4
  call void @c4iw_free_srq_idx(ptr noundef %rdev, i32 noundef %96) #11
  br label %err_free_wr_wait

err_free_wr_wait:                                 ; preds = %err_free_srq_idx, %if.end153.err_free_wr_wait_crit_edge
  %ret.4 = phi i32 [ %ret.3, %err_free_srq_idx ], [ -12, %if.end153.err_free_wr_wait_crit_edge ]
  %97 = ptrtoint ptr %wr_waitp to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %wr_waitp, align 8
  call fastcc void @c4iw_put_wr_wait(ptr noundef %98)
  br label %cleanup

cleanup:                                          ; preds = %err_free_wr_wait, %do.body286, %cond.end147.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.4, %err_free_wr_wait ], [ 0, %do.body286 ], [ -95, %entry.cleanup_crit_edge ], [ -22, %do.end.cleanup_crit_edge ], [ -7, %if.end12.cleanup_crit_edge ], [ -7, %if.end16.cleanup_crit_edge ], [ -12, %cond.end147.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %uresp) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @c4iw_alloc_srq_idx(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @alloc_srq_queue(ptr noundef %srq, ptr noundef %uctx, ptr noundef %wr_waitp) unnamed_addr #0 align 64 {
entry:
  %bar2_qoffset.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rhp = getelementptr inbounds %struct.c4iw_srq, ptr %srq, i32 0, i32 2
  %0 = ptrtoint ptr %rhp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rhp, align 4
  %rdev1 = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 1
  %uctx2 = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 1, i32 3
  %cmp.not = icmp eq ptr %uctx2, %uctx
  %wq3 = getelementptr inbounds %struct.c4iw_srq, ptr %srq, i32 0, i32 3
  %call = tail call i32 @c4iw_get_qpid(ptr noundef %rdev1, ptr noundef %uctx) #11
  %qid = getelementptr inbounds %struct.c4iw_srq, ptr %srq, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %qid to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call, ptr %qid, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %cmp.not, label %if.then6, label %if.end.if.end21_crit_edge

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then6:                                         ; preds = %if.end
  %size = getelementptr inbounds %struct.c4iw_srq, ptr %srq, i32 0, i32 3, i32 13
  %3 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %size, align 2
  %conv7 = zext i16 %4 to i32
  %5 = shl nuw nsw i32 %conv7, 5
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %5, i32 noundef 3520) #16
  %sw_rq = getelementptr inbounds %struct.c4iw_srq, ptr %srq, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %sw_rq to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call8.i.i, ptr %sw_rq, align 4
  %tobool10.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool10.not, label %if.then6.err_put_qpid_crit_edge, label %if.end7.i.i259

if.then6.err_put_qpid_crit_edge:                  ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_put_qpid

if.end7.i.i259:                                   ; preds = %if.then6
  %7 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %size, align 2
  %conv15 = zext i16 %8 to i32
  %9 = mul nuw nsw i32 %conv15, 144
  %call8.i.i258 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %9, i32 noundef 3520) #16
  %pending_wrs = getelementptr inbounds %struct.c4iw_srq, ptr %srq, i32 0, i32 3, i32 19
  %10 = ptrtoint ptr %pending_wrs to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call8.i.i258, ptr %pending_wrs, align 8
  %tobool18.not = icmp eq ptr %call8.i.i258, null
  br i1 %tobool18.not, label %if.end7.i.i259.if.then123_crit_edge, label %if.end7.i.i259.if.end21_crit_edge

if.end7.i.i259.if.end21_crit_edge:                ; preds = %if.end7.i.i259
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.end7.i.i259.if.then123_crit_edge:              ; preds = %if.end7.i.i259
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then123

if.end21:                                         ; preds = %if.end7.i.i259.if.end21_crit_edge, %if.end.if.end21_crit_edge
  %size22 = getelementptr inbounds %struct.c4iw_srq, ptr %srq, i32 0, i32 3, i32 13
  %11 = ptrtoint ptr %size22 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %size22, align 2
  %rqt_size = getelementptr inbounds %struct.c4iw_srq, ptr %srq, i32 0, i32 3, i32 12
  %13 = ptrtoint ptr %rqt_size to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %rqt_size, align 8
  %conv24 = zext i16 %12 to i32
  %call25 = tail call i32 @c4iw_rqtpool_alloc(ptr noundef %rdev1, i32 noundef %conv24) #11
  %rqt_hwaddr = getelementptr inbounds %struct.c4iw_srq, ptr %srq, i32 0, i32 3, i32 10
  %14 = ptrtoint ptr %rqt_hwaddr to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call25, ptr %rqt_hwaddr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool27.not = icmp eq i32 %call25, 0
  br i1 %tobool27.not, label %if.end21.err_free_pending_wrs_crit_edge, label %if.end29

if.end21.err_free_pending_wrs_crit_edge:          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_pending_wrs

if.end29:                                         ; preds = %if.end21
  %lldi = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 1, i32 8
  %vr = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 1, i32 8, i32 4
  %15 = ptrtoint ptr %vr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vr, align 8
  %rq = getelementptr inbounds %struct.cxgb4_virt_res, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rq, align 4
  %sub = sub i32 %call25, %18
  %shr = lshr i32 %sub, 6
  %rqt_abs_idx = getelementptr inbounds %struct.c4iw_srq, ptr %srq, i32 0, i32 3, i32 11
  %19 = ptrtoint ptr %rqt_abs_idx to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %shr, ptr %rqt_abs_idx, align 4
  %20 = ptrtoint ptr %lldi to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %lldi, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  %memsize = getelementptr inbounds %struct.c4iw_srq, ptr %srq, i32 0, i32 3, i32 6
  %22 = ptrtoint ptr %memsize to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %memsize, align 8
  %dma_addr = getelementptr inbounds %struct.c4iw_srq, ptr %srq, i32 0, i32 3, i32 1
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef %23, ptr noundef %dma_addr, i32 noundef 3264, i32 noundef 0) #11
  %24 = ptrtoint ptr %wq3 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i, ptr %wq3, align 8
  %tobool34.not = icmp eq ptr %call.i, null
  br i1 %tobool34.not, label %if.end29.err_free_rqtpool_crit_edge, label %if.end36

if.end29.err_free_rqtpool_crit_edge:              ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_rqtpool

if.end36:                                         ; preds = %if.end29
  %25 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dma_addr, align 4
  %mapping = getelementptr inbounds %struct.c4iw_srq, ptr %srq, i32 0, i32 3, i32 2
  %27 = ptrtoint ptr %mapping to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %mapping, align 8
  %28 = ptrtoint ptr %qid to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %qid, align 8
  %bar2_qid = getelementptr inbounds %struct.c4iw_srq, ptr %srq, i32 0, i32 3, i32 7
  %bar2_pa = getelementptr inbounds %struct.c4iw_srq, ptr %srq, i32 0, i32 3, i32 5
  %spec.select = select i1 %cmp.not, ptr null, ptr %bar2_pa
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bar2_qoffset.i) #11
  %30 = ptrtoint ptr %bar2_qoffset.i to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 -1, ptr %bar2_qoffset.i, align 8, !annotation !299
  %ports.i = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 1, i32 8, i32 3
  %31 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ports.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %tobool.not.i = icmp eq ptr %spec.select, null
  %not.tobool.not.i = xor i1 %tobool.not.i, true
  %cond.i = zext i1 %not.tobool.not.i to i32
  %call.i262 = call i32 @cxgb4_bar2_sge_qregs(ptr noundef %34, i32 noundef %29, i32 noundef 0, i32 noundef %cond.i, ptr noundef nonnull %bar2_qoffset.i, ptr noundef %bar2_qid) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i262)
  %tobool1.not.i = icmp eq i32 %call.i262, 0
  br i1 %tobool1.not.i, label %if.end.i, label %if.end36.c4iw_bar2_addrs.exit_crit_edge

if.end36.c4iw_bar2_addrs.exit_crit_edge:          ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  br label %c4iw_bar2_addrs.exit

if.end.i:                                         ; preds = %if.end36
  br i1 %tobool.not.i, label %if.end.i.if.end4.i_crit_edge, label %if.then3.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %bar2_pa.i = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 1, i32 9
  %35 = ptrtoint ptr %bar2_pa.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %bar2_pa.i, align 4
  %conv.i = zext i32 %36 to i64
  %37 = ptrtoint ptr %bar2_qoffset.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %bar2_qoffset.i, align 8
  %add.i = add i64 %38, %conv.i
  %and.i = and i64 %add.i, -4096
  %39 = ptrtoint ptr %spec.select to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %and.i, ptr %spec.select, align 8
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then3.i, %if.end.i.if.end4.i_crit_edge
  %adapter_type.i = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 1, i32 8, i32 13
  %40 = ptrtoint ptr %adapter_type.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %adapter_type.i, align 8
  %42 = and i8 %41, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %42)
  %cmp.i.not.i = icmp eq i8 %42, 64
  br i1 %cmp.i.not.i, label %if.end4.i.c4iw_bar2_addrs.exit_crit_edge, label %if.end10.i

if.end4.i.c4iw_bar2_addrs.exit_crit_edge:         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %c4iw_bar2_addrs.exit

if.end10.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  %bar2_kva.i = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 1, i32 10
  %43 = ptrtoint ptr %bar2_kva.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bar2_kva.i, align 8
  %45 = ptrtoint ptr %bar2_qoffset.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %bar2_qoffset.i, align 8
  %idx.ext.i = trunc i64 %46 to i32
  %add.ptr.i = getelementptr i8, ptr %44, i32 %idx.ext.i
  br label %c4iw_bar2_addrs.exit

c4iw_bar2_addrs.exit:                             ; preds = %if.end10.i, %if.end4.i.c4iw_bar2_addrs.exit_crit_edge, %if.end36.c4iw_bar2_addrs.exit_crit_edge
  %retval.0.i263 = phi ptr [ %add.ptr.i, %if.end10.i ], [ null, %if.end36.c4iw_bar2_addrs.exit_crit_edge ], [ null, %if.end4.i.c4iw_bar2_addrs.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bar2_qoffset.i) #11
  %bar2_va = getelementptr inbounds %struct.c4iw_srq, ptr %srq, i32 0, i32 3, i32 4
  %47 = ptrtoint ptr %bar2_va to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %retval.0.i263, ptr %bar2_va, align 8
  %cmp.not.not = xor i1 %cmp.not, true
  %tobool43.not = icmp eq ptr %retval.0.i263, null
  %or.cond = select i1 %cmp.not.not, i1 %tobool43.not, i1 false
  br i1 %or.cond, label %do.end, label %if.end50

do.end:                                           ; preds = %c4iw_bar2_addrs.exit
  %48 = ptrtoint ptr %lldi to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %lldi, align 8
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %49, i32 0, i32 44, i32 3
  %50 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %51, null
  br i1 %tobool.not.i.i, label %if.end.i.i264, label %do.end.pci_name.exit_crit_edge

do.end.pci_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %pci_name.exit

if.end.i.i264:                                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %49, i32 0, i32 44
  %52 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i264, %do.end.pci_name.exit_crit_edge
  %retval.0.i.i265 = phi ptr [ %53, %if.end.i.i264 ], [ %51, %do.end.pci_name.exit_crit_edge ]
  %54 = ptrtoint ptr %qid to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %qid, align 8
  %call49 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121, ptr noundef %retval.0.i.i265, i32 noundef %55) #14
  br label %err_free_queue

if.end50:                                         ; preds = %c4iw_bar2_addrs.exit
  %call.i266 = call ptr @__alloc_skb(i32 noundef 64, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #11
  %tobool52.not = icmp eq ptr %call.i266, null
  br i1 %tobool52.not, label %if.end50.err_free_queue_crit_edge, label %if.end54

if.end50.err_free_queue_crit_edge:                ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_queue

if.end54:                                         ; preds = %if.end50
  %queue_mapping1.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i266, i32 0, i32 10
  %56 = ptrtoint ptr %queue_mapping1.i.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 1, ptr %queue_mapping1.i.i, align 8
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i266, i32 0, i32 7
  %57 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.i.not.i = icmp eq i32 %58, 0
  br i1 %tobool.i.not.i, label %__skb_put.exit, label %do.body3.i, !prof !303

do.body3.i:                                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #11, !srcloc !324
  unreachable

__skb_put.exit:                                   ; preds = %if.end54
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i266, i32 0, i32 16
  %59 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %tail.i.i, align 8
  %add.ptr.i267 = getelementptr i8, ptr %60, i32 64
  store ptr %add.ptr.i267, ptr %tail.i.i, align 8
  %len9.i = getelementptr inbounds %struct.sk_buff, ptr %call.i266, i32 0, i32 6
  %61 = ptrtoint ptr %len9.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %len9.i, align 4
  %add.i268 = add i32 %62, 64
  store i32 %add.i268, ptr %len9.i, align 4
  %63 = getelementptr inbounds i8, ptr %60, i32 16
  %64 = call ptr @memset(ptr %63, i32 0, i32 48)
  %65 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 203423745, ptr %60, align 8
  %len16_pkd = getelementptr inbounds %struct.fw_ri_res_wr, ptr %60, i32 0, i32 1
  %66 = ptrtoint ptr %len16_pkd to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 4, ptr %len16_pkd, align 4
  %67 = ptrtoint ptr %wr_waitp to i32
  %conv57 = zext i32 %67 to i64
  %cookie = getelementptr inbounds %struct.fw_ri_res_wr, ptr %60, i32 0, i32 2
  %68 = ptrtoint ptr %cookie to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 %conv57, ptr %cookie, align 8
  %res58 = getelementptr inbounds %struct.fw_ri_res_wr, ptr %60, i32 0, i32 3
  %69 = ptrtoint ptr %res58 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 3, ptr %res58, align 8
  %70 = ptrtoint ptr %size22 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %size22, align 2
  %conv61 = zext i16 %71 to i32
  %mul = shl nuw nsw i32 %conv61, 1
  %hw_queue = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 1, i32 14
  %72 = ptrtoint ptr %hw_queue to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %hw_queue, align 8
  %add62 = add i32 %mul, %73
  %74 = ptrtoint ptr %qid to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %qid, align 8
  %eqid = getelementptr inbounds %struct.fw_ri_res_wr, ptr %60, i32 1, i32 1
  %76 = ptrtoint ptr %eqid to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %eqid, align 4
  %fetchszm_to_iqid = getelementptr inbounds %struct.fw_ri_res_wr, ptr %60, i32 2
  %77 = ptrtoint ptr %fetchszm_to_iqid to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %fetchszm_to_iqid, align 8
  %or = or i32 %add62, 19922944
  %dcaen_to_eqsize = getelementptr inbounds %struct.fw_ri_res_wr, ptr %60, i32 2, i32 1
  %78 = ptrtoint ptr %dcaen_to_eqsize to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %or, ptr %dcaen_to_eqsize, align 4
  %79 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %dma_addr, align 4
  %conv68 = zext i32 %80 to i64
  %eqaddr = getelementptr inbounds %struct.fw_ri_res_wr, ptr %60, i32 2, i32 2
  %81 = ptrtoint ptr %eqaddr to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 %conv68, ptr %eqaddr, align 8
  %idx = getelementptr inbounds %struct.c4iw_srq, ptr %srq, i32 0, i32 7
  %82 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %idx, align 4
  %srqid = getelementptr inbounds %struct.fw_ri_res_wr, ptr %60, i32 3
  %84 = ptrtoint ptr %srqid to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %srqid, align 8
  %pdid = getelementptr inbounds %struct.c4iw_srq, ptr %srq, i32 0, i32 6
  %85 = ptrtoint ptr %pdid to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %pdid, align 8
  %pdid72 = getelementptr inbounds %struct.fw_ri_res_wr, ptr %60, i32 3, i32 1
  %87 = ptrtoint ptr %pdid72 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %pdid72, align 4
  %88 = ptrtoint ptr %rqt_size to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %rqt_size, align 8
  %conv74 = zext i16 %89 to i32
  %hwsrqsize = getelementptr inbounds %struct.fw_ri_res_wr, ptr %60, i32 3, i32 2
  %90 = ptrtoint ptr %hwsrqsize to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %conv74, ptr %hwsrqsize, align 8
  %91 = ptrtoint ptr %rqt_hwaddr to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %rqt_hwaddr, align 8
  %93 = ptrtoint ptr %vr to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %vr, align 8
  %rq79 = getelementptr inbounds %struct.cxgb4_virt_res, ptr %94, i32 0, i32 3
  %95 = ptrtoint ptr %rq79 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %rq79, align 4
  %sub81 = sub i32 %92, %96
  %hwsrqaddr = getelementptr inbounds %struct.fw_ri_res_srq, ptr %res58, i32 0, i32 11
  %97 = ptrtoint ptr %hwsrqaddr to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %sub81, ptr %hwsrqaddr, align 4
  %ret.i = getelementptr inbounds %struct.c4iw_wr_wait, ptr %wr_waitp, i32 0, i32 1
  %98 = ptrtoint ptr %ret.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 0, ptr %ret.i, align 4
  %99 = ptrtoint ptr %wr_waitp to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 0, ptr %wr_waitp, align 4
  %wait.i.i = getelementptr inbounds %struct.completion, ptr %wr_waitp, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.114, ptr noundef nonnull @init_completion.__key) #11
  %100 = ptrtoint ptr %qid to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %qid, align 8
  %call84 = call fastcc i32 @c4iw_ref_send_wait(ptr noundef %rdev1, ptr noundef nonnull %call.i266, ptr noundef %wr_waitp, i32 noundef 0, i32 noundef %101, ptr noundef nonnull @.str.122)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %do.body88, label %__skb_put.exit.err_free_queue_crit_edge

__skb_put.exit.err_free_queue_crit_edge:          ; preds = %__skb_put.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_queue

do.body88:                                        ; preds = %__skb_put.exit
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @alloc_srq_queue.__UNIQUE_ID_ddebug719, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@alloc_srq_queue, %if.then94)) #11
          to label %cleanup [label %if.then94], !srcloc !300

if.then94:                                        ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #13
  %102 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %idx, align 4
  %104 = ptrtoint ptr %qid to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %qid, align 8
  %106 = ptrtoint ptr %pdid to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %pdid, align 8
  %108 = ptrtoint ptr %wq3 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %wq3, align 8
  %110 = ptrtoint ptr %109 to i32
  %call.i269 = call i32 @__virt_to_phys(i32 noundef %110) #11
  %conv101 = zext i32 %call.i269 to i64
  %111 = ptrtoint ptr %bar2_va to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %bar2_va, align 8
  %113 = ptrtoint ptr %rqt_hwaddr to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %rqt_hwaddr, align 8
  %115 = ptrtoint ptr %rqt_size to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %rqt_size, align 8
  %conv105 = zext i16 %116 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @alloc_srq_queue.__UNIQUE_ID_ddebug719, ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.122, i32 noundef %103, i32 noundef %105, i32 noundef %107, ptr noundef %109, i64 noundef %conv101, ptr noundef %112, i32 noundef %114, i32 noundef %conv105) #11
  br label %cleanup

err_free_queue:                                   ; preds = %__skb_put.exit.err_free_queue_crit_edge, %if.end50.err_free_queue_crit_edge, %pci_name.exit
  %ret.0 = phi i32 [ %call84, %__skb_put.exit.err_free_queue_crit_edge ], [ -12, %if.end50.err_free_queue_crit_edge ], [ -22, %pci_name.exit ]
  %117 = ptrtoint ptr %lldi to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %lldi, align 8
  %dev111 = getelementptr inbounds %struct.pci_dev, ptr %118, i32 0, i32 44
  %119 = ptrtoint ptr %memsize to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %memsize, align 8
  %121 = ptrtoint ptr %wq3 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %wq3, align 8
  %123 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %mapping, align 8
  call void @dma_free_attrs(ptr noundef %dev111, i32 noundef %120, ptr noundef %122, i32 noundef %124, i32 noundef 0) #11
  br label %err_free_rqtpool

err_free_rqtpool:                                 ; preds = %err_free_queue, %if.end29.err_free_rqtpool_crit_edge
  %ret.1 = phi i32 [ %ret.0, %err_free_queue ], [ -12, %if.end29.err_free_rqtpool_crit_edge ]
  %125 = ptrtoint ptr %rqt_hwaddr to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %rqt_hwaddr, align 8
  %127 = ptrtoint ptr %rqt_size to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %rqt_size, align 8
  %conv117 = zext i16 %128 to i32
  call void @c4iw_rqtpool_free(ptr noundef %rdev1, i32 noundef %126, i32 noundef %conv117) #11
  br label %err_free_pending_wrs

err_free_pending_wrs:                             ; preds = %err_free_rqtpool, %if.end21.err_free_pending_wrs_crit_edge
  %ret.2 = phi i32 [ %ret.1, %err_free_rqtpool ], [ -12, %if.end21.err_free_pending_wrs_crit_edge ]
  br i1 %cmp.not, label %if.then119, label %err_free_pending_wrs.err_put_qpid_crit_edge

err_free_pending_wrs.err_put_qpid_crit_edge:      ; preds = %err_free_pending_wrs
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_put_qpid

if.then119:                                       ; preds = %err_free_pending_wrs
  call void @__sanitizer_cov_trace_pc() #13
  %pending_wrs120 = getelementptr inbounds %struct.c4iw_srq, ptr %srq, i32 0, i32 3, i32 19
  %129 = ptrtoint ptr %pending_wrs120 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %pending_wrs120, align 8
  call void @kfree(ptr noundef %130) #11
  br label %if.then123

if.then123:                                       ; preds = %if.then119, %if.end7.i.i259.if.then123_crit_edge
  %ret.3.ph = phi i32 [ -12, %if.end7.i.i259.if.then123_crit_edge ], [ %ret.2, %if.then119 ]
  %sw_rq124 = getelementptr inbounds %struct.c4iw_srq, ptr %srq, i32 0, i32 3, i32 3
  %131 = ptrtoint ptr %sw_rq124 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %sw_rq124, align 4
  call void @kfree(ptr noundef %132) #11
  br label %err_put_qpid

err_put_qpid:                                     ; preds = %if.then123, %err_free_pending_wrs.err_put_qpid_crit_edge, %if.then6.err_put_qpid_crit_edge
  %ret.4 = phi i32 [ %ret.3.ph, %if.then123 ], [ -12, %if.then6.err_put_qpid_crit_edge ], [ %ret.2, %err_free_pending_wrs.err_put_qpid_crit_edge ]
  %133 = ptrtoint ptr %qid to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %qid, align 8
  call void @c4iw_put_qpid(ptr noundef %rdev1, i32 noundef %134, ptr noundef %uctx) #11
  br label %cleanup

cleanup:                                          ; preds = %err_put_qpid, %if.then94, %do.body88, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then94 ], [ %ret.4, %err_put_qpid ], [ -12, %entry.cleanup_crit_edge ], [ 0, %do.body88 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @free_srq_queue(ptr nocapture noundef readonly %srq, ptr noundef %uctx, ptr noundef %wr_waitp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rhp = getelementptr inbounds %struct.c4iw_srq, ptr %srq, i32 0, i32 2
  %0 = ptrtoint ptr %rhp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rhp, align 4
  %destroy_skb = getelementptr inbounds %struct.c4iw_srq, ptr %srq, i32 0, i32 4
  %2 = ptrtoint ptr %destroy_skb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %destroy_skb, align 8
  %queue_mapping1.i.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %queue_mapping1.i.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 1, ptr %queue_mapping1.i.i, align 8
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 7
  %5 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i.not.i = icmp eq i32 %6, 0
  br i1 %tobool.i.not.i, label %__skb_put.exit, label %do.body3.i, !prof !303

do.body3.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #11, !srcloc !324
  unreachable

__skb_put.exit:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %wq2 = getelementptr inbounds %struct.c4iw_srq, ptr %srq, i32 0, i32 3
  %rdev1 = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 1
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 16
  %7 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tail.i.i, align 8
  %add.ptr.i = getelementptr i8, ptr %8, i32 64
  store ptr %add.ptr.i, ptr %tail.i.i, align 8
  %len9.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 6
  %9 = ptrtoint ptr %len9.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len9.i, align 4
  %add.i = add i32 %10, 64
  store i32 %add.i, ptr %len9.i, align 4
  %11 = getelementptr inbounds i8, ptr %8, i32 16
  %12 = call ptr @memset(ptr %11, i32 0, i32 48)
  %13 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 203423745, ptr %8, align 8
  %len16_pkd = getelementptr inbounds %struct.fw_ri_res_wr, ptr %8, i32 0, i32 1
  %14 = ptrtoint ptr %len16_pkd to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 4, ptr %len16_pkd, align 4
  %15 = ptrtoint ptr %wr_waitp to i32
  %conv = zext i32 %15 to i64
  %cookie = getelementptr inbounds %struct.fw_ri_res_wr, ptr %8, i32 0, i32 2
  %16 = ptrtoint ptr %cookie to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %conv, ptr %cookie, align 8
  %res3 = getelementptr inbounds %struct.fw_ri_res_wr, ptr %8, i32 0, i32 3
  %17 = ptrtoint ptr %res3 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 3, ptr %res3, align 8
  %op = getelementptr inbounds %struct.fw_ri_res_srq, ptr %res3, i32 0, i32 1
  %18 = ptrtoint ptr %op to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %op, align 1
  %idx = getelementptr inbounds %struct.c4iw_srq, ptr %srq, i32 0, i32 7
  %19 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %idx, align 4
  %srqid = getelementptr inbounds %struct.fw_ri_res_wr, ptr %8, i32 3
  %21 = ptrtoint ptr %srqid to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %srqid, align 8
  %qid = getelementptr inbounds %struct.c4iw_srq, ptr %srq, i32 0, i32 3, i32 8
  %22 = ptrtoint ptr %qid to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %qid, align 8
  %eqid = getelementptr inbounds %struct.fw_ri_res_wr, ptr %8, i32 1, i32 1
  %24 = ptrtoint ptr %eqid to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %eqid, align 4
  %ret.i = getelementptr inbounds %struct.c4iw_wr_wait, ptr %wr_waitp, i32 0, i32 1
  %25 = ptrtoint ptr %ret.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %ret.i, align 4
  %26 = ptrtoint ptr %wr_waitp to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %wr_waitp, align 4
  %wait.i.i = getelementptr inbounds %struct.completion, ptr %wr_waitp, i32 0, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.114, ptr noundef nonnull @init_completion.__key) #11
  %call7 = tail call fastcc i32 @c4iw_ref_send_wait(ptr noundef %rdev1, ptr noundef %3, ptr noundef %wr_waitp, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @__func__.free_srq_queue)
  %lldi = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 1, i32 8
  %27 = ptrtoint ptr %lldi to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %lldi, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  %memsize = getelementptr inbounds %struct.c4iw_srq, ptr %srq, i32 0, i32 3, i32 6
  %29 = ptrtoint ptr %memsize to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %memsize, align 8
  %31 = ptrtoint ptr %wq2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %wq2, align 8
  %mapping = getelementptr inbounds %struct.c4iw_srq, ptr %srq, i32 0, i32 3, i32 2
  %33 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %mapping, align 8
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %30, ptr noundef %32, i32 noundef %34, i32 noundef 0) #11
  %rqt_hwaddr = getelementptr inbounds %struct.c4iw_srq, ptr %srq, i32 0, i32 3, i32 10
  %35 = ptrtoint ptr %rqt_hwaddr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rqt_hwaddr, align 8
  %rqt_size = getelementptr inbounds %struct.c4iw_srq, ptr %srq, i32 0, i32 3, i32 12
  %37 = ptrtoint ptr %rqt_size to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %rqt_size, align 8
  %conv8 = zext i16 %38 to i32
  tail call void @c4iw_rqtpool_free(ptr noundef %rdev1, i32 noundef %36, i32 noundef %conv8) #11
  %sw_rq = getelementptr inbounds %struct.c4iw_srq, ptr %srq, i32 0, i32 3, i32 3
  %39 = ptrtoint ptr %sw_rq to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sw_rq, align 4
  tail call void @kfree(ptr noundef %40) #11
  %41 = ptrtoint ptr %qid to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %qid, align 8
  tail call void @c4iw_put_qpid(ptr noundef %rdev1, i32 noundef %42, ptr noundef %uctx) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @c4iw_free_srq_idx(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @c4iw_destroy_srq(ptr nocapture noundef readonly %ibsrq, ptr noundef readonly %udata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rhp1 = getelementptr inbounds %struct.c4iw_srq, ptr %ibsrq, i32 0, i32 2
  %0 = ptrtoint ptr %rhp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rhp1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c4iw_destroy_srq.__UNIQUE_ID_ddebug724, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c4iw_destroy_srq, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !300

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %qid = getelementptr inbounds %struct.c4iw_srq, ptr %ibsrq, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %qid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %qid, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @c4iw_destroy_srq.__UNIQUE_ID_ddebug724, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.51, i32 noundef %3) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tobool5.not = icmp eq ptr %udata, null
  br i1 %tobool5.not, label %do.end.cond.end_crit_edge, label %cond.true

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %context = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %udata, i32 0, i32 3
  %4 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %context, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end.cond.end_crit_edge
  %cond = phi ptr [ %5, %cond.true ], [ null, %do.end.cond.end_crit_edge ]
  %tobool8.not = icmp eq ptr %cond, null
  %uctx = getelementptr inbounds %struct.c4iw_ucontext, ptr %cond, i32 0, i32 1
  %uctx11 = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 1, i32 3
  %cond13 = select i1 %tobool8.not, ptr %uctx11, ptr %uctx
  %wr_waitp = getelementptr inbounds %struct.c4iw_srq, ptr %ibsrq, i32 0, i32 10
  %6 = ptrtoint ptr %wr_waitp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wr_waitp, align 8
  tail call fastcc void @free_srq_queue(ptr noundef %ibsrq, ptr noundef %cond13, ptr noundef %7)
  %rdev14 = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 1
  %idx = getelementptr inbounds %struct.c4iw_srq, ptr %ibsrq, i32 0, i32 7
  %8 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %idx, align 4
  tail call void @c4iw_free_srq_idx(ptr noundef %rdev14, i32 noundef %9) #11
  %10 = ptrtoint ptr %wr_waitp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wr_waitp, align 8
  tail call fastcc void @c4iw_put_wr_wait(ptr noundef %11)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @c4iw_ref_send_wait(ptr noundef %rdev, ptr noundef %skb, ptr noundef %wr_waitp, i32 noundef %hwtid, i32 noundef %qpid, ptr noundef %func) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c4iw_ref_send_wait.__UNIQUE_ID_ddebug671, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c4iw_ref_send_wait, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !300

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @c4iw_ref_send_wait.__UNIQUE_ID_ddebug671, ptr noundef nonnull @.str.90, ptr noundef %func, ptr noundef %wr_waitp, i32 noundef %hwtid, i32 noundef %qpid) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c4iw_get_wr_wait.__UNIQUE_ID_ddebug669, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c4iw_ref_send_wait, %if.then.i)) #11
          to label %do.end.i [label %if.then.i], !srcloc !300

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %kref.i = getelementptr inbounds %struct.c4iw_wr_wait, ptr %wr_waitp, i32 0, i32 2
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %kref.i, i32 noundef 4) #11
  %0 = ptrtoint ptr %kref.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %kref.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @c4iw_get_wr_wait.__UNIQUE_ID_ddebug669, ptr noundef nonnull @.str.93, ptr noundef %wr_waitp, i32 noundef %1) #11
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %do.end
  %kref4.i = getelementptr inbounds %struct.c4iw_wr_wait, ptr %wr_waitp, i32 0, i32 2
  %call.i.i.i.i39.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %kref4.i, i32 noundef 4) #11
  %2 = ptrtoint ptr %kref4.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %kref4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp eq i32 %3, 0
  br i1 %cmp.i, label %do.end20.i, label %do.end.i.if.end26.i_crit_edge, !prof !302

do.end.i.if.end26.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26.i

do.end20.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.88, i32 noundef 230, i32 noundef 9, ptr noundef null) #11
  br label %if.end26.i

if.end26.i:                                       ; preds = %do.end20.i, %do.end.i.if.end26.i_crit_edge
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref4.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %kref4.i, i32 1, i32 3, i32 1) #11
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref4.i, ptr %kref4.i, i32 1, ptr elementtype(i32) %kref4.i) #11, !srcloc !301
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end26.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !302

if.end26.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end26.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %5 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %.not.i.i.i.i.i = icmp sgt i32 %5, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.c4iw_get_wr_wait.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !303

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.c4iw_get_wr_wait.exit_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %c4iw_get_wr_wait.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end26.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end26.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref4.i, i32 noundef %.sink.i.i.i.i.i) #11
  br label %c4iw_get_wr_wait.exit

c4iw_get_wr_wait.exit:                            ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.c4iw_get_wr_wait.exit_crit_edge
  %call3 = tail call i32 @c4iw_ofld_send(ptr noundef %rdev, ptr noundef %skb) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %c4iw_get_wr_wait.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @c4iw_put_wr_wait(ptr noundef %wr_waitp)
  br label %cleanup

if.end6:                                          ; preds = %c4iw_get_wr_wait.exit
  %flags.i.i = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 7
  %6 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i16

if.then.i16:                                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %ret1.i = getelementptr inbounds %struct.c4iw_wr_wait, ptr %wr_waitp, i32 0, i32 1
  %8 = ptrtoint ptr %ret1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -5, ptr %ret1.i, align 4
  br label %c4iw_wait_for_reply.exit

if.end.i:                                         ; preds = %if.end6
  %call2.i = tail call i32 @wait_for_completion_timeout(ptr noundef %wr_waitp, i32 noundef 6000) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i17, label %if.end8.i

do.end.i17:                                       ; preds = %if.end.i
  %lldi.i = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 8
  %9 = ptrtoint ptr %lldi.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lldi.i, align 8
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44, i32 3
  %11 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %do.end.i17.pci_name.exit.i_crit_edge

do.end.i17.pci_name.exit.i_crit_edge:             ; preds = %do.end.i17
  call void @__sanitizer_cov_trace_pc() #13
  br label %pci_name.exit.i

if.end.i.i.i:                                     ; preds = %do.end.i17
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  %13 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i.i, align 4
  br label %pci_name.exit.i

pci_name.exit.i:                                  ; preds = %if.end.i.i.i, %do.end.i17.pci_name.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %14, %if.end.i.i.i ], [ %12, %do.end.i17.pci_name.exit.i_crit_edge ]
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, ptr noundef %func, ptr noundef %retval.0.i.i.i, i32 noundef %hwtid, i32 noundef %qpid) #14
  %15 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags.i.i, align 4
  %or.i = or i32 %16, 1
  store i32 %or.i, ptr %flags.i.i, align 4
  %ret7.i = getelementptr inbounds %struct.c4iw_wr_wait, ptr %wr_waitp, i32 0, i32 1
  %17 = ptrtoint ptr %ret7.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -5, ptr %ret7.i, align 4
  br label %c4iw_wait_for_reply.exit

if.end8.i:                                        ; preds = %if.end.i
  %ret9.i = getelementptr inbounds %struct.c4iw_wr_wait, ptr %wr_waitp, i32 0, i32 1
  %18 = ptrtoint ptr %ret9.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ret9.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool10.not.i = icmp eq i32 %19, 0
  br i1 %tobool10.not.i, label %if.end8.i.c4iw_wait_for_reply.exit_crit_edge, label %do.body12.i

if.end8.i.c4iw_wait_for_reply.exit_crit_edge:     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %c4iw_wait_for_reply.exit

do.body12.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c4iw_wait_for_reply.__UNIQUE_ID_ddebug670, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c4iw_ref_send_wait, %if.then18.i)) #11
          to label %c4iw_wait_for_reply.exit [label %if.then18.i], !srcloc !300

if.then18.i:                                      ; preds = %do.body12.i
  %lldi19.i = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 8
  %20 = ptrtoint ptr %lldi19.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %lldi19.i, align 8
  %init_name.i.i38.i = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44, i32 3
  %22 = ptrtoint ptr %init_name.i.i38.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %init_name.i.i38.i, align 8
  %tobool.not.i.i39.i = icmp eq ptr %23, null
  br i1 %tobool.not.i.i39.i, label %if.end.i.i41.i, label %if.then18.i.pci_name.exit43.i_crit_edge

if.then18.i.pci_name.exit43.i_crit_edge:          ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %pci_name.exit43.i

if.end.i.i41.i:                                   ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i40.i = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  %24 = ptrtoint ptr %dev.i40.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i40.i, align 4
  br label %pci_name.exit43.i

pci_name.exit43.i:                                ; preds = %if.end.i.i41.i, %if.then18.i.pci_name.exit43.i_crit_edge
  %retval.0.i.i42.i = phi ptr [ %25, %if.end.i.i41.i ], [ %23, %if.then18.i.pci_name.exit43.i_crit_edge ]
  %26 = ptrtoint ptr %ret9.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ret9.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @c4iw_wait_for_reply.__UNIQUE_ID_ddebug670, ptr noundef nonnull @.str.97, ptr noundef %retval.0.i.i42.i, i32 noundef %27, i32 noundef %hwtid, i32 noundef %qpid) #11
  br label %c4iw_wait_for_reply.exit

c4iw_wait_for_reply.exit:                         ; preds = %pci_name.exit43.i, %do.body12.i, %if.end8.i.c4iw_wait_for_reply.exit_crit_edge, %pci_name.exit.i, %if.then.i16
  %ret27.i = getelementptr inbounds %struct.c4iw_wr_wait, ptr %wr_waitp, i32 0, i32 1
  %28 = ptrtoint ptr %ret27.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ret27.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %c4iw_wait_for_reply.exit, %if.then5
  %retval.0 = phi i32 [ %call3, %if.then5 ], [ %29, %c4iw_wait_for_reply.exit ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @c4iw_ofld_send(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__flush_qp(ptr noundef %qhp, ptr noundef %rchp, ptr noundef %schp) unnamed_addr #0 align 64 {
entry:
  %count = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %count) #11
  %0 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %count, align 4, !annotation !299
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__flush_qp.__UNIQUE_ID_ddebug698, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__flush_qp, %if.then)) #11
          to label %do.body4 [label %if.then], !srcloc !300

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__flush_qp.__UNIQUE_ID_ddebug698, ptr noundef nonnull @.str.100, ptr noundef %qhp, ptr noundef %rchp, ptr noundef %schp) #11
  br label %do.body4

do.body4:                                         ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.c4iw_cq, ptr %rchp, i32 0, i32 4
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %cmp12.not = icmp eq ptr %schp, %rchp
  br i1 %cmp12.not, label %do.body4.if.end16_crit_edge, label %if.then14

do.body4.if.end16_crit_edge:                      ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then14:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #13
  %lock15 = getelementptr inbounds %struct.c4iw_cq, ptr %schp, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %lock15) #11
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %do.body4.if.end16_crit_edge
  %lock17 = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lock17) #11
  %wq = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 5
  %flushed = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 5, i32 4
  %1 = ptrtoint ptr %flushed to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flushed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool18.not = icmp eq i32 %2, 0
  br i1 %tobool18.not, label %if.end27, label %if.then19

if.then19:                                        ; preds = %if.end16
  tail call void @_raw_spin_unlock(ptr noundef %lock17) #11
  br i1 %cmp12.not, label %if.then19.if.end25_crit_edge, label %if.then23

if.then19.if.end25_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.then23:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  %lock24 = getelementptr inbounds %struct.c4iw_cq, ptr %schp, i32 0, i32 4
  tail call void @_raw_spin_unlock(ptr noundef %lock24) #11
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.then19.if.end25_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call7) #11
  br label %cleanup

if.end27:                                         ; preds = %if.end16
  %3 = ptrtoint ptr %flushed to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %flushed, align 8
  %qp_errp.i = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 5, i32 5
  %4 = ptrtoint ptr %qp_errp.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %qp_errp.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %5, align 1
  tail call void @c4iw_flush_hw_cq(ptr noundef %rchp, ptr noundef %qhp) #11
  %srq = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 10
  %7 = ptrtoint ptr %srq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %srq, align 8
  %tobool31.not = icmp eq ptr %8, null
  br i1 %tobool31.not, label %if.then32, label %if.end27.if.end37_crit_edge

if.end27.if.end37_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

if.then32:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  %cq = getelementptr inbounds %struct.c4iw_cq, ptr %rchp, i32 0, i32 3
  call void @c4iw_count_rcqes(ptr noundef %cq, ptr noundef %wq, ptr noundef nonnull %count) #11
  %9 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %count, align 4
  %call36 = call i32 @c4iw_flush_rq(ptr noundef %wq, ptr noundef %cq, i32 noundef %10) #11
  br label %if.end37

if.end37:                                         ; preds = %if.then32, %if.end27.if.end37_crit_edge
  %rq_flushed.0 = phi i32 [ 0, %if.end27.if.end37_crit_edge ], [ %call36, %if.then32 ]
  br i1 %cmp12.not, label %if.end37.if.end41_crit_edge, label %if.then40

if.end37.if.end41_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

if.then40:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  call void @c4iw_flush_hw_cq(ptr noundef %schp, ptr noundef %qhp) #11
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.end37.if.end41_crit_edge
  %call42 = call i32 @c4iw_flush_sq(ptr noundef %qhp) #11
  call void @_raw_spin_unlock(ptr noundef %lock17) #11
  br i1 %cmp12.not, label %if.then52, label %if.else

if.then52:                                        ; preds = %if.end41
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call7) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rq_flushed.0)
  %tobool53.not = icmp eq i32 %rq_flushed.0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool54.not = icmp eq i32 %call42, 0
  %or.cond = select i1 %tobool53.not, i1 %tobool54.not, i1 false
  br i1 %or.cond, label %if.then52.cleanup_crit_edge, label %land.lhs.true

if.then52.cleanup_crit_edge:                      ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true:                                    ; preds = %if.then52
  %flags.i = getelementptr inbounds %struct.c4iw_cq, ptr %rchp, i32 0, i32 3, i32 23
  %call.i = call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %flags.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool57.not = icmp eq i32 %call.i, 0
  br i1 %tobool57.not, label %land.lhs.true.cleanup_crit_edge, label %do.body60

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body60:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %comp_handler_lock = getelementptr inbounds %struct.c4iw_cq, ptr %rchp, i32 0, i32 5
  %call67 = call i32 @_raw_spin_lock_irqsave(ptr noundef %comp_handler_lock) #11
  %comp_handler = getelementptr inbounds %struct.ib_cq, ptr %rchp, i32 0, i32 2
  %11 = ptrtoint ptr %comp_handler to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %comp_handler, align 8
  %cq_context = getelementptr inbounds %struct.ib_cq, ptr %rchp, i32 0, i32 4
  %13 = ptrtoint ptr %cq_context to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cq_context, align 8
  call void %12(ptr noundef %rchp, ptr noundef %14) #11
  call void @_raw_spin_unlock_irqrestore(ptr noundef %comp_handler_lock, i32 noundef %call67) #11
  br label %cleanup

if.else:                                          ; preds = %if.end41
  %lock47 = getelementptr inbounds %struct.c4iw_cq, ptr %schp, i32 0, i32 4
  call void @_raw_spin_unlock(ptr noundef %lock47) #11
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call7) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rq_flushed.0)
  %tobool76.not = icmp eq i32 %rq_flushed.0, 0
  br i1 %tobool76.not, label %if.else.if.end102_crit_edge, label %land.lhs.true77

if.else.if.end102_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end102

land.lhs.true77:                                  ; preds = %if.else
  %flags.i190 = getelementptr inbounds %struct.c4iw_cq, ptr %rchp, i32 0, i32 3, i32 23
  %call.i191 = call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %flags.i190) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i191)
  %tobool80.not = icmp eq i32 %call.i191, 0
  br i1 %tobool80.not, label %land.lhs.true77.if.end102_crit_edge, label %do.body83

land.lhs.true77.if.end102_crit_edge:              ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end102

do.body83:                                        ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #13
  %comp_handler_lock89 = getelementptr inbounds %struct.c4iw_cq, ptr %rchp, i32 0, i32 5
  %call91 = call i32 @_raw_spin_lock_irqsave(ptr noundef %comp_handler_lock89) #11
  %comp_handler97 = getelementptr inbounds %struct.ib_cq, ptr %rchp, i32 0, i32 2
  %15 = ptrtoint ptr %comp_handler97 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %comp_handler97, align 8
  %cq_context100 = getelementptr inbounds %struct.ib_cq, ptr %rchp, i32 0, i32 4
  %17 = ptrtoint ptr %cq_context100 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cq_context100, align 8
  call void %16(ptr noundef %rchp, ptr noundef %18) #11
  call void @_raw_spin_unlock_irqrestore(ptr noundef %comp_handler_lock89, i32 noundef %call91) #11
  br label %if.end102

if.end102:                                        ; preds = %do.body83, %land.lhs.true77.if.end102_crit_edge, %if.else.if.end102_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool103.not = icmp eq i32 %call42, 0
  br i1 %tobool103.not, label %if.end102.cleanup_crit_edge, label %land.lhs.true104

if.end102.cleanup_crit_edge:                      ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true104:                                 ; preds = %if.end102
  %flags.i192 = getelementptr inbounds %struct.c4iw_cq, ptr %schp, i32 0, i32 3, i32 23
  %call.i193 = call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %flags.i192) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i193)
  %tobool107.not = icmp eq i32 %call.i193, 0
  br i1 %tobool107.not, label %land.lhs.true104.cleanup_crit_edge, label %do.body110

land.lhs.true104.cleanup_crit_edge:               ; preds = %land.lhs.true104
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body110:                                       ; preds = %land.lhs.true104
  call void @__sanitizer_cov_trace_pc() #13
  %comp_handler_lock116 = getelementptr inbounds %struct.c4iw_cq, ptr %schp, i32 0, i32 5
  %call118 = call i32 @_raw_spin_lock_irqsave(ptr noundef %comp_handler_lock116) #11
  %comp_handler124 = getelementptr inbounds %struct.ib_cq, ptr %schp, i32 0, i32 2
  %19 = ptrtoint ptr %comp_handler124 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %comp_handler124, align 8
  %cq_context127 = getelementptr inbounds %struct.ib_cq, ptr %schp, i32 0, i32 4
  %21 = ptrtoint ptr %cq_context127 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cq_context127, align 8
  call void %20(ptr noundef %schp, ptr noundef %22) #11
  call void @_raw_spin_unlock_irqrestore(ptr noundef %comp_handler_lock116, i32 noundef %call118) #11
  br label %cleanup

cleanup:                                          ; preds = %do.body110, %land.lhs.true104.cleanup_crit_edge, %if.end102.cleanup_crit_edge, %do.body60, %land.lhs.true.cleanup_crit_edge, %if.then52.cleanup_crit_edge, %if.end25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %count) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @c4iw_flush_hw_cq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @c4iw_count_rcqes(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @c4iw_flush_rq(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @c4iw_flush_sq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @c4iw_put_qpid(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @c4iw_rqtpool_free(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @c4iw_ocqp_pool_free(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_c4iw_free_wr_wait(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_load(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @c4iw_get_qpid(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @c4iw_rqtpool_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__xa_insert(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__virt_to_phys(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 143)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 143)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !17, !19, !20, !22, !24, !25, !27, !29, !30, !31, !32, !33, !34, !36, !37, !39, !40, !41, !42, !44, !45, !46, !48, !49, !50, !51, !53, !54, !55, !56, !58, !59, !60, !61, !63, !64, !65, !67, !69, !71, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !87, !89, !90, !91, !93, !94, !95, !96, !98, !99, !100, !102, !103, !105, !106, !108, !109, !111, !112, !113, !114, !116, !117, !119, !120, !121, !122, !124, !125, !126, !127, !129, !130, !131, !133, !134, !136, !137, !138, !139, !141, !142, !144, !145, !147, !148, !149, !150, !152, !154, !155, !156, !157, !158, !160, !161, !162, !163, !165, !166, !167, !169, !170, !171, !172, !174, !175, !176, !178, !179, !180, !181, !183, !184, !185, !186, !188, !189, !190, !192, !193, !194, !195, !197, !198, !199, !201, !202, !203, !204, !205, !206, !208, !209, !210, !211, !213, !214, !215, !216, !217, !219, !220, !221, !222, !224, !225, !226, !227, !229, !230, !231, !233, !234, !235, !236, !238, !239, !240, !241, !243, !245, !246, !248, !249, !250, !251, !253, !254, !255, !256, !258, !259, !260, !262, !263, !264, !266, !267, !269, !270, !272, !274, !276, !277, !278, !279, !281, !282, !283, !284, !286, !287, !288}
!llvm.module.flags = !{!290, !291, !292, !293, !294, !295, !296, !297}
!llvm.ident = !{!298}

!0 = !{ptr @__param_db_delay_usecs, !1, !"__param_db_delay_usecs", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/hw/cxgb4/qp.c", i32 39, i32 1}
!2 = !{ptr @__UNIQUE_ID_db_delay_usecstype676, !1, !"__UNIQUE_ID_db_delay_usecstype676", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_db_delay_usecs677, !4, !"__UNIQUE_ID_db_delay_usecs677", i1 false, i1 false}
!4 = !{!"../drivers/infiniband/hw/cxgb4/qp.c", i32 40, i32 1}
!5 = !{ptr @__param_ocqp_support, !6, !"__param_ocqp_support", i1 false, i1 false}
!6 = !{!"../drivers/infiniband/hw/cxgb4/qp.c", i32 43, i32 1}
!7 = !{ptr @__UNIQUE_ID_ocqp_supporttype678, !6, !"__UNIQUE_ID_ocqp_supporttype678", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_ocqp_support679, !9, !"__UNIQUE_ID_ocqp_support679", i1 false, i1 false}
!9 = !{!"../drivers/infiniband/hw/cxgb4/qp.c", i32 44, i32 1}
!10 = !{ptr @db_fc_threshold, !11, !"db_fc_threshold", i1 false, i1 false}
!11 = !{!"../drivers/infiniband/hw/cxgb4/qp.c", i32 46, i32 5}
!12 = !{ptr @__param_db_fc_threshold, !13, !"__param_db_fc_threshold", i1 false, i1 false}
!13 = !{!"../drivers/infiniband/hw/cxgb4/qp.c", i32 47, i32 1}
!14 = !{ptr @__UNIQUE_ID_db_fc_thresholdtype680, !13, !"__UNIQUE_ID_db_fc_thresholdtype680", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_db_fc_threshold681, !16, !"__UNIQUE_ID_db_fc_threshold681", i1 false, i1 false}
!16 = !{!"../drivers/infiniband/hw/cxgb4/qp.c", i32 48, i32 1}
!17 = !{ptr @__param_db_coalescing_threshold, !18, !"__param_db_coalescing_threshold", i1 false, i1 false}
!18 = !{!"../drivers/infiniband/hw/cxgb4/qp.c", i32 53, i32 1}
!19 = !{ptr @__UNIQUE_ID_db_coalescing_thresholdtype682, !18, !"__UNIQUE_ID_db_coalescing_thresholdtype682", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_db_coalescing_threshold683, !21, !"__UNIQUE_ID_db_coalescing_threshold683", i1 false, i1 false}
!21 = !{!"../drivers/infiniband/hw/cxgb4/qp.c", i32 54, i32 1}
!22 = !{ptr @__param_max_fr_immd, !23, !"__param_max_fr_immd", i1 false, i1 false}
!23 = !{!"../drivers/infiniband/hw/cxgb4/qp.c", i32 59, i32 1}
!24 = !{ptr @__UNIQUE_ID_max_fr_immdtype684, !23, !"__UNIQUE_ID_max_fr_immdtype684", i1 false, i1 false}
!25 = !{ptr @__UNIQUE_ID_max_fr_immd685, !26, !"__UNIQUE_ID_max_fr_immd685", i1 false, i1 false}
!26 = !{!"../drivers/infiniband/hw/cxgb4/qp.c", i32 60, i32 1}
!27 = !{ptr @.str, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/infiniband/hw/cxgb4/qp.c", i32 895, i32 2}
!29 = !{ptr @.str.1, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.2, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.3, !28, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @c4iw_qp_add_ref.__UNIQUE_ID_ddebug691, !28, !"__UNIQUE_ID_ddebug691", i1 false, i1 false}
!33 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.5, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/infiniband/hw/cxgb4/qp.c", i32 901, i32 2}
!36 = !{ptr @c4iw_qp_rem_ref.__UNIQUE_ID_ddebug692, !35, !"__UNIQUE_ID_ddebug692", i1 false, i1 false}
!37 = !{ptr @.str.6, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/infiniband/hw/cxgb4/qp.c", i32 1221, i32 4}
!39 = !{ptr @.str.7, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @c4iw_post_send._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @c4iw_post_send._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.8, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/infiniband/hw/cxgb4/qp.c", i32 1243, i32 3}
!44 = !{ptr @c4iw_post_send.__UNIQUE_ID_ddebug693, !43, !"__UNIQUE_ID_ddebug693", i1 false, i1 false}
!45 = !{ptr @.str.9, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.10, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/infiniband/hw/cxgb4/qp.c", i32 1324, i32 3}
!48 = !{ptr @.str.11, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @c4iw_post_receive.__UNIQUE_ID_ddebug694, !47, !"__UNIQUE_ID_ddebug694", i1 false, i1 false}
!50 = !{ptr @.str.12, !47, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.13, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/infiniband/hw/cxgb4/qp.c", i32 1407, i32 4}
!53 = !{ptr @.str.14, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @c4iw_post_srq_recv.__UNIQUE_ID_ddebug696, !52, !"__UNIQUE_ID_ddebug696", i1 false, i1 false}
!55 = !{ptr @.str.15, !52, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.16, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/infiniband/hw/cxgb4/qp.c", i32 1845, i32 2}
!58 = !{ptr @.str.17, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @c4iw_modify_qp.__UNIQUE_ID_ddebug704, !57, !"__UNIQUE_ID_ddebug704", i1 false, i1 false}
!60 = !{ptr @.str.18, !57, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.19, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/infiniband/hw/cxgb4/qp.c", i32 1917, i32 4}
!63 = !{ptr @c4iw_modify_qp.__UNIQUE_ID_ddebug705, !62, !"__UNIQUE_ID_ddebug705", i1 false, i1 false}
!64 = !{ptr @.str.20, !62, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @c4iw_modify_qp.__UNIQUE_ID_ddebug706, !66, !"__UNIQUE_ID_ddebug706", i1 false, i1 false}
!66 = !{!"../drivers/infiniband/hw/cxgb4/qp.c", i32 1940, i32 5}
!67 = !{ptr @c4iw_modify_qp.__UNIQUE_ID_ddebug707, !68, !"__UNIQUE_ID_ddebug707", i1 false, i1 false}
!68 = !{!"../drivers/infiniband/hw/cxgb4/qp.c", i32 1953, i32 5}
!69 = !{ptr @c4iw_modify_qp.__UNIQUE_ID_ddebug708, !70, !"__UNIQUE_ID_ddebug708", i1 false, i1 false}
!70 = !{!"../drivers/infiniband/hw/cxgb4/qp.c", i32 1969, i32 5}
!71 = !{ptr @.str.21, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/infiniband/hw/cxgb4/qp.c", i32 1993, i32 4}
!73 = !{ptr @c4iw_modify_qp.__UNIQUE_ID_ddebug709, !72, !"__UNIQUE_ID_ddebug709", i1 false, i1 false}
!74 = !{ptr @.str.22, !72, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.23, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/infiniband/hw/cxgb4/qp.c", i32 2023, i32 3}
!77 = !{ptr @c4iw_modify_qp._entry, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @c4iw_modify_qp._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.24, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/infiniband/hw/cxgb4/qp.c", i32 2030, i32 2}
!81 = !{ptr @c4iw_modify_qp.__UNIQUE_ID_ddebug710, !80, !"__UNIQUE_ID_ddebug710", i1 false, i1 false}
!82 = !{ptr @.str.25, !80, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @c4iw_modify_qp.__UNIQUE_ID_ddebug711, !84, !"__UNIQUE_ID_ddebug711", i1 false, i1 false}
!84 = !{!"../drivers/infiniband/hw/cxgb4/qp.c", i32 2057, i32 3}
!85 = !{ptr @c4iw_modify_qp.__UNIQUE_ID_ddebug712, !86, !"__UNIQUE_ID_ddebug712", i1 false, i1 false}
!86 = !{!"../drivers/infiniband/hw/cxgb4/qp.c", i32 2065, i32 3}
!87 = !{ptr @.str.26, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/infiniband/hw/cxgb4/qp.c", i32 2066, i32 2}
!89 = !{ptr @c4iw_modify_qp.__UNIQUE_ID_ddebug713, !88, !"__UNIQUE_ID_ddebug713", i1 false, i1 false}
!90 = !{ptr @.str.27, !88, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.28, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/infiniband/hw/cxgb4/qp.c", i32 2099, i32 2}
!93 = !{ptr @.str.29, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @c4iw_destroy_qp.__UNIQUE_ID_ddebug714, !92, !"__UNIQUE_ID_ddebug714", i1 false, i1 false}
!95 = !{ptr @.str.30, !92, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.31, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/infiniband/hw/cxgb4/qp.c", i32 2100, i32 2}
!98 = !{ptr @c4iw_destroy_qp.__UNIQUE_ID_ddebug715, !97, !"__UNIQUE_ID_ddebug715", i1 false, i1 false}
!99 = !{ptr @.str.32, !97, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @c4iw_create_qp.__key, !101, !"__key", i1 false, i1 false}
!101 = !{!"../drivers/infiniband/hw/cxgb4/qp.c", i32 2205, i32 2}
!102 = !{ptr @.str.33, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @c4iw_create_qp.__key.34, !104, !"__key", i1 false, i1 false}
!104 = !{!"../drivers/infiniband/hw/cxgb4/qp.c", i32 2206, i32 2}
!105 = !{ptr @.str.35, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @c4iw_create_qp.__key.36, !107, !"__key", i1 false, i1 false}
!107 = !{!"../drivers/infiniband/hw/cxgb4/qp.c", i32 2207, i32 2}
!108 = !{ptr @.str.37, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.38, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/infiniband/hw/cxgb4/qp.c", i32 2329, i32 2}
!111 = !{ptr @.str.39, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @c4iw_create_qp.__UNIQUE_ID_ddebug716, !110, !"__UNIQUE_ID_ddebug716", i1 false, i1 false}
!113 = !{ptr @.str.40, !110, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.41, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/infiniband/hw/cxgb4/qp.c", i32 2364, i32 2}
!116 = !{ptr @c4iw_ib_modify_qp.__UNIQUE_ID_ddebug717, !115, !"__UNIQUE_ID_ddebug717", i1 false, i1 false}
!117 = !{ptr @.str.42, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/infiniband/hw/cxgb4/qp.c", i32 2412, i32 2}
!119 = !{ptr @.str.43, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @c4iw_get_qp.__UNIQUE_ID_ddebug718, !118, !"__UNIQUE_ID_ddebug718", i1 false, i1 false}
!121 = !{ptr @.str.44, !118, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @.str.45, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/infiniband/hw/cxgb4/qp.c", i32 2679, i32 2}
!124 = !{ptr @.str.46, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @c4iw_create_srq.__UNIQUE_ID_ddebug720, !123, !"__UNIQUE_ID_ddebug720", i1 false, i1 false}
!126 = !{ptr @.str.47, !123, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @.str.48, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/infiniband/hw/cxgb4/qp.c", i32 2773, i32 2}
!129 = !{ptr @c4iw_create_srq.__UNIQUE_ID_ddebug723, !128, !"__UNIQUE_ID_ddebug723", i1 false, i1 false}
!130 = !{ptr @.str.49, !128, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @c4iw_create_srq.__key, !132, !"__key", i1 false, i1 false}
!132 = !{!"../drivers/infiniband/hw/cxgb4/qp.c", i32 2777, i32 2}
!133 = !{ptr @.str.50, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @.str.51, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/infiniband/hw/cxgb4/qp.c", i32 2805, i32 2}
!136 = !{ptr @.str.52, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @c4iw_destroy_srq.__UNIQUE_ID_ddebug724, !135, !"__UNIQUE_ID_ddebug724", i1 false, i1 false}
!138 = !{ptr @.str.53, !135, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @db_coalescing_threshold, !140, !"db_coalescing_threshold", i1 false, i1 false}
!140 = !{!"../drivers/infiniband/hw/cxgb4/qp.c", i32 52, i32 5}
!141 = !{ptr @__param_str_db_delay_usecs, !1, !"__param_str_db_delay_usecs", i1 false, i1 false}
!142 = !{ptr @db_delay_usecs, !143, !"db_delay_usecs", i1 false, i1 false}
!143 = !{!"../drivers/infiniband/hw/cxgb4/qp.c", i32 38, i32 12}
!144 = !{ptr @__param_str_ocqp_support, !6, !"__param_str_ocqp_support", i1 false, i1 false}
!145 = !{ptr @ocqp_support, !146, !"ocqp_support", i1 false, i1 false}
!146 = !{!"../drivers/infiniband/hw/cxgb4/qp.c", i32 42, i32 12}
!147 = !{ptr @__param_str_db_fc_threshold, !13, !"__param_str_db_fc_threshold", i1 false, i1 false}
!148 = !{ptr @__param_str_db_coalescing_threshold, !18, !"__param_str_db_coalescing_threshold", i1 false, i1 false}
!149 = !{ptr @__param_str_max_fr_immd, !23, !"__param_str_max_fr_immd", i1 false, i1 false}
!150 = !{ptr @max_fr_immd, !151, !"max_fr_immd", i1 false, i1 false}
!151 = !{!"../drivers/infiniband/hw/cxgb4/qp.c", i32 58, i32 12}
!152 = !{ptr @.str.54, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/infiniband/hw/cxgb4/t4.h", i32 737, i32 3}
!154 = !{ptr @.str.55, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @.str.56, !153, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @t4_swcq_produce._entry, !153, !"_entry", i1 false, i1 false}
!157 = !{ptr @t4_swcq_produce._entry_ptr, !153, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.57, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/infiniband/hw/cxgb4/t4.h", i32 608, i32 4}
!160 = !{ptr @.str.58, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @t4_ring_sq_db.__UNIQUE_ID_ddebug664, !159, !"__UNIQUE_ID_ddebug664", i1 false, i1 false}
!162 = !{ptr @.str.59, !159, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @.str.60, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/infiniband/hw/cxgb4/t4.h", i32 613, i32 4}
!165 = !{ptr @t4_ring_sq_db.__UNIQUE_ID_ddebug665, !164, !"__UNIQUE_ID_ddebug665", i1 false, i1 false}
!166 = !{ptr @.str.61, !164, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @.str.62, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/infiniband/hw/cxgb4/t4.h", i32 633, i32 4}
!169 = !{ptr @.str.63, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @t4_ring_rq_db.__UNIQUE_ID_ddebug666, !168, !"__UNIQUE_ID_ddebug666", i1 false, i1 false}
!171 = !{ptr @.str.64, !168, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @.str.65, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/infiniband/hw/cxgb4/t4.h", i32 638, i32 4}
!174 = !{ptr @t4_ring_rq_db.__UNIQUE_ID_ddebug667, !173, !"__UNIQUE_ID_ddebug667", i1 false, i1 false}
!175 = !{ptr @.str.66, !173, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @.str.67, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/infiniband/hw/cxgb4/qp.c", i32 1346, i32 2}
!178 = !{ptr @.str.68, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @defer_srq_wr.__UNIQUE_ID_ddebug695, !177, !"__UNIQUE_ID_ddebug695", i1 false, i1 false}
!180 = !{ptr @.str.69, !177, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @.str.70, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/infiniband/hw/cxgb4/t4.h", i32 588, i32 3}
!183 = !{ptr @.str.71, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @t4_ring_srq_db.__UNIQUE_ID_ddebug662, !182, !"__UNIQUE_ID_ddebug662", i1 false, i1 false}
!185 = !{ptr @.str.72, !182, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @.str.73, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/infiniband/hw/cxgb4/t4.h", i32 592, i32 3}
!188 = !{ptr @t4_ring_srq_db.__UNIQUE_ID_ddebug663, !187, !"__UNIQUE_ID_ddebug663", i1 false, i1 false}
!189 = !{ptr @.str.74, !187, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @.str.75, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/infiniband/hw/cxgb4/qp.c", i32 1755, i32 2}
!192 = !{ptr @.str.76, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @rdma_init.__UNIQUE_ID_ddebug702, !191, !"__UNIQUE_ID_ddebug702", i1 false, i1 false}
!194 = !{ptr @.str.77, !191, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @.str.78, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/infiniband/hw/cxgb4/qp.c", i32 1828, i32 2}
!197 = !{ptr @rdma_init.__UNIQUE_ID_ddebug703, !196, !"__UNIQUE_ID_ddebug703", i1 false, i1 false}
!198 = !{ptr @.str.79, !196, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @.str.80, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/infiniband/hw/cxgb4/qp.c", i32 74, i32 3}
!201 = !{ptr @.str.81, !200, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @.str.82, !200, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @.str.83, !200, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @alloc_ird._entry, !200, !"_entry", i1 false, i1 false}
!205 = !{ptr @alloc_ird._entry_ptr, !200, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.84, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/infiniband/hw/cxgb4/qp.c", i32 1727, i32 2}
!208 = !{ptr @.str.85, !207, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @build_rtr_msg.__UNIQUE_ID_ddebug701, !207, !"__UNIQUE_ID_ddebug701", i1 false, i1 false}
!210 = !{ptr @.str.86, !207, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @.str.87, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/infiniband/hw/cxgb4/iw_cxgb4.h", i32 296, i32 2}
!213 = !{ptr @.str.88, !212, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @.str.89, !212, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @c4iw_ref_send_wait.__UNIQUE_ID_ddebug671, !212, !"__UNIQUE_ID_ddebug671", i1 false, i1 false}
!216 = !{ptr @.str.90, !212, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @.str.91, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/infiniband/hw/cxgb4/iw_cxgb4.h", i32 228, i32 2}
!219 = !{ptr @.str.92, !218, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @c4iw_get_wr_wait.__UNIQUE_ID_ddebug669, !218, !"__UNIQUE_ID_ddebug669", i1 false, i1 false}
!221 = !{ptr @.str.93, !218, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @.str.94, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/infiniband/hw/cxgb4/iw_cxgb4.h", i32 273, i32 3}
!224 = !{ptr @.str.95, !223, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @c4iw_wait_for_reply._entry, !223, !"_entry", i1 false, i1 false}
!226 = !{ptr @c4iw_wait_for_reply._entry_ptr, !223, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @.str.96, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/infiniband/hw/cxgb4/iw_cxgb4.h", i32 280, i32 3}
!229 = !{ptr @c4iw_wait_for_reply.__UNIQUE_ID_ddebug670, !228, !"__UNIQUE_ID_ddebug670", i1 false, i1 false}
!230 = !{ptr @.str.97, !228, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @.str.98, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/infiniband/hw/cxgb4/qp.c", i32 1603, i32 2}
!233 = !{ptr @.str.99, !232, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @__flush_qp.__UNIQUE_ID_ddebug698, !232, !"__UNIQUE_ID_ddebug698", i1 false, i1 false}
!235 = !{ptr @.str.100, !232, !"<string literal>", i1 false, i1 false}
!236 = !{ptr @.str.101, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/infiniband/hw/cxgb4/qp.c", i32 1699, i32 2}
!238 = !{ptr @.str.102, !237, !"<string literal>", i1 false, i1 false}
!239 = !{ptr @rdma_fini.__UNIQUE_ID_ddebug699, !237, !"__UNIQUE_ID_ddebug699", i1 false, i1 false}
!240 = !{ptr @.str.103, !237, !"<string literal>", i1 false, i1 false}
!241 = !{ptr @rdma_fini.__UNIQUE_ID_ddebug700, !242, !"__UNIQUE_ID_ddebug700", i1 false, i1 false}
!242 = !{!"../drivers/infiniband/hw/cxgb4/qp.c", i32 1721, i32 2}
!243 = !{ptr @.str.104, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/infiniband/hw/cxgb4/qp.c", i32 1567, i32 2}
!245 = !{ptr @post_terminate.__UNIQUE_ID_ddebug697, !244, !"__UNIQUE_ID_ddebug697", i1 false, i1 false}
!246 = !{ptr @.str.105, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/infiniband/hw/cxgb4/iw_cxgb4.h", i32 220, i32 2}
!248 = !{ptr @.str.106, !247, !"<string literal>", i1 false, i1 false}
!249 = !{ptr @c4iw_put_wr_wait.__UNIQUE_ID_ddebug668, !247, !"__UNIQUE_ID_ddebug668", i1 false, i1 false}
!250 = !{ptr @.str.107, !247, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @.str.108, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/infiniband/hw/cxgb4/qp.c", i32 272, i32 3}
!253 = !{ptr @.str.109, !252, !"<string literal>", i1 false, i1 false}
!254 = !{ptr @create_qp.__UNIQUE_ID_ddebug688, !252, !"__UNIQUE_ID_ddebug688", i1 false, i1 false}
!255 = !{ptr @.str.110, !252, !"<string literal>", i1 false, i1 false}
!256 = !{ptr @.str.111, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/infiniband/hw/cxgb4/qp.c", i32 296, i32 3}
!258 = !{ptr @create_qp._entry, !257, !"_entry", i1 false, i1 false}
!259 = !{ptr @create_qp._entry_ptr, !257, !"_entry_ptr", i1 false, i1 false}
!260 = !{ptr @.str.112, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/infiniband/hw/cxgb4/qp.c", i32 386, i32 2}
!262 = !{ptr @create_qp.__UNIQUE_ID_ddebug689, !261, !"__UNIQUE_ID_ddebug689", i1 false, i1 false}
!263 = !{ptr @.str.113, !261, !"<string literal>", i1 false, i1 false}
!264 = !{ptr @init_completion.__key, !265, !"__key", i1 false, i1 false}
!265 = !{!"../include/linux/completion.h", i32 87, i32 2}
!266 = !{ptr @.str.114, !265, !"<string literal>", i1 false, i1 false}
!267 = distinct !{null, !268, !"__already_done", i1 false, i1 false}
!268 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!269 = !{ptr @.str.115, !268, !"<string literal>", i1 false, i1 false}
!270 = !{ptr @.str.116, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!272 = !{ptr @.str.117, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!274 = !{ptr @.str.118, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/infiniband/hw/cxgb4/iw_cxgb4.h", i32 569, i32 2}
!276 = !{ptr @.str.119, !275, !"<string literal>", i1 false, i1 false}
!277 = !{ptr @insert_mmap.__UNIQUE_ID_ddebug675, !275, !"__UNIQUE_ID_ddebug675", i1 false, i1 false}
!278 = !{ptr @.str.120, !275, !"<string literal>", i1 false, i1 false}
!279 = !{ptr @.str.121, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/infiniband/hw/cxgb4/qp.c", i32 2562, i32 3}
!281 = !{ptr @.str.122, !280, !"<string literal>", i1 false, i1 false}
!282 = !{ptr @alloc_srq_queue._entry, !280, !"_entry", i1 false, i1 false}
!283 = !{ptr @alloc_srq_queue._entry_ptr, !280, !"_entry_ptr", i1 false, i1 false}
!284 = !{ptr @.str.123, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/infiniband/hw/cxgb4/qp.c", i32 2620, i32 2}
!286 = !{ptr @alloc_srq_queue.__UNIQUE_ID_ddebug719, !285, !"__UNIQUE_ID_ddebug719", i1 false, i1 false}
!287 = !{ptr @.str.124, !285, !"<string literal>", i1 false, i1 false}
!288 = !{ptr @__func__.free_srq_queue, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/infiniband/hw/cxgb4/qp.c", i32 2500, i32 48}
!290 = !{i32 1, !"wchar_size", i32 2}
!291 = !{i32 1, !"min_enum_size", i32 4}
!292 = !{i32 8, !"branch-target-enforcement", i32 0}
!293 = !{i32 8, !"sign-return-address", i32 0}
!294 = !{i32 8, !"sign-return-address-all", i32 0}
!295 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!296 = !{i32 7, !"uwtable", i32 1}
!297 = !{i32 7, !"frame-pointer", i32 2}
!298 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!299 = !{!"auto-init"}
!300 = !{i64 2149028066, i64 2149028071, i64 2149028084, i64 2149028128, i64 2149028162, i64 2149028183}
!301 = !{i64 2148416219, i64 2148416251, i64 2148416280, i64 2148416314, i64 2148416345, i64 2148416368}
!302 = !{!"branch_weights", i32 1, i32 2000}
!303 = !{!"branch_weights", i32 2000, i32 1}
!304 = !{i64 2148504244}
!305 = !{i64 2148418684, i64 2148418716, i64 2148418745, i64 2148418779, i64 2148418810, i64 2148418833}
!306 = !{i64 2149380358}
!307 = !{i8 0, i8 2}
!308 = !{i32 0, i32 33}
!309 = !{i64 2160851209}
!310 = !{i64 2160601484}
!311 = !{i64 6633846}
!312 = !{i64 2160601857}
!313 = !{i64 2160856089}
!314 = !{i64 2160856542}
!315 = !{i64 2160856834}
!316 = !{i64 2160857429}
!317 = !{i64 2160862309}
!318 = !{i64 2160862762}
!319 = !{i64 2160863054}
!320 = !{i64 2160845228}
!321 = !{i64 2160850447}
!322 = !{i64 2160850892}
!323 = !{ptr @_c4iw_free_ep, ptr @_c4iw_free_wr_wait}
!324 = !{i64 2154913301, i64 2154913789, i64 2154913338, i64 2154913394, i64 2154913428, i64 2154913452, i64 2154913493, i64 2154913514, i64 2154913542, i64 2154913576}
!325 = !{i64 2152794579, i64 2152794604}
