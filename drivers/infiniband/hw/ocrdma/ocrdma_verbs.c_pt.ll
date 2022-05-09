; ModuleID = '/llk/IR_all_yes/drivers/infiniband/hw/ocrdma/ocrdma_verbs.c_pt.bc'
source_filename = "../drivers/infiniband/hw/ocrdma/ocrdma_verbs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ib_udata = type { ptr, ptr, i32, i32 }
%struct.ocrdma_dev = type { %struct.ib_device, %struct.ocrdma_dev_attr, %struct.mutex, [60 x i8], %struct.spinlock, ptr, ptr, ptr, i32, %struct.delayed_work, i16, i16, %struct.spinlock, i32, ptr, ptr, %struct.anon.196, ptr, %struct.ocrdma_mq, %struct.mqe_ctx, %struct.be_dev_info, %struct.phy_info, [32 x i8], i32, %struct.list_head, i32, ptr, i8, i8, %struct.atomic_t, i16, i32, i32, i32, %struct.mutex, %struct.stats_mem, %struct.ocrdma_stats, %struct.ocrdma_stats, %struct.ocrdma_stats, %struct.ocrdma_stats, %struct.ocrdma_stats, %struct.ocrdma_stats, %struct.ocrdma_stats, %struct.ocrdma_stats, %struct.ocrdma_stats, %struct.ocrdma_stats, %struct.ocrdma_stats, ptr, [17 x %struct.atomic_t], [22 x %struct.atomic_t], ptr }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.177, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
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
%union.anon.177 = type { %struct.ib_core_device }
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
%struct.anon.196 = type { ptr, i32, i32, i32, %struct.spinlock, i32, %struct.ocrdma_pbl }
%struct.ocrdma_pbl = type { ptr, i32 }
%struct.ocrdma_mq = type { %struct.ocrdma_queue_info, %struct.ocrdma_queue_info, i8 }
%struct.ocrdma_queue_info = type { ptr, i32, i32, i16, i16, i16, i16, i16, i8 }
%struct.mqe_ctx = type { %struct.mutex, %struct.wait_queue_head, i32, i16, i16, i8, i8 }
%struct.be_dev_info = type { ptr, i64, i32, i32, i64, i32, ptr, ptr, [6 x i8], i32, i32, %struct.anon.198 }
%struct.anon.198 = type { i32, i32, [32 x i32] }
%struct.phy_info = type { i16, i16, i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.stats_mem = type { %struct.ocrdma_mqe, ptr, i32, i32, ptr }
%struct.ocrdma_mqe = type { %struct.ocrdma_mqe_hdr, %union.anon.199 }
%struct.ocrdma_mqe_hdr = type { i32, i32, i32, i32, i32 }
%union.anon.199 = type { %struct.ocrdma_mqe_emb_cmd }
%struct.ocrdma_mqe_emb_cmd = type { %struct.ocrdma_mbx_hdr, [220 x i8] }
%struct.ocrdma_mbx_hdr = type { i32, i32, i32, i32 }
%struct.ocrdma_stats = type { i8, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.197, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.197 = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.140, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.157, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.140 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%union.anon.157 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.ib_port_attr = type { i64, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i16, i32, i32, i8, i8, i8, i8, i8, i8, i16, i8, i16 }
%struct.ocrdma_alloc_ucontext_resp = type { i32, i32, i32, i32, i64, i32, i32, [32 x i8], i64, i64 }
%struct.ocrdma_ucontext = type { %struct.ib_ucontext, %struct.list_head, %struct.mutex, ptr, i32, %struct.anon.194 }
%struct.ib_ucontext = type { ptr, ptr, %struct.ib_rdmacg_object, %struct.rdma_restrack_entry, %struct.xarray }
%struct.ib_rdmacg_object = type { ptr }
%struct.rdma_restrack_entry = type { i8, i8, %struct.kref, %struct.completion, ptr, ptr, i32, i8, i32 }
%struct.anon.194 = type { ptr, i32, i32 }
%struct.anon.201 = type { i64, i32 }
%struct.ocrdma_mm = type { %struct.anon.201, %struct.list_head }
%struct.ib_pd = type { i32, i32, ptr, ptr, %struct.atomic_t, i32, ptr, %struct.rdma_restrack_entry }
%struct.ocrdma_pd = type { %struct.ib_pd, ptr, i32, i32, i32, i8 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.11, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.ocrdma_alloc_pd_uresp = type { i32, i32, i32, i32, [2 x i32] }
%struct.uverbs_attr_bundle = type { %struct.ib_udata, %struct.ib_udata, ptr, ptr, ptr, [2 x i32], [0 x %struct.uverbs_attr] }
%struct.uverbs_attr = type { %union.anon.168 }
%union.anon.168 = type { %struct.uverbs_ptr_attr }
%struct.uverbs_ptr_attr = type { %union.anon.169, i16, i16, i8 }
%union.anon.169 = type { i64 }
%struct.ocrdma_pd_resource_mgr = type { i32, i16, i16, i16, i32, i16, i16, i16, i16, ptr, ptr, i8 }
%struct.ocrdma_mr = type { %struct.ib_mr, ptr, %struct.ocrdma_hw_mr, ptr, i32 }
%struct.ib_mr = type { ptr, ptr, i32, i32, i64, i64, i32, i32, i8, %union.anon.127, ptr, ptr, %struct.rdma_restrack_entry }
%union.anon.127 = type { %struct.list_head }
%struct.ocrdma_hw_mr = type { i32, i8, i8, i8, i8, i8, i8, i8, i8, i64, ptr, i32, i32, i32, i32, i64 }
%struct.ib_block_iter = type { ptr, i32, i32, i32, i32 }
%struct.ib_umem = type { ptr, ptr, i64, i32, i32, i8, %struct.work_struct, %struct.sg_append_table }
%struct.sg_append_table = type { %struct.sg_table, ptr, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.ocrdma_pbe = type { i32, i32 }
%struct.ocrdma_create_cq_uresp = type { i32, i32, i32, i32, [8 x i64], i64, i32, i32, i64, i64 }
%struct.ocrdma_create_cq_ureq = type { i32, i32 }
%struct.ib_cq_init_attr = type { i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ocrdma_cq = type { %struct.ib_cq, ptr, i32, i32, i32, i8, [31 x i8], %struct.spinlock, [84 x i8], %struct.spinlock, i16, i16, ptr, i32, i32, i32, %struct.list_head, %struct.list_head, [48 x i8] }
%struct.ib_cq = type { ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.atomic_t, i32, ptr, %struct.list_head, %union.anon.139, ptr, ptr, i64, i8, i32, %struct.rdma_restrack_entry }
%union.anon.139 = type { %struct.work_struct }
%struct.ocrdma_eq = type { %struct.ocrdma_queue_info, i32, i32, ptr, [32 x i8], %struct.ocrdma_aic_obj }
%struct.ocrdma_aic_obj = type { i32, i64, i64 }
%struct.ocrdma_cqe = type { %union.anon.189, i32 }
%union.anon.189 = type { %struct.anon.190 }
%struct.anon.190 = type { i32, i32, i32 }
%struct.ocrdma_create_qp_uresp = type { i16, i16, i16, i16, i32, i32, i32, i32, [8 x i64], [8 x i64], i64, i32, i32, i32, i32, i32, i32, i32, i32, [11 x i64] }
%struct.ocrdma_create_qp_ureq = type { i8, i8, i16, i32 }
%struct.ib_qp = type { ptr, ptr, ptr, ptr, %struct.spinlock, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, %struct.atomic_t, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i8, %struct.rdma_restrack_entry, ptr }
%struct.ib_qp_init_attr = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.ib_qp_cap, i32, i32, i32, i32, ptr, i32 }
%struct.ib_qp_cap = type { i32, i32, i32, i32, i32, i32 }
%struct.ocrdma_qp = type { %struct.ib_qp, ptr, %struct.ocrdma_qp_hwq_info, ptr, i32, [80 x i8], %struct.spinlock, ptr, %struct.list_head, ptr, %struct.ocrdma_qp_hwq_info, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, ptr, i8, [91 x i8] }
%struct.ocrdma_qp_hwq_info = type { ptr, i32, i32, i32, i32, i32, i32, i16, i32, i32 }
%struct.ocrdma_qp_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x i8], [16 x i8], i32, i32, i32 }
%struct.ib_qp_attr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ib_qp_cap, %struct.rdma_ah_attr, %struct.rdma_ah_attr, i16, i16, i8, i8, i8, i8, i8, i32, i8, i8, i8, i32, i8, i32, ptr }
%struct.rdma_ah_attr = type { %struct.ib_global_route, i8, i8, i32, i8, i32, %union.anon.163 }
%struct.ib_global_route = type { ptr, %union.ib_gid, i32, i8, i8, i8 }
%union.ib_gid = type { %struct.anon.158 }
%struct.anon.158 = type { i64, i64 }
%union.anon.163 = type { %struct.opa_ah_attr }
%struct.opa_ah_attr = type { i32, i8, i8 }
%struct.ocrdma_srq = type { %struct.ib_srq, ptr, %struct.ocrdma_qp_hwq_info, ptr, ptr, i32, [76 x i8], %struct.spinlock, ptr, i32, [76 x i8] }
%struct.ib_srq = type { ptr, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.anon.130, %struct.rdma_restrack_entry }
%struct.anon.130 = type { ptr, %union.anon.131 }
%union.anon.131 = type { %struct.anon.132 }
%struct.anon.132 = type { ptr, i32 }
%struct.ib_srq_init_attr = type { ptr, ptr, %struct.ib_srq_attr, i32, %struct.anon.164 }
%struct.ib_srq_attr = type { i32, i32, i32 }
%struct.anon.164 = type { ptr, %union.anon.165 }
%union.anon.165 = type { %struct.anon.166 }
%struct.anon.166 = type { ptr }
%struct.ocrdma_create_srq_uresp = type { i16, i16, i32, i32, i32, [8 x i64], i64, i32, i32, i32, i32, i64, i64 }
%struct.ib_send_wr = type { ptr, %union.anon.159, ptr, i32, i32, i32, %union.anon.160 }
%union.anon.159 = type { i64 }
%union.anon.160 = type { i32 }
%struct.ocrdma_hdr_wqe = type { i32, %union.anon.202, %union.anon.203, i32 }
%union.anon.202 = type { i32 }
%union.anon.203 = type { i32 }
%struct.ib_ud_wr = type { %struct.ib_send_wr, ptr, ptr, i32, i32, i32, i32, i16, i32 }
%struct.ocrdma_ah = type { %struct.ib_ah, ptr, i16, i32, i8 }
%struct.ib_ah = type { ptr, ptr, ptr, ptr, i32 }
%struct.ocrdma_av = type { %struct.ocrdma_eth_vlan, %struct.ocrdma_grh, i32 }
%struct.ocrdma_eth_vlan = type { [6 x i8], [6 x i8], i16, i16, i16 }
%struct.ocrdma_grh = type <{ i32, i32, [16 x i8], [16 x i8], i16 }>
%struct.ib_rdma_wr = type { %struct.ib_send_wr, i64, i32 }
%struct.ib_sge = type { i64, i32, i32 }
%struct.ocrdma_sge = type { i32, i32, i32, i32 }
%struct.ib_reg_wr = type { %struct.ib_send_wr, ptr, i32, i32 }
%struct.anon.195 = type { i64, i16, i16, i8, [3 x i8] }
%struct.ib_recv_wr = type { ptr, %union.anon.161, ptr, i32 }
%union.anon.161 = type { i64 }
%struct.anon.193 = type { i32, i32, i32 }
%struct.ib_wc = type { %union.anon.137, i32, i32, i32, i32, ptr, %union.anon.138, i32, i32, i32, i16, i8, i8, i32, [6 x i8], i16, i8 }
%union.anon.137 = type { i64 }
%union.anon.138 = type { i32 }
%struct.anon.192 = type { i32, i32, i32 }
%struct.anon.191 = type { i32, i32, i32 }

@ocrdma_alloc_ucontext.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&ctx->mm_list_lock\00", [45 x i8] zeroinitializer }, align 32
@ocrdma_get_dma_mr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 726, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s err, invalid access rights\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ocrdma_get_dma_mr\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/infiniband/hw/ocrdma/ocrdma_verbs.c\00", [52 x i8] zeroinitializer }, align 32
@ocrdma_get_dma_mr._entry_ptr = internal global ptr @ocrdma_get_dma_mr._entry, section ".printk_index", align 4
@ocrdma_dereg_mr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.3, i32 920, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013%s(%d) fw not responding.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ocrdma_dereg_mr\00", [16 x i8] zeroinitializer }, align 32
@ocrdma_dereg_mr._entry_ptr = internal global ptr @ocrdma_dereg_mr._entry, section ".printk_index", align 4
@ocrdma_create_cq.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&cq->cq_lock\00", [19 x i8] zeroinitializer }, align 32
@ocrdma_create_cq.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&cq->comp_handler_lock\00", [41 x i8] zeroinitializer }, align 32
@ocrdma_create_qp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 1359, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\013%s(%d) error=%d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ocrdma_create_qp\00", [47 x i8] zeroinitializer }, align 32
@ocrdma_create_qp._entry_ptr = internal global ptr @ocrdma_create_qp._entry, section ".printk_index", align 4
@ocrdma_modify_qp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.3, i32 1414, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [101 x i8], [59 x i8] } { [101 x i8] c"\013%s(%d) invalid attribute mask=0x%x specified for\0Aqpn=0x%x of type=0x%x old_qps=0x%x, new_qps=0x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ocrdma_modify_qp\00", [47 x i8] zeroinitializer }, align 32
@ocrdma_modify_qp._entry_ptr = internal global ptr @ocrdma_modify_qp._entry, section ".printk_index", align 4
@ocrdma_create_srq.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&srq->q_lock\00", [19 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@ocrdma_dealloc_ucontext_pd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 437, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s(%d) Freeing in use pdid=0x%x.\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ocrdma_dealloc_ucontext_pd\00", [37 x i8] zeroinitializer }, align 32
@ocrdma_dealloc_ucontext_pd._entry_ptr = internal global ptr @ocrdma_dealloc_ucontext_pd._entry, section ".printk_index", align 4
@ocrdma_copy_cq_uresp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 949, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s(%d) copy error cqid=0x%x.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ocrdma_copy_cq_uresp\00", [43 x i8] zeroinitializer }, align 32
@ocrdma_copy_cq_uresp._entry_ptr = internal global ptr @ocrdma_copy_cq_uresp._entry, section ".printk_index", align 4
@ocrdma_check_qp_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 1106, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013%s(%d) unsupported qp type=0x%x requested\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ocrdma_check_qp_params\00", [41 x i8] zeroinitializer }, align 32
@ocrdma_check_qp_params._entry_ptr = internal global ptr @ocrdma_check_qp_params._entry, section ".printk_index", align 4
@ocrdma_check_qp_params._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.3, i32 1113, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013%s(%d) unsupported send_wr=0x%x requested\0A\00", [51 x i8] zeroinitializer }, align 32
@ocrdma_check_qp_params._entry_ptr.25 = internal global ptr @ocrdma_check_qp_params._entry.23, section ".printk_index", align 4
@ocrdma_check_qp_params._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.22, ptr @.str.3, i32 1115, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s(%d) supported send_wr=0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@ocrdma_check_qp_params._entry_ptr.28 = internal global ptr @ocrdma_check_qp_params._entry.26, section ".printk_index", align 4
@ocrdma_check_qp_params._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.22, ptr @.str.3, i32 1120, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013%s(%d) unsupported recv_wr=0x%x requested\0A\00", [51 x i8] zeroinitializer }, align 32
@ocrdma_check_qp_params._entry_ptr.31 = internal global ptr @ocrdma_check_qp_params._entry.29, section ".printk_index", align 4
@ocrdma_check_qp_params._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.22, ptr @.str.3, i32 1122, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s(%d) supported recv_wr=0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@ocrdma_check_qp_params._entry_ptr.34 = internal global ptr @ocrdma_check_qp_params._entry.32, section ".printk_index", align 4
@ocrdma_check_qp_params._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.22, ptr @.str.3, i32 1127, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013%s(%d) unsupported inline data size=0x%x requested\0A\00", [42 x i8] zeroinitializer }, align 32
@ocrdma_check_qp_params._entry_ptr.37 = internal global ptr @ocrdma_check_qp_params._entry.35, section ".printk_index", align 4
@ocrdma_check_qp_params._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.22, ptr @.str.3, i32 1129, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s(%d) supported inline data size=0x%x\0A\00", [54 x i8] zeroinitializer }, align 32
@ocrdma_check_qp_params._entry_ptr.40 = internal global ptr @ocrdma_check_qp_params._entry.38, section ".printk_index", align 4
@ocrdma_check_qp_params._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.22, ptr @.str.3, i32 1134, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013%s(%d) unsupported send_sge=0x%x requested\0A\00", [50 x i8] zeroinitializer }, align 32
@ocrdma_check_qp_params._entry_ptr.43 = internal global ptr @ocrdma_check_qp_params._entry.41, section ".printk_index", align 4
@ocrdma_check_qp_params._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.22, ptr @.str.3, i32 1136, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s(%d) supported send_sge=0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@ocrdma_check_qp_params._entry_ptr.46 = internal global ptr @ocrdma_check_qp_params._entry.44, section ".printk_index", align 4
@ocrdma_check_qp_params._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.22, ptr @.str.3, i32 1141, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013%s(%d) unsupported recv_sge=0x%x requested\0A\00", [50 x i8] zeroinitializer }, align 32
@ocrdma_check_qp_params._entry_ptr.49 = internal global ptr @ocrdma_check_qp_params._entry.47, section ".printk_index", align 4
@ocrdma_check_qp_params._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.22, ptr @.str.3, i32 1143, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s(%d) supported recv_sge=0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@ocrdma_check_qp_params._entry_ptr.52 = internal global ptr @ocrdma_check_qp_params._entry.50, section ".printk_index", align 4
@ocrdma_check_qp_params._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.22, ptr @.str.3, i32 1150, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013%s(%d) Userspace can't create special QPs of type=0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@ocrdma_check_qp_params._entry_ptr.55 = internal global ptr @ocrdma_check_qp_params._entry.53, section ".printk_index", align 4
@ocrdma_check_qp_params._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.22, ptr @.str.3, i32 1156, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013%s(%d) GSI special QPs already created.\0A\00", [53 x i8] zeroinitializer }, align 32
@ocrdma_check_qp_params._entry_ptr.58 = internal global ptr @ocrdma_check_qp_params._entry.56, section ".printk_index", align 4
@ocrdma_check_qp_params._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.22, ptr @.str.3, i32 1164, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s(%d) Consumer QP cannot use GSI CQs.\0A\00", [54 x i8] zeroinitializer }, align 32
@ocrdma_check_qp_params._entry_ptr.61 = internal global ptr @ocrdma_check_qp_params._entry.59, section ".printk_index", align 4
@ocrdma_set_qp_init_params.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.62 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&qp->q_lock\00", [20 x i8] zeroinitializer }, align 32
@ocrdma_copy_qp_uresp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.3, i32 1209, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013%s(%d) user copy error.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ocrdma_copy_qp_uresp\00", [43 x i8] zeroinitializer }, align 32
@ocrdma_copy_qp_uresp._entry_ptr = internal global ptr @ocrdma_copy_qp_uresp._entry, section ".printk_index", align 4
@ocrdma_build_inline_sges._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.3, i32 1933, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013%s() supported_len=0x%x,\0A unsupported len req=0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ocrdma_build_inline_sges\00", [39 x i8] zeroinitializer }, align 32
@ocrdma_build_inline_sges._entry_ptr = internal global ptr @ocrdma_build_inline_sges._entry, section ".printk_index", align 4
@ocrdma_update_wc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.3, i32 2434, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s() invalid opcode received = 0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ocrdma_update_wc\00", [47 x i8] zeroinitializer }, align 32
@ocrdma_update_wc._entry_ptr = internal global ptr @ocrdma_update_wc._entry, section ".printk_index", align 4
@switch.table.ocrdma_query_port = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 4, i16 2, i16 1, i16 4], [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 6]
@__sancov_gen_cov_switch_values.69 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 7]
@__sancov_gen_cov_switch_values.70 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 7, i64 9, i64 32]
@__sancov_gen_cov_switch_values.71 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.72 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.73 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 6]
@__sancov_gen_cov_switch_values.74 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.75 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.76 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.77 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.78 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 6, i64 12, i64 17, i64 21]
@__sancov_gen_cov_switch_values.79 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 478, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 726, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 919, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 987, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 988, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1359, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1411, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1782, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 174, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 436, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 948, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1105, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1112, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1114, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1119, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1121, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1126, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1128, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1133, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1135, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1140, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1142, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1148, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1155, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1163, i32 4 }
@___asan_gen_.251 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1270, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1209, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1931, i32 4 }
@___asan_gen_.275 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.281 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.282 = private constant [47 x i8] c"../drivers/infiniband/hw/ocrdma/ocrdma_verbs.c\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 2433, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant [31 x i8] c"switch.table.ocrdma_query_port\00", align 1
@llvm.compiler.used = appending global [92 x ptr] [ptr @ocrdma_build_inline_sges._entry, ptr @ocrdma_build_inline_sges._entry_ptr, ptr @ocrdma_check_qp_params._entry, ptr @ocrdma_check_qp_params._entry.23, ptr @ocrdma_check_qp_params._entry.26, ptr @ocrdma_check_qp_params._entry.29, ptr @ocrdma_check_qp_params._entry.32, ptr @ocrdma_check_qp_params._entry.35, ptr @ocrdma_check_qp_params._entry.38, ptr @ocrdma_check_qp_params._entry.41, ptr @ocrdma_check_qp_params._entry.44, ptr @ocrdma_check_qp_params._entry.47, ptr @ocrdma_check_qp_params._entry.50, ptr @ocrdma_check_qp_params._entry.53, ptr @ocrdma_check_qp_params._entry.56, ptr @ocrdma_check_qp_params._entry.59, ptr @ocrdma_check_qp_params._entry_ptr, ptr @ocrdma_check_qp_params._entry_ptr.25, ptr @ocrdma_check_qp_params._entry_ptr.28, ptr @ocrdma_check_qp_params._entry_ptr.31, ptr @ocrdma_check_qp_params._entry_ptr.34, ptr @ocrdma_check_qp_params._entry_ptr.37, ptr @ocrdma_check_qp_params._entry_ptr.40, ptr @ocrdma_check_qp_params._entry_ptr.43, ptr @ocrdma_check_qp_params._entry_ptr.46, ptr @ocrdma_check_qp_params._entry_ptr.49, ptr @ocrdma_check_qp_params._entry_ptr.52, ptr @ocrdma_check_qp_params._entry_ptr.55, ptr @ocrdma_check_qp_params._entry_ptr.58, ptr @ocrdma_check_qp_params._entry_ptr.61, ptr @ocrdma_copy_cq_uresp._entry, ptr @ocrdma_copy_cq_uresp._entry_ptr, ptr @ocrdma_copy_qp_uresp._entry, ptr @ocrdma_copy_qp_uresp._entry_ptr, ptr @ocrdma_create_qp._entry, ptr @ocrdma_create_qp._entry_ptr, ptr @ocrdma_dealloc_ucontext_pd._entry, ptr @ocrdma_dealloc_ucontext_pd._entry_ptr, ptr @ocrdma_dereg_mr._entry, ptr @ocrdma_dereg_mr._entry_ptr, ptr @ocrdma_get_dma_mr._entry, ptr @ocrdma_get_dma_mr._entry_ptr, ptr @ocrdma_modify_qp._entry, ptr @ocrdma_modify_qp._entry_ptr, ptr @ocrdma_update_wc._entry, ptr @ocrdma_update_wc._entry_ptr, ptr @ocrdma_alloc_ucontext.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @ocrdma_create_cq.__key, ptr @.str.6, ptr @ocrdma_create_cq.__key.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @ocrdma_create_srq.__key, ptr @.str.13, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @.str.48, ptr @.str.51, ptr @.str.54, ptr @.str.57, ptr @.str.60, ptr @ocrdma_set_qp_init_params.__key, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @switch.table.ocrdma_query_port], section "llvm.metadata"
@0 = internal global [69 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocrdma_alloc_ucontext.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocrdma_get_dma_mr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocrdma_dereg_mr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocrdma_create_cq.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocrdma_create_cq.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocrdma_create_qp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocrdma_modify_qp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 101, i32 160, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocrdma_create_srq.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocrdma_dealloc_ucontext_pd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocrdma_copy_cq_uresp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocrdma_check_qp_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocrdma_check_qp_params._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocrdma_check_qp_params._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocrdma_check_qp_params._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocrdma_check_qp_params._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocrdma_check_qp_params._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocrdma_check_qp_params._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocrdma_check_qp_params._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocrdma_check_qp_params._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocrdma_check_qp_params._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocrdma_check_qp_params._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocrdma_check_qp_params._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocrdma_check_qp_params._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocrdma_check_qp_params._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocrdma_set_qp_init_params.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocrdma_copy_qp_uresp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocrdma_build_inline_sges._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocrdma_update_wc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ocrdma_query_port to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @ocrdma_query_pkey(ptr nocapture noundef readnone %ibdev, i32 noundef %port, i16 noundef zeroext %index, ptr nocapture noundef writeonly %pkey) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %index)
  %cmp.not = icmp eq i16 %index, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %0 = ptrtoint ptr %pkey to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %pkey, align 2
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ocrdma_query_device(ptr noundef readonly %ibdev, ptr noundef %attr, ptr nocapture noundef readonly %uhw) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %inlen = getelementptr inbounds %struct.ib_udata, ptr %uhw, i32 0, i32 2
  %0 = ptrtoint ptr %inlen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %inlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %outlen = getelementptr inbounds %struct.ib_udata, ptr %uhw, i32 0, i32 3
  %2 = ptrtoint ptr %outlen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %outlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  %4 = call ptr @memset(ptr %attr, i32 0, i32 296)
  %attr2 = getelementptr inbounds %struct.ocrdma_dev, ptr %ibdev, i32 0, i32 1
  %5 = ptrtoint ptr %attr2 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %attr2, align 32
  %7 = ptrtoint ptr %attr to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %attr, align 8
  %sys_image_guid = getelementptr inbounds %struct.ib_device_attr, ptr %attr, i32 0, i32 1
  %mac_addr = getelementptr inbounds %struct.ocrdma_dev, ptr %ibdev, i32 0, i32 20, i32 8
  %8 = call ptr @memcpy(ptr %sys_image_guid, ptr %mac_addr, i32 3)
  %arrayidx.i.i = getelementptr i8, ptr %sys_image_guid, i32 3
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %arrayidx.i.i, align 1
  %arrayidx1.i.i = getelementptr i8, ptr %sys_image_guid, i32 4
  %10 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -2, ptr %arrayidx1.i.i, align 1
  %add.ptr.i.i = getelementptr i8, ptr %sys_image_guid, i32 5
  %add.ptr2.i.i = getelementptr %struct.ocrdma_dev, ptr %ibdev, i32 0, i32 20, i32 8, i32 3
  %11 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %add.ptr2.i.i, i32 3)
  %12 = ptrtoint ptr %sys_image_guid to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %sys_image_guid, align 1
  %14 = xor i8 %13, 2
  store i8 %14, ptr %sys_image_guid, align 1
  %max_mr_size = getelementptr inbounds %struct.ocrdma_dev, ptr %ibdev, i32 0, i32 1, i32 17
  %15 = ptrtoint ptr %max_mr_size to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %max_mr_size, align 16
  %max_mr_size5 = getelementptr inbounds %struct.ib_device_attr, ptr %attr, i32 0, i32 2
  %17 = ptrtoint ptr %max_mr_size5 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %max_mr_size5, align 8
  %page_size_cap = getelementptr inbounds %struct.ib_device_attr, ptr %attr, i32 0, i32 3
  %18 = ptrtoint ptr %page_size_cap to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 268431360, ptr %page_size_cap, align 8
  %pdev = getelementptr inbounds %struct.ocrdma_dev, ptr %ibdev, i32 0, i32 20, i32 6
  %19 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdev, align 4
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 7
  %21 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %vendor, align 8
  %conv = zext i16 %22 to i32
  %vendor_id = getelementptr inbounds %struct.ib_device_attr, ptr %attr, i32 0, i32 4
  %23 = ptrtoint ptr %vendor_id to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv, ptr %vendor_id, align 8
  %24 = load ptr, ptr %pdev, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 8
  %25 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %device, align 2
  %conv9 = zext i16 %26 to i32
  %vendor_part_id = getelementptr inbounds %struct.ib_device_attr, ptr %attr, i32 0, i32 5
  %27 = ptrtoint ptr %vendor_part_id to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv9, ptr %vendor_part_id, align 4
  %asic_id = getelementptr inbounds %struct.ocrdma_dev, ptr %ibdev, i32 0, i32 31
  %28 = ptrtoint ptr %asic_id to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %asic_id, align 8
  %hw_ver = getelementptr inbounds %struct.ib_device_attr, ptr %attr, i32 0, i32 6
  %30 = ptrtoint ptr %hw_ver to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %hw_ver, align 8
  %max_qp = getelementptr inbounds %struct.ocrdma_dev, ptr %ibdev, i32 0, i32 1, i32 7
  %31 = ptrtoint ptr %max_qp to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %max_qp, align 16
  %conv11 = zext i16 %32 to i32
  %max_qp12 = getelementptr inbounds %struct.ib_device_attr, ptr %attr, i32 0, i32 7
  %33 = ptrtoint ptr %max_qp12 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %conv11, ptr %max_qp12, align 4
  %max_ah = getelementptr inbounds %struct.ib_device_attr, ptr %attr, i32 0, i32 32
  %34 = ptrtoint ptr %max_ah to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 512, ptr %max_ah, align 8
  %max_wqe = getelementptr inbounds %struct.ocrdma_dev, ptr %ibdev, i32 0, i32 1, i32 8
  %35 = ptrtoint ptr %max_wqe to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %max_wqe, align 2
  %conv14 = zext i16 %36 to i32
  %max_qp_wr = getelementptr inbounds %struct.ib_device_attr, ptr %attr, i32 0, i32 8
  %37 = ptrtoint ptr %max_qp_wr to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %conv14, ptr %max_qp_wr, align 8
  %device_cap_flags = getelementptr inbounds %struct.ib_device_attr, ptr %attr, i32 0, i32 9
  %38 = ptrtoint ptr %device_cap_flags to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 2136448, ptr %device_cap_flags, align 8
  %max_send_sge = getelementptr inbounds %struct.ocrdma_dev, ptr %ibdev, i32 0, i32 1, i32 12
  %39 = ptrtoint ptr %max_send_sge to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %max_send_sge, align 4
  %max_send_sge16 = getelementptr inbounds %struct.ib_device_attr, ptr %attr, i32 0, i32 10
  %41 = ptrtoint ptr %max_send_sge16 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %max_send_sge16, align 8
  %max_recv_sge = getelementptr inbounds %struct.ocrdma_dev, ptr %ibdev, i32 0, i32 1, i32 13
  %42 = ptrtoint ptr %max_recv_sge to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %max_recv_sge, align 32
  %max_recv_sge18 = getelementptr inbounds %struct.ib_device_attr, ptr %attr, i32 0, i32 11
  %44 = ptrtoint ptr %max_recv_sge18 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %max_recv_sge18, align 4
  %max_rdma_sge = getelementptr inbounds %struct.ocrdma_dev, ptr %ibdev, i32 0, i32 1, i32 15
  %45 = ptrtoint ptr %max_rdma_sge to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %max_rdma_sge, align 8
  %max_sge_rd = getelementptr inbounds %struct.ib_device_attr, ptr %attr, i32 0, i32 12
  %47 = ptrtoint ptr %max_sge_rd to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %max_sge_rd, align 8
  %max_cq = getelementptr inbounds %struct.ocrdma_dev, ptr %ibdev, i32 0, i32 1, i32 5
  %48 = ptrtoint ptr %max_cq to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %max_cq, align 4
  %conv21 = zext i16 %49 to i32
  %max_cq22 = getelementptr inbounds %struct.ib_device_attr, ptr %attr, i32 0, i32 13
  %50 = ptrtoint ptr %max_cq22 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %conv21, ptr %max_cq22, align 4
  %max_cqe = getelementptr inbounds %struct.ocrdma_dev, ptr %ibdev, i32 0, i32 1, i32 6
  %51 = ptrtoint ptr %max_cqe to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %max_cqe, align 2
  %conv24 = zext i16 %52 to i32
  %max_cqe25 = getelementptr inbounds %struct.ib_device_attr, ptr %attr, i32 0, i32 14
  %53 = ptrtoint ptr %max_cqe25 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %conv24, ptr %max_cqe25, align 8
  %max_mr = getelementptr inbounds %struct.ocrdma_dev, ptr %ibdev, i32 0, i32 1, i32 16
  %54 = ptrtoint ptr %max_mr to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %max_mr, align 4
  %max_mr27 = getelementptr inbounds %struct.ib_device_attr, ptr %attr, i32 0, i32 15
  %56 = ptrtoint ptr %max_mr27 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %max_mr27, align 4
  %max_mw = getelementptr inbounds %struct.ocrdma_dev, ptr %ibdev, i32 0, i32 1, i32 19
  %57 = ptrtoint ptr %max_mw to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %max_mw, align 4
  %max_mw29 = getelementptr inbounds %struct.ib_device_attr, ptr %attr, i32 0, i32 26
  %59 = ptrtoint ptr %max_mw29 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %max_mw29, align 8
  %max_pd = getelementptr inbounds %struct.ocrdma_dev, ptr %ibdev, i32 0, i32 1, i32 3
  %60 = ptrtoint ptr %max_pd to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %max_pd, align 8
  %conv31 = zext i16 %61 to i32
  %max_pd32 = getelementptr inbounds %struct.ib_device_attr, ptr %attr, i32 0, i32 16
  %62 = ptrtoint ptr %max_pd32 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %conv31, ptr %max_pd32, align 8
  %atomic_cap = getelementptr inbounds %struct.ib_device_attr, ptr %attr, i32 0, i32 22
  %63 = ptrtoint ptr %atomic_cap to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %atomic_cap, align 8
  %max_ord_per_qp = getelementptr inbounds %struct.ocrdma_dev, ptr %ibdev, i32 0, i32 1, i32 22
  %64 = ptrtoint ptr %max_ord_per_qp to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %max_ord_per_qp, align 8
  %max_ird_per_qp = getelementptr inbounds %struct.ocrdma_dev, ptr %ibdev, i32 0, i32 1, i32 23
  %66 = ptrtoint ptr %max_ird_per_qp to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %max_ird_per_qp, align 2
  %68 = tail call i16 @llvm.umin.i16(i16 %65, i16 %67)
  %cond = zext i16 %68 to i32
  %max_qp_rd_atom = getelementptr inbounds %struct.ib_device_attr, ptr %attr, i32 0, i32 17
  %69 = ptrtoint ptr %max_qp_rd_atom to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %cond, ptr %max_qp_rd_atom, align 4
  %70 = ptrtoint ptr %max_ord_per_qp to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %max_ord_per_qp, align 8
  %conv42 = zext i16 %71 to i32
  %max_qp_init_rd_atom = getelementptr inbounds %struct.ib_device_attr, ptr %attr, i32 0, i32 20
  %72 = ptrtoint ptr %max_qp_init_rd_atom to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %conv42, ptr %max_qp_init_rd_atom, align 8
  %max_srq = getelementptr inbounds %struct.ocrdma_dev, ptr %ibdev, i32 0, i32 1, i32 10
  %73 = ptrtoint ptr %max_srq to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %max_srq, align 2
  %conv44 = zext i16 %74 to i32
  %max_srq45 = getelementptr inbounds %struct.ib_device_attr, ptr %attr, i32 0, i32 33
  %75 = ptrtoint ptr %max_srq45 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %conv44, ptr %max_srq45, align 4
  %max_srq_sge = getelementptr inbounds %struct.ocrdma_dev, ptr %ibdev, i32 0, i32 1, i32 14
  %76 = ptrtoint ptr %max_srq_sge to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %max_srq_sge, align 4
  %max_srq_sge47 = getelementptr inbounds %struct.ib_device_attr, ptr %attr, i32 0, i32 35
  %78 = ptrtoint ptr %max_srq_sge47 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %max_srq_sge47, align 4
  %max_rqe = getelementptr inbounds %struct.ocrdma_dev, ptr %ibdev, i32 0, i32 1, i32 9
  %79 = ptrtoint ptr %max_rqe to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %max_rqe, align 4
  %conv49 = zext i16 %80 to i32
  %max_srq_wr = getelementptr inbounds %struct.ib_device_attr, ptr %attr, i32 0, i32 34
  %81 = ptrtoint ptr %max_srq_wr to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %conv49, ptr %max_srq_wr, align 8
  %local_ca_ack_delay = getelementptr inbounds %struct.ocrdma_dev, ptr %ibdev, i32 0, i32 1, i32 30
  %82 = ptrtoint ptr %local_ca_ack_delay to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %local_ca_ack_delay, align 32
  %local_ca_ack_delay51 = getelementptr inbounds %struct.ib_device_attr, ptr %attr, i32 0, i32 39
  %84 = ptrtoint ptr %local_ca_ack_delay51 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %83, ptr %local_ca_ack_delay51, align 2
  %max_pages_per_frmr = getelementptr inbounds %struct.ocrdma_dev, ptr %ibdev, i32 0, i32 1, i32 21
  %85 = ptrtoint ptr %max_pages_per_frmr to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %max_pages_per_frmr, align 4
  %max_fast_reg_page_list_len = getelementptr inbounds %struct.ib_device_attr, ptr %attr, i32 0, i32 36
  %87 = ptrtoint ptr %max_fast_reg_page_list_len to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %max_fast_reg_page_list_len, align 8
  %max_pkeys = getelementptr inbounds %struct.ib_device_attr, ptr %attr, i32 0, i32 38
  %88 = ptrtoint ptr %max_pkeys to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 1, ptr %max_pkeys, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocrdma_query_port(ptr noundef %ibdev, i32 noundef %port, ptr nocapture noundef %props) local_unnamed_addr #3 align 64 {
entry:
  %speed.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev1 = getelementptr inbounds %struct.ocrdma_dev, ptr %ibdev, i32 0, i32 20, i32 7
  %0 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev1, align 8
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %operstate.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 50
  %4 = ptrtoint ptr %operstate.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %operstate.i, align 8
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i8 %5, label %land.lhs.true.if.else_crit_edge [
    i8 6, label %land.lhs.true.if.end_crit_edge
    i8 0, label %land.lhs.true.if.end_crit_edge27
  ]

land.lhs.true.if.end_crit_edge27:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.else, %land.lhs.true.if.end_crit_edge, %land.lhs.true.if.end_crit_edge27
  %.sink = phi i8 [ 3, %if.else ], [ 5, %land.lhs.true.if.end_crit_edge ], [ 5, %land.lhs.true.if.end_crit_edge27 ]
  %port_state.0 = phi i32 [ 1, %if.else ], [ 4, %land.lhs.true.if.end_crit_edge ], [ 4, %land.lhs.true.if.end_crit_edge27 ]
  %phys_state4 = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 21
  %7 = ptrtoint ptr %phys_state4 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %.sink, ptr %phys_state4, align 4
  %max_mtu = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 2
  %8 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 5, ptr %max_mtu, align 4
  %mtu = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 20
  %9 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mtu, align 4
  %sub.i = add i32 %10, -96
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %sub.i)
  %cmp.not.i = icmp slt i32 %sub.i, 4096
  br i1 %cmp.not.i, label %if.else.i, label %if.end.iboe_get_mtu.exit_crit_edge

if.end.iboe_get_mtu.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %iboe_get_mtu.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %sub.i)
  %cmp2.not.i = icmp slt i32 %sub.i, 2048
  br i1 %cmp2.not.i, label %if.else4.i, label %if.else.i.iboe_get_mtu.exit_crit_edge

if.else.i.iboe_get_mtu.exit_crit_edge:            ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %iboe_get_mtu.exit

if.else4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %sub.i)
  %cmp6.not.i = icmp slt i32 %sub.i, 1024
  br i1 %cmp6.not.i, label %if.else8.i, label %if.else4.i.iboe_get_mtu.exit_crit_edge

if.else4.i.iboe_get_mtu.exit_crit_edge:           ; preds = %if.else4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %iboe_get_mtu.exit

if.else8.i:                                       ; preds = %if.else4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %sub.i)
  %cmp10.not.i = icmp slt i32 %sub.i, 512
  br i1 %cmp10.not.i, label %if.else12.i, label %if.else8.i.iboe_get_mtu.exit_crit_edge

if.else8.i.iboe_get_mtu.exit_crit_edge:           ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %iboe_get_mtu.exit

if.else12.i:                                      ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %sub.i)
  %cmp14.not.i = icmp sgt i32 %sub.i, 255
  %..i = zext i1 %cmp14.not.i to i32
  br label %iboe_get_mtu.exit

iboe_get_mtu.exit:                                ; preds = %if.else12.i, %if.else8.i.iboe_get_mtu.exit_crit_edge, %if.else4.i.iboe_get_mtu.exit_crit_edge, %if.else.i.iboe_get_mtu.exit_crit_edge, %if.end.iboe_get_mtu.exit_crit_edge
  %retval.0.i = phi i32 [ 5, %if.end.iboe_get_mtu.exit_crit_edge ], [ 4, %if.else.i.iboe_get_mtu.exit_crit_edge ], [ 3, %if.else4.i.iboe_get_mtu.exit_crit_edge ], [ 2, %if.else8.i.iboe_get_mtu.exit_crit_edge ], [ %..i, %if.else12.i ]
  %active_mtu = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 3
  %11 = ptrtoint ptr %active_mtu to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %retval.0.i, ptr %active_mtu, align 8
  %lid = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 13
  %12 = ptrtoint ptr %lid to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %lid, align 8
  %lmc = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 14
  %13 = ptrtoint ptr %lmc to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %lmc, align 4
  %sm_lid = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 12
  %14 = ptrtoint ptr %sm_lid to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %sm_lid, align 4
  %sm_sl = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 16
  %15 = ptrtoint ptr %sm_sl to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %sm_sl, align 2
  %state = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 1
  %16 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %port_state.0, ptr %state, align 8
  %port_cap_flags = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 7
  %17 = ptrtoint ptr %port_cap_flags to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1900544, ptr %port_cap_flags, align 8
  %ip_gids = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 6
  %18 = ptrtoint ptr %ip_gids to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load = load i8, ptr %ip_gids, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %ip_gids, align 4
  %gid_tbl_len = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 5
  %19 = ptrtoint ptr %gid_tbl_len to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 16, ptr %gid_tbl_len, align 8
  %pkey_tbl_len = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 11
  %20 = ptrtoint ptr %pkey_tbl_len to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 1, ptr %pkey_tbl_len, align 8
  %bad_pkey_cntr = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 9
  %21 = ptrtoint ptr %bad_pkey_cntr to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %bad_pkey_cntr, align 8
  %qkey_viol_cntr = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 10
  %22 = ptrtoint ptr %qkey_viol_cntr to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %qkey_viol_cntr, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %speed.i) #13
  %23 = ptrtoint ptr %speed.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -1, ptr %speed.i, align 1, !annotation !135
  %call.i = call i32 @ocrdma_mbx_get_link_speed(ptr noundef %ibdev, ptr noundef nonnull %speed.i, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %iboe_get_mtu.exit.get_link_speed_and_width.exit_crit_edge

iboe_get_mtu.exit.get_link_speed_and_width.exit_crit_edge: ; preds = %iboe_get_mtu.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_link_speed_and_width.exit

if.end.i:                                         ; preds = %iboe_get_mtu.exit
  %24 = ptrtoint ptr %speed.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %.pr.i = load i8, ptr %speed.i, align 1
  %switch.tableidx = add i8 %.pr.i, -4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %switch.tableidx)
  %25 = icmp ult i8 %switch.tableidx, 4
  br i1 %25, label %switch.lookup, label %if.end.i.get_link_speed_and_width.exit_crit_edge

if.end.i.get_link_speed_and_width.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_link_speed_and_width.exit

switch.lookup:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %26 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [4 x i16], ptr @switch.table.ocrdma_query_port, i32 0, i32 %26
  %27 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %27)
  %switch.load = load i16, ptr %switch.gep, align 2
  %switch.cast = zext i8 %switch.tableidx to i32
  %switch.shiftamt = shl nuw nsw i32 %switch.cast, 3
  %switch.downshift = lshr i32 33620481, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  br label %get_link_speed_and_width.exit

get_link_speed_and_width.exit:                    ; preds = %switch.lookup, %if.end.i.get_link_speed_and_width.exit_crit_edge, %iboe_get_mtu.exit.get_link_speed_and_width.exit_crit_edge
  %.sink12.i = phi i16 [ 1, %iboe_get_mtu.exit.get_link_speed_and_width.exit_crit_edge ], [ 1, %if.end.i.get_link_speed_and_width.exit_crit_edge ], [ %switch.load, %switch.lookup ]
  %.sink.i = phi i8 [ 1, %iboe_get_mtu.exit.get_link_speed_and_width.exit_crit_edge ], [ 1, %if.end.i.get_link_speed_and_width.exit_crit_edge ], [ %switch.masked, %switch.lookup ]
  %active_width = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 19
  %active_speed = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 20
  %28 = ptrtoint ptr %active_speed to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %.sink12.i, ptr %active_speed, align 2
  %29 = ptrtoint ptr %active_width to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %.sink.i, ptr %active_width, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %speed.i) #13
  %max_msg_sz = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 8
  %30 = ptrtoint ptr %max_msg_sz to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -2147483648, ptr %max_msg_sz, align 4
  %max_vl_num = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 15
  %31 = ptrtoint ptr %max_vl_num to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 4, ptr %max_vl_num, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocrdma_alloc_ucontext(ptr noundef %uctx, ptr noundef %udata) local_unnamed_addr #3 align 64 {
entry:
  %resp = alloca %struct.ocrdma_alloc_ucontext_resp, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %uctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %uctx, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %resp) #13
  %2 = call ptr @memset(ptr %resp, i32 0, i32 80)
  %tobool.not = icmp eq ptr %udata, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %pdev2 = getelementptr inbounds %struct.ocrdma_dev, ptr %1, i32 0, i32 20, i32 6
  %3 = ptrtoint ptr %pdev2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev2, align 4
  %mm_head = getelementptr inbounds %struct.ocrdma_ucontext, ptr %uctx, i32 0, i32 1
  %5 = ptrtoint ptr %mm_head to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %mm_head, ptr %mm_head, align 4
  %prev.i = getelementptr inbounds %struct.ocrdma_ucontext, ptr %uctx, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %mm_head, ptr %prev.i, align 4
  %mm_list_lock = getelementptr inbounds %struct.ocrdma_ucontext, ptr %uctx, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %mm_list_lock, ptr noundef nonnull @.str, ptr noundef nonnull @ocrdma_alloc_ucontext.__key) #13
  %dev3 = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %ah_tbl = getelementptr inbounds %struct.ocrdma_ucontext, ptr %uctx, i32 0, i32 5
  %pa = getelementptr inbounds %struct.ocrdma_ucontext, ptr %uctx, i32 0, i32 5, i32 1
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev3, i32 noundef 8192, ptr noundef %pa, i32 noundef 3264, i32 noundef 0) #13
  %7 = ptrtoint ptr %ah_tbl to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %ah_tbl, align 4
  %tobool8.not = icmp eq ptr %call.i, null
  br i1 %tobool8.not, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %len = getelementptr inbounds %struct.ocrdma_ucontext, ptr %uctx, i32 0, i32 5, i32 2
  %8 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 8192, ptr %len, align 4
  %ah_tbl_len = getelementptr inbounds %struct.ocrdma_alloc_ucontext_resp, ptr %resp, i32 0, i32 5
  %9 = ptrtoint ptr %ah_tbl_len to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 8192, ptr %ah_tbl_len, align 8
  %10 = ptrtoint ptr %call.i to i32
  %call.i92 = tail call i32 @__virt_to_phys(i32 noundef %10) #13
  %conv = zext i32 %call.i92 to i64
  %ah_tbl_page = getelementptr inbounds %struct.ocrdma_alloc_ucontext_resp, ptr %resp, i32 0, i32 4
  %11 = ptrtoint ptr %ah_tbl_page to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %conv, ptr %ah_tbl_page, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 24) #16
  %cmp.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp.i, label %if.end10.map_err_crit_edge, label %if.end.i

if.end10.map_err_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %map_err

if.end.i:                                         ; preds = %if.end10
  %13 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %conv, ptr %call7.i.i.i, align 8
  %len3.i = getelementptr inbounds %struct.anon.201, ptr %call7.i.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %len3.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 8192, ptr %len3.i, align 8
  %entry4.i = getelementptr inbounds %struct.ocrdma_mm, ptr %call7.i.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %entry4.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %entry4.i, ptr %entry4.i, align 8
  %prev.i.i = getelementptr inbounds %struct.ocrdma_mm, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %entry4.i, ptr %prev.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %mm_list_lock, i32 noundef 0) #13
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %entry4.i, ptr noundef %18, ptr noundef %mm_head) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.if.end22_crit_edge

if.end.i.if.end22_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %entry4.i, ptr %prev.i, align 4
  %20 = ptrtoint ptr %entry4.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %mm_head, ptr %entry4.i, align 8
  %21 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %entry4.i, ptr %18, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.end.i.i.i, %if.end.i.if.end22_crit_edge
  tail call void @mutex_unlock(ptr noundef %mm_list_lock) #13
  %size_ib_pd.i = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 1, i32 125
  %23 = ptrtoint ptr %size_ib_pd.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %size_ib_pd.i, align 4
  %call9.i.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %24, i32 noundef 3520) #17
  %tobool.not.i = icmp eq ptr %call9.i.i.i.i, null
  br i1 %tobool.not.i, label %if.end22.pd_err_crit_edge, label %if.end.i93

if.end22.pd_err_crit_edge:                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  br label %pd_err

if.end.i93:                                       ; preds = %if.end22
  %device.i = getelementptr inbounds %struct.ib_pd, ptr %call9.i.i.i.i, i32 0, i32 2
  %25 = ptrtoint ptr %device.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %1, ptr %device.i, align 8
  %cntxt_pd.i = getelementptr inbounds %struct.ocrdma_ucontext, ptr %uctx, i32 0, i32 3
  %26 = ptrtoint ptr %cntxt_pd.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call9.i.i.i.i, ptr %cntxt_pd.i, align 4
  %call4.i = tail call fastcc i32 @_ocrdma_alloc_pd(ptr noundef %1, ptr noundef nonnull %call9.i.i.i.i, ptr noundef %uctx, ptr noundef nonnull %udata) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  %27 = ptrtoint ptr %cntxt_pd.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cntxt_pd.i, align 4
  br i1 %tobool5.not.i, label %if.end26, label %if.then6.i

if.then6.i:                                       ; preds = %if.end.i93
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef %28) #13
  br label %pd_err

if.end26:                                         ; preds = %if.end.i93
  %uctx10.i = getelementptr inbounds %struct.ocrdma_pd, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %uctx10.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %uctx, ptr %uctx10.i, align 4
  %30 = ptrtoint ptr %cntxt_pd.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cntxt_pd.i, align 4
  %device13.i = getelementptr inbounds %struct.ib_pd, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %device13.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %1, ptr %device13.i, align 4
  %id = getelementptr inbounds %struct.ocrdma_dev, ptr %1, i32 0, i32 25
  %33 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %id, align 4
  %35 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %resp, align 8
  %attr = getelementptr inbounds %struct.ocrdma_dev, ptr %1, i32 0, i32 1
  %max_inline_data = getelementptr inbounds %struct.ocrdma_dev, ptr %1, i32 0, i32 1, i32 11
  %36 = ptrtoint ptr %max_inline_data to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %max_inline_data, align 8
  %max_inline_data27 = getelementptr inbounds %struct.ocrdma_alloc_ucontext_resp, ptr %resp, i32 0, i32 2
  %38 = ptrtoint ptr %max_inline_data27 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %max_inline_data27, align 8
  %wqe_size = getelementptr inbounds %struct.ocrdma_dev, ptr %1, i32 0, i32 1, i32 27
  %39 = ptrtoint ptr %wqe_size to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %wqe_size, align 4
  %wqe_size29 = getelementptr inbounds %struct.ocrdma_alloc_ucontext_resp, ptr %resp, i32 0, i32 1
  %41 = ptrtoint ptr %wqe_size29 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %wqe_size29, align 4
  %rqe_size = getelementptr inbounds %struct.ocrdma_dev, ptr %1, i32 0, i32 1, i32 28
  %42 = ptrtoint ptr %rqe_size to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rqe_size, align 8
  %rqe_size31 = getelementptr inbounds %struct.ocrdma_alloc_ucontext_resp, ptr %resp, i32 0, i32 6
  %44 = ptrtoint ptr %rqe_size31 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %rqe_size31, align 4
  %dpp_wqe_size = getelementptr inbounds %struct.ocrdma_alloc_ucontext_resp, ptr %resp, i32 0, i32 3
  %45 = ptrtoint ptr %dpp_wqe_size to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %40, ptr %dpp_wqe_size, align 4
  %fw_ver = getelementptr inbounds %struct.ocrdma_alloc_ucontext_resp, ptr %resp, i32 0, i32 7
  %46 = call ptr @memcpy(ptr %fw_ver, ptr %attr, i32 32)
  %outbuf.i = getelementptr inbounds %struct.ib_udata, ptr %udata, i32 0, i32 1
  %47 = ptrtoint ptr %outbuf.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %outbuf.i, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.16, i32 noundef 174) #13
  %call.i.i.i95 = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i.i95, label %if.end26.cpy_err_crit_edge, label %if.end.i.i.i96

if.end26.cpy_err_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpy_err

if.end.i.i.i96:                                   ; preds = %if.end26
  %49 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %48, i32 80, i32 -1226833920) #18, !srcloc !136
  %asmresult.i.i.i = extractvalue { i32, i32 } %49, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %copy_to_user.exit.i, label %if.end.i.i.i96.cpy_err_crit_edge

if.end.i.i.i96.cpy_err_crit_edge:                 ; preds = %if.end.i.i.i96
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpy_err

copy_to_user.exit.i:                              ; preds = %if.end.i.i.i96
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %resp, i32 noundef 80) #13
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %48, ptr noundef nonnull %resp, i32 noundef 80) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i)
  %tobool.not.i97 = icmp eq i32 %call.i12.i.i.i, 0
  br i1 %tobool.not.i97, label %copy_to_user.exit.i.cleanup_crit_edge, label %copy_to_user.exit.i.cpy_err_crit_edge

copy_to_user.exit.i.cpy_err_crit_edge:            ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpy_err

copy_to_user.exit.i.cleanup_crit_edge:            ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cpy_err:                                          ; preds = %copy_to_user.exit.i.cpy_err_crit_edge, %if.end.i.i.i96.cpy_err_crit_edge, %if.end26.cpy_err_crit_edge
  %50 = ptrtoint ptr %cntxt_pd.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %cntxt_pd.i, align 4
  %device.i99 = getelementptr inbounds %struct.ib_pd, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %device.i99 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %device.i99, align 4
  %pd_in_use.i = getelementptr inbounds %struct.ocrdma_ucontext, ptr %uctx, i32 0, i32 4
  %54 = ptrtoint ptr %pd_in_use.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %pd_in_use.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool.not.i100 = icmp eq i32 %55, 0
  br i1 %tobool.not.i100, label %cpy_err.ocrdma_dealloc_ucontext_pd.exit_crit_edge, label %do.end.i

cpy_err.ocrdma_dealloc_ucontext_pd.exit_crit_edge: ; preds = %cpy_err
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocrdma_dealloc_ucontext_pd.exit

do.end.i:                                         ; preds = %cpy_err
  call void @__sanitizer_cov_trace_pc() #15
  %id.i = getelementptr inbounds %struct.ocrdma_dev, ptr %53, i32 0, i32 25
  %56 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %id.i, align 4
  %id1.i = getelementptr inbounds %struct.ocrdma_pd, ptr %51, i32 0, i32 2
  %58 = ptrtoint ptr %id1.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %id1.i, align 4
  %call2.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef %57, i32 noundef %59) #19
  br label %ocrdma_dealloc_ucontext_pd.exit

ocrdma_dealloc_ucontext_pd.exit:                  ; preds = %do.end.i, %cpy_err.ocrdma_dealloc_ucontext_pd.exit_crit_edge
  %60 = ptrtoint ptr %cntxt_pd.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %cntxt_pd.i, align 4
  call fastcc void @_ocrdma_dealloc_pd(ptr noundef %53, ptr noundef %51) #13
  call void @kfree(ptr noundef %51) #13
  br label %pd_err

pd_err:                                           ; preds = %ocrdma_dealloc_ucontext_pd.exit, %if.then6.i, %if.end22.pd_err_crit_edge
  %status.0 = phi i32 [ -14, %ocrdma_dealloc_ucontext_pd.exit ], [ %call4.i, %if.then6.i ], [ -12, %if.end22.pd_err_crit_edge ]
  %61 = ptrtoint ptr %pa to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %pa, align 4
  %conv43 = zext i32 %62 to i64
  %63 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %len, align 4
  call void @mutex_lock_nested(ptr noundef %mm_list_lock, i32 noundef 0) #13
  %65 = ptrtoint ptr %mm_head to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %mm_head, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %land.lhs.true.i.for.cond.i_crit_edge, %pd_err
  %.pn.in.i = phi ptr [ %66, %pd_err ], [ %.pn.i, %land.lhs.true.i.for.cond.i_crit_edge ]
  %mm.0.i = getelementptr i8, ptr %.pn.in.i, i32 -16
  %67 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %.pn.i = load ptr, ptr %.pn.in.i, align 8
  %cmp.not.i = icmp eq ptr %.pn.in.i, %mm_head
  br i1 %cmp.not.i, label %for.cond.i.ocrdma_del_mmap.exit_crit_edge, label %for.body.i

for.cond.i.ocrdma_del_mmap.exit_crit_edge:        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocrdma_del_mmap.exit

for.body.i:                                       ; preds = %for.cond.i
  %len9.i = getelementptr i8, ptr %.pn.in.i, i32 -8
  %68 = ptrtoint ptr %len9.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %len9.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %69, i32 %64)
  %cmp10.not.i = icmp eq i32 %69, %64
  br i1 %cmp10.not.i, label %for.body.i.if.end.i105_crit_edge, label %land.lhs.true.i

for.body.i.if.end.i105_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i105

land.lhs.true.i:                                  ; preds = %for.body.i
  %70 = ptrtoint ptr %mm.0.i to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %mm.0.i, align 8
  %cmp13.not.i = icmp eq i64 %71, %conv43
  br i1 %cmp13.not.i, label %land.lhs.true.i.if.end.i105_crit_edge, label %land.lhs.true.i.for.cond.i_crit_edge

land.lhs.true.i.for.cond.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i

land.lhs.true.i.if.end.i105_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i105

if.end.i105:                                      ; preds = %land.lhs.true.i.if.end.i105_crit_edge, %for.body.i.if.end.i105_crit_edge
  %call.i.i.i104 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in.i) #13
  br i1 %call.i.i.i104, label %if.end.i.i.i106, label %if.end.i105.list_del.exit.i_crit_edge

if.end.i105.list_del.exit.i_crit_edge:            ; preds = %if.end.i105
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit.i

if.end.i.i.i106:                                  ; preds = %if.end.i105
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in.i, i32 0, i32 1
  %72 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %prev.i.i.i, align 4
  %74 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %.pn.in.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %73, ptr %prev1.i.i.i.i, align 4
  %77 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile ptr %75, ptr %73, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i106, %if.end.i105.list_del.exit.i_crit_edge
  %78 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in.i, align 4
  %prev.i.i107 = getelementptr inbounds %struct.list_head, ptr %.pn.in.i, i32 0, i32 1
  %79 = ptrtoint ptr %prev.i.i107 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i107, align 4
  call void @kfree(ptr noundef %mm.0.i) #13
  br label %ocrdma_del_mmap.exit

ocrdma_del_mmap.exit:                             ; preds = %list_del.exit.i, %for.cond.i.ocrdma_del_mmap.exit_crit_edge
  call void @mutex_unlock(ptr noundef %mm_list_lock) #13
  br label %map_err

map_err:                                          ; preds = %ocrdma_del_mmap.exit, %if.end10.map_err_crit_edge
  %status.1 = phi i32 [ %status.0, %ocrdma_del_mmap.exit ], [ -12, %if.end10.map_err_crit_edge ]
  %80 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %len, align 4
  %82 = ptrtoint ptr %ah_tbl to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ah_tbl, align 4
  %84 = ptrtoint ptr %pa to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %pa, align 4
  call void @dma_free_attrs(ptr noundef %dev3, i32 noundef %81, ptr noundef %83, i32 noundef %85, i32 noundef 0) #13
  br label %cleanup

cleanup:                                          ; preds = %map_err, %copy_to_user.exit.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.1, %map_err ], [ -14, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %copy_to_user.exit.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %resp) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocrdma_dealloc_ucontext(ptr noundef %ibctx) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ibctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ibctx, align 4
  %pdev2 = getelementptr inbounds %struct.ocrdma_dev, ptr %1, i32 0, i32 20, i32 6
  %2 = ptrtoint ptr %pdev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev2, align 4
  %cntxt_pd.i = getelementptr inbounds %struct.ocrdma_ucontext, ptr %ibctx, i32 0, i32 3
  %4 = ptrtoint ptr %cntxt_pd.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cntxt_pd.i, align 4
  %device.i = getelementptr inbounds %struct.ib_pd, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device.i, align 4
  %pd_in_use.i = getelementptr inbounds %struct.ocrdma_ucontext, ptr %ibctx, i32 0, i32 4
  %8 = ptrtoint ptr %pd_in_use.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pd_in_use.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %entry.ocrdma_dealloc_ucontext_pd.exit_crit_edge, label %do.end.i

entry.ocrdma_dealloc_ucontext_pd.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocrdma_dealloc_ucontext_pd.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %id.i = getelementptr inbounds %struct.ocrdma_dev, ptr %7, i32 0, i32 25
  %10 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id.i, align 4
  %id1.i = getelementptr inbounds %struct.ocrdma_pd, ptr %5, i32 0, i32 2
  %12 = ptrtoint ptr %id1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id1.i, align 4
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef %11, i32 noundef %13) #19
  br label %ocrdma_dealloc_ucontext_pd.exit

ocrdma_dealloc_ucontext_pd.exit:                  ; preds = %do.end.i, %entry.ocrdma_dealloc_ucontext_pd.exit_crit_edge
  %14 = ptrtoint ptr %cntxt_pd.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %cntxt_pd.i, align 4
  tail call fastcc void @_ocrdma_dealloc_pd(ptr noundef %7, ptr noundef %5) #13
  tail call void @kfree(ptr noundef %5) #13
  %ah_tbl = getelementptr inbounds %struct.ocrdma_ucontext, ptr %ibctx, i32 0, i32 5
  %pa = getelementptr inbounds %struct.ocrdma_ucontext, ptr %ibctx, i32 0, i32 5, i32 1
  %15 = ptrtoint ptr %pa to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pa, align 4
  %conv = zext i32 %16 to i64
  %len = getelementptr inbounds %struct.ocrdma_ucontext, ptr %ibctx, i32 0, i32 5, i32 2
  %17 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len, align 4
  %mm_list_lock.i = getelementptr inbounds %struct.ocrdma_ucontext, ptr %ibctx, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mm_list_lock.i, i32 noundef 0) #13
  %mm_head.i = getelementptr inbounds %struct.ocrdma_ucontext, ptr %ibctx, i32 0, i32 1
  %19 = ptrtoint ptr %mm_head.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mm_head.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %land.lhs.true.i.for.cond.i_crit_edge, %ocrdma_dealloc_ucontext_pd.exit
  %.pn.in.i = phi ptr [ %20, %ocrdma_dealloc_ucontext_pd.exit ], [ %.pn.i, %land.lhs.true.i.for.cond.i_crit_edge ]
  %mm.0.i = getelementptr i8, ptr %.pn.in.i, i32 -16
  %21 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn.i = load ptr, ptr %.pn.in.i, align 8
  %cmp.not.i = icmp eq ptr %.pn.in.i, %mm_head.i
  br i1 %cmp.not.i, label %for.cond.i.ocrdma_del_mmap.exit_crit_edge, label %for.body.i

for.cond.i.ocrdma_del_mmap.exit_crit_edge:        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocrdma_del_mmap.exit

for.body.i:                                       ; preds = %for.cond.i
  %len9.i = getelementptr i8, ptr %.pn.in.i, i32 -8
  %22 = ptrtoint ptr %len9.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len9.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %18)
  %cmp10.not.i = icmp eq i32 %23, %18
  br i1 %cmp10.not.i, label %for.body.i.if.end.i_crit_edge, label %land.lhs.true.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %24 = ptrtoint ptr %mm.0.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %mm.0.i, align 8
  %cmp13.not.i = icmp eq i64 %25, %conv
  br i1 %cmp13.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.for.cond.i_crit_edge

land.lhs.true.i.for.cond.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %for.body.i.if.end.i_crit_edge
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in.i) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_del.exit.i_crit_edge

if.end.i.list_del.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in.i, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i.i.i, align 4
  %28 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %.pn.in.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev1.i.i.i.i, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %29, ptr %27, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end.i.list_del.exit.i_crit_edge
  %32 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in.i, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %mm.0.i) #13
  br label %ocrdma_del_mmap.exit

ocrdma_del_mmap.exit:                             ; preds = %list_del.exit.i, %for.cond.i.ocrdma_del_mmap.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mm_list_lock.i) #13
  %dev4 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %34 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %len, align 4
  %36 = ptrtoint ptr %ah_tbl to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ah_tbl, align 4
  %38 = ptrtoint ptr %pa to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pa, align 4
  tail call void @dma_free_attrs(ptr noundef %dev4, i32 noundef %35, ptr noundef %37, i32 noundef %39, i32 noundef 0) #13
  %40 = ptrtoint ptr %mm_head.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mm_head.i, align 4
  %cmp.not43 = icmp eq ptr %41, %mm_head.i
  br i1 %cmp.not43, label %ocrdma_del_mmap.exit.for.end_crit_edge, label %ocrdma_del_mmap.exit.for.body_crit_edge

ocrdma_del_mmap.exit.for.body_crit_edge:          ; preds = %ocrdma_del_mmap.exit
  br label %for.body

ocrdma_del_mmap.exit.for.end_crit_edge:           ; preds = %ocrdma_del_mmap.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %ocrdma_del_mmap.exit.for.body_crit_edge
  %.pn.in44 = phi ptr [ %.pn, %list_del.exit.for.body_crit_edge ], [ %41, %ocrdma_del_mmap.exit.for.body_crit_edge ]
  %mm.0 = getelementptr i8, ptr %.pn.in44, i32 -16
  %42 = ptrtoint ptr %.pn.in44 to i32
  call void @__asan_load4_noabort(i32 %42)
  %.pn = load ptr, ptr %.pn.in44, align 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in44) #13
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i39 = getelementptr inbounds %struct.list_head, ptr %.pn.in44, i32 0, i32 1
  %43 = ptrtoint ptr %prev.i.i39 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %prev.i.i39, align 4
  %45 = ptrtoint ptr %.pn.in44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %.pn.in44, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %44, ptr %prev1.i.i.i, align 4
  %48 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %46, ptr %44, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %49 = ptrtoint ptr %.pn.in44 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in44, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in44, i32 0, i32 1
  %50 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %mm.0) #13
  %cmp.not = icmp eq ptr %.pn, %mm_head.i
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %ocrdma_del_mmap.exit.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocrdma_mmap(ptr noundef %context, ptr noundef %vma) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %unmapped_db2 = getelementptr inbounds %struct.ocrdma_dev, ptr %1, i32 0, i32 20, i32 1
  %2 = ptrtoint ptr %unmapped_db2 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %unmapped_db2, align 8
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %4 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vm_end, align 4
  %6 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vma, align 4
  %sub = sub i32 %5, %7
  %and = and i32 %7, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vm_pgoff, align 4
  %shl = shl i32 %9, 12
  %conv = zext i32 %shl to i64
  %mm_list_lock.i = getelementptr inbounds %struct.ocrdma_ucontext, ptr %context, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mm_list_lock.i, i32 noundef 0) #13
  %mm_head.i = getelementptr inbounds %struct.ocrdma_ucontext, ptr %context, i32 0, i32 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %land.lhs.true.i.for.cond.i_crit_edge, %if.end
  %.pn.in.i = phi ptr [ %mm_head.i, %if.end ], [ %.pn.i, %land.lhs.true.i.for.cond.i_crit_edge ]
  %10 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %mm.0.i = getelementptr i8, ptr %.pn.i, i32 -16
  %cmp.not.i = icmp eq ptr %.pn.i, %mm_head.i
  br i1 %cmp.not.i, label %ocrdma_search_mmap.exit, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %len3.i = getelementptr i8, ptr %.pn.i, i32 -8
  %11 = ptrtoint ptr %len3.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len3.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %sub)
  %cmp4.not.i = icmp eq i32 %12, %sub
  br i1 %cmp4.not.i, label %for.body.i.if.end9_crit_edge, label %land.lhs.true.i

for.body.i.if.end9_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

land.lhs.true.i:                                  ; preds = %for.body.i
  %13 = ptrtoint ptr %mm.0.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %mm.0.i, align 8
  %cmp7.not.i = icmp eq i64 %14, %conv
  br i1 %cmp7.not.i, label %land.lhs.true.i.if.end9_crit_edge, label %land.lhs.true.i.for.cond.i_crit_edge

land.lhs.true.i.for.cond.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i

land.lhs.true.i.if.end9_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

ocrdma_search_mmap.exit:                          ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @mutex_unlock(ptr noundef %mm_list_lock.i) #13
  br label %cleanup

if.end9:                                          ; preds = %land.lhs.true.i.if.end9_crit_edge, %for.body.i.if.end9_crit_edge
  tail call void @mutex_unlock(ptr noundef %mm_list_lock.i) #13
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %conv)
  %cmp.not = icmp ugt i64 %3, %conv
  br i1 %cmp.not, label %if.end9.if.else_crit_edge, label %land.lhs.true

if.end9.if.else_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true:                                    ; preds = %if.end9
  %db_total_size = getelementptr inbounds %struct.ocrdma_dev, ptr %1, i32 0, i32 20, i32 3
  %15 = ptrtoint ptr %db_total_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %db_total_size, align 4
  %conv14 = zext i32 %16 to i64
  %add = add i64 %3, %conv14
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv)
  %cmp15.not = icmp ult i64 %add, %conv
  br i1 %cmp15.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true17

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true17:                                  ; preds = %land.lhs.true
  %db_page_size = getelementptr inbounds %struct.ocrdma_dev, ptr %1, i32 0, i32 20, i32 2
  %17 = ptrtoint ptr %db_page_size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %db_page_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %18)
  %cmp19.not = icmp ugt i32 %sub, %18
  br i1 %cmp19.not, label %land.lhs.true17.if.else_crit_edge, label %if.then21

land.lhs.true17.if.else_crit_edge:                ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.then21:                                        ; preds = %land.lhs.true17
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %19 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %vm_flags, align 4
  %and22 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end25, label %if.then21.cleanup_crit_edge

if.then21.cleanup_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end25:                                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #15
  %vm_page_prot = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 7
  %21 = ptrtoint ptr %vm_page_prot to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %vm_page_prot, align 4
  %and26 = and i32 %22, -61
  store i32 %and26, ptr %vm_page_prot, align 4
  %23 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %vma, align 4
  %25 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %vm_pgoff, align 4
  %call.i = tail call i32 @remap_pfn_range(ptr noundef %vma, i32 noundef %24, i32 noundef %26, i32 noundef %sub, i32 noundef %and26) #13
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true17.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %if.end9.if.else_crit_edge
  %dpp_unmapped_len = getelementptr inbounds %struct.ocrdma_dev, ptr %1, i32 0, i32 20, i32 5
  %27 = ptrtoint ptr %dpp_unmapped_len to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dpp_unmapped_len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool33.not = icmp eq i32 %28, 0
  br i1 %tobool33.not, label %if.else.if.else68_crit_edge, label %land.lhs.true34

if.else.if.else68_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else68

land.lhs.true34:                                  ; preds = %if.else
  %dpp_unmapped_addr = getelementptr inbounds %struct.ocrdma_dev, ptr %1, i32 0, i32 20, i32 4
  %29 = ptrtoint ptr %dpp_unmapped_addr to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %dpp_unmapped_addr, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %30, i64 %conv)
  %cmp37.not = icmp ugt i64 %30, %conv
  br i1 %cmp37.not, label %land.lhs.true34.if.else68_crit_edge, label %land.lhs.true39

land.lhs.true34.if.else68_crit_edge:              ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else68

land.lhs.true39:                                  ; preds = %land.lhs.true34
  %conv45 = zext i32 %28 to i64
  %add46 = add i64 %30, %conv45
  call void @__sanitizer_cov_trace_cmp8(i64 %add46, i64 %conv)
  %cmp47.not = icmp ult i64 %add46, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %28)
  %cmp52.not = icmp ugt i32 %sub, %28
  %or.cond = select i1 %cmp47.not, i1 true, i1 %cmp52.not
  br i1 %or.cond, label %land.lhs.true39.if.else68_crit_edge, label %if.then54

land.lhs.true39.if.else68_crit_edge:              ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else68

if.then54:                                        ; preds = %land.lhs.true39
  %vm_flags55 = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %31 = ptrtoint ptr %vm_flags55 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %vm_flags55, align 4
  %and56 = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %if.end59, label %if.then54.cleanup_crit_edge

if.then54.cleanup_crit_edge:                      ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end59:                                         ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #15
  %vm_page_prot60 = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 7
  %33 = ptrtoint ptr %vm_page_prot60 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %vm_page_prot60, align 4
  %and61 = and i32 %34, -61
  %or62 = or i32 %and61, 4
  store i32 %or62, ptr %vm_page_prot60, align 4
  %35 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %vma, align 4
  %37 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %vm_pgoff, align 4
  %call.i122 = tail call i32 @remap_pfn_range(ptr noundef %vma, i32 noundef %36, i32 noundef %38, i32 noundef %sub, i32 noundef %or62) #13
  br label %cleanup

if.else68:                                        ; preds = %land.lhs.true39.if.else68_crit_edge, %land.lhs.true34.if.else68_crit_edge, %if.else.if.else68_crit_edge
  %39 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %vma, align 4
  %41 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %vm_pgoff, align 4
  %vm_page_prot71 = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 7
  %43 = ptrtoint ptr %vm_page_prot71 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %vm_page_prot71, align 4
  %call72 = tail call i32 @remap_pfn_range(ptr noundef %vma, i32 noundef %40, i32 noundef %42, i32 noundef %sub, i32 noundef %44) #13
  br label %cleanup

cleanup:                                          ; preds = %if.else68, %if.end59, %if.then54.cleanup_crit_edge, %if.end25, %if.then21.cleanup_crit_edge, %ocrdma_search_mmap.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %ocrdma_search_mmap.exit ], [ -1, %if.then21.cleanup_crit_edge ], [ -1, %if.then54.cleanup_crit_edge ], [ %call.i, %if.end25 ], [ %call.i122, %if.end59 ], [ %call72, %if.else68 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @remap_pfn_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocrdma_alloc_pd(ptr noundef %ibpd, ptr noundef %udata) local_unnamed_addr #3 align 64 {
entry:
  %rsp.i = alloca %struct.ocrdma_alloc_pd_uresp, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.ib_pd, ptr %ibpd, i32 0, i32 2
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %tobool.not = icmp eq ptr %udata, null
  br i1 %tobool.not, label %if.end6.thread, label %if.then

if.then:                                          ; preds = %entry
  %context = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %udata, i32 0, i32 3
  %2 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %context, align 4
  %mm_list_lock.i = getelementptr inbounds %struct.ocrdma_ucontext, ptr %3, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mm_list_lock.i, i32 noundef 0) #13
  %pd_in_use.i = getelementptr inbounds %struct.ocrdma_ucontext, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %pd_in_use.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pd_in_use.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %ocrdma_get_ucontext_pd.exit, label %ocrdma_get_ucontext_pd.exit.thread

ocrdma_get_ucontext_pd.exit.thread:               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @mutex_unlock(ptr noundef %mm_list_lock.i) #13
  br label %if.end6

ocrdma_get_ucontext_pd.exit:                      ; preds = %if.then
  %6 = ptrtoint ptr %pd_in_use.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %pd_in_use.i, align 4
  %cntxt_pd.i = getelementptr inbounds %struct.ocrdma_ucontext, ptr %3, i32 0, i32 3
  %7 = ptrtoint ptr %cntxt_pd.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cntxt_pd.i, align 4
  tail call void @mutex_unlock(ptr noundef %mm_list_lock.i) #13
  %tobool4.not = icmp eq ptr %8, null
  br i1 %tobool4.not, label %ocrdma_get_ucontext_pd.exit.if.end6_crit_edge, label %ocrdma_get_ucontext_pd.exit.cond.end.i_crit_edge

ocrdma_get_ucontext_pd.exit.cond.end.i_crit_edge: ; preds = %ocrdma_get_ucontext_pd.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end.i

ocrdma_get_ucontext_pd.exit.if.end6_crit_edge:    ; preds = %ocrdma_get_ucontext_pd.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

if.end6:                                          ; preds = %ocrdma_get_ucontext_pd.exit.if.end6_crit_edge, %ocrdma_get_ucontext_pd.exit.thread
  %call8 = tail call fastcc i32 @_ocrdma_alloc_pd(ptr noundef %1, ptr noundef %ibpd, ptr noundef %3, ptr noundef nonnull %udata)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end6.cond.end.i_crit_edge, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6.cond.end.i_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end.i

if.end6.thread:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call857 = tail call fastcc i32 @_ocrdma_alloc_pd(ptr noundef %1, ptr noundef %ibpd, ptr noundef null, ptr noundef null)
  br label %cleanup

cond.end.i:                                       ; preds = %if.end6.cond.end.i_crit_edge, %ocrdma_get_ucontext_pd.exit.cond.end.i_crit_edge
  %tobool19.not55 = phi i1 [ false, %ocrdma_get_ucontext_pd.exit.cond.end.i_crit_edge ], [ true, %if.end6.cond.end.i_crit_edge ]
  %pd.054 = phi ptr [ %8, %ocrdma_get_ucontext_pd.exit.cond.end.i_crit_edge ], [ %ibpd, %if.end6.cond.end.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %rsp.i) #13
  %9 = getelementptr inbounds %struct.ocrdma_alloc_pd_uresp, ptr %rsp.i, i32 0, i32 1
  %10 = getelementptr inbounds %struct.ocrdma_alloc_pd_uresp, ptr %rsp.i, i32 0, i32 2
  %11 = getelementptr inbounds %struct.ocrdma_alloc_pd_uresp, ptr %rsp.i, i32 0, i32 3
  %12 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %context, align 4
  %14 = call ptr @memset(ptr %10, i32 0, i32 16)
  %id.i = getelementptr inbounds %struct.ocrdma_pd, ptr %pd.054, i32 0, i32 2
  %15 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %id.i, align 4
  %17 = ptrtoint ptr %rsp.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %rsp.i, align 4
  %dpp_enabled.i = getelementptr inbounds %struct.ocrdma_pd, ptr %pd.054, i32 0, i32 5
  %18 = ptrtoint ptr %dpp_enabled.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %dpp_enabled.i, align 4, !range !137
  %20 = zext i8 %19 to i32
  %21 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %9, align 4
  %unmapped_db.i.i = getelementptr inbounds %struct.ocrdma_dev, ptr %1, i32 0, i32 20, i32 1
  %22 = ptrtoint ptr %unmapped_db.i.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %unmapped_db.i.i, align 8
  %db_page_size.i.i = getelementptr inbounds %struct.ocrdma_dev, ptr %1, i32 0, i32 20, i32 2
  %24 = ptrtoint ptr %db_page_size.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %db_page_size.i.i, align 8
  %mul.i.i = mul i32 %25, %16
  %conv.i.i = zext i32 %mul.i.i to i64
  %add.i.i = add i64 %23, %conv.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %26 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 3520, i32 noundef 24) #16
  %cmp.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %cmp.i.i, label %cond.end.i.err_crit_edge, label %if.end.i.i

cond.end.i.err_crit_edge:                         ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %err

if.end.i.i:                                       ; preds = %cond.end.i
  %27 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %add.i.i, ptr %call7.i.i.i.i, align 8
  %len3.i.i = getelementptr inbounds %struct.anon.201, ptr %call7.i.i.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %len3.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %25, ptr %len3.i.i, align 8
  %entry4.i.i = getelementptr inbounds %struct.ocrdma_mm, ptr %call7.i.i.i.i, i32 0, i32 1
  %29 = ptrtoint ptr %entry4.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %entry4.i.i, ptr %entry4.i.i, align 8
  %prev.i.i.i = getelementptr inbounds %struct.ocrdma_mm, ptr %call7.i.i.i.i, i32 0, i32 1, i32 1
  %30 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %entry4.i.i, ptr %prev.i.i.i, align 4
  %mm_list_lock.i.i = getelementptr inbounds %struct.ocrdma_ucontext, ptr %13, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mm_list_lock.i.i, i32 noundef 0) #13
  %mm_head.i.i = getelementptr inbounds %struct.ocrdma_ucontext, ptr %13, i32 0, i32 1
  %prev.i13.i.i = getelementptr inbounds %struct.ocrdma_ucontext, ptr %13, i32 0, i32 1, i32 1
  %31 = ptrtoint ptr %prev.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev.i13.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %entry4.i.i, ptr noundef %32, ptr noundef %mm_head.i.i) #13
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end.i.i.if.end.i_crit_edge

if.end.i.i.if.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.end.i.i.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %33 = ptrtoint ptr %prev.i13.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %entry4.i.i, ptr %prev.i13.i.i, align 4
  %34 = ptrtoint ptr %entry4.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %mm_head.i.i, ptr %entry4.i.i, align 8
  %35 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev.i.i.i, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %entry4.i.i, ptr %32, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.end.i.i.i.i, %if.end.i.i.if.end.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %mm_list_lock.i.i) #13
  %37 = ptrtoint ptr %dpp_enabled.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %dpp_enabled.i, align 4, !range !137
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool10.not.i = icmp eq i8 %38, 0
  br i1 %tobool10.not.i, label %if.end.i.if.end22.i_crit_edge, label %if.then11.i

if.end.i.if.end22.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22.i

if.then11.i:                                      ; preds = %if.end.i
  %dpp_unmapped_addr.i = getelementptr inbounds %struct.ocrdma_dev, ptr %1, i32 0, i32 20, i32 4
  %39 = ptrtoint ptr %dpp_unmapped_addr.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %dpp_unmapped_addr.i, align 8
  %41 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %id.i, align 4
  %mul.i = shl i32 %42, 12
  %conv14.i = zext i32 %mul.i to i64
  %add.i = add i64 %40, %conv14.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %43 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i62.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %43, i32 noundef 3520, i32 noundef 24) #16
  %cmp.i63.i = icmp eq ptr %call7.i.i.i62.i, null
  br i1 %cmp.i63.i, label %if.then11.i.dpp_map_err.i_crit_edge, label %if.end.i71.i

if.then11.i.dpp_map_err.i_crit_edge:              ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dpp_map_err.i

if.end.i71.i:                                     ; preds = %if.then11.i
  %44 = ptrtoint ptr %call7.i.i.i62.i to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %add.i, ptr %call7.i.i.i62.i, align 8
  %len3.i64.i = getelementptr inbounds %struct.anon.201, ptr %call7.i.i.i62.i, i32 0, i32 1
  %45 = ptrtoint ptr %len3.i64.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 4096, ptr %len3.i64.i, align 8
  %entry4.i65.i = getelementptr inbounds %struct.ocrdma_mm, ptr %call7.i.i.i62.i, i32 0, i32 1
  %46 = ptrtoint ptr %entry4.i65.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %entry4.i65.i, ptr %entry4.i65.i, align 8
  %prev.i.i66.i = getelementptr inbounds %struct.ocrdma_mm, ptr %call7.i.i.i62.i, i32 0, i32 1, i32 1
  %47 = ptrtoint ptr %prev.i.i66.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %entry4.i65.i, ptr %prev.i.i66.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %mm_list_lock.i.i, i32 noundef 0) #13
  %48 = ptrtoint ptr %prev.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %prev.i13.i.i, align 4
  %call.i.i.i70.i = tail call zeroext i1 @__list_add_valid(ptr noundef %entry4.i65.i, ptr noundef %49, ptr noundef %mm_head.i.i) #13
  br i1 %call.i.i.i70.i, label %if.end.i.i.i72.i, label %if.end.i71.i.if.end18.i_crit_edge

if.end.i71.i.if.end18.i_crit_edge:                ; preds = %if.end.i71.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18.i

if.end.i.i.i72.i:                                 ; preds = %if.end.i71.i
  call void @__sanitizer_cov_trace_pc() #15
  %50 = ptrtoint ptr %prev.i13.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %entry4.i65.i, ptr %prev.i13.i.i, align 4
  %51 = ptrtoint ptr %entry4.i65.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %mm_head.i.i, ptr %entry4.i65.i, align 8
  %52 = ptrtoint ptr %prev.i.i66.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %49, ptr %prev.i.i66.i, align 4
  %53 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %entry4.i65.i, ptr %49, align 4
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.end.i.i.i72.i, %if.end.i71.i.if.end18.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %mm_list_lock.i.i) #13
  %shr.i = lshr i64 %add.i, 32
  %conv20.i = trunc i64 %shr.i to i32
  %54 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %conv20.i, ptr %10, align 4
  %conv21.i = trunc i64 %add.i to i32
  %55 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %conv21.i, ptr %11, align 4
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.end18.i, %if.end.i.if.end22.i_crit_edge
  %dpp_page_addr.0.i = phi i64 [ %add.i, %if.end18.i ], [ 0, %if.end.i.if.end22.i_crit_edge ]
  %outbuf.i.i = getelementptr inbounds %struct.ib_udata, ptr %udata, i32 0, i32 1
  %56 = ptrtoint ptr %outbuf.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %outbuf.i.i, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.16, i32 noundef 174) #13
  %call.i.i.i76.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i.i76.i, label %if.end22.i.ucopy_err.i_crit_edge, label %if.end.i.i.i77.i

if.end22.i.ucopy_err.i_crit_edge:                 ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ucopy_err.i

if.end.i.i.i77.i:                                 ; preds = %if.end22.i
  %58 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %57, i32 24, i32 -1226833920) #18, !srcloc !136
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %58, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i6.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.i6.i.i.i, label %copy_to_user.exit.i.i, label %if.end.i.i.i77.i.ucopy_err.i_crit_edge

if.end.i.i.i77.i.ucopy_err.i_crit_edge:           ; preds = %if.end.i.i.i77.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ucopy_err.i

copy_to_user.exit.i.i:                            ; preds = %if.end.i.i.i77.i
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %rsp.i, i32 noundef 24) #13
  %call.i12.i.i.i.i = call i32 @arm_copy_to_user(ptr noundef %57, ptr noundef nonnull %rsp.i, i32 noundef 24) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i12.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %ocrdma_copy_pd_uresp.exit, label %copy_to_user.exit.i.i.ucopy_err.i_crit_edge

copy_to_user.exit.i.i.ucopy_err.i_crit_edge:      ; preds = %copy_to_user.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ucopy_err.i

ucopy_err.i:                                      ; preds = %copy_to_user.exit.i.i.ucopy_err.i_crit_edge, %if.end.i.i.i77.i.ucopy_err.i_crit_edge, %if.end22.i.ucopy_err.i_crit_edge
  %59 = ptrtoint ptr %dpp_enabled.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %dpp_enabled.i, align 4, !range !137
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool29.not.i = icmp eq i8 %60, 0
  br i1 %tobool29.not.i, label %ucopy_err.i.dpp_map_err.i_crit_edge, label %if.then30.i

ucopy_err.i.dpp_map_err.i_crit_edge:              ; preds = %ucopy_err.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dpp_map_err.i

if.then30.i:                                      ; preds = %ucopy_err.i
  %uctx31.i = getelementptr inbounds %struct.ocrdma_pd, ptr %pd.054, i32 0, i32 1
  %61 = ptrtoint ptr %uctx31.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %uctx31.i, align 4
  %mm_list_lock.i78.i = getelementptr inbounds %struct.ocrdma_ucontext, ptr %62, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %mm_list_lock.i78.i, i32 noundef 0) #13
  %mm_head.i79.i = getelementptr inbounds %struct.ocrdma_ucontext, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %mm_head.i79.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %mm_head.i79.i, align 4
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %land.lhs.true.i.i.for.cond.i.i_crit_edge, %if.then30.i
  %.pn.in.i.i = phi ptr [ %64, %if.then30.i ], [ %.pn.i.i, %land.lhs.true.i.i.for.cond.i.i_crit_edge ]
  %mm.0.i.i = getelementptr i8, ptr %.pn.in.i.i, i32 -16
  %65 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 8
  %cmp.not.i.i = icmp eq ptr %.pn.in.i.i, %mm_head.i79.i
  br i1 %cmp.not.i.i, label %for.cond.i.i.ocrdma_del_mmap.exit.i_crit_edge, label %for.body.i.i

for.cond.i.i.ocrdma_del_mmap.exit.i_crit_edge:    ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocrdma_del_mmap.exit.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %len9.i.i = getelementptr i8, ptr %.pn.in.i.i, i32 -8
  %66 = ptrtoint ptr %len9.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %len9.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %67)
  %cmp10.not.i.i = icmp eq i32 %67, 4096
  br i1 %cmp10.not.i.i, label %for.body.i.i.if.end.i81.i_crit_edge, label %land.lhs.true.i.i

for.body.i.i.if.end.i81.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i81.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %68 = ptrtoint ptr %mm.0.i.i to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %mm.0.i.i, align 8
  %cmp13.not.i.i = icmp eq i64 %69, %dpp_page_addr.0.i
  br i1 %cmp13.not.i.i, label %land.lhs.true.i.i.if.end.i81.i_crit_edge, label %land.lhs.true.i.i.for.cond.i.i_crit_edge

land.lhs.true.i.i.for.cond.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i.i

land.lhs.true.i.i.if.end.i81.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i81.i

if.end.i81.i:                                     ; preds = %land.lhs.true.i.i.if.end.i81.i_crit_edge, %for.body.i.i.if.end.i81.i_crit_edge
  %call.i.i.i80.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in.i.i) #13
  br i1 %call.i.i.i80.i, label %if.end.i.i.i82.i, label %if.end.i81.i.list_del.exit.i.i_crit_edge

if.end.i81.i.list_del.exit.i.i_crit_edge:         ; preds = %if.end.i81.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit.i.i

if.end.i.i.i82.i:                                 ; preds = %if.end.i81.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in.i.i, i32 0, i32 1
  %70 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %prev.i.i.i.i, align 4
  %72 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %.pn.in.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %71, ptr %prev1.i.i.i.i.i, align 4
  %75 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile ptr %73, ptr %71, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i82.i, %if.end.i81.i.list_del.exit.i.i_crit_edge
  %76 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in.i.i, align 4
  %prev.i.i83.i = getelementptr inbounds %struct.list_head, ptr %.pn.in.i.i, i32 0, i32 1
  %77 = ptrtoint ptr %prev.i.i83.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i83.i, align 4
  call void @kfree(ptr noundef %mm.0.i.i) #13
  br label %ocrdma_del_mmap.exit.i

ocrdma_del_mmap.exit.i:                           ; preds = %list_del.exit.i.i, %for.cond.i.i.ocrdma_del_mmap.exit.i_crit_edge
  call void @mutex_unlock(ptr noundef %mm_list_lock.i78.i) #13
  br label %dpp_map_err.i

dpp_map_err.i:                                    ; preds = %ocrdma_del_mmap.exit.i, %ucopy_err.i.dpp_map_err.i_crit_edge, %if.then11.i.dpp_map_err.i_crit_edge
  %status.0.i = phi i32 [ -14, %ocrdma_del_mmap.exit.i ], [ -14, %ucopy_err.i.dpp_map_err.i_crit_edge ], [ -12, %if.then11.i.dpp_map_err.i_crit_edge ]
  %uctx33.i = getelementptr inbounds %struct.ocrdma_pd, ptr %pd.054, i32 0, i32 1
  %78 = ptrtoint ptr %uctx33.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %uctx33.i, align 4
  %mm_list_lock.i84.i = getelementptr inbounds %struct.ocrdma_ucontext, ptr %79, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %mm_list_lock.i84.i, i32 noundef 0) #13
  %mm_head.i85.i = getelementptr inbounds %struct.ocrdma_ucontext, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %mm_head.i85.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %mm_head.i85.i, align 4
  br label %for.cond.i90.i

for.cond.i90.i:                                   ; preds = %land.lhs.true.i95.i.for.cond.i90.i_crit_edge, %dpp_map_err.i
  %.pn.in.i86.i = phi ptr [ %81, %dpp_map_err.i ], [ %.pn.i88.i, %land.lhs.true.i95.i.for.cond.i90.i_crit_edge ]
  %mm.0.i87.i = getelementptr i8, ptr %.pn.in.i86.i, i32 -16
  %82 = ptrtoint ptr %.pn.in.i86.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %.pn.i88.i = load ptr, ptr %.pn.in.i86.i, align 8
  %cmp.not.i89.i = icmp eq ptr %.pn.in.i86.i, %mm_head.i85.i
  br i1 %cmp.not.i89.i, label %for.cond.i90.i.ocrdma_del_mmap.exit103.i_crit_edge, label %for.body.i93.i

for.cond.i90.i.ocrdma_del_mmap.exit103.i_crit_edge: ; preds = %for.cond.i90.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocrdma_del_mmap.exit103.i

for.body.i93.i:                                   ; preds = %for.cond.i90.i
  %len9.i91.i = getelementptr i8, ptr %.pn.in.i86.i, i32 -8
  %83 = ptrtoint ptr %len9.i91.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %len9.i91.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %84, i32 %25)
  %cmp10.not.i92.i = icmp eq i32 %84, %25
  br i1 %cmp10.not.i92.i, label %for.body.i93.i.if.end.i97.i_crit_edge, label %land.lhs.true.i95.i

for.body.i93.i.if.end.i97.i_crit_edge:            ; preds = %for.body.i93.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i97.i

land.lhs.true.i95.i:                              ; preds = %for.body.i93.i
  %85 = ptrtoint ptr %mm.0.i87.i to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %mm.0.i87.i, align 8
  %cmp13.not.i94.i = icmp eq i64 %86, %add.i.i
  br i1 %cmp13.not.i94.i, label %land.lhs.true.i95.i.if.end.i97.i_crit_edge, label %land.lhs.true.i95.i.for.cond.i90.i_crit_edge

land.lhs.true.i95.i.for.cond.i90.i_crit_edge:     ; preds = %land.lhs.true.i95.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i90.i

land.lhs.true.i95.i.if.end.i97.i_crit_edge:       ; preds = %land.lhs.true.i95.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i97.i

if.end.i97.i:                                     ; preds = %land.lhs.true.i95.i.if.end.i97.i_crit_edge, %for.body.i93.i.if.end.i97.i_crit_edge
  %call.i.i.i96.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in.i86.i) #13
  br i1 %call.i.i.i96.i, label %if.end.i.i.i100.i, label %if.end.i97.i.list_del.exit.i102.i_crit_edge

if.end.i97.i.list_del.exit.i102.i_crit_edge:      ; preds = %if.end.i97.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit.i102.i

if.end.i.i.i100.i:                                ; preds = %if.end.i97.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i98.i = getelementptr inbounds %struct.list_head, ptr %.pn.in.i86.i, i32 0, i32 1
  %87 = ptrtoint ptr %prev.i.i.i98.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %prev.i.i.i98.i, align 4
  %89 = ptrtoint ptr %.pn.in.i86.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %.pn.in.i86.i, align 4
  %prev1.i.i.i.i99.i = getelementptr inbounds %struct.list_head, ptr %90, i32 0, i32 1
  %91 = ptrtoint ptr %prev1.i.i.i.i99.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %88, ptr %prev1.i.i.i.i99.i, align 4
  %92 = ptrtoint ptr %88 to i32
  call void @__asan_store4_noabort(i32 %92)
  store volatile ptr %90, ptr %88, align 4
  br label %list_del.exit.i102.i

list_del.exit.i102.i:                             ; preds = %if.end.i.i.i100.i, %if.end.i97.i.list_del.exit.i102.i_crit_edge
  %93 = ptrtoint ptr %.pn.in.i86.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in.i86.i, align 4
  %prev.i.i101.i = getelementptr inbounds %struct.list_head, ptr %.pn.in.i86.i, i32 0, i32 1
  %94 = ptrtoint ptr %prev.i.i101.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i101.i, align 4
  call void @kfree(ptr noundef %mm.0.i87.i) #13
  br label %ocrdma_del_mmap.exit103.i

ocrdma_del_mmap.exit103.i:                        ; preds = %list_del.exit.i102.i, %for.cond.i90.i.ocrdma_del_mmap.exit103.i_crit_edge
  call void @mutex_unlock(ptr noundef %mm_list_lock.i84.i) #13
  br label %err

ocrdma_copy_pd_uresp.exit:                        ; preds = %copy_to_user.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %uctx27.i = getelementptr inbounds %struct.ocrdma_pd, ptr %pd.054, i32 0, i32 1
  %95 = ptrtoint ptr %uctx27.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %13, ptr %uctx27.i, align 4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %rsp.i) #13
  br label %cleanup

err:                                              ; preds = %ocrdma_del_mmap.exit103.i, %cond.end.i.err_crit_edge
  %retval.0.i.ph = phi i32 [ -12, %cond.end.i.err_crit_edge ], [ %status.0.i, %ocrdma_del_mmap.exit103.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %rsp.i) #13
  br i1 %tobool19.not55, label %if.else, label %if.then20

if.then20:                                        ; preds = %err
  call void @__sanitizer_cov_trace_pc() #15
  call void @mutex_lock_nested(ptr noundef %mm_list_lock.i, i32 noundef 0) #13
  %96 = ptrtoint ptr %pd_in_use.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 0, ptr %pd_in_use.i, align 4
  call void @mutex_unlock(ptr noundef %mm_list_lock.i) #13
  br label %cleanup

if.else:                                          ; preds = %err
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @_ocrdma_dealloc_pd(ptr noundef %1, ptr noundef %pd.054)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then20, %ocrdma_copy_pd_uresp.exit, %if.end6.thread, %if.end6.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %ocrdma_copy_pd_uresp.exit ], [ %retval.0.i.ph, %if.then20 ], [ %retval.0.i.ph, %if.else ], [ %call8, %if.end6.cleanup_crit_edge ], [ %call857, %if.end6.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_ocrdma_alloc_pd(ptr noundef %dev, ptr noundef %pd, ptr noundef readnone %uctx, ptr noundef readnone %udata) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %udata, null
  %tobool1.not = icmp eq ptr %uctx, null
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %entry.if.end_crit_edge, label %land.lhs.true2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true2:                                   ; preds = %entry
  %max_dpp_pds = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 1, i32 4
  %0 = ptrtoint ptr %max_dpp_pds to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %max_dpp_pds, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool3.not = icmp eq i16 %1, 0
  br i1 %tobool3.not, label %land.lhs.true2.if.end_crit_edge, label %if.then

land.lhs.true2.if.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %land.lhs.true2
  %dev_family.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 20, i32 9
  %2 = ptrtoint ptr %dev_family.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dev_family.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %3)
  %cmp.i = icmp eq i32 %3, 15
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then.ocrdma_get_asic_type.exit_crit_edge

if.then.ocrdma_get_asic_type.exit_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocrdma_get_asic_type.exit

land.lhs.true.i:                                  ; preds = %if.then
  %asic_id.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 31
  %4 = ptrtoint ptr %asic_id.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %asic_id.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %if.then.i, label %land.lhs.true.i.ocrdma_get_asic_type.exit_crit_edge

land.lhs.true.i.ocrdma_get_asic_type.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocrdma_get_asic_type.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %pdev.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 20, i32 6
  %6 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev.i, align 4
  %call.i = tail call i32 @pci_read_config_dword(ptr noundef %7, i32 noundef 156, ptr noundef %asic_id.i) #13
  br label %ocrdma_get_asic_type.exit

ocrdma_get_asic_type.exit:                        ; preds = %if.then.i, %land.lhs.true.i.ocrdma_get_asic_type.exit_crit_edge, %if.then.ocrdma_get_asic_type.exit_crit_edge
  %asic_id3.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 31
  %8 = ptrtoint ptr %asic_id3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %asic_id3.i, align 8
  %and.i = lshr i32 %9, 8
  %conv.i = trunc i32 %and.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %conv.i)
  %cmp = icmp eq i8 %conv.i, 4
  %dpp_enabled = getelementptr inbounds %struct.ocrdma_pd, ptr %pd, i32 0, i32 5
  %frombool = zext i1 %cmp to i8
  %10 = ptrtoint ptr %dpp_enabled to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %frombool, ptr %dpp_enabled, align 4
  br i1 %cmp, label %cond.true, label %ocrdma_get_asic_type.exit.cond.end_crit_edge

ocrdma_get_asic_type.exit.cond.end_crit_edge:     ; preds = %ocrdma_get_asic_type.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.true:                                        ; preds = %ocrdma_get_asic_type.exit
  call void @__sanitizer_cov_trace_pc() #15
  %db_page_size = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 20, i32 2
  %11 = ptrtoint ptr %db_page_size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %db_page_size, align 8
  %wqe_size = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 1, i32 27
  %13 = ptrtoint ptr %wqe_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %wqe_size, align 4
  %div = udiv i32 %12, %14
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %ocrdma_get_asic_type.exit.cond.end_crit_edge
  %cond = phi i32 [ %div, %cond.true ], [ 0, %ocrdma_get_asic_type.exit.cond.end_crit_edge ]
  %num_dpp_qp = getelementptr inbounds %struct.ocrdma_pd, ptr %pd, i32 0, i32 3
  %15 = ptrtoint ptr %num_dpp_qp to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %cond, ptr %num_dpp_qp, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end, %land.lhs.true2.if.end_crit_edge, %entry.if.end_crit_edge
  %pd_mgr = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 50
  %16 = ptrtoint ptr %pd_mgr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pd_mgr, align 8
  %pd_prealloc_valid = getelementptr inbounds %struct.ocrdma_pd_resource_mgr, ptr %17, i32 0, i32 11
  %18 = ptrtoint ptr %pd_prealloc_valid to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %pd_prealloc_valid, align 4, !range !137
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool10.not = icmp eq i8 %19, 0
  br i1 %tobool10.not, label %retry.preheader, label %if.then11

retry.preheader:                                  ; preds = %if.end
  %dpp_enabled17 = getelementptr inbounds %struct.ocrdma_pd, ptr %pd, i32 0, i32 5
  %call1441 = tail call i32 @ocrdma_mbx_alloc_pd(ptr noundef %dev, ptr noundef %pd) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1441)
  %tobool15.not42 = icmp eq i32 %call1441, 0
  br i1 %tobool15.not42, label %retry.preheader.cleanup_crit_edge, label %if.then16.lr.ph

retry.preheader.cleanup_crit_edge:                ; preds = %retry.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then16.lr.ph:                                  ; preds = %retry.preheader
  %num_dpp_qp21 = getelementptr inbounds %struct.ocrdma_pd, ptr %pd, i32 0, i32 3
  %20 = ptrtoint ptr %dpp_enabled17 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %dpp_enabled17, align 4, !range !137
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool18.not45 = icmp eq i8 %21, 0
  br i1 %tobool18.not45, label %if.then16.lr.ph.cleanup_crit_edge, label %if.then16.lr.ph.if.then19_crit_edge

if.then16.lr.ph.if.then19_crit_edge:              ; preds = %if.then16.lr.ph
  br label %if.then19

if.then16.lr.ph.cleanup_crit_edge:                ; preds = %if.then16.lr.ph
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then11:                                        ; preds = %if.end
  %dev_lock.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %dev_lock.i, i32 noundef 0) #13
  %dpp_enabled.i = getelementptr inbounds %struct.ocrdma_pd, ptr %pd, i32 0, i32 5
  %22 = ptrtoint ptr %dpp_enabled.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %dpp_enabled.i, align 4, !range !137
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i38 = icmp eq i8 %23, 0
  %24 = ptrtoint ptr %pd_mgr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pd_mgr, align 8
  br i1 %tobool.not.i38, label %if.else26.i, label %if.then.i40

if.then.i40:                                      ; preds = %if.then11
  %pd_dpp_count.i = getelementptr inbounds %struct.ocrdma_pd_resource_mgr, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %pd_dpp_count.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %pd_dpp_count.i, align 4
  %max_dpp_pd.i = getelementptr inbounds %struct.ocrdma_pd_resource_mgr, ptr %25, i32 0, i32 7
  %28 = ptrtoint ptr %max_dpp_pd.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %max_dpp_pd.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %27, i16 %29)
  %cmp.i39 = icmp ult i16 %27, %29
  br i1 %cmp.i39, label %if.then4.i, label %if.else.i

if.then4.i:                                       ; preds = %if.then.i40
  %pd_dpp_bitmap.i.i = getelementptr inbounds %struct.ocrdma_pd_resource_mgr, ptr %25, i32 0, i32 10
  %30 = ptrtoint ptr %pd_dpp_bitmap.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pd_dpp_bitmap.i.i, align 4
  %conv.i.i = zext i16 %29 to i32
  %call.i.i = tail call i32 @_find_first_zero_bit_be(ptr noundef %31, i32 noundef %conv.i.i) #13
  %rem.i.i.i = and i32 %call.i.i, 31
  %shl.i.i.i = shl nuw i32 1, %rem.i.i.i
  %conv3.i.i = lshr i32 %call.i.i, 5
  %div2.i.i.i = and i32 %conv3.i.i, 2047
  %add.ptr.i.i.i = getelementptr i32, ptr %31, i32 %div2.i.i.i
  %32 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %add.ptr.i.i.i, align 4
  %or.i.i.i = or i32 %shl.i.i.i, %33
  store i32 %or.i.i.i, ptr %add.ptr.i.i.i, align 4
  %34 = ptrtoint ptr %pd_mgr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pd_mgr, align 8
  %pd_dpp_count.i.i = getelementptr inbounds %struct.ocrdma_pd_resource_mgr, ptr %35, i32 0, i32 5
  %36 = ptrtoint ptr %pd_dpp_count.i.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %pd_dpp_count.i.i, align 4
  %inc.i.i = add i16 %37, 1
  store i16 %inc.i.i, ptr %pd_dpp_count.i.i, align 4
  %38 = load ptr, ptr %pd_mgr, align 8
  %pd_dpp_count6.i.i = getelementptr inbounds %struct.ocrdma_pd_resource_mgr, ptr %38, i32 0, i32 5
  %39 = ptrtoint ptr %pd_dpp_count6.i.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %pd_dpp_count6.i.i, align 4
  %pd_dpp_thrsh.i.i = getelementptr inbounds %struct.ocrdma_pd_resource_mgr, ptr %38, i32 0, i32 6
  %41 = ptrtoint ptr %pd_dpp_thrsh.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %pd_dpp_thrsh.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %40, i16 %42)
  %cmp.i.i = icmp ugt i16 %40, %42
  br i1 %cmp.i.i, label %if.then11.i.i, label %if.then4.i._ocrdma_pd_mgr_get_bitmap.exit.i_crit_edge

if.then4.i._ocrdma_pd_mgr_get_bitmap.exit.i_crit_edge: ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %_ocrdma_pd_mgr_get_bitmap.exit.i

if.then11.i.i:                                    ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #15
  %43 = ptrtoint ptr %pd_dpp_thrsh.i.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %40, ptr %pd_dpp_thrsh.i.i, align 2
  br label %_ocrdma_pd_mgr_get_bitmap.exit.i

_ocrdma_pd_mgr_get_bitmap.exit.i:                 ; preds = %if.then11.i.i, %if.then4.i._ocrdma_pd_mgr_get_bitmap.exit.i_crit_edge
  %44 = ptrtoint ptr %pd_mgr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pd_mgr, align 8
  %pd_dpp_start.i = getelementptr inbounds %struct.ocrdma_pd_resource_mgr, ptr %45, i32 0, i32 4
  %46 = ptrtoint ptr %pd_dpp_start.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %pd_dpp_start.i, align 4
  %conv6.i = and i32 %call.i.i, 65535
  %add.i = add i32 %47, %conv6.i
  %id.i = getelementptr inbounds %struct.ocrdma_pd, ptr %pd, i32 0, i32 2
  %48 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %add.i, ptr %id.i, align 4
  %49 = load ptr, ptr %pd_mgr, align 8
  %dpp_page_index.i = getelementptr inbounds %struct.ocrdma_pd_resource_mgr, ptr %49, i32 0, i32 8
  %50 = ptrtoint ptr %dpp_page_index.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %dpp_page_index.i, align 2
  %conv8.i = zext i16 %51 to i32
  %add10.i = add nuw nsw i32 %conv6.i, %conv8.i
  %dpp_page.i = getelementptr inbounds %struct.ocrdma_pd, ptr %pd, i32 0, i32 4
  %52 = ptrtoint ptr %dpp_page.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %add10.i, ptr %dpp_page.i, align 4
  br label %ocrdma_get_pd_num.exit

if.else.i:                                        ; preds = %if.then.i40
  %pd_norm_count.i = getelementptr inbounds %struct.ocrdma_pd_resource_mgr, ptr %25, i32 0, i32 1
  %53 = ptrtoint ptr %pd_norm_count.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %pd_norm_count.i, align 4
  %max_normal_pd.i = getelementptr inbounds %struct.ocrdma_pd_resource_mgr, ptr %25, i32 0, i32 3
  %55 = ptrtoint ptr %max_normal_pd.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %max_normal_pd.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %54, i16 %56)
  %cmp15.i = icmp ult i16 %54, %56
  br i1 %cmp15.i, label %if.then17.i, label %if.else.i.ocrdma_get_pd_num.exit_crit_edge

if.else.i.ocrdma_get_pd_num.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocrdma_get_pd_num.exit

if.then17.i:                                      ; preds = %if.else.i
  %pd_norm_bitmap.i.i = getelementptr inbounds %struct.ocrdma_pd_resource_mgr, ptr %25, i32 0, i32 9
  %57 = ptrtoint ptr %pd_norm_bitmap.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pd_norm_bitmap.i.i, align 4
  %conv18.i.i = zext i16 %56 to i32
  %call19.i.i = tail call i32 @_find_first_zero_bit_be(ptr noundef %58, i32 noundef %conv18.i.i) #13
  %rem.i56.i.i = and i32 %call19.i.i, 31
  %shl.i57.i.i = shl nuw i32 1, %rem.i56.i.i
  %conv21.i.i = lshr i32 %call19.i.i, 5
  %div2.i58.i.i = and i32 %conv21.i.i, 2047
  %add.ptr.i59.i.i = getelementptr i32, ptr %58, i32 %div2.i58.i.i
  %59 = ptrtoint ptr %add.ptr.i59.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %add.ptr.i59.i.i, align 4
  %or.i60.i.i = or i32 %shl.i57.i.i, %60
  store i32 %or.i60.i.i, ptr %add.ptr.i59.i.i, align 4
  %61 = ptrtoint ptr %pd_mgr to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pd_mgr, align 8
  %pd_norm_count.i.i = getelementptr inbounds %struct.ocrdma_pd_resource_mgr, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %pd_norm_count.i.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %pd_norm_count.i.i, align 4
  %inc23.i.i = add i16 %64, 1
  store i16 %inc23.i.i, ptr %pd_norm_count.i.i, align 4
  %65 = load ptr, ptr %pd_mgr, align 8
  %pd_norm_count25.i.i = getelementptr inbounds %struct.ocrdma_pd_resource_mgr, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %pd_norm_count25.i.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %pd_norm_count25.i.i, align 4
  %pd_norm_thrsh.i.i = getelementptr inbounds %struct.ocrdma_pd_resource_mgr, ptr %65, i32 0, i32 2
  %68 = ptrtoint ptr %pd_norm_thrsh.i.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %pd_norm_thrsh.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %67, i16 %69)
  %cmp29.i.i = icmp ugt i16 %67, %69
  br i1 %cmp29.i.i, label %if.then31.i.i, label %if.then17.i._ocrdma_pd_mgr_get_bitmap.exit70.i_crit_edge

if.then17.i._ocrdma_pd_mgr_get_bitmap.exit70.i_crit_edge: ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %_ocrdma_pd_mgr_get_bitmap.exit70.i

if.then31.i.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #15
  %70 = ptrtoint ptr %pd_norm_thrsh.i.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %67, ptr %pd_norm_thrsh.i.i, align 2
  br label %_ocrdma_pd_mgr_get_bitmap.exit70.i

_ocrdma_pd_mgr_get_bitmap.exit70.i:               ; preds = %if.then31.i.i, %if.then17.i._ocrdma_pd_mgr_get_bitmap.exit70.i_crit_edge
  %71 = ptrtoint ptr %pd_mgr to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %pd_mgr, align 8
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %72, align 4
  %conv20.i = and i32 %call19.i.i, 65535
  %add21.i = add i32 %74, %conv20.i
  %id22.i = getelementptr inbounds %struct.ocrdma_pd, ptr %pd, i32 0, i32 2
  %75 = ptrtoint ptr %id22.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %add21.i, ptr %id22.i, align 4
  %76 = ptrtoint ptr %dpp_enabled.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 0, ptr %dpp_enabled.i, align 4
  br label %ocrdma_get_pd_num.exit

if.else26.i:                                      ; preds = %if.then11
  %pd_norm_count28.i = getelementptr inbounds %struct.ocrdma_pd_resource_mgr, ptr %25, i32 0, i32 1
  %77 = ptrtoint ptr %pd_norm_count28.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %pd_norm_count28.i, align 4
  %max_normal_pd31.i = getelementptr inbounds %struct.ocrdma_pd_resource_mgr, ptr %25, i32 0, i32 3
  %79 = ptrtoint ptr %max_normal_pd31.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %max_normal_pd31.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %78, i16 %80)
  %cmp33.i = icmp ult i16 %78, %80
  br i1 %cmp33.i, label %if.then35.i, label %if.else26.i.ocrdma_get_pd_num.exit_crit_edge

if.else26.i.ocrdma_get_pd_num.exit_crit_edge:     ; preds = %if.else26.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocrdma_get_pd_num.exit

if.then35.i:                                      ; preds = %if.else26.i
  %pd_norm_bitmap.i72.i = getelementptr inbounds %struct.ocrdma_pd_resource_mgr, ptr %25, i32 0, i32 9
  %81 = ptrtoint ptr %pd_norm_bitmap.i72.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %pd_norm_bitmap.i72.i, align 4
  %conv18.i74.i = zext i16 %80 to i32
  %call19.i75.i = tail call i32 @_find_first_zero_bit_be(ptr noundef %82, i32 noundef %conv18.i74.i) #13
  %rem.i56.i76.i = and i32 %call19.i75.i, 31
  %shl.i57.i77.i = shl nuw i32 1, %rem.i56.i76.i
  %conv21.i78.i = lshr i32 %call19.i75.i, 5
  %div2.i58.i79.i = and i32 %conv21.i78.i, 2047
  %add.ptr.i59.i80.i = getelementptr i32, ptr %82, i32 %div2.i58.i79.i
  %83 = ptrtoint ptr %add.ptr.i59.i80.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %add.ptr.i59.i80.i, align 4
  %or.i60.i81.i = or i32 %shl.i57.i77.i, %84
  store i32 %or.i60.i81.i, ptr %add.ptr.i59.i80.i, align 4
  %85 = ptrtoint ptr %pd_mgr to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %pd_mgr, align 8
  %pd_norm_count.i82.i = getelementptr inbounds %struct.ocrdma_pd_resource_mgr, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %pd_norm_count.i82.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %pd_norm_count.i82.i, align 4
  %inc23.i83.i = add i16 %88, 1
  store i16 %inc23.i83.i, ptr %pd_norm_count.i82.i, align 4
  %89 = load ptr, ptr %pd_mgr, align 8
  %pd_norm_count25.i84.i = getelementptr inbounds %struct.ocrdma_pd_resource_mgr, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %pd_norm_count25.i84.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %pd_norm_count25.i84.i, align 4
  %pd_norm_thrsh.i85.i = getelementptr inbounds %struct.ocrdma_pd_resource_mgr, ptr %89, i32 0, i32 2
  %92 = ptrtoint ptr %pd_norm_thrsh.i85.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %pd_norm_thrsh.i85.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %91, i16 %93)
  %cmp29.i86.i = icmp ugt i16 %91, %93
  br i1 %cmp29.i86.i, label %if.then31.i87.i, label %if.then35.i._ocrdma_pd_mgr_get_bitmap.exit89.i_crit_edge

if.then35.i._ocrdma_pd_mgr_get_bitmap.exit89.i_crit_edge: ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %_ocrdma_pd_mgr_get_bitmap.exit89.i

if.then31.i87.i:                                  ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #15
  %94 = ptrtoint ptr %pd_norm_thrsh.i85.i to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 %91, ptr %pd_norm_thrsh.i85.i, align 2
  br label %_ocrdma_pd_mgr_get_bitmap.exit89.i

_ocrdma_pd_mgr_get_bitmap.exit89.i:               ; preds = %if.then31.i87.i, %if.then35.i._ocrdma_pd_mgr_get_bitmap.exit89.i_crit_edge
  %95 = ptrtoint ptr %pd_mgr to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %pd_mgr, align 8
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %96, align 4
  %conv39.i = and i32 %call19.i75.i, 65535
  %add40.i = add i32 %98, %conv39.i
  %id41.i = getelementptr inbounds %struct.ocrdma_pd, ptr %pd, i32 0, i32 2
  %99 = ptrtoint ptr %id41.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %add40.i, ptr %id41.i, align 4
  br label %ocrdma_get_pd_num.exit

ocrdma_get_pd_num.exit:                           ; preds = %_ocrdma_pd_mgr_get_bitmap.exit89.i, %if.else26.i.ocrdma_get_pd_num.exit_crit_edge, %_ocrdma_pd_mgr_get_bitmap.exit70.i, %if.else.i.ocrdma_get_pd_num.exit_crit_edge, %_ocrdma_pd_mgr_get_bitmap.exit.i
  %status.0.i = phi i32 [ 0, %_ocrdma_pd_mgr_get_bitmap.exit.i ], [ 0, %_ocrdma_pd_mgr_get_bitmap.exit70.i ], [ 0, %_ocrdma_pd_mgr_get_bitmap.exit89.i ], [ -22, %if.else.i.ocrdma_get_pd_num.exit_crit_edge ], [ -22, %if.else26.i.ocrdma_get_pd_num.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %dev_lock.i) #13
  br label %cleanup

if.then16:                                        ; preds = %if.then19
  %100 = ptrtoint ptr %dpp_enabled17 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %dpp_enabled17, align 4, !range !137
  %tobool18.not = icmp eq i8 %101, 0
  br i1 %tobool18.not, label %if.then16.cleanup_crit_edge, label %if.then16.if.then19_crit_edge

if.then16.if.then19_crit_edge:                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then19

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then19:                                        ; preds = %if.then16.if.then19_crit_edge, %if.then16.lr.ph.if.then19_crit_edge
  %102 = ptrtoint ptr %dpp_enabled17 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 0, ptr %dpp_enabled17, align 4
  %103 = ptrtoint ptr %num_dpp_qp21 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 0, ptr %num_dpp_qp21, align 4
  %call14 = tail call i32 @ocrdma_mbx_alloc_pd(ptr noundef %dev, ptr noundef %pd) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then19.cleanup_crit_edge, label %if.then16

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %if.then19.cleanup_crit_edge, %if.then16.cleanup_crit_edge, %ocrdma_get_pd_num.exit, %if.then16.lr.ph.cleanup_crit_edge, %retry.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.0.i, %ocrdma_get_pd_num.exit ], [ 0, %retry.preheader.cleanup_crit_edge ], [ %call1441, %if.then16.lr.ph.cleanup_crit_edge ], [ %call14, %if.then16.cleanup_crit_edge ], [ 0, %if.then19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_ocrdma_dealloc_pd(ptr noundef %dev, ptr noundef %pd) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %pd_mgr = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 50
  %0 = ptrtoint ptr %pd_mgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pd_mgr, align 8
  %pd_prealloc_valid = getelementptr inbounds %struct.ocrdma_pd_resource_mgr, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pd_prealloc_valid to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pd_prealloc_valid, align 4, !range !137
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %id = getelementptr inbounds %struct.ocrdma_pd, ptr %pd, i32 0, i32 2
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %conv = trunc i32 %5 to i16
  %dpp_enabled = getelementptr inbounds %struct.ocrdma_pd, ptr %pd, i32 0, i32 5
  %6 = ptrtoint ptr %dpp_enabled to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dpp_enabled, align 4, !range !137
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not = icmp eq i8 %7, 0
  %dev_lock.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %dev_lock.i, i32 noundef 0) #13
  %8 = ptrtoint ptr %pd_mgr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pd_mgr, align 8
  br i1 %tobool1.not, label %cond.end.thread.i.i, label %cond.end.i.i

cond.end.i.i:                                     ; preds = %if.then
  %pd_dpp_count.i.i = getelementptr inbounds %struct.ocrdma_pd_resource_mgr, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %pd_dpp_count.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %cond.in1.i.i = load i16, ptr %pd_dpp_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %cond.in1.i.i)
  %cmp.i.i = icmp eq i16 %cond.in1.i.i, 0
  br i1 %cmp.i.i, label %cond.end.i.i.ocrdma_put_pd_num.exit_crit_edge, label %if.then7.critedge.i.i

cond.end.i.i.ocrdma_put_pd_num.exit_crit_edge:    ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocrdma_put_pd_num.exit

cond.end.thread.i.i:                              ; preds = %if.then
  %pd_norm_count.i.i = getelementptr inbounds %struct.ocrdma_pd_resource_mgr, ptr %9, i32 0, i32 1
  %11 = ptrtoint ptr %pd_norm_count.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %cond.in19.i.i = load i16, ptr %pd_norm_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %cond.in19.i.i)
  %cmp10.i.i = icmp eq i16 %cond.in19.i.i, 0
  br i1 %cmp10.i.i, label %cond.end.thread.i.i.ocrdma_put_pd_num.exit_crit_edge, label %if.else22.i.i

cond.end.thread.i.i.ocrdma_put_pd_num.exit_crit_edge: ; preds = %cond.end.thread.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocrdma_put_pd_num.exit

if.then7.critedge.i.i:                            ; preds = %cond.end.i.i
  %pd_dpp_start.i.i = getelementptr inbounds %struct.ocrdma_pd_resource_mgr, ptr %9, i32 0, i32 4
  %12 = ptrtoint ptr %pd_dpp_start.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pd_dpp_start.i.i, align 4
  %14 = trunc i32 %13 to i16
  %conv10.i.i = sub i16 %conv, %14
  %max_dpp_pd.i.i = getelementptr inbounds %struct.ocrdma_pd_resource_mgr, ptr %9, i32 0, i32 7
  %15 = ptrtoint ptr %max_dpp_pd.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %max_dpp_pd.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %conv10.i.i, i16 %16)
  %cmp14.not.i.i = icmp ult i16 %conv10.i.i, %16
  br i1 %cmp14.not.i.i, label %if.else.i.i, label %if.then7.critedge.i.i.ocrdma_put_pd_num.exit_crit_edge

if.then7.critedge.i.i.ocrdma_put_pd_num.exit_crit_edge: ; preds = %if.then7.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocrdma_put_pd_num.exit

if.else.i.i:                                      ; preds = %if.then7.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv11.i.i = zext i16 %conv10.i.i to i32
  %pd_dpp_bitmap.i.i = getelementptr inbounds %struct.ocrdma_pd_resource_mgr, ptr %9, i32 0, i32 10
  %17 = ptrtoint ptr %pd_dpp_bitmap.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pd_dpp_bitmap.i.i, align 4
  %rem.i.i.i = and i32 %conv11.i.i, 31
  %shl.i.i.i = shl nuw i32 1, %rem.i.i.i
  %div2.i.i.i = lshr i32 %conv11.i.i, 5
  %add.ptr.i.i.i = getelementptr i32, ptr %18, i32 %div2.i.i.i
  %neg.i.i.i = xor i32 %shl.i.i.i, -1
  %19 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr.i.i.i, align 4
  %and.i.i.i = and i32 %20, %neg.i.i.i
  store i32 %and.i.i.i, ptr %add.ptr.i.i.i, align 4
  %21 = ptrtoint ptr %pd_mgr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pd_mgr, align 8
  %pd_dpp_count20.i.i = getelementptr inbounds %struct.ocrdma_pd_resource_mgr, ptr %22, i32 0, i32 5
  br label %cleanup.sink.split.i.i

if.else22.i.i:                                    ; preds = %cond.end.thread.i.i
  %23 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %9, align 4
  %25 = trunc i32 %24 to i16
  %conv26.i.i = sub i16 %conv, %25
  %max_normal_pd.i.i = getelementptr inbounds %struct.ocrdma_pd_resource_mgr, ptr %9, i32 0, i32 3
  %26 = ptrtoint ptr %max_normal_pd.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %max_normal_pd.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %conv26.i.i, i16 %27)
  %cmp30.not.i.i = icmp ult i16 %conv26.i.i, %27
  br i1 %cmp30.not.i.i, label %if.else33.i.i, label %if.else22.i.i.ocrdma_put_pd_num.exit_crit_edge

if.else22.i.i.ocrdma_put_pd_num.exit_crit_edge:   ; preds = %if.else22.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocrdma_put_pd_num.exit

if.else33.i.i:                                    ; preds = %if.else22.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv27.i.i = zext i16 %conv26.i.i to i32
  %pd_norm_bitmap.i.i = getelementptr inbounds %struct.ocrdma_pd_resource_mgr, ptr %9, i32 0, i32 9
  %28 = ptrtoint ptr %pd_norm_bitmap.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pd_norm_bitmap.i.i, align 4
  %rem.i2.i.i = and i32 %conv27.i.i, 31
  %shl.i3.i.i = shl nuw i32 1, %rem.i2.i.i
  %div2.i4.i.i = lshr i32 %conv27.i.i, 5
  %add.ptr.i5.i.i = getelementptr i32, ptr %29, i32 %div2.i4.i.i
  %neg.i6.i.i = xor i32 %shl.i3.i.i, -1
  %30 = ptrtoint ptr %add.ptr.i5.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %add.ptr.i5.i.i, align 4
  %and.i7.i.i = and i32 %31, %neg.i6.i.i
  store i32 %and.i7.i.i, ptr %add.ptr.i5.i.i, align 4
  %32 = ptrtoint ptr %pd_mgr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pd_mgr, align 8
  %pd_norm_count37.i.i = getelementptr inbounds %struct.ocrdma_pd_resource_mgr, ptr %33, i32 0, i32 1
  br label %cleanup.sink.split.i.i

cleanup.sink.split.i.i:                           ; preds = %if.else33.i.i, %if.else.i.i
  %pd_dpp_count20.sink11.i.i = phi ptr [ %pd_dpp_count20.i.i, %if.else.i.i ], [ %pd_norm_count37.i.i, %if.else33.i.i ]
  %34 = ptrtoint ptr %pd_dpp_count20.sink11.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %pd_dpp_count20.sink11.i.i, align 4
  %dec.i.i = add i16 %35, -1
  store i16 %dec.i.i, ptr %pd_dpp_count20.sink11.i.i, align 4
  br label %ocrdma_put_pd_num.exit

ocrdma_put_pd_num.exit:                           ; preds = %cleanup.sink.split.i.i, %if.else22.i.i.ocrdma_put_pd_num.exit_crit_edge, %if.then7.critedge.i.i.ocrdma_put_pd_num.exit_crit_edge, %cond.end.thread.i.i.ocrdma_put_pd_num.exit_crit_edge, %cond.end.i.i.ocrdma_put_pd_num.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %dev_lock.i) #13
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call2 = tail call i32 @ocrdma_mbx_dealloc_pd(ptr noundef %dev, ptr noundef %pd) #13
  br label %if.end

if.end:                                           ; preds = %if.else, %ocrdma_put_pd_num.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocrdma_dealloc_pd(ptr noundef %ibpd, ptr nocapture noundef readnone %udata) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.ib_pd, ptr %ibpd, i32 0, i32 2
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %uctx2 = getelementptr inbounds %struct.ocrdma_pd, ptr %ibpd, i32 0, i32 1
  %2 = ptrtoint ptr %uctx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %uctx2, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end14_crit_edge, label %if.then

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

if.then:                                          ; preds = %entry
  %id = getelementptr inbounds %struct.ocrdma_pd, ptr %ibpd, i32 0, i32 2
  %dpp_enabled = getelementptr inbounds %struct.ocrdma_pd, ptr %ibpd, i32 0, i32 5
  %4 = ptrtoint ptr %dpp_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dpp_enabled, align 4, !range !137
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not = icmp eq i8 %5, 0
  br i1 %tobool3.not, label %if.then.if.end_crit_edge, label %if.then4

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then4:                                         ; preds = %if.then
  %dpp_unmapped_addr = getelementptr inbounds %struct.ocrdma_dev, ptr %1, i32 0, i32 20, i32 4
  %6 = ptrtoint ptr %dpp_unmapped_addr to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %dpp_unmapped_addr, align 8
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 4
  %mul = shl i32 %9, 12
  %conv = zext i32 %mul to i64
  %add = add i64 %7, %conv
  %mm_list_lock.i = getelementptr inbounds %struct.ocrdma_ucontext, ptr %3, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mm_list_lock.i, i32 noundef 0) #13
  %mm_head.i = getelementptr inbounds %struct.ocrdma_ucontext, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %mm_head.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mm_head.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %land.lhs.true.i.for.cond.i_crit_edge, %if.then4
  %.pn.in.i = phi ptr [ %11, %if.then4 ], [ %.pn.i, %land.lhs.true.i.for.cond.i_crit_edge ]
  %mm.0.i = getelementptr i8, ptr %.pn.in.i, i32 -16
  %12 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn.i = load ptr, ptr %.pn.in.i, align 8
  %cmp.not.i = icmp eq ptr %.pn.in.i, %mm_head.i
  br i1 %cmp.not.i, label %for.cond.i.ocrdma_del_mmap.exit_crit_edge, label %for.body.i

for.cond.i.ocrdma_del_mmap.exit_crit_edge:        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocrdma_del_mmap.exit

for.body.i:                                       ; preds = %for.cond.i
  %len9.i = getelementptr i8, ptr %.pn.in.i, i32 -8
  %13 = ptrtoint ptr %len9.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len9.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %14)
  %cmp10.not.i = icmp eq i32 %14, 4096
  br i1 %cmp10.not.i, label %for.body.i.if.end.i_crit_edge, label %land.lhs.true.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %15 = ptrtoint ptr %mm.0.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %mm.0.i, align 8
  %cmp13.not.i = icmp eq i64 %16, %add
  br i1 %cmp13.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.for.cond.i_crit_edge

land.lhs.true.i.for.cond.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %for.body.i.if.end.i_crit_edge
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in.i) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_del.exit.i_crit_edge

if.end.i.list_del.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in.i, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i.i, align 4
  %19 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %.pn.in.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end.i.list_del.exit.i_crit_edge
  %23 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in.i, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %mm.0.i) #13
  br label %ocrdma_del_mmap.exit

ocrdma_del_mmap.exit:                             ; preds = %list_del.exit.i, %for.cond.i.ocrdma_del_mmap.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mm_list_lock.i) #13
  br label %if.end

if.end:                                           ; preds = %ocrdma_del_mmap.exit, %if.then.if.end_crit_edge
  %25 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %id, align 4
  %unmapped_db.i = getelementptr inbounds %struct.ocrdma_dev, ptr %1, i32 0, i32 20, i32 1
  %27 = ptrtoint ptr %unmapped_db.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %unmapped_db.i, align 8
  %db_page_size.i = getelementptr inbounds %struct.ocrdma_dev, ptr %1, i32 0, i32 20, i32 2
  %29 = ptrtoint ptr %db_page_size.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %db_page_size.i, align 8
  %mul.i = mul i32 %30, %26
  %conv.i = zext i32 %mul.i to i64
  %add.i = add i64 %28, %conv.i
  %31 = ptrtoint ptr %uctx2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %uctx2, align 4
  %mm_list_lock.i32 = getelementptr inbounds %struct.ocrdma_ucontext, ptr %32, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mm_list_lock.i32, i32 noundef 0) #13
  %mm_head.i33 = getelementptr inbounds %struct.ocrdma_ucontext, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %mm_head.i33 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mm_head.i33, align 4
  br label %for.cond.i38

for.cond.i38:                                     ; preds = %land.lhs.true.i43.for.cond.i38_crit_edge, %if.end
  %.pn.in.i34 = phi ptr [ %34, %if.end ], [ %.pn.i36, %land.lhs.true.i43.for.cond.i38_crit_edge ]
  %mm.0.i35 = getelementptr i8, ptr %.pn.in.i34, i32 -16
  %35 = ptrtoint ptr %.pn.in.i34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pn.i36 = load ptr, ptr %.pn.in.i34, align 8
  %cmp.not.i37 = icmp eq ptr %.pn.in.i34, %mm_head.i33
  br i1 %cmp.not.i37, label %for.cond.i38.ocrdma_del_mmap.exit51_crit_edge, label %for.body.i41

for.cond.i38.ocrdma_del_mmap.exit51_crit_edge:    ; preds = %for.cond.i38
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocrdma_del_mmap.exit51

for.body.i41:                                     ; preds = %for.cond.i38
  %len9.i39 = getelementptr i8, ptr %.pn.in.i34, i32 -8
  %36 = ptrtoint ptr %len9.i39 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %len9.i39, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %30)
  %cmp10.not.i40 = icmp eq i32 %37, %30
  br i1 %cmp10.not.i40, label %for.body.i41.if.end.i45_crit_edge, label %land.lhs.true.i43

for.body.i41.if.end.i45_crit_edge:                ; preds = %for.body.i41
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i45

land.lhs.true.i43:                                ; preds = %for.body.i41
  %38 = ptrtoint ptr %mm.0.i35 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %mm.0.i35, align 8
  %cmp13.not.i42 = icmp eq i64 %39, %add.i
  br i1 %cmp13.not.i42, label %land.lhs.true.i43.if.end.i45_crit_edge, label %land.lhs.true.i43.for.cond.i38_crit_edge

land.lhs.true.i43.for.cond.i38_crit_edge:         ; preds = %land.lhs.true.i43
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i38

land.lhs.true.i43.if.end.i45_crit_edge:           ; preds = %land.lhs.true.i43
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i45

if.end.i45:                                       ; preds = %land.lhs.true.i43.if.end.i45_crit_edge, %for.body.i41.if.end.i45_crit_edge
  %call.i.i.i44 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in.i34) #13
  br i1 %call.i.i.i44, label %if.end.i.i.i48, label %if.end.i45.list_del.exit.i50_crit_edge

if.end.i45.list_del.exit.i50_crit_edge:           ; preds = %if.end.i45
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit.i50

if.end.i.i.i48:                                   ; preds = %if.end.i45
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i46 = getelementptr inbounds %struct.list_head, ptr %.pn.in.i34, i32 0, i32 1
  %40 = ptrtoint ptr %prev.i.i.i46 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prev.i.i.i46, align 4
  %42 = ptrtoint ptr %.pn.in.i34 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %.pn.in.i34, align 4
  %prev1.i.i.i.i47 = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %prev1.i.i.i.i47 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %prev1.i.i.i.i47, align 4
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %43, ptr %41, align 4
  br label %list_del.exit.i50

list_del.exit.i50:                                ; preds = %if.end.i.i.i48, %if.end.i45.list_del.exit.i50_crit_edge
  %46 = ptrtoint ptr %.pn.in.i34 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in.i34, align 4
  %prev.i.i49 = getelementptr inbounds %struct.list_head, ptr %.pn.in.i34, i32 0, i32 1
  %47 = ptrtoint ptr %prev.i.i49 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i49, align 4
  tail call void @kfree(ptr noundef %mm.0.i35) #13
  br label %ocrdma_del_mmap.exit51

ocrdma_del_mmap.exit51:                           ; preds = %list_del.exit.i50, %for.cond.i38.ocrdma_del_mmap.exit51_crit_edge
  tail call void @mutex_unlock(ptr noundef %mm_list_lock.i32) #13
  %cntxt_pd.i = getelementptr inbounds %struct.ocrdma_ucontext, ptr %3, i32 0, i32 3
  %48 = ptrtoint ptr %cntxt_pd.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %cntxt_pd.i, align 4
  %cmp.i.not = icmp eq ptr %49, %ibpd
  br i1 %cmp.i.not, label %if.then12, label %ocrdma_del_mmap.exit51.if.end14_crit_edge

ocrdma_del_mmap.exit51.if.end14_crit_edge:        ; preds = %ocrdma_del_mmap.exit51
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

if.then12:                                        ; preds = %ocrdma_del_mmap.exit51
  call void @__sanitizer_cov_trace_pc() #15
  %mm_list_lock.i53 = getelementptr inbounds %struct.ocrdma_ucontext, ptr %3, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mm_list_lock.i53, i32 noundef 0) #13
  %pd_in_use.i = getelementptr inbounds %struct.ocrdma_ucontext, ptr %3, i32 0, i32 4
  %50 = ptrtoint ptr %pd_in_use.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %pd_in_use.i, align 4
  tail call void @mutex_unlock(ptr noundef %mm_list_lock.i53) #13
  br label %cleanup15

if.end14:                                         ; preds = %ocrdma_del_mmap.exit51.if.end14_crit_edge, %entry.if.end14_crit_edge
  tail call fastcc void @_ocrdma_dealloc_pd(ptr noundef %1, ptr noundef %ibpd)
  br label %cleanup15

cleanup15:                                        ; preds = %if.end14, %if.then12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ocrdma_get_dma_mr(ptr nocapture noundef readonly %ibpd, i32 noundef %acc) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.ib_pd, ptr %ibpd, i32 0, i32 2
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = and i32 %acc, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %3 = icmp eq i32 %2, 2
  br i1 %3, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 216) #16
  %tobool7.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool7.not, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %id = getelementptr inbounds %struct.ocrdma_pd, ptr %ibpd, i32 0, i32 2
  %5 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id, align 4
  %hwmr.i = getelementptr inbounds %struct.ocrdma_mr, ptr %call7.i.i, i32 0, i32 2
  %fr_mr.i = getelementptr inbounds %struct.ocrdma_mr, ptr %call7.i.i, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %fr_mr.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %fr_mr.i, align 4
  %local_rd.i = getelementptr inbounds %struct.ocrdma_mr, ptr %call7.i.i, i32 0, i32 2, i32 5
  %8 = ptrtoint ptr %local_rd.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %local_rd.i, align 8
  %9 = trunc i32 %acc to i8
  %10 = lshr i8 %9, 2
  %11 = and i8 %10, 1
  %remote_rd.i = getelementptr inbounds %struct.ocrdma_mr, ptr %call7.i.i, i32 0, i32 2, i32 3
  %12 = ptrtoint ptr %remote_rd.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %remote_rd.i, align 2
  %13 = lshr i8 %9, 1
  %14 = and i8 %13, 1
  %remote_wr.i = getelementptr inbounds %struct.ocrdma_mr, ptr %call7.i.i, i32 0, i32 2, i32 4
  %15 = ptrtoint ptr %remote_wr.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %remote_wr.i, align 1
  %16 = and i8 %9, 1
  %local_wr.i = getelementptr inbounds %struct.ocrdma_mr, ptr %call7.i.i, i32 0, i32 2, i32 6
  %17 = ptrtoint ptr %local_wr.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %local_wr.i, align 1
  %18 = lshr i8 %9, 4
  %19 = and i8 %18, 1
  %mw_bind.i = getelementptr inbounds %struct.ocrdma_mr, ptr %call7.i.i, i32 0, i32 2, i32 7
  %20 = ptrtoint ptr %mw_bind.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %mw_bind.i, align 2
  %21 = lshr i8 %9, 3
  %22 = and i8 %21, 1
  %remote_atomic.i = getelementptr inbounds %struct.ocrdma_mr, ptr %call7.i.i, i32 0, i32 2, i32 2
  %23 = ptrtoint ptr %remote_atomic.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %remote_atomic.i, align 1
  %num_pbls24.i = getelementptr inbounds %struct.ocrdma_mr, ptr %call7.i.i, i32 0, i32 2, i32 11
  %24 = ptrtoint ptr %num_pbls24.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %num_pbls24.i, align 4
  %call.i = tail call i32 @ocrdma_mbx_alloc_lkey(ptr noundef %1, ptr noundef %hwmr.i, i32 noundef %6, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool26.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool26.not.i, label %if.end.i, label %if.then13

if.end.i:                                         ; preds = %if.end10
  %25 = ptrtoint ptr %hwmr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %hwmr.i, align 8
  %lkey28.i = getelementptr inbounds %struct.ib_mr, ptr %call7.i.i, i32 0, i32 2
  %27 = ptrtoint ptr %lkey28.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %lkey28.i, align 8
  %28 = ptrtoint ptr %remote_wr.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %remote_wr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool32.not.i = icmp eq i8 %29, 0
  br i1 %tobool32.not.i, label %lor.lhs.false.i, label %if.end.i.if.then37.i_crit_edge

if.end.i.if.then37.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then37.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %30 = ptrtoint ptr %remote_rd.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %remote_rd.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool36.not.i = icmp eq i8 %31, 0
  br i1 %tobool36.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %lor.lhs.false.i.if.then37.i_crit_edge

lor.lhs.false.i.if.then37.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then37.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then37.i:                                      ; preds = %lor.lhs.false.i.if.then37.i_crit_edge, %if.end.i.if.then37.i_crit_edge
  %rkey.i = getelementptr inbounds %struct.ib_mr, ptr %call7.i.i, i32 0, i32 3
  %32 = ptrtoint ptr %rkey.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %26, ptr %rkey.i, align 4
  br label %cleanup

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #13
  %33 = inttoptr i32 %call.i to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %if.then37.i, %lor.lhs.false.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ %33, %if.then13 ], [ inttoptr (i32 -22 to ptr), %do.end ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ], [ %call7.i.i, %lor.lhs.false.i.cleanup_crit_edge ], [ %call7.i.i, %if.then37.i ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ocrdma_reg_user_mr(ptr nocapture noundef readonly %ibpd, i64 noundef %start, i64 noundef %len, i64 noundef %usr_addr, i32 noundef %acc, ptr nocapture noundef readnone %udata) local_unnamed_addr #3 align 64 {
entry:
  %biter.i = alloca %struct.ib_block_iter, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.ib_pd, ptr %ibpd, i32 0, i32 2
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = and i32 %acc, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %3 = icmp eq i32 %2, 2
  br i1 %3, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 216) #16
  %tobool6.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %5 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %device, align 4
  %conv = trunc i64 %start to i32
  %conv11 = trunc i64 %len to i32
  %call12 = tail call ptr @ib_umem_get(ptr noundef %6, i32 noundef %conv, i32 noundef %conv11, i32 noundef %acc) #13
  %umem = getelementptr inbounds %struct.ocrdma_mr, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %umem to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call12, ptr %umem, align 8
  %cmp.i = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end9.umem_err_crit_edge, label %if.end16

if.end9.umem_err_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %umem_err

if.end16:                                         ; preds = %if.end9
  %iova.i = getelementptr inbounds %struct.ib_umem, ptr %call12, i32 0, i32 2
  %8 = ptrtoint ptr %iova.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %iova.i, align 8
  %length.i = getelementptr inbounds %struct.ib_umem, ptr %call12, i32 0, i32 3
  %10 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %length.i, align 8
  %conv.i = zext i32 %11 to i64
  %add.i = add i64 %9, 4095
  %add2.i = add i64 %add.i, %conv.i
  %and.i = and i64 %add2.i, 4294963200
  %and15.i = and i64 %9, 4294963200
  %sub16.i = sub nsw i64 %and.i, %and15.i
  %conv17.i = trunc i64 %sub16.i to i32
  %div1.i = lshr exact i32 %conv17.i, 12
  %max_num_mr_pbl.i = getelementptr inbounds %struct.ocrdma_dev, ptr %1, i32 0, i32 1, i32 18
  %12 = ptrtoint ptr %max_num_mr_pbl.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_num_mr_pbl.i, align 8
  %add.i119 = add nuw nsw i32 %div1.i, 511
  %div125.i = lshr i32 %add.i119, 9
  call void @__sanitizer_cov_trace_cmp4(i32 %div125.i, i32 %13)
  %cmp5.not.i = icmp ult i32 %div125.i, %13
  br i1 %cmp5.not.i, label %if.end16.if.end22_crit_edge, label %do.body.i

if.end16.if.end22_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

do.body.i:                                        ; preds = %if.end16
  %add.1.i = add nuw nsw i32 %div1.i, 1023
  %div1.126.i = lshr i32 %add.1.i, 10
  call void @__sanitizer_cov_trace_cmp4(i32 %div1.126.i, i32 %13)
  %cmp5.not.1.i = icmp ult i32 %div1.126.i, %13
  br i1 %cmp5.not.1.i, label %do.body.i.if.end22_crit_edge, label %do.body.1.i

do.body.i.if.end22_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

do.body.1.i:                                      ; preds = %do.body.i
  %add.2.i = add nuw nsw i32 %div1.i, 2047
  %div1.227.i = lshr i32 %add.2.i, 11
  call void @__sanitizer_cov_trace_cmp4(i32 %div1.227.i, i32 %13)
  %cmp5.not.2.i = icmp ult i32 %div1.227.i, %13
  br i1 %cmp5.not.2.i, label %do.body.1.i.if.end22_crit_edge, label %do.body.2.i

do.body.1.i.if.end22_crit_edge:                   ; preds = %do.body.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

do.body.2.i:                                      ; preds = %do.body.1.i
  %add.3.i = add nuw nsw i32 %div1.i, 4095
  %div1.328.i = lshr i32 %add.3.i, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %div1.328.i, i32 %13)
  %cmp5.not.3.i = icmp ult i32 %div1.328.i, %13
  br i1 %cmp5.not.3.i, label %do.body.2.i.if.end22_crit_edge, label %do.body.3.i

do.body.2.i.if.end22_crit_edge:                   ; preds = %do.body.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

do.body.3.i:                                      ; preds = %do.body.2.i
  %add.4.i = add nuw nsw i32 %div1.i, 8191
  %div1.429.i = lshr i32 %add.4.i, 13
  call void @__sanitizer_cov_trace_cmp4(i32 %div1.429.i, i32 %13)
  %cmp5.not.4.i = icmp ult i32 %div1.429.i, %13
  br i1 %cmp5.not.4.i, label %do.body.3.i.if.end22_crit_edge, label %ocrdma_get_pbl_info.exit

do.body.3.i.if.end22_crit_edge:                   ; preds = %do.body.3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

ocrdma_get_pbl_info.exit:                         ; preds = %do.body.3.i
  call void @__sanitizer_cov_trace_pc() #15
  %num_pbes6.i = getelementptr inbounds %struct.ocrdma_mr, ptr %call7.i.i, i32 0, i32 2, i32 12
  %14 = ptrtoint ptr %num_pbes6.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %div1.i, ptr %num_pbes6.i, align 8
  %num_pbls8.i = getelementptr inbounds %struct.ocrdma_mr, ptr %call7.i.i, i32 0, i32 2, i32 11
  %15 = ptrtoint ptr %num_pbls8.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %div1.429.i, ptr %num_pbls8.i, align 4
  %pbl_size10.i = getelementptr inbounds %struct.ocrdma_mr, ptr %call7.i.i, i32 0, i32 2, i32 13
  %16 = ptrtoint ptr %pbl_size10.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 131072, ptr %pbl_size10.i, align 4
  br label %umem_err

if.end22:                                         ; preds = %do.body.3.i.if.end22_crit_edge, %do.body.2.i.if.end22_crit_edge, %do.body.1.i.if.end22_crit_edge, %do.body.i.if.end22_crit_edge, %if.end16.if.end22_crit_edge
  %div1.lcssa.i.ph = phi i32 [ %div1.328.i, %do.body.2.i.if.end22_crit_edge ], [ %div1.227.i, %do.body.1.i.if.end22_crit_edge ], [ %div1.126.i, %do.body.i.if.end22_crit_edge ], [ %div125.i, %if.end16.if.end22_crit_edge ], [ %div1.429.i, %do.body.3.i.if.end22_crit_edge ]
  %mul.lcssa.i.ph = phi i32 [ 32768, %do.body.2.i.if.end22_crit_edge ], [ 16384, %do.body.1.i.if.end22_crit_edge ], [ 8192, %do.body.i.if.end22_crit_edge ], [ 4096, %if.end16.if.end22_crit_edge ], [ 65536, %do.body.3.i.if.end22_crit_edge ]
  %num_pbes6.i126 = getelementptr inbounds %struct.ocrdma_mr, ptr %call7.i.i, i32 0, i32 2, i32 12
  %17 = ptrtoint ptr %num_pbes6.i126 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %div1.i, ptr %num_pbes6.i126, align 8
  %num_pbls8.i127 = getelementptr inbounds %struct.ocrdma_mr, ptr %call7.i.i, i32 0, i32 2, i32 11
  %18 = ptrtoint ptr %num_pbls8.i127 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %div1.lcssa.i.ph, ptr %num_pbls8.i127, align 4
  %pbl_size10.i128 = getelementptr inbounds %struct.ocrdma_mr, ptr %call7.i.i, i32 0, i32 2, i32 13
  %19 = ptrtoint ptr %pbl_size10.i128 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %mul.lcssa.i.ph, ptr %pbl_size10.i128, align 4
  %hwmr = getelementptr inbounds %struct.ocrdma_mr, ptr %call7.i.i, i32 0, i32 2
  %pbe_size = getelementptr inbounds %struct.ocrdma_mr, ptr %call7.i.i, i32 0, i32 2, i32 14
  %20 = ptrtoint ptr %pbe_size to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 4096, ptr %pbe_size, align 8
  %va = getelementptr inbounds %struct.ocrdma_mr, ptr %call7.i.i, i32 0, i32 2, i32 15
  %21 = ptrtoint ptr %va to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %usr_addr, ptr %va, align 8
  %len25 = getelementptr inbounds %struct.ocrdma_mr, ptr %call7.i.i, i32 0, i32 2, i32 9
  %22 = ptrtoint ptr %len25 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %len, ptr %len25, align 8
  %23 = trunc i32 %acc to i8
  %24 = lshr i8 %23, 1
  %25 = and i8 %24, 1
  %remote_wr = getelementptr inbounds %struct.ocrdma_mr, ptr %call7.i.i, i32 0, i32 2, i32 4
  %26 = ptrtoint ptr %remote_wr to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %remote_wr, align 1
  %27 = lshr i8 %23, 2
  %28 = and i8 %27, 1
  %remote_rd = getelementptr inbounds %struct.ocrdma_mr, ptr %call7.i.i, i32 0, i32 2, i32 3
  %29 = ptrtoint ptr %remote_rd to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %remote_rd, align 2
  %30 = and i8 %23, 1
  %local_wr = getelementptr inbounds %struct.ocrdma_mr, ptr %call7.i.i, i32 0, i32 2, i32 6
  %31 = ptrtoint ptr %local_wr to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %local_wr, align 1
  %local_rd = getelementptr inbounds %struct.ocrdma_mr, ptr %call7.i.i, i32 0, i32 2, i32 5
  %32 = ptrtoint ptr %local_rd to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %local_rd, align 8
  %33 = lshr i8 %23, 3
  %34 = and i8 %33, 1
  %remote_atomic = getelementptr inbounds %struct.ocrdma_mr, ptr %call7.i.i, i32 0, i32 2, i32 2
  %35 = ptrtoint ptr %remote_atomic to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %remote_atomic, align 1
  %call47 = tail call fastcc i32 @ocrdma_build_pbl_tbl(ptr noundef %1, ptr noundef %hwmr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end50, label %if.end22.umem_err_crit_edge

if.end22.umem_err_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  br label %umem_err

if.end50:                                         ; preds = %if.end22
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %biter.i) #13
  %36 = getelementptr inbounds %struct.ib_block_iter, ptr %biter.i, i32 0, i32 1
  %37 = getelementptr inbounds %struct.ib_block_iter, ptr %biter.i, i32 0, i32 4
  %38 = call ptr @memset(ptr %biter.i, i32 255, i32 20)
  %39 = ptrtoint ptr %num_pbes6.i126 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %num_pbes6.i126, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i = icmp eq i32 %40, 0
  br i1 %tobool.not.i, label %if.end50.build_user_pbes.exit_crit_edge, label %if.end.i

if.end50.build_user_pbes.exit_crit_edge:          ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #15
  br label %build_user_pbes.exit

if.end.i:                                         ; preds = %if.end50
  %pbl_table.i = getelementptr inbounds %struct.ocrdma_mr, ptr %call7.i.i, i32 0, i32 2, i32 10
  %41 = ptrtoint ptr %pbl_table.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pbl_table.i, align 8
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  %45 = ptrtoint ptr %umem to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %umem, align 8
  %sgt_append.i.i = getelementptr inbounds %struct.ib_umem, ptr %46, i32 0, i32 7
  %47 = ptrtoint ptr %sgt_append.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %sgt_append.i.i, align 8
  %nents.i.i = getelementptr inbounds %struct.ib_umem, ptr %46, i32 0, i32 7, i32 0, i32 1
  %49 = ptrtoint ptr %nents.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %nents.i.i, align 4
  call void @__rdma_block_iter_start(ptr noundef nonnull %biter.i, ptr noundef %48, i32 noundef %50, i32 noundef 4096) #13
  %call2.i = call zeroext i1 @__rdma_block_iter_next(ptr noundef nonnull %biter.i) #13
  br i1 %call2.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.build_user_pbes.exit_crit_edge

if.end.i.build_user_pbes.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %build_user_pbes.exit

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

for.body.i:                                       ; preds = %if.end11.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %pbe_cnt.05.i = phi i32 [ %pbe_cnt.1.i, %if.end11.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %pbl_tbl.04.i = phi ptr [ %pbl_tbl.1.i, %if.end11.i.for.body.i_crit_edge ], [ %42, %if.end.i.for.body.i_crit_edge ]
  %pbe.03.i = phi ptr [ %pbe.1.i, %if.end11.i.for.body.i_crit_edge ], [ %44, %if.end.i.for.body.i_crit_edge ]
  %51 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %36, align 4
  %53 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %37, align 4
  %sh_prom.i.i = zext i32 %54 to i64
  %notmask.i.i = shl nsw i64 -1, %sh_prom.i.i
  %55 = trunc i64 %notmask.i.i to i32
  %conv1.i.i = and i32 %52, %55
  %56 = call i32 @llvm.bswap.i32(i32 %conv1.i.i) #13
  %pa_lo.i = getelementptr inbounds %struct.ocrdma_pbe, ptr %pbe.03.i, i32 0, i32 1
  %57 = ptrtoint ptr %pa_lo.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %pa_lo.i, align 4
  %58 = ptrtoint ptr %pbe.03.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %pbe.03.i, align 4
  %add.i120 = add i32 %pbe_cnt.05.i, 1
  %incdec.ptr.i = getelementptr %struct.ocrdma_pbe, ptr %pbe.03.i, i32 1
  %59 = ptrtoint ptr %pbl_size10.i128 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %pbl_size10.i128, align 4
  %div1.i121 = lshr i32 %60, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i120, i32 %div1.i121)
  %cmp.i122 = icmp eq i32 %add.i120, %div1.i121
  br i1 %cmp.i122, label %if.then8.i, label %for.body.i.if.end11.i_crit_edge

for.body.i.if.end11.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11.i

if.then8.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %incdec.ptr9.i = getelementptr %struct.ocrdma_pbl, ptr %pbl_tbl.04.i, i32 1
  %61 = ptrtoint ptr %incdec.ptr9.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %incdec.ptr9.i, align 4
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then8.i, %for.body.i.if.end11.i_crit_edge
  %pbe.1.i = phi ptr [ %62, %if.then8.i ], [ %incdec.ptr.i, %for.body.i.if.end11.i_crit_edge ]
  %pbl_tbl.1.i = phi ptr [ %incdec.ptr9.i, %if.then8.i ], [ %pbl_tbl.04.i, %for.body.i.if.end11.i_crit_edge ]
  %pbe_cnt.1.i = phi i32 [ 0, %if.then8.i ], [ %add.i120, %for.body.i.if.end11.i_crit_edge ]
  %call.i = call zeroext i1 @__rdma_block_iter_next(ptr noundef nonnull %biter.i) #13
  br i1 %call.i, label %if.end11.i.for.body.i_crit_edge, label %if.end11.i.build_user_pbes.exit_crit_edge

if.end11.i.build_user_pbes.exit_crit_edge:        ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %build_user_pbes.exit

if.end11.i.for.body.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

build_user_pbes.exit:                             ; preds = %if.end11.i.build_user_pbes.exit_crit_edge, %if.end.i.build_user_pbes.exit_crit_edge, %if.end50.build_user_pbes.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %biter.i) #13
  %id = getelementptr inbounds %struct.ocrdma_pd, ptr %ibpd, i32 0, i32 2
  %63 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %id, align 4
  %call52 = call i32 @ocrdma_reg_mr(ptr noundef %1, ptr noundef %hwmr, i32 noundef %64, i32 noundef %acc) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end55, label %mbx_err

if.end55:                                         ; preds = %build_user_pbes.exit
  %65 = ptrtoint ptr %hwmr to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %hwmr, align 8
  %lkey57 = getelementptr inbounds %struct.ib_mr, ptr %call7.i.i, i32 0, i32 2
  %67 = ptrtoint ptr %lkey57 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %lkey57, align 8
  %68 = ptrtoint ptr %remote_wr to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %remote_wr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool61.not = icmp eq i8 %69, 0
  br i1 %tobool61.not, label %lor.lhs.false, label %if.end55.if.then66_crit_edge

if.end55.if.then66_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then66

lor.lhs.false:                                    ; preds = %if.end55
  %70 = ptrtoint ptr %remote_rd to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %remote_rd, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool65.not = icmp eq i8 %71, 0
  br i1 %tobool65.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.then66_crit_edge

lor.lhs.false.if.then66_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then66

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then66:                                        ; preds = %lor.lhs.false.if.then66_crit_edge, %if.end55.if.then66_crit_edge
  %rkey = getelementptr inbounds %struct.ib_mr, ptr %call7.i.i, i32 0, i32 3
  %72 = ptrtoint ptr %rkey to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %66, ptr %rkey, align 4
  br label %cleanup

mbx_err:                                          ; preds = %build_user_pbes.exit
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @ocrdma_free_mr_pbl_tbl(ptr noundef %1, ptr noundef %hwmr)
  br label %umem_err

umem_err:                                         ; preds = %mbx_err, %if.end22.umem_err_crit_edge, %ocrdma_get_pbl_info.exit, %if.end9.umem_err_crit_edge
  %status.0 = phi i32 [ -14, %ocrdma_get_pbl_info.exit ], [ %call47, %if.end22.umem_err_crit_edge ], [ %call52, %mbx_err ], [ -14, %if.end9.umem_err_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #13
  %73 = inttoptr i32 %status.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %umem_err, %if.then66, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %73, %umem_err ], [ %call7.i.i, %if.then66 ], [ %call7.i.i, %lor.lhs.false.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ib_umem_get(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ocrdma_build_pbl_tbl(ptr nocapture noundef readonly %dev, ptr nocapture noundef %mr) unnamed_addr #3 align 64 {
entry:
  %pa = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %pbl_size = getelementptr inbounds %struct.ocrdma_hw_mr, ptr %mr, i32 0, i32 13
  %0 = ptrtoint ptr %pbl_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pbl_size, align 4
  %pdev1 = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 20, i32 6
  %2 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pa) #13
  %4 = ptrtoint ptr %pa to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %pa, align 4, !annotation !135
  %num_pbls = getelementptr inbounds %struct.ocrdma_hw_mr, ptr %mr, i32 0, i32 11
  %5 = ptrtoint ptr %num_pbls to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_pbls, align 4
  %7 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %6, i32 8) #13
  %8 = extractvalue { i32, i1 } %7, 1
  br i1 %8, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !138

kcalloc.exit.thread:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %pbl_table32 = getelementptr inbounds %struct.ocrdma_hw_mr, ptr %mr, i32 0, i32 10
  br label %cleanup.sink.split

if.end7.i.i:                                      ; preds = %entry
  %9 = extractvalue { i32, i1 } %7, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %9, i32 noundef 3520) #17
  %pbl_table = getelementptr inbounds %struct.ocrdma_hw_mr, ptr %mr, i32 0, i32 10
  %10 = ptrtoint ptr %pbl_table to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call8.i.i, ptr %pbl_table, align 8
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.cleanup_crit_edge, label %for.cond.preheader

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end7.i.i
  %11 = ptrtoint ptr %num_pbls to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_pbls, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp34.not = icmp eq i32 %12, 0
  br i1 %cmp34.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %dev4 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  br label %for.body

for.body:                                         ; preds = %if.end8.for.body_crit_edge, %for.body.lr.ph
  %i.035 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end8.for.body_crit_edge ]
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %dev4, i32 noundef %1, ptr noundef nonnull %pa, i32 noundef 3264, i32 noundef 0) #13
  %tobool6.not = icmp eq ptr %call.i, null
  br i1 %tobool6.not, label %if.then7, label %if.end8

if.then7:                                         ; preds = %for.body
  %13 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev1, align 4
  %15 = ptrtoint ptr %pbl_table to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pbl_table, align 8
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %if.then7.cleanup_crit_edge, label %for.cond.preheader.i

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader.i:                             ; preds = %if.then7
  %17 = ptrtoint ptr %num_pbls to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_pbls, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp25.not.i = icmp eq i32 %18, 0
  br i1 %cmp25.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %dev5.i = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.026.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %19 = ptrtoint ptr %pbl_table to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pbl_table, align 8
  %arrayidx.i = getelementptr %struct.ocrdma_pbl, ptr %20, i32 %i.026.i
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i, align 4
  %tobool3.not.i = icmp eq ptr %22, null
  br i1 %tobool3.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %23 = ptrtoint ptr %pbl_size to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pbl_size, align 4
  %pa.i = getelementptr %struct.ocrdma_pbl, ptr %20, i32 %i.026.i, i32 1
  %25 = ptrtoint ptr %pa.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pa.i, align 4
  call void @dma_free_attrs(ptr noundef %dev5.i, i32 noundef %24, ptr noundef nonnull %22, i32 noundef %26, i32 noundef 0) #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.026.i, 1
  %27 = ptrtoint ptr %num_pbls to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_pbls, align 4
  %cmp.i = icmp ult i32 %inc.i, %28
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %29 = ptrtoint ptr %pbl_table to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pbl_table, align 8
  call void @kfree(ptr noundef %30) #13
  br label %cleanup.sink.split

if.end8:                                          ; preds = %for.body
  %31 = ptrtoint ptr %pbl_table to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pbl_table, align 8
  %arrayidx = getelementptr %struct.ocrdma_pbl, ptr %32, i32 %i.035
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call.i, ptr %arrayidx, align 4
  %34 = ptrtoint ptr %pa to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pa, align 4
  %36 = load ptr, ptr %pbl_table, align 8
  %pa13 = getelementptr %struct.ocrdma_pbl, ptr %36, i32 %i.035, i32 1
  %37 = ptrtoint ptr %pa13 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %35, ptr %pa13, align 4
  %inc = add nuw i32 %i.035, 1
  %38 = ptrtoint ptr %num_pbls to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_pbls, align 4
  %cmp = icmp ult i32 %inc, %39
  br i1 %cmp, label %if.end8.for.body_crit_edge, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end8.for.body_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

cleanup.sink.split:                               ; preds = %for.end.i, %kcalloc.exit.thread
  %pbl_table40.sink = phi ptr [ %pbl_table, %for.end.i ], [ %pbl_table32, %kcalloc.exit.thread ]
  %40 = ptrtoint ptr %pbl_table40.sink to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %pbl_table40.sink, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end8.cleanup_crit_edge, %if.then7.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.end7.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.end7.i.i.cleanup_crit_edge ], [ -12, %if.then7.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ -12, %cleanup.sink.split ], [ 0, %if.end8.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pa) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocrdma_reg_mr(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ocrdma_free_mr_pbl_tbl(ptr nocapture noundef readonly %dev, ptr nocapture noundef %mr) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 20, i32 6
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 4
  %pbl_table = getelementptr inbounds %struct.ocrdma_hw_mr, ptr %mr, i32 0, i32 10
  %2 = ptrtoint ptr %pbl_table to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pbl_table, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end13_crit_edge, label %for.cond.preheader

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

for.cond.preheader:                               ; preds = %entry
  %num_pbls = getelementptr inbounds %struct.ocrdma_hw_mr, ptr %mr, i32 0, i32 11
  %4 = ptrtoint ptr %num_pbls to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_pbls, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp25.not = icmp eq i32 %5, 0
  br i1 %cmp25.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %dev5 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %pbl_size = getelementptr inbounds %struct.ocrdma_hw_mr, ptr %mr, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.026 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %6 = ptrtoint ptr %pbl_table to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pbl_table, align 8
  %arrayidx = getelementptr %struct.ocrdma_pbl, ptr %7, i32 %i.026
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %tobool3.not = icmp eq ptr %9, null
  br i1 %tobool3.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %pbl_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pbl_size, align 4
  %pa = getelementptr %struct.ocrdma_pbl, ptr %7, i32 %i.026, i32 1
  %12 = ptrtoint ptr %pa to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pa, align 4
  tail call void @dma_free_attrs(ptr noundef %dev5, i32 noundef %11, ptr noundef nonnull %9, i32 noundef %13, i32 noundef 0) #13
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.026, 1
  %14 = ptrtoint ptr %num_pbls to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_pbls, align 4
  %cmp = icmp ult i32 %inc, %15
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %16 = ptrtoint ptr %pbl_table to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pbl_table, align 8
  tail call void @kfree(ptr noundef %17) #13
  %18 = ptrtoint ptr %pbl_table to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %pbl_table, align 8
  br label %if.end13

if.end13:                                         ; preds = %for.end, %entry.if.end13_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocrdma_dereg_mr(ptr noundef %ib_mr, ptr nocapture noundef readnone %udata) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ib_mr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ib_mr, align 8
  %hwmr = getelementptr inbounds %struct.ocrdma_mr, ptr %ib_mr, i32 0, i32 2
  %fr_mr = getelementptr inbounds %struct.ocrdma_mr, ptr %ib_mr, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %fr_mr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fr_mr, align 4
  %conv = zext i8 %3 to i32
  %4 = ptrtoint ptr %hwmr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwmr, align 8
  %call3 = tail call i32 @ocrdma_mbx_dealloc_lkey(ptr noundef %1, i32 noundef %conv, i32 noundef %5) #13
  %pages = getelementptr inbounds %struct.ocrdma_mr, ptr %ib_mr, i32 0, i32 3
  %6 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pages, align 8
  tail call void @kfree(ptr noundef %7) #13
  %pdev1.i = getelementptr inbounds %struct.ocrdma_dev, ptr %1, i32 0, i32 20, i32 6
  %8 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev1.i, align 4
  %pbl_table.i = getelementptr inbounds %struct.ocrdma_mr, ptr %ib_mr, i32 0, i32 2, i32 10
  %10 = ptrtoint ptr %pbl_table.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pbl_table.i, align 8
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %entry.ocrdma_free_mr_pbl_tbl.exit_crit_edge, label %for.cond.preheader.i

entry.ocrdma_free_mr_pbl_tbl.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocrdma_free_mr_pbl_tbl.exit

for.cond.preheader.i:                             ; preds = %entry
  %num_pbls.i = getelementptr inbounds %struct.ocrdma_mr, ptr %ib_mr, i32 0, i32 2, i32 11
  %12 = ptrtoint ptr %num_pbls.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_pbls.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp25.not.i = icmp eq i32 %13, 0
  br i1 %cmp25.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %dev5.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %pbl_size.i = getelementptr inbounds %struct.ocrdma_mr, ptr %ib_mr, i32 0, i32 2, i32 13
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.026.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %14 = ptrtoint ptr %pbl_table.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pbl_table.i, align 8
  %arrayidx.i = getelementptr %struct.ocrdma_pbl, ptr %15, i32 %i.026.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 4
  %tobool3.not.i = icmp eq ptr %17, null
  br i1 %tobool3.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %18 = ptrtoint ptr %pbl_size.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pbl_size.i, align 4
  %pa.i = getelementptr %struct.ocrdma_pbl, ptr %15, i32 %i.026.i, i32 1
  %20 = ptrtoint ptr %pa.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pa.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev5.i, i32 noundef %19, ptr noundef nonnull %17, i32 noundef %21, i32 noundef 0) #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.026.i, 1
  %22 = ptrtoint ptr %num_pbls.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_pbls.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %23
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %24 = ptrtoint ptr %pbl_table.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pbl_table.i, align 8
  tail call void @kfree(ptr noundef %25) #13
  %26 = ptrtoint ptr %pbl_table.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %pbl_table.i, align 8
  br label %ocrdma_free_mr_pbl_tbl.exit

ocrdma_free_mr_pbl_tbl.exit:                      ; preds = %for.end.i, %entry.ocrdma_free_mr_pbl_tbl.exit_crit_edge
  %umem = getelementptr inbounds %struct.ocrdma_mr, ptr %ib_mr, i32 0, i32 1
  %27 = ptrtoint ptr %umem to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %umem, align 8
  tail call void @ib_umem_release(ptr noundef %28) #13
  tail call void @kfree(ptr noundef %ib_mr) #13
  %fw_error_state = getelementptr inbounds %struct.ocrdma_dev, ptr %1, i32 0, i32 19, i32 6
  %29 = ptrtoint ptr %fw_error_state to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %fw_error_state, align 1, !range !137
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not = icmp eq i8 %30, 0
  br i1 %tobool.not, label %ocrdma_free_mr_pbl_tbl.exit.if.end_crit_edge, label %do.end

ocrdma_free_mr_pbl_tbl.exit.if.end_crit_edge:     ; preds = %ocrdma_free_mr_pbl_tbl.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %ocrdma_free_mr_pbl_tbl.exit
  call void @__sanitizer_cov_trace_pc() #15
  %id = getelementptr inbounds %struct.ocrdma_dev, ptr %1, i32 0, i32 25
  %31 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %id, align 4
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef %32) #19
  br label %if.end

if.end:                                           ; preds = %do.end, %ocrdma_free_mr_pbl_tbl.exit.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocrdma_mbx_dealloc_lkey(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_umem_release(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocrdma_create_cq(ptr noundef %ibcq, ptr nocapture noundef readonly %attr, ptr noundef readonly %udata) local_unnamed_addr #3 align 64 {
entry:
  %uresp.i = alloca %struct.ocrdma_create_cq_uresp, align 8
  %ureq = alloca %struct.ocrdma_create_cq_ureq, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ibcq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ibcq, align 8
  %2 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %attr, align 4
  %tobool.not = icmp eq ptr %udata, null
  br i1 %tobool.not, label %cond.end, label %cond.end.thread

cond.end:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ureq) #13
  %4 = ptrtoint ptr %ureq to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %ureq, align 4, !annotation !135
  %flags = getelementptr inbounds %struct.ib_cq_init_attr, ptr %attr, i32 0, i32 2
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool3.not = icmp eq i32 %6, 0
  br i1 %tobool3.not, label %if.end18, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cond.end.thread:                                  ; preds = %entry
  %context = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %udata, i32 0, i32 3
  %7 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %context, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ureq) #13
  %9 = ptrtoint ptr %ureq to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %ureq, align 4, !annotation !135
  %10 = getelementptr inbounds %struct.ocrdma_create_cq_ureq, ptr %ureq, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %10, align 4, !annotation !135
  %flags73 = getelementptr inbounds %struct.ib_cq_init_attr, ptr %attr, i32 0, i32 2
  %12 = ptrtoint ptr %flags73 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags73, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool3.not74 = icmp eq i32 %13, 0
  br i1 %tobool3.not74, label %if.then5, label %cond.end.thread.cleanup_crit_edge

cond.end.thread.cleanup_crit_edge:                ; preds = %cond.end.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then5:                                         ; preds = %cond.end.thread
  %14 = ptrtoint ptr %udata to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %udata, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.16, i32 noundef 156) #13
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i.i, label %if.then5.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then5.if.then11.i.i.i_crit_edge:               ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then5
  %16 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %15, i32 8, i32 -1226833920) #18, !srcloc !139
  %asmresult.i.i.i = extractvalue { i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i1.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i1.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !140

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %ureq, i32 noundef 8) #13
  %17 = call i32 @llvm.read_register.i32(metadata !125) #13
  %and.i.i.i.i.i.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 4
  %19 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #11, !srcloc !141
  %and.i.i.i.i.i = and i32 %19, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #13, !srcloc !142
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !143
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %ureq, ptr noundef %15, i32 noundef 8) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %19) #13, !srcloc !142
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !143
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end18.thread, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !140

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %if.then5.if.then11.i.i.i_crit_edge
  %res.03.i.i.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 8, %if.then5.if.then11.i.i.i_crit_edge ], [ 8, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 8, %res.03.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %ureq, i32 %sub.i.i.i
  %20 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.03.i.i.i)
  br label %cleanup

if.end18:                                         ; preds = %cond.end
  %cq_lock.c = getelementptr inbounds %struct.ocrdma_cq, ptr %ibcq, i32 0, i32 7
  tail call void @__raw_spin_lock_init(ptr noundef %cq_lock.c, ptr noundef nonnull @.str.6, ptr noundef nonnull @ocrdma_create_cq.__key, i16 noundef signext 3) #13
  %comp_handler_lock.c = getelementptr inbounds %struct.ocrdma_cq, ptr %ibcq, i32 0, i32 9
  tail call void @__raw_spin_lock_init(ptr noundef %comp_handler_lock.c, ptr noundef nonnull @.str.8, ptr noundef nonnull @ocrdma_create_cq.__key.7, i16 noundef signext 3) #13
  %sq_head.c = getelementptr inbounds %struct.ocrdma_cq, ptr %ibcq, i32 0, i32 16
  %21 = ptrtoint ptr %sq_head.c to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %sq_head.c, ptr %sq_head.c, align 4
  %prev.i = getelementptr inbounds %struct.ocrdma_cq, ptr %ibcq, i32 0, i32 16, i32 1
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %sq_head.c, ptr %prev.i, align 4
  %rq_head.c = getelementptr inbounds %struct.ocrdma_cq, ptr %ibcq, i32 0, i32 17
  %23 = ptrtoint ptr %rq_head.c to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %rq_head.c, ptr %rq_head.c, align 4
  %prev.i68 = getelementptr inbounds %struct.ocrdma_cq, ptr %ibcq, i32 0, i32 17, i32 1
  %24 = ptrtoint ptr %prev.i68 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %rq_head.c, ptr %prev.i68, align 4
  %call20 = tail call i32 @ocrdma_mbx_create_cq(ptr noundef %1, ptr noundef %ibcq, i32 noundef %3, i32 noundef 0, i16 noundef zeroext 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end18.if.end30_crit_edge, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end18.if.end30_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30

if.end18.thread:                                  ; preds = %if.end.i.i.i
  %cq_lock.c62 = getelementptr inbounds %struct.ocrdma_cq, ptr %ibcq, i32 0, i32 7
  call void @__raw_spin_lock_init(ptr noundef %cq_lock.c62, ptr noundef nonnull @.str.6, ptr noundef nonnull @ocrdma_create_cq.__key, i16 noundef signext 3) #13
  %comp_handler_lock.c64 = getelementptr inbounds %struct.ocrdma_cq, ptr %ibcq, i32 0, i32 9
  call void @__raw_spin_lock_init(ptr noundef %comp_handler_lock.c64, ptr noundef nonnull @.str.8, ptr noundef nonnull @ocrdma_create_cq.__key.7, i16 noundef signext 3) #13
  %sq_head.c66 = getelementptr inbounds %struct.ocrdma_cq, ptr %ibcq, i32 0, i32 16
  %25 = ptrtoint ptr %sq_head.c66 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %sq_head.c66, ptr %sq_head.c66, align 4
  %prev.i69 = getelementptr inbounds %struct.ocrdma_cq, ptr %ibcq, i32 0, i32 16, i32 1
  %26 = ptrtoint ptr %prev.i69 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %sq_head.c66, ptr %prev.i69, align 4
  %rq_head.c67 = getelementptr inbounds %struct.ocrdma_cq, ptr %ibcq, i32 0, i32 17
  %27 = ptrtoint ptr %rq_head.c67 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %rq_head.c67, ptr %rq_head.c67, align 4
  %prev.i70 = getelementptr inbounds %struct.ocrdma_cq, ptr %ibcq, i32 0, i32 17, i32 1
  %28 = ptrtoint ptr %prev.i70 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %rq_head.c67, ptr %prev.i70, align 4
  %cntxt_pd = getelementptr inbounds %struct.ocrdma_ucontext, ptr %8, i32 0, i32 3
  %29 = ptrtoint ptr %cntxt_pd to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cntxt_pd, align 4
  %id = getelementptr inbounds %struct.ocrdma_pd, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %id, align 4
  %conv = trunc i32 %32 to i16
  %33 = ptrtoint ptr %ureq to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ureq, align 4
  %call2080 = call i32 @ocrdma_mbx_create_cq(ptr noundef %1, ptr noundef %ibcq, i32 noundef %3, i32 noundef %34, i16 noundef zeroext %conv) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2080)
  %tobool21.not81 = icmp eq i32 %call2080, 0
  br i1 %tobool21.not81, label %if.end.i, label %if.end18.thread.cleanup_crit_edge

if.end18.thread.cleanup_crit_edge:                ; preds = %if.end18.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i:                                         ; preds = %if.end18.thread
  %35 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %context, align 4
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %uresp.i) #13
  %37 = getelementptr inbounds i8, ptr %uresp.i, i32 24
  %38 = call ptr @memset(ptr %37, i32 0, i32 88)
  %id.i = getelementptr inbounds %struct.ocrdma_cq, ptr %ibcq, i32 0, i32 10
  %39 = ptrtoint ptr %id.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %id.i, align 4
  %conv.i = zext i16 %40 to i32
  %41 = ptrtoint ptr %uresp.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %conv.i, ptr %uresp.i, align 8
  %len.i = getelementptr inbounds %struct.ocrdma_cq, ptr %ibcq, i32 0, i32 14
  %42 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %len.i, align 8
  %add.i = add i32 %43, 4095
  %and.i = and i32 %add.i, -4096
  %page_size.i = getelementptr inbounds %struct.ocrdma_create_cq_uresp, ptr %uresp.i, i32 0, i32 1
  %44 = ptrtoint ptr %page_size.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %and.i, ptr %page_size.i, align 4
  %num_pages.i = getelementptr inbounds %struct.ocrdma_create_cq_uresp, ptr %uresp.i, i32 0, i32 2
  %45 = ptrtoint ptr %num_pages.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %num_pages.i, align 8
  %max_hw_cqe.i = getelementptr inbounds %struct.ocrdma_cq, ptr %ibcq, i32 0, i32 4
  %46 = ptrtoint ptr %max_hw_cqe.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %max_hw_cqe.i, align 4
  %max_hw_cqe2.i = getelementptr inbounds %struct.ocrdma_create_cq_uresp, ptr %uresp.i, i32 0, i32 3
  %48 = ptrtoint ptr %max_hw_cqe2.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %max_hw_cqe2.i, align 4
  %va.i = getelementptr inbounds %struct.ocrdma_cq, ptr %ibcq, i32 0, i32 1
  %49 = ptrtoint ptr %va.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %va.i, align 16
  %51 = ptrtoint ptr %50 to i32
  %call.i.i = call i32 @__virt_to_phys(i32 noundef %51) #13
  %conv4.i = zext i32 %call.i.i to i64
  %page_addr.i = getelementptr inbounds %struct.ocrdma_create_cq_uresp, ptr %uresp.i, i32 0, i32 4
  %52 = ptrtoint ptr %page_addr.i to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %conv4.i, ptr %page_addr.i, align 8
  %cntxt_pd.i = getelementptr inbounds %struct.ocrdma_ucontext, ptr %36, i32 0, i32 3
  %53 = ptrtoint ptr %cntxt_pd.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cntxt_pd.i, align 4
  %id5.i = getelementptr inbounds %struct.ocrdma_pd, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %id5.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %id5.i, align 4
  %unmapped_db.i.i = getelementptr inbounds %struct.ocrdma_dev, ptr %1, i32 0, i32 20, i32 1
  %57 = ptrtoint ptr %unmapped_db.i.i to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %unmapped_db.i.i, align 8
  %db_page_size.i.i = getelementptr inbounds %struct.ocrdma_dev, ptr %1, i32 0, i32 20, i32 2
  %59 = ptrtoint ptr %db_page_size.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %db_page_size.i.i, align 8
  %mul.i.i = mul i32 %60, %56
  %conv.i.i = zext i32 %mul.i.i to i64
  %add.i.i = add i64 %58, %conv.i.i
  %db_page_addr.i = getelementptr inbounds %struct.ocrdma_create_cq_uresp, ptr %uresp.i, i32 0, i32 5
  %61 = ptrtoint ptr %db_page_addr.i to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %add.i.i, ptr %db_page_addr.i, align 8
  %db_page_size7.i = getelementptr inbounds %struct.ocrdma_create_cq_uresp, ptr %uresp.i, i32 0, i32 6
  %62 = ptrtoint ptr %db_page_size7.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %60, ptr %db_page_size7.i, align 8
  %phase_change.i = getelementptr inbounds %struct.ocrdma_cq, ptr %ibcq, i32 0, i32 5
  %63 = ptrtoint ptr %phase_change.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %phase_change.i, align 32, !range !137
  %65 = zext i8 %64 to i32
  %phase_change11.i = getelementptr inbounds %struct.ocrdma_create_cq_uresp, ptr %uresp.i, i32 0, i32 7
  %66 = ptrtoint ptr %phase_change11.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %phase_change11.i, align 4
  %outbuf.i.i = getelementptr inbounds %struct.ib_udata, ptr %udata, i32 0, i32 1
  %67 = ptrtoint ptr %outbuf.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %outbuf.i.i, align 4
  call void @__might_fault(ptr noundef nonnull @.str.16, i32 noundef 174) #13
  %call.i.i.i.i71 = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i.i.i71, label %if.end.i.do.end.i_crit_edge, label %if.end.i.i.i.i

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

if.end.i.i.i.i:                                   ; preds = %if.end.i
  %69 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %68, i32 112, i32 -1226833920) #18, !srcloc !136
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %69, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i6.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.i6.i.i.i, label %copy_to_user.exit.i.i, label %if.end.i.i.i.i.do.end.i_crit_edge

if.end.i.i.i.i.do.end.i_crit_edge:                ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

copy_to_user.exit.i.i:                            ; preds = %if.end.i.i.i.i
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %uresp.i, i32 noundef 112) #13
  %call.i12.i.i.i.i = call i32 @arm_copy_to_user(ptr noundef %68, ptr noundef nonnull %uresp.i, i32 noundef 112) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i12.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end20.i, label %copy_to_user.exit.i.i.do.end.i_crit_edge

copy_to_user.exit.i.i.do.end.i_crit_edge:         ; preds = %copy_to_user.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

do.end.i:                                         ; preds = %copy_to_user.exit.i.i.do.end.i_crit_edge, %if.end.i.i.i.i.do.end.i_crit_edge, %if.end.i.do.end.i_crit_edge
  %id16.i = getelementptr inbounds %struct.ocrdma_dev, ptr %1, i32 0, i32 25
  %70 = ptrtoint ptr %id16.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %id16.i, align 4
  %72 = ptrtoint ptr %id.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %id.i, align 4
  %conv18.i = zext i16 %73 to i32
  %call19.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, i32 noundef %71, i32 noundef %conv18.i) #19
  br label %ctx_err

if.end20.i:                                       ; preds = %copy_to_user.exit.i.i
  %74 = ptrtoint ptr %db_page_addr.i to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %db_page_addr.i, align 8
  %76 = ptrtoint ptr %db_page_size7.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %db_page_size7.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %78 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %78, i32 noundef 3520, i32 noundef 24) #16
  %cmp.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %cmp.i.i, label %if.end20.i.ctx_err_crit_edge, label %if.end.i.i

if.end20.i.ctx_err_crit_edge:                     ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ctx_err

if.end.i.i:                                       ; preds = %if.end20.i
  %79 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store8_noabort(i32 %79)
  store i64 %75, ptr %call7.i.i.i.i, align 8
  %len3.i.i = getelementptr inbounds %struct.anon.201, ptr %call7.i.i.i.i, i32 0, i32 1
  %80 = ptrtoint ptr %len3.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %77, ptr %len3.i.i, align 8
  %entry4.i.i = getelementptr inbounds %struct.ocrdma_mm, ptr %call7.i.i.i.i, i32 0, i32 1
  %81 = ptrtoint ptr %entry4.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile ptr %entry4.i.i, ptr %entry4.i.i, align 8
  %prev.i.i.i = getelementptr inbounds %struct.ocrdma_mm, ptr %call7.i.i.i.i, i32 0, i32 1, i32 1
  %82 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %entry4.i.i, ptr %prev.i.i.i, align 4
  %mm_list_lock.i.i = getelementptr inbounds %struct.ocrdma_ucontext, ptr %36, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %mm_list_lock.i.i, i32 noundef 0) #13
  %mm_head.i.i = getelementptr inbounds %struct.ocrdma_ucontext, ptr %36, i32 0, i32 1
  %prev.i13.i.i = getelementptr inbounds %struct.ocrdma_ucontext, ptr %36, i32 0, i32 1, i32 1
  %83 = ptrtoint ptr %prev.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %prev.i13.i.i, align 4
  %call.i.i.i56.i = call zeroext i1 @__list_add_valid(ptr noundef %entry4.i.i, ptr noundef %84, ptr noundef %mm_head.i.i) #13
  br i1 %call.i.i.i56.i, label %if.end.i.i.i57.i, label %if.end.i.i.if.end26.i_crit_edge

if.end.i.i.if.end26.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26.i

if.end.i.i.i57.i:                                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %85 = ptrtoint ptr %prev.i13.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %entry4.i.i, ptr %prev.i13.i.i, align 4
  %86 = ptrtoint ptr %entry4.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %mm_head.i.i, ptr %entry4.i.i, align 8
  %87 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %84, ptr %prev.i.i.i, align 4
  %88 = ptrtoint ptr %84 to i32
  call void @__asan_store4_noabort(i32 %88)
  store volatile ptr %entry4.i.i, ptr %84, align 4
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.end.i.i.i57.i, %if.end.i.i.if.end26.i_crit_edge
  call void @mutex_unlock(ptr noundef %mm_list_lock.i.i) #13
  %89 = ptrtoint ptr %page_addr.i to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %page_addr.i, align 8
  %91 = ptrtoint ptr %page_size.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %page_size.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %93 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i58.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %93, i32 noundef 3520, i32 noundef 24) #16
  %cmp.i59.i = icmp eq ptr %call7.i.i.i58.i, null
  br i1 %cmp.i59.i, label %if.then32.i, label %if.end.i67.i

if.end.i67.i:                                     ; preds = %if.end26.i
  %94 = ptrtoint ptr %call7.i.i.i58.i to i32
  call void @__asan_store8_noabort(i32 %94)
  store i64 %90, ptr %call7.i.i.i58.i, align 8
  %len3.i60.i = getelementptr inbounds %struct.anon.201, ptr %call7.i.i.i58.i, i32 0, i32 1
  %95 = ptrtoint ptr %len3.i60.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %92, ptr %len3.i60.i, align 8
  %entry4.i61.i = getelementptr inbounds %struct.ocrdma_mm, ptr %call7.i.i.i58.i, i32 0, i32 1
  %96 = ptrtoint ptr %entry4.i61.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store volatile ptr %entry4.i61.i, ptr %entry4.i61.i, align 8
  %prev.i.i62.i = getelementptr inbounds %struct.ocrdma_mm, ptr %call7.i.i.i58.i, i32 0, i32 1, i32 1
  %97 = ptrtoint ptr %prev.i.i62.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %entry4.i61.i, ptr %prev.i.i62.i, align 4
  call void @mutex_lock_nested(ptr noundef %mm_list_lock.i.i, i32 noundef 0) #13
  %98 = ptrtoint ptr %prev.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %prev.i13.i.i, align 4
  %call.i.i.i66.i = call zeroext i1 @__list_add_valid(ptr noundef %entry4.i61.i, ptr noundef %99, ptr noundef %mm_head.i.i) #13
  br i1 %call.i.i.i66.i, label %if.end.i.i.i68.i, label %if.end.i67.i.ocrdma_copy_cq_uresp.exit_crit_edge

if.end.i67.i.ocrdma_copy_cq_uresp.exit_crit_edge: ; preds = %if.end.i67.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocrdma_copy_cq_uresp.exit

if.end.i.i.i68.i:                                 ; preds = %if.end.i67.i
  call void @__sanitizer_cov_trace_pc() #15
  %100 = ptrtoint ptr %prev.i13.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %entry4.i61.i, ptr %prev.i13.i.i, align 4
  %101 = ptrtoint ptr %entry4.i61.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %mm_head.i.i, ptr %entry4.i61.i, align 8
  %102 = ptrtoint ptr %prev.i.i62.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %99, ptr %prev.i.i62.i, align 4
  %103 = ptrtoint ptr %99 to i32
  call void @__asan_store4_noabort(i32 %103)
  store volatile ptr %entry4.i61.i, ptr %99, align 4
  br label %ocrdma_copy_cq_uresp.exit

if.then32.i:                                      ; preds = %if.end26.i
  %104 = ptrtoint ptr %db_page_addr.i to i32
  call void @__asan_load8_noabort(i32 %104)
  %105 = load i64, ptr %db_page_addr.i, align 8
  %106 = ptrtoint ptr %db_page_size7.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %db_page_size7.i, align 8
  call void @mutex_lock_nested(ptr noundef %mm_list_lock.i.i, i32 noundef 0) #13
  %108 = ptrtoint ptr %mm_head.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %mm_head.i.i, align 4
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %land.lhs.true.i.i.for.cond.i.i_crit_edge, %if.then32.i
  %.pn.in.i.i = phi ptr [ %109, %if.then32.i ], [ %.pn.i.i, %land.lhs.true.i.i.for.cond.i.i_crit_edge ]
  %mm.0.i.i = getelementptr i8, ptr %.pn.in.i.i, i32 -16
  %110 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 8
  %cmp.not.i.i = icmp eq ptr %.pn.in.i.i, %mm_head.i.i
  br i1 %cmp.not.i.i, label %for.cond.i.i.ocrdma_del_mmap.exit.i_crit_edge, label %for.body.i.i

for.cond.i.i.ocrdma_del_mmap.exit.i_crit_edge:    ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocrdma_del_mmap.exit.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %len9.i.i = getelementptr i8, ptr %.pn.in.i.i, i32 -8
  %111 = ptrtoint ptr %len9.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %len9.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %112, i32 %107)
  %cmp10.not.i.i = icmp eq i32 %112, %107
  br i1 %cmp10.not.i.i, label %for.body.i.i.if.end.i75.i_crit_edge, label %land.lhs.true.i.i

for.body.i.i.if.end.i75.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i75.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %113 = ptrtoint ptr %mm.0.i.i to i32
  call void @__asan_load8_noabort(i32 %113)
  %114 = load i64, ptr %mm.0.i.i, align 8
  %cmp13.not.i.i = icmp eq i64 %114, %105
  br i1 %cmp13.not.i.i, label %land.lhs.true.i.i.if.end.i75.i_crit_edge, label %land.lhs.true.i.i.for.cond.i.i_crit_edge

land.lhs.true.i.i.for.cond.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i.i

land.lhs.true.i.i.if.end.i75.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i75.i

if.end.i75.i:                                     ; preds = %land.lhs.true.i.i.if.end.i75.i_crit_edge, %for.body.i.i.if.end.i75.i_crit_edge
  %call.i.i.i74.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in.i.i) #13
  br i1 %call.i.i.i74.i, label %if.end.i.i.i76.i, label %if.end.i75.i.list_del.exit.i.i_crit_edge

if.end.i75.i.list_del.exit.i.i_crit_edge:         ; preds = %if.end.i75.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit.i.i

if.end.i.i.i76.i:                                 ; preds = %if.end.i75.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in.i.i, i32 0, i32 1
  %115 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %prev.i.i.i.i, align 4
  %117 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %.pn.in.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %118, i32 0, i32 1
  %119 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %116, ptr %prev1.i.i.i.i.i, align 4
  %120 = ptrtoint ptr %116 to i32
  call void @__asan_store4_noabort(i32 %120)
  store volatile ptr %118, ptr %116, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i76.i, %if.end.i75.i.list_del.exit.i.i_crit_edge
  %121 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in.i.i, align 4
  %prev.i.i77.i = getelementptr inbounds %struct.list_head, ptr %.pn.in.i.i, i32 0, i32 1
  %122 = ptrtoint ptr %prev.i.i77.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i77.i, align 4
  call void @kfree(ptr noundef %mm.0.i.i) #13
  br label %ocrdma_del_mmap.exit.i

ocrdma_del_mmap.exit.i:                           ; preds = %list_del.exit.i.i, %for.cond.i.i.ocrdma_del_mmap.exit.i_crit_edge
  call void @mutex_unlock(ptr noundef %mm_list_lock.i.i) #13
  br label %ctx_err

ocrdma_copy_cq_uresp.exit:                        ; preds = %if.end.i.i.i68.i, %if.end.i67.i.ocrdma_copy_cq_uresp.exit_crit_edge
  call void @mutex_unlock(ptr noundef %mm_list_lock.i.i) #13
  %ucontext.i = getelementptr inbounds %struct.ocrdma_cq, ptr %ibcq, i32 0, i32 12
  %123 = ptrtoint ptr %ucontext.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %36, ptr %ucontext.i, align 16
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %uresp.i) #13
  br label %if.end30

if.end30:                                         ; preds = %ocrdma_copy_cq_uresp.exit, %if.end18.if.end30_crit_edge
  %phase = getelementptr inbounds %struct.ocrdma_cq, ptr %ibcq, i32 0, i32 2
  %124 = ptrtoint ptr %phase to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 -2147483648, ptr %phase, align 4
  %cq_tbl = getelementptr inbounds %struct.ocrdma_dev, ptr %1, i32 0, i32 5
  %125 = ptrtoint ptr %cq_tbl to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %cq_tbl, align 4
  %id31 = getelementptr inbounds %struct.ocrdma_cq, ptr %ibcq, i32 0, i32 10
  %127 = ptrtoint ptr %id31 to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %id31, align 4
  %idxprom = zext i16 %128 to i32
  %arrayidx = getelementptr ptr, ptr %126, i32 %idxprom
  %129 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %ibcq, ptr %arrayidx, align 4
  br label %cleanup

ctx_err:                                          ; preds = %ocrdma_del_mmap.exit.i, %if.end20.i.ctx_err_crit_edge, %do.end.i
  %retval.0.i.ph = phi i32 [ -12, %if.end20.i.ctx_err_crit_edge ], [ -12, %ocrdma_del_mmap.exit.i ], [ -14, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %uresp.i) #13
  call void @ocrdma_mbx_destroy_cq(ptr noundef %1, ptr noundef %ibcq) #13
  br label %cleanup

cleanup:                                          ; preds = %ctx_err, %if.end30, %if.end18.thread.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.then11.i.i.i, %cond.end.thread.cleanup_crit_edge, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %ctx_err ], [ 0, %if.end30 ], [ -95, %cond.end.cleanup_crit_edge ], [ %call20, %if.end18.cleanup_crit_edge ], [ -95, %cond.end.thread.cleanup_crit_edge ], [ %call2080, %if.end18.thread.cleanup_crit_edge ], [ -14, %if.then11.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ureq) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocrdma_mbx_create_cq(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocrdma_mbx_destroy_cq(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ocrdma_resize_cq(ptr nocapture noundef %ibcq, i32 noundef %new_cnt, ptr nocapture noundef readnone %udata) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %new_cnt)
  %cmp = icmp slt i32 %new_cnt, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %max_hw_cqe = getelementptr inbounds %struct.ocrdma_cq, ptr %ibcq, i32 0, i32 4
  %0 = ptrtoint ptr %max_hw_cqe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_hw_cqe, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %new_cnt)
  %cmp1 = icmp ult i32 %1, %new_cnt
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  %cqe = getelementptr inbounds %struct.ib_cq, ptr %ibcq, i32 0, i32 5
  %2 = ptrtoint ptr %cqe to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %new_cnt, ptr %cqe, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocrdma_destroy_cq(ptr noundef %ibcq, ptr nocapture noundef readnone %udata) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ibcq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ibcq, align 8
  %cq_tbl = getelementptr inbounds %struct.ocrdma_dev, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %cq_tbl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cq_tbl, align 4
  %id = getelementptr inbounds %struct.ocrdma_cq, ptr %ibcq, i32 0, i32 10
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %id, align 4
  %idxprom = zext i16 %5 to i32
  %arrayidx = getelementptr ptr, ptr %3, i32 %idxprom
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %arrayidx, align 4
  %eqn = getelementptr inbounds %struct.ocrdma_cq, ptr %ibcq, i32 0, i32 11
  %7 = ptrtoint ptr %eqn to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %eqn, align 2
  %eq_cnt.i = getelementptr inbounds %struct.ocrdma_dev, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %eq_cnt.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %eq_cnt.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp7.i = icmp sgt i32 %10, 0
  br i1 %cmp7.i, label %for.body.lr.ph.i, label %entry.ocrdma_get_eq_table_index.exit_crit_edge

entry.ocrdma_get_eq_table_index.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocrdma_get_eq_table_index.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %eq_tbl.i = getelementptr inbounds %struct.ocrdma_dev, ptr %1, i32 0, i32 7
  %11 = ptrtoint ptr %eq_tbl.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %eq_tbl.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %indx.08.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %id.i = getelementptr %struct.ocrdma_eq, ptr %12, i32 %indx.08.i, i32 0, i32 5
  %13 = ptrtoint ptr %id.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %id.i, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %14, i16 %8)
  %cmp1.i = icmp eq i16 %14, %8
  br i1 %cmp1.i, label %for.body.i.ocrdma_get_eq_table_index.exit_crit_edge, label %for.inc.i

for.body.i.ocrdma_get_eq_table_index.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocrdma_get_eq_table_index.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %indx.08.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %10
  br i1 %exitcond.not.i, label %for.inc.i.ocrdma_get_eq_table_index.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.ocrdma_get_eq_table_index.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocrdma_get_eq_table_index.exit

ocrdma_get_eq_table_index.exit:                   ; preds = %for.inc.i.ocrdma_get_eq_table_index.exit_crit_edge, %for.body.i.ocrdma_get_eq_table_index.exit_crit_edge, %entry.ocrdma_get_eq_table_index.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %entry.ocrdma_get_eq_table_index.exit_crit_edge ], [ %indx.08.i, %for.body.i.ocrdma_get_eq_table_index.exit_crit_edge ], [ -22, %for.inc.i.ocrdma_get_eq_table_index.exit_crit_edge ]
  %eq_tbl = getelementptr inbounds %struct.ocrdma_dev, ptr %1, i32 0, i32 7
  %15 = ptrtoint ptr %eq_tbl to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %eq_tbl, align 4
  %arrayidx3 = getelementptr %struct.ocrdma_eq, ptr %16, i32 %retval.0.i
  %call4 = tail call i32 @ocrdma_get_irq(ptr noundef %1, ptr noundef %arrayidx3) #13
  tail call void @synchronize_irq(i32 noundef %call4) #13
  %17 = ptrtoint ptr %ibcq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ibcq, align 128
  %va.i = getelementptr inbounds %struct.ocrdma_cq, ptr %ibcq, i32 0, i32 1
  %19 = ptrtoint ptr %va.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %va.i, align 16
  %cqe_cnt1.i = getelementptr inbounds %struct.ocrdma_cq, ptr %ibcq, i32 0, i32 15
  %21 = ptrtoint ptr %cqe_cnt1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cqe_cnt1.i, align 4
  %cq_lock.i = getelementptr inbounds %struct.ocrdma_cq, ptr %ibcq, i32 0, i32 7
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cq_lock.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not20.i = icmp eq i32 %22, 0
  br i1 %tobool.not20.i, label %ocrdma_get_eq_table_index.exit.ocrdma_flush_cq.exit_crit_edge, label %while.body.lr.ph.i

ocrdma_get_eq_table_index.exit.ocrdma_flush_cq.exit_crit_edge: ; preds = %ocrdma_get_eq_table_index.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocrdma_flush_cq.exit

while.body.lr.ph.i:                               ; preds = %ocrdma_get_eq_table_index.exit
  %phase.i.i = getelementptr inbounds %struct.ocrdma_cq, ptr %ibcq, i32 0, i32 2
  %23 = ptrtoint ptr %phase.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %phase.i.i, align 4
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %cqe_cnt.023.i = phi i32 [ %22, %while.body.lr.ph.i ], [ %dec.i, %while.body.i.while.body.i_crit_edge ]
  %cqe.022.i = phi ptr [ %20, %while.body.lr.ph.i ], [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ]
  %valid_count.021.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %spec.select.i, %while.body.i.while.body.i_crit_edge ]
  %flags_status_srcqpn.i.i = getelementptr inbounds %struct.ocrdma_cqe, ptr %cqe.022.i, i32 0, i32 1
  %25 = ptrtoint ptr %flags_status_srcqpn.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags_status_srcqpn.i.i, align 4
  %27 = shl i32 %26, 24
  %28 = and i32 %27, -2147483648
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %24)
  %cmp.i.not.i = icmp eq i32 %28, %24
  %inc.i27 = zext i1 %cmp.i.not.i to i32
  %spec.select.i = add i32 %valid_count.021.i, %inc.i27
  %incdec.ptr.i = getelementptr %struct.ocrdma_cqe, ptr %cqe.022.i, i32 1
  %dec.i = add i32 %cqe_cnt.023.i, -1
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %while.end.loopexit.i, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

while.end.loopexit.i:                             ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %phi.cast.i = trunc i32 %spec.select.i to i16
  br label %ocrdma_flush_cq.exit

ocrdma_flush_cq.exit:                             ; preds = %while.end.loopexit.i, %ocrdma_get_eq_table_index.exit.ocrdma_flush_cq.exit_crit_edge
  %valid_count.0.lcssa.i = phi i16 [ 0, %ocrdma_get_eq_table_index.exit.ocrdma_flush_cq.exit_crit_edge ], [ %phi.cast.i, %while.end.loopexit.i ]
  %29 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %id, align 4
  tail call void @ocrdma_ring_cq_db(ptr noundef %18, i16 noundef zeroext %30, i1 noundef zeroext false, i1 noundef zeroext false, i16 noundef zeroext %valid_count.0.lcssa.i) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cq_lock.i, i32 noundef %call4.i) #13
  tail call void @ocrdma_mbx_destroy_cq(ptr noundef %1, ptr noundef %ibcq) #13
  %ucontext = getelementptr inbounds %struct.ocrdma_cq, ptr %ibcq, i32 0, i32 12
  %31 = ptrtoint ptr %ucontext to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ucontext, align 16
  %tobool.not = icmp eq ptr %32, null
  br i1 %tobool.not, label %ocrdma_flush_cq.exit.if.end_crit_edge, label %if.then

ocrdma_flush_cq.exit.if.end_crit_edge:            ; preds = %ocrdma_flush_cq.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %ocrdma_flush_cq.exit
  %cntxt_pd = getelementptr inbounds %struct.ocrdma_ucontext, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %cntxt_pd to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cntxt_pd, align 4
  %id6 = getelementptr inbounds %struct.ocrdma_pd, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %id6 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %id6, align 4
  %pa = getelementptr inbounds %struct.ocrdma_cq, ptr %ibcq, i32 0, i32 13
  %37 = ptrtoint ptr %pa to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pa, align 4
  %conv8 = zext i32 %38 to i64
  %len = getelementptr inbounds %struct.ocrdma_cq, ptr %ibcq, i32 0, i32 14
  %39 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %len, align 8
  %add = add i32 %40, 4095
  %and = and i32 %add, -4096
  %mm_list_lock.i = getelementptr inbounds %struct.ocrdma_ucontext, ptr %32, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mm_list_lock.i, i32 noundef 0) #13
  %mm_head.i = getelementptr inbounds %struct.ocrdma_ucontext, ptr %32, i32 0, i32 1
  %41 = ptrtoint ptr %mm_head.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mm_head.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %land.lhs.true.i.for.cond.i_crit_edge, %if.then
  %.pn.in.i = phi ptr [ %42, %if.then ], [ %.pn.i, %land.lhs.true.i.for.cond.i_crit_edge ]
  %mm.0.i = getelementptr i8, ptr %.pn.in.i, i32 -16
  %43 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %.pn.i = load ptr, ptr %.pn.in.i, align 8
  %cmp.not.i = icmp eq ptr %.pn.in.i, %mm_head.i
  br i1 %cmp.not.i, label %for.cond.i.ocrdma_del_mmap.exit_crit_edge, label %for.body.i29

for.cond.i.ocrdma_del_mmap.exit_crit_edge:        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocrdma_del_mmap.exit

for.body.i29:                                     ; preds = %for.cond.i
  %len9.i = getelementptr i8, ptr %.pn.in.i, i32 -8
  %44 = ptrtoint ptr %len9.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %len9.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %and)
  %cmp10.not.i = icmp eq i32 %45, %and
  br i1 %cmp10.not.i, label %for.body.i29.if.end.i_crit_edge, label %land.lhs.true.i

for.body.i29.if.end.i_crit_edge:                  ; preds = %for.body.i29
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %for.body.i29
  %46 = ptrtoint ptr %mm.0.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %mm.0.i, align 8
  %cmp13.not.i = icmp eq i64 %47, %conv8
  br i1 %cmp13.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.for.cond.i_crit_edge

land.lhs.true.i.for.cond.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %for.body.i29.if.end.i_crit_edge
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in.i) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_del.exit.i_crit_edge

if.end.i.list_del.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in.i, i32 0, i32 1
  %48 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %prev.i.i.i, align 4
  %50 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %.pn.in.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %49, ptr %prev1.i.i.i.i, align 4
  %53 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %51, ptr %49, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end.i.list_del.exit.i_crit_edge
  %54 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in.i, i32 0, i32 1
  %55 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %mm.0.i) #13
  br label %ocrdma_del_mmap.exit

ocrdma_del_mmap.exit:                             ; preds = %list_del.exit.i, %for.cond.i.ocrdma_del_mmap.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mm_list_lock.i) #13
  %56 = ptrtoint ptr %ucontext to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ucontext, align 16
  %unmapped_db.i = getelementptr inbounds %struct.ocrdma_dev, ptr %1, i32 0, i32 20, i32 1
  %58 = ptrtoint ptr %unmapped_db.i to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %unmapped_db.i, align 8
  %db_page_size.i = getelementptr inbounds %struct.ocrdma_dev, ptr %1, i32 0, i32 20, i32 2
  %60 = ptrtoint ptr %db_page_size.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %db_page_size.i, align 8
  %mul.i = mul i32 %61, %36
  %conv.i30 = zext i32 %mul.i to i64
  %add.i = add i64 %59, %conv.i30
  %mm_list_lock.i31 = getelementptr inbounds %struct.ocrdma_ucontext, ptr %57, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mm_list_lock.i31, i32 noundef 0) #13
  %mm_head.i32 = getelementptr inbounds %struct.ocrdma_ucontext, ptr %57, i32 0, i32 1
  %62 = ptrtoint ptr %mm_head.i32 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %mm_head.i32, align 4
  br label %for.cond.i37

for.cond.i37:                                     ; preds = %land.lhs.true.i42.for.cond.i37_crit_edge, %ocrdma_del_mmap.exit
  %.pn.in.i33 = phi ptr [ %63, %ocrdma_del_mmap.exit ], [ %.pn.i35, %land.lhs.true.i42.for.cond.i37_crit_edge ]
  %mm.0.i34 = getelementptr i8, ptr %.pn.in.i33, i32 -16
  %64 = ptrtoint ptr %.pn.in.i33 to i32
  call void @__asan_load4_noabort(i32 %64)
  %.pn.i35 = load ptr, ptr %.pn.in.i33, align 8
  %cmp.not.i36 = icmp eq ptr %.pn.in.i33, %mm_head.i32
  br i1 %cmp.not.i36, label %for.cond.i37.ocrdma_del_mmap.exit50_crit_edge, label %for.body.i40

for.cond.i37.ocrdma_del_mmap.exit50_crit_edge:    ; preds = %for.cond.i37
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocrdma_del_mmap.exit50

for.body.i40:                                     ; preds = %for.cond.i37
  %len9.i38 = getelementptr i8, ptr %.pn.in.i33, i32 -8
  %65 = ptrtoint ptr %len9.i38 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %len9.i38, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %61)
  %cmp10.not.i39 = icmp eq i32 %66, %61
  br i1 %cmp10.not.i39, label %for.body.i40.if.end.i44_crit_edge, label %land.lhs.true.i42

for.body.i40.if.end.i44_crit_edge:                ; preds = %for.body.i40
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i44

land.lhs.true.i42:                                ; preds = %for.body.i40
  %67 = ptrtoint ptr %mm.0.i34 to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %mm.0.i34, align 8
  %cmp13.not.i41 = icmp eq i64 %68, %add.i
  br i1 %cmp13.not.i41, label %land.lhs.true.i42.if.end.i44_crit_edge, label %land.lhs.true.i42.for.cond.i37_crit_edge

land.lhs.true.i42.for.cond.i37_crit_edge:         ; preds = %land.lhs.true.i42
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i37

land.lhs.true.i42.if.end.i44_crit_edge:           ; preds = %land.lhs.true.i42
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i44

if.end.i44:                                       ; preds = %land.lhs.true.i42.if.end.i44_crit_edge, %for.body.i40.if.end.i44_crit_edge
  %call.i.i.i43 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in.i33) #13
  br i1 %call.i.i.i43, label %if.end.i.i.i47, label %if.end.i44.list_del.exit.i49_crit_edge

if.end.i44.list_del.exit.i49_crit_edge:           ; preds = %if.end.i44
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit.i49

if.end.i.i.i47:                                   ; preds = %if.end.i44
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i45 = getelementptr inbounds %struct.list_head, ptr %.pn.in.i33, i32 0, i32 1
  %69 = ptrtoint ptr %prev.i.i.i45 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %prev.i.i.i45, align 4
  %71 = ptrtoint ptr %.pn.in.i33 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %.pn.in.i33, align 4
  %prev1.i.i.i.i46 = getelementptr inbounds %struct.list_head, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %prev1.i.i.i.i46 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %70, ptr %prev1.i.i.i.i46, align 4
  %74 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile ptr %72, ptr %70, align 4
  br label %list_del.exit.i49

list_del.exit.i49:                                ; preds = %if.end.i.i.i47, %if.end.i44.list_del.exit.i49_crit_edge
  %75 = ptrtoint ptr %.pn.in.i33 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in.i33, align 4
  %prev.i.i48 = getelementptr inbounds %struct.list_head, ptr %.pn.in.i33, i32 0, i32 1
  %76 = ptrtoint ptr %prev.i.i48 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i48, align 4
  tail call void @kfree(ptr noundef %mm.0.i34) #13
  br label %ocrdma_del_mmap.exit50

ocrdma_del_mmap.exit50:                           ; preds = %list_del.exit.i49, %for.cond.i37.ocrdma_del_mmap.exit50_crit_edge
  tail call void @mutex_unlock(ptr noundef %mm_list_lock.i31) #13
  br label %if.end

if.end:                                           ; preds = %ocrdma_del_mmap.exit50, %ocrdma_flush_cq.exit.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocrdma_get_irq(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocrdma_create_qp(ptr noundef %ibqp, ptr noundef %attrs, ptr noundef readonly %udata) local_unnamed_addr #3 align 64 {
entry:
  %uresp.i = alloca %struct.ocrdma_create_qp_uresp, align 8
  %ureq = alloca %struct.ocrdma_create_qp_ureq, align 8
  %dpp_credit_lmt = alloca i16, align 2
  %dpp_offset = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %pd = getelementptr inbounds %struct.ib_qp, ptr %ibqp, i32 0, i32 1
  %0 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pd, align 4
  %2 = ptrtoint ptr %ibqp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ibqp, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ureq) #13
  %4 = getelementptr inbounds %struct.ocrdma_create_qp_ureq, ptr %ureq, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %dpp_credit_lmt) #13
  %5 = ptrtoint ptr %dpp_credit_lmt to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -1, ptr %dpp_credit_lmt, align 2, !annotation !135
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %dpp_offset) #13
  %6 = ptrtoint ptr %dpp_offset to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %dpp_offset, align 2, !annotation !135
  %create_flags = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attrs, i32 0, i32 9
  %7 = ptrtoint ptr %create_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %create_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %qp_type.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attrs, i32 0, i32 8
  %9 = ptrtoint ptr %qp_type.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %qp_type.i, align 4
  %.off.i = add i32 %10, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 4
  br i1 %switch.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %id.i = getelementptr inbounds %struct.ocrdma_dev, ptr %3, i32 0, i32 25
  %11 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id.i, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, i32 noundef %12, i32 noundef %10) #19
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp11.not.i = icmp eq i32 %10, 1
  br i1 %cmp11.not.i, label %if.end.i.if.end31.i_crit_edge, label %land.lhs.true12.i

if.end.i.if.end31.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31.i

land.lhs.true12.i:                                ; preds = %if.end.i
  %cap.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attrs, i32 0, i32 6
  %13 = ptrtoint ptr %cap.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cap.i, align 4
  %max_wqe.i = getelementptr inbounds %struct.ocrdma_dev, ptr %3, i32 0, i32 1, i32 8
  %15 = ptrtoint ptr %max_wqe.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %max_wqe.i, align 2
  %conv.i = zext i16 %16 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %conv.i)
  %cmp13.i = icmp ugt i32 %14, %conv.i
  br i1 %cmp13.i, label %do.end17.i, label %land.lhs.true12.i.if.end31.i_crit_edge

land.lhs.true12.i.if.end31.i_crit_edge:           ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31.i

do.end17.i:                                       ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #15
  %id19.i = getelementptr inbounds %struct.ocrdma_dev, ptr %3, i32 0, i32 25
  %17 = ptrtoint ptr %id19.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %id19.i, align 4
  %call22.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.22, i32 noundef %18, i32 noundef %14) #19
  %19 = ptrtoint ptr %id19.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %id19.i, align 4
  %21 = ptrtoint ptr %max_wqe.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %max_wqe.i, align 2
  %conv29.i = zext i16 %22 to i32
  %call30.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.22, i32 noundef %20, i32 noundef %conv29.i) #19
  br label %cleanup

if.end31.i:                                       ; preds = %land.lhs.true12.i.if.end31.i_crit_edge, %if.end.i.if.end31.i_crit_edge
  %srq.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attrs, i32 0, i32 4
  %23 = ptrtoint ptr %srq.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %srq.i, align 4
  %tobool.not.i = icmp eq ptr %24, null
  br i1 %tobool.not.i, label %land.lhs.true32.i, label %if.end31.i.if.end54.i_crit_edge

if.end31.i.if.end54.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end54.i

land.lhs.true32.i:                                ; preds = %if.end31.i
  %max_recv_wr.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attrs, i32 0, i32 6, i32 1
  %25 = ptrtoint ptr %max_recv_wr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %max_recv_wr.i, align 4
  %max_rqe.i = getelementptr inbounds %struct.ocrdma_dev, ptr %3, i32 0, i32 1, i32 9
  %27 = ptrtoint ptr %max_rqe.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %max_rqe.i, align 4
  %conv35.i = zext i16 %28 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %conv35.i)
  %cmp36.i = icmp ugt i32 %26, %conv35.i
  br i1 %cmp36.i, label %do.end40.i, label %land.lhs.true32.i.if.end54.i_crit_edge

land.lhs.true32.i.if.end54.i_crit_edge:           ; preds = %land.lhs.true32.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end54.i

do.end40.i:                                       ; preds = %land.lhs.true32.i
  call void @__sanitizer_cov_trace_pc() #15
  %id42.i = getelementptr inbounds %struct.ocrdma_dev, ptr %3, i32 0, i32 25
  %29 = ptrtoint ptr %id42.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %id42.i, align 4
  %call45.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.22, i32 noundef %30, i32 noundef %26) #19
  %31 = ptrtoint ptr %id42.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %id42.i, align 4
  %33 = ptrtoint ptr %max_rqe.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %max_rqe.i, align 4
  %conv52.i = zext i16 %34 to i32
  %call53.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.22, i32 noundef %32, i32 noundef %conv52.i) #19
  br label %cleanup

if.end54.i:                                       ; preds = %land.lhs.true32.i.if.end54.i_crit_edge, %if.end31.i.if.end54.i_crit_edge
  %max_inline_data.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attrs, i32 0, i32 6, i32 4
  %35 = ptrtoint ptr %max_inline_data.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %max_inline_data.i, align 4
  %max_inline_data57.i = getelementptr inbounds %struct.ocrdma_dev, ptr %3, i32 0, i32 1, i32 11
  %37 = ptrtoint ptr %max_inline_data57.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %max_inline_data57.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %38)
  %cmp58.i = icmp ugt i32 %36, %38
  br i1 %cmp58.i, label %do.end62.i, label %if.end75.i

do.end62.i:                                       ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #15
  %id64.i = getelementptr inbounds %struct.ocrdma_dev, ptr %3, i32 0, i32 25
  %39 = ptrtoint ptr %id64.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %id64.i, align 4
  %call67.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.22, i32 noundef %40, i32 noundef %36) #19
  %41 = ptrtoint ptr %id64.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %id64.i, align 4
  %43 = ptrtoint ptr %max_inline_data57.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %max_inline_data57.i, align 8
  %call74.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.22, i32 noundef %42, i32 noundef %44) #19
  br label %cleanup

if.end75.i:                                       ; preds = %if.end54.i
  %max_send_sge.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attrs, i32 0, i32 6, i32 2
  %45 = ptrtoint ptr %max_send_sge.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %max_send_sge.i, align 4
  %max_send_sge78.i = getelementptr inbounds %struct.ocrdma_dev, ptr %3, i32 0, i32 1, i32 12
  %47 = ptrtoint ptr %max_send_sge78.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %max_send_sge78.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %48)
  %cmp79.i = icmp ugt i32 %46, %48
  br i1 %cmp79.i, label %do.end83.i, label %if.end96.i

do.end83.i:                                       ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #15
  %id85.i = getelementptr inbounds %struct.ocrdma_dev, ptr %3, i32 0, i32 25
  %49 = ptrtoint ptr %id85.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %id85.i, align 4
  %call88.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.22, i32 noundef %50, i32 noundef %46) #19
  %51 = ptrtoint ptr %id85.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %id85.i, align 4
  %53 = ptrtoint ptr %max_send_sge78.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %max_send_sge78.i, align 4
  %call95.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.22, i32 noundef %52, i32 noundef %54) #19
  br label %cleanup

if.end96.i:                                       ; preds = %if.end75.i
  %max_recv_sge.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attrs, i32 0, i32 6, i32 3
  %55 = ptrtoint ptr %max_recv_sge.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %max_recv_sge.i, align 4
  %max_recv_sge99.i = getelementptr inbounds %struct.ocrdma_dev, ptr %3, i32 0, i32 1, i32 13
  %57 = ptrtoint ptr %max_recv_sge99.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %max_recv_sge99.i, align 32
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %58)
  %cmp100.i = icmp ugt i32 %56, %58
  br i1 %cmp100.i, label %do.end104.i, label %if.end117.i

do.end104.i:                                      ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #15
  %id106.i = getelementptr inbounds %struct.ocrdma_dev, ptr %3, i32 0, i32 25
  %59 = ptrtoint ptr %id106.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %id106.i, align 4
  %call109.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.22, i32 noundef %60, i32 noundef %56) #19
  %61 = ptrtoint ptr %id106.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %id106.i, align 4
  %63 = ptrtoint ptr %max_recv_sge99.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %max_recv_sge99.i, align 32
  %call116.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.22, i32 noundef %62, i32 noundef %64) #19
  br label %cleanup

if.end117.i:                                      ; preds = %if.end96.i
  %tobool118.not.i = icmp eq ptr %udata, null
  br i1 %tobool118.not.i, label %if.end130.i, label %land.lhs.true119.i

land.lhs.true119.i:                               ; preds = %if.end117.i
  br i1 %cmp11.not.i, label %do.end125.i, label %land.lhs.true119.i.land.lhs.true146.i_crit_edge

land.lhs.true119.i.land.lhs.true146.i_crit_edge:  ; preds = %land.lhs.true119.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true146.i

do.end125.i:                                      ; preds = %land.lhs.true119.i
  call void @__sanitizer_cov_trace_pc() #15
  %id127.i = getelementptr inbounds %struct.ocrdma_dev, ptr %3, i32 0, i32 25
  %65 = ptrtoint ptr %id127.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %id127.i, align 4
  %call129.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.22, i32 noundef %66, i32 noundef 1) #19
  br label %cleanup

if.end130.i:                                      ; preds = %if.end117.i
  br i1 %cmp11.not.i, label %land.lhs.true134.i, label %if.end130.i.land.lhs.true146.i_crit_edge

if.end130.i.land.lhs.true146.i_crit_edge:         ; preds = %if.end130.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true146.i

land.lhs.true134.i:                               ; preds = %if.end130.i
  %gsi_qp_created.i = getelementptr inbounds %struct.ocrdma_dev, ptr %3, i32 0, i32 13
  %67 = ptrtoint ptr %gsi_qp_created.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %gsi_qp_created.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool135.not.i = icmp eq i32 %68, 0
  br i1 %tobool135.not.i, label %if.end7.thread, label %do.end138.i

if.end7.thread:                                   ; preds = %land.lhs.true134.i
  call void @__sanitizer_cov_trace_pc() #15
  %69 = ptrtoint ptr %ureq to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 0, ptr %ureq, align 8
  br label %if.end14

do.end138.i:                                      ; preds = %land.lhs.true134.i
  call void @__sanitizer_cov_trace_pc() #15
  %id140.i = getelementptr inbounds %struct.ocrdma_dev, ptr %3, i32 0, i32 25
  %70 = ptrtoint ptr %id140.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %id140.i, align 4
  %call141.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.22, i32 noundef %71) #19
  br label %cleanup

land.lhs.true146.i:                               ; preds = %if.end130.i.land.lhs.true146.i_crit_edge, %land.lhs.true119.i.land.lhs.true146.i_crit_edge
  %gsi_qp_created147.i = getelementptr inbounds %struct.ocrdma_dev, ptr %3, i32 0, i32 13
  %72 = ptrtoint ptr %gsi_qp_created147.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %gsi_qp_created147.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool148.not.i = icmp eq i32 %73, 0
  br i1 %tobool148.not.i, label %land.lhs.true146.i.if.end7_crit_edge, label %if.then149.i

land.lhs.true146.i.if.end7_crit_edge:             ; preds = %land.lhs.true146.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

if.then149.i:                                     ; preds = %land.lhs.true146.i
  %gsi_sqcq.i = getelementptr inbounds %struct.ocrdma_dev, ptr %3, i32 0, i32 14
  %74 = ptrtoint ptr %gsi_sqcq.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %gsi_sqcq.i, align 4
  %send_cq.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attrs, i32 0, i32 2
  %76 = ptrtoint ptr %send_cq.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %send_cq.i, align 4
  %cmp151.i = icmp eq ptr %75, %77
  br i1 %cmp151.i, label %if.then149.i.do.end158.i_crit_edge, label %lor.lhs.false.i

if.then149.i.do.end158.i_crit_edge:               ; preds = %if.then149.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end158.i

lor.lhs.false.i:                                  ; preds = %if.then149.i
  %gsi_rqcq.i = getelementptr inbounds %struct.ocrdma_dev, ptr %3, i32 0, i32 15
  %78 = ptrtoint ptr %gsi_rqcq.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %gsi_rqcq.i, align 8
  %recv_cq.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attrs, i32 0, i32 3
  %80 = ptrtoint ptr %recv_cq.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %recv_cq.i, align 4
  %cmp154.i = icmp eq ptr %79, %81
  br i1 %cmp154.i, label %lor.lhs.false.i.do.end158.i_crit_edge, label %lor.lhs.false.i.if.end7_crit_edge

lor.lhs.false.i.if.end7_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

lor.lhs.false.i.do.end158.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end158.i

do.end158.i:                                      ; preds = %lor.lhs.false.i.do.end158.i_crit_edge, %if.then149.i.do.end158.i_crit_edge
  %id160.i = getelementptr inbounds %struct.ocrdma_dev, ptr %3, i32 0, i32 25
  %82 = ptrtoint ptr %id160.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %id160.i, align 4
  %call161.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.22, i32 noundef %83) #19
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false.i.if.end7_crit_edge, %land.lhs.true146.i.if.end7_crit_edge
  %84 = ptrtoint ptr %ureq to i32
  call void @__asan_store8_noabort(i32 %84)
  store i64 0, ptr %ureq, align 8
  br i1 %tobool118.not.i, label %if.end7.if.end14_crit_edge, label %if.then9

if.end7.if.end14_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

if.then9:                                         ; preds = %if.end7
  %85 = ptrtoint ptr %udata to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %udata, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.16, i32 noundef 156) #13
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i.i, label %if.then9.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then9.if.then11.i.i.i_crit_edge:               ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then9
  %87 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %86, i32 8, i32 -1226833920) #18, !srcloc !139
  %asmresult.i.i.i = extractvalue { i32, i32 } %87, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i1.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i1.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !140

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %ureq, i32 noundef 8) #13
  %88 = call i32 @llvm.read_register.i32(metadata !125) #13
  %and.i.i.i.i.i.i.i = and i32 %88, -16384
  %89 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %89, i32 0, i32 4
  %90 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #11, !srcloc !141
  %and.i.i.i.i.i = and i32 %90, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #13, !srcloc !142
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !143
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %ureq, ptr noundef %86, i32 noundef 8) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %90) #13, !srcloc !142
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !143
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i.i.i.if.end14_crit_edge, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !140

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i

if.end.i.i.i.if.end14_crit_edge:                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %if.then9.if.then11.i.i.i_crit_edge
  %res.03.i.i.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 8, %if.then9.if.then11.i.i.i_crit_edge ], [ 8, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 8, %res.03.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %ureq, i32 %sub.i.i.i
  %91 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.03.i.i.i)
  br label %cleanup

if.end14:                                         ; preds = %if.end.i.i.i.if.end14_crit_edge, %if.end7.if.end14_crit_edge, %if.end7.thread
  %tobool8.not147 = phi i1 [ true, %if.end7.thread ], [ true, %if.end7.if.end14_crit_edge ], [ false, %if.end.i.i.i.if.end14_crit_edge ]
  %pd1.i = getelementptr inbounds %struct.ocrdma_qp, ptr %ibqp, i32 0, i32 20
  %92 = ptrtoint ptr %pd1.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %1, ptr %pd1.i, align 4
  %q_lock.i = getelementptr inbounds %struct.ocrdma_qp, ptr %ibqp, i32 0, i32 6
  call void @__raw_spin_lock_init(ptr noundef %q_lock.i, ptr noundef nonnull @.str.62, ptr noundef nonnull @ocrdma_set_qp_init_params.__key, i16 noundef signext 3) #13
  %sq_entry.i = getelementptr inbounds %struct.ocrdma_qp, ptr %ibqp, i32 0, i32 8
  %93 = ptrtoint ptr %sq_entry.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store volatile ptr %sq_entry.i, ptr %sq_entry.i, align 4
  %prev.i.i = getelementptr inbounds %struct.ocrdma_qp, ptr %ibqp, i32 0, i32 8, i32 1
  %94 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %sq_entry.i, ptr %prev.i.i, align 4
  %rq_entry.i = getelementptr inbounds %struct.ocrdma_qp, ptr %ibqp, i32 0, i32 14
  %95 = ptrtoint ptr %rq_entry.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store volatile ptr %rq_entry.i, ptr %rq_entry.i, align 4
  %prev.i21.i = getelementptr inbounds %struct.ocrdma_qp, ptr %ibqp, i32 0, i32 14, i32 1
  %96 = ptrtoint ptr %prev.i21.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %rq_entry.i, ptr %prev.i21.i, align 4
  %97 = ptrtoint ptr %qp_type.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %qp_type.i, align 4
  %qp_type2.i = getelementptr inbounds %struct.ocrdma_qp, ptr %ibqp, i32 0, i32 21
  %99 = ptrtoint ptr %qp_type2.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %qp_type2.i, align 16
  %cap_flags.i = getelementptr inbounds %struct.ocrdma_qp, ptr %ibqp, i32 0, i32 16
  %100 = ptrtoint ptr %cap_flags.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 192, ptr %cap_flags.i, align 4
  %101 = ptrtoint ptr %max_inline_data.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %max_inline_data.i, align 4
  %max_inline_data3.i = getelementptr inbounds %struct.ocrdma_qp, ptr %ibqp, i32 0, i32 4
  %103 = ptrtoint ptr %max_inline_data3.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %102, ptr %max_inline_data3.i, align 4
  %104 = ptrtoint ptr %max_send_sge.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %max_send_sge.i, align 4
  %max_sges.i = getelementptr inbounds %struct.ocrdma_qp, ptr %ibqp, i32 0, i32 2, i32 1
  %106 = ptrtoint ptr %max_sges.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %105, ptr %max_sges.i, align 4
  %107 = ptrtoint ptr %max_recv_sge.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %max_recv_sge.i, align 4
  %max_sges6.i = getelementptr inbounds %struct.ocrdma_qp, ptr %ibqp, i32 0, i32 10, i32 1
  %109 = ptrtoint ptr %max_sges6.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %max_sges6.i, align 4
  %state.i = getelementptr inbounds %struct.ocrdma_qp, ptr %ibqp, i32 0, i32 15
  %110 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 0, ptr %state.i, align 8
  %sq_sig_type.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attrs, i32 0, i32 7
  %111 = ptrtoint ptr %sq_sig_type.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %sq_sig_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %cmp.i = icmp eq i32 %112, 0
  %signaled.i = getelementptr inbounds %struct.ocrdma_qp, ptr %ibqp, i32 0, i32 26
  %frombool.i = zext i1 %cmp.i to i8
  %113 = ptrtoint ptr %signaled.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %frombool.i, ptr %signaled.i, align 4
  br i1 %tobool8.not147, label %if.then15, label %if.end14.if.end16_crit_edge

if.end14.if.end16_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

if.then15:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  %114 = ptrtoint ptr %cap_flags.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 199, ptr %cap_flags.i, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end14.if.end16_crit_edge
  %dev_lock = getelementptr inbounds %struct.ocrdma_dev, ptr %3, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %dev_lock, i32 noundef 0) #13
  %115 = ptrtoint ptr %ureq to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %ureq, align 8
  %117 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %4, align 2
  %call17 = call i32 @ocrdma_mbx_create_qp(ptr noundef %ibqp, ptr noundef %attrs, i8 noundef zeroext %116, i16 noundef zeroext %118, ptr noundef nonnull %dpp_offset, ptr noundef nonnull %dpp_credit_lmt) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end16.mbx_err_crit_edge

if.end16.mbx_err_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %mbx_err

if.end20:                                         ; preds = %if.end16
  br i1 %tobool8.not147, label %if.then22, label %if.end20.if.end27_crit_edge

if.end20.if.end27_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

if.then22:                                        ; preds = %if.end20
  %max_cnt.i = getelementptr inbounds %struct.ocrdma_qp, ptr %ibqp, i32 0, i32 2, i32 5
  %119 = ptrtoint ptr %max_cnt.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %max_cnt.i, align 4
  %121 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %120, i32 16) #13
  %122 = extractvalue { i32, i1 } %121, 1
  br i1 %122, label %kcalloc.exit.thread.i, label %if.end7.i.i.i, !prof !138

kcalloc.exit.thread.i:                            ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #15
  %wqe_wr_id_tbl47.i = getelementptr inbounds %struct.ocrdma_qp, ptr %ibqp, i32 0, i32 3
  %123 = ptrtoint ptr %wqe_wr_id_tbl47.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr null, ptr %wqe_wr_id_tbl47.i, align 8
  br label %map_err

if.end7.i.i.i:                                    ; preds = %if.then22
  %124 = extractvalue { i32, i1 } %121, 0
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %124, i32 noundef 3520) #17
  %wqe_wr_id_tbl.i = getelementptr inbounds %struct.ocrdma_qp, ptr %ibqp, i32 0, i32 3
  %125 = ptrtoint ptr %wqe_wr_id_tbl.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %call8.i.i.i, ptr %wqe_wr_id_tbl.i, align 8
  %cmp.i103 = icmp eq ptr %call8.i.i.i, null
  br i1 %cmp.i103, label %if.end7.i.i.i.map_err_crit_edge, label %if.end.i104

if.end7.i.i.i.map_err_crit_edge:                  ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %map_err

if.end.i104:                                      ; preds = %if.end7.i.i.i
  %max_cnt2.i = getelementptr inbounds %struct.ocrdma_qp, ptr %ibqp, i32 0, i32 10, i32 5
  %126 = ptrtoint ptr %max_cnt2.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %max_cnt2.i, align 4
  %128 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %127, i32 8) #13
  %129 = extractvalue { i32, i1 } %128, 1
  br i1 %129, label %kcalloc.exit45.i.thread, label %if.end7.i.i43.i, !prof !138

kcalloc.exit45.i.thread:                          ; preds = %if.end.i104
  call void @__sanitizer_cov_trace_pc() #15
  %rqe_wr_id_tbl.i157 = getelementptr inbounds %struct.ocrdma_qp, ptr %ibqp, i32 0, i32 11
  %130 = ptrtoint ptr %rqe_wr_id_tbl.i157 to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr null, ptr %rqe_wr_id_tbl.i157, align 4
  br label %map_err

if.end7.i.i43.i:                                  ; preds = %if.end.i104
  %131 = extractvalue { i32, i1 } %128, 0
  %call8.i.i42.i = call noalias align 128 ptr @__kmalloc(i32 noundef %131, i32 noundef 3520) #17
  %rqe_wr_id_tbl.i = getelementptr inbounds %struct.ocrdma_qp, ptr %ibqp, i32 0, i32 11
  %132 = ptrtoint ptr %rqe_wr_id_tbl.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %call8.i.i42.i, ptr %rqe_wr_id_tbl.i, align 4
  %cmp5.i = icmp eq ptr %call8.i.i42.i, null
  br i1 %cmp5.i, label %if.end7.i.i43.i.map_err_crit_edge, label %if.end7.i.i43.i.if.end27_crit_edge

if.end7.i.i43.i.if.end27_crit_edge:               ; preds = %if.end7.i.i43.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

if.end7.i.i43.i.map_err_crit_edge:                ; preds = %if.end7.i.i43.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %map_err

if.end27:                                         ; preds = %if.end7.i.i43.i.if.end27_crit_edge, %if.end20.if.end27_crit_edge
  %id.i106 = getelementptr inbounds %struct.ocrdma_qp, ptr %ibqp, i32 0, i32 19
  %133 = ptrtoint ptr %id.i106 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %id.i106, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %134)
  %cmp.i107 = icmp ult i32 %134, 2048
  br i1 %cmp.i107, label %land.lhs.true.i, label %if.end27.map_err_crit_edge

if.end27.map_err_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %map_err

land.lhs.true.i:                                  ; preds = %if.end27
  %qp_tbl.i = getelementptr inbounds %struct.ocrdma_dev, ptr %3, i32 0, i32 6
  %135 = ptrtoint ptr %qp_tbl.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %qp_tbl.i, align 16
  %arrayidx.i = getelementptr ptr, ptr %136, i32 %134
  %137 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %arrayidx.i, align 4
  %cmp2.i = icmp eq ptr %138, null
  br i1 %cmp2.i, label %if.end31, label %land.lhs.true.i.map_err_crit_edge

land.lhs.true.i.map_err_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %map_err

if.end31:                                         ; preds = %land.lhs.true.i
  %139 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %ibqp, ptr %arrayidx.i, align 4
  %dev_family.i.i = getelementptr inbounds %struct.ocrdma_dev, ptr %3, i32 0, i32 20, i32 9
  %140 = ptrtoint ptr %dev_family.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %dev_family.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %141)
  %cmp.i.i = icmp eq i32 %141, 15
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.end31.ocrdma_set_qp_db.exit_crit_edge

if.end31.ocrdma_set_qp_db.exit_crit_edge:         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocrdma_set_qp_db.exit

land.lhs.true.i.i:                                ; preds = %if.end31
  %asic_id.i.i = getelementptr inbounds %struct.ocrdma_dev, ptr %3, i32 0, i32 31
  %142 = ptrtoint ptr %asic_id.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %asic_id.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %tobool.not.i.i = icmp eq i32 %143, 0
  br i1 %tobool.not.i.i, label %if.then.i.i109, label %land.lhs.true.i.i.ocrdma_set_qp_db.exit_crit_edge

land.lhs.true.i.i.ocrdma_set_qp_db.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocrdma_set_qp_db.exit

if.then.i.i109:                                   ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %pdev.i.i = getelementptr inbounds %struct.ocrdma_dev, ptr %3, i32 0, i32 20, i32 6
  %144 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %pdev.i.i, align 4
  %call.i.i = call i32 @pci_read_config_dword(ptr noundef %145, i32 noundef 156, ptr noundef %asic_id.i.i) #13
  br label %ocrdma_set_qp_db.exit

ocrdma_set_qp_db.exit:                            ; preds = %if.then.i.i109, %land.lhs.true.i.i.ocrdma_set_qp_db.exit_crit_edge, %if.end31.ocrdma_set_qp_db.exit_crit_edge
  %asic_id3.i.i = getelementptr inbounds %struct.ocrdma_dev, ptr %3, i32 0, i32 31
  %146 = ptrtoint ptr %asic_id3.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %asic_id3.i.i, align 8
  %and.i.i = lshr i32 %147, 8
  %conv.i.i = trunc i32 %and.i.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %conv.i.i)
  %cmp.i110 = icmp eq i8 %conv.i.i, 4
  %nic_info.i = getelementptr inbounds %struct.ocrdma_dev, ptr %3, i32 0, i32 20
  %148 = ptrtoint ptr %nic_info.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %nic_info.i, align 8
  %id.i111 = getelementptr inbounds %struct.ocrdma_pd, ptr %1, i32 0, i32 2
  %150 = ptrtoint ptr %id.i111 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %id.i111, align 4
  %db_page_size.i = getelementptr inbounds %struct.ocrdma_dev, ptr %3, i32 0, i32 20, i32 2
  %152 = ptrtoint ptr %db_page_size.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %db_page_size.i, align 8
  %mul.i = mul i32 %153, %151
  %add.ptr.i = getelementptr i8, ptr %149, i32 %mul.i
  %..i112 = select i1 %cmp.i110, i32 448, i32 96
  %.48.i = select i1 %cmp.i110, i32 256, i32 224
  %add.ptr19.i = getelementptr i8, ptr %add.ptr.i, i32 %..i112
  %sq_db20.i = getelementptr inbounds %struct.ocrdma_qp, ptr %ibqp, i32 0, i32 1
  %154 = ptrtoint ptr %sq_db20.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr %add.ptr19.i, ptr %sq_db20.i, align 4
  %155 = load ptr, ptr %nic_info.i, align 8
  %156 = load i32, ptr %id.i111, align 4
  %157 = load i32, ptr %db_page_size.i, align 8
  %mul26.i = mul i32 %157, %156
  %add.ptr27.i = getelementptr i8, ptr %155, i32 %mul26.i
  %add.ptr28.i = getelementptr i8, ptr %add.ptr27.i, i32 %.48.i
  %158 = getelementptr inbounds %struct.ocrdma_qp, ptr %ibqp, i32 0, i32 9
  %159 = ptrtoint ptr %158 to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr %add.ptr28.i, ptr %158, align 8
  br i1 %tobool8.not147, label %ocrdma_set_qp_db.exit.if.end41_crit_edge, label %if.then33

ocrdma_set_qp_db.exit.if.end41_crit_edge:         ; preds = %ocrdma_set_qp_db.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41

if.then33:                                        ; preds = %ocrdma_set_qp_db.exit
  %160 = ptrtoint ptr %dpp_offset to i32
  call void @__asan_load2_noabort(i32 %160)
  %161 = load i16, ptr %dpp_offset, align 2
  %conv = zext i16 %161 to i32
  %162 = ptrtoint ptr %dpp_credit_lmt to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %dpp_credit_lmt, align 2
  %conv34 = zext i16 %163 to i32
  %164 = ptrtoint ptr %srq.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %srq.i, align 4
  %cmp35.not = icmp eq ptr %165, null
  call void @llvm.lifetime.start.p0(i64 280, ptr nonnull %uresp.i) #13
  %166 = call ptr @memset(ptr %uresp.i, i32 255, i32 280)
  %167 = ptrtoint ptr %pd1.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %pd1.i, align 4
  %device.i = getelementptr inbounds %struct.ib_pd, ptr %168, i32 0, i32 2
  %169 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %device.i, align 4
  %171 = call ptr @memset(ptr %uresp.i, i32 0, i32 280)
  %unmapped_db.i = getelementptr inbounds %struct.ocrdma_dev, ptr %170, i32 0, i32 20, i32 1
  %172 = ptrtoint ptr %unmapped_db.i to i32
  call void @__asan_load8_noabort(i32 %172)
  %173 = load i64, ptr %unmapped_db.i, align 8
  %id.i114 = getelementptr inbounds %struct.ocrdma_pd, ptr %168, i32 0, i32 2
  %174 = ptrtoint ptr %id.i114 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %id.i114, align 4
  %db_page_size.i115 = getelementptr inbounds %struct.ocrdma_dev, ptr %170, i32 0, i32 20, i32 2
  %176 = ptrtoint ptr %db_page_size.i115 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %db_page_size.i115, align 8
  %mul.i116 = mul i32 %177, %175
  %conv.i117 = zext i32 %mul.i116 to i64
  %add.i = add i64 %173, %conv.i117
  %178 = ptrtoint ptr %id.i106 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %id.i106, align 8
  %conv4.i = trunc i32 %179 to i16
  %180 = ptrtoint ptr %uresp.i to i32
  call void @__asan_store2_noabort(i32 %180)
  store i16 %conv4.i, ptr %uresp.i, align 8
  %sq.i = getelementptr inbounds %struct.ocrdma_qp, ptr %ibqp, i32 0, i32 2
  %dbid.i = getelementptr inbounds %struct.ocrdma_qp, ptr %ibqp, i32 0, i32 2, i32 7
  %181 = ptrtoint ptr %dbid.i to i32
  call void @__asan_load2_noabort(i32 %181)
  %182 = load i16, ptr %dbid.i, align 4
  %sq_dbid.i = getelementptr inbounds %struct.ocrdma_create_qp_uresp, ptr %uresp.i, i32 0, i32 1
  %183 = ptrtoint ptr %sq_dbid.i to i32
  call void @__asan_store2_noabort(i32 %183)
  store i16 %182, ptr %sq_dbid.i, align 2
  %num_sq_pages.i = getelementptr inbounds %struct.ocrdma_create_qp_uresp, ptr %uresp.i, i32 0, i32 6
  %184 = ptrtoint ptr %num_sq_pages.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 1, ptr %num_sq_pages.i, align 8
  %len.i = getelementptr inbounds %struct.ocrdma_qp, ptr %ibqp, i32 0, i32 2, i32 8
  %185 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %len.i, align 32
  %add6.i = add i32 %186, 4095
  %and.i = and i32 %add6.i, -4096
  %sq_page_size.i = getelementptr inbounds %struct.ocrdma_create_qp_uresp, ptr %uresp.i, i32 0, i32 4
  %187 = ptrtoint ptr %sq_page_size.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %and.i, ptr %sq_page_size.i, align 8
  %188 = ptrtoint ptr %sq.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %sq.i, align 128
  %190 = ptrtoint ptr %189 to i32
  %call.i.i118 = call i32 @__virt_to_phys(i32 noundef %190) #13
  %conv9.i = zext i32 %call.i.i118 to i64
  %sq_page_addr.i = getelementptr inbounds %struct.ocrdma_create_qp_uresp, ptr %uresp.i, i32 0, i32 8
  %191 = ptrtoint ptr %sq_page_addr.i to i32
  call void @__asan_store8_noabort(i32 %191)
  store i64 %conv9.i, ptr %sq_page_addr.i, align 8
  %max_cnt.i119 = getelementptr inbounds %struct.ocrdma_qp, ptr %ibqp, i32 0, i32 2, i32 5
  %192 = ptrtoint ptr %max_cnt.i119 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %max_cnt.i119, align 4
  %num_wqe_allocated.i = getelementptr inbounds %struct.ocrdma_create_qp_uresp, ptr %uresp.i, i32 0, i32 14
  %194 = ptrtoint ptr %num_wqe_allocated.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 %193, ptr %num_wqe_allocated.i, align 4
  br i1 %cmp35.not, label %if.then.i121, label %if.then33.if.end.i122_crit_edge

if.then33.if.end.i122_crit_edge:                  ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i122

if.then.i121:                                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #15
  %rq.i = getelementptr inbounds %struct.ocrdma_qp, ptr %ibqp, i32 0, i32 10
  %dbid11.i = getelementptr inbounds %struct.ocrdma_qp, ptr %ibqp, i32 0, i32 10, i32 7
  %195 = ptrtoint ptr %dbid11.i to i32
  call void @__asan_load2_noabort(i32 %195)
  %196 = load i16, ptr %dbid11.i, align 4
  %rq_dbid.i = getelementptr inbounds %struct.ocrdma_create_qp_uresp, ptr %uresp.i, i32 0, i32 2
  %197 = ptrtoint ptr %rq_dbid.i to i32
  call void @__asan_store2_noabort(i32 %197)
  store i16 %196, ptr %rq_dbid.i, align 4
  %num_rq_pages.i = getelementptr inbounds %struct.ocrdma_create_qp_uresp, ptr %uresp.i, i32 0, i32 7
  %198 = ptrtoint ptr %num_rq_pages.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 1, ptr %num_rq_pages.i, align 4
  %len13.i = getelementptr inbounds %struct.ocrdma_qp, ptr %ibqp, i32 0, i32 10, i32 8
  %199 = ptrtoint ptr %len13.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %len13.i, align 4
  %add14.i = add i32 %200, 4095
  %and15.i = and i32 %add14.i, -4096
  %rq_page_size.i = getelementptr inbounds %struct.ocrdma_create_qp_uresp, ptr %uresp.i, i32 0, i32 5
  %201 = ptrtoint ptr %rq_page_size.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 %and15.i, ptr %rq_page_size.i, align 4
  %202 = ptrtoint ptr %rq.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %rq.i, align 4
  %204 = ptrtoint ptr %203 to i32
  %call.i84.i = call i32 @__virt_to_phys(i32 noundef %204) #13
  %conv19.i = zext i32 %call.i84.i to i64
  %rq_page_addr.i = getelementptr inbounds %struct.ocrdma_create_qp_uresp, ptr %uresp.i, i32 0, i32 9
  %205 = ptrtoint ptr %rq_page_addr.i to i32
  call void @__asan_store8_noabort(i32 %205)
  store i64 %conv19.i, ptr %rq_page_addr.i, align 8
  %max_cnt22.i = getelementptr inbounds %struct.ocrdma_qp, ptr %ibqp, i32 0, i32 10, i32 5
  %206 = ptrtoint ptr %max_cnt22.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %max_cnt22.i, align 4
  %num_rqe_allocated.i = getelementptr inbounds %struct.ocrdma_create_qp_uresp, ptr %uresp.i, i32 0, i32 15
  %208 = ptrtoint ptr %num_rqe_allocated.i to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 %207, ptr %num_rqe_allocated.i, align 8
  br label %if.end.i122

if.end.i122:                                      ; preds = %if.then.i121, %if.then33.if.end.i122_crit_edge
  %db_page_addr.i = getelementptr inbounds %struct.ocrdma_create_qp_uresp, ptr %uresp.i, i32 0, i32 10
  %209 = ptrtoint ptr %db_page_addr.i to i32
  call void @__asan_store8_noabort(i32 %209)
  store i64 %add.i, ptr %db_page_addr.i, align 8
  %210 = ptrtoint ptr %db_page_size.i115 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %db_page_size.i115, align 8
  %db_page_size25.i = getelementptr inbounds %struct.ocrdma_create_qp_uresp, ptr %uresp.i, i32 0, i32 11
  %212 = ptrtoint ptr %db_page_size25.i to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 %211, ptr %db_page_size25.i, align 8
  %db_sq_offset.i = getelementptr inbounds %struct.ocrdma_create_qp_uresp, ptr %uresp.i, i32 0, i32 16
  %213 = ptrtoint ptr %db_sq_offset.i to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 448, ptr %db_sq_offset.i, align 4
  %db_rq_offset.i = getelementptr inbounds %struct.ocrdma_create_qp_uresp, ptr %uresp.i, i32 0, i32 17
  %214 = ptrtoint ptr %db_rq_offset.i to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 256, ptr %db_rq_offset.i, align 8
  %db_shift.i = getelementptr inbounds %struct.ocrdma_create_qp_uresp, ptr %uresp.i, i32 0, i32 18
  %215 = ptrtoint ptr %db_shift.i to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 24, ptr %db_shift.i, align 4
  %dpp_enabled.i = getelementptr inbounds %struct.ocrdma_qp, ptr %ibqp, i32 0, i32 24
  %216 = ptrtoint ptr %dpp_enabled.i to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %dpp_enabled.i, align 4, !range !137
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %217)
  %tobool26.not.i = icmp eq i8 %217, 0
  br i1 %tobool26.not.i, label %if.end.i122.if.end29.i_crit_edge, label %if.then27.i

if.end.i122.if.end29.i_crit_edge:                 ; preds = %if.end.i122
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29.i

if.then27.i:                                      ; preds = %if.end.i122
  call void @__sanitizer_cov_trace_pc() #15
  %dpp_credit.i = getelementptr inbounds %struct.ocrdma_create_qp_uresp, ptr %uresp.i, i32 0, i32 12
  %218 = ptrtoint ptr %dpp_credit.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 %conv34, ptr %dpp_credit.i, align 4
  %dpp_offset28.i = getelementptr inbounds %struct.ocrdma_create_qp_uresp, ptr %uresp.i, i32 0, i32 13
  %219 = ptrtoint ptr %dpp_offset28.i to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 %conv, ptr %dpp_offset28.i, align 8
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then27.i, %if.end.i122.if.end29.i_crit_edge
  %outbuf.i.i = getelementptr inbounds %struct.ib_udata, ptr %udata, i32 0, i32 1
  %220 = ptrtoint ptr %outbuf.i.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %outbuf.i.i, align 4
  call void @__might_fault(ptr noundef nonnull @.str.16, i32 noundef 174) #13
  %call.i.i.i.i123 = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i.i.i123, label %if.end29.i.do.end.i126_crit_edge, label %if.end.i.i.i.i124

if.end29.i.do.end.i126_crit_edge:                 ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i126

if.end.i.i.i.i124:                                ; preds = %if.end29.i
  %222 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %221, i32 280, i32 -1226833920) #18, !srcloc !136
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %222, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i6.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.i6.i.i.i, label %copy_to_user.exit.i.i, label %if.end.i.i.i.i124.do.end.i126_crit_edge

if.end.i.i.i.i124.do.end.i126_crit_edge:          ; preds = %if.end.i.i.i.i124
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i126

copy_to_user.exit.i.i:                            ; preds = %if.end.i.i.i.i124
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %uresp.i, i32 noundef 280) #13
  %call.i12.i.i.i.i = call i32 @arm_copy_to_user(ptr noundef %221, ptr noundef nonnull %uresp.i, i32 noundef 280) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i.i)
  %tobool.not.i.i125 = icmp eq i32 %call.i12.i.i.i.i, 0
  br i1 %tobool.not.i.i125, label %if.end35.i, label %copy_to_user.exit.i.i.do.end.i126_crit_edge

copy_to_user.exit.i.i.do.end.i126_crit_edge:      ; preds = %copy_to_user.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i126

do.end.i126:                                      ; preds = %copy_to_user.exit.i.i.do.end.i126_crit_edge, %if.end.i.i.i.i124.do.end.i126_crit_edge, %if.end29.i.do.end.i126_crit_edge
  %id33.i = getelementptr inbounds %struct.ocrdma_dev, ptr %170, i32 0, i32 25
  %223 = ptrtoint ptr %id33.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %id33.i, align 4
  %call34.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.64, i32 noundef %224) #19
  br label %cpy_err

if.end35.i:                                       ; preds = %copy_to_user.exit.i.i
  %uctx.i = getelementptr inbounds %struct.ocrdma_pd, ptr %168, i32 0, i32 1
  %225 = ptrtoint ptr %uctx.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %uctx.i, align 4
  %227 = ptrtoint ptr %sq_page_addr.i to i32
  call void @__asan_load8_noabort(i32 %227)
  %228 = load i64, ptr %sq_page_addr.i, align 8
  %229 = ptrtoint ptr %sq_page_size.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %sq_page_size.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %231 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i127 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %231, i32 noundef 3520, i32 noundef 24) #16
  %cmp.i.i128 = icmp eq ptr %call7.i.i.i.i127, null
  br i1 %cmp.i.i128, label %if.end35.i.cpy_err_crit_edge, label %if.end.i.i

if.end35.i.cpy_err_crit_edge:                     ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpy_err

if.end.i.i:                                       ; preds = %if.end35.i
  %232 = ptrtoint ptr %call7.i.i.i.i127 to i32
  call void @__asan_store8_noabort(i32 %232)
  store i64 %228, ptr %call7.i.i.i.i127, align 8
  %len3.i.i = getelementptr inbounds %struct.anon.201, ptr %call7.i.i.i.i127, i32 0, i32 1
  %233 = ptrtoint ptr %len3.i.i to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 %230, ptr %len3.i.i, align 8
  %entry4.i.i = getelementptr inbounds %struct.ocrdma_mm, ptr %call7.i.i.i.i127, i32 0, i32 1
  %234 = ptrtoint ptr %entry4.i.i to i32
  call void @__asan_store4_noabort(i32 %234)
  store volatile ptr %entry4.i.i, ptr %entry4.i.i, align 8
  %prev.i.i.i = getelementptr inbounds %struct.ocrdma_mm, ptr %call7.i.i.i.i127, i32 0, i32 1, i32 1
  %235 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %235)
  store ptr %entry4.i.i, ptr %prev.i.i.i, align 4
  %mm_list_lock.i.i = getelementptr inbounds %struct.ocrdma_ucontext, ptr %226, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %mm_list_lock.i.i, i32 noundef 0) #13
  %mm_head.i.i = getelementptr inbounds %struct.ocrdma_ucontext, ptr %226, i32 0, i32 1
  %prev.i13.i.i = getelementptr inbounds %struct.ocrdma_ucontext, ptr %226, i32 0, i32 1, i32 1
  %236 = ptrtoint ptr %prev.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %prev.i13.i.i, align 4
  %call.i.i.i85.i = call zeroext i1 @__list_add_valid(ptr noundef %entry4.i.i, ptr noundef %237, ptr noundef %mm_head.i.i) #13
  br i1 %call.i.i.i85.i, label %if.end.i.i.i86.i, label %if.end.i.i.ocrdma_add_mmap.exit.i_crit_edge

if.end.i.i.ocrdma_add_mmap.exit.i_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocrdma_add_mmap.exit.i

if.end.i.i.i86.i:                                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %238 = ptrtoint ptr %prev.i13.i.i to i32
  call void @__asan_store4_noabort(i32 %238)
  store ptr %entry4.i.i, ptr %prev.i13.i.i, align 4
  %239 = ptrtoint ptr %entry4.i.i to i32
  call void @__asan_store4_noabort(i32 %239)
  store ptr %mm_head.i.i, ptr %entry4.i.i, align 8
  %240 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %240)
  store ptr %237, ptr %prev.i.i.i, align 4
  %241 = ptrtoint ptr %237 to i32
  call void @__asan_store4_noabort(i32 %241)
  store volatile ptr %entry4.i.i, ptr %237, align 4
  br label %ocrdma_add_mmap.exit.i

ocrdma_add_mmap.exit.i:                           ; preds = %if.end.i.i.i86.i, %if.end.i.i.ocrdma_add_mmap.exit.i_crit_edge
  call void @mutex_unlock(ptr noundef %mm_list_lock.i.i) #13
  br i1 %cmp35.not, label %if.then44.i, label %ocrdma_add_mmap.exit.i.ocrdma_copy_qp_uresp.exit_crit_edge

ocrdma_add_mmap.exit.i.ocrdma_copy_qp_uresp.exit_crit_edge: ; preds = %ocrdma_add_mmap.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocrdma_copy_qp_uresp.exit

if.then44.i:                                      ; preds = %ocrdma_add_mmap.exit.i
  %242 = ptrtoint ptr %uctx.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %uctx.i, align 4
  %rq_page_addr46.i = getelementptr inbounds %struct.ocrdma_create_qp_uresp, ptr %uresp.i, i32 0, i32 9
  %244 = ptrtoint ptr %rq_page_addr46.i to i32
  call void @__asan_load8_noabort(i32 %244)
  %245 = load i64, ptr %rq_page_addr46.i, align 8
  %rq_page_size48.i = getelementptr inbounds %struct.ocrdma_create_qp_uresp, ptr %uresp.i, i32 0, i32 5
  %246 = ptrtoint ptr %rq_page_size48.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %rq_page_size48.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %248 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i87.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %248, i32 noundef 3520, i32 noundef 24) #16
  %cmp.i88.i = icmp eq ptr %call7.i.i.i87.i, null
  br i1 %cmp.i88.i, label %rq_map_err.i, label %if.end.i96.i

if.end.i96.i:                                     ; preds = %if.then44.i
  %249 = ptrtoint ptr %call7.i.i.i87.i to i32
  call void @__asan_store8_noabort(i32 %249)
  store i64 %245, ptr %call7.i.i.i87.i, align 8
  %len3.i89.i = getelementptr inbounds %struct.anon.201, ptr %call7.i.i.i87.i, i32 0, i32 1
  %250 = ptrtoint ptr %len3.i89.i to i32
  call void @__asan_store4_noabort(i32 %250)
  store i32 %247, ptr %len3.i89.i, align 8
  %entry4.i90.i = getelementptr inbounds %struct.ocrdma_mm, ptr %call7.i.i.i87.i, i32 0, i32 1
  %251 = ptrtoint ptr %entry4.i90.i to i32
  call void @__asan_store4_noabort(i32 %251)
  store volatile ptr %entry4.i90.i, ptr %entry4.i90.i, align 8
  %prev.i.i91.i = getelementptr inbounds %struct.ocrdma_mm, ptr %call7.i.i.i87.i, i32 0, i32 1, i32 1
  %252 = ptrtoint ptr %prev.i.i91.i to i32
  call void @__asan_store4_noabort(i32 %252)
  store ptr %entry4.i90.i, ptr %prev.i.i91.i, align 4
  %mm_list_lock.i92.i = getelementptr inbounds %struct.ocrdma_ucontext, ptr %243, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %mm_list_lock.i92.i, i32 noundef 0) #13
  %mm_head.i93.i = getelementptr inbounds %struct.ocrdma_ucontext, ptr %243, i32 0, i32 1
  %prev.i13.i94.i = getelementptr inbounds %struct.ocrdma_ucontext, ptr %243, i32 0, i32 1, i32 1
  %253 = ptrtoint ptr %prev.i13.i94.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %prev.i13.i94.i, align 4
  %call.i.i.i95.i = call zeroext i1 @__list_add_valid(ptr noundef %entry4.i90.i, ptr noundef %254, ptr noundef %mm_head.i93.i) #13
  br i1 %call.i.i.i95.i, label %if.end.i.i.i97.i, label %if.end.i96.i.ocrdma_add_mmap.exit100.thread.i_crit_edge

if.end.i96.i.ocrdma_add_mmap.exit100.thread.i_crit_edge: ; preds = %if.end.i96.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocrdma_add_mmap.exit100.thread.i

if.end.i.i.i97.i:                                 ; preds = %if.end.i96.i
  call void @__sanitizer_cov_trace_pc() #15
  %255 = ptrtoint ptr %prev.i13.i94.i to i32
  call void @__asan_store4_noabort(i32 %255)
  store ptr %entry4.i90.i, ptr %prev.i13.i94.i, align 4
  %256 = ptrtoint ptr %entry4.i90.i to i32
  call void @__asan_store4_noabort(i32 %256)
  store ptr %mm_head.i93.i, ptr %entry4.i90.i, align 8
  %257 = ptrtoint ptr %prev.i.i91.i to i32
  call void @__asan_store4_noabort(i32 %257)
  store ptr %254, ptr %prev.i.i91.i, align 4
  %258 = ptrtoint ptr %254 to i32
  call void @__asan_store4_noabort(i32 %258)
  store volatile ptr %entry4.i90.i, ptr %254, align 4
  br label %ocrdma_add_mmap.exit100.thread.i

ocrdma_add_mmap.exit100.thread.i:                 ; preds = %if.end.i.i.i97.i, %if.end.i96.i.ocrdma_add_mmap.exit100.thread.i_crit_edge
  call void @mutex_unlock(ptr noundef %mm_list_lock.i92.i) #13
  br label %ocrdma_copy_qp_uresp.exit

rq_map_err.i:                                     ; preds = %if.then44.i
  %259 = ptrtoint ptr %uctx.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %uctx.i, align 4
  %261 = ptrtoint ptr %sq_page_addr.i to i32
  call void @__asan_load8_noabort(i32 %261)
  %262 = load i64, ptr %sq_page_addr.i, align 8
  %263 = ptrtoint ptr %sq_page_size.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %sq_page_size.i, align 8
  %mm_list_lock.i101.i = getelementptr inbounds %struct.ocrdma_ucontext, ptr %260, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %mm_list_lock.i101.i, i32 noundef 0) #13
  %mm_head.i102.i = getelementptr inbounds %struct.ocrdma_ucontext, ptr %260, i32 0, i32 1
  %265 = ptrtoint ptr %mm_head.i102.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %mm_head.i102.i, align 4
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %land.lhs.true.i.i129.for.cond.i.i_crit_edge, %rq_map_err.i
  %.pn.in.i.i = phi ptr [ %266, %rq_map_err.i ], [ %.pn.i.i, %land.lhs.true.i.i129.for.cond.i.i_crit_edge ]
  %mm.0.i.i = getelementptr i8, ptr %.pn.in.i.i, i32 -16
  %267 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 8
  %cmp.not.i.i = icmp eq ptr %.pn.in.i.i, %mm_head.i102.i
  br i1 %cmp.not.i.i, label %for.cond.i.i.ocrdma_del_mmap.exit.i_crit_edge, label %for.body.i.i

for.cond.i.i.ocrdma_del_mmap.exit.i_crit_edge:    ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocrdma_del_mmap.exit.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %len9.i.i = getelementptr i8, ptr %.pn.in.i.i, i32 -8
  %268 = ptrtoint ptr %len9.i.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %len9.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %269, i32 %264)
  %cmp10.not.i.i = icmp eq i32 %269, %264
  br i1 %cmp10.not.i.i, label %for.body.i.i.if.end.i104.i_crit_edge, label %land.lhs.true.i.i129

for.body.i.i.if.end.i104.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i104.i

land.lhs.true.i.i129:                             ; preds = %for.body.i.i
  %270 = ptrtoint ptr %mm.0.i.i to i32
  call void @__asan_load8_noabort(i32 %270)
  %271 = load i64, ptr %mm.0.i.i, align 8
  %cmp13.not.i.i = icmp eq i64 %271, %262
  br i1 %cmp13.not.i.i, label %land.lhs.true.i.i129.if.end.i104.i_crit_edge, label %land.lhs.true.i.i129.for.cond.i.i_crit_edge

land.lhs.true.i.i129.for.cond.i.i_crit_edge:      ; preds = %land.lhs.true.i.i129
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i.i

land.lhs.true.i.i129.if.end.i104.i_crit_edge:     ; preds = %land.lhs.true.i.i129
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i104.i

if.end.i104.i:                                    ; preds = %land.lhs.true.i.i129.if.end.i104.i_crit_edge, %for.body.i.i.if.end.i104.i_crit_edge
  %call.i.i.i103.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in.i.i) #13
  br i1 %call.i.i.i103.i, label %if.end.i.i.i105.i, label %if.end.i104.i.list_del.exit.i.i_crit_edge

if.end.i104.i.list_del.exit.i.i_crit_edge:        ; preds = %if.end.i104.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit.i.i

if.end.i.i.i105.i:                                ; preds = %if.end.i104.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in.i.i, i32 0, i32 1
  %272 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %prev.i.i.i.i, align 4
  %274 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %.pn.in.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %275, i32 0, i32 1
  %276 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %276)
  store ptr %273, ptr %prev1.i.i.i.i.i, align 4
  %277 = ptrtoint ptr %273 to i32
  call void @__asan_store4_noabort(i32 %277)
  store volatile ptr %275, ptr %273, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i105.i, %if.end.i104.i.list_del.exit.i.i_crit_edge
  %278 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_store4_noabort(i32 %278)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in.i.i, align 4
  %prev.i.i106.i = getelementptr inbounds %struct.list_head, ptr %.pn.in.i.i, i32 0, i32 1
  %279 = ptrtoint ptr %prev.i.i106.i to i32
  call void @__asan_store4_noabort(i32 %279)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i106.i, align 4
  call void @kfree(ptr noundef %mm.0.i.i) #13
  br label %ocrdma_del_mmap.exit.i

ocrdma_del_mmap.exit.i:                           ; preds = %list_del.exit.i.i, %for.cond.i.i.ocrdma_del_mmap.exit.i_crit_edge
  call void @mutex_unlock(ptr noundef %mm_list_lock.i101.i) #13
  br label %cpy_err

ocrdma_copy_qp_uresp.exit:                        ; preds = %ocrdma_add_mmap.exit100.thread.i, %ocrdma_add_mmap.exit.i.ocrdma_copy_qp_uresp.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 280, ptr nonnull %uresp.i) #13
  br label %if.end41

if.end41:                                         ; preds = %ocrdma_copy_qp_uresp.exit, %ocrdma_set_qp_db.exit.if.end41_crit_edge
  %280 = ptrtoint ptr %qp_type.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %qp_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %281)
  %cmp.i132 = icmp eq i32 %281, 1
  br i1 %cmp.i132, label %if.then.i138, label %if.end41.ocrdma_store_gsi_qp_cq.exit_crit_edge

if.end41.ocrdma_store_gsi_qp_cq.exit_crit_edge:   ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocrdma_store_gsi_qp_cq.exit

if.then.i138:                                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #15
  %gsi_qp_created.i133 = getelementptr inbounds %struct.ocrdma_dev, ptr %3, i32 0, i32 13
  %282 = ptrtoint ptr %gsi_qp_created.i133 to i32
  call void @__asan_store4_noabort(i32 %282)
  store i32 1, ptr %gsi_qp_created.i133, align 16
  %send_cq.i134 = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attrs, i32 0, i32 2
  %283 = ptrtoint ptr %send_cq.i134 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %send_cq.i134, align 4
  %gsi_sqcq.i135 = getelementptr inbounds %struct.ocrdma_dev, ptr %3, i32 0, i32 14
  %285 = ptrtoint ptr %gsi_sqcq.i135 to i32
  call void @__asan_store4_noabort(i32 %285)
  store ptr %284, ptr %gsi_sqcq.i135, align 4
  %recv_cq.i136 = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attrs, i32 0, i32 3
  %286 = ptrtoint ptr %recv_cq.i136 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %recv_cq.i136, align 4
  %gsi_rqcq.i137 = getelementptr inbounds %struct.ocrdma_dev, ptr %3, i32 0, i32 15
  %288 = ptrtoint ptr %gsi_rqcq.i137 to i32
  call void @__asan_store4_noabort(i32 %288)
  store ptr %287, ptr %gsi_rqcq.i137, align 8
  br label %ocrdma_store_gsi_qp_cq.exit

ocrdma_store_gsi_qp_cq.exit:                      ; preds = %if.then.i138, %if.end41.ocrdma_store_gsi_qp_cq.exit_crit_edge
  %289 = ptrtoint ptr %id.i106 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %id.i106, align 8
  %qp_num = getelementptr inbounds %struct.ib_qp, ptr %ibqp, i32 0, i32 19
  %291 = ptrtoint ptr %qp_num to i32
  call void @__asan_store4_noabort(i32 %291)
  store i32 %290, ptr %qp_num, align 4
  call void @mutex_unlock(ptr noundef %dev_lock) #13
  br label %cleanup

cpy_err:                                          ; preds = %ocrdma_del_mmap.exit.i, %if.end35.i.cpy_err_crit_edge, %do.end.i126
  %retval.0.i130.ph = phi i32 [ -12, %if.end35.i.cpy_err_crit_edge ], [ -12, %ocrdma_del_mmap.exit.i ], [ -14, %do.end.i126 ]
  call void @llvm.lifetime.end.p0(i64 280, ptr nonnull %uresp.i) #13
  %292 = ptrtoint ptr %qp_tbl.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %qp_tbl.i, align 16
  %294 = ptrtoint ptr %id.i106 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %id.i106, align 8
  %arrayidx.i142 = getelementptr ptr, ptr %293, i32 %295
  %296 = ptrtoint ptr %arrayidx.i142 to i32
  call void @__asan_store4_noabort(i32 %296)
  store ptr null, ptr %arrayidx.i142, align 4
  br label %map_err

map_err:                                          ; preds = %cpy_err, %land.lhs.true.i.map_err_crit_edge, %if.end27.map_err_crit_edge, %if.end7.i.i43.i.map_err_crit_edge, %kcalloc.exit45.i.thread, %if.end7.i.i.i.map_err_crit_edge, %kcalloc.exit.thread.i
  %status.0 = phi i32 [ %retval.0.i130.ph, %cpy_err ], [ -12, %if.end7.i.i.i.map_err_crit_edge ], [ -12, %kcalloc.exit.thread.i ], [ -12, %kcalloc.exit45.i.thread ], [ -12, %if.end7.i.i43.i.map_err_crit_edge ], [ -22, %land.lhs.true.i.map_err_crit_edge ], [ -22, %if.end27.map_err_crit_edge ]
  %call44 = call i32 @ocrdma_mbx_destroy_qp(ptr noundef %3, ptr noundef %ibqp) #13
  br label %mbx_err

mbx_err:                                          ; preds = %map_err, %if.end16.mbx_err_crit_edge
  %status.1 = phi i32 [ %call17, %if.end16.mbx_err_crit_edge ], [ %status.0, %map_err ]
  call void @mutex_unlock(ptr noundef %dev_lock) #13
  %wqe_wr_id_tbl = getelementptr inbounds %struct.ocrdma_qp, ptr %ibqp, i32 0, i32 3
  %297 = ptrtoint ptr %wqe_wr_id_tbl to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %wqe_wr_id_tbl, align 8
  call void @kfree(ptr noundef %298) #13
  %rqe_wr_id_tbl = getelementptr inbounds %struct.ocrdma_qp, ptr %ibqp, i32 0, i32 11
  %299 = ptrtoint ptr %rqe_wr_id_tbl to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %rqe_wr_id_tbl, align 4
  call void @kfree(ptr noundef %300) #13
  %id46 = getelementptr inbounds %struct.ocrdma_dev, ptr %3, i32 0, i32 25
  %301 = ptrtoint ptr %id46 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %id46, align 4
  %call47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef %302, i32 noundef %status.1) #19
  br label %cleanup

cleanup:                                          ; preds = %mbx_err, %ocrdma_store_gsi_qp_cq.exit, %if.then11.i.i.i, %do.end158.i, %do.end138.i, %do.end125.i, %do.end104.i, %do.end83.i, %do.end62.i, %do.end40.i, %do.end17.i, %do.end.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %ocrdma_store_gsi_qp_cq.exit ], [ -95, %entry.cleanup_crit_edge ], [ %status.1, %mbx_err ], [ -22, %do.end40.i ], [ -22, %do.end158.i ], [ -22, %do.end138.i ], [ -22, %do.end125.i ], [ -22, %do.end104.i ], [ -22, %do.end83.i ], [ -22, %do.end62.i ], [ -22, %do.end17.i ], [ -95, %do.end.i ], [ -14, %if.then11.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %dpp_offset) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %dpp_credit_lmt) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ureq) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocrdma_mbx_create_qp(ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocrdma_mbx_destroy_qp(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @_ocrdma_modify_qp(ptr noundef %ibqp, ptr noundef %attr, i32 noundef %attr_mask) local_unnamed_addr #3 align 64 {
entry:
  %old_qps = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old_qps) #13
  %0 = ptrtoint ptr %old_qps to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %old_qps, align 4, !annotation !135
  %1 = ptrtoint ptr %ibqp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ibqp, align 4
  %and = and i32 %attr_mask, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.end

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %attr, align 8
  %call2 = call i32 @ocrdma_qp_state_change(ptr noundef %ibqp, i32 noundef %4, ptr noundef nonnull %old_qps) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4:                                          ; preds = %if.end.if.end4_crit_edge, %entry.if.end4_crit_edge
  %call5 = call i32 @ocrdma_mbx_modify_qp(ptr noundef %2, ptr noundef %ibqp, ptr noundef %attr, i32 noundef %attr_mask) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end4 ], [ %call2, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old_qps) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocrdma_qp_state_change(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocrdma_mbx_modify_qp(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocrdma_modify_qp(ptr noundef %ibqp, ptr noundef %attr, i32 noundef %attr_mask, ptr nocapture noundef readnone %udata) local_unnamed_addr #3 align 64 {
entry:
  %old_qps.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %attr_mask)
  %tobool.not = icmp ult i32 %attr_mask, 2097152
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %ibqp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ibqp, align 4
  %dev_lock = getelementptr inbounds %struct.ocrdma_dev, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %dev_lock, i32 noundef 0) #13
  %q_lock = getelementptr inbounds %struct.ocrdma_qp, ptr %ibqp, i32 0, i32 6
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %q_lock) #13
  %state = getelementptr inbounds %struct.ocrdma_qp, ptr %ibqp, i32 0, i32 15
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 8
  %call7 = tail call i32 @get_ibqp_state(i32 noundef %3) #13
  %and8 = and i32 %attr_mask, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end.if.end11_crit_edge, label %if.then10

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %attr, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end.if.end11_crit_edge
  %new_qps.0 = phi i32 [ %5, %if.then10 ], [ %call7, %if.end.if.end11_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %q_lock, i32 noundef %call4) #13
  %qp_type = getelementptr inbounds %struct.ib_qp, ptr %ibqp, i32 0, i32 22
  %6 = ptrtoint ptr %qp_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %qp_type, align 4
  %call13 = tail call zeroext i1 @ib_modify_qp_is_ok(i32 noundef %call7, i32 noundef %new_qps.0, i32 noundef %7, i32 noundef %attr_mask) #13
  br i1 %call13, label %if.end22, label %do.end17

do.end17:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  %id = getelementptr inbounds %struct.ocrdma_dev, ptr %1, i32 0, i32 25
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 4
  %id19 = getelementptr inbounds %struct.ocrdma_qp, ptr %ibqp, i32 0, i32 19
  %10 = ptrtoint ptr %id19 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id19, align 8
  %12 = ptrtoint ptr %qp_type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %qp_type, align 4
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef %9, i32 noundef %attr_mask, i32 noundef %11, i32 noundef %13, i32 noundef %call7, i32 noundef %new_qps.0) #19
  br label %param_err

if.end22:                                         ; preds = %if.end11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old_qps.i) #13
  %14 = ptrtoint ptr %old_qps.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %old_qps.i, align 4, !annotation !135
  %15 = ptrtoint ptr %ibqp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ibqp, align 4
  br i1 %tobool9.not, label %if.end22.if.end4.i_crit_edge, label %if.end.i

if.end22.if.end4.i_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.i

if.end.i:                                         ; preds = %if.end22
  %17 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %attr, align 8
  %call2.i = call i32 @ocrdma_qp_state_change(ptr noundef %ibqp, i32 noundef %18, ptr noundef nonnull %old_qps.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %if.end.i._ocrdma_modify_qp.exit_crit_edge, label %if.end.i.if.end4.i_crit_edge

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.i

if.end.i._ocrdma_modify_qp.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %_ocrdma_modify_qp.exit

if.end4.i:                                        ; preds = %if.end.i.if.end4.i_crit_edge, %if.end22.if.end4.i_crit_edge
  %call5.i = call i32 @ocrdma_mbx_modify_qp(ptr noundef %16, ptr noundef %ibqp, ptr noundef %attr, i32 noundef %attr_mask) #13
  br label %_ocrdma_modify_qp.exit

_ocrdma_modify_qp.exit:                           ; preds = %if.end4.i, %if.end.i._ocrdma_modify_qp.exit_crit_edge
  %retval.0.i = phi i32 [ %call5.i, %if.end4.i ], [ %call2.i, %if.end.i._ocrdma_modify_qp.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old_qps.i) #13
  %19 = call i32 @llvm.smin.i32(i32 %retval.0.i, i32 0)
  br label %param_err

param_err:                                        ; preds = %_ocrdma_modify_qp.exit, %do.end17
  %status.0 = phi i32 [ %19, %_ocrdma_modify_qp.exit ], [ -22, %do.end17 ]
  call void @mutex_unlock(ptr noundef %dev_lock) #13
  br label %cleanup

cleanup:                                          ; preds = %param_err, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.0, %param_err ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_ibqp_state(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ib_modify_qp_is_ok(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocrdma_query_qp(ptr noundef %ibqp, ptr noundef %qp_attr, i32 noundef %attr_mask, ptr nocapture noundef writeonly %qp_init_attr) local_unnamed_addr #3 align 64 {
entry:
  %params = alloca %struct.ocrdma_qp_params, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %params) #13
  %0 = ptrtoint ptr %ibqp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ibqp, align 4
  %2 = call ptr @memset(ptr %params, i32 0, i32 88)
  %dev_lock = getelementptr inbounds %struct.ocrdma_dev, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %dev_lock, i32 noundef 0) #13
  %call2 = call i32 @ocrdma_mbx_query_qp(ptr noundef %1, ptr noundef %ibqp, ptr noundef nonnull %params) #13
  call void @mutex_unlock(ptr noundef %dev_lock) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.mbx_err_crit_edge

entry.mbx_err_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %mbx_err

if.end:                                           ; preds = %entry
  %qp_type = getelementptr inbounds %struct.ocrdma_qp, ptr %ibqp, i32 0, i32 21
  %3 = ptrtoint ptr %qp_type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %qp_type, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %cmp = icmp eq i32 %4, 4
  br i1 %cmp, label %if.then4, label %if.end.rdma_ah_set_path_bits.exit_crit_edge

if.end.rdma_ah_set_path_bits.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %rdma_ah_set_path_bits.exit

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %qkey = getelementptr inbounds %struct.ocrdma_qp_params, ptr %params, i32 0, i32 15
  %5 = ptrtoint ptr %qkey to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %qkey, align 4
  %qkey5 = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr, i32 0, i32 4
  %7 = ptrtoint ptr %qkey5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %qkey5, align 8
  br label %rdma_ah_set_path_bits.exit

rdma_ah_set_path_bits.exit:                       ; preds = %if.then4, %if.end.rdma_ah_set_path_bits.exit_crit_edge
  %path_mtu = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr, i32 0, i32 2
  %8 = ptrtoint ptr %path_mtu to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %path_mtu, align 8
  %path_mig_state = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr, i32 0, i32 3
  %9 = ptrtoint ptr %path_mig_state to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %path_mig_state, align 4
  %hop_lmt_rq_psn = getelementptr inbounds %struct.ocrdma_qp_params, ptr %params, i32 0, i32 6
  %10 = ptrtoint ptr %hop_lmt_rq_psn to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hop_lmt_rq_psn, align 4
  %and8 = and i32 %11, 16777215
  %rq_psn = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr, i32 0, i32 5
  %12 = ptrtoint ptr %rq_psn to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and8, ptr %rq_psn, align 4
  %tclass_sq_psn = getelementptr inbounds %struct.ocrdma_qp_params, ptr %params, i32 0, i32 7
  %13 = ptrtoint ptr %tclass_sq_psn to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tclass_sq_psn, align 4
  %and9 = and i32 %14, 16777215
  %sq_psn = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr, i32 0, i32 6
  %15 = ptrtoint ptr %sq_psn to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %and9, ptr %sq_psn, align 8
  %ack_to_rnr_rtc_dest_qpn = getelementptr inbounds %struct.ocrdma_qp_params, ptr %params, i32 0, i32 8
  %16 = ptrtoint ptr %ack_to_rnr_rtc_dest_qpn to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ack_to_rnr_rtc_dest_qpn, align 4
  %and10 = and i32 %17, 16777215
  %dest_qp_num = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr, i32 0, i32 7
  %18 = ptrtoint ptr %dest_qp_num to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %and10, ptr %dest_qp_num, align 4
  %cap_flags = getelementptr inbounds %struct.ocrdma_qp, ptr %ibqp, i32 0, i32 16
  %19 = ptrtoint ptr %cap_flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cap_flags, align 4
  %and.i = lshr i32 %20, 6
  %21 = and i32 %and.i, 3
  %qp_access_flags = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr, i32 0, i32 8
  %22 = ptrtoint ptr %qp_access_flags to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %qp_access_flags, align 8
  %max_cnt = getelementptr inbounds %struct.ocrdma_qp, ptr %ibqp, i32 0, i32 2, i32 5
  %23 = ptrtoint ptr %max_cnt to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %max_cnt, align 4
  %sub = add i32 %24, -1
  %cap = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr, i32 0, i32 9
  %25 = ptrtoint ptr %cap to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %sub, ptr %cap, align 4
  %max_cnt12 = getelementptr inbounds %struct.ocrdma_qp, ptr %ibqp, i32 0, i32 10, i32 5
  %26 = ptrtoint ptr %max_cnt12 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %max_cnt12, align 4
  %sub13 = add i32 %27, -1
  %max_recv_wr = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr, i32 0, i32 9, i32 1
  %28 = ptrtoint ptr %max_recv_wr to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %sub13, ptr %max_recv_wr, align 4
  %max_sges = getelementptr inbounds %struct.ocrdma_qp, ptr %ibqp, i32 0, i32 2, i32 1
  %29 = ptrtoint ptr %max_sges to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %max_sges, align 4
  %max_send_sge = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr, i32 0, i32 9, i32 2
  %31 = ptrtoint ptr %max_send_sge to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %max_send_sge, align 4
  %max_sges18 = getelementptr inbounds %struct.ocrdma_qp, ptr %ibqp, i32 0, i32 10, i32 1
  %32 = ptrtoint ptr %max_sges18 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %max_sges18, align 4
  %max_recv_sge = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr, i32 0, i32 9, i32 3
  %34 = ptrtoint ptr %max_recv_sge to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %max_recv_sge, align 4
  %max_inline_data = getelementptr inbounds %struct.ocrdma_qp, ptr %ibqp, i32 0, i32 4
  %35 = ptrtoint ptr %max_inline_data to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %max_inline_data, align 4
  %max_inline_data21 = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr, i32 0, i32 9, i32 4
  %37 = ptrtoint ptr %max_inline_data21 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %max_inline_data21, align 4
  %cap22 = getelementptr inbounds %struct.ib_qp_init_attr, ptr %qp_init_attr, i32 0, i32 6
  %38 = call ptr @memcpy(ptr %cap22, ptr %cap, i32 24)
  %ah_attr = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr, i32 0, i32 10
  %type = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr, i32 0, i32 10, i32 5
  %39 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 2, ptr %type, align 4
  %rnt_rc_sl_fl = getelementptr inbounds %struct.ocrdma_qp_params, ptr %params, i32 0, i32 10
  %40 = ptrtoint ptr %rnt_rc_sl_fl to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rnt_rc_sl_fl, align 4
  %and25 = and i32 %41, 1048575
  %sgid_idx = getelementptr inbounds %struct.ocrdma_qp, ptr %ibqp, i32 0, i32 22
  %42 = ptrtoint ptr %sgid_idx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %sgid_idx, align 4
  %conv26 = trunc i32 %43 to i8
  %shr29 = lshr i32 %11, 24
  %conv30 = trunc i32 %shr29 to i8
  %shr33 = lshr i32 %14, 24
  %conv34 = trunc i32 %shr33 to i8
  %ah_flags.i = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr, i32 0, i32 10, i32 4
  %44 = ptrtoint ptr %ah_flags.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %ah_flags.i, align 8
  %flow_label2.i = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr, i32 0, i32 10, i32 0, i32 2
  %45 = ptrtoint ptr %flow_label2.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %and25, ptr %flow_label2.i, align 8
  %sgid_index3.i = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr, i32 0, i32 10, i32 0, i32 3
  %46 = ptrtoint ptr %sgid_index3.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv26, ptr %sgid_index3.i, align 4
  %hop_limit4.i = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr, i32 0, i32 10, i32 0, i32 4
  %47 = ptrtoint ptr %hop_limit4.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv30, ptr %hop_limit4.i, align 1
  %traffic_class5.i = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr, i32 0, i32 10, i32 0, i32 5
  %48 = ptrtoint ptr %traffic_class5.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv34, ptr %traffic_class5.i, align 2
  %49 = ptrtoint ptr %ah_attr to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %ah_attr, align 8
  %dgid = getelementptr inbounds %struct.ocrdma_qp_params, ptr %params, i32 0, i32 12
  %dgid1.i = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr, i32 0, i32 10, i32 0, i32 1
  %50 = call ptr @memcpy(ptr %dgid1.i, ptr %dgid, i32 16)
  %port_num1.i = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr, i32 0, i32 10, i32 3
  %51 = ptrtoint ptr %port_num1.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1, ptr %port_num1.i, align 4
  %and39 = lshr i32 %41, 20
  %52 = trunc i32 %and39 to i8
  %conv41 = and i8 %52, 15
  %sl1.i = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr, i32 0, i32 10, i32 1
  %53 = ptrtoint ptr %sl1.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv41, ptr %sl1.i, align 8
  %shr44 = lshr i32 %17, 27
  %conv45 = trunc i32 %shr44 to i8
  %timeout = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr, i32 0, i32 20
  %54 = ptrtoint ptr %timeout to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv45, ptr %timeout, align 8
  %and47 = lshr i32 %17, 24
  %55 = trunc i32 %and47 to i8
  %conv49 = and i8 %55, 7
  %rnr_retry = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr, i32 0, i32 22
  %56 = ptrtoint ptr %rnr_retry to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv49, ptr %rnr_retry, align 2
  %and51 = lshr i32 %41, 24
  %57 = trunc i32 %and51 to i8
  %conv53 = and i8 %57, 7
  %retry_cnt = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr, i32 0, i32 21
  %58 = ptrtoint ptr %retry_cnt to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv53, ptr %retry_cnt, align 1
  %min_rnr_timer = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr, i32 0, i32 18
  %59 = ptrtoint ptr %min_rnr_timer to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 0, ptr %min_rnr_timer, align 8
  %pkey_index = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr, i32 0, i32 12
  %60 = ptrtoint ptr %pkey_index to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 0, ptr %pkey_index, align 8
  %port_num = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr, i32 0, i32 19
  %61 = ptrtoint ptr %port_num to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 1, ptr %port_num, align 4
  %static_rate1.i = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr, i32 0, i32 10, i32 2
  %62 = ptrtoint ptr %static_rate1.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %static_rate1.i, align 1
  %alt_pkey_index = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr, i32 0, i32 13
  %63 = ptrtoint ptr %alt_pkey_index to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 0, ptr %alt_pkey_index, align 2
  %alt_port_num = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr, i32 0, i32 23
  %64 = ptrtoint ptr %alt_port_num to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %alt_port_num, align 4
  %alt_timeout = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr, i32 0, i32 24
  %65 = ptrtoint ptr %alt_timeout to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 0, ptr %alt_timeout, align 8
  %alt_ah_attr = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr, i32 0, i32 11
  %66 = call ptr @memset(ptr %alt_ah_attr, i32 0, i32 56)
  %max_sge_recv_flags = getelementptr inbounds %struct.ocrdma_qp_params, ptr %params, i32 0, i32 3
  %67 = ptrtoint ptr %max_sge_recv_flags to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %max_sge_recv_flags, align 4
  %and56 = lshr i32 %68, 5
  %shr57 = and i32 %and56, 7
  %call58 = call i32 @get_ibqp_state(i32 noundef %shr57) #13
  %69 = ptrtoint ptr %qp_attr to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %call58, ptr %qp_attr, align 8
  %cur_qp_state = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr, i32 0, i32 1
  %70 = ptrtoint ptr %cur_qp_state to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %call58, ptr %cur_qp_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %shr57)
  %cmp61 = icmp eq i32 %shr57, 5
  %conv63 = zext i1 %cmp61 to i8
  %sq_draining = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr, i32 0, i32 15
  %71 = ptrtoint ptr %sq_draining to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %conv63, ptr %sq_draining, align 1
  %max_ord_ird = getelementptr inbounds %struct.ocrdma_qp_params, ptr %params, i32 0, i32 4
  %72 = ptrtoint ptr %max_ord_ird to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %max_ord_ird, align 4
  %shr64 = lshr i32 %73, 16
  %conv65 = trunc i32 %shr64 to i8
  %max_dest_rd_atomic = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr, i32 0, i32 17
  %74 = ptrtoint ptr %max_dest_rd_atomic to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %conv65, ptr %max_dest_rd_atomic, align 1
  %conv68 = trunc i32 %73 to i8
  %max_rd_atomic = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr, i32 0, i32 16
  %75 = ptrtoint ptr %max_rd_atomic to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %conv68, ptr %max_rd_atomic, align 2
  %76 = ptrtoint ptr %max_sge_recv_flags to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %max_sge_recv_flags, align 4
  %and70 = lshr i32 %77, 8
  %78 = trunc i32 %and70 to i8
  %79 = and i8 %78, 1
  %en_sqd_async_notify = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr, i32 0, i32 14
  %80 = ptrtoint ptr %en_sqd_async_notify to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %79, ptr %en_sqd_async_notify, align 4
  %call75 = call i32 @ocrdma_qp_state_change(ptr noundef %ibqp, i32 noundef %call58, ptr noundef null) #13
  br label %mbx_err

mbx_err:                                          ; preds = %rdma_ah_set_path_bits.exit, %entry.mbx_err_crit_edge
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %params) #13
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocrdma_mbx_query_qp(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocrdma_del_flush_qp(ptr noundef %qp) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qp, align 128
  %flush_q_lock = getelementptr inbounds %struct.ocrdma_dev, ptr %1, i32 0, i32 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %flush_q_lock) #13
  %sq_cq = getelementptr inbounds %struct.ocrdma_qp, ptr %qp, i32 0, i32 7
  %2 = ptrtoint ptr %sq_cq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sq_cq, align 4
  %call6 = tail call zeroext i1 @ocrdma_is_qp_in_sq_flushlist(ptr noundef %3, ptr noundef %qp) #13
  br i1 %call6, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  %sq_entry = getelementptr inbounds %struct.ocrdma_qp, ptr %qp, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %sq_entry) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.ocrdma_qp, ptr %qp, i32 0, i32 8, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %sq_entry to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sq_entry, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %10 = ptrtoint ptr %sq_entry to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %sq_entry, align 4
  %prev.i = getelementptr inbounds %struct.ocrdma_qp, ptr %qp, i32 0, i32 8, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %if.end

if.end:                                           ; preds = %list_del.exit, %entry.if.end_crit_edge
  %srq = getelementptr inbounds %struct.ocrdma_qp, ptr %qp, i32 0, i32 13
  %12 = ptrtoint ptr %srq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %srq, align 4
  %tobool8.not = icmp eq ptr %13, null
  br i1 %tobool8.not, label %if.then9, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.then9:                                         ; preds = %if.end
  %rq_cq = getelementptr inbounds %struct.ocrdma_qp, ptr %qp, i32 0, i32 12
  %14 = ptrtoint ptr %rq_cq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rq_cq, align 8
  %call10 = tail call zeroext i1 @ocrdma_is_qp_in_rq_flushlist(ptr noundef %15, ptr noundef %qp) #13
  br i1 %call10, label %if.then13, label %if.then9.if.end15_crit_edge

if.then9.if.end15_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.then13:                                        ; preds = %if.then9
  %rq_entry = getelementptr inbounds %struct.ocrdma_qp, ptr %qp, i32 0, i32 14
  %call.i.i26 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %rq_entry) #13
  br i1 %call.i.i26, label %if.end.i.i29, label %if.then13.list_del.exit31_crit_edge

if.then13.list_del.exit31_crit_edge:              ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit31

if.end.i.i29:                                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i27 = getelementptr inbounds %struct.ocrdma_qp, ptr %qp, i32 0, i32 14, i32 1
  %16 = ptrtoint ptr %prev.i.i27 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i27, align 4
  %18 = ptrtoint ptr %rq_entry to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rq_entry, align 4
  %prev1.i.i.i28 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i28 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i28, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %list_del.exit31

list_del.exit31:                                  ; preds = %if.end.i.i29, %if.then13.list_del.exit31_crit_edge
  %22 = ptrtoint ptr %rq_entry to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 256 to ptr), ptr %rq_entry, align 4
  %prev.i30 = getelementptr inbounds %struct.ocrdma_qp, ptr %qp, i32 0, i32 14, i32 1
  %23 = ptrtoint ptr %prev.i30 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i30, align 4
  br label %if.end15

if.end15:                                         ; preds = %list_del.exit31, %if.then9.if.end15_crit_edge, %if.end.if.end15_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %flush_q_lock, i32 noundef %call3) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ocrdma_is_qp_in_sq_flushlist(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ocrdma_is_qp_in_rq_flushlist(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocrdma_destroy_qp(ptr noundef %ibqp, ptr nocapture noundef readnone %udata) local_unnamed_addr #3 align 64 {
entry:
  %old_qps.i = alloca i32, align 4
  %attrs = alloca %struct.ib_qp_attr, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 216, ptr nonnull %attrs) #13
  %0 = call ptr @memset(ptr %attrs, i32 255, i32 216)
  %1 = ptrtoint ptr %ibqp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ibqp, align 4
  %pd2 = getelementptr inbounds %struct.ocrdma_qp, ptr %ibqp, i32 0, i32 20
  %3 = ptrtoint ptr %pd2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pd2, align 4
  %state = getelementptr inbounds %struct.ocrdma_qp, ptr %ibqp, i32 0, i32 15
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.not = icmp eq i32 %6, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  %7 = ptrtoint ptr %attrs to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 6, ptr %attrs, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old_qps.i) #13
  %8 = ptrtoint ptr %old_qps.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %old_qps.i, align 4, !annotation !135
  %call2.i = call i32 @ocrdma_qp_state_change(ptr noundef %ibqp, i32 noundef 6, ptr noundef nonnull %old_qps.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %if.then._ocrdma_modify_qp.exit_crit_edge, label %if.end4.i

if.then._ocrdma_modify_qp.exit_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %_ocrdma_modify_qp.exit

if.end4.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %call5.i = call i32 @ocrdma_mbx_modify_qp(ptr noundef %2, ptr noundef %ibqp, ptr noundef nonnull %attrs, i32 noundef 1) #13
  br label %_ocrdma_modify_qp.exit

_ocrdma_modify_qp.exit:                           ; preds = %if.end4.i, %if.then._ocrdma_modify_qp.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old_qps.i) #13
  br label %if.end

if.end:                                           ; preds = %_ocrdma_modify_qp.exit, %entry.if.end_crit_edge
  %dev_lock = getelementptr inbounds %struct.ocrdma_dev, ptr %2, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %dev_lock, i32 noundef 0) #13
  %call4 = call i32 @ocrdma_mbx_destroy_qp(ptr noundef %2, ptr noundef %ibqp) #13
  %sq_cq = getelementptr inbounds %struct.ocrdma_qp, ptr %ibqp, i32 0, i32 7
  %9 = ptrtoint ptr %sq_cq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sq_cq, align 4
  %cq_lock = getelementptr inbounds %struct.ocrdma_cq, ptr %10, i32 0, i32 7
  %call8 = call i32 @_raw_spin_lock_irqsave(ptr noundef %cq_lock) #13
  %rq_cq = getelementptr inbounds %struct.ocrdma_qp, ptr %ibqp, i32 0, i32 12
  %11 = ptrtoint ptr %rq_cq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rq_cq, align 8
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %if.end.if.else_crit_edge, label %land.lhs.true

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %13 = ptrtoint ptr %sq_cq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sq_cq, align 4
  %cmp13.not = icmp eq ptr %12, %14
  br i1 %cmp13.not, label %land.lhs.true.if.else_crit_edge, label %if.then15

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.then15:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %cq_lock17 = getelementptr inbounds %struct.ocrdma_cq, ptr %12, i32 0, i32 7
  call void @_raw_spin_lock(ptr noundef %cq_lock17) #13
  %qp_tbl.i = getelementptr inbounds %struct.ocrdma_dev, ptr %2, i32 0, i32 6
  %15 = ptrtoint ptr %qp_tbl.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %qp_tbl.i, align 16
  %id.i = getelementptr inbounds %struct.ocrdma_qp, ptr %ibqp, i32 0, i32 19
  %17 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %id.i, align 8
  %arrayidx.i = getelementptr ptr, ptr %16, i32 %18
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %arrayidx.i, align 4
  %20 = ptrtoint ptr %rq_cq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rq_cq, align 8
  %cq_lock19 = getelementptr inbounds %struct.ocrdma_cq, ptr %21, i32 0, i32 7
  call void @_raw_spin_unlock(ptr noundef %cq_lock19) #13
  br label %if.end20

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  %qp_tbl.i79 = getelementptr inbounds %struct.ocrdma_dev, ptr %2, i32 0, i32 6
  %22 = ptrtoint ptr %qp_tbl.i79 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %qp_tbl.i79, align 16
  %id.i80 = getelementptr inbounds %struct.ocrdma_qp, ptr %ibqp, i32 0, i32 19
  %24 = ptrtoint ptr %id.i80 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %id.i80, align 8
  %arrayidx.i81 = getelementptr ptr, ptr %23, i32 %25
  %26 = ptrtoint ptr %arrayidx.i81 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %arrayidx.i81, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then15
  %27 = ptrtoint ptr %sq_cq to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sq_cq, align 4
  %cq_lock22 = getelementptr inbounds %struct.ocrdma_cq, ptr %28, i32 0, i32 7
  call void @_raw_spin_unlock_irqrestore(ptr noundef %cq_lock22, i32 noundef %call8) #13
  %uctx = getelementptr inbounds %struct.ocrdma_pd, ptr %4, i32 0, i32 1
  %29 = ptrtoint ptr %uctx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %uctx, align 4
  %tobool23.not = icmp eq ptr %30, null
  br i1 %tobool23.not, label %if.then24, label %if.end20.if.end27_crit_edge

if.end20.if.end27_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  %31 = ptrtoint ptr %sq_cq to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sq_cq, align 4
  call fastcc void @ocrdma_discard_cqes(ptr noundef %ibqp, ptr noundef %32)
  %33 = ptrtoint ptr %rq_cq to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rq_cq, align 8
  call fastcc void @ocrdma_discard_cqes(ptr noundef %ibqp, ptr noundef %34)
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.end20.if.end27_crit_edge
  call void @mutex_unlock(ptr noundef %dev_lock) #13
  %35 = ptrtoint ptr %uctx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %uctx, align 4
  %tobool30.not = icmp eq ptr %36, null
  br i1 %tobool30.not, label %if.end27.if.end45_crit_edge, label %if.then31

if.end27.if.end45_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end45

if.then31:                                        ; preds = %if.end27
  %pa = getelementptr inbounds %struct.ocrdma_qp, ptr %ibqp, i32 0, i32 2, i32 9
  %37 = ptrtoint ptr %pa to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pa, align 4
  %conv33 = zext i32 %38 to i64
  %len = getelementptr inbounds %struct.ocrdma_qp, ptr %ibqp, i32 0, i32 2, i32 8
  %39 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %len, align 32
  %add = add i32 %40, 4095
  %and = and i32 %add, -4096
  %mm_list_lock.i = getelementptr inbounds %struct.ocrdma_ucontext, ptr %36, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %mm_list_lock.i, i32 noundef 0) #13
  %mm_head.i = getelementptr inbounds %struct.ocrdma_ucontext, ptr %36, i32 0, i32 1
  %41 = ptrtoint ptr %mm_head.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mm_head.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %land.lhs.true.i.for.cond.i_crit_edge, %if.then31
  %.pn.in.i = phi ptr [ %42, %if.then31 ], [ %.pn.i, %land.lhs.true.i.for.cond.i_crit_edge ]
  %mm.0.i = getelementptr i8, ptr %.pn.in.i, i32 -16
  %43 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %.pn.i = load ptr, ptr %.pn.in.i, align 8
  %cmp.not.i = icmp eq ptr %.pn.in.i, %mm_head.i
  br i1 %cmp.not.i, label %for.cond.i.ocrdma_del_mmap.exit_crit_edge, label %for.body.i

for.cond.i.ocrdma_del_mmap.exit_crit_edge:        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocrdma_del_mmap.exit

for.body.i:                                       ; preds = %for.cond.i
  %len9.i = getelementptr i8, ptr %.pn.in.i, i32 -8
  %44 = ptrtoint ptr %len9.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %len9.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %and)
  %cmp10.not.i = icmp eq i32 %45, %and
  br i1 %cmp10.not.i, label %for.body.i.if.end.i_crit_edge, label %land.lhs.true.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %46 = ptrtoint ptr %mm.0.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %mm.0.i, align 8
  %cmp13.not.i = icmp eq i64 %47, %conv33
  br i1 %cmp13.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.for.cond.i_crit_edge

land.lhs.true.i.for.cond.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %for.body.i.if.end.i_crit_edge
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in.i) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_del.exit.i_crit_edge

if.end.i.list_del.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in.i, i32 0, i32 1
  %48 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %prev.i.i.i, align 4
  %50 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %.pn.in.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %49, ptr %prev1.i.i.i.i, align 4
  %53 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %51, ptr %49, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end.i.list_del.exit.i_crit_edge
  %54 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in.i, i32 0, i32 1
  %55 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  call void @kfree(ptr noundef %mm.0.i) #13
  br label %ocrdma_del_mmap.exit

ocrdma_del_mmap.exit:                             ; preds = %list_del.exit.i, %for.cond.i.ocrdma_del_mmap.exit_crit_edge
  call void @mutex_unlock(ptr noundef %mm_list_lock.i) #13
  %srq = getelementptr inbounds %struct.ocrdma_qp, ptr %ibqp, i32 0, i32 13
  %56 = ptrtoint ptr %srq to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %srq, align 4
  %tobool35.not = icmp eq ptr %57, null
  br i1 %tobool35.not, label %if.then36, label %ocrdma_del_mmap.exit.if.end45_crit_edge

ocrdma_del_mmap.exit.if.end45_crit_edge:          ; preds = %ocrdma_del_mmap.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end45

if.then36:                                        ; preds = %ocrdma_del_mmap.exit
  %58 = ptrtoint ptr %uctx to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %uctx, align 4
  %pa38 = getelementptr inbounds %struct.ocrdma_qp, ptr %ibqp, i32 0, i32 10, i32 9
  %60 = ptrtoint ptr %pa38 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %pa38, align 4
  %conv39 = zext i32 %61 to i64
  %len41 = getelementptr inbounds %struct.ocrdma_qp, ptr %ibqp, i32 0, i32 10, i32 8
  %62 = ptrtoint ptr %len41 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %len41, align 4
  %add42 = add i32 %63, 4095
  %and43 = and i32 %add42, -4096
  %mm_list_lock.i82 = getelementptr inbounds %struct.ocrdma_ucontext, ptr %59, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %mm_list_lock.i82, i32 noundef 0) #13
  %mm_head.i83 = getelementptr inbounds %struct.ocrdma_ucontext, ptr %59, i32 0, i32 1
  %64 = ptrtoint ptr %mm_head.i83 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %mm_head.i83, align 4
  br label %for.cond.i88

for.cond.i88:                                     ; preds = %land.lhs.true.i93.for.cond.i88_crit_edge, %if.then36
  %.pn.in.i84 = phi ptr [ %65, %if.then36 ], [ %.pn.i86, %land.lhs.true.i93.for.cond.i88_crit_edge ]
  %mm.0.i85 = getelementptr i8, ptr %.pn.in.i84, i32 -16
  %66 = ptrtoint ptr %.pn.in.i84 to i32
  call void @__asan_load4_noabort(i32 %66)
  %.pn.i86 = load ptr, ptr %.pn.in.i84, align 8
  %cmp.not.i87 = icmp eq ptr %.pn.in.i84, %mm_head.i83
  br i1 %cmp.not.i87, label %for.cond.i88.ocrdma_del_mmap.exit101_crit_edge, label %for.body.i91

for.cond.i88.ocrdma_del_mmap.exit101_crit_edge:   ; preds = %for.cond.i88
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocrdma_del_mmap.exit101

for.body.i91:                                     ; preds = %for.cond.i88
  %len9.i89 = getelementptr i8, ptr %.pn.in.i84, i32 -8
  %67 = ptrtoint ptr %len9.i89 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %len9.i89, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %and43)
  %cmp10.not.i90 = icmp eq i32 %68, %and43
  br i1 %cmp10.not.i90, label %for.body.i91.if.end.i95_crit_edge, label %land.lhs.true.i93

for.body.i91.if.end.i95_crit_edge:                ; preds = %for.body.i91
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i95

land.lhs.true.i93:                                ; preds = %for.body.i91
  %69 = ptrtoint ptr %mm.0.i85 to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %mm.0.i85, align 8
  %cmp13.not.i92 = icmp eq i64 %70, %conv39
  br i1 %cmp13.not.i92, label %land.lhs.true.i93.if.end.i95_crit_edge, label %land.lhs.true.i93.for.cond.i88_crit_edge

land.lhs.true.i93.for.cond.i88_crit_edge:         ; preds = %land.lhs.true.i93
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i88

land.lhs.true.i93.if.end.i95_crit_edge:           ; preds = %land.lhs.true.i93
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i95

if.end.i95:                                       ; preds = %land.lhs.true.i93.if.end.i95_crit_edge, %for.body.i91.if.end.i95_crit_edge
  %call.i.i.i94 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in.i84) #13
  br i1 %call.i.i.i94, label %if.end.i.i.i98, label %if.end.i95.list_del.exit.i100_crit_edge

if.end.i95.list_del.exit.i100_crit_edge:          ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit.i100

if.end.i.i.i98:                                   ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i96 = getelementptr inbounds %struct.list_head, ptr %.pn.in.i84, i32 0, i32 1
  %71 = ptrtoint ptr %prev.i.i.i96 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %prev.i.i.i96, align 4
  %73 = ptrtoint ptr %.pn.in.i84 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %.pn.in.i84, align 4
  %prev1.i.i.i.i97 = getelementptr inbounds %struct.list_head, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %prev1.i.i.i.i97 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %72, ptr %prev1.i.i.i.i97, align 4
  %76 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %74, ptr %72, align 4
  br label %list_del.exit.i100

list_del.exit.i100:                               ; preds = %if.end.i.i.i98, %if.end.i95.list_del.exit.i100_crit_edge
  %77 = ptrtoint ptr %.pn.in.i84 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in.i84, align 4
  %prev.i.i99 = getelementptr inbounds %struct.list_head, ptr %.pn.in.i84, i32 0, i32 1
  %78 = ptrtoint ptr %prev.i.i99 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i99, align 4
  call void @kfree(ptr noundef %mm.0.i85) #13
  br label %ocrdma_del_mmap.exit101

ocrdma_del_mmap.exit101:                          ; preds = %list_del.exit.i100, %for.cond.i88.ocrdma_del_mmap.exit101_crit_edge
  call void @mutex_unlock(ptr noundef %mm_list_lock.i82) #13
  br label %if.end45

if.end45:                                         ; preds = %ocrdma_del_mmap.exit101, %ocrdma_del_mmap.exit.if.end45_crit_edge, %if.end27.if.end45_crit_edge
  call void @ocrdma_del_flush_qp(ptr noundef %ibqp)
  %wqe_wr_id_tbl = getelementptr inbounds %struct.ocrdma_qp, ptr %ibqp, i32 0, i32 3
  %79 = ptrtoint ptr %wqe_wr_id_tbl to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %wqe_wr_id_tbl, align 8
  call void @kfree(ptr noundef %80) #13
  %rqe_wr_id_tbl = getelementptr inbounds %struct.ocrdma_qp, ptr %ibqp, i32 0, i32 11
  %81 = ptrtoint ptr %rqe_wr_id_tbl to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %rqe_wr_id_tbl, align 4
  call void @kfree(ptr noundef %82) #13
  call void @llvm.lifetime.end.p0(i64 216, ptr nonnull %attrs) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ocrdma_discard_cqes(ptr nocapture noundef %qp, ptr noundef %cq) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cq_lock = getelementptr inbounds %struct.ocrdma_cq, ptr %cq, i32 0, i32 7
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cq_lock) #13
  %getp = getelementptr inbounds %struct.ocrdma_cq, ptr %cq, i32 0, i32 3
  %0 = ptrtoint ptr %getp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %getp, align 8
  %tail.i = getelementptr inbounds %struct.ocrdma_qp, ptr %qp, i32 0, i32 2, i32 3
  %head.i = getelementptr inbounds %struct.ocrdma_qp, ptr %qp, i32 0, i32 2, i32 2
  %srq = getelementptr inbounds %struct.ocrdma_qp, ptr %qp, i32 0, i32 13
  %tail.i94 = getelementptr inbounds %struct.ocrdma_qp, ptr %qp, i32 0, i32 10, i32 3
  %head.i95 = getelementptr inbounds %struct.ocrdma_qp, ptr %qp, i32 0, i32 10, i32 2
  %va = getelementptr inbounds %struct.ocrdma_cq, ptr %cq, i32 0, i32 1
  %id = getelementptr inbounds %struct.ocrdma_qp, ptr %qp, i32 0, i32 19
  %max_wqe_idx.i105 = getelementptr inbounds %struct.ocrdma_qp, ptr %qp, i32 0, i32 10, i32 6
  %max_wqe_idx.i = getelementptr inbounds %struct.ocrdma_qp, ptr %qp, i32 0, i32 2, i32 6
  %max_hw_cqe = getelementptr inbounds %struct.ocrdma_cq, ptr %cq, i32 0, i32 4
  br label %do.body5

do.body5:                                         ; preds = %skip_cqe.do.body5_crit_edge, %entry
  %cur_getp.0 = phi i32 [ %1, %entry ], [ %rem, %skip_cqe.do.body5_crit_edge ]
  %2 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tail.i, align 4
  %4 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %head.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.i.not = icmp eq i32 %3, %5
  br i1 %cmp.i.not, label %land.lhs.true, label %do.body5.if.end_crit_edge

do.body5.if.end_crit_edge:                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %do.body5
  %6 = ptrtoint ptr %srq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %srq, align 4
  %tobool7.not = icmp eq ptr %7, null
  br i1 %tobool7.not, label %land.lhs.true8, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true8:                                   ; preds = %land.lhs.true
  %8 = ptrtoint ptr %tail.i94 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tail.i94, align 4
  %10 = ptrtoint ptr %head.i95 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %head.i95, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp.i96.not = icmp eq i32 %9, %11
  br i1 %cmp.i96.not, label %land.lhs.true8.do.end69_crit_edge, label %land.lhs.true8.if.end_crit_edge

land.lhs.true8.if.end_crit_edge:                  ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true8.do.end69_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end69

if.end:                                           ; preds = %land.lhs.true8.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %do.body5.if.end_crit_edge
  %12 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %va, align 16
  %qpn11 = getelementptr %struct.ocrdma_cqe, ptr %13, i32 %cur_getp.0, i32 0, i32 0, i32 2
  %14 = ptrtoint ptr %qpn11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %qpn11, align 4
  %and = and i32 %15, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp12 = icmp eq i32 %and, 0
  br i1 %cmp12, label %if.end.skip_cqe_crit_edge, label %lor.lhs.false

if.end.skip_cqe_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %skip_cqe

lor.lhs.false:                                    ; preds = %if.end
  %16 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %17)
  %cmp14.not = icmp eq i32 %and, %17
  br i1 %cmp14.not, label %if.end17, label %lor.lhs.false.skip_cqe_crit_edge

lor.lhs.false.skip_cqe_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %skip_cqe

if.end17:                                         ; preds = %lor.lhs.false
  %flags_status_srcqpn.i = getelementptr %struct.ocrdma_cqe, ptr %13, i32 %cur_getp.0, i32 1
  %18 = ptrtoint ptr %flags_status_srcqpn.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags_status_srcqpn.i, align 4
  %20 = and i32 %19, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool19.not.not = icmp eq i32 %20, 0
  br i1 %tobool19.not.not, label %if.then20, label %if.else

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  %21 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tail.i, align 4
  %add.i = add i32 %22, 1
  %23 = ptrtoint ptr %max_wqe_idx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %max_wqe_idx.i, align 4
  %and.i = and i32 %add.i, %24
  store i32 %and.i, ptr %tail.i, align 4
  br label %if.end63

if.else:                                          ; preds = %if.end17
  %25 = ptrtoint ptr %srq to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %srq, align 4
  %tobool22.not = icmp eq ptr %26, null
  br i1 %tobool22.not, label %if.else60, label %if.then23

if.then23:                                        ; preds = %if.else
  %27 = ptrtoint ptr %qpn11 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %qpn11, align 4
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  %shr = lshr i32 %29, 16
  %max_wqe_idx = getelementptr inbounds %struct.ocrdma_srq, ptr %26, i32 0, i32 2, i32 6
  %30 = ptrtoint ptr %max_wqe_idx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %max_wqe_idx, align 8
  %and25 = and i32 %shr, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %cmp27 = icmp eq i32 %and25, 0
  br i1 %cmp27, label %do.body32, label %do.body42, !prof !138

do.body32:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/infiniband/hw/ocrdma/ocrdma_verbs.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1631, 0\0A.popsection", ""() #13, !srcloc !144
  unreachable

do.body42:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #15
  %q_lock = getelementptr inbounds %struct.ocrdma_srq, ptr %26, i32 0, i32 7
  %call50 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %q_lock) #13
  %32 = ptrtoint ptr %srq to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %srq, align 4
  %tail.i99 = getelementptr inbounds %struct.ocrdma_srq, ptr %33, i32 0, i32 2, i32 3
  %34 = ptrtoint ptr %tail.i99 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tail.i99, align 4
  %add.i100 = add i32 %35, 1
  %max_wqe_idx.i101 = getelementptr inbounds %struct.ocrdma_srq, ptr %33, i32 0, i32 2, i32 6
  %36 = ptrtoint ptr %max_wqe_idx.i101 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %max_wqe_idx.i101, align 4
  %and.i102 = and i32 %add.i100, %37
  store i32 %and.i102, ptr %tail.i99, align 4
  %38 = load ptr, ptr %srq, align 4
  %sub = add nsw i32 %and25, -1
  %div2.i = lshr i32 %sub, 5
  %rem.i = and i32 %sub, 31
  %shl.i = shl nuw i32 1, %rem.i
  %idx_bit_fields.i = getelementptr inbounds %struct.ocrdma_srq, ptr %38, i32 0, i32 4
  %39 = ptrtoint ptr %idx_bit_fields.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %idx_bit_fields.i, align 4
  %arrayidx.i = getelementptr i32, ptr %40, i32 %div2.i
  %41 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.i, align 4
  %xor.i = xor i32 %42, %shl.i
  store i32 %xor.i, ptr %arrayidx.i, align 4
  %43 = load ptr, ptr %srq, align 4
  %q_lock59 = getelementptr inbounds %struct.ocrdma_srq, ptr %43, i32 0, i32 7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %q_lock59, i32 noundef %call50) #13
  br label %if.end63

if.else60:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %44 = ptrtoint ptr %tail.i94 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tail.i94, align 4
  %add.i104 = add i32 %45, 1
  %46 = ptrtoint ptr %max_wqe_idx.i105 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %max_wqe_idx.i105, align 4
  %and.i106 = and i32 %add.i104, %47
  store i32 %and.i106, ptr %tail.i94, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.else60, %do.body42, %if.then20
  %48 = ptrtoint ptr %qpn11 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %qpn11, align 4
  br label %skip_cqe

skip_cqe:                                         ; preds = %if.end63, %lor.lhs.false.skip_cqe_crit_edge, %if.end.skip_cqe_crit_edge
  %add65 = add i32 %cur_getp.0, 1
  %49 = ptrtoint ptr %max_hw_cqe to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %max_hw_cqe, align 4
  %rem = urem i32 %add65, %50
  %cmp67.not = icmp eq i32 %rem, %1
  br i1 %cmp67.not, label %skip_cqe.do.end69_crit_edge, label %skip_cqe.do.body5_crit_edge

skip_cqe.do.body5_crit_edge:                      ; preds = %skip_cqe
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body5

skip_cqe.do.end69_crit_edge:                      ; preds = %skip_cqe
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end69

do.end69:                                         ; preds = %skip_cqe.do.end69_crit_edge, %land.lhs.true8.do.end69_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cq_lock, i32 noundef %call2) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocrdma_create_srq(ptr noundef %ibsrq, ptr noundef %init_attr, ptr noundef readonly %udata) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %pd1 = getelementptr inbounds %struct.ib_srq, ptr %ibsrq, i32 0, i32 1
  %0 = ptrtoint ptr %pd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pd1, align 4
  %2 = ptrtoint ptr %ibsrq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ibsrq, align 4
  %srq_type = getelementptr inbounds %struct.ib_srq_init_attr, ptr %init_attr, i32 0, i32 3
  %4 = ptrtoint ptr %srq_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %srq_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %attr = getelementptr inbounds %struct.ib_srq_init_attr, ptr %init_attr, i32 0, i32 2
  %max_sge = getelementptr inbounds %struct.ib_srq_init_attr, ptr %init_attr, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %max_sge to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_sge, align 4
  %max_recv_sge = getelementptr inbounds %struct.ocrdma_dev, ptr %3, i32 0, i32 1, i32 13
  %8 = ptrtoint ptr %max_recv_sge to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_recv_sge, align 32
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp5 = icmp ugt i32 %7, %9
  br i1 %cmp5, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %10 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %attr, align 4
  %max_rqe = getelementptr inbounds %struct.ocrdma_dev, ptr %3, i32 0, i32 1, i32 9
  %12 = ptrtoint ptr %max_rqe to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %max_rqe, align 4
  %conv = zext i16 %13 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %conv)
  %cmp10 = icmp ugt i32 %11, %conv
  br i1 %cmp10, label %if.end7.cleanup_crit_edge, label %do.body

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body:                                          ; preds = %if.end7
  %q_lock = getelementptr inbounds %struct.ocrdma_srq, ptr %ibsrq, i32 0, i32 7
  tail call void @__raw_spin_lock_init(ptr noundef %q_lock, ptr noundef nonnull @.str.13, ptr noundef nonnull @ocrdma_create_srq.__key, i16 noundef signext 3) #13
  %pd15 = getelementptr inbounds %struct.ocrdma_srq, ptr %ibsrq, i32 0, i32 8
  %14 = ptrtoint ptr %pd15 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %1, ptr %pd15, align 4
  %nic_info = getelementptr inbounds %struct.ocrdma_dev, ptr %3, i32 0, i32 20
  %15 = ptrtoint ptr %nic_info to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %nic_info, align 8
  %id = getelementptr inbounds %struct.ocrdma_pd, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %id, align 4
  %db_page_size = getelementptr inbounds %struct.ocrdma_dev, ptr %3, i32 0, i32 20, i32 2
  %19 = ptrtoint ptr %db_page_size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %db_page_size, align 8
  %mul = mul i32 %20, %18
  %add.ptr = getelementptr i8, ptr %16, i32 %mul
  %db17 = getelementptr inbounds %struct.ocrdma_srq, ptr %ibsrq, i32 0, i32 1
  %21 = ptrtoint ptr %db17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr, ptr %db17, align 4
  %call18 = tail call i32 @ocrdma_mbx_create_srq(ptr noundef %3, ptr noundef %ibsrq, ptr noundef %init_attr, ptr noundef %1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool.not = icmp eq i32 %call18, 0
  br i1 %tobool.not, label %if.end20, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end20:                                         ; preds = %do.body
  %tobool21.not = icmp eq ptr %udata, null
  br i1 %tobool21.not, label %if.then22, label %if.end20.if.end42_crit_edge

if.end20.if.end42_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end42

if.then22:                                        ; preds = %if.end20
  %max_cnt = getelementptr inbounds %struct.ocrdma_srq, ptr %ibsrq, i32 0, i32 2, i32 5
  %22 = ptrtoint ptr %max_cnt to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %max_cnt, align 4
  %24 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %23, i32 8) #13
  %25 = extractvalue { i32, i1 } %24, 1
  br i1 %25, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !138

kcalloc.exit.thread:                              ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #15
  %rqe_wr_id_tbl110 = getelementptr inbounds %struct.ocrdma_srq, ptr %ibsrq, i32 0, i32 3
  %26 = ptrtoint ptr %rqe_wr_id_tbl110 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %rqe_wr_id_tbl110, align 8
  br label %arm_err

if.end7.i.i:                                      ; preds = %if.then22
  %27 = extractvalue { i32, i1 } %24, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %27, i32 noundef 3520) #17
  %rqe_wr_id_tbl = getelementptr inbounds %struct.ocrdma_srq, ptr %ibsrq, i32 0, i32 3
  %28 = ptrtoint ptr %rqe_wr_id_tbl to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call8.i.i, ptr %rqe_wr_id_tbl, align 8
  %tobool25.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool25.not, label %if.end7.i.i.arm_err_crit_edge, label %if.end27

if.end7.i.i.arm_err_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %arm_err

if.end27:                                         ; preds = %if.end7.i.i
  %29 = ptrtoint ptr %max_cnt to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %max_cnt, align 4
  %div104 = lshr i32 %30, 5
  %rem = and i32 %30, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool32.not = icmp ne i32 %rem, 0
  %cond = zext i1 %tobool32.not to i32
  %add = add nuw nsw i32 %div104, %cond
  %bit_fields_len = getelementptr inbounds %struct.ocrdma_srq, ptr %ibsrq, i32 0, i32 5
  %31 = ptrtoint ptr %bit_fields_len to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %add, ptr %bit_fields_len, align 16
  %32 = shl nuw nsw i32 %add, 2
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %32, i32 noundef 3264) #17
  %idx_bit_fields = getelementptr inbounds %struct.ocrdma_srq, ptr %ibsrq, i32 0, i32 4
  %33 = ptrtoint ptr %idx_bit_fields to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call8.i, ptr %idx_bit_fields, align 4
  %tobool36.not = icmp eq ptr %call8.i, null
  br i1 %tobool36.not, label %if.end27.arm_err_crit_edge, label %if.end38

if.end27.arm_err_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %arm_err

if.end38:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  %34 = ptrtoint ptr %bit_fields_len to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %bit_fields_len, align 16
  %mul41 = shl i32 %35, 2
  %36 = call ptr @memset(ptr %call8.i, i32 255, i32 %mul41)
  br label %if.end42

if.end42:                                         ; preds = %if.end38, %if.end20.if.end42_crit_edge
  %srq_limit = getelementptr inbounds %struct.ib_srq_init_attr, ptr %init_attr, i32 0, i32 2, i32 2
  %37 = ptrtoint ptr %srq_limit to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %srq_limit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool44.not = icmp eq i32 %38, 0
  br i1 %tobool44.not, label %if.end42.if.end51_crit_edge, label %if.then45

if.end42.if.end51_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end51

if.then45:                                        ; preds = %if.end42
  %call47 = tail call i32 @ocrdma_mbx_modify_srq(ptr noundef %ibsrq, ptr noundef %attr) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.then45.if.end51_crit_edge, label %if.then45.arm_err_crit_edge

if.then45.arm_err_crit_edge:                      ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #15
  br label %arm_err

if.then45.if.end51_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end51

if.end51:                                         ; preds = %if.then45.if.end51_crit_edge, %if.end42.if.end51_crit_edge
  br i1 %tobool21.not, label %if.end51.cleanup_crit_edge, label %if.then53

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then53:                                        ; preds = %if.end51
  %call54 = tail call fastcc i32 @ocrdma_copy_srq_uresp(ptr noundef %3, ptr noundef %ibsrq, ptr noundef nonnull %udata)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.then53.cleanup_crit_edge, label %if.then53.arm_err_crit_edge

if.then53.arm_err_crit_edge:                      ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #15
  br label %arm_err

if.then53.cleanup_crit_edge:                      ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

arm_err:                                          ; preds = %if.then53.arm_err_crit_edge, %if.then45.arm_err_crit_edge, %if.end27.arm_err_crit_edge, %if.end7.i.i.arm_err_crit_edge, %kcalloc.exit.thread
  %status.0 = phi i32 [ %call47, %if.then45.arm_err_crit_edge ], [ %call54, %if.then53.arm_err_crit_edge ], [ -12, %if.end7.i.i.arm_err_crit_edge ], [ -12, %if.end27.arm_err_crit_edge ], [ -12, %kcalloc.exit.thread ]
  tail call void @ocrdma_mbx_destroy_srq(ptr noundef %3, ptr noundef %ibsrq) #13
  %rqe_wr_id_tbl59 = getelementptr inbounds %struct.ocrdma_srq, ptr %ibsrq, i32 0, i32 3
  %39 = ptrtoint ptr %rqe_wr_id_tbl59 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rqe_wr_id_tbl59, align 8
  tail call void @kfree(ptr noundef %40) #13
  %idx_bit_fields60 = getelementptr inbounds %struct.ocrdma_srq, ptr %ibsrq, i32 0, i32 4
  %41 = ptrtoint ptr %idx_bit_fields60 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %idx_bit_fields60, align 4
  tail call void @kfree(ptr noundef %42) #13
  br label %cleanup

cleanup:                                          ; preds = %arm_err, %if.then53.cleanup_crit_edge, %if.end51.cleanup_crit_edge, %do.body.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.0, %arm_err ], [ -95, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ], [ %call18, %do.body.cleanup_crit_edge ], [ 0, %if.then53.cleanup_crit_edge ], [ 0, %if.end51.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocrdma_mbx_create_srq(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocrdma_mbx_modify_srq(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ocrdma_copy_srq_uresp(ptr noundef %dev, ptr nocapture noundef readonly %srq, ptr nocapture noundef readonly %udata) unnamed_addr #3 align 64 {
entry:
  %uresp = alloca %struct.ocrdma_create_srq_uresp, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %uresp) #13
  %0 = call ptr @memset(ptr %uresp, i32 0, i32 120)
  %rq = getelementptr inbounds %struct.ocrdma_srq, ptr %srq, i32 0, i32 2
  %dbid = getelementptr inbounds %struct.ocrdma_srq, ptr %srq, i32 0, i32 2, i32 7
  %1 = ptrtoint ptr %dbid to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %dbid, align 4
  %3 = ptrtoint ptr %uresp to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %2, ptr %uresp, align 8
  %num_rq_pages = getelementptr inbounds %struct.ocrdma_create_srq_uresp, ptr %uresp, i32 0, i32 4
  %4 = ptrtoint ptr %num_rq_pages to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %num_rq_pages, align 4
  %5 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rq, align 128
  %7 = ptrtoint ptr %6 to i32
  %call.i = tail call i32 @__virt_to_phys(i32 noundef %7) #13
  %conv = zext i32 %call.i to i64
  %rq_page_addr = getelementptr inbounds %struct.ocrdma_create_srq_uresp, ptr %uresp, i32 0, i32 5
  %8 = ptrtoint ptr %rq_page_addr to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %conv, ptr %rq_page_addr, align 8
  %len = getelementptr inbounds %struct.ocrdma_srq, ptr %srq, i32 0, i32 2, i32 8
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len, align 32
  %rq_page_size = getelementptr inbounds %struct.ocrdma_create_srq_uresp, ptr %uresp, i32 0, i32 3
  %11 = ptrtoint ptr %rq_page_size to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %rq_page_size, align 8
  %unmapped_db = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 20, i32 1
  %12 = ptrtoint ptr %unmapped_db to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %unmapped_db, align 8
  %pd = getelementptr inbounds %struct.ocrdma_srq, ptr %srq, i32 0, i32 8
  %14 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pd, align 4
  %id = getelementptr inbounds %struct.ocrdma_pd, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %id, align 4
  %db_page_size = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 20, i32 2
  %18 = ptrtoint ptr %db_page_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %db_page_size, align 8
  %mul = mul i32 %19, %17
  %conv4 = zext i32 %mul to i64
  %add = add i64 %13, %conv4
  %db_page_addr = getelementptr inbounds %struct.ocrdma_create_srq_uresp, ptr %uresp, i32 0, i32 6
  %20 = ptrtoint ptr %db_page_addr to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %add, ptr %db_page_addr, align 8
  %db_page_size7 = getelementptr inbounds %struct.ocrdma_create_srq_uresp, ptr %uresp, i32 0, i32 7
  %21 = ptrtoint ptr %db_page_size7 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %19, ptr %db_page_size7, align 8
  %max_cnt = getelementptr inbounds %struct.ocrdma_srq, ptr %srq, i32 0, i32 2, i32 5
  %22 = ptrtoint ptr %max_cnt to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %max_cnt, align 4
  %num_rqe_allocated = getelementptr inbounds %struct.ocrdma_create_srq_uresp, ptr %uresp, i32 0, i32 8
  %24 = ptrtoint ptr %num_rqe_allocated to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %num_rqe_allocated, align 4
  %dev_family.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 20, i32 9
  %25 = ptrtoint ptr %dev_family.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dev_family.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %26)
  %cmp.i = icmp eq i32 %26, 15
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.ocrdma_get_asic_type.exit_crit_edge

entry.ocrdma_get_asic_type.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocrdma_get_asic_type.exit

land.lhs.true.i:                                  ; preds = %entry
  %asic_id.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 31
  %27 = ptrtoint ptr %asic_id.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %asic_id.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i, label %if.then.i, label %land.lhs.true.i.ocrdma_get_asic_type.exit_crit_edge

land.lhs.true.i.ocrdma_get_asic_type.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocrdma_get_asic_type.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %pdev.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 20, i32 6
  %29 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pdev.i, align 4
  %call.i38 = tail call i32 @pci_read_config_dword(ptr noundef %30, i32 noundef 156, ptr noundef %asic_id.i) #13
  br label %ocrdma_get_asic_type.exit

ocrdma_get_asic_type.exit:                        ; preds = %if.then.i, %land.lhs.true.i.ocrdma_get_asic_type.exit_crit_edge, %entry.ocrdma_get_asic_type.exit_crit_edge
  %asic_id3.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 31
  %31 = ptrtoint ptr %asic_id3.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %asic_id3.i, align 8
  %and.i = lshr i32 %32, 8
  %conv.i = trunc i32 %and.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %conv.i)
  %cmp = icmp eq i8 %conv.i, 4
  %spec.select = select i1 %cmp, i32 256, i32 224
  %spec.select47 = select i1 %cmp, i32 24, i32 16
  %33 = getelementptr inbounds %struct.ocrdma_create_srq_uresp, ptr %uresp, i32 0, i32 9
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %spec.select, ptr %33, align 8
  %35 = getelementptr inbounds %struct.ocrdma_create_srq_uresp, ptr %uresp, i32 0, i32 10
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %spec.select47, ptr %35, align 4
  %outbuf.i = getelementptr inbounds %struct.ib_udata, ptr %udata, i32 0, i32 1
  %37 = ptrtoint ptr %outbuf.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %outbuf.i, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.16, i32 noundef 174) #13
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i.i, label %ocrdma_get_asic_type.exit.cleanup_crit_edge, label %if.end.i.i.i

ocrdma_get_asic_type.exit.cleanup_crit_edge:      ; preds = %ocrdma_get_asic_type.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i.i.i:                                     ; preds = %ocrdma_get_asic_type.exit
  %39 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %38, i32 120, i32 -1226833920) #18, !srcloc !136
  %asmresult.i.i.i = extractvalue { i32, i32 } %39, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %copy_to_user.exit.i, label %if.end.i.i.i.cleanup_crit_edge

if.end.i.i.i.cleanup_crit_edge:                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

copy_to_user.exit.i:                              ; preds = %if.end.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %uresp, i32 noundef 120) #13
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %38, ptr noundef nonnull %uresp, i32 noundef 120) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i)
  %tobool.not.i39 = icmp eq i32 %call.i12.i.i.i, 0
  br i1 %tobool.not.i39, label %if.end16, label %copy_to_user.exit.i.cleanup_crit_edge

copy_to_user.exit.i.cleanup_crit_edge:            ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end16:                                         ; preds = %copy_to_user.exit.i
  %40 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pd, align 4
  %uctx = getelementptr inbounds %struct.ocrdma_pd, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %uctx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %uctx, align 4
  %44 = ptrtoint ptr %rq_page_addr to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %rq_page_addr, align 8
  %46 = ptrtoint ptr %rq_page_size to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rq_page_size, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %48 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %48, i32 noundef 3520, i32 noundef 24) #16
  %cmp.i40 = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp.i40, label %if.end16.cleanup_crit_edge, label %if.end.i

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i:                                         ; preds = %if.end16
  %49 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %45, ptr %call7.i.i.i, align 8
  %len3.i = getelementptr inbounds %struct.anon.201, ptr %call7.i.i.i, i32 0, i32 1
  %50 = ptrtoint ptr %len3.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %47, ptr %len3.i, align 8
  %entry4.i = getelementptr inbounds %struct.ocrdma_mm, ptr %call7.i.i.i, i32 0, i32 1
  %51 = ptrtoint ptr %entry4.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %entry4.i, ptr %entry4.i, align 8
  %prev.i.i = getelementptr inbounds %struct.ocrdma_mm, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %52 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %entry4.i, ptr %prev.i.i, align 4
  %mm_list_lock.i = getelementptr inbounds %struct.ocrdma_ucontext, ptr %43, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %mm_list_lock.i, i32 noundef 0) #13
  %mm_head.i = getelementptr inbounds %struct.ocrdma_ucontext, ptr %43, i32 0, i32 1
  %prev.i13.i = getelementptr inbounds %struct.ocrdma_ucontext, ptr %43, i32 0, i32 1, i32 1
  %53 = ptrtoint ptr %prev.i13.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %prev.i13.i, align 4
  %call.i.i.i41 = call zeroext i1 @__list_add_valid(ptr noundef %entry4.i, ptr noundef %54, ptr noundef %mm_head.i) #13
  br i1 %call.i.i.i41, label %if.end.i.i.i42, label %if.end.i.list_add_tail.exit.i_crit_edge

if.end.i.list_add_tail.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit.i

if.end.i.i.i42:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %55 = ptrtoint ptr %prev.i13.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %entry4.i, ptr %prev.i13.i, align 4
  %56 = ptrtoint ptr %entry4.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %mm_head.i, ptr %entry4.i, align 8
  %57 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %54, ptr %prev.i.i, align 4
  %58 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %entry4.i, ptr %54, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i42, %if.end.i.list_add_tail.exit.i_crit_edge
  call void @mutex_unlock(ptr noundef %mm_list_lock.i) #13
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit.i, %if.end16.cleanup_crit_edge, %copy_to_user.exit.i.cleanup_crit_edge, %if.end.i.i.i.cleanup_crit_edge, %ocrdma_get_asic_type.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -14, %copy_to_user.exit.i.cleanup_crit_edge ], [ -14, %ocrdma_get_asic_type.exit.cleanup_crit_edge ], [ -14, %if.end.i.i.i.cleanup_crit_edge ], [ 0, %list_add_tail.exit.i ], [ -12, %if.end16.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %uresp) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocrdma_mbx_destroy_srq(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocrdma_modify_srq(ptr noundef %ibsrq, ptr noundef %srq_attr, i32 noundef %srq_attr_mask, ptr nocapture noundef readnone %udata) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %srq_attr_mask, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call1 = tail call i32 @ocrdma_mbx_modify_srq(ptr noundef %ibsrq, ptr noundef %srq_attr) #13
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %status.0 = phi i32 [ %call1, %if.else ], [ -22, %entry.if.end_crit_edge ]
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocrdma_query_srq(ptr noundef %ibsrq, ptr noundef %srq_attr) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call i32 @ocrdma_mbx_query_srq(ptr noundef %ibsrq, ptr noundef %srq_attr) #13
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocrdma_mbx_query_srq(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocrdma_destroy_srq(ptr noundef %ibsrq, ptr nocapture noundef readnone %udata) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ibsrq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ibsrq, align 4
  tail call void @ocrdma_mbx_destroy_srq(ptr noundef %1, ptr noundef %ibsrq) #13
  %pd = getelementptr inbounds %struct.ocrdma_srq, ptr %ibsrq, i32 0, i32 8
  %2 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pd, align 4
  %uctx = getelementptr inbounds %struct.ocrdma_pd, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %uctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %uctx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  %pa = getelementptr inbounds %struct.ocrdma_srq, ptr %ibsrq, i32 0, i32 2, i32 9
  %6 = ptrtoint ptr %pa to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pa, align 4
  %conv = zext i32 %7 to i64
  %len = getelementptr inbounds %struct.ocrdma_srq, ptr %ibsrq, i32 0, i32 2, i32 8
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len, align 32
  %add = add i32 %9, 4095
  %and = and i32 %add, -4096
  %mm_list_lock.i = getelementptr inbounds %struct.ocrdma_ucontext, ptr %5, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mm_list_lock.i, i32 noundef 0) #13
  %mm_head.i = getelementptr inbounds %struct.ocrdma_ucontext, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %mm_head.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mm_head.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %land.lhs.true.i.for.cond.i_crit_edge, %if.then
  %.pn.in.i = phi ptr [ %11, %if.then ], [ %.pn.i, %land.lhs.true.i.for.cond.i_crit_edge ]
  %mm.0.i = getelementptr i8, ptr %.pn.in.i, i32 -16
  %12 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn.i = load ptr, ptr %.pn.in.i, align 8
  %cmp.not.i = icmp eq ptr %.pn.in.i, %mm_head.i
  br i1 %cmp.not.i, label %for.cond.i.ocrdma_del_mmap.exit_crit_edge, label %for.body.i

for.cond.i.ocrdma_del_mmap.exit_crit_edge:        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocrdma_del_mmap.exit

for.body.i:                                       ; preds = %for.cond.i
  %len9.i = getelementptr i8, ptr %.pn.in.i, i32 -8
  %13 = ptrtoint ptr %len9.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len9.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %and)
  %cmp10.not.i = icmp eq i32 %14, %and
  br i1 %cmp10.not.i, label %for.body.i.if.end.i_crit_edge, label %land.lhs.true.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %15 = ptrtoint ptr %mm.0.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %mm.0.i, align 8
  %cmp13.not.i = icmp eq i64 %16, %conv
  br i1 %cmp13.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.for.cond.i_crit_edge

land.lhs.true.i.for.cond.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %for.body.i.if.end.i_crit_edge
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in.i) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_del.exit.i_crit_edge

if.end.i.list_del.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in.i, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i.i, align 4
  %19 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %.pn.in.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end.i.list_del.exit.i_crit_edge
  %23 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in.i, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %mm.0.i) #13
  br label %ocrdma_del_mmap.exit

ocrdma_del_mmap.exit:                             ; preds = %list_del.exit.i, %for.cond.i.ocrdma_del_mmap.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mm_list_lock.i) #13
  br label %if.end

if.end:                                           ; preds = %ocrdma_del_mmap.exit, %entry.if.end_crit_edge
  %idx_bit_fields = getelementptr inbounds %struct.ocrdma_srq, ptr %ibsrq, i32 0, i32 4
  %25 = ptrtoint ptr %idx_bit_fields to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %idx_bit_fields, align 4
  tail call void @kfree(ptr noundef %26) #13
  %rqe_wr_id_tbl = getelementptr inbounds %struct.ocrdma_srq, ptr %ibsrq, i32 0, i32 3
  %27 = ptrtoint ptr %rqe_wr_id_tbl to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rqe_wr_id_tbl, align 8
  tail call void @kfree(ptr noundef %28) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocrdma_post_send(ptr noundef %ibqp, ptr noundef %wr, ptr nocapture noundef writeonly %bad_wr) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %q_lock = getelementptr inbounds %struct.ocrdma_qp, ptr %ibqp, i32 0, i32 6
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %q_lock) #13
  %state = getelementptr inbounds %struct.ocrdma_qp, ptr %ibqp, i32 0, i32 15
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %1, label %if.then [
    i32 3, label %entry.if.end_crit_edge
    i32 7, label %entry.if.end_crit_edge277
  ]

entry.if.end_crit_edge277:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %q_lock, i32 noundef %call3) #13
  %3 = ptrtoint ptr %bad_wr to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %wr, ptr %bad_wr, align 4
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge277
  %tobool.not263 = icmp eq ptr %wr, null
  br i1 %tobool.not263, label %if.end.while.end_crit_edge, label %while.body.lr.ph

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end
  %qp_type = getelementptr inbounds %struct.ocrdma_qp, ptr %ibqp, i32 0, i32 21
  %sq = getelementptr inbounds %struct.ocrdma_qp, ptr %ibqp, i32 0, i32 2
  %max_wqe_idx.i = getelementptr inbounds %struct.ocrdma_qp, ptr %ibqp, i32 0, i32 2, i32 6
  %head.i = getelementptr inbounds %struct.ocrdma_qp, ptr %ibqp, i32 0, i32 2, i32 2
  %tail.i = getelementptr inbounds %struct.ocrdma_qp, ptr %ibqp, i32 0, i32 2, i32 3
  %max_cnt.i = getelementptr inbounds %struct.ocrdma_qp, ptr %ibqp, i32 0, i32 2, i32 5
  %max_sges = getelementptr inbounds %struct.ocrdma_qp, ptr %ibqp, i32 0, i32 2, i32 1
  %entry_size.i = getelementptr inbounds %struct.ocrdma_qp, ptr %ibqp, i32 0, i32 2, i32 4
  %signaled = getelementptr inbounds %struct.ocrdma_qp, ptr %ibqp, i32 0, i32 26
  %qkey.i.i200 = getelementptr inbounds %struct.ocrdma_qp, ptr %ibqp, i32 0, i32 23
  %wqe_wr_id_tbl = getelementptr inbounds %struct.ocrdma_qp, ptr %ibqp, i32 0, i32 3
  %dbid.i = getelementptr inbounds %struct.ocrdma_qp, ptr %ibqp, i32 0, i32 2, i32 7
  %sq_db.i = getelementptr inbounds %struct.ocrdma_qp, ptr %ibqp, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %ocrdma_cpu_to_le32.exit.while.body_crit_edge, %while.body.lr.ph
  %wr.addr.0264 = phi ptr [ %wr, %while.body.lr.ph ], [ %257, %ocrdma_cpu_to_le32.exit.while.body_crit_edge ]
  %4 = ptrtoint ptr %qp_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %qp_type, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp12 = icmp eq i32 %5, 4
  br i1 %cmp12, label %land.lhs.true14, label %while.body.if.end22_crit_edge

while.body.if.end22_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

land.lhs.true14:                                  ; preds = %while.body
  %opcode = getelementptr inbounds %struct.ib_send_wr, ptr %wr.addr.0264, i32 0, i32 4
  %6 = ptrtoint ptr %opcode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %opcode, align 8
  %8 = and i32 %7, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %switch = icmp eq i32 %8, 2
  br i1 %switch, label %land.lhs.true14.if.end22_crit_edge, label %land.lhs.true14.while.end.sink.split_crit_edge

land.lhs.true14.while.end.sink.split_crit_edge:   ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.sink.split

land.lhs.true14.if.end22_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

if.end22:                                         ; preds = %land.lhs.true14.if.end22_crit_edge, %while.body.if.end22_crit_edge
  %9 = ptrtoint ptr %max_wqe_idx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_wqe_idx.i, align 4
  %11 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %head.i, align 4
  %sub.i = sub i32 %10, %12
  %13 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tail.i, align 4
  %add.i = add i32 %sub.i, %14
  %15 = ptrtoint ptr %max_cnt.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %max_cnt.i, align 4
  %rem.i = urem i32 %add.i, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp24 = icmp eq i32 %rem.i, 0
  br i1 %cmp24, label %if.end22.while.end.sink.split_crit_edge, label %lor.lhs.false

if.end22.while.end.sink.split_crit_edge:          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.sink.split

lor.lhs.false:                                    ; preds = %if.end22
  %num_sge = getelementptr inbounds %struct.ib_send_wr, ptr %wr.addr.0264, i32 0, i32 3
  %17 = ptrtoint ptr %num_sge to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_sge, align 4
  %19 = ptrtoint ptr %max_sges to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %max_sges, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp27 = icmp ugt i32 %18, %20
  br i1 %cmp27, label %lor.lhs.false.while.end.sink.split_crit_edge, label %if.end30

lor.lhs.false.while.end.sink.split_crit_edge:     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.sink.split

if.end30:                                         ; preds = %lor.lhs.false
  %21 = ptrtoint ptr %sq to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sq, align 4
  %23 = ptrtoint ptr %entry_size.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %entry_size.i, align 4
  %mul.i = mul i32 %24, %12
  %add.ptr.i = getelementptr i8, ptr %22, i32 %mul.i
  %25 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %add.ptr.i, align 4
  %send_flags = getelementptr inbounds %struct.ib_send_wr, ptr %wr.addr.0264, i32 0, i32 5
  %26 = ptrtoint ptr %send_flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %send_flags, align 4
  %and = and i32 %27, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool33.not = icmp eq i32 %and, 0
  br i1 %tobool33.not, label %lor.lhs.false34, label %if.end30.if.then37_crit_edge

if.end30.if.then37_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then37

lor.lhs.false34:                                  ; preds = %if.end30
  %28 = ptrtoint ptr %signaled to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %signaled, align 4, !range !137
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool35.not = icmp eq i8 %29, 0
  br i1 %tobool35.not, label %lor.lhs.false34.if.end39_crit_edge, label %lor.lhs.false34.if.then37_crit_edge

lor.lhs.false34.if.then37_crit_edge:              ; preds = %lor.lhs.false34
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then37

lor.lhs.false34.if.end39_crit_edge:               ; preds = %lor.lhs.false34
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39

if.then37:                                        ; preds = %lor.lhs.false34.if.then37_crit_edge, %if.end30.if.then37_crit_edge
  %30 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 32, ptr %add.ptr.i, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %lor.lhs.false34.if.end39_crit_edge
  %31 = ptrtoint ptr %send_flags to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %send_flags, align 4
  %and41 = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.end39.if.end46_crit_edge, label %if.then43

if.end39.if.end46_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end46

if.then43:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #15
  %33 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %add.ptr.i, align 4
  %or45 = or i32 %34, 128
  store i32 %or45, ptr %add.ptr.i, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then43, %if.end39.if.end46_crit_edge
  %35 = ptrtoint ptr %send_flags to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %send_flags, align 4
  %and48 = and i32 %36, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.end46.if.end53_crit_edge, label %if.then50

if.end46.if.end53_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end53

if.then50:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #15
  %37 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %add.ptr.i, align 4
  %or52 = or i32 %38, 512
  store i32 %or52, ptr %add.ptr.i, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.then50, %if.end46.if.end53_crit_edge
  %total_len = getelementptr inbounds %struct.ocrdma_hdr_wqe, ptr %add.ptr.i, i32 0, i32 3
  %39 = ptrtoint ptr %total_len to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %total_len, align 4
  %opcode54 = getelementptr inbounds %struct.ib_send_wr, ptr %wr.addr.0264, i32 0, i32 4
  %40 = ptrtoint ptr %opcode54 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %opcode54, align 8
  %42 = zext i32 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %41, label %if.end53.while.end.sink.split_crit_edge [
    i32 3, label %sw.bb
    i32 2, label %if.end53.sw.bb57_crit_edge
    i32 9, label %sw.bb61
    i32 1, label %sw.bb68
    i32 0, label %if.end53.sw.bb72_crit_edge
    i32 4, label %sw.bb76
    i32 7, label %sw.bb77
    i32 32, label %sw.bb83
  ]

if.end53.sw.bb72_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb72

if.end53.sw.bb57_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb57

if.end53.while.end.sink.split_crit_edge:          ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.sink.split

sw.bb:                                            ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #15
  %43 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %add.ptr.i, align 4
  %or56 = or i32 %44, 1024
  store i32 %or56, ptr %add.ptr.i, align 4
  %ex = getelementptr inbounds %struct.ib_send_wr, ptr %wr.addr.0264, i32 0, i32 6
  %45 = ptrtoint ptr %ex to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %ex, align 8
  %47 = getelementptr inbounds %struct.ocrdma_hdr_wqe, ptr %add.ptr.i, i32 0, i32 2
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %46, ptr %47, align 4
  br label %sw.bb57

sw.bb57:                                          ; preds = %sw.bb, %if.end53.sw.bb57_crit_edge
  %49 = ptrtoint ptr %qp_type to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %qp_type, align 16
  %51 = zext i32 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %50, label %sw.bb57.ocrdma_build_send.exit_crit_edge [
    i32 4, label %sw.bb57.if.then.i_crit_edge
    i32 1, label %sw.bb57.if.then.i_crit_edge278
  ]

sw.bb57.if.then.i_crit_edge278:                   ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

sw.bb57.if.then.i_crit_edge:                      ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

sw.bb57.ocrdma_build_send.exit_crit_edge:         ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocrdma_build_send.exit

if.then.i:                                        ; preds = %sw.bb57.if.then.i_crit_edge, %sw.bb57.if.then.i_crit_edge278
  %add.ptr.i.i = getelementptr %struct.ocrdma_hdr_wqe, ptr %add.ptr.i, i32 1
  %ah1.i.i = getelementptr inbounds %struct.ib_ud_wr, ptr %wr.addr.0264, i32 0, i32 1
  %52 = ptrtoint ptr %ah1.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ah1.i.i, align 8
  %remote_qpn.i.i = getelementptr inbounds %struct.ib_ud_wr, ptr %wr.addr.0264, i32 0, i32 5
  %54 = ptrtoint ptr %remote_qpn.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %remote_qpn.i.i, align 8
  %56 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %add.ptr.i.i, align 4
  %57 = ptrtoint ptr %qp_type to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %qp_type, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %58)
  %cmp.i.i = icmp eq i32 %58, 1
  %remote_qkey.i.i = getelementptr inbounds %struct.ib_ud_wr, ptr %wr.addr.0264, i32 0, i32 6
  %.sink.in.i.i = select i1 %cmp.i.i, ptr %qkey.i.i200, ptr %remote_qkey.i.i
  %59 = ptrtoint ptr %.sink.in.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %.sink.i.i = load i32, ptr %.sink.in.i.i, align 4
  %60 = getelementptr %struct.ocrdma_hdr_wqe, ptr %add.ptr.i, i32 1, i32 1
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %.sink.i.i, ptr %60, align 4
  %id.i.i = getelementptr inbounds %struct.ocrdma_ah, ptr %53, i32 0, i32 3
  %62 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %id.i.i, align 4
  %rsvd_ahid.i.i = getelementptr %struct.ocrdma_hdr_wqe, ptr %add.ptr.i, i32 1, i32 2
  %64 = ptrtoint ptr %rsvd_ahid.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %rsvd_ahid.i.i, align 4
  %hdr_type.i.i = getelementptr inbounds %struct.ocrdma_ah, ptr %53, i32 0, i32 4
  %65 = ptrtoint ptr %hdr_type.i.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %hdr_type.i.i, align 4
  %conv.i.i = zext i8 %66 to i32
  %hdr_type7.i.i = getelementptr %struct.ocrdma_hdr_wqe, ptr %add.ptr.i, i32 1, i32 3
  %67 = ptrtoint ptr %hdr_type7.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %conv.i.i, ptr %hdr_type7.i.i, align 4
  %av.i.i = getelementptr inbounds %struct.ocrdma_ah, ptr %53, i32 0, i32 1
  %68 = ptrtoint ptr %av.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %av.i.i, align 4
  %valid.i.i = getelementptr inbounds %struct.ocrdma_av, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %valid.i.i to i32
  call void @__asan_loadN_noabort(i32 %70, i32 4)
  %71 = load i32, ptr %valid.i.i, align 1
  %and.i.i = and i32 %71, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.ocrdma_build_send.exit_crit_edge, label %if.then8.i.i

if.then.i.ocrdma_build_send.exit_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocrdma_build_send.exit

if.then8.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %72 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %add.ptr.i, align 4
  %or.i.i = or i32 %73, 2048
  store i32 %or.i.i, ptr %add.ptr.i, align 4
  br label %ocrdma_build_send.exit

ocrdma_build_send.exit:                           ; preds = %if.then8.i.i, %if.then.i.ocrdma_build_send.exit_crit_edge, %sw.bb57.ocrdma_build_send.exit_crit_edge
  %.sink.i = phi i32 [ 2, %if.then.i.ocrdma_build_send.exit_crit_edge ], [ 2, %if.then8.i.i ], [ 1, %sw.bb57.ocrdma_build_send.exit_crit_edge ]
  %wqe_size.0.i = phi i32 [ 32, %if.then.i.ocrdma_build_send.exit_crit_edge ], [ 32, %if.then8.i.i ], [ 16, %sw.bb57.ocrdma_build_send.exit_crit_edge ]
  %add.ptr3.i = getelementptr %struct.ocrdma_hdr_wqe, ptr %add.ptr.i, i32 %.sink.i
  %call.i = tail call fastcc i32 @ocrdma_build_inline_sges(ptr noundef %ibqp, ptr noundef %add.ptr.i, ptr noundef %add.ptr3.i, ptr noundef nonnull %wr.addr.0264, i32 noundef %wqe_size.0.i) #13
  br label %if.end88

sw.bb61:                                          ; preds = %if.end53
  %74 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %add.ptr.i, align 4
  %or63 = or i32 %75, 64
  store i32 %or63, ptr %add.ptr.i, align 4
  %ex66 = getelementptr inbounds %struct.ib_send_wr, ptr %wr.addr.0264, i32 0, i32 6
  %76 = ptrtoint ptr %ex66 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %ex66, align 8
  %78 = getelementptr inbounds %struct.ocrdma_hdr_wqe, ptr %add.ptr.i, i32 0, i32 2
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %77, ptr %78, align 4
  %80 = ptrtoint ptr %qp_type to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %qp_type, align 16
  %82 = zext i32 %81 to i64
  call void @__sanitizer_cov_trace_switch(i64 %82, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %81, label %sw.bb61.sw.epilog_crit_edge [
    i32 4, label %sw.bb61.if.then.i213_crit_edge
    i32 1, label %sw.bb61.if.then.i213_crit_edge279
  ]

sw.bb61.if.then.i213_crit_edge279:                ; preds = %sw.bb61
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i213

sw.bb61.if.then.i213_crit_edge:                   ; preds = %sw.bb61
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i213

sw.bb61.sw.epilog_crit_edge:                      ; preds = %sw.bb61
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.then.i213:                                     ; preds = %sw.bb61.if.then.i213_crit_edge, %sw.bb61.if.then.i213_crit_edge279
  %add.ptr.i.i196 = getelementptr %struct.ocrdma_hdr_wqe, ptr %add.ptr.i, i32 1
  %ah1.i.i197 = getelementptr inbounds %struct.ib_ud_wr, ptr %wr.addr.0264, i32 0, i32 1
  %83 = ptrtoint ptr %ah1.i.i197 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %ah1.i.i197, align 8
  %remote_qpn.i.i198 = getelementptr inbounds %struct.ib_ud_wr, ptr %wr.addr.0264, i32 0, i32 5
  %85 = ptrtoint ptr %remote_qpn.i.i198 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %remote_qpn.i.i198, align 8
  %87 = ptrtoint ptr %add.ptr.i.i196 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %add.ptr.i.i196, align 4
  %88 = ptrtoint ptr %qp_type to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %qp_type, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %89)
  %cmp.i.i199 = icmp eq i32 %89, 1
  %remote_qkey.i.i201 = getelementptr inbounds %struct.ib_ud_wr, ptr %wr.addr.0264, i32 0, i32 6
  %.sink.in.i.i202 = select i1 %cmp.i.i199, ptr %qkey.i.i200, ptr %remote_qkey.i.i201
  %90 = ptrtoint ptr %.sink.in.i.i202 to i32
  call void @__asan_load4_noabort(i32 %90)
  %.sink.i.i203 = load i32, ptr %.sink.in.i.i202, align 4
  %91 = getelementptr %struct.ocrdma_hdr_wqe, ptr %add.ptr.i, i32 1, i32 1
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %.sink.i.i203, ptr %91, align 4
  %id.i.i204 = getelementptr inbounds %struct.ocrdma_ah, ptr %84, i32 0, i32 3
  %93 = ptrtoint ptr %id.i.i204 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %id.i.i204, align 4
  %rsvd_ahid.i.i205 = getelementptr %struct.ocrdma_hdr_wqe, ptr %add.ptr.i, i32 1, i32 2
  %95 = ptrtoint ptr %rsvd_ahid.i.i205 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %rsvd_ahid.i.i205, align 4
  %hdr_type.i.i206 = getelementptr inbounds %struct.ocrdma_ah, ptr %84, i32 0, i32 4
  %96 = ptrtoint ptr %hdr_type.i.i206 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %hdr_type.i.i206, align 4
  %conv.i.i207 = zext i8 %97 to i32
  %hdr_type7.i.i208 = getelementptr %struct.ocrdma_hdr_wqe, ptr %add.ptr.i, i32 1, i32 3
  %98 = ptrtoint ptr %hdr_type7.i.i208 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %conv.i.i207, ptr %hdr_type7.i.i208, align 4
  %av.i.i209 = getelementptr inbounds %struct.ocrdma_ah, ptr %84, i32 0, i32 1
  %99 = ptrtoint ptr %av.i.i209 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %av.i.i209, align 4
  %valid.i.i210 = getelementptr inbounds %struct.ocrdma_av, ptr %100, i32 0, i32 2
  %101 = ptrtoint ptr %valid.i.i210 to i32
  call void @__asan_loadN_noabort(i32 %101, i32 4)
  %102 = load i32, ptr %valid.i.i210, align 1
  %and.i.i211 = and i32 %102, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i211)
  %tobool.not.i.i212 = icmp eq i32 %and.i.i211, 0
  br i1 %tobool.not.i.i212, label %if.then.i213.sw.epilog_crit_edge, label %if.then8.i.i215

if.then.i213.sw.epilog_crit_edge:                 ; preds = %if.then.i213
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.then8.i.i215:                                  ; preds = %if.then.i213
  call void @__sanitizer_cov_trace_pc() #15
  %or.i.i214 = or i32 %75, 2112
  %103 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %or.i.i214, ptr %add.ptr.i, align 4
  br label %sw.epilog

sw.bb68:                                          ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #15
  %104 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %add.ptr.i, align 4
  %or70 = or i32 %105, 1024
  store i32 %or70, ptr %add.ptr.i, align 4
  %ex71 = getelementptr inbounds %struct.ib_send_wr, ptr %wr.addr.0264, i32 0, i32 6
  %106 = ptrtoint ptr %ex71 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %ex71, align 8
  %108 = getelementptr inbounds %struct.ocrdma_hdr_wqe, ptr %add.ptr.i, i32 0, i32 2
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %107, ptr %108, align 4
  br label %sw.bb72

sw.bb72:                                          ; preds = %sw.bb68, %if.end53.sw.bb72_crit_edge
  %110 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %add.ptr.i, align 4
  %or74 = or i32 %111, 6
  store i32 %or74, ptr %add.ptr.i, align 4
  %add.ptr1.i = getelementptr %struct.ocrdma_hdr_wqe, ptr %add.ptr.i, i32 2
  %call.i221 = tail call fastcc i32 @ocrdma_build_inline_sges(ptr noundef %ibqp, ptr noundef %add.ptr.i, ptr noundef %add.ptr1.i, ptr noundef nonnull %wr.addr.0264, i32 noundef 32) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i221)
  %tobool.not.i = icmp eq i32 %call.i221, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb72.while.end.sink.split_crit_edge

sw.bb72.while.end.sink.split_crit_edge:           ; preds = %sw.bb72
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.sink.split

if.end.i:                                         ; preds = %sw.bb72
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i222 = getelementptr %struct.ocrdma_hdr_wqe, ptr %add.ptr.i, i32 1
  %remote_addr.i = getelementptr inbounds %struct.ib_rdma_wr, ptr %wr.addr.0264, i32 0, i32 1
  %112 = ptrtoint ptr %remote_addr.i to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %remote_addr.i, align 8
  %conv.i = trunc i64 %113 to i32
  %addr_lo.i = getelementptr %struct.ocrdma_hdr_wqe, ptr %add.ptr.i, i32 1, i32 1
  %114 = ptrtoint ptr %addr_lo.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %conv.i, ptr %addr_lo.i, align 4
  %115 = load i64, ptr %remote_addr.i, align 8
  %shr.i = lshr i64 %115, 32
  %conv6.i = trunc i64 %shr.i to i32
  %116 = ptrtoint ptr %add.ptr.i222 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %conv6.i, ptr %add.ptr.i222, align 4
  %rkey.i = getelementptr inbounds %struct.ib_rdma_wr, ptr %wr.addr.0264, i32 0, i32 2
  %117 = ptrtoint ptr %rkey.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %rkey.i, align 8
  %lrkey.i = getelementptr %struct.ocrdma_hdr_wqe, ptr %add.ptr.i, i32 1, i32 2
  %119 = ptrtoint ptr %lrkey.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %118, ptr %lrkey.i, align 4
  %120 = ptrtoint ptr %total_len to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %total_len, align 4
  %len.i = getelementptr %struct.ocrdma_hdr_wqe, ptr %add.ptr.i, i32 1, i32 3
  %122 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %121, ptr %len.i, align 4
  br label %if.end88

sw.bb76:                                          ; preds = %if.end53
  %add.ptr1.i223 = getelementptr %struct.ocrdma_hdr_wqe, ptr %add.ptr.i, i32 2
  %123 = ptrtoint ptr %num_sge to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %num_sge, align 4
  %sg_list.i = getelementptr inbounds %struct.ib_send_wr, ptr %wr.addr.0264, i32 0, i32 2
  %125 = ptrtoint ptr %sg_list.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %sg_list.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %cmp34.i.i = icmp sgt i32 %124, 0
  br i1 %cmp34.i.i, label %sw.bb76.for.body.i.i_crit_edge, label %sw.bb76.for.end.i.i_crit_edge

sw.bb76.for.end.i.i_crit_edge:                    ; preds = %sw.bb76
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i.i

sw.bb76.for.body.i.i_crit_edge:                   ; preds = %sw.bb76
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %sw.bb76.for.body.i.i_crit_edge
  %i.035.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %sw.bb76.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.ib_sge, ptr %126, i32 %i.035.i.i
  %lkey.i.i = getelementptr %struct.ib_sge, ptr %126, i32 %i.035.i.i, i32 2
  %127 = ptrtoint ptr %lkey.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %lkey.i.i, align 4
  %arrayidx1.i.i = getelementptr %struct.ocrdma_sge, ptr %add.ptr1.i223, i32 %i.035.i.i
  %lrkey.i.i = getelementptr %struct.ocrdma_sge, ptr %add.ptr1.i223, i32 %i.035.i.i, i32 2
  %129 = ptrtoint ptr %lrkey.i.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %128, ptr %lrkey.i.i, align 4
  %130 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %130)
  %131 = load i64, ptr %arrayidx.i.i, align 8
  %conv.i.i224 = trunc i64 %131 to i32
  %addr_lo.i.i = getelementptr %struct.ocrdma_sge, ptr %add.ptr1.i223, i32 %i.035.i.i, i32 1
  %132 = ptrtoint ptr %addr_lo.i.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %conv.i.i224, ptr %addr_lo.i.i, align 4
  %133 = load i64, ptr %arrayidx.i.i, align 8
  %shr.i.i = lshr i64 %133, 32
  %conv7.i.i = trunc i64 %shr.i.i to i32
  %134 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %conv7.i.i, ptr %arrayidx1.i.i, align 4
  %length.i.i = getelementptr %struct.ib_sge, ptr %126, i32 %i.035.i.i, i32 1
  %135 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %length.i.i, align 8
  %len.i.i = getelementptr %struct.ocrdma_sge, ptr %add.ptr1.i223, i32 %i.035.i.i, i32 3
  %137 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %136, ptr %len.i.i, align 4
  %138 = load i32, ptr %length.i.i, align 8
  %139 = ptrtoint ptr %total_len to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %total_len, align 4
  %add.i.i = add i32 %140, %138
  store i32 %add.i.i, ptr %total_len, align 4
  %inc.i.i = add nuw nsw i32 %i.035.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %124
  br i1 %exitcond.not.i.i, label %for.body.i.i.for.end.i.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.body.i.i.for.end.i.i_crit_edge, %sw.bb76.for.end.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %cmp13.i.i = icmp eq i32 %124, 0
  br i1 %cmp13.i.i, label %if.then.i.i, label %for.end.i.i.ocrdma_build_read.exit_crit_edge

for.end.i.i.ocrdma_build_read.exit_crit_edge:     ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocrdma_build_read.exit

if.then.i.i:                                      ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %141 = call ptr @memset(ptr %add.ptr1.i223, i32 0, i32 16)
  br label %ocrdma_build_read.exit

ocrdma_build_read.exit:                           ; preds = %if.then.i.i, %for.end.i.i.ocrdma_build_read.exit_crit_edge
  %add.i225 = shl i32 %124, 19
  %add.ptr.i226 = getelementptr %struct.ocrdma_hdr_wqe, ptr %add.ptr.i, i32 1
  %shl.i = add i32 %add.i225, 1048576
  %142 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %shl.i, %143
  %or7.i = or i32 %or.i, 65548
  store i32 %or7.i, ptr %add.ptr.i, align 4
  %remote_addr.i227 = getelementptr inbounds %struct.ib_rdma_wr, ptr %wr.addr.0264, i32 0, i32 1
  %144 = ptrtoint ptr %remote_addr.i227 to i32
  call void @__asan_load8_noabort(i32 %144)
  %145 = load i64, ptr %remote_addr.i227, align 8
  %conv.i228 = trunc i64 %145 to i32
  %addr_lo.i229 = getelementptr %struct.ocrdma_hdr_wqe, ptr %add.ptr.i, i32 1, i32 1
  %146 = ptrtoint ptr %addr_lo.i229 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %conv.i228, ptr %addr_lo.i229, align 4
  %147 = load i64, ptr %remote_addr.i227, align 8
  %shr.i230 = lshr i64 %147, 32
  %conv11.i = trunc i64 %shr.i230 to i32
  %148 = ptrtoint ptr %add.ptr.i226 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %conv11.i, ptr %add.ptr.i226, align 4
  %rkey.i231 = getelementptr inbounds %struct.ib_rdma_wr, ptr %wr.addr.0264, i32 0, i32 2
  %149 = ptrtoint ptr %rkey.i231 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %rkey.i231, align 8
  %lrkey.i232 = getelementptr %struct.ocrdma_hdr_wqe, ptr %add.ptr.i, i32 1, i32 2
  %151 = ptrtoint ptr %lrkey.i232 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %150, ptr %lrkey.i232, align 4
  %152 = ptrtoint ptr %total_len to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %total_len, align 4
  %len.i234 = getelementptr %struct.ocrdma_hdr_wqe, ptr %add.ptr.i, i32 1, i32 3
  %154 = ptrtoint ptr %len.i234 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %153, ptr %len.i234, align 4
  br label %if.end88

sw.bb77:                                          ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #15
  %155 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %add.ptr.i, align 4
  %or81 = or i32 %156, 1048597
  store i32 %or81, ptr %add.ptr.i, align 4
  %ex82 = getelementptr inbounds %struct.ib_send_wr, ptr %wr.addr.0264, i32 0, i32 6
  %157 = ptrtoint ptr %ex82 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %ex82, align 8
  %159 = getelementptr inbounds %struct.ocrdma_hdr_wqe, ptr %add.ptr.i, i32 0, i32 2
  %160 = ptrtoint ptr %159 to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %158, ptr %159, align 4
  br label %if.end88

sw.bb83:                                          ; preds = %if.end53
  %add.ptr.i235 = getelementptr %struct.ocrdma_hdr_wqe, ptr %add.ptr.i, i32 1
  %mr1.i = getelementptr inbounds %struct.ib_reg_wr, ptr %wr.addr.0264, i32 0, i32 1
  %161 = ptrtoint ptr %mr1.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %mr1.i, align 8
  %pbl_table.i = getelementptr inbounds %struct.ocrdma_mr, ptr %162, i32 0, i32 2, i32 10
  %163 = ptrtoint ptr %pbl_table.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %pbl_table.i, align 8
  %165 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %add.ptr.i, align 4
  %or4.i = or i32 %166, 1572881
  store i32 %or4.i, ptr %add.ptr.i, align 4
  %access.i = getelementptr inbounds %struct.ib_reg_wr, ptr %wr.addr.0264, i32 0, i32 3
  %167 = ptrtoint ptr %access.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %access.i, align 8
  %and.i = and i32 %168, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i236 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i236, label %sw.bb83.if.end.i238_crit_edge, label %if.then.i237

sw.bb83.if.end.i238_crit_edge:                    ; preds = %sw.bb83
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i238

if.then.i237:                                     ; preds = %sw.bb83
  call void @__sanitizer_cov_trace_pc() #15
  %169 = getelementptr inbounds %struct.ocrdma_hdr_wqe, ptr %add.ptr.i, i32 0, i32 1
  %170 = ptrtoint ptr %169 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %169, align 4
  %or5.i = or i32 %171, 1
  store i32 %or5.i, ptr %169, align 4
  br label %if.end.i238

if.end.i238:                                      ; preds = %if.then.i237, %sw.bb83.if.end.i238_crit_edge
  %172 = ptrtoint ptr %access.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %access.i, align 8
  %and7.i = and i32 %173, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %if.end.i238.if.end11.i_crit_edge, label %if.then9.i

if.end.i238.if.end11.i_crit_edge:                 ; preds = %if.end.i238
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11.i

if.then9.i:                                       ; preds = %if.end.i238
  call void @__sanitizer_cov_trace_pc() #15
  %174 = getelementptr inbounds %struct.ocrdma_hdr_wqe, ptr %add.ptr.i, i32 0, i32 1
  %175 = ptrtoint ptr %174 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %174, align 4
  %or10.i = or i32 %176, 4
  store i32 %or10.i, ptr %174, align 4
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then9.i, %if.end.i238.if.end11.i_crit_edge
  %177 = ptrtoint ptr %access.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %access.i, align 8
  %and13.i = and i32 %178, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %if.end11.i.if.end17.i_crit_edge, label %if.then15.i

if.end11.i.if.end17.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17.i

if.then15.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #15
  %179 = getelementptr inbounds %struct.ocrdma_hdr_wqe, ptr %add.ptr.i, i32 0, i32 1
  %180 = ptrtoint ptr %179 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %179, align 4
  %or16.i = or i32 %181, 2
  store i32 %or16.i, ptr %179, align 4
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then15.i, %if.end11.i.if.end17.i_crit_edge
  %key.i = getelementptr inbounds %struct.ib_reg_wr, ptr %wr.addr.0264, i32 0, i32 2
  %182 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %key.i, align 4
  %184 = getelementptr inbounds %struct.ocrdma_hdr_wqe, ptr %add.ptr.i, i32 0, i32 2
  %185 = ptrtoint ptr %184 to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %183, ptr %184, align 4
  %length.i = getelementptr inbounds %struct.ib_mr, ptr %162, i32 0, i32 5
  %186 = ptrtoint ptr %length.i to i32
  call void @__asan_load8_noabort(i32 %186)
  %187 = load i64, ptr %length.i, align 8
  %conv.i239 = trunc i64 %187 to i32
  %188 = ptrtoint ptr %total_len to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 %conv.i239, ptr %total_len, align 4
  %iova.i = getelementptr inbounds %struct.ib_mr, ptr %162, i32 0, i32 4
  %189 = ptrtoint ptr %iova.i to i32
  call void @__asan_load8_noabort(i32 %189)
  %190 = load i64, ptr %iova.i, align 8
  %pages.i = getelementptr inbounds %struct.ocrdma_mr, ptr %162, i32 0, i32 3
  %191 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %pages.i, align 8
  %193 = ptrtoint ptr %192 to i32
  call void @__asan_load8_noabort(i32 %193)
  %194 = load i64, ptr %192, align 8
  %sub19.i = sub i64 %190, %194
  %shr.i241 = lshr i64 %190, 32
  %conv23.i = trunc i64 %shr.i241 to i32
  %195 = ptrtoint ptr %add.ptr.i235 to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 %conv23.i, ptr %add.ptr.i235, align 4
  %196 = load i64, ptr %iova.i, align 8
  %conv27.i = trunc i64 %196 to i32
  %va_lo.i = getelementptr %struct.ocrdma_hdr_wqe, ptr %add.ptr.i, i32 1, i32 1
  %197 = ptrtoint ptr %va_lo.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 %conv27.i, ptr %va_lo.i, align 4
  %shr28.i = lshr i64 %sub19.i, 32
  %conv30.i = trunc i64 %shr28.i to i32
  %fbo_hi.i = getelementptr %struct.ocrdma_hdr_wqe, ptr %add.ptr.i, i32 1, i32 2
  %198 = ptrtoint ptr %fbo_hi.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 %conv30.i, ptr %fbo_hi.i, align 4
  %conv31.i = trunc i64 %sub19.i to i32
  %fbo_lo.i = getelementptr %struct.ocrdma_hdr_wqe, ptr %add.ptr.i, i32 1, i32 3
  %199 = ptrtoint ptr %fbo_lo.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 %conv31.i, ptr %fbo_lo.i, align 4
  %npages.i = getelementptr inbounds %struct.ocrdma_mr, ptr %162, i32 0, i32 4
  %200 = ptrtoint ptr %npages.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %npages.i, align 4
  %num_sges.i = getelementptr %struct.ocrdma_hdr_wqe, ptr %add.ptr.i, i32 2, i32 1
  %202 = ptrtoint ptr %num_sges.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 %201, ptr %num_sges.i, align 4
  %page_size.i = getelementptr inbounds %struct.ib_mr, ptr %162, i32 0, i32 6
  %203 = ptrtoint ptr %page_size.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %page_size.i, align 8
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.cond.i.i.for.cond.i.i_crit_edge, %if.end17.i
  %i.0.i.i = phi i32 [ 0, %if.end17.i ], [ %inc.i.i243, %for.cond.i.i.for.cond.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %i.0.i.i)
  %cmp.i.i242 = icmp ugt i32 %i.0.i.i, 16
  %shl.i.i = shl nuw nsw i32 4096, %i.0.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i.i, i32 %204)
  %cmp1.i.i = icmp eq i32 %shl.i.i, %204
  %or.cond.i.i = select i1 %cmp.i.i242, i1 true, i1 %cmp1.i.i
  %inc.i.i243 = add nuw nsw i32 %i.0.i.i, 1
  br i1 %or.cond.i.i, label %get_encoded_page_size.exit.i, label %for.cond.i.i.for.cond.i.i_crit_edge

for.cond.i.i.for.cond.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i.i

get_encoded_page_size.exit.i:                     ; preds = %for.cond.i.i
  %size_sge.i = getelementptr %struct.ocrdma_hdr_wqe, ptr %add.ptr.i, i32 2
  %205 = ptrtoint ptr %size_sge.i to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 %i.0.i.i, ptr %size_sge.i, align 4
  %206 = ptrtoint ptr %npages.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %npages.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %207)
  %cmp2.not.i = icmp eq i32 %207, 0
  br i1 %cmp2.not.i, label %get_encoded_page_size.exit.i.if.end88_crit_edge, label %for.body.lr.ph.i

get_encoded_page_size.exit.i.if.end88_crit_edge:  ; preds = %get_encoded_page_size.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end88

for.body.lr.ph.i:                                 ; preds = %get_encoded_page_size.exit.i
  %208 = ptrtoint ptr %164 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %164, align 4
  %pbl_size.i = getelementptr inbounds %struct.ocrdma_mr, ptr %162, i32 0, i32 2, i32 13
  br label %for.body.i

for.body.i:                                       ; preds = %if.end52.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.06.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end52.i.for.body.i_crit_edge ]
  %pbl_tbl.04.i = phi ptr [ %164, %for.body.lr.ph.i ], [ %pbl_tbl.1.i, %if.end52.i.for.body.i_crit_edge ]
  %pbe.03.i = phi ptr [ %209, %for.body.lr.ph.i ], [ %pbe.1.i, %if.end52.i.for.body.i_crit_edge ]
  %210 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %pages.i, align 8
  %arrayidx38.i = getelementptr i64, ptr %211, i32 %i.06.i
  %212 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load8_noabort(i32 %212)
  %213 = load i64, ptr %arrayidx38.i, align 8
  %214 = trunc i64 %213 to i32
  %conv40.i = and i32 %214, -4096
  %215 = tail call i32 @llvm.bswap.i32(i32 %conv40.i) #13
  %pa_lo.i = getelementptr inbounds %struct.ocrdma_pbe, ptr %pbe.03.i, i32 0, i32 1
  %216 = ptrtoint ptr %pa_lo.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 %215, ptr %pa_lo.i, align 4
  %shr41.i = lshr i64 %213, 32
  %conv43.i = trunc i64 %shr41.i to i32
  %217 = tail call i32 @llvm.bswap.i32(i32 %conv43.i) #13
  %218 = ptrtoint ptr %pbe.03.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 %217, ptr %pbe.03.i, align 4
  %inc.i = add nuw i32 %i.06.i, 1
  %incdec.ptr.i = getelementptr %struct.ocrdma_pbe, ptr %pbe.03.i, i32 1
  %219 = ptrtoint ptr %pbl_size.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %pbl_size.i, align 4
  %div461.i = lshr i32 %220, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %div461.i)
  %cmp47.i = icmp eq i32 %inc.i, %div461.i
  br i1 %cmp47.i, label %if.then49.i, label %for.body.i.if.end52.i_crit_edge

for.body.i.if.end52.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end52.i

if.then49.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %incdec.ptr50.i = getelementptr %struct.ocrdma_pbl, ptr %pbl_tbl.04.i, i32 1
  %221 = ptrtoint ptr %incdec.ptr50.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %incdec.ptr50.i, align 4
  br label %if.end52.i

if.end52.i:                                       ; preds = %if.then49.i, %for.body.i.if.end52.i_crit_edge
  %pbe.1.i = phi ptr [ %222, %if.then49.i ], [ %incdec.ptr.i, %for.body.i.if.end52.i_crit_edge ]
  %pbl_tbl.1.i = phi ptr [ %incdec.ptr50.i, %if.then49.i ], [ %pbl_tbl.04.i, %for.body.i.if.end52.i_crit_edge ]
  %223 = ptrtoint ptr %npages.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %npages.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %224
  br i1 %cmp.i, label %if.end52.i.for.body.i_crit_edge, label %if.end52.i.if.end88_crit_edge

if.end52.i.if.end88_crit_edge:                    ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end88

if.end52.i.for.body.i_crit_edge:                  ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

sw.epilog:                                        ; preds = %if.then8.i.i215, %if.then.i213.sw.epilog_crit_edge, %sw.bb61.sw.epilog_crit_edge
  %.sink.i216 = phi i32 [ 2, %if.then.i213.sw.epilog_crit_edge ], [ 2, %if.then8.i.i215 ], [ 1, %sw.bb61.sw.epilog_crit_edge ]
  %wqe_size.0.i217 = phi i32 [ 32, %if.then.i213.sw.epilog_crit_edge ], [ 32, %if.then8.i.i215 ], [ 16, %sw.bb61.sw.epilog_crit_edge ]
  %add.ptr3.i218 = getelementptr %struct.ocrdma_hdr_wqe, ptr %add.ptr.i, i32 %.sink.i216
  %call.i219 = tail call fastcc i32 @ocrdma_build_inline_sges(ptr noundef %ibqp, ptr noundef %add.ptr.i, ptr noundef %add.ptr3.i218, ptr noundef nonnull %wr.addr.0264, i32 noundef %wqe_size.0.i217) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i219)
  %tobool86.not = icmp eq i32 %call.i219, 0
  br i1 %tobool86.not, label %sw.epilog.if.end88_crit_edge, label %sw.epilog.while.end.sink.split_crit_edge

sw.epilog.while.end.sink.split_crit_edge:         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.sink.split

sw.epilog.if.end88_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end88

if.end88:                                         ; preds = %sw.epilog.if.end88_crit_edge, %if.end52.i.if.end88_crit_edge, %get_encoded_page_size.exit.i.if.end88_crit_edge, %sw.bb77, %ocrdma_build_read.exit, %if.end.i, %ocrdma_build_send.exit
  %225 = ptrtoint ptr %send_flags to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %send_flags, align 4
  %and90 = and i32 %226, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %tobool91.not = icmp eq i32 %and90, 0
  br i1 %tobool91.not, label %lor.lhs.false92, label %if.end88.if.end104_crit_edge

if.end88.if.end104_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end104

lor.lhs.false92:                                  ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #15
  %227 = ptrtoint ptr %signaled to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %signaled, align 4, !range !137
  br label %if.end104

if.end104:                                        ; preds = %lor.lhs.false92, %if.end88.if.end104_crit_edge
  %.sink = phi i8 [ 1, %if.end88.if.end104_crit_edge ], [ %228, %lor.lhs.false92 ]
  %229 = ptrtoint ptr %wqe_wr_id_tbl to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %wqe_wr_id_tbl, align 8
  %231 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %head.i, align 8
  %signaled103 = getelementptr %struct.anon.195, ptr %230, i32 %232, i32 3
  %233 = ptrtoint ptr %signaled103 to i32
  call void @__asan_store1_noabort(i32 %233)
  store i8 %.sink, ptr %signaled103, align 4
  %234 = getelementptr inbounds %struct.ib_send_wr, ptr %wr.addr.0264, i32 0, i32 1
  %235 = ptrtoint ptr %234 to i32
  call void @__asan_load8_noabort(i32 %235)
  %236 = load i64, ptr %234, align 8
  %237 = load ptr, ptr %wqe_wr_id_tbl, align 8
  %238 = load i32, ptr %head.i, align 8
  %arrayidx108 = getelementptr %struct.anon.195, ptr %237, i32 %238
  %239 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_store8_noabort(i32 %239)
  store i64 %236, ptr %arrayidx108, align 8
  %240 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %add.ptr.i, align 4
  %242 = lshr i32 %241, 15
  %mul = and i32 %242, 2040
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp7.not.i = icmp eq i32 %mul, 0
  br i1 %cmp7.not.i, label %if.end104.ocrdma_cpu_to_le32.exit_crit_edge, label %for.body.preheader.i

if.end104.ocrdma_cpu_to_le32.exit_crit_edge:      ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocrdma_cpu_to_le32.exit

for.body.preheader.i:                             ; preds = %if.end104
  %div6.i = lshr exact i32 %mul, 2
  br label %for.body.i246

for.body.i246:                                    ; preds = %for.body.i246.for.body.i246_crit_edge, %for.body.preheader.i
  %i.08.i = phi i32 [ %inc.i245, %for.body.i246.for.body.i246_crit_edge ], [ 0, %for.body.preheader.i ]
  %add.ptr.i244 = getelementptr i32, ptr %add.ptr.i, i32 %i.08.i
  %243 = ptrtoint ptr %add.ptr.i244 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %add.ptr.i244, align 4
  %245 = tail call i32 @llvm.bswap.i32(i32 %244) #13
  %246 = ptrtoint ptr %add.ptr.i244 to i32
  call void @__asan_store4_noabort(i32 %246)
  store i32 %245, ptr %add.ptr.i244, align 4
  %inc.i245 = add nuw nsw i32 %i.08.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i245, %div6.i
  br i1 %exitcond.not.i, label %for.body.i246.ocrdma_cpu_to_le32.exit_crit_edge, label %for.body.i246.for.body.i246_crit_edge

for.body.i246.for.body.i246_crit_edge:            ; preds = %for.body.i246
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i246

for.body.i246.ocrdma_cpu_to_le32.exit_crit_edge:  ; preds = %for.body.i246
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocrdma_cpu_to_le32.exit

ocrdma_cpu_to_le32.exit:                          ; preds = %for.body.i246.ocrdma_cpu_to_le32.exit_crit_edge, %if.end104.ocrdma_cpu_to_le32.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !145
  tail call void @arm_heavy_mb() #13
  %247 = ptrtoint ptr %dbid.i to i32
  call void @__asan_load2_noabort(i32 %247)
  %248 = load i16, ptr %dbid.i, align 4
  %conv.i247 = zext i16 %248 to i32
  %or.i248 = or i32 %conv.i247, 65536
  %249 = ptrtoint ptr %sq_db.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %sq_db.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !146
  tail call void @arm_heavy_mb() #13
  %251 = tail call i32 @llvm.bswap.i32(i32 %or.i248) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %250, i32 %251) #13, !srcloc !147
  %252 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %head.i, align 4
  %add.i250 = add i32 %253, 1
  %254 = ptrtoint ptr %max_wqe_idx.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %max_wqe_idx.i, align 4
  %and.i252 = and i32 %add.i250, %255
  store i32 %and.i252, ptr %head.i, align 4
  %256 = ptrtoint ptr %wr.addr.0264 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %wr.addr.0264, align 8
  %tobool.not = icmp eq ptr %257, null
  br i1 %tobool.not, label %ocrdma_cpu_to_le32.exit.while.end_crit_edge, label %ocrdma_cpu_to_le32.exit.while.body_crit_edge

ocrdma_cpu_to_le32.exit.while.body_crit_edge:     ; preds = %ocrdma_cpu_to_le32.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

ocrdma_cpu_to_le32.exit.while.end_crit_edge:      ; preds = %ocrdma_cpu_to_le32.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end.sink.split:                             ; preds = %sw.epilog.while.end.sink.split_crit_edge, %sw.bb72.while.end.sink.split_crit_edge, %if.end53.while.end.sink.split_crit_edge, %lor.lhs.false.while.end.sink.split_crit_edge, %if.end22.while.end.sink.split_crit_edge, %land.lhs.true14.while.end.sink.split_crit_edge
  %status.2.ph = phi i32 [ -22, %land.lhs.true14.while.end.sink.split_crit_edge ], [ -12, %lor.lhs.false.while.end.sink.split_crit_edge ], [ -12, %if.end22.while.end.sink.split_crit_edge ], [ %call.i219, %sw.epilog.while.end.sink.split_crit_edge ], [ %call.i221, %sw.bb72.while.end.sink.split_crit_edge ], [ -22, %if.end53.while.end.sink.split_crit_edge ]
  %258 = ptrtoint ptr %bad_wr to i32
  call void @__asan_store4_noabort(i32 %258)
  store ptr %wr.addr.0264, ptr %bad_wr, align 4
  br label %while.end

while.end:                                        ; preds = %while.end.sink.split, %ocrdma_cpu_to_le32.exit.while.end_crit_edge, %if.end.while.end_crit_edge
  %status.2 = phi i32 [ 0, %if.end.while.end_crit_edge ], [ %status.2.ph, %while.end.sink.split ], [ 0, %ocrdma_cpu_to_le32.exit.while.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %q_lock, i32 noundef %call3) #13
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ %status.2, %while.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocrdma_post_recv(ptr noundef %ibqp, ptr noundef %wr, ptr nocapture noundef writeonly %bad_wr) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %q_lock = getelementptr inbounds %struct.ocrdma_qp, ptr %ibqp, i32 0, i32 6
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %q_lock) #13
  %state = getelementptr inbounds %struct.ocrdma_qp, ptr %ibqp, i32 0, i32 15
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %1, label %while.cond.preheader [
    i32 0, label %entry.if.then_crit_edge
    i32 6, label %entry.if.then_crit_edge66
  ]

entry.if.then_crit_edge66:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

while.cond.preheader:                             ; preds = %entry
  %tobool.not59 = icmp eq ptr %wr, null
  br i1 %tobool.not59, label %while.cond.preheader.while.end_crit_edge, label %while.body.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %rq = getelementptr inbounds %struct.ocrdma_qp, ptr %ibqp, i32 0, i32 10
  %max_wqe_idx.i = getelementptr inbounds %struct.ocrdma_qp, ptr %ibqp, i32 0, i32 10, i32 6
  %head.i = getelementptr inbounds %struct.ocrdma_qp, ptr %ibqp, i32 0, i32 10, i32 2
  %tail.i = getelementptr inbounds %struct.ocrdma_qp, ptr %ibqp, i32 0, i32 10, i32 3
  %max_cnt.i = getelementptr inbounds %struct.ocrdma_qp, ptr %ibqp, i32 0, i32 10, i32 5
  %max_sges = getelementptr inbounds %struct.ocrdma_qp, ptr %ibqp, i32 0, i32 10, i32 1
  %entry_size.i = getelementptr inbounds %struct.ocrdma_qp, ptr %ibqp, i32 0, i32 10, i32 4
  %rqe_wr_id_tbl = getelementptr inbounds %struct.ocrdma_qp, ptr %ibqp, i32 0, i32 11
  %dbid.i = getelementptr inbounds %struct.ocrdma_qp, ptr %ibqp, i32 0, i32 10, i32 7
  %rq_db.i = getelementptr inbounds %struct.ocrdma_qp, ptr %ibqp, i32 0, i32 9
  br label %while.body

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge66
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %q_lock, i32 noundef %call3) #13
  %3 = ptrtoint ptr %bad_wr to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %wr, ptr %bad_wr, align 4
  br label %cleanup

while.body:                                       ; preds = %ocrdma_build_rqe.exit.while.body_crit_edge, %while.body.lr.ph
  %wr.addr.060 = phi ptr [ %wr, %while.body.lr.ph ], [ %67, %ocrdma_build_rqe.exit.while.body_crit_edge ]
  %4 = ptrtoint ptr %max_wqe_idx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_wqe_idx.i, align 4
  %6 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %head.i, align 4
  %sub.i = sub i32 %5, %7
  %8 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tail.i, align 4
  %add.i = add i32 %sub.i, %9
  %10 = ptrtoint ptr %max_cnt.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_cnt.i, align 4
  %rem.i = urem i32 %add.i, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp13 = icmp eq i32 %rem.i, 0
  br i1 %cmp13, label %while.body.if.then19_crit_edge, label %lor.lhs.false15

while.body.if.then19_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then19

lor.lhs.false15:                                  ; preds = %while.body
  %num_sge = getelementptr inbounds %struct.ib_recv_wr, ptr %wr.addr.060, i32 0, i32 3
  %12 = ptrtoint ptr %num_sge to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_sge, align 4
  %14 = ptrtoint ptr %max_sges to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max_sges, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp17 = icmp ugt i32 %13, %15
  br i1 %cmp17, label %lor.lhs.false15.if.then19_crit_edge, label %if.end20

lor.lhs.false15.if.then19_crit_edge:              ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then19

if.then19:                                        ; preds = %lor.lhs.false15.if.then19_crit_edge, %while.body.if.then19_crit_edge
  %16 = ptrtoint ptr %bad_wr to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %wr.addr.060, ptr %bad_wr, align 4
  br label %while.end

if.end20:                                         ; preds = %lor.lhs.false15
  %17 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rq, align 4
  %19 = ptrtoint ptr %entry_size.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %entry_size.i, align 4
  %mul.i = mul i32 %20, %7
  %add.ptr.i = getelementptr i8, ptr %18, i32 %mul.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  %mul.i52 = shl i32 %13, 4
  %add.i53 = add i32 %mul.i52, 16
  %wqe_size.0.i = select i1 %tobool.not.i, i32 32, i32 %add.i53
  %21 = shl i32 %wqe_size.0.i, 15
  %or4.i = or i32 %21, 65568
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or4.i, ptr %add.ptr.i, align 4
  %total_len.i = getelementptr inbounds %struct.ocrdma_hdr_wqe, ptr %add.ptr.i, i32 0, i32 3
  %23 = ptrtoint ptr %total_len.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %total_len.i, align 4
  %24 = getelementptr inbounds %struct.ocrdma_hdr_wqe, ptr %add.ptr.i, i32 0, i32 1
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %24, align 4
  %add.ptr.i54 = getelementptr %struct.ocrdma_hdr_wqe, ptr %add.ptr.i, i32 1
  %26 = ptrtoint ptr %num_sge to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_sge, align 4
  %sg_list.i = getelementptr inbounds %struct.ib_recv_wr, ptr %wr.addr.060, i32 0, i32 2
  %28 = ptrtoint ptr %sg_list.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sg_list.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp34.i.i = icmp sgt i32 %27, 0
  br i1 %cmp34.i.i, label %if.end20.for.body.i.i_crit_edge, label %if.end20.for.end.i.i_crit_edge

if.end20.for.end.i.i_crit_edge:                   ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i.i

if.end20.for.body.i.i_crit_edge:                  ; preds = %if.end20
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end20.for.body.i.i_crit_edge
  %i.035.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end20.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.ib_sge, ptr %29, i32 %i.035.i.i
  %lkey.i.i = getelementptr %struct.ib_sge, ptr %29, i32 %i.035.i.i, i32 2
  %30 = ptrtoint ptr %lkey.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %lkey.i.i, align 4
  %arrayidx1.i.i = getelementptr %struct.ocrdma_sge, ptr %add.ptr.i54, i32 %i.035.i.i
  %lrkey.i.i = getelementptr %struct.ocrdma_sge, ptr %add.ptr.i54, i32 %i.035.i.i, i32 2
  %32 = ptrtoint ptr %lrkey.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %lrkey.i.i, align 4
  %33 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %arrayidx.i.i, align 8
  %conv.i.i = trunc i64 %34 to i32
  %addr_lo.i.i = getelementptr %struct.ocrdma_sge, ptr %add.ptr.i54, i32 %i.035.i.i, i32 1
  %35 = ptrtoint ptr %addr_lo.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %conv.i.i, ptr %addr_lo.i.i, align 4
  %36 = load i64, ptr %arrayidx.i.i, align 8
  %shr.i.i = lshr i64 %36, 32
  %conv7.i.i = trunc i64 %shr.i.i to i32
  %37 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %conv7.i.i, ptr %arrayidx1.i.i, align 4
  %length.i.i = getelementptr %struct.ib_sge, ptr %29, i32 %i.035.i.i, i32 1
  %38 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %length.i.i, align 8
  %len.i.i = getelementptr %struct.ocrdma_sge, ptr %add.ptr.i54, i32 %i.035.i.i, i32 3
  %40 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %len.i.i, align 4
  %41 = load i32, ptr %length.i.i, align 8
  %42 = ptrtoint ptr %total_len.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %total_len.i, align 4
  %add.i.i = add i32 %43, %41
  store i32 %add.i.i, ptr %total_len.i, align 4
  %inc.i.i = add nuw nsw i32 %i.035.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %27
  br i1 %exitcond.not.i.i, label %for.body.i.i.for.end.i.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.body.i.i.for.end.i.i_crit_edge, %if.end20.for.end.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp13.i.i = icmp eq i32 %27, 0
  br i1 %cmp13.i.i, label %if.then.i.i, label %for.end.i.i.ocrdma_build_sges.exit.i_crit_edge

for.end.i.i.ocrdma_build_sges.exit.i_crit_edge:   ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocrdma_build_sges.exit.i

if.then.i.i:                                      ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %44 = call ptr @memset(ptr %add.ptr.i54, i32 0, i32 16)
  br label %ocrdma_build_sges.exit.i

ocrdma_build_sges.exit.i:                         ; preds = %if.then.i.i, %for.end.i.i.ocrdma_build_sges.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wqe_size.0.i)
  %cmp7.not.i.i = icmp eq i32 %wqe_size.0.i, 0
  br i1 %cmp7.not.i.i, label %ocrdma_build_sges.exit.i.ocrdma_build_rqe.exit_crit_edge, label %for.body.preheader.i.i

ocrdma_build_sges.exit.i.ocrdma_build_rqe.exit_crit_edge: ; preds = %ocrdma_build_sges.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocrdma_build_rqe.exit

for.body.preheader.i.i:                           ; preds = %ocrdma_build_sges.exit.i
  %div6.i.i = lshr exact i32 %wqe_size.0.i, 2
  br label %for.body.i20.i

for.body.i20.i:                                   ; preds = %for.body.i20.i.for.body.i20.i_crit_edge, %for.body.preheader.i.i
  %i.08.i.i = phi i32 [ %inc.i18.i, %for.body.i20.i.for.body.i20.i_crit_edge ], [ 0, %for.body.preheader.i.i ]
  %add.ptr.i.i = getelementptr i32, ptr %add.ptr.i, i32 %i.08.i.i
  %45 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %add.ptr.i.i, align 4
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #13
  %48 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %add.ptr.i.i, align 4
  %inc.i18.i = add nuw nsw i32 %i.08.i.i, 1
  %exitcond.not.i19.i = icmp eq i32 %inc.i18.i, %div6.i.i
  br i1 %exitcond.not.i19.i, label %for.body.i20.i.ocrdma_build_rqe.exit_crit_edge, label %for.body.i20.i.for.body.i20.i_crit_edge

for.body.i20.i.for.body.i20.i_crit_edge:          ; preds = %for.body.i20.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i20.i

for.body.i20.i.ocrdma_build_rqe.exit_crit_edge:   ; preds = %for.body.i20.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocrdma_build_rqe.exit

ocrdma_build_rqe.exit:                            ; preds = %for.body.i20.i.ocrdma_build_rqe.exit_crit_edge, %ocrdma_build_sges.exit.i.ocrdma_build_rqe.exit_crit_edge
  %49 = getelementptr inbounds %struct.ib_recv_wr, ptr %wr.addr.060, i32 0, i32 1
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %49, align 8
  %52 = ptrtoint ptr %rqe_wr_id_tbl to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %rqe_wr_id_tbl, align 4
  %54 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %head.i, align 4
  %arrayidx = getelementptr i64, ptr %53, i32 %55
  %56 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %51, ptr %arrayidx, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !148
  tail call void @arm_heavy_mb() #13
  %57 = ptrtoint ptr %dbid.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %dbid.i, align 4
  %conv.i = zext i16 %58 to i32
  %or.i = or i32 %conv.i, 16777216
  %59 = ptrtoint ptr %rq_db.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %rq_db.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !146
  tail call void @arm_heavy_mb() #13
  %61 = tail call i32 @llvm.bswap.i32(i32 %or.i) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %61) #13, !srcloc !147
  %62 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %head.i, align 4
  %add.i56 = add i32 %63, 1
  %64 = ptrtoint ptr %max_wqe_idx.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %max_wqe_idx.i, align 4
  %and.i = and i32 %add.i56, %65
  store i32 %and.i, ptr %head.i, align 4
  %66 = ptrtoint ptr %wr.addr.060 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %wr.addr.060, align 8
  %tobool.not = icmp eq ptr %67, null
  br i1 %tobool.not, label %ocrdma_build_rqe.exit.while.end_crit_edge, label %ocrdma_build_rqe.exit.while.body_crit_edge

ocrdma_build_rqe.exit.while.body_crit_edge:       ; preds = %ocrdma_build_rqe.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

ocrdma_build_rqe.exit.while.end_crit_edge:        ; preds = %ocrdma_build_rqe.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %ocrdma_build_rqe.exit.while.end_crit_edge, %if.then19, %while.cond.preheader.while.end_crit_edge
  %status.0 = phi i32 [ -12, %if.then19 ], [ 0, %while.cond.preheader.while.end_crit_edge ], [ 0, %ocrdma_build_rqe.exit.while.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %q_lock, i32 noundef %call3) #13
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ %status.0, %while.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocrdma_post_srq_recv(ptr noundef %ibsrq, ptr noundef %wr, ptr nocapture noundef writeonly %bad_wr) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %q_lock = getelementptr inbounds %struct.ocrdma_srq, ptr %ibsrq, i32 0, i32 7
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %q_lock) #13
  %tobool.not54 = icmp eq ptr %wr, null
  br i1 %tobool.not54, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %rq = getelementptr inbounds %struct.ocrdma_srq, ptr %ibsrq, i32 0, i32 2
  %max_wqe_idx.i = getelementptr inbounds %struct.ocrdma_srq, ptr %ibsrq, i32 0, i32 2, i32 6
  %head.i = getelementptr inbounds %struct.ocrdma_srq, ptr %ibsrq, i32 0, i32 2, i32 2
  %tail.i = getelementptr inbounds %struct.ocrdma_srq, ptr %ibsrq, i32 0, i32 2, i32 3
  %max_cnt.i = getelementptr inbounds %struct.ocrdma_srq, ptr %ibsrq, i32 0, i32 2, i32 5
  %max_sges = getelementptr inbounds %struct.ocrdma_srq, ptr %ibsrq, i32 0, i32 2, i32 1
  %bit_fields_len.i = getelementptr inbounds %struct.ocrdma_srq, ptr %ibsrq, i32 0, i32 5
  %idx_bit_fields.i = getelementptr inbounds %struct.ocrdma_srq, ptr %ibsrq, i32 0, i32 4
  %entry_size.i = getelementptr inbounds %struct.ocrdma_srq, ptr %ibsrq, i32 0, i32 2, i32 4
  %rqe_wr_id_tbl = getelementptr inbounds %struct.ocrdma_srq, ptr %ibsrq, i32 0, i32 3
  %dbid.i = getelementptr inbounds %struct.ocrdma_srq, ptr %ibsrq, i32 0, i32 2, i32 7
  %db.i = getelementptr inbounds %struct.ocrdma_srq, ptr %ibsrq, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %ocrdma_build_rqe.exit.while.body_crit_edge, %while.body.lr.ph
  %wr.addr.055 = phi ptr [ %wr, %while.body.lr.ph ], [ %78, %ocrdma_build_rqe.exit.while.body_crit_edge ]
  %0 = ptrtoint ptr %max_wqe_idx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_wqe_idx.i, align 4
  %2 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %head.i, align 4
  %sub.i = sub i32 %1, %3
  %4 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tail.i, align 4
  %add.i = add i32 %sub.i, %5
  %6 = ptrtoint ptr %max_cnt.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_cnt.i, align 4
  %rem.i = urem i32 %add.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp7 = icmp eq i32 %rem.i, 0
  br i1 %cmp7, label %while.body.if.then_crit_edge, label %lor.lhs.false

while.body.if.then_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

lor.lhs.false:                                    ; preds = %while.body
  %num_sge = getelementptr inbounds %struct.ib_recv_wr, ptr %wr.addr.055, i32 0, i32 3
  %8 = ptrtoint ptr %num_sge to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_sge, align 4
  %10 = ptrtoint ptr %max_sges to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_sges, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp10 = icmp ugt i32 %9, %11
  br i1 %cmp10, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %while.body.if.then_crit_edge
  %12 = ptrtoint ptr %bad_wr to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %wr.addr.055, ptr %bad_wr, align 4
  br label %while.end

if.end:                                           ; preds = %lor.lhs.false
  %13 = ptrtoint ptr %bit_fields_len.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bit_fields_len.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp53.not.i = icmp eq i32 %14, 0
  br i1 %cmp53.not.i, label %if.end.do.body14.i_crit_edge, label %for.body.lr.ph.i

if.end.do.body14.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body14.i

for.body.lr.ph.i:                                 ; preds = %if.end
  %15 = ptrtoint ptr %idx_bit_fields.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %idx_bit_fields.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %row.054.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %16, i32 %row.054.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i, label %for.inc.i, label %if.then.i

if.then.i:                                        ; preds = %for.body.i
  %19 = tail call i32 @llvm.cttz.i32(i32 %18, i1 true) #13, !range !149
  %mul.i = shl i32 %row.054.i, 5
  %add.i35 = or i32 %19, %mul.i
  %20 = ptrtoint ptr %max_cnt.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %max_cnt.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i35, i32 %21)
  %cmp3.not.i = icmp ult i32 %add.i35, %21
  br i1 %cmp3.not.i, label %do.end12.i, label %do.body7.i, !prof !140

do.body7.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/infiniband/hw/ocrdma/ocrdma_verbs.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2273, 0\0A.popsection", ""() #13, !srcloc !150
  unreachable

do.end12.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %div2.i.i = and i32 %row.054.i, 134217727
  %shl.i.i = shl nuw i32 1, %19
  %arrayidx.i.i = getelementptr i32, ptr %16, i32 %div2.i.i
  %22 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i.i, align 4
  %xor.i.i = xor i32 %23, %shl.i.i
  store i32 %xor.i.i, ptr %arrayidx.i.i, align 4
  %phi.bo.i = add nuw i32 %add.i35, 1
  br label %do.body14.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %row.054.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %14
  br i1 %exitcond.not.i, label %for.inc.i.do.body14.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.do.body14.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body14.i

do.body14.i:                                      ; preds = %for.inc.i.do.body14.i_crit_edge, %do.end12.i, %if.end.do.body14.i_crit_edge
  %row.050.i = phi i32 [ %row.054.i, %do.end12.i ], [ 0, %if.end.do.body14.i_crit_edge ], [ %14, %for.inc.i.do.body14.i_crit_edge ]
  %indx.0.i = phi i32 [ %phi.bo.i, %do.end12.i ], [ 1, %if.end.do.body14.i_crit_edge ], [ 1, %for.inc.i.do.body14.i_crit_edge ]
  %24 = ptrtoint ptr %bit_fields_len.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bit_fields_len.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %row.050.i, i32 %25)
  %cmp16.i = icmp eq i32 %row.050.i, %25
  br i1 %cmp16.i, label %do.body24.i, label %ocrdma_srq_get_idx.exit, !prof !138

do.body24.i:                                      ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/infiniband/hw/ocrdma/ocrdma_verbs.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2279, 0\0A.popsection", ""() #13, !srcloc !151
  unreachable

ocrdma_srq_get_idx.exit:                          ; preds = %do.body14.i
  %26 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rq, align 4
  %28 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %head.i, align 4
  %30 = ptrtoint ptr %entry_size.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %entry_size.i, align 4
  %mul.i38 = mul i32 %31, %29
  %add.ptr.i = getelementptr i8, ptr %27, i32 %mul.i38
  %32 = ptrtoint ptr %num_sge to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num_sge, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i39 = icmp eq i32 %33, 0
  %mul.i40 = shl i32 %33, 4
  %add.i41 = add i32 %mul.i40, 16
  %wqe_size.0.i = select i1 %tobool.not.i39, i32 32, i32 %add.i41
  %34 = shl i32 %wqe_size.0.i, 15
  %or4.i = or i32 %34, 65568
  %35 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %or4.i, ptr %add.ptr.i, align 4
  %total_len.i = getelementptr inbounds %struct.ocrdma_hdr_wqe, ptr %add.ptr.i, i32 0, i32 3
  %36 = ptrtoint ptr %total_len.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %total_len.i, align 4
  %conv.i = and i32 %indx.0.i, 65535
  %37 = getelementptr inbounds %struct.ocrdma_hdr_wqe, ptr %add.ptr.i, i32 0, i32 1
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %conv.i, ptr %37, align 4
  %add.ptr.i42 = getelementptr %struct.ocrdma_hdr_wqe, ptr %add.ptr.i, i32 1
  %39 = ptrtoint ptr %num_sge to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %num_sge, align 4
  %sg_list.i = getelementptr inbounds %struct.ib_recv_wr, ptr %wr.addr.055, i32 0, i32 2
  %41 = ptrtoint ptr %sg_list.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %sg_list.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp34.i.i = icmp sgt i32 %40, 0
  br i1 %cmp34.i.i, label %ocrdma_srq_get_idx.exit.for.body.i.i_crit_edge, label %ocrdma_srq_get_idx.exit.for.end.i.i_crit_edge

ocrdma_srq_get_idx.exit.for.end.i.i_crit_edge:    ; preds = %ocrdma_srq_get_idx.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i.i

ocrdma_srq_get_idx.exit.for.body.i.i_crit_edge:   ; preds = %ocrdma_srq_get_idx.exit
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %ocrdma_srq_get_idx.exit.for.body.i.i_crit_edge
  %i.035.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %ocrdma_srq_get_idx.exit.for.body.i.i_crit_edge ]
  %arrayidx.i.i43 = getelementptr %struct.ib_sge, ptr %42, i32 %i.035.i.i
  %lkey.i.i = getelementptr %struct.ib_sge, ptr %42, i32 %i.035.i.i, i32 2
  %43 = ptrtoint ptr %lkey.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %lkey.i.i, align 4
  %arrayidx1.i.i = getelementptr %struct.ocrdma_sge, ptr %add.ptr.i42, i32 %i.035.i.i
  %lrkey.i.i = getelementptr %struct.ocrdma_sge, ptr %add.ptr.i42, i32 %i.035.i.i, i32 2
  %45 = ptrtoint ptr %lrkey.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %lrkey.i.i, align 4
  %46 = ptrtoint ptr %arrayidx.i.i43 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %arrayidx.i.i43, align 8
  %conv.i.i = trunc i64 %47 to i32
  %addr_lo.i.i = getelementptr %struct.ocrdma_sge, ptr %add.ptr.i42, i32 %i.035.i.i, i32 1
  %48 = ptrtoint ptr %addr_lo.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %conv.i.i, ptr %addr_lo.i.i, align 4
  %49 = load i64, ptr %arrayidx.i.i43, align 8
  %shr.i.i = lshr i64 %49, 32
  %conv7.i.i = trunc i64 %shr.i.i to i32
  %50 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %conv7.i.i, ptr %arrayidx1.i.i, align 4
  %length.i.i = getelementptr %struct.ib_sge, ptr %42, i32 %i.035.i.i, i32 1
  %51 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %length.i.i, align 8
  %len.i.i = getelementptr %struct.ocrdma_sge, ptr %add.ptr.i42, i32 %i.035.i.i, i32 3
  %53 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %len.i.i, align 4
  %54 = load i32, ptr %length.i.i, align 8
  %55 = ptrtoint ptr %total_len.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %total_len.i, align 4
  %add.i.i = add i32 %56, %54
  store i32 %add.i.i, ptr %total_len.i, align 4
  %inc.i.i = add nuw nsw i32 %i.035.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %40
  br i1 %exitcond.not.i.i, label %for.body.i.i.for.end.i.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.body.i.i.for.end.i.i_crit_edge, %ocrdma_srq_get_idx.exit.for.end.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp13.i.i = icmp eq i32 %40, 0
  br i1 %cmp13.i.i, label %if.then.i.i, label %for.end.i.i.ocrdma_build_sges.exit.i_crit_edge

for.end.i.i.ocrdma_build_sges.exit.i_crit_edge:   ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocrdma_build_sges.exit.i

if.then.i.i:                                      ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %57 = call ptr @memset(ptr %add.ptr.i42, i32 0, i32 16)
  br label %ocrdma_build_sges.exit.i

ocrdma_build_sges.exit.i:                         ; preds = %if.then.i.i, %for.end.i.i.ocrdma_build_sges.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wqe_size.0.i)
  %cmp7.not.i.i = icmp eq i32 %wqe_size.0.i, 0
  br i1 %cmp7.not.i.i, label %ocrdma_build_sges.exit.i.ocrdma_build_rqe.exit_crit_edge, label %for.body.preheader.i.i

ocrdma_build_sges.exit.i.ocrdma_build_rqe.exit_crit_edge: ; preds = %ocrdma_build_sges.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocrdma_build_rqe.exit

for.body.preheader.i.i:                           ; preds = %ocrdma_build_sges.exit.i
  %div6.i.i = lshr exact i32 %wqe_size.0.i, 2
  br label %for.body.i20.i

for.body.i20.i:                                   ; preds = %for.body.i20.i.for.body.i20.i_crit_edge, %for.body.preheader.i.i
  %i.08.i.i = phi i32 [ %inc.i18.i, %for.body.i20.i.for.body.i20.i_crit_edge ], [ 0, %for.body.preheader.i.i ]
  %add.ptr.i.i = getelementptr i32, ptr %add.ptr.i, i32 %i.08.i.i
  %58 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %add.ptr.i.i, align 4
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #13
  %61 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %add.ptr.i.i, align 4
  %inc.i18.i = add nuw nsw i32 %i.08.i.i, 1
  %exitcond.not.i19.i = icmp eq i32 %inc.i18.i, %div6.i.i
  br i1 %exitcond.not.i19.i, label %for.body.i20.i.ocrdma_build_rqe.exit_crit_edge, label %for.body.i20.i.for.body.i20.i_crit_edge

for.body.i20.i.for.body.i20.i_crit_edge:          ; preds = %for.body.i20.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i20.i

for.body.i20.i.ocrdma_build_rqe.exit_crit_edge:   ; preds = %for.body.i20.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocrdma_build_rqe.exit

ocrdma_build_rqe.exit:                            ; preds = %for.body.i20.i.ocrdma_build_rqe.exit_crit_edge, %ocrdma_build_sges.exit.i.ocrdma_build_rqe.exit_crit_edge
  %62 = getelementptr inbounds %struct.ib_recv_wr, ptr %wr.addr.055, i32 0, i32 1
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %62, align 8
  %65 = ptrtoint ptr %rqe_wr_id_tbl to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %rqe_wr_id_tbl, align 8
  %arrayidx = getelementptr i64, ptr %66, i32 %conv.i
  %67 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 %64, ptr %arrayidx, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !152
  tail call void @arm_heavy_mb() #13
  %68 = ptrtoint ptr %dbid.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %dbid.i, align 4
  %conv.i44 = zext i16 %69 to i32
  %or.i = or i32 %conv.i44, 65536
  %70 = ptrtoint ptr %db.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %db.i, align 4
  %add.ptr.i45 = getelementptr i8, ptr %71, i32 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !146
  tail call void @arm_heavy_mb() #13
  %72 = tail call i32 @llvm.bswap.i32(i32 %or.i) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i45, i32 %72) #13, !srcloc !147
  %73 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %head.i, align 4
  %add.i47 = add i32 %74, 1
  %75 = ptrtoint ptr %max_wqe_idx.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %max_wqe_idx.i, align 4
  %and.i = and i32 %add.i47, %76
  store i32 %and.i, ptr %head.i, align 4
  %77 = ptrtoint ptr %wr.addr.055 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %wr.addr.055, align 8
  %tobool.not = icmp eq ptr %78, null
  br i1 %tobool.not, label %ocrdma_build_rqe.exit.while.end_crit_edge, label %ocrdma_build_rqe.exit.while.body_crit_edge

ocrdma_build_rqe.exit.while.body_crit_edge:       ; preds = %ocrdma_build_rqe.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

ocrdma_build_rqe.exit.while.end_crit_edge:        ; preds = %ocrdma_build_rqe.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %ocrdma_build_rqe.exit.while.end_crit_edge, %if.then, %entry.while.end_crit_edge
  %status.0 = phi i32 [ -12, %if.then ], [ 0, %entry.while.end_crit_edge ], [ 0, %ocrdma_build_rqe.exit.while.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %q_lock, i32 noundef %call3) #13
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocrdma_poll_cq(ptr noundef %ibcq, i32 noundef %num_entries, ptr noundef %wc) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ibcq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ibcq, align 8
  %cq_lock = getelementptr inbounds %struct.ocrdma_cq, ptr %ibcq, i32 0, i32 7
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cq_lock) #13
  %2 = ptrtoint ptr %ibcq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ibcq, align 128
  %getp.i = getelementptr inbounds %struct.ocrdma_cq, ptr %ibcq, i32 0, i32 3
  %4 = ptrtoint ptr %getp.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %getp.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_entries)
  %tobool.not168.i = icmp eq i32 %num_entries, 0
  br i1 %tobool.not168.i, label %stop_cqe.thread.i, label %while.body.lr.ph.i

stop_cqe.thread.i:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %conv44208.i = and i32 %5, 65535
  %6 = ptrtoint ptr %getp.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv44208.i, ptr %getp.i, align 8
  br label %ocrdma_poll_hwcq.exit

while.body.lr.ph.i:                               ; preds = %entry
  %conv.i = trunc i32 %5 to i16
  %va.i = getelementptr inbounds %struct.ocrdma_cq, ptr %ibcq, i32 0, i32 1
  %phase.i.i = getelementptr inbounds %struct.ocrdma_cq, ptr %ibcq, i32 0, i32 2
  %qp_tbl.i = getelementptr inbounds %struct.ocrdma_dev, ptr %3, i32 0, i32 6
  %max_hw_cqe.i = getelementptr inbounds %struct.ocrdma_cq, ptr %ibcq, i32 0, i32 4
  %phase_change.i.i = getelementptr inbounds %struct.ocrdma_cq, ptr %ibcq, i32 0, i32 5
  br label %while.body.i

while.body.i:                                     ; preds = %if.end43.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %cur_getp.0187.i = phi i16 [ %conv.i, %while.body.lr.ph.i ], [ %cur_getp.1151.i, %if.end43.i.while.body.i_crit_edge ]
  %polled_hw_cqes.0184.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %polled_hw_cqes.1149.i, %if.end43.i.while.body.i_crit_edge ]
  %i.0177.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %i.1.i, %if.end43.i.while.body.i_crit_edge ]
  %ibwc.addr.0173.i = phi ptr [ %wc, %while.body.lr.ph.i ], [ %ibwc.addr.1.i, %if.end43.i.while.body.i_crit_edge ]
  %num_entries.addr.0169.i = phi i32 [ %num_entries, %while.body.lr.ph.i ], [ %num_entries.addr.1.i, %if.end43.i.while.body.i_crit_edge ]
  %7 = ptrtoint ptr %va.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %va.i, align 16
  %conv1.i = zext i16 %cur_getp.0187.i to i32
  %add.ptr.i = getelementptr %struct.ocrdma_cqe, ptr %8, i32 %conv1.i
  %flags_status_srcqpn.i.i = getelementptr %struct.ocrdma_cqe, ptr %8, i32 %conv1.i, i32 1
  %9 = ptrtoint ptr %flags_status_srcqpn.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags_status_srcqpn.i.i, align 4
  %11 = shl i32 %10, 24
  %12 = and i32 %11, -2147483648
  %13 = ptrtoint ptr %phase.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %phase.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp.i.not.i = icmp eq i32 %12, %14
  br i1 %cmp.i.not.i, label %if.end.i, label %while.body.i.stop_cqe.i_crit_edge

while.body.i.stop_cqe.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %stop_cqe.i

if.end.i:                                         ; preds = %while.body.i
  %qpn4.i = getelementptr inbounds %struct.anon.193, ptr %add.ptr.i, i32 0, i32 2
  %15 = ptrtoint ptr %qpn4.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %qpn4.i, align 4
  %17 = and i32 %16, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.i = icmp eq i32 %17, 0
  br i1 %cmp.i, label %if.end.i.skip_cqe.i_crit_edge, label %if.end9.i

if.end.i.skip_cqe.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %skip_cqe.i

if.end9.i:                                        ; preds = %if.end.i
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #13
  %19 = ptrtoint ptr %qp_tbl.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %qp_tbl.i, align 16
  %arrayidx.i = getelementptr ptr, ptr %20, i32 %18
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i, align 4
  %cmp10.i = icmp eq ptr %22, null
  br i1 %cmp10.i, label %do.body15.i, label %do.end21.i, !prof !138

do.body15.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/infiniband/hw/ocrdma/ocrdma_verbs.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2776, 0\0A.popsection", ""() #13, !srcloc !153
  unreachable

do.end21.i:                                       ; preds = %if.end9.i
  %23 = and i32 %10, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool23.not.not.i = icmp eq i32 %23, 0
  br i1 %tobool23.not.not.i, label %if.then24.i, label %if.else.i

if.then24.i:                                      ; preds = %do.end21.i
  %24 = and i32 %10, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.i78.i = icmp eq i32 %24, 0
  br i1 %cmp.i78.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then24.i
  %tail1.i.i.i = getelementptr inbounds %struct.ocrdma_qp, ptr %22, i32 0, i32 2, i32 3
  %25 = ptrtoint ptr %tail1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tail1.i.i.i, align 4
  %wqe_wr_id_tbl.i.i.i = getelementptr inbounds %struct.ocrdma_qp, ptr %22, i32 0, i32 3
  %27 = ptrtoint ptr %wqe_wr_id_tbl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %wqe_wr_id_tbl.i.i.i, align 8
  %signaled.i.i.i = getelementptr %struct.anon.195, ptr %28, i32 %26, i32 3
  %29 = ptrtoint ptr %signaled.i.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %signaled.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i.i.i = icmp eq i8 %30, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.ocrdma_poll_success_scqe.exit.i.i_crit_edge, label %if.else.i.i.i

if.then.i.i.ocrdma_poll_success_scqe.exit.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocrdma_poll_success_scqe.exit.i.i

if.else.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %status.i.i.i = getelementptr inbounds %struct.ib_wc, ptr %ibwc.addr.0173.i, i32 0, i32 1
  %31 = ptrtoint ptr %status.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %status.i.i.i, align 8
  %wc_flags.i.i.i = getelementptr inbounds %struct.ib_wc, ptr %ibwc.addr.0173.i, i32 0, i32 9
  %32 = ptrtoint ptr %wc_flags.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %wc_flags.i.i.i, align 8
  %qp2.i.i.i = getelementptr inbounds %struct.ib_wc, ptr %ibwc.addr.0173.i, i32 0, i32 5
  %33 = ptrtoint ptr %qp2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %22, ptr %qp2.i.i.i, align 8
  tail call fastcc void @ocrdma_update_wc(ptr noundef nonnull %22, ptr noundef %ibwc.addr.0173.i, i32 noundef %26) #13
  br label %ocrdma_poll_success_scqe.exit.i.i

ocrdma_poll_success_scqe.exit.i.i:                ; preds = %if.else.i.i.i, %if.then.i.i.ocrdma_poll_success_scqe.exit.i.i_crit_edge
  %storemerge.i.i.i = phi i8 [ 1, %if.else.i.i.i ], [ 0, %if.then.i.i.ocrdma_poll_success_scqe.exit.i.i_crit_edge ]
  %34 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %add.ptr.i, align 4
  %36 = and i32 %35, -65536
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #13
  %max_wqe_idx.i.i.i = getelementptr inbounds %struct.ocrdma_qp, ptr %22, i32 0, i32 2, i32 6
  %38 = ptrtoint ptr %max_wqe_idx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %max_wqe_idx.i.i.i, align 8
  %and4.i.i.i = and i32 %37, %39
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %and4.i.i.i)
  %cmp.not.i.i.not.i = icmp eq i32 %26, %and4.i.i.i
  %40 = ptrtoint ptr %tail1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tail1.i.i.i, align 4
  %add.i.i.i.i = add i32 %41, 1
  %and.i.i.i.i = and i32 %add.i.i.i.i, %39
  store i32 %and.i.i.i.i, ptr %tail1.i.i.i, align 4
  br i1 %cmp.not.i.i.not.i, label %ocrdma_poll_success_scqe.exit.i.i.if.end34.i_crit_edge, label %ocrdma_poll_success_scqe.exit.i.i.expand_cqe.i_crit_edge

ocrdma_poll_success_scqe.exit.i.i.expand_cqe.i_crit_edge: ; preds = %ocrdma_poll_success_scqe.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %expand_cqe.i

ocrdma_poll_success_scqe.exit.i.i.if.end34.i_crit_edge: ; preds = %ocrdma_poll_success_scqe.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34.i

if.else.i.i:                                      ; preds = %if.then24.i
  %42 = lshr i32 %10, 8
  %shr.i.i.i = and i32 %42, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %shr.i.i.i)
  %cmp.i.i.i = icmp ult i32 %shr.i.i.i, 22
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.else.i.i.if.end.i.i.i_crit_edge

if.else.i.i.if.end.i.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %43 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %22, align 128
  %arrayidx.i.i.i = getelementptr %struct.ocrdma_dev, ptr %44, i32 0, i32 49, i32 %shr.i.i.i
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i.i.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %arrayidx.i.i.i, i32 1, i32 3, i32 1) #13
  %45 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx.i.i.i, ptr %arrayidx.i.i.i, i32 1, ptr elementtype(i32) %arrayidx.i.i.i) #13, !srcloc !154
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i, %if.else.i.i.if.end.i.i.i_crit_edge
  %tail.i.i.i.i = getelementptr inbounds %struct.ocrdma_qp, ptr %22, i32 0, i32 2, i32 3
  %46 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %tail.i.i.i.i, align 4
  %head.i.i.i.i = getelementptr inbounds %struct.ocrdma_qp, ptr %22, i32 0, i32 2, i32 2
  %48 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %head.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %49)
  %cmp.i.not.i.i.i = icmp eq i32 %47, %49
  br i1 %cmp.i.not.i.i.i, label %land.lhs.true.i.i.i, label %if.else16.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i.i.i
  %tail.i41.i.i.i = getelementptr inbounds %struct.ocrdma_qp, ptr %22, i32 0, i32 10, i32 3
  %50 = ptrtoint ptr %tail.i41.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %tail.i41.i.i.i, align 4
  %head.i42.i.i.i = getelementptr inbounds %struct.ocrdma_qp, ptr %22, i32 0, i32 10, i32 2
  %52 = ptrtoint ptr %head.i42.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %head.i42.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %53)
  %cmp.i43.not.i.i.i = icmp eq i32 %51, %53
  br i1 %cmp.i43.not.i.i.i, label %land.lhs.true.i.i.i.if.end34.i_crit_edge, label %if.then4.i.i.i

land.lhs.true.i.i.i.if.end34.i_crit_edge:         ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34.i

if.then4.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  %srq.i.i.i = getelementptr inbounds %struct.ocrdma_qp, ptr %22, i32 0, i32 13
  %54 = ptrtoint ptr %srq.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %srq.i.i.i, align 4
  %tobool5.not.i.i.i = icmp eq ptr %55, null
  br i1 %tobool5.not.i.i.i, label %land.lhs.true6.i.i.i, label %if.then4.i.i.i.stop_cqe.i_crit_edge

if.then4.i.i.i.stop_cqe.i_crit_edge:              ; preds = %if.then4.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %stop_cqe.i

land.lhs.true6.i.i.i:                             ; preds = %if.then4.i.i.i
  %sq_cq.i.i.i = getelementptr inbounds %struct.ocrdma_qp, ptr %22, i32 0, i32 7
  %56 = ptrtoint ptr %sq_cq.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %sq_cq.i.i.i, align 4
  %rq_cq.i.i.i = getelementptr inbounds %struct.ocrdma_qp, ptr %22, i32 0, i32 12
  %58 = ptrtoint ptr %rq_cq.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %rq_cq.i.i.i, align 8
  %cmp7.i.i.i = icmp eq ptr %57, %59
  br i1 %cmp7.i.i.i, label %if.then8.i.i.i, label %land.lhs.true6.i.i.i.stop_cqe.i_crit_edge

land.lhs.true6.i.i.i.stop_cqe.i_crit_edge:        ; preds = %land.lhs.true6.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %stop_cqe.i

if.then8.i.i.i:                                   ; preds = %land.lhs.true6.i.i.i
  %opcode.i.i.i.i = getelementptr inbounds %struct.ib_wc, ptr %ibwc.addr.0173.i, i32 0, i32 2
  %60 = ptrtoint ptr %opcode.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 128, ptr %opcode.i.i.i.i, align 4
  %rqe_wr_id_tbl.i.i.i.i = getelementptr inbounds %struct.ocrdma_qp, ptr %22, i32 0, i32 11
  %61 = ptrtoint ptr %rqe_wr_id_tbl.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %rqe_wr_id_tbl.i.i.i.i, align 4
  %63 = ptrtoint ptr %tail.i41.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %tail.i41.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr i64, ptr %62, i32 %64
  %65 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %arrayidx.i.i.i.i, align 8
  %67 = ptrtoint ptr %ibwc.addr.0173.i to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 %66, ptr %ibwc.addr.0173.i, align 8
  %68 = load i32, ptr %tail.i41.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %68, 1
  %max_wqe_idx.i.i.i.i.i = getelementptr inbounds %struct.ocrdma_qp, ptr %22, i32 0, i32 10, i32 6
  %69 = ptrtoint ptr %max_wqe_idx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %max_wqe_idx.i.i.i.i.i, align 4
  %and.i.i.i.i.i = and i32 %add.i.i.i.i.i, %70
  store i32 %and.i.i.i.i.i, ptr %tail.i41.i.i.i, align 4
  %byte_len.i.i.i.i = getelementptr inbounds %struct.ib_wc, ptr %ibwc.addr.0173.i, i32 0, i32 4
  %71 = ptrtoint ptr %byte_len.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %byte_len.i.i.i.i, align 4
  %qp1.i.i.i.i = getelementptr inbounds %struct.ib_wc, ptr %ibwc.addr.0173.i, i32 0, i32 5
  %72 = ptrtoint ptr %qp1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %22, ptr %qp1.i.i.i.i, align 8
  %status2.i.i.i.i = getelementptr inbounds %struct.ib_wc, ptr %ibwc.addr.0173.i, i32 0, i32 1
  %73 = ptrtoint ptr %status2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 5, ptr %status2.i.i.i.i, align 8
  tail call void @ocrdma_flush_qp(ptr noundef nonnull %22) #13
  %call3.i.i.i.i = tail call i32 @ocrdma_qp_state_change(ptr noundef nonnull %22, i32 noundef 6, ptr noundef null) #13
  %74 = ptrtoint ptr %tail.i41.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %tail.i41.i.i.i, align 4
  %76 = ptrtoint ptr %head.i42.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %head.i42.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %75, i32 %77)
  %cmp.i.not.i.i.i.i = icmp eq i32 %75, %77
  br i1 %cmp.i.not.i.i.i.i, label %lor.lhs.false.i.i.i.i, label %if.then8.i.i.i.if.then.i.i.i.i_crit_edge

if.then8.i.i.i.if.then.i.i.i.i_crit_edge:         ; preds = %if.then8.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i.i.i

lor.lhs.false.i.i.i.i:                            ; preds = %if.then8.i.i.i
  %78 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %tail.i.i.i.i, align 4
  %80 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %head.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %79, i32 %81)
  %cmp.i17.not.i.i.i.i = icmp eq i32 %79, %81
  br i1 %cmp.i17.not.i.i.i.i, label %lor.lhs.false.i.i.i.i.if.end34.i_crit_edge, label %lor.lhs.false.i.i.i.i.if.then.i.i.i.i_crit_edge

lor.lhs.false.i.i.i.i.if.then.i.i.i.i_crit_edge:  ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i.i.i

lor.lhs.false.i.i.i.i.if.end34.i_crit_edge:       ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34.i

if.then.i.i.i.i:                                  ; preds = %lor.lhs.false.i.i.i.i.if.then.i.i.i.i_crit_edge, %if.then8.i.i.i.if.then.i.i.i.i_crit_edge
  %82 = ptrtoint ptr %flags_status_srcqpn.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %flags_status_srcqpn.i.i, align 4
  %84 = and i32 %83, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool.not.not.i.i.i.i.i = icmp eq i32 %84, 0
  br i1 %tobool.not.not.i.i.i.i.i, label %if.then.i.i.i.i.ocrdma_set_cqe_status_flushed.exit.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i

if.then.i.i.i.i.ocrdma_set_cqe_status_flushed.exit.i.i.i.i_crit_edge: ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocrdma_set_cqe_status_flushed.exit.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i.i.i.i
  %qp_type.i.i.i.i.i = getelementptr inbounds %struct.ocrdma_qp, ptr %22, i32 0, i32 21
  %85 = ptrtoint ptr %qp_type.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %qp_type.i.i.i.i.i, align 16
  %87 = zext i32 %86 to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %86, label %if.else13.i.i.i.i.i [
    i32 4, label %if.else.i.i.i.i.i.ocrdma_set_cqe_status_flushed.exit.i.i.i.i_crit_edge
    i32 1, label %if.else.i.i.i.i.i.ocrdma_set_cqe_status_flushed.exit.i.i.i.i_crit_edge120
  ]

if.else.i.i.i.i.i.ocrdma_set_cqe_status_flushed.exit.i.i.i.i_crit_edge120: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocrdma_set_cqe_status_flushed.exit.i.i.i.i

if.else.i.i.i.i.i.ocrdma_set_cqe_status_flushed.exit.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocrdma_set_cqe_status_flushed.exit.i.i.i.i

if.else13.i.i.i.i.i:                              ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocrdma_set_cqe_status_flushed.exit.i.i.i.i

ocrdma_set_cqe_status_flushed.exit.i.i.i.i:       ; preds = %if.else13.i.i.i.i.i, %if.else.i.i.i.i.i.ocrdma_set_cqe_status_flushed.exit.i.i.i.i_crit_edge, %if.else.i.i.i.i.i.ocrdma_set_cqe_status_flushed.exit.i.i.i.i_crit_edge120, %if.then.i.i.i.i.ocrdma_set_cqe_status_flushed.exit.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ -65281, %if.else13.i.i.i.i.i ], [ -65281, %if.then.i.i.i.i.ocrdma_set_cqe_status_flushed.exit.i.i.i.i_crit_edge ], [ -8, %if.else.i.i.i.i.i.ocrdma_set_cqe_status_flushed.exit.i.i.i.i_crit_edge ], [ -8, %if.else.i.i.i.i.i.ocrdma_set_cqe_status_flushed.exit.i.i.i.i_crit_edge120 ]
  %.sink35.i.i.i.i.i = phi i32 [ 1280, %if.else13.i.i.i.i.i ], [ 1280, %if.then.i.i.i.i.ocrdma_set_cqe_status_flushed.exit.i.i.i.i_crit_edge ], [ 5, %if.else.i.i.i.i.i.ocrdma_set_cqe_status_flushed.exit.i.i.i.i_crit_edge ], [ 5, %if.else.i.i.i.i.i.ocrdma_set_cqe_status_flushed.exit.i.i.i.i_crit_edge120 ]
  %88 = and i32 %.sink.i.i.i.i.i, %83
  %89 = or i32 %88, %.sink35.i.i.i.i.i
  br label %if.then40.sink.split.i

if.else16.i.i.i:                                  ; preds = %if.end.i.i.i
  tail call fastcc void @ocrdma_update_wc(ptr noundef nonnull %22, ptr noundef %ibwc.addr.0173.i, i32 noundef %47) #13
  %90 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %tail.i.i.i.i, align 4
  %add.i.i52.i.i.i = add i32 %91, 1
  %max_wqe_idx.i.i53.i.i.i = getelementptr inbounds %struct.ocrdma_qp, ptr %22, i32 0, i32 2, i32 6
  %92 = ptrtoint ptr %max_wqe_idx.i.i53.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %max_wqe_idx.i.i53.i.i.i, align 4
  %and.i.i54.i.i.i = and i32 %add.i.i52.i.i.i, %93
  store i32 %and.i.i54.i.i.i, ptr %tail.i.i.i.i, align 4
  %call.i55.i.i.i = tail call fastcc zeroext i1 @ocrdma_update_err_cqe(ptr noundef %ibwc.addr.0173.i, ptr noundef %add.ptr.i, ptr noundef nonnull %22, i32 noundef %shr.i.i.i) #13
  br i1 %call.i55.i.i.i, label %if.else16.i.i.i.if.then40.i_crit_edge, label %if.else16.i.i.i.if.end34.i_crit_edge

if.else16.i.i.i.if.end34.i_crit_edge:             ; preds = %if.else16.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34.i

if.else16.i.i.i.if.then40.i_crit_edge:            ; preds = %if.else16.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then40.i

if.else.i:                                        ; preds = %do.end21.i
  %wc_flags.i.i = getelementptr inbounds %struct.ib_wc, ptr %ibwc.addr.0173.i, i32 0, i32 9
  %94 = ptrtoint ptr %wc_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 0, ptr %wc_flags.i.i, align 8
  %qp_type.i.i = getelementptr inbounds %struct.ocrdma_qp, ptr %22, i32 0, i32 21
  %95 = ptrtoint ptr %qp_type.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %qp_type.i.i, align 16
  %97 = zext i32 %96 to i64
  call void @__sanitizer_cov_trace_switch(i64 %97, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %96, label %if.else.i81.i [
    i32 4, label %if.else.i.if.then.i80.i_crit_edge
    i32 1, label %if.else.i.if.then.i80.i_crit_edge121
  ]

if.else.i.if.then.i80.i_crit_edge121:             ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i80.i

if.else.i.if.then.i80.i_crit_edge:                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i80.i

if.then.i80.i:                                    ; preds = %if.else.i.if.then.i80.i_crit_edge, %if.else.i.if.then.i80.i_crit_edge121
  %98 = ptrtoint ptr %flags_status_srcqpn.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %flags_status_srcqpn.i.i, align 4
  %and.i.i = and i32 %99, 7
  br label %if.end.i.i

if.else.i81.i:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  %100 = ptrtoint ptr %flags_status_srcqpn.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %flags_status_srcqpn.i.i, align 4
  %102 = lshr i32 %101, 8
  %shr5.i.i = and i32 %102, 255
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i81.i, %if.then.i80.i
  %status.0.i.i = phi i32 [ %and.i.i, %if.then.i80.i ], [ %shr5.i.i, %if.else.i81.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.0.i.i)
  %cmp6.i.i = icmp eq i32 %status.0.i.i, 0
  br i1 %cmp6.i.i, label %if.then7.i.i, label %if.else8.i.i

if.then7.i.i:                                     ; preds = %if.end.i.i
  %103 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %22, align 128
  %opcode.i.i.i = getelementptr inbounds %struct.ib_wc, ptr %ibwc.addr.0173.i, i32 0, i32 2
  %105 = ptrtoint ptr %opcode.i.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 128, ptr %opcode.i.i.i, align 4
  %qp2.i.i82.i = getelementptr inbounds %struct.ib_wc, ptr %ibwc.addr.0173.i, i32 0, i32 5
  %106 = ptrtoint ptr %qp2.i.i82.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %22, ptr %qp2.i.i82.i, align 8
  %status.i.i83.i = getelementptr inbounds %struct.ib_wc, ptr %ibwc.addr.0173.i, i32 0, i32 1
  %107 = ptrtoint ptr %status.i.i83.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 0, ptr %status.i.i83.i, align 8
  %108 = ptrtoint ptr %qp_type.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %qp_type.i.i, align 16
  %110 = zext i32 %109 to i64
  call void @__sanitizer_cov_trace_switch(i64 %110, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %109, label %if.else.i.i87.i [
    i32 4, label %if.then7.i.i.if.then.i.i85.i_crit_edge
    i32 1, label %if.then7.i.i.if.then.i.i85.i_crit_edge122
  ]

if.then7.i.i.if.then.i.i85.i_crit_edge122:        ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i85.i

if.then7.i.i.if.then.i.i85.i_crit_edge:           ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i85.i

if.then.i.i85.i:                                  ; preds = %if.then7.i.i.if.then.i.i85.i_crit_edge, %if.then7.i.i.if.then.i.i85.i_crit_edge122
  %111 = ptrtoint ptr %flags_status_srcqpn.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %flags_status_srcqpn.i.i, align 4
  %113 = and i32 %112, -256
  %114 = tail call i32 @llvm.bswap.i32(i32 %113) #13
  %src_qp.i.i.i.i = getelementptr inbounds %struct.ib_wc, ptr %ibwc.addr.0173.i, i32 0, i32 7
  %115 = ptrtoint ptr %src_qp.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %src_qp.i.i.i.i, align 8
  %pkey_index.i.i.i.i = getelementptr inbounds %struct.ib_wc, ptr %ibwc.addr.0173.i, i32 0, i32 10
  %116 = ptrtoint ptr %pkey_index.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 0, ptr %pkey_index.i.i.i.i, align 4
  %117 = ptrtoint ptr %wc_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 1, ptr %wc_flags.i.i, align 8
  %rxlen_pkey.i.i.i.i = getelementptr inbounds %struct.anon.192, ptr %add.ptr.i, i32 0, i32 1
  %118 = ptrtoint ptr %rxlen_pkey.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %rxlen_pkey.i.i.i.i, align 4
  %120 = tail call i32 @llvm.bswap.i32(i32 %119) #13
  %shr3.i.i.i.i = lshr i32 %120, 16
  %and4.i.i.i.i = and i32 %shr3.i.i.i.i, 8191
  %byte_len.i.i.i84.i = getelementptr inbounds %struct.ib_wc, ptr %ibwc.addr.0173.i, i32 0, i32 4
  %121 = ptrtoint ptr %byte_len.i.i.i84.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %and4.i.i.i.i, ptr %byte_len.i.i.i84.i, align 4
  %udp_encap.i.i.i.i.i = getelementptr inbounds %struct.ocrdma_dev, ptr %104, i32 0, i32 1, i32 33
  %122 = ptrtoint ptr %udp_encap.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %udp_encap.i.i.i.i.i, align 1
  %124 = and i8 %123, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %124)
  %.not.i.i.i.i = icmp eq i8 %124, 0
  br i1 %.not.i.i.i.i, label %if.then.i.i85.i.if.end.i.i89.i_crit_edge, label %if.then.i.i.i86.i

if.then.i.i85.i.if.end.i.i89.i_crit_edge:         ; preds = %if.then.i.i85.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i89.i

if.then.i.i.i86.i:                                ; preds = %if.then.i.i85.i
  call void @__sanitizer_cov_trace_pc() #15
  %125 = ptrtoint ptr %rxlen_pkey.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %rxlen_pkey.i.i.i.i, align 4
  %127 = ptrtoint ptr %wc_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 65, ptr %wc_flags.i.i, align 8
  %128 = trunc i32 %126 to i8
  %129 = lshr i8 %128, 5
  %network_hdr_type.i.i.i.i = getelementptr inbounds %struct.ib_wc, ptr %ibwc.addr.0173.i, i32 0, i32 16
  %130 = ptrtoint ptr %network_hdr_type.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 %129, ptr %network_hdr_type.i.i.i.i, align 4
  br label %if.end.i.i89.i

if.else.i.i87.i:                                  ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %rxlen.i.i.i = getelementptr inbounds %struct.anon.191, ptr %add.ptr.i, i32 0, i32 1
  %131 = ptrtoint ptr %rxlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %rxlen.i.i.i, align 4
  %133 = tail call i32 @llvm.bswap.i32(i32 %132) #13
  %byte_len.i.i.i = getelementptr inbounds %struct.ib_wc, ptr %ibwc.addr.0173.i, i32 0, i32 4
  %134 = ptrtoint ptr %byte_len.i.i.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %133, ptr %byte_len.i.i.i, align 4
  br label %if.end.i.i89.i

if.end.i.i89.i:                                   ; preds = %if.else.i.i87.i, %if.then.i.i.i86.i, %if.then.i.i85.i.if.end.i.i89.i_crit_edge
  %135 = ptrtoint ptr %flags_status_srcqpn.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %flags_status_srcqpn.i.i, align 4
  %137 = and i32 %136, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %137)
  %tobool.not.i.i88.i = icmp eq i32 %137, 0
  br i1 %tobool.not.i.i88.i, label %if.else8.i.i.i, label %if.end.i.i89.i.if.end27.sink.split.i.i.i_crit_edge

if.end.i.i89.i.if.end27.sink.split.i.i.i_crit_edge: ; preds = %if.end.i.i89.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27.sink.split.i.i.i

if.else8.i.i.i:                                   ; preds = %if.end.i.i89.i
  %138 = and i32 %136, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %tobool10.not.i.i.i = icmp eq i32 %138, 0
  br i1 %tobool10.not.i.i.i, label %if.else17.i.i.i, label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.else8.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %139 = ptrtoint ptr %opcode.i.i.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 129, ptr %opcode.i.i.i, align 4
  br label %if.end27.sink.split.i.i.i

if.else17.i.i.i:                                  ; preds = %if.else8.i.i.i
  %140 = and i32 %136, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %140)
  %tobool19.not.i.i.i = icmp eq i32 %140, 0
  br i1 %tobool19.not.i.i.i, label %if.else17.i.i.i.if.end27.i.i.i_crit_edge, label %if.else17.i.i.i.if.end27.sink.split.i.i.i_crit_edge

if.else17.i.i.i.if.end27.sink.split.i.i.i_crit_edge: ; preds = %if.else17.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27.sink.split.i.i.i

if.else17.i.i.i.if.end27.i.i.i_crit_edge:         ; preds = %if.else17.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27.i.i.i

if.end27.sink.split.i.i.i:                        ; preds = %if.else17.i.i.i.if.end27.sink.split.i.i.i_crit_edge, %if.then11.i.i.i, %if.end.i.i89.i.if.end27.sink.split.i.i.i_crit_edge
  %.sink70.i.i.i = phi i32 [ 2, %if.then11.i.i.i ], [ 2, %if.end.i.i89.i.if.end27.sink.split.i.i.i_crit_edge ], [ 4, %if.else17.i.i.i.if.end27.sink.split.i.i.i_crit_edge ]
  %141 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %add.ptr.i, align 4
  %143 = tail call i32 @llvm.bswap.i32(i32 %142) #13
  %ex.i.i.i = getelementptr inbounds %struct.ib_wc, ptr %ibwc.addr.0173.i, i32 0, i32 6
  %144 = ptrtoint ptr %ex.i.i.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %143, ptr %ex.i.i.i, align 4
  %145 = ptrtoint ptr %wc_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %wc_flags.i.i, align 8
  %or16.i.i.i = or i32 %146, %.sink70.i.i.i
  store i32 %or16.i.i.i, ptr %wc_flags.i.i, align 8
  br label %if.end27.i.i.i

if.end27.i.i.i:                                   ; preds = %if.end27.sink.split.i.i.i, %if.else17.i.i.i.if.end27.i.i.i_crit_edge
  %srq.i.i90.i = getelementptr inbounds %struct.ib_qp, ptr %22, i32 0, i32 8
  %147 = ptrtoint ptr %srq.i.i90.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %srq.i.i90.i, align 16
  %tobool29.not.i.i.i = icmp eq ptr %148, null
  br i1 %tobool29.not.i.i.i, label %if.else31.i.i.i, label %if.then30.i.i.i

if.then30.i.i.i:                                  ; preds = %if.end27.i.i.i
  %149 = ptrtoint ptr %qpn4.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %qpn4.i, align 4
  %151 = tail call i32 @llvm.bswap.i32(i32 %150) #13
  %shr.i.i.i.i = lshr i32 %151, 16
  %max_wqe_idx.i.i.i.i = getelementptr inbounds %struct.ocrdma_srq, ptr %148, i32 0, i32 2, i32 6
  %152 = ptrtoint ptr %max_wqe_idx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %max_wqe_idx.i.i.i.i, align 8
  %and.i.i.i91.i = and i32 %shr.i.i.i.i, %153
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i91.i)
  %cmp.i.i.i.i = icmp eq i32 %and.i.i.i91.i, 0
  br i1 %cmp.i.i.i.i, label %do.body3.i.i.i.i, label %ocrdma_update_free_srq_cqe.exit.i.i.i, !prof !138

do.body3.i.i.i.i:                                 ; preds = %if.then30.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/infiniband/hw/ocrdma/ocrdma_verbs.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2637, 0\0A.popsection", ""() #13, !srcloc !155
  unreachable

ocrdma_update_free_srq_cqe.exit.i.i.i:            ; preds = %if.then30.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %rqe_wr_id_tbl.i.i.i92.i = getelementptr inbounds %struct.ocrdma_srq, ptr %148, i32 0, i32 3
  %154 = ptrtoint ptr %rqe_wr_id_tbl.i.i.i92.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %rqe_wr_id_tbl.i.i.i92.i, align 8
  %arrayidx.i.i.i93.i = getelementptr i64, ptr %155, i32 %and.i.i.i91.i
  %156 = ptrtoint ptr %arrayidx.i.i.i93.i to i32
  call void @__asan_load8_noabort(i32 %156)
  %157 = load i64, ptr %arrayidx.i.i.i93.i, align 8
  %158 = ptrtoint ptr %ibwc.addr.0173.i to i32
  call void @__asan_store8_noabort(i32 %158)
  store i64 %157, ptr %ibwc.addr.0173.i, align 8
  %q_lock.i.i.i.i = getelementptr inbounds %struct.ocrdma_srq, ptr %148, i32 0, i32 7
  %call13.i.i.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %q_lock.i.i.i.i) #13
  %sub.i.i.i.i = add nsw i32 %and.i.i.i91.i, -1
  %div2.i.i.i.i.i = lshr i32 %sub.i.i.i.i, 5
  %rem.i.i.i.i.i = and i32 %sub.i.i.i.i, 31
  %shl.i.i.i.i.i = shl nuw i32 1, %rem.i.i.i.i.i
  %idx_bit_fields.i.i.i.i.i = getelementptr inbounds %struct.ocrdma_srq, ptr %148, i32 0, i32 4
  %159 = ptrtoint ptr %idx_bit_fields.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %idx_bit_fields.i.i.i.i.i, align 4
  %arrayidx.i.i.i.i.i = getelementptr i32, ptr %160, i32 %div2.i.i.i.i.i
  %161 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %arrayidx.i.i.i.i.i, align 4
  %xor.i.i.i.i.i = xor i32 %162, %shl.i.i.i.i.i
  store i32 %xor.i.i.i.i.i, ptr %arrayidx.i.i.i.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %q_lock.i.i.i.i, i32 noundef %call13.i.i.i.i) #13
  %tail.i.i.i.i.i = getelementptr inbounds %struct.ocrdma_srq, ptr %148, i32 0, i32 2, i32 3
  br label %ocrdma_poll_success_rcqe.exit.i.i

if.else31.i.i.i:                                  ; preds = %if.end27.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %rqe_wr_id_tbl.i.i.i = getelementptr inbounds %struct.ocrdma_qp, ptr %22, i32 0, i32 11
  %163 = ptrtoint ptr %rqe_wr_id_tbl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %rqe_wr_id_tbl.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.ocrdma_qp, ptr %22, i32 0, i32 10, i32 3
  %165 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %tail.i.i.i, align 4
  %arrayidx.i.i94.i = getelementptr i64, ptr %164, i32 %166
  %167 = ptrtoint ptr %arrayidx.i.i94.i to i32
  call void @__asan_load8_noabort(i32 %167)
  %168 = load i64, ptr %arrayidx.i.i94.i, align 8
  %169 = ptrtoint ptr %ibwc.addr.0173.i to i32
  call void @__asan_store8_noabort(i32 %169)
  store i64 %168, ptr %ibwc.addr.0173.i, align 8
  %max_wqe_idx.i68.i.i.i = getelementptr inbounds %struct.ocrdma_qp, ptr %22, i32 0, i32 10, i32 6
  br label %ocrdma_poll_success_rcqe.exit.i.i

ocrdma_poll_success_rcqe.exit.i.i:                ; preds = %if.else31.i.i.i, %ocrdma_update_free_srq_cqe.exit.i.i.i
  %max_wqe_idx.i68.sink.i.i.i = phi ptr [ %max_wqe_idx.i68.i.i.i, %if.else31.i.i.i ], [ %max_wqe_idx.i.i.i.i, %ocrdma_update_free_srq_cqe.exit.i.i.i ]
  %tail.sink.i.i.i = phi ptr [ %tail.i.i.i, %if.else31.i.i.i ], [ %tail.i.i.i.i.i, %ocrdma_update_free_srq_cqe.exit.i.i.i ]
  %170 = ptrtoint ptr %tail.sink.i.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %add.i.sink.in.i.i.i = load i32, ptr %tail.sink.i.i.i, align 4
  %add.i.sink.i.i.i = add i32 %add.i.sink.in.i.i.i, 1
  %171 = ptrtoint ptr %max_wqe_idx.i68.sink.i.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %max_wqe_idx.i68.sink.i.i.i, align 4
  %and.i69.i.i.i = and i32 %add.i.sink.i.i.i, %172
  store i32 %and.i69.i.i.i, ptr %tail.sink.i.i.i, align 4
  br label %if.end34.i

if.else8.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %status.0.i.i)
  %cmp.i.i95.i = icmp ult i32 %status.0.i.i, 22
  br i1 %cmp.i.i95.i, label %if.then.i21.i.i, label %if.else8.i.i.if.end.i22.i.i_crit_edge

if.else8.i.i.if.end.i22.i.i_crit_edge:            ; preds = %if.else8.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i22.i.i

if.then.i21.i.i:                                  ; preds = %if.else8.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %173 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %22, align 128
  %arrayidx.i20.i.i = getelementptr %struct.ocrdma_dev, ptr %174, i32 0, i32 49, i32 %status.0.i.i
  %call.i.i.i.i96.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i20.i.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %arrayidx.i20.i.i, i32 1, i32 3, i32 1) #13
  %175 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx.i20.i.i, ptr %arrayidx.i20.i.i, i32 1, ptr elementtype(i32) %arrayidx.i20.i.i) #13, !srcloc !154
  br label %if.end.i22.i.i

if.end.i22.i.i:                                   ; preds = %if.then.i21.i.i, %if.else8.i.i.if.end.i22.i.i_crit_edge
  %tail.i.i.i97.i = getelementptr inbounds %struct.ocrdma_qp, ptr %22, i32 0, i32 10, i32 3
  %176 = ptrtoint ptr %tail.i.i.i97.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %tail.i.i.i97.i, align 4
  %head.i.i.i98.i = getelementptr inbounds %struct.ocrdma_qp, ptr %22, i32 0, i32 10, i32 2
  %178 = ptrtoint ptr %head.i.i.i98.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %head.i.i.i98.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %177, i32 %179)
  %cmp.i.not.i.i99.i = icmp eq i32 %177, %179
  br i1 %cmp.i.not.i.i99.i, label %land.lhs.true.i.i100.i, label %if.end28.i

land.lhs.true.i.i100.i:                           ; preds = %if.end.i22.i.i
  %tail.i40.i.i.i = getelementptr inbounds %struct.ocrdma_qp, ptr %22, i32 0, i32 2, i32 3
  %180 = ptrtoint ptr %tail.i40.i.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %tail.i40.i.i.i, align 4
  %head.i41.i.i.i = getelementptr inbounds %struct.ocrdma_qp, ptr %22, i32 0, i32 2, i32 2
  %182 = ptrtoint ptr %head.i41.i.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %head.i41.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %181, i32 %183)
  %cmp.i42.not.i.i.i = icmp eq i32 %181, %183
  br i1 %cmp.i42.not.i.i.i, label %land.lhs.true.i.i100.i.if.end34.i_crit_edge, label %if.then4.i.i102.i

land.lhs.true.i.i100.i.if.end34.i_crit_edge:      ; preds = %land.lhs.true.i.i100.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34.i

if.then4.i.i102.i:                                ; preds = %land.lhs.true.i.i100.i
  %srq.i23.i.i = getelementptr inbounds %struct.ocrdma_qp, ptr %22, i32 0, i32 13
  %184 = ptrtoint ptr %srq.i23.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %srq.i23.i.i, align 4
  %tobool5.not.i.i101.i = icmp eq ptr %185, null
  br i1 %tobool5.not.i.i101.i, label %land.lhs.true6.i.i106.i, label %if.then4.i.i102.i.stop_cqe.i_crit_edge

if.then4.i.i102.i.stop_cqe.i_crit_edge:           ; preds = %if.then4.i.i102.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %stop_cqe.i

land.lhs.true6.i.i106.i:                          ; preds = %if.then4.i.i102.i
  %sq_cq.i.i103.i = getelementptr inbounds %struct.ocrdma_qp, ptr %22, i32 0, i32 7
  %186 = ptrtoint ptr %sq_cq.i.i103.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %sq_cq.i.i103.i, align 4
  %rq_cq.i.i104.i = getelementptr inbounds %struct.ocrdma_qp, ptr %22, i32 0, i32 12
  %188 = ptrtoint ptr %rq_cq.i.i104.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %rq_cq.i.i104.i, align 8
  %cmp7.i.i105.i = icmp eq ptr %187, %189
  br i1 %cmp7.i.i105.i, label %if.then8.i.i114.i, label %land.lhs.true6.i.i106.i.stop_cqe.i_crit_edge

land.lhs.true6.i.i106.i.stop_cqe.i_crit_edge:     ; preds = %land.lhs.true6.i.i106.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %stop_cqe.i

if.then8.i.i114.i:                                ; preds = %land.lhs.true6.i.i106.i
  tail call fastcc void @ocrdma_update_wc(ptr noundef nonnull %22, ptr noundef %ibwc.addr.0173.i, i32 noundef %181) #13
  %190 = ptrtoint ptr %tail.i40.i.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %tail.i40.i.i.i, align 4
  %add.i.i.i.i107.i = add i32 %191, 1
  %max_wqe_idx.i.i.i.i108.i = getelementptr inbounds %struct.ocrdma_qp, ptr %22, i32 0, i32 2, i32 6
  %192 = ptrtoint ptr %max_wqe_idx.i.i.i.i108.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %max_wqe_idx.i.i.i.i108.i, align 4
  %and.i.i.i.i109.i = and i32 %add.i.i.i.i107.i, %193
  store i32 %and.i.i.i.i109.i, ptr %tail.i40.i.i.i, align 4
  %byte_len.i.i24.i.i = getelementptr inbounds %struct.ib_wc, ptr %ibwc.addr.0173.i, i32 0, i32 4
  %194 = ptrtoint ptr %byte_len.i.i24.i.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 0, ptr %byte_len.i.i24.i.i, align 4
  %qp1.i.i.i110.i = getelementptr inbounds %struct.ib_wc, ptr %ibwc.addr.0173.i, i32 0, i32 5
  %195 = ptrtoint ptr %qp1.i.i.i110.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr %22, ptr %qp1.i.i.i110.i, align 8
  %status2.i.i.i111.i = getelementptr inbounds %struct.ib_wc, ptr %ibwc.addr.0173.i, i32 0, i32 1
  %196 = ptrtoint ptr %status2.i.i.i111.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 5, ptr %status2.i.i.i111.i, align 8
  tail call void @ocrdma_flush_qp(ptr noundef nonnull %22) #13
  %call3.i.i.i112.i = tail call i32 @ocrdma_qp_state_change(ptr noundef nonnull %22, i32 noundef 6, ptr noundef null) #13
  %197 = ptrtoint ptr %tail.i.i.i97.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %tail.i.i.i97.i, align 4
  %199 = ptrtoint ptr %head.i.i.i98.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %head.i.i.i98.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %198, i32 %200)
  %cmp.i.not.i.i.i113.i = icmp eq i32 %198, %200
  br i1 %cmp.i.not.i.i.i113.i, label %lor.lhs.false.i.i.i116.i, label %if.then8.i.i114.i.if.then.i.i25.i.i_crit_edge

if.then8.i.i114.i.if.then.i.i25.i.i_crit_edge:    ; preds = %if.then8.i.i114.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i25.i.i

lor.lhs.false.i.i.i116.i:                         ; preds = %if.then8.i.i114.i
  %201 = ptrtoint ptr %tail.i40.i.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %tail.i40.i.i.i, align 4
  %203 = ptrtoint ptr %head.i41.i.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %head.i41.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %202, i32 %204)
  %cmp.i17.not.i.i.i115.i = icmp eq i32 %202, %204
  br i1 %cmp.i17.not.i.i.i115.i, label %lor.lhs.false.i.i.i116.i.if.end34.i_crit_edge, label %lor.lhs.false.i.i.i116.i.if.then.i.i25.i.i_crit_edge

lor.lhs.false.i.i.i116.i.if.then.i.i25.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i116.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i25.i.i

lor.lhs.false.i.i.i116.i.if.end34.i_crit_edge:    ; preds = %lor.lhs.false.i.i.i116.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34.i

if.then.i.i25.i.i:                                ; preds = %lor.lhs.false.i.i.i116.i.if.then.i.i25.i.i_crit_edge, %if.then8.i.i114.i.if.then.i.i25.i.i_crit_edge
  %205 = ptrtoint ptr %flags_status_srcqpn.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %flags_status_srcqpn.i.i, align 4
  %207 = and i32 %206, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %207)
  %tobool.not.not.i.i.i.i117.i = icmp eq i32 %207, 0
  br i1 %tobool.not.not.i.i.i.i117.i, label %if.then.i.i25.i.i.ocrdma_set_cqe_status_flushed.exit.i.i.i122.i_crit_edge, label %if.else.i.i.i.i118.i

if.then.i.i25.i.i.ocrdma_set_cqe_status_flushed.exit.i.i.i122.i_crit_edge: ; preds = %if.then.i.i25.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocrdma_set_cqe_status_flushed.exit.i.i.i122.i

if.else.i.i.i.i118.i:                             ; preds = %if.then.i.i25.i.i
  %208 = ptrtoint ptr %qp_type.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %qp_type.i.i, align 16
  %210 = zext i32 %209 to i64
  call void @__sanitizer_cov_trace_switch(i64 %210, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %209, label %if.else13.i.i.i.i119.i [
    i32 4, label %if.else.i.i.i.i118.i.ocrdma_set_cqe_status_flushed.exit.i.i.i122.i_crit_edge
    i32 1, label %if.else.i.i.i.i118.i.ocrdma_set_cqe_status_flushed.exit.i.i.i122.i_crit_edge123
  ]

if.else.i.i.i.i118.i.ocrdma_set_cqe_status_flushed.exit.i.i.i122.i_crit_edge123: ; preds = %if.else.i.i.i.i118.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocrdma_set_cqe_status_flushed.exit.i.i.i122.i

if.else.i.i.i.i118.i.ocrdma_set_cqe_status_flushed.exit.i.i.i122.i_crit_edge: ; preds = %if.else.i.i.i.i118.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocrdma_set_cqe_status_flushed.exit.i.i.i122.i

if.else13.i.i.i.i119.i:                           ; preds = %if.else.i.i.i.i118.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocrdma_set_cqe_status_flushed.exit.i.i.i122.i

ocrdma_set_cqe_status_flushed.exit.i.i.i122.i:    ; preds = %if.else13.i.i.i.i119.i, %if.else.i.i.i.i118.i.ocrdma_set_cqe_status_flushed.exit.i.i.i122.i_crit_edge, %if.else.i.i.i.i118.i.ocrdma_set_cqe_status_flushed.exit.i.i.i122.i_crit_edge123, %if.then.i.i25.i.i.ocrdma_set_cqe_status_flushed.exit.i.i.i122.i_crit_edge
  %.sink.i.i.i.i120.i = phi i32 [ -65281, %if.else13.i.i.i.i119.i ], [ -65281, %if.then.i.i25.i.i.ocrdma_set_cqe_status_flushed.exit.i.i.i122.i_crit_edge ], [ -8, %if.else.i.i.i.i118.i.ocrdma_set_cqe_status_flushed.exit.i.i.i122.i_crit_edge ], [ -8, %if.else.i.i.i.i118.i.ocrdma_set_cqe_status_flushed.exit.i.i.i122.i_crit_edge123 ]
  %.sink35.i.i.i.i121.i = phi i32 [ 1280, %if.else13.i.i.i.i119.i ], [ 1280, %if.then.i.i25.i.i.ocrdma_set_cqe_status_flushed.exit.i.i.i122.i_crit_edge ], [ 5, %if.else.i.i.i.i118.i.ocrdma_set_cqe_status_flushed.exit.i.i.i122.i_crit_edge ], [ 5, %if.else.i.i.i.i118.i.ocrdma_set_cqe_status_flushed.exit.i.i.i122.i_crit_edge123 ]
  %211 = and i32 %.sink.i.i.i.i120.i, %206
  %212 = or i32 %211, %.sink35.i.i.i.i121.i
  br label %if.then40.sink.split.i

if.end28.i:                                       ; preds = %if.end.i22.i.i
  %opcode.i.i.i124.i = getelementptr inbounds %struct.ib_wc, ptr %ibwc.addr.0173.i, i32 0, i32 2
  %213 = ptrtoint ptr %opcode.i.i.i124.i to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 128, ptr %opcode.i.i.i124.i, align 4
  %rqe_wr_id_tbl.i.i27.i.i = getelementptr inbounds %struct.ocrdma_qp, ptr %22, i32 0, i32 11
  %214 = ptrtoint ptr %rqe_wr_id_tbl.i.i27.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %rqe_wr_id_tbl.i.i27.i.i, align 4
  %216 = ptrtoint ptr %tail.i.i.i97.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %tail.i.i.i97.i, align 4
  %arrayidx.i.i28.i.i = getelementptr i64, ptr %215, i32 %217
  %218 = ptrtoint ptr %arrayidx.i.i28.i.i to i32
  call void @__asan_load8_noabort(i32 %218)
  %219 = load i64, ptr %arrayidx.i.i28.i.i, align 8
  %220 = ptrtoint ptr %ibwc.addr.0173.i to i32
  call void @__asan_store8_noabort(i32 %220)
  store i64 %219, ptr %ibwc.addr.0173.i, align 8
  %221 = load i32, ptr %tail.i.i.i97.i, align 4
  %add.i.i51.i.i.i = add i32 %221, 1
  %max_wqe_idx.i.i52.i.i.i = getelementptr inbounds %struct.ocrdma_qp, ptr %22, i32 0, i32 10, i32 6
  %222 = ptrtoint ptr %max_wqe_idx.i.i52.i.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %max_wqe_idx.i.i52.i.i.i, align 4
  %and.i.i53.i.i.i = and i32 %add.i.i51.i.i.i, %223
  store i32 %and.i.i53.i.i.i, ptr %tail.i.i.i97.i, align 4
  %call.i54.i.i.i = tail call fastcc zeroext i1 @ocrdma_update_err_cqe(ptr noundef %ibwc.addr.0173.i, ptr noundef %add.ptr.i, ptr noundef nonnull %22, i32 noundef %status.0.i.i) #13
  br i1 %call.i54.i.i.i, label %if.end28.i.if.then40.i_crit_edge, label %if.end28.i.if.end34.i_crit_edge

if.end28.i.if.end34.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34.i

if.end28.i.if.then40.i_crit_edge:                 ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then40.i

if.end34.i:                                       ; preds = %if.end28.i.if.end34.i_crit_edge, %lor.lhs.false.i.i.i116.i.if.end34.i_crit_edge, %land.lhs.true.i.i100.i.if.end34.i_crit_edge, %ocrdma_poll_success_rcqe.exit.i.i, %if.else16.i.i.i.if.end34.i_crit_edge, %lor.lhs.false.i.i.i.i.if.end34.i_crit_edge, %land.lhs.true.i.i.i.if.end34.i_crit_edge, %ocrdma_poll_success_scqe.exit.i.i.if.end34.i_crit_edge
  %polled.3134161.i = phi i8 [ 0, %land.lhs.true.i.i100.i.if.end34.i_crit_edge ], [ 0, %land.lhs.true.i.i.i.if.end34.i_crit_edge ], [ 1, %if.end28.i.if.end34.i_crit_edge ], [ %storemerge.i.i.i, %ocrdma_poll_success_scqe.exit.i.i.if.end34.i_crit_edge ], [ 1, %if.else16.i.i.i.if.end34.i_crit_edge ], [ 1, %lor.lhs.false.i.i.i116.i.if.end34.i_crit_edge ], [ 1, %ocrdma_poll_success_rcqe.exit.i.i ], [ 1, %lor.lhs.false.i.i.i.i.if.end34.i_crit_edge ]
  %224 = ptrtoint ptr %qpn4.i to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 0, ptr %qpn4.i, align 4
  br label %skip_cqe.i

skip_cqe.i:                                       ; preds = %if.end34.i, %if.end.i.skip_cqe.i_crit_edge
  %polled.4.i = phi i8 [ 0, %if.end.i.skip_cqe.i_crit_edge ], [ %polled.3134161.i, %if.end34.i ]
  %add.i = add i32 %polled_hw_cqes.0184.i, 1
  %add37.i = add nuw nsw i32 %conv1.i, 1
  %225 = ptrtoint ptr %max_hw_cqe.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %max_hw_cqe.i, align 4
  %rem.i = urem i32 %add37.i, %226
  %conv38.i = trunc i32 %rem.i to i16
  %227 = ptrtoint ptr %phase_change.i.i to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %phase_change.i.i, align 32, !range !137
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %228)
  %tobool.not.i.i = icmp eq i8 %228, 0
  br i1 %tobool.not.i.i, label %if.else.i130.i, label %if.then.i127.i

if.then.i127.i:                                   ; preds = %skip_cqe.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv38.i)
  %cmp.i126.i = icmp eq i16 %conv38.i, 0
  br i1 %cmp.i126.i, label %if.then2.i.i, label %if.then.i127.i.expand_cqe.i_crit_edge

if.then.i127.i.expand_cqe.i_crit_edge:            ; preds = %if.then.i127.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %expand_cqe.i

if.then2.i.i:                                     ; preds = %if.then.i127.i
  call void @__sanitizer_cov_trace_pc() #15
  %229 = ptrtoint ptr %phase.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %phase.i.i, align 4
  %neg.i.i = and i32 %230, -2147483648
  %231 = xor i32 %neg.i.i, -2147483648
  store i32 %231, ptr %phase.i.i, align 4
  br label %expand_cqe.i

if.else.i130.i:                                   ; preds = %skip_cqe.i
  call void @__sanitizer_cov_trace_pc() #15
  %232 = ptrtoint ptr %flags_status_srcqpn.i.i to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 0, ptr %flags_status_srcqpn.i.i, align 4
  br label %expand_cqe.i

expand_cqe.i:                                     ; preds = %if.else.i130.i, %if.then2.i.i, %if.then.i127.i.expand_cqe.i_crit_edge, %ocrdma_poll_success_scqe.exit.i.i.expand_cqe.i_crit_edge
  %polled.5.i = phi i8 [ %storemerge.i.i.i, %ocrdma_poll_success_scqe.exit.i.i.expand_cqe.i_crit_edge ], [ %polled.4.i, %if.then.i127.i.expand_cqe.i_crit_edge ], [ %polled.4.i, %if.then2.i.i ], [ %polled.4.i, %if.else.i130.i ]
  %polled_hw_cqes.1.i = phi i32 [ %polled_hw_cqes.0184.i, %ocrdma_poll_success_scqe.exit.i.i.expand_cqe.i_crit_edge ], [ %add.i, %if.then.i127.i.expand_cqe.i_crit_edge ], [ %add.i, %if.then2.i.i ], [ %add.i, %if.else.i130.i ]
  %cur_getp.1.i = phi i16 [ %cur_getp.0187.i, %ocrdma_poll_success_scqe.exit.i.i.expand_cqe.i_crit_edge ], [ %conv38.i, %if.then.i127.i.expand_cqe.i_crit_edge ], [ 0, %if.then2.i.i ], [ %conv38.i, %if.else.i130.i ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %polled.5.i)
  %tobool39.not.i = icmp eq i8 %polled.5.i, 0
  br i1 %tobool39.not.i, label %expand_cqe.i.if.end43.i_crit_edge, label %expand_cqe.i.if.then40.i_crit_edge

expand_cqe.i.if.then40.i_crit_edge:               ; preds = %expand_cqe.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then40.i

expand_cqe.i.if.end43.i_crit_edge:                ; preds = %expand_cqe.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end43.i

if.then40.sink.split.i:                           ; preds = %ocrdma_set_cqe_status_flushed.exit.i.i.i122.i, %ocrdma_set_cqe_status_flushed.exit.i.i.i.i
  %.sink.i = phi i32 [ %212, %ocrdma_set_cqe_status_flushed.exit.i.i.i122.i ], [ %89, %ocrdma_set_cqe_status_flushed.exit.i.i.i.i ]
  %233 = ptrtoint ptr %flags_status_srcqpn.i.i to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 %.sink.i, ptr %flags_status_srcqpn.i.i, align 4
  br label %if.then40.i

if.then40.i:                                      ; preds = %if.then40.sink.split.i, %expand_cqe.i.if.then40.i_crit_edge, %if.end28.i.if.then40.i_crit_edge, %if.else16.i.i.i.if.then40.i_crit_edge
  %cur_getp.1150.i = phi i16 [ %cur_getp.1.i, %expand_cqe.i.if.then40.i_crit_edge ], [ %cur_getp.0187.i, %if.end28.i.if.then40.i_crit_edge ], [ %cur_getp.0187.i, %if.else16.i.i.i.if.then40.i_crit_edge ], [ %cur_getp.0187.i, %if.then40.sink.split.i ]
  %polled_hw_cqes.1148.i = phi i32 [ %polled_hw_cqes.1.i, %expand_cqe.i.if.then40.i_crit_edge ], [ %polled_hw_cqes.0184.i, %if.end28.i.if.then40.i_crit_edge ], [ %polled_hw_cqes.0184.i, %if.else16.i.i.i.if.then40.i_crit_edge ], [ %polled_hw_cqes.0184.i, %if.then40.sink.split.i ]
  %sub.i = add i32 %num_entries.addr.0169.i, -1
  %add41.i = add i32 %i.0177.i, 1
  %add.ptr42.i = getelementptr %struct.ib_wc, ptr %ibwc.addr.0173.i, i32 1
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.then40.i, %expand_cqe.i.if.end43.i_crit_edge
  %cur_getp.1151.i = phi i16 [ %cur_getp.1.i, %expand_cqe.i.if.end43.i_crit_edge ], [ %cur_getp.1150.i, %if.then40.i ]
  %polled_hw_cqes.1149.i = phi i32 [ %polled_hw_cqes.1.i, %expand_cqe.i.if.end43.i_crit_edge ], [ %polled_hw_cqes.1148.i, %if.then40.i ]
  %num_entries.addr.1.i = phi i32 [ %num_entries.addr.0169.i, %expand_cqe.i.if.end43.i_crit_edge ], [ %sub.i, %if.then40.i ]
  %ibwc.addr.1.i = phi ptr [ %ibwc.addr.0173.i, %expand_cqe.i.if.end43.i_crit_edge ], [ %add.ptr42.i, %if.then40.i ]
  %i.1.i = phi i32 [ %i.0177.i, %expand_cqe.i.if.end43.i_crit_edge ], [ %add41.i, %if.then40.i ]
  %tobool.not.i = icmp eq i32 %num_entries.addr.1.i, 0
  br i1 %tobool.not.i, label %if.end43.i.stop_cqe.i_crit_edge, label %if.end43.i.while.body.i_crit_edge

if.end43.i.while.body.i_crit_edge:                ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

if.end43.i.stop_cqe.i_crit_edge:                  ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #15
  %.pre = zext i16 %cur_getp.1151.i to i32
  br label %stop_cqe.i

stop_cqe.i:                                       ; preds = %if.end43.i.stop_cqe.i_crit_edge, %land.lhs.true6.i.i106.i.stop_cqe.i_crit_edge, %if.then4.i.i102.i.stop_cqe.i_crit_edge, %land.lhs.true6.i.i.i.stop_cqe.i_crit_edge, %if.then4.i.i.i.stop_cqe.i_crit_edge, %while.body.i.stop_cqe.i_crit_edge
  %conv44.i.pre-phi = phi i32 [ %.pre, %if.end43.i.stop_cqe.i_crit_edge ], [ %conv1.i, %while.body.i.stop_cqe.i_crit_edge ], [ %conv1.i, %if.then4.i.i.i.stop_cqe.i_crit_edge ], [ %conv1.i, %land.lhs.true6.i.i.i.stop_cqe.i_crit_edge ], [ %conv1.i, %if.then4.i.i102.i.stop_cqe.i_crit_edge ], [ %conv1.i, %land.lhs.true6.i.i106.i.stop_cqe.i_crit_edge ]
  %i.0.lcssa.i = phi i32 [ %i.1.i, %if.end43.i.stop_cqe.i_crit_edge ], [ %i.0177.i, %while.body.i.stop_cqe.i_crit_edge ], [ %i.0177.i, %if.then4.i.i.i.stop_cqe.i_crit_edge ], [ %i.0177.i, %land.lhs.true6.i.i.i.stop_cqe.i_crit_edge ], [ %i.0177.i, %if.then4.i.i102.i.stop_cqe.i_crit_edge ], [ %i.0177.i, %land.lhs.true6.i.i106.i.stop_cqe.i_crit_edge ]
  %polled_hw_cqes.0.lcssa.i = phi i32 [ %polled_hw_cqes.1149.i, %if.end43.i.stop_cqe.i_crit_edge ], [ %polled_hw_cqes.0184.i, %while.body.i.stop_cqe.i_crit_edge ], [ %polled_hw_cqes.0184.i, %if.then4.i.i.i.stop_cqe.i_crit_edge ], [ %polled_hw_cqes.0184.i, %land.lhs.true6.i.i.i.stop_cqe.i_crit_edge ], [ %polled_hw_cqes.0184.i, %if.then4.i.i102.i.stop_cqe.i_crit_edge ], [ %polled_hw_cqes.0184.i, %land.lhs.true6.i.i106.i.stop_cqe.i_crit_edge ]
  %234 = ptrtoint ptr %getp.i to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 %conv44.i.pre-phi, ptr %getp.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %polled_hw_cqes.0.lcssa.i)
  %tobool46.not.i = icmp eq i32 %polled_hw_cqes.0.lcssa.i, 0
  br i1 %tobool46.not.i, label %stop_cqe.i.ocrdma_poll_hwcq.exit_crit_edge, label %if.then47.i

stop_cqe.i.ocrdma_poll_hwcq.exit_crit_edge:       ; preds = %stop_cqe.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocrdma_poll_hwcq.exit

if.then47.i:                                      ; preds = %stop_cqe.i
  call void @__sanitizer_cov_trace_pc() #15
  %id.i = getelementptr inbounds %struct.ocrdma_cq, ptr %ibcq, i32 0, i32 10
  %235 = ptrtoint ptr %id.i to i32
  call void @__asan_load2_noabort(i32 %235)
  %236 = load i16, ptr %id.i, align 4
  %conv48.i = trunc i32 %polled_hw_cqes.0.lcssa.i to i16
  tail call void @ocrdma_ring_cq_db(ptr noundef %3, i16 noundef zeroext %236, i1 noundef zeroext false, i1 noundef zeroext false, i16 noundef zeroext %conv48.i) #13
  br label %ocrdma_poll_hwcq.exit

ocrdma_poll_hwcq.exit:                            ; preds = %if.then47.i, %stop_cqe.i.ocrdma_poll_hwcq.exit_crit_edge, %stop_cqe.thread.i
  %i.0.lcssa210.i = phi i32 [ 0, %stop_cqe.thread.i ], [ %i.0.lcssa.i, %if.then47.i ], [ %i.0.lcssa.i, %stop_cqe.i.ocrdma_poll_hwcq.exit_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cq_lock, i32 noundef %call4) #13
  %sub = sub i32 %num_entries, %i.0.lcssa210.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool.not = icmp eq i32 %sub, 0
  br i1 %tobool.not, label %ocrdma_poll_hwcq.exit.if.end39_crit_edge, label %if.then

ocrdma_poll_hwcq.exit.if.end39_crit_edge:         ; preds = %ocrdma_poll_hwcq.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39

if.then:                                          ; preds = %ocrdma_poll_hwcq.exit
  %flush_q_lock = getelementptr inbounds %struct.ocrdma_dev, ptr %1, i32 0, i32 4
  %call17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %flush_q_lock) #13
  %sq_head = getelementptr inbounds %struct.ocrdma_cq, ptr %ibcq, i32 0, i32 16
  %237 = ptrtoint ptr %sq_head to i32
  call void @__asan_load4_noabort(i32 %237)
  %.pn73 = load ptr, ptr %sq_head, align 16
  %cmp25.not75 = icmp eq ptr %.pn73, %sq_head
  br i1 %cmp25.not75, label %if.then.for.end_crit_edge, label %while.body.lr.ph.i63.preheader

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

while.body.lr.ph.i63.preheader:                   ; preds = %if.then
  %add.ptr = getelementptr %struct.ib_wc, ptr %wc, i32 %i.0.lcssa210.i
  br label %while.body.lr.ph.i63

while.body.lr.ph.i63:                             ; preds = %ocrdma_add_err_cqe.exit.while.body.lr.ph.i63_crit_edge, %while.body.lr.ph.i63.preheader
  %.pn82 = phi ptr [ %.pn, %ocrdma_add_err_cqe.exit.while.body.lr.ph.i63_crit_edge ], [ %.pn73, %while.body.lr.ph.i63.preheader ]
  %wc.addr.081 = phi ptr [ %add.ptr32, %ocrdma_add_err_cqe.exit.while.body.lr.ph.i63_crit_edge ], [ %add.ptr, %while.body.lr.ph.i63.preheader ]
  %cqes_to_poll.079 = phi i32 [ %sub31, %ocrdma_add_err_cqe.exit.while.body.lr.ph.i63_crit_edge ], [ %sub, %while.body.lr.ph.i63.preheader ]
  %num_os_cqe.078 = phi i32 [ %add, %ocrdma_add_err_cqe.exit.while.body.lr.ph.i63_crit_edge ], [ %i.0.lcssa210.i, %while.body.lr.ph.i63.preheader ]
  %qp.083 = getelementptr i8, ptr %.pn82, i32 -432
  %tail.i38.i = getelementptr i8, ptr %.pn82, i32 24
  %rq_cq.i = getelementptr i8, ptr %.pn82, i32 56
  %tail.i.i = getelementptr i8, ptr %.pn82, i32 -164
  %head.i.i = getelementptr i8, ptr %.pn82, i32 -168
  %sq_cq.i = getelementptr i8, ptr %.pn82, i32 -4
  %max_wqe_idx.i.i = getelementptr i8, ptr %.pn82, i32 -152
  %head.i39.i = getelementptr i8, ptr %.pn82, i32 20
  %rqe_wr_id_tbl.i = getelementptr i8, ptr %.pn82, i32 52
  %max_wqe_idx.i53.i = getelementptr i8, ptr %.pn82, i32 36
  br label %while.body.i65

while.body.i65:                                   ; preds = %if.end18.i.while.body.i65_crit_edge, %while.body.lr.ph.i63
  %err_cqes.059.i = phi i32 [ 0, %while.body.lr.ph.i63 ], [ %add.i70, %if.end18.i.while.body.i65_crit_edge ]
  %ibwc.addr.057.i = phi ptr [ %wc.addr.081, %while.body.lr.ph.i63 ], [ %add.ptr.i69, %if.end18.i.while.body.i65_crit_edge ]
  %num_entries.addr.056.i = phi i32 [ %cqes_to_poll.079, %while.body.lr.ph.i63 ], [ %sub.i71, %if.end18.i.while.body.i65_crit_edge ]
  %238 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %tail.i.i, align 4
  %240 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %head.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %239, i32 %241)
  %cmp.i.not.i64 = icmp eq i32 %239, %241
  br i1 %cmp.i.not.i64, label %land.lhs.true.i, label %land.lhs.true6.i

land.lhs.true.i:                                  ; preds = %while.body.i65
  %242 = ptrtoint ptr %tail.i38.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %tail.i38.i, align 4
  %244 = ptrtoint ptr %head.i39.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %head.i39.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %243, i32 %245)
  %cmp.i40.not.i = icmp eq i32 %243, %245
  br i1 %cmp.i40.not.i, label %land.lhs.true.i.ocrdma_add_err_cqe.exit_crit_edge, label %land.lhs.true.i.if.else.i67_crit_edge

land.lhs.true.i.if.else.i67_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i67

land.lhs.true.i.ocrdma_add_err_cqe.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocrdma_add_err_cqe.exit

land.lhs.true6.i:                                 ; preds = %while.body.i65
  %246 = ptrtoint ptr %sq_cq.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %sq_cq.i, align 4
  %cmp.i66 = icmp eq ptr %247, %ibcq
  br i1 %cmp.i66, label %if.then7.i, label %land.lhs.true6.i.if.else.i67_crit_edge

land.lhs.true6.i.if.else.i67_crit_edge:           ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i67

if.then7.i:                                       ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @ocrdma_update_wc(ptr noundef %qp.083, ptr noundef %ibwc.addr.057.i, i32 noundef %239) #13
  br label %if.end18.i

if.else.i67:                                      ; preds = %land.lhs.true6.i.if.else.i67_crit_edge, %land.lhs.true.i.if.else.i67_crit_edge
  %248 = ptrtoint ptr %tail.i38.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %tail.i38.i, align 4
  %250 = ptrtoint ptr %head.i39.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %head.i39.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %249, i32 %251)
  %cmp.i49.not.i = icmp eq i32 %249, %251
  br i1 %cmp.i49.not.i, label %if.else.i67.ocrdma_add_err_cqe.exit_crit_edge, label %land.lhs.true11.i

if.else.i67.ocrdma_add_err_cqe.exit_crit_edge:    ; preds = %if.else.i67
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocrdma_add_err_cqe.exit

land.lhs.true11.i:                                ; preds = %if.else.i67
  %252 = ptrtoint ptr %rq_cq.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %rq_cq.i, align 8
  %cmp12.i = icmp eq ptr %253, %ibcq
  br i1 %cmp12.i, label %if.then13.i, label %land.lhs.true11.i.ocrdma_add_err_cqe.exit_crit_edge

land.lhs.true11.i.ocrdma_add_err_cqe.exit_crit_edge: ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocrdma_add_err_cqe.exit

if.then13.i:                                      ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #15
  %254 = ptrtoint ptr %rqe_wr_id_tbl.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %rqe_wr_id_tbl.i, align 4
  %arrayidx.i68 = getelementptr i64, ptr %255, i32 %249
  %256 = ptrtoint ptr %arrayidx.i68 to i32
  call void @__asan_load8_noabort(i32 %256)
  %257 = load i64, ptr %arrayidx.i68, align 8
  %258 = ptrtoint ptr %ibwc.addr.057.i to i32
  call void @__asan_store8_noabort(i32 %258)
  store i64 %257, ptr %ibwc.addr.057.i, align 8
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then13.i, %if.then7.i
  %tail.i38.sink64.i = phi ptr [ %tail.i38.i, %if.then13.i ], [ %tail.i.i, %if.then7.i ]
  %max_wqe_idx.i53.sink.i = phi ptr [ %max_wqe_idx.i53.i, %if.then13.i ], [ %max_wqe_idx.i.i, %if.then7.i ]
  %259 = ptrtoint ptr %tail.i38.sink64.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %tail.i38.sink64.i, align 4
  %add.i52.i = add i32 %260, 1
  %261 = ptrtoint ptr %max_wqe_idx.i53.sink.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %max_wqe_idx.i53.sink.i, align 4
  %and.i54.i = and i32 %add.i52.i, %262
  store i32 %and.i54.i, ptr %tail.i38.sink64.i, align 4
  %byte_len.i = getelementptr inbounds %struct.ib_wc, ptr %ibwc.addr.057.i, i32 0, i32 4
  %263 = ptrtoint ptr %byte_len.i to i32
  call void @__asan_store4_noabort(i32 %263)
  store i32 0, ptr %byte_len.i, align 4
  %status.i = getelementptr inbounds %struct.ib_wc, ptr %ibwc.addr.057.i, i32 0, i32 1
  %264 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %264)
  store i32 5, ptr %status.i, align 8
  %add.ptr.i69 = getelementptr %struct.ib_wc, ptr %ibwc.addr.057.i, i32 1
  %add.i70 = add nuw i32 %err_cqes.059.i, 1
  %sub.i71 = add i32 %num_entries.addr.056.i, -1
  %tobool.not.i72 = icmp eq i32 %sub.i71, 0
  br i1 %tobool.not.i72, label %if.end18.i.ocrdma_add_err_cqe.exit_crit_edge, label %if.end18.i.while.body.i65_crit_edge

if.end18.i.while.body.i65_crit_edge:              ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i65

if.end18.i.ocrdma_add_err_cqe.exit_crit_edge:     ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocrdma_add_err_cqe.exit

ocrdma_add_err_cqe.exit:                          ; preds = %if.end18.i.ocrdma_add_err_cqe.exit_crit_edge, %land.lhs.true11.i.ocrdma_add_err_cqe.exit_crit_edge, %if.else.i67.ocrdma_add_err_cqe.exit_crit_edge, %land.lhs.true.i.ocrdma_add_err_cqe.exit_crit_edge
  %err_cqes.0.lcssa.i = phi i32 [ %cqes_to_poll.079, %if.end18.i.ocrdma_add_err_cqe.exit_crit_edge ], [ %err_cqes.059.i, %land.lhs.true.i.ocrdma_add_err_cqe.exit_crit_edge ], [ %err_cqes.059.i, %if.else.i67.ocrdma_add_err_cqe.exit_crit_edge ], [ %err_cqes.059.i, %land.lhs.true11.i.ocrdma_add_err_cqe.exit_crit_edge ]
  %sub31 = sub i32 %cqes_to_poll.079, %err_cqes.0.lcssa.i
  %add = add i32 %err_cqes.0.lcssa.i, %num_os_cqe.078
  %add.ptr32 = getelementptr %struct.ib_wc, ptr %wc.addr.081, i32 %err_cqes.0.lcssa.i
  %265 = ptrtoint ptr %.pn82 to i32
  call void @__asan_load4_noabort(i32 %265)
  %.pn = load ptr, ptr %.pn82, align 16
  %cmp25.not = icmp eq ptr %.pn, %sq_head
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub31)
  %cmp27 = icmp eq i32 %sub31, 0
  %or.cond = select i1 %cmp25.not, i1 true, i1 %cmp27
  br i1 %or.cond, label %ocrdma_add_err_cqe.exit.for.end_crit_edge, label %ocrdma_add_err_cqe.exit.while.body.lr.ph.i63_crit_edge

ocrdma_add_err_cqe.exit.while.body.lr.ph.i63_crit_edge: ; preds = %ocrdma_add_err_cqe.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.lr.ph.i63

ocrdma_add_err_cqe.exit.for.end_crit_edge:        ; preds = %ocrdma_add_err_cqe.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %ocrdma_add_err_cqe.exit.for.end_crit_edge, %if.then.for.end_crit_edge
  %num_os_cqe.0.lcssa = phi i32 [ %i.0.lcssa210.i, %if.then.for.end_crit_edge ], [ %add, %ocrdma_add_err_cqe.exit.for.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %flush_q_lock, i32 noundef %call17) #13
  br label %if.end39

if.end39:                                         ; preds = %for.end, %ocrdma_poll_hwcq.exit.if.end39_crit_edge
  %num_os_cqe.1 = phi i32 [ %num_os_cqe.0.lcssa, %for.end ], [ %i.0.lcssa210.i, %ocrdma_poll_hwcq.exit.if.end39_crit_edge ]
  ret i32 %num_os_cqe.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocrdma_arm_cq(ptr noundef %ibcq, i32 noundef %cq_flags) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ibcq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ibcq, align 8
  %id = getelementptr inbounds %struct.ocrdma_cq, ptr %ibcq, i32 0, i32 10
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %id, align 4
  %cq_lock = getelementptr inbounds %struct.ocrdma_cq, ptr %ibcq, i32 0, i32 7
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cq_lock) #13
  %and7 = and i32 %cq_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp ne i32 %and7, 0
  %4 = and i32 %cq_flags, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %5 = icmp ne i32 %4, 0
  tail call void @ocrdma_ring_cq_db(ptr noundef %1, i16 noundef zeroext %3, i1 noundef zeroext %5, i1 noundef zeroext %tobool8.not, i16 noundef zeroext 0) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cq_lock, i32 noundef %call4) #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocrdma_ring_cq_db(ptr noundef, i16 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ocrdma_alloc_mr(ptr nocapture noundef readonly %ibpd, i32 noundef %mr_type, i32 noundef %max_num_sg) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.ib_pd, ptr %ibpd, i32 0, i32 2
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mr_type)
  %cmp.not = icmp eq i32 %mr_type, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %max_pages_per_frmr = getelementptr inbounds %struct.ocrdma_dev, ptr %1, i32 0, i32 1, i32 21
  %2 = ptrtoint ptr %max_pages_per_frmr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_pages_per_frmr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %max_num_sg)
  %cmp3 = icmp ult i32 %3, %max_num_sg
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 216) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end6.cleanup_crit_edge, label %if.end10

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %5 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %max_num_sg, i32 8) #13
  %6 = extractvalue { i32, i1 } %5, 1
  br i1 %6, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !138

kcalloc.exit.thread:                              ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  %pages81 = getelementptr inbounds %struct.ocrdma_mr, ptr %call7.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %pages81 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %pages81, align 8
  br label %pl_err

if.end7.i.i:                                      ; preds = %if.end10
  %8 = extractvalue { i32, i1 } %5, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %8, i32 noundef 3520) #17
  %pages = getelementptr inbounds %struct.ocrdma_mr, ptr %call7.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %pages to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call8.i.i, ptr %pages, align 8
  %tobool13.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool13.not, label %if.end7.i.i.pl_err_crit_edge, label %if.end15

if.end7.i.i.pl_err_crit_edge:                     ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %pl_err

if.end15:                                         ; preds = %if.end7.i.i
  %max_num_mr_pbl.i = getelementptr inbounds %struct.ocrdma_dev, ptr %1, i32 0, i32 1, i32 18
  %10 = ptrtoint ptr %max_num_mr_pbl.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_num_mr_pbl.i, align 8
  %add.i = add nuw nsw i32 %max_num_sg, 511
  %div125.i = lshr i32 %add.i, 9
  call void @__sanitizer_cov_trace_cmp4(i32 %div125.i, i32 %11)
  %cmp5.not.i = icmp ult i32 %div125.i, %11
  br i1 %cmp5.not.i, label %if.end15.if.end19_crit_edge, label %do.body.i

if.end15.if.end19_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

do.body.i:                                        ; preds = %if.end15
  %add.1.i = add nuw nsw i32 %max_num_sg, 1023
  %div1.126.i = lshr i32 %add.1.i, 10
  call void @__sanitizer_cov_trace_cmp4(i32 %div1.126.i, i32 %11)
  %cmp5.not.1.i = icmp ult i32 %div1.126.i, %11
  br i1 %cmp5.not.1.i, label %do.body.i.if.end19_crit_edge, label %do.body.1.i

do.body.i.if.end19_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

do.body.1.i:                                      ; preds = %do.body.i
  %add.2.i = add nuw nsw i32 %max_num_sg, 2047
  %div1.227.i = lshr i32 %add.2.i, 11
  call void @__sanitizer_cov_trace_cmp4(i32 %div1.227.i, i32 %11)
  %cmp5.not.2.i = icmp ult i32 %div1.227.i, %11
  br i1 %cmp5.not.2.i, label %do.body.1.i.if.end19_crit_edge, label %do.body.2.i

do.body.1.i.if.end19_crit_edge:                   ; preds = %do.body.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

do.body.2.i:                                      ; preds = %do.body.1.i
  %add.3.i = add nuw nsw i32 %max_num_sg, 4095
  %div1.328.i = lshr i32 %add.3.i, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %div1.328.i, i32 %11)
  %cmp5.not.3.i = icmp ult i32 %div1.328.i, %11
  br i1 %cmp5.not.3.i, label %do.body.2.i.if.end19_crit_edge, label %do.body.3.i

do.body.2.i.if.end19_crit_edge:                   ; preds = %do.body.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

do.body.3.i:                                      ; preds = %do.body.2.i
  %add.4.i = add nuw nsw i32 %max_num_sg, 8191
  %div1.429.i = lshr i32 %add.4.i, 13
  call void @__sanitizer_cov_trace_cmp4(i32 %div1.429.i, i32 %11)
  %cmp5.not.4.i = icmp ult i32 %div1.429.i, %11
  br i1 %cmp5.not.4.i, label %do.body.3.i.if.end19_crit_edge, label %ocrdma_get_pbl_info.exit

do.body.3.i.if.end19_crit_edge:                   ; preds = %do.body.3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

ocrdma_get_pbl_info.exit:                         ; preds = %do.body.3.i
  call void @__sanitizer_cov_trace_pc() #15
  %num_pbes6.i = getelementptr inbounds %struct.ocrdma_mr, ptr %call7.i.i, i32 0, i32 2, i32 12
  %12 = ptrtoint ptr %num_pbes6.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %max_num_sg, ptr %num_pbes6.i, align 8
  %num_pbls8.i = getelementptr inbounds %struct.ocrdma_mr, ptr %call7.i.i, i32 0, i32 2, i32 11
  %13 = ptrtoint ptr %num_pbls8.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %div1.429.i, ptr %num_pbls8.i, align 4
  %pbl_size10.i = getelementptr inbounds %struct.ocrdma_mr, ptr %call7.i.i, i32 0, i32 2, i32 13
  %14 = ptrtoint ptr %pbl_size10.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 131072, ptr %pbl_size10.i, align 4
  br label %pbl_err

if.end19:                                         ; preds = %do.body.3.i.if.end19_crit_edge, %do.body.2.i.if.end19_crit_edge, %do.body.1.i.if.end19_crit_edge, %do.body.i.if.end19_crit_edge, %if.end15.if.end19_crit_edge
  %div1.lcssa.i.ph = phi i32 [ %div1.328.i, %do.body.2.i.if.end19_crit_edge ], [ %div1.227.i, %do.body.1.i.if.end19_crit_edge ], [ %div1.126.i, %do.body.i.if.end19_crit_edge ], [ %div125.i, %if.end15.if.end19_crit_edge ], [ %div1.429.i, %do.body.3.i.if.end19_crit_edge ]
  %mul.lcssa.i.ph = phi i32 [ 32768, %do.body.2.i.if.end19_crit_edge ], [ 16384, %do.body.1.i.if.end19_crit_edge ], [ 8192, %do.body.i.if.end19_crit_edge ], [ 4096, %if.end15.if.end19_crit_edge ], [ 65536, %do.body.3.i.if.end19_crit_edge ]
  %num_pbes6.i91 = getelementptr inbounds %struct.ocrdma_mr, ptr %call7.i.i, i32 0, i32 2, i32 12
  %15 = ptrtoint ptr %num_pbes6.i91 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %max_num_sg, ptr %num_pbes6.i91, align 8
  %num_pbls8.i92 = getelementptr inbounds %struct.ocrdma_mr, ptr %call7.i.i, i32 0, i32 2, i32 11
  %16 = ptrtoint ptr %num_pbls8.i92 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %div1.lcssa.i.ph, ptr %num_pbls8.i92, align 4
  %pbl_size10.i93 = getelementptr inbounds %struct.ocrdma_mr, ptr %call7.i.i, i32 0, i32 2, i32 13
  %17 = ptrtoint ptr %pbl_size10.i93 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %mul.lcssa.i.ph, ptr %pbl_size10.i93, align 4
  %hwmr = getelementptr inbounds %struct.ocrdma_mr, ptr %call7.i.i, i32 0, i32 2
  %fr_mr = getelementptr inbounds %struct.ocrdma_mr, ptr %call7.i.i, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %fr_mr to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %fr_mr, align 4
  %remote_rd = getelementptr inbounds %struct.ocrdma_mr, ptr %call7.i.i, i32 0, i32 2, i32 3
  %19 = call ptr @memset(ptr %remote_rd, i32 0, i32 5)
  %call26 = tail call fastcc i32 @ocrdma_build_pbl_tbl(ptr noundef %1, ptr noundef %hwmr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.end19.pbl_err_crit_edge

if.end19.pbl_err_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %pbl_err

if.end29:                                         ; preds = %if.end19
  %id = getelementptr inbounds %struct.ocrdma_pd, ptr %ibpd, i32 0, i32 2
  %20 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %id, align 4
  %call31 = tail call i32 @ocrdma_reg_mr(ptr noundef %1, ptr noundef %hwmr, i32 noundef %21, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %mbx_err

if.end34:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  %22 = ptrtoint ptr %hwmr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %hwmr, align 8
  %rkey = getelementptr inbounds %struct.ib_mr, ptr %call7.i.i, i32 0, i32 3
  %24 = ptrtoint ptr %rkey to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %rkey, align 4
  %lkey39 = getelementptr inbounds %struct.ib_mr, ptr %call7.i.i, i32 0, i32 2
  %25 = ptrtoint ptr %lkey39 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %23, ptr %lkey39, align 8
  %26 = ptrtoint ptr %call7.i.i to i32
  %conv = zext i32 %26 to i64
  %stag_arr = getelementptr inbounds %struct.ocrdma_dev, ptr %1, i32 0, i32 26
  %27 = ptrtoint ptr %stag_arr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %stag_arr, align 8
  %shr = lshr i32 %23, 8
  %and = and i32 %shr, 16383
  %arrayidx = getelementptr i64, ptr %28, i32 %and
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %conv, ptr %arrayidx, align 8
  br label %cleanup

mbx_err:                                          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @ocrdma_free_mr_pbl_tbl(ptr noundef %1, ptr noundef %hwmr)
  br label %pbl_err

pbl_err:                                          ; preds = %mbx_err, %if.end19.pbl_err_crit_edge, %ocrdma_get_pbl_info.exit
  %30 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pages, align 8
  tail call void @kfree(ptr noundef %31) #13
  br label %pl_err

pl_err:                                           ; preds = %pbl_err, %if.end7.i.i.pl_err_crit_edge, %kcalloc.exit.thread
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %pl_err, %if.end34, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -12 to ptr), %pl_err ], [ %call7.i.i, %if.end34 ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end6.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocrdma_map_mr_sg(ptr noundef %ibmr, ptr noundef %sg, i32 noundef %sg_nents, ptr noundef %sg_offset) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %npages = getelementptr inbounds %struct.ocrdma_mr, ptr %ibmr, i32 0, i32 4
  %0 = ptrtoint ptr %npages to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %npages, align 4
  %call1 = tail call i32 @ib_sg_to_pages(ptr noundef %ibmr, ptr noundef %sg, i32 noundef %sg_nents, ptr noundef %sg_offset, ptr noundef nonnull @ocrdma_set_page) #13
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_sg_to_pages(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ocrdma_set_page(ptr nocapture noundef %ibmr, i64 noundef %addr) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %npages = getelementptr inbounds %struct.ocrdma_mr, ptr %ibmr, i32 0, i32 4
  %0 = ptrtoint ptr %npages to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %npages, align 4
  %num_pbes = getelementptr inbounds %struct.ocrdma_mr, ptr %ibmr, i32 0, i32 2, i32 12
  %2 = ptrtoint ptr %num_pbes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_pbes, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end, !prof !138

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %pages = getelementptr inbounds %struct.ocrdma_mr, ptr %ibmr, i32 0, i32 3
  %4 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pages, align 8
  %inc = add i32 %1, 1
  %6 = ptrtoint ptr %npages to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %inc, ptr %npages, align 4
  %arrayidx = getelementptr i64, ptr %5, i32 %1
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %addr, ptr %arrayidx, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocrdma_mbx_get_link_speed(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__virt_to_phys(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocrdma_mbx_alloc_pd(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocrdma_mbx_dealloc_pd(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocrdma_mbx_alloc_lkey(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__rdma_block_iter_next(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rdma_block_iter_start(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ocrdma_build_inline_sges(ptr nocapture noundef readonly %qp, ptr nocapture noundef %hdr, ptr nocapture noundef writeonly %sge, ptr nocapture noundef readonly %wr, i32 noundef %wqe_size) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %send_flags = getelementptr inbounds %struct.ib_send_wr, ptr %wr, i32 0, i32 5
  %0 = ptrtoint ptr %send_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %send_flags, align 4
  %and = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %qp_type = getelementptr inbounds %struct.ocrdma_qp, ptr %qp, i32 0, i32 21
  %2 = ptrtoint ptr %qp_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %qp_type, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp.not = icmp eq i32 %3, 4
  br i1 %cmp.not, label %land.lhs.true.if.else_crit_edge, label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  %sg_list = getelementptr inbounds %struct.ib_send_wr, ptr %wr, i32 0, i32 2
  %4 = ptrtoint ptr %sg_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sg_list, align 8
  %num_sge = getelementptr inbounds %struct.ib_send_wr, ptr %wr, i32 0, i32 3
  %6 = ptrtoint ptr %num_sge to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_sge, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp4.not.i = icmp eq i32 %7, 0
  br i1 %cmp4.not.i, label %ocrdma_sglist_len.exit.thread, label %if.then.for.body.i_crit_edge

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

ocrdma_sglist_len.exit.thread:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %total_len88 = getelementptr inbounds %struct.ocrdma_hdr_wqe, ptr %hdr, i32 0, i32 3
  %8 = ptrtoint ptr %total_len88 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %total_len88, align 4
  br label %for.cond.preheader

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %i.06.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then.for.body.i_crit_edge ]
  %total_len.05.i = phi i32 [ %add.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then.for.body.i_crit_edge ]
  %length.i = getelementptr %struct.ib_sge, ptr %5, i32 %i.06.i, i32 1
  %9 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %length.i, align 8
  %add.i = add i32 %10, %total_len.05.i
  %inc.i = add nuw i32 %i.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %7
  br i1 %exitcond.not.i, label %ocrdma_sglist_len.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

ocrdma_sglist_len.exit:                           ; preds = %for.body.i
  %total_len = getelementptr inbounds %struct.ocrdma_hdr_wqe, ptr %hdr, i32 0, i32 3
  %11 = ptrtoint ptr %total_len to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %add.i, ptr %total_len, align 4
  %max_inline_data = getelementptr inbounds %struct.ocrdma_qp, ptr %qp, i32 0, i32 4
  %12 = ptrtoint ptr %max_inline_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_inline_data, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %13)
  %cmp2 = icmp ugt i32 %add.i, %13
  br i1 %cmp2, label %do.end, label %ocrdma_sglist_len.exit.for.cond.preheader_crit_edge, !prof !138

ocrdma_sglist_len.exit.for.cond.preheader_crit_edge: ; preds = %ocrdma_sglist_len.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %ocrdma_sglist_len.exit.for.cond.preheader_crit_edge, %ocrdma_sglist_len.exit.thread
  %total_len91 = phi ptr [ %total_len88, %ocrdma_sglist_len.exit.thread ], [ %total_len, %ocrdma_sglist_len.exit.for.cond.preheader_crit_edge ]
  %14 = ptrtoint ptr %num_sge to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_sge, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp1084 = icmp sgt i32 %15, 0
  br i1 %cmp1084, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

do.end:                                           ; preds = %ocrdma_sglist_len.exit
  call void @__sanitizer_cov_trace_pc() #15
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.66, i32 noundef %13, i32 noundef %add.i) #19
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.086 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %dpp_addr.085 = phi ptr [ %add.ptr, %for.body.for.body_crit_edge ], [ %sge, %for.cond.preheader.for.body_crit_edge ]
  %16 = ptrtoint ptr %sg_list to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sg_list, align 8
  %arrayidx = getelementptr %struct.ib_sge, ptr %17, i32 %i.086
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %arrayidx, align 8
  %conv = trunc i64 %19 to i32
  %20 = inttoptr i32 %conv to ptr
  %length = getelementptr %struct.ib_sge, ptr %17, i32 %i.086, i32 1
  %21 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %length, align 8
  %23 = call ptr @memcpy(ptr %dpp_addr.085, ptr %20, i32 %22)
  %24 = load ptr, ptr %sg_list, align 8
  %length16 = getelementptr %struct.ib_sge, ptr %24, i32 %i.086, i32 1
  %25 = ptrtoint ptr %length16 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %length16, align 8
  %add.ptr = getelementptr i8, ptr %dpp_addr.085, i32 %26
  %inc = add nuw nsw i32 %i.086, 1
  %27 = ptrtoint ptr %num_sge to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_sge, align 4
  %cmp10 = icmp slt i32 %inc, %28
  br i1 %cmp10, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %29 = ptrtoint ptr %total_len91 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %total_len91, align 4
  %add = add i32 %30, 15
  %div78 = and i32 %add, -16
  %add19 = add i32 %div78, %wqe_size
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp21 = icmp eq i32 %30, 0
  %add24 = add i32 %add19, 16
  %spec.select = select i1 %cmp21, i32 %add24, i32 %add19
  br label %if.end39

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %num_sge26 = getelementptr inbounds %struct.ib_send_wr, ptr %wr, i32 0, i32 3
  %31 = ptrtoint ptr %num_sge26 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_sge26, align 4
  %sg_list27 = getelementptr inbounds %struct.ib_send_wr, ptr %wr, i32 0, i32 2
  %33 = ptrtoint ptr %sg_list27 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sg_list27, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp34.i = icmp sgt i32 %32, 0
  br i1 %cmp34.i, label %for.body.lr.ph.i, label %if.else.for.end.i_crit_edge

if.else.for.end.i_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.else
  %total_len.i = getelementptr inbounds %struct.ocrdma_hdr_wqe, ptr %hdr, i32 0, i32 3
  br label %for.body.i83

for.body.i83:                                     ; preds = %for.body.i83.for.body.i83_crit_edge, %for.body.lr.ph.i
  %i.035.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i81, %for.body.i83.for.body.i83_crit_edge ]
  %arrayidx.i = getelementptr %struct.ib_sge, ptr %34, i32 %i.035.i
  %lkey.i = getelementptr %struct.ib_sge, ptr %34, i32 %i.035.i, i32 2
  %35 = ptrtoint ptr %lkey.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %lkey.i, align 4
  %arrayidx1.i = getelementptr %struct.ocrdma_sge, ptr %sge, i32 %i.035.i
  %lrkey.i = getelementptr %struct.ocrdma_sge, ptr %sge, i32 %i.035.i, i32 2
  %37 = ptrtoint ptr %lrkey.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %lrkey.i, align 4
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %arrayidx.i, align 8
  %conv.i = trunc i64 %39 to i32
  %addr_lo.i = getelementptr %struct.ocrdma_sge, ptr %sge, i32 %i.035.i, i32 1
  %40 = ptrtoint ptr %addr_lo.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %conv.i, ptr %addr_lo.i, align 4
  %41 = load i64, ptr %arrayidx.i, align 8
  %shr.i = lshr i64 %41, 32
  %conv7.i = trunc i64 %shr.i to i32
  %42 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %conv7.i, ptr %arrayidx1.i, align 4
  %length.i79 = getelementptr %struct.ib_sge, ptr %34, i32 %i.035.i, i32 1
  %43 = ptrtoint ptr %length.i79 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %length.i79, align 8
  %len.i = getelementptr %struct.ocrdma_sge, ptr %sge, i32 %i.035.i, i32 3
  %45 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %len.i, align 4
  %46 = load i32, ptr %length.i79, align 8
  %47 = ptrtoint ptr %total_len.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %total_len.i, align 4
  %add.i80 = add i32 %48, %46
  store i32 %add.i80, ptr %total_len.i, align 4
  %inc.i81 = add nuw nsw i32 %i.035.i, 1
  %exitcond.not.i82 = icmp eq i32 %inc.i81, %32
  br i1 %exitcond.not.i82, label %for.body.i83.for.end.i_crit_edge, label %for.body.i83.for.body.i83_crit_edge

for.body.i83.for.body.i83_crit_edge:              ; preds = %for.body.i83
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i83

for.body.i83.for.end.i_crit_edge:                 ; preds = %for.body.i83
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i83.for.end.i_crit_edge, %if.else.for.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp13.i = icmp eq i32 %32, 0
  br i1 %cmp13.i, label %if.then.i, label %for.end.i.ocrdma_build_sges.exit_crit_edge

for.end.i.ocrdma_build_sges.exit_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocrdma_build_sges.exit

if.then.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %49 = call ptr @memset(ptr %sge, i32 0, i32 16)
  br label %ocrdma_build_sges.exit

ocrdma_build_sges.exit:                           ; preds = %if.then.i, %for.end.i.ocrdma_build_sges.exit_crit_edge
  %50 = ptrtoint ptr %num_sge26 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %num_sge26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool29.not = icmp eq i32 %51, 0
  %mul32 = shl i32 %51, 4
  %mul32.pn = select i1 %tobool29.not, i32 16, i32 %mul32
  %wqe_size.addr.1 = add i32 %mul32.pn, %wqe_size
  %52 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %hdr, align 4
  %or38 = or i32 %53, 65536
  store i32 %or38, ptr %hdr, align 4
  br label %if.end39

if.end39:                                         ; preds = %ocrdma_build_sges.exit, %for.end
  %wqe_size.addr.2 = phi i32 [ %spec.select, %for.end ], [ %wqe_size.addr.1, %ocrdma_build_sges.exit ]
  %54 = shl i32 %wqe_size.addr.2, 15
  %shl = and i32 %54, -262144
  %55 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %hdr, align 4
  %or42 = or i32 %shl, %56
  store i32 %or42, ptr %hdr, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end39 ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ocrdma_update_wc(ptr nocapture noundef readonly %qp, ptr nocapture noundef writeonly %ibwc, i32 noundef %wqe_idx) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sq = getelementptr inbounds %struct.ocrdma_qp, ptr %qp, i32 0, i32 2
  %0 = ptrtoint ptr %sq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sq, align 4
  %entry_size.i = getelementptr inbounds %struct.ocrdma_qp, ptr %qp, i32 0, i32 2, i32 4
  %2 = ptrtoint ptr %entry_size.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %entry_size.i, align 4
  %mul.i = mul i32 %3, %wqe_idx
  %add.ptr.i = getelementptr i8, ptr %1, i32 %mul.i
  %wqe_wr_id_tbl = getelementptr inbounds %struct.ocrdma_qp, ptr %qp, i32 0, i32 3
  %4 = ptrtoint ptr %wqe_wr_id_tbl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wqe_wr_id_tbl, align 8
  %arrayidx = getelementptr %struct.anon.195, ptr %5, i32 %wqe_idx
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %arrayidx, align 8
  %8 = ptrtoint ptr %ibwc to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %ibwc, align 8
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr.i, align 4
  %11 = lshr i32 %10, 24
  %and = and i32 %11, 31
  %12 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %and, label %sw.default [
    i32 6, label %sw.bb
    i32 12, label %sw.bb2
    i32 0, label %sw.bb4
    i32 17, label %sw.bb6
    i32 21, label %sw.bb8
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %opcode1 = getelementptr inbounds %struct.ib_wc, ptr %ibwc, i32 0, i32 2
  %13 = ptrtoint ptr %opcode1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %opcode1, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %opcode3 = getelementptr inbounds %struct.ib_wc, ptr %ibwc, i32 0, i32 2
  %14 = ptrtoint ptr %opcode3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %opcode3, align 4
  %len = getelementptr %struct.ocrdma_hdr_wqe, ptr %add.ptr.i, i32 1, i32 3
  %15 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len, align 4
  %byte_len = getelementptr inbounds %struct.ib_wc, ptr %ibwc, i32 0, i32 4
  %17 = ptrtoint ptr %byte_len to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %byte_len, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %opcode5 = getelementptr inbounds %struct.ib_wc, ptr %ibwc, i32 0, i32 2
  %18 = ptrtoint ptr %opcode5 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %opcode5, align 4
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %opcode7 = getelementptr inbounds %struct.ib_wc, ptr %ibwc, i32 0, i32 2
  %19 = ptrtoint ptr %opcode7 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 8, ptr %opcode7, align 4
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %opcode9 = getelementptr inbounds %struct.ib_wc, ptr %ibwc, i32 0, i32 2
  %20 = ptrtoint ptr %opcode9 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 6, ptr %opcode9, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %status = getelementptr inbounds %struct.ib_wc, ptr %ibwc, i32 0, i32 1
  %21 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 21, ptr %status, align 8
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr.i, align 4
  %and11 = and i32 %23, 31
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, i32 noundef %and11) #19
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb8, %sw.bb6, %sw.bb4, %sw.bb2, %sw.bb
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #12

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @ocrdma_update_err_cqe(ptr nocapture noundef writeonly %ibwc, ptr nocapture noundef %cqe, ptr noundef %qp, i32 noundef %status) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %byte_len = getelementptr inbounds %struct.ib_wc, ptr %ibwc, i32 0, i32 4
  %0 = ptrtoint ptr %byte_len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %byte_len, align 4
  %qp1 = getelementptr inbounds %struct.ib_wc, ptr %ibwc, i32 0, i32 5
  %1 = ptrtoint ptr %qp1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %qp, ptr %qp1, align 8
  %conv = trunc i32 %status to i16
  %switch.tableidx = add i16 %conv, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 20, i16 %switch.tableidx)
  %2 = icmp ult i16 %switch.tableidx, 20
  %switch.idx.cast = zext i16 %switch.tableidx to i32
  %switch.offset = add nuw nsw i32 %switch.idx.cast, 1
  %ibwc_status.0.i = select i1 %2, i32 %switch.offset, i32 21
  %status2 = getelementptr inbounds %struct.ib_wc, ptr %ibwc, i32 0, i32 1
  %3 = ptrtoint ptr %status2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %ibwc_status.0.i, ptr %status2, align 8
  tail call void @ocrdma_flush_qp(ptr noundef %qp) #13
  %call3 = tail call i32 @ocrdma_qp_state_change(ptr noundef %qp, i32 noundef 6, ptr noundef null) #13
  %tail.i = getelementptr inbounds %struct.ocrdma_qp, ptr %qp, i32 0, i32 10, i32 3
  %4 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tail.i, align 4
  %head.i = getelementptr inbounds %struct.ocrdma_qp, ptr %qp, i32 0, i32 10, i32 2
  %6 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %head.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.i.not = icmp eq i32 %5, %7
  br i1 %cmp.i.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %tail.i15 = getelementptr inbounds %struct.ocrdma_qp, ptr %qp, i32 0, i32 2, i32 3
  %8 = ptrtoint ptr %tail.i15 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tail.i15, align 4
  %head.i16 = getelementptr inbounds %struct.ocrdma_qp, ptr %qp, i32 0, i32 2, i32 2
  %10 = ptrtoint ptr %head.i16 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %head.i16, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp.i17.not = icmp eq i32 %9, %11
  br i1 %cmp.i17.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %flags_status_srcqpn.i.i = getelementptr inbounds %struct.ocrdma_cqe, ptr %cqe, i32 0, i32 1
  %12 = ptrtoint ptr %flags_status_srcqpn.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags_status_srcqpn.i.i, align 4
  %14 = and i32 %13, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.not.i = icmp eq i32 %14, 0
  br i1 %tobool.not.not.i, label %if.then.ocrdma_set_cqe_status_flushed.exit_crit_edge, label %if.else.i

if.then.ocrdma_set_cqe_status_flushed.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocrdma_set_cqe_status_flushed.exit

if.else.i:                                        ; preds = %if.then
  %qp_type.i = getelementptr inbounds %struct.ocrdma_qp, ptr %qp, i32 0, i32 21
  %15 = ptrtoint ptr %qp_type.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %qp_type.i, align 16
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %16, label %if.else13.i [
    i32 4, label %if.else.i.ocrdma_set_cqe_status_flushed.exit_crit_edge
    i32 1, label %if.else.i.ocrdma_set_cqe_status_flushed.exit_crit_edge19
  ]

if.else.i.ocrdma_set_cqe_status_flushed.exit_crit_edge19: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocrdma_set_cqe_status_flushed.exit

if.else.i.ocrdma_set_cqe_status_flushed.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocrdma_set_cqe_status_flushed.exit

if.else13.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocrdma_set_cqe_status_flushed.exit

ocrdma_set_cqe_status_flushed.exit:               ; preds = %if.else13.i, %if.else.i.ocrdma_set_cqe_status_flushed.exit_crit_edge, %if.else.i.ocrdma_set_cqe_status_flushed.exit_crit_edge19, %if.then.ocrdma_set_cqe_status_flushed.exit_crit_edge
  %.sink.i = phi i32 [ -65281, %if.else13.i ], [ -65281, %if.then.ocrdma_set_cqe_status_flushed.exit_crit_edge ], [ -8, %if.else.i.ocrdma_set_cqe_status_flushed.exit_crit_edge ], [ -8, %if.else.i.ocrdma_set_cqe_status_flushed.exit_crit_edge19 ]
  %.sink35.i = phi i32 [ 1280, %if.else13.i ], [ 1280, %if.then.ocrdma_set_cqe_status_flushed.exit_crit_edge ], [ 5, %if.else.i.ocrdma_set_cqe_status_flushed.exit_crit_edge ], [ 5, %if.else.i.ocrdma_set_cqe_status_flushed.exit_crit_edge19 ]
  %18 = and i32 %.sink.i, %13
  %19 = or i32 %18, %.sink35.i
  %20 = ptrtoint ptr %flags_status_srcqpn.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %flags_status_srcqpn.i.i, align 4
  br label %if.end

if.end:                                           ; preds = %ocrdma_set_cqe_status_flushed.exit, %lor.lhs.false.if.end_crit_edge
  %expand.0.off0 = phi i1 [ false, %lor.lhs.false.if.end_crit_edge ], [ true, %ocrdma_set_cqe_status_flushed.exit ]
  ret i1 %expand.0.off0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocrdma_flush_qp(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind readonly }
attributes #12 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nounwind readnone }
attributes #19 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !11, !12, !13, !14, !16, !17, !19, !20, !22, !23, !24, !25, !27, !28, !29, !30, !32, !33, !35, !36, !38, !40, !42, !43, !44, !45, !47, !48, !49, !50, !52, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !110, !112, !113, !114, !115, !117, !118, !119, !120, !122, !123, !124}
!llvm.named.register.sp = !{!125}
!llvm.module.flags = !{!126, !127, !128, !129, !130, !131, !132, !133}
!llvm.ident = !{!134}

!0 = !{ptr @ocrdma_alloc_ucontext.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_verbs.c", i32 478, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_verbs.c", i32 726, i32 3}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @ocrdma_get_dma_mr._entry, !4, !"_entry", i1 false, i1 false}
!8 = !{ptr @ocrdma_get_dma_mr._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_verbs.c", i32 919, i32 3}
!11 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @ocrdma_dereg_mr._entry, !10, !"_entry", i1 false, i1 false}
!13 = !{ptr @ocrdma_dereg_mr._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @ocrdma_create_cq.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_verbs.c", i32 987, i32 2}
!16 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @ocrdma_create_cq.__key.7, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_verbs.c", i32 988, i32 2}
!19 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_verbs.c", i32 1359, i32 2}
!22 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @ocrdma_create_qp._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @ocrdma_create_qp._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_verbs.c", i32 1411, i32 3}
!27 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @ocrdma_modify_qp._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @ocrdma_modify_qp._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @ocrdma_create_srq.__key, !31, !"__key", i1 false, i1 false}
!31 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_verbs.c", i32 1782, i32 2}
!32 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!33 = distinct !{null, !34, !"__already_done", i1 false, i1 false}
!34 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!35 = distinct !{null, !34, !"<string literal>", i1 false, i1 false}
!36 = distinct !{null, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_verbs.c", i32 436, i32 3}
!42 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @ocrdma_dealloc_ucontext_pd._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @ocrdma_dealloc_ucontext_pd._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_verbs.c", i32 948, i32 3}
!47 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @ocrdma_copy_cq_uresp._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @ocrdma_copy_cq_uresp._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_verbs.c", i32 1105, i32 3}
!52 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @ocrdma_check_qp_params._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @ocrdma_check_qp_params._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_verbs.c", i32 1112, i32 3}
!57 = !{ptr @ocrdma_check_qp_params._entry.23, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @ocrdma_check_qp_params._entry_ptr.25, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_verbs.c", i32 1114, i32 3}
!61 = !{ptr @ocrdma_check_qp_params._entry.26, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @ocrdma_check_qp_params._entry_ptr.28, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_verbs.c", i32 1119, i32 3}
!65 = !{ptr @ocrdma_check_qp_params._entry.29, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @ocrdma_check_qp_params._entry_ptr.31, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_verbs.c", i32 1121, i32 3}
!69 = !{ptr @ocrdma_check_qp_params._entry.32, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @ocrdma_check_qp_params._entry_ptr.34, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.36, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_verbs.c", i32 1126, i32 3}
!73 = !{ptr @ocrdma_check_qp_params._entry.35, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @ocrdma_check_qp_params._entry_ptr.37, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.39, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_verbs.c", i32 1128, i32 3}
!77 = !{ptr @ocrdma_check_qp_params._entry.38, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @ocrdma_check_qp_params._entry_ptr.40, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.42, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_verbs.c", i32 1133, i32 3}
!81 = !{ptr @ocrdma_check_qp_params._entry.41, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @ocrdma_check_qp_params._entry_ptr.43, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.45, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_verbs.c", i32 1135, i32 3}
!85 = !{ptr @ocrdma_check_qp_params._entry.44, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @ocrdma_check_qp_params._entry_ptr.46, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.48, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_verbs.c", i32 1140, i32 3}
!89 = !{ptr @ocrdma_check_qp_params._entry.47, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @ocrdma_check_qp_params._entry_ptr.49, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.51, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_verbs.c", i32 1142, i32 3}
!93 = !{ptr @ocrdma_check_qp_params._entry.50, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @ocrdma_check_qp_params._entry_ptr.52, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.54, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_verbs.c", i32 1148, i32 3}
!97 = !{ptr @ocrdma_check_qp_params._entry.53, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @ocrdma_check_qp_params._entry_ptr.55, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.57, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_verbs.c", i32 1155, i32 3}
!101 = !{ptr @ocrdma_check_qp_params._entry.56, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @ocrdma_check_qp_params._entry_ptr.58, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.60, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_verbs.c", i32 1163, i32 4}
!105 = !{ptr @ocrdma_check_qp_params._entry.59, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @ocrdma_check_qp_params._entry_ptr.61, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @ocrdma_set_qp_init_params.__key, !108, !"__key", i1 false, i1 false}
!108 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_verbs.c", i32 1270, i32 2}
!109 = !{ptr @.str.62, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.63, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_verbs.c", i32 1209, i32 3}
!112 = !{ptr @.str.64, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @ocrdma_copy_qp_uresp._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @ocrdma_copy_qp_uresp._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.65, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_verbs.c", i32 1931, i32 4}
!117 = !{ptr @.str.66, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @ocrdma_build_inline_sges._entry, !116, !"_entry", i1 false, i1 false}
!119 = !{ptr @ocrdma_build_inline_sges._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.67, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_verbs.c", i32 2433, i32 3}
!122 = !{ptr @.str.68, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @ocrdma_update_wc._entry, !121, !"_entry", i1 false, i1 false}
!124 = !{ptr @ocrdma_update_wc._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!125 = !{!"sp"}
!126 = !{i32 1, !"wchar_size", i32 2}
!127 = !{i32 1, !"min_enum_size", i32 4}
!128 = !{i32 8, !"branch-target-enforcement", i32 0}
!129 = !{i32 8, !"sign-return-address", i32 0}
!130 = !{i32 8, !"sign-return-address-all", i32 0}
!131 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!132 = !{i32 7, !"uwtable", i32 1}
!133 = !{i32 7, !"frame-pointer", i32 2}
!134 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!135 = !{!"auto-init"}
!136 = !{i64 2153291682, i64 2153291707}
!137 = !{i8 0, i8 2}
!138 = !{!"branch_weights", i32 1, i32 2000}
!139 = !{i64 2153291001, i64 2153291026}
!140 = !{!"branch_weights", i32 2000, i32 1}
!141 = !{i64 5786556}
!142 = !{i64 5786753}
!143 = !{i64 2153271986}
!144 = !{i64 2158692086, i64 2158692595, i64 2158692123, i64 2158692179, i64 2158692213, i64 2158692237, i64 2158692278, i64 2158692299, i64 2158692327, i64 2158692361}
!145 = !{i64 2158704343}
!146 = !{i64 2153837247}
!147 = !{i64 6295125}
!148 = !{i64 2158704863}
!149 = !{i32 0, i32 33}
!150 = !{i64 2158705313, i64 2158705822, i64 2158705350, i64 2158705406, i64 2158705440, i64 2158705464, i64 2158705505, i64 2158705526, i64 2158705554, i64 2158705588}
!151 = !{i64 2158706996, i64 2158707505, i64 2158707033, i64 2158707089, i64 2158707123, i64 2158707147, i64 2158707188, i64 2158707209, i64 2158707237, i64 2158707271}
!152 = !{i64 2158708782}
!153 = !{i64 2158719243, i64 2158719752, i64 2158719280, i64 2158719336, i64 2158719370, i64 2158719394, i64 2158719435, i64 2158719456, i64 2158719484, i64 2158719518}
!154 = !{i64 2148586667, i64 2148586693, i64 2148586722, i64 2148586756, i64 2148586787, i64 2148586810}
!155 = !{i64 2158715511, i64 2158716020, i64 2158715548, i64 2158715604, i64 2158715638, i64 2158715662, i64 2158715703, i64 2158715724, i64 2158715752, i64 2158715786}
