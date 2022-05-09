; ModuleID = '/llk/IR_all_yes/drivers/infiniband/hw/ocrdma/ocrdma_hw.c_pt.bc'
source_filename = "../drivers/infiniband/hw/ocrdma/ocrdma_hw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ocrdma_dev = type { %struct.ib_device, %struct.ocrdma_dev_attr, %struct.mutex, [60 x i8], %struct.spinlock, ptr, ptr, ptr, i32, %struct.delayed_work, i16, i16, %struct.spinlock, i32, ptr, ptr, %struct.anon.179, ptr, %struct.ocrdma_mq, %struct.mqe_ctx, %struct.be_dev_info, %struct.phy_info, [32 x i8], i32, %struct.list_head, i32, ptr, i8, i8, %struct.atomic_t, i16, i32, i32, i32, %struct.mutex, %struct.stats_mem, %struct.ocrdma_stats, %struct.ocrdma_stats, %struct.ocrdma_stats, %struct.ocrdma_stats, %struct.ocrdma_stats, %struct.ocrdma_stats, %struct.ocrdma_stats, %struct.ocrdma_stats, %struct.ocrdma_stats, %struct.ocrdma_stats, %struct.ocrdma_stats, ptr, [17 x %struct.atomic_t], [22 x %struct.atomic_t], ptr }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.171, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
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
%union.anon.171 = type { %struct.ib_core_device }
%struct.ib_core_device = type { %struct.device, %struct.possible_net_t, ptr, %struct.list_head, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.ocrdma_dev_attr = type { [32 x i8], i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i16, i16, i32, i8, i8, i32, i32, i32, i8, i8, i8, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.179 = type { ptr, i32, i32, i32, %struct.spinlock, i32, %struct.ocrdma_pbl }
%struct.ocrdma_pbl = type { ptr, i32 }
%struct.ocrdma_mq = type { %struct.ocrdma_queue_info, %struct.ocrdma_queue_info, i8 }
%struct.ocrdma_queue_info = type { ptr, i32, i32, i16, i16, i16, i16, i16, i8 }
%struct.mqe_ctx = type { %struct.mutex, %struct.wait_queue_head, i32, i16, i16, i8, i8 }
%struct.be_dev_info = type { ptr, i64, i32, i32, i64, i32, ptr, ptr, [6 x i8], i32, i32, %struct.anon.181 }
%struct.anon.181 = type { i32, i32, [32 x i32] }
%struct.phy_info = type { i16, i16, i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.stats_mem = type { %struct.ocrdma_mqe, ptr, i32, i32, ptr }
%struct.ocrdma_mqe = type { %struct.ocrdma_mqe_hdr, %union.anon.182 }
%struct.ocrdma_mqe_hdr = type { i32, i32, i32, i32, i32 }
%union.anon.182 = type { %struct.ocrdma_mqe_emb_cmd }
%struct.ocrdma_mqe_emb_cmd = type { %struct.ocrdma_mbx_hdr, [220 x i8] }
%struct.ocrdma_mbx_hdr = type { i32, i32, i32, i32 }
%struct.ocrdma_stats = type { i8, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.180, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.180 = type { ptr }
%struct.ocrdma_eq = type { %struct.ocrdma_queue_info, i32, i32, ptr, [32 x i8], %struct.ocrdma_aic_obj }
%struct.ocrdma_aic_obj = type { i32, i64, i64 }
%struct.ocrdma_rdma_stats_req = type { %struct.ocrdma_mbx_hdr, i8, [3 x i8] }
%struct.ocrdma_mbx_rsp = type { i32, i32, i32, i32 }
%struct.ocrdma_get_link_speed_rsp = type { %struct.ocrdma_mqe_hdr, %struct.ocrdma_mbx_rsp, i32, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.ocrdma_pd = type { %struct.ib_pd, ptr, i32, i32, i32, i8 }
%struct.ib_pd = type { i32, i32, ptr, ptr, %struct.atomic_t, i32, ptr, %struct.rdma_restrack_entry }
%struct.rdma_restrack_entry = type { i8, i8, %struct.kref, %struct.completion, ptr, ptr, i32, i8, i32 }
%struct.ocrdma_alloc_pd = type { %struct.ocrdma_mqe_hdr, %struct.ocrdma_mbx_hdr, i32 }
%struct.ocrdma_alloc_pd_rsp = type { %struct.ocrdma_mqe_hdr, %struct.ocrdma_mbx_rsp, i32 }
%struct.ocrdma_dealloc_pd = type { %struct.ocrdma_mqe_hdr, %struct.ocrdma_mbx_hdr, i32 }
%struct.ocrdma_alloc_pd_range = type { %struct.ocrdma_mqe_hdr, %struct.ocrdma_mbx_hdr, i32, i32 }
%struct.ocrdma_pd_resource_mgr = type { i32, i16, i16, i16, i32, i16, i16, i16, i16, ptr, ptr, i8 }
%struct.ocrdma_alloc_pd_range_rsp = type { %struct.ocrdma_mqe_hdr, %struct.ocrdma_mbx_rsp, i32, i32 }
%struct.ocrdma_cq = type { %struct.ib_cq, ptr, i32, i32, i32, i8, [31 x i8], %struct.spinlock, [84 x i8], %struct.spinlock, i16, i16, ptr, i32, i32, i32, %struct.list_head, %struct.list_head, [48 x i8] }
%struct.ib_cq = type { ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.atomic_t, i32, ptr, %struct.list_head, %union.anon.139, ptr, ptr, i64, i8, i32, %struct.rdma_restrack_entry }
%union.anon.139 = type { %struct.work_struct }
%struct.ocrdma_create_cq = type { %struct.ocrdma_mqe_hdr, %struct.ocrdma_create_cq_cmd }
%struct.ocrdma_create_cq_cmd = type { %struct.ocrdma_mbx_hdr, i32, i32, i32, i32, i32, [4 x %struct.ocrdma_pa] }
%struct.ocrdma_pa = type { i32, i32 }
%struct.ocrdma_destroy_cq = type { %struct.ocrdma_mqe_hdr, %struct.ocrdma_mbx_hdr, i32 }
%struct.ocrdma_alloc_lkey = type { %struct.ocrdma_mqe_hdr, %struct.ocrdma_mbx_hdr, i32, i32 }
%struct.ocrdma_hw_mr = type { i32, i8, i8, i8, i8, i8, i8, i8, i8, i64, ptr, i32, i32, i32, i32, i64 }
%struct.ocrdma_dealloc_lkey = type { %struct.ocrdma_mqe_hdr, %struct.ocrdma_mbx_hdr, i32, i32 }
%struct.ocrdma_reg_nsmr = type { %struct.ocrdma_mqe_hdr, %struct.ocrdma_mbx_hdr, i32, i32, i32, i32, i32, i32, i32, i32, i32, [22 x %struct.ocrdma_pa] }
%struct.ocrdma_reg_nsmr_cont = type { %struct.ocrdma_mqe_hdr, %struct.ocrdma_mbx_hdr, i32, i32, i32, [22 x %struct.ocrdma_pa] }
%struct.ocrdma_qp = type { %struct.ib_qp, ptr, %struct.ocrdma_qp_hwq_info, ptr, i32, [80 x i8], %struct.spinlock, ptr, %struct.list_head, ptr, %struct.ocrdma_qp_hwq_info, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, ptr, i8, [91 x i8] }
%struct.ib_qp = type { ptr, ptr, ptr, ptr, %struct.spinlock, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, %struct.atomic_t, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i8, %struct.rdma_restrack_entry, ptr }
%struct.ocrdma_qp_hwq_info = type { ptr, i32, i32, i32, i32, i32, i32, i16, i32, i32 }
%struct.ib_qp_init_attr = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.ib_qp_cap, i32, i32, i32, i32, ptr, i32 }
%struct.ib_qp_cap = type { i32, i32, i32, i32, i32, i32 }
%struct.ocrdma_create_qp_req = type { %struct.ocrdma_mqe_hdr, %struct.ocrdma_mbx_hdr, i32, i32, i32, i32, i32, i32, i32, i32, [8 x %struct.ocrdma_pa], [8 x %struct.ocrdma_pa], i32, i32, [4 x %struct.ocrdma_pa] }
%struct.ocrdma_srq = type { %struct.ib_srq, ptr, %struct.ocrdma_qp_hwq_info, ptr, ptr, i32, [76 x i8], %struct.spinlock, ptr, i32, [76 x i8] }
%struct.ib_srq = type { ptr, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.anon.130, %struct.rdma_restrack_entry }
%struct.anon.130 = type { ptr, %union.anon.131 }
%union.anon.131 = type { %struct.anon.132 }
%struct.anon.132 = type { ptr, i32 }
%struct.ocrdma_query_qp = type { %struct.ocrdma_mqe_hdr, %struct.ocrdma_mbx_hdr, i32 }
%struct.ocrdma_modify_qp = type { %struct.ocrdma_mqe_hdr, %struct.ocrdma_mbx_hdr, %struct.ocrdma_qp_params, i32, i32, i32 }
%struct.ocrdma_qp_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x i8], [16 x i8], i32, i32, i32 }
%struct.ib_qp_attr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ib_qp_cap, %struct.rdma_ah_attr, %struct.rdma_ah_attr, i16, i16, i8, i8, i8, i8, i8, i32, i8, i8, i8, i32, i8, i32, ptr }
%struct.rdma_ah_attr = type { %struct.ib_global_route, i8, i8, i32, i8, i32, %union.anon.163 }
%struct.ib_global_route = type { ptr, %union.ib_gid, i32, i8, i8, i8 }
%union.ib_gid = type { %struct.anon.158 }
%struct.anon.158 = type { i64, i64 }
%union.anon.163 = type { %struct.opa_ah_attr }
%struct.opa_ah_attr = type { i32, i8, i8 }
%struct.ib_gid_attr = type { ptr, ptr, %union.ib_gid, i32, i16, i32 }
%struct.ocrdma_destroy_qp = type { %struct.ocrdma_mqe_hdr, %struct.ocrdma_mbx_hdr, i32 }
%struct.ocrdma_create_srq = type { %struct.ocrdma_mqe_hdr, %struct.ocrdma_mbx_hdr, i32, i32, i32, [8 x %struct.ocrdma_pa] }
%struct.ib_srq_init_attr = type { ptr, ptr, %struct.ib_srq_attr, i32, %struct.anon.164 }
%struct.ib_srq_attr = type { i32, i32, i32 }
%struct.anon.164 = type { ptr, %union.anon.165 }
%union.anon.165 = type { %struct.anon.166 }
%struct.anon.166 = type { ptr }
%struct.ocrdma_modify_srq = type { %struct.ocrdma_mqe_hdr, %struct.ocrdma_mbx_rsp, i32, i32 }
%struct.ocrdma_query_srq = type { %struct.ocrdma_mqe_hdr, %struct.ocrdma_mbx_rsp, i32 }
%struct.ocrdma_query_srq_rsp = type { %struct.ocrdma_mqe_hdr, %struct.ocrdma_mbx_rsp, i32, i32 }
%struct.ocrdma_destroy_srq = type { %struct.ocrdma_mqe_hdr, %struct.ocrdma_mbx_rsp, i32 }
%struct.ocrdma_dcbx_cfg = type { i32, i32, i32, i32, i32, i32, [2 x i32], [8 x i32], [2 x i32], [15 x %struct.ocrdma_app_parameter] }
%struct.ocrdma_app_parameter = type { i32, i32, [2 x i32] }
%struct.ocrdma_get_dcbx_cfg_req = type { %struct.ocrdma_mbx_hdr, i32 }
%struct.ocrdma_av = type { %struct.ocrdma_eth_vlan, %struct.ocrdma_grh, i32 }
%struct.ocrdma_eth_vlan = type { [6 x i8], [6 x i8], i16, i16, i16 }
%struct.ocrdma_grh = type <{ i32, i32, [16 x i8], [16 x i8], i16 }>
%struct.ocrdma_ah = type { %struct.ib_ah, ptr, i16, i32, i8 }
%struct.ib_ah = type { ptr, ptr, ptr, ptr, i32 }
%struct.ocrdma_modify_eqd_req = type { %struct.ocrdma_mqe_hdr, %struct.ocrdma_modify_eqd_cmd }
%struct.ocrdma_modify_eqd_cmd = type { %struct.ocrdma_mbx_hdr, i32, [8 x %struct.ocrmda_set_eqd] }
%struct.ocrmda_set_eqd = type { i32, i32, i32 }
%struct.ocrdma_dma_mem = type { ptr, i32, i32 }
%struct.ocrdma_create_eq_req = type { %struct.ocrdma_mbx_hdr, i32, i32, i32, i32, i32, [8 x %struct.ocrdma_pa] }
%struct.ocrdma_create_mq_req = type { %struct.ocrdma_mbx_hdr, i32, i32, i32, i32, i32, i32, [8 x %struct.ocrdma_pa] }
%struct.ocrdma_delete_q_req = type { %struct.ocrdma_mbx_hdr, i32 }
%struct.ocrdma_fw_conf_rsp = type { %struct.ocrdma_mqe_hdr, %struct.ocrdma_mbx_rsp, i32, i32, i32, i32, [2 x %struct.anon.187], i32, i32, i32, i32, i32 }
%struct.anon.187 = type { i32, i32, i32, i32, i32, i32, i32, [6 x i32] }
%struct.ocrdma_mbx_query_config = type { %struct.ocrdma_mqe_hdr, %struct.ocrdma_mbx_rsp, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ocrdma_fw_ver_rsp = type { %struct.ocrdma_mqe_hdr, %struct.ocrdma_mbx_rsp, [32 x i8] }
%struct.ocrdma_create_ah_tbl = type { %struct.ocrdma_mqe_hdr, %struct.ocrdma_mbx_hdr, i32, [8 x %struct.ocrdma_pa] }
%struct.ocrdma_pbe = type { i32, i32 }
%struct.ocrdma_get_phy_info_rsp = type { %struct.ocrdma_mqe_hdr, %struct.ocrdma_mbx_rsp, i32, i32, i32, i32, [2 x i32] }
%struct.ocrdma_get_ctrl_attribs_rsp = type { %struct.ocrdma_mbx_hdr, %struct.mgmt_controller_attrib }
%struct.mgmt_controller_attrib = type { %struct.mgmt_hba_attribs, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.mgmt_hba_attribs = type { [32 x i8], [32 x i8], i32, i32, i32, i32, [12 x i8], i32, [32 x i8], [64 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], i32, i32, [12 x i8], i32, i32, i32, i32, [8 x i32], i32, [3 x i32] }
%struct.ocrdma_delete_ah_tbl = type { %struct.ocrdma_mqe_hdr, %struct.ocrdma_mbx_hdr, i32 }
%struct.ocrdma_dealloc_pd_range = type { %struct.ocrdma_mqe_hdr, %struct.ocrdma_mbx_hdr, i32, i32 }
%struct.ib_event = type { ptr, %union.anon.129, i32 }
%union.anon.129 = type { ptr }
%struct.ocrdma_mcqe = type { i32, i32, i32, i32 }

@.str = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"40Gbps \00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"10Gbps \00", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"1Gbps \00", [25 x i8] zeroinitializer }, align 32
@ocrdma_alloc_pd_pool._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 1603, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013%s(%d) Unable to initialize PD pool, using default.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ocrdma_alloc_pd_pool\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/infiniband/hw/ocrdma/ocrdma_hw.c\00", [55 x i8] zeroinitializer }, align 32
@ocrdma_alloc_pd_pool._entry_ptr = internal global ptr @ocrdma_alloc_pd_pool._entry, section ".printk_index", align 4
@ocrdma_mbx_create_cq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.6, i32 1790, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013%s(%d) max_cqe=0x%x, requester_cqe=0x%x\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ocrdma_mbx_create_cq\00", [43 x i8] zeroinitializer }, align 32
@ocrdma_mbx_create_cq._entry_ptr = internal global ptr @ocrdma_mbx_create_cq._entry, section ".printk_index", align 4
@ocrdma_reg_mr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.6, i32 2050, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\013%s() status=%d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ocrdma_reg_mr\00", [18 x i8] zeroinitializer }, align 32
@ocrdma_reg_mr._entry_ptr = internal global ptr @ocrdma_reg_mr._entry, section ".printk_index", align 4
@ocrdma_reg_mr._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.6, i32 2073, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013%s() err. status=%d\0A\00", [41 x i8] zeroinitializer }, align 32
@ocrdma_reg_mr._entry_ptr.13 = internal global ptr @ocrdma_reg_mr._entry.11, section ".printk_index", align 4
@ocrdma_mbx_create_qp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.6, i32 2454, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\013%s(%d) rq_err\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ocrdma_mbx_create_qp\00", [43 x i8] zeroinitializer }, align 32
@ocrdma_mbx_create_qp._entry_ptr = internal global ptr @ocrdma_mbx_create_qp._entry, section ".printk_index", align 4
@ocrdma_mbx_create_qp._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.6, i32 2457, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\013%s(%d) sq_err\0A\00", [47 x i8] zeroinitializer }, align 32
@ocrdma_mbx_create_qp._entry_ptr.18 = internal global ptr @ocrdma_mbx_create_qp._entry.16, section ".printk_index", align 4
@ocrdma_mbx_create_srq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.6, i32 2763, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013%s() req. max_wr=0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ocrdma_mbx_create_srq\00", [42 x i8] zeroinitializer }, align 32
@ocrdma_mbx_create_srq._entry_ptr = internal global ptr @ocrdma_mbx_create_srq._entry, section ".printk_index", align 4
@ocrdma_init_service_level._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.6, i32 3007, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\013%s(): status=%d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ocrdma_init_service_level\00", [38 x i8] zeroinitializer }, align 32
@ocrdma_init_service_level._entry_ptr = internal global ptr @ocrdma_init_service_level._entry, section ".printk_index", align 4
@ocrdma_init_service_level._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.6, i32 3024, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016%s ocrdma%d service level default\0A\00", [59 x i8] zeroinitializer }, align 32
@ocrdma_init_service_level._entry_ptr.25 = internal global ptr @ocrdma_init_service_level._entry.23, section ".printk_index", align 4
@ocrdma_init_service_level._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.22, ptr @.str.6, i32 3028, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016%s ocrdma%d service level %d\0A\00", [32 x i8] zeroinitializer }, align 32
@ocrdma_init_service_level._entry_ptr.28 = internal global ptr @ocrdma_init_service_level._entry.26, section ".printk_index", align 4
@ocrdma_init_hw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.29, ptr @.str.6, i32 3226, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ocrdma_init_hw\00", [17 x i8] zeroinitializer }, align 32
@ocrdma_init_hw._entry_ptr = internal global ptr @ocrdma_init_hw._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ocrdma_nonemb_mbx_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.6, i32 1139, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013opcode=0x%x, subsystem=0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ocrdma_nonemb_mbx_cmd\00", [42 x i8] zeroinitializer }, align 32
@ocrdma_nonemb_mbx_cmd._entry_ptr = internal global ptr @ocrdma_nonemb_mbx_cmd._entry, section ".printk_index", align 4
@ocrdma_mbx_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.6, i32 1096, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s() cqe_status=0x%x, ext_status=0x%x,\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ocrdma_mbx_cmd\00", [17 x i8] zeroinitializer }, align 32
@ocrdma_mbx_cmd._entry_ptr = internal global ptr @ocrdma_mbx_cmd._entry, section ".printk_index", align 4
@ocrdma_mbx_cmd._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.33, ptr @.str.6, i32 1103, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ocrdma_mbx_cmd._entry_ptr.35 = internal global ptr @ocrdma_mbx_cmd._entry.34, section ".printk_index", align 4
@ocrdma_wait_mqe_cmpl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.6, i32 1066, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013%s(%d) mailbox timeout: fw not responding\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ocrdma_wait_mqe_cmpl\00", [43 x i8] zeroinitializer }, align 32
@ocrdma_wait_mqe_cmpl._entry_ptr = internal global ptr @ocrdma_wait_mqe_cmpl._entry, section ".printk_index", align 4
@ocrdma_set_create_qp_sq_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.6, i32 2198, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s() req. max_send_wr=0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ocrdma_set_create_qp_sq_cmd\00", [36 x i8] zeroinitializer }, align 32
@ocrdma_set_create_qp_sq_cmd._entry_ptr = internal global ptr @ocrdma_set_create_qp_sq_cmd._entry, section ".printk_index", align 4
@ocrdma_set_create_qp_rq_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.6, i32 2248, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s() req. max_recv_wr=0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ocrdma_set_create_qp_rq_cmd\00", [36 x i8] zeroinitializer }, align 32
@ocrdma_set_create_qp_rq_cmd._entry_ptr = internal global ptr @ocrdma_set_create_qp_rq_cmd._entry, section ".printk_index", align 4
@ocrdma_set_qp_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.6, i32 2614, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013ocrdma%d: IB MTU %d is not supported\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ocrdma_set_qp_params\00", [43 x i8] zeroinitializer }, align 32
@ocrdma_set_qp_params._entry_ptr = internal global ptr @ocrdma_set_qp_params._entry, section ".printk_index", align 4
@ocrdma_set_av_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.6, i32 2553, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013ocrdma%d:Using VLAN with PFC is recommended\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ocrdma_set_av_params\00", [43 x i8] zeroinitializer }, align 32
@ocrdma_set_av_params._entry_ptr = internal global ptr @ocrdma_set_av_params._entry, section ".printk_index", align 4
@ocrdma_set_av_params._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.6, i32 2555, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013ocrdma%d:Using VLAN 0 for this connection\0A\00", [51 x i8] zeroinitializer }, align 32
@ocrdma_set_av_params._entry_ptr.48 = internal global ptr @ocrdma_set_av_params._entry.46, section ".printk_index", align 4
@ocrdma_parse_dcbxcfg_rsp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.6, i32 2934, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016%s ocrdma%d DCBX is disabled\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ocrdma_parse_dcbxcfg_rsp\00", [39 x i8] zeroinitializer }, align 32
@ocrdma_parse_dcbxcfg_rsp._entry_ptr = internal global ptr @ocrdma_parse_dcbxcfg_rsp._entry, section ".printk_index", align 4
@ocrdma_parse_dcbxcfg_rsp._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.50, ptr @.str.6, i32 2945, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016%s ocrdma%d priority flow control(%s) is %s%s\0A\00", [47 x i8] zeroinitializer }, align 32
@ocrdma_parse_dcbxcfg_rsp._entry_ptr.53 = internal global ptr @ocrdma_parse_dcbxcfg_rsp._entry.51, section ".printk_index", align 4
@.str.54 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"operational\00", [20 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"admin\00", [26 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c", not sync'ed\00", [18 x i8] zeroinitializer }, align 32
@ocrdma_parse_dcbxcfg_rsp._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.50, ptr @.str.6, i32 2949, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016%s ocrdma%d priority flow control is enabled and sync'ed\0A\00", [36 x i8] zeroinitializer }, align 32
@ocrdma_parse_dcbxcfg_rsp._entry_ptr.61 = internal global ptr @ocrdma_parse_dcbxcfg_rsp._entry.59, section ".printk_index", align 4
@ocrdma_parse_dcbxcfg_rsp._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.50, ptr @.str.6, i32 2988, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\016%s ocrdma%d application priority not set for 0x%x protocol\0A\00", [34 x i8] zeroinitializer }, align 32
@ocrdma_parse_dcbxcfg_rsp._entry_ptr.64 = internal global ptr @ocrdma_parse_dcbxcfg_rsp._entry.62, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.65 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ocrdma%d-%d\00", [20 x i8] zeroinitializer }, align 32
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@ocrdma_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.6, i32 1012, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013EQ full on eqid = 0x%x, eqe = 0x%x\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ocrdma_irq_handler\00", [45 x i8] zeroinitializer }, align 32
@ocrdma_irq_handler._entry_ptr = internal global ptr @ocrdma_irq_handler._entry, section ".printk_index", align 4
@ocrdma_process_acqe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.6, i32 861, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s(%d) invalid evt code=0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ocrdma_process_acqe\00", [44 x i8] zeroinitializer }, align 32
@ocrdma_process_acqe._entry_ptr = internal global ptr @ocrdma_process_acqe._entry, section ".printk_index", align 4
@ocrdma_dispatch_ibevent._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.6, i32 700, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013ocrdma%d:Async event - qpid %u is not valid\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ocrdma_dispatch_ibevent\00", [40 x i8] zeroinitializer }, align 32
@ocrdma_dispatch_ibevent._entry_ptr = internal global ptr @ocrdma_dispatch_ibevent._entry, section ".printk_index", align 4
@ocrdma_dispatch_ibevent._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.71, ptr @.str.6, i32 710, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013ocrdma%d:Async event - cqid %u is not valid\0A\00", [49 x i8] zeroinitializer }, align 32
@ocrdma_dispatch_ibevent._entry_ptr.74 = internal global ptr @ocrdma_dispatch_ibevent._entry.72, section ".printk_index", align 4
@ocrdma_dispatch_ibevent._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.71, ptr @.str.6, i32 776, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013%s() unknown type=0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@ocrdma_dispatch_ibevent._entry_ptr.77 = internal global ptr @ocrdma_dispatch_ibevent._entry.75, section ".printk_index", align 4
@ocrdma_dispatch_ibevent._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.71, ptr @.str.6, i32 795, ptr @.str.80, ptr @.str.81 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Fatal event received\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ocrdma_dispatch_ibevent._entry_ptr.82 = internal global ptr @ocrdma_dispatch_ibevent._entry.78, section ".printk_index", align 4
@ocrdma_process_mcqe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.6, i32 877, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013%s() cqe for invalid tag0x%x.expected=0x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ocrdma_process_mcqe\00", [44 x i8] zeroinitializer }, align 32
@ocrdma_process_mcqe._entry_ptr = internal global ptr @ocrdma_process_mcqe._entry, section ".printk_index", align 4
@ocrdma_create_mq.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.85 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&dev->mqe_ctx.cmd_wait\00", [41 x i8] zeroinitializer }, align 32
@ocrdma_create_mq.__key.86 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.87 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&dev->mqe_ctx.lock\00", [45 x i8] zeroinitializer }, align 32
@switch.table.get_ibqp_state = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 1, i32 2, i32 3, i32 5, i32 4, i32 6, i32 4], [32 x i8] zeroinitializer }, align 32
@switch.table.ocrdma_mbx_cmd = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 -1, i32 -22, i32 -22, i32 -22], [16 x i8] zeroinitializer }, align 32
@switch.table.ocrdma_qp_state_change = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 0, i32 1, i32 2, i32 3, i32 7, i32 4, i32 6], [36 x i8] zeroinitializer }, align 32
@switch.table.ocrdma_qp_state_change.88 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 1, i32 2, i32 3, i32 5, i32 4, i32 6, i32 4], [32 x i8] zeroinitializer }, align 32
@switch.table.ocrdma_mbx_modify_qp = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 0, i32 32, i32 64, i32 96, i32 224, i32 128, i32 192], [36 x i8] zeroinitializer }, align 32
@switch.table.ocrdma_mbx_modify_qp.89 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 134217728, i32 268435456, i32 536870912, i32 1073741824], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 256, i64 512, i64 1024]
@__sancov_gen_cov_switch_values.90 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 6]
@__sancov_gen_cov_switch_values.91 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.92 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.93 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.94 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.95 = internal global [38 x i64] [i64 36, i64 8, i64 1, i64 3, i64 100, i64 101, i64 102, i64 103, i64 104, i64 105, i64 106, i64 107, i64 108, i64 109, i64 110, i64 111, i64 112, i64 114, i64 115, i64 116, i64 117, i64 118, i64 119, i64 120, i64 129, i64 130, i64 133, i64 134, i64 135, i64 136, i64 137, i64 138, i64 139, i64 140, i64 141, i64 142, i64 143, i64 144]
@__sancov_gen_cov_switch_values.96 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 5, i64 20]
@__sancov_gen_cov_switch_values.97 = internal global [12 x i64] [i64 10, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 8, i64 14, i64 15, i64 16]
@__sancov_gen_cov_switch_values.98 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 267, i32 14 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 273, i32 9 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 275, i32 9 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 277, i32 9 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1602, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1789, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 2050, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 2073, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 2454, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 2457, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 2762, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 3007, i32 4 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 3023, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 3026, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 3226, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1135, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1095, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1099, i32 4 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1065, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 2197, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 2247, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 2613, i32 4 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 2552, i32 4 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 2554, i32 4 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 2933, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 2939, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 2948, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 2986, i32 5 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 3096, i32 36 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1011, i32 4 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 860, i32 3 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 699, i32 4 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 709, i32 4 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 776, i32 3 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 795, i32 3 }
@___asan_gen_.366 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 876, i32 3 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 620, i32 2 }
@___asan_gen_.381 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.384 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.385 = private constant [44 x i8] c"../drivers/infiniband/hw/ocrdma/ocrdma_hw.c\00", align 1
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 621, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant [28 x i8] c"switch.table.get_ibqp_state\00", align 1
@___asan_gen_.388 = private unnamed_addr constant [28 x i8] c"switch.table.ocrdma_mbx_cmd\00", align 1
@___asan_gen_.389 = private unnamed_addr constant [36 x i8] c"switch.table.ocrdma_qp_state_change\00", align 1
@___asan_gen_.390 = private unnamed_addr constant [39 x i8] c"switch.table.ocrdma_qp_state_change.88\00", align 1
@___asan_gen_.391 = private unnamed_addr constant [34 x i8] c"switch.table.ocrdma_mbx_modify_qp\00", align 1
@___asan_gen_.392 = private unnamed_addr constant [37 x i8] c"switch.table.ocrdma_mbx_modify_qp.89\00", align 1
@llvm.compiler.used = appending global [133 x ptr] [ptr @ocrdma_alloc_pd_pool._entry, ptr @ocrdma_alloc_pd_pool._entry_ptr, ptr @ocrdma_dispatch_ibevent._entry, ptr @ocrdma_dispatch_ibevent._entry.72, ptr @ocrdma_dispatch_ibevent._entry.75, ptr @ocrdma_dispatch_ibevent._entry.78, ptr @ocrdma_dispatch_ibevent._entry_ptr, ptr @ocrdma_dispatch_ibevent._entry_ptr.74, ptr @ocrdma_dispatch_ibevent._entry_ptr.77, ptr @ocrdma_dispatch_ibevent._entry_ptr.82, ptr @ocrdma_init_hw._entry, ptr @ocrdma_init_hw._entry_ptr, ptr @ocrdma_init_service_level._entry, ptr @ocrdma_init_service_level._entry.23, ptr @ocrdma_init_service_level._entry.26, ptr @ocrdma_init_service_level._entry_ptr, ptr @ocrdma_init_service_level._entry_ptr.25, ptr @ocrdma_init_service_level._entry_ptr.28, ptr @ocrdma_irq_handler._entry, ptr @ocrdma_irq_handler._entry_ptr, ptr @ocrdma_mbx_cmd._entry, ptr @ocrdma_mbx_cmd._entry.34, ptr @ocrdma_mbx_cmd._entry_ptr, ptr @ocrdma_mbx_cmd._entry_ptr.35, ptr @ocrdma_mbx_create_cq._entry, ptr @ocrdma_mbx_create_cq._entry_ptr, ptr @ocrdma_mbx_create_qp._entry, ptr @ocrdma_mbx_create_qp._entry.16, ptr @ocrdma_mbx_create_qp._entry_ptr, ptr @ocrdma_mbx_create_qp._entry_ptr.18, ptr @ocrdma_mbx_create_srq._entry, ptr @ocrdma_mbx_create_srq._entry_ptr, ptr @ocrdma_nonemb_mbx_cmd._entry, ptr @ocrdma_nonemb_mbx_cmd._entry_ptr, ptr @ocrdma_parse_dcbxcfg_rsp._entry, ptr @ocrdma_parse_dcbxcfg_rsp._entry.51, ptr @ocrdma_parse_dcbxcfg_rsp._entry.59, ptr @ocrdma_parse_dcbxcfg_rsp._entry.62, ptr @ocrdma_parse_dcbxcfg_rsp._entry_ptr, ptr @ocrdma_parse_dcbxcfg_rsp._entry_ptr.53, ptr @ocrdma_parse_dcbxcfg_rsp._entry_ptr.61, ptr @ocrdma_parse_dcbxcfg_rsp._entry_ptr.64, ptr @ocrdma_process_acqe._entry, ptr @ocrdma_process_acqe._entry_ptr, ptr @ocrdma_process_mcqe._entry, ptr @ocrdma_process_mcqe._entry_ptr, ptr @ocrdma_reg_mr._entry, ptr @ocrdma_reg_mr._entry.11, ptr @ocrdma_reg_mr._entry_ptr, ptr @ocrdma_reg_mr._entry_ptr.13, ptr @ocrdma_set_av_params._entry, ptr @ocrdma_set_av_params._entry.46, ptr @ocrdma_set_av_params._entry_ptr, ptr @ocrdma_set_av_params._entry_ptr.48, ptr @ocrdma_set_create_qp_rq_cmd._entry, ptr @ocrdma_set_create_qp_rq_cmd._entry_ptr, ptr @ocrdma_set_create_qp_sq_cmd._entry, ptr @ocrdma_set_create_qp_sq_cmd._entry_ptr, ptr @ocrdma_set_qp_params._entry, ptr @ocrdma_set_qp_params._entry_ptr, ptr @ocrdma_wait_mqe_cmpl._entry, ptr @ocrdma_wait_mqe_cmpl._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.60, ptr @.str.63, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.73, ptr @.str.76, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.83, ptr @.str.84, ptr @ocrdma_create_mq.__key, ptr @.str.85, ptr @ocrdma_create_mq.__key.86, ptr @.str.87, ptr @switch.table.get_ibqp_state, ptr @switch.table.ocrdma_mbx_cmd, ptr @switch.table.ocrdma_qp_state_change, ptr @switch.table.ocrdma_qp_state_change.88, ptr @switch.table.ocrdma_mbx_modify_qp, ptr @switch.table.ocrdma_mbx_modify_qp.89], section "llvm.metadata"
@0 = internal global [102 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocrdma_alloc_pd_pool._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocrdma_mbx_create_cq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocrdma_reg_mr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocrdma_reg_mr._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocrdma_mbx_create_qp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocrdma_mbx_create_qp._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocrdma_mbx_create_srq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocrdma_init_service_level._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocrdma_init_service_level._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocrdma_init_service_level._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocrdma_init_hw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocrdma_nonemb_mbx_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocrdma_mbx_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocrdma_mbx_cmd._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocrdma_wait_mqe_cmpl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocrdma_set_create_qp_sq_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocrdma_set_create_qp_rq_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocrdma_set_qp_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocrdma_set_av_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocrdma_set_av_params._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocrdma_parse_dcbxcfg_rsp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocrdma_parse_dcbxcfg_rsp._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocrdma_parse_dcbxcfg_rsp._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocrdma_parse_dcbxcfg_rsp._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocrdma_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocrdma_process_acqe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocrdma_dispatch_ibevent._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocrdma_dispatch_ibevent._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocrdma_dispatch_ibevent._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocrdma_dispatch_ibevent._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocrdma_process_mcqe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocrdma_create_mq.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocrdma_create_mq.__key.86 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.get_ibqp_state to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ocrdma_mbx_cmd to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ocrdma_qp_state_change to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ocrdma_qp_state_change.88 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ocrdma_mbx_modify_qp to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ocrdma_mbx_modify_qp.89 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @get_ibqp_state(i32 noundef %qps) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %qps)
  %0 = icmp ult i32 %qps, 8
  br i1 %0, label %switch.lookup, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.get_ibqp_state, i32 0, i32 %qps
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %entry.return_crit_edge
  %retval.0 = phi i32 [ %switch.load, %switch.lookup ], [ 6, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @port_speed_string(ptr nocapture noundef readonly %dev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %phy = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 21
  %fixed_speeds_supported = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 21, i32 1
  %0 = ptrtoint ptr %fixed_speeds_supported to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %fixed_speeds_supported, align 2
  %2 = ptrtoint ptr %phy to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %phy, align 64
  %or19 = or i16 %3, %1
  %conv4 = zext i16 %or19 to i32
  %and = and i32 %conv4, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end15_crit_edge

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15

if.else:                                          ; preds = %entry
  %and6 = and i32 %conv4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.else9, label %if.else.if.end15_crit_edge

if.else.if.end15_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15

if.else9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %and11 = and i32 %conv4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  %spec.select = select i1 %tobool12.not, ptr @.str, ptr @.str.3
  br label %if.end15

if.end15:                                         ; preds = %if.else9, %if.else.if.end15_crit_edge, %entry.if.end15_crit_edge
  %str.0 = phi ptr [ @.str.1, %entry.if.end15_crit_edge ], [ @.str.2, %if.else.if.end15_crit_edge ], [ %spec.select, %if.else9 ]
  ret ptr %str.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocrdma_ring_cq_db(ptr nocapture noundef readonly %dev, i16 noundef zeroext %cq_id, i1 noundef zeroext %armed, i1 noundef zeroext %solicited, i16 noundef zeroext %cqe_popped) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %cq_id to i32
  %and = and i32 %conv, 1023
  %and3 = shl nuw nsw i32 %conv, 1
  %shl = and i32 %and3, 6144
  %or = or i32 %shl, %and
  %or4 = or i32 %or, 536870912
  %spec.select = select i1 %armed, i32 %or4, i32 %or
  %or7 = or i32 %spec.select, -2147483648
  %val.1 = select i1 %solicited, i32 %or7, i32 %spec.select
  %conv9 = zext i16 %cqe_popped to i32
  %shl10 = shl nuw i32 %conv9, 16
  %or11 = or i32 %val.1, %shl10
  %nic_info = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 20
  %0 = ptrtoint ptr %nic_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic_info, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !174
  tail call void @arm_heavy_mb() #14
  %2 = tail call i32 @llvm.bswap.i32(i32 %or11) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #14, !srcloc !175
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ocrdma_get_irq(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %eq) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %intr_mode = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 20, i32 10
  %0 = ptrtoint ptr %intr_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %intr_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %pdev = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 20, i32 6
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %irq2 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 46
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %vector = getelementptr inbounds %struct.ocrdma_eq, ptr %eq, i32 0, i32 1
  %4 = ptrtoint ptr %vector to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vector, align 8
  %arrayidx = getelementptr %struct.ocrdma_dev, ptr %dev, i32 0, i32 20, i32 11, i32 2, i32 %5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %irq.0.in = phi ptr [ %irq2, %if.then ], [ %arrayidx, %if.else ]
  %6 = ptrtoint ptr %irq.0.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %irq.0 = load i32, ptr %irq.0.in, align 4
  ret i32 %irq.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocrdma_mbx_rdma_stats(ptr noundef %dev, i1 noundef zeroext %reset) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %reset to i8
  %stats_mem = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 35
  %va = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 35, i32 1
  %0 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %va, align 16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 1848) #17
  %cmp = icmp eq ptr %call7.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 35, i32 0, i32 0, i32 2
  %4 = call ptr @memset(ptr %3, i32 0, i32 248)
  %size = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 35, i32 3
  %5 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %size, align 8
  %pyld_len = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 35, i32 0, i32 0, i32 1
  %7 = ptrtoint ptr %pyld_len to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %pyld_len, align 4
  %8 = ptrtoint ptr %stats_mem to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 8, ptr %stats_mem, align 4
  %pa = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 35, i32 2
  %9 = ptrtoint ptr %pa to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pa, align 4
  %u = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 35, i32 0, i32 1
  %11 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %u, align 4
  %len = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 35, i32 0, i32 1, i32 0, i32 0, i32 2
  %12 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %6, ptr %len, align 4
  %13 = call ptr @memcpy(ptr %call7.i, ptr %1, i32 1848)
  %14 = call ptr @memset(ptr %1, i32 0, i32 %6)
  %15 = load i32, ptr %size, align 8
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2587, ptr %1, align 4
  %timeout.i = getelementptr inbounds %struct.ocrdma_mbx_hdr, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %timeout.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 20, ptr %timeout.i, align 4
  %sub.i = add i32 %15, -16
  %cmd_len2.i = getelementptr inbounds %struct.ocrdma_mbx_hdr, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %cmd_len2.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %sub.i, ptr %cmd_len2.i, align 4
  br i1 %reset, label %if.then21, label %if.end.if.end23_crit_edge

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

if.then21:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %reset_stats = getelementptr inbounds %struct.ocrdma_rdma_stats_req, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %reset_stats to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %frombool, ptr %reset_stats, align 1
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end.if.end23_crit_edge
  %20 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %va, align 16
  %22 = ptrtoint ptr %stats_mem to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %stats_mem, align 4
  %and.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.body.i

do.body.i:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/infiniband/hw/ocrdma/ocrdma_hw.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1124, 0\0A.popsection", ""() #14, !srcloc !176
  unreachable

if.end.i:                                         ; preds = %if.end23
  %call.i = tail call fastcc i32 @ocrdma_mbx_cmd(ptr noundef %dev, ptr noundef %stats_mem) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool4.not.i, label %if.then5.i, label %if.end.i.if.then28_crit_edge

if.end.i.if.then28_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then28

if.then5.i:                                       ; preds = %if.end.i
  %status6.i = getelementptr inbounds %struct.ocrdma_mbx_rsp, ptr %21, i32 0, i32 1
  %24 = ptrtoint ptr %status6.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %status6.i, align 4
  %and7.i = and i32 %25, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %if.then5.i.if.else_crit_edge, label %if.end13.i

if.then5.i.if.else_crit_edge:                     ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.end13.i:                                       ; preds = %if.then5.i
  %call11.i = tail call fastcc i32 @ocrdma_get_mbx_errno(i32 noundef %25) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool14.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool14.not.i, label %if.end13.i.if.else_crit_edge, label %if.end13.i.if.then28_crit_edge

if.end13.i.if.then28_crit_edge:                   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then28

if.end13.i.if.else_crit_edge:                     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.then28:                                        ; preds = %if.end13.i.if.then28_crit_edge, %if.end.i.if.then28_crit_edge
  %status.038.i = phi i32 [ %call11.i, %if.end13.i.if.then28_crit_edge ], [ %call.i, %if.end.i.if.then28_crit_edge ]
  %26 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %21, align 4
  %and19.i = and i32 %27, 255
  %and22.i = lshr i32 %27, 8
  %shr23.i = and i32 %and22.i, 255
  %call24.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i32 noundef %and19.i, i32 noundef %shr23.i) #18
  %28 = call ptr @memcpy(ptr %1, ptr %call7.i, i32 1848)
  br label %if.end31

if.else:                                          ; preds = %if.end13.i.if.else_crit_edge, %if.then5.i.if.else_crit_edge
  %29 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %30)
  %cmp7.not.i = icmp ult i32 %30, 4
  br i1 %cmp7.not.i, label %if.else.if.end31_crit_edge, label %for.body.preheader.i

if.else.if.end31_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31

for.body.preheader.i:                             ; preds = %if.else
  %div6.i = lshr i32 %30, 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.08.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %add.ptr.i = getelementptr i32, ptr %1, i32 %i.08.i
  %31 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %add.ptr.i, align 4
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #14
  %34 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %add.ptr.i, align 4
  %inc.i = add nuw nsw i32 %i.08.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %div6.i
  br i1 %exitcond.not.i, label %for.body.i.if.end31_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.body.i.if.end31_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31

if.end31:                                         ; preds = %for.body.i.if.end31_crit_edge, %if.else.if.end31_crit_edge, %if.then28
  %status.034.i63 = phi i32 [ %status.038.i, %if.then28 ], [ 0, %if.else.if.end31_crit_edge ], [ 0, %for.body.i.if.end31_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.034.i63, %if.end31 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocrdma_mbx_get_link_speed(ptr noundef %dev, ptr noundef writeonly %lnk_speed, ptr noundef writeonly %lnk_state) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 256) #17
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %call7.i.i.i, align 8
  %or.i = or i32 %2, 1
  store i32 %or.i, ptr %call7.i.i.i, align 8
  %pyld_len.i = getelementptr inbounds %struct.ocrdma_mqe_hdr, ptr %call7.i.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %pyld_len.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 236, ptr %pyld_len.i, align 4
  %u.i = getelementptr inbounds %struct.ocrdma_mqe, ptr %call7.i.i.i, i32 0, i32 1
  %timeout.i.i = getelementptr inbounds %struct.ocrdma_mqe, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 0, i32 1
  %cmd_len2.i.i = getelementptr inbounds %struct.ocrdma_mqe, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 0, i32 2
  %4 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 261, ptr %u.i, align 4
  %5 = ptrtoint ptr %timeout.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 20, ptr %timeout.i.i, align 8
  %6 = ptrtoint ptr %cmd_len2.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 240, ptr %cmd_len2.i.i, align 4
  %rsvd_version = getelementptr inbounds %struct.ocrdma_mqe, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 0, i32 3
  %7 = ptrtoint ptr %rsvd_version to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %rsvd_version, align 8
  %call2 = tail call fastcc i32 @ocrdma_mbx_cmd(ptr noundef %dev, ptr noundef nonnull %call7.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.mbx_err_crit_edge

if.end.mbx_err_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %mbx_err

if.end5:                                          ; preds = %if.end
  %tobool6.not = icmp eq ptr %lnk_speed, null
  br i1 %tobool6.not, label %if.end5.if.end8_crit_edge, label %if.then7

if.end5.if.end8_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  %pflt_pps_ld_pnum = getelementptr inbounds %struct.ocrdma_get_link_speed_rsp, ptr %call7.i.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %pflt_pps_ld_pnum to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pflt_pps_ld_pnum, align 4
  %and = lshr i32 %9, 16
  %conv = trunc i32 %and to i8
  %10 = ptrtoint ptr %lnk_speed to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %lnk_speed, align 1
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end5.if.end8_crit_edge
  %tobool9.not = icmp eq ptr %lnk_state, null
  br i1 %tobool9.not, label %if.end8.mbx_err_crit_edge, label %if.then10

if.end8.mbx_err_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %mbx_err

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  %res_lnk_st = getelementptr inbounds %struct.ocrdma_get_link_speed_rsp, ptr %call7.i.i.i, i32 0, i32 4
  %11 = ptrtoint ptr %res_lnk_st to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %res_lnk_st, align 4
  %13 = trunc i32 %12 to i8
  %conv12 = and i8 %13, 1
  %14 = ptrtoint ptr %lnk_state to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv12, ptr %lnk_state, align 1
  br label %mbx_err

mbx_err:                                          ; preds = %if.then10, %if.end8.mbx_err_crit_edge, %if.end.mbx_err_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #14
  br label %cleanup

cleanup:                                          ; preds = %mbx_err, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %mbx_err ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ocrdma_mbx_cmd(ptr noundef %dev, ptr noundef %mqe) unnamed_addr #3 align 64 {
entry:
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mqe_ctx = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %mqe_ctx, i32 noundef 0) #14
  %fw_error_state = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 19, i32 6
  %0 = ptrtoint ptr %fw_error_state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %fw_error_state, align 1, !range !177
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.mbx_err_crit_edge

entry.mbx_err_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %mbx_err

if.end:                                           ; preds = %entry
  %head.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 18, i32 0, i32 6
  %2 = ptrtoint ptr %head.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %head.i, align 2
  %conv.i = zext i16 %3 to i32
  %tag.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 19, i32 2
  %4 = ptrtoint ptr %tag.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv.i, ptr %tag.i, align 4
  %cmd_done.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 19, i32 5
  %5 = ptrtoint ptr %cmd_done.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %cmd_done.i, align 4
  %mq.i.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 18
  %6 = ptrtoint ptr %mq.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mq.i.i, align 8
  %mul.i.i = shl nuw nsw i32 %conv.i, 8
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %mul.i.i
  %tag_lo.i = getelementptr inbounds %struct.ocrdma_mqe_hdr, ptr %mqe, i32 0, i32 2
  %8 = ptrtoint ptr %tag_lo.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv.i, ptr %tag_lo.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end
  %i.01.i.i = phi i32 [ 0, %if.end ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %add.ptr.i13.i = getelementptr i32, ptr %mqe, i32 %i.01.i.i
  %9 = ptrtoint ptr %add.ptr.i13.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr.i13.i, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #14
  %add.ptr1.i.i = getelementptr i32, ptr %add.ptr.i.i, i32 %i.01.i.i
  %12 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %add.ptr1.i.i, align 4
  %inc.i.i = add nuw nsw i32 %i.01.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 64
  br i1 %exitcond.not.i.i, label %ocrdma_post_mqe.exit, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

ocrdma_post_mqe.exit:                             ; preds = %for.body.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !178
  tail call void @arm_heavy_mb() #14
  %13 = ptrtoint ptr %head.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %head.i, align 2
  %15 = add i16 %14, 1
  %16 = and i16 %15, 127
  store i16 %16, ptr %head.i, align 2
  %id.i.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 18, i32 0, i32 5
  %17 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %id.i.i, align 8
  %19 = and i16 %18, 2047
  %and.i.i = zext i16 %19 to i32
  %or1.i.i = or i32 %and.i.i, 65536
  %nic_info.i.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 20
  %20 = ptrtoint ptr %nic_info.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %nic_info.i.i, align 8
  %add.ptr.i15.i = getelementptr i8, ptr %21, i32 320
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !174
  tail call void @arm_heavy_mb() #14
  %22 = tail call i32 @llvm.bswap.i32(i32 %or1.i.i) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15.i, i32 %22) #14, !srcloc !175
  tail call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 1060) #14
  %23 = ptrtoint ptr %cmd_done.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %cmd_done.i, align 4, !range !177
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.not.i = icmp eq i8 %24, 0
  br i1 %tobool.not.not.i, label %if.then12.i, label %ocrdma_post_mqe.exit.if.end4_crit_edge

ocrdma_post_mqe.exit.if.end4_crit_edge:           ; preds = %ocrdma_post_mqe.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4

if.then12.i:                                      ; preds = %ocrdma_post_mqe.exit
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #14
  %25 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #14
  %cmd_wait.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 19, i32 1
  %call1676.i = call i32 @prepare_to_wait_event(ptr noundef %cmd_wait.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #14
  %26 = ptrtoint ptr %cmd_done.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %cmd_done.i, align 4, !range !177
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool20.not77.not.i = icmp eq i8 %27, 0
  br i1 %tobool20.not77.not.i, label %if.then12.i.cleanup.i_crit_edge, label %if.end46.thread.i

if.then12.i.cleanup.i_crit_edge:                  ; preds = %if.then12.i
  br label %cleanup.i

if.end46.thread.i:                                ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @finish_wait(ptr noundef %cmd_wait.i, ptr noundef nonnull %__wq_entry.i) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #14
  br label %if.end4

cleanup.i:                                        ; preds = %cleanup.i.cleanup.i_crit_edge, %if.then12.i.cleanup.i_crit_edge
  %__ret13.179.i = phi i32 [ %__ret13.1.i, %cleanup.i.cleanup.i_crit_edge ], [ 3000, %if.then12.i.cleanup.i_crit_edge ]
  %call42.i = call i32 @schedule_timeout(i32 noundef %__ret13.179.i) #14
  %call16.i = call i32 @prepare_to_wait_event(ptr noundef %cmd_wait.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #14
  %28 = ptrtoint ptr %cmd_done.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %cmd_done.i, align 4, !range !177
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool20.not.i = icmp eq i8 %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i)
  %tobool28.not.i = icmp eq i32 %call42.i, 0
  %spec.store.select57.i = select i1 %tobool28.not.i, i32 1, i32 %call42.i
  %__ret13.1.i = select i1 %tobool20.not.i, i32 %call42.i, i32 %spec.store.select57.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret13.1.i)
  %tobool35.not.i = icmp eq i32 %__ret13.1.i, 0
  %not.tobool20.not.i = xor i1 %tobool20.not.i, true
  %30 = select i1 %not.tobool20.not.i, i1 true, i1 %tobool35.not.i
  br i1 %30, label %if.end46.i, label %cleanup.i.cleanup.i_crit_edge

cleanup.i.cleanup.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.i

if.end46.i:                                       ; preds = %cleanup.i
  call void @finish_wait(ptr noundef %cmd_wait.i, ptr noundef nonnull %__wq_entry.i) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #14
  br i1 %tobool35.not.i, label %ocrdma_wait_mqe_cmpl.exit, label %if.end46.i.if.end4_crit_edge

if.end46.i.if.end4_crit_edge:                     ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4

ocrdma_wait_mqe_cmpl.exit:                        ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #16
  %31 = ptrtoint ptr %fw_error_state to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %fw_error_state, align 1
  %id.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 25
  %32 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %id.i, align 4
  %call55.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, i32 noundef %33) #18
  br label %mbx_err

if.end4:                                          ; preds = %if.end46.i.if.end4_crit_edge, %if.end46.thread.i, %ocrdma_post_mqe.exit.if.end4_crit_edge
  %cqe_status6 = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 19, i32 3
  %34 = ptrtoint ptr %cqe_status6 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %cqe_status6, align 4
  %ext_status8 = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 19, i32 4
  %36 = ptrtoint ptr %ext_status8 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %ext_status8, align 2
  %38 = ptrtoint ptr %mq.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mq.i.i, align 8
  %40 = ptrtoint ptr %tag.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tag.i, align 4
  %mul.i = shl i32 %41, 8
  %add.ptr.i = getelementptr i8, ptr %39, i32 %mul.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end4
  %i.01.i = phi i32 [ 0, %if.end4 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %add.ptr.i68 = getelementptr i32, ptr %add.ptr.i, i32 %i.01.i
  %42 = ptrtoint ptr %add.ptr.i68 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %add.ptr.i68, align 4
  %44 = call i32 @llvm.bswap.i32(i32 %43) #14
  %add.ptr1.i = getelementptr i32, ptr %mqe, i32 %i.01.i
  %45 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %add.ptr1.i, align 4
  %inc.i = add nuw nsw i32 %i.01.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 64
  br i1 %exitcond.not.i, label %ocrdma_copy_le32_to_cpu.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

ocrdma_copy_le32_to_cpu.exit:                     ; preds = %for.body.i
  %46 = ptrtoint ptr %mqe to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %mqe, align 4
  %and = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  %u = getelementptr inbounds %struct.ocrdma_mqe, ptr %mqe, i32 0, i32 1
  %spec.select = select i1 %tobool10.not, ptr null, ptr %u
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool13.not = icmp eq i16 %35, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %tobool15.not = icmp eq i16 %37, 0
  %or.cond = select i1 %tobool13.not, i1 %tobool15.not, i1 false
  br i1 %or.cond, label %if.end34, label %do.end

do.end:                                           ; preds = %ocrdma_copy_le32_to_cpu.exit
  %conv = zext i16 %35 to i32
  %conv18 = zext i16 %37 to i32
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, i32 noundef %conv, i32 noundef %conv18) #18
  %tobool20.not = icmp eq ptr %spec.select, null
  br i1 %tobool20.not, label %do.end.if.end32_crit_edge, label %do.end24

do.end.if.end32_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32

do.end24:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  %48 = ptrtoint ptr %spec.select to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %spec.select, align 4
  %and26 = and i32 %49, 255
  %and29 = lshr i32 %49, 8
  %shr30 = and i32 %and29, 255
  %call31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i32 noundef %and26, i32 noundef %shr30) #18
  br label %if.end32

if.end32:                                         ; preds = %do.end24, %do.end.if.end32_crit_edge
  %switch.tableidx = add i16 %35, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %switch.tableidx)
  %50 = icmp ult i16 %switch.tableidx, 4
  br i1 %50, label %switch.lookup, label %if.end32.mbx_err_crit_edge

if.end32.mbx_err_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  br label %mbx_err

if.end34:                                         ; preds = %ocrdma_copy_le32_to_cpu.exit
  %tobool35.not = icmp eq ptr %spec.select, null
  br i1 %tobool35.not, label %if.end34.mbx_err_crit_edge, label %land.lhs.true

if.end34.mbx_err_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #16
  br label %mbx_err

land.lhs.true:                                    ; preds = %if.end34
  %status37 = getelementptr inbounds %struct.ocrdma_mqe, ptr %mqe, i32 0, i32 1, i32 0, i32 0, i32 1
  %51 = ptrtoint ptr %status37 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %status37, align 4
  %and38 = and i32 %52, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %land.lhs.true.mbx_err_crit_edge, label %if.then40

land.lhs.true.mbx_err_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %mbx_err

if.then40:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %call43 = call fastcc i32 @ocrdma_get_mbx_errno(i32 noundef %52)
  br label %mbx_err

switch.lookup:                                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  %53 = sext i16 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.ocrdma_mbx_cmd, i32 0, i32 %53
  %54 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %54)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %mbx_err

mbx_err:                                          ; preds = %switch.lookup, %if.then40, %land.lhs.true.mbx_err_crit_edge, %if.end34.mbx_err_crit_edge, %if.end32.mbx_err_crit_edge, %ocrdma_wait_mqe_cmpl.exit, %entry.mbx_err_crit_edge
  %status.0 = phi i32 [ 0, %entry.mbx_err_crit_edge ], [ -1, %ocrdma_wait_mqe_cmpl.exit ], [ %call43, %if.then40 ], [ 0, %land.lhs.true.mbx_err_crit_edge ], [ 0, %if.end34.mbx_err_crit_edge ], [ %switch.load, %switch.lookup ], [ -22, %if.end32.mbx_err_crit_edge ]
  call void @mutex_unlock(ptr noundef %mqe_ctx) #14
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocrdma_mbx_alloc_pd(ptr noundef %dev, ptr nocapture noundef %pd) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 256) #17
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %call7.i.i.i, align 8
  %or.i = or i32 %2, 1
  store i32 %or.i, ptr %call7.i.i.i, align 8
  %pyld_len.i = getelementptr inbounds %struct.ocrdma_mqe_hdr, ptr %call7.i.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %pyld_len.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 20, ptr %pyld_len.i, align 4
  %u.i = getelementptr inbounds %struct.ocrdma_mqe, ptr %call7.i.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2562, ptr %u.i, align 4
  %timeout.i.i = getelementptr inbounds %struct.ocrdma_mqe, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 0, i32 1
  %5 = ptrtoint ptr %timeout.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 20, ptr %timeout.i.i, align 8
  %cmd_len2.i.i = getelementptr inbounds %struct.ocrdma_mqe, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 0, i32 2
  %6 = ptrtoint ptr %cmd_len2.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4, ptr %cmd_len2.i.i, align 4
  %dpp_enabled = getelementptr inbounds %struct.ocrdma_pd, ptr %pd, i32 0, i32 5
  %7 = ptrtoint ptr %dpp_enabled to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %dpp_enabled, align 4, !range !177
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool1.not = icmp eq i8 %8, 0
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %enable_dpp_rsvd = getelementptr inbounds %struct.ocrdma_alloc_pd, ptr %call7.i.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %enable_dpp_rsvd to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %enable_dpp_rsvd, align 4
  %or = or i32 %10, 65536
  store i32 %or, ptr %enable_dpp_rsvd, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %call4 = tail call fastcc i32 @ocrdma_mbx_cmd(ptr noundef %dev, ptr noundef nonnull %call7.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end3.mbx_err_crit_edge

if.end3.mbx_err_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %mbx_err

if.end7:                                          ; preds = %if.end3
  %dpp_page_pdid = getelementptr inbounds %struct.ocrdma_alloc_pd_rsp, ptr %call7.i.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %dpp_page_pdid to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dpp_page_pdid, align 4
  %and = and i32 %12, 65535
  %id = getelementptr inbounds %struct.ocrdma_pd, ptr %pd, i32 0, i32 2
  %13 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %and, ptr %id, align 4
  %and9 = and i32 %12, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  %14 = ptrtoint ptr %dpp_enabled to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %dpp_enabled, align 4
  %shr = lshr i32 %12, 20
  %dpp_page = getelementptr inbounds %struct.ocrdma_pd, ptr %pd, i32 0, i32 4
  %15 = ptrtoint ptr %dpp_page to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %shr, ptr %dpp_page, align 4
  br label %mbx_err

if.else:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  %16 = ptrtoint ptr %dpp_enabled to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %dpp_enabled, align 4
  %num_dpp_qp = getelementptr inbounds %struct.ocrdma_pd, ptr %pd, i32 0, i32 3
  %17 = ptrtoint ptr %num_dpp_qp to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %num_dpp_qp, align 4
  br label %mbx_err

mbx_err:                                          ; preds = %if.else, %if.then11, %if.end3.mbx_err_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #14
  br label %cleanup

cleanup:                                          ; preds = %mbx_err, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %mbx_err ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocrdma_mbx_dealloc_pd(ptr noundef %dev, ptr nocapture noundef readonly %pd) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 256) #17
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %1 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %call7.i.i.i, align 8
  %or.i = or i32 %2, 1
  store i32 %or.i, ptr %call7.i.i.i, align 8
  %pyld_len.i = getelementptr inbounds %struct.ocrdma_mqe_hdr, ptr %call7.i.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %pyld_len.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 20, ptr %pyld_len.i, align 4
  %u.i = getelementptr inbounds %struct.ocrdma_mqe, ptr %call7.i.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2563, ptr %u.i, align 4
  %timeout.i.i = getelementptr inbounds %struct.ocrdma_mqe, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 0, i32 1
  %5 = ptrtoint ptr %timeout.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 20, ptr %timeout.i.i, align 8
  %cmd_len2.i.i = getelementptr inbounds %struct.ocrdma_mqe, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 0, i32 2
  %6 = ptrtoint ptr %cmd_len2.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4, ptr %cmd_len2.i.i, align 4
  %id = getelementptr inbounds %struct.ocrdma_pd, ptr %pd, i32 0, i32 2
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id, align 4
  %id1 = getelementptr inbounds %struct.ocrdma_dealloc_pd, ptr %call7.i.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %id1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %id1, align 4
  %call2 = tail call fastcc i32 @ocrdma_mbx_cmd(ptr noundef %dev, ptr noundef nonnull %call7.i.i.i)
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocrdma_alloc_pd_pool(ptr noundef %dev) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 36) #17
  %pd_mgr = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 50
  %1 = ptrtoint ptr %pd_mgr to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %pd_mgr, align 8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %max_dpp_pds.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 1, i32 4
  %2 = ptrtoint ptr %max_dpp_pds.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %max_dpp_pds.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not.i = icmp eq i16 %3, 0
  br i1 %tobool.not.i, label %if.end.if.end24.i_crit_edge, label %if.then.i

if.end.if.end24.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24.i

if.then.i:                                        ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 256) #17
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then.i.do.end_crit_edge, label %if.end.i

if.then.i.do.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.end.i:                                         ; preds = %if.then.i
  %5 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %call7.i.i.i.i, align 8
  %or.i.i = or i32 %6, 1
  store i32 %or.i.i, ptr %call7.i.i.i.i, align 8
  %pyld_len.i.i = getelementptr inbounds %struct.ocrdma_mqe_hdr, ptr %call7.i.i.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %pyld_len.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 24, ptr %pyld_len.i.i, align 4
  %u.i.i = getelementptr inbounds %struct.ocrdma_mqe, ptr %call7.i.i.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %u.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2588, ptr %u.i.i, align 4
  %timeout.i.i.i = getelementptr inbounds %struct.ocrdma_mqe, ptr %call7.i.i.i.i, i32 0, i32 1, i32 0, i32 0, i32 1
  %9 = ptrtoint ptr %timeout.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 20, ptr %timeout.i.i.i, align 8
  %cmd_len2.i.i.i = getelementptr inbounds %struct.ocrdma_mqe, ptr %call7.i.i.i.i, i32 0, i32 1, i32 0, i32 0, i32 2
  %10 = ptrtoint ptr %cmd_len2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 8, ptr %cmd_len2.i.i.i, align 4
  %11 = ptrtoint ptr %max_dpp_pds.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %max_dpp_pds.i, align 2
  %conv.i = zext i16 %12 to i32
  %pd_count.i = getelementptr inbounds %struct.ocrdma_alloc_pd_range, ptr %call7.i.i.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %pd_count.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv.i, ptr %pd_count.i, align 8
  %enable_dpp_rsvd.i = getelementptr inbounds %struct.ocrdma_alloc_pd_range, ptr %call7.i.i.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %enable_dpp_rsvd.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %enable_dpp_rsvd.i, align 4
  %or.i = or i32 %15, 65536
  store i32 %or.i, ptr %enable_dpp_rsvd.i, align 4
  %call5.i = tail call fastcc i32 @ocrdma_mbx_cmd(ptr noundef %dev, ptr noundef nonnull %call7.i.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i, label %if.end.i.if.end23.i_crit_edge

if.end.i.if.end23.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %16 = ptrtoint ptr %enable_dpp_rsvd.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %enable_dpp_rsvd.i, align 4
  %and.i = and i32 %17, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool7.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool7.not.i, label %land.lhs.true.i.if.end23.i_crit_edge, label %land.lhs.true8.i

land.lhs.true.i.if.end23.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23.i

land.lhs.true8.i:                                 ; preds = %land.lhs.true.i
  %18 = ptrtoint ptr %pd_count.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pd_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool10.not.i = icmp eq i32 %19, 0
  br i1 %tobool10.not.i, label %land.lhs.true8.i.if.end23.i_crit_edge, label %if.then11.i

land.lhs.true8.i.if.end23.i_crit_edge:            ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23.i

if.then11.i:                                      ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #16
  %shr.i = lshr i32 %17, 20
  %conv13.i = trunc i32 %shr.i to i16
  %20 = ptrtoint ptr %pd_mgr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pd_mgr, align 8
  %dpp_page_index.i = getelementptr inbounds %struct.ocrdma_pd_resource_mgr, ptr %21, i32 0, i32 8
  %22 = ptrtoint ptr %dpp_page_index.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv13.i, ptr %dpp_page_index.i, align 2
  %23 = ptrtoint ptr %enable_dpp_rsvd.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %enable_dpp_rsvd.i, align 4
  %and15.i = and i32 %24, 65535
  %25 = load ptr, ptr %pd_mgr, align 8
  %pd_dpp_start.i = getelementptr inbounds %struct.ocrdma_pd_resource_mgr, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %pd_dpp_start.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %and15.i, ptr %pd_dpp_start.i, align 4
  %27 = ptrtoint ptr %pd_count.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pd_count.i, align 8
  %conv18.i = trunc i32 %28 to i16
  %29 = load ptr, ptr %pd_mgr, align 8
  %max_dpp_pd.i = getelementptr inbounds %struct.ocrdma_pd_resource_mgr, ptr %29, i32 0, i32 7
  %30 = ptrtoint ptr %max_dpp_pd.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv18.i, ptr %max_dpp_pd.i, align 4
  %31 = load i32, ptr %pd_count.i, align 8
  %call21.i = tail call ptr @bitmap_zalloc(i32 noundef %31, i32 noundef 3264) #14
  %32 = ptrtoint ptr %pd_mgr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pd_mgr, align 8
  %pd_dpp_bitmap.i = getelementptr inbounds %struct.ocrdma_pd_resource_mgr, ptr %33, i32 0, i32 10
  %34 = ptrtoint ptr %pd_dpp_bitmap.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call21.i, ptr %pd_dpp_bitmap.i, align 4
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then11.i, %land.lhs.true8.i.if.end23.i_crit_edge, %land.lhs.true.i.if.end23.i_crit_edge, %if.end.i.if.end23.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #14
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.end23.i, %if.end.if.end24.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %35 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i98.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %35, i32 noundef 3520, i32 noundef 256) #17
  %tobool.not.i99.i = icmp eq ptr %call7.i.i.i98.i, null
  br i1 %tobool.not.i99.i, label %if.end24.i.do.end_crit_edge, label %if.end28.i

if.end24.i.do.end_crit_edge:                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.end28.i:                                       ; preds = %if.end24.i
  %36 = ptrtoint ptr %call7.i.i.i98.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %call7.i.i.i98.i, align 8
  %or.i100.i = or i32 %37, 1
  store i32 %or.i100.i, ptr %call7.i.i.i98.i, align 8
  %pyld_len.i101.i = getelementptr inbounds %struct.ocrdma_mqe_hdr, ptr %call7.i.i.i98.i, i32 0, i32 1
  %38 = ptrtoint ptr %pyld_len.i101.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 24, ptr %pyld_len.i101.i, align 4
  %u.i102.i = getelementptr inbounds %struct.ocrdma_mqe, ptr %call7.i.i.i98.i, i32 0, i32 1
  %39 = ptrtoint ptr %u.i102.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 2588, ptr %u.i102.i, align 4
  %timeout.i.i103.i = getelementptr inbounds %struct.ocrdma_mqe, ptr %call7.i.i.i98.i, i32 0, i32 1, i32 0, i32 0, i32 1
  %40 = ptrtoint ptr %timeout.i.i103.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 20, ptr %timeout.i.i103.i, align 8
  %cmd_len2.i.i104.i = getelementptr inbounds %struct.ocrdma_mqe, ptr %call7.i.i.i98.i, i32 0, i32 1, i32 0, i32 0, i32 2
  %41 = ptrtoint ptr %cmd_len2.i.i104.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 8, ptr %cmd_len2.i.i104.i, align 4
  %max_pd.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 1, i32 3
  %42 = ptrtoint ptr %max_pd.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %max_pd.i, align 8
  %conv30.i = zext i16 %43 to i32
  %44 = ptrtoint ptr %max_dpp_pds.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %max_dpp_pds.i, align 2
  %conv33.i = zext i16 %45 to i32
  %sub.i = sub nsw i32 %conv30.i, %conv33.i
  %pd_count34.i = getelementptr inbounds %struct.ocrdma_alloc_pd_range, ptr %call7.i.i.i98.i, i32 0, i32 3
  %46 = ptrtoint ptr %pd_count34.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %sub.i, ptr %pd_count34.i, align 8
  %call35.i = tail call fastcc i32 @ocrdma_mbx_cmd(ptr noundef %dev, ptr noundef nonnull %call7.i.i.i98.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %tobool36.not.i = icmp eq i32 %call35.i, 0
  br i1 %tobool36.not.i, label %land.lhs.true37.i, label %if.end28.i.if.end50.i_crit_edge

if.end28.i.if.end50.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end50.i

land.lhs.true37.i:                                ; preds = %if.end28.i
  %47 = ptrtoint ptr %pd_count34.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %pd_count34.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool39.not.i = icmp eq i32 %48, 0
  br i1 %tobool39.not.i, label %land.lhs.true37.i.if.end50.i_crit_edge, label %if.then40.i

land.lhs.true37.i.if.end50.i_crit_edge:           ; preds = %land.lhs.true37.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end50.i

if.then40.i:                                      ; preds = %land.lhs.true37.i
  call void @__sanitizer_cov_trace_pc() #16
  %dpp_page_pdid41.i = getelementptr inbounds %struct.ocrdma_alloc_pd_range_rsp, ptr %call7.i.i.i98.i, i32 0, i32 2
  %49 = ptrtoint ptr %dpp_page_pdid41.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %dpp_page_pdid41.i, align 4
  %and42.i = and i32 %50, 65535
  %51 = ptrtoint ptr %pd_mgr to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pd_mgr, align 8
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %and42.i, ptr %52, align 4
  %54 = ptrtoint ptr %pd_count34.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %pd_count34.i, align 8
  %conv45.i = trunc i32 %55 to i16
  %56 = load ptr, ptr %pd_mgr, align 8
  %max_normal_pd.i = getelementptr inbounds %struct.ocrdma_pd_resource_mgr, ptr %56, i32 0, i32 3
  %57 = ptrtoint ptr %max_normal_pd.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %conv45.i, ptr %max_normal_pd.i, align 4
  %58 = load i32, ptr %pd_count34.i, align 8
  %call48.i = tail call ptr @bitmap_zalloc(i32 noundef %58, i32 noundef 3264) #14
  %59 = ptrtoint ptr %pd_mgr to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pd_mgr, align 8
  %pd_norm_bitmap.i = getelementptr inbounds %struct.ocrdma_pd_resource_mgr, ptr %60, i32 0, i32 9
  %61 = ptrtoint ptr %pd_norm_bitmap.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call48.i, ptr %pd_norm_bitmap.i, align 4
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.then40.i, %land.lhs.true37.i.if.end50.i_crit_edge, %if.end28.i.if.end50.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i98.i) #14
  %62 = ptrtoint ptr %pd_mgr to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pd_mgr, align 8
  %pd_norm_bitmap52.i = getelementptr inbounds %struct.ocrdma_pd_resource_mgr, ptr %63, i32 0, i32 9
  %64 = ptrtoint ptr %pd_norm_bitmap52.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pd_norm_bitmap52.i, align 4
  %tobool53.not.i = icmp eq ptr %65, null
  br i1 %tobool53.not.i, label %lor.lhs.false.i, label %if.end50.i.ocrdma_mbx_alloc_pd_range.exit.thread12_crit_edge

if.end50.i.ocrdma_mbx_alloc_pd_range.exit.thread12_crit_edge: ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ocrdma_mbx_alloc_pd_range.exit.thread12

lor.lhs.false.i:                                  ; preds = %if.end50.i
  %pd_dpp_bitmap55.i = getelementptr inbounds %struct.ocrdma_pd_resource_mgr, ptr %63, i32 0, i32 10
  %66 = ptrtoint ptr %pd_dpp_bitmap55.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pd_dpp_bitmap55.i, align 4
  %tobool56.not.i = icmp eq ptr %67, null
  br i1 %tobool56.not.i, label %ocrdma_mbx_alloc_pd_range.exit, label %lor.lhs.false.i.ocrdma_mbx_alloc_pd_range.exit.thread12_crit_edge

lor.lhs.false.i.ocrdma_mbx_alloc_pd_range.exit.thread12_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ocrdma_mbx_alloc_pd_range.exit.thread12

ocrdma_mbx_alloc_pd_range.exit.thread12:          ; preds = %lor.lhs.false.i.ocrdma_mbx_alloc_pd_range.exit.thread12_crit_edge, %if.end50.i.ocrdma_mbx_alloc_pd_range.exit.thread12_crit_edge
  %pd_prealloc_valid.i = getelementptr inbounds %struct.ocrdma_pd_resource_mgr, ptr %63, i32 0, i32 11
  %68 = ptrtoint ptr %pd_prealloc_valid.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 1, ptr %pd_prealloc_valid.i, align 4
  br label %cleanup

ocrdma_mbx_alloc_pd_range.exit:                   ; preds = %lor.lhs.false.i
  br i1 %tobool36.not.i, label %ocrdma_mbx_alloc_pd_range.exit.cleanup_crit_edge, label %ocrdma_mbx_alloc_pd_range.exit.do.end_crit_edge

ocrdma_mbx_alloc_pd_range.exit.do.end_crit_edge:  ; preds = %ocrdma_mbx_alloc_pd_range.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

ocrdma_mbx_alloc_pd_range.exit.cleanup_crit_edge: ; preds = %ocrdma_mbx_alloc_pd_range.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end:                                           ; preds = %ocrdma_mbx_alloc_pd_range.exit.do.end_crit_edge, %if.end24.i.do.end_crit_edge, %if.then.i.do.end_crit_edge
  %id = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 25
  %69 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %id, align 4
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef %70) #18
  br label %cleanup

cleanup:                                          ; preds = %do.end, %ocrdma_mbx_alloc_pd_range.exit.cleanup_crit_edge, %ocrdma_mbx_alloc_pd_range.exit.thread12, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocrdma_mbx_create_cq(ptr noundef %dev, ptr noundef %cq, i32 noundef %entries, i32 noundef %dpp_cq, i16 noundef zeroext %pd_id) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 20, i32 6
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 4
  %max_cqe = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 1, i32 6
  %2 = ptrtoint ptr %max_cqe to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %max_cqe, align 2
  %conv = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %entries)
  %cmp = icmp slt i32 %conv, %entries
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %id = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 25
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %5, i32 noundef %conv, i32 noundef %entries) #18
  br label %cleanup113

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dpp_cq)
  %tobool.not = icmp eq i32 %dpp_cq, 0
  br i1 %tobool.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %dev_family.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 20, i32 9
  %6 = ptrtoint ptr %dev_family.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dev_family.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %7)
  %cmp.i = icmp eq i32 %7, 15
  br i1 %cmp.i, label %land.lhs.true.i, label %land.lhs.true.ocrdma_get_asic_type.exit_crit_edge

land.lhs.true.ocrdma_get_asic_type.exit_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %ocrdma_get_asic_type.exit

land.lhs.true.i:                                  ; preds = %land.lhs.true
  %asic_id.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 31
  %8 = ptrtoint ptr %asic_id.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %asic_id.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %if.then.i, label %land.lhs.true.i.ocrdma_get_asic_type.exit_crit_edge

land.lhs.true.i.ocrdma_get_asic_type.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ocrdma_get_asic_type.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i = tail call i32 @pci_read_config_dword(ptr noundef %1, i32 noundef 156, ptr noundef %asic_id.i) #14
  br label %ocrdma_get_asic_type.exit

ocrdma_get_asic_type.exit:                        ; preds = %if.then.i, %land.lhs.true.i.ocrdma_get_asic_type.exit_crit_edge, %land.lhs.true.ocrdma_get_asic_type.exit_crit_edge
  %asic_id3.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 31
  %10 = ptrtoint ptr %asic_id3.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %asic_id3.i, align 8
  %and.i = lshr i32 %11, 8
  %conv.i = trunc i32 %and.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %conv.i)
  %cmp8.not = icmp eq i8 %conv.i, 4
  br i1 %cmp8.not, label %if.then13.critedge, label %ocrdma_get_asic_type.exit.cleanup113_crit_edge

ocrdma_get_asic_type.exit.cleanup113_crit_edge:   ; preds = %ocrdma_get_asic_type.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup113

if.then13.critedge:                               ; preds = %ocrdma_get_asic_type.exit
  call void @__sanitizer_cov_trace_pc() #16
  %max_hw_cqe14 = getelementptr inbounds %struct.ocrdma_cq, ptr %cq, i32 0, i32 4
  %12 = ptrtoint ptr %max_hw_cqe14 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %max_hw_cqe14, align 4
  br label %if.end22

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %max_hw_cqe18 = getelementptr inbounds %struct.ocrdma_cq, ptr %cq, i32 0, i32 4
  %13 = ptrtoint ptr %max_hw_cqe18 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv, ptr %max_hw_cqe18, align 4
  %14 = ptrtoint ptr %max_cqe to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %max_cqe, align 2
  %conv21 = zext i16 %15 to i32
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then13.critedge
  %hw_pages.0 = phi i32 [ 1, %if.then13.critedge ], [ 4, %if.else ]
  %cqe_size.0 = phi i32 [ 4, %if.then13.critedge ], [ 16, %if.else ]
  %max_hw_cqe.0 = phi i32 [ 1, %if.then13.critedge ], [ %conv21, %if.else ]
  %mul = mul nuw nsw i32 %max_hw_cqe.0, %cqe_size.0
  %add = add nuw nsw i32 %mul, 4095
  %div186 = and i32 %add, 4190208
  %len = getelementptr inbounds %struct.ocrdma_cq, ptr %cq, i32 0, i32 14
  %16 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %div186, ptr %len, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %17 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3520, i32 noundef 256) #17
  %tobool.not.i188 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i188, label %if.end22.cleanup113_crit_edge, label %if.end28

if.end22.cleanup113_crit_edge:                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup113

if.end28:                                         ; preds = %if.end22
  %18 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %call7.i.i.i, align 8
  %or.i = or i32 %19, 1
  store i32 %or.i, ptr %call7.i.i.i, align 8
  %pyld_len.i = getelementptr inbounds %struct.ocrdma_mqe_hdr, ptr %call7.i.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %pyld_len.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 68, ptr %pyld_len.i, align 4
  %u.i = getelementptr inbounds %struct.ocrdma_mqe, ptr %call7.i.i.i, i32 0, i32 1
  %timeout.i.i = getelementptr inbounds %struct.ocrdma_mqe, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 0, i32 1
  %cmd_len2.i.i = getelementptr inbounds %struct.ocrdma_mqe, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 0, i32 2
  %21 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 268, ptr %u.i, align 4
  %22 = ptrtoint ptr %timeout.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 20, ptr %timeout.i.i, align 8
  %23 = ptrtoint ptr %cmd_len2.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 72, ptr %cmd_len2.i.i, align 4
  %dev30 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %24 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len, align 8
  %pa = getelementptr inbounds %struct.ocrdma_cq, ptr %cq, i32 0, i32 13
  %call.i189 = tail call ptr @dma_alloc_attrs(ptr noundef %dev30, i32 noundef %25, ptr noundef %pa, i32 noundef 3264, i32 noundef 0) #14
  %va = getelementptr inbounds %struct.ocrdma_cq, ptr %cq, i32 0, i32 1
  %26 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i189, ptr %va, align 16
  %tobool34.not = icmp eq ptr %call.i189, null
  br i1 %tobool34.not, label %if.end28.mem_err_crit_edge, label %if.end36

if.end28.mem_err_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  br label %mem_err

if.end36:                                         ; preds = %if.end28
  %27 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len, align 8
  %div38 = udiv i32 %28, %hw_pages.0
  %29 = shl i32 %div38, 4
  %shl = and i32 %29, -65536
  %pgsz_pgcnt = getelementptr inbounds %struct.ocrdma_create_cq, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %or = or i32 %shl, %hw_pages.0
  %30 = ptrtoint ptr %pgsz_pgcnt to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %or, ptr %pgsz_pgcnt, align 4
  %ev_cnt_flags = getelementptr inbounds %struct.ocrdma_create_cq, ptr %call7.i.i.i, i32 0, i32 1, i32 2
  %31 = ptrtoint ptr %ev_cnt_flags to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1610596352, ptr %ev_cnt_flags, align 8
  %dev_lock.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %dev_lock.i, i32 noundef 0) #14
  %eq_tbl.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 7
  %32 = ptrtoint ptr %eq_tbl.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %eq_tbl.i, align 4
  %id.i = getelementptr inbounds %struct.ocrdma_queue_info, ptr %33, i32 0, i32 5
  %34 = ptrtoint ptr %id.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %id.i, align 8
  %eq_cnt.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 8
  %36 = ptrtoint ptr %eq_cnt.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %eq_cnt.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp32.i = icmp sgt i32 %37, 0
  br i1 %cmp32.i, label %for.body.preheader.i, label %if.end36.ocrdma_bind_eq.exit_crit_edge

if.end36.ocrdma_bind_eq.exit_crit_edge:           ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #16
  br label %ocrdma_bind_eq.exit

for.body.preheader.i:                             ; preds = %if.end36
  %cq_cnt1.i = getelementptr inbounds %struct.ocrdma_eq, ptr %33, i32 0, i32 2
  %38 = ptrtoint ptr %cq_cnt1.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cq_cnt1.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %eq_id.037.i = phi i16 [ %eq_id.1.i, %for.inc.i.for.body.i_crit_edge ], [ %35, %for.body.preheader.i ]
  %cq_cnt.036.i = phi i32 [ %cq_cnt.1.i, %for.inc.i.for.body.i_crit_edge ], [ %39, %for.body.preheader.i ]
  %selected_eq.035.i = phi i32 [ %selected_eq.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %i.033.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %cq_cnt6.i = getelementptr %struct.ocrdma_eq, ptr %33, i32 %i.033.i, i32 2
  %40 = ptrtoint ptr %cq_cnt6.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cq_cnt6.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %cq_cnt.036.i)
  %cmp7.i = icmp slt i32 %41, %cq_cnt.036.i
  br i1 %cmp7.i, label %if.then.i190, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.then.i190:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %id14.i = getelementptr %struct.ocrdma_eq, ptr %33, i32 %i.033.i, i32 0, i32 5
  %42 = ptrtoint ptr %id14.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %id14.i, align 8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i190, %for.body.i.for.inc.i_crit_edge
  %selected_eq.1.i = phi i32 [ %i.033.i, %if.then.i190 ], [ %selected_eq.035.i, %for.body.i.for.inc.i_crit_edge ]
  %cq_cnt.1.i = phi i32 [ %41, %if.then.i190 ], [ %cq_cnt.036.i, %for.body.i.for.inc.i_crit_edge ]
  %eq_id.1.i = phi i16 [ %43, %if.then.i190 ], [ %eq_id.037.i, %for.body.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.033.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %37
  br i1 %exitcond.not.i, label %for.inc.i.ocrdma_bind_eq.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.inc.i.ocrdma_bind_eq.exit_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ocrdma_bind_eq.exit

ocrdma_bind_eq.exit:                              ; preds = %for.inc.i.ocrdma_bind_eq.exit_crit_edge, %if.end36.ocrdma_bind_eq.exit_crit_edge
  %selected_eq.0.lcssa.i = phi i32 [ 0, %if.end36.ocrdma_bind_eq.exit_crit_edge ], [ %selected_eq.1.i, %for.inc.i.ocrdma_bind_eq.exit_crit_edge ]
  %eq_id.0.lcssa.i = phi i16 [ %35, %if.end36.ocrdma_bind_eq.exit_crit_edge ], [ %eq_id.1.i, %for.inc.i.ocrdma_bind_eq.exit_crit_edge ]
  %cq_cnt17.i = getelementptr %struct.ocrdma_eq, ptr %33, i32 %selected_eq.0.lcssa.i, i32 2
  %44 = ptrtoint ptr %cq_cnt17.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cq_cnt17.i, align 4
  %add.i = add i32 %45, 1
  store i32 %add.i, ptr %cq_cnt17.i, align 4
  tail call void @mutex_unlock(ptr noundef %dev_lock.i) #14
  %eqn = getelementptr inbounds %struct.ocrdma_cq, ptr %cq, i32 0, i32 11
  %46 = ptrtoint ptr %eqn to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %eq_id.0.lcssa.i, ptr %eqn, align 2
  %rsvd_version = getelementptr inbounds %struct.ocrdma_create_cq, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 3
  %47 = ptrtoint ptr %rsvd_version to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 3, ptr %rsvd_version, align 8
  %48 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %len, align 8
  %div48 = udiv i32 %49, %cqe_size.0
  %cqe_cnt = getelementptr inbounds %struct.ocrdma_cq, ptr %cq, i32 0, i32 15
  %50 = ptrtoint ptr %cqe_cnt to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %div48, ptr %cqe_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %div48)
  %cmp49 = icmp ugt i32 %div48, 1024
  br i1 %cmp49, label %ocrdma_bind_eq.exit.if.end63_crit_edge, label %if.else55

ocrdma_bind_eq.exit.if.end63_crit_edge:           ; preds = %ocrdma_bind_eq.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end63

if.else55:                                        ; preds = %ocrdma_bind_eq.exit
  %51 = zext i32 %div48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values)
  switch i32 %div48, label %if.else55.mbx_err_crit_edge [
    i32 256, label %if.else55.if.end63_crit_edge
    i32 512, label %sw.bb56
    i32 1024, label %sw.bb57
  ]

if.else55.if.end63_crit_edge:                     ; preds = %if.else55
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end63

if.else55.mbx_err_crit_edge:                      ; preds = %if.else55
  call void @__sanitizer_cov_trace_pc() #16
  br label %mbx_err

sw.bb56:                                          ; preds = %if.else55
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end63

sw.bb57:                                          ; preds = %if.else55
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end63

if.end63:                                         ; preds = %sw.bb57, %sw.bb56, %if.else55.if.end63_crit_edge, %ocrdma_bind_eq.exit.if.end63_crit_edge
  %count.0.sink = phi i32 [ 402653184, %ocrdma_bind_eq.exit.if.end63_crit_edge ], [ 268435456, %sw.bb57 ], [ 134217728, %sw.bb56 ], [ 0, %if.else55.if.end63_crit_edge ]
  %52 = ptrtoint ptr %ev_cnt_flags to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %ev_cnt_flags, align 8
  %or62 = or i32 %53, %count.0.sink
  store i32 %or62, ptr %ev_cnt_flags, align 8
  %conv65 = zext i16 %eq_id.0.lcssa.i to i32
  %eqn67 = getelementptr inbounds %struct.ocrdma_create_cq, ptr %call7.i.i.i, i32 0, i32 1, i32 3
  %54 = ptrtoint ptr %eqn67 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %conv65, ptr %eqn67, align 4
  %dev_family.i191 = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 20, i32 9
  %55 = ptrtoint ptr %dev_family.i191 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %dev_family.i191, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %56)
  %cmp.i192 = icmp eq i32 %56, 15
  br i1 %cmp.i192, label %land.lhs.true.i195, label %if.end63.ocrdma_get_asic_type.exit203_crit_edge

if.end63.ocrdma_get_asic_type.exit203_crit_edge:  ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #16
  br label %ocrdma_get_asic_type.exit203

land.lhs.true.i195:                               ; preds = %if.end63
  %asic_id.i193 = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 31
  %57 = ptrtoint ptr %asic_id.i193 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %asic_id.i193, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.not.i194 = icmp eq i32 %58, 0
  br i1 %tobool.not.i194, label %if.then.i198, label %land.lhs.true.i195.ocrdma_get_asic_type.exit203_crit_edge

land.lhs.true.i195.ocrdma_get_asic_type.exit203_crit_edge: ; preds = %land.lhs.true.i195
  call void @__sanitizer_cov_trace_pc() #16
  br label %ocrdma_get_asic_type.exit203

if.then.i198:                                     ; preds = %land.lhs.true.i195
  call void @__sanitizer_cov_trace_pc() #16
  %59 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pdev1, align 4
  %call.i197 = tail call i32 @pci_read_config_dword(ptr noundef %60, i32 noundef 156, ptr noundef %asic_id.i193) #14
  br label %ocrdma_get_asic_type.exit203

ocrdma_get_asic_type.exit203:                     ; preds = %if.then.i198, %land.lhs.true.i195.ocrdma_get_asic_type.exit203_crit_edge, %if.end63.ocrdma_get_asic_type.exit203_crit_edge
  %asic_id3.i199 = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 31
  %61 = ptrtoint ptr %asic_id3.i199 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %asic_id3.i199, align 8
  %and.i200 = lshr i32 %62, 8
  %conv.i201 = trunc i32 %and.i200 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %conv.i201)
  %cmp70 = icmp eq i8 %conv.i201, 4
  br i1 %cmp70, label %if.then72, label %if.else82

if.then72:                                        ; preds = %ocrdma_get_asic_type.exit203
  br i1 %tobool.not, label %if.then72.if.end78_crit_edge, label %if.then74

if.then72.if.end78_crit_edge:                     ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end78

if.then74:                                        ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #16
  %63 = ptrtoint ptr %pgsz_pgcnt to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %pgsz_pgcnt, align 4
  %or77 = or i32 %64, 16777216
  store i32 %or77, ptr %pgsz_pgcnt, align 4
  br label %if.end78

if.end78:                                         ; preds = %if.then74, %if.then72.if.end78_crit_edge
  %phase_change = getelementptr inbounds %struct.ocrdma_cq, ptr %cq, i32 0, i32 5
  %65 = ptrtoint ptr %phase_change to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 0, ptr %phase_change, align 32
  %66 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %len, align 8
  %div80 = udiv i32 %67, %cqe_size.0
  %pdid_cqecnt = getelementptr inbounds %struct.ocrdma_create_cq, ptr %call7.i.i.i, i32 0, i32 1, i32 4
  %68 = ptrtoint ptr %pdid_cqecnt to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %div80, ptr %pdid_cqecnt, align 8
  br label %if.end92

if.else82:                                        ; preds = %ocrdma_get_asic_type.exit203
  call void @__sanitizer_cov_trace_pc() #16
  %69 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %len, align 8
  %div84 = udiv i32 %70, %cqe_size.0
  %sub85 = add i32 %div84, -1
  %pdid_cqecnt87 = getelementptr inbounds %struct.ocrdma_create_cq, ptr %call7.i.i.i, i32 0, i32 1, i32 4
  %71 = ptrtoint ptr %pdid_cqecnt87 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %sub85, ptr %pdid_cqecnt87, align 8
  %72 = ptrtoint ptr %ev_cnt_flags to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %ev_cnt_flags, align 8
  %or90 = or i32 %73, 32768
  store i32 %or90, ptr %ev_cnt_flags, align 8
  %phase_change91 = getelementptr inbounds %struct.ocrdma_cq, ptr %cq, i32 0, i32 5
  %74 = ptrtoint ptr %phase_change91 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 1, ptr %phase_change91, align 32
  br label %if.end92

if.end92:                                         ; preds = %if.else82, %if.end78
  %conv93 = zext i16 %pd_id to i32
  %shl94 = shl nuw i32 %conv93, 16
  %pdid_cqecnt96 = getelementptr inbounds %struct.ocrdma_create_cq, ptr %call7.i.i.i, i32 0, i32 1, i32 4
  %75 = ptrtoint ptr %pdid_cqecnt96 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %pdid_cqecnt96, align 8
  %or97 = or i32 %76, %shl94
  store i32 %or97, ptr %pdid_cqecnt96, align 8
  %pa99 = getelementptr inbounds %struct.ocrdma_create_cq, ptr %call7.i.i.i, i32 0, i32 1, i32 6
  %77 = ptrtoint ptr %pa to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %pa, align 4
  %79 = ptrtoint ptr %pa99 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %pa99, align 8
  %hi.i = getelementptr %struct.ocrdma_create_cq, ptr %call7.i.i.i, i32 0, i32 1, i32 6, i32 0, i32 1
  %80 = ptrtoint ptr %hi.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %hi.i, align 4
  br i1 %tobool.not, label %for.body.i207.1, label %if.end92.ocrdma_build_q_pages.exit_crit_edge

if.end92.ocrdma_build_q_pages.exit_crit_edge:     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #16
  br label %ocrdma_build_q_pages.exit

for.body.i207.1:                                  ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #16
  %add.i204 = add i32 %78, %div38
  %arrayidx.i.1 = getelementptr %struct.ocrdma_create_cq, ptr %call7.i.i.i, i32 0, i32 1, i32 6, i32 1
  %81 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %add.i204, ptr %arrayidx.i.1, align 8
  %hi.i.1 = getelementptr %struct.ocrdma_create_cq, ptr %call7.i.i.i, i32 0, i32 1, i32 6, i32 1, i32 1
  %82 = ptrtoint ptr %hi.i.1 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %hi.i.1, align 4
  %add.i204.1 = add i32 %add.i204, %div38
  %arrayidx.i.2 = getelementptr %struct.ocrdma_create_cq, ptr %call7.i.i.i, i32 0, i32 1, i32 6, i32 2
  %83 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %add.i204.1, ptr %arrayidx.i.2, align 8
  %hi.i.2 = getelementptr %struct.ocrdma_create_cq, ptr %call7.i.i.i, i32 0, i32 1, i32 6, i32 2, i32 1
  %84 = ptrtoint ptr %hi.i.2 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 0, ptr %hi.i.2, align 4
  %add.i204.2 = add i32 %add.i204.1, %div38
  %arrayidx.i.3 = getelementptr %struct.ocrdma_create_cq, ptr %call7.i.i.i, i32 0, i32 1, i32 6, i32 3
  %85 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %add.i204.2, ptr %arrayidx.i.3, align 8
  %hi.i.3 = getelementptr %struct.ocrdma_create_cq, ptr %call7.i.i.i, i32 0, i32 1, i32 6, i32 3, i32 1
  %86 = ptrtoint ptr %hi.i.3 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 0, ptr %hi.i.3, align 4
  br label %ocrdma_build_q_pages.exit

ocrdma_build_q_pages.exit:                        ; preds = %for.body.i207.1, %if.end92.ocrdma_build_q_pages.exit_crit_edge
  %call101 = tail call fastcc i32 @ocrdma_mbx_cmd(ptr noundef %dev, ptr noundef nonnull %call7.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %if.end104, label %ocrdma_build_q_pages.exit.mbx_err_crit_edge

ocrdma_build_q_pages.exit.mbx_err_crit_edge:      ; preds = %ocrdma_build_q_pages.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %mbx_err

if.end104:                                        ; preds = %ocrdma_build_q_pages.exit
  call void @__sanitizer_cov_trace_pc() #16
  %87 = ptrtoint ptr %pgsz_pgcnt to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %pgsz_pgcnt, align 4
  %conv106 = trunc i32 %88 to i16
  %id107 = getelementptr inbounds %struct.ocrdma_cq, ptr %cq, i32 0, i32 10
  %89 = ptrtoint ptr %id107 to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %conv106, ptr %id107, align 4
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #14
  br label %cleanup113

mbx_err:                                          ; preds = %ocrdma_build_q_pages.exit.mbx_err_crit_edge, %if.else55.mbx_err_crit_edge
  %status.0 = phi i32 [ %call101, %ocrdma_build_q_pages.exit.mbx_err_crit_edge ], [ -12, %if.else55.mbx_err_crit_edge ]
  %90 = ptrtoint ptr %eqn to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %eqn, align 2
  tail call void @mutex_lock_nested(ptr noundef %dev_lock.i, i32 noundef 0) #14
  %92 = ptrtoint ptr %eq_cnt.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %eq_cnt.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %cmp7.i.i = icmp sgt i32 %93, 0
  br i1 %cmp7.i.i, label %for.body.lr.ph.i.i, label %mbx_err.do.body.i_crit_edge

mbx_err.do.body.i_crit_edge:                      ; preds = %mbx_err
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i

for.body.lr.ph.i.i:                               ; preds = %mbx_err
  %94 = ptrtoint ptr %eq_tbl.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %eq_tbl.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %indx.08.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %id.i.i = getelementptr %struct.ocrdma_eq, ptr %95, i32 %indx.08.i.i, i32 0, i32 5
  %96 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %id.i.i, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %97, i16 %91)
  %cmp1.i.i = icmp eq i16 %97, %91
  br i1 %cmp1.i.i, label %ocrdma_unbind_eq.exit, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %indx.08.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %93
  br i1 %exitcond.not.i.i, label %for.inc.i.i.do.body.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

for.inc.i.i.do.body.i_crit_edge:                  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i

do.body.i:                                        ; preds = %for.inc.i.i.do.body.i_crit_edge, %mbx_err.do.body.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/infiniband/hw/ocrdma/ocrdma_hw.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1774, 0\0A.popsection", ""() #14, !srcloc !179
  unreachable

ocrdma_unbind_eq.exit:                            ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %cq_cnt.i = getelementptr %struct.ocrdma_eq, ptr %95, i32 %indx.08.i.i, i32 2
  %98 = ptrtoint ptr %cq_cnt.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %cq_cnt.i, align 4
  %sub.i = add i32 %99, -1
  store i32 %sub.i, ptr %cq_cnt.i, align 4
  tail call void @mutex_unlock(ptr noundef %dev_lock.i) #14
  %100 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %len, align 8
  %102 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %va, align 16
  %104 = ptrtoint ptr %pa to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %pa, align 4
  tail call void @dma_free_attrs(ptr noundef %dev30, i32 noundef %101, ptr noundef %103, i32 noundef %105, i32 noundef 0) #14
  br label %mem_err

mem_err:                                          ; preds = %ocrdma_unbind_eq.exit, %if.end28.mem_err_crit_edge
  %status.1 = phi i32 [ %status.0, %ocrdma_unbind_eq.exit ], [ -12, %if.end28.mem_err_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #14
  br label %cleanup113

cleanup113:                                       ; preds = %mem_err, %if.end104, %if.end22.cleanup113_crit_edge, %ocrdma_get_asic_type.exit.cleanup113_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %status.1, %mem_err ], [ 0, %if.end104 ], [ -22, %ocrdma_get_asic_type.exit.cleanup113_crit_edge ], [ -12, %if.end22.cleanup113_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocrdma_mbx_destroy_cq(ptr noundef %dev, ptr nocapture noundef readonly %cq) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 256) #17
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %call7.i.i.i, align 8
  %or.i = or i32 %2, 1
  store i32 %or.i, ptr %call7.i.i.i, align 8
  %pyld_len.i = getelementptr inbounds %struct.ocrdma_mqe_hdr, ptr %call7.i.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %pyld_len.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 20, ptr %pyld_len.i, align 4
  %u.i = getelementptr inbounds %struct.ocrdma_mqe, ptr %call7.i.i.i, i32 0, i32 1
  %timeout.i.i = getelementptr inbounds %struct.ocrdma_mqe, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 0, i32 1
  %cmd_len2.i.i = getelementptr inbounds %struct.ocrdma_mqe, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 0, i32 2
  %4 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 310, ptr %u.i, align 4
  %5 = ptrtoint ptr %timeout.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 20, ptr %timeout.i.i, align 8
  %6 = ptrtoint ptr %cmd_len2.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 24, ptr %cmd_len2.i.i, align 4
  %id = getelementptr inbounds %struct.ocrdma_cq, ptr %cq, i32 0, i32 10
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %id, align 4
  %conv = zext i16 %8 to i32
  %bypass_flush_qid = getelementptr inbounds %struct.ocrdma_destroy_cq, ptr %call7.i.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %bypass_flush_qid to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bypass_flush_qid, align 4
  %or = or i32 %10, %conv
  store i32 %or, ptr %bypass_flush_qid, align 4
  %call1 = tail call fastcc i32 @ocrdma_mbx_cmd(ptr noundef %dev, ptr noundef nonnull %call7.i.i.i)
  %eqn = getelementptr inbounds %struct.ocrdma_cq, ptr %cq, i32 0, i32 11
  %11 = ptrtoint ptr %eqn to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %eqn, align 2
  %dev_lock.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %dev_lock.i, i32 noundef 0) #14
  %eq_cnt.i.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 8
  %13 = ptrtoint ptr %eq_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %eq_cnt.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp7.i.i = icmp sgt i32 %14, 0
  br i1 %cmp7.i.i, label %for.body.lr.ph.i.i, label %if.end.do.body.i_crit_edge

if.end.do.body.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i

for.body.lr.ph.i.i:                               ; preds = %if.end
  %eq_tbl.i.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 7
  %15 = ptrtoint ptr %eq_tbl.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %eq_tbl.i.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %indx.08.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %id.i.i = getelementptr %struct.ocrdma_eq, ptr %16, i32 %indx.08.i.i, i32 0, i32 5
  %17 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %id.i.i, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %18, i16 %12)
  %cmp1.i.i = icmp eq i16 %18, %12
  br i1 %cmp1.i.i, label %ocrdma_unbind_eq.exit, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %indx.08.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %14
  br i1 %exitcond.not.i.i, label %for.inc.i.i.do.body.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

for.inc.i.i.do.body.i_crit_edge:                  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i

do.body.i:                                        ; preds = %for.inc.i.i.do.body.i_crit_edge, %if.end.do.body.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/infiniband/hw/ocrdma/ocrdma_hw.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1774, 0\0A.popsection", ""() #14, !srcloc !179
  unreachable

ocrdma_unbind_eq.exit:                            ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %cq_cnt.i = getelementptr %struct.ocrdma_eq, ptr %16, i32 %indx.08.i.i, i32 2
  %19 = ptrtoint ptr %cq_cnt.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cq_cnt.i, align 4
  %sub.i = add i32 %20, -1
  store i32 %sub.i, ptr %cq_cnt.i, align 4
  tail call void @mutex_unlock(ptr noundef %dev_lock.i) #14
  %pdev = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 20, i32 6
  %21 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdev, align 4
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  %len = getelementptr inbounds %struct.ocrdma_cq, ptr %cq, i32 0, i32 14
  %23 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len, align 8
  %va = getelementptr inbounds %struct.ocrdma_cq, ptr %cq, i32 0, i32 1
  %25 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %va, align 16
  %pa = getelementptr inbounds %struct.ocrdma_cq, ptr %cq, i32 0, i32 13
  %27 = ptrtoint ptr %pa to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pa, align 4
  tail call void @dma_free_attrs(ptr noundef %dev2, i32 noundef %24, ptr noundef %26, i32 noundef %28, i32 noundef 0) #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #14
  br label %cleanup

cleanup:                                          ; preds = %ocrdma_unbind_eq.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocrdma_mbx_alloc_lkey(ptr noundef %dev, ptr nocapture noundef %hwmr, i32 noundef %pdid, i32 noundef %addr_check) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 256) #17
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %call7.i.i.i, align 8
  %or.i = or i32 %2, 1
  store i32 %or.i, ptr %call7.i.i.i, align 8
  %pyld_len.i = getelementptr inbounds %struct.ocrdma_mqe_hdr, ptr %call7.i.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %pyld_len.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 24, ptr %pyld_len.i, align 4
  %u.i = getelementptr inbounds %struct.ocrdma_mqe, ptr %call7.i.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2571, ptr %u.i, align 4
  %timeout.i.i = getelementptr inbounds %struct.ocrdma_mqe, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 0, i32 1
  %5 = ptrtoint ptr %timeout.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 20, ptr %timeout.i.i, align 8
  %cmd_len2.i.i = getelementptr inbounds %struct.ocrdma_mqe, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 0, i32 2
  %6 = ptrtoint ptr %cmd_len2.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 8, ptr %cmd_len2.i.i, align 4
  %pdid1 = getelementptr inbounds %struct.ocrdma_alloc_lkey, ptr %call7.i.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %pdid1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %pdid, ptr %pdid1, align 4
  %pbl_sz_flags = getelementptr inbounds %struct.ocrdma_alloc_lkey, ptr %call7.i.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %pbl_sz_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pbl_sz_flags, align 8
  %or = or i32 %9, %addr_check
  %fr_mr = getelementptr inbounds %struct.ocrdma_hw_mr, ptr %hwmr, i32 0, i32 1
  %10 = ptrtoint ptr %fr_mr to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %fr_mr, align 4
  %conv = zext i8 %11 to i32
  %shl = shl nuw nsw i32 %conv, 1
  %or3 = or i32 %shl, %or
  %remote_wr = getelementptr inbounds %struct.ocrdma_hw_mr, ptr %hwmr, i32 0, i32 4
  %12 = ptrtoint ptr %remote_wr to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %remote_wr, align 1
  %conv4 = zext i8 %13 to i32
  %shl5 = shl nuw nsw i32 %conv4, 3
  %or7 = or i32 %shl5, %or3
  %remote_rd = getelementptr inbounds %struct.ocrdma_hw_mr, ptr %hwmr, i32 0, i32 3
  %14 = ptrtoint ptr %remote_rd to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %remote_rd, align 2
  %conv8 = zext i8 %15 to i32
  %shl9 = shl nuw nsw i32 %conv8, 4
  %or11 = or i32 %shl9, %or7
  %local_wr = getelementptr inbounds %struct.ocrdma_hw_mr, ptr %hwmr, i32 0, i32 6
  %16 = ptrtoint ptr %local_wr to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %local_wr, align 1
  %conv12 = zext i8 %17 to i32
  %shl13 = shl nuw nsw i32 %conv12, 5
  %or15 = or i32 %shl13, %or11
  %remote_atomic = getelementptr inbounds %struct.ocrdma_hw_mr, ptr %hwmr, i32 0, i32 2
  %18 = ptrtoint ptr %remote_atomic to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %remote_atomic, align 1
  %conv16 = zext i8 %19 to i32
  %shl17 = shl nuw nsw i32 %conv16, 6
  %or19 = or i32 %shl17, %or15
  %num_pbls = getelementptr inbounds %struct.ocrdma_hw_mr, ptr %hwmr, i32 0, i32 11
  %20 = ptrtoint ptr %num_pbls to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_pbls, align 4
  %shl20 = shl i32 %21, 16
  %or22 = or i32 %or19, %shl20
  store i32 %or22, ptr %pbl_sz_flags, align 8
  %call23 = tail call fastcc i32 @ocrdma_mbx_cmd(ptr noundef %dev, ptr noundef nonnull %call7.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end.mbx_err_crit_edge

if.end.mbx_err_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %mbx_err

if.end26:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %22 = ptrtoint ptr %pdid1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pdid1, align 4
  %24 = ptrtoint ptr %hwmr to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %hwmr, align 8
  br label %mbx_err

mbx_err:                                          ; preds = %if.end26, %if.end.mbx_err_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #14
  br label %cleanup

cleanup:                                          ; preds = %mbx_err, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call23, %mbx_err ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocrdma_mbx_dealloc_lkey(ptr noundef %dev, i32 noundef %fr_mr, i32 noundef %lkey) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 256) #17
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %1 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %call7.i.i.i, align 8
  %or.i = or i32 %2, 1
  store i32 %or.i, ptr %call7.i.i.i, align 8
  %pyld_len.i = getelementptr inbounds %struct.ocrdma_mqe_hdr, ptr %call7.i.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %pyld_len.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 24, ptr %pyld_len.i, align 4
  %u.i = getelementptr inbounds %struct.ocrdma_mqe, ptr %call7.i.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2572, ptr %u.i, align 4
  %timeout.i.i = getelementptr inbounds %struct.ocrdma_mqe, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 0, i32 1
  %5 = ptrtoint ptr %timeout.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 20, ptr %timeout.i.i, align 8
  %cmd_len2.i.i = getelementptr inbounds %struct.ocrdma_mqe, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 0, i32 2
  %6 = ptrtoint ptr %cmd_len2.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 8, ptr %cmd_len2.i.i, align 4
  %lkey1 = getelementptr inbounds %struct.ocrdma_dealloc_lkey, ptr %call7.i.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %lkey1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %lkey, ptr %lkey1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fr_mr)
  %tobool2.not = icmp ne i32 %fr_mr, 0
  %cond = zext i1 %tobool2.not to i32
  %rsvd_frmr = getelementptr inbounds %struct.ocrdma_dealloc_lkey, ptr %call7.i.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %rsvd_frmr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %cond, ptr %rsvd_frmr, align 8
  %call3 = tail call fastcc i32 @ocrdma_mbx_cmd(ptr noundef %dev, ptr noundef nonnull %call7.i.i.i)
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocrdma_reg_mr(ptr noundef %dev, ptr nocapture noundef %hwmr, i32 noundef %pdid, i32 noundef %acc) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %num_pbls = getelementptr inbounds %struct.ocrdma_hw_mr, ptr %hwmr, i32 0, i32 11
  %0 = ptrtoint ptr %num_pbls to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_pbls, align 4
  %2 = tail call i32 @llvm.umin.i32(i32 %1, i32 22)
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %1)
  %cmp1 = icmp ult i32 %1, 23
  %va.i = getelementptr inbounds %struct.ocrdma_hw_mr, ptr %hwmr, i32 0, i32 15
  %3 = ptrtoint ptr %va.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %va.i, align 8
  %pbe_size1.i = getelementptr inbounds %struct.ocrdma_hw_mr, ptr %hwmr, i32 0, i32 14
  %5 = ptrtoint ptr %pbe_size1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pbe_size1.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 256) #17
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %entry.do.end_crit_edge, label %if.end.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.end.i:                                         ; preds = %entry
  %8 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %call7.i.i.i.i, align 8
  %or.i.i = or i32 %9, 1
  store i32 %or.i.i, ptr %call7.i.i.i.i, align 8
  %pyld_len.i.i = getelementptr inbounds %struct.ocrdma_mqe_hdr, ptr %call7.i.i.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %pyld_len.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 228, ptr %pyld_len.i.i, align 4
  %u.i.i = getelementptr inbounds %struct.ocrdma_mqe, ptr %call7.i.i.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %u.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2573, ptr %u.i.i, align 4
  %timeout.i.i.i = getelementptr inbounds %struct.ocrdma_mqe, ptr %call7.i.i.i.i, i32 0, i32 1, i32 0, i32 0, i32 1
  %12 = ptrtoint ptr %timeout.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 20, ptr %timeout.i.i.i, align 8
  %cmd_len2.i.i.i = getelementptr inbounds %struct.ocrdma_mqe, ptr %call7.i.i.i.i, i32 0, i32 1, i32 0, i32 0, i32 2
  %13 = ptrtoint ptr %cmd_len2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 212, ptr %cmd_len2.i.i.i, align 4
  %sub.i = add i32 %6, -1
  %14 = ptrtoint ptr %num_pbls to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_pbls, align 4
  %shl.i = shl i32 %15, 16
  %or.i = or i32 %shl.i, %pdid
  %num_pbl_pdid.i = getelementptr inbounds %struct.ocrdma_reg_nsmr, ptr %call7.i.i.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %num_pbl_pdid.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or.i, ptr %num_pbl_pdid.i, align 8
  %fr_mr.i = getelementptr inbounds %struct.ocrdma_hw_mr, ptr %hwmr, i32 0, i32 1
  %17 = ptrtoint ptr %fr_mr.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %fr_mr.i, align 4
  %conv2.i = zext i8 %18 to i32
  %fr_mr3.i = getelementptr inbounds %struct.ocrdma_reg_nsmr, ptr %call7.i.i.i.i, i32 0, i32 2
  %19 = ptrtoint ptr %fr_mr3.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv2.i, ptr %fr_mr3.i, align 4
  %remote_wr.i = getelementptr inbounds %struct.ocrdma_hw_mr, ptr %hwmr, i32 0, i32 4
  %20 = ptrtoint ptr %remote_wr.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %remote_wr.i, align 1
  %conv4.i = zext i8 %21 to i32
  %shl5.i = shl i32 %conv4.i, 27
  %flags_hpage_pbe_sz.i = getelementptr inbounds %struct.ocrdma_reg_nsmr, ptr %call7.i.i.i.i, i32 0, i32 4
  %22 = ptrtoint ptr %flags_hpage_pbe_sz.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags_hpage_pbe_sz.i, align 4
  %remote_rd.i = getelementptr inbounds %struct.ocrdma_hw_mr, ptr %hwmr, i32 0, i32 3
  %24 = ptrtoint ptr %remote_rd.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %remote_rd.i, align 2
  %conv7.i = zext i8 %25 to i32
  %shl8.i = shl i32 %conv7.i, 28
  %local_wr.i = getelementptr inbounds %struct.ocrdma_hw_mr, ptr %hwmr, i32 0, i32 6
  %26 = ptrtoint ptr %local_wr.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %local_wr.i, align 1
  %conv11.i = zext i8 %27 to i32
  %shl12.i = shl i32 %conv11.i, 29
  %remote_atomic.i = getelementptr inbounds %struct.ocrdma_hw_mr, ptr %hwmr, i32 0, i32 2
  %28 = ptrtoint ptr %remote_atomic.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %remote_atomic.i, align 1
  %conv15.i = zext i8 %29 to i32
  %shl16.i = shl i32 %conv15.i, 30
  %mw_bind.i = getelementptr inbounds %struct.ocrdma_hw_mr, ptr %hwmr, i32 0, i32 7
  %30 = ptrtoint ptr %mw_bind.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %mw_bind.i, align 2
  %conv19.i = zext i8 %31 to i32
  %shl20.i = shl nuw i32 %conv19.i, 24
  %shl23.i = select i1 %cmp1, i32 -2147483648, i32 0
  %32 = ptrtoint ptr %pbe_size1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pbe_size1.i, align 8
  %div1.i = lshr i32 %33, 12
  %pbl_size.i = getelementptr inbounds %struct.ocrdma_hw_mr, ptr %hwmr, i32 0, i32 13
  %34 = ptrtoint ptr %pbl_size.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pbl_size.i, align 4
  %36 = shl i32 %35, 4
  %shl30.i = and i32 %36, -65536
  %or6.i = or i32 %23, %shl23.i
  %or10.i = or i32 %or6.i, %shl5.i
  %or14.i = or i32 %or10.i, %shl8.i
  %or18.i = or i32 %or14.i, %shl12.i
  %or22.i = or i32 %or18.i, %shl16.i
  %or25.i = or i32 %or22.i, %shl20.i
  %or28.i = or i32 %or25.i, %div1.i
  %or32.i = or i32 %or28.i, %shl30.i
  store i32 %or32.i, ptr %flags_hpage_pbe_sz.i, align 4
  %len.i = getelementptr inbounds %struct.ocrdma_hw_mr, ptr %hwmr, i32 0, i32 9
  %37 = ptrtoint ptr %len.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %len.i, align 8
  %conv33.i = trunc i64 %38 to i32
  %totlen_low.i = getelementptr inbounds %struct.ocrdma_reg_nsmr, ptr %call7.i.i.i.i, i32 0, i32 5
  %39 = ptrtoint ptr %totlen_low.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %conv33.i, ptr %totlen_low.i, align 8
  %shr.i = lshr i64 %38, 32
  %conv36.i = trunc i64 %shr.i to i32
  %totlen_high.i = getelementptr inbounds %struct.ocrdma_reg_nsmr, ptr %call7.i.i.i.i, i32 0, i32 6
  %40 = ptrtoint ptr %totlen_high.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %conv36.i, ptr %totlen_high.i, align 4
  %41 = trunc i64 %4 to i32
  %conv38.i = and i32 %sub.i, %41
  %fbo_low.i = getelementptr inbounds %struct.ocrdma_reg_nsmr, ptr %call7.i.i.i.i, i32 0, i32 7
  %42 = ptrtoint ptr %fbo_low.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %conv38.i, ptr %fbo_low.i, align 8
  %fbo_high.i = getelementptr inbounds %struct.ocrdma_reg_nsmr, ptr %call7.i.i.i.i, i32 0, i32 8
  %43 = ptrtoint ptr %fbo_high.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %fbo_high.i, align 4
  %44 = ptrtoint ptr %va.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %va.i, align 8
  %conv43.i = trunc i64 %45 to i32
  %va_loaddr.i = getelementptr inbounds %struct.ocrdma_reg_nsmr, ptr %call7.i.i.i.i, i32 0, i32 9
  %46 = ptrtoint ptr %va_loaddr.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %conv43.i, ptr %va_loaddr.i, align 8
  %shr45.i = lshr i64 %45, 32
  %conv47.i = trunc i64 %shr45.i to i32
  %va_hiaddr.i = getelementptr inbounds %struct.ocrdma_reg_nsmr, ptr %call7.i.i.i.i, i32 0, i32 10
  %47 = ptrtoint ptr %va_hiaddr.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %conv47.i, ptr %va_hiaddr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp3.not.i = icmp eq i32 %2, 0
  br i1 %cmp3.not.i, label %if.end.i.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %pbl_table.i = getelementptr inbounds %struct.ocrdma_hw_mr, ptr %hwmr, i32 0, i32 10
  %48 = ptrtoint ptr %pbl_table.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pbl_table.i, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.04.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %pa.i = getelementptr %struct.ocrdma_pbl, ptr %49, i32 %i.04.i, i32 1
  %50 = ptrtoint ptr %pa.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %pa.i, align 4
  %arrayidx50.i = getelementptr %struct.ocrdma_reg_nsmr, ptr %call7.i.i.i.i, i32 0, i32 11, i32 %i.04.i
  %52 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %arrayidx50.i, align 8
  %hi.i = getelementptr %struct.ocrdma_reg_nsmr, ptr %call7.i.i.i.i, i32 0, i32 11, i32 %i.04.i, i32 1
  %53 = ptrtoint ptr %hi.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %hi.i, align 4
  %inc.i = add nuw nsw i32 %i.04.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %2
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  %call58.i = tail call fastcc i32 @ocrdma_mbx_cmd(ptr noundef %dev, ptr noundef nonnull %call7.i.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i)
  %tobool59.not.i = icmp eq i32 %call58.i, 0
  br i1 %tobool59.not.i, label %if.end5, label %ocrdma_mbx_reg_mr.exit

ocrdma_mbx_reg_mr.exit:                           ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #14
  br label %do.end

do.end:                                           ; preds = %ocrdma_mbx_reg_mr.exit, %entry.do.end_crit_edge
  %retval.0.i83 = phi i32 [ %call58.i, %ocrdma_mbx_reg_mr.exit ], [ -12, %entry.do.end_crit_edge ]
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef %retval.0.i83) #18
  br label %cleanup

if.end5:                                          ; preds = %for.end.i
  %54 = ptrtoint ptr %fr_mr3.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %fr_mr3.i, align 4
  %56 = ptrtoint ptr %hwmr to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %hwmr, align 8
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #14
  br i1 %cmp1, label %if.end5.cleanup_crit_edge, label %while.cond.preheader

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

while.cond.preheader:                             ; preds = %if.end5
  %pbl_table.i72 = getelementptr inbounds %struct.ocrdma_hw_mr, ptr %hwmr, i32 0, i32 10
  br label %while.cond

while.cond:                                       ; preds = %ocrdma_mbx_reg_mr_cont.exit.while.cond_crit_edge, %while.cond.preheader
  %pbl_offset.0 = phi i32 [ %add, %ocrdma_mbx_reg_mr_cont.exit.while.cond_crit_edge ], [ 0, %while.cond.preheader ]
  %pending_pbl_cnt.0 = phi i32 [ %sub, %ocrdma_mbx_reg_mr_cont.exit.while.cond_crit_edge ], [ %1, %while.cond.preheader ]
  %cur_pbl_cnt.0 = phi i32 [ %57, %ocrdma_mbx_reg_mr_cont.exit.while.cond_crit_edge ], [ %2, %while.cond.preheader ]
  %last.1 = phi i32 [ %last.2, %ocrdma_mbx_reg_mr_cont.exit.while.cond_crit_edge ], [ 0, %while.cond.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %last.1)
  %tobool9.not = icmp eq i32 %last.1, 0
  br i1 %tobool9.not, label %while.body, label %while.cond.cleanup_crit_edge

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

while.body:                                       ; preds = %while.cond
  %add = add i32 %cur_pbl_cnt.0, %pbl_offset.0
  %sub = sub i32 %pending_pbl_cnt.0, %cur_pbl_cnt.0
  %57 = tail call i32 @llvm.umin.i32(i32 %sub, i32 22)
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %sub)
  %cmp16 = icmp ult i32 %sub, 23
  %last.2 = zext i1 %cmp16 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %58 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i.i62 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %58, i32 noundef 3520, i32 noundef 256) #17
  %tobool.not.i.i63 = icmp eq ptr %call7.i.i.i.i62, null
  br i1 %tobool.not.i.i63, label %while.body.do.end27_crit_edge, label %if.end.i71

while.body.do.end27_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end27

if.end.i71:                                       ; preds = %while.body
  %59 = ptrtoint ptr %call7.i.i.i.i62 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %call7.i.i.i.i62, align 8
  %or.i.i64 = or i32 %60, 1
  store i32 %or.i.i64, ptr %call7.i.i.i.i62, align 8
  %pyld_len.i.i65 = getelementptr inbounds %struct.ocrdma_mqe_hdr, ptr %call7.i.i.i.i62, i32 0, i32 1
  %61 = ptrtoint ptr %pyld_len.i.i65 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 204, ptr %pyld_len.i.i65, align 4
  %u.i.i66 = getelementptr inbounds %struct.ocrdma_mqe, ptr %call7.i.i.i.i62, i32 0, i32 1
  %62 = ptrtoint ptr %u.i.i66 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 2575, ptr %u.i.i66, align 4
  %timeout.i.i.i67 = getelementptr inbounds %struct.ocrdma_mqe, ptr %call7.i.i.i.i62, i32 0, i32 1, i32 0, i32 0, i32 1
  %63 = ptrtoint ptr %timeout.i.i.i67 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 20, ptr %timeout.i.i.i67, align 8
  %cmd_len2.i.i.i68 = getelementptr inbounds %struct.ocrdma_mqe, ptr %call7.i.i.i.i62, i32 0, i32 1, i32 0, i32 0, i32 2
  %64 = ptrtoint ptr %cmd_len2.i.i.i68 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 188, ptr %cmd_len2.i.i.i68, align 4
  %65 = ptrtoint ptr %hwmr to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %hwmr, align 8
  %lrkey.i = getelementptr inbounds %struct.ocrdma_reg_nsmr_cont, ptr %call7.i.i.i.i62, i32 0, i32 2
  %67 = ptrtoint ptr %lrkey.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %lrkey.i, align 4
  %shl.i69 = shl nuw nsw i32 %57, 16
  %and.i = and i32 %add, 65535
  %or.i70 = or i32 %shl.i69, %and.i
  %num_pbl_offset.i = getelementptr inbounds %struct.ocrdma_reg_nsmr_cont, ptr %call7.i.i.i.i62, i32 0, i32 3
  %68 = ptrtoint ptr %num_pbl_offset.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %or.i70, ptr %num_pbl_offset.i, align 8
  %shl1.i = select i1 %cmp16, i32 -2147483648, i32 0
  %last2.i = getelementptr inbounds %struct.ocrdma_reg_nsmr_cont, ptr %call7.i.i.i.i62, i32 0, i32 4
  %69 = ptrtoint ptr %last2.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %shl1.i, ptr %last2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp32.not.i = icmp eq i32 %57, 0
  br i1 %cmp32.not.i, label %if.end.i71.ocrdma_mbx_reg_mr_cont.exit_crit_edge, label %for.body.lr.ph.i73

if.end.i71.ocrdma_mbx_reg_mr_cont.exit_crit_edge: ; preds = %if.end.i71
  call void @__sanitizer_cov_trace_pc() #16
  br label %ocrdma_mbx_reg_mr_cont.exit

for.body.lr.ph.i73:                               ; preds = %if.end.i71
  %70 = ptrtoint ptr %pbl_table.i72 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pbl_table.i72, align 8
  br label %for.body.i78

for.body.i78:                                     ; preds = %for.body.i78.for.body.i78_crit_edge, %for.body.lr.ph.i73
  %i.033.i = phi i32 [ 0, %for.body.lr.ph.i73 ], [ %inc.i76, %for.body.i78.for.body.i78_crit_edge ]
  %add.i = add i32 %i.033.i, %add
  %pa.i74 = getelementptr %struct.ocrdma_pbl, ptr %71, i32 %add.i, i32 1
  %72 = ptrtoint ptr %pa.i74 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %pa.i74, align 4
  %arrayidx4.i = getelementptr %struct.ocrdma_reg_nsmr_cont, ptr %call7.i.i.i.i62, i32 0, i32 5, i32 %i.033.i
  %74 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %arrayidx4.i, align 8
  %hi.i75 = getelementptr %struct.ocrdma_reg_nsmr_cont, ptr %call7.i.i.i.i62, i32 0, i32 5, i32 %i.033.i, i32 1
  %75 = ptrtoint ptr %hi.i75 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %hi.i75, align 4
  %inc.i76 = add nuw nsw i32 %i.033.i, 1
  %exitcond.not.i77 = icmp eq i32 %inc.i76, %57
  br i1 %exitcond.not.i77, label %for.body.i78.ocrdma_mbx_reg_mr_cont.exit_crit_edge, label %for.body.i78.for.body.i78_crit_edge

for.body.i78.for.body.i78_crit_edge:              ; preds = %for.body.i78
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i78

for.body.i78.ocrdma_mbx_reg_mr_cont.exit_crit_edge: ; preds = %for.body.i78
  call void @__sanitizer_cov_trace_pc() #16
  br label %ocrdma_mbx_reg_mr_cont.exit

ocrdma_mbx_reg_mr_cont.exit:                      ; preds = %for.body.i78.ocrdma_mbx_reg_mr_cont.exit_crit_edge, %if.end.i71.ocrdma_mbx_reg_mr_cont.exit_crit_edge
  %call12.i = tail call fastcc i32 @ocrdma_mbx_cmd(ptr noundef %dev, ptr noundef nonnull %call7.i.i.i.i62) #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i62) #14
  %tobool20.not = icmp eq i32 %call12.i, 0
  br i1 %tobool20.not, label %ocrdma_mbx_reg_mr_cont.exit.while.cond_crit_edge, label %ocrdma_mbx_reg_mr_cont.exit.do.end27_crit_edge

ocrdma_mbx_reg_mr_cont.exit.do.end27_crit_edge:   ; preds = %ocrdma_mbx_reg_mr_cont.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end27

ocrdma_mbx_reg_mr_cont.exit.while.cond_crit_edge: ; preds = %ocrdma_mbx_reg_mr_cont.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond

do.end27:                                         ; preds = %ocrdma_mbx_reg_mr_cont.exit.do.end27_crit_edge, %while.body.do.end27_crit_edge
  %status.1.ph = phi i32 [ %call12.i, %ocrdma_mbx_reg_mr_cont.exit.do.end27_crit_edge ], [ -12, %while.body.do.end27_crit_edge ]
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.10, i32 noundef %status.1.ph) #18
  br label %cleanup

cleanup:                                          ; preds = %do.end27, %while.cond.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %retval.0.i83, %do.end ], [ 0, %if.end5.cleanup_crit_edge ], [ %status.1.ph, %do.end27 ], [ 0, %while.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ocrdma_is_qp_in_sq_flushlist(ptr noundef readonly %cq, ptr noundef readnone %qp) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %sq_head = getelementptr inbounds %struct.ocrdma_cq, ptr %cq, i32 0, i32 16
  br label %for.cond

for.cond:                                         ; preds = %for.cond.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ %sq_head, %entry ], [ %.pn, %for.cond.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 16
  %cmp.not = icmp eq ptr %.pn, %sq_head
  %tmp.0 = getelementptr i8, ptr %.pn, i32 -432
  %cmp3 = icmp eq ptr %tmp.0, %qp
  %or.cond = or i1 %cmp.not, %cmp3
  br i1 %or.cond, label %for.end, label %for.cond.for.cond_crit_edge

for.cond.for.cond_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  %1 = xor i1 %cmp.not, true
  ret i1 %1
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ocrdma_is_qp_in_rq_flushlist(ptr noundef readonly %cq, ptr noundef readnone %qp) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_head = getelementptr inbounds %struct.ocrdma_cq, ptr %cq, i32 0, i32 17
  br label %for.cond

for.cond:                                         ; preds = %for.cond.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ %rq_head, %entry ], [ %.pn, %for.cond.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 8
  %cmp.not = icmp eq ptr %.pn, %rq_head
  %tmp.0 = getelementptr i8, ptr %.pn, i32 -496
  %cmp3 = icmp eq ptr %tmp.0, %qp
  %or.cond = or i1 %cmp.not, %cmp3
  br i1 %or.cond, label %for.end, label %for.cond.for.cond_crit_edge

for.cond.for.cond_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  %1 = xor i1 %cmp.not, true
  ret i1 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocrdma_flush_qp(ptr noundef %qp) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qp, align 128
  %flush_q_lock = getelementptr inbounds %struct.ocrdma_dev, ptr %1, i32 0, i32 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %flush_q_lock) #14
  %sq_cq = getelementptr inbounds %struct.ocrdma_qp, ptr %qp, i32 0, i32 7
  %2 = ptrtoint ptr %sq_cq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sq_cq, align 4
  %sq_head.i = getelementptr inbounds %struct.ocrdma_cq, ptr %3, i32 0, i32 16
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ %sq_head.i, %entry ], [ %.pn.i, %for.cond.i.for.cond.i_crit_edge ]
  %4 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn.i = load ptr, ptr %.pn.in.i, align 16
  %cmp.not.i = icmp eq ptr %.pn.i, %sq_head.i
  %tmp.0.i = getelementptr i8, ptr %.pn.i, i32 -432
  %cmp3.i = icmp eq ptr %tmp.0.i, %qp
  %or.cond.i = or i1 %cmp.not.i, %cmp3.i
  br i1 %or.cond.i, label %ocrdma_is_qp_in_sq_flushlist.exit, label %for.cond.i.for.cond.i_crit_edge

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i

ocrdma_is_qp_in_sq_flushlist.exit:                ; preds = %for.cond.i
  br i1 %cmp.not.i, label %if.then, label %ocrdma_is_qp_in_sq_flushlist.exit.if.end_crit_edge

ocrdma_is_qp_in_sq_flushlist.exit.if.end_crit_edge: ; preds = %ocrdma_is_qp_in_sq_flushlist.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %ocrdma_is_qp_in_sq_flushlist.exit
  %sq_entry = getelementptr inbounds %struct.ocrdma_qp, ptr %qp, i32 0, i32 8
  %prev.i = getelementptr inbounds %struct.ocrdma_cq, ptr %3, i32 0, i32 16, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %sq_entry, ptr noundef %6, ptr noundef %sq_head.i) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %sq_entry, ptr %prev.i, align 4
  %8 = ptrtoint ptr %sq_entry to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %sq_head.i, ptr %sq_entry, align 4
  %prev3.i.i = getelementptr inbounds %struct.ocrdma_qp, ptr %qp, i32 0, i32 8, i32 1
  %9 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev3.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %sq_entry, ptr %6, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.i.i, %if.then.if.end_crit_edge, %ocrdma_is_qp_in_sq_flushlist.exit.if.end_crit_edge
  %srq = getelementptr inbounds %struct.ocrdma_qp, ptr %qp, i32 0, i32 13
  %11 = ptrtoint ptr %srq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %srq, align 4
  %tobool8.not = icmp eq ptr %12, null
  br i1 %tobool8.not, label %if.then9, label %if.end.if.end16_crit_edge

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

if.then9:                                         ; preds = %if.end
  %rq_cq = getelementptr inbounds %struct.ocrdma_qp, ptr %qp, i32 0, i32 12
  %13 = ptrtoint ptr %rq_cq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rq_cq, align 8
  %rq_head.i = getelementptr inbounds %struct.ocrdma_cq, ptr %14, i32 0, i32 17
  br label %for.cond.i35

for.cond.i35:                                     ; preds = %for.cond.i35.for.cond.i35_crit_edge, %if.then9
  %.pn.in.i29 = phi ptr [ %rq_head.i, %if.then9 ], [ %.pn.i30, %for.cond.i35.for.cond.i35_crit_edge ]
  %15 = ptrtoint ptr %.pn.in.i29 to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn.i30 = load ptr, ptr %.pn.in.i29, align 8
  %cmp.not.i31 = icmp eq ptr %.pn.i30, %rq_head.i
  %tmp.0.i32 = getelementptr i8, ptr %.pn.i30, i32 -496
  %cmp3.i33 = icmp eq ptr %tmp.0.i32, %qp
  %or.cond.i34 = or i1 %cmp.not.i31, %cmp3.i33
  br i1 %or.cond.i34, label %ocrdma_is_qp_in_rq_flushlist.exit, label %for.cond.i35.for.cond.i35_crit_edge

for.cond.i35.for.cond.i35_crit_edge:              ; preds = %for.cond.i35
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i35

ocrdma_is_qp_in_rq_flushlist.exit:                ; preds = %for.cond.i35
  br i1 %cmp.not.i31, label %if.then13, label %ocrdma_is_qp_in_rq_flushlist.exit.if.end16_crit_edge

ocrdma_is_qp_in_rq_flushlist.exit.if.end16_crit_edge: ; preds = %ocrdma_is_qp_in_rq_flushlist.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

if.then13:                                        ; preds = %ocrdma_is_qp_in_rq_flushlist.exit
  %rq_entry = getelementptr inbounds %struct.ocrdma_qp, ptr %qp, i32 0, i32 14
  %prev.i36 = getelementptr inbounds %struct.ocrdma_cq, ptr %14, i32 0, i32 17, i32 1
  %16 = ptrtoint ptr %prev.i36 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i36, align 4
  %call.i.i37 = tail call zeroext i1 @__list_add_valid(ptr noundef %rq_entry, ptr noundef %17, ptr noundef %rq_head.i) #14
  br i1 %call.i.i37, label %if.end.i.i39, label %if.then13.if.end16_crit_edge

if.then13.if.end16_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

if.end.i.i39:                                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  %18 = ptrtoint ptr %prev.i36 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %rq_entry, ptr %prev.i36, align 4
  %19 = ptrtoint ptr %rq_entry to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %rq_head.i, ptr %rq_entry, align 4
  %prev3.i.i38 = getelementptr inbounds %struct.ocrdma_qp, ptr %qp, i32 0, i32 14, i32 1
  %20 = ptrtoint ptr %prev3.i.i38 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev3.i.i38, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %rq_entry, ptr %17, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.end.i.i39, %if.then13.if.end16_crit_edge, %ocrdma_is_qp_in_rq_flushlist.exit.if.end16_crit_edge, %if.end.if.end16_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %flush_q_lock, i32 noundef %call3) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocrdma_qp_state_change(ptr noundef %qp, i32 noundef %new_ib_state, ptr noundef writeonly %old_ib_state) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %new_ib_state)
  %0 = icmp ult i32 %new_ib_state, 7
  br i1 %0, label %switch.lookup, label %entry.get_ocrdma_qp_state.exit_crit_edge

entry.get_ocrdma_qp_state.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_ocrdma_qp_state.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.ocrdma_qp_state_change, i32 0, i32 %new_ib_state
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %get_ocrdma_qp_state.exit

get_ocrdma_qp_state.exit:                         ; preds = %switch.lookup, %entry.get_ocrdma_qp_state.exit_crit_edge
  %retval.0.i = phi i32 [ %switch.load, %switch.lookup ], [ 6, %entry.get_ocrdma_qp_state.exit_crit_edge ]
  %q_lock = getelementptr inbounds %struct.ocrdma_qp, ptr %qp, i32 0, i32 6
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %q_lock) #14
  %tobool.not = icmp eq ptr %old_ib_state, null
  br i1 %tobool.not, label %get_ocrdma_qp_state.exit.if.end_crit_edge, label %if.then

get_ocrdma_qp_state.exit.if.end_crit_edge:        ; preds = %get_ocrdma_qp_state.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %get_ocrdma_qp_state.exit
  %state = getelementptr inbounds %struct.ocrdma_qp, ptr %qp, i32 0, i32 15
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %3)
  %4 = icmp ult i32 %3, 8
  br i1 %4, label %switch.lookup45, label %if.then.get_ibqp_state.exit_crit_edge

if.then.get_ibqp_state.exit_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_ibqp_state.exit

switch.lookup45:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %switch.gep46 = getelementptr inbounds [8 x i32], ptr @switch.table.ocrdma_qp_state_change.88, i32 0, i32 %3
  %5 = ptrtoint ptr %switch.gep46 to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load47 = load i32, ptr %switch.gep46, align 4
  br label %get_ibqp_state.exit

get_ibqp_state.exit:                              ; preds = %switch.lookup45, %if.then.get_ibqp_state.exit_crit_edge
  %retval.0.i44 = phi i32 [ %switch.load47, %switch.lookup45 ], [ 6, %if.then.get_ibqp_state.exit_crit_edge ]
  %6 = ptrtoint ptr %old_ib_state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %retval.0.i44, ptr %old_ib_state, align 4
  br label %if.end

if.end:                                           ; preds = %get_ibqp_state.exit, %get_ocrdma_qp_state.exit.if.end_crit_edge
  %state7 = getelementptr inbounds %struct.ocrdma_qp, ptr %qp, i32 0, i32 15
  %7 = ptrtoint ptr %state7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state7, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %8)
  %cmp8 = icmp eq i32 %retval.0.i, %8
  br i1 %cmp8, label %if.end.cleanup_crit_edge, label %if.end12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %9 = zext i32 %retval.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %retval.0.i, label %if.end12.if.end20_crit_edge [
    i32 1, label %if.then15
    i32 6, label %if.then18
  ]

if.end12.if.end20_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  %head.i = getelementptr inbounds %struct.ocrdma_qp, ptr %qp, i32 0, i32 2, i32 2
  %10 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %head.i, align 8
  %tail.i = getelementptr inbounds %struct.ocrdma_qp, ptr %qp, i32 0, i32 2, i32 3
  %11 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %tail.i, align 4
  %head2.i = getelementptr inbounds %struct.ocrdma_qp, ptr %qp, i32 0, i32 10, i32 2
  %12 = ptrtoint ptr %head2.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %head2.i, align 4
  %tail4.i = getelementptr inbounds %struct.ocrdma_qp, ptr %qp, i32 0, i32 10, i32 3
  %13 = ptrtoint ptr %tail4.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %tail4.i, align 4
  tail call void @ocrdma_del_flush_qp(ptr noundef %qp) #14
  br label %if.end20

if.then18:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @ocrdma_flush_qp(ptr noundef %qp)
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.then15, %if.end12.if.end20_crit_edge
  %14 = ptrtoint ptr %state7 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %retval.0.i, ptr %state7, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end20 ], [ 1, %if.end.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %q_lock, i32 noundef %call3) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocrdma_del_flush_qp(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocrdma_mbx_create_qp(ptr noundef %qp, ptr nocapture noundef readonly %attrs, i8 noundef zeroext %enable_dpp_cq, i16 noundef zeroext %dpp_cq_id, ptr nocapture noundef writeonly %dpp_offset, ptr nocapture noundef writeonly %dpp_credit_lmt) local_unnamed_addr #3 align 64 {
entry:
  %pa.i237 = alloca i32, align 4
  %pa.i175 = alloca i32, align 4
  %pa.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %pd1 = getelementptr inbounds %struct.ocrdma_qp, ptr %qp, i32 0, i32 20
  %0 = ptrtoint ptr %pd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pd1, align 4
  %device = getelementptr inbounds %struct.ib_pd, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %pdev2 = getelementptr inbounds %struct.ocrdma_dev, ptr %3, i32 0, i32 20, i32 6
  %4 = ptrtoint ptr %pdev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev2, align 4
  %qp_type = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attrs, i32 0, i32 8
  %6 = ptrtoint ptr %qp_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %qp_type, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %7, label %entry.cleanup_crit_edge [
    i32 1, label %entry.sw.epilog_crit_edge
    i32 2, label %entry.sw.epilog_crit_edge280
    i32 4, label %entry.sw.epilog_crit_edge281
  ]

entry.sw.epilog_crit_edge281:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

entry.sw.epilog_crit_edge280:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.epilog:                                        ; preds = %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge280, %entry.sw.epilog_crit_edge281
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 256) #17
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %sw.epilog.cleanup_crit_edge, label %if.end

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  %10 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %call7.i.i.i, align 8
  %or.i = or i32 %11, 1
  store i32 %or.i, ptr %call7.i.i.i, align 8
  %pyld_len.i = getelementptr inbounds %struct.ocrdma_mqe_hdr, ptr %call7.i.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %pyld_len.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 216, ptr %pyld_len.i, align 4
  %u.i = getelementptr inbounds %struct.ocrdma_mqe, ptr %call7.i.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2566, ptr %u.i, align 4
  %timeout.i.i = getelementptr inbounds %struct.ocrdma_mqe, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 0, i32 1
  %14 = ptrtoint ptr %timeout.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 20, ptr %timeout.i.i, align 8
  %cmd_len2.i.i = getelementptr inbounds %struct.ocrdma_mqe, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 0, i32 2
  %15 = ptrtoint ptr %cmd_len2.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 200, ptr %cmd_len2.i.i, align 4
  %shl = shl nuw i32 %7, 29
  %type_pgsz_pdn = getelementptr inbounds %struct.ocrdma_create_qp_req, ptr %call7.i.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %type_pgsz_pdn to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %type_pgsz_pdn, align 4
  %or172 = or i32 %17, %shl
  store i32 %or172, ptr %type_pgsz_pdn, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pa.i) #14
  %18 = ptrtoint ptr %pa.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %pa.i, align 4, !annotation !180
  %19 = ptrtoint ptr %pd1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pd1, align 4
  %device.i = getelementptr inbounds %struct.ib_pd, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %device.i, align 4
  %pdev2.i = getelementptr inbounds %struct.ocrdma_dev, ptr %22, i32 0, i32 20, i32 6
  %23 = ptrtoint ptr %pdev2.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdev2.i, align 4
  %max_send_sge.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attrs, i32 0, i32 6, i32 2
  %25 = ptrtoint ptr %max_send_sge.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %max_send_sge.i, align 4
  %wqe_size.i = getelementptr inbounds %struct.ocrdma_dev, ptr %22, i32 0, i32 1, i32 27
  %27 = ptrtoint ptr %wqe_size.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %wqe_size.i, align 4
  %cap.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attrs, i32 0, i32 6
  %29 = ptrtoint ptr %cap.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cap.i, align 4
  %add.i = add i32 %30, 1
  %max_wqe.i = getelementptr inbounds %struct.ocrdma_dev, ptr %22, i32 0, i32 1, i32 8
  %31 = ptrtoint ptr %max_wqe.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %max_wqe.i, align 2
  %conv.i = zext i16 %32 to i32
  %33 = tail call i32 @llvm.umin.i32(i32 %add.i, i32 %conv.i) #14
  %sub.i61.i.i = add nsw i32 %33, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i61.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %sub.i61.i.i, 0
  %34 = tail call i32 @llvm.ctlz.i32(i32 %sub.i61.i.i, i1 true) #14, !range !181
  %sub.i.i.i.i.i = sub nuw nsw i32 32, %34
  %sub.i.i.op.i.i.i = shl nuw i32 1, %sub.i.i.i.i.i
  %shl.i.i.i = select i1 %tobool.not.i.i.i.i.i, i32 1, i32 %sub.i.i.op.i.i.i
  %mul.i.i = mul i32 %shl.i.i.i, %28
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.cond.i.i.for.cond.i.i_crit_edge, %if.end
  %i.0.i.i = phi i32 [ 0, %if.end ], [ %inc.i.i, %for.cond.i.i.for.cond.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %i.0.i.i)
  %cmp19.i.i = icmp ult i32 %i.0.i.i, 8
  %shl21.i.i = shl nuw nsw i32 32768, %i.0.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i, i32 %shl21.i.i)
  %cmp22.not.i.i = icmp sgt i32 %mul.i.i, %shl21.i.i
  %or.cond.i.i = select i1 %cmp19.i.i, i1 %cmp22.not.i.i, i1 false
  %inc.i.i = add nuw nsw i32 %i.0.i.i, 1
  br i1 %or.cond.i.i, label %for.cond.i.i.for.cond.i.i_crit_edge, label %for.end.i.i

for.cond.i.i.for.cond.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i.i

for.end.i.i:                                      ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %i.0.i.i)
  %cmp24.i.i = icmp ugt i32 %i.0.i.i, 7
  br i1 %cmp24.i.i, label %do.end.i, label %if.end.i173

do.end.i:                                         ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39, i32 noundef %shl.i.i.i) #18
  br label %ocrdma_set_create_qp_sq_cmd.exit.thread

if.end.i173:                                      ; preds = %for.end.i.i
  %div6263.i.i = lshr exact i32 %shl21.i.i, 3
  %sub29.i.i = add i32 %mul.i.i, -1
  %add30.i.i = add i32 %sub29.i.i, %div6263.i.i
  %div31.i.i = sdiv i32 %add30.i.i, %div6263.i.i
  %mul32.i.i = mul i32 %div31.i.i, %div6263.i.i
  %div38.i.i = sdiv i32 %mul32.i.i, %28
  %sq.i = getelementptr inbounds %struct.ocrdma_qp, ptr %qp, i32 0, i32 2
  %max_cnt.i = getelementptr inbounds %struct.ocrdma_qp, ptr %qp, i32 0, i32 2, i32 5
  %35 = ptrtoint ptr %max_cnt.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %div38.i.i, ptr %max_cnt.i, align 4
  %dev9.i = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  %call.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev9.i, i32 noundef %mul32.i.i, ptr noundef nonnull %pa.i, i32 noundef 3264, i32 noundef 0) #14
  %36 = ptrtoint ptr %sq.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i.i, ptr %sq.i, align 128
  %tobool14.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool14.not.i, label %if.end.i173.ocrdma_set_create_qp_sq_cmd.exit.thread_crit_edge, label %if.end16.i

if.end.i173.ocrdma_set_create_qp_sq_cmd.exit.thread_crit_edge: ; preds = %if.end.i173
  call void @__sanitizer_cov_trace_pc() #16
  br label %ocrdma_set_create_qp_sq_cmd.exit.thread

if.end16.i:                                       ; preds = %if.end.i173
  %len18.i = getelementptr inbounds %struct.ocrdma_qp, ptr %qp, i32 0, i32 2, i32 8
  %37 = ptrtoint ptr %len18.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %mul32.i.i, ptr %len18.i, align 32
  %38 = ptrtoint ptr %pa.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pa.i, align 4
  %pa20.i = getelementptr inbounds %struct.ocrdma_qp, ptr %qp, i32 0, i32 2, i32 9
  %40 = ptrtoint ptr %pa20.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %pa20.i, align 4
  %41 = ptrtoint ptr %wqe_size.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %wqe_size.i, align 4
  %entry_size.i = getelementptr inbounds %struct.ocrdma_qp, ptr %qp, i32 0, i32 2, i32 4
  %43 = ptrtoint ptr %entry_size.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %entry_size.i, align 16
  %wq_addr.i = getelementptr inbounds %struct.ocrdma_create_qp_req, ptr %call7.i.i.i, i32 0, i32 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div31.i.i)
  %cmp9.i.i = icmp sgt i32 %div31.i.i, 0
  br i1 %cmp9.i.i, label %if.end16.i.for.body.i.i_crit_edge, label %if.end16.i.cond.end37.i_crit_edge

if.end16.i.cond.end37.i_crit_edge:                ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end37.i

if.end16.i.for.body.i.i_crit_edge:                ; preds = %if.end16.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end16.i.for.body.i.i_crit_edge
  %i.011.i.i = phi i32 [ %inc.i114.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end16.i.for.body.i.i_crit_edge ]
  %host_pa.addr.010.i.i = phi i32 [ %add.i113.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %39, %if.end16.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.ocrdma_pa, ptr %wq_addr.i, i32 %i.011.i.i
  %44 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %host_pa.addr.010.i.i, ptr %arrayidx.i.i, align 4
  %hi.i.i = getelementptr %struct.ocrdma_pa, ptr %wq_addr.i, i32 %i.011.i.i, i32 1
  %45 = ptrtoint ptr %hi.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %hi.i.i, align 8
  %add.i113.i = add i32 %host_pa.addr.010.i.i, %div6263.i.i
  %inc.i114.i = add nuw nsw i32 %i.011.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i114.i, %div31.i.i
  br i1 %exitcond.not.i.i, label %for.body.i.i.cond.end37.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

for.body.i.i.cond.end37.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end37.i

cond.end37.i:                                     ; preds = %for.body.i.i.cond.end37.i_crit_edge, %if.end16.i.cond.end37.i_crit_edge
  %div112.i = lshr exact i32 %shl21.i.i, 15
  %46 = call i32 @llvm.ctlz.i32(i32 %div112.i, i1 true) #14, !range !181
  %sub.i.op.i.i = shl nuw nsw i32 %46, 16
  %shl.i = xor i32 %sub.i.op.i.i, 2031616
  %47 = ptrtoint ptr %type_pgsz_pdn to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %type_pgsz_pdn, align 4
  %or.i174 = or i32 %48, %shl.i
  store i32 %or.i174, ptr %type_pgsz_pdn, align 4
  %shl39.i = shl i32 %div31.i.i, 16
  %num_wq_rq_pages.i = getelementptr inbounds %struct.ocrdma_create_qp_req, ptr %call7.i.i.i, i32 0, i32 7
  %49 = ptrtoint ptr %num_wq_rq_pages.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %num_wq_rq_pages.i, align 8
  %or40.i = or i32 %50, %shl39.i
  store i32 %or40.i, ptr %num_wq_rq_pages.i, align 8
  %shl41.i = shl i32 %26, 16
  %max_sge_send_write.i = getelementptr inbounds %struct.ocrdma_create_qp_req, ptr %call7.i.i.i, i32 0, i32 4
  %51 = ptrtoint ptr %max_sge_send_write.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %max_sge_send_write.i, align 4
  %and45.i = and i32 %26, 65535
  %or43.i = or i32 %and45.i, %shl41.i
  %or47.i = or i32 %52, %or43.i
  store i32 %or47.i, ptr %max_sge_send_write.i, align 4
  %53 = ptrtoint ptr %max_cnt.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %max_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool.not.i.i117.i = icmp eq i32 %54, 0
  %55 = call i32 @llvm.ctlz.i32(i32 %54, i1 true) #14, !range !181
  %sub.i.op.i118.i = shl nuw nsw i32 %55, 16
  %sub.i.op.i118.i.op = xor i32 %sub.i.op.i118.i, 2031616
  %shl70.i = select i1 %tobool.not.i.i117.i, i32 -65536, i32 %sub.i.op.i118.i.op
  %max_wqe_rqe.i = getelementptr inbounds %struct.ocrdma_create_qp_req, ptr %call7.i.i.i, i32 0, i32 3
  %56 = ptrtoint ptr %max_wqe_rqe.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %max_wqe_rqe.i, align 8
  %or72.i = or i32 %57, %shl70.i
  store i32 %or72.i, ptr %max_wqe_rqe.i, align 8
  %58 = ptrtoint ptr %wqe_size.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %wqe_size.i, align 4
  %shl75.i = shl i32 %59, 16
  %wqe_rqe_size.i = getelementptr inbounds %struct.ocrdma_create_qp_req, ptr %call7.i.i.i, i32 0, i32 8
  %60 = ptrtoint ptr %wqe_rqe_size.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %wqe_rqe_size.i, align 4
  %or77.i = or i32 %61, %shl75.i
  store i32 %or77.i, ptr %wqe_rqe_size.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pa.i) #14
  %srq = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attrs, i32 0, i32 4
  %62 = ptrtoint ptr %srq to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %srq, align 4
  %tobool12.not = icmp eq ptr %63, null
  br i1 %tobool12.not, label %if.else, label %if.then13

ocrdma_set_create_qp_sq_cmd.exit.thread:          ; preds = %if.end.i173.ocrdma_set_create_qp_sq_cmd.exit.thread_crit_edge, %do.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pa.i) #14
  br label %do.end94

if.then13:                                        ; preds = %cond.end37.i
  call void @__sanitizer_cov_trace_pc() #16
  %max_sge_recv_flags = getelementptr inbounds %struct.ocrdma_create_qp_req, ptr %call7.i.i.i, i32 0, i32 5
  %64 = ptrtoint ptr %max_sge_recv_flags to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %max_sge_recv_flags, align 8
  %or17 = or i32 %65, 32
  store i32 %or17, ptr %max_sge_recv_flags, align 8
  %id = getelementptr inbounds %struct.ocrdma_srq, ptr %63, i32 0, i32 9
  %66 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %id, align 16
  %rq_addr = getelementptr inbounds %struct.ocrdma_create_qp_req, ptr %call7.i.i.i, i32 0, i32 11
  %68 = ptrtoint ptr %rq_addr to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %rq_addr, align 4
  %srq18 = getelementptr inbounds %struct.ocrdma_qp, ptr %qp, i32 0, i32 13
  %69 = ptrtoint ptr %srq18 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %63, ptr %srq18, align 4
  br label %if.end23

if.else:                                          ; preds = %cond.end37.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pa.i175) #14
  %70 = ptrtoint ptr %pa.i175 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %pa.i175, align 4
  %71 = ptrtoint ptr %pd1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %pd1, align 4
  %device.i177 = getelementptr inbounds %struct.ib_pd, ptr %72, i32 0, i32 2
  %73 = ptrtoint ptr %device.i177 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %device.i177, align 4
  %pdev2.i178 = getelementptr inbounds %struct.ocrdma_dev, ptr %74, i32 0, i32 20, i32 6
  %75 = ptrtoint ptr %pdev2.i178 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pdev2.i178, align 4
  %max_recv_wr.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attrs, i32 0, i32 6, i32 1
  %77 = ptrtoint ptr %max_recv_wr.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %max_recv_wr.i, align 4
  %add.i179 = add i32 %78, 1
  %rqe_size.i = getelementptr inbounds %struct.ocrdma_dev, ptr %74, i32 0, i32 1, i32 28
  %79 = ptrtoint ptr %rqe_size.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %rqe_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %cmp.i.i180 = icmp eq i32 %78, 0
  %81 = call i32 @llvm.ctlz.i32(i32 %78, i1 true) #14, !range !181
  %sub.i.i.i.i.i193 = sub nuw nsw i32 32, %81
  %sub.i.i.op.i.i.i194 = shl nuw i32 1, %sub.i.i.i.i.i193
  %shl.i.i.i195 = select i1 %cmp.i.i180, i32 1, i32 %sub.i.i.op.i.i.i194
  %mul.i.i198 = mul i32 %shl.i.i.i195, %80
  br label %for.cond.i.i206

for.cond.i.i206:                                  ; preds = %for.cond.i.i206.for.cond.i.i206_crit_edge, %if.else
  %i.0.i.i200 = phi i32 [ 0, %if.else ], [ %inc.i.i205, %for.cond.i.i206.for.cond.i.i206_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %i.0.i.i200)
  %cmp19.i.i201 = icmp ult i32 %i.0.i.i200, 8
  %shl21.i.i202 = shl nuw nsw i32 32768, %i.0.i.i200
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i198, i32 %shl21.i.i202)
  %cmp22.not.i.i203 = icmp sgt i32 %mul.i.i198, %shl21.i.i202
  %or.cond.i.i204 = select i1 %cmp19.i.i201, i1 %cmp22.not.i.i203, i1 false
  %inc.i.i205 = add nuw nsw i32 %i.0.i.i200, 1
  br i1 %or.cond.i.i204, label %for.cond.i.i206.for.cond.i.i206_crit_edge, label %for.end.i.i208

for.cond.i.i206.for.cond.i.i206_crit_edge:        ; preds = %for.cond.i.i206
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i.i206

for.end.i.i208:                                   ; preds = %for.cond.i.i206
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %i.0.i.i200)
  %cmp24.i.i207 = icmp ugt i32 %i.0.i.i200, 7
  br i1 %cmp24.i.i207, label %do.end.i209, label %if.end.i218

do.end.i209:                                      ; preds = %for.end.i.i208
  call void @__sanitizer_cov_trace_pc() #16
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, i32 noundef %add.i179) #18
  br label %ocrdma_set_create_qp_rq_cmd.exit.thread

if.end.i218:                                      ; preds = %for.end.i.i208
  %div6263.i.i210 = lshr exact i32 %shl21.i.i202, 3
  %sub29.i.i211 = add i32 %mul.i.i198, -1
  %add30.i.i212 = add i32 %sub29.i.i211, %div6263.i.i210
  %div31.i.i213 = sdiv i32 %add30.i.i212, %div6263.i.i210
  %mul32.i.i214 = mul i32 %div31.i.i213, %div6263.i.i210
  %div38.i.i215 = sdiv i32 %mul32.i.i214, %80
  %rq.i = getelementptr inbounds %struct.ocrdma_qp, ptr %qp, i32 0, i32 10
  %max_cnt.i216 = getelementptr inbounds %struct.ocrdma_qp, ptr %qp, i32 0, i32 10, i32 5
  %82 = ptrtoint ptr %max_cnt.i216 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %div38.i.i215, ptr %max_cnt.i216, align 4
  %dev8.i = getelementptr inbounds %struct.pci_dev, ptr %76, i32 0, i32 44
  %call.i.i217 = call ptr @dma_alloc_attrs(ptr noundef %dev8.i, i32 noundef %mul32.i.i214, ptr noundef nonnull %pa.i175, i32 noundef 3264, i32 noundef 0) #14
  %83 = ptrtoint ptr %rq.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %call.i.i217, ptr %rq.i, align 4
  %tobool13.not.i = icmp eq ptr %call.i.i217, null
  br i1 %tobool13.not.i, label %if.end.i218.ocrdma_set_create_qp_rq_cmd.exit.thread_crit_edge, label %if.end15.i

if.end.i218.ocrdma_set_create_qp_rq_cmd.exit.thread_crit_edge: ; preds = %if.end.i218
  call void @__sanitizer_cov_trace_pc() #16
  br label %ocrdma_set_create_qp_rq_cmd.exit.thread

if.end15.i:                                       ; preds = %if.end.i218
  %84 = ptrtoint ptr %pa.i175 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %pa.i175, align 4
  %pa17.i = getelementptr inbounds %struct.ocrdma_qp, ptr %qp, i32 0, i32 10, i32 9
  %86 = ptrtoint ptr %pa17.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %pa17.i, align 4
  %len19.i = getelementptr inbounds %struct.ocrdma_qp, ptr %qp, i32 0, i32 10, i32 8
  %87 = ptrtoint ptr %len19.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %mul32.i.i214, ptr %len19.i, align 4
  %88 = ptrtoint ptr %rqe_size.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %rqe_size.i, align 8
  %entry_size.i219 = getelementptr inbounds %struct.ocrdma_qp, ptr %qp, i32 0, i32 10, i32 4
  %90 = ptrtoint ptr %entry_size.i219 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %entry_size.i219, align 4
  %rq_addr.i = getelementptr inbounds %struct.ocrdma_create_qp_req, ptr %call7.i.i.i, i32 0, i32 11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div31.i.i213)
  %cmp9.i.i220 = icmp sgt i32 %div31.i.i213, 0
  br i1 %cmp9.i.i220, label %if.end15.i.for.body.i.i226_crit_edge, label %if.end15.i.cond.end29.i_crit_edge

if.end15.i.cond.end29.i_crit_edge:                ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end29.i

if.end15.i.for.body.i.i226_crit_edge:             ; preds = %if.end15.i
  br label %for.body.i.i226

for.body.i.i226:                                  ; preds = %for.body.i.i226.for.body.i.i226_crit_edge, %if.end15.i.for.body.i.i226_crit_edge
  %i.011.i.i221 = phi i32 [ %inc.i99.i, %for.body.i.i226.for.body.i.i226_crit_edge ], [ 0, %if.end15.i.for.body.i.i226_crit_edge ]
  %host_pa.addr.010.i.i222 = phi i32 [ %add.i98.i, %for.body.i.i226.for.body.i.i226_crit_edge ], [ %85, %if.end15.i.for.body.i.i226_crit_edge ]
  %arrayidx.i.i223 = getelementptr %struct.ocrdma_pa, ptr %rq_addr.i, i32 %i.011.i.i221
  %91 = ptrtoint ptr %arrayidx.i.i223 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %host_pa.addr.010.i.i222, ptr %arrayidx.i.i223, align 4
  %hi.i.i224 = getelementptr %struct.ocrdma_pa, ptr %rq_addr.i, i32 %i.011.i.i221, i32 1
  %92 = ptrtoint ptr %hi.i.i224 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 0, ptr %hi.i.i224, align 8
  %add.i98.i = add i32 %host_pa.addr.010.i.i222, %div6263.i.i210
  %inc.i99.i = add nuw nsw i32 %i.011.i.i221, 1
  %exitcond.not.i.i225 = icmp eq i32 %inc.i99.i, %div31.i.i213
  br i1 %exitcond.not.i.i225, label %for.body.i.i226.cond.end29.i_crit_edge, label %for.body.i.i226.for.body.i.i226_crit_edge

for.body.i.i226.for.body.i.i226_crit_edge:        ; preds = %for.body.i.i226
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i226

for.body.i.i226.cond.end29.i_crit_edge:           ; preds = %for.body.i.i226
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end29.i

cond.end29.i:                                     ; preds = %for.body.i.i226.cond.end29.i_crit_edge, %if.end15.i.cond.end29.i_crit_edge
  %div97.i = lshr exact i32 %shl21.i.i202, 15
  %93 = call i32 @llvm.ctlz.i32(i32 %div97.i, i1 true) #14, !range !181
  %sub.i.op.i.i229 = shl nuw nsw i32 %93, 19
  %shl.i230 = xor i32 %sub.i.op.i.i229, 16252928
  %94 = ptrtoint ptr %type_pgsz_pdn to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %type_pgsz_pdn, align 4
  %or.i232 = or i32 %95, %shl.i230
  store i32 %or.i232, ptr %type_pgsz_pdn, align 4
  %and.i = and i32 %div31.i.i213, 65535
  %96 = ptrtoint ptr %num_wq_rq_pages.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %num_wq_rq_pages.i, align 8
  %or32.i = or i32 %97, %and.i
  store i32 %or32.i, ptr %num_wq_rq_pages.i, align 8
  %max_recv_sge.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attrs, i32 0, i32 6, i32 3
  %98 = ptrtoint ptr %max_recv_sge.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %max_recv_sge.i, align 4
  %shl34.i = shl i32 %99, 16
  %max_sge_recv_flags.i = getelementptr inbounds %struct.ocrdma_create_qp_req, ptr %call7.i.i.i, i32 0, i32 5
  %100 = ptrtoint ptr %max_sge_recv_flags.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %max_sge_recv_flags.i, align 8
  %or36.i = or i32 %101, %shl34.i
  store i32 %or36.i, ptr %max_sge_recv_flags.i, align 8
  %102 = ptrtoint ptr %max_cnt.i216 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %max_cnt.i216, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool.not.i.i102.i = icmp eq i32 %103, 0
  %104 = call i32 @llvm.ctlz.i32(i32 %103, i1 true) #14, !range !181
  %sub.i.op.i103.i = xor i32 %104, 31
  %sub.i104.i = select i1 %tobool.not.i.i102.i, i32 65535, i32 %sub.i.op.i103.i
  %105 = ptrtoint ptr %max_wqe_rqe.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %max_wqe_rqe.i, align 8
  %or61.i = or i32 %106, %sub.i104.i
  store i32 %or61.i, ptr %max_wqe_rqe.i, align 8
  %107 = ptrtoint ptr %rqe_size.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %rqe_size.i, align 8
  %and65.i = and i32 %108, 65535
  %109 = ptrtoint ptr %wqe_rqe_size.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %wqe_rqe_size.i, align 4
  %or66.i = or i32 %110, %and65.i
  store i32 %or66.i, ptr %wqe_rqe_size.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pa.i175) #14
  br label %if.end23

ocrdma_set_create_qp_rq_cmd.exit.thread:          ; preds = %if.end.i218.ocrdma_set_create_qp_rq_cmd.exit.thread_crit_edge, %do.end.i209
  %retval.0.i236.ph = phi i32 [ -12, %if.end.i218.ocrdma_set_create_qp_rq_cmd.exit.thread_crit_edge ], [ -22, %do.end.i209 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pa.i175) #14
  br label %do.end

if.end23:                                         ; preds = %cond.end29.i, %if.then13
  %111 = ptrtoint ptr %pd1 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %pd1, align 4
  %device.i239 = getelementptr inbounds %struct.ib_pd, ptr %112, i32 0, i32 2
  %113 = ptrtoint ptr %device.i239 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %device.i239, align 4
  %pdev2.i240 = getelementptr inbounds %struct.ocrdma_dev, ptr %114, i32 0, i32 20, i32 6
  %115 = ptrtoint ptr %pdev2.i240 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %pdev2.i240, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pa.i237) #14
  %117 = ptrtoint ptr %pa.i237 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 0, ptr %pa.i237, align 4
  %ird_page_size3.i = getelementptr inbounds %struct.ocrdma_dev, ptr %114, i32 0, i32 1, i32 29
  %118 = ptrtoint ptr %ird_page_size3.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %ird_page_size3.i, align 4
  %num_ird_pages.i = getelementptr inbounds %struct.ocrdma_dev, ptr %114, i32 0, i32 1, i32 32
  %120 = ptrtoint ptr %num_ird_pages.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %num_ird_pages.i, align 2
  %conv.i241 = zext i8 %121 to i32
  %mul.i = mul i32 %119, %conv.i241
  %ird.i = getelementptr inbounds %struct.ocrdma_dev, ptr %114, i32 0, i32 1, i32 31
  %122 = ptrtoint ptr %ird.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %ird.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %cmp.i242 = icmp eq i8 %123, 0
  br i1 %cmp.i242, label %if.end23.if.end27_crit_edge, label %if.end.i246

if.end23.if.end27_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27

if.end.i246:                                      ; preds = %if.end23
  %dev8.i243 = getelementptr inbounds %struct.pci_dev, ptr %116, i32 0, i32 44
  %call.i.i244 = call ptr @dma_alloc_attrs(ptr noundef %dev8.i243, i32 noundef %mul.i, ptr noundef nonnull %pa.i237, i32 noundef 3264, i32 noundef 0) #14
  %ird_q_va.i = getelementptr inbounds %struct.ocrdma_qp, ptr %qp, i32 0, i32 25
  %124 = ptrtoint ptr %ird_q_va.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %call.i.i244, ptr %ird_q_va.i, align 32
  %tobool.not.i245 = icmp eq ptr %call.i.i244, null
  br i1 %tobool.not.i245, label %ocrdma_set_create_qp_ird_cmd.exit, label %if.end12.i

if.end12.i:                                       ; preds = %if.end.i246
  %ird_addr.i = getelementptr inbounds %struct.ocrdma_create_qp_req, ptr %call7.i.i.i, i32 0, i32 14
  %125 = ptrtoint ptr %num_ird_pages.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %num_ird_pages.i, align 2
  %conv15.i = zext i8 %126 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %126)
  %cmp9.i.not.i = icmp eq i8 %126, 0
  br i1 %cmp9.i.not.i, label %if.end12.i.ocrdma_build_q_pages.exit.i256_crit_edge, label %for.body.i.preheader.i

if.end12.i.ocrdma_build_q_pages.exit.i256_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ocrdma_build_q_pages.exit.i256

for.body.i.preheader.i:                           ; preds = %if.end12.i
  %127 = ptrtoint ptr %pa.i237 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %pa.i237, align 4
  br label %for.body.i.i254

for.body.i.i254:                                  ; preds = %for.body.i.i254.for.body.i.i254_crit_edge, %for.body.i.preheader.i
  %i.011.i.i247 = phi i32 [ %inc.i.i252, %for.body.i.i254.for.body.i.i254_crit_edge ], [ 0, %for.body.i.preheader.i ]
  %host_pa.addr.010.i.i248 = phi i32 [ %add.i.i251, %for.body.i.i254.for.body.i.i254_crit_edge ], [ %128, %for.body.i.preheader.i ]
  %arrayidx.i.i249 = getelementptr %struct.ocrdma_pa, ptr %ird_addr.i, i32 %i.011.i.i247
  %129 = ptrtoint ptr %arrayidx.i.i249 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %host_pa.addr.010.i.i248, ptr %arrayidx.i.i249, align 4
  %hi.i.i250 = getelementptr %struct.ocrdma_pa, ptr %ird_addr.i, i32 %i.011.i.i247, i32 1
  %130 = ptrtoint ptr %hi.i.i250 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 0, ptr %hi.i.i250, align 8
  %add.i.i251 = add i32 %host_pa.addr.010.i.i248, %119
  %inc.i.i252 = add nuw nsw i32 %i.011.i.i247, 1
  %exitcond.not.i.i253 = icmp eq i32 %inc.i.i252, %conv15.i
  br i1 %exitcond.not.i.i253, label %for.body.i.i254.ocrdma_build_q_pages.exit.i256_crit_edge, label %for.body.i.i254.for.body.i.i254_crit_edge

for.body.i.i254.for.body.i.i254_crit_edge:        ; preds = %for.body.i.i254
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i254

for.body.i.i254.ocrdma_build_q_pages.exit.i256_crit_edge: ; preds = %for.body.i.i254
  call void @__sanitizer_cov_trace_pc() #16
  br label %ocrdma_build_q_pages.exit.i256

ocrdma_build_q_pages.exit.i256:                   ; preds = %for.body.i.i254.ocrdma_build_q_pages.exit.i256_crit_edge, %if.end12.i.ocrdma_build_q_pages.exit.i256_crit_edge
  %rqe_size.i255 = getelementptr inbounds %struct.ocrdma_dev, ptr %114, i32 0, i32 1, i32 28
  %131 = ptrtoint ptr %rqe_size.i255 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %rqe_size.i255, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %132, i32 %mul.i)
  %cmp1755.not.i = icmp ugt i32 %132, %mul.i
  br i1 %cmp1755.not.i, label %ocrdma_build_q_pages.exit.i256.if.end27_crit_edge, label %ocrdma_build_q_pages.exit.i256.for.body.i_crit_edge

ocrdma_build_q_pages.exit.i256.for.body.i_crit_edge: ; preds = %ocrdma_build_q_pages.exit.i256
  br label %for.body.i

ocrdma_build_q_pages.exit.i256.if.end27_crit_edge: ; preds = %ocrdma_build_q_pages.exit.i256
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %ocrdma_build_q_pages.exit.i256.for.body.i_crit_edge
  %133 = phi i32 [ %138, %for.body.i.for.body.i_crit_edge ], [ %132, %ocrdma_build_q_pages.exit.i256.for.body.i_crit_edge ]
  %i.056.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %ocrdma_build_q_pages.exit.i256.for.body.i_crit_edge ]
  %134 = ptrtoint ptr %ird_q_va.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %ird_q_va.i, align 32
  %mul22.i = mul i32 %i.056.i, %133
  %add.ptr.i = getelementptr i8, ptr %135, i32 %mul22.i
  %136 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 270598146, ptr %add.ptr.i, align 4
  %inc.i = add nuw i32 %i.056.i, 1
  %137 = ptrtoint ptr %rqe_size.i255 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %rqe_size.i255, align 8
  %div.i = udiv i32 %mul.i, %138
  %cmp17.i = icmp ult i32 %inc.i, %div.i
  br i1 %cmp17.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end27_crit_edge

for.body.i.if.end27_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

ocrdma_set_create_qp_ird_cmd.exit:                ; preds = %if.end.i246
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pa.i237) #14
  br label %mbx_err

if.end27:                                         ; preds = %for.body.i.if.end27_crit_edge, %ocrdma_build_q_pages.exit.i256.if.end27_crit_edge, %if.end23.if.end27_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pa.i237) #14
  %id28 = getelementptr inbounds %struct.ocrdma_pd, ptr %1, i32 0, i32 2
  %139 = ptrtoint ptr %id28 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %id28, align 4
  %and30 = and i32 %140, 65535
  %141 = ptrtoint ptr %type_pgsz_pdn to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %type_pgsz_pdn, align 4
  %or32 = or i32 %142, %and30
  store i32 %or32, ptr %type_pgsz_pdn, align 4
  %cap_flags.i = getelementptr inbounds %struct.ocrdma_qp, ptr %qp, i32 0, i32 16
  %143 = ptrtoint ptr %cap_flags.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %cap_flags.i, align 4
  %and.i258 = lshr i32 %144, 2
  %145 = and i32 %and.i258, 16
  %and2.i = lshr i32 %144, 4
  %146 = and i32 %and2.i, 8
  %and8.i = shl i32 %144, 2
  %147 = and i32 %and8.i, 4
  %and14.i = and i32 %144, 2
  %148 = and i32 %and.i258, 1
  %max_sge_recv_flags34 = getelementptr inbounds %struct.ocrdma_create_qp_req, ptr %call7.i.i.i, i32 0, i32 5
  %149 = ptrtoint ptr %max_sge_recv_flags34 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %max_sge_recv_flags34, align 8
  %151 = or i32 %150, %and14.i
  %152 = or i32 %151, %145
  %153 = or i32 %152, %146
  %154 = or i32 %153, %147
  %or35 = or i32 %154, %148
  store i32 %or35, ptr %max_sge_recv_flags34, align 8
  %max_ord_per_qp = getelementptr inbounds %struct.ocrdma_dev, ptr %3, i32 0, i32 1, i32 22
  %155 = ptrtoint ptr %max_ord_per_qp to i32
  call void @__asan_load2_noabort(i32 %155)
  %156 = load i16, ptr %max_ord_per_qp, align 8
  %conv36 = zext i16 %156 to i32
  %shl37 = shl nuw i32 %conv36, 16
  %max_ord_ird = getelementptr inbounds %struct.ocrdma_create_qp_req, ptr %call7.i.i.i, i32 0, i32 6
  %157 = ptrtoint ptr %max_ord_ird to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %max_ord_ird, align 4
  %or39 = or i32 %shl37, %158
  store i32 %or39, ptr %max_ord_ird, align 4
  %max_ird_per_qp = getelementptr inbounds %struct.ocrdma_dev, ptr %3, i32 0, i32 1, i32 23
  %159 = ptrtoint ptr %max_ird_per_qp to i32
  call void @__asan_load2_noabort(i32 %159)
  %160 = load i16, ptr %max_ird_per_qp, align 2
  %conv41 = zext i16 %160 to i32
  %or45 = or i32 %or39, %conv41
  store i32 %or45, ptr %max_ord_ird, align 4
  %send_cq = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attrs, i32 0, i32 2
  %161 = ptrtoint ptr %send_cq to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %send_cq, align 4
  %id47 = getelementptr inbounds %struct.ocrdma_cq, ptr %162, i32 0, i32 10
  %163 = ptrtoint ptr %id47 to i32
  call void @__asan_load2_noabort(i32 %163)
  %164 = load i16, ptr %id47, align 4
  %conv48 = zext i16 %164 to i32
  %shl49 = shl nuw i32 %conv48, 16
  %wq_rq_cqid = getelementptr inbounds %struct.ocrdma_create_qp_req, ptr %call7.i.i.i, i32 0, i32 9
  %165 = ptrtoint ptr %wq_rq_cqid to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %wq_rq_cqid, align 8
  %or51 = or i32 %shl49, %166
  store i32 %or51, ptr %wq_rq_cqid, align 8
  %sq_cq = getelementptr inbounds %struct.ocrdma_qp, ptr %qp, i32 0, i32 7
  %167 = ptrtoint ptr %sq_cq to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr %162, ptr %sq_cq, align 4
  %recv_cq = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attrs, i32 0, i32 3
  %168 = ptrtoint ptr %recv_cq to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %recv_cq, align 4
  %id53 = getelementptr inbounds %struct.ocrdma_cq, ptr %169, i32 0, i32 10
  %170 = ptrtoint ptr %id53 to i32
  call void @__asan_load2_noabort(i32 %170)
  %171 = load i16, ptr %id53, align 4
  %conv54 = zext i16 %171 to i32
  %or58 = or i32 %or51, %conv54
  store i32 %or58, ptr %wq_rq_cqid, align 8
  %rq_cq = getelementptr inbounds %struct.ocrdma_qp, ptr %qp, i32 0, i32 12
  %172 = ptrtoint ptr %rq_cq to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr %169, ptr %rq_cq, align 8
  %dpp_enabled = getelementptr inbounds %struct.ocrdma_pd, ptr %1, i32 0, i32 5
  %173 = ptrtoint ptr %dpp_enabled to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %dpp_enabled, align 4, !range !177
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %174)
  %tobool59.not = icmp eq i8 %174, 0
  br i1 %tobool59.not, label %if.end27.if.end71_crit_edge, label %land.lhs.true

if.end27.if.end71_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end71

land.lhs.true:                                    ; preds = %if.end27
  %max_inline_data = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attrs, i32 0, i32 6, i32 4
  %175 = ptrtoint ptr %max_inline_data to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %max_inline_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %176)
  %tobool61.not = icmp eq i32 %176, 0
  br i1 %tobool61.not, label %land.lhs.true.if.end71_crit_edge, label %land.lhs.true62

land.lhs.true.if.end71_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end71

land.lhs.true62:                                  ; preds = %land.lhs.true
  %num_dpp_qp = getelementptr inbounds %struct.ocrdma_pd, ptr %1, i32 0, i32 3
  %177 = ptrtoint ptr %num_dpp_qp to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %num_dpp_qp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %178)
  %tobool63.not = icmp eq i32 %178, 0
  br i1 %tobool63.not, label %land.lhs.true62.if.end71_crit_edge, label %land.lhs.true64

land.lhs.true62.if.end71_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end71

land.lhs.true64:                                  ; preds = %land.lhs.true62
  %max_inline_data68 = getelementptr inbounds %struct.ocrdma_dev, ptr %3, i32 0, i32 1, i32 11
  %179 = ptrtoint ptr %max_inline_data68 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %max_inline_data68, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %176, i32 %180)
  %cmp.not = icmp ugt i32 %176, %180
  br i1 %cmp.not, label %land.lhs.true64.if.end71_crit_edge, label %if.then70

land.lhs.true64.if.end71_crit_edge:               ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end71

if.then70:                                        ; preds = %land.lhs.true64
  %dec.i = add i32 %178, -1
  %181 = ptrtoint ptr %num_dpp_qp to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %dec.i, ptr %num_dpp_qp, align 4
  %dpp_enabled.i = getelementptr inbounds %struct.ocrdma_qp, ptr %qp, i32 0, i32 24
  %182 = ptrtoint ptr %dpp_enabled.i to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 1, ptr %dpp_enabled.i, align 4
  %183 = ptrtoint ptr %max_sge_recv_flags34 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %max_sge_recv_flags34, align 8
  %or.i260 = or i32 %184, 128
  store i32 %or.i260, ptr %max_sge_recv_flags34, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %enable_dpp_cq)
  %tobool.not.i261 = icmp eq i8 %enable_dpp_cq, 0
  br i1 %tobool.not.i261, label %if.then70.if.end71_crit_edge, label %if.end.i263

if.then70.if.end71_crit_edge:                     ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end71

if.end.i263:                                      ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i262 = zext i16 %dpp_cq_id to i32
  %dpp_credits_cqid.i = getelementptr inbounds %struct.ocrdma_create_qp_req, ptr %call7.i.i.i, i32 0, i32 12
  %or4.i = or i32 %conv.i262, 1048576
  %185 = ptrtoint ptr %dpp_credits_cqid.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %or4.i, ptr %dpp_credits_cqid.i, align 4
  br label %if.end71

if.end71:                                         ; preds = %if.end.i263, %if.then70.if.end71_crit_edge, %land.lhs.true64.if.end71_crit_edge, %land.lhs.true62.if.end71_crit_edge, %land.lhs.true.if.end71_crit_edge, %if.end27.if.end71_crit_edge
  %call72 = call fastcc i32 @ocrdma_mbx_cmd(ptr noundef %3, ptr noundef nonnull %call7.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.end75, label %if.end71.mbx_err_crit_edge

if.end71.mbx_err_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #16
  br label %mbx_err

if.end75:                                         ; preds = %if.end71
  %186 = ptrtoint ptr %type_pgsz_pdn to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %type_pgsz_pdn, align 4
  %and.i264 = and i32 %187, 65535
  %id.i = getelementptr inbounds %struct.ocrdma_qp, ptr %qp, i32 0, i32 19
  %188 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 %and.i264, ptr %id.i, align 8
  %189 = ptrtoint ptr %num_wq_rq_pages.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %num_wq_rq_pages.i, align 8
  %conv.i265 = trunc i32 %190 to i16
  %dbid.i = getelementptr inbounds %struct.ocrdma_qp, ptr %qp, i32 0, i32 10, i32 7
  %191 = ptrtoint ptr %dbid.i to i32
  call void @__asan_store2_noabort(i32 %191)
  store i16 %conv.i265, ptr %dbid.i, align 4
  %shr.i = lshr i32 %190, 16
  %conv3.i = trunc i32 %shr.i to i16
  %dbid4.i = getelementptr inbounds %struct.ocrdma_qp, ptr %qp, i32 0, i32 2, i32 7
  %192 = ptrtoint ptr %dbid4.i to i32
  call void @__asan_store2_noabort(i32 %192)
  store i16 %conv3.i, ptr %dbid4.i, align 4
  %193 = ptrtoint ptr %max_ord_ird to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %max_ord_ird, align 4
  %and5.i = and i32 %194, 65535
  %max_ird.i = getelementptr inbounds %struct.ocrdma_qp, ptr %qp, i32 0, i32 18
  %195 = ptrtoint ptr %max_ird.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 %and5.i, ptr %max_ird.i, align 4
  %shr7.i = lshr i32 %194, 16
  %max_ord.i = getelementptr inbounds %struct.ocrdma_qp, ptr %qp, i32 0, i32 17
  %196 = ptrtoint ptr %max_ord.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %shr7.i, ptr %max_ord.i, align 128
  %dpp_enabled.i266 = getelementptr inbounds %struct.ocrdma_qp, ptr %qp, i32 0, i32 24
  %197 = ptrtoint ptr %dpp_enabled.i266 to i32
  call void @__asan_store1_noabort(i32 %197)
  store i8 0, ptr %dpp_enabled.i266, align 4
  %198 = ptrtoint ptr %wqe_rqe_size.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %wqe_rqe_size.i, align 4
  %and8.i267 = and i32 %199, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i267)
  %tobool.not.i268 = icmp eq i32 %and8.i267, 0
  br i1 %tobool.not.i268, label %if.end75.if.end.i273_crit_edge, label %if.then.i

if.end75.if.end.i273_crit_edge:                   ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i273

if.then.i:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #16
  %200 = ptrtoint ptr %dpp_enabled.i266 to i32
  call void @__asan_store1_noabort(i32 %200)
  store i8 1, ptr %dpp_enabled.i266, align 4
  %shr12.i = lshr i32 %199, 16
  %conv13.i = trunc i32 %shr12.i to i16
  %201 = ptrtoint ptr %dpp_credit_lmt to i32
  call void @__asan_store2_noabort(i32 %201)
  store i16 %conv13.i, ptr %dpp_credit_lmt, align 2
  %202 = trunc i32 %199 to i16
  %203 = lshr i16 %202, 1
  %204 = ptrtoint ptr %dpp_offset to i32
  call void @__asan_store2_noabort(i32 %204)
  store i16 %203, ptr %dpp_offset, align 2
  br label %if.end.i273

if.end.i273:                                      ; preds = %if.then.i, %if.end75.if.end.i273_crit_edge
  %205 = ptrtoint ptr %max_wqe_rqe.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %max_wqe_rqe.i, align 8
  %shr18.i = lshr i32 %206, 16
  %shl.i270 = shl nuw i32 1, %shr18.i
  %207 = ptrtoint ptr %max_cnt.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 %shl.i270, ptr %max_cnt.i, align 4
  %sub.i272 = add i32 %shl.i270, -1
  %max_wqe_idx.i = getelementptr inbounds %struct.ocrdma_qp, ptr %qp, i32 0, i32 2, i32 6
  %208 = ptrtoint ptr %max_wqe_idx.i to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 %sub.i272, ptr %max_wqe_idx.i, align 8
  %209 = ptrtoint ptr %srq to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %srq, align 4
  %tobool25.not.i = icmp eq ptr %210, null
  br i1 %tobool25.not.i, label %if.then26.i, label %if.end.i273.ocrdma_get_create_qp_rsp.exit_crit_edge

if.end.i273.ocrdma_get_create_qp_rsp.exit_crit_edge: ; preds = %if.end.i273
  call void @__sanitizer_cov_trace_pc() #16
  br label %ocrdma_get_create_qp_rsp.exit

if.then26.i:                                      ; preds = %if.end.i273
  call void @__sanitizer_cov_trace_pc() #16
  %conv21.i = and i32 %206, 65535
  %shl22.i = shl nuw i32 1, %conv21.i
  %max_cnt28.i = getelementptr inbounds %struct.ocrdma_qp, ptr %qp, i32 0, i32 10, i32 5
  %211 = ptrtoint ptr %max_cnt28.i to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 %shl22.i, ptr %max_cnt28.i, align 4
  %sub29.i = add i32 %shl22.i, -1
  %max_wqe_idx31.i = getelementptr inbounds %struct.ocrdma_qp, ptr %qp, i32 0, i32 10, i32 6
  %212 = ptrtoint ptr %max_wqe_idx31.i to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 %sub29.i, ptr %max_wqe_idx31.i, align 4
  br label %ocrdma_get_create_qp_rsp.exit

ocrdma_get_create_qp_rsp.exit:                    ; preds = %if.then26.i, %if.end.i273.ocrdma_get_create_qp_rsp.exit_crit_edge
  %state = getelementptr inbounds %struct.ocrdma_qp, ptr %qp, i32 0, i32 15
  %213 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 0, ptr %state, align 8
  br label %cleanup.sink.split

mbx_err:                                          ; preds = %if.end71.mbx_err_crit_edge, %ocrdma_set_create_qp_ird_cmd.exit
  %status.0 = phi i32 [ -12, %ocrdma_set_create_qp_ird_cmd.exit ], [ %call72, %if.end71.mbx_err_crit_edge ]
  %rq = getelementptr inbounds %struct.ocrdma_qp, ptr %qp, i32 0, i32 10
  %214 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %rq, align 4
  %tobool76.not = icmp eq ptr %215, null
  br i1 %tobool76.not, label %mbx_err.do.end_crit_edge, label %if.then77

mbx_err.do.end_crit_edge:                         ; preds = %mbx_err
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.then77:                                        ; preds = %mbx_err
  call void @__sanitizer_cov_trace_pc() #16
  %dev78 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %len = getelementptr inbounds %struct.ocrdma_qp, ptr %qp, i32 0, i32 10, i32 8
  %216 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %len, align 4
  %pa = getelementptr inbounds %struct.ocrdma_qp, ptr %qp, i32 0, i32 10, i32 9
  %218 = ptrtoint ptr %pa to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %pa, align 4
  call void @dma_free_attrs(ptr noundef %dev78, i32 noundef %217, ptr noundef nonnull %215, i32 noundef %219, i32 noundef 0) #14
  br label %do.end

do.end:                                           ; preds = %if.then77, %mbx_err.do.end_crit_edge, %ocrdma_set_create_qp_rq_cmd.exit.thread
  %status.1 = phi i32 [ %status.0, %if.then77 ], [ %status.0, %mbx_err.do.end_crit_edge ], [ %retval.0.i236.ph, %ocrdma_set_create_qp_rq_cmd.exit.thread ]
  %id84 = getelementptr inbounds %struct.ocrdma_dev, ptr %3, i32 0, i32 25
  %220 = ptrtoint ptr %id84 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %id84, align 4
  %call85 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef %221) #18
  %dev86 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %222 = ptrtoint ptr %len18.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %len18.i, align 32
  %224 = ptrtoint ptr %sq.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %sq.i, align 128
  %226 = ptrtoint ptr %pa20.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %pa20.i, align 4
  call void @dma_free_attrs(ptr noundef %dev86, i32 noundef %223, ptr noundef %225, i32 noundef %227, i32 noundef 0) #14
  br label %do.end94

do.end94:                                         ; preds = %do.end, %ocrdma_set_create_qp_sq_cmd.exit.thread
  %status.2 = phi i32 [ %status.1, %do.end ], [ -22, %ocrdma_set_create_qp_sq_cmd.exit.thread ]
  %id96 = getelementptr inbounds %struct.ocrdma_dev, ptr %3, i32 0, i32 25
  %228 = ptrtoint ptr %id96 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %id96, align 4
  %call97 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.15, i32 noundef %229) #18
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end94, %ocrdma_get_create_qp_rsp.exit
  %retval.0.ph = phi i32 [ 0, %ocrdma_get_create_qp_rsp.exit ], [ %status.2, %do.end94 ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #14
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -12, %sw.epilog.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocrdma_mbx_query_qp(ptr noundef %dev, ptr nocapture noundef readonly %qp, ptr nocapture noundef writeonly %param) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 256) #17
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %call7.i.i.i, align 8
  %or.i = or i32 %2, 1
  store i32 %or.i, ptr %call7.i.i.i, align 8
  %pyld_len.i = getelementptr inbounds %struct.ocrdma_mqe_hdr, ptr %call7.i.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %pyld_len.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 112, ptr %pyld_len.i, align 4
  %u.i = getelementptr inbounds %struct.ocrdma_mqe, ptr %call7.i.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2567, ptr %u.i, align 4
  %timeout.i.i = getelementptr inbounds %struct.ocrdma_mqe, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 0, i32 1
  %5 = ptrtoint ptr %timeout.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 20, ptr %timeout.i.i, align 8
  %cmd_len2.i.i = getelementptr inbounds %struct.ocrdma_mqe, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 0, i32 2
  %6 = ptrtoint ptr %cmd_len2.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 96, ptr %cmd_len2.i.i, align 4
  %id = getelementptr inbounds %struct.ocrdma_qp, ptr %qp, i32 0, i32 19
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id, align 8
  %qp_id = getelementptr inbounds %struct.ocrdma_query_qp, ptr %call7.i.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %qp_id to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %qp_id, align 4
  %call1 = tail call fastcc i32 @ocrdma_mbx_cmd(ptr noundef %dev, ptr noundef nonnull %call7.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.mbx_err_crit_edge

if.end.mbx_err_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %mbx_err

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %10 = call ptr @memcpy(ptr %param, ptr %qp_id, i32 88)
  br label %mbx_err

mbx_err:                                          ; preds = %if.end4, %if.end.mbx_err_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #14
  br label %cleanup

cleanup:                                          ; preds = %mbx_err, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %mbx_err ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocrdma_mbx_modify_qp(ptr noundef %dev, ptr nocapture noundef %qp, ptr noundef readonly %attrs, i32 noundef %attr_mask) local_unnamed_addr #3 align 64 {
entry:
  %vlan_id.i.i = alloca i16, align 2
  %mac_addr.i.i = alloca [6 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 256) #17
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %call7.i.i.i, align 8
  %or.i = or i32 %2, 1
  store i32 %or.i, ptr %call7.i.i.i, align 8
  %pyld_len.i = getelementptr inbounds %struct.ocrdma_mqe_hdr, ptr %call7.i.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %pyld_len.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 116, ptr %pyld_len.i, align 4
  %u.i = getelementptr inbounds %struct.ocrdma_mqe, ptr %call7.i.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2568, ptr %u.i, align 4
  %timeout.i.i = getelementptr inbounds %struct.ocrdma_mqe, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 0, i32 1
  %5 = ptrtoint ptr %timeout.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 20, ptr %timeout.i.i, align 8
  %cmd_len2.i.i = getelementptr inbounds %struct.ocrdma_mqe, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 0, i32 2
  %6 = ptrtoint ptr %cmd_len2.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 100, ptr %cmd_len2.i.i, align 4
  %id = getelementptr inbounds %struct.ocrdma_qp, ptr %qp, i32 0, i32 19
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id, align 8
  %params = getelementptr inbounds %struct.ocrdma_modify_qp, ptr %call7.i.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %params, align 4
  %flags = getelementptr inbounds %struct.ocrdma_modify_qp, ptr %call7.i.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %flags, align 4
  %and = and i32 %attr_mask, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  %11 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %attrs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %12)
  %13 = icmp ult i32 %12, 7
  br i1 %13, label %switch.lookup, label %if.then3.get_ocrdma_qp_state.exit_crit_edge

if.then3.get_ocrdma_qp_state.exit_crit_edge:      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_ocrdma_qp_state.exit

switch.lookup:                                    ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #16
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.ocrdma_mbx_modify_qp, i32 0, i32 %12
  %14 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %14)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %get_ocrdma_qp_state.exit

get_ocrdma_qp_state.exit:                         ; preds = %switch.lookup, %if.then3.get_ocrdma_qp_state.exit_crit_edge
  %retval.0.i = phi i32 [ %switch.load, %switch.lookup ], [ 192, %if.then3.get_ocrdma_qp_state.exit_crit_edge ]
  %max_sge_recv_flags = getelementptr inbounds %struct.ocrdma_modify_qp, ptr %call7.i.i.i, i32 0, i32 2, i32 3
  %15 = ptrtoint ptr %max_sge_recv_flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %max_sge_recv_flags, align 8
  %or = or i32 %16, %retval.0.i
  store i32 %or, ptr %max_sge_recv_flags, align 8
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %flags, align 4
  br label %if.end14

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %state = getelementptr inbounds %struct.ocrdma_qp, ptr %qp, i32 0, i32 15
  %18 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %state, align 8
  %shl9 = shl i32 %19, 5
  %and10 = and i32 %shl9, 224
  %max_sge_recv_flags12 = getelementptr inbounds %struct.ocrdma_modify_qp, ptr %call7.i.i.i, i32 0, i32 2, i32 3
  %20 = ptrtoint ptr %max_sge_recv_flags12 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %max_sge_recv_flags12, align 8
  %or13 = or i32 %and10, %21
  store i32 %or13, ptr %max_sge_recv_flags12, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.else, %get_ocrdma_qp_state.exit
  %22 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %qp, align 128
  %and.i = and i32 %attr_mask, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i38 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i38, label %if.end14.if.end.i40_crit_edge, label %if.then.i

if.end14.if.end.i40_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i40

if.then.i:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  %pkey_index.i = getelementptr inbounds %struct.ib_qp_attr, ptr %attrs, i32 0, i32 12
  %24 = ptrtoint ptr %pkey_index.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %pkey_index.i, align 8
  %conv.i = zext i16 %25 to i32
  %path_mtu_pkey_indx.i = getelementptr inbounds %struct.ocrdma_modify_qp, ptr %call7.i.i.i, i32 0, i32 2, i32 9
  %26 = ptrtoint ptr %path_mtu_pkey_indx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %path_mtu_pkey_indx.i, align 8
  %or.i39 = or i32 %27, %conv.i
  store i32 %or.i39, ptr %path_mtu_pkey_indx.i, align 8
  %28 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags, align 4
  %or2.i = or i32 %29, 4
  store i32 %or2.i, ptr %flags, align 4
  br label %if.end.i40

if.end.i40:                                       ; preds = %if.then.i, %if.end14.if.end.i40_crit_edge
  %and3.i = and i32 %attr_mask, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %if.end.i40.if.end12.i_crit_edge, label %if.then5.i

if.end.i40.if.end12.i_crit_edge:                  ; preds = %if.end.i40
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12.i

if.then5.i:                                       ; preds = %if.end.i40
  call void @__sanitizer_cov_trace_pc() #16
  %qkey.i = getelementptr inbounds %struct.ib_qp_attr, ptr %attrs, i32 0, i32 4
  %30 = ptrtoint ptr %qkey.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %qkey.i, align 8
  %qkey6.i = getelementptr inbounds %struct.ocrdma_qp, ptr %qp, i32 0, i32 23
  %32 = ptrtoint ptr %qkey6.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %qkey6.i, align 8
  %33 = load i32, ptr %qkey.i, align 8
  %qkey9.i = getelementptr inbounds %struct.ocrdma_modify_qp, ptr %call7.i.i.i, i32 0, i32 2, i32 15
  %34 = ptrtoint ptr %qkey9.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %qkey9.i, align 8
  %35 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flags, align 4
  %or11.i = or i32 %36, 8
  store i32 %or11.i, ptr %flags, align 4
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then5.i, %if.end.i40.if.end12.i_crit_edge
  %and13.i = and i32 %attr_mask, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %if.else.i, label %if.then15.i

if.then15.i:                                      ; preds = %if.end12.i
  %ah_attr1.i.i = getelementptr inbounds %struct.ib_qp_attr, ptr %attrs, i32 0, i32 10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %vlan_id.i.i) #14
  %37 = ptrtoint ptr %vlan_id.i.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 -1, ptr %vlan_id.i.i, align 2
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mac_addr.i.i) #14
  %38 = getelementptr inbounds [6 x i8], ptr %mac_addr.i.i, i32 0, i32 1
  %39 = getelementptr inbounds [6 x i8], ptr %mac_addr.i.i, i32 0, i32 2
  %40 = getelementptr inbounds [6 x i8], ptr %mac_addr.i.i, i32 0, i32 3
  %41 = getelementptr inbounds [6 x i8], ptr %mac_addr.i.i, i32 0, i32 4
  %42 = getelementptr inbounds [6 x i8], ptr %mac_addr.i.i, i32 0, i32 5
  %43 = call ptr @memset(ptr %mac_addr.i.i, i32 255, i32 6)
  %ah_flags.i.i.i = getelementptr inbounds %struct.ib_qp_attr, ptr %attrs, i32 0, i32 10, i32 4
  %44 = ptrtoint ptr %ah_flags.i.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %ah_flags.i.i.i, align 8
  %46 = and i8 %45, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %cmp.i.i = icmp eq i8 %46, 0
  br i1 %cmp.i.i, label %if.then15.i.ocrdma_set_av_params.exit.thread.i_crit_edge, label %if.end.i.i

if.then15.i.ocrdma_set_av_params.exit.thread.i_crit_edge: ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ocrdma_set_av_params.exit.thread.i

if.end.i.i:                                       ; preds = %if.then15.i
  %update_sl.i.i = getelementptr inbounds %struct.ocrdma_dev, ptr %23, i32 0, i32 29
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %update_sl.i.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !182
  tail call void @llvm.prefetch.p0(ptr %update_sl.i.i, i32 1, i32 3, i32 1) #14
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %if.end.i.i
  %47 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %update_sl.i.i, ptr %update_sl.i.i, i32 1, i32 0, ptr elementtype(i32) %update_sl.i.i) #14, !srcloc !183
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %47, 0
  %tobool.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %atomic_cmpxchg.exit.i.i, label %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i.i.i.i

atomic_cmpxchg.exit.i.i:                          ; preds = %do.body.i.i.i.i.i
  %asmresult3.i.i.i.i.i = extractvalue { i32, i32 } %47, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !184
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult3.i.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %asmresult3.i.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %atomic_cmpxchg.exit.i.i.if.end6.i.i_crit_edge, label %if.then5.i.i

atomic_cmpxchg.exit.i.i.if.end6.i.i_crit_edge:    ; preds = %atomic_cmpxchg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6.i.i

if.then5.i.i:                                     ; preds = %atomic_cmpxchg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @ocrdma_init_service_level(ptr noundef %23) #14
  br label %if.end6.i.i

if.end6.i.i:                                      ; preds = %if.then5.i.i, %atomic_cmpxchg.exit.i.i.if.end6.i.i_crit_edge
  %traffic_class.i.i = getelementptr inbounds %struct.ib_qp_attr, ptr %attrs, i32 0, i32 10, i32 0, i32 5
  %48 = ptrtoint ptr %traffic_class.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %traffic_class.i.i, align 2
  %conv.i.i = zext i8 %49 to i32
  %shl.i.i = shl nuw i32 %conv.i.i, 24
  %tclass_sq_psn.i.i = getelementptr inbounds %struct.ocrdma_modify_qp, ptr %call7.i.i.i, i32 0, i32 2, i32 7
  %50 = ptrtoint ptr %tclass_sq_psn.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %tclass_sq_psn.i.i, align 8
  %or.i.i = or i32 %shl.i.i, %51
  store i32 %or.i.i, ptr %tclass_sq_psn.i.i, align 8
  %flow_label.i.i = getelementptr inbounds %struct.ib_qp_attr, ptr %attrs, i32 0, i32 10, i32 0, i32 2
  %52 = ptrtoint ptr %flow_label.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %flow_label.i.i, align 8
  %and7.i.i = and i32 %53, 1048575
  %rnt_rc_sl_fl.i.i = getelementptr inbounds %struct.ocrdma_modify_qp, ptr %call7.i.i.i, i32 0, i32 2, i32 10
  %54 = ptrtoint ptr %rnt_rc_sl_fl.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %rnt_rc_sl_fl.i.i, align 4
  %or9.i.i = or i32 %55, %and7.i.i
  %sl.i.i.i = getelementptr inbounds %struct.ib_qp_attr, ptr %attrs, i32 0, i32 10, i32 1
  %56 = ptrtoint ptr %sl.i.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %sl.i.i.i, align 8
  %conv11.i.i = zext i8 %57 to i32
  %shl12.i.i = shl nuw nsw i32 %conv11.i.i, 20
  %or15.i.i = or i32 %shl12.i.i, %or9.i.i
  store i32 %or15.i.i, ptr %rnt_rc_sl_fl.i.i, align 4
  %hop_limit.i.i = getelementptr inbounds %struct.ib_qp_attr, ptr %attrs, i32 0, i32 10, i32 0, i32 4
  %58 = ptrtoint ptr %hop_limit.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %hop_limit.i.i, align 1
  %conv16.i.i = zext i8 %59 to i32
  %shl17.i.i = shl nuw i32 %conv16.i.i, 24
  %hop_lmt_rq_psn.i.i = getelementptr inbounds %struct.ocrdma_modify_qp, ptr %call7.i.i.i, i32 0, i32 2, i32 6
  %60 = ptrtoint ptr %hop_lmt_rq_psn.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %hop_lmt_rq_psn.i.i, align 4
  %or19.i.i = or i32 %shl17.i.i, %61
  store i32 %or19.i.i, ptr %hop_lmt_rq_psn.i.i, align 4
  %62 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %flags, align 4
  %or20.i.i = or i32 %63, 2097152
  store i32 %or20.i.i, ptr %flags, align 4
  %dgid.i.i = getelementptr inbounds %struct.ocrdma_modify_qp, ptr %call7.i.i.i, i32 0, i32 2, i32 12
  %dgid22.i.i = getelementptr inbounds %struct.ib_qp_attr, ptr %attrs, i32 0, i32 10, i32 0, i32 1
  %64 = call ptr @memcpy(ptr %dgid.i.i, ptr %dgid22.i.i, i32 16)
  %65 = ptrtoint ptr %ah_attr1.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ah_attr1.i.i, align 8
  %call27.i.i = call i32 @rdma_read_gid_l2_fields(ptr noundef %66, ptr noundef nonnull %vlan_id.i.i, ptr noundef nonnull %mac_addr.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i)
  %tobool28.not.i.i = icmp eq i32 %call27.i.i, 0
  br i1 %tobool28.not.i.i, label %if.end30.i.i, label %if.end6.i.i.ocrdma_set_av_params.exit.thread.i_crit_edge

if.end6.i.i.ocrdma_set_av_params.exit.thread.i_crit_edge: ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ocrdma_set_av_params.exit.thread.i

if.end30.i.i:                                     ; preds = %if.end6.i.i
  %sgid_index.i.i = getelementptr inbounds %struct.ib_qp_attr, ptr %attrs, i32 0, i32 10, i32 0, i32 3
  %67 = ptrtoint ptr %sgid_index.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %sgid_index.i.i, align 4
  %conv31.i.i = zext i8 %68 to i32
  %sgid_idx.i.i = getelementptr inbounds %struct.ocrdma_qp, ptr %qp, i32 0, i32 22
  %69 = ptrtoint ptr %sgid_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %conv31.i.i, ptr %sgid_idx.i.i, align 4
  %sgid.i.i = getelementptr inbounds %struct.ocrdma_modify_qp, ptr %call7.i.i.i, i32 0, i32 2, i32 11
  %gid.i.i = getelementptr inbounds %struct.ib_gid_attr, ptr %66, i32 0, i32 2
  %70 = call ptr @memcpy(ptr %sgid.i.i, ptr %gid.i.i, i32 16)
  %71 = ptrtoint ptr %dgid22.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %in6.sroa.0.0.copyload.i.i.i = load i32, ptr %dgid22.i.i, align 8
  %in6.sroa.7.0.dgid.sroa_idx.i.i.i = getelementptr i8, ptr %dgid22.i.i, i32 4
  %72 = ptrtoint ptr %in6.sroa.7.0.dgid.sroa_idx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %in6.sroa.7.0.copyload.i.i.i = load i32, ptr %in6.sroa.7.0.dgid.sroa_idx.i.i.i, align 4
  %in6.sroa.10.0.dgid.sroa_idx.i.i.i = getelementptr %struct.ib_qp_attr, ptr %attrs, i32 0, i32 10, i32 0, i32 1, i32 0, i32 1
  %73 = ptrtoint ptr %in6.sroa.10.0.dgid.sroa_idx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %in6.sroa.10.0.copyload.i.i.i = load i32, ptr %in6.sroa.10.0.dgid.sroa_idx.i.i.i, align 8
  %in6.sroa.13.0.dgid.sroa_idx.i.i.i = getelementptr inbounds i8, ptr %dgid22.i.i, i32 12
  %74 = ptrtoint ptr %in6.sroa.13.0.dgid.sroa_idx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %in6.sroa.13.0.copyload.i.i.i = load i32, ptr %in6.sroa.13.0.dgid.sroa_idx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777217, i32 %in6.sroa.0.0.copyload.i.i.i)
  %cmp.i.i.i.i = icmp ugt i32 %in6.sroa.0.0.copyload.i.i.i, -16777217
  br i1 %cmp.i.i.i.i, label %if.end30.i.i.if.then.i.i.i_crit_edge, label %if.end.i.i.i.i

if.end30.i.i.if.then.i.i.i_crit_edge:             ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.end30.i.i
  %or.i.i.i.i.i = or i32 %in6.sroa.7.0.copyload.i.i.i, %in6.sroa.0.0.copyload.i.i.i
  %xor.i.i.i.i.i = xor i32 %in6.sroa.10.0.copyload.i.i.i, 65535
  %or5.i.i.i.i.i = or i32 %or.i.i.i.i.i, %xor.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %or5.i.i.i.i.i, 0
  %and.i.i.i.i.i = and i32 %in6.sroa.13.0.copyload.i.i.i, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870912, i32 %and.i.i.i.i.i)
  %cmp.i9.i.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, -536870912
  %or.cond29.i.i.i = select i1 %cmp.i.i.i.i.i, i1 %cmp.i9.i.not.i.i.i, i1 false
  br i1 %or.cond29.i.i.i, label %if.end.i.i.i.i.if.then.i.i.i_crit_edge, label %if.else.i.i.i

if.end.i.i.i.i.if.then.i.i.i_crit_edge:           ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end.i.i.i.i.if.then.i.i.i_crit_edge, %if.end30.i.i.if.then.i.i.i_crit_edge
  %75 = ptrtoint ptr %mac_addr.i.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 51, ptr %mac_addr.i.i, align 4
  %76 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 51, ptr %38, align 1
  %in6.sroa.13.12.extract.shift.i.i.i = lshr i32 %in6.sroa.13.0.copyload.i.i.i, 24
  %in6.sroa.13.12.extract.trunc.i.i.i = trunc i32 %in6.sroa.13.12.extract.shift.i.i.i to i8
  %77 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %in6.sroa.13.12.extract.trunc.i.i.i, ptr %39, align 2
  %in6.sroa.13.13.extract.shift.i.i.i = lshr i32 %in6.sroa.13.0.copyload.i.i.i, 16
  %in6.sroa.13.13.extract.trunc.i.i.i = trunc i32 %in6.sroa.13.13.extract.shift.i.i.i to i8
  %78 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %in6.sroa.13.13.extract.trunc.i.i.i, ptr %40, align 1
  %in6.sroa.13.14.extract.shift.i.i.i = lshr i32 %in6.sroa.13.0.copyload.i.i.i, 8
  %in6.sroa.13.14.extract.trunc.i.i.i = trunc i32 %in6.sroa.13.14.extract.shift.i.i.i to i8
  %79 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %in6.sroa.13.14.extract.trunc.i.i.i, ptr %41, align 4
  %in6.sroa.13.15.extract.trunc.i.i.i = trunc i32 %in6.sroa.13.0.copyload.i.i.i to i8
  %80 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %in6.sroa.13.15.extract.trunc.i.i.i, ptr %42, align 1
  br label %ocrdma_resolve_dmac.exit.i.i

if.else.i.i.i:                                    ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -25165824, i32 %in6.sroa.0.0.copyload.i.i.i)
  %cmp.i2.i.i.i = icmp eq i32 %in6.sroa.0.0.copyload.i.i.i, -25165824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %in6.sroa.7.0.copyload.i.i.i)
  %cmp3.i.i.i.i = icmp eq i32 %in6.sroa.7.0.copyload.i.i.i, 0
  %or.cond.i.i.i = select i1 %cmp.i2.i.i.i, i1 %cmp3.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i, label %if.then4.i.i.i, label %if.else5.i.i.i

if.then4.i.i.i:                                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %in6.sroa.10.0.extract.shift.i.i.i = lshr i32 %in6.sroa.10.0.copyload.i.i.i, 8
  %in6.sroa.10.0.extract.trunc.i.i.i = trunc i32 %in6.sroa.10.0.extract.shift.i.i.i to i24
  %81 = ptrtoint ptr %mac_addr.i.i to i32
  call void @__asan_storeN_noabort(i32 %81, i32 3)
  store i24 %in6.sroa.10.0.extract.trunc.i.i.i, ptr %mac_addr.i.i, align 4
  %in6.sroa.13.13.extract.trunc12.i.i.i = trunc i32 %in6.sroa.13.0.copyload.i.i.i to i24
  %82 = ptrtoint ptr %40 to i32
  call void @__asan_storeN_noabort(i32 %82, i32 3)
  store i24 %in6.sroa.13.13.extract.trunc12.i.i.i, ptr %40, align 1
  %83 = lshr i32 %in6.sroa.10.0.copyload.i.i.i, 24
  %84 = trunc i32 %83 to i8
  %85 = xor i8 %84, 2
  store i8 %85, ptr %mac_addr.i.i, align 4
  br label %ocrdma_resolve_dmac.exit.i.i

if.else5.i.i.i:                                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %86 = getelementptr inbounds %struct.ib_qp_attr, ptr %attrs, i32 0, i32 10, i32 6
  %87 = call ptr @memcpy(ptr %mac_addr.i.i, ptr %86, i32 6)
  br label %ocrdma_resolve_dmac.exit.i.i

ocrdma_resolve_dmac.exit.i.i:                     ; preds = %if.else5.i.i.i, %if.then4.i.i.i, %if.then.i.i.i
  %88 = ptrtoint ptr %mac_addr.i.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %mac_addr.i.i, align 4
  %conv41.i.i = zext i8 %89 to i32
  %90 = ptrtoint ptr %38 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %38, align 1
  %conv43.i.i = zext i8 %91 to i32
  %shl44.i.i = shl nuw nsw i32 %conv43.i.i, 8
  %or45.i.i = or i32 %shl44.i.i, %conv41.i.i
  %92 = ptrtoint ptr %39 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %39, align 2
  %conv47.i.i = zext i8 %93 to i32
  %shl48.i.i = shl nuw nsw i32 %conv47.i.i, 16
  %or49.i.i = or i32 %or45.i.i, %shl48.i.i
  %94 = ptrtoint ptr %40 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %40, align 1
  %conv51.i.i = zext i8 %95 to i32
  %shl52.i.i = shl nuw i32 %conv51.i.i, 24
  %or53.i.i = or i32 %or49.i.i, %shl52.i.i
  %dmac_b0_to_b3.i.i = getelementptr inbounds %struct.ocrdma_modify_qp, ptr %call7.i.i.i, i32 0, i32 2, i32 13
  %96 = ptrtoint ptr %dmac_b0_to_b3.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %or53.i.i, ptr %dmac_b0_to_b3.i.i, align 8
  %gid_type.i.i.i = getelementptr inbounds %struct.ib_gid_attr, ptr %66, i32 0, i32 3
  %97 = ptrtoint ptr %gid_type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %gid_type.i.i.i, align 8
  %99 = zext i32 %98 to i64
  call void @__sanitizer_cov_trace_switch(i64 %99, ptr @__sancov_gen_cov_switch_values.92)
  switch i32 %98, label %rdma_gid_attr_network_type.exit.i.i [
    i32 0, label %ocrdma_resolve_dmac.exit.i.i.if.end71.i.i_crit_edge
    i32 1, label %if.then3.i.i.i
  ]

ocrdma_resolve_dmac.exit.i.i.if.end71.i.i_crit_edge: ; preds = %ocrdma_resolve_dmac.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end71.i.i

if.then3.i.i.i:                                   ; preds = %ocrdma_resolve_dmac.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end71.i.i

rdma_gid_attr_network_type.exit.i.i:              ; preds = %ocrdma_resolve_dmac.exit.i.i
  %100 = ptrtoint ptr %gid.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %gid.i.i, align 4
  %arrayidx2.i.i.i.i = getelementptr [4 x i32], ptr %gid.i.i, i32 0, i32 1
  %102 = ptrtoint ptr %arrayidx2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx2.i.i.i.i, align 4
  %or.i.i.i.i = or i32 %103, %101
  %arrayidx4.i.i.i.i = getelementptr %struct.ib_gid_attr, ptr %66, i32 0, i32 2, i32 0, i32 1
  %104 = ptrtoint ptr %arrayidx4.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx4.i.i.i.i, align 4
  %xor.i.i.i.i = xor i32 %105, 65535
  %or5.i.i.i.i = or i32 %or.i.i.i.i, %xor.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i.i.i.i)
  %cmp.i.i1.i.i = icmp eq i32 %or5.i.i.i.i, 0
  br i1 %cmp.i.i1.i.i, label %rdma_gid2ip.exit.i.i, label %rdma_gid_attr_network_type.exit.i.i.if.end71.i.i_crit_edge

rdma_gid_attr_network_type.exit.i.i.if.end71.i.i_crit_edge: ; preds = %rdma_gid_attr_network_type.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end71.i.i

rdma_gid2ip.exit.i.i:                             ; preds = %rdma_gid_attr_network_type.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i.i.i = getelementptr i8, ptr %gid.i.i, i32 12
  %106 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %106, i32 4)
  %107 = load i32, ptr %add.ptr.i.i.i, align 1
  %or.i.i11.i.i = or i32 %in6.sroa.7.0.copyload.i.i.i, %in6.sroa.0.0.copyload.i.i.i
  %xor.i.i13.i.i = xor i32 %in6.sroa.10.0.copyload.i.i.i, 65535
  %or5.i.i14.i.i = or i32 %or.i.i11.i.i, %xor.i.i13.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i.i14.i.i)
  %cmp.i.i15.i.i = icmp eq i32 %or5.i.i14.i.i, 0
  %spec.select = select i1 %cmp.i.i15.i.i, i32 %in6.sroa.13.0.copyload.i.i.i, i32 0
  %108 = ptrtoint ptr %dgid.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %spec.select, ptr %dgid.i.i, align 8
  %109 = ptrtoint ptr %sgid.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %107, ptr %sgid.i.i, align 8
  br label %if.end71.i.i

if.end71.i.i:                                     ; preds = %rdma_gid2ip.exit.i.i, %rdma_gid_attr_network_type.exit.i.i.if.end71.i.i_crit_edge, %if.then3.i.i.i, %ocrdma_resolve_dmac.exit.i.i.if.end71.i.i_crit_edge
  %conv5738.i.i = phi i32 [ 4096, %rdma_gid2ip.exit.i.i ], [ 6144, %rdma_gid_attr_network_type.exit.i.i.if.end71.i.i_crit_edge ], [ %98, %ocrdma_resolve_dmac.exit.i.i.if.end71.i.i_crit_edge ], [ 2048, %if.then3.i.i.i ]
  %110 = ptrtoint ptr %dgid.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %dgid.i.i, align 8
  %112 = call i32 @llvm.bswap.i32(i32 %111) #14
  %113 = ptrtoint ptr %dgid.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %dgid.i.i, align 8
  %add.ptr.1.i.i.i = getelementptr %struct.ocrdma_modify_qp, ptr %call7.i.i.i, i32 0, i32 2, i32 12, i32 4
  %114 = ptrtoint ptr %add.ptr.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %add.ptr.1.i.i.i, align 4
  %116 = call i32 @llvm.bswap.i32(i32 %115) #14
  %117 = ptrtoint ptr %add.ptr.1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %add.ptr.1.i.i.i, align 4
  %add.ptr.2.i.i.i = getelementptr %struct.ocrdma_modify_qp, ptr %call7.i.i.i, i32 0, i32 2, i32 12, i32 8
  %118 = ptrtoint ptr %add.ptr.2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %add.ptr.2.i.i.i, align 8
  %120 = call i32 @llvm.bswap.i32(i32 %119) #14
  %121 = ptrtoint ptr %add.ptr.2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %120, ptr %add.ptr.2.i.i.i, align 8
  %add.ptr.3.i.i.i = getelementptr %struct.ocrdma_modify_qp, ptr %call7.i.i.i, i32 0, i32 2, i32 12, i32 12
  %122 = ptrtoint ptr %add.ptr.3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %add.ptr.3.i.i.i, align 4
  %124 = call i32 @llvm.bswap.i32(i32 %123) #14
  %125 = ptrtoint ptr %add.ptr.3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %124, ptr %add.ptr.3.i.i.i, align 4
  %126 = ptrtoint ptr %sgid.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %sgid.i.i, align 8
  %128 = call i32 @llvm.bswap.i32(i32 %127) #14
  %129 = ptrtoint ptr %sgid.i.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %128, ptr %sgid.i.i, align 8
  %add.ptr.1.i22.i.i = getelementptr %struct.ocrdma_modify_qp, ptr %call7.i.i.i, i32 0, i32 2, i32 11, i32 4
  %130 = ptrtoint ptr %add.ptr.1.i22.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %add.ptr.1.i22.i.i, align 4
  %132 = call i32 @llvm.bswap.i32(i32 %131) #14
  %133 = ptrtoint ptr %add.ptr.1.i22.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %132, ptr %add.ptr.1.i22.i.i, align 4
  %add.ptr.2.i23.i.i = getelementptr %struct.ocrdma_modify_qp, ptr %call7.i.i.i, i32 0, i32 2, i32 11, i32 8
  %134 = ptrtoint ptr %add.ptr.2.i23.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %add.ptr.2.i23.i.i, align 8
  %136 = call i32 @llvm.bswap.i32(i32 %135) #14
  %137 = ptrtoint ptr %add.ptr.2.i23.i.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %136, ptr %add.ptr.2.i23.i.i, align 8
  %add.ptr.3.i24.i.i = getelementptr %struct.ocrdma_modify_qp, ptr %call7.i.i.i, i32 0, i32 2, i32 11, i32 12
  %138 = ptrtoint ptr %add.ptr.3.i24.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %add.ptr.3.i24.i.i, align 4
  %140 = call i32 @llvm.bswap.i32(i32 %139) #14
  %141 = ptrtoint ptr %add.ptr.3.i24.i.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %140, ptr %add.ptr.3.i24.i.i, align 4
  %142 = ptrtoint ptr %41 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %41, align 4
  %conv79.i.i = zext i8 %143 to i32
  %144 = ptrtoint ptr %42 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %42, align 1
  %conv81.i.i = zext i8 %145 to i32
  %shl82.i.i = shl nuw nsw i32 %conv81.i.i, 8
  %or83.i.i = or i32 %shl82.i.i, %conv79.i.i
  %vlan_dmac_b4_to_b5.i.i = getelementptr inbounds %struct.ocrdma_modify_qp, ptr %call7.i.i.i, i32 0, i32 2, i32 14
  %146 = ptrtoint ptr %vlan_dmac_b4_to_b5.i.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %or83.i.i, ptr %vlan_dmac_b4_to_b5.i.i, align 4
  %147 = ptrtoint ptr %vlan_id.i.i to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %vlan_id.i.i, align 2
  %149 = zext i16 %148 to i64
  call void @__sanitizer_cov_trace_switch(i64 %149, ptr @__sancov_gen_cov_switch_values.93)
  switch i16 %148, label %if.end71.i.i.if.end104.i.i_crit_edge [
    i16 -1, label %if.end89.thread.i.i
    i16 0, label %if.end71.i.i.lor.lhs.false.i.i_crit_edge
  ]

if.end71.i.i.lor.lhs.false.i.i_crit_edge:         ; preds = %if.end71.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false.i.i

if.end71.i.i.if.end104.i.i_crit_edge:             ; preds = %if.end71.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end104.i.i

if.end89.thread.i.i:                              ; preds = %if.end71.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %150 = ptrtoint ptr %vlan_id.i.i to i32
  call void @__asan_store2_noabort(i32 %150)
  store i16 0, ptr %vlan_id.i.i, align 2
  br label %lor.lhs.false.i.i

lor.lhs.false.i.i:                                ; preds = %if.end89.thread.i.i, %if.end71.i.i.lor.lhs.false.i.i_crit_edge
  %pfc_state.i.i = getelementptr inbounds %struct.ocrdma_dev, ptr %23, i32 0, i32 28
  %151 = ptrtoint ptr %pfc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %pfc_state.i.i, align 1, !range !177
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %152)
  %tobool92.not.i.i = icmp eq i8 %152, 0
  br i1 %tobool92.not.i.i, label %lor.lhs.false.i.i.ocrdma_set_av_params.exit.i_crit_edge, label %do.end.i.i

lor.lhs.false.i.i.ocrdma_set_av_params.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ocrdma_set_av_params.exit.i

do.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %id.i.i = getelementptr inbounds %struct.ocrdma_dev, ptr %23, i32 0, i32 25
  %153 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %id.i.i, align 4
  %call97.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef %154) #18
  %155 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %id.i.i, align 4
  %call103.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i32 noundef %156) #18
  br label %if.end104.i.i

if.end104.i.i:                                    ; preds = %do.end.i.i, %if.end71.i.i.if.end104.i.i_crit_edge
  %157 = ptrtoint ptr %vlan_id.i.i to i32
  call void @__asan_load2_noabort(i32 %157)
  %158 = load i16, ptr %vlan_id.i.i, align 2
  %conv105.i.i = zext i16 %158 to i32
  %shl106.i.i = shl nuw i32 %conv105.i.i, 16
  %159 = ptrtoint ptr %vlan_dmac_b4_to_b5.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %vlan_dmac_b4_to_b5.i.i, align 4
  %or109.i.i = or i32 %shl106.i.i, %160
  store i32 %or109.i.i, ptr %vlan_dmac_b4_to_b5.i.i, align 4
  %161 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %flags, align 4
  %or111.i.i = or i32 %162, 67108864
  store i32 %or111.i.i, ptr %flags, align 4
  %sl.i.i = getelementptr inbounds %struct.ocrdma_dev, ptr %23, i32 0, i32 27
  %163 = ptrtoint ptr %sl.i.i to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %sl.i.i, align 4
  %165 = and i8 %164, 7
  %and113.i.i = zext i8 %165 to i32
  %shl114.i.i = shl nuw nsw i32 %and113.i.i, 20
  %166 = ptrtoint ptr %rnt_rc_sl_fl.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %rnt_rc_sl_fl.i.i, align 4
  %or117.i.i = or i32 %shl114.i.i, %167
  store i32 %or117.i.i, ptr %rnt_rc_sl_fl.i.i, align 4
  br label %ocrdma_set_av_params.exit.i

ocrdma_set_av_params.exit.thread.i:               ; preds = %if.end6.i.i.ocrdma_set_av_params.exit.thread.i_crit_edge, %if.then15.i.ocrdma_set_av_params.exit.thread.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call27.i.i, %if.end6.i.i.ocrdma_set_av_params.exit.thread.i_crit_edge ], [ -22, %if.then15.i.ocrdma_set_av_params.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mac_addr.i.i) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vlan_id.i.i) #14
  br label %mbx_err

ocrdma_set_av_params.exit.i:                      ; preds = %if.end104.i.i, %lor.lhs.false.i.i.ocrdma_set_av_params.exit.i_crit_edge
  %max_sge_recv_flags.i.i = getelementptr inbounds %struct.ocrdma_modify_qp, ptr %call7.i.i.i, i32 0, i32 2, i32 3
  %168 = ptrtoint ptr %max_sge_recv_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %max_sge_recv_flags.i.i, align 8
  %or123.i.i = or i32 %169, %conv5738.i.i
  store i32 %or123.i.i, ptr %max_sge_recv_flags.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mac_addr.i.i) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vlan_id.i.i) #14
  br label %if.end56.i

if.else.i:                                        ; preds = %if.end12.i
  %qp_type.i = getelementptr inbounds %struct.ocrdma_qp, ptr %qp, i32 0, i32 21
  %170 = ptrtoint ptr %qp_type.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %qp_type.i, align 16
  %172 = zext i32 %171 to i64
  call void @__sanitizer_cov_trace_switch(i64 %172, ptr @__sancov_gen_cov_switch_values.94)
  switch i32 %171, label %if.else.i.if.end56.i_crit_edge [
    i32 1, label %if.else.i.if.then24.i_crit_edge
    i32 4, label %if.else.i.if.then24.i_crit_edge47
  ]

if.else.i.if.then24.i_crit_edge47:                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then24.i

if.else.i.if.then24.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then24.i

if.else.i.if.end56.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end56.i

if.then24.i:                                      ; preds = %if.else.i.if.then24.i_crit_edge, %if.else.i.if.then24.i_crit_edge47
  %mac_addr.i = getelementptr inbounds %struct.ocrdma_dev, ptr %23, i32 0, i32 20, i32 8
  %173 = ptrtoint ptr %mac_addr.i to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %mac_addr.i, align 4
  %conv25.i = zext i8 %174 to i32
  %arrayidx28.i = getelementptr %struct.ocrdma_dev, ptr %23, i32 0, i32 20, i32 8, i32 1
  %175 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %arrayidx28.i, align 1
  %conv29.i = zext i8 %176 to i32
  %shl.i = shl nuw nsw i32 %conv29.i, 8
  %or30.i = or i32 %shl.i, %conv25.i
  %arrayidx33.i = getelementptr %struct.ocrdma_dev, ptr %23, i32 0, i32 20, i32 8, i32 2
  %177 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %arrayidx33.i, align 2
  %conv34.i = zext i8 %178 to i32
  %shl35.i = shl nuw nsw i32 %conv34.i, 16
  %or36.i = or i32 %or30.i, %shl35.i
  %arrayidx39.i = getelementptr %struct.ocrdma_dev, ptr %23, i32 0, i32 20, i32 8, i32 3
  %179 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %arrayidx39.i, align 1
  %conv40.i = zext i8 %180 to i32
  %shl41.i = shl nuw i32 %conv40.i, 24
  %or42.i = or i32 %or36.i, %shl41.i
  %dmac_b0_to_b3.i = getelementptr inbounds %struct.ocrdma_modify_qp, ptr %call7.i.i.i, i32 0, i32 2, i32 13
  %181 = ptrtoint ptr %dmac_b0_to_b3.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %or42.i, ptr %dmac_b0_to_b3.i, align 8
  %arrayidx46.i = getelementptr %struct.ocrdma_dev, ptr %23, i32 0, i32 20, i32 8, i32 4
  %182 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %arrayidx46.i, align 4
  %conv47.i = zext i8 %183 to i32
  %arrayidx50.i = getelementptr %struct.ocrdma_dev, ptr %23, i32 0, i32 20, i32 8, i32 5
  %184 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %arrayidx50.i, align 1
  %conv51.i = zext i8 %185 to i32
  %shl52.i = shl nuw nsw i32 %conv51.i, 8
  %or53.i = or i32 %shl52.i, %conv47.i
  %vlan_dmac_b4_to_b5.i = getelementptr inbounds %struct.ocrdma_modify_qp, ptr %call7.i.i.i, i32 0, i32 2, i32 14
  %186 = ptrtoint ptr %vlan_dmac_b4_to_b5.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 %or53.i, ptr %vlan_dmac_b4_to_b5.i, align 4
  br label %if.end56.i

if.end56.i:                                       ; preds = %if.then24.i, %if.else.i.if.end56.i_crit_edge, %ocrdma_set_av_params.exit.i
  %and57.i = and i32 %attr_mask, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57.i)
  %tobool58.not.i = icmp eq i32 %and57.i, 0
  br i1 %tobool58.not.i, label %if.end56.i.if.end66.i_crit_edge, label %land.lhs.true.i

if.end56.i.if.end66.i_crit_edge:                  ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end66.i

land.lhs.true.i:                                  ; preds = %if.end56.i
  %en_sqd_async_notify.i = getelementptr inbounds %struct.ib_qp_attr, ptr %attrs, i32 0, i32 14
  %187 = ptrtoint ptr %en_sqd_async_notify.i to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %en_sqd_async_notify.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %188)
  %tobool60.not.i = icmp eq i8 %188, 0
  br i1 %tobool60.not.i, label %land.lhs.true.i.if.end66.i_crit_edge, label %if.then61.i

land.lhs.true.i.if.end66.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end66.i

if.then61.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  %max_sge_recv_flags.i = getelementptr inbounds %struct.ocrdma_modify_qp, ptr %call7.i.i.i, i32 0, i32 2, i32 3
  %189 = ptrtoint ptr %max_sge_recv_flags.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %max_sge_recv_flags.i, align 8
  %or63.i = or i32 %190, 256
  store i32 %or63.i, ptr %max_sge_recv_flags.i, align 8
  %191 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %flags, align 4
  %or65.i = or i32 %192, 8192
  store i32 %or65.i, ptr %flags, align 4
  br label %if.end66.i

if.end66.i:                                       ; preds = %if.then61.i, %land.lhs.true.i.if.end66.i_crit_edge, %if.end56.i.if.end66.i_crit_edge
  %and67.i = and i32 %attr_mask, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67.i)
  %tobool68.not.i = icmp eq i32 %and67.i, 0
  br i1 %tobool68.not.i, label %if.end66.i.if.end75.i_crit_edge, label %if.then69.i

if.end66.i.if.end75.i_crit_edge:                  ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end75.i

if.then69.i:                                      ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #16
  %dest_qp_num.i = getelementptr inbounds %struct.ib_qp_attr, ptr %attrs, i32 0, i32 7
  %193 = ptrtoint ptr %dest_qp_num.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %dest_qp_num.i, align 4
  %and70.i = and i32 %194, 16777215
  %ack_to_rnr_rtc_dest_qpn.i = getelementptr inbounds %struct.ocrdma_modify_qp, ptr %call7.i.i.i, i32 0, i32 2, i32 8
  %195 = ptrtoint ptr %ack_to_rnr_rtc_dest_qpn.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %ack_to_rnr_rtc_dest_qpn.i, align 4
  %or72.i = or i32 %196, %and70.i
  store i32 %or72.i, ptr %ack_to_rnr_rtc_dest_qpn.i, align 4
  %197 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %flags, align 4
  %or74.i = or i32 %198, 8192
  store i32 %or74.i, ptr %flags, align 4
  br label %if.end75.i

if.end75.i:                                       ; preds = %if.then69.i, %if.end66.i.if.end75.i_crit_edge
  %and76.i = and i32 %attr_mask, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76.i)
  %tobool77.not.i = icmp eq i32 %and76.i, 0
  br i1 %tobool77.not.i, label %if.end75.i.if.end99.i_crit_edge, label %if.then78.i

if.end75.i.if.end99.i_crit_edge:                  ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end99.i

if.then78.i:                                      ; preds = %if.end75.i
  %path_mtu.i = getelementptr inbounds %struct.ib_qp_attr, ptr %attrs, i32 0, i32 2
  %199 = ptrtoint ptr %path_mtu.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %path_mtu.i, align 8
  %201 = add i32 %200, -6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %201)
  %202 = icmp ult i32 %201, -4
  br i1 %202, label %do.end.i, label %if.end89.i

do.end.i:                                         ; preds = %if.then78.i
  call void @__sanitizer_cov_trace_pc() #16
  %id.i = getelementptr inbounds %struct.ocrdma_dev, ptr %23, i32 0, i32 25
  %203 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %200)
  %cond.i = icmp eq i32 %200, 1
  %spec.select.i = select i1 %cond.i, i32 256, i32 -1
  %call88.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %204, i32 noundef %spec.select.i) #18
  br label %mbx_err

if.end89.i:                                       ; preds = %if.then78.i
  %switch.tableidx = add i32 %200, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %205 = icmp ult i32 %switch.tableidx, 4
  br i1 %205, label %switch.lookup44, label %if.end89.i.ib_mtu_enum_to_int.exit286.i_crit_edge

if.end89.i.ib_mtu_enum_to_int.exit286.i_crit_edge: ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ib_mtu_enum_to_int.exit286.i

switch.lookup44:                                  ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #16
  %switch.gep45 = getelementptr inbounds [4 x i32], ptr @switch.table.ocrdma_mbx_modify_qp.89, i32 0, i32 %switch.tableidx
  %206 = ptrtoint ptr %switch.gep45 to i32
  call void @__asan_load4_noabort(i32 %206)
  %switch.load46 = load i32, ptr %switch.gep45, align 4
  br label %ib_mtu_enum_to_int.exit286.i

ib_mtu_enum_to_int.exit286.i:                     ; preds = %switch.lookup44, %if.end89.i.ib_mtu_enum_to_int.exit286.i_crit_edge
  %retval.0.i285.i = phi i32 [ %switch.load46, %switch.lookup44 ], [ -262144, %if.end89.i.ib_mtu_enum_to_int.exit286.i_crit_edge ]
  %path_mtu_pkey_indx95.i = getelementptr inbounds %struct.ocrdma_modify_qp, ptr %call7.i.i.i, i32 0, i32 2, i32 9
  %207 = ptrtoint ptr %path_mtu_pkey_indx95.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %path_mtu_pkey_indx95.i, align 8
  %or96.i = or i32 %208, %retval.0.i285.i
  store i32 %or96.i, ptr %path_mtu_pkey_indx95.i, align 8
  %209 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %flags, align 4
  %or98.i = or i32 %210, 16
  store i32 %or98.i, ptr %flags, align 4
  br label %if.end99.i

if.end99.i:                                       ; preds = %ib_mtu_enum_to_int.exit286.i, %if.end75.i.if.end99.i_crit_edge
  %and100.i = and i32 %attr_mask, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100.i)
  %tobool101.not.i = icmp eq i32 %and100.i, 0
  br i1 %tobool101.not.i, label %if.end99.i.if.end110.i_crit_edge, label %if.then102.i

if.end99.i.if.end110.i_crit_edge:                 ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end110.i

if.then102.i:                                     ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #16
  %timeout.i = getelementptr inbounds %struct.ib_qp_attr, ptr %attrs, i32 0, i32 20
  %211 = ptrtoint ptr %timeout.i to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %timeout.i, align 8
  %conv103.i = zext i8 %212 to i32
  %shl104.i = shl i32 %conv103.i, 27
  %ack_to_rnr_rtc_dest_qpn106.i = getelementptr inbounds %struct.ocrdma_modify_qp, ptr %call7.i.i.i, i32 0, i32 2, i32 8
  %213 = ptrtoint ptr %ack_to_rnr_rtc_dest_qpn106.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %ack_to_rnr_rtc_dest_qpn106.i, align 4
  %or107.i = or i32 %shl104.i, %214
  store i32 %or107.i, ptr %ack_to_rnr_rtc_dest_qpn106.i, align 4
  %215 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %flags, align 4
  %or109.i = or i32 %216, 32
  store i32 %or109.i, ptr %flags, align 4
  br label %if.end110.i

if.end110.i:                                      ; preds = %if.then102.i, %if.end99.i.if.end110.i_crit_edge
  %and111.i = and i32 %attr_mask, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and111.i)
  %tobool112.not.i = icmp eq i32 %and111.i, 0
  br i1 %tobool112.not.i, label %if.end110.i.if.end121.i_crit_edge, label %if.then113.i

if.end110.i.if.end121.i_crit_edge:                ; preds = %if.end110.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end121.i

if.then113.i:                                     ; preds = %if.end110.i
  call void @__sanitizer_cov_trace_pc() #16
  %retry_cnt.i = getelementptr inbounds %struct.ib_qp_attr, ptr %attrs, i32 0, i32 21
  %217 = ptrtoint ptr %retry_cnt.i to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %retry_cnt.i, align 1
  %conv114.i = zext i8 %218 to i32
  %shl115.i = shl nuw i32 %conv114.i, 24
  %and116.i = and i32 %shl115.i, 117440512
  %rnt_rc_sl_fl.i = getelementptr inbounds %struct.ocrdma_modify_qp, ptr %call7.i.i.i, i32 0, i32 2, i32 10
  %219 = ptrtoint ptr %rnt_rc_sl_fl.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %rnt_rc_sl_fl.i, align 4
  %or118.i = or i32 %and116.i, %220
  store i32 %or118.i, ptr %rnt_rc_sl_fl.i, align 4
  %221 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %flags, align 4
  %or120.i = or i32 %222, 64
  store i32 %or120.i, ptr %flags, align 4
  br label %if.end121.i

if.end121.i:                                      ; preds = %if.then113.i, %if.end110.i.if.end121.i_crit_edge
  %and122.i = and i32 %attr_mask, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and122.i)
  %tobool123.not.i = icmp eq i32 %and122.i, 0
  br i1 %tobool123.not.i, label %if.end121.i.if.end133.i_crit_edge, label %if.then124.i

if.end121.i.if.end133.i_crit_edge:                ; preds = %if.end121.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end133.i

if.then124.i:                                     ; preds = %if.end121.i
  call void @__sanitizer_cov_trace_pc() #16
  %min_rnr_timer.i = getelementptr inbounds %struct.ib_qp_attr, ptr %attrs, i32 0, i32 18
  %223 = ptrtoint ptr %min_rnr_timer.i to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %min_rnr_timer.i, align 8
  %conv125.i = zext i8 %224 to i32
  %shl126.i = shl i32 %conv125.i, 27
  %rnt_rc_sl_fl129.i = getelementptr inbounds %struct.ocrdma_modify_qp, ptr %call7.i.i.i, i32 0, i32 2, i32 10
  %225 = ptrtoint ptr %rnt_rc_sl_fl129.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %rnt_rc_sl_fl129.i, align 4
  %or130.i = or i32 %shl126.i, %226
  store i32 %or130.i, ptr %rnt_rc_sl_fl129.i, align 4
  %227 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %flags, align 4
  %or132.i = or i32 %228, 2048
  store i32 %or132.i, ptr %flags, align 4
  br label %if.end133.i

if.end133.i:                                      ; preds = %if.then124.i, %if.end121.i.if.end133.i_crit_edge
  %and134.i = and i32 %attr_mask, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and134.i)
  %tobool135.not.i = icmp eq i32 %and134.i, 0
  br i1 %tobool135.not.i, label %if.end133.i.if.end145.i_crit_edge, label %if.then136.i

if.end133.i.if.end145.i_crit_edge:                ; preds = %if.end133.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end145.i

if.then136.i:                                     ; preds = %if.end133.i
  call void @__sanitizer_cov_trace_pc() #16
  %rnr_retry.i = getelementptr inbounds %struct.ib_qp_attr, ptr %attrs, i32 0, i32 22
  %229 = ptrtoint ptr %rnr_retry.i to i32
  call void @__asan_load1_noabort(i32 %229)
  %230 = load i8, ptr %rnr_retry.i, align 2
  %conv137.i = zext i8 %230 to i32
  %shl138.i = shl nuw i32 %conv137.i, 24
  %and139.i = and i32 %shl138.i, 117440512
  %ack_to_rnr_rtc_dest_qpn141.i = getelementptr inbounds %struct.ocrdma_modify_qp, ptr %call7.i.i.i, i32 0, i32 2, i32 8
  %231 = ptrtoint ptr %ack_to_rnr_rtc_dest_qpn141.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %ack_to_rnr_rtc_dest_qpn141.i, align 4
  %or142.i = or i32 %and139.i, %232
  store i32 %or142.i, ptr %ack_to_rnr_rtc_dest_qpn141.i, align 4
  %233 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %flags, align 4
  %or144.i = or i32 %234, 128
  store i32 %or144.i, ptr %flags, align 4
  br label %if.end145.i

if.end145.i:                                      ; preds = %if.then136.i, %if.end133.i.if.end145.i_crit_edge
  %and146.i = and i32 %attr_mask, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and146.i)
  %tobool147.not.i = icmp eq i32 %and146.i, 0
  br i1 %tobool147.not.i, label %if.end145.i.if.end154.i_crit_edge, label %if.then148.i

if.end145.i.if.end154.i_crit_edge:                ; preds = %if.end145.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end154.i

if.then148.i:                                     ; preds = %if.end145.i
  call void @__sanitizer_cov_trace_pc() #16
  %sq_psn.i = getelementptr inbounds %struct.ib_qp_attr, ptr %attrs, i32 0, i32 6
  %235 = ptrtoint ptr %sq_psn.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %sq_psn.i, align 8
  %and149.i = and i32 %236, 16777215
  %tclass_sq_psn.i = getelementptr inbounds %struct.ocrdma_modify_qp, ptr %call7.i.i.i, i32 0, i32 2, i32 7
  %237 = ptrtoint ptr %tclass_sq_psn.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %tclass_sq_psn.i, align 8
  %or151.i = or i32 %238, %and149.i
  store i32 %or151.i, ptr %tclass_sq_psn.i, align 8
  %239 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %flags, align 4
  %or153.i = or i32 %240, 4096
  store i32 %or153.i, ptr %flags, align 4
  br label %if.end154.i

if.end154.i:                                      ; preds = %if.then148.i, %if.end145.i.if.end154.i_crit_edge
  %and155.i = and i32 %attr_mask, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and155.i)
  %tobool156.not.i = icmp eq i32 %and155.i, 0
  br i1 %tobool156.not.i, label %if.end154.i.if.end163.i_crit_edge, label %if.then157.i

if.end154.i.if.end163.i_crit_edge:                ; preds = %if.end154.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end163.i

if.then157.i:                                     ; preds = %if.end154.i
  call void @__sanitizer_cov_trace_pc() #16
  %rq_psn.i = getelementptr inbounds %struct.ib_qp_attr, ptr %attrs, i32 0, i32 5
  %241 = ptrtoint ptr %rq_psn.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %rq_psn.i, align 4
  %and158.i = and i32 %242, 16777215
  %hop_lmt_rq_psn.i = getelementptr inbounds %struct.ocrdma_modify_qp, ptr %call7.i.i.i, i32 0, i32 2, i32 6
  %243 = ptrtoint ptr %hop_lmt_rq_psn.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %hop_lmt_rq_psn.i, align 4
  %or160.i = or i32 %244, %and158.i
  store i32 %or160.i, ptr %hop_lmt_rq_psn.i, align 4
  %245 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %flags, align 4
  %or162.i = or i32 %246, 256
  store i32 %or162.i, ptr %flags, align 4
  br label %if.end163.i

if.end163.i:                                      ; preds = %if.then157.i, %if.end154.i.if.end163.i_crit_edge
  %and164.i = and i32 %attr_mask, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and164.i)
  %tobool165.not.i = icmp eq i32 %and164.i, 0
  br i1 %tobool165.not.i, label %if.end163.i.if.end177.i_crit_edge, label %if.then166.i

if.end163.i.if.end177.i_crit_edge:                ; preds = %if.end163.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end177.i

if.then166.i:                                     ; preds = %if.end163.i
  %max_rd_atomic.i = getelementptr inbounds %struct.ib_qp_attr, ptr %attrs, i32 0, i32 16
  %247 = ptrtoint ptr %max_rd_atomic.i to i32
  call void @__asan_load1_noabort(i32 %247)
  %248 = load i8, ptr %max_rd_atomic.i, align 2
  %max_ord_per_qp.i = getelementptr inbounds %struct.ocrdma_dev, ptr %23, i32 0, i32 1, i32 22
  %249 = ptrtoint ptr %max_ord_per_qp.i to i32
  call void @__asan_load2_noabort(i32 %249)
  %250 = load i16, ptr %max_ord_per_qp.i, align 8
  %251 = zext i8 %248 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %250, i16 %251)
  %cmp169.i = icmp ult i16 %250, %251
  br i1 %cmp169.i, label %if.then166.i.mbx_err_crit_edge, label %if.end172.i

if.then166.i.mbx_err_crit_edge:                   ; preds = %if.then166.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mbx_err

if.end172.i:                                      ; preds = %if.then166.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv167.i = zext i8 %248 to i32
  %max_ord.i = getelementptr inbounds %struct.ocrdma_qp, ptr %qp, i32 0, i32 17
  %252 = ptrtoint ptr %max_ord.i to i32
  call void @__asan_store4_noabort(i32 %252)
  store i32 %conv167.i, ptr %max_ord.i, align 128
  %253 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %flags, align 4
  %or176.i = or i32 %254, 1024
  store i32 %or176.i, ptr %flags, align 4
  br label %if.end177.i

if.end177.i:                                      ; preds = %if.end172.i, %if.end163.i.if.end177.i_crit_edge
  %and178.i = and i32 %attr_mask, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and178.i)
  %tobool179.not.i = icmp eq i32 %and178.i, 0
  br i1 %tobool179.not.i, label %if.end177.i.if.end18_crit_edge, label %if.then180.i

if.end177.i.if.end18_crit_edge:                   ; preds = %if.end177.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18

if.then180.i:                                     ; preds = %if.end177.i
  %max_dest_rd_atomic.i = getelementptr inbounds %struct.ib_qp_attr, ptr %attrs, i32 0, i32 17
  %255 = ptrtoint ptr %max_dest_rd_atomic.i to i32
  call void @__asan_load1_noabort(i32 %255)
  %256 = load i8, ptr %max_dest_rd_atomic.i, align 1
  %max_ird_per_qp.i = getelementptr inbounds %struct.ocrdma_dev, ptr %23, i32 0, i32 1, i32 23
  %257 = ptrtoint ptr %max_ird_per_qp.i to i32
  call void @__asan_load2_noabort(i32 %257)
  %258 = load i16, ptr %max_ird_per_qp.i, align 2
  %259 = zext i8 %256 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %258, i16 %259)
  %cmp184.i = icmp ult i16 %258, %259
  br i1 %cmp184.i, label %if.then180.i.mbx_err_crit_edge, label %if.end187.i

if.then180.i.mbx_err_crit_edge:                   ; preds = %if.then180.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mbx_err

if.end187.i:                                      ; preds = %if.then180.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv181.i = zext i8 %256 to i32
  %max_ird.i = getelementptr inbounds %struct.ocrdma_qp, ptr %qp, i32 0, i32 18
  %260 = ptrtoint ptr %max_ird.i to i32
  call void @__asan_store4_noabort(i32 %260)
  store i32 %conv181.i, ptr %max_ird.i, align 4
  %261 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %flags, align 4
  %or191.i = or i32 %262, 512
  store i32 %or191.i, ptr %flags, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.end187.i, %if.end177.i.if.end18_crit_edge
  %max_ord193.i = getelementptr inbounds %struct.ocrdma_qp, ptr %qp, i32 0, i32 17
  %263 = ptrtoint ptr %max_ord193.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %max_ord193.i, align 128
  %shl194.i = shl i32 %264, 16
  %max_ird195.i = getelementptr inbounds %struct.ocrdma_qp, ptr %qp, i32 0, i32 18
  %265 = ptrtoint ptr %max_ird195.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %max_ird195.i, align 4
  %and196.i = and i32 %266, 65535
  %or197.i = or i32 %and196.i, %shl194.i
  %max_ord_ird.i = getelementptr inbounds %struct.ocrdma_modify_qp, ptr %call7.i.i.i, i32 0, i32 2, i32 4
  %267 = ptrtoint ptr %max_ord_ird.i to i32
  call void @__asan_store4_noabort(i32 %267)
  store i32 %or197.i, ptr %max_ord_ird.i, align 4
  %call19 = call fastcc i32 @ocrdma_mbx_cmd(ptr noundef %dev, ptr noundef nonnull %call7.i.i.i)
  br label %mbx_err

mbx_err:                                          ; preds = %if.end18, %if.then180.i.mbx_err_crit_edge, %if.then166.i.mbx_err_crit_edge, %do.end.i, %ocrdma_set_av_params.exit.thread.i
  %status.0 = phi i32 [ %call19, %if.end18 ], [ %retval.0.i.ph.i, %ocrdma_set_av_params.exit.thread.i ], [ -22, %if.then180.i.mbx_err_crit_edge ], [ -22, %if.then166.i.mbx_err_crit_edge ], [ -22, %do.end.i ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #14
  br label %cleanup

cleanup:                                          ; preds = %mbx_err, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.0, %mbx_err ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocrdma_mbx_destroy_qp(ptr noundef %dev, ptr nocapture noundef readonly %qp) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 20, i32 6
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 256) #17
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %call7.i.i.i, align 8
  %or.i = or i32 %4, 1
  store i32 %or.i, ptr %call7.i.i.i, align 8
  %pyld_len.i = getelementptr inbounds %struct.ocrdma_mqe_hdr, ptr %call7.i.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %pyld_len.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 20, ptr %pyld_len.i, align 4
  %u.i = getelementptr inbounds %struct.ocrdma_mqe, ptr %call7.i.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2569, ptr %u.i, align 4
  %timeout.i.i = getelementptr inbounds %struct.ocrdma_mqe, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 0, i32 1
  %7 = ptrtoint ptr %timeout.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 20, ptr %timeout.i.i, align 8
  %cmd_len2.i.i = getelementptr inbounds %struct.ocrdma_mqe, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 0, i32 2
  %8 = ptrtoint ptr %cmd_len2.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4, ptr %cmd_len2.i.i, align 4
  %id = getelementptr inbounds %struct.ocrdma_qp, ptr %qp, i32 0, i32 19
  %9 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %id, align 8
  %qp_id = getelementptr inbounds %struct.ocrdma_destroy_qp, ptr %call7.i.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %qp_id to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %qp_id, align 4
  %call2 = tail call fastcc i32 @ocrdma_mbx_cmd(ptr noundef %dev, ptr noundef nonnull %call7.i.i.i)
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #14
  %sq = getelementptr inbounds %struct.ocrdma_qp, ptr %qp, i32 0, i32 2
  %12 = ptrtoint ptr %sq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sq, align 128
  %tobool6.not = icmp eq ptr %13, null
  br i1 %tobool6.not, label %if.end.if.end13_crit_edge, label %if.then7

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %dev8 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %len = getelementptr inbounds %struct.ocrdma_qp, ptr %qp, i32 0, i32 2, i32 8
  %14 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len, align 32
  %pa = getelementptr inbounds %struct.ocrdma_qp, ptr %qp, i32 0, i32 2, i32 9
  %16 = ptrtoint ptr %pa to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pa, align 4
  tail call void @dma_free_attrs(ptr noundef %dev8, i32 noundef %15, ptr noundef nonnull %13, i32 noundef %17, i32 noundef 0) #14
  br label %if.end13

if.end13:                                         ; preds = %if.then7, %if.end.if.end13_crit_edge
  %srq = getelementptr inbounds %struct.ocrdma_qp, ptr %qp, i32 0, i32 13
  %18 = ptrtoint ptr %srq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %srq, align 4
  %tobool14.not = icmp eq ptr %19, null
  br i1 %tobool14.not, label %land.lhs.true, label %if.end13.if.end25_crit_edge

if.end13.if.end25_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

land.lhs.true:                                    ; preds = %if.end13
  %rq = getelementptr inbounds %struct.ocrdma_qp, ptr %qp, i32 0, i32 10
  %20 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rq, align 4
  %tobool16.not = icmp eq ptr %21, null
  br i1 %tobool16.not, label %land.lhs.true.if.end25_crit_edge, label %if.then17

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

if.then17:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %dev18 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %len20 = getelementptr inbounds %struct.ocrdma_qp, ptr %qp, i32 0, i32 10, i32 8
  %22 = ptrtoint ptr %len20 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len20, align 4
  %pa24 = getelementptr inbounds %struct.ocrdma_qp, ptr %qp, i32 0, i32 10, i32 9
  %24 = ptrtoint ptr %pa24 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pa24, align 4
  tail call void @dma_free_attrs(ptr noundef %dev18, i32 noundef %23, ptr noundef nonnull %21, i32 noundef %25, i32 noundef 0) #14
  br label %if.end25

if.end25:                                         ; preds = %if.then17, %land.lhs.true.if.end25_crit_edge, %if.end13.if.end25_crit_edge
  %dpp_enabled = getelementptr inbounds %struct.ocrdma_qp, ptr %qp, i32 0, i32 24
  %26 = ptrtoint ptr %dpp_enabled to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %dpp_enabled, align 4, !range !177
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool26.not = icmp eq i8 %27, 0
  br i1 %tobool26.not, label %if.end25.cleanup_crit_edge, label %if.then27

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then27:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  %pd = getelementptr inbounds %struct.ocrdma_qp, ptr %qp, i32 0, i32 20
  %28 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pd, align 4
  %num_dpp_qp = getelementptr inbounds %struct.ocrdma_pd, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %num_dpp_qp to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_dpp_qp, align 4
  %inc = add i32 %31, 1
  store i32 %inc, ptr %num_dpp_qp, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %if.end25.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.then27 ], [ %call2, %if.end25.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocrdma_mbx_create_srq(ptr noundef %dev, ptr nocapture noundef %srq, ptr nocapture noundef readonly %srq_attr, ptr nocapture noundef readonly %pd) local_unnamed_addr #3 align 64 {
entry:
  %pa = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pa) #14
  %0 = ptrtoint ptr %pa to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %pa, align 4, !annotation !180
  %pdev1 = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 20, i32 6
  %1 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pdev1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 256) #17
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call7.i.i.i, align 8
  %or.i = or i32 %5, 1
  store i32 %or.i, ptr %call7.i.i.i, align 8
  %pyld_len.i = getelementptr inbounds %struct.ocrdma_mqe_hdr, ptr %call7.i.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %pyld_len.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 92, ptr %pyld_len.i, align 4
  %u.i = getelementptr inbounds %struct.ocrdma_mqe, ptr %call7.i.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2579, ptr %u.i, align 4
  %timeout.i.i = getelementptr inbounds %struct.ocrdma_mqe, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 0, i32 1
  %8 = ptrtoint ptr %timeout.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 20, ptr %timeout.i.i, align 8
  %cmd_len2.i.i = getelementptr inbounds %struct.ocrdma_mqe, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 0, i32 2
  %9 = ptrtoint ptr %cmd_len2.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 76, ptr %cmd_len2.i.i, align 4
  %id = getelementptr inbounds %struct.ocrdma_pd, ptr %pd, i32 0, i32 2
  %10 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id, align 4
  %and = and i32 %11, 65535
  %pgsz_pdid = getelementptr inbounds %struct.ocrdma_create_srq, ptr %call7.i.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %pgsz_pdid to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and, ptr %pgsz_pdid, align 4
  %attr = getelementptr inbounds %struct.ib_srq_init_attr, ptr %srq_attr, i32 0, i32 2
  %13 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %attr, align 4
  %rqe_size = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 1, i32 28
  %15 = ptrtoint ptr %rqe_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rqe_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i = icmp eq i32 %14, 0
  %17 = tail call i32 @llvm.ctlz.i32(i32 %14, i1 true) #14, !range !181
  %sub.i.i.i.i = sub nuw nsw i32 32, %17
  %sub.i.i.op.i.i = shl nuw i32 1, %sub.i.i.i.i
  %shl.i.i = select i1 %cmp.i, i32 1, i32 %sub.i.i.op.i.i
  %mul.i = mul i32 %shl.i.i, %16
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %if.end
  %i.0.i = phi i32 [ 0, %if.end ], [ %inc.i, %for.cond.i.for.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %i.0.i)
  %cmp19.i = icmp ult i32 %i.0.i, 8
  %shl21.i = shl nuw nsw i32 32768, %i.0.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %shl21.i)
  %cmp22.not.i = icmp sgt i32 %mul.i, %shl21.i
  %or.cond.i = select i1 %cmp19.i, i1 %cmp22.not.i, i1 false
  %inc.i = add nuw nsw i32 %i.0.i, 1
  br i1 %or.cond.i, label %for.cond.i.for.cond.i_crit_edge, label %for.end.i

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i

for.end.i:                                        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %i.0.i)
  %cmp24.i = icmp ugt i32 %i.0.i, 7
  br i1 %cmp24.i, label %do.end, label %if.end9

do.end:                                           ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, i32 noundef %14) #18
  br label %ret

if.end9:                                          ; preds = %for.end.i
  %div6263.i = lshr exact i32 %shl21.i, 3
  %sub29.i = add i32 %mul.i, -1
  %add30.i = add i32 %sub29.i, %div6263.i
  %div31.i = sdiv i32 %add30.i, %div6263.i
  %mul32.i = mul i32 %div31.i, %div6263.i
  %div38.i = sdiv i32 %mul32.i, %16
  %dev10 = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %dev10, i32 noundef %mul32.i, ptr noundef nonnull %pa, i32 noundef 3264, i32 noundef 0) #14
  %rq = getelementptr inbounds %struct.ocrdma_srq, ptr %srq, i32 0, i32 2
  %18 = ptrtoint ptr %rq to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i, ptr %rq, align 128
  %tobool14.not = icmp eq ptr %call.i, null
  br i1 %tobool14.not, label %if.end9.ret_crit_edge, label %if.end16

if.end9.ret_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %ret

if.end16:                                         ; preds = %if.end9
  %rq_addr = getelementptr inbounds %struct.ocrdma_create_srq, ptr %call7.i.i.i, i32 0, i32 5
  %19 = ptrtoint ptr %pa to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pa, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div31.i)
  %cmp9.i = icmp sgt i32 %div31.i, 0
  br i1 %cmp9.i, label %if.end16.for.body.i_crit_edge, label %if.end16.ocrdma_build_q_pages.exit_crit_edge

if.end16.ocrdma_build_q_pages.exit_crit_edge:     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %ocrdma_build_q_pages.exit

if.end16.for.body.i_crit_edge:                    ; preds = %if.end16
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end16.for.body.i_crit_edge
  %i.011.i = phi i32 [ %inc.i129, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end16.for.body.i_crit_edge ]
  %host_pa.addr.010.i = phi i32 [ %add.i128, %for.body.i.for.body.i_crit_edge ], [ %20, %if.end16.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.ocrdma_pa, ptr %rq_addr, i32 %i.011.i
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %host_pa.addr.010.i, ptr %arrayidx.i, align 8
  %hi.i = getelementptr %struct.ocrdma_pa, ptr %rq_addr, i32 %i.011.i, i32 1
  %22 = ptrtoint ptr %hi.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %hi.i, align 4
  %add.i128 = add i32 %host_pa.addr.010.i, %div6263.i
  %inc.i129 = add nuw nsw i32 %i.011.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i129, %div31.i
  br i1 %exitcond.not.i, label %for.body.i.ocrdma_build_q_pages.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.body.i.ocrdma_build_q_pages.exit_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ocrdma_build_q_pages.exit

ocrdma_build_q_pages.exit:                        ; preds = %for.body.i.ocrdma_build_q_pages.exit_crit_edge, %if.end16.ocrdma_build_q_pages.exit_crit_edge
  %23 = ptrtoint ptr %rqe_size to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rqe_size, align 8
  %entry_size = getelementptr inbounds %struct.ocrdma_srq, ptr %srq, i32 0, i32 2, i32 4
  %25 = ptrtoint ptr %entry_size to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %entry_size, align 16
  %pa21 = getelementptr inbounds %struct.ocrdma_srq, ptr %srq, i32 0, i32 2, i32 9
  %26 = ptrtoint ptr %pa21 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %20, ptr %pa21, align 4
  %len23 = getelementptr inbounds %struct.ocrdma_srq, ptr %srq, i32 0, i32 2, i32 8
  %27 = ptrtoint ptr %len23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %mul32.i, ptr %len23, align 32
  %max_cnt = getelementptr inbounds %struct.ocrdma_srq, ptr %srq, i32 0, i32 2, i32 5
  %28 = ptrtoint ptr %max_cnt to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %div38.i, ptr %max_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div38.i)
  %tobool.not.i.i = icmp eq i32 %div38.i, 0
  %29 = call i32 @llvm.ctlz.i32(i32 %div38.i, i1 true) #14, !range !181
  %sub.i.op.i = xor i32 %29, 31
  %sub.i131 = select i1 %tobool.not.i.i, i32 -1, i32 %sub.i.op.i
  %max_sge_rqe = getelementptr inbounds %struct.ocrdma_create_srq, ptr %call7.i.i.i, i32 0, i32 3
  %max_sge = getelementptr inbounds %struct.ib_srq_init_attr, ptr %srq_attr, i32 0, i32 2, i32 1
  %30 = ptrtoint ptr %max_sge to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %max_sge, align 4
  %shl = shl i32 %31, 16
  %or = or i32 %shl, %sub.i131
  %32 = ptrtoint ptr %max_sge_rqe to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %or, ptr %max_sge_rqe, align 8
  %div = shl nuw i32 1, %i.0.i
  %33 = call i32 @llvm.ctlz.i32(i32 %div, i1 true) #14, !range !181
  %sub.i.op.i133 = shl nuw nsw i32 %33, 16
  %shl49 = xor i32 %sub.i.op.i133, 2031616
  %34 = ptrtoint ptr %pgsz_pdid to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pgsz_pdid, align 4
  %or51 = or i32 %35, %shl49
  store i32 %or51, ptr %pgsz_pdid, align 4
  %36 = ptrtoint ptr %rqe_size to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rqe_size, align 8
  %and55 = and i32 %37, 65535
  %pages_rqe_sz = getelementptr inbounds %struct.ocrdma_create_srq, ptr %call7.i.i.i, i32 0, i32 4
  %38 = ptrtoint ptr %pages_rqe_sz to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pages_rqe_sz, align 4
  %shl57 = shl i32 %div31.i, 16
  %or56 = or i32 %and55, %shl57
  %or59 = or i32 %or56, %39
  store i32 %or59, ptr %pages_rqe_sz, align 4
  %call60 = call fastcc i32 @ocrdma_mbx_cmd(ptr noundef %dev, ptr noundef nonnull %call7.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end63, label %mbx_err

if.end63:                                         ; preds = %ocrdma_build_q_pages.exit
  call void @__sanitizer_cov_trace_pc() #16
  %40 = ptrtoint ptr %pgsz_pdid to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pgsz_pdid, align 4
  %id65 = getelementptr inbounds %struct.ocrdma_srq, ptr %srq, i32 0, i32 9
  %42 = ptrtoint ptr %id65 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %id65, align 16
  %conv67 = trunc i32 %41 to i16
  %dbid = getelementptr inbounds %struct.ocrdma_srq, ptr %srq, i32 0, i32 2, i32 7
  %43 = ptrtoint ptr %dbid to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %conv67, ptr %dbid, align 4
  %44 = ptrtoint ptr %max_sge_rqe to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %max_sge_rqe, align 8
  %and69 = and i32 %45, 65535
  %shl70 = shl nuw i32 1, %and69
  %46 = ptrtoint ptr %max_cnt to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %shl70, ptr %max_cnt, align 4
  %sub73 = add i32 %shl70, -1
  %max_wqe_idx = getelementptr inbounds %struct.ocrdma_srq, ptr %srq, i32 0, i32 2, i32 6
  %47 = ptrtoint ptr %max_wqe_idx to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %sub73, ptr %max_wqe_idx, align 8
  %shr77 = lshr i32 %45, 16
  %max_sges = getelementptr inbounds %struct.ocrdma_srq, ptr %srq, i32 0, i32 2, i32 1
  %48 = ptrtoint ptr %max_sges to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %shr77, ptr %max_sges, align 4
  br label %ret

mbx_err:                                          ; preds = %ocrdma_build_q_pages.exit
  call void @__sanitizer_cov_trace_pc() #16
  %49 = ptrtoint ptr %len23 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %len23, align 32
  %51 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %rq, align 128
  %53 = ptrtoint ptr %pa to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %pa, align 4
  call void @dma_free_attrs(ptr noundef %dev10, i32 noundef %50, ptr noundef %52, i32 noundef %54, i32 noundef 0) #14
  br label %ret

ret:                                              ; preds = %mbx_err, %if.end63, %if.end9.ret_crit_edge, %do.end
  %status.0 = phi i32 [ -22, %do.end ], [ %call60, %mbx_err ], [ 0, %if.end63 ], [ -12, %if.end9.ret_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #14
  br label %cleanup

cleanup:                                          ; preds = %ret, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.0, %ret ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pa) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocrdma_mbx_modify_srq(ptr nocapture noundef readonly %srq, ptr nocapture noundef readonly %srq_attr) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %pd1 = getelementptr inbounds %struct.ocrdma_srq, ptr %srq, i32 0, i32 8
  %0 = ptrtoint ptr %pd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pd1, align 4
  %device = getelementptr inbounds %struct.ib_pd, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 256) #17
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %5 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %call7.i.i.i, align 8
  %or.i = or i32 %6, 1
  store i32 %or.i, ptr %call7.i.i.i, align 8
  %pyld_len.i = getelementptr inbounds %struct.ocrdma_mqe_hdr, ptr %call7.i.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %pyld_len.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 24, ptr %pyld_len.i, align 4
  %u.i = getelementptr inbounds %struct.ocrdma_mqe, ptr %call7.i.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2581, ptr %u.i, align 4
  %timeout.i.i = getelementptr inbounds %struct.ocrdma_mqe, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 0, i32 1
  %9 = ptrtoint ptr %timeout.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 20, ptr %timeout.i.i, align 8
  %cmd_len2.i.i = getelementptr inbounds %struct.ocrdma_mqe, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 0, i32 2
  %10 = ptrtoint ptr %cmd_len2.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 8, ptr %cmd_len2.i.i, align 4
  %id = getelementptr inbounds %struct.ocrdma_srq, ptr %srq, i32 0, i32 9
  %11 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id, align 16
  %id3 = getelementptr inbounds %struct.ocrdma_modify_srq, ptr %call7.i.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %id3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %id3, align 4
  %srq_limit = getelementptr inbounds %struct.ib_srq_attr, ptr %srq_attr, i32 0, i32 2
  %14 = ptrtoint ptr %srq_limit to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %srq_limit, align 4
  %shl = shl i32 %15, 16
  %limit_max_rqe = getelementptr inbounds %struct.ocrdma_modify_srq, ptr %call7.i.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %limit_max_rqe to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %limit_max_rqe, align 8
  %or = or i32 %17, %shl
  store i32 %or, ptr %limit_max_rqe, align 8
  %call4 = tail call fastcc i32 @ocrdma_mbx_cmd(ptr noundef %3, ptr noundef nonnull %call7.i.i.i)
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocrdma_mbx_query_srq(ptr nocapture noundef readonly %srq, ptr nocapture noundef writeonly %srq_attr) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %srq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %srq, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 256) #17
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %call7.i.i.i, align 8
  %or.i = or i32 %4, 1
  store i32 %or.i, ptr %call7.i.i.i, align 8
  %pyld_len.i = getelementptr inbounds %struct.ocrdma_mqe_hdr, ptr %call7.i.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %pyld_len.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 20, ptr %pyld_len.i, align 4
  %u.i = getelementptr inbounds %struct.ocrdma_mqe, ptr %call7.i.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2580, ptr %u.i, align 4
  %timeout.i.i = getelementptr inbounds %struct.ocrdma_mqe, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 0, i32 1
  %7 = ptrtoint ptr %timeout.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 20, ptr %timeout.i.i, align 8
  %cmd_len2.i.i = getelementptr inbounds %struct.ocrdma_mqe, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 0, i32 2
  %8 = ptrtoint ptr %cmd_len2.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4, ptr %cmd_len2.i.i, align 4
  %dbid = getelementptr inbounds %struct.ocrdma_srq, ptr %srq, i32 0, i32 2, i32 7
  %9 = ptrtoint ptr %dbid to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %dbid, align 4
  %conv = zext i16 %10 to i32
  %id = getelementptr inbounds %struct.ocrdma_query_srq, ptr %call7.i.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv, ptr %id, align 4
  %call2 = tail call fastcc i32 @ocrdma_mbx_cmd(ptr noundef %1, ptr noundef nonnull %call7.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp eq i32 %call2, 0
  br i1 %cmp, label %if.then4, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %srq_lmt_max_sge = getelementptr inbounds %struct.ocrdma_query_srq_rsp, ptr %call7.i.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %srq_lmt_max_sge to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %srq_lmt_max_sge, align 8
  %and = and i32 %13, 65535
  %max_sge = getelementptr inbounds %struct.ib_srq_attr, ptr %srq_attr, i32 0, i32 1
  %14 = ptrtoint ptr %max_sge to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %and, ptr %max_sge, align 4
  %15 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %id, align 4
  %shr = lshr i32 %16, 16
  %17 = ptrtoint ptr %srq_attr to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %shr, ptr %srq_attr, align 4
  %shr6 = lshr i32 %13, 16
  %srq_limit = getelementptr inbounds %struct.ib_srq_attr, ptr %srq_attr, i32 0, i32 2
  %18 = ptrtoint ptr %srq_limit to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %shr6, ptr %srq_limit, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end7 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocrdma_mbx_destroy_srq(ptr noundef %dev, ptr nocapture noundef readonly %srq) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 20, i32 6
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 256) #17
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %call7.i.i.i, align 8
  %or.i = or i32 %4, 1
  store i32 %or.i, ptr %call7.i.i.i, align 8
  %pyld_len.i = getelementptr inbounds %struct.ocrdma_mqe_hdr, ptr %call7.i.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %pyld_len.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 20, ptr %pyld_len.i, align 4
  %u.i = getelementptr inbounds %struct.ocrdma_mqe, ptr %call7.i.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2582, ptr %u.i, align 4
  %timeout.i.i = getelementptr inbounds %struct.ocrdma_mqe, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 0, i32 1
  %7 = ptrtoint ptr %timeout.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 20, ptr %timeout.i.i, align 8
  %cmd_len2.i.i = getelementptr inbounds %struct.ocrdma_mqe, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 0, i32 2
  %8 = ptrtoint ptr %cmd_len2.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4, ptr %cmd_len2.i.i, align 4
  %id = getelementptr inbounds %struct.ocrdma_srq, ptr %srq, i32 0, i32 9
  %9 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %id, align 16
  %id2 = getelementptr inbounds %struct.ocrdma_destroy_srq, ptr %call7.i.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %id2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %id2, align 4
  %call3 = tail call fastcc i32 @ocrdma_mbx_cmd(ptr noundef %dev, ptr noundef nonnull %call7.i.i.i)
  %rq = getelementptr inbounds %struct.ocrdma_srq, ptr %srq, i32 0, i32 2
  %12 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rq, align 128
  %tobool4.not = icmp eq ptr %13, null
  br i1 %tobool4.not, label %if.end.if.end11_crit_edge, label %if.then5

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %dev6 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %len = getelementptr inbounds %struct.ocrdma_srq, ptr %srq, i32 0, i32 2, i32 8
  %14 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len, align 32
  %pa = getelementptr inbounds %struct.ocrdma_srq, ptr %srq, i32 0, i32 2, i32 9
  %16 = ptrtoint ptr %pa to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pa, align 4
  tail call void @dma_free_attrs(ptr noundef %dev6, i32 noundef %15, ptr noundef nonnull %13, i32 noundef %17, i32 noundef 0) #14
  br label %if.end11

if.end11:                                         ; preds = %if.then5, %if.end.if.end11_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocrdma_init_service_level(ptr noundef %dev) local_unnamed_addr #3 align 64 {
entry:
  %pa.i = alloca i32, align 4
  %cmd.i = alloca %struct.ocrdma_mqe, align 4
  %dcbxcfg = alloca %struct.ocrdma_dcbx_cfg, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 312, ptr nonnull %dcbxcfg) #14
  %0 = call ptr @memset(ptr %dcbxcfg, i32 255, i32 312)
  %pdev1.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 20, i32 6
  %pyld_len.i = getelementptr inbounds %struct.ocrdma_mqe_hdr, ptr %cmd.i, i32 0, i32 1
  %u.i = getelementptr inbounds %struct.ocrdma_mqe, ptr %cmd.i, i32 0, i32 1
  %pa_hi.i = getelementptr inbounds %struct.ocrdma_mqe, ptr %cmd.i, i32 0, i32 1, i32 0, i32 0, i32 1
  %len.i = getelementptr inbounds %struct.ocrdma_mqe, ptr %cmd.i, i32 0, i32 1, i32 0, i32 0, i32 2
  %pfc_state.i = getelementptr inbounds %struct.ocrdma_dcbx_cfg, ptr %dcbxcfg, i32 0, i32 2
  %id14.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 25
  %pfc_prio65.i = getelementptr inbounds %struct.ocrdma_dcbx_cfg, ptr %dcbxcfg, i32 0, i32 8
  %add.ptr.i134.1.i = getelementptr inbounds i8, ptr %pfc_prio65.i, i32 1
  %add.ptr.i134.2.i = getelementptr inbounds i8, ptr %pfc_prio65.i, i32 2
  %add.ptr.i134.3.i = getelementptr inbounds i8, ptr %pfc_prio65.i, i32 3
  %add.ptr.i134.4.i = getelementptr inbounds %struct.ocrdma_dcbx_cfg, ptr %dcbxcfg, i32 0, i32 8, i32 1
  %add.ptr.i134.5.i = getelementptr inbounds i8, ptr %pfc_prio65.i, i32 5
  %add.ptr.i134.6.i = getelementptr inbounds i8, ptr %pfc_prio65.i, i32 6
  %add.ptr.i134.7.i = getelementptr inbounds i8, ptr %pfc_prio65.i, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %indx.066 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %ptype.065 = phi i32 [ 1, %entry ], [ 0, %for.inc.for.body_crit_edge ]
  %cmp.i64 = phi ptr [ @.str.54, %entry ], [ @.str.55, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pa.i) #14
  %1 = ptrtoint ptr %pa.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %pa.i, align 4, !annotation !180
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %cmd.i) #14
  %2 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev1.i, align 4
  %4 = call ptr @memset(ptr %cmd.i, i32 0, i32 256)
  %5 = ptrtoint ptr %pyld_len.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 328, ptr %pyld_len.i, align 4
  %dev2.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %call.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev2.i, i32 noundef 328, ptr noundef nonnull %pa.i, i32 noundef 3264, i32 noundef 0) #14
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %ocrdma_mbx_get_dcbx_config.exit.thread, label %if.end.i

ocrdma_mbx_get_dcbx_config.exit.thread:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %cmd.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pa.i) #14
  br label %do.end

if.end.i:                                         ; preds = %for.body
  %6 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cmd.i, align 4
  %or.i = or i32 %7, 8
  store i32 %or.i, ptr %cmd.i, align 4
  %8 = ptrtoint ptr %pa.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pa.i, align 4
  %10 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %u.i, align 4
  %11 = ptrtoint ptr %pa_hi.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %pa_hi.i, align 4
  %12 = ptrtoint ptr %pyld_len.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pyld_len.i, align 4
  %14 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %len.i, align 4
  %15 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 4097, ptr %call.i.i, align 4
  %timeout.i.i = getelementptr inbounds %struct.ocrdma_mbx_hdr, ptr %call.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %timeout.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 20, ptr %timeout.i.i, align 4
  %sub.i.i = add i32 %13, -16
  %cmd_len2.i.i = getelementptr inbounds %struct.ocrdma_mbx_hdr, ptr %call.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %cmd_len2.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %sub.i.i, ptr %cmd_len2.i.i, align 4
  %param_type.i = getelementptr inbounds %struct.ocrdma_get_dcbx_cfg_req, ptr %call.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %param_type.i to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 %ptype.065, ptr %param_type.i, align 1
  %call12.i = call fastcc i32 @ocrdma_mbx_cmd(ptr noundef %dev, ptr noundef nonnull %cmd.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.end.i.for.body.i.i_crit_edge, label %ocrdma_mbx_get_dcbx_config.exit.thread67

if.end.i.for.body.i.i_crit_edge:                  ; preds = %if.end.i
  br label %for.body.i.i

ocrdma_mbx_get_dcbx_config.exit.thread67:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %19 = ptrtoint ptr %pyld_len.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pyld_len.i, align 4
  %21 = ptrtoint ptr %pa.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pa.i, align 4
  call void @dma_free_attrs(ptr noundef %dev2.i, i32 noundef %20, ptr noundef nonnull %call.i.i, i32 noundef %22, i32 noundef 0) #14
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %cmd.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pa.i) #14
  br label %do.end

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end.i.for.body.i.i_crit_edge
  %i.08.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.i.for.body.i.i_crit_edge ]
  %add.ptr.i.i = getelementptr i32, ptr %call.i.i, i32 %i.08.i.i
  %23 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr.i.i, align 4
  %25 = call i32 @llvm.bswap.i32(i32 %24) #14
  %26 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %add.ptr.i.i, align 4
  %inc.i.i = add nuw nsw i32 %i.08.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 82
  br i1 %exitcond.not.i.i, label %ocrdma_mbx_get_dcbx_config.exit, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

ocrdma_mbx_get_dcbx_config.exit:                  ; preds = %for.body.i.i
  %27 = call ptr @memcpy(ptr %dcbxcfg, ptr %param_type.i, i32 312)
  %28 = ptrtoint ptr %pyld_len.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pyld_len.i, align 4
  %30 = ptrtoint ptr %pa.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pa.i, align 4
  call void @dma_free_attrs(ptr noundef %dev2.i, i32 noundef %29, ptr noundef nonnull %call.i.i, i32 noundef %31, i32 noundef 0) #14
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %cmd.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pa.i) #14
  br i1 %tobool13.not.i, label %if.end, label %ocrdma_mbx_get_dcbx_config.exit.do.end_crit_edge

ocrdma_mbx_get_dcbx_config.exit.do.end_crit_edge: ; preds = %ocrdma_mbx_get_dcbx_config.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

do.end:                                           ; preds = %ocrdma_mbx_get_dcbx_config.exit.do.end_crit_edge, %ocrdma_mbx_get_dcbx_config.exit.thread67, %ocrdma_mbx_get_dcbx_config.exit.thread
  %status.0.i54 = phi i32 [ -12, %ocrdma_mbx_get_dcbx_config.exit.thread ], [ %call12.i, %ocrdma_mbx_get_dcbx_config.exit.do.end_crit_edge ], [ %call12.i, %ocrdma_mbx_get_dcbx_config.exit.thread67 ]
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, i32 noundef %status.0.i54) #18
  br label %for.inc

if.end:                                           ; preds = %ocrdma_mbx_get_dcbx_config.exit
  %32 = ptrtoint ptr %dcbxcfg to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dcbxcfg, align 4
  %and.i = and i32 %33, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i41 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i41, label %do.end.i, label %if.end.i42

do.end.i:                                         ; preds = %if.end
  %34 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pdev1.i, align 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44, i32 3
  %36 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %37, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.i.dev_name.exit.i_crit_edge

do.end.i.dev_name.exit.i_crit_edge:               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  %38 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev1.i, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %do.end.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %39, %if.end.i.i ], [ %37, %do.end.i.dev_name.exit.i_crit_edge ]
  %40 = ptrtoint ptr %id14.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %id14.i, align 4
  %call2.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef %retval.0.i.i, i32 noundef %41) #18
  br label %for.inc

if.end.i42:                                       ; preds = %if.end
  %42 = ptrtoint ptr %pfc_state.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %pfc_state.i, align 4
  %44 = and i32 %43, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %44)
  %.not.i = icmp eq i32 %44, 9
  %45 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pdev1.i, align 4
  %init_name.i127.i = getelementptr inbounds %struct.pci_dev, ptr %46, i32 0, i32 44, i32 3
  %47 = ptrtoint ptr %init_name.i127.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %init_name.i127.i, align 8
  %tobool.not.i128.i = icmp eq ptr %48, null
  br i1 %.not.i, label %do.end26.i, label %do.end8.i

do.end8.i:                                        ; preds = %if.end.i42
  br i1 %tobool.not.i128.i, label %if.end.i124.i, label %do.end8.i.dev_name.exit126.i_crit_edge

do.end8.i.dev_name.exit126.i_crit_edge:           ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_name.exit126.i

if.end.i124.i:                                    ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  %dev12.i = getelementptr inbounds %struct.pci_dev, ptr %46, i32 0, i32 44
  %49 = ptrtoint ptr %dev12.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev12.i, align 4
  br label %dev_name.exit126.i

dev_name.exit126.i:                               ; preds = %if.end.i124.i, %do.end8.i.dev_name.exit126.i_crit_edge
  %retval.0.i125.i = phi ptr [ %50, %if.end.i124.i ], [ %48, %do.end8.i.dev_name.exit126.i_crit_edge ]
  %51 = ptrtoint ptr %id14.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %id14.i, align 4
  %and16.i = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  %cond18.i = select i1 %tobool17.not.i, ptr @.str.57, ptr @.str.56
  %and20.i = and i32 %43, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i)
  %tobool21.not.i = icmp eq i32 %and20.i, 0
  %cond22.i = select i1 %tobool21.not.i, ptr @.str.58, ptr @.str
  %call23.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %retval.0.i125.i, i32 noundef %52, ptr noundef nonnull %cmp.i64, ptr noundef nonnull %cond18.i, ptr noundef nonnull %cond22.i) #18
  br label %for.inc

do.end26.i:                                       ; preds = %if.end.i42
  br i1 %tobool.not.i128.i, label %if.end.i129.i, label %do.end26.i.dev_name.exit131.i_crit_edge

do.end26.i.dev_name.exit131.i_crit_edge:          ; preds = %do.end26.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_name.exit131.i

if.end.i129.i:                                    ; preds = %do.end26.i
  call void @__sanitizer_cov_trace_pc() #16
  %dev30.i = getelementptr inbounds %struct.pci_dev, ptr %46, i32 0, i32 44
  %53 = ptrtoint ptr %dev30.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev30.i, align 4
  br label %dev_name.exit131.i

dev_name.exit131.i:                               ; preds = %if.end.i129.i, %do.end26.i.dev_name.exit131.i_crit_edge
  %retval.0.i130.i = phi ptr [ %54, %if.end.i129.i ], [ %48, %do.end26.i.dev_name.exit131.i_crit_edge ]
  %55 = ptrtoint ptr %id14.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %id14.i, align 4
  %call33.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef %retval.0.i130.i, i32 noundef %56) #18
  %shr.i = lshr i32 %33, 16
  %and36.i = and i32 %shr.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i)
  %cmp37142.not.i = icmp eq i32 %and36.i, 0
  br i1 %cmp37142.not.i, label %dev_name.exit131.i.for.inc_crit_edge, label %dev_name.exit131.i.for.body.i_crit_edge

dev_name.exit131.i.for.body.i_crit_edge:          ; preds = %dev_name.exit131.i
  br label %for.body.i

dev_name.exit131.i.for.inc_crit_edge:             ; preds = %dev_name.exit131.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

for.body.i:                                       ; preds = %for.inc93.i.for.body.i_crit_edge, %dev_name.exit131.i.for.body.i_crit_edge
  %indx.0143.i = phi i32 [ %inc94.i, %for.inc93.i.for.body.i_crit_edge ], [ 0, %dev_name.exit131.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.ocrdma_dcbx_cfg, ptr %dcbxcfg, i32 0, i32 9, i32 %indx.0143.i
  %57 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %58)
  %tobool49.not.i = icmp ugt i32 %58, 16777215
  %59 = and i32 %58, 16777215
  call void @__sanitizer_cov_trace_const_cmp4(i32 35093, i32 %59)
  %60 = icmp eq i32 %59, 35093
  %61 = and i1 %tobool49.not.i, %60
  br i1 %61, label %for.cond58.preheader.i, label %for.body.i.for.inc93.i_crit_edge

for.body.i.for.inc93.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc93.i

for.cond58.preheader.i:                           ; preds = %for.body.i
  %app_prio62.i = getelementptr %struct.ocrdma_dcbx_cfg, ptr %dcbxcfg, i32 0, i32 9, i32 %indx.0143.i, i32 2
  %62 = ptrtoint ptr %app_prio62.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %app_prio62.i, align 4
  %64 = ptrtoint ptr %pfc_prio65.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %pfc_prio65.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool70.not.i = icmp eq i8 %63, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool73.not.i = icmp eq i8 %65, 0
  %or.cond121.i = select i1 %tobool70.not.i, i1 true, i1 %tobool73.not.i
  br i1 %or.cond121.i, label %for.inc.i, label %for.cond58.preheader.i.do.end17_crit_edge

for.cond58.preheader.i.do.end17_crit_edge:        ; preds = %for.cond58.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end17

for.inc.i:                                        ; preds = %for.cond58.preheader.i
  %add.ptr.i.1.i = getelementptr i8, ptr %app_prio62.i, i32 1
  %66 = ptrtoint ptr %add.ptr.i.1.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %add.ptr.i.1.i, align 1
  %68 = ptrtoint ptr %add.ptr.i134.1.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %add.ptr.i134.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool70.not.1.i = icmp eq i8 %67, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool73.not.1.i = icmp eq i8 %69, 0
  %or.cond121.1.i = select i1 %tobool70.not.1.i, i1 true, i1 %tobool73.not.1.i
  br i1 %or.cond121.1.i, label %for.inc.1.i, label %for.inc.i.do.end17_crit_edge

for.inc.i.do.end17_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end17

for.inc.1.i:                                      ; preds = %for.inc.i
  %add.ptr.i.2.i = getelementptr i8, ptr %app_prio62.i, i32 2
  %70 = ptrtoint ptr %add.ptr.i.2.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %add.ptr.i.2.i, align 2
  %72 = ptrtoint ptr %add.ptr.i134.2.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %add.ptr.i134.2.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool70.not.2.i = icmp eq i8 %71, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool73.not.2.i = icmp eq i8 %73, 0
  %or.cond121.2.i = select i1 %tobool70.not.2.i, i1 true, i1 %tobool73.not.2.i
  br i1 %or.cond121.2.i, label %for.inc.2.i, label %for.inc.1.i.do.end17_crit_edge

for.inc.1.i.do.end17_crit_edge:                   ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end17

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %add.ptr.i.3.i = getelementptr i8, ptr %app_prio62.i, i32 3
  %74 = ptrtoint ptr %add.ptr.i.3.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %add.ptr.i.3.i, align 1
  %76 = ptrtoint ptr %add.ptr.i134.3.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %add.ptr.i134.3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool70.not.3.i = icmp eq i8 %75, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool73.not.3.i = icmp eq i8 %77, 0
  %or.cond121.3.i = select i1 %tobool70.not.3.i, i1 true, i1 %tobool73.not.3.i
  br i1 %or.cond121.3.i, label %for.inc.3.i, label %for.inc.2.i.do.end17_crit_edge

for.inc.2.i.do.end17_crit_edge:                   ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end17

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %add.ptr.i.4.i = getelementptr i8, ptr %app_prio62.i, i32 4
  %78 = ptrtoint ptr %add.ptr.i.4.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %add.ptr.i.4.i, align 4
  %80 = ptrtoint ptr %add.ptr.i134.4.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %add.ptr.i134.4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool70.not.4.i = icmp eq i8 %79, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool73.not.4.i = icmp eq i8 %81, 0
  %or.cond121.4.i = select i1 %tobool70.not.4.i, i1 true, i1 %tobool73.not.4.i
  br i1 %or.cond121.4.i, label %for.inc.4.i, label %for.inc.3.i.do.end17_crit_edge

for.inc.3.i.do.end17_crit_edge:                   ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end17

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %add.ptr.i.5.i = getelementptr i8, ptr %app_prio62.i, i32 5
  %82 = ptrtoint ptr %add.ptr.i.5.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %add.ptr.i.5.i, align 1
  %84 = ptrtoint ptr %add.ptr.i134.5.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %add.ptr.i134.5.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool70.not.5.i = icmp eq i8 %83, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool73.not.5.i = icmp eq i8 %85, 0
  %or.cond121.5.i = select i1 %tobool70.not.5.i, i1 true, i1 %tobool73.not.5.i
  br i1 %or.cond121.5.i, label %for.inc.5.i, label %for.inc.4.i.do.end17_crit_edge

for.inc.4.i.do.end17_crit_edge:                   ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end17

for.inc.5.i:                                      ; preds = %for.inc.4.i
  %add.ptr.i.6.i = getelementptr i8, ptr %app_prio62.i, i32 6
  %86 = ptrtoint ptr %add.ptr.i.6.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %add.ptr.i.6.i, align 2
  %88 = ptrtoint ptr %add.ptr.i134.6.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %add.ptr.i134.6.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool70.not.6.i = icmp eq i8 %87, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool73.not.6.i = icmp eq i8 %89, 0
  %or.cond121.6.i = select i1 %tobool70.not.6.i, i1 true, i1 %tobool73.not.6.i
  br i1 %or.cond121.6.i, label %for.inc.6.i, label %for.inc.5.i.do.end17_crit_edge

for.inc.5.i.do.end17_crit_edge:                   ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end17

for.inc.6.i:                                      ; preds = %for.inc.5.i
  %add.ptr.i.7.i = getelementptr i8, ptr %app_prio62.i, i32 7
  %90 = ptrtoint ptr %add.ptr.i.7.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %add.ptr.i.7.i, align 1
  %92 = ptrtoint ptr %add.ptr.i134.7.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %add.ptr.i134.7.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool70.not.7.i = icmp eq i8 %91, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool73.not.7.i = icmp eq i8 %93, 0
  %or.cond121.7.i = select i1 %tobool70.not.7.i, i1 true, i1 %tobool73.not.7.i
  br i1 %or.cond121.7.i, label %do.end82.i, label %for.inc.6.i.do.end17_crit_edge

for.inc.6.i.do.end17_crit_edge:                   ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end17

do.end82.i:                                       ; preds = %for.inc.6.i
  %94 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %pdev1.i, align 4
  %init_name.i135.i = getelementptr inbounds %struct.pci_dev, ptr %95, i32 0, i32 44, i32 3
  %96 = ptrtoint ptr %init_name.i135.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %init_name.i135.i, align 8
  %tobool.not.i136.i = icmp eq ptr %97, null
  br i1 %tobool.not.i136.i, label %if.end.i137.i, label %do.end82.i.dev_name.exit139.i_crit_edge

do.end82.i.dev_name.exit139.i_crit_edge:          ; preds = %do.end82.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_name.exit139.i

if.end.i137.i:                                    ; preds = %do.end82.i
  call void @__sanitizer_cov_trace_pc() #16
  %dev86.i = getelementptr inbounds %struct.pci_dev, ptr %95, i32 0, i32 44
  %98 = ptrtoint ptr %dev86.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dev86.i, align 4
  br label %dev_name.exit139.i

dev_name.exit139.i:                               ; preds = %if.end.i137.i, %do.end82.i.dev_name.exit139.i_crit_edge
  %retval.0.i138.i = phi ptr [ %99, %if.end.i137.i ], [ %97, %do.end82.i.dev_name.exit139.i_crit_edge ]
  %100 = ptrtoint ptr %id14.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %id14.i, align 4
  %call90.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef %retval.0.i138.i, i32 noundef %101, i32 noundef 35093) #18
  br label %for.inc93.i

for.inc93.i:                                      ; preds = %dev_name.exit139.i, %for.body.i.for.inc93.i_crit_edge
  %inc94.i = add nuw nsw i32 %indx.0143.i, 1
  %exitcond.not.i = icmp eq i32 %inc94.i, %and36.i
  br i1 %exitcond.not.i, label %for.inc93.i.for.inc_crit_edge, label %for.inc93.i.for.body.i_crit_edge

for.inc93.i.for.body.i_crit_edge:                 ; preds = %for.inc93.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.inc93.i.for.inc_crit_edge:                    ; preds = %for.inc93.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

for.inc:                                          ; preds = %for.inc93.i.for.inc_crit_edge, %dev_name.exit131.i.for.inc_crit_edge, %dev_name.exit126.i, %dev_name.exit.i, %do.end
  %inc = add nuw nsw i32 %indx.066, 1
  %exitcond.not = icmp eq i32 %inc, 2
  br i1 %exitcond.not, label %do.end10, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

do.end10:                                         ; preds = %for.inc
  %102 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %pdev1.i, align 4
  %init_name.i = getelementptr inbounds %struct.pci_dev, ptr %103, i32 0, i32 44, i32 3
  %104 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i44 = icmp eq ptr %105, null
  br i1 %tobool.not.i44, label %if.end.i45, label %do.end10.dev_name.exit_crit_edge

do.end10.dev_name.exit_crit_edge:                 ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_name.exit

if.end.i45:                                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #16
  %dev12 = getelementptr inbounds %struct.pci_dev, ptr %103, i32 0, i32 44
  %106 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dev12, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i45, %do.end10.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %107, %if.end.i45 ], [ %105, %do.end10.dev_name.exit_crit_edge ]
  %108 = ptrtoint ptr %id14.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %id14.i, align 4
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %retval.0.i, i32 noundef %109) #18
  br label %if.end25

do.end17:                                         ; preds = %for.inc.6.i.do.end17_crit_edge, %for.inc.5.i.do.end17_crit_edge, %for.inc.4.i.do.end17_crit_edge, %for.inc.3.i.do.end17_crit_edge, %for.inc.2.i.do.end17_crit_edge, %for.inc.1.i.do.end17_crit_edge, %for.inc.i.do.end17_crit_edge, %for.cond58.preheader.i.do.end17_crit_edge
  %srvc_lvl.361 = phi i8 [ 7, %for.inc.6.i.do.end17_crit_edge ], [ 6, %for.inc.5.i.do.end17_crit_edge ], [ 5, %for.inc.4.i.do.end17_crit_edge ], [ 4, %for.inc.3.i.do.end17_crit_edge ], [ 3, %for.inc.2.i.do.end17_crit_edge ], [ 2, %for.inc.1.i.do.end17_crit_edge ], [ 1, %for.inc.i.do.end17_crit_edge ], [ 0, %for.cond58.preheader.i.do.end17_crit_edge ]
  %110 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %pdev1.i, align 4
  %init_name.i46 = getelementptr inbounds %struct.pci_dev, ptr %111, i32 0, i32 44, i32 3
  %112 = ptrtoint ptr %init_name.i46 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %init_name.i46, align 8
  %tobool.not.i47 = icmp eq ptr %113, null
  br i1 %tobool.not.i47, label %if.end.i48, label %do.end17.dev_name.exit50_crit_edge

do.end17.dev_name.exit50_crit_edge:               ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_name.exit50

if.end.i48:                                       ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #16
  %dev21 = getelementptr inbounds %struct.pci_dev, ptr %111, i32 0, i32 44
  %114 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %dev21, align 4
  br label %dev_name.exit50

dev_name.exit50:                                  ; preds = %if.end.i48, %do.end17.dev_name.exit50_crit_edge
  %retval.0.i49 = phi ptr [ %115, %if.end.i48 ], [ %113, %do.end17.dev_name.exit50_crit_edge ]
  %116 = ptrtoint ptr %id14.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %id14.i, align 4
  %conv = zext i8 %srvc_lvl.361 to i32
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %retval.0.i49, i32 noundef %117, i32 noundef %conv) #18
  br label %if.end25

if.end25:                                         ; preds = %dev_name.exit50, %dev_name.exit
  %srvc_lvl.362 = phi i8 [ %srvc_lvl.361, %dev_name.exit50 ], [ 5, %dev_name.exit ]
  %118 = ptrtoint ptr %pfc_state.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %pfc_state.i, align 4
  %120 = and i32 %119, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %120)
  %121 = icmp eq i32 %120, 9
  %conv.i = zext i1 %121 to i8
  %pfc_state28 = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 28
  %122 = ptrtoint ptr %pfc_state28 to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %conv.i, ptr %pfc_state28, align 1
  %sl = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 27
  %123 = ptrtoint ptr %sl to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %srvc_lvl.362, ptr %sl, align 4
  call void @llvm.lifetime.end.p0(i64 312, ptr nonnull %dcbxcfg) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocrdma_alloc_av(ptr noundef %dev, ptr nocapture noundef writeonly %ah) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %av_tbl = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 16
  %0 = ptrtoint ptr %av_tbl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %av_tbl, align 4
  %lock = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 16, i32 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #14
  %num_ah = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 16, i32 3
  %2 = ptrtoint ptr %num_ah to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_ah, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp738.not = icmp eq i32 %3, 0
  br i1 %cmp738.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %i.040 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %av.039 = phi ptr [ %incdec.ptr, %if.end.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %valid = getelementptr inbounds %struct.ocrdma_av, ptr %av.039, i32 0, i32 2
  %4 = ptrtoint ptr %valid to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %valid, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp9 = icmp eq i32 %5, 0
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %valid.le = getelementptr inbounds %struct.ocrdma_av, ptr %av.039, i32 0, i32 2
  %6 = ptrtoint ptr %valid.le to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 128, ptr %valid.le, align 1
  %av12 = getelementptr inbounds %struct.ocrdma_ah, ptr %ah, i32 0, i32 1
  %7 = ptrtoint ptr %av12 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %av.039, ptr %av12, align 4
  %id = getelementptr inbounds %struct.ocrdma_ah, ptr %ah, i32 0, i32 3
  %8 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %i.040, ptr %id, align 4
  br label %for.end

if.end:                                           ; preds = %for.body
  %incdec.ptr = getelementptr %struct.ocrdma_av, ptr %av.039, i32 1
  %inc = add nuw i32 %i.040, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %if.then, %entry.for.end_crit_edge
  %i.035 = phi i32 [ %i.040, %if.then ], [ 0, %entry.for.end_crit_edge ], [ %3, %if.end.for.end_crit_edge ]
  %status.0 = phi i32 [ 0, %if.then ], [ -22, %entry.for.end_crit_edge ], [ -22, %if.end.for.end_crit_edge ]
  %9 = ptrtoint ptr %num_ah to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_ah, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.035, i32 %10)
  %cmp15 = icmp eq i32 %i.035, %10
  %spec.select = select i1 %cmp15, i32 -11, i32 %status.0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #14
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocrdma_free_av(ptr noundef %dev, ptr nocapture noundef readonly %ah) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 16, i32 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #14
  %av = getelementptr inbounds %struct.ocrdma_ah, ptr %ah, i32 0, i32 1
  %0 = ptrtoint ptr %av to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %av, align 4
  %valid = getelementptr inbounds %struct.ocrdma_av, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %valid to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 0, ptr %valid, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocrdma_eqd_set_task(ptr noundef %work) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -3132
  %eq_cnt = getelementptr i8, ptr %work, i32 -4
  %0 = ptrtoint ptr %eq_cnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %eq_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp56 = icmp sgt i32 %1, 0
  br i1 %cmp56, label %for.body.lr.ph, label %entry.if.end32_crit_edge

entry.if.end32_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32

for.body.lr.ph:                                   ; preds = %entry
  %eq_tbl = getelementptr i8, ptr %work, i32 -8
  br label %for.body

for.body:                                         ; preds = %if.end23.for.body_crit_edge, %for.body.lr.ph
  %num.058 = phi i32 [ 0, %for.body.lr.ph ], [ %num.1, %if.end23.for.body_crit_edge ]
  %i.057 = phi i32 [ 0, %for.body.lr.ph ], [ %inc28, %if.end23.for.body_crit_edge ]
  %2 = ptrtoint ptr %eq_tbl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %eq_tbl, align 4
  %aic_obj = getelementptr %struct.ocrdma_eq, ptr %3, i32 %i.057, i32 5
  %eq_intr_cnt = getelementptr %struct.ocrdma_eq, ptr %3, i32 %i.057, i32 5, i32 1
  %4 = ptrtoint ptr %eq_intr_cnt to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %eq_intr_cnt, align 8
  %prev_eq_intr_cnt = getelementptr %struct.ocrdma_eq, ptr %3, i32 %i.057, i32 5, i32 2
  %6 = ptrtoint ptr %prev_eq_intr_cnt to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %prev_eq_intr_cnt, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %7)
  %cmp2 = icmp ugt i64 %5, %7
  br i1 %cmp2, label %if.then, label %for.body.if.end23_crit_edge

for.body.if.end23_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

if.then:                                          ; preds = %for.body
  %sub = sub i64 %5, %7
  call void @__sanitizer_cov_trace_const_cmp8(i64 150000, i64 %sub)
  %cmp7 = icmp ugt i64 %sub, 150000
  br i1 %cmp7, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %8 = ptrtoint ptr %aic_obj to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %aic_obj, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp9 = icmp eq i32 %9, 0
  br i1 %cmp9, label %land.lhs.true.if.end23.sink.split_crit_edge, label %land.lhs.true.if.end23_crit_edge

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

land.lhs.true.if.end23.sink.split_crit_edge:      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23.sink.split

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp8(i64 100000, i64 %sub)
  %cmp13 = icmp ult i64 %sub, 100000
  br i1 %cmp13, label %land.lhs.true14, label %if.else.if.end23_crit_edge

if.else.if.end23_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

land.lhs.true14:                                  ; preds = %if.else
  %10 = ptrtoint ptr %aic_obj to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %aic_obj, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %11)
  %cmp17 = icmp eq i32 %11, 20
  br i1 %cmp17, label %land.lhs.true14.if.end23.sink.split_crit_edge, label %land.lhs.true14.if.end23_crit_edge

land.lhs.true14.if.end23_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

land.lhs.true14.if.end23.sink.split_crit_edge:    ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23.sink.split

if.end23.sink.split:                              ; preds = %land.lhs.true14.if.end23.sink.split_crit_edge, %land.lhs.true.if.end23.sink.split_crit_edge
  %.sink = phi i32 [ 20, %land.lhs.true.if.end23.sink.split_crit_edge ], [ 0, %land.lhs.true14.if.end23.sink.split_crit_edge ]
  %12 = ptrtoint ptr %aic_obj to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %.sink, ptr %aic_obj, align 8
  %inc = add i32 %num.058, 1
  br label %if.end23

if.end23:                                         ; preds = %if.end23.sink.split, %land.lhs.true14.if.end23_crit_edge, %if.else.if.end23_crit_edge, %land.lhs.true.if.end23_crit_edge, %for.body.if.end23_crit_edge
  %num.1 = phi i32 [ %num.058, %land.lhs.true14.if.end23_crit_edge ], [ %num.058, %if.else.if.end23_crit_edge ], [ %num.058, %for.body.if.end23_crit_edge ], [ %num.058, %land.lhs.true.if.end23_crit_edge ], [ %inc, %if.end23.sink.split ]
  %13 = ptrtoint ptr %eq_intr_cnt to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %eq_intr_cnt, align 8
  %15 = ptrtoint ptr %prev_eq_intr_cnt to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %prev_eq_intr_cnt, align 8
  %inc28 = add nuw nsw i32 %i.057, 1
  %16 = ptrtoint ptr %eq_cnt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %eq_cnt, align 8
  %cmp = icmp slt i32 %inc28, %17
  br i1 %cmp, label %if.end23.for.body_crit_edge, label %for.end

if.end23.for.body_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num.1)
  %tobool.not = icmp eq i32 %num.1, 0
  br i1 %tobool.not, label %for.end.if.end32_crit_edge, label %if.then29

for.end.if.end32_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32

if.then29:                                        ; preds = %for.end
  %eq_tbl30 = getelementptr i8, ptr %work, i32 -8
  %18 = ptrtoint ptr %eq_tbl30 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %eq_tbl30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %num.1)
  %cmp.i = icmp sgt i32 %num.1, 8
  br i1 %cmp.i, label %if.then29.while.body.i_crit_edge, label %if.else.i

if.then29.while.body.i_crit_edge:                 ; preds = %if.then29
  br label %while.body.i

while.body.i:                                     ; preds = %ocrdma_mbx_modify_eqd.exit.i.while.body.i_crit_edge, %if.then29.while.body.i_crit_edge
  %num.addr.028.i = phi i32 [ %sub.i, %ocrdma_mbx_modify_eqd.exit.i.while.body.i_crit_edge ], [ %num.1, %if.then29.while.body.i_crit_edge ]
  %i.027.i = phi i32 [ %add.i, %ocrdma_mbx_modify_eqd.exit.i.while.body.i_crit_edge ], [ 0, %if.then29.while.body.i_crit_edge ]
  %20 = tail call i32 @llvm.smin.i32(i32 %num.addr.028.i, i32 8) #14
  %arrayidx.i = getelementptr %struct.ocrdma_eq, ptr %19, i32 %i.027.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %21 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3520, i32 noundef 256) #17
  %tobool.not.i.i.i = icmp eq ptr %call7.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %while.body.i.ocrdma_mbx_modify_eqd.exit.i_crit_edge, label %if.end.i.i

while.body.i.ocrdma_mbx_modify_eqd.exit.i_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ocrdma_mbx_modify_eqd.exit.i

if.end.i.i:                                       ; preds = %while.body.i
  %22 = ptrtoint ptr %call7.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %call7.i.i.i.i.i, align 8
  %or.i.i.i = or i32 %23, 1
  store i32 %or.i.i.i, ptr %call7.i.i.i.i.i, align 8
  %pyld_len.i.i.i = getelementptr inbounds %struct.ocrdma_mqe_hdr, ptr %call7.i.i.i.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %pyld_len.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 116, ptr %pyld_len.i.i.i, align 4
  %u.i.i.i = getelementptr inbounds %struct.ocrdma_mqe, ptr %call7.i.i.i.i.i, i32 0, i32 1
  %timeout.i.i.i.i = getelementptr inbounds %struct.ocrdma_mqe, ptr %call7.i.i.i.i.i, i32 0, i32 1, i32 0, i32 0, i32 1
  %cmd_len2.i.i.i.i = getelementptr inbounds %struct.ocrdma_mqe, ptr %call7.i.i.i.i.i, i32 0, i32 1, i32 0, i32 0, i32 2
  %25 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 297, ptr %u.i.i.i, align 4
  %26 = ptrtoint ptr %timeout.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 20, ptr %timeout.i.i.i.i, align 8
  %27 = ptrtoint ptr %cmd_len2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 120, ptr %cmd_len2.i.i.i.i, align 4
  %num_eq.i.i = getelementptr inbounds %struct.ocrdma_modify_eqd_req, ptr %call7.i.i.i.i.i, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %num_eq.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %20, ptr %num_eq.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num.addr.028.i)
  %cmp1.i.i = icmp sgt i32 %num.addr.028.i, 0
  br i1 %cmp1.i.i, label %for.body.i.i, label %if.end.i.i.for.end.i.i_crit_edge

if.end.i.i.for.end.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %if.end.i.i
  %id.i.i = getelementptr %struct.ocrdma_eq, ptr %19, i32 %i.027.i, i32 0, i32 5
  %29 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %id.i.i, align 8
  %conv.i.i = zext i16 %30 to i32
  %arrayidx4.i.i = getelementptr %struct.ocrdma_modify_eqd_req, ptr %call7.i.i.i.i.i, i32 0, i32 1, i32 2, i32 0
  %31 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv.i.i, ptr %arrayidx4.i.i, align 8
  %phase.i.i = getelementptr %struct.ocrdma_modify_eqd_req, ptr %call7.i.i.i.i.i, i32 0, i32 1, i32 2, i32 0, i32 1
  %32 = ptrtoint ptr %phase.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %phase.i.i, align 4
  %aic_obj.i.i = getelementptr %struct.ocrdma_eq, ptr %19, i32 %i.027.i, i32 5
  %33 = ptrtoint ptr %aic_obj.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %aic_obj.i.i, align 8
  %mul.i.i = mul i32 %34, 65
  %div.i.i = udiv i32 %mul.i.i, 100
  %delay_multiplier.i.i = getelementptr %struct.ocrdma_modify_eqd_req, ptr %call7.i.i.i.i.i, i32 0, i32 1, i32 2, i32 0, i32 2
  %35 = ptrtoint ptr %delay_multiplier.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %div.i.i, ptr %delay_multiplier.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %exitcond.not.i.i = icmp eq i32 %20, 1
  br i1 %exitcond.not.i.i, label %for.body.i.i.for.end.i.i_crit_edge, label %for.body.i.i.1

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i

for.body.i.i.1:                                   ; preds = %for.body.i.i
  %id.i.i.1 = getelementptr %struct.ocrdma_eq, ptr %arrayidx.i, i32 1, i32 0, i32 5
  %36 = ptrtoint ptr %id.i.i.1 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %id.i.i.1, align 8
  %conv.i.i.1 = zext i16 %37 to i32
  %arrayidx4.i.i.1 = getelementptr %struct.ocrdma_modify_eqd_req, ptr %call7.i.i.i.i.i, i32 0, i32 1, i32 2, i32 1
  %38 = ptrtoint ptr %arrayidx4.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %conv.i.i.1, ptr %arrayidx4.i.i.1, align 4
  %phase.i.i.1 = getelementptr %struct.ocrdma_modify_eqd_req, ptr %call7.i.i.i.i.i, i32 0, i32 1, i32 2, i32 1, i32 1
  %39 = ptrtoint ptr %phase.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %phase.i.i.1, align 8
  %aic_obj.i.i.1 = getelementptr %struct.ocrdma_eq, ptr %arrayidx.i, i32 1, i32 5
  %40 = ptrtoint ptr %aic_obj.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %aic_obj.i.i.1, align 8
  %mul.i.i.1 = mul i32 %41, 65
  %div.i.i.1 = udiv i32 %mul.i.i.1, 100
  %delay_multiplier.i.i.1 = getelementptr %struct.ocrdma_modify_eqd_req, ptr %call7.i.i.i.i.i, i32 0, i32 1, i32 2, i32 1, i32 2
  %42 = ptrtoint ptr %delay_multiplier.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %div.i.i.1, ptr %delay_multiplier.i.i.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %exitcond.not.i.i.1 = icmp eq i32 %20, 2
  br i1 %exitcond.not.i.i.1, label %for.body.i.i.1.for.end.i.i_crit_edge, label %for.body.i.i.2

for.body.i.i.1.for.end.i.i_crit_edge:             ; preds = %for.body.i.i.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i

for.body.i.i.2:                                   ; preds = %for.body.i.i.1
  %id.i.i.2 = getelementptr %struct.ocrdma_eq, ptr %arrayidx.i, i32 2, i32 0, i32 5
  %43 = ptrtoint ptr %id.i.i.2 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %id.i.i.2, align 8
  %conv.i.i.2 = zext i16 %44 to i32
  %arrayidx4.i.i.2 = getelementptr %struct.ocrdma_modify_eqd_req, ptr %call7.i.i.i.i.i, i32 0, i32 1, i32 2, i32 2
  %45 = ptrtoint ptr %arrayidx4.i.i.2 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %conv.i.i.2, ptr %arrayidx4.i.i.2, align 8
  %phase.i.i.2 = getelementptr %struct.ocrdma_modify_eqd_req, ptr %call7.i.i.i.i.i, i32 0, i32 1, i32 2, i32 2, i32 1
  %46 = ptrtoint ptr %phase.i.i.2 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %phase.i.i.2, align 4
  %aic_obj.i.i.2 = getelementptr %struct.ocrdma_eq, ptr %arrayidx.i, i32 2, i32 5
  %47 = ptrtoint ptr %aic_obj.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %aic_obj.i.i.2, align 8
  %mul.i.i.2 = mul i32 %48, 65
  %div.i.i.2 = udiv i32 %mul.i.i.2, 100
  %delay_multiplier.i.i.2 = getelementptr %struct.ocrdma_modify_eqd_req, ptr %call7.i.i.i.i.i, i32 0, i32 1, i32 2, i32 2, i32 2
  %49 = ptrtoint ptr %delay_multiplier.i.i.2 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %div.i.i.2, ptr %delay_multiplier.i.i.2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %20)
  %exitcond.not.i.i.2 = icmp eq i32 %20, 3
  br i1 %exitcond.not.i.i.2, label %for.body.i.i.2.for.end.i.i_crit_edge, label %for.body.i.i.3

for.body.i.i.2.for.end.i.i_crit_edge:             ; preds = %for.body.i.i.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i

for.body.i.i.3:                                   ; preds = %for.body.i.i.2
  %id.i.i.3 = getelementptr %struct.ocrdma_eq, ptr %arrayidx.i, i32 3, i32 0, i32 5
  %50 = ptrtoint ptr %id.i.i.3 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %id.i.i.3, align 8
  %conv.i.i.3 = zext i16 %51 to i32
  %arrayidx4.i.i.3 = getelementptr %struct.ocrdma_modify_eqd_req, ptr %call7.i.i.i.i.i, i32 0, i32 1, i32 2, i32 3
  %52 = ptrtoint ptr %arrayidx4.i.i.3 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %conv.i.i.3, ptr %arrayidx4.i.i.3, align 4
  %phase.i.i.3 = getelementptr %struct.ocrdma_modify_eqd_req, ptr %call7.i.i.i.i.i, i32 0, i32 1, i32 2, i32 3, i32 1
  %53 = ptrtoint ptr %phase.i.i.3 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %phase.i.i.3, align 8
  %aic_obj.i.i.3 = getelementptr %struct.ocrdma_eq, ptr %arrayidx.i, i32 3, i32 5
  %54 = ptrtoint ptr %aic_obj.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %aic_obj.i.i.3, align 8
  %mul.i.i.3 = mul i32 %55, 65
  %div.i.i.3 = udiv i32 %mul.i.i.3, 100
  %delay_multiplier.i.i.3 = getelementptr %struct.ocrdma_modify_eqd_req, ptr %call7.i.i.i.i.i, i32 0, i32 1, i32 2, i32 3, i32 2
  %56 = ptrtoint ptr %delay_multiplier.i.i.3 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %div.i.i.3, ptr %delay_multiplier.i.i.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %20)
  %exitcond.not.i.i.3 = icmp eq i32 %20, 4
  br i1 %exitcond.not.i.i.3, label %for.body.i.i.3.for.end.i.i_crit_edge, label %for.body.i.i.4

for.body.i.i.3.for.end.i.i_crit_edge:             ; preds = %for.body.i.i.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i

for.body.i.i.4:                                   ; preds = %for.body.i.i.3
  %id.i.i.4 = getelementptr %struct.ocrdma_eq, ptr %arrayidx.i, i32 4, i32 0, i32 5
  %57 = ptrtoint ptr %id.i.i.4 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %id.i.i.4, align 8
  %conv.i.i.4 = zext i16 %58 to i32
  %arrayidx4.i.i.4 = getelementptr %struct.ocrdma_modify_eqd_req, ptr %call7.i.i.i.i.i, i32 0, i32 1, i32 2, i32 4
  %59 = ptrtoint ptr %arrayidx4.i.i.4 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %conv.i.i.4, ptr %arrayidx4.i.i.4, align 8
  %phase.i.i.4 = getelementptr %struct.ocrdma_modify_eqd_req, ptr %call7.i.i.i.i.i, i32 0, i32 1, i32 2, i32 4, i32 1
  %60 = ptrtoint ptr %phase.i.i.4 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %phase.i.i.4, align 4
  %aic_obj.i.i.4 = getelementptr %struct.ocrdma_eq, ptr %arrayidx.i, i32 4, i32 5
  %61 = ptrtoint ptr %aic_obj.i.i.4 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %aic_obj.i.i.4, align 8
  %mul.i.i.4 = mul i32 %62, 65
  %div.i.i.4 = udiv i32 %mul.i.i.4, 100
  %delay_multiplier.i.i.4 = getelementptr %struct.ocrdma_modify_eqd_req, ptr %call7.i.i.i.i.i, i32 0, i32 1, i32 2, i32 4, i32 2
  %63 = ptrtoint ptr %delay_multiplier.i.i.4 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %div.i.i.4, ptr %delay_multiplier.i.i.4, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %20)
  %exitcond.not.i.i.4 = icmp eq i32 %20, 5
  br i1 %exitcond.not.i.i.4, label %for.body.i.i.4.for.end.i.i_crit_edge, label %for.body.i.i.5

for.body.i.i.4.for.end.i.i_crit_edge:             ; preds = %for.body.i.i.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i

for.body.i.i.5:                                   ; preds = %for.body.i.i.4
  %id.i.i.5 = getelementptr %struct.ocrdma_eq, ptr %arrayidx.i, i32 5, i32 0, i32 5
  %64 = ptrtoint ptr %id.i.i.5 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %id.i.i.5, align 8
  %conv.i.i.5 = zext i16 %65 to i32
  %arrayidx4.i.i.5 = getelementptr %struct.ocrdma_modify_eqd_req, ptr %call7.i.i.i.i.i, i32 0, i32 1, i32 2, i32 5
  %66 = ptrtoint ptr %arrayidx4.i.i.5 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %conv.i.i.5, ptr %arrayidx4.i.i.5, align 4
  %phase.i.i.5 = getelementptr %struct.ocrdma_modify_eqd_req, ptr %call7.i.i.i.i.i, i32 0, i32 1, i32 2, i32 5, i32 1
  %67 = ptrtoint ptr %phase.i.i.5 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %phase.i.i.5, align 8
  %aic_obj.i.i.5 = getelementptr %struct.ocrdma_eq, ptr %arrayidx.i, i32 5, i32 5
  %68 = ptrtoint ptr %aic_obj.i.i.5 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %aic_obj.i.i.5, align 8
  %mul.i.i.5 = mul i32 %69, 65
  %div.i.i.5 = udiv i32 %mul.i.i.5, 100
  %delay_multiplier.i.i.5 = getelementptr %struct.ocrdma_modify_eqd_req, ptr %call7.i.i.i.i.i, i32 0, i32 1, i32 2, i32 5, i32 2
  %70 = ptrtoint ptr %delay_multiplier.i.i.5 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %div.i.i.5, ptr %delay_multiplier.i.i.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %20)
  %exitcond.not.i.i.5 = icmp eq i32 %20, 6
  br i1 %exitcond.not.i.i.5, label %for.body.i.i.5.for.end.i.i_crit_edge, label %for.body.i.i.6

for.body.i.i.5.for.end.i.i_crit_edge:             ; preds = %for.body.i.i.5
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i

for.body.i.i.6:                                   ; preds = %for.body.i.i.5
  %id.i.i.6 = getelementptr %struct.ocrdma_eq, ptr %arrayidx.i, i32 6, i32 0, i32 5
  %71 = ptrtoint ptr %id.i.i.6 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %id.i.i.6, align 8
  %conv.i.i.6 = zext i16 %72 to i32
  %arrayidx4.i.i.6 = getelementptr %struct.ocrdma_modify_eqd_req, ptr %call7.i.i.i.i.i, i32 0, i32 1, i32 2, i32 6
  %73 = ptrtoint ptr %arrayidx4.i.i.6 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %conv.i.i.6, ptr %arrayidx4.i.i.6, align 8
  %phase.i.i.6 = getelementptr %struct.ocrdma_modify_eqd_req, ptr %call7.i.i.i.i.i, i32 0, i32 1, i32 2, i32 6, i32 1
  %74 = ptrtoint ptr %phase.i.i.6 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %phase.i.i.6, align 4
  %aic_obj.i.i.6 = getelementptr %struct.ocrdma_eq, ptr %arrayidx.i, i32 6, i32 5
  %75 = ptrtoint ptr %aic_obj.i.i.6 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %aic_obj.i.i.6, align 8
  %mul.i.i.6 = mul i32 %76, 65
  %div.i.i.6 = udiv i32 %mul.i.i.6, 100
  %delay_multiplier.i.i.6 = getelementptr %struct.ocrdma_modify_eqd_req, ptr %call7.i.i.i.i.i, i32 0, i32 1, i32 2, i32 6, i32 2
  %77 = ptrtoint ptr %delay_multiplier.i.i.6 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %div.i.i.6, ptr %delay_multiplier.i.i.6, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %20)
  %exitcond.not.i.i.6 = icmp eq i32 %20, 7
  br i1 %exitcond.not.i.i.6, label %for.body.i.i.6.for.end.i.i_crit_edge, label %for.body.i.i.7

for.body.i.i.6.for.end.i.i_crit_edge:             ; preds = %for.body.i.i.6
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i

for.body.i.i.7:                                   ; preds = %for.body.i.i.6
  call void @__sanitizer_cov_trace_pc() #16
  %id.i.i.7 = getelementptr %struct.ocrdma_eq, ptr %arrayidx.i, i32 7, i32 0, i32 5
  %78 = ptrtoint ptr %id.i.i.7 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %id.i.i.7, align 8
  %conv.i.i.7 = zext i16 %79 to i32
  %arrayidx4.i.i.7 = getelementptr %struct.ocrdma_modify_eqd_req, ptr %call7.i.i.i.i.i, i32 0, i32 1, i32 2, i32 7
  %80 = ptrtoint ptr %arrayidx4.i.i.7 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %conv.i.i.7, ptr %arrayidx4.i.i.7, align 4
  %phase.i.i.7 = getelementptr %struct.ocrdma_modify_eqd_req, ptr %call7.i.i.i.i.i, i32 0, i32 1, i32 2, i32 7, i32 1
  %81 = ptrtoint ptr %phase.i.i.7 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %phase.i.i.7, align 8
  %aic_obj.i.i.7 = getelementptr %struct.ocrdma_eq, ptr %arrayidx.i, i32 7, i32 5
  %82 = ptrtoint ptr %aic_obj.i.i.7 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %aic_obj.i.i.7, align 8
  %mul.i.i.7 = mul i32 %83, 65
  %div.i.i.7 = udiv i32 %mul.i.i.7, 100
  %delay_multiplier.i.i.7 = getelementptr %struct.ocrdma_modify_eqd_req, ptr %call7.i.i.i.i.i, i32 0, i32 1, i32 2, i32 7, i32 2
  %84 = ptrtoint ptr %delay_multiplier.i.i.7 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %div.i.i.7, ptr %delay_multiplier.i.i.7, align 4
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.body.i.i.7, %for.body.i.i.6.for.end.i.i_crit_edge, %for.body.i.i.5.for.end.i.i_crit_edge, %for.body.i.i.4.for.end.i.i_crit_edge, %for.body.i.i.3.for.end.i.i_crit_edge, %for.body.i.i.2.for.end.i.i_crit_edge, %for.body.i.i.1.for.end.i.i_crit_edge, %for.body.i.i.for.end.i.i_crit_edge, %if.end.i.i.for.end.i.i_crit_edge
  %call12.i.i = tail call fastcc i32 @ocrdma_mbx_cmd(ptr noundef %add.ptr, ptr noundef nonnull %call7.i.i.i.i.i) #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i.i) #14
  br label %ocrdma_mbx_modify_eqd.exit.i

ocrdma_mbx_modify_eqd.exit.i:                     ; preds = %for.end.i.i, %while.body.i.ocrdma_mbx_modify_eqd.exit.i_crit_edge
  %add.i = add i32 %20, %i.027.i
  %sub.i = sub i32 %num.addr.028.i, %20
  %tobool.not.i = icmp eq i32 %sub.i, 0
  br i1 %tobool.not.i, label %ocrdma_mbx_modify_eqd.exit.i.if.end32_crit_edge, label %ocrdma_mbx_modify_eqd.exit.i.while.body.i_crit_edge

ocrdma_mbx_modify_eqd.exit.i.while.body.i_crit_edge: ; preds = %ocrdma_mbx_modify_eqd.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

ocrdma_mbx_modify_eqd.exit.i.if.end32_crit_edge:  ; preds = %ocrdma_mbx_modify_eqd.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32

if.else.i:                                        ; preds = %if.then29
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %85 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i.i1.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %85, i32 noundef 3520, i32 noundef 256) #17
  %tobool.not.i.i2.i = icmp eq ptr %call7.i.i.i.i1.i, null
  br i1 %tobool.not.i.i2.i, label %if.else.i.if.end32_crit_edge, label %if.end.i10.i

if.else.i.if.end32_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32

if.end.i10.i:                                     ; preds = %if.else.i
  %86 = ptrtoint ptr %call7.i.i.i.i1.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %call7.i.i.i.i1.i, align 8
  %or.i.i3.i = or i32 %87, 1
  store i32 %or.i.i3.i, ptr %call7.i.i.i.i1.i, align 8
  %pyld_len.i.i4.i = getelementptr inbounds %struct.ocrdma_mqe_hdr, ptr %call7.i.i.i.i1.i, i32 0, i32 1
  %88 = ptrtoint ptr %pyld_len.i.i4.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 116, ptr %pyld_len.i.i4.i, align 4
  %u.i.i5.i = getelementptr inbounds %struct.ocrdma_mqe, ptr %call7.i.i.i.i1.i, i32 0, i32 1
  %timeout.i.i.i6.i = getelementptr inbounds %struct.ocrdma_mqe, ptr %call7.i.i.i.i1.i, i32 0, i32 1, i32 0, i32 0, i32 1
  %cmd_len2.i.i.i7.i = getelementptr inbounds %struct.ocrdma_mqe, ptr %call7.i.i.i.i1.i, i32 0, i32 1, i32 0, i32 0, i32 2
  %89 = ptrtoint ptr %u.i.i5.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 297, ptr %u.i.i5.i, align 4
  %90 = ptrtoint ptr %timeout.i.i.i6.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 20, ptr %timeout.i.i.i6.i, align 8
  %91 = ptrtoint ptr %cmd_len2.i.i.i7.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 120, ptr %cmd_len2.i.i.i7.i, align 4
  %num_eq.i8.i = getelementptr inbounds %struct.ocrdma_modify_eqd_req, ptr %call7.i.i.i.i1.i, i32 0, i32 1, i32 1
  %92 = ptrtoint ptr %num_eq.i8.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %num.1, ptr %num_eq.i8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num.1)
  %cmp1.i9.i = icmp sgt i32 %num.1, 0
  br i1 %cmp1.i9.i, label %for.body.i22.i, label %if.end.i10.i.for.end.i24.i_crit_edge

if.end.i10.i.for.end.i24.i_crit_edge:             ; preds = %if.end.i10.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i24.i

for.body.i22.i:                                   ; preds = %if.end.i10.i
  %id.i12.i = getelementptr %struct.ocrdma_eq, ptr %19, i32 0, i32 0, i32 5
  %93 = ptrtoint ptr %id.i12.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %id.i12.i, align 8
  %conv.i13.i = zext i16 %94 to i32
  %arrayidx4.i14.i = getelementptr %struct.ocrdma_modify_eqd_req, ptr %call7.i.i.i.i1.i, i32 0, i32 1, i32 2, i32 0
  %95 = ptrtoint ptr %arrayidx4.i14.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %conv.i13.i, ptr %arrayidx4.i14.i, align 8
  %phase.i15.i = getelementptr %struct.ocrdma_modify_eqd_req, ptr %call7.i.i.i.i1.i, i32 0, i32 1, i32 2, i32 0, i32 1
  %96 = ptrtoint ptr %phase.i15.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 0, ptr %phase.i15.i, align 4
  %aic_obj.i16.i = getelementptr %struct.ocrdma_eq, ptr %19, i32 0, i32 5
  %97 = ptrtoint ptr %aic_obj.i16.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %aic_obj.i16.i, align 8
  %mul.i17.i = mul i32 %98, 65
  %div.i18.i = udiv i32 %mul.i17.i, 100
  %delay_multiplier.i19.i = getelementptr %struct.ocrdma_modify_eqd_req, ptr %call7.i.i.i.i1.i, i32 0, i32 1, i32 2, i32 0, i32 2
  %99 = ptrtoint ptr %delay_multiplier.i19.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %div.i18.i, ptr %delay_multiplier.i19.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %num.1)
  %exitcond.not.i21.i = icmp eq i32 %num.1, 1
  br i1 %exitcond.not.i21.i, label %for.body.i22.i.for.end.i24.i_crit_edge, label %for.body.i22.i.1

for.body.i22.i.for.end.i24.i_crit_edge:           ; preds = %for.body.i22.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i24.i

for.body.i22.i.1:                                 ; preds = %for.body.i22.i
  %id.i12.i.1 = getelementptr %struct.ocrdma_eq, ptr %19, i32 1, i32 0, i32 5
  %100 = ptrtoint ptr %id.i12.i.1 to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %id.i12.i.1, align 8
  %conv.i13.i.1 = zext i16 %101 to i32
  %arrayidx4.i14.i.1 = getelementptr %struct.ocrdma_modify_eqd_req, ptr %call7.i.i.i.i1.i, i32 0, i32 1, i32 2, i32 1
  %102 = ptrtoint ptr %arrayidx4.i14.i.1 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %conv.i13.i.1, ptr %arrayidx4.i14.i.1, align 4
  %phase.i15.i.1 = getelementptr %struct.ocrdma_modify_eqd_req, ptr %call7.i.i.i.i1.i, i32 0, i32 1, i32 2, i32 1, i32 1
  %103 = ptrtoint ptr %phase.i15.i.1 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 0, ptr %phase.i15.i.1, align 8
  %aic_obj.i16.i.1 = getelementptr %struct.ocrdma_eq, ptr %19, i32 1, i32 5
  %104 = ptrtoint ptr %aic_obj.i16.i.1 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %aic_obj.i16.i.1, align 8
  %mul.i17.i.1 = mul i32 %105, 65
  %div.i18.i.1 = udiv i32 %mul.i17.i.1, 100
  %delay_multiplier.i19.i.1 = getelementptr %struct.ocrdma_modify_eqd_req, ptr %call7.i.i.i.i1.i, i32 0, i32 1, i32 2, i32 1, i32 2
  %106 = ptrtoint ptr %delay_multiplier.i19.i.1 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %div.i18.i.1, ptr %delay_multiplier.i19.i.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %num.1)
  %exitcond.not.i21.i.1 = icmp eq i32 %num.1, 2
  br i1 %exitcond.not.i21.i.1, label %for.body.i22.i.1.for.end.i24.i_crit_edge, label %for.body.i22.i.2

for.body.i22.i.1.for.end.i24.i_crit_edge:         ; preds = %for.body.i22.i.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i24.i

for.body.i22.i.2:                                 ; preds = %for.body.i22.i.1
  %id.i12.i.2 = getelementptr %struct.ocrdma_eq, ptr %19, i32 2, i32 0, i32 5
  %107 = ptrtoint ptr %id.i12.i.2 to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %id.i12.i.2, align 8
  %conv.i13.i.2 = zext i16 %108 to i32
  %arrayidx4.i14.i.2 = getelementptr %struct.ocrdma_modify_eqd_req, ptr %call7.i.i.i.i1.i, i32 0, i32 1, i32 2, i32 2
  %109 = ptrtoint ptr %arrayidx4.i14.i.2 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %conv.i13.i.2, ptr %arrayidx4.i14.i.2, align 8
  %phase.i15.i.2 = getelementptr %struct.ocrdma_modify_eqd_req, ptr %call7.i.i.i.i1.i, i32 0, i32 1, i32 2, i32 2, i32 1
  %110 = ptrtoint ptr %phase.i15.i.2 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 0, ptr %phase.i15.i.2, align 4
  %aic_obj.i16.i.2 = getelementptr %struct.ocrdma_eq, ptr %19, i32 2, i32 5
  %111 = ptrtoint ptr %aic_obj.i16.i.2 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %aic_obj.i16.i.2, align 8
  %mul.i17.i.2 = mul i32 %112, 65
  %div.i18.i.2 = udiv i32 %mul.i17.i.2, 100
  %delay_multiplier.i19.i.2 = getelementptr %struct.ocrdma_modify_eqd_req, ptr %call7.i.i.i.i1.i, i32 0, i32 1, i32 2, i32 2, i32 2
  %113 = ptrtoint ptr %delay_multiplier.i19.i.2 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %div.i18.i.2, ptr %delay_multiplier.i19.i.2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %num.1)
  %exitcond.not.i21.i.2 = icmp eq i32 %num.1, 3
  br i1 %exitcond.not.i21.i.2, label %for.body.i22.i.2.for.end.i24.i_crit_edge, label %for.body.i22.i.3

for.body.i22.i.2.for.end.i24.i_crit_edge:         ; preds = %for.body.i22.i.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i24.i

for.body.i22.i.3:                                 ; preds = %for.body.i22.i.2
  %id.i12.i.3 = getelementptr %struct.ocrdma_eq, ptr %19, i32 3, i32 0, i32 5
  %114 = ptrtoint ptr %id.i12.i.3 to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %id.i12.i.3, align 8
  %conv.i13.i.3 = zext i16 %115 to i32
  %arrayidx4.i14.i.3 = getelementptr %struct.ocrdma_modify_eqd_req, ptr %call7.i.i.i.i1.i, i32 0, i32 1, i32 2, i32 3
  %116 = ptrtoint ptr %arrayidx4.i14.i.3 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %conv.i13.i.3, ptr %arrayidx4.i14.i.3, align 4
  %phase.i15.i.3 = getelementptr %struct.ocrdma_modify_eqd_req, ptr %call7.i.i.i.i1.i, i32 0, i32 1, i32 2, i32 3, i32 1
  %117 = ptrtoint ptr %phase.i15.i.3 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 0, ptr %phase.i15.i.3, align 8
  %aic_obj.i16.i.3 = getelementptr %struct.ocrdma_eq, ptr %19, i32 3, i32 5
  %118 = ptrtoint ptr %aic_obj.i16.i.3 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %aic_obj.i16.i.3, align 8
  %mul.i17.i.3 = mul i32 %119, 65
  %div.i18.i.3 = udiv i32 %mul.i17.i.3, 100
  %delay_multiplier.i19.i.3 = getelementptr %struct.ocrdma_modify_eqd_req, ptr %call7.i.i.i.i1.i, i32 0, i32 1, i32 2, i32 3, i32 2
  %120 = ptrtoint ptr %delay_multiplier.i19.i.3 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %div.i18.i.3, ptr %delay_multiplier.i19.i.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %num.1)
  %exitcond.not.i21.i.3 = icmp eq i32 %num.1, 4
  br i1 %exitcond.not.i21.i.3, label %for.body.i22.i.3.for.end.i24.i_crit_edge, label %for.body.i22.i.4

for.body.i22.i.3.for.end.i24.i_crit_edge:         ; preds = %for.body.i22.i.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i24.i

for.body.i22.i.4:                                 ; preds = %for.body.i22.i.3
  %id.i12.i.4 = getelementptr %struct.ocrdma_eq, ptr %19, i32 4, i32 0, i32 5
  %121 = ptrtoint ptr %id.i12.i.4 to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %id.i12.i.4, align 8
  %conv.i13.i.4 = zext i16 %122 to i32
  %arrayidx4.i14.i.4 = getelementptr %struct.ocrdma_modify_eqd_req, ptr %call7.i.i.i.i1.i, i32 0, i32 1, i32 2, i32 4
  %123 = ptrtoint ptr %arrayidx4.i14.i.4 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %conv.i13.i.4, ptr %arrayidx4.i14.i.4, align 8
  %phase.i15.i.4 = getelementptr %struct.ocrdma_modify_eqd_req, ptr %call7.i.i.i.i1.i, i32 0, i32 1, i32 2, i32 4, i32 1
  %124 = ptrtoint ptr %phase.i15.i.4 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 0, ptr %phase.i15.i.4, align 4
  %aic_obj.i16.i.4 = getelementptr %struct.ocrdma_eq, ptr %19, i32 4, i32 5
  %125 = ptrtoint ptr %aic_obj.i16.i.4 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %aic_obj.i16.i.4, align 8
  %mul.i17.i.4 = mul i32 %126, 65
  %div.i18.i.4 = udiv i32 %mul.i17.i.4, 100
  %delay_multiplier.i19.i.4 = getelementptr %struct.ocrdma_modify_eqd_req, ptr %call7.i.i.i.i1.i, i32 0, i32 1, i32 2, i32 4, i32 2
  %127 = ptrtoint ptr %delay_multiplier.i19.i.4 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %div.i18.i.4, ptr %delay_multiplier.i19.i.4, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %num.1)
  %exitcond.not.i21.i.4 = icmp eq i32 %num.1, 5
  br i1 %exitcond.not.i21.i.4, label %for.body.i22.i.4.for.end.i24.i_crit_edge, label %for.body.i22.i.5

for.body.i22.i.4.for.end.i24.i_crit_edge:         ; preds = %for.body.i22.i.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i24.i

for.body.i22.i.5:                                 ; preds = %for.body.i22.i.4
  %id.i12.i.5 = getelementptr %struct.ocrdma_eq, ptr %19, i32 5, i32 0, i32 5
  %128 = ptrtoint ptr %id.i12.i.5 to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %id.i12.i.5, align 8
  %conv.i13.i.5 = zext i16 %129 to i32
  %arrayidx4.i14.i.5 = getelementptr %struct.ocrdma_modify_eqd_req, ptr %call7.i.i.i.i1.i, i32 0, i32 1, i32 2, i32 5
  %130 = ptrtoint ptr %arrayidx4.i14.i.5 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %conv.i13.i.5, ptr %arrayidx4.i14.i.5, align 4
  %phase.i15.i.5 = getelementptr %struct.ocrdma_modify_eqd_req, ptr %call7.i.i.i.i1.i, i32 0, i32 1, i32 2, i32 5, i32 1
  %131 = ptrtoint ptr %phase.i15.i.5 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 0, ptr %phase.i15.i.5, align 8
  %aic_obj.i16.i.5 = getelementptr %struct.ocrdma_eq, ptr %19, i32 5, i32 5
  %132 = ptrtoint ptr %aic_obj.i16.i.5 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %aic_obj.i16.i.5, align 8
  %mul.i17.i.5 = mul i32 %133, 65
  %div.i18.i.5 = udiv i32 %mul.i17.i.5, 100
  %delay_multiplier.i19.i.5 = getelementptr %struct.ocrdma_modify_eqd_req, ptr %call7.i.i.i.i1.i, i32 0, i32 1, i32 2, i32 5, i32 2
  %134 = ptrtoint ptr %delay_multiplier.i19.i.5 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %div.i18.i.5, ptr %delay_multiplier.i19.i.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %num.1)
  %exitcond.not.i21.i.5 = icmp eq i32 %num.1, 6
  br i1 %exitcond.not.i21.i.5, label %for.body.i22.i.5.for.end.i24.i_crit_edge, label %for.body.i22.i.6

for.body.i22.i.5.for.end.i24.i_crit_edge:         ; preds = %for.body.i22.i.5
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i24.i

for.body.i22.i.6:                                 ; preds = %for.body.i22.i.5
  %id.i12.i.6 = getelementptr %struct.ocrdma_eq, ptr %19, i32 6, i32 0, i32 5
  %135 = ptrtoint ptr %id.i12.i.6 to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %id.i12.i.6, align 8
  %conv.i13.i.6 = zext i16 %136 to i32
  %arrayidx4.i14.i.6 = getelementptr %struct.ocrdma_modify_eqd_req, ptr %call7.i.i.i.i1.i, i32 0, i32 1, i32 2, i32 6
  %137 = ptrtoint ptr %arrayidx4.i14.i.6 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %conv.i13.i.6, ptr %arrayidx4.i14.i.6, align 8
  %phase.i15.i.6 = getelementptr %struct.ocrdma_modify_eqd_req, ptr %call7.i.i.i.i1.i, i32 0, i32 1, i32 2, i32 6, i32 1
  %138 = ptrtoint ptr %phase.i15.i.6 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 0, ptr %phase.i15.i.6, align 4
  %aic_obj.i16.i.6 = getelementptr %struct.ocrdma_eq, ptr %19, i32 6, i32 5
  %139 = ptrtoint ptr %aic_obj.i16.i.6 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %aic_obj.i16.i.6, align 8
  %mul.i17.i.6 = mul i32 %140, 65
  %div.i18.i.6 = udiv i32 %mul.i17.i.6, 100
  %delay_multiplier.i19.i.6 = getelementptr %struct.ocrdma_modify_eqd_req, ptr %call7.i.i.i.i1.i, i32 0, i32 1, i32 2, i32 6, i32 2
  %141 = ptrtoint ptr %delay_multiplier.i19.i.6 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %div.i18.i.6, ptr %delay_multiplier.i19.i.6, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %num.1)
  %exitcond.not.i21.i.6 = icmp eq i32 %num.1, 7
  br i1 %exitcond.not.i21.i.6, label %for.body.i22.i.6.for.end.i24.i_crit_edge, label %for.body.i22.i.7

for.body.i22.i.6.for.end.i24.i_crit_edge:         ; preds = %for.body.i22.i.6
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i24.i

for.body.i22.i.7:                                 ; preds = %for.body.i22.i.6
  call void @__sanitizer_cov_trace_pc() #16
  %id.i12.i.7 = getelementptr %struct.ocrdma_eq, ptr %19, i32 7, i32 0, i32 5
  %142 = ptrtoint ptr %id.i12.i.7 to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %id.i12.i.7, align 8
  %conv.i13.i.7 = zext i16 %143 to i32
  %arrayidx4.i14.i.7 = getelementptr %struct.ocrdma_modify_eqd_req, ptr %call7.i.i.i.i1.i, i32 0, i32 1, i32 2, i32 7
  %144 = ptrtoint ptr %arrayidx4.i14.i.7 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %conv.i13.i.7, ptr %arrayidx4.i14.i.7, align 4
  %phase.i15.i.7 = getelementptr %struct.ocrdma_modify_eqd_req, ptr %call7.i.i.i.i1.i, i32 0, i32 1, i32 2, i32 7, i32 1
  %145 = ptrtoint ptr %phase.i15.i.7 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 0, ptr %phase.i15.i.7, align 8
  %aic_obj.i16.i.7 = getelementptr %struct.ocrdma_eq, ptr %19, i32 7, i32 5
  %146 = ptrtoint ptr %aic_obj.i16.i.7 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %aic_obj.i16.i.7, align 8
  %mul.i17.i.7 = mul i32 %147, 65
  %div.i18.i.7 = udiv i32 %mul.i17.i.7, 100
  %delay_multiplier.i19.i.7 = getelementptr %struct.ocrdma_modify_eqd_req, ptr %call7.i.i.i.i1.i, i32 0, i32 1, i32 2, i32 7, i32 2
  %148 = ptrtoint ptr %delay_multiplier.i19.i.7 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %div.i18.i.7, ptr %delay_multiplier.i19.i.7, align 4
  br label %for.end.i24.i

for.end.i24.i:                                    ; preds = %for.body.i22.i.7, %for.body.i22.i.6.for.end.i24.i_crit_edge, %for.body.i22.i.5.for.end.i24.i_crit_edge, %for.body.i22.i.4.for.end.i24.i_crit_edge, %for.body.i22.i.3.for.end.i24.i_crit_edge, %for.body.i22.i.2.for.end.i24.i_crit_edge, %for.body.i22.i.1.for.end.i24.i_crit_edge, %for.body.i22.i.for.end.i24.i_crit_edge, %if.end.i10.i.for.end.i24.i_crit_edge
  %call12.i23.i = tail call fastcc i32 @ocrdma_mbx_cmd(ptr noundef %add.ptr, ptr noundef nonnull %call7.i.i.i.i1.i) #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i1.i) #14
  br label %if.end32

if.end32:                                         ; preds = %for.end.i24.i, %if.else.i.if.end32_crit_edge, %ocrdma_mbx_modify_eqd.exit.i.if.end32_crit_edge, %for.end.if.end32_crit_edge, %entry.if.end32_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %149 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %149, ptr noundef %work, i32 noundef 100) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocrdma_init_hw(ptr noundef %dev) local_unnamed_addr #3 align 64 {
entry:
  %dma.i = alloca %struct.ocrdma_dma_mem, align 4
  %pa.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %intr_mode.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 20, i32 10
  %0 = ptrtoint ptr %intr_mode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %intr_mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i = icmp eq i32 %1, 1
  br i1 %cmp.i, label %entry.if.end6.i_crit_edge, label %if.end.i

entry.if.end6.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6.i

if.end.i:                                         ; preds = %entry
  %msix.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 20, i32 11
  %2 = ptrtoint ptr %msix.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msix.i, align 4
  %start_vector.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 20, i32 11, i32 1
  %4 = ptrtoint ptr %start_vector.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %start_vector.i, align 4
  %sub.i = sub i32 %3, %5
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %6 = load volatile i32, ptr @__num_online_cpus, align 4
  %7 = tail call i32 @llvm.umin.i32(i32 %sub.i, i32 %6) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %if.end.i.do.end_crit_edge, label %if.end.i.if.end6.i_crit_edge

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6.i

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.end6.i:                                        ; preds = %if.end.i.if.end6.i_crit_edge, %entry.if.end6.i_crit_edge
  %flags.072.i = phi i32 [ 0, %if.end.i.if.end6.i_crit_edge ], [ 128, %entry.if.end6.i_crit_edge ]
  %num_eq.071.i = phi i32 [ %7, %if.end.i.if.end6.i_crit_edge ], [ 1, %entry.if.end6.i_crit_edge ]
  %8 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num_eq.071.i, i32 96) #14
  %9 = extractvalue { i32, i1 } %8, 1
  br i1 %9, label %kcalloc.exit.thread.i, label %if.end7.i.i.i, !prof !185

kcalloc.exit.thread.i:                            ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #16
  %eq_tbl74.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 7
  %10 = ptrtoint ptr %eq_tbl74.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %eq_tbl74.i, align 4
  br label %do.end

if.end7.i.i.i:                                    ; preds = %if.end6.i
  %11 = extractvalue { i32, i1 } %8, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %11, i32 noundef 3520) #19
  %eq_tbl.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 7
  %12 = ptrtoint ptr %eq_tbl.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call8.i.i.i, ptr %eq_tbl.i, align 4
  %tobool9.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool9.not.i, label %if.end7.i.i.i.do.end_crit_edge, label %for.body.lr.ph.i

if.end7.i.i.i.do.end_crit_edge:                   ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

for.body.lr.ph.i:                                 ; preds = %if.end7.i.i.i
  %pdev.i.i.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 20, i32 6
  %mbx_cmd.i.i.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 17
  %netdev.i.i.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 20, i32 7
  %nic_info.i.i.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 20
  %id.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 25
  %eq_cnt.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 8
  br label %for.body.i

for.body.i:                                       ; preds = %if.end33.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.084.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end33.i.for.body.i_crit_edge ]
  %13 = ptrtoint ptr %eq_tbl.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %eq_tbl.i, align 4
  %arrayidx.i = getelementptr %struct.ocrdma_eq, ptr %14, i32 %i.084.i
  %15 = call ptr @memset(ptr %arrayidx.i, i32 0, i32 24)
  %len1.i.i.i = getelementptr inbounds %struct.ocrdma_queue_info, ptr %arrayidx.i, i32 0, i32 3
  %16 = ptrtoint ptr %len1.i.i.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 4096, ptr %len1.i.i.i, align 4
  %entry_size2.i.i.i = getelementptr inbounds %struct.ocrdma_queue_info, ptr %arrayidx.i, i32 0, i32 4
  %17 = ptrtoint ptr %entry_size2.i.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 4, ptr %entry_size2.i.i.i, align 2
  %size.i.i.i = getelementptr inbounds %struct.ocrdma_queue_info, ptr %arrayidx.i, i32 0, i32 2
  %18 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 16384, ptr %size.i.i.i, align 4
  %19 = ptrtoint ptr %pdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdev.i.i.i, align 4
  %dev4.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  %dma.i.i.i = getelementptr inbounds %struct.ocrdma_queue_info, ptr %arrayidx.i, i32 0, i32 1
  %call.i.i.i66.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev4.i.i.i, i32 noundef 16384, ptr noundef %dma.i.i.i, i32 noundef 3264, i32 noundef 0) #14
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i.i.i66.i, ptr %arrayidx.i, align 4
  %tobool.not.i.not.i.i = icmp eq ptr %call.i.i.i66.i, null
  br i1 %tobool.not.i.not.i.i, label %for.body.i.if.end_crit_edge, label %if.end.i.i

for.body.i.if.end_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end.i.i:                                       ; preds = %for.body.i
  %22 = ptrtoint ptr %mbx_cmd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mbx_cmd.i.i.i, align 4
  %24 = getelementptr inbounds i8, ptr %23, i32 28
  %25 = call ptr @memset(ptr %24, i32 0, i32 72)
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 269, ptr %23, align 4
  %timeout.i.i.i.i = getelementptr inbounds %struct.ocrdma_mbx_hdr, ptr %23, i32 0, i32 1
  %27 = ptrtoint ptr %timeout.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 20, ptr %timeout.i.i.i.i, align 4
  %cmd_len2.i.i.i.i = getelementptr inbounds %struct.ocrdma_mbx_hdr, ptr %23, i32 0, i32 2
  %28 = ptrtoint ptr %cmd_len2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 84, ptr %cmd_len2.i.i.i.i, align 4
  %rsvd_version.i.i.i = getelementptr inbounds %struct.ocrdma_mbx_hdr, ptr %23, i32 0, i32 3
  %29 = ptrtoint ptr %rsvd_version.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 2, ptr %rsvd_version.i.i.i, align 4
  %num_pages.i.i.i = getelementptr inbounds %struct.ocrdma_create_eq_req, ptr %23, i32 0, i32 1
  %30 = ptrtoint ptr %num_pages.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 4, ptr %num_pages.i.i.i, align 4
  %valid.i.i.i = getelementptr inbounds %struct.ocrdma_create_eq_req, ptr %23, i32 0, i32 2
  %31 = ptrtoint ptr %valid.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 536870912, ptr %valid.i.i.i, align 4
  %cnt.i.i.i = getelementptr inbounds %struct.ocrdma_create_eq_req, ptr %23, i32 0, i32 3
  %32 = ptrtoint ptr %cnt.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 268435456, ptr %cnt.i.i.i, align 4
  %pa.i.i.i = getelementptr inbounds %struct.ocrdma_create_eq_req, ptr %23, i32 0, i32 6
  %33 = ptrtoint ptr %dma.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dma.i.i.i, align 4
  %35 = ptrtoint ptr %pa.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %pa.i.i.i, align 4
  %hi.i.i.i.i = getelementptr %struct.ocrdma_create_eq_req, ptr %23, i32 0, i32 6, i32 0, i32 1
  %36 = ptrtoint ptr %hi.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %hi.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %34, 4096
  %arrayidx.i.1.i.i.i = getelementptr %struct.ocrdma_create_eq_req, ptr %23, i32 0, i32 6, i32 1
  %37 = ptrtoint ptr %arrayidx.i.1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %add.i.i.i.i, ptr %arrayidx.i.1.i.i.i, align 4
  %hi.i.1.i.i.i = getelementptr %struct.ocrdma_create_eq_req, ptr %23, i32 0, i32 6, i32 1, i32 1
  %38 = ptrtoint ptr %hi.i.1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %hi.i.1.i.i.i, align 4
  %add.i.1.i.i.i = add i32 %34, 8192
  %arrayidx.i.2.i.i.i = getelementptr %struct.ocrdma_create_eq_req, ptr %23, i32 0, i32 6, i32 2
  %39 = ptrtoint ptr %arrayidx.i.2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %add.i.1.i.i.i, ptr %arrayidx.i.2.i.i.i, align 4
  %hi.i.2.i.i.i = getelementptr %struct.ocrdma_create_eq_req, ptr %23, i32 0, i32 6, i32 2, i32 1
  %40 = ptrtoint ptr %hi.i.2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %hi.i.2.i.i.i, align 4
  %add.i.2.i.i.i = add i32 %34, 12288
  %arrayidx.i.3.i.i.i = getelementptr %struct.ocrdma_create_eq_req, ptr %23, i32 0, i32 6, i32 3
  %41 = ptrtoint ptr %arrayidx.i.3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %add.i.2.i.i.i, ptr %arrayidx.i.3.i.i.i, align 4
  %hi.i.3.i.i.i = getelementptr %struct.ocrdma_create_eq_req, ptr %23, i32 0, i32 6, i32 3, i32 1
  %42 = ptrtoint ptr %hi.i.3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %hi.i.3.i.i.i, align 4
  %43 = ptrtoint ptr %netdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %netdev.i.i.i, align 8
  %call.i.i.i = tail call i32 @be_roce_mcc_cmd(ptr noundef %44, ptr noundef %23, i32 noundef 100, ptr noundef null, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i2.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i2.i.i, label %if.end17.i, label %mbx_err.i.i

mbx_err.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %size.i.i.i.le = getelementptr inbounds %struct.ocrdma_queue_info, ptr %arrayidx.i, i32 0, i32 2
  %45 = ptrtoint ptr %pdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pdev.i.i.i, align 4
  %dev1.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %46, i32 0, i32 44
  %47 = ptrtoint ptr %size.i.i.i.le to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %size.i.i.i.le, align 4
  %49 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx.i, align 4
  %51 = ptrtoint ptr %dma.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %dma.i.i.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev1.i.i.i, i32 noundef %48, ptr noundef %50, i32 noundef %52, i32 noundef 0) #14
  br label %if.end

if.end17.i:                                       ; preds = %if.end.i.i
  %53 = ptrtoint ptr %num_pages.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %num_pages.i.i.i, align 4
  %conv.i.i.i = trunc i32 %54 to i16
  %id.i.i.i = getelementptr inbounds %struct.ocrdma_queue_info, ptr %arrayidx.i, i32 0, i32 5
  %55 = ptrtoint ptr %id.i.i.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %conv.i.i.i, ptr %id.i.i.i, align 8
  %56 = load i32, ptr %num_pages.i.i.i, align 4
  %shr.i.i.i = lshr i32 %56, 16
  %vector.i.i.i = getelementptr %struct.ocrdma_eq, ptr %14, i32 %i.084.i, i32 1
  %57 = ptrtoint ptr %vector.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %shr.i.i.i, ptr %vector.i.i.i, align 8
  %created.i.i.i = getelementptr inbounds %struct.ocrdma_queue_info, ptr %arrayidx.i, i32 0, i32 8
  %58 = ptrtoint ptr %created.i.i.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 1, ptr %created.i.i.i, align 2
  %dev5.i.i = getelementptr %struct.ocrdma_eq, ptr %14, i32 %i.084.i, i32 3
  %59 = ptrtoint ptr %dev5.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %dev, ptr %dev5.i.i, align 8
  %and.i.i.i = and i32 %54, 511
  %conv.i3.i.i = shl i32 %54, 2
  %shl.i.i.i = and i32 %conv.i3.i.i, 63488
  %or4.i.i.i = or i32 %and.i.i.i, %shl.i.i.i
  %or13.i.i.i = or i32 %or4.i.i.i, 536872448
  %60 = ptrtoint ptr %nic_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %nic_info.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %61, i32 288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !174
  tail call void @arm_heavy_mb() #14
  %62 = tail call i32 @llvm.bswap.i32(i32 %or13.i.i.i) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %62) #14, !srcloc !175
  %63 = ptrtoint ptr %eq_tbl.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %eq_tbl.i, align 4
  %irq_name.i = getelementptr %struct.ocrdma_eq, ptr %64, i32 %i.084.i, i32 4
  %65 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %id.i, align 4
  %call20.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %irq_name.i, ptr noundef nonnull @.str.65, i32 noundef %66, i32 noundef %i.084.i) #14
  %67 = ptrtoint ptr %eq_tbl.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %eq_tbl.i, align 4
  %arrayidx22.i = getelementptr %struct.ocrdma_eq, ptr %68, i32 %i.084.i
  %69 = ptrtoint ptr %intr_mode.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %intr_mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %70)
  %cmp.i.i = icmp eq i32 %70, 1
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #16
  %71 = ptrtoint ptr %pdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %pdev.i.i.i, align 4
  %irq2.i.i = getelementptr inbounds %struct.pci_dev, ptr %72, i32 0, i32 46
  br label %ocrdma_get_irq.exit.i

if.else.i.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #16
  %vector.i.i = getelementptr %struct.ocrdma_eq, ptr %68, i32 %i.084.i, i32 1
  %73 = ptrtoint ptr %vector.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %vector.i.i, align 8
  %arrayidx.i.i = getelementptr %struct.ocrdma_dev, ptr %dev, i32 0, i32 20, i32 11, i32 2, i32 %74
  br label %ocrdma_get_irq.exit.i

ocrdma_get_irq.exit.i:                            ; preds = %if.else.i.i, %if.then.i.i
  %irq.0.in.i.i = phi ptr [ %irq2.i.i, %if.then.i.i ], [ %arrayidx.i.i, %if.else.i.i ]
  %75 = ptrtoint ptr %irq.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %irq.0.i.i = load i32, ptr %irq.0.in.i.i, align 4
  %irq_name26.i = getelementptr %struct.ocrdma_eq, ptr %68, i32 %i.084.i, i32 4
  %call.i.i = tail call i32 @request_threaded_irq(i32 noundef %irq.0.i.i, ptr noundef nonnull @ocrdma_irq_handler, ptr noundef null, i32 noundef %flags.072.i, ptr noundef %irq_name26.i, ptr noundef %arrayidx22.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool31.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool31.not.i, label %if.end33.i, label %done.i

if.end33.i:                                       ; preds = %ocrdma_get_irq.exit.i
  %76 = ptrtoint ptr %eq_cnt.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %eq_cnt.i, align 8
  %add.i = add i32 %77, 1
  store i32 %add.i, ptr %eq_cnt.i, align 8
  %inc.i = add nuw nsw i32 %i.084.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %num_eq.071.i
  br i1 %exitcond.not.i, label %if.end33.i.if.end_crit_edge, label %if.end33.i.for.body.i_crit_edge

if.end33.i.for.body.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

if.end33.i.if.end_crit_edge:                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

done.i:                                           ; preds = %ocrdma_get_irq.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @ocrdma_destroy_eqs(ptr noundef %dev) #14
  br label %do.end

if.end:                                           ; preds = %if.end33.i.if.end_crit_edge, %mbx_err.i.i, %for.body.i.if.end_crit_edge
  %mq.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 18
  %cq.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 18, i32 1
  %78 = call ptr @memset(ptr %cq.i, i32 0, i32 24)
  %len1.i.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 18, i32 1, i32 3
  %79 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 256, ptr %len1.i.i, align 4
  %entry_size2.i.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 18, i32 1, i32 4
  %80 = ptrtoint ptr %entry_size2.i.i to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 16, ptr %entry_size2.i.i, align 2
  %size.i.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 18, i32 1, i32 2
  %81 = ptrtoint ptr %size.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 4096, ptr %size.i.i, align 4
  %82 = ptrtoint ptr %pdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %pdev.i.i.i, align 4
  %dev4.i.i = getelementptr inbounds %struct.pci_dev, ptr %83, i32 0, i32 44
  %dma.i.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 18, i32 1, i32 1
  %call.i.i.i49 = tail call ptr @dma_alloc_attrs(ptr noundef %dev4.i.i, i32 noundef 4096, ptr noundef %dma.i.i, i32 noundef 3264, i32 noundef 0) #14
  %84 = ptrtoint ptr %cq.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %call.i.i.i49, ptr %cq.i, align 4
  %tobool.not.i.not.i = icmp eq ptr %call.i.i.i49, null
  br i1 %tobool.not.i.not.i, label %if.end.mq_err_crit_edge, label %if.end.i52

if.end.mq_err_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %mq_err

if.end.i52:                                       ; preds = %if.end
  %eq_tbl.i50 = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 7
  %85 = ptrtoint ptr %eq_tbl.i50 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %eq_tbl.i50, align 4
  %cq_cnt.i = getelementptr inbounds %struct.ocrdma_eq, ptr %86, i32 0, i32 2
  %87 = ptrtoint ptr %cq_cnt.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %cq_cnt.i, align 4
  %inc.i51 = add i32 %88, 1
  store i32 %inc.i51, ptr %cq_cnt.i, align 4
  %89 = load ptr, ptr %eq_tbl.i50, align 4
  %90 = ptrtoint ptr %mbx_cmd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %mbx_cmd.i.i.i, align 4
  %92 = getelementptr inbounds i8, ptr %91, i32 16
  %93 = call ptr @memset(ptr %92, i32 0, i32 52)
  %94 = ptrtoint ptr %91 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 268, ptr %91, align 4
  %timeout.i.i.i = getelementptr inbounds %struct.ocrdma_mbx_hdr, ptr %91, i32 0, i32 1
  %95 = ptrtoint ptr %timeout.i.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 20, ptr %timeout.i.i.i, align 4
  %cmd_len2.i.i.i = getelementptr inbounds %struct.ocrdma_mbx_hdr, ptr %91, i32 0, i32 2
  %96 = ptrtoint ptr %cmd_len2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 52, ptr %cmd_len2.i.i.i, align 4
  %rsvd_version.i.i = getelementptr inbounds %struct.ocrdma_mbx_hdr, ptr %91, i32 0, i32 3
  %97 = ptrtoint ptr %rsvd_version.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 2, ptr %rsvd_version.i.i, align 4
  %98 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %size.i.i, align 4
  %100 = shl i32 %99, 4
  %shl.i.i = and i32 %100, -65536
  %101 = ptrtoint ptr %92 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %shl.i.i, ptr %92, align 4
  %102 = ptrtoint ptr %cq.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %cq.i, align 4
  %104 = ptrtoint ptr %103 to i32
  %and.i.i = and i32 %104, 4095
  %105 = load i32, ptr %size.i.i, align 4
  %add.i.i = add i32 %105, 4095
  %add4.i.i = add i32 %add.i.i, %and.i.i
  %shr.i.i = lshr i32 %add4.i.i, 12
  %or.i.i = or i32 %shr.i.i, %shl.i.i
  store i32 %or.i.i, ptr %92, align 4
  %ev_cnt_flags.i.i = getelementptr inbounds %struct.ocrdma_create_cq_cmd, ptr %91, i32 0, i32 2
  %106 = ptrtoint ptr %ev_cnt_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 -1610596352, ptr %ev_cnt_flags.i.i, align 4
  %id.i.i = getelementptr inbounds %struct.ocrdma_queue_info, ptr %89, i32 0, i32 5
  %107 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %id.i.i, align 4
  %conv.i.i = zext i16 %108 to i32
  %eqn.i.i = getelementptr inbounds %struct.ocrdma_create_cq_cmd, ptr %91, i32 0, i32 3
  %109 = ptrtoint ptr %eqn.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %conv.i.i, ptr %eqn.i.i, align 4
  %110 = load i32, ptr %size.i.i, align 4
  %div733.i.i = lshr i32 %110, 4
  %pdid_cqecnt.i.i = getelementptr inbounds %struct.ocrdma_create_cq_cmd, ptr %91, i32 0, i32 4
  %111 = ptrtoint ptr %pdid_cqecnt.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %div733.i.i, ptr %pdid_cqecnt.i.i, align 4
  %pa.i.i = getelementptr inbounds %struct.ocrdma_create_cq_cmd, ptr %91, i32 0, i32 6
  %112 = load i32, ptr %size.i.i, align 4
  %div934.i.i = lshr i32 %112, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %112)
  %cmp9.i.not.i.i = icmp ult i32 %112, 4096
  br i1 %cmp9.i.not.i.i, label %if.end.i52.ocrdma_build_q_pages.exit.i.i_crit_edge, label %for.body.i.preheader.i.i

if.end.i52.ocrdma_build_q_pages.exit.i.i_crit_edge: ; preds = %if.end.i52
  call void @__sanitizer_cov_trace_pc() #16
  br label %ocrdma_build_q_pages.exit.i.i

for.body.i.preheader.i.i:                         ; preds = %if.end.i52
  %113 = ptrtoint ptr %dma.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %dma.i.i, align 4
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %for.body.i.preheader.i.i
  %i.011.i.i.i = phi i32 [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %for.body.i.preheader.i.i ]
  %host_pa.addr.010.i.i.i = phi i32 [ %add.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ %114, %for.body.i.preheader.i.i ]
  %arrayidx.i.i.i = getelementptr %struct.ocrdma_pa, ptr %pa.i.i, i32 %i.011.i.i.i
  %115 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %host_pa.addr.010.i.i.i, ptr %arrayidx.i.i.i, align 4
  %hi.i.i.i = getelementptr %struct.ocrdma_pa, ptr %pa.i.i, i32 %i.011.i.i.i, i32 1
  %116 = ptrtoint ptr %hi.i.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 0, ptr %hi.i.i.i, align 4
  %add.i.i.i = add i32 %host_pa.addr.010.i.i.i, 4096
  %inc.i.i.i = add nuw nsw i32 %i.011.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %div934.i.i
  br i1 %exitcond.not.i.i.i, label %for.body.i.i.i.ocrdma_build_q_pages.exit.i.i_crit_edge, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i.i

for.body.i.i.i.ocrdma_build_q_pages.exit.i.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ocrdma_build_q_pages.exit.i.i

ocrdma_build_q_pages.exit.i.i:                    ; preds = %for.body.i.i.i.ocrdma_build_q_pages.exit.i.i_crit_edge, %if.end.i52.ocrdma_build_q_pages.exit.i.i_crit_edge
  %117 = ptrtoint ptr %netdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %netdev.i.i.i, align 8
  %call.i.i53 = tail call i32 @be_roce_mcc_cmd(ptr noundef %118, ptr noundef %91, i32 noundef 68, ptr noundef null, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i53)
  %tobool.not.i63.i = icmp eq i32 %call.i.i53, 0
  br i1 %tobool.not.i63.i, label %if.end8.i, label %ocrdma_build_q_pages.exit.i.i.mbx_cq_free.i_crit_edge

ocrdma_build_q_pages.exit.i.i.mbx_cq_free.i_crit_edge: ; preds = %ocrdma_build_q_pages.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mbx_cq_free.i

if.end8.i:                                        ; preds = %ocrdma_build_q_pages.exit.i.i
  %119 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %92, align 4
  %conv11.i.i = trunc i32 %120 to i16
  %id12.i.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 18, i32 1, i32 5
  %121 = ptrtoint ptr %id12.i.i to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 %conv11.i.i, ptr %id12.i.i, align 4
  %created.i.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 18, i32 1, i32 8
  %122 = ptrtoint ptr %created.i.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 1, ptr %created.i.i, align 2
  %mqe_ctx.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 19
  %123 = call ptr @memset(ptr %mqe_ctx.i, i32 0, i32 156)
  %cmd_wait.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 19, i32 1
  tail call void @__init_waitqueue_head(ptr noundef %cmd_wait.i, ptr noundef nonnull @.str.85, ptr noundef nonnull @ocrdma_create_mq.__key) #14
  tail call void @__mutex_init(ptr noundef %mqe_ctx.i, ptr noundef nonnull @.str.87, ptr noundef nonnull @ocrdma_create_mq.__key.86) #14
  %124 = call ptr @memset(ptr %mq.i, i32 0, i32 24)
  %len1.i64.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 18, i32 0, i32 3
  %125 = ptrtoint ptr %len1.i64.i to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 128, ptr %len1.i64.i, align 4
  %entry_size2.i65.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 18, i32 0, i32 4
  %126 = ptrtoint ptr %entry_size2.i65.i to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 256, ptr %entry_size2.i65.i, align 2
  %size.i66.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 18, i32 0, i32 2
  %127 = ptrtoint ptr %size.i66.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 32768, ptr %size.i66.i, align 4
  %128 = ptrtoint ptr %pdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %pdev.i.i.i, align 4
  %dev4.i68.i = getelementptr inbounds %struct.pci_dev, ptr %129, i32 0, i32 44
  %dma.i69.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 18, i32 0, i32 1
  %call.i.i70.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev4.i68.i, i32 noundef 32768, ptr noundef %dma.i69.i, i32 noundef 3264, i32 noundef 0) #14
  %130 = ptrtoint ptr %mq.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %call.i.i70.i, ptr %mq.i, align 4
  %tobool.not.i71.not.i = icmp eq ptr %call.i.i70.i, null
  br i1 %tobool.not.i71.not.i, label %if.end8.i.mbx_cq_destroy.i_crit_edge, label %if.end18.i

if.end8.i.mbx_cq_destroy.i_crit_edge:             ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mbx_cq_destroy.i

if.end18.i:                                       ; preds = %if.end8.i
  %131 = ptrtoint ptr %mbx_cmd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %mbx_cmd.i.i.i, align 4
  %133 = call ptr @memset(ptr %132, i32 0, i32 104)
  %134 = ptrtoint ptr %mq.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %mq.i, align 4
  %136 = ptrtoint ptr %135 to i32
  %and.i74.i = and i32 %136, 4095
  %137 = ptrtoint ptr %size.i66.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %size.i66.i, align 4
  %add.i76.i = add i32 %138, 4095
  %add2.i.i = add i32 %add.i76.i, %and.i74.i
  %shr.i77.i = lshr i32 %add2.i.i, 12
  %139 = ptrtoint ptr %132 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 346, ptr %132, align 4
  %timeout.i.i78.i = getelementptr inbounds %struct.ocrdma_mbx_hdr, ptr %132, i32 0, i32 1
  %140 = ptrtoint ptr %timeout.i.i78.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 20, ptr %timeout.i.i78.i, align 4
  %cmd_len2.i.i79.i = getelementptr inbounds %struct.ocrdma_mbx_hdr, ptr %132, i32 0, i32 2
  %141 = ptrtoint ptr %cmd_len2.i.i79.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 88, ptr %cmd_len2.i.i79.i, align 4
  %rsvd_version.i80.i = getelementptr inbounds %struct.ocrdma_mbx_hdr, ptr %132, i32 0, i32 3
  %142 = ptrtoint ptr %rsvd_version.i80.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 1, ptr %rsvd_version.i80.i, align 4
  %cqid_pages.i.i = getelementptr inbounds %struct.ocrdma_create_mq_req, ptr %132, i32 0, i32 1
  %143 = ptrtoint ptr %cqid_pages.i.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %shr.i77.i, ptr %cqid_pages.i.i, align 4
  %144 = ptrtoint ptr %id12.i.i to i32
  call void @__asan_load2_noabort(i32 %144)
  %145 = load i16, ptr %id12.i.i, align 4
  %conv.i82.i = zext i16 %145 to i32
  %shl.i83.i = shl nuw i32 %conv.i82.i, 16
  %or.i84.i = or i32 %shl.i83.i, %shr.i77.i
  store i32 %or.i84.i, ptr %cqid_pages.i.i, align 4
  %async_cqid_valid.i.i = getelementptr inbounds %struct.ocrdma_create_mq_req, ptr %132, i32 0, i32 5
  %146 = ptrtoint ptr %async_cqid_valid.i.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 1, ptr %async_cqid_valid.i.i, align 4
  %async_event_bitmap.i.i = getelementptr inbounds %struct.ocrdma_create_mq_req, ptr %132, i32 0, i32 2
  %147 = ptrtoint ptr %async_event_bitmap.i.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 1048610, ptr %async_event_bitmap.i.i, align 4
  %148 = load i16, ptr %id12.i.i, align 4
  %conv10.i.i = zext i16 %148 to i32
  %async_cqid_ringsize.i.i = getelementptr inbounds %struct.ocrdma_create_mq_req, ptr %132, i32 0, i32 3
  %149 = ptrtoint ptr %async_cqid_ringsize.i.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %conv10.i.i, ptr %async_cqid_ringsize.i.i, align 4
  %150 = ptrtoint ptr %len1.i64.i to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %len1.i64.i, align 4
  %conv11.i85.i = zext i16 %151 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %151)
  %tobool.not.i.i.i.i = icmp eq i16 %151, 0
  %152 = tail call i32 @llvm.ctlz.i32(i32 %conv11.i85.i, i1 true) #14, !range !181
  %sub.i.i.i.i = sub nuw nsw i32 32, %152
  %cond.i.i.i.i = select i1 %tobool.not.i.i.i.i, i32 0, i32 %sub.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %cond.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %cond.i.i.i.i, 16
  %cond.i.i.op.i.i = shl nuw nsw i32 %cond.i.i.i.i, 16
  %shl12.i.i = select i1 %cmp.i.i.i, i32 0, i32 %cond.i.i.op.i.i
  %or14.i.i = or i32 %shl12.i.i, %conv10.i.i
  %153 = ptrtoint ptr %async_cqid_ringsize.i.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %or14.i.i, ptr %async_cqid_ringsize.i.i, align 4
  %valid.i.i = getelementptr inbounds %struct.ocrdma_create_mq_req, ptr %132, i32 0, i32 4
  %154 = ptrtoint ptr %valid.i.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 -2147483648, ptr %valid.i.i, align 4
  %pa15.i.i = getelementptr inbounds %struct.ocrdma_create_mq_req, ptr %132, i32 0, i32 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add2.i.i)
  %cmp9.i.not.i86.i = icmp ult i32 %add2.i.i, 4096
  br i1 %cmp9.i.not.i86.i, label %if.end18.i.ocrdma_build_q_pages.exit.i99.i_crit_edge, label %for.body.i.preheader.i88.i

if.end18.i.ocrdma_build_q_pages.exit.i99.i_crit_edge: ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ocrdma_build_q_pages.exit.i99.i

for.body.i.preheader.i88.i:                       ; preds = %if.end18.i
  %155 = ptrtoint ptr %dma.i69.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %dma.i69.i, align 4
  br label %for.body.i.i96.i

for.body.i.i96.i:                                 ; preds = %for.body.i.i96.i.for.body.i.i96.i_crit_edge, %for.body.i.preheader.i88.i
  %i.011.i.i89.i = phi i32 [ %inc.i.i94.i, %for.body.i.i96.i.for.body.i.i96.i_crit_edge ], [ 0, %for.body.i.preheader.i88.i ]
  %host_pa.addr.010.i.i90.i = phi i32 [ %add.i.i93.i, %for.body.i.i96.i.for.body.i.i96.i_crit_edge ], [ %156, %for.body.i.preheader.i88.i ]
  %arrayidx.i.i91.i = getelementptr %struct.ocrdma_pa, ptr %pa15.i.i, i32 %i.011.i.i89.i
  %157 = ptrtoint ptr %arrayidx.i.i91.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %host_pa.addr.010.i.i90.i, ptr %arrayidx.i.i91.i, align 4
  %hi.i.i92.i = getelementptr %struct.ocrdma_pa, ptr %pa15.i.i, i32 %i.011.i.i89.i, i32 1
  %158 = ptrtoint ptr %hi.i.i92.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 0, ptr %hi.i.i92.i, align 4
  %add.i.i93.i = add i32 %host_pa.addr.010.i.i90.i, 4096
  %inc.i.i94.i = add nuw nsw i32 %i.011.i.i89.i, 1
  %exitcond.not.i.i95.i = icmp eq i32 %inc.i.i94.i, %shr.i77.i
  br i1 %exitcond.not.i.i95.i, label %for.body.i.i96.i.ocrdma_build_q_pages.exit.i99.i_crit_edge, label %for.body.i.i96.i.for.body.i.i96.i_crit_edge

for.body.i.i96.i.for.body.i.i96.i_crit_edge:      ; preds = %for.body.i.i96.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i96.i

for.body.i.i96.i.ocrdma_build_q_pages.exit.i99.i_crit_edge: ; preds = %for.body.i.i96.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ocrdma_build_q_pages.exit.i99.i

ocrdma_build_q_pages.exit.i99.i:                  ; preds = %for.body.i.i96.i.ocrdma_build_q_pages.exit.i99.i_crit_edge, %if.end18.i.ocrdma_build_q_pages.exit.i99.i_crit_edge
  %159 = ptrtoint ptr %netdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %netdev.i.i.i, align 8
  %call16.i.i = tail call i32 @be_roce_mcc_cmd(ptr noundef %160, ptr noundef %132, i32 noundef 104, ptr noundef null, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.i)
  %tobool.not.i98.i = icmp eq i32 %call16.i.i, 0
  br i1 %tobool.not.i98.i, label %if.end4, label %mbx_q_free.i

mbx_q_free.i:                                     ; preds = %ocrdma_build_q_pages.exit.i99.i
  call void @__sanitizer_cov_trace_pc() #16
  %161 = ptrtoint ptr %pdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %pdev.i.i.i, align 4
  %dev1.i.i = getelementptr inbounds %struct.pci_dev, ptr %162, i32 0, i32 44
  %163 = ptrtoint ptr %size.i66.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %size.i66.i, align 4
  %165 = ptrtoint ptr %mq.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %mq.i, align 4
  %167 = ptrtoint ptr %dma.i69.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %dma.i69.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev1.i.i, i32 noundef %164, ptr noundef %166, i32 noundef %168, i32 noundef 0) #14
  br label %mbx_cq_destroy.i

mbx_cq_destroy.i:                                 ; preds = %mbx_q_free.i, %if.end8.i.mbx_cq_destroy.i_crit_edge
  %status.0.i = phi i32 [ -12, %if.end8.i.mbx_cq_destroy.i_crit_edge ], [ %call16.i.i, %mbx_q_free.i ]
  %169 = ptrtoint ptr %mbx_cmd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %mbx_cmd.i.i.i, align 4
  %171 = getelementptr inbounds i8, ptr %170, i32 12
  %172 = ptrtoint ptr %171 to i32
  call void @__asan_storeN_noabort(i32 %172, i32 8)
  store i64 0, ptr %171, align 4
  %173 = ptrtoint ptr %170 to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 310, ptr %170, align 4
  %timeout.i.i110.i = getelementptr inbounds %struct.ocrdma_mbx_hdr, ptr %170, i32 0, i32 1
  %174 = ptrtoint ptr %timeout.i.i110.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 20, ptr %timeout.i.i110.i, align 4
  %cmd_len2.i.i111.i = getelementptr inbounds %struct.ocrdma_mbx_hdr, ptr %170, i32 0, i32 2
  %175 = ptrtoint ptr %cmd_len2.i.i111.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 4, ptr %cmd_len2.i.i111.i, align 4
  %176 = ptrtoint ptr %id12.i.i to i32
  call void @__asan_load2_noabort(i32 %176)
  %177 = load i16, ptr %id12.i.i, align 4
  %conv.i113.i = zext i16 %177 to i32
  %id6.i.i = getelementptr inbounds %struct.ocrdma_delete_q_req, ptr %170, i32 0, i32 1
  %178 = ptrtoint ptr %id6.i.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %conv.i113.i, ptr %id6.i.i, align 4
  %179 = ptrtoint ptr %netdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %netdev.i.i.i, align 8
  %call.i115.i = tail call i32 @be_roce_mcc_cmd(ptr noundef %180, ptr noundef %170, i32 noundef 20, ptr noundef null, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i115.i)
  %tobool.not.i116.i = icmp eq i32 %call.i115.i, 0
  br i1 %tobool.not.i116.i, label %if.then.i118.i, label %mbx_cq_destroy.i.mbx_cq_free.i_crit_edge

mbx_cq_destroy.i.mbx_cq_free.i_crit_edge:         ; preds = %mbx_cq_destroy.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mbx_cq_free.i

if.then.i118.i:                                   ; preds = %mbx_cq_destroy.i
  call void @__sanitizer_cov_trace_pc() #16
  %181 = ptrtoint ptr %created.i.i to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 0, ptr %created.i.i, align 2
  br label %mbx_cq_free.i

mbx_cq_free.i:                                    ; preds = %if.then.i118.i, %mbx_cq_destroy.i.mbx_cq_free.i_crit_edge, %ocrdma_build_q_pages.exit.i.i.mbx_cq_free.i_crit_edge
  %status.1.i = phi i32 [ %call.i.i53, %ocrdma_build_q_pages.exit.i.i.mbx_cq_free.i_crit_edge ], [ %status.0.i, %mbx_cq_destroy.i.mbx_cq_free.i_crit_edge ], [ %status.0.i, %if.then.i118.i ]
  %182 = ptrtoint ptr %pdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %pdev.i.i.i, align 4
  %dev1.i120.i = getelementptr inbounds %struct.pci_dev, ptr %183, i32 0, i32 44
  %184 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %size.i.i, align 4
  %186 = ptrtoint ptr %cq.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %cq.i, align 4
  %188 = ptrtoint ptr %dma.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %dma.i.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev1.i120.i, i32 noundef %185, ptr noundef %187, i32 noundef %189, i32 noundef 0) #14
  br label %mq_err

if.end4:                                          ; preds = %ocrdma_build_q_pages.exit.i99.i
  %190 = ptrtoint ptr %cqid_pages.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %cqid_pages.i.i, align 4
  %conv18.i.i = trunc i32 %191 to i16
  %id19.i.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 18, i32 0, i32 5
  %192 = ptrtoint ptr %id19.i.i to i32
  call void @__asan_store2_noabort(i32 %192)
  store i16 %conv18.i.i, ptr %id19.i.i, align 4
  %created.i100.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 18, i32 0, i32 8
  %193 = ptrtoint ptr %created.i100.i to i32
  call void @__asan_store1_noabort(i32 %193)
  store i8 1, ptr %created.i100.i, align 2
  %194 = ptrtoint ptr %id12.i.i to i32
  call void @__asan_load2_noabort(i32 %194)
  %195 = load i16, ptr %id12.i.i, align 8
  %conv.i102.i = zext i16 %195 to i32
  %and.i103.i = and i32 %conv.i102.i, 1023
  %and3.i.i = shl nuw nsw i32 %conv.i102.i, 1
  %shl.i104.i = and i32 %and3.i.i, 6144
  %or.i105.i = or i32 %and.i103.i, %shl.i104.i
  %or4.i.i = or i32 %or.i105.i, 536870912
  %196 = ptrtoint ptr %nic_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %nic_info.i.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %197, i32 288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !174
  tail call void @arm_heavy_mb() #14
  %198 = tail call i32 @llvm.bswap.i32(i32 %or4.i.i) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %198) #14, !srcloc !175
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %199 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i.i55 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %199, i32 noundef 3520, i32 noundef 256) #17
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i55, null
  br i1 %tobool.not.i.i, label %if.end4.conf_err_crit_edge, label %if.end.i59

if.end4.conf_err_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %conf_err

if.end.i59:                                       ; preds = %if.end4
  %200 = ptrtoint ptr %call7.i.i.i.i55 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %call7.i.i.i.i55, align 8
  %or.i.i56 = or i32 %201, 1
  store i32 %or.i.i56, ptr %call7.i.i.i.i55, align 8
  %pyld_len.i.i = getelementptr inbounds %struct.ocrdma_mqe_hdr, ptr %call7.i.i.i.i55, i32 0, i32 1
  %202 = ptrtoint ptr %pyld_len.i.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 236, ptr %pyld_len.i.i, align 4
  %u.i.i = getelementptr inbounds %struct.ocrdma_mqe, ptr %call7.i.i.i.i55, i32 0, i32 1
  %timeout.i.i.i57 = getelementptr inbounds %struct.ocrdma_mqe, ptr %call7.i.i.i.i55, i32 0, i32 1, i32 0, i32 0, i32 1
  %cmd_len2.i.i.i58 = getelementptr inbounds %struct.ocrdma_mqe, ptr %call7.i.i.i.i55, i32 0, i32 1, i32 0, i32 0, i32 2
  %203 = ptrtoint ptr %u.i.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 314, ptr %u.i.i, align 4
  %204 = ptrtoint ptr %timeout.i.i.i57 to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 20, ptr %timeout.i.i.i57, align 8
  %205 = ptrtoint ptr %cmd_len2.i.i.i58 to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 240, ptr %cmd_len2.i.i.i58, align 4
  %call1.i = tail call fastcc i32 @ocrdma_mbx_cmd(ptr noundef %dev, ptr noundef nonnull %call7.i.i.i.i55) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i59.ocrdma_mbx_query_fw_config.exit.thread144_crit_edge

if.end.i59.ocrdma_mbx_query_fw_config.exit.thread144_crit_edge: ; preds = %if.end.i59
  call void @__sanitizer_cov_trace_pc() #16
  br label %ocrdma_mbx_query_fw_config.exit.thread144

if.end4.i:                                        ; preds = %if.end.i59
  %fn_mode1.i.i = getelementptr inbounds %struct.ocrdma_fw_conf_rsp, ptr %call7.i.i.i.i55, i32 0, i32 5
  %206 = ptrtoint ptr %fn_mode1.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %fn_mode1.i.i, align 8
  %and.i.i60 = and i32 %207, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i60)
  %cmp.not.not.i.i = icmp eq i32 %and.i.i60, 0
  br i1 %cmp.not.not.i.i, label %if.end4.i.ocrdma_mbx_query_fw_config.exit.thread144_crit_edge, label %if.end8

if.end4.i.ocrdma_mbx_query_fw_config.exit.thread144_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ocrdma_mbx_query_fw_config.exit.thread144

ocrdma_mbx_query_fw_config.exit.thread144:        ; preds = %if.end4.i.ocrdma_mbx_query_fw_config.exit.thread144_crit_edge, %if.end.i59.ocrdma_mbx_query_fw_config.exit.thread144_crit_edge
  %status.0.i62.ph = phi i32 [ -22, %if.end4.i.ocrdma_mbx_query_fw_config.exit.thread144_crit_edge ], [ %call1.i, %if.end.i59.ocrdma_mbx_query_fw_config.exit.thread144_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i55) #14
  br label %conf_err

if.end8:                                          ; preds = %if.end4.i
  %base_eqid.i.i = getelementptr inbounds %struct.ocrdma_fw_conf_rsp, ptr %call7.i.i.i.i55, i32 0, i32 10
  %208 = ptrtoint ptr %base_eqid.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %base_eqid.i.i, align 8
  %conv.i.i61 = trunc i32 %209 to i16
  %base_eqid2.i.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 10
  %210 = ptrtoint ptr %base_eqid2.i.i to i32
  call void @__asan_store2_noabort(i32 %210)
  store i16 %conv.i.i61, ptr %base_eqid2.i.i, align 32
  %max_eq.i.i = getelementptr inbounds %struct.ocrdma_fw_conf_rsp, ptr %call7.i.i.i.i55, i32 0, i32 11
  %211 = ptrtoint ptr %max_eq.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %max_eq.i.i, align 4
  %conv3.i.i = trunc i32 %212 to i16
  %max_eq4.i.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 11
  %213 = ptrtoint ptr %max_eq4.i.i to i32
  call void @__asan_store2_noabort(i32 %213)
  store i16 %conv3.i.i, ptr %max_eq4.i.i, align 2
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i55) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %214 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i.i64 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %214, i32 noundef 3520, i32 noundef 256) #17
  %tobool.not.i.i65 = icmp eq ptr %call7.i.i.i.i64, null
  br i1 %tobool.not.i.i65, label %if.end8.conf_err_crit_edge, label %if.end.i73

if.end8.conf_err_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %conf_err

if.end.i73:                                       ; preds = %if.end8
  %215 = ptrtoint ptr %call7.i.i.i.i64 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %call7.i.i.i.i64, align 8
  %or.i.i66 = or i32 %216, 1
  store i32 %or.i.i66, ptr %call7.i.i.i.i64, align 8
  %pyld_len.i.i67 = getelementptr inbounds %struct.ocrdma_mqe_hdr, ptr %call7.i.i.i.i64, i32 0, i32 1
  %217 = ptrtoint ptr %pyld_len.i.i67 to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 236, ptr %pyld_len.i.i67, align 4
  %u.i.i68 = getelementptr inbounds %struct.ocrdma_mqe, ptr %call7.i.i.i.i64, i32 0, i32 1
  %218 = ptrtoint ptr %u.i.i68 to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 2561, ptr %u.i.i68, align 4
  %timeout.i.i.i69 = getelementptr inbounds %struct.ocrdma_mqe, ptr %call7.i.i.i.i64, i32 0, i32 1, i32 0, i32 0, i32 1
  %219 = ptrtoint ptr %timeout.i.i.i69 to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 20, ptr %timeout.i.i.i69, align 8
  %cmd_len2.i.i.i70 = getelementptr inbounds %struct.ocrdma_mqe, ptr %call7.i.i.i.i64, i32 0, i32 1, i32 0, i32 0, i32 2
  %220 = ptrtoint ptr %cmd_len2.i.i.i70 to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 220, ptr %cmd_len2.i.i.i70, align 4
  %call1.i71 = tail call fastcc i32 @ocrdma_mbx_cmd(ptr noundef %dev, ptr noundef nonnull %call7.i.i.i.i64) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i71)
  %tobool2.not.i72 = icmp eq i32 %call1.i71, 0
  br i1 %tobool2.not.i72, label %if.end4.i79, label %ocrdma_mbx_query_dev.exit

if.end4.i79:                                      ; preds = %if.end.i73
  %max_pd_ca_ack_delay.i.i = getelementptr inbounds %struct.ocrdma_mbx_query_config, ptr %call7.i.i.i.i64, i32 0, i32 3
  %221 = ptrtoint ptr %max_pd_ca_ack_delay.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %max_pd_ca_ack_delay.i.i, align 8
  %shr.i.i74 = lshr i32 %222, 16
  %conv.i.i75 = trunc i32 %shr.i.i74 to i16
  %max_pd.i.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 1, i32 3
  %223 = ptrtoint ptr %max_pd.i.i to i32
  call void @__asan_store2_noabort(i32 %223)
  store i16 %conv.i.i75, ptr %max_pd.i.i, align 8
  %224 = trunc i32 %222 to i8
  %225 = lshr i8 %224, 3
  %conv4.i.i = and i8 %225, 3
  %udp_encap.i.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 1, i32 33
  %226 = ptrtoint ptr %udp_encap.i.i to i32
  call void @__asan_store1_noabort(i32 %226)
  store i8 %conv4.i.i, ptr %udp_encap.i.i, align 1
  %max_dpp_pds_credits.i.i = getelementptr inbounds %struct.ocrdma_mbx_query_config, ptr %call7.i.i.i.i64, i32 0, i32 19
  %227 = ptrtoint ptr %max_dpp_pds_credits.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %max_dpp_pds_credits.i.i, align 8
  %shr6.i.i = lshr i32 %228, 16
  %conv7.i.i = trunc i32 %shr6.i.i to i16
  %max_dpp_pds.i.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 1, i32 4
  %229 = ptrtoint ptr %max_dpp_pds.i.i to i32
  call void @__asan_store2_noabort(i32 %229)
  store i16 %conv7.i.i, ptr %max_dpp_pds.i.i, align 2
  %qp_srq_cq_ird_ord.i.i = getelementptr inbounds %struct.ocrdma_mbx_query_config, ptr %call7.i.i.i.i64, i32 0, i32 2
  %230 = ptrtoint ptr %qp_srq_cq_ird_ord.i.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %qp_srq_cq_ird_ord.i.i, align 4
  %shr9.i.i = lshr i32 %231, 8
  %conv10.i.i76 = trunc i32 %shr9.i.i to i16
  %max_qp.i.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 1, i32 7
  %232 = ptrtoint ptr %max_qp.i.i to i32
  call void @__asan_store2_noabort(i32 %232)
  store i16 %conv10.i.i76, ptr %max_qp.i.i, align 8
  %max_srq_rpir_qps.i.i = getelementptr inbounds %struct.ocrdma_mbx_query_config, ptr %call7.i.i.i.i64, i32 0, i32 18
  %233 = ptrtoint ptr %max_srq_rpir_qps.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %max_srq_rpir_qps.i.i, align 4
  %shr12.i.i = lshr i32 %234, 16
  %conv13.i.i = trunc i32 %shr12.i.i to i16
  %max_srq.i.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 1, i32 10
  %235 = ptrtoint ptr %max_srq.i.i to i32
  call void @__asan_store2_noabort(i32 %235)
  store i16 %conv13.i.i, ptr %max_srq.i.i, align 2
  %max_recv_send_sge.i.i = getelementptr inbounds %struct.ocrdma_mbx_query_config, ptr %call7.i.i.i.i64, i32 0, i32 4
  %236 = ptrtoint ptr %max_recv_send_sge.i.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %max_recv_send_sge.i.i, align 4
  %and14.i.i = and i32 %237, 65535
  %max_send_sge.i.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 1, i32 12
  %238 = ptrtoint ptr %max_send_sge.i.i to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 %and14.i.i, ptr %max_send_sge.i.i, align 4
  %shr18.i.i = lshr i32 %237, 16
  %max_recv_sge.i.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 1, i32 13
  %239 = ptrtoint ptr %max_recv_sge.i.i to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 %shr18.i.i, ptr %max_recv_sge.i.i, align 8
  %max_srq_rqe_sge.i.i = getelementptr inbounds %struct.ocrdma_mbx_query_config, ptr %call7.i.i.i.i64, i32 0, i32 23
  %240 = ptrtoint ptr %max_srq_rqe_sge.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %max_srq_rqe_sge.i.i, align 8
  %and19.i.i = and i32 %241, 65535
  %max_srq_sge.i.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 1, i32 14
  %242 = ptrtoint ptr %max_srq_sge.i.i to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 %and19.i.i, ptr %max_srq_sge.i.i, align 4
  %max_wr_rd_sge.i.i = getelementptr inbounds %struct.ocrdma_mbx_query_config, ptr %call7.i.i.i.i64, i32 0, i32 24
  %243 = ptrtoint ptr %max_wr_rd_sge.i.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %max_wr_rd_sge.i.i, align 4
  %and21.i.i = and i32 %244, 65535
  %max_rdma_sge.i.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 1, i32 15
  %245 = ptrtoint ptr %max_rdma_sge.i.i to i32
  call void @__asan_store4_noabort(i32 %245)
  store i32 %and21.i.i, ptr %max_rdma_sge.i.i, align 8
  %max_ird_ord_per_qp.i.i = getelementptr inbounds %struct.ocrdma_mbx_query_config, ptr %call7.i.i.i.i64, i32 0, i32 5
  %246 = ptrtoint ptr %max_ird_ord_per_qp.i.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %max_ird_ord_per_qp.i.i, align 8
  %conv25.i.i = trunc i32 %247 to i16
  %max_ord_per_qp.i.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 1, i32 22
  %248 = ptrtoint ptr %max_ord_per_qp.i.i to i32
  call void @__asan_store2_noabort(i32 %248)
  store i16 %conv25.i.i, ptr %max_ord_per_qp.i.i, align 8
  %shr28.i.i = lshr i32 %247, 16
  %conv29.i.i = trunc i32 %shr28.i.i to i16
  %max_ird_per_qp.i.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 1, i32 23
  %249 = ptrtoint ptr %max_ird_per_qp.i.i to i32
  call void @__asan_store2_noabort(i32 %249)
  store i16 %conv29.i.i, ptr %max_ird_per_qp.i.i, align 2
  %250 = trunc i32 %231 to i8
  %251 = lshr i8 %250, 2
  %conv33.i.i = and i8 %251, 1
  %cq_overflow_detect.i.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 1, i32 25
  %252 = ptrtoint ptr %cq_overflow_detect.i.i to i32
  call void @__asan_store1_noabort(i32 %252)
  store i8 %conv33.i.i, ptr %cq_overflow_detect.i.i, align 8
  %253 = lshr i8 %250, 3
  %conv37.i.i = and i8 %253, 1
  %srq_supported.i.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 1, i32 26
  %254 = ptrtoint ptr %srq_supported.i.i to i32
  call void @__asan_store1_noabort(i32 %254)
  store i8 %conv37.i.i, ptr %srq_supported.i.i, align 1
  %and39.i.i = lshr i32 %222, 8
  %conv41.i.i = trunc i32 %and39.i.i to i8
  %local_ca_ack_delay.i.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 1, i32 30
  %255 = ptrtoint ptr %local_ca_ack_delay.i.i to i32
  call void @__asan_store1_noabort(i32 %255)
  store i8 %conv41.i.i, ptr %local_ca_ack_delay.i.i, align 8
  %max_mw.i.i = getelementptr inbounds %struct.ocrdma_mbx_query_config, ptr %call7.i.i.i.i64, i32 0, i32 11
  %256 = ptrtoint ptr %max_mw.i.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %max_mw.i.i, align 8
  %max_mw42.i.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 1, i32 19
  %258 = ptrtoint ptr %max_mw42.i.i to i32
  call void @__asan_store4_noabort(i32 %258)
  store i32 %257, ptr %max_mw42.i.i, align 4
  %max_mr.i.i = getelementptr inbounds %struct.ocrdma_mbx_query_config, ptr %call7.i.i.i.i64, i32 0, i32 7
  %259 = ptrtoint ptr %max_mr.i.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %max_mr.i.i, align 8
  %max_mr43.i.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 1, i32 16
  %261 = ptrtoint ptr %max_mr43.i.i to i32
  call void @__asan_store4_noabort(i32 %261)
  store i32 %260, ptr %max_mr43.i.i, align 4
  %max_mr_size_hi.i.i = getelementptr inbounds %struct.ocrdma_mbx_query_config, ptr %call7.i.i.i.i64, i32 0, i32 8
  %262 = ptrtoint ptr %max_mr_size_hi.i.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %max_mr_size_hi.i.i, align 4
  %conv44.i.i = zext i32 %263 to i64
  %shl.i.i77 = shl nuw i64 %conv44.i.i, 32
  %max_mr_size_lo.i.i = getelementptr inbounds %struct.ocrdma_mbx_query_config, ptr %call7.i.i.i.i64, i32 0, i32 9
  %264 = ptrtoint ptr %max_mr_size_lo.i.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %max_mr_size_lo.i.i, align 8
  %conv45.i.i = zext i32 %265 to i64
  %or.i14.i = or i64 %shl.i.i77, %conv45.i.i
  %max_mr_size.i.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 1, i32 17
  %266 = ptrtoint ptr %max_mr_size.i.i to i32
  call void @__asan_store8_noabort(i32 %266)
  store i64 %or.i14.i, ptr %max_mr_size.i.i, align 8
  %max_pages_per_frmr.i.i = getelementptr inbounds %struct.ocrdma_mbx_query_config, ptr %call7.i.i.i.i64, i32 0, i32 13
  %267 = ptrtoint ptr %max_pages_per_frmr.i.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %max_pages_per_frmr.i.i, align 8
  %max_pages_per_frmr46.i.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 1, i32 21
  %269 = ptrtoint ptr %max_pages_per_frmr46.i.i to i32
  call void @__asan_store4_noabort(i32 %269)
  store i32 %268, ptr %max_pages_per_frmr46.i.i, align 4
  %max_num_mr_pbl.i.i = getelementptr inbounds %struct.ocrdma_mbx_query_config, ptr %call7.i.i.i.i64, i32 0, i32 10
  %270 = ptrtoint ptr %max_num_mr_pbl.i.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %max_num_mr_pbl.i.i, align 4
  %max_num_mr_pbl47.i.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 1, i32 18
  %272 = ptrtoint ptr %max_num_mr_pbl47.i.i to i32
  call void @__asan_store4_noabort(i32 %272)
  store i32 %271, ptr %max_num_mr_pbl47.i.i, align 8
  %max_cq_cqes_per_cq.i.i = getelementptr inbounds %struct.ocrdma_mbx_query_config, ptr %call7.i.i.i.i64, i32 0, i32 22
  %273 = ptrtoint ptr %max_cq_cqes_per_cq.i.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %max_cq_cqes_per_cq.i.i, align 4
  %conv49.i.i = trunc i32 %274 to i16
  %max_cqe.i.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 1, i32 6
  %275 = ptrtoint ptr %max_cqe.i.i to i32
  call void @__asan_store2_noabort(i32 %275)
  store i16 %conv49.i.i, ptr %max_cqe.i.i, align 2
  %shr52.i.i = lshr i32 %274, 16
  %conv53.i.i = trunc i32 %shr52.i.i to i16
  %max_cq.i.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 1, i32 5
  %276 = ptrtoint ptr %max_cq.i.i to i32
  call void @__asan_store2_noabort(i32 %276)
  store i16 %conv53.i.i, ptr %max_cq.i.i, align 4
  %wqe_rqe_stride_max_dpp_cqs.i.i = getelementptr inbounds %struct.ocrdma_mbx_query_config, ptr %call7.i.i.i.i64, i32 0, i32 17
  %277 = ptrtoint ptr %wqe_rqe_stride_max_dpp_cqs.i.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %wqe_rqe_stride_max_dpp_cqs.i.i, align 8
  %279 = lshr i32 %278, 21
  %mul.i.i = and i32 %279, 2040
  %wqe_size.i.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 1, i32 27
  %280 = ptrtoint ptr %wqe_size.i.i to i32
  call void @__asan_store4_noabort(i32 %280)
  store i32 %mul.i.i, ptr %wqe_size.i.i, align 4
  %281 = lshr i32 %278, 13
  %mul59.i.i = and i32 %281, 2040
  %rqe_size.i.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 1, i32 28
  %282 = ptrtoint ptr %rqe_size.i.i to i32
  call void @__asan_store4_noabort(i32 %282)
  store i32 %mul59.i.i, ptr %rqe_size.i.i, align 8
  %sub.i.i = add nsw i32 %mul.i.i, -32
  %max_inline_data.i.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 1, i32 11
  %283 = ptrtoint ptr %max_inline_data.i.i to i32
  call void @__asan_store4_noabort(i32 %283)
  store i32 %sub.i.i, ptr %max_inline_data.i.i, align 8
  %dev_family.i.i.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 20, i32 9
  %284 = ptrtoint ptr %dev_family.i.i.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %dev_family.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %285)
  %cmp.i.i.i78 = icmp eq i32 %285, 15
  br i1 %cmp.i.i.i78, label %land.lhs.true.i.i.i, label %if.end4.i79.ocrdma_get_asic_type.exit.i.i_crit_edge

if.end4.i79.ocrdma_get_asic_type.exit.i.i_crit_edge: ; preds = %if.end4.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %ocrdma_get_asic_type.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end4.i79
  %asic_id.i.i.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 31
  %286 = ptrtoint ptr %asic_id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %asic_id.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %287)
  %tobool.not.i.i.i = icmp eq i32 %287, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %land.lhs.true.i.i.i.ocrdma_get_asic_type.exit.i.i_crit_edge

land.lhs.true.i.i.i.ocrdma_get_asic_type.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ocrdma_get_asic_type.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %288 = ptrtoint ptr %pdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %pdev.i.i.i, align 4
  %call.i.i.i81 = tail call i32 @pci_read_config_dword(ptr noundef %289, i32 noundef 156, ptr noundef %asic_id.i.i.i) #14
  br label %ocrdma_get_asic_type.exit.i.i

ocrdma_get_asic_type.exit.i.i:                    ; preds = %if.then.i.i.i, %land.lhs.true.i.i.i.ocrdma_get_asic_type.exit.i.i_crit_edge, %if.end4.i79.ocrdma_get_asic_type.exit.i.i_crit_edge
  %asic_id3.i.i.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 31
  %290 = ptrtoint ptr %asic_id3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %asic_id3.i.i.i, align 8
  %and.i.i.i82 = lshr i32 %291, 8
  %conv.i.i.i83 = trunc i32 %and.i.i.i82 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %conv.i.i.i83)
  %cmp.i.i84 = icmp eq i8 %conv.i.i.i83, 4
  br i1 %cmp.i.i84, label %if.then.i.i85, label %ocrdma_get_asic_type.exit.i.i.if.end12_crit_edge

ocrdma_get_asic_type.exit.i.i.if.end12_crit_edge: ; preds = %ocrdma_get_asic_type.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

if.then.i.i85:                                    ; preds = %ocrdma_get_asic_type.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %ird.i.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 1, i32 31
  %292 = ptrtoint ptr %ird.i.i to i32
  call void @__asan_store1_noabort(i32 %292)
  store i8 1, ptr %ird.i.i, align 1
  %ird_page_size.i.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 1, i32 29
  %293 = ptrtoint ptr %ird_page_size.i.i to i32
  call void @__asan_store4_noabort(i32 %293)
  store i32 4096, ptr %ird_page_size.i.i, align 4
  %num_ird_pages.i.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 1, i32 32
  %294 = ptrtoint ptr %num_ird_pages.i.i to i32
  call void @__asan_store1_noabort(i32 %294)
  store i8 4, ptr %num_ird_pages.i.i, align 2
  br label %if.end12

ocrdma_mbx_query_dev.exit:                        ; preds = %if.end.i73
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i64) #14
  br label %conf_err

if.end12:                                         ; preds = %if.then.i.i85, %ocrdma_get_asic_type.exit.i.i.if.end12_crit_edge
  %max_wqes_rqes_per_q.i.i = getelementptr inbounds %struct.ocrdma_mbx_query_config, ptr %call7.i.i.i.i64, i32 0, i32 21
  %295 = ptrtoint ptr %max_wqes_rqes_per_q.i.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %max_wqes_rqes_per_q.i.i, align 8
  %shr63.i.i = lshr i32 %296, 16
  %conv64.i.i = trunc i32 %shr63.i.i to i16
  %max_wqe.i.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 1, i32 8
  %297 = ptrtoint ptr %max_wqe.i.i to i32
  call void @__asan_store2_noabort(i32 %297)
  store i16 %conv64.i.i, ptr %max_wqe.i.i, align 2
  %conv68.i.i = trunc i32 %296 to i16
  %max_rqe.i.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 1, i32 9
  %298 = ptrtoint ptr %max_rqe.i.i to i32
  call void @__asan_store2_noabort(i32 %298)
  store i16 %conv68.i.i, ptr %max_rqe.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i64) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %299 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i.i88 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %299, i32 noundef 3520, i32 noundef 256) #17
  %tobool.not.i.i89 = icmp eq ptr %call7.i.i.i.i88, null
  br i1 %tobool.not.i.i89, label %if.end12.conf_err_crit_edge, label %if.end.i97

if.end12.conf_err_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %conf_err

if.end.i97:                                       ; preds = %if.end12
  %300 = ptrtoint ptr %call7.i.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %call7.i.i.i.i88, align 8
  %or.i.i90 = or i32 %301, 1
  store i32 %or.i.i90, ptr %call7.i.i.i.i88, align 8
  %pyld_len.i.i91 = getelementptr inbounds %struct.ocrdma_mqe_hdr, ptr %call7.i.i.i.i88, i32 0, i32 1
  %302 = ptrtoint ptr %pyld_len.i.i91 to i32
  call void @__asan_store4_noabort(i32 %302)
  store i32 236, ptr %pyld_len.i.i91, align 4
  %u.i.i92 = getelementptr inbounds %struct.ocrdma_mqe, ptr %call7.i.i.i.i88, i32 0, i32 1
  %timeout.i.i.i93 = getelementptr inbounds %struct.ocrdma_mqe, ptr %call7.i.i.i.i88, i32 0, i32 1, i32 0, i32 0, i32 1
  %cmd_len2.i.i.i94 = getelementptr inbounds %struct.ocrdma_mqe, ptr %call7.i.i.i.i88, i32 0, i32 1, i32 0, i32 0, i32 2
  %303 = ptrtoint ptr %u.i.i92 to i32
  call void @__asan_store4_noabort(i32 %303)
  store i32 291, ptr %u.i.i92, align 4
  %304 = ptrtoint ptr %timeout.i.i.i93 to i32
  call void @__asan_store4_noabort(i32 %304)
  store i32 20, ptr %timeout.i.i.i93, align 8
  %305 = ptrtoint ptr %cmd_len2.i.i.i94 to i32
  call void @__asan_store4_noabort(i32 %305)
  store i32 240, ptr %cmd_len2.i.i.i94, align 4
  %call1.i95 = tail call fastcc i32 @ocrdma_mbx_cmd(ptr noundef %dev, ptr noundef nonnull %call7.i.i.i.i88) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i95)
  %tobool2.not.i96 = icmp eq i32 %call1.i95, 0
  br i1 %tobool2.not.i96, label %if.end16, label %ocrdma_mbx_query_fw_ver.exit

ocrdma_mbx_query_fw_ver.exit:                     ; preds = %if.end.i97
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i88) #14
  br label %conf_err

if.end16:                                         ; preds = %if.end.i97
  %attr.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 1
  %running_ver.i = getelementptr inbounds %struct.ocrdma_fw_ver_rsp, ptr %call7.i.i.i.i88, i32 0, i32 2
  %306 = call ptr @memcpy(ptr %attr.i, ptr %running_ver.i, i32 32)
  %307 = ptrtoint ptr %attr.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %attr.i, align 4
  %309 = tail call i32 @llvm.bswap.i32(i32 %308) #14
  %310 = ptrtoint ptr %attr.i to i32
  call void @__asan_store4_noabort(i32 %310)
  store i32 %309, ptr %attr.i, align 4
  %add.ptr.i.1.i = getelementptr %struct.ocrdma_dev, ptr %dev, i32 0, i32 1, i32 0, i32 4
  %311 = ptrtoint ptr %add.ptr.i.1.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %add.ptr.i.1.i, align 4
  %313 = tail call i32 @llvm.bswap.i32(i32 %312) #14
  %314 = ptrtoint ptr %add.ptr.i.1.i to i32
  call void @__asan_store4_noabort(i32 %314)
  store i32 %313, ptr %add.ptr.i.1.i, align 4
  %add.ptr.i.2.i = getelementptr %struct.ocrdma_dev, ptr %dev, i32 0, i32 1, i32 0, i32 8
  %315 = ptrtoint ptr %add.ptr.i.2.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %add.ptr.i.2.i, align 4
  %317 = tail call i32 @llvm.bswap.i32(i32 %316) #14
  %318 = ptrtoint ptr %add.ptr.i.2.i to i32
  call void @__asan_store4_noabort(i32 %318)
  store i32 %317, ptr %add.ptr.i.2.i, align 4
  %add.ptr.i.3.i = getelementptr %struct.ocrdma_dev, ptr %dev, i32 0, i32 1, i32 0, i32 12
  %319 = ptrtoint ptr %add.ptr.i.3.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %add.ptr.i.3.i, align 4
  %321 = tail call i32 @llvm.bswap.i32(i32 %320) #14
  %322 = ptrtoint ptr %add.ptr.i.3.i to i32
  call void @__asan_store4_noabort(i32 %322)
  store i32 %321, ptr %add.ptr.i.3.i, align 4
  %add.ptr.i.4.i = getelementptr %struct.ocrdma_dev, ptr %dev, i32 0, i32 1, i32 0, i32 16
  %323 = ptrtoint ptr %add.ptr.i.4.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load i32, ptr %add.ptr.i.4.i, align 4
  %325 = tail call i32 @llvm.bswap.i32(i32 %324) #14
  %326 = ptrtoint ptr %add.ptr.i.4.i to i32
  call void @__asan_store4_noabort(i32 %326)
  store i32 %325, ptr %add.ptr.i.4.i, align 4
  %add.ptr.i.5.i = getelementptr %struct.ocrdma_dev, ptr %dev, i32 0, i32 1, i32 0, i32 20
  %327 = ptrtoint ptr %add.ptr.i.5.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load i32, ptr %add.ptr.i.5.i, align 4
  %329 = tail call i32 @llvm.bswap.i32(i32 %328) #14
  %330 = ptrtoint ptr %add.ptr.i.5.i to i32
  call void @__asan_store4_noabort(i32 %330)
  store i32 %329, ptr %add.ptr.i.5.i, align 4
  %add.ptr.i.6.i = getelementptr %struct.ocrdma_dev, ptr %dev, i32 0, i32 1, i32 0, i32 24
  %331 = ptrtoint ptr %add.ptr.i.6.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load i32, ptr %add.ptr.i.6.i, align 4
  %333 = tail call i32 @llvm.bswap.i32(i32 %332) #14
  %334 = ptrtoint ptr %add.ptr.i.6.i to i32
  call void @__asan_store4_noabort(i32 %334)
  store i32 %333, ptr %add.ptr.i.6.i, align 4
  %add.ptr.i.7.i = getelementptr %struct.ocrdma_dev, ptr %dev, i32 0, i32 1, i32 0, i32 28
  %335 = ptrtoint ptr %add.ptr.i.7.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load i32, ptr %add.ptr.i.7.i, align 4
  %337 = tail call i32 @llvm.bswap.i32(i32 %336) #14
  %338 = ptrtoint ptr %add.ptr.i.7.i to i32
  call void @__asan_store4_noabort(i32 %338)
  store i32 %337, ptr %add.ptr.i.7.i, align 4
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i88) #14
  %339 = ptrtoint ptr %pdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %pdev.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pa.i) #14
  %341 = ptrtoint ptr %pa.i to i32
  call void @__asan_store4_noabort(i32 %341)
  store i32 -1, ptr %pa.i, align 4, !annotation !180
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %342 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i.i101 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %342, i32 noundef 3520, i32 noundef 256) #17
  %tobool.not.i.i102 = icmp eq ptr %call7.i.i.i.i101, null
  br i1 %tobool.not.i.i102, label %ocrdma_mbx_create_ah_tbl.exit.thread, label %if.end.i109

ocrdma_mbx_create_ah_tbl.exit.thread:             ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pa.i) #14
  br label %conf_err

if.end.i109:                                      ; preds = %if.end16
  %343 = ptrtoint ptr %call7.i.i.i.i101 to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load i32, ptr %call7.i.i.i.i101, align 8
  %or.i.i103 = or i32 %344, 1
  store i32 %or.i.i103, ptr %call7.i.i.i.i101, align 8
  %pyld_len.i.i104 = getelementptr inbounds %struct.ocrdma_mqe_hdr, ptr %call7.i.i.i.i101, i32 0, i32 1
  %345 = ptrtoint ptr %pyld_len.i.i104 to i32
  call void @__asan_store4_noabort(i32 %345)
  store i32 84, ptr %pyld_len.i.i104, align 4
  %u.i.i105 = getelementptr inbounds %struct.ocrdma_mqe, ptr %call7.i.i.i.i101, i32 0, i32 1
  %346 = ptrtoint ptr %u.i.i105 to i32
  call void @__asan_store4_noabort(i32 %346)
  store i32 2564, ptr %u.i.i105, align 4
  %timeout.i.i.i106 = getelementptr inbounds %struct.ocrdma_mqe, ptr %call7.i.i.i.i101, i32 0, i32 1, i32 0, i32 0, i32 1
  %347 = ptrtoint ptr %timeout.i.i.i106 to i32
  call void @__asan_store4_noabort(i32 %347)
  store i32 20, ptr %timeout.i.i.i106, align 8
  %cmd_len2.i.i.i107 = getelementptr inbounds %struct.ocrdma_mqe, ptr %call7.i.i.i.i101, i32 0, i32 1, i32 0, i32 0, i32 2
  %348 = ptrtoint ptr %cmd_len2.i.i.i107 to i32
  call void @__asan_store4_noabort(i32 %348)
  store i32 68, ptr %cmd_len2.i.i.i107, align 4
  %av_tbl.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 16
  %size.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 16, i32 2
  %349 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %349)
  store i32 32768, ptr %size.i, align 4
  %ah_conf.i = getelementptr inbounds %struct.ocrdma_create_ah_tbl, ptr %call7.i.i.i.i101, i32 0, i32 2
  %350 = ptrtoint ptr %ah_conf.i to i32
  call void @__asan_store4_noabort(i32 %350)
  store i32 541065216, ptr %ah_conf.i, align 4
  %dev9.i = getelementptr inbounds %struct.pci_dev, ptr %340, i32 0, i32 44
  %pbl.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 16, i32 6
  %pa11.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 16, i32 6, i32 1
  %call.i.i108 = tail call ptr @dma_alloc_attrs(ptr noundef %dev9.i, i32 noundef 4096, ptr noundef %pa11.i, i32 noundef 3264, i32 noundef 0) #14
  %351 = ptrtoint ptr %pbl.i to i32
  call void @__asan_store4_noabort(i32 %351)
  store ptr %call.i.i108, ptr %pbl.i, align 4
  %cmp18.i = icmp eq ptr %call.i.i108, null
  br i1 %cmp18.i, label %if.end.i109.ocrdma_mbx_create_ah_tbl.exit.thread157_crit_edge, label %if.end20.i

if.end.i109.ocrdma_mbx_create_ah_tbl.exit.thread157_crit_edge: ; preds = %if.end.i109
  call void @__sanitizer_cov_trace_pc() #16
  br label %ocrdma_mbx_create_ah_tbl.exit.thread157

if.end20.i:                                       ; preds = %if.end.i109
  %352 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load i32, ptr %size.i, align 4
  %call.i143.i = call ptr @dma_alloc_attrs(ptr noundef %dev9.i, i32 noundef %353, ptr noundef nonnull %pa.i, i32 noundef 3264, i32 noundef 0) #14
  %354 = ptrtoint ptr %av_tbl.i to i32
  call void @__asan_store4_noabort(i32 %354)
  store ptr %call.i143.i, ptr %av_tbl.i, align 4
  %cmp29.i = icmp eq ptr %call.i143.i, null
  br i1 %cmp29.i, label %if.end20.i.mem_err_ah.i_crit_edge, label %if.end31.i

if.end20.i.mem_err_ah.i_crit_edge:                ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mem_err_ah.i

if.end31.i:                                       ; preds = %if.end20.i
  %355 = ptrtoint ptr %pa.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load i32, ptr %pa.i, align 4
  %pa33.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 16, i32 1
  %357 = ptrtoint ptr %pa33.i to i32
  call void @__asan_store4_noabort(i32 %357)
  store i32 %356, ptr %pa33.i, align 4
  %num_ah.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 16, i32 3
  %358 = ptrtoint ptr %num_ah.i to i32
  call void @__asan_store4_noabort(i32 %358)
  store i32 512, ptr %num_ah.i, align 4
  %359 = ptrtoint ptr %pbl.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %pbl.i, align 4
  %361 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %362)
  %cmp41145.not.i = icmp ult i32 %362, 4096
  br i1 %cmp41145.not.i, label %if.end31.i.for.end48.i_crit_edge, label %if.end31.i.for.body42.i_crit_edge

if.end31.i.for.body42.i_crit_edge:                ; preds = %if.end31.i
  br label %for.body42.i

if.end31.i.for.end48.i_crit_edge:                 ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end48.i

for.body42.i:                                     ; preds = %for.body42.i.for.body42.i_crit_edge, %if.end31.i.for.body42.i_crit_edge
  %i.1146.i = phi i32 [ %inc47.i, %for.body42.i.for.body42.i_crit_edge ], [ 0, %if.end31.i.for.body42.i_crit_edge ]
  %363 = ptrtoint ptr %pa.i to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load i32, ptr %pa.i, align 4
  %365 = call i32 @llvm.bswap.i32(i32 %364) #14
  %arrayidx.i110 = getelementptr %struct.ocrdma_pbe, ptr %360, i32 %i.1146.i
  %pa_lo.i = getelementptr %struct.ocrdma_pbe, ptr %360, i32 %i.1146.i, i32 1
  %366 = ptrtoint ptr %pa_lo.i to i32
  call void @__asan_store4_noabort(i32 %366)
  store i32 %365, ptr %pa_lo.i, align 4
  %367 = ptrtoint ptr %arrayidx.i110 to i32
  call void @__asan_store4_noabort(i32 %367)
  store i32 0, ptr %arrayidx.i110, align 4
  %368 = ptrtoint ptr %pa.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load i32, ptr %pa.i, align 4
  %add.i111 = add i32 %369, 4096
  store i32 %add.i111, ptr %pa.i, align 4
  %inc47.i = add nuw nsw i32 %i.1146.i, 1
  %370 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load i32, ptr %size.i, align 4
  %div142.i = lshr i32 %371, 12
  %cmp41.i = icmp ult i32 %inc47.i, %div142.i
  br i1 %cmp41.i, label %for.body42.i.for.body42.i_crit_edge, label %for.body42.i.for.end48.i_crit_edge

for.body42.i.for.end48.i_crit_edge:               ; preds = %for.body42.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end48.i

for.body42.i.for.body42.i_crit_edge:              ; preds = %for.body42.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body42.i

for.end48.i:                                      ; preds = %for.body42.i.for.end48.i_crit_edge, %if.end31.i.for.end48.i_crit_edge
  %372 = ptrtoint ptr %pa11.i to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load i32, ptr %pa11.i, align 4
  %tbl_addr.i = getelementptr inbounds %struct.ocrdma_create_ah_tbl, ptr %call7.i.i.i.i101, i32 0, i32 3
  %374 = ptrtoint ptr %tbl_addr.i to i32
  call void @__asan_store4_noabort(i32 %374)
  store i32 %373, ptr %tbl_addr.i, align 8
  %hi.i = getelementptr inbounds %struct.ocrdma_create_ah_tbl, ptr %call7.i.i.i.i101, i32 0, i32 3, i32 0, i32 1
  %375 = ptrtoint ptr %hi.i to i32
  call void @__asan_store4_noabort(i32 %375)
  store i32 0, ptr %hi.i, align 4
  %call61.i = call fastcc i32 @ocrdma_mbx_cmd(ptr noundef %dev, ptr noundef nonnull %call7.i.i.i.i101) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61.i)
  %tobool62.not.i = icmp eq i32 %call61.i, 0
  br i1 %tobool62.not.i, label %if.end20, label %mbx_err.i112

mbx_err.i112:                                     ; preds = %for.end48.i
  call void @__sanitizer_cov_trace_pc() #16
  %376 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load i32, ptr %size.i, align 4
  %378 = ptrtoint ptr %av_tbl.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %av_tbl.i, align 4
  %380 = ptrtoint ptr %pa33.i to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load i32, ptr %pa33.i, align 4
  call void @dma_free_attrs(ptr noundef %dev9.i, i32 noundef %377, ptr noundef %379, i32 noundef %381, i32 noundef 0) #14
  %382 = ptrtoint ptr %av_tbl.i to i32
  call void @__asan_store4_noabort(i32 %382)
  store ptr null, ptr %av_tbl.i, align 4
  br label %mem_err_ah.i

mem_err_ah.i:                                     ; preds = %mbx_err.i112, %if.end20.i.mem_err_ah.i_crit_edge
  %status.0.i113 = phi i32 [ -12, %if.end20.i.mem_err_ah.i_crit_edge ], [ %call61.i, %mbx_err.i112 ]
  %383 = ptrtoint ptr %pbl.i to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %pbl.i, align 4
  %385 = ptrtoint ptr %pa11.i to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load i32, ptr %pa11.i, align 4
  call void @dma_free_attrs(ptr noundef %dev9.i, i32 noundef 4096, ptr noundef %384, i32 noundef %386, i32 noundef 0) #14
  %387 = ptrtoint ptr %pbl.i to i32
  call void @__asan_store4_noabort(i32 %387)
  store ptr null, ptr %pbl.i, align 4
  %388 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %388)
  store i32 0, ptr %size.i, align 4
  br label %ocrdma_mbx_create_ah_tbl.exit.thread157

ocrdma_mbx_create_ah_tbl.exit.thread157:          ; preds = %mem_err_ah.i, %if.end.i109.ocrdma_mbx_create_ah_tbl.exit.thread157_crit_edge
  %retval.0.ph.i.ph = phi i32 [ %status.0.i113, %mem_err_ah.i ], [ -12, %if.end.i109.ocrdma_mbx_create_ah_tbl.exit.thread157_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i101) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pa.i) #14
  br label %conf_err

if.end20:                                         ; preds = %for.end48.i
  %389 = ptrtoint ptr %ah_conf.i to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load i32, ptr %ah_conf.i, align 4
  %and65.i = and i32 %390, 65535
  %ahid67.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 16, i32 5
  %391 = ptrtoint ptr %ahid67.i to i32
  call void @__asan_store4_noabort(i32 %391)
  store i32 %and65.i, ptr %ahid67.i, align 4
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i101) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pa.i) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %392 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i.i115 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %392, i32 noundef 3520, i32 noundef 256) #17
  %tobool.not.i.i116 = icmp eq ptr %call7.i.i.i.i115, null
  br i1 %tobool.not.i.i116, label %if.end20.info_attrb_err_crit_edge, label %if.end.i124

if.end20.info_attrb_err_crit_edge:                ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %info_attrb_err

if.end.i124:                                      ; preds = %if.end20
  %393 = ptrtoint ptr %call7.i.i.i.i115 to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load i32, ptr %call7.i.i.i.i115, align 8
  %or.i.i117 = or i32 %394, 1
  store i32 %or.i.i117, ptr %call7.i.i.i.i115, align 8
  %pyld_len.i.i118 = getelementptr inbounds %struct.ocrdma_mqe_hdr, ptr %call7.i.i.i.i115, i32 0, i32 1
  %395 = ptrtoint ptr %pyld_len.i.i118 to i32
  call void @__asan_store4_noabort(i32 %395)
  store i32 236, ptr %pyld_len.i.i118, align 4
  %u.i.i119 = getelementptr inbounds %struct.ocrdma_mqe, ptr %call7.i.i.i.i115, i32 0, i32 1
  %timeout.i.i.i120 = getelementptr inbounds %struct.ocrdma_mqe, ptr %call7.i.i.i.i115, i32 0, i32 1, i32 0, i32 0, i32 1
  %cmd_len2.i.i.i121 = getelementptr inbounds %struct.ocrdma_mqe, ptr %call7.i.i.i.i115, i32 0, i32 1, i32 0, i32 0, i32 2
  %396 = ptrtoint ptr %u.i.i119 to i32
  call void @__asan_store4_noabort(i32 %396)
  store i32 358, ptr %u.i.i119, align 4
  %397 = ptrtoint ptr %timeout.i.i.i120 to i32
  call void @__asan_store4_noabort(i32 %397)
  store i32 20, ptr %timeout.i.i.i120, align 8
  %398 = ptrtoint ptr %cmd_len2.i.i.i121 to i32
  call void @__asan_store4_noabort(i32 %398)
  store i32 240, ptr %cmd_len2.i.i.i121, align 4
  %call1.i122 = call fastcc i32 @ocrdma_mbx_cmd(ptr noundef %dev, ptr noundef nonnull %call7.i.i.i.i115) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i122)
  %tobool2.not.i123 = icmp eq i32 %call1.i122, 0
  br i1 %tobool2.not.i123, label %if.end24, label %ocrdma_mbx_get_phy_info.exit

ocrdma_mbx_get_phy_info.exit:                     ; preds = %if.end.i124
  call void @__sanitizer_cov_trace_pc() #16
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i115) #14
  br label %info_attrb_err

if.end24:                                         ; preds = %if.end.i124
  %ityp_ptyp.i = getelementptr inbounds %struct.ocrdma_get_phy_info_rsp, ptr %call7.i.i.i.i115, i32 0, i32 2
  %399 = ptrtoint ptr %ityp_ptyp.i to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load i32, ptr %ityp_ptyp.i, align 4
  %conv.i = trunc i32 %400 to i16
  %phy.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 21
  %phy_type.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 21, i32 2
  %401 = ptrtoint ptr %phy_type.i to i32
  call void @__asan_store2_noabort(i32 %401)
  store i16 %conv.i, ptr %phy_type.i, align 4
  %shr.i = lshr i32 %400, 16
  %conv7.i = trunc i32 %shr.i to i16
  %interface_type.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 21, i32 3
  %402 = ptrtoint ptr %interface_type.i to i32
  call void @__asan_store2_noabort(i32 %402)
  store i16 %conv7.i, ptr %interface_type.i, align 2
  %fspeed_aspeed.i = getelementptr inbounds %struct.ocrdma_get_phy_info_rsp, ptr %call7.i.i.i.i115, i32 0, i32 5
  %403 = ptrtoint ptr %fspeed_aspeed.i to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load i32, ptr %fspeed_aspeed.i, align 8
  %conv10.i = trunc i32 %404 to i16
  %405 = ptrtoint ptr %phy.i to i32
  call void @__asan_store2_noabort(i32 %405)
  store i16 %conv10.i, ptr %phy.i, align 64
  %shr14.i = lshr i32 %404, 16
  %conv15.i = trunc i32 %shr14.i to i16
  %fixed_speeds_supported.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 21, i32 1
  %406 = ptrtoint ptr %fixed_speeds_supported.i to i32
  call void @__asan_store2_noabort(i32 %406)
  store i16 %conv15.i, ptr %fixed_speeds_supported.i, align 2
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i115) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %dma.i) #14
  %407 = ptrtoint ptr %dma.i to i32
  call void @__asan_store4_noabort(i32 %407)
  store ptr inttoptr (i32 -1 to ptr), ptr %dma.i, align 4, !annotation !180
  %408 = getelementptr inbounds %struct.ocrdma_dma_mem, ptr %dma.i, i32 0, i32 1
  %409 = ptrtoint ptr %408 to i32
  call void @__asan_store4_noabort(i32 %409)
  store i32 -1, ptr %408, align 4, !annotation !180
  %410 = getelementptr inbounds %struct.ocrdma_dma_mem, ptr %dma.i, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %411 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %411, i32 noundef 3520, i32 noundef 256) #17
  %tobool.not.i128 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i128, label %ocrdma_mbx_get_ctrl_attribs.exit.thread, label %if.end.i130

ocrdma_mbx_get_ctrl_attribs.exit.thread:          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %dma.i) #14
  br label %info_attrb_err

if.end.i130:                                      ; preds = %if.end24
  %412 = ptrtoint ptr %410 to i32
  call void @__asan_store4_noabort(i32 %412)
  store i32 556, ptr %410, align 4
  %413 = ptrtoint ptr %pdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load ptr, ptr %pdev.i.i.i, align 4
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %414, i32 0, i32 44
  %call.i.i129 = call ptr @dma_alloc_attrs(ptr noundef %dev1.i, i32 noundef 556, ptr noundef %408, i32 noundef 3264, i32 noundef 0) #14
  %415 = ptrtoint ptr %dma.i to i32
  call void @__asan_store4_noabort(i32 %415)
  store ptr %call.i.i129, ptr %dma.i, align 4
  %tobool5.not.i = icmp eq ptr %call.i.i129, null
  br i1 %tobool5.not.i, label %ocrdma_mbx_get_ctrl_attribs.exit.thread166, label %if.end7.i

ocrdma_mbx_get_ctrl_attribs.exit.thread166:       ; preds = %if.end.i130
  call void @__sanitizer_cov_trace_pc() #16
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %dma.i) #14
  br label %info_attrb_err

if.end7.i:                                        ; preds = %if.end.i130
  %416 = ptrtoint ptr %410 to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load i32, ptr %410, align 4
  %pyld_len.i = getelementptr inbounds %struct.ocrdma_mqe_hdr, ptr %call7.i.i.i, i32 0, i32 1
  %418 = ptrtoint ptr %pyld_len.i to i32
  call void @__asan_store4_noabort(i32 %418)
  store i32 %417, ptr %pyld_len.i, align 4
  %419 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load i32, ptr %call7.i.i.i, align 8
  %or.i = or i32 %420, 8
  store i32 %or.i, ptr %call7.i.i.i, align 8
  %421 = ptrtoint ptr %408 to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load i32, ptr %408, align 4
  %u.i = getelementptr inbounds %struct.ocrdma_mqe, ptr %call7.i.i.i, i32 0, i32 1
  %423 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %423)
  store i32 %422, ptr %u.i, align 4
  %pa_hi.i = getelementptr inbounds %struct.ocrdma_mqe, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 0, i32 1
  %424 = ptrtoint ptr %pa_hi.i to i32
  call void @__asan_store4_noabort(i32 %424)
  store i32 0, ptr %pa_hi.i, align 8
  %len.i = getelementptr inbounds %struct.ocrdma_mqe, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 0, i32 2
  %425 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %425)
  store i32 %417, ptr %len.i, align 4
  %426 = ptrtoint ptr %call.i.i129 to i32
  call void @__asan_store4_noabort(i32 %426)
  store i32 288, ptr %call.i.i129, align 4
  %timeout.i.i = getelementptr inbounds %struct.ocrdma_mbx_hdr, ptr %call.i.i129, i32 0, i32 1
  %427 = ptrtoint ptr %timeout.i.i to i32
  call void @__asan_store4_noabort(i32 %427)
  store i32 20, ptr %timeout.i.i, align 4
  %sub.i.i131 = add i32 %417, -16
  %cmd_len2.i.i = getelementptr inbounds %struct.ocrdma_mbx_hdr, ptr %call.i.i129, i32 0, i32 2
  %428 = ptrtoint ptr %cmd_len2.i.i to i32
  call void @__asan_store4_noabort(i32 %428)
  store i32 %sub.i.i131, ptr %cmd_len2.i.i, align 4
  %429 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load ptr, ptr %dma.i, align 4
  %431 = load i32, ptr %call7.i.i.i, align 8
  %and.i.i132 = and i32 %431, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i132)
  %tobool.not.i.i133 = icmp eq i32 %and.i.i132, 0
  br i1 %tobool.not.i.i133, label %if.end.i.i134, label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/infiniband/hw/ocrdma/ocrdma_hw.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1124, 0\0A.popsection", ""() #14, !srcloc !176
  unreachable

if.end.i.i134:                                    ; preds = %if.end7.i
  %call.i57.i = call fastcc i32 @ocrdma_mbx_cmd(ptr noundef %dev, ptr noundef nonnull %call7.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i57.i)
  %tobool4.not.i.i = icmp eq i32 %call.i57.i, 0
  br i1 %tobool4.not.i.i, label %if.then5.i.i, label %if.end.i.i134.ocrdma_nonemb_mbx_cmd.exit.i_crit_edge

if.end.i.i134.ocrdma_nonemb_mbx_cmd.exit.i_crit_edge: ; preds = %if.end.i.i134
  call void @__sanitizer_cov_trace_pc() #16
  br label %ocrdma_nonemb_mbx_cmd.exit.i

if.then5.i.i:                                     ; preds = %if.end.i.i134
  %status6.i.i = getelementptr inbounds %struct.ocrdma_mbx_rsp, ptr %430, i32 0, i32 1
  %432 = ptrtoint ptr %status6.i.i to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load i32, ptr %status6.i.i, align 4
  %and7.i.i = and i32 %433, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i.i)
  %tobool8.not.i.i = icmp eq i32 %and7.i.i, 0
  br i1 %tobool8.not.i.i, label %if.then5.i.i.if.then25.i_crit_edge, label %if.end13.i.i

if.then5.i.i.if.then25.i_crit_edge:               ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then25.i

if.end13.i.i:                                     ; preds = %if.then5.i.i
  %call11.i.i = call fastcc i32 @ocrdma_get_mbx_errno(i32 noundef %433) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i)
  %tobool14.not.i.i = icmp eq i32 %call11.i.i, 0
  br i1 %tobool14.not.i.i, label %if.end13.i.i.if.then25.i_crit_edge, label %if.end13.i.i.ocrdma_nonemb_mbx_cmd.exit.i_crit_edge

if.end13.i.i.ocrdma_nonemb_mbx_cmd.exit.i_crit_edge: ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ocrdma_nonemb_mbx_cmd.exit.i

if.end13.i.i.if.then25.i_crit_edge:               ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then25.i

ocrdma_nonemb_mbx_cmd.exit.i:                     ; preds = %if.end13.i.i.ocrdma_nonemb_mbx_cmd.exit.i_crit_edge, %if.end.i.i134.ocrdma_nonemb_mbx_cmd.exit.i_crit_edge
  %status.038.i.i = phi i32 [ %call11.i.i, %if.end13.i.i.ocrdma_nonemb_mbx_cmd.exit.i_crit_edge ], [ %call.i57.i, %if.end.i.i134.ocrdma_nonemb_mbx_cmd.exit.i_crit_edge ]
  %434 = ptrtoint ptr %430 to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load i32, ptr %430, align 4
  %and19.i.i135 = and i32 %435, 255
  %and22.i.i = lshr i32 %435, 8
  %shr23.i.i = and i32 %and22.i.i, 255
  %call24.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i32 noundef %and19.i.i135, i32 noundef %shr23.i.i) #18
  br label %ocrdma_mbx_get_ctrl_attribs.exit

if.then25.i:                                      ; preds = %if.end13.i.i.if.then25.i_crit_edge, %if.then5.i.i.if.then25.i_crit_edge
  %436 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load ptr, ptr %dma.i, align 4
  %ptpnum_maxdoms_hbast_cv.i = getelementptr inbounds %struct.ocrdma_get_ctrl_attribs_rsp, ptr %437, i32 0, i32 1, i32 0, i32 22
  %438 = ptrtoint ptr %ptpnum_maxdoms_hbast_cv.i to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load i32, ptr %ptpnum_maxdoms_hbast_cv.i, align 4
  %and28.i = lshr i32 %439, 24
  %shr29.i = and i32 %and28.i, 63
  %hba_port_num.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 23
  %440 = ptrtoint ptr %hba_port_num.i to i32
  call void @__asan_store4_noabort(i32 %440)
  store i32 %shr29.i, ptr %hba_port_num.i, align 8
  %model_number.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 22
  %controller_model_number.i = getelementptr inbounds %struct.ocrdma_get_ctrl_attribs_rsp, ptr %437, i32 0, i32 1, i32 0, i32 8
  %call31.i = call i32 @strlcpy(ptr noundef %model_number.i, ptr noundef %controller_model_number.i, i32 noundef 32) #14
  br label %ocrdma_mbx_get_ctrl_attribs.exit

ocrdma_mbx_get_ctrl_attribs.exit:                 ; preds = %if.then25.i, %ocrdma_nonemb_mbx_cmd.exit.i
  %status.034.i60.i = phi i32 [ 0, %if.then25.i ], [ %status.038.i.i, %ocrdma_nonemb_mbx_cmd.exit.i ]
  %441 = ptrtoint ptr %pdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load ptr, ptr %pdev.i.i.i, align 4
  %dev35.i = getelementptr inbounds %struct.pci_dev, ptr %442, i32 0, i32 44
  %443 = ptrtoint ptr %410 to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load i32, ptr %410, align 4
  %445 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load ptr, ptr %dma.i, align 4
  %447 = ptrtoint ptr %408 to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load i32, ptr %408, align 4
  call void @dma_free_attrs(ptr noundef %dev35.i, i32 noundef %444, ptr noundef %446, i32 noundef %448, i32 noundef 0) #14
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %dma.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.034.i60.i)
  %tobool26.not = icmp eq i32 %status.034.i60.i, 0
  br i1 %tobool26.not, label %ocrdma_mbx_get_ctrl_attribs.exit.cleanup_crit_edge, label %ocrdma_mbx_get_ctrl_attribs.exit.info_attrb_err_crit_edge

ocrdma_mbx_get_ctrl_attribs.exit.info_attrb_err_crit_edge: ; preds = %ocrdma_mbx_get_ctrl_attribs.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %info_attrb_err

ocrdma_mbx_get_ctrl_attribs.exit.cleanup_crit_edge: ; preds = %ocrdma_mbx_get_ctrl_attribs.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

info_attrb_err:                                   ; preds = %ocrdma_mbx_get_ctrl_attribs.exit.info_attrb_err_crit_edge, %ocrdma_mbx_get_ctrl_attribs.exit.thread166, %ocrdma_mbx_get_ctrl_attribs.exit.thread, %ocrdma_mbx_get_phy_info.exit, %if.end20.info_attrb_err_crit_edge
  %status.0 = phi i32 [ %call1.i122, %ocrdma_mbx_get_phy_info.exit ], [ %status.034.i60.i, %ocrdma_mbx_get_ctrl_attribs.exit.info_attrb_err_crit_edge ], [ -12, %ocrdma_mbx_get_ctrl_attribs.exit.thread ], [ -12, %ocrdma_mbx_get_ctrl_attribs.exit.thread166 ], [ -12, %if.end20.info_attrb_err_crit_edge ]
  call fastcc void @ocrdma_mbx_delete_ah_tbl(ptr noundef %dev)
  br label %conf_err

conf_err:                                         ; preds = %info_attrb_err, %ocrdma_mbx_create_ah_tbl.exit.thread157, %ocrdma_mbx_create_ah_tbl.exit.thread, %ocrdma_mbx_query_fw_ver.exit, %if.end12.conf_err_crit_edge, %ocrdma_mbx_query_dev.exit, %if.end8.conf_err_crit_edge, %ocrdma_mbx_query_fw_config.exit.thread144, %if.end4.conf_err_crit_edge
  %status.1 = phi i32 [ %call1.i71, %ocrdma_mbx_query_dev.exit ], [ %call1.i95, %ocrdma_mbx_query_fw_ver.exit ], [ %status.0, %info_attrb_err ], [ %status.0.i62.ph, %ocrdma_mbx_query_fw_config.exit.thread144 ], [ -12, %ocrdma_mbx_create_ah_tbl.exit.thread ], [ %retval.0.ph.i.ph, %ocrdma_mbx_create_ah_tbl.exit.thread157 ], [ -12, %if.end4.conf_err_crit_edge ], [ -12, %if.end8.conf_err_crit_edge ], [ -12, %if.end12.conf_err_crit_edge ]
  call fastcc void @ocrdma_destroy_mq(ptr noundef %dev)
  br label %mq_err

mq_err:                                           ; preds = %conf_err, %mbx_cq_free.i, %if.end.mq_err_crit_edge
  %status.2 = phi i32 [ %status.1, %conf_err ], [ %status.1.i, %mbx_cq_free.i ], [ -12, %if.end.mq_err_crit_edge ]
  call fastcc void @ocrdma_destroy_eqs(ptr noundef %dev)
  br label %do.end

do.end:                                           ; preds = %mq_err, %done.i, %if.end7.i.i.i.do.end_crit_edge, %kcalloc.exit.thread.i, %if.end.i.do.end_crit_edge
  %status.3 = phi i32 [ %status.2, %mq_err ], [ -12, %kcalloc.exit.thread.i ], [ -12, %if.end7.i.i.i.do.end_crit_edge ], [ -22, %if.end.i.do.end_crit_edge ], [ %call.i.i, %done.i ]
  %call29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.29, i32 noundef %status.3) #18
  br label %cleanup

cleanup:                                          ; preds = %do.end, %ocrdma_mbx_get_ctrl_attribs.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.3, %do.end ], [ 0, %ocrdma_mbx_get_ctrl_attribs.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ocrdma_mbx_delete_ah_tbl(ptr noundef %dev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 20, i32 6
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 4
  %av_tbl = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 16
  %2 = ptrtoint ptr %av_tbl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %av_tbl, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 256) #17
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %5 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %call7.i.i.i, align 8
  %or.i = or i32 %6, 1
  store i32 %or.i, ptr %call7.i.i.i, align 8
  %pyld_len.i = getelementptr inbounds %struct.ocrdma_mqe_hdr, ptr %call7.i.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %pyld_len.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 20, ptr %pyld_len.i, align 4
  %u.i = getelementptr inbounds %struct.ocrdma_mqe, ptr %call7.i.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2565, ptr %u.i, align 4
  %timeout.i.i = getelementptr inbounds %struct.ocrdma_mqe, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 0, i32 1
  %9 = ptrtoint ptr %timeout.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 20, ptr %timeout.i.i, align 8
  %cmd_len2.i.i = getelementptr inbounds %struct.ocrdma_mqe, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 0, i32 2
  %10 = ptrtoint ptr %cmd_len2.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4, ptr %cmd_len2.i.i, align 4
  %ahid = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 16, i32 5
  %11 = ptrtoint ptr %ahid to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ahid, align 4
  %ahid5 = getelementptr inbounds %struct.ocrdma_delete_ah_tbl, ptr %call7.i.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %ahid5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %ahid5, align 4
  %call6 = tail call fastcc i32 @ocrdma_mbx_cmd(ptr noundef %dev, ptr noundef nonnull %call7.i.i.i)
  %dev7 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %size = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 16, i32 2
  %14 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size, align 4
  %16 = ptrtoint ptr %av_tbl to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %av_tbl, align 4
  %pa = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 16, i32 1
  %18 = ptrtoint ptr %pa to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pa, align 4
  tail call void @dma_free_attrs(ptr noundef %dev7, i32 noundef %15, ptr noundef %17, i32 noundef %19, i32 noundef 0) #14
  %20 = ptrtoint ptr %av_tbl to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %av_tbl, align 4
  %pbl = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 16, i32 6
  %21 = ptrtoint ptr %pbl to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pbl, align 4
  %pa19 = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 16, i32 6, i32 1
  %23 = ptrtoint ptr %pa19 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pa19, align 4
  tail call void @dma_free_attrs(ptr noundef %dev7, i32 noundef 4096, ptr noundef %22, i32 noundef %24, i32 noundef 0) #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ocrdma_destroy_mq(ptr noundef %dev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mqe_ctx = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %mqe_ctx, i32 noundef 0) #14
  %created = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 18, i32 0, i32 8
  %0 = ptrtoint ptr %created to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %created, align 2, !range !177
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  %mq = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 18
  %mbx_cmd.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 17
  %2 = ptrtoint ptr %mbx_cmd.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mbx_cmd.i, align 4
  %4 = getelementptr inbounds i8, ptr %3, i32 12
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 8)
  store i64 0, ptr %4, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 309, ptr %3, align 4
  %timeout.i.i = getelementptr inbounds %struct.ocrdma_mbx_hdr, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %timeout.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 20, ptr %timeout.i.i, align 4
  %cmd_len2.i.i = getelementptr inbounds %struct.ocrdma_mbx_hdr, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %cmd_len2.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4, ptr %cmd_len2.i.i, align 4
  %id.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 18, i32 0, i32 5
  %9 = ptrtoint ptr %id.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %id.i, align 4
  %conv.i = zext i16 %10 to i32
  %id6.i = getelementptr inbounds %struct.ocrdma_delete_q_req, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %id6.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv.i, ptr %id6.i, align 4
  %netdev.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 20, i32 7
  %12 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %netdev.i, align 8
  %call.i = tail call i32 @be_roce_mcc_cmd(ptr noundef %13, ptr noundef %3, i32 noundef 20, ptr noundef null, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then.ocrdma_mbx_delete_q.exit_crit_edge

if.then.ocrdma_mbx_delete_q.exit_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %ocrdma_mbx_delete_q.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %14 = ptrtoint ptr %created to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %created, align 2
  br label %ocrdma_mbx_delete_q.exit

ocrdma_mbx_delete_q.exit:                         ; preds = %if.then.i, %if.then.ocrdma_mbx_delete_q.exit_crit_edge
  %pdev.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 20, i32 6
  %15 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev.i, align 4
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  %size.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 18, i32 0, i32 2
  %17 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %size.i, align 4
  %19 = ptrtoint ptr %mq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mq, align 4
  %dma.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 18, i32 0, i32 1
  %21 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dma.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev1.i, i32 noundef %18, ptr noundef %20, i32 noundef %22, i32 noundef 0) #14
  br label %if.end

if.end:                                           ; preds = %ocrdma_mbx_delete_q.exit, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %mqe_ctx) #14
  %created5 = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 18, i32 1, i32 8
  %23 = ptrtoint ptr %created5 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %created5, align 2, !range !177
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool6.not = icmp eq i8 %24, 0
  br i1 %tobool6.not, label %if.end.if.end9_crit_edge, label %if.then7

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

if.then7:                                         ; preds = %if.end
  %cq4 = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 18, i32 1
  %mbx_cmd.i21 = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 17
  %25 = ptrtoint ptr %mbx_cmd.i21 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mbx_cmd.i21, align 4
  %27 = getelementptr inbounds i8, ptr %26, i32 12
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_storeN_noabort(i32 %28, i32 8)
  store i64 0, ptr %27, align 4
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 310, ptr %26, align 4
  %timeout.i.i22 = getelementptr inbounds %struct.ocrdma_mbx_hdr, ptr %26, i32 0, i32 1
  %30 = ptrtoint ptr %timeout.i.i22 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 20, ptr %timeout.i.i22, align 4
  %cmd_len2.i.i23 = getelementptr inbounds %struct.ocrdma_mbx_hdr, ptr %26, i32 0, i32 2
  %31 = ptrtoint ptr %cmd_len2.i.i23 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 4, ptr %cmd_len2.i.i23, align 4
  %id.i24 = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 18, i32 1, i32 5
  %32 = ptrtoint ptr %id.i24 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %id.i24, align 4
  %conv.i25 = zext i16 %33 to i32
  %id6.i26 = getelementptr inbounds %struct.ocrdma_delete_q_req, ptr %26, i32 0, i32 1
  %34 = ptrtoint ptr %id6.i26 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %conv.i25, ptr %id6.i26, align 4
  %netdev.i27 = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 20, i32 7
  %35 = ptrtoint ptr %netdev.i27 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %netdev.i27, align 8
  %call.i28 = tail call i32 @be_roce_mcc_cmd(ptr noundef %36, ptr noundef %26, i32 noundef 20, ptr noundef null, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i28)
  %tobool.not.i29 = icmp eq i32 %call.i28, 0
  br i1 %tobool.not.i29, label %if.then.i31, label %if.then7.ocrdma_mbx_delete_q.exit32_crit_edge

if.then7.ocrdma_mbx_delete_q.exit32_crit_edge:    ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #16
  br label %ocrdma_mbx_delete_q.exit32

if.then.i31:                                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #16
  %37 = ptrtoint ptr %created5 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %created5, align 2
  br label %ocrdma_mbx_delete_q.exit32

ocrdma_mbx_delete_q.exit32:                       ; preds = %if.then.i31, %if.then7.ocrdma_mbx_delete_q.exit32_crit_edge
  %pdev.i33 = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 20, i32 6
  %38 = ptrtoint ptr %pdev.i33 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pdev.i33, align 4
  %dev1.i34 = getelementptr inbounds %struct.pci_dev, ptr %39, i32 0, i32 44
  %size.i35 = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 18, i32 1, i32 2
  %40 = ptrtoint ptr %size.i35 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %size.i35, align 4
  %42 = ptrtoint ptr %cq4 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cq4, align 4
  %dma.i36 = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 18, i32 1, i32 1
  %44 = ptrtoint ptr %dma.i36 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %dma.i36, align 4
  tail call void @dma_free_attrs(ptr noundef %dev1.i34, i32 noundef %41, ptr noundef %43, i32 noundef %45, i32 noundef 0) #14
  br label %if.end9

if.end9:                                          ; preds = %ocrdma_mbx_delete_q.exit32, %if.end.if.end9_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ocrdma_destroy_eqs(ptr nocapture noundef readonly %dev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %eq_cnt = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %eq_cnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %eq_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp5 = icmp sgt i32 %1, 0
  br i1 %cmp5, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %eq_tbl = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 7
  %nic_info.i.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 20
  %intr_mode.i.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 20, i32 10
  %pdev.i.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 20, i32 6
  %mbx_cmd.i.i.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 17
  %netdev.i.i.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 20, i32 7
  br label %for.body

for.body:                                         ; preds = %ocrdma_destroy_eq.exit.for.body_crit_edge, %for.body.lr.ph
  %i.06 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %ocrdma_destroy_eq.exit.for.body_crit_edge ]
  %2 = ptrtoint ptr %eq_tbl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %eq_tbl, align 4
  %arrayidx = getelementptr %struct.ocrdma_eq, ptr %3, i32 %i.06
  %id.i = getelementptr inbounds %struct.ocrdma_queue_info, ptr %arrayidx, i32 0, i32 5
  %4 = ptrtoint ptr %id.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %id.i, align 8
  %conv.i.i = zext i16 %5 to i32
  %and.i.i = and i32 %conv.i.i, 511
  %and3.i.i = shl nuw nsw i32 %conv.i.i, 2
  %shl.i.i = and i32 %and3.i.i, 63488
  %or4.i.i = or i32 %and.i.i, %shl.i.i
  %or13.i.i = or i32 %or4.i.i, 1024
  %6 = ptrtoint ptr %nic_info.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %nic_info.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !174
  tail call void @arm_heavy_mb() #14
  %8 = tail call i32 @llvm.bswap.i32(i32 %or13.i.i) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %8) #14, !srcloc !175
  %9 = ptrtoint ptr %intr_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %intr_mode.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp.i.i = icmp eq i32 %10, 1
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %11 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev.i.i, align 4
  %irq2.i.i = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 46
  br label %ocrdma_get_irq.exit.i

if.else.i.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %vector.i.i = getelementptr %struct.ocrdma_eq, ptr %3, i32 %i.06, i32 1
  %13 = ptrtoint ptr %vector.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %vector.i.i, align 8
  %arrayidx.i.i = getelementptr %struct.ocrdma_dev, ptr %dev, i32 0, i32 20, i32 11, i32 2, i32 %14
  br label %ocrdma_get_irq.exit.i

ocrdma_get_irq.exit.i:                            ; preds = %if.else.i.i, %if.then.i.i
  %irq.0.in.i.i = phi ptr [ %irq2.i.i, %if.then.i.i ], [ %arrayidx.i.i, %if.else.i.i ]
  %15 = ptrtoint ptr %irq.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %irq.0.i.i = load i32, ptr %irq.0.in.i.i, align 4
  %call1.i = tail call ptr @free_irq(i32 noundef %irq.0.i.i, ptr noundef %arrayidx) #14
  %created.i.i = getelementptr inbounds %struct.ocrdma_queue_info, ptr %arrayidx, i32 0, i32 8
  %16 = ptrtoint ptr %created.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %created.i.i, align 2, !range !177
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i.i = icmp eq i8 %17, 0
  br i1 %tobool.not.i.i, label %ocrdma_get_irq.exit.i.ocrdma_destroy_eq.exit_crit_edge, label %if.then.i7.i

ocrdma_get_irq.exit.i.ocrdma_destroy_eq.exit_crit_edge: ; preds = %ocrdma_get_irq.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ocrdma_destroy_eq.exit

if.then.i7.i:                                     ; preds = %ocrdma_get_irq.exit.i
  %18 = ptrtoint ptr %mbx_cmd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mbx_cmd.i.i.i, align 4
  %20 = getelementptr inbounds i8, ptr %19, i32 12
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_storeN_noabort(i32 %21, i32 8)
  store i64 0, ptr %20, align 4
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 311, ptr %19, align 4
  %timeout.i.i.i.i = getelementptr inbounds %struct.ocrdma_mbx_hdr, ptr %19, i32 0, i32 1
  %23 = ptrtoint ptr %timeout.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 20, ptr %timeout.i.i.i.i, align 4
  %cmd_len2.i.i.i.i = getelementptr inbounds %struct.ocrdma_mbx_hdr, ptr %19, i32 0, i32 2
  %24 = ptrtoint ptr %cmd_len2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 4, ptr %cmd_len2.i.i.i.i, align 4
  %25 = ptrtoint ptr %id.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %id.i, align 4
  %conv.i.i.i = zext i16 %26 to i32
  %id6.i.i.i = getelementptr inbounds %struct.ocrdma_delete_q_req, ptr %19, i32 0, i32 1
  %27 = ptrtoint ptr %id6.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv.i.i.i, ptr %id6.i.i.i, align 4
  %28 = ptrtoint ptr %netdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %netdev.i.i.i, align 8
  %call.i.i.i = tail call i32 @be_roce_mcc_cmd(ptr noundef %29, ptr noundef %19, i32 noundef 20, ptr noundef null, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.then.i7.i.ocrdma_mbx_delete_q.exit.i.i_crit_edge

if.then.i7.i.ocrdma_mbx_delete_q.exit.i.i_crit_edge: ; preds = %if.then.i7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ocrdma_mbx_delete_q.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then.i7.i
  call void @__sanitizer_cov_trace_pc() #16
  %30 = ptrtoint ptr %created.i.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %created.i.i, align 2
  br label %ocrdma_mbx_delete_q.exit.i.i

ocrdma_mbx_delete_q.exit.i.i:                     ; preds = %if.then.i.i.i, %if.then.i7.i.ocrdma_mbx_delete_q.exit.i.i_crit_edge
  %31 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pdev.i.i, align 4
  %dev1.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  %size.i.i.i = getelementptr inbounds %struct.ocrdma_queue_info, ptr %arrayidx, i32 0, i32 2
  %33 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %size.i.i.i, align 4
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx, align 4
  %dma.i.i.i = getelementptr inbounds %struct.ocrdma_queue_info, ptr %arrayidx, i32 0, i32 1
  %37 = ptrtoint ptr %dma.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dma.i.i.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev1.i.i.i, i32 noundef %34, ptr noundef %36, i32 noundef %38, i32 noundef 0) #14
  br label %ocrdma_destroy_eq.exit

ocrdma_destroy_eq.exit:                           ; preds = %ocrdma_mbx_delete_q.exit.i.i, %ocrdma_get_irq.exit.i.ocrdma_destroy_eq.exit_crit_edge
  %inc = add nuw nsw i32 %i.06, 1
  %39 = ptrtoint ptr %eq_cnt to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %eq_cnt, align 8
  %cmp = icmp slt i32 %inc, %40
  br i1 %cmp, label %ocrdma_destroy_eq.exit.for.body_crit_edge, label %ocrdma_destroy_eq.exit.for.end_crit_edge

ocrdma_destroy_eq.exit.for.end_crit_edge:         ; preds = %ocrdma_destroy_eq.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

ocrdma_destroy_eq.exit.for.body_crit_edge:        ; preds = %ocrdma_destroy_eq.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %ocrdma_destroy_eq.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocrdma_cleanup_hw(ptr noundef %dev) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 256) #17
  %tobool.not.i.i.i = icmp eq ptr %call7.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %entry.ocrdma_free_pd_pool.exit_crit_edge, label %if.end.i.i

entry.ocrdma_free_pd_pool.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %ocrdma_free_pd_pool.exit

if.end.i.i:                                       ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %call7.i.i.i.i.i, align 8
  %or.i.i.i = or i32 %2, 1
  store i32 %or.i.i.i, ptr %call7.i.i.i.i.i, align 8
  %pyld_len.i.i.i = getelementptr inbounds %struct.ocrdma_mqe_hdr, ptr %call7.i.i.i.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %pyld_len.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 24, ptr %pyld_len.i.i.i, align 4
  %u.i.i.i = getelementptr inbounds %struct.ocrdma_mqe, ptr %call7.i.i.i.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2589, ptr %u.i.i.i, align 4
  %timeout.i.i.i.i = getelementptr inbounds %struct.ocrdma_mqe, ptr %call7.i.i.i.i.i, i32 0, i32 1, i32 0, i32 0, i32 1
  %5 = ptrtoint ptr %timeout.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 20, ptr %timeout.i.i.i.i, align 8
  %cmd_len2.i.i.i.i = getelementptr inbounds %struct.ocrdma_mqe, ptr %call7.i.i.i.i.i, i32 0, i32 1, i32 0, i32 0, i32 2
  %6 = ptrtoint ptr %cmd_len2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 8, ptr %cmd_len2.i.i.i.i, align 4
  %pd_mgr.i.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 50
  %7 = ptrtoint ptr %pd_mgr.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pd_mgr.i.i, align 8
  %max_normal_pd.i.i = getelementptr inbounds %struct.ocrdma_pd_resource_mgr, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %max_normal_pd.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %max_normal_pd.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool1.not.i.i = icmp eq i16 %10, 0
  br i1 %tobool1.not.i.i, label %if.end.i.i.if.end7.i.i_crit_edge, label %if.then2.i.i

if.end.i.i.if.end7.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7.i.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %8, align 4
  %start_pd_id.i.i = getelementptr inbounds %struct.ocrdma_dealloc_pd_range, ptr %call7.i.i.i.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %start_pd_id.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %start_pd_id.i.i, align 4
  %14 = ptrtoint ptr %max_normal_pd.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %max_normal_pd.i.i, align 4
  %conv.i.i = zext i16 %15 to i32
  %pd_count.i.i = getelementptr inbounds %struct.ocrdma_dealloc_pd_range, ptr %call7.i.i.i.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %pd_count.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv.i.i, ptr %pd_count.i.i, align 8
  %call6.i.i = tail call fastcc i32 @ocrdma_mbx_cmd(ptr noundef %dev, ptr noundef nonnull %call7.i.i.i.i.i) #14
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.then2.i.i, %if.end.i.i.if.end7.i.i_crit_edge
  %17 = ptrtoint ptr %pd_mgr.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pd_mgr.i.i, align 8
  %max_dpp_pd.i.i = getelementptr inbounds %struct.ocrdma_pd_resource_mgr, ptr %18, i32 0, i32 7
  %19 = ptrtoint ptr %max_dpp_pd.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %max_dpp_pd.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool9.not.i.i = icmp eq i16 %20, 0
  br i1 %tobool9.not.i.i, label %if.end7.i.i.ocrdma_free_pd_pool.exit_crit_edge, label %if.then10.i.i

if.end7.i.i.ocrdma_free_pd_pool.exit_crit_edge:   ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ocrdma_free_pd_pool.exit

if.then10.i.i:                                    ; preds = %if.end7.i.i
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i.i) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %21 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i39.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3520, i32 noundef 256) #17
  %tobool.not.i40.i.i = icmp eq ptr %call7.i.i.i39.i.i, null
  br i1 %tobool.not.i40.i.i, label %if.then10.i.i.ocrdma_free_pd_pool.exit_crit_edge, label %if.end14.i.i

if.then10.i.i.ocrdma_free_pd_pool.exit_crit_edge: ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ocrdma_free_pd_pool.exit

if.end14.i.i:                                     ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %22 = ptrtoint ptr %call7.i.i.i39.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %call7.i.i.i39.i.i, align 8
  %or.i41.i.i = or i32 %23, 1
  store i32 %or.i41.i.i, ptr %call7.i.i.i39.i.i, align 8
  %pyld_len.i42.i.i = getelementptr inbounds %struct.ocrdma_mqe_hdr, ptr %call7.i.i.i39.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %pyld_len.i42.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 24, ptr %pyld_len.i42.i.i, align 4
  %u.i43.i.i = getelementptr inbounds %struct.ocrdma_mqe, ptr %call7.i.i.i39.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %u.i43.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 2589, ptr %u.i43.i.i, align 4
  %timeout.i.i44.i.i = getelementptr inbounds %struct.ocrdma_mqe, ptr %call7.i.i.i39.i.i, i32 0, i32 1, i32 0, i32 0, i32 1
  %26 = ptrtoint ptr %timeout.i.i44.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 20, ptr %timeout.i.i44.i.i, align 8
  %cmd_len2.i.i45.i.i = getelementptr inbounds %struct.ocrdma_mqe, ptr %call7.i.i.i39.i.i, i32 0, i32 1, i32 0, i32 0, i32 2
  %27 = ptrtoint ptr %cmd_len2.i.i45.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 8, ptr %cmd_len2.i.i45.i.i, align 4
  %28 = ptrtoint ptr %pd_mgr.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pd_mgr.i.i, align 8
  %pd_dpp_start.i.i = getelementptr inbounds %struct.ocrdma_pd_resource_mgr, ptr %29, i32 0, i32 4
  %30 = ptrtoint ptr %pd_dpp_start.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pd_dpp_start.i.i, align 4
  %start_pd_id16.i.i = getelementptr inbounds %struct.ocrdma_dealloc_pd_range, ptr %call7.i.i.i39.i.i, i32 0, i32 2
  %32 = ptrtoint ptr %start_pd_id16.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %start_pd_id16.i.i, align 4
  %max_dpp_pd18.i.i = getelementptr inbounds %struct.ocrdma_pd_resource_mgr, ptr %29, i32 0, i32 7
  %33 = ptrtoint ptr %max_dpp_pd18.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %max_dpp_pd18.i.i, align 4
  %conv19.i.i = zext i16 %34 to i32
  %pd_count20.i.i = getelementptr inbounds %struct.ocrdma_dealloc_pd_range, ptr %call7.i.i.i39.i.i, i32 0, i32 3
  %35 = ptrtoint ptr %pd_count20.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %conv19.i.i, ptr %pd_count20.i.i, align 8
  %call21.i.i = tail call fastcc i32 @ocrdma_mbx_cmd(ptr noundef %dev, ptr noundef nonnull %call7.i.i.i39.i.i) #14
  br label %ocrdma_free_pd_pool.exit

ocrdma_free_pd_pool.exit:                         ; preds = %if.end14.i.i, %if.then10.i.i.ocrdma_free_pd_pool.exit_crit_edge, %if.end7.i.i.ocrdma_free_pd_pool.exit_crit_edge, %entry.ocrdma_free_pd_pool.exit_crit_edge
  %cmd.0.i.i = phi ptr [ %call7.i.i.i39.i.i, %if.end14.i.i ], [ %call7.i.i.i.i.i, %if.end7.i.i.ocrdma_free_pd_pool.exit_crit_edge ], [ null, %entry.ocrdma_free_pd_pool.exit_crit_edge ], [ null, %if.then10.i.i.ocrdma_free_pd_pool.exit_crit_edge ]
  tail call void @kfree(ptr noundef %cmd.0.i.i) #14
  %pd_mgr.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 50
  %36 = ptrtoint ptr %pd_mgr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pd_mgr.i, align 8
  %pd_norm_bitmap.i = getelementptr inbounds %struct.ocrdma_pd_resource_mgr, ptr %37, i32 0, i32 9
  %38 = ptrtoint ptr %pd_norm_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pd_norm_bitmap.i, align 4
  tail call void @bitmap_free(ptr noundef %39) #14
  %40 = ptrtoint ptr %pd_mgr.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pd_mgr.i, align 8
  %pd_dpp_bitmap.i = getelementptr inbounds %struct.ocrdma_pd_resource_mgr, ptr %41, i32 0, i32 10
  %42 = ptrtoint ptr %pd_dpp_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pd_dpp_bitmap.i, align 4
  tail call void @bitmap_free(ptr noundef %43) #14
  %44 = ptrtoint ptr %pd_mgr.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pd_mgr.i, align 8
  tail call void @kfree(ptr noundef %45) #14
  tail call fastcc void @ocrdma_mbx_delete_ah_tbl(ptr noundef %dev)
  tail call fastcc void @ocrdma_destroy_mq(ptr noundef %dev)
  tail call fastcc void @ocrdma_destroy_eqs(ptr noundef %dev)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @ocrdma_get_mbx_errno(i32 noundef %status) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %trunc = trunc i32 %status to i8
  %0 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.95)
  switch i8 %trunc, label %sw.default11 [
    i8 100, label %entry.sw.epilog12_crit_edge
    i8 -120, label %entry.sw.epilog12_crit_edge14
    i8 101, label %entry.sw.bb5_crit_edge
    i8 103, label %entry.sw.bb5_crit_edge15
    i8 -127, label %entry.sw.bb5_crit_edge16
    i8 104, label %entry.sw.bb5_crit_edge17
    i8 -117, label %entry.sw.bb5_crit_edge18
    i8 -121, label %entry.sw.bb5_crit_edge19
    i8 -115, label %entry.sw.bb5_crit_edge20
    i8 -113, label %entry.sw.bb5_crit_edge21
    i8 -112, label %entry.sw.bb5_crit_edge22
    i8 3, label %entry.sw.bb5_crit_edge23
    i8 120, label %entry.sw.bb5_crit_edge24
    i8 105, label %entry.sw.bb5_crit_edge25
    i8 115, label %entry.sw.bb5_crit_edge26
    i8 116, label %entry.sw.bb5_crit_edge27
    i8 117, label %entry.sw.bb5_crit_edge28
    i8 118, label %entry.sw.bb5_crit_edge29
    i8 119, label %entry.sw.bb5_crit_edge30
    i8 -116, label %entry.sw.bb5_crit_edge31
    i8 -123, label %entry.sw.bb5_crit_edge32
    i8 -118, label %entry.sw.bb5_crit_edge33
    i8 102, label %entry.sw.bb6_crit_edge
    i8 -126, label %entry.sw.bb6_crit_edge34
    i8 -114, label %entry.sw.bb6_crit_edge35
    i8 114, label %entry.sw.bb6_crit_edge36
    i8 109, label %entry.sw.bb7_crit_edge
    i8 112, label %entry.sw.bb7_crit_edge37
    i8 -122, label %entry.sw.bb7_crit_edge38
    i8 -119, label %entry.sw.bb7_crit_edge39
    i8 106, label %entry.sw.bb7_crit_edge40
    i8 107, label %entry.sw.bb7_crit_edge41
    i8 108, label %entry.sw.bb7_crit_edge42
    i8 110, label %entry.sw.bb7_crit_edge43
    i8 111, label %entry.sw.bb7_crit_edge44
    i8 1, label %sw.bb8
  ]

entry.sw.bb7_crit_edge44:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb7

entry.sw.bb7_crit_edge43:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb7

entry.sw.bb7_crit_edge42:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb7

entry.sw.bb7_crit_edge41:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb7

entry.sw.bb7_crit_edge40:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb7

entry.sw.bb7_crit_edge39:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb7

entry.sw.bb7_crit_edge38:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb7

entry.sw.bb7_crit_edge37:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb7

entry.sw.bb7_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb7

entry.sw.bb6_crit_edge36:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb6

entry.sw.bb6_crit_edge35:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb6

entry.sw.bb6_crit_edge34:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb6

entry.sw.bb6_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb6

entry.sw.bb5_crit_edge33:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb5

entry.sw.bb5_crit_edge32:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb5

entry.sw.bb5_crit_edge31:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb5

entry.sw.bb5_crit_edge30:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb5

entry.sw.bb5_crit_edge29:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb5

entry.sw.bb5_crit_edge28:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb5

entry.sw.bb5_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb5

entry.sw.bb5_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb5

entry.sw.bb5_crit_edge25:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb5

entry.sw.bb5_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb5

entry.sw.bb5_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb5

entry.sw.bb5_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb5

entry.sw.bb5_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb5

entry.sw.bb5_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb5

entry.sw.bb5_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb5

entry.sw.bb5_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb5

entry.sw.bb5_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb5

entry.sw.bb5_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb5

entry.sw.bb5_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb5

entry.sw.bb5_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb5

entry.sw.epilog12_crit_edge14:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog12

entry.sw.epilog12_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog12

sw.bb5:                                           ; preds = %entry.sw.bb5_crit_edge, %entry.sw.bb5_crit_edge15, %entry.sw.bb5_crit_edge16, %entry.sw.bb5_crit_edge17, %entry.sw.bb5_crit_edge18, %entry.sw.bb5_crit_edge19, %entry.sw.bb5_crit_edge20, %entry.sw.bb5_crit_edge21, %entry.sw.bb5_crit_edge22, %entry.sw.bb5_crit_edge23, %entry.sw.bb5_crit_edge24, %entry.sw.bb5_crit_edge25, %entry.sw.bb5_crit_edge26, %entry.sw.bb5_crit_edge27, %entry.sw.bb5_crit_edge28, %entry.sw.bb5_crit_edge29, %entry.sw.bb5_crit_edge30, %entry.sw.bb5_crit_edge31, %entry.sw.bb5_crit_edge32, %entry.sw.bb5_crit_edge33
  br label %sw.epilog12

sw.bb6:                                           ; preds = %entry.sw.bb6_crit_edge, %entry.sw.bb6_crit_edge34, %entry.sw.bb6_crit_edge35, %entry.sw.bb6_crit_edge36
  br label %sw.epilog12

sw.bb7:                                           ; preds = %entry.sw.bb7_crit_edge, %entry.sw.bb7_crit_edge37, %entry.sw.bb7_crit_edge38, %entry.sw.bb7_crit_edge39, %entry.sw.bb7_crit_edge40, %entry.sw.bb7_crit_edge41, %entry.sw.bb7_crit_edge42, %entry.sw.bb7_crit_edge43, %entry.sw.bb7_crit_edge44
  br label %sw.epilog12

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %1 = and i32 %status, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 5632, i32 %1)
  %cond = icmp eq i32 %1, 5632
  %. = select i1 %cond, i32 -11, i32 -14
  br label %sw.epilog12

sw.default11:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog12

sw.epilog12:                                      ; preds = %sw.default11, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %entry.sw.epilog12_crit_edge, %entry.sw.epilog12_crit_edge14
  %err_num.0 = phi i32 [ -14, %sw.default11 ], [ -105, %sw.bb7 ], [ -16, %sw.bb6 ], [ -22, %sw.bb5 ], [ -11, %entry.sw.epilog12_crit_edge ], [ -11, %entry.sw.epilog12_crit_edge14 ], [ %., %sw.bb8 ]
  ret i32 %err_num.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bitmap_zalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_read_gid_l2_fields(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocrdma_irq_handler(i32 noundef %irq, ptr nocapture noundef %handle) #3 align 64 {
entry:
  %ib_evt.i.i.i.i = alloca %struct.ib_event, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.ocrdma_eq, ptr %handle, i32 0, i32 3
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %cq_cnt = getelementptr inbounds %struct.ocrdma_eq, ptr %handle, i32 0, i32 2
  %2 = ptrtoint ptr %cq_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cq_cnt, align 4
  %tail.i = getelementptr inbounds %struct.ocrdma_queue_info, ptr %handle, i32 0, i32 7
  %id = getelementptr inbounds %struct.ocrdma_queue_info, ptr %handle, i32 0, i32 5
  %nic_info.i = getelementptr inbounds %struct.ocrdma_dev, ptr %1, i32 0, i32 20
  %id.i = getelementptr inbounds %struct.ocrdma_dev, ptr %1, i32 0, i32 18, i32 1, i32 5
  %cq_tbl.i.i = getelementptr inbounds %struct.ocrdma_dev, ptr %1, i32 0, i32 5
  %flush_q_lock.i.i.i = getelementptr inbounds %struct.ocrdma_dev, ptr %1, i32 0, i32 4
  %cq.i.i.i = getelementptr inbounds %struct.ocrdma_dev, ptr %1, i32 0, i32 18, i32 1
  %tail.i.i.i = getelementptr inbounds %struct.ocrdma_dev, ptr %1, i32 0, i32 18, i32 1, i32 7
  %update_sl.i.i.i.i = getelementptr inbounds %struct.ocrdma_dev, ptr %1, i32 0, i32 29
  %pvid.i.i.i.i = getelementptr inbounds %struct.ocrdma_dev, ptr %1, i32 0, i32 30
  %4 = getelementptr inbounds %struct.ib_event, ptr %ib_evt.i.i.i.i, i32 0, i32 1
  %5 = getelementptr inbounds %struct.ib_event, ptr %ib_evt.i.i.i.i, i32 0, i32 2
  %max_qp.i.i.i.i = getelementptr inbounds %struct.ocrdma_dev, ptr %1, i32 0, i32 1, i32 7
  %qp_tbl.i.i.i.i = getelementptr inbounds %struct.ocrdma_dev, ptr %1, i32 0, i32 6
  %id.i.i.i.i = getelementptr inbounds %struct.ocrdma_dev, ptr %1, i32 0, i32 25
  %max_cq.i.i.i.i = getelementptr inbounds %struct.ocrdma_dev, ptr %1, i32 0, i32 1, i32 5
  %6 = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 13
  %flags.i.i.i.i = getelementptr inbounds %struct.ocrdma_dev, ptr %1, i32 0, i32 32
  %tag.i.i.i = getelementptr inbounds %struct.ocrdma_dev, ptr %1, i32 0, i32 19, i32 2
  %cmd_done.i.i.i = getelementptr inbounds %struct.ocrdma_dev, ptr %1, i32 0, i32 19, i32 5
  %cqe_status.i.i.i = getelementptr inbounds %struct.ocrdma_dev, ptr %1, i32 0, i32 19, i32 3
  %ext_status.i.i.i = getelementptr inbounds %struct.ocrdma_dev, ptr %1, i32 0, i32 19, i32 4
  %cmd_wait.i.i.i = getelementptr inbounds %struct.ocrdma_dev, ptr %1, i32 0, i32 19, i32 1
  br label %do.body

do.body:                                          ; preds = %if.end25.do.body_crit_edge, %entry
  %budget.0 = phi i32 [ %3, %entry ], [ %dec, %if.end25.do.body_crit_edge ]
  %7 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %handle, align 8
  %9 = ptrtoint ptr %tail.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %tail.i, align 4
  %conv.i = zext i16 %10 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 2
  %add.ptr.i = getelementptr i8, ptr %8, i32 %mul.i
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr.i, align 4
  %13 = call i32 @llvm.bswap.i32(i32 %12) #14
  %14 = and i32 %13, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp = icmp eq i32 %14, 2
  br i1 %cmp, label %do.end, label %do.body.if.end_crit_edge

do.body.if.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %15 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %id, align 8
  %conv5 = zext i16 %16 to i32
  %call7 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, i32 noundef %conv5, i32 noundef %13) #18
  br label %if.end

if.end:                                           ; preds = %do.end, %do.body.if.end_crit_edge
  %and9 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %cmp10 = icmp eq i32 %and9, 0
  br i1 %cmp10, label %if.end.do.end30_crit_edge, label %if.end13

if.end.do.end30_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end30

if.end13:                                         ; preds = %if.end
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %add.ptr.i, align 4
  %18 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %id, align 8
  %conv.i46 = zext i16 %19 to i32
  %and.i = and i32 %conv.i46, 511
  %and3.i = shl nuw nsw i32 %conv.i46, 2
  %shl.i = and i32 %and3.i, 63488
  %or4.i = or i32 %and.i, %shl.i
  %or13.i = or i32 %or4.i, 67072
  %20 = ptrtoint ptr %nic_info.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %nic_info.i, align 8
  %add.ptr.i47 = getelementptr i8, ptr %21, i32 288
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !174
  call void @arm_heavy_mb() #14
  %22 = call i32 @llvm.bswap.i32(i32 %or13.i) #14
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i47, i32 %22) #14, !srcloc !175
  %and18 = and i32 %13, 65534
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %cmp19 = icmp eq i32 %and18, 0
  br i1 %cmp19, label %if.then21, label %if.end13.if.end25_crit_edge

if.end13.if.end25_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

if.then21:                                        ; preds = %if.end13
  %shr23 = lshr i32 %13, 16
  %conv24 = trunc i32 %shr23 to i16
  %23 = ptrtoint ptr %id.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %id.i, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %24, i16 %conv24)
  %cmp.i = icmp eq i16 %24, %conv24
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then21
  %25 = ptrtoint ptr %cq.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cq.i.i.i, align 8
  %27 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %tail.i.i.i, align 4
  %conv.i10.i.i = zext i16 %28 to i32
  %mul.i11.i.i = shl nuw nsw i32 %conv.i10.i.i, 4
  %add.ptr.i12.i.i = getelementptr i8, ptr %26, i32 %mul.i11.i.i
  %valid_ae_cmpl_cons.i13.i.i = getelementptr inbounds %struct.ocrdma_mcqe, ptr %add.ptr.i12.i.i, i32 0, i32 3
  %29 = ptrtoint ptr %valid_ae_cmpl_cons.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %valid_ae_cmpl_cons.i13.i.i, align 4
  %.mask.i14.i.i = and i32 %30, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i14.i.i)
  %tobool.not.i15.i.i = icmp eq i32 %.mask.i14.i.i, 0
  %cmp1722.i.i = icmp eq ptr %add.ptr.i12.i.i, null
  %cmp17.i.i = select i1 %tobool.not.i15.i.i, i1 true, i1 %cmp1722.i.i
  br i1 %cmp17.i.i, label %if.then.i.ocrdma_mq_cq_handler.exit.i_crit_edge, label %if.then.i.for.body.i.preheader.i.i_crit_edge

if.then.i.for.body.i.preheader.i.i_crit_edge:     ; preds = %if.then.i
  br label %for.body.i.preheader.i.i

if.then.i.ocrdma_mq_cq_handler.exit.i_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ocrdma_mq_cq_handler.exit.i

for.body.i.preheader.i.i:                         ; preds = %if.end8.i.i.for.body.i.preheader.i.i_crit_edge, %if.then.i.for.body.i.preheader.i.i_crit_edge
  %.add.ptr.i19.i.i = phi ptr [ %add.ptr.i.i.i, %if.end8.i.i.for.body.i.preheader.i.i_crit_edge ], [ %add.ptr.i12.i.i, %if.then.i.for.body.i.preheader.i.i_crit_edge ]
  %cqe_popped.018.i.i = phi i16 [ %add.i.i, %if.end8.i.i.for.body.i.preheader.i.i_crit_edge ], [ 0, %if.then.i.for.body.i.preheader.i.i_crit_edge ]
  %31 = ptrtoint ptr %.add.ptr.i19.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %.add.ptr.i19.i.i, align 4
  %33 = call i32 @llvm.bswap.i32(i32 %32) #14
  %34 = ptrtoint ptr %.add.ptr.i19.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %.add.ptr.i19.i.i, align 4
  %add.ptr.i1.1.i.i = getelementptr i32, ptr %.add.ptr.i19.i.i, i32 1
  %35 = ptrtoint ptr %add.ptr.i1.1.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %add.ptr.i1.1.i.i, align 4
  %37 = call i32 @llvm.bswap.i32(i32 %36) #14
  %38 = ptrtoint ptr %add.ptr.i1.1.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %add.ptr.i1.1.i.i, align 4
  %add.ptr.i1.2.i.i = getelementptr i32, ptr %.add.ptr.i19.i.i, i32 2
  %39 = ptrtoint ptr %add.ptr.i1.2.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %add.ptr.i1.2.i.i, align 4
  %41 = call i32 @llvm.bswap.i32(i32 %40) #14
  %42 = ptrtoint ptr %add.ptr.i1.2.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %add.ptr.i1.2.i.i, align 4
  %add.ptr.i1.3.i.i = getelementptr i32, ptr %.add.ptr.i19.i.i, i32 3
  %43 = ptrtoint ptr %add.ptr.i1.3.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %add.ptr.i1.3.i.i, align 4
  %45 = call i32 @llvm.bswap.i32(i32 %44) #14
  %46 = ptrtoint ptr %add.ptr.i1.3.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %add.ptr.i1.3.i.i, align 4
  %add.i.i = add i16 %cqe_popped.018.i.i, 1
  %and.i.i = and i32 %45, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then2.i.i

if.then2.i.i:                                     ; preds = %for.body.i.preheader.i.i
  %and.i.i.i = lshr i32 %45, 8
  %trunc.i.i.i = trunc i32 %and.i.i.i to i8
  %47 = zext i8 %trunc.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.96)
  switch i8 %trunc.i.i.i, label %do.end.i.i.i [
    i8 1, label %sw.bb.i.i.i
    i8 20, label %sw.bb1.i.i.i
    i8 5, label %sw.bb2.i.i.i
  ]

sw.bb.i.i.i:                                      ; preds = %if.then2.i.i
  %and.i.i.i.i.i = lshr i32 %33, 8
  %conv.i.i.i.i.i = trunc i32 %and.i.i.i.i.i to i8
  %48 = and i8 %conv.i.i.i.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool.not.i.i.i.i = icmp eq i8 %48, 0
  br i1 %tobool.not.i.i.i.i, label %sw.bb.i.i.i.if.end8.i.i_crit_edge, label %if.end.i.i.i.i

sw.bb.i.i.i.if.end8.i.i_crit_edge:                ; preds = %sw.bb.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8.i.i

if.end.i.i.i.i:                                   ; preds = %sw.bb.i.i.i
  %49 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %flags.i.i.i.i, align 4
  %and1.i.i.i.i = and i32 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool2.not.i.i.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool2.not.i.i.i.i, label %if.end.i.i.i.i.if.end8.i.i_crit_edge, label %if.then3.i.i.i.i

if.end.i.i.i.i.if.end8.i.i_crit_edge:             ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8.i.i

if.then3.i.i.i.i:                                 ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %and5.i.i.i.i = and i8 %conv.i.i.i.i.i, 1
  call void @ocrdma_update_link_state(ptr noundef %1, i8 noundef zeroext %and5.i.i.i.i) #14
  br label %if.end8.i.i

sw.bb1.i.i.i:                                     ; preds = %if.then2.i.i
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ib_evt.i.i.i.i) #14
  %and.i.i.i.i = lshr i32 %45, 16
  %shr.i.i.i.i = and i32 %and.i.i.i.i, 255
  %51 = ptrtoint ptr %.add.ptr.i19.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %.add.ptr.i19.i.i, align 4
  %53 = ptrtoint ptr %add.ptr.i1.1.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %add.ptr.i1.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %52)
  %tobool.not.i10.i.i.i = icmp sgt i32 %52, -1
  br i1 %tobool.not.i10.i.i.i, label %sw.bb1.i.i.i.if.end15.i.i.i.i_crit_edge, label %if.then.i.i.i.i

sw.bb1.i.i.i.if.end15.i.i.i.i_crit_edge:          ; preds = %sw.bb1.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %sw.bb1.i.i.i
  %conv6.i.i.i.i = and i32 %52, 65535
  %55 = ptrtoint ptr %max_qp.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %max_qp.i.i.i.i, align 16
  %conv7.i.i.i.i = zext i16 %56 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv6.i.i.i.i, i32 %conv7.i.i.i.i)
  %cmp.i.i.i.i = icmp ult i32 %conv6.i.i.i.i, %conv7.i.i.i.i
  br i1 %cmp.i.i.i.i, label %if.end.i11.i.i.i, label %if.then.i.i.i.i.do.end.i.i.i.i_crit_edge

if.then.i.i.i.i.do.end.i.i.i.i_crit_edge:         ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i.i.i.i

if.end.i11.i.i.i:                                 ; preds = %if.then.i.i.i.i
  %57 = ptrtoint ptr %qp_tbl.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %qp_tbl.i.i.i.i, align 16
  %arrayidx.i.i.i.i = getelementptr ptr, ptr %58, i32 %conv6.i.i.i.i
  %59 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %cmp10.i.i.i.i = icmp eq ptr %60, null
  br i1 %cmp10.i.i.i.i, label %if.end.i11.i.i.i.do.end.i.i.i.i_crit_edge, label %if.end.i11.i.i.i.if.end15.i.i.i.i_crit_edge

if.end.i11.i.i.i.if.end15.i.i.i.i_crit_edge:      ; preds = %if.end.i11.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.i.i.i.i

if.end.i11.i.i.i.do.end.i.i.i.i_crit_edge:        ; preds = %if.end.i11.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i.i.i.i

do.end.i.i.i.i:                                   ; preds = %if.end.i11.i.i.i.do.end.i.i.i.i_crit_edge, %if.then.i.i.i.i.do.end.i.i.i.i_crit_edge
  %61 = ptrtoint ptr %id.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %id.i.i.i.i, align 4
  %call.i.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, i32 noundef %62, i32 noundef %conv6.i.i.i.i) #18
  br label %ocrdma_dispatch_ibevent.exit.i.i.i

if.end15.i.i.i.i:                                 ; preds = %if.end.i11.i.i.i.if.end15.i.i.i.i_crit_edge, %sw.bb1.i.i.i.if.end15.i.i.i.i_crit_edge
  %qp.1.i.i.i.i = phi ptr [ %60, %if.end.i11.i.i.i.if.end15.i.i.i.i_crit_edge ], [ null, %sw.bb1.i.i.i.if.end15.i.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %54)
  %tobool18.not.i.i.i.i = icmp sgt i32 %54, -1
  br i1 %tobool18.not.i.i.i.i, label %if.end15.i.i.i.i.if.end40.i.i.i.i_crit_edge, label %if.then19.i.i.i.i

if.end15.i.i.i.i.if.end40.i.i.i.i_crit_edge:      ; preds = %if.end15.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end40.i.i.i.i

if.then19.i.i.i.i:                                ; preds = %if.end15.i.i.i.i
  %conv20.i.i.i.i = and i32 %54, 65535
  %63 = ptrtoint ptr %max_cq.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %max_cq.i.i.i.i, align 4
  %conv22.i.i.i.i = zext i16 %64 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv20.i.i.i.i, i32 %conv22.i.i.i.i)
  %cmp23.i.i.i.i = icmp ult i32 %conv20.i.i.i.i, %conv22.i.i.i.i
  br i1 %cmp23.i.i.i.i, label %if.end28.i.i.i.i, label %if.then19.i.i.i.i.do.end34.i.i.i.i_crit_edge

if.then19.i.i.i.i.do.end34.i.i.i.i_crit_edge:     ; preds = %if.then19.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end34.i.i.i.i

if.end28.i.i.i.i:                                 ; preds = %if.then19.i.i.i.i
  %65 = ptrtoint ptr %cq_tbl.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %cq_tbl.i.i, align 4
  %arrayidx27.i.i.i.i = getelementptr ptr, ptr %66, i32 %conv20.i.i.i.i
  %67 = ptrtoint ptr %arrayidx27.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx27.i.i.i.i, align 4
  %cmp29.i.i.i.i = icmp eq ptr %68, null
  br i1 %cmp29.i.i.i.i, label %if.end28.i.i.i.i.do.end34.i.i.i.i_crit_edge, label %if.end28.i.i.i.i.if.end40.i.i.i.i_crit_edge

if.end28.i.i.i.i.if.end40.i.i.i.i_crit_edge:      ; preds = %if.end28.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end40.i.i.i.i

if.end28.i.i.i.i.do.end34.i.i.i.i_crit_edge:      ; preds = %if.end28.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end34.i.i.i.i

do.end34.i.i.i.i:                                 ; preds = %if.end28.i.i.i.i.do.end34.i.i.i.i_crit_edge, %if.then19.i.i.i.i.do.end34.i.i.i.i_crit_edge
  %69 = ptrtoint ptr %id.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %id.i.i.i.i, align 4
  %call38.i.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, i32 noundef %70, i32 noundef %conv20.i.i.i.i) #18
  br label %ocrdma_dispatch_ibevent.exit.i.i.i

if.end40.i.i.i.i:                                 ; preds = %if.end28.i.i.i.i.if.end40.i.i.i.i_crit_edge, %if.end15.i.i.i.i.if.end40.i.i.i.i_crit_edge
  %cq.1.i.i.i.i = phi ptr [ %68, %if.end28.i.i.i.i.if.end40.i.i.i.i_crit_edge ], [ null, %if.end15.i.i.i.i.if.end40.i.i.i.i_crit_edge ]
  %71 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %71, i32 8)
  store i64 0, ptr %4, align 4
  %72 = ptrtoint ptr %ib_evt.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %1, ptr %ib_evt.i.i.i.i, align 4
  %trunc.i.i.i.i = trunc i32 %and.i.i.i.i to i8
  %73 = zext i8 %trunc.i.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values.97)
  switch i8 %trunc.i.i.i.i, label %sw.default.i.i.i.i [
    i8 0, label %sw.bb.i.i.i.i
    i8 1, label %sw.bb41.i.i.i.i
    i8 2, label %sw.bb45.i.i.i.i
    i8 3, label %sw.bb48.i.i.i.i
    i8 4, label %sw.bb52.i.i.i.i
    i8 5, label %sw.bb56.i.i.i.i
    i8 8, label %sw.bb60.i.i.i.i
    i8 14, label %sw.bb63.i.i.i.i
    i8 15, label %sw.bb66.i.i.i.i
    i8 16, label %sw.bb71.i.i.i.i
  ]

sw.bb.i.i.i.i:                                    ; preds = %if.end40.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %74 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %cq.1.i.i.i.i, ptr %4, align 4
  br label %sw.epilog.i.i.i.i

sw.bb41.i.i.i.i:                                  ; preds = %if.end40.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %75 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %cq.1.i.i.i.i, ptr %4, align 4
  br label %sw.epilog.i.i.i.i

sw.bb45.i.i.i.i:                                  ; preds = %if.end40.i.i.i.i
  %76 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %qp.1.i.i.i.i, ptr %4, align 4
  %77 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 1, ptr %5, align 4
  %cmp.i.i.i.i.i = icmp eq ptr %qp.1.i.i.i.i, null
  br i1 %cmp.i.i.i.i.i, label %do.body.i.i.i.i.i, label %if.end.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %sw.bb45.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/infiniband/hw/ocrdma/ocrdma_hw.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 671, 0\0A.popsection", ""() #14, !srcloc !186
  unreachable

if.end.i.i.i.i.i:                                 ; preds = %sw.bb45.i.i.i.i
  %q_lock.i.i.i.i.i.i = getelementptr inbounds %struct.ocrdma_qp, ptr %qp.1.i.i.i.i, i32 0, i32 6
  %call3.i.i.i.i.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %q_lock.i.i.i.i.i.i) #14
  %state.i.i.i.i.i.i = getelementptr inbounds %struct.ocrdma_qp, ptr %qp.1.i.i.i.i, i32 0, i32 15
  %78 = ptrtoint ptr %state.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %state.i.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %79)
  %cmp8.i.i.i.i.i.i = icmp eq i32 %79, 6
  br i1 %cmp8.i.i.i.i.i.i, label %if.end.i.i.i.i.i.ocrdma_process_qpcat_error.exit.i.i.i.i_crit_edge, label %if.end12.i.i.i.i.i.i

if.end.i.i.i.i.i.ocrdma_process_qpcat_error.exit.i.i.i.i_crit_edge: ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ocrdma_process_qpcat_error.exit.i.i.i.i

if.end12.i.i.i.i.i.i:                             ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @ocrdma_flush_qp(ptr noundef nonnull %qp.1.i.i.i.i) #14
  %80 = ptrtoint ptr %state.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 6, ptr %state.i.i.i.i.i.i, align 8
  br label %ocrdma_process_qpcat_error.exit.i.i.i.i

ocrdma_process_qpcat_error.exit.i.i.i.i:          ; preds = %if.end12.i.i.i.i.i.i, %if.end.i.i.i.i.i.ocrdma_process_qpcat_error.exit.i.i.i.i_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %q_lock.i.i.i.i.i.i, i32 noundef %call3.i.i.i.i.i.i) #14
  br label %sw.epilog.i.i.i.i

sw.bb48.i.i.i.i:                                  ; preds = %if.end40.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %81 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %qp.1.i.i.i.i, ptr %4, align 4
  %82 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 3, ptr %5, align 4
  br label %sw.epilog.i.i.i.i

sw.bb52.i.i.i.i:                                  ; preds = %if.end40.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %83 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %qp.1.i.i.i.i, ptr %4, align 4
  %84 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 4, ptr %5, align 4
  br label %sw.epilog.i.i.i.i

sw.bb56.i.i.i.i:                                  ; preds = %if.end40.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %85 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %qp.1.i.i.i.i, ptr %4, align 4
  %86 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 5, ptr %5, align 4
  br label %sw.epilog.i.i.i.i

sw.bb60.i.i.i.i:                                  ; preds = %if.end40.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %87 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 1, ptr %4, align 4
  %88 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 8, ptr %5, align 4
  br label %sw.epilog.i.i.i.i

sw.bb63.i.i.i.i:                                  ; preds = %if.end40.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %srq.i.i.i.i = getelementptr inbounds %struct.ocrdma_qp, ptr %qp.1.i.i.i.i, i32 0, i32 13
  %89 = ptrtoint ptr %srq.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %srq.i.i.i.i, align 4
  %91 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %90, ptr %4, align 4
  %92 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 14, ptr %5, align 4
  br label %sw.epilog.i.i.i.i

sw.bb66.i.i.i.i:                                  ; preds = %if.end40.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %srq67.i.i.i.i = getelementptr inbounds %struct.ocrdma_qp, ptr %qp.1.i.i.i.i, i32 0, i32 13
  %93 = ptrtoint ptr %srq67.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %srq67.i.i.i.i, align 4
  %95 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %94, ptr %4, align 4
  %96 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 15, ptr %5, align 4
  br label %sw.epilog.i.i.i.i

sw.bb71.i.i.i.i:                                  ; preds = %if.end40.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %97 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %qp.1.i.i.i.i, ptr %4, align 4
  %98 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 16, ptr %5, align 4
  br label %sw.epilog.i.i.i.i

sw.default.i.i.i.i:                               ; preds = %if.end40.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call79.i.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.71, i32 noundef %shr.i.i.i.i) #18
  br label %sw.epilog.i.i.i.i

sw.epilog.i.i.i.i:                                ; preds = %sw.default.i.i.i.i, %sw.bb71.i.i.i.i, %sw.bb66.i.i.i.i, %sw.bb63.i.i.i.i, %sw.bb60.i.i.i.i, %sw.bb56.i.i.i.i, %sw.bb52.i.i.i.i, %sw.bb48.i.i.i.i, %ocrdma_process_qpcat_error.exit.i.i.i.i, %sw.bb41.i.i.i.i, %sw.bb.i.i.i.i
  %tobool85.not.i.i.i.i = phi i1 [ true, %sw.default.i.i.i.i ], [ false, %sw.bb71.i.i.i.i ], [ true, %sw.bb66.i.i.i.i ], [ true, %sw.bb63.i.i.i.i ], [ true, %sw.bb60.i.i.i.i ], [ false, %sw.bb56.i.i.i.i ], [ false, %sw.bb52.i.i.i.i ], [ false, %sw.bb48.i.i.i.i ], [ false, %ocrdma_process_qpcat_error.exit.i.i.i.i ], [ true, %sw.bb41.i.i.i.i ], [ true, %sw.bb.i.i.i.i ]
  %tobool105.not.i.i.i.i = phi i1 [ true, %sw.default.i.i.i.i ], [ true, %sw.bb71.i.i.i.i ], [ false, %sw.bb66.i.i.i.i ], [ false, %sw.bb63.i.i.i.i ], [ true, %sw.bb60.i.i.i.i ], [ true, %sw.bb56.i.i.i.i ], [ true, %sw.bb52.i.i.i.i ], [ true, %sw.bb48.i.i.i.i ], [ true, %ocrdma_process_qpcat_error.exit.i.i.i.i ], [ true, %sw.bb41.i.i.i.i ], [ true, %sw.bb.i.i.i.i ]
  %tobool119.not.i.i.i.i = phi i1 [ true, %sw.default.i.i.i.i ], [ true, %sw.bb71.i.i.i.i ], [ true, %sw.bb66.i.i.i.i ], [ true, %sw.bb63.i.i.i.i ], [ false, %sw.bb60.i.i.i.i ], [ true, %sw.bb56.i.i.i.i ], [ true, %sw.bb52.i.i.i.i ], [ true, %sw.bb48.i.i.i.i ], [ true, %ocrdma_process_qpcat_error.exit.i.i.i.i ], [ true, %sw.bb41.i.i.i.i ], [ true, %sw.bb.i.i.i.i ]
  %tobool94.not.i.i.i.i = phi i1 [ true, %sw.default.i.i.i.i ], [ true, %sw.bb71.i.i.i.i ], [ true, %sw.bb66.i.i.i.i ], [ true, %sw.bb63.i.i.i.i ], [ true, %sw.bb60.i.i.i.i ], [ true, %sw.bb56.i.i.i.i ], [ true, %sw.bb52.i.i.i.i ], [ true, %sw.bb48.i.i.i.i ], [ true, %ocrdma_process_qpcat_error.exit.i.i.i.i ], [ false, %sw.bb41.i.i.i.i ], [ false, %sw.bb.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %shr.i.i.i.i)
  %cmp80.i.i.i.i = icmp ult i32 %shr.i.i.i.i, 17
  br i1 %cmp80.i.i.i.i, label %if.then82.i.i.i.i, label %sw.epilog.i.i.i.i.if.end84.i.i.i.i_crit_edge

sw.epilog.i.i.i.i.if.end84.i.i.i.i_crit_edge:     ; preds = %sw.epilog.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end84.i.i.i.i

if.then82.i.i.i.i:                                ; preds = %sw.epilog.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx83.i.i.i.i = getelementptr %struct.ocrdma_dev, ptr %1, i32 0, i32 48, i32 %shr.i.i.i.i
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx83.i.i.i.i, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr %arrayidx83.i.i.i.i, i32 1, i32 3, i32 1) #14
  %99 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx83.i.i.i.i, ptr %arrayidx83.i.i.i.i, i32 1, ptr elementtype(i32) %arrayidx83.i.i.i.i) #14, !srcloc !187
  br label %if.end84.i.i.i.i

if.end84.i.i.i.i:                                 ; preds = %if.then82.i.i.i.i, %sw.epilog.i.i.i.i.if.end84.i.i.i.i_crit_edge
  br i1 %tobool85.not.i.i.i.i, label %if.else.i.i.i.i, label %if.then86.i.i.i.i

if.then86.i.i.i.i:                                ; preds = %if.end84.i.i.i.i
  %event_handler.i.i.i.i = getelementptr inbounds %struct.ib_qp, ptr %qp.1.i.i.i.i, i32 0, i32 15
  %100 = ptrtoint ptr %event_handler.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %event_handler.i.i.i.i, align 4
  %tobool88.not.i.i.i.i = icmp eq ptr %101, null
  br i1 %tobool88.not.i.i.i.i, label %if.then86.i.i.i.i.ocrdma_dispatch_ibevent.exit.i.i.i_crit_edge, label %if.then89.i.i.i.i

if.then86.i.i.i.i.ocrdma_dispatch_ibevent.exit.i.i.i_crit_edge: ; preds = %if.then86.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ocrdma_dispatch_ibevent.exit.i.i.i

if.then89.i.i.i.i:                                ; preds = %if.then86.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %qp_context.i.i.i.i = getelementptr inbounds %struct.ib_qp, ptr %qp.1.i.i.i.i, i32 0, i32 16
  %102 = ptrtoint ptr %qp_context.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %qp_context.i.i.i.i, align 8
  call void %101(ptr noundef nonnull %ib_evt.i.i.i.i, ptr noundef %103) #14
  br label %ocrdma_dispatch_ibevent.exit.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end84.i.i.i.i
  br i1 %tobool94.not.i.i.i.i, label %if.else104.i.i.i.i, label %if.then95.i.i.i.i

if.then95.i.i.i.i:                                ; preds = %if.else.i.i.i.i
  %event_handler97.i.i.i.i = getelementptr inbounds %struct.ib_cq, ptr %cq.1.i.i.i.i, i32 0, i32 3
  %104 = ptrtoint ptr %event_handler97.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %event_handler97.i.i.i.i, align 4
  %tobool98.not.i.i.i.i = icmp eq ptr %105, null
  br i1 %tobool98.not.i.i.i.i, label %if.then95.i.i.i.i.ocrdma_dispatch_ibevent.exit.i.i.i_crit_edge, label %if.then99.i.i.i.i

if.then95.i.i.i.i.ocrdma_dispatch_ibevent.exit.i.i.i_crit_edge: ; preds = %if.then95.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ocrdma_dispatch_ibevent.exit.i.i.i

if.then99.i.i.i.i:                                ; preds = %if.then95.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %cq_context.i.i.i.i = getelementptr inbounds %struct.ib_cq, ptr %cq.1.i.i.i.i, i32 0, i32 4
  %106 = ptrtoint ptr %cq_context.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %cq_context.i.i.i.i, align 16
  call void %105(ptr noundef nonnull %ib_evt.i.i.i.i, ptr noundef %107) #14
  br label %ocrdma_dispatch_ibevent.exit.i.i.i

if.else104.i.i.i.i:                               ; preds = %if.else.i.i.i.i
  br i1 %tobool105.not.i.i.i.i, label %if.else118.i.i.i.i, label %if.then106.i.i.i.i

if.then106.i.i.i.i:                               ; preds = %if.else104.i.i.i.i
  %srq107.i.i.i.i = getelementptr inbounds %struct.ocrdma_qp, ptr %qp.1.i.i.i.i, i32 0, i32 13
  %108 = ptrtoint ptr %srq107.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %srq107.i.i.i.i, align 4
  %event_handler109.i.i.i.i = getelementptr inbounds %struct.ib_srq, ptr %109, i32 0, i32 3
  %110 = ptrtoint ptr %event_handler109.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %event_handler109.i.i.i.i, align 4
  %tobool110.not.i.i.i.i = icmp eq ptr %111, null
  br i1 %tobool110.not.i.i.i.i, label %if.then106.i.i.i.i.ocrdma_dispatch_ibevent.exit.i.i.i_crit_edge, label %if.then111.i.i.i.i

if.then106.i.i.i.i.ocrdma_dispatch_ibevent.exit.i.i.i_crit_edge: ; preds = %if.then106.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ocrdma_dispatch_ibevent.exit.i.i.i

if.then111.i.i.i.i:                               ; preds = %if.then106.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %srq_context.i.i.i.i = getelementptr inbounds %struct.ib_srq, ptr %109, i32 0, i32 4
  %112 = ptrtoint ptr %srq_context.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %srq_context.i.i.i.i, align 16
  call void %111(ptr noundef nonnull %ib_evt.i.i.i.i, ptr noundef %113) #14
  br label %ocrdma_dispatch_ibevent.exit.i.i.i

if.else118.i.i.i.i:                               ; preds = %if.else104.i.i.i.i
  br i1 %tobool119.not.i.i.i.i, label %if.else118.i.i.i.i.ocrdma_dispatch_ibevent.exit.i.i.i_crit_edge, label %do.end123.i.i.i.i

if.else118.i.i.i.i.ocrdma_dispatch_ibevent.exit.i.i.i_crit_edge: ; preds = %if.else118.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ocrdma_dispatch_ibevent.exit.i.i.i

do.end123.i.i.i.i:                                ; preds = %if.else118.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.79) #18
  call void @ib_dispatch_event(ptr noundef nonnull %ib_evt.i.i.i.i) #14
  br label %ocrdma_dispatch_ibevent.exit.i.i.i

ocrdma_dispatch_ibevent.exit.i.i.i:               ; preds = %do.end123.i.i.i.i, %if.else118.i.i.i.i.ocrdma_dispatch_ibevent.exit.i.i.i_crit_edge, %if.then111.i.i.i.i, %if.then106.i.i.i.i.ocrdma_dispatch_ibevent.exit.i.i.i_crit_edge, %if.then99.i.i.i.i, %if.then95.i.i.i.i.ocrdma_dispatch_ibevent.exit.i.i.i_crit_edge, %if.then89.i.i.i.i, %if.then86.i.i.i.i.ocrdma_dispatch_ibevent.exit.i.i.i_crit_edge, %do.end34.i.i.i.i, %do.end.i.i.i.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ib_evt.i.i.i.i) #14
  br label %if.end8.i.i

sw.bb2.i.i.i:                                     ; preds = %if.then2.i.i
  %and.i13.i.i.i = lshr i32 %45, 16
  %trunc.i14.i.i.i = trunc i32 %and.i13.i.i.i to i8
  %114 = zext i8 %trunc.i14.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %114, ptr @__sancov_gen_cov_switch_values.98)
  switch i8 %trunc.i14.i.i.i, label %sw.bb2.i.i.i.if.end8.i.i_crit_edge [
    i8 3, label %sw.bb.i17.i.i.i
    i8 2, label %sw.bb6.i.i.i.i
  ]

sw.bb2.i.i.i.if.end8.i.i_crit_edge:               ; preds = %sw.bb2.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8.i.i

sw.bb.i17.i.i.i:                                  ; preds = %sw.bb2.i.i.i
  %and1.i15.i.i.i = and i32 %33, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i15.i.i.i)
  %tobool.not.i16.i.i.i = icmp eq i32 %and1.i15.i.i.i, 0
  br i1 %tobool.not.i16.i.i.i, label %sw.bb.i17.i.i.i.if.end8.i.i_crit_edge, label %if.then.i18.i.i.i

sw.bb.i17.i.i.i.if.end8.i.i_crit_edge:            ; preds = %sw.bb.i17.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8.i.i

if.then.i18.i.i.i:                                ; preds = %sw.bb.i17.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %shr5.i.i.i.i = lshr i32 %33, 16
  %conv.i.i.i.i = trunc i32 %shr5.i.i.i.i to i16
  %115 = ptrtoint ptr %pvid.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 %conv.i.i.i.i, ptr %pvid.i.i.i.i, align 4
  br label %if.end8.i.i

sw.bb6.i.i.i.i:                                   ; preds = %sw.bb2.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i19.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %update_sl.i.i.i.i, i32 noundef 4) #14
  %116 = ptrtoint ptr %update_sl.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store volatile i32 1, ptr %update_sl.i.i.i.i, align 4
  br label %if.end8.i.i

do.end.i.i.i:                                     ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %shr.i.i.i = and i32 %and.i.i.i, 255
  %117 = ptrtoint ptr %id.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %id.i.i.i.i, align 4
  %call.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.69, i32 noundef %118, i32 noundef %shr.i.i.i) #18
  br label %if.end8.i.i

if.else.i.i:                                      ; preds = %for.body.i.preheader.i.i
  %and4.i.i = and i32 %45, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i)
  %tobool5.not.i.i = icmp eq i32 %and4.i.i, 0
  br i1 %tobool5.not.i.i, label %if.else.i.i.if.end8.i.i_crit_edge, label %if.then6.i.i

if.else.i.i.if.end8.i.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8.i.i

if.then6.i.i:                                     ; preds = %if.else.i.i
  %119 = ptrtoint ptr %tag.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %tag.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %120, i32 %37)
  %cmp.i.i.i = icmp eq i32 %120, %37
  br i1 %cmp.i.i.i, label %land.lhs.true.i.i.i, label %if.then6.i.i.do.end.i3.i.i_crit_edge

if.then6.i.i.do.end.i3.i.i_crit_edge:             ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i3.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then6.i.i
  %121 = ptrtoint ptr %cmd_done.i.i.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %cmd_done.i.i.i, align 4, !range !177
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %122)
  %cmp2.i.i.i = icmp eq i8 %122, 0
  br i1 %cmp2.i.i.i, label %if.then.i.i.i, label %land.lhs.true.i.i.i.do.end.i3.i.i_crit_edge

land.lhs.true.i.i.i.do.end.i3.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i3.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv4.i.i.i = trunc i32 %33 to i16
  %123 = ptrtoint ptr %cqe_status.i.i.i to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 %conv4.i.i.i, ptr %cqe_status.i.i.i, align 4
  %124 = ptrtoint ptr %.add.ptr.i19.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %.add.ptr.i19.i.i, align 4
  %shr8.i.i.i = lshr i32 %125, 16
  %conv9.i.i.i = trunc i32 %shr8.i.i.i to i16
  %126 = ptrtoint ptr %ext_status.i.i.i to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 %conv9.i.i.i, ptr %ext_status.i.i.i, align 2
  %127 = ptrtoint ptr %cmd_done.i.i.i to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 1, ptr %cmd_done.i.i.i, align 4
  call void @__wake_up(ptr noundef %cmd_wait.i.i.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  br label %if.end8.i.i

do.end.i3.i.i:                                    ; preds = %land.lhs.true.i.i.i.do.end.i3.i.i_crit_edge, %if.then6.i.i.do.end.i3.i.i_crit_edge
  %call.i2.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.84, i32 noundef %37, i32 noundef %120) #18
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %do.end.i3.i.i, %if.then.i.i.i, %if.else.i.i.if.end8.i.i_crit_edge, %do.end.i.i.i, %sw.bb6.i.i.i.i, %if.then.i18.i.i.i, %sw.bb.i17.i.i.i.if.end8.i.i_crit_edge, %sw.bb2.i.i.i.if.end8.i.i_crit_edge, %ocrdma_dispatch_ibevent.exit.i.i.i, %if.then3.i.i.i.i, %if.end.i.i.i.i.if.end8.i.i_crit_edge, %sw.bb.i.i.i.if.end8.i.i_crit_edge
  %128 = call ptr @memset(ptr %.add.ptr.i19.i.i, i32 0, i32 16)
  %129 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %tail.i.i.i, align 4
  %131 = add i16 %130, 1
  %132 = and i16 %131, 255
  store i16 %132, ptr %tail.i.i.i, align 4
  %133 = ptrtoint ptr %cq.i.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %cq.i.i.i, align 8
  %135 = shl nuw nsw i16 %132, 4
  %mul.i.i.i = zext i16 %135 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %134, i32 %mul.i.i.i
  %valid_ae_cmpl_cons.i.i.i = getelementptr inbounds %struct.ocrdma_mcqe, ptr %add.ptr.i.i.i, i32 0, i32 3
  %136 = ptrtoint ptr %valid_ae_cmpl_cons.i.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %valid_ae_cmpl_cons.i.i.i, align 4
  %.mask.i.i.i = and i32 %137, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %.mask.i.i.i, 0
  %cmp25.i.i = icmp eq ptr %add.ptr.i.i.i, null
  %cmp.i.i = select i1 %tobool.not.i.i.i, i1 true, i1 %cmp25.i.i
  br i1 %cmp.i.i, label %while.end.loopexit.i.i, label %if.end8.i.i.for.body.i.preheader.i.i_crit_edge

if.end8.i.i.for.body.i.preheader.i.i_crit_edge:   ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.preheader.i.i

while.end.loopexit.i.i:                           ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %phi.cast.i.i = zext i16 %add.i.i to i32
  %phi.bo.i.i = shl nuw i32 %phi.cast.i.i, 16
  %phi.bo.i = or i32 %phi.bo.i.i, 536870912
  br label %ocrdma_mq_cq_handler.exit.i

ocrdma_mq_cq_handler.exit.i:                      ; preds = %while.end.loopexit.i.i, %if.then.i.ocrdma_mq_cq_handler.exit.i_crit_edge
  %cqe_popped.0.lcssa.i.i = phi i32 [ 536870912, %if.then.i.ocrdma_mq_cq_handler.exit.i_crit_edge ], [ %phi.bo.i, %while.end.loopexit.i.i ]
  %138 = ptrtoint ptr %id.i to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %id.i, align 8
  %conv.i5.i.i = zext i16 %139 to i32
  %and.i6.i.i = and i32 %conv.i5.i.i, 1023
  %and3.i.i.i = shl nuw nsw i32 %conv.i5.i.i, 1
  %shl.i.i.i = and i32 %and3.i.i.i, 6144
  %or4.i.i.i = or i32 %and.i6.i.i, %cqe_popped.0.lcssa.i.i
  %or11.i.i.i = or i32 %or4.i.i.i, %shl.i.i.i
  %140 = ptrtoint ptr %nic_info.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %nic_info.i, align 8
  %add.ptr.i8.i.i = getelementptr i8, ptr %141, i32 288
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !174
  call void @arm_heavy_mb() #14
  %142 = call i32 @llvm.bswap.i32(i32 %or11.i.i.i) #14
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i.i, i32 %142) #14, !srcloc !175
  br label %if.end25

if.else.i:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_const_cmp2(i16 2047, i16 %conv24)
  %cmp.i7.i = icmp ugt i16 %conv24, 2047
  br i1 %cmp.i7.i, label %do.body.i.i, label %if.end.i.i

do.body.i.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/infiniband/hw/ocrdma/ocrdma_hw.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 971, 0\0A.popsection", ""() #14, !srcloc !188
  unreachable

if.end.i.i:                                       ; preds = %if.else.i
  %143 = ptrtoint ptr %cq_tbl.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %cq_tbl.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %144, i32 %shr23
  %145 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %arrayidx.i.i, align 4
  %cmp5.i.i = icmp eq ptr %146, null
  br i1 %cmp5.i.i, label %if.end.i.i.if.end25_crit_edge, label %if.end8.i9.i

if.end.i.i.if.end25_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

if.end8.i9.i:                                     ; preds = %if.end.i.i
  %comp_handler.i.i = getelementptr inbounds %struct.ib_cq, ptr %146, i32 0, i32 2
  %147 = ptrtoint ptr %comp_handler.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %comp_handler.i.i, align 8
  %tobool.not.i8.i = icmp eq ptr %148, null
  br i1 %tobool.not.i8.i, label %if.end8.i9.i.if.end24.i.i_crit_edge, label %do.body11.i.i

if.end8.i9.i.if.end24.i.i_crit_edge:              ; preds = %if.end8.i9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24.i.i

do.body11.i.i:                                    ; preds = %if.end8.i9.i
  call void @__sanitizer_cov_trace_pc() #16
  %comp_handler_lock.i.i = getelementptr inbounds %struct.ocrdma_cq, ptr %146, i32 0, i32 9
  %call14.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %comp_handler_lock.i.i) #14
  %149 = ptrtoint ptr %comp_handler.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %comp_handler.i.i, align 8
  %cq_context.i.i = getelementptr inbounds %struct.ib_cq, ptr %146, i32 0, i32 4
  %151 = ptrtoint ptr %cq_context.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %cq_context.i.i, align 16
  call void %150(ptr noundef nonnull %146, ptr noundef %152) #14
  call void @_raw_spin_unlock_irqrestore(ptr noundef %comp_handler_lock.i.i, i32 noundef %call14.i.i) #14
  br label %if.end24.i.i

if.end24.i.i:                                     ; preds = %do.body11.i.i, %if.end8.i9.i.if.end24.i.i_crit_edge
  %call2.i.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %flush_q_lock.i.i.i) #14
  %sq_head.i.i.i.i = getelementptr inbounds %struct.ocrdma_cq, ptr %146, i32 0, i32 16
  %153 = ptrtoint ptr %sq_head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %cur.02.i.i.i.i = load ptr, ptr %sq_head.i.i.i.i, align 4
  %cmp.i.not3.i.i.i.i = icmp eq ptr %cur.02.i.i.i.i, %sq_head.i.i.i.i
  br i1 %cmp.i.not3.i.i.i.i, label %if.end24.i.i.if.then.i.i12.i_crit_edge, label %if.end24.i.i.for.body.i.i.i.i_crit_edge

if.end24.i.i.for.body.i.i.i.i_crit_edge:          ; preds = %if.end24.i.i
  br label %for.body.i.i.i.i

if.end24.i.i.if.then.i.i12.i_crit_edge:           ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.i12.i

for.body.i.i.i.i:                                 ; preds = %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge, %if.end24.i.i.for.body.i.i.i.i_crit_edge
  %cur.04.i.i.i.i = phi ptr [ %cur.0.i.i.i.i, %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ %cur.02.i.i.i.i, %if.end24.i.i.for.body.i.i.i.i_crit_edge ]
  %srq.i.i.i10.i = getelementptr i8, ptr %cur.04.i.i.i.i, i32 60
  %154 = ptrtoint ptr %srq.i.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %srq.i.i.i10.i, align 4
  %tobool6.not.i.i.i.i = icmp eq ptr %155, null
  br i1 %tobool6.not.i.i.i.i, label %if.end8.i.i.i.i, label %for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge

for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge:       ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i.i.i

if.end8.i.i.i.i:                                  ; preds = %for.body.i.i.i.i
  %sq_cq.i.i.i.i = getelementptr i8, ptr %cur.04.i.i.i.i, i32 -4
  %156 = ptrtoint ptr %sq_cq.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %sq_cq.i.i.i.i, align 4
  %rq_cq.i.i.i.i = getelementptr i8, ptr %cur.04.i.i.i.i, i32 56
  %158 = ptrtoint ptr %rq_cq.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %rq_cq.i.i.i.i, align 8
  %cmp.i.i.i11.i = icmp eq ptr %157, %159
  br i1 %cmp.i.i.i11.i, label %if.end8.i.i.i.i.for.inc.i.i.i.i_crit_edge, label %_ocrdma_qp_buddy_cq_handler.exit.i.i.i

if.end8.i.i.i.i.for.inc.i.i.i.i_crit_edge:        ; preds = %if.end8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i.i.i

for.inc.i.i.i.i:                                  ; preds = %if.end8.i.i.i.i.for.inc.i.i.i.i_crit_edge, %for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge
  %160 = ptrtoint ptr %cur.04.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %cur.0.i.i.i.i = load ptr, ptr %cur.04.i.i.i.i, align 4
  %cmp.i.not.i.i.i.i = icmp eq ptr %cur.0.i.i.i.i, %sq_head.i.i.i.i
  br i1 %cmp.i.not.i.i.i.i, label %for.inc.i.i.i.i.if.then.i.i12.i_crit_edge, label %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge

for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge:       ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i.i.i

for.inc.i.i.i.i.if.then.i.i12.i_crit_edge:        ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.i12.i

_ocrdma_qp_buddy_cq_handler.exit.i.i.i:           ; preds = %if.end8.i.i.i.i
  %cmp12.i.i.i.i = icmp eq ptr %157, %146
  %..i.i.i.i = select i1 %cmp12.i.i.i.i, ptr %159, ptr %157
  %cmp6.i.i.i = icmp eq ptr %..i.i.i.i, null
  br i1 %cmp6.i.i.i, label %_ocrdma_qp_buddy_cq_handler.exit.i.i.i.if.then.i.i12.i_crit_edge, label %if.end.thread69.i.i.i

_ocrdma_qp_buddy_cq_handler.exit.i.i.i.if.then.i.i12.i_crit_edge: ; preds = %_ocrdma_qp_buddy_cq_handler.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.i12.i

if.end.thread69.i.i.i:                            ; preds = %_ocrdma_qp_buddy_cq_handler.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @_raw_spin_unlock_irqrestore(ptr noundef %flush_q_lock.i.i.i, i32 noundef %call2.i.i.i) #14
  br label %land.lhs.true.i.i14.i

if.then.i.i12.i:                                  ; preds = %_ocrdma_qp_buddy_cq_handler.exit.i.i.i.if.then.i.i12.i_crit_edge, %for.inc.i.i.i.i.if.then.i.i12.i_crit_edge, %if.end24.i.i.if.then.i.i12.i_crit_edge
  %rq_head.i44.i.i.i = getelementptr inbounds %struct.ocrdma_cq, ptr %146, i32 0, i32 17
  %161 = ptrtoint ptr %rq_head.i44.i.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %cur.02.i45.i.i.i = load ptr, ptr %rq_head.i44.i.i.i, align 4
  %cmp.i.not3.i46.i.i.i = icmp eq ptr %cur.02.i45.i.i.i, %rq_head.i44.i.i.i
  br i1 %cmp.i.not3.i46.i.i.i, label %if.then.i.i12.i.if.end.thread.i.i.i_crit_edge, label %if.then.i.i12.i.for.body.i52.i.i.i_crit_edge

if.then.i.i12.i.for.body.i52.i.i.i_crit_edge:     ; preds = %if.then.i.i12.i
  br label %for.body.i52.i.i.i

if.then.i.i12.i.if.end.thread.i.i.i_crit_edge:    ; preds = %if.then.i.i12.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.thread.i.i.i

for.body.i52.i.i.i:                               ; preds = %for.inc.i62.i.i.i.for.body.i52.i.i.i_crit_edge, %if.then.i.i12.i.for.body.i52.i.i.i_crit_edge
  %cur.04.i48.i.i.i = phi ptr [ %cur.0.i60.i.i.i, %for.inc.i62.i.i.i.for.body.i52.i.i.i_crit_edge ], [ %cur.02.i45.i.i.i, %if.then.i.i12.i.for.body.i52.i.i.i_crit_edge ]
  %srq.i50.i.i.i = getelementptr i8, ptr %cur.04.i48.i.i.i, i32 -4
  %162 = ptrtoint ptr %srq.i50.i.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %srq.i50.i.i.i, align 4
  %tobool6.not.i51.i.i.i = icmp eq ptr %163, null
  br i1 %tobool6.not.i51.i.i.i, label %if.end8.i56.i.i.i, label %for.body.i52.i.i.i.for.inc.i62.i.i.i_crit_edge

for.body.i52.i.i.i.for.inc.i62.i.i.i_crit_edge:   ; preds = %for.body.i52.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i62.i.i.i

if.end8.i56.i.i.i:                                ; preds = %for.body.i52.i.i.i
  %sq_cq.i53.i.i.i = getelementptr i8, ptr %cur.04.i48.i.i.i, i32 -68
  %164 = ptrtoint ptr %sq_cq.i53.i.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %sq_cq.i53.i.i.i, align 4
  %rq_cq.i54.i.i.i = getelementptr i8, ptr %cur.04.i48.i.i.i, i32 -8
  %166 = ptrtoint ptr %rq_cq.i54.i.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %rq_cq.i54.i.i.i, align 8
  %cmp.i55.i.i.i = icmp eq ptr %165, %167
  br i1 %cmp.i55.i.i.i, label %if.end8.i56.i.i.i.for.inc.i62.i.i.i_crit_edge, label %if.end.i.i.i

if.end8.i56.i.i.i.for.inc.i62.i.i.i_crit_edge:    ; preds = %if.end8.i56.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i62.i.i.i

for.inc.i62.i.i.i:                                ; preds = %if.end8.i56.i.i.i.for.inc.i62.i.i.i_crit_edge, %for.body.i52.i.i.i.for.inc.i62.i.i.i_crit_edge
  %168 = ptrtoint ptr %cur.04.i48.i.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %cur.0.i60.i.i.i = load ptr, ptr %cur.04.i48.i.i.i, align 4
  %cmp.i.not.i61.i.i.i = icmp eq ptr %cur.0.i60.i.i.i, %rq_head.i44.i.i.i
  br i1 %cmp.i.not.i61.i.i.i, label %for.inc.i62.i.i.i.if.end.thread.i.i.i_crit_edge, label %for.inc.i62.i.i.i.for.body.i52.i.i.i_crit_edge

for.inc.i62.i.i.i.for.body.i52.i.i.i_crit_edge:   ; preds = %for.inc.i62.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i52.i.i.i

for.inc.i62.i.i.i.if.end.thread.i.i.i_crit_edge:  ; preds = %for.inc.i62.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.thread.i.i.i

if.end.thread.i.i.i:                              ; preds = %for.inc.i62.i.i.i.if.end.thread.i.i.i_crit_edge, %if.then.i.i12.i.if.end.thread.i.i.i_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %flush_q_lock.i.i.i, i32 noundef %call2.i.i.i) #14
  br label %if.end25

if.end.i.i.i:                                     ; preds = %if.end8.i56.i.i.i
  %cmp12.i57.i.i.i = icmp eq ptr %165, %146
  %..i58.i.i.i = select i1 %cmp12.i57.i.i.i, ptr %167, ptr %165
  call void @_raw_spin_unlock_irqrestore(ptr noundef %flush_q_lock.i.i.i, i32 noundef %call2.i.i.i) #14
  %tobool.not.i.i13.i = icmp eq ptr %..i58.i.i.i, null
  br i1 %tobool.not.i.i13.i, label %if.end.i.i.i.if.end25_crit_edge, label %if.end.i.i.i.land.lhs.true.i.i14.i_crit_edge

if.end.i.i.i.land.lhs.true.i.i14.i_crit_edge:     ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true.i.i14.i

if.end.i.i.i.if.end25_crit_edge:                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

land.lhs.true.i.i14.i:                            ; preds = %if.end.i.i.i.land.lhs.true.i.i14.i_crit_edge, %if.end.thread69.i.i.i
  %bcq.072.i.i.i = phi ptr [ %..i.i.i.i, %if.end.thread69.i.i.i ], [ %..i58.i.i.i, %if.end.i.i.i.land.lhs.true.i.i14.i_crit_edge ]
  %comp_handler.i.i.i = getelementptr inbounds %struct.ib_cq, ptr %bcq.072.i.i.i, i32 0, i32 2
  %169 = ptrtoint ptr %comp_handler.i.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %comp_handler.i.i.i, align 8
  %tobool10.not.i.i.i = icmp eq ptr %170, null
  br i1 %tobool10.not.i.i.i, label %land.lhs.true.i.i14.i.if.end25_crit_edge, label %do.body13.i.i.i

land.lhs.true.i.i14.i.if.end25_crit_edge:         ; preds = %land.lhs.true.i.i14.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

do.body13.i.i.i:                                  ; preds = %land.lhs.true.i.i14.i
  call void @__sanitizer_cov_trace_pc() #16
  %comp_handler_lock.i.i.i = getelementptr inbounds %struct.ocrdma_cq, ptr %bcq.072.i.i.i, i32 0, i32 9
  %call20.i.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %comp_handler_lock.i.i.i) #14
  %171 = ptrtoint ptr %comp_handler.i.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %comp_handler.i.i.i, align 8
  %cq_context.i.i.i = getelementptr inbounds %struct.ib_cq, ptr %bcq.072.i.i.i, i32 0, i32 4
  %173 = ptrtoint ptr %cq_context.i.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %cq_context.i.i.i, align 16
  call void %172(ptr noundef nonnull %bcq.072.i.i.i, ptr noundef %174) #14
  call void @_raw_spin_unlock_irqrestore(ptr noundef %comp_handler_lock.i.i.i, i32 noundef %call20.i.i.i) #14
  br label %if.end25

if.end25:                                         ; preds = %do.body13.i.i.i, %land.lhs.true.i.i14.i.if.end25_crit_edge, %if.end.i.i.i.if.end25_crit_edge, %if.end.thread.i.i.i, %if.end.i.i.if.end25_crit_edge, %ocrdma_mq_cq_handler.exit.i, %if.end13.if.end25_crit_edge
  %175 = ptrtoint ptr %tail.i to i32
  call void @__asan_load2_noabort(i32 %175)
  %176 = load i16, ptr %tail.i, align 4
  %177 = add i16 %176, 1
  %178 = and i16 %177, 4095
  store i16 %178, ptr %tail.i, align 4
  %dec = add i32 %budget.0, -1
  %179 = icmp ult i32 %budget.0, 2
  br i1 %179, label %if.end25.do.end30_crit_edge, label %if.end25.do.body_crit_edge

if.end25.do.body_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

if.end25.do.end30_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end30

do.end30:                                         ; preds = %if.end25.do.end30_crit_edge, %if.end.do.end30_crit_edge
  %eq_intr_cnt = getelementptr inbounds %struct.ocrdma_eq, ptr %handle, i32 0, i32 5, i32 1
  %180 = ptrtoint ptr %eq_intr_cnt to i32
  call void @__asan_load8_noabort(i32 %180)
  %181 = load i64, ptr %eq_intr_cnt, align 8
  %inc = add i64 %181, 1
  store i64 %inc, ptr %eq_intr_cnt, align 8
  %182 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %182)
  %183 = load i16, ptr %id, align 8
  %conv.i49 = zext i16 %183 to i32
  %and.i50 = and i32 %conv.i49, 511
  %and3.i51 = shl nuw nsw i32 %conv.i49, 2
  %shl.i52 = and i32 %and3.i51, 63488
  %or4.i53 = or i32 %and.i50, %shl.i52
  %or13.i56 = or i32 %or4.i53, 536872448
  %184 = ptrtoint ptr %nic_info.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %nic_info.i, align 8
  %add.ptr.i58 = getelementptr i8, ptr %185, i32 288
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !174
  call void @arm_heavy_mb() #14
  %186 = call i32 @llvm.bswap.i32(i32 %or13.i56) #14
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i58, i32 %186) #14, !srcloc !175
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @be_roce_mcc_cmd(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocrdma_update_link_state(ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_dispatch_event(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_free(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 102)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 102)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #12 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !16, !17, !18, !19, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !33, !35, !36, !37, !39, !40, !41, !42, !44, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !64, !66, !67, !68, !69, !71, !72, !74, !75, !76, !77, !79, !80, !81, !82, !84, !85, !86, !87, !89, !90, !91, !92, !94, !95, !96, !97, !99, !100, !101, !103, !104, !105, !106, !108, !109, !110, !111, !112, !113, !114, !115, !117, !118, !119, !121, !122, !123, !125, !127, !128, !129, !130, !132, !133, !134, !135, !137, !138, !139, !140, !142, !143, !144, !146, !147, !148, !150, !151, !152, !153, !154, !156, !157, !158, !159, !161, !162, !164}
!llvm.module.flags = !{!165, !166, !167, !168, !169, !170, !171, !172}
!llvm.ident = !{!173}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_hw.c", i32 267, i32 14}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_hw.c", i32 273, i32 9}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_hw.c", i32 275, i32 9}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_hw.c", i32 277, i32 9}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_hw.c", i32 1602, i32 3}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @ocrdma_alloc_pd_pool._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @ocrdma_alloc_pd_pool._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_hw.c", i32 1789, i32 3}
!16 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @ocrdma_mbx_create_cq._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @ocrdma_mbx_create_cq._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_hw.c", i32 2050, i32 3}
!21 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @ocrdma_reg_mr._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @ocrdma_reg_mr._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_hw.c", i32 2073, i32 3}
!26 = !{ptr @ocrdma_reg_mr._entry.11, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @ocrdma_reg_mr._entry_ptr.13, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_hw.c", i32 2454, i32 2}
!30 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @ocrdma_mbx_create_qp._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @ocrdma_mbx_create_qp._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_hw.c", i32 2457, i32 2}
!35 = !{ptr @ocrdma_mbx_create_qp._entry.16, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @ocrdma_mbx_create_qp._entry_ptr.18, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_hw.c", i32 2762, i32 3}
!39 = !{ptr @.str.20, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @ocrdma_mbx_create_srq._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @ocrdma_mbx_create_srq._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_hw.c", i32 3007, i32 4}
!44 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @ocrdma_init_service_level._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @ocrdma_init_service_level._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_hw.c", i32 3023, i32 3}
!49 = !{ptr @ocrdma_init_service_level._entry.23, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @ocrdma_init_service_level._entry_ptr.25, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.27, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_hw.c", i32 3026, i32 3}
!53 = !{ptr @ocrdma_init_service_level._entry.26, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @ocrdma_init_service_level._entry_ptr.28, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.29, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_hw.c", i32 3226, i32 2}
!57 = !{ptr @ocrdma_init_hw._entry, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @ocrdma_init_hw._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.30, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_hw.c", i32 1135, i32 3}
!61 = !{ptr @.str.31, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @ocrdma_nonemb_mbx_cmd._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @ocrdma_nonemb_mbx_cmd._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_hw.c", i32 1095, i32 3}
!66 = !{ptr @.str.33, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @ocrdma_mbx_cmd._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @ocrdma_mbx_cmd._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @ocrdma_mbx_cmd._entry.34, !70, !"_entry", i1 false, i1 false}
!70 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_hw.c", i32 1099, i32 4}
!71 = !{ptr @ocrdma_mbx_cmd._entry_ptr.35, !70, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_hw.c", i32 1065, i32 3}
!74 = !{ptr @.str.37, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @ocrdma_wait_mqe_cmpl._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @ocrdma_wait_mqe_cmpl._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.38, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_hw.c", i32 2197, i32 3}
!79 = !{ptr @.str.39, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @ocrdma_set_create_qp_sq_cmd._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @ocrdma_set_create_qp_sq_cmd._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.40, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_hw.c", i32 2247, i32 3}
!84 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @ocrdma_set_create_qp_rq_cmd._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @ocrdma_set_create_qp_rq_cmd._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.42, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_hw.c", i32 2613, i32 4}
!89 = !{ptr @.str.43, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @ocrdma_set_qp_params._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @ocrdma_set_qp_params._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.44, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_hw.c", i32 2552, i32 4}
!94 = !{ptr @.str.45, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @ocrdma_set_av_params._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @ocrdma_set_av_params._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.47, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_hw.c", i32 2554, i32 4}
!99 = !{ptr @ocrdma_set_av_params._entry.46, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @ocrdma_set_av_params._entry_ptr.48, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.49, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_hw.c", i32 2933, i32 3}
!103 = !{ptr @.str.50, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @ocrdma_parse_dcbxcfg_rsp._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @ocrdma_parse_dcbxcfg_rsp._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.52, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_hw.c", i32 2939, i32 3}
!108 = !{ptr @ocrdma_parse_dcbxcfg_rsp._entry.51, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @ocrdma_parse_dcbxcfg_rsp._entry_ptr.53, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.54, !107, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @.str.55, !107, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.56, !107, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @.str.57, !107, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.58, !107, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @.str.60, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_hw.c", i32 2948, i32 3}
!117 = !{ptr @ocrdma_parse_dcbxcfg_rsp._entry.59, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @ocrdma_parse_dcbxcfg_rsp._entry_ptr.61, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.63, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_hw.c", i32 2986, i32 5}
!121 = !{ptr @ocrdma_parse_dcbxcfg_rsp._entry.62, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @ocrdma_parse_dcbxcfg_rsp._entry_ptr.64, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.65, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_hw.c", i32 3096, i32 36}
!125 = !{ptr @.str.66, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_hw.c", i32 1011, i32 4}
!127 = !{ptr @.str.67, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @ocrdma_irq_handler._entry, !126, !"_entry", i1 false, i1 false}
!129 = !{ptr @ocrdma_irq_handler._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.68, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_hw.c", i32 860, i32 3}
!132 = !{ptr @.str.69, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @ocrdma_process_acqe._entry, !131, !"_entry", i1 false, i1 false}
!134 = !{ptr @ocrdma_process_acqe._entry_ptr, !131, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.70, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_hw.c", i32 699, i32 4}
!137 = !{ptr @.str.71, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @ocrdma_dispatch_ibevent._entry, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @ocrdma_dispatch_ibevent._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.73, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_hw.c", i32 709, i32 4}
!142 = !{ptr @ocrdma_dispatch_ibevent._entry.72, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @ocrdma_dispatch_ibevent._entry_ptr.74, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.76, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_hw.c", i32 776, i32 3}
!146 = !{ptr @ocrdma_dispatch_ibevent._entry.75, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @ocrdma_dispatch_ibevent._entry_ptr.77, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.79, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_hw.c", i32 795, i32 3}
!150 = !{ptr @.str.80, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @.str.81, !149, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @ocrdma_dispatch_ibevent._entry.78, !149, !"_entry", i1 false, i1 false}
!153 = !{ptr @ocrdma_dispatch_ibevent._entry_ptr.82, !149, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.83, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_hw.c", i32 876, i32 3}
!156 = !{ptr @.str.84, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @ocrdma_process_mcqe._entry, !155, !"_entry", i1 false, i1 false}
!158 = !{ptr @ocrdma_process_mcqe._entry_ptr, !155, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @ocrdma_create_mq.__key, !160, !"__key", i1 false, i1 false}
!160 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_hw.c", i32 620, i32 2}
!161 = !{ptr @.str.85, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @ocrdma_create_mq.__key.86, !163, !"__key", i1 false, i1 false}
!163 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_hw.c", i32 621, i32 2}
!164 = !{ptr @.str.87, !163, !"<string literal>", i1 false, i1 false}
!165 = !{i32 1, !"wchar_size", i32 2}
!166 = !{i32 1, !"min_enum_size", i32 4}
!167 = !{i32 8, !"branch-target-enforcement", i32 0}
!168 = !{i32 8, !"sign-return-address", i32 0}
!169 = !{i32 8, !"sign-return-address-all", i32 0}
!170 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!171 = !{i32 7, !"uwtable", i32 1}
!172 = !{i32 7, !"frame-pointer", i32 2}
!173 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!174 = !{i64 2151830240}
!175 = !{i64 4288118}
!176 = !{i64 2158442230, i64 2158442736, i64 2158442267, i64 2158442323, i64 2158442357, i64 2158442381, i64 2158442422, i64 2158442443, i64 2158442471, i64 2158442505}
!177 = !{i8 0, i8 2}
!178 = !{i64 2158434250}
!179 = !{i64 2158450936, i64 2158451442, i64 2158450973, i64 2158451029, i64 2158451063, i64 2158451087, i64 2158451128, i64 2158451149, i64 2158451177, i64 2158451211}
!180 = !{!"auto-init"}
!181 = !{i32 0, i32 33}
!182 = !{i64 2148611174}
!183 = !{i64 994864, i64 994888, i64 994909, i64 994926, i64 994943}
!184 = !{i64 2148611400}
!185 = !{!"branch_weights", i32 1, i32 2000}
!186 = !{i64 2158415531, i64 2158416036, i64 2158415568, i64 2158415624, i64 2158415658, i64 2158415682, i64 2158415723, i64 2158415744, i64 2158415772, i64 2158415806}
!187 = !{i64 2148509351, i64 2148509377, i64 2148509406, i64 2148509440, i64 2148509471, i64 2148509494}
!188 = !{i64 2158430756, i64 2158431261, i64 2158430793, i64 2158430849, i64 2158430883, i64 2158430907, i64 2158430948, i64 2158430969, i64 2158430997, i64 2158431031}
