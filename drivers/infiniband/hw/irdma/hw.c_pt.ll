; ModuleID = '/llk/IR_all_yes/drivers/infiniband/hw/irdma/hw.c_pt.bc'
source_filename = "../drivers/infiniband/hw/irdma/hw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.irdma_rsrc_limits = type { i32, i32, i32 }
%struct.irdma_puda_rsrc_info = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i8, i32 }
%struct.irdma_sc_vsi = type { i16, ptr, ptr, i32, %struct.irdma_virt_mem, ptr, i32, %struct.irdma_virt_mem, ptr, i32, i16, i16, i8, i32, i8, [8 x %struct.irdma_qos], ptr, %struct.atomic_t, ptr, ptr, i8, i8 }
%struct.irdma_virt_mem = type { ptr, i32 }
%struct.irdma_qos = type { %struct.list_head, %struct.mutex, i64, i32, i16, i8, i8, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.irdma_device = type { %struct.ib_device, ptr, ptr, ptr, %struct.irdma_sc_vsi, %struct.irdma_cm_core, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i32, %struct.wait_queue_head }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.231, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%union.anon.231 = type { %struct.ib_core_device }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type { ptr }
%struct.ib_device_attr = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i32, i32, %struct.ib_odp_caps, i64, i64, %struct.ib_rss_caps, i32, i32, %struct.ib_tm_caps, %struct.ib_cq_caps, i64, i32 }
%struct.ib_odp_caps = type { i64, %struct.anon.216 }
%struct.anon.216 = type { i32, i32, i32, i32 }
%struct.ib_rss_caps = type { i32, i32, i32 }
%struct.ib_tm_caps = type { i32, i32, i32, i32, i32 }
%struct.ib_cq_caps = type { i16, i16 }
%struct.rdmacg_device = type { %struct.list_head, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.irdma_cm_core = type { ptr, ptr, %struct.list_head, [256 x %struct.hlist_head], [256 x %struct.hlist_head], %struct.timer_list, ptr, %struct.spinlock, %struct.spinlock, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.irdma_pci_f = type { i8, i8, ptr, ptr, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.irdma_sc_dev, ptr, ptr, %struct.irdma_hw, %struct.irdma_cqp, %struct.irdma_ccq, %struct.irdma_aeq, ptr, ptr, ptr, %struct.spinlock, %struct.spinlock, %struct.spinlock, ptr, %struct.spinlock, %struct.mc_table_list, ptr, ptr, %struct.tasklet_struct, ptr, %struct.irdma_dma_mem, %struct.irdma_dma_mem, %struct.atomic_t, %struct.wait_queue_head, ptr, %struct.work_struct, %struct.irdma_sc_vsi, ptr, %struct.irdma_gen_ops, ptr }
%struct.irdma_sc_dev = type { %struct.list_head, %struct.spinlock, [128 x i8], [32 x %struct.irdma_dma_mem], i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr], i32, [6 x i64], [6 x i64], [13 x i64], [33 x i64], [27 x i64], [51 x i64], %struct.irdma_hw_attrs, ptr, ptr, ptr, [1024 x ptr], ptr, ptr, %struct.irdma_hmc_fpm_misc, ptr, %struct.mutex, i16, i8, i8, i8, i8, ptr, ptr, ptr }
%struct.irdma_hw_attrs = type { %struct.irdma_uk_attrs, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.irdma_uk_attrs = type { i64, i32, i32, i32, i32, i32, i32, i32, i16, i8 }
%struct.irdma_hmc_fpm_misc = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.irdma_hw = type { ptr, ptr, ptr, %struct.irdma_hmc_info }
%struct.irdma_hmc_info = type { i32, i8, i16, ptr, %struct.irdma_virt_mem, %struct.irdma_hmc_sd_table, [8192 x i16] }
%struct.irdma_hmc_sd_table = type { %struct.irdma_virt_mem, i32, i32, ptr }
%struct.irdma_cqp = type { %struct.irdma_sc_cqp, %struct.spinlock, %struct.spinlock, %struct.wait_queue_head, %struct.wait_queue_head, %struct.irdma_dma_mem, %struct.irdma_dma_mem, ptr, ptr, %struct.list_head, %struct.list_head }
%struct.irdma_sc_cqp = type { i32, i64, i64, ptr, ptr, ptr, %struct.irdma_dma_mem, %struct.irdma_ring, ptr, %struct.irdma_dcqcn_cc_params, ptr, ptr, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.irdma_ring = type { i32, i32, i32 }
%struct.irdma_dcqcn_cc_params = type { i8, i8, i8, i8, i16, i16, i16, i32, i32 }
%struct.irdma_ccq = type { %struct.irdma_sc_cq, %struct.irdma_dma_mem, %struct.irdma_dma_mem }
%struct.irdma_sc_cq = type { %struct.irdma_cq_uk, i64, i64, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i32, i8, i8 }
%struct.irdma_cq_uk = type { ptr, ptr, ptr, ptr, i32, i32, %struct.irdma_ring, i8, i8 }
%struct.irdma_aeq = type { %struct.irdma_sc_aeq, %struct.irdma_dma_mem, %struct.irdma_pble_alloc, i8 }
%struct.irdma_sc_aeq = type { i32, i64, ptr, ptr, ptr, i32, %struct.irdma_ring, i8, i32, i32, i8, i8 }
%struct.irdma_pble_alloc = type { i32, i32, %union.anon.285 }
%union.anon.285 = type { %struct.irdma_pble_level2 }
%struct.irdma_pble_level2 = type { %struct.irdma_pble_info, ptr, %struct.irdma_virt_mem, i32 }
%struct.irdma_pble_info = type { ptr, i32, i32, %struct.irdma_pble_chunkinfo }
%struct.irdma_pble_chunkinfo = type { ptr, i64, i64 }
%struct.mc_table_list = type { %struct.list_head, %struct.irdma_mc_table_info, %struct.irdma_mcast_grp_info }
%struct.irdma_mc_table_info = type { i32, [4 x i32], i8 }
%struct.irdma_mcast_grp_info = type <{ [6 x i8], i16, i8, i8, i16, i32, [4 x i32], i16, %struct.irdma_dma_mem, [2 x i8], [8 x %struct.irdma_mcast_grp_ctx_entry_info] }>
%struct.irdma_mcast_grp_ctx_entry_info = type { i32, i8, i16, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.286, i32 }
%union.anon.286 = type { ptr }
%struct.irdma_dma_mem = type { ptr, i32, i32 }
%struct.irdma_gen_ops = type { ptr, ptr, ptr }
%struct.cqp_cmds_info = type { %struct.list_head, i8, i8, %struct.cqp_info }
%struct.cqp_info = type { %union.anon.244 }
%union.anon.244 = type { %struct.anon.273 }
%struct.anon.273 = type { ptr, %struct.irdma_update_sds_info, i64 }
%struct.irdma_update_sds_info = type { i32, i8, [11 x %struct.irdma_update_sd_entry] }
%struct.irdma_update_sd_entry = type { i64, i64 }
%struct.anon.258 = type { ptr, i64, i8, i8 }
%struct.irdma_irq_ops = type { ptr, ptr, ptr, ptr }
%struct.irdma_msix_vector = type { i32, i32, i32, i32, %struct.cpumask }
%struct.irdma_ceq = type { %struct.irdma_sc_ceq, %struct.irdma_dma_mem, i32, i32, ptr, %struct.tasklet_struct, %struct.spinlock }
%struct.irdma_sc_ceq = type { i32, i64, ptr, ptr, ptr, i32, i32, %struct.irdma_ring, i8, i8, i32, i8, ptr, ptr, i32, %struct.spinlock, i8 }
%struct.irdma_hmc_del_obj_info = type { ptr, %struct.irdma_virt_mem, i32, i32, i32, i32, i8 }
%struct.irdma_hmc_obj_info = type { i64, i32, i32, i64 }
%struct.irdma_vsi_init_info = type { ptr, ptr, ptr, i16, i16, i32, i16, ptr, ptr }
%struct.irdma_vsi_stats_info = type { ptr, i8, i8 }
%struct.irdma_cqp_request = type { %struct.cqp_cmds_info, %struct.wait_queue_head, %struct.list_head, %struct.refcount_struct, ptr, ptr, %struct.irdma_cqp_compl_info, i8 }
%struct.irdma_cqp_compl_info = type { i32, i16, i16, i8, i8 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.181, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.202, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.181 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%union.anon.202 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.anon.257 = type { ptr, %struct.irdma_local_mac_entry_info, i64 }
%struct.irdma_local_mac_entry_info = type { [6 x i8], i16 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.243, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.243 = type { ptr }
%struct.irdma_aeq_init_info = type { i64, ptr, ptr, ptr, i32, i8, i8, i32, i32 }
%struct.irdma_ccq_init_info = type { i64, i64, ptr, ptr, ptr, ptr, i32, i32, i32, i8, i8, i8, i32, ptr }
%struct.irdma_device_init_info = type { i64, i64, ptr, ptr, ptr, ptr, i8 }
%struct.irdma_qvlist_info = type { i32, [1 x %struct.irdma_qv_info] }
%struct.irdma_qv_info = type { i32, i16, i16, i8 }
%struct.msix_entry = type { i32, i16 }
%struct.irdma_hmc_pble_rsrc = type { i32, %struct.mutex, ptr, i64, i64, %struct.irdma_pble_prm, i64, i64, i32, i32, i64, i64, i64, i64, i64 }
%struct.irdma_pble_prm = type { %struct.list_head, %struct.spinlock, i64, i64, i8 }
%struct.irdma_cqp_init_info = type { i64, i64, i64, ptr, ptr, %struct.irdma_dcqcn_cc_params, ptr, ptr, i32, i16, i16, i8, i8, i8, i8, i8, i32 }
%struct.irdma_ccq_cqe_info = type { ptr, i64, i32, i16, i16, i8, i8 }
%struct.irdma_modify_qp_info = type <{ i64, i64, i16, i8, i8, i8, i16, i8 }>
%struct.irdma_qp = type { %struct.ib_qp, [4 x i8], %struct.irdma_sc_qp, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irdma_qp_host_ctx_info, %union.anon.291, %union.anon.292, %struct.irdma_ah, %struct.list_head, %struct.refcount_struct, ptr, ptr, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.spinlock, ptr, ptr, i32, ptr, i8, i8, i16, i16, i8, i8, %struct.irdma_qp_kmode, %struct.irdma_dma_mem, %struct.timer_list, ptr, %struct.irdma_dma_mem, %struct.irdma_dma_mem, %struct.completion, %struct.wait_queue_head, %struct.wait_queue_head, i8 }
%struct.ib_qp = type { ptr, ptr, ptr, ptr, %struct.spinlock, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, %struct.atomic_t, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i8, %struct.rdma_restrack_entry, ptr }
%struct.rdma_restrack_entry = type { i8, i8, %struct.kref, %struct.completion, ptr, ptr, i32, i8, i32 }
%struct.irdma_sc_qp = type <{ %struct.irdma_qp_uk, i64, i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, [4 x i8], %struct.irdma_pfpdu, i32, ptr, i64, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i16, [3 x i8], i32, i32, i8, i8, [2 x i8], %struct.list_head }>
%struct.irdma_qp_uk = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irdma_ring, %struct.irdma_ring, %struct.irdma_ring, i32, i32, i32, i32, i32, i32, i32, %struct.irdma_wqe_uk_ops, i16, i8, i8, i8, i8, i8, i8, i8, ptr, i8, i8, i8 }
%struct.irdma_wqe_uk_ops = type { ptr, ptr, ptr, ptr }
%struct.irdma_pfpdu = type { %struct.list_head, i32, i32, i32, i32, i32, i8, i8, i64, i64, i64, i64, i64, i64, i64, i64, ptr, ptr, %struct.spinlock, ptr }
%struct.irdma_qp_host_ctx_info = type { i64, %union.anon.289, %union.anon.290, i32, i32, i32, i8, i8, i8 }
%union.anon.289 = type { ptr }
%union.anon.290 = type { ptr }
%union.anon.291 = type { %struct.irdma_roce_offload_info }
%struct.irdma_roce_offload_info = type { i16, i16, i32, i32, i8, i8, i8, i32, i16, i16, i16, i16, i16, i8, [6 x i8], i8 }
%union.anon.292 = type { %struct.irdma_tcp_offload_info }
%struct.irdma_tcp_offload_info = type { i16, i8, i8, i8, i8, i8, i16, i16, [4 x i32], i32, i16, i16, i16, i32, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, [4 x i32] }
%struct.irdma_ah = type { %struct.ib_ah, %struct.irdma_sc_ah, ptr, %struct.irdma_av, i8, %union.ib_gid }
%struct.ib_ah = type { ptr, ptr, ptr, ptr, i32 }
%struct.irdma_sc_ah = type { ptr, %struct.irdma_ah_info }
%struct.irdma_ah_info = type { ptr, i32, i32, [4 x i32], [4 x i32], i32, i32, i16, i8, i8, i8, [6 x i8], i8 }
%struct.irdma_av = type { [16 x i8], %struct.rdma_ah_attr, %union.anon.293, %union.anon.293, i8 }
%struct.rdma_ah_attr = type { %struct.ib_global_route, i8, i8, i32, i8, i32, %union.anon.217 }
%struct.ib_global_route = type { ptr, %union.ib_gid, i32, i8, i8, i8 }
%union.anon.217 = type { %struct.opa_ah_attr }
%struct.opa_ah_attr = type { i32, i8, i8 }
%union.anon.293 = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.72 }
%union.anon.72 = type { [4 x i32] }
%union.ib_gid = type { %struct.anon.212 }
%struct.anon.212 = type { i64, i64 }
%struct.irdma_qp_kmode = type { %struct.irdma_dma_mem, ptr, ptr }
%struct.irdma_apbvt_entry = type { %struct.hlist_node, i32, i16 }
%struct.anon.271 = type { ptr, %struct.irdma_apbvt_info, i64 }
%struct.irdma_apbvt_info = type { i16, i8 }
%struct.anon.255 = type { ptr, %struct.irdma_add_arp_cache_entry_info, i64 }
%struct.irdma_add_arp_cache_entry_info = type { [6 x i8], i32, i16, i8 }
%struct.anon.272 = type { ptr, %struct.irdma_qhash_table_info, i64 }
%struct.irdma_qhash_table_info = type { ptr, i32, i32, i8, [6 x i8], i16, i8, i32, [4 x i32], [4 x i32], i16, i16 }
%struct.irdma_cm_info = type { ptr, i16, i16, [4 x i32], [4 x i32], i32, i16, i32, i8, i8, i8 }
%struct.irdma_cm_node = type { ptr, ptr, ptr, %struct.irdma_cm_tcp_context, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.callback_head, %struct.irdma_mpa_priv_info, ptr, %union.anon.294, %struct.irdma_kmem_info, ptr, %struct.hlist_node, %struct.completion, %struct.spinlock, %struct.atomic_t, %struct.refcount_struct, i32, i32, i32, [4 x i32], [4 x i32], i16, i16, i32, i32, i16, i16, i16, i16, i16, [512 x i8], [6 x i8], [6 x i8], i8, i8, i8 }
%struct.irdma_cm_tcp_context = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }
%struct.irdma_mpa_priv_info = type { ptr, i32 }
%union.anon.294 = type { %struct.ietf_mpa_v2 }
%struct.ietf_mpa_v2 = type { [16 x i8], i8, i8, i16, %struct.ietf_rtr_msg, [0 x i8] }
%struct.ietf_rtr_msg = type { i16, i16 }
%struct.irdma_kmem_info = type { ptr, i32 }
%struct.anon.267 = type { ptr, %struct.irdma_qp_flush_info, i64 }
%struct.irdma_qp_flush_info = type { i16, i16, i16, i16, i16, i8, i8 }
%struct.anon.268 = type { ptr, %struct.irdma_gen_ae_info, i64 }
%struct.irdma_gen_ae_info = type { i16, i8 }
%struct.irdma_ceq_init_info = type { i64, ptr, ptr, ptr, i32, i32, i8, i8, i8, i32, ptr, ptr, i32 }
%struct.irdma_cq = type { %struct.ib_cq, %struct.irdma_sc_cq, i16, i16, i16, i8, i8, i32, i32, i32, %struct.irdma_dma_mem, %struct.irdma_dma_mem, %struct.spinlock, ptr, ptr, %struct.list_head, %struct.irdma_cq_poll_info }
%struct.ib_cq = type { ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.atomic_t, i32, ptr, %struct.list_head, %union.anon.211, ptr, ptr, i64, i8, i32, %struct.rdma_restrack_entry }
%union.anon.211 = type { %struct.work_struct }
%struct.irdma_cq_poll_info = type { i64, ptr, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, [6 x i8], i8, i8 }
%struct.irdma_aeqe_info = type { i64, i32, i16, i16, i8, i8, i8, i8, i8 }
%struct.ib_event = type { ptr, %union.anon.205, i32 }
%union.anon.205 = type { ptr }
%struct.ib_port_data = type { ptr, %struct.ib_port_immutable, %struct.spinlock, %struct.spinlock, %struct.list_head, %struct.ib_port_cache, ptr, %struct.hlist_node, %struct.rdma_port_counter, ptr }
%struct.ib_port_immutable = type { i32, i32, i32, i32 }
%struct.ib_port_cache = type { i64, ptr, ptr, i8, i32 }
%struct.rdma_port_counter = type { %struct.rdma_counter_mode, ptr, i32, %struct.mutex }
%struct.rdma_counter_mode = type { i32, i32, %struct.auto_mode_param }
%struct.auto_mode_param = type { i32 }
%struct.irdma_iwarp_offload_info = type { i16, i16, i8, i8, i8, i16, i32, i16, i16, i16, i16, i16, i8, [6 x i8], i8 }
%struct.irdma_cm_listener = type { %struct.list_head, ptr, ptr, ptr, %struct.list_head, ptr, i32, %struct.refcount_struct, %struct.atomic_t, [4 x i32], i32, i32, i16, i16, [6 x i8], i8, i8, i8 }
%struct.irdma_hmc_create_obj_info = type { ptr, %struct.irdma_virt_mem, i32, i32, i32, i32, i32, i8 }

@irdma_rt_deinit_hw.__UNIQUE_ID_ddebug712 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 1, i8 -104, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"irdma\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"irdma_rt_deinit_hw\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/infiniband/hw/irdma/hw.c\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"INIT: state = %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bad init_state = %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"irdma-cleanup-wq\00", [47 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@irdma_rt_init_hw.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&iwdev->suspend_wq\00", [45 x i8] zeroinitializer }, align 32
@irdma_rt_init_hw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 1861, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"HW runtime init FAIL status = %d last cmpl = %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"irdma_rt_init_hw\00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@irdma_rt_init_hw._entry_ptr = internal global ptr @irdma_rt_init_hw._entry, section ".printk_index", align 4
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cqp_cmpl_wq\00", [20 x i8] zeroinitializer }, align 32
@irdma_ctrl_init_hw.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"(work_completion)(&rf->cqp_cmpl_work)\00", [58 x i8] zeroinitializer }, align 32
@irdma_ctrl_init_hw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 1927, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"IRDMA hardware initialization FAILED init_state=%d status=%d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"irdma_ctrl_init_hw\00", [45 x i8] zeroinitializer }, align 32
@irdma_ctrl_init_hw._entry_ptr = internal global ptr @irdma_ctrl_init_hw._entry, section ".printk_index", align 4
@.str.15 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"cqp opcode = 0x%x maj_err_code = 0x%x min_err_code = 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@irdma_manage_qhash.__UNIQUE_ID_ddebug718 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.17, i8 2, i8 111, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"irdma_manage_qhash\00", [45 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [111 x i8], [49 x i8] } { [111 x i8] c"CM: %s caller: %pS loc_port=0x%04x rem_port=0x%04x loc_addr=%pI4 rem_addr=%pI4 mac=%pM, vlan_id=%d cm_node=%p\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DELETE\00", [25 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ADD\00", [28 x i8] zeroinitializer }, align 32
@irdma_manage_qhash.__UNIQUE_ID_ddebug719 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.20, i8 2, i8 113, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [111 x i8], [49 x i8] } { [111 x i8] c"CM: %s caller: %pS loc_port=0x%04x rem_port=0x%04x loc_addr=%pI6 rem_addr=%pI6 mac=%pM, vlan_id=%d cm_node=%p\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"fatal QP event: SQ in error but not flushed, qp: %d\00", [44 x i8] zeroinitializer }, align 32
@irdma_hw_flush_wqes.__UNIQUE_ID_ddebug720 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.23, i8 2, i8 -104, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"irdma_hw_flush_wqes\00", [44 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [111 x i8], [49 x i8] } { [111 x i8] c"VERBS: qp_id=%d qp_type=%d qpstate=%d ibqpstate=%d last_aeq=%d hw_iw_state=%d maj_err_code=%d min_err_code=%d\0A\00", [49 x i8] zeroinitializer }, align 32
@irdma_initialize_ieq.__UNIQUE_ID_ddebug711 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.25, i8 1, i8 116, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"irdma_initialize_ieq\00", [43 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ERR: ieq create fail\0A\00", [42 x i8] zeroinitializer }, align 32
@irdma_destroy_aeq.__UNIQUE_ID_ddebug686 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.2, ptr @.str.27, i8 0, i8 -101, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"irdma_destroy_aeq\00", [46 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ERR: Destroy AEQ failed %d\0A\00", [36 x i8] zeroinitializer }, align 32
@irdma_destroy_ceq.__UNIQUE_ID_ddebug687 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.29, i8 0, i8 -93, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"irdma_destroy_ceq\00", [46 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ERR: CEQ destroy command failed %d\0A\00", [60 x i8] zeroinitializer }, align 32
@irdma_destroy_ceq.__UNIQUE_ID_ddebug688 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.30, i8 0, i8 -91, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"ERR: CEQ destroy completion failed %d\0A\00", [57 x i8] zeroinitializer }, align 32
@irdma_destroy_ccq.__UNIQUE_ID_ddebug689 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.2, ptr @.str.32, i8 0, i8 -71, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"irdma_destroy_ccq\00", [46 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ERR: CCQ destroy failed %d\0A\00", [36 x i8] zeroinitializer }, align 32
@iw_hmc_obj_types = internal constant { [19 x i32], [52 x i8] } { [19 x i32] [i32 0, i32 1, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20], [52 x i8] zeroinitializer }, align 32
@irdma_close_hmc_objects_type.__UNIQUE_ID_ddebug690 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.2, ptr @.str.34, i8 0, i8 -64, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"irdma_close_hmc_objects_type\00", [35 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ERR: del HMC obj of type %d failed\0A\00", [60 x i8] zeroinitializer }, align 32
@irdma_destroy_cqp.__UNIQUE_ID_ddebug685 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.2, ptr @.str.36, i8 0, i8 -112, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"irdma_destroy_cqp\00", [46 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ERR: Destroy CQP failed %d\0A\00", [36 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@irdma_initialize_ilq.__UNIQUE_ID_ddebug708 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.2, ptr @.str.38, i8 1, i8 109, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"irdma_initialize_ilq\00", [43 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ERR: ilq create fail\0A\00", [42 x i8] zeroinitializer }, align 32
@irdma_setup_ceqs.__UNIQUE_ID_ddebug703 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.2, ptr @.str.40, i8 1, i8 64, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"irdma_setup_ceqs\00", [47 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ERR: create ceq status = %d\0A\00", [35 x i8] zeroinitializer }, align 32
@irdma_setup_ceqs.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.41 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&iwceq->ce_lock\00", [16 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AEQCEQ\00", [25 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CEQ\00", [28 x i8] zeroinitializer }, align 32
@irdma_cfg_ceq_vector.__UNIQUE_ID_ddebug694 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.2, ptr @.str.45, i8 1, i8 20, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"irdma_cfg_ceq_vector\00", [43 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ERR: ceq irq config fail\0A\00", [38 x i8] zeroinitializer }, align 32
@irdma_puda_ce_handler.__UNIQUE_ID_ddebug681 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.2, ptr @.str.47, i8 0, i8 21, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"irdma_puda_ce_handler\00", [42 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ERR: puda status = %d\0A\00", [41 x i8] zeroinitializer }, align 32
@irdma_puda_ce_handler.__UNIQUE_ID_ddebug682 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.2, ptr @.str.48, i8 0, i8 22, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ERR: puda compl_err  =0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@irdma_process_aeq.__UNIQUE_ID_ddebug683 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.2, ptr @.str.50, i8 0, i8 58, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"irdma_process_aeq\00", [46 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"AEQ: ae_id = 0x%x bool qp=%d qp_id = %d tcp_state=%d iwarp_state=%d ae_src=%d\0A\00", [49 x i8] zeroinitializer }, align 32
@irdma_process_aeq.__UNIQUE_ID_ddebug684 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.2, ptr @.str.51, i8 0, i8 61, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"AEQ: qp_id %d is already freed\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Processing an iWARP related AE for CQ misc = 0x%04X\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"abnormal ae_id = 0x%x bool qp=%d qp_id = %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"expected irq = %d received irq = %d\0A\00", [59 x i8] zeroinitializer }, align 32
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.55 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@irdma_cfg_aeq_vector.__UNIQUE_ID_ddebug695 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.56, ptr @.str.2, ptr @.str.57, i8 1, i8 27, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"irdma_cfg_aeq_vector\00", [43 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ERR: aeq irq config fail\0A\00", [38 x i8] zeroinitializer }, align 32
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@irdma_create_cqp.__UNIQUE_ID_ddebug692 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.2, ptr @.str.59, i8 0, i8 -16, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"irdma_create_cqp\00", [47 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ERR: cqp init status %d\0A\00", [39 x i8] zeroinitializer }, align 32
@irdma_create_cqp.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.60 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&cqp->req_lock\00", [17 x i8] zeroinitializer }, align 32
@irdma_create_cqp.__key.61 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.62 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&cqp->compl_lock\00", [47 x i8] zeroinitializer }, align 32
@irdma_create_cqp.__UNIQUE_ID_ddebug693 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.2, ptr @.str.63, i8 0, i8 -13, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"ERR: cqp create failed - status %d maj_err %d min_err %d\0A\00", [38 x i8] zeroinitializer }, align 32
@irdma_create_cqp.__key.64 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.65 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&cqp->cqp_requests[i].waitq\00", [36 x i8] zeroinitializer }, align 32
@irdma_create_cqp.__key.66 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.67 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&cqp->remove_wq\00", [16 x i8] zeroinitializer }, align 32
@rsrc_limits_table = internal constant { [8 x %struct.irdma_rsrc_limits], [32 x i8] } { [8 x %struct.irdma_rsrc_limits] [%struct.irdma_rsrc_limits { i32 128, i32 0, i32 0 }, %struct.irdma_rsrc_limits { i32 1024, i32 0, i32 0 }, %struct.irdma_rsrc_limits { i32 2048, i32 0, i32 0 }, %struct.irdma_rsrc_limits { i32 4096, i32 0, i32 0 }, %struct.irdma_rsrc_limits { i32 16384, i32 0, i32 0 }, %struct.irdma_rsrc_limits { i32 65536, i32 0, i32 0 }, %struct.irdma_rsrc_limits { i32 131072, i32 0, i32 0 }, %struct.irdma_rsrc_limits { i32 262144, i32 0, i32 0 }], [32 x i8] zeroinitializer }, align 32
@irdma_create_hmc_objs.__UNIQUE_ID_ddebug691 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.68, ptr @.str.2, ptr @.str.69, i8 0, i8 -47, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"irdma_create_hmc_objs\00", [42 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"ERR: create obj type %d status = %d\0A\00", [59 x i8] zeroinitializer }, align 32
@irdma_setup_ceq_0.__UNIQUE_ID_ddebug700 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.70, ptr @.str.2, ptr @.str.40, i8 1, i8 50, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"irdma_setup_ceq_0\00", [46 x i8] zeroinitializer }, align 32
@irdma_setup_ceq_0.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@irdma_set_hw_rsrc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.71 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&rf->rsrc_lock\00", [17 x i8] zeroinitializer }, align 32
@irdma_set_hw_rsrc.__key.72 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.73 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&rf->arp_lock\00", [18 x i8] zeroinitializer }, align 32
@irdma_set_hw_rsrc.__key.74 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.75 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&rf->qptable_lock\00", [46 x i8] zeroinitializer }, align 32
@irdma_set_hw_rsrc.__key.76 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.77 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&rf->qh_list_lock\00", [46 x i8] zeroinitializer }, align 32
@irdma_cqp_manage_apbvt_cmd.__UNIQUE_ID_ddebug717 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.78, ptr @.str.2, ptr @.str.79, i8 2, i8 60, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"irdma_cqp_manage_apbvt_cmd\00", [37 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DEV: %s: port=0x%04x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Flush QP[%d] failed, SQ has more work\00", [58 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.81 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.82 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.83 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.84 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 3]
@__sancov_gen_cov_switch_values.85 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 2]
@__sancov_gen_cov_switch_values.86 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 3]
@__sancov_gen_cov_switch_values.87 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 2]
@__sancov_gen_cov_switch_values.88 = internal global [5 x i64] [i64 3, i64 8, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.89 = internal global [38 x i64] [i64 36, i64 16, i64 284, i64 306, i64 513, i64 514, i64 515, i64 518, i64 519, i64 772, i64 773, i64 775, i64 776, i64 785, i64 786, i64 787, i64 788, i64 1025, i64 1026, i64 1027, i64 1281, i64 1282, i64 1283, i64 1285, i64 1287, i64 1288, i64 1289, i64 1290, i64 1292, i64 1294, i64 1312, i64 1537, i64 1538, i64 1539, i64 1792, i64 1793, i64 1794, i64 2304]
@__sancov_gen_cov_switch_values.90 = internal global [32 x i64] [i64 30, i64 16, i64 258, i64 259, i64 260, i64 261, i64 262, i64 263, i64 264, i64 265, i64 266, i64 274, i64 280, i64 281, i64 283, i64 284, i64 306, i64 307, i64 308, i64 309, i64 519, i64 520, i64 522, i64 525, i64 526, i64 771, i64 773, i64 790, i64 1285, i64 1287, i64 1290, i64 1792]
@__sancov_gen_cov_switch_values.91 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 5]
@__sancov_gen_cov_switch_values.92 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967274]
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 1634, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 1657, i32 29 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 1850, i32 39 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 1855, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 1860, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 1915, i32 21 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 1921, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 1926, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 2071, i32 33 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 2488, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 2496, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 2637, i32 37 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 2653, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 1489, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 623, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 653, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 659, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 741, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant [17 x i8] c"iw_hmc_obj_types\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 33, i32 33 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 767, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 576, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 1461, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 1281, i32 4 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 1285, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 1094, i32 10 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 1099, i32 10 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 1105, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 86, i32 4 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 90, i32 4 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 230, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 246, i32 5 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 330, i32 7 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 379, i32 29 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 532, i32 43 }
@___asan_gen_.277 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 108, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 1133, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 963, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 967, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 968, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 972, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 983, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 986, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant [18 x i8] c"rsrc_limits_table\00", align 1
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 5, i32 33 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 834, i32 5 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 1226, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 1231, i32 2 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 1949, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 1950, i32 2 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 1951, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 1952, i32 2 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 2289, i32 2 }
@___asan_gen_.363 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.364 = private constant [36 x i8] c"../drivers/infiniband/hw/irdma/hw.c\00", align 1
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 2546, i32 35 }
@llvm.compiler.used = appending global [93 x ptr] [ptr @irdma_ctrl_init_hw._entry, ptr @irdma_ctrl_init_hw._entry_ptr, ptr @irdma_rt_init_hw._entry, ptr @irdma_rt_init_hw._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @irdma_rt_init_hw.__key, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @irdma_ctrl_init_hw.__key, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @iw_hmc_obj_types, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @irdma_setup_ceqs.__key, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @irdma_create_cqp.__key, ptr @.str.60, ptr @irdma_create_cqp.__key.61, ptr @.str.62, ptr @.str.63, ptr @irdma_create_cqp.__key.64, ptr @.str.65, ptr @irdma_create_cqp.__key.66, ptr @.str.67, ptr @rsrc_limits_table, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @irdma_setup_ceq_0.__key, ptr @irdma_set_hw_rsrc.__key, ptr @.str.71, ptr @irdma_set_hw_rsrc.__key.72, ptr @.str.73, ptr @irdma_set_hw_rsrc.__key.74, ptr @.str.75, ptr @irdma_set_hw_rsrc.__key.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80], section "llvm.metadata"
@0 = internal global [91 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irdma_rt_init_hw.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irdma_rt_init_hw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irdma_ctrl_init_hw.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irdma_ctrl_init_hw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 111, i32 160, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 111, i32 160, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 111, i32 160, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iw_hmc_obj_types to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irdma_setup_ceqs.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irdma_create_cqp.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irdma_create_cqp.__key.61 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irdma_create_cqp.__key.64 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irdma_create_cqp.__key.66 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsrc_limits_table to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irdma_setup_ceq_0.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irdma_set_hw_rsrc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irdma_set_hw_rsrc.__key.72 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irdma_set_hw_rsrc.__key.74 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irdma_set_hw_rsrc.__key.76 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @irdma_reinitialize_ieq(ptr noundef %vsi) local_unnamed_addr #0 align 64 {
entry:
  %info.i = alloca %struct.irdma_puda_rsrc_info, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %back_vsi = getelementptr inbounds %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 2
  %0 = ptrtoint ptr %back_vsi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %back_vsi, align 8
  %rf1 = getelementptr inbounds %struct.irdma_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %rf1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rf1, align 8
  tail call void @irdma_puda_dele_rsrc(ptr noundef %vsi, i32 noundef 2, i1 noundef zeroext false) #9
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %info.i) #9
  %4 = call ptr @memset(ptr %info.i, i32 0, i32 44)
  %type.i = getelementptr inbounds %struct.irdma_puda_rsrc_info, ptr %info.i, i32 0, i32 2
  %5 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %type.i, align 4
  %cq_id.i = getelementptr inbounds %struct.irdma_puda_rsrc_info, ptr %info.i, i32 0, i32 5
  %6 = ptrtoint ptr %cq_id.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %cq_id.i, align 4
  %vsi.i = getelementptr inbounds %struct.irdma_device, ptr %1, i32 0, i32 4
  %exception_lan_q.i = getelementptr inbounds %struct.irdma_device, ptr %1, i32 0, i32 4, i32 9
  %7 = ptrtoint ptr %exception_lan_q.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %exception_lan_q.i, align 4
  %qp_id.i = getelementptr inbounds %struct.irdma_puda_rsrc_info, ptr %info.i, i32 0, i32 6
  %9 = ptrtoint ptr %qp_id.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %qp_id.i, align 4
  %count.i = getelementptr inbounds %struct.irdma_puda_rsrc_info, ptr %info.i, i32 0, i32 3
  %10 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %count.i, align 4
  %pd_id.i = getelementptr inbounds %struct.irdma_puda_rsrc_info, ptr %info.i, i32 0, i32 4
  %11 = ptrtoint ptr %pd_id.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %pd_id.i, align 4
  %abi_ver.i = getelementptr inbounds %struct.irdma_puda_rsrc_info, ptr %info.i, i32 0, i32 13
  %12 = ptrtoint ptr %abi_ver.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 5, ptr %abi_ver.i, align 4
  %13 = ptrtoint ptr %rf1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rf1, align 8
  %max_qp.i = getelementptr inbounds %struct.irdma_pci_f, ptr %14, i32 0, i32 10
  %15 = ptrtoint ptr %max_qp.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %max_qp.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %16)
  %cmp.i = icmp ult i32 %16, 65536
  %div19.i = lshr i32 %16, 1
  %cond.i = select i1 %cmp.i, i32 %div19.i, i32 32768
  %sq_size.i = getelementptr inbounds %struct.irdma_puda_rsrc_info, ptr %info.i, i32 0, i32 7
  %17 = ptrtoint ptr %sq_size.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %cond.i, ptr %sq_size.i, align 4
  %rq_size.i = getelementptr inbounds %struct.irdma_puda_rsrc_info, ptr %info.i, i32 0, i32 8
  %18 = ptrtoint ptr %rq_size.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %cond.i, ptr %rq_size.i, align 4
  %mtu.i = getelementptr inbounds %struct.irdma_device, ptr %1, i32 0, i32 4, i32 10
  %19 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %mtu.i, align 8
  %add.i = add i16 %20, 20
  %buf_size.i = getelementptr inbounds %struct.irdma_puda_rsrc_info, ptr %info.i, i32 0, i32 10
  %21 = ptrtoint ptr %buf_size.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %add.i, ptr %buf_size.i, align 4
  %tx_buf_cnt.i = getelementptr inbounds %struct.irdma_puda_rsrc_info, ptr %info.i, i32 0, i32 9
  %22 = ptrtoint ptr %tx_buf_cnt.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 4096, ptr %tx_buf_cnt.i, align 4
  %call.i = call i32 @irdma_puda_create_rsrc(ptr noundef %vsi.i, ptr noundef nonnull %info.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %irdma_initialize_ieq.exit.thread, label %do.body.i

irdma_initialize_ieq.exit.thread:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %info.i) #9
  br label %if.end

do.body.i:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_initialize_ieq.__UNIQUE_ID_ddebug711, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_reinitialize_ieq, %if.then10.i)) #9
          to label %if.then [label %if.then10.i], !srcloc !179

if.then10.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_initialize_ieq.__UNIQUE_ID_ddebug711, ptr noundef %1, ptr noundef nonnull @.str.25) #9
  br label %if.then

if.then:                                          ; preds = %if.then10.i, %do.body.i
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %info.i) #9
  %23 = ptrtoint ptr %rf1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rf1, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load = load i8, ptr %24, align 8
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %24, align 8
  %gen_ops = getelementptr inbounds %struct.irdma_pci_f, ptr %3, i32 0, i32 70
  %26 = ptrtoint ptr %gen_ops to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %gen_ops, align 4
  call void %27(ptr noundef %3) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %irdma_initialize_ieq.exit.thread
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irdma_puda_dele_rsrc(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @irdma_rt_deinit_hw(ptr noundef %iwdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_rt_deinit_hw.__UNIQUE_ID_ddebug712, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_rt_deinit_hw, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !179

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %init_state = getelementptr inbounds %struct.irdma_device, ptr %iwdev, i32 0, i32 18
  %0 = ptrtoint ptr %init_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %init_state, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_rt_deinit_hw.__UNIQUE_ID_ddebug712, ptr noundef %iwdev, ptr noundef nonnull @.str.3, i32 noundef %1) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %init_state3 = getelementptr inbounds %struct.irdma_device, ptr %iwdev, i32 0, i32 18
  %2 = ptrtoint ptr %init_state3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %init_state3, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %sw.default [
    i32 12, label %sw.bb
    i32 11, label %do.end.sw.bb10_crit_edge
    i32 10, label %do.end.sw.bb10_crit_edge62
    i32 9, label %do.end.sw.bb10_crit_edge63
    i32 8, label %do.end.sw.bb10_crit_edge64
    i32 7, label %do.end.sw.bb17_crit_edge
  ]

do.end.sw.bb17_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb17

do.end.sw.bb10_crit_edge64:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb10

do.end.sw.bb10_crit_edge63:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb10

do.end.sw.bb10_crit_edge62:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb10

do.end.sw.bb10_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb10

sw.bb:                                            ; preds = %do.end
  %rf = getelementptr inbounds %struct.irdma_device, ptr %iwdev, i32 0, i32 1
  %5 = ptrtoint ptr %rf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rf, align 8
  %hw_rev = getelementptr inbounds %struct.irdma_pci_f, ptr %6, i32 0, i32 42, i32 25, i32 0, i32 9
  %7 = ptrtoint ptr %hw_rev to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %hw_rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %8)
  %cmp = icmp eq i8 %8, 1
  br i1 %cmp, label %if.then5, label %sw.bb.sw.bb10_crit_edge

sw.bb.sw.bb10_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb10

if.then5:                                         ; preds = %sw.bb
  %mac_ip_table_idx = getelementptr inbounds %struct.irdma_device, ptr %iwdev, i32 0, i32 13
  %9 = ptrtoint ptr %mac_ip_table_idx to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %mac_ip_table_idx, align 4
  %cqp.i = getelementptr inbounds %struct.irdma_pci_f, ptr %6, i32 0, i32 46
  %call.i = tail call ptr @irdma_alloc_and_get_cqp_request(ptr noundef %cqp.i, i1 noundef zeroext true) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then5.sw.bb10_crit_edge, label %if.end.i

if.then5.sw.bb10_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb10

if.end.i:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  %cqp_cmd.i = getelementptr inbounds %struct.cqp_cmds_info, ptr %call.i, i32 0, i32 1
  %11 = ptrtoint ptr %cqp_cmd.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 49, ptr %cqp_cmd.i, align 8
  %post_sq.i = getelementptr inbounds %struct.cqp_cmds_info, ptr %call.i, i32 0, i32 2
  %12 = ptrtoint ptr %post_sq.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %post_sq.i, align 1
  %in.i = getelementptr inbounds %struct.cqp_cmds_info, ptr %call.i, i32 0, i32 3
  %13 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %cqp.i, ptr %in.i, align 8
  %14 = ptrtoint ptr %call.i to i32
  %conv.i = zext i32 %14 to i64
  %scratch.i = getelementptr inbounds %struct.cqp_cmds_info, ptr %call.i, i32 0, i32 3, i32 0, i32 0, i32 1
  %15 = ptrtoint ptr %scratch.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %conv.i, ptr %scratch.i, align 8
  %conv4.i = trunc i16 %10 to i8
  %entry_idx.i = getelementptr inbounds %struct.cqp_cmds_info, ptr %call.i, i32 0, i32 3, i32 0, i32 0, i32 1, i32 2
  %16 = ptrtoint ptr %entry_idx.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv4.i, ptr %entry_idx.i, align 8
  %ignore_ref_count.i = getelementptr inbounds %struct.anon.258, ptr %in.i, i32 0, i32 3
  %17 = ptrtoint ptr %ignore_ref_count.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %ignore_ref_count.i, align 1
  %call9.i = tail call i32 @irdma_handle_cqp_op(ptr noundef %6, ptr noundef nonnull %call.i) #9
  tail call void @irdma_put_cqp_request(ptr noundef %cqp.i, ptr noundef nonnull %call.i) #9
  br label %sw.bb10

sw.bb10:                                          ; preds = %if.end.i, %if.then5.sw.bb10_crit_edge, %sw.bb.sw.bb10_crit_edge, %do.end.sw.bb10_crit_edge, %do.end.sw.bb10_crit_edge62, %do.end.sw.bb10_crit_edge63, %do.end.sw.bb10_crit_edge64
  %roce_mode = getelementptr inbounds %struct.irdma_device, ptr %iwdev, i32 0, i32 17
  %18 = ptrtoint ptr %roce_mode to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load = load i8, ptr %roce_mode, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %if.then11, label %sw.bb10.sw.bb17_crit_edge

sw.bb10.sw.bb17_crit_edge:                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb17

if.then11:                                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #11
  %vsi = getelementptr inbounds %struct.irdma_device, ptr %iwdev, i32 0, i32 4
  %rf12 = getelementptr inbounds %struct.irdma_device, ptr %iwdev, i32 0, i32 1
  %19 = ptrtoint ptr %rf12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rf12, align 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load13 = load i8, ptr %20, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load13)
  %bf.cast15 = icmp slt i8 %bf.load13, 0
  tail call void @irdma_puda_dele_rsrc(ptr noundef %vsi, i32 noundef 2, i1 noundef zeroext %bf.cast15) #9
  br label %sw.bb17

sw.bb17:                                          ; preds = %if.then11, %sw.bb10.sw.bb17_crit_edge, %do.end.sw.bb17_crit_edge
  %roce_mode18 = getelementptr inbounds %struct.irdma_device, ptr %iwdev, i32 0, i32 17
  %22 = ptrtoint ptr %roce_mode18 to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load19 = load i8, ptr %roce_mode18, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load19)
  %bf.cast21.not = icmp sgt i8 %bf.load19, -1
  br i1 %bf.cast21.not, label %if.then22, label %sw.bb17.sw.epilog_crit_edge

sw.bb17.sw.epilog_crit_edge:                      ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then22:                                        ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #11
  %vsi23 = getelementptr inbounds %struct.irdma_device, ptr %iwdev, i32 0, i32 4
  %rf24 = getelementptr inbounds %struct.irdma_device, ptr %iwdev, i32 0, i32 1
  %23 = ptrtoint ptr %rf24 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rf24, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load25 = load i8, ptr %24, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load25)
  %bf.cast27 = icmp slt i8 %bf.load25, 0
  tail call void @irdma_puda_dele_rsrc(ptr noundef %vsi23, i32 noundef 1, i1 noundef zeroext %bf.cast27) #9
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ibdev_warn(ptr noundef %iwdev, ptr noundef nonnull @.str.4, i32 noundef %3) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.then22, %sw.bb17.sw.epilog_crit_edge
  %cm_core = getelementptr inbounds %struct.irdma_device, ptr %iwdev, i32 0, i32 5
  tail call void @irdma_cleanup_cm_core(ptr noundef %cm_core) #9
  %pestat = getelementptr inbounds %struct.irdma_device, ptr %iwdev, i32 0, i32 4, i32 16
  %26 = ptrtoint ptr %pestat to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pestat, align 8
  %tobool32.not = icmp eq ptr %27, null
  br i1 %tobool32.not, label %sw.epilog.if.end37_crit_edge, label %if.then33

sw.epilog.if.end37_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.then33:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %vsi31 = getelementptr inbounds %struct.irdma_device, ptr %iwdev, i32 0, i32 4
  tail call void @irdma_vsi_stats_free(ptr noundef %vsi31) #9
  %28 = ptrtoint ptr %pestat to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pestat, align 8
  tail call void @kfree(ptr noundef %29) #9
  br label %if.end37

if.end37:                                         ; preds = %if.then33, %sw.epilog.if.end37_crit_edge
  %cleanup_wq = getelementptr inbounds %struct.irdma_device, ptr %iwdev, i32 0, i32 3
  %30 = ptrtoint ptr %cleanup_wq to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cleanup_wq, align 8
  %tobool38.not = icmp eq ptr %31, null
  br i1 %tobool38.not, label %if.end37.if.end41_crit_edge, label %if.then39

if.end37.if.end41_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.then39:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @destroy_workqueue(ptr noundef nonnull %31) #9
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %if.end37.if.end41_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_ibdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @irdma_del_local_mac_entry(ptr noundef %rf, i16 noundef zeroext %idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cqp = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 46
  %call = tail call ptr @irdma_alloc_and_get_cqp_request(ptr noundef %cqp, i1 noundef zeroext true) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %cqp_cmd = getelementptr inbounds %struct.cqp_cmds_info, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %cqp_cmd to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 49, ptr %cqp_cmd, align 8
  %post_sq = getelementptr inbounds %struct.cqp_cmds_info, ptr %call, i32 0, i32 2
  %1 = ptrtoint ptr %post_sq to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %post_sq, align 1
  %in = getelementptr inbounds %struct.cqp_cmds_info, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %cqp, ptr %in, align 8
  %3 = ptrtoint ptr %call to i32
  %conv = zext i32 %3 to i64
  %scratch = getelementptr inbounds %struct.cqp_cmds_info, ptr %call, i32 0, i32 3, i32 0, i32 0, i32 1
  %4 = ptrtoint ptr %scratch to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %conv, ptr %scratch, align 8
  %conv4 = trunc i16 %idx to i8
  %entry_idx = getelementptr inbounds %struct.cqp_cmds_info, ptr %call, i32 0, i32 3, i32 0, i32 0, i32 1, i32 2
  %5 = ptrtoint ptr %entry_idx to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv4, ptr %entry_idx, align 8
  %ignore_ref_count = getelementptr inbounds %struct.anon.258, ptr %in, i32 0, i32 3
  %6 = ptrtoint ptr %ignore_ref_count to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %ignore_ref_count, align 1
  %call9 = tail call i32 @irdma_handle_cqp_op(ptr noundef %rf, ptr noundef nonnull %call) #9
  tail call void @irdma_put_cqp_request(ptr noundef %cqp, ptr noundef nonnull %call) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @ibdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irdma_cleanup_cm_core(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irdma_vsi_stats_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @irdma_ctrl_deinit_hw(ptr noundef %rf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %init_state = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 41
  %0 = ptrtoint ptr %init_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %init_state, align 4
  store i32 0, ptr %init_state, align 4
  %2 = ptrtoint ptr %rf to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %rf, align 8
  %3 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %bf.cast.not = icmp eq i8 %3, 0
  br i1 %bf.cast.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @irdma_destroy_aeq(ptr noundef %rf)
  %pble_rsrc = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 50
  %4 = ptrtoint ptr %pble_rsrc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pble_rsrc, align 4
  tail call void @irdma_destroy_pble_prm(ptr noundef %5) #9
  tail call fastcc void @irdma_del_ceqs(ptr noundef %rf)
  %6 = ptrtoint ptr %rf to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load2 = load i8, ptr %rf, align 8
  %bf.clear3 = and i8 %bf.load2, -65
  store i8 %bf.clear3, ptr %rf, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %7 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %1, label %sw.default [
    i32 6, label %sw.bb
    i32 5, label %if.end.sw.bb4_crit_edge
    i32 4, label %if.end.sw.bb5_crit_edge
    i32 3, label %if.end.sw.bb5_crit_edge32
    i32 2, label %if.end.sw.bb10_crit_edge
    i32 1, label %if.end.sw.bb11_crit_edge
  ]

if.end.sw.bb11_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb11

if.end.sw.bb10_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb10

if.end.sw.bb5_crit_edge32:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb5

if.end.sw.bb5_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb5

if.end.sw.bb4_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb4

sw.bb:                                            ; preds = %if.end
  %ceqlist.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 49
  %8 = ptrtoint ptr %ceqlist.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ceqlist.i, align 8
  %10 = ptrtoint ptr %rf to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load.i = load i8, ptr %rf, align 8
  %11 = and i8 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %bf.cast.not.i = icmp eq i8 %11, 0
  %iw_msixtbl2.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 58
  %12 = ptrtoint ptr %iw_msixtbl2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %iw_msixtbl2.i, align 8
  br i1 %bf.cast.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %sc_dev.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 42
  %irq_ops.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 42, i32 31
  %14 = ptrtoint ptr %irq_ops.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %irq_ops.i, align 8
  %irdma_cfg_ceq.i = getelementptr inbounds %struct.irdma_irq_ops, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %irdma_cfg_ceq.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %irdma_cfg_ceq.i, align 4
  %ceq_id.i = getelementptr inbounds %struct.irdma_msix_vector, ptr %13, i32 0, i32 3
  %18 = ptrtoint ptr %ceq_id.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ceq_id.i, align 4
  %20 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %13, align 4
  tail call void %17(ptr noundef %sc_dev.i, i32 noundef %19, i32 noundef %21, i1 noundef zeroext false) #9
  br label %irdma_del_ceq_0.exit

if.else.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx3.i = getelementptr %struct.irdma_msix_vector, ptr %13, i32 1
  %sc_dev.i22.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 42
  %irq_ops.i23.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 42, i32 31
  br label %irdma_del_ceq_0.exit

irdma_del_ceq_0.exit:                             ; preds = %if.else.i, %if.then.i
  %irq_ops.i23.sink.i = phi ptr [ %irq_ops.i23.i, %if.else.i ], [ %irq_ops.i, %if.then.i ]
  %arrayidx3.sink.i = phi ptr [ %arrayidx3.i, %if.else.i ], [ %13, %if.then.i ]
  %sc_dev.i22.sink.i = phi ptr [ %sc_dev.i22.i, %if.else.i ], [ %sc_dev.i, %if.then.i ]
  %.sink.i = phi i32 [ 1, %if.else.i ], [ 0, %if.then.i ]
  %.sink28.i = phi ptr [ %9, %if.else.i ], [ %rf, %if.then.i ]
  %22 = ptrtoint ptr %irq_ops.i23.sink.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %irq_ops.i23.sink.i, align 8
  %irdma_dis_irq.i24.i = getelementptr inbounds %struct.irdma_irq_ops, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %irdma_dis_irq.i24.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %irdma_dis_irq.i24.i, align 4
  %26 = ptrtoint ptr %arrayidx3.sink.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx3.sink.i, align 4
  tail call void %25(ptr noundef %sc_dev.i22.sink.i, i32 noundef %27) #9
  %irq.i25.i = getelementptr %struct.irdma_msix_vector, ptr %13, i32 %.sink.i, i32 1
  %28 = ptrtoint ptr %irq.i25.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %irq.i25.i, align 4
  %call.i.i26.i = tail call i32 @__irq_apply_affinity_hint(i32 noundef %29, ptr noundef null, i1 noundef zeroext false) #9
  %30 = ptrtoint ptr %irq.i25.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %irq.i25.i, align 4
  %call2.i27.i = tail call ptr @free_irq(i32 noundef %31, ptr noundef %.sink28.i) #9
  tail call fastcc void @irdma_destroy_ceq(ptr noundef %rf, ptr noundef %9) #9
  %ceq_valid.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 42, i32 38
  %32 = ptrtoint ptr %ceq_valid.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load5.i = load i8, ptr %ceq_valid.i, align 8
  %bf.clear6.i = and i8 %bf.load5.i, -65
  store i8 %bf.clear6.i, ptr %ceq_valid.i, align 8
  %ceqs_count.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 29
  %33 = ptrtoint ptr %ceqs_count.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %ceqs_count.i, align 4
  br label %sw.bb4

sw.bb4:                                           ; preds = %irdma_del_ceq_0.exit, %if.end.sw.bb4_crit_edge
  tail call fastcc void @irdma_destroy_ccq(ptr noundef %rf)
  br label %sw.bb5

sw.bb5:                                           ; preds = %sw.bb4, %if.end.sw.bb5_crit_edge, %if.end.sw.bb5_crit_edge32
  %sc_dev = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 42
  %hmc_info = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 42, i32 26
  %34 = ptrtoint ptr %hmc_info to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hmc_info, align 8
  %36 = ptrtoint ptr %rf to i32
  call void @__asan_load1_noabort(i32 %36)
  %bf.load7 = load i8, ptr %rf, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load7)
  %bf.cast9 = icmp slt i8 %bf.load7, 0
  %rdma_ver = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 4
  %37 = ptrtoint ptr %rdma_ver to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %rdma_ver, align 4
  %conv = zext i8 %38 to i32
  tail call fastcc void @irdma_del_hmc_objects(ptr noundef %sc_dev, ptr noundef %35, i1 noundef zeroext %bf.cast9, i32 noundef %conv)
  br label %sw.bb10

sw.bb10:                                          ; preds = %sw.bb5, %if.end.sw.bb10_crit_edge
  tail call fastcc void @irdma_destroy_cqp(ptr noundef %rf, i1 noundef zeroext true)
  br label %sw.bb11

sw.bb11:                                          ; preds = %sw.bb10, %if.end.sw.bb11_crit_edge
  %hmc_info.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 42, i32 26
  %39 = ptrtoint ptr %hmc_info.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hmc_info.i, align 8
  %sd_entry.i = getelementptr inbounds %struct.irdma_hmc_info, ptr %40, i32 0, i32 5, i32 3
  %41 = ptrtoint ptr %sd_entry.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %sd_entry.i, align 4
  tail call void @kfree(ptr noundef %42) #9
  %43 = ptrtoint ptr %hmc_info.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hmc_info.i, align 8
  %sd_entry3.i = getelementptr inbounds %struct.irdma_hmc_info, ptr %44, i32 0, i32 5, i32 3
  %45 = ptrtoint ptr %sd_entry3.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %sd_entry3.i, align 4
  %mem_rsrc.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 3
  %46 = ptrtoint ptr %mem_rsrc.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mem_rsrc.i, align 8
  tail call void @kfree(ptr noundef %47) #9
  %48 = ptrtoint ptr %mem_rsrc.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %mem_rsrc.i, align 8
  %device.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 45, i32 2
  %49 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %device.i, align 8
  %obj_mem.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 62
  %size.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 62, i32 2
  %51 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %size.i, align 4
  %53 = ptrtoint ptr %obj_mem.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %obj_mem.i, align 4
  %pa.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 62, i32 1
  %55 = ptrtoint ptr %pa.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %pa.i, align 4
  tail call void @dma_free_attrs(ptr noundef %50, i32 noundef %52, ptr noundef %54, i32 noundef %56, i32 noundef 0) #9
  %57 = ptrtoint ptr %obj_mem.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %obj_mem.i, align 4
  %rdma_ver.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 4
  %58 = ptrtoint ptr %rdma_ver.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %rdma_ver.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %59)
  %cmp.not.i = icmp eq i8 %59, 1
  br i1 %cmp.not.i, label %sw.bb11.irdma_del_init_mem.exit_crit_edge, label %if.then.i30

sw.bb11.irdma_del_init_mem.exit_crit_edge:        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #11
  br label %irdma_del_init_mem.exit

if.then.i30:                                      ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #11
  %allocated_ws_nodes.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 33
  %60 = ptrtoint ptr %allocated_ws_nodes.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %allocated_ws_nodes.i, align 4
  tail call void @kfree(ptr noundef %61) #9
  %62 = ptrtoint ptr %allocated_ws_nodes.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %allocated_ws_nodes.i, align 4
  br label %irdma_del_init_mem.exit

irdma_del_init_mem.exit:                          ; preds = %if.then.i30, %sw.bb11.irdma_del_init_mem.exit_crit_edge
  %ceqlist.i31 = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 49
  %63 = ptrtoint ptr %ceqlist.i31 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ceqlist.i31, align 8
  tail call void @kfree(ptr noundef %64) #9
  %65 = ptrtoint ptr %ceqlist.i31 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %ceqlist.i31, align 8
  %iw_msixtbl.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 58
  %66 = ptrtoint ptr %iw_msixtbl.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %iw_msixtbl.i, align 8
  tail call void @kfree(ptr noundef %67) #9
  %68 = ptrtoint ptr %iw_msixtbl.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %iw_msixtbl.i, align 8
  %hmc_info_mem.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 2
  %69 = ptrtoint ptr %hmc_info_mem.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %hmc_info_mem.i, align 4
  tail call void @kfree(ptr noundef %70) #9
  %71 = ptrtoint ptr %hmc_info_mem.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr null, ptr %hmc_info_mem.i, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %iwdev = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 71
  %72 = ptrtoint ptr %iwdev to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %iwdev, align 8
  %74 = ptrtoint ptr %init_state to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %init_state, align 4
  tail call void (ptr, ptr, ...) @ibdev_warn(ptr noundef %73, ptr noundef nonnull @.str.4, i32 noundef %75) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %irdma_del_init_mem.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @irdma_destroy_aeq(ptr noundef %rf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_dev = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 42
  %aeq1 = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 48
  %0 = ptrtoint ptr %rf to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %rf, align 8
  %1 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %bf.cast.not = icmp eq i8 %1, 0
  br i1 %bf.cast.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %irq_ops = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 42, i32 31
  %2 = ptrtoint ptr %irq_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irq_ops, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %iw_msixtbl = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 58
  %6 = ptrtoint ptr %iw_msixtbl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iw_msixtbl, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  tail call void %5(ptr noundef %sc_dev, i32 noundef %9, i1 noundef zeroext false) #9
  %10 = ptrtoint ptr %iw_msixtbl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %iw_msixtbl, align 8
  %12 = ptrtoint ptr %irq_ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %irq_ops, align 8
  %irdma_dis_irq.i = getelementptr inbounds %struct.irdma_irq_ops, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %irdma_dis_irq.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %irdma_dis_irq.i, align 4
  %16 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %11, align 4
  tail call void %15(ptr noundef %sc_dev, i32 noundef %17) #9
  %irq.i = getelementptr inbounds %struct.irdma_msix_vector, ptr %11, i32 0, i32 1
  %18 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irq.i, align 4
  %call.i.i = tail call i32 @__irq_apply_affinity_hint(i32 noundef %19, ptr noundef null, i1 noundef zeroext false) #9
  %20 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %irq.i, align 4
  %call2.i = tail call ptr @free_irq(i32 noundef %21, ptr noundef %rf) #9
  %22 = ptrtoint ptr %rf to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load5.pr = load i8, ptr %rf, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %bf.load5 = phi i8 [ %bf.load5.pr, %if.then ], [ %bf.load, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load5)
  %bf.cast7.not = icmp sgt i8 %bf.load5, -1
  br i1 %bf.cast7.not, label %if.end9, label %if.end.exit_crit_edge

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.end9:                                          ; preds = %if.end
  %23 = ptrtoint ptr %aeq1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %aeq1, align 8
  %call = tail call i32 @irdma_cqp_aeq_cmd(ptr noundef %sc_dev, ptr noundef %aeq1, i8 noundef zeroext 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end9.exit_crit_edge, label %do.body

if.end9.exit_crit_edge:                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

do.body:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_destroy_aeq.__UNIQUE_ID_ddebug686, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_destroy_aeq, %if.then16)) #9
          to label %exit [label %if.then16], !srcloc !179

if.then16:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %call17 = tail call ptr @to_ibdev(ptr noundef %sc_dev) #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_destroy_aeq.__UNIQUE_ID_ddebug686, ptr noundef %call17, ptr noundef nonnull @.str.27, i32 noundef %call) #9
  br label %exit

exit:                                             ; preds = %if.then16, %do.body, %if.end9.exit_crit_edge, %if.end.exit_crit_edge
  %virtual_map = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 48, i32 3
  %24 = ptrtoint ptr %virtual_map to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %virtual_map, align 8, !range !180
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool20.not = icmp eq i8 %25, 0
  br i1 %tobool20.not, label %if.else, label %if.then21

if.then21:                                        ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #11
  %mem.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 48, i32 1
  %size.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 48, i32 1, i32 2
  %26 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %size.i, align 8
  %sub.i = add i32 %27, 4095
  %div9.i = lshr i32 %sub.i, 12
  %palloc.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 48, i32 2
  %28 = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 48, i32 2, i32 2
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 8
  %hw.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 45
  tail call void @irdma_unmap_vm_page_list(ptr noundef %hw.i, ptr noundef %30, i32 noundef %div9.i) #9
  %pble_rsrc.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 50
  %31 = ptrtoint ptr %pble_rsrc.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pble_rsrc.i, align 4
  tail call void @irdma_free_pble(ptr noundef %32, ptr noundef %palloc.i) #9
  %33 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mem.i, align 8
  tail call void @vfree(ptr noundef %34) #9
  br label %if.end27

if.else:                                          ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #11
  %hw = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 42, i32 8
  %35 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hw, align 8
  %device = getelementptr inbounds %struct.irdma_hw, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %device, align 4
  %mem = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 48, i32 1
  %size22 = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 48, i32 1, i32 2
  %39 = ptrtoint ptr %size22 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %size22, align 8
  %41 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mem, align 8
  %pa = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 48, i32 1, i32 1
  %43 = ptrtoint ptr %pa to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %pa, align 4
  tail call void @dma_free_attrs(ptr noundef %38, i32 noundef %40, ptr noundef %42, i32 noundef %44, i32 noundef 0) #9
  %45 = ptrtoint ptr %mem to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %mem, align 8
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.then21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irdma_destroy_pble_prm(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @irdma_del_ceqs(ptr noundef %rf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ceqs_count = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 29
  %0 = ptrtoint ptr %ceqs_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ceqs_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp33 = icmp ugt i32 %1, 1
  br i1 %cmp33, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %iw_msixtbl2 = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 58
  %2 = ptrtoint ptr %iw_msixtbl2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iw_msixtbl2, align 8
  %4 = ptrtoint ptr %rf to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %rf, align 8
  %5 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %bf.cast.not = icmp eq i8 %5, 0
  %. = select i1 %bf.cast.not, i32 2, i32 1
  %arrayidx3 = getelementptr %struct.irdma_msix_vector, ptr %3, i32 %.
  %ceqlist = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 49
  %6 = ptrtoint ptr %ceqlist to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ceqlist, align 8
  %sc_dev = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 42
  %irq_ops = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 42, i32 31
  %hw = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 42, i32 8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.036 = phi i32 [ 1, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %msix_vec.135 = phi ptr [ %arrayidx3, %for.body.lr.ph ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %.pn34 = phi ptr [ %7, %for.body.lr.ph ], [ %iwceq.0, %for.body.for.body_crit_edge ]
  %iwceq.0 = getelementptr %struct.irdma_ceq, ptr %.pn34, i32 1
  %8 = ptrtoint ptr %irq_ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %irq_ops, align 8
  %irdma_cfg_ceq = getelementptr inbounds %struct.irdma_irq_ops, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %irdma_cfg_ceq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %irdma_cfg_ceq, align 4
  %ceq_id = getelementptr inbounds %struct.irdma_msix_vector, ptr %msix_vec.135, i32 0, i32 3
  %12 = ptrtoint ptr %ceq_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ceq_id, align 4
  %14 = ptrtoint ptr %msix_vec.135 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %msix_vec.135, align 4
  tail call void %11(ptr noundef %sc_dev, i32 noundef %13, i32 noundef %15, i1 noundef zeroext false) #9
  %16 = ptrtoint ptr %irq_ops to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %irq_ops, align 8
  %irdma_dis_irq.i = getelementptr inbounds %struct.irdma_irq_ops, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %irdma_dis_irq.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %irdma_dis_irq.i, align 4
  %20 = ptrtoint ptr %msix_vec.135 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %msix_vec.135, align 4
  tail call void %19(ptr noundef %sc_dev, i32 noundef %21) #9
  %irq.i = getelementptr inbounds %struct.irdma_msix_vector, ptr %msix_vec.135, i32 0, i32 1
  %22 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %irq.i, align 4
  %call.i.i = tail call i32 @__irq_apply_affinity_hint(i32 noundef %23, ptr noundef null, i1 noundef zeroext false) #9
  %24 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %irq.i, align 4
  %call2.i = tail call ptr @free_irq(i32 noundef %25, ptr noundef %iwceq.0) #9
  %call = tail call i32 @irdma_cqp_ceq_cmd(ptr noundef %sc_dev, ptr noundef %iwceq.0, i8 noundef zeroext 1) #9
  %26 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hw, align 8
  %device = getelementptr inbounds %struct.irdma_hw, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %device, align 4
  %mem = getelementptr %struct.irdma_ceq, ptr %.pn34, i32 1, i32 1
  %size = getelementptr %struct.irdma_ceq, ptr %.pn34, i32 1, i32 1, i32 2
  %30 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %size, align 8
  %32 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mem, align 8
  %pa = getelementptr %struct.irdma_ceq, ptr %.pn34, i32 1, i32 1, i32 1
  %34 = ptrtoint ptr %pa to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pa, align 4
  tail call void @dma_free_attrs(ptr noundef %29, i32 noundef %31, ptr noundef %33, i32 noundef %35, i32 noundef 0) #9
  %36 = ptrtoint ptr %mem to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %mem, align 8
  %inc = add nuw i32 %i.036, 1
  %incdec.ptr = getelementptr %struct.irdma_msix_vector, ptr %msix_vec.135, i32 1
  %37 = ptrtoint ptr %ceqs_count to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ceqs_count, align 4
  %cmp = icmp ult i32 %inc, %38
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %39 = ptrtoint ptr %ceqs_count to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %ceqs_count, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @irdma_destroy_ccq(ptr noundef %rf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_dev = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 42
  %0 = ptrtoint ptr %rf to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %rf, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %if.end, label %entry.if.end11_crit_edge

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.end:                                           ; preds = %entry
  %ccq2 = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 42, i32 30
  %1 = ptrtoint ptr %ccq2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ccq2, align 4
  %call = tail call i32 @irdma_sc_ccq_destroy(ptr noundef %2, i64 noundef 0, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end.if.end11_crit_edge, label %do.body

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_destroy_ccq.__UNIQUE_ID_ddebug689, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_destroy_ccq, %if.then8)) #9
          to label %if.end11 [label %if.then8], !srcloc !179

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %call9 = tail call ptr @to_ibdev(ptr noundef %sc_dev) #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_destroy_ccq.__UNIQUE_ID_ddebug689, ptr noundef %call9, ptr noundef nonnull @.str.32, i32 noundef %call) #9
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %do.body, %if.end.if.end11_crit_edge, %entry.if.end11_crit_edge
  %hw = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 42, i32 8
  %3 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw, align 8
  %device = getelementptr inbounds %struct.irdma_hw, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %device, align 4
  %mem_cq = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 47, i32 1
  %size = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 47, i32 1, i32 2
  %7 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %size, align 8
  %9 = ptrtoint ptr %mem_cq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mem_cq, align 8
  %pa = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 47, i32 1, i32 1
  %11 = ptrtoint ptr %pa to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pa, align 4
  tail call void @dma_free_attrs(ptr noundef %6, i32 noundef %8, ptr noundef %10, i32 noundef %12, i32 noundef 0) #9
  %13 = ptrtoint ptr %mem_cq to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %mem_cq, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @irdma_del_hmc_objects(ptr noundef %dev, ptr noundef %hmc_info, i1 noundef zeroext %reset, i32 noundef %vers) unnamed_addr #0 align 64 {
entry:
  %info.i = alloca %struct.irdma_hmc_del_obj_info, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hmc_info2 = getelementptr inbounds %struct.irdma_sc_dev, ptr %dev, i32 0, i32 26
  %0 = getelementptr inbounds i8, ptr %info.i, i32 4
  %rsrc_type.i = getelementptr inbounds %struct.irdma_hmc_del_obj_info, ptr %info.i, i32 0, i32 2
  %hmc_obj.i = getelementptr inbounds %struct.irdma_hmc_info, ptr %hmc_info, i32 0, i32 3
  %count.i = getelementptr inbounds %struct.irdma_hmc_del_obj_info, ptr %info.i, i32 0, i32 4
  %privileged3.i = getelementptr inbounds %struct.irdma_hmc_del_obj_info, ptr %info.i, i32 0, i32 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %vers)
  %cmp7 = icmp eq i32 %vers, 1
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %i.01 = phi i32 [ 0, %entry ], [ %inc, %if.end.for.body_crit_edge ]
  %1 = ptrtoint ptr %hmc_info2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hmc_info2, align 8
  %hmc_obj = getelementptr inbounds %struct.irdma_hmc_info, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %hmc_obj to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hmc_obj, align 4
  %arrayidx = getelementptr [19 x i32], ptr @iw_hmc_obj_types, i32 0, i32 %i.01
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %cnt = getelementptr %struct.irdma_hmc_obj_info, ptr %4, i32 %6, i32 2
  %7 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %info.i) #9
  %9 = call ptr @memset(ptr %0, i32 0, i32 28)
  %10 = ptrtoint ptr %info.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %hmc_info, ptr %info.i, align 4
  %11 = ptrtoint ptr %rsrc_type.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %6, ptr %rsrc_type.i, align 4
  %12 = ptrtoint ptr %hmc_obj.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hmc_obj.i, align 4
  %cnt.i = getelementptr %struct.irdma_hmc_obj_info, ptr %13, i32 %6, i32 2
  %14 = ptrtoint ptr %cnt.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cnt.i, align 4
  %16 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %count.i, align 4
  %17 = ptrtoint ptr %privileged3.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %privileged3.i, align 4
  %call.i = call i32 @irdma_sc_del_hmc_obj(ptr noundef %dev, ptr noundef nonnull %info.i, i1 noundef zeroext %reset) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool6.not.i, label %if.then.irdma_close_hmc_objects_type.exit_crit_edge, label %do.body.i

if.then.irdma_close_hmc_objects_type.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %irdma_close_hmc_objects_type.exit

do.body.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_close_hmc_objects_type.__UNIQUE_ID_ddebug690, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_del_hmc_objects, %if.then12.i)) #9
          to label %irdma_close_hmc_objects_type.exit [label %if.then12.i], !srcloc !179

if.then12.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %call13.i = call ptr @to_ibdev(ptr noundef %dev) #9
  call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_close_hmc_objects_type.__UNIQUE_ID_ddebug690, ptr noundef %call13.i, ptr noundef nonnull @.str.34, i32 noundef %6) #9
  br label %irdma_close_hmc_objects_type.exit

irdma_close_hmc_objects_type.exit:                ; preds = %if.then12.i, %do.body.i, %if.then.irdma_close_hmc_objects_type.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %info.i) #9
  br label %if.end

if.end:                                           ; preds = %irdma_close_hmc_objects_type.exit, %for.body.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %i.01)
  %cmp8 = icmp eq i32 %i.01, 11
  %or.cond = select i1 %cmp7, i1 %cmp8, i1 false
  %inc = add nuw nsw i32 %i.01, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %inc)
  %exitcond.not = icmp eq i32 %inc, 19
  %or.cond2 = select i1 %or.cond, i1 true, i1 %exitcond.not
  br i1 %or.cond2, label %for.end, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @irdma_destroy_cqp(ptr noundef %rf, i1 noundef zeroext %free_hwcqp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_dev = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 42
  %cqp_cmpl_wq = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 66
  %0 = ptrtoint ptr %cqp_cmpl_wq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cqp_cmpl_wq, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @destroy_workqueue(ptr noundef nonnull %1) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  br i1 %free_hwcqp, label %if.end6, label %if.end.if.end17_crit_edge

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.end6:                                          ; preds = %if.end
  %cqp5 = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 42, i32 27
  %2 = ptrtoint ptr %cqp5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cqp5, align 4
  %call = tail call i32 @irdma_sc_cqp_destroy(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool7.not = icmp eq i32 %call, 0
  br i1 %tobool7.not, label %if.end6.if.end17_crit_edge, label %do.body

if.end6.if.end17_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

do.body:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_destroy_cqp.__UNIQUE_ID_ddebug685, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_destroy_cqp, %if.then14)) #9
          to label %if.end17 [label %if.then14], !srcloc !179

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %call15 = tail call ptr @to_ibdev(ptr noundef %sc_dev) #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_destroy_cqp.__UNIQUE_ID_ddebug685, ptr noundef %call15, ptr noundef nonnull @.str.36, i32 noundef %call) #9
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %do.body, %if.end6.if.end17_crit_edge, %if.end.if.end17_crit_edge
  tail call void @irdma_cleanup_pending_cqp_op(ptr noundef %rf) #9
  %hw = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 42, i32 8
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 8
  %device = getelementptr inbounds %struct.irdma_hw, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 4
  %sq = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 46, i32 5
  %size = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 46, i32 5, i32 2
  %8 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size, align 8
  %10 = ptrtoint ptr %sq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sq, align 8
  %pa = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 46, i32 5, i32 1
  %12 = ptrtoint ptr %pa to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pa, align 4
  tail call void @dma_free_attrs(ptr noundef %7, i32 noundef %9, ptr noundef %11, i32 noundef %13, i32 noundef 0) #9
  %14 = ptrtoint ptr %sq to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %sq, align 8
  %scratch_array = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 46, i32 7
  %15 = ptrtoint ptr %scratch_array to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %scratch_array, align 8
  tail call void @kfree(ptr noundef %16) #9
  %17 = ptrtoint ptr %scratch_array to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %scratch_array, align 8
  %cqp_requests = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 46, i32 8
  %18 = ptrtoint ptr %cqp_requests to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cqp_requests, align 4
  tail call void @kfree(ptr noundef %19) #9
  %20 = ptrtoint ptr %cqp_requests to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %cqp_requests, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @irdma_rt_init_hw(ptr noundef %iwdev, ptr noundef %l2params) local_unnamed_addr #0 align 64 {
entry:
  %info.i134 = alloca %struct.irdma_puda_rsrc_info, align 4
  %info.i = alloca %struct.irdma_puda_rsrc_info, align 4
  %vsi_info = alloca %struct.irdma_vsi_init_info, align 4
  %stats_info = alloca %struct.irdma_vsi_stats_info, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rf1 = getelementptr inbounds %struct.irdma_device, ptr %iwdev, i32 0, i32 1
  %0 = ptrtoint ptr %rf1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rf1, align 8
  %sc_dev = getelementptr inbounds %struct.irdma_pci_f, ptr %1, i32 0, i32 42
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %vsi_info) #9
  %2 = getelementptr inbounds i8, ptr %vsi_info, i32 16
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %3, i32 8)
  store i64 0, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %stats_info) #9
  %4 = ptrtoint ptr %stats_info to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %stats_info, align 8
  %5 = ptrtoint ptr %vsi_info to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %sc_dev, ptr %vsi_info, align 4
  %back_vsi = getelementptr inbounds %struct.irdma_vsi_init_info, ptr %vsi_info, i32 0, i32 1
  %6 = ptrtoint ptr %back_vsi to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %iwdev, ptr %back_vsi, align 4
  %params = getelementptr inbounds %struct.irdma_vsi_init_info, ptr %vsi_info, i32 0, i32 2
  %7 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %l2params, ptr %params, align 4
  %vsi_num = getelementptr inbounds %struct.irdma_device, ptr %iwdev, i32 0, i32 14
  %8 = ptrtoint ptr %vsi_num to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %vsi_num, align 2
  %pf_data_vsi_num = getelementptr inbounds %struct.irdma_vsi_init_info, ptr %vsi_info, i32 0, i32 4
  %10 = ptrtoint ptr %pf_data_vsi_num to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %pf_data_vsi_num, align 2
  %register_qset = getelementptr inbounds %struct.irdma_pci_f, ptr %1, i32 0, i32 70, i32 1
  %11 = ptrtoint ptr %register_qset to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %register_qset, align 4
  %register_qset3 = getelementptr inbounds %struct.irdma_vsi_init_info, ptr %vsi_info, i32 0, i32 7
  %13 = ptrtoint ptr %register_qset3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %register_qset3, align 4
  %unregister_qset = getelementptr inbounds %struct.irdma_pci_f, ptr %1, i32 0, i32 70, i32 2
  %14 = ptrtoint ptr %unregister_qset to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %unregister_qset, align 4
  %unregister_qset5 = getelementptr inbounds %struct.irdma_vsi_init_info, ptr %vsi_info, i32 0, i32 8
  %16 = ptrtoint ptr %unregister_qset5 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %unregister_qset5, align 4
  %exception_lan_q = getelementptr inbounds %struct.irdma_vsi_init_info, ptr %vsi_info, i32 0, i32 3
  %17 = ptrtoint ptr %exception_lan_q to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 2, ptr %exception_lan_q, align 4
  %vsi = getelementptr inbounds %struct.irdma_device, ptr %iwdev, i32 0, i32 4
  call void @irdma_sc_vsi_init(ptr noundef %vsi, ptr noundef nonnull %vsi_info) #9
  %rdma_ver = getelementptr inbounds %struct.irdma_pci_f, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %rdma_ver to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %rdma_ver, align 4
  %call = call i32 @irdma_setup_cm_core(ptr noundef %iwdev, i8 noundef zeroext %19) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %20 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3520, i32 noundef 872) #13
  %21 = ptrtoint ptr %stats_info to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call7.i.i, ptr %stats_info, align 8
  %tobool8.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool8.not, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %cm_core = getelementptr inbounds %struct.irdma_device, ptr %iwdev, i32 0, i32 5
  call void @irdma_cleanup_cm_core(ptr noundef %cm_core) #9
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %hmc_fn_id = getelementptr inbounds %struct.irdma_pci_f, ptr %1, i32 0, i32 42, i32 36
  %22 = ptrtoint ptr %hmc_fn_id to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %hmc_fn_id, align 2
  %fcn_id = getelementptr inbounds %struct.irdma_vsi_stats_info, ptr %stats_info, i32 0, i32 1
  %24 = ptrtoint ptr %fcn_id to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %fcn_id, align 4
  %call12 = call i32 @irdma_vsi_stats_init(ptr noundef %vsi, ptr noundef nonnull %stats_info) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %do.body, label %if.then14

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %cm_core15 = getelementptr inbounds %struct.irdma_device, ptr %iwdev, i32 0, i32 5
  call void @irdma_cleanup_cm_core(ptr noundef %cm_core15) #9
  %25 = ptrtoint ptr %stats_info to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %stats_info, align 8
  call void @kfree(ptr noundef %26) #9
  br label %cleanup

do.body:                                          ; preds = %if.end10
  %roce_mode = getelementptr inbounds %struct.irdma_device, ptr %iwdev, i32 0, i32 17
  %27 = ptrtoint ptr %roce_mode to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load = load i8, ptr %roce_mode, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %if.then18, label %do.body.if.end28_crit_edge

do.body.if.end28_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then18:                                        ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %info.i) #9
  %28 = getelementptr inbounds i8, ptr %info.i, i32 40
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %28, align 4
  %type.i = getelementptr inbounds %struct.irdma_puda_rsrc_info, ptr %info.i, i32 0, i32 2
  %30 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %type.i, align 4
  %cq_id.i = getelementptr inbounds %struct.irdma_puda_rsrc_info, ptr %info.i, i32 0, i32 5
  %31 = ptrtoint ptr %cq_id.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %cq_id.i, align 4
  %qp_id.i = getelementptr inbounds %struct.irdma_puda_rsrc_info, ptr %info.i, i32 0, i32 6
  %32 = ptrtoint ptr %qp_id.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %qp_id.i, align 4
  %count.i = getelementptr inbounds %struct.irdma_puda_rsrc_info, ptr %info.i, i32 0, i32 3
  %33 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %count.i, align 4
  %pd_id.i = getelementptr inbounds %struct.irdma_puda_rsrc_info, ptr %info.i, i32 0, i32 4
  %34 = ptrtoint ptr %pd_id.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %pd_id.i, align 4
  %abi_ver.i = getelementptr inbounds %struct.irdma_puda_rsrc_info, ptr %info.i, i32 0, i32 13
  %35 = ptrtoint ptr %abi_ver.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 5, ptr %abi_ver.i, align 4
  %36 = ptrtoint ptr %rf1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rf1, align 8
  %max_qp.i = getelementptr inbounds %struct.irdma_pci_f, ptr %37, i32 0, i32 10
  %38 = ptrtoint ptr %max_qp.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %max_qp.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %39)
  %cmp.i = icmp ult i32 %39, 65536
  %div15.i = lshr i32 %39, 1
  %cond.i = select i1 %cmp.i, i32 %div15.i, i32 32768
  %sq_size.i = getelementptr inbounds %struct.irdma_puda_rsrc_info, ptr %info.i, i32 0, i32 7
  %40 = ptrtoint ptr %sq_size.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %cond.i, ptr %sq_size.i, align 4
  %rq_size.i = getelementptr inbounds %struct.irdma_puda_rsrc_info, ptr %info.i, i32 0, i32 8
  %41 = ptrtoint ptr %rq_size.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %cond.i, ptr %rq_size.i, align 4
  %42 = ptrtoint ptr %28 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 1024, ptr %28, align 4
  %mul.i = shl nuw i32 %cond.i, 1
  %tx_buf_cnt.i = getelementptr inbounds %struct.irdma_puda_rsrc_info, ptr %info.i, i32 0, i32 9
  %43 = ptrtoint ptr %tx_buf_cnt.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %mul.i, ptr %tx_buf_cnt.i, align 4
  %44 = ptrtoint ptr %info.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @irdma_receive_ilq, ptr %info.i, align 4
  %xmit_complete.i = getelementptr inbounds %struct.irdma_puda_rsrc_info, ptr %info.i, i32 0, i32 1
  %45 = ptrtoint ptr %xmit_complete.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @irdma_free_sqbuf, ptr %xmit_complete.i, align 4
  %call.i = call i32 @irdma_puda_create_rsrc(ptr noundef %vsi, ptr noundef nonnull %info.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end22, label %do.body.i

do.body.i:                                        ; preds = %if.then18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_initialize_ilq.__UNIQUE_ID_ddebug708, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_rt_init_hw, %if.then8.i)) #9
          to label %irdma_initialize_ilq.exit [label %if.then8.i], !srcloc !179

if.then8.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_initialize_ilq.__UNIQUE_ID_ddebug708, ptr noundef %iwdev, ptr noundef nonnull @.str.38) #9
  br label %irdma_initialize_ilq.exit

irdma_initialize_ilq.exit:                        ; preds = %if.then8.i, %do.body.i
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %info.i) #9
  br label %do.end74

if.end22:                                         ; preds = %if.then18
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %info.i) #9
  %init_state = getelementptr inbounds %struct.irdma_device, ptr %iwdev, i32 0, i32 18
  %46 = ptrtoint ptr %init_state to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 7, ptr %init_state, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %info.i134) #9
  %47 = call ptr @memset(ptr %info.i134, i32 0, i32 44)
  %type.i135 = getelementptr inbounds %struct.irdma_puda_rsrc_info, ptr %info.i134, i32 0, i32 2
  %48 = ptrtoint ptr %type.i135 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 2, ptr %type.i135, align 4
  %cq_id.i136 = getelementptr inbounds %struct.irdma_puda_rsrc_info, ptr %info.i134, i32 0, i32 5
  %49 = ptrtoint ptr %cq_id.i136 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 2, ptr %cq_id.i136, align 4
  %exception_lan_q.i = getelementptr inbounds %struct.irdma_device, ptr %iwdev, i32 0, i32 4, i32 9
  %50 = ptrtoint ptr %exception_lan_q.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %exception_lan_q.i, align 4
  %qp_id.i138 = getelementptr inbounds %struct.irdma_puda_rsrc_info, ptr %info.i134, i32 0, i32 6
  %52 = ptrtoint ptr %qp_id.i138 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %qp_id.i138, align 4
  %count.i139 = getelementptr inbounds %struct.irdma_puda_rsrc_info, ptr %info.i134, i32 0, i32 3
  %53 = ptrtoint ptr %count.i139 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 1, ptr %count.i139, align 4
  %pd_id.i140 = getelementptr inbounds %struct.irdma_puda_rsrc_info, ptr %info.i134, i32 0, i32 4
  %54 = ptrtoint ptr %pd_id.i140 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 2, ptr %pd_id.i140, align 4
  %abi_ver.i141 = getelementptr inbounds %struct.irdma_puda_rsrc_info, ptr %info.i134, i32 0, i32 13
  %55 = ptrtoint ptr %abi_ver.i141 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 5, ptr %abi_ver.i141, align 4
  %56 = ptrtoint ptr %rf1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %rf1, align 8
  %max_qp.i143 = getelementptr inbounds %struct.irdma_pci_f, ptr %57, i32 0, i32 10
  %58 = ptrtoint ptr %max_qp.i143 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %max_qp.i143, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %59)
  %cmp.i144 = icmp ult i32 %59, 65536
  %div19.i = lshr i32 %59, 1
  %cond.i145 = select i1 %cmp.i144, i32 %div19.i, i32 32768
  %sq_size.i146 = getelementptr inbounds %struct.irdma_puda_rsrc_info, ptr %info.i134, i32 0, i32 7
  %60 = ptrtoint ptr %sq_size.i146 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %cond.i145, ptr %sq_size.i146, align 4
  %rq_size.i147 = getelementptr inbounds %struct.irdma_puda_rsrc_info, ptr %info.i134, i32 0, i32 8
  %61 = ptrtoint ptr %rq_size.i147 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %cond.i145, ptr %rq_size.i147, align 4
  %mtu.i = getelementptr inbounds %struct.irdma_device, ptr %iwdev, i32 0, i32 4, i32 10
  %62 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %mtu.i, align 8
  %add.i = add i16 %63, 20
  %buf_size.i148 = getelementptr inbounds %struct.irdma_puda_rsrc_info, ptr %info.i134, i32 0, i32 10
  %64 = ptrtoint ptr %buf_size.i148 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %add.i, ptr %buf_size.i148, align 4
  %tx_buf_cnt.i149 = getelementptr inbounds %struct.irdma_puda_rsrc_info, ptr %info.i134, i32 0, i32 9
  %65 = ptrtoint ptr %tx_buf_cnt.i149 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 4096, ptr %tx_buf_cnt.i149, align 4
  %call.i150 = call i32 @irdma_puda_create_rsrc(ptr noundef %vsi, ptr noundef nonnull %info.i134) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i150)
  %tobool.not.i151 = icmp eq i32 %call.i150, 0
  br i1 %tobool.not.i151, label %if.end26, label %do.body.i152

do.body.i152:                                     ; preds = %if.end22
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_initialize_ieq.__UNIQUE_ID_ddebug711, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_rt_init_hw, %if.then10.i)) #9
          to label %irdma_initialize_ieq.exit [label %if.then10.i], !srcloc !179

if.then10.i:                                      ; preds = %do.body.i152
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_initialize_ieq.__UNIQUE_ID_ddebug711, ptr noundef %iwdev, ptr noundef nonnull @.str.25) #9
  br label %irdma_initialize_ieq.exit

irdma_initialize_ieq.exit:                        ; preds = %if.then10.i, %do.body.i152
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %info.i134) #9
  br label %do.end74

if.end26:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %info.i134) #9
  %66 = ptrtoint ptr %init_state to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 8, ptr %init_state, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.end26, %do.body.if.end28_crit_edge
  %67 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %67)
  %bf.load29 = load i8, ptr %1, align 8
  %68 = and i8 %bf.load29, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %bf.cast31.not = icmp eq i8 %68, 0
  br i1 %bf.cast31.not, label %if.then32, label %if.end28.if.end53_crit_edge

if.end28.if.end53_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

if.then32:                                        ; preds = %if.end28
  %call34 = call fastcc i32 @irdma_setup_ceqs(ptr noundef %1, ptr noundef %vsi)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %if.then32.do.end74_crit_edge

if.then32.do.end74_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end74

if.end37:                                         ; preds = %if.then32
  %init_state38 = getelementptr inbounds %struct.irdma_device, ptr %iwdev, i32 0, i32 18
  %69 = ptrtoint ptr %init_state38 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 9, ptr %init_state38, align 4
  %pble_rsrc = getelementptr inbounds %struct.irdma_pci_f, ptr %1, i32 0, i32 50
  %70 = ptrtoint ptr %pble_rsrc to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pble_rsrc, align 4
  %call40 = call i32 @irdma_hmc_init_pble(ptr noundef %sc_dev, ptr noundef %71) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end43, label %if.then42

if.then42:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @irdma_del_ceqs(ptr noundef %1)
  br label %do.end74

if.end43:                                         ; preds = %if.end37
  %72 = ptrtoint ptr %init_state38 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 10, ptr %init_state38, align 4
  %call45 = call fastcc i32 @irdma_setup_aeq(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end49, label %if.then47

if.then47:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  %73 = ptrtoint ptr %pble_rsrc to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %pble_rsrc, align 4
  call void @irdma_destroy_pble_prm(ptr noundef %74) #9
  call fastcc void @irdma_del_ceqs(ptr noundef %1)
  br label %do.end74

if.end49:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  %75 = ptrtoint ptr %init_state38 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 11, ptr %init_state38, align 4
  %76 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %76)
  %bf.load51 = load i8, ptr %1, align 8
  %bf.set = or i8 %bf.load51, 64
  store i8 %bf.set, ptr %1, align 8
  br label %if.end53

if.end53:                                         ; preds = %if.end49, %if.end28.if.end53_crit_edge
  %device_cap_flags = getelementptr inbounds %struct.irdma_device, ptr %iwdev, i32 0, i32 10
  %77 = ptrtoint ptr %device_cap_flags to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 2260992, ptr %device_cap_flags, align 8
  %78 = ptrtoint ptr %rf1 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %rf1, align 8
  %hw_rev = getelementptr inbounds %struct.irdma_pci_f, ptr %79, i32 0, i32 42, i32 25, i32 0, i32 9
  %80 = ptrtoint ptr %hw_rev to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %hw_rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %81)
  %cmp = icmp eq i8 %81, 1
  br i1 %cmp, label %if.then57, label %if.end53.if.end59_crit_edge

if.end53.if.end59_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

if.then57:                                        ; preds = %if.end53
  %mac_ip_table_idx.i = getelementptr inbounds %struct.irdma_device, ptr %iwdev, i32 0, i32 13
  %cqp.i.i = getelementptr inbounds %struct.irdma_pci_f, ptr %79, i32 0, i32 46
  %call.i.i = call ptr @irdma_alloc_and_get_cqp_request(ptr noundef %cqp.i.i, i1 noundef zeroext true) #9
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.then57.if.end59_crit_edge, label %if.end.i.i

if.then57.if.end59_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

if.end.i.i:                                       ; preds = %if.then57
  %cqp_cmd.i.i = getelementptr inbounds %struct.cqp_cmds_info, ptr %call.i.i, i32 0, i32 1
  %82 = ptrtoint ptr %cqp_cmd.i.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 47, ptr %cqp_cmd.i.i, align 8
  %post_sq.i.i = getelementptr inbounds %struct.cqp_cmds_info, ptr %call.i.i, i32 0, i32 2
  %83 = ptrtoint ptr %post_sq.i.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 1, ptr %post_sq.i.i, align 1
  %in.i.i = getelementptr inbounds %struct.cqp_cmds_info, ptr %call.i.i, i32 0, i32 3
  %84 = ptrtoint ptr %in.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %cqp.i.i, ptr %in.i.i, align 8
  %85 = ptrtoint ptr %call.i.i to i32
  %conv.i.i = zext i32 %85 to i64
  %scratch.i.i = getelementptr inbounds %struct.cqp_cmds_info, ptr %call.i.i, i32 0, i32 3, i32 0, i32 0, i32 1
  %86 = ptrtoint ptr %scratch.i.i to i32
  call void @__asan_store8_noabort(i32 %86)
  store i64 %conv.i.i, ptr %scratch.i.i, align 8
  %call4.i.i = call i32 @irdma_handle_cqp_op(ptr noundef %79, ptr noundef nonnull %call.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool5.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool5.not.i.i, label %if.then.i, label %irdma_alloc_local_mac_entry.exit.i

irdma_alloc_local_mac_entry.exit.i:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @irdma_put_cqp_request(ptr noundef %cqp.i.i, ptr noundef nonnull %call.i.i) #9
  br label %if.end59

if.then.i:                                        ; preds = %if.end.i.i
  %compl_info.i.i = getelementptr inbounds %struct.irdma_cqp_request, ptr %call.i.i, i32 0, i32 6
  %87 = ptrtoint ptr %compl_info.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %compl_info.i.i, align 8
  %conv7.i.i = trunc i32 %88 to i16
  %89 = ptrtoint ptr %mac_ip_table_idx.i to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %conv7.i.i, ptr %mac_ip_table_idx.i, align 2
  call void @irdma_put_cqp_request(ptr noundef %cqp.i.i, ptr noundef nonnull %call.i.i) #9
  %90 = ptrtoint ptr %rf1 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %rf1, align 8
  %netdev.i = getelementptr inbounds %struct.irdma_device, ptr %iwdev, i32 0, i32 2
  %92 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %netdev.i, align 4
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %93, i32 0, i32 86
  %94 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dev_addr.i, align 64
  %96 = ptrtoint ptr %mac_ip_table_idx.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %mac_ip_table_idx.i, align 4
  %cqp.i1.i = getelementptr inbounds %struct.irdma_pci_f, ptr %91, i32 0, i32 46
  %call.i2.i = call ptr @irdma_alloc_and_get_cqp_request(ptr noundef %cqp.i1.i, i1 noundef zeroext true) #9
  %tobool.not.i3.i = icmp eq ptr %call.i2.i, null
  br i1 %tobool.not.i3.i, label %if.then.i.if.then6.i_crit_edge, label %irdma_add_local_mac_entry.exit.i

if.then.i.if.then6.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6.i

irdma_add_local_mac_entry.exit.i:                 ; preds = %if.then.i
  %conv3.i = and i16 %97, 255
  %post_sq.i4.i = getelementptr inbounds %struct.cqp_cmds_info, ptr %call.i2.i, i32 0, i32 2
  %98 = ptrtoint ptr %post_sq.i4.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 1, ptr %post_sq.i4.i, align 1
  %in.i5.i = getelementptr inbounds %struct.cqp_cmds_info, ptr %call.i2.i, i32 0, i32 3
  %info2.i.i = getelementptr inbounds %struct.anon.257, ptr %in.i5.i, i32 0, i32 1
  %99 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %95, align 4
  %101 = ptrtoint ptr %info2.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %info2.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %95, i32 4
  %102 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %add.ptr.i.i.i, align 2
  %add.ptr1.i.i.i = getelementptr %struct.cqp_cmds_info, ptr %call.i2.i, i32 0, i32 3, i32 0, i32 0, i32 1
  %104 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 %103, ptr %add.ptr1.i.i.i, align 2
  %entry_idx.i.i = getelementptr inbounds %struct.anon.257, ptr %in.i5.i, i32 0, i32 1, i32 1
  %105 = ptrtoint ptr %entry_idx.i.i to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 %conv3.i, ptr %entry_idx.i.i, align 2
  %106 = ptrtoint ptr %call.i2.i to i32
  %conv.i6.i = zext i32 %106 to i64
  %scratch.i7.i = getelementptr inbounds %struct.cqp_cmds_info, ptr %call.i2.i, i32 0, i32 3, i32 0, i32 0, i32 1, i32 2
  %cqp_cmd.i8.i = getelementptr inbounds %struct.cqp_cmds_info, ptr %call.i2.i, i32 0, i32 1
  %107 = ptrtoint ptr %cqp_cmd.i8.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 48, ptr %cqp_cmd.i8.i, align 8
  %108 = ptrtoint ptr %in.i5.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %cqp.i1.i, ptr %in.i5.i, align 8
  %109 = ptrtoint ptr %scratch.i7.i to i32
  call void @__asan_store8_noabort(i32 %109)
  store i64 %conv.i6.i, ptr %scratch.i7.i, align 8
  %call13.i.i = call i32 @irdma_handle_cqp_op(ptr noundef %91, ptr noundef nonnull %call.i2.i) #9
  call void @irdma_put_cqp_request(ptr noundef %cqp.i1.i, ptr noundef nonnull %call.i2.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.i)
  %tobool5.not.i = icmp eq i32 %call13.i.i, 0
  br i1 %tobool5.not.i, label %irdma_add_local_mac_entry.exit.i.if.end59_crit_edge, label %irdma_add_local_mac_entry.exit.i.if.then6.i_crit_edge

irdma_add_local_mac_entry.exit.i.if.then6.i_crit_edge: ; preds = %irdma_add_local_mac_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6.i

irdma_add_local_mac_entry.exit.i.if.end59_crit_edge: ; preds = %irdma_add_local_mac_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

if.then6.i:                                       ; preds = %irdma_add_local_mac_entry.exit.i.if.then6.i_crit_edge, %if.then.i.if.then6.i_crit_edge
  %110 = ptrtoint ptr %rf1 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %rf1, align 8
  %112 = ptrtoint ptr %mac_ip_table_idx.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %mac_ip_table_idx.i, align 4
  %cqp.i11.i = getelementptr inbounds %struct.irdma_pci_f, ptr %111, i32 0, i32 46
  %call.i12.i = call ptr @irdma_alloc_and_get_cqp_request(ptr noundef %cqp.i11.i, i1 noundef zeroext true) #9
  %tobool.not.i13.i = icmp eq ptr %call.i12.i, null
  br i1 %tobool.not.i13.i, label %if.then6.i.if.end59_crit_edge, label %if.end.i20.i

if.then6.i.if.end59_crit_edge:                    ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

if.end.i20.i:                                     ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #11
  %cqp_cmd.i14.i = getelementptr inbounds %struct.cqp_cmds_info, ptr %call.i12.i, i32 0, i32 1
  %114 = ptrtoint ptr %cqp_cmd.i14.i to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 49, ptr %cqp_cmd.i14.i, align 8
  %post_sq.i15.i = getelementptr inbounds %struct.cqp_cmds_info, ptr %call.i12.i, i32 0, i32 2
  %115 = ptrtoint ptr %post_sq.i15.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 1, ptr %post_sq.i15.i, align 1
  %in.i16.i = getelementptr inbounds %struct.cqp_cmds_info, ptr %call.i12.i, i32 0, i32 3
  %116 = ptrtoint ptr %in.i16.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %cqp.i11.i, ptr %in.i16.i, align 8
  %117 = ptrtoint ptr %call.i12.i to i32
  %conv.i17.i = zext i32 %117 to i64
  %scratch.i18.i = getelementptr inbounds %struct.cqp_cmds_info, ptr %call.i12.i, i32 0, i32 3, i32 0, i32 0, i32 1
  %118 = ptrtoint ptr %scratch.i18.i to i32
  call void @__asan_store8_noabort(i32 %118)
  store i64 %conv.i17.i, ptr %scratch.i18.i, align 8
  %conv4.i.i = trunc i16 %113 to i8
  %entry_idx.i19.i = getelementptr inbounds %struct.cqp_cmds_info, ptr %call.i12.i, i32 0, i32 3, i32 0, i32 0, i32 1, i32 2
  %119 = ptrtoint ptr %entry_idx.i19.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %conv4.i.i, ptr %entry_idx.i19.i, align 8
  %ignore_ref_count.i.i = getelementptr inbounds %struct.anon.258, ptr %in.i16.i, i32 0, i32 3
  %120 = ptrtoint ptr %ignore_ref_count.i.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 0, ptr %ignore_ref_count.i.i, align 1
  %call9.i.i = call i32 @irdma_handle_cqp_op(ptr noundef %111, ptr noundef nonnull %call.i12.i) #9
  call void @irdma_put_cqp_request(ptr noundef %cqp.i11.i, ptr noundef nonnull %call.i12.i) #9
  br label %if.end59

if.end59:                                         ; preds = %if.end.i20.i, %if.then6.i.if.end59_crit_edge, %irdma_add_local_mac_entry.exit.i.if.end59_crit_edge, %irdma_alloc_local_mac_entry.exit.i, %if.then57.if.end59_crit_edge, %if.end53.if.end59_crit_edge
  call void @irdma_add_ip(ptr noundef %iwdev) #9
  %init_state60 = getelementptr inbounds %struct.irdma_device, ptr %iwdev, i32 0, i32 18
  %121 = ptrtoint ptr %init_state60 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 12, ptr %init_state60, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %122 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i154 = call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_possible_mask, i32 noundef %122) #9
  %mul = shl i32 %call4.i.i154, 2
  %123 = call i32 @llvm.smax.i32(i32 %mul, i32 512)
  %call64 = call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.5, i32 noundef 2, i32 noundef %123) #9
  %cleanup_wq = getelementptr inbounds %struct.irdma_device, ptr %iwdev, i32 0, i32 3
  %124 = ptrtoint ptr %cleanup_wq to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %call64, ptr %cleanup_wq, align 8
  %tobool66.not = icmp eq ptr %call64, null
  br i1 %tobool66.not, label %if.end59.cleanup_crit_edge, label %if.end68

if.end59.cleanup_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end68:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  %125 = ptrtoint ptr %rf1 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %rf1, align 8
  %allocated_pds.i = getelementptr inbounds %struct.irdma_pci_f, ptr %126, i32 0, i32 37
  %127 = ptrtoint ptr %allocated_pds.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %allocated_pds.i, align 4
  %max_pd.i = getelementptr inbounds %struct.irdma_pci_f, ptr %126, i32 0, i32 16
  %129 = ptrtoint ptr %max_pd.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %max_pd.i, align 8
  %call.i157 = call i32 @_find_first_zero_bit_be(ptr noundef %128, i32 noundef %130) #9
  %131 = ptrtoint ptr %rf1 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %rf1, align 8
  %used_pds.i = getelementptr inbounds %struct.irdma_pci_f, ptr %132, i32 0, i32 23
  %133 = ptrtoint ptr %used_pds.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %call.i157, ptr %used_pds.i, align 4
  %134 = load ptr, ptr %rf1, align 8
  %allocated_qps.i = getelementptr inbounds %struct.irdma_pci_f, ptr %134, i32 0, i32 34
  %135 = ptrtoint ptr %allocated_qps.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %allocated_qps.i, align 8
  %max_qp.i158 = getelementptr inbounds %struct.irdma_pci_f, ptr %134, i32 0, i32 10
  %137 = ptrtoint ptr %max_qp.i158 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %max_qp.i158, align 8
  %call5.i = call i32 @_find_first_zero_bit_be(ptr noundef %136, i32 noundef %138) #9
  %139 = ptrtoint ptr %rf1 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %rf1, align 8
  %used_qps.i = getelementptr inbounds %struct.irdma_pci_f, ptr %140, i32 0, i32 26
  %141 = ptrtoint ptr %used_qps.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %call5.i, ptr %used_qps.i, align 8
  %142 = load ptr, ptr %rf1, align 8
  %allocated_cqs.i = getelementptr inbounds %struct.irdma_pci_f, ptr %142, i32 0, i32 35
  %143 = ptrtoint ptr %allocated_cqs.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %allocated_cqs.i, align 4
  %max_cq.i = getelementptr inbounds %struct.irdma_pci_f, ptr %142, i32 0, i32 11
  %145 = ptrtoint ptr %max_cq.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %max_cq.i, align 4
  %call9.i = call i32 @_find_first_zero_bit_be(ptr noundef %144, i32 noundef %146) #9
  %147 = ptrtoint ptr %rf1 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %rf1, align 8
  %used_cqs.i = getelementptr inbounds %struct.irdma_pci_f, ptr %148, i32 0, i32 24
  %149 = ptrtoint ptr %used_cqs.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %call9.i, ptr %used_cqs.i, align 8
  %150 = load ptr, ptr %rf1, align 8
  %allocated_mrs.i = getelementptr inbounds %struct.irdma_pci_f, ptr %150, i32 0, i32 36
  %151 = ptrtoint ptr %allocated_mrs.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %allocated_mrs.i, align 8
  %max_mr.i = getelementptr inbounds %struct.irdma_pci_f, ptr %150, i32 0, i32 9
  %153 = ptrtoint ptr %max_mr.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %max_mr.i, align 4
  %call13.i = call i32 @_find_first_zero_bit_be(ptr noundef %152, i32 noundef %154) #9
  %155 = ptrtoint ptr %rf1 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %rf1, align 8
  %used_mrs.i = getelementptr inbounds %struct.irdma_pci_f, ptr %156, i32 0, i32 25
  %157 = ptrtoint ptr %used_mrs.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %call13.i, ptr %used_mrs.i, align 4
  %suspend_wq = getelementptr inbounds %struct.irdma_device, ptr %iwdev, i32 0, i32 19
  call void @__init_waitqueue_head(ptr noundef %suspend_wq, ptr noundef nonnull @.str.6, ptr noundef nonnull @irdma_rt_init_hw.__key) #9
  br label %cleanup

do.end74:                                         ; preds = %if.then47, %if.then42, %if.then32.do.end74_crit_edge, %irdma_initialize_ieq.exit, %irdma_initialize_ilq.exit
  %status.0 = phi i32 [ %call34, %if.then32.do.end74_crit_edge ], [ %call40, %if.then42 ], [ %call45, %if.then47 ], [ %call.i, %irdma_initialize_ilq.exit ], [ %call.i150, %irdma_initialize_ieq.exit ]
  %pcidev = getelementptr inbounds %struct.irdma_pci_f, ptr %1, i32 0, i32 43
  %158 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %pcidev, align 8
  %dev75 = getelementptr inbounds %struct.pci_dev, ptr %159, i32 0, i32 44
  %init_state76 = getelementptr inbounds %struct.irdma_device, ptr %iwdev, i32 0, i32 18
  %160 = ptrtoint ptr %init_state76 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %init_state76, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev75, ptr noundef nonnull @.str.7, i32 noundef %status.0, i32 noundef %161) #12
  call void @irdma_rt_deinit_hw(ptr noundef %iwdev)
  br label %cleanup

cleanup:                                          ; preds = %do.end74, %if.end68, %if.end59.cleanup_crit_edge, %if.then14, %if.then9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %if.then14 ], [ 0, %if.end68 ], [ %status.0, %do.end74 ], [ -9, %if.then9 ], [ %call, %entry.cleanup_crit_edge ], [ -9, %if.end59.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %stats_info) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %vsi_info) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irdma_sc_vsi_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irdma_setup_cm_core(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irdma_vsi_stats_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @irdma_setup_ceqs(ptr noundef %rf, ptr noundef %vsi) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %msix_count = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 8
  %0 = ptrtoint ptr %msix_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msix_count, align 8
  %sc_dev = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 42
  %hmc_fpm_misc = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 42, i32 32
  %2 = ptrtoint ptr %hmc_fpm_misc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hmc_fpm_misc, align 4
  %4 = tail call i32 @llvm.umin.i32(i32 %1, i32 %3)
  %5 = ptrtoint ptr %rf to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %rf, align 8
  %6 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %bf.cast.not = icmp eq i8 %6, 0
  %cond1 = select i1 %bf.cast.not, i32 2, i32 1
  call void @__sanitizer_cov_trace_cmp4(i32 %cond1, i32 %4)
  %cmp262 = icmp ult i32 %cond1, %4
  br i1 %cmp262, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %ceqlist = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 49
  %iw_msixtbl = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 58
  %irq_ops.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 42, i32 31
  %ceqs_count = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 29
  br label %for.body

for.body:                                         ; preds = %if.end19.for.body_crit_edge, %for.body.lr.ph
  %i.064 = phi i32 [ %cond1, %for.body.lr.ph ], [ %inc22, %if.end19.for.body_crit_edge ]
  %ceq_id.063 = phi i32 [ 1, %for.body.lr.ph ], [ %inc23, %if.end19.for.body_crit_edge ]
  %7 = ptrtoint ptr %ceqlist to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ceqlist, align 8
  %arrayidx = getelementptr %struct.irdma_ceq, ptr %8, i32 %ceq_id.063
  %call = tail call fastcc i32 @irdma_create_ceq(ptr noundef %rf, ptr noundef %arrayidx, i32 noundef %ceq_id.063, ptr noundef %vsi)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body10, label %do.body

do.body:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_setup_ceqs.__UNIQUE_ID_ddebug703, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_setup_ceqs, %if.then8)) #9
          to label %del_ceqs [label %if.then8], !srcloc !179

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %iwdev = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 71
  %9 = ptrtoint ptr %iwdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %iwdev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_setup_ceqs.__UNIQUE_ID_ddebug703, ptr noundef %10, ptr noundef nonnull @.str.40, i32 noundef %call) #9
  br label %del_ceqs

do.body10:                                        ; preds = %for.body
  %ce_lock = getelementptr %struct.irdma_ceq, ptr %8, i32 %ceq_id.063, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %ce_lock, ptr noundef nonnull @.str.41, ptr noundef nonnull @irdma_setup_ceqs.__key, i16 noundef signext 3) #9
  %11 = ptrtoint ptr %iw_msixtbl to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %iw_msixtbl, align 8
  %arrayidx14 = getelementptr %struct.irdma_msix_vector, ptr %12, i32 %i.064
  %irq = getelementptr %struct.irdma_msix_vector, ptr %12, i32 %i.064, i32 1
  %13 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %irq, align 4
  %irq15 = getelementptr %struct.irdma_ceq, ptr %8, i32 %ceq_id.063, i32 2
  %15 = ptrtoint ptr %irq15 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %irq15, align 4
  %16 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx14, align 4
  %msix_idx = getelementptr %struct.irdma_ceq, ptr %8, i32 %ceq_id.063, i32 3
  %18 = ptrtoint ptr %msix_idx to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %msix_idx, align 8
  %call16 = tail call fastcc i32 @irdma_cfg_ceq_vector(ptr noundef %rf, ptr noundef %arrayidx, i32 noundef %ceq_id.063, ptr noundef %arrayidx14)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.then18

if.then18:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @irdma_destroy_ceq(ptr noundef %rf, ptr noundef %arrayidx)
  br label %del_ceqs

if.end19:                                         ; preds = %do.body10
  %19 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx14, align 4
  %21 = ptrtoint ptr %irq_ops.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %irq_ops.i, align 8
  %irdma_en_irq.i = getelementptr inbounds %struct.irdma_irq_ops, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %irdma_en_irq.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %irdma_en_irq.i, align 4
  tail call void %24(ptr noundef %sc_dev, i32 noundef %20) #9
  %25 = ptrtoint ptr %ceqs_count to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ceqs_count, align 4
  %inc = add i32 %26, 1
  store i32 %inc, ptr %ceqs_count, align 4
  %inc22 = add i32 %i.064, 1
  %inc23 = add i32 %ceq_id.063, 1
  %exitcond.not = icmp eq i32 %inc22, %4
  br i1 %exitcond.not, label %if.end19.cleanup_crit_edge, label %if.end19.for.body_crit_edge

if.end19.for.body_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

del_ceqs:                                         ; preds = %if.then18, %if.then8, %do.body
  %status.0 = phi i32 [ %call, %if.then8 ], [ %call16, %if.then18 ], [ %call, %do.body ]
  tail call fastcc void @irdma_del_ceqs(ptr noundef %rf)
  br label %cleanup

cleanup:                                          ; preds = %del_ceqs, %if.end19.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.0, %del_ceqs ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irdma_hmc_init_pble(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @irdma_setup_aeq(ptr noundef %rf) unnamed_addr #0 align 64 {
entry:
  %info.i = alloca %struct.irdma_aeq_init_info, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_dev = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 42
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %info.i) #9
  %0 = getelementptr inbounds i8, ptr %info.i, i32 16
  %1 = call ptr @memset(ptr %0, i32 0, i32 24)
  %aeq1.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 48
  %hmc_info3.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 42, i32 26
  %2 = ptrtoint ptr %hmc_info3.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hmc_info3.i, align 8
  %protocol_used.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 6
  %4 = ptrtoint ptr %protocol_used.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %protocol_used.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.i = icmp eq i32 %5, 1
  %conv4.i = select i1 %cmp.i, i32 2, i32 1
  %hmc_obj.i = getelementptr inbounds %struct.irdma_hmc_info, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %hmc_obj.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hmc_obj.i, align 4
  %cnt.i = getelementptr inbounds %struct.irdma_hmc_obj_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %cnt.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cnt.i, align 4
  %mul.i = mul i32 %conv4.i, %9
  %cnt7.i = getelementptr %struct.irdma_hmc_obj_info, ptr %7, i32 1, i32 2
  %10 = ptrtoint ptr %cnt7.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cnt7.i, align 4
  %add.i = add i32 %mul.i, %11
  %max_hw_aeq_size.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 42, i32 25, i32 6
  %12 = ptrtoint ptr %max_hw_aeq_size.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_hw_aeq_size.i, align 8
  %14 = tail call i32 @llvm.umin.i32(i32 %add.i, i32 %13) #9
  %mul11.i = shl i32 %14, 4
  %add12.i = add i32 %mul11.i, 255
  %and.i = and i32 %add12.i, -256
  %mem.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 48, i32 1
  %size.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 48, i32 1, i32 2
  %15 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %and.i, ptr %size.i, align 8
  %hw.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 42, i32 8
  %16 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw.i, align 8
  %device.i = getelementptr inbounds %struct.irdma_hw, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %device.i, align 4
  %pa.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 48, i32 1, i32 1
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %19, i32 noundef %and.i, ptr noundef %pa.i, i32 noundef 11456, i32 noundef 256) #9
  %20 = ptrtoint ptr %mem.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i.i, ptr %mem.i, align 8
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.skip_virt_aeq.i_crit_edge

entry.skip_virt_aeq.i_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %skip_virt_aeq.i

if.end.i:                                         ; preds = %entry
  %rdma_ver.i.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 4
  %21 = ptrtoint ptr %rdma_ver.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %rdma_ver.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %22)
  %cmp.i.i = icmp ult i8 %22, 2
  br i1 %cmp.i.i, label %if.end.i.irdma_create_aeq.exit.thread_crit_edge, label %if.end.i.i

if.end.i.irdma_create_aeq.exit.thread_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %irdma_create_aeq.exit.thread

if.end.i.i:                                       ; preds = %if.end.i
  %23 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %mul11.i, ptr %size.i, align 8
  %call.i97.i = tail call noalias ptr @vzalloc(i32 noundef %mul11.i) #14
  %24 = ptrtoint ptr %mem.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i97.i, ptr %mem.i, align 8
  %tobool.not.i.i = icmp eq ptr %call.i97.i, null
  br i1 %tobool.not.i.i, label %if.end.i.i.irdma_create_aeq.exit.thread_crit_edge, label %if.end10.i.i

if.end.i.i.irdma_create_aeq.exit.thread_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %irdma_create_aeq.exit.thread

if.end10.i.i:                                     ; preds = %if.end.i.i
  %25 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %size.i, align 8
  %sub.i.i = add i32 %26, 4095
  %div52.i.i = lshr i32 %sub.i.i, 12
  %pble_rsrc.i.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 50
  %27 = ptrtoint ptr %pble_rsrc.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pble_rsrc.i.i, align 4
  %palloc.i.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 48, i32 2
  %call13.i.i = tail call i32 @irdma_get_pble(ptr noundef %28, ptr noundef %palloc.i.i, i32 noundef %div52.i.i, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.i)
  %tobool14.not.i.i = icmp eq i32 %call13.i.i, 0
  br i1 %tobool14.not.i.i, label %if.end18.i.i, label %if.end10.i.i.cleanup.sink.split.i.i_crit_edge

if.end10.i.i.cleanup.sink.split.i.i_crit_edge:    ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i.i

if.end18.i.i:                                     ; preds = %if.end10.i.i
  %29 = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 48, i32 2, i32 2
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 8
  %hw.i.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 45
  %32 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mem.i, align 8
  %call22.i.i = tail call i32 @irdma_map_vm_page_list(ptr noundef %hw.i.i, ptr noundef %33, ptr noundef %31, i32 noundef %div52.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i.i)
  %tobool23.not.i.i = icmp eq i32 %call22.i.i, 0
  br i1 %tobool23.not.i.i, label %if.end22.i, label %if.then24.i.i

if.then24.i.i:                                    ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %pble_rsrc.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pble_rsrc.i.i, align 4
  tail call void @irdma_free_pble(ptr noundef %35, ptr noundef %palloc.i.i) #9
  br label %cleanup.sink.split.i.i

cleanup.sink.split.i.i:                           ; preds = %if.then24.i.i, %if.end10.i.i.cleanup.sink.split.i.i_crit_edge
  %retval.0.ph.i.i = phi i32 [ %call22.i.i, %if.then24.i.i ], [ %call13.i.i, %if.end10.i.i.cleanup.sink.split.i.i_crit_edge ]
  %36 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mem.i, align 8
  tail call void @vfree(ptr noundef %37) #9
  br label %irdma_create_aeq.exit.thread

if.end22.i:                                       ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %virtual_map.i = getelementptr inbounds %struct.irdma_aeq_init_info, ptr %info.i, i32 0, i32 5
  %38 = ptrtoint ptr %virtual_map.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %virtual_map.i, align 8
  %virtual_map25.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 48, i32 3
  %39 = ptrtoint ptr %virtual_map25.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %virtual_map25.i, align 8
  %pbl_chunk_size.i = getelementptr inbounds %struct.irdma_aeq_init_info, ptr %info.i, i32 0, i32 6
  %40 = ptrtoint ptr %pbl_chunk_size.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %pbl_chunk_size.i, align 1
  %idx.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 48, i32 2, i32 2, i32 0, i32 0, i32 1
  %41 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %idx.i, align 4
  %first_pm_pbl_idx.i = getelementptr inbounds %struct.irdma_aeq_init_info, ptr %info.i, i32 0, i32 7
  %43 = ptrtoint ptr %first_pm_pbl_idx.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %first_pm_pbl_idx.i, align 4
  br label %skip_virt_aeq.i

skip_virt_aeq.i:                                  ; preds = %if.end22.i, %entry.skip_virt_aeq.i_crit_edge
  %44 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mem.i, align 8
  %aeqe_base.i = getelementptr inbounds %struct.irdma_aeq_init_info, ptr %info.i, i32 0, i32 2
  %46 = ptrtoint ptr %aeqe_base.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %45, ptr %aeqe_base.i, align 4
  %47 = ptrtoint ptr %pa.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %pa.i, align 4
  %conv30.i = zext i32 %48 to i64
  %49 = ptrtoint ptr %info.i to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %conv30.i, ptr %info.i, align 8
  %elem_cnt.i = getelementptr inbounds %struct.irdma_aeq_init_info, ptr %info.i, i32 0, i32 4
  %50 = ptrtoint ptr %elem_cnt.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %14, ptr %elem_cnt.i, align 4
  %dev31.i = getelementptr inbounds %struct.irdma_aeq_init_info, ptr %info.i, i32 0, i32 1
  %51 = ptrtoint ptr %dev31.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %sc_dev, ptr %dev31.i, align 8
  %iw_msixtbl.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 58
  %52 = ptrtoint ptr %iw_msixtbl.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %iw_msixtbl.i, align 8
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %53, align 4
  %msix_idx.i = getelementptr inbounds %struct.irdma_aeq_init_info, ptr %info.i, i32 0, i32 8
  %56 = ptrtoint ptr %msix_idx.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %msix_idx.i, align 8
  %call33.i = call i32 @irdma_sc_aeq_init(ptr noundef %aeq1.i, ptr noundef nonnull %info.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %tobool34.not.i = icmp eq i32 %call33.i, 0
  br i1 %tobool34.not.i, label %if.end36.i, label %skip_virt_aeq.i.err.i_crit_edge

skip_virt_aeq.i.err.i_crit_edge:                  ; preds = %skip_virt_aeq.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err.i

if.end36.i:                                       ; preds = %skip_virt_aeq.i
  %call38.i = call i32 @irdma_cqp_aeq_cmd(ptr noundef %sc_dev, ptr noundef %aeq1.i, i8 noundef zeroext 6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i)
  %tobool39.not.i = icmp eq i32 %call38.i, 0
  br i1 %tobool39.not.i, label %if.end, label %if.end36.i.err.i_crit_edge

if.end36.i.err.i_crit_edge:                       ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err.i

err.i:                                            ; preds = %if.end36.i.err.i_crit_edge, %skip_virt_aeq.i.err.i_crit_edge
  %status.0.i = phi i32 [ %call33.i, %skip_virt_aeq.i.err.i_crit_edge ], [ %call38.i, %if.end36.i.err.i_crit_edge ]
  %virtual_map42.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 48, i32 3
  %57 = ptrtoint ptr %virtual_map42.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %virtual_map42.i, align 8, !range !180
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool43.not.i = icmp eq i8 %58, 0
  br i1 %tobool43.not.i, label %if.else.i, label %if.then44.i

if.then44.i:                                      ; preds = %err.i
  call void @__sanitizer_cov_trace_pc() #11
  %59 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %size.i, align 8
  %sub.i99.i = add i32 %60, 4095
  %div9.i.i = lshr i32 %sub.i99.i, 12
  %palloc.i100.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 48, i32 2
  %61 = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 48, i32 2, i32 2
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 8
  %hw.i101.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 45
  call void @irdma_unmap_vm_page_list(ptr noundef %hw.i101.i, ptr noundef %63, i32 noundef %div9.i.i) #9
  %pble_rsrc.i102.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 50
  %64 = ptrtoint ptr %pble_rsrc.i102.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pble_rsrc.i102.i, align 4
  call void @irdma_free_pble(ptr noundef %65, ptr noundef %palloc.i100.i) #9
  %66 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %mem.i, align 8
  call void @vfree(ptr noundef %67) #9
  br label %irdma_create_aeq.exit.thread

if.else.i:                                        ; preds = %err.i
  call void @__sanitizer_cov_trace_pc() #11
  %68 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %hw.i, align 8
  %device46.i = getelementptr inbounds %struct.irdma_hw, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %device46.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %device46.i, align 4
  %72 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %size.i, align 8
  %74 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %mem.i, align 8
  %76 = ptrtoint ptr %pa.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %pa.i, align 4
  call void @dma_free_attrs(ptr noundef %71, i32 noundef %73, ptr noundef %75, i32 noundef %77, i32 noundef 0) #9
  %78 = ptrtoint ptr %mem.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr null, ptr %mem.i, align 8
  br label %irdma_create_aeq.exit.thread

irdma_create_aeq.exit.thread:                     ; preds = %if.else.i, %if.then44.i, %cleanup.sink.split.i.i, %if.end.i.i.irdma_create_aeq.exit.thread_crit_edge, %if.end.i.irdma_create_aeq.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -49, %if.end.i.irdma_create_aeq.exit.thread_crit_edge ], [ -9, %if.end.i.i.irdma_create_aeq.exit.thread_crit_edge ], [ %retval.0.ph.i.i, %cleanup.sink.split.i.i ], [ %status.0.i, %if.then44.i ], [ %status.0.i, %if.else.i ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %info.i) #9
  br label %cleanup

if.end:                                           ; preds = %if.end36.i
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %info.i) #9
  %79 = ptrtoint ptr %iw_msixtbl.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %iw_msixtbl.i, align 8
  %81 = ptrtoint ptr %rf to i32
  call void @__asan_load1_noabort(i32 %81)
  %bf.load.i = load i8, ptr %rf, align 8
  %82 = and i8 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %bf.cast.not.i = icmp eq i8 %82, 0
  br i1 %bf.cast.not.i, label %if.then.i, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then.i:                                        ; preds = %if.end
  %dpc_tasklet.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 60
  call void @tasklet_setup(ptr noundef %dpc_tasklet.i, ptr noundef nonnull @irdma_dpc) #9
  %irq.i = getelementptr inbounds %struct.irdma_msix_vector, ptr %80, i32 0, i32 1
  %83 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %irq.i, align 4
  %call.i.i17 = call i32 @request_threaded_irq(i32 noundef %84, ptr noundef nonnull @irdma_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef %rf) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i17)
  %phi.cmp.i = icmp eq i32 %call.i.i17, 0
  br i1 %phi.cmp.i, label %if.then.i.if.end4_crit_edge, label %do.body.i

if.then.i.if.end4_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

do.body.i:                                        ; preds = %if.then.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_cfg_aeq_vector.__UNIQUE_ID_ddebug695, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_setup_aeq, %if.then6.i)) #9
          to label %if.then3 [label %if.then6.i], !srcloc !179

if.then6.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %iwdev.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 71
  %85 = ptrtoint ptr %iwdev.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %iwdev.i, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_cfg_aeq_vector.__UNIQUE_ID_ddebug695, ptr noundef %86, ptr noundef nonnull @.str.57) #9
  br label %if.then3

if.then3:                                         ; preds = %if.then6.i, %do.body.i
  call fastcc void @irdma_destroy_aeq(ptr noundef %rf)
  br label %cleanup

if.end4:                                          ; preds = %if.then.i.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %irq_ops.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 42, i32 31
  %87 = ptrtoint ptr %irq_ops.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %irq_ops.i, align 8
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %88, align 4
  %91 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %80, align 4
  call void %90(ptr noundef %sc_dev, i32 noundef %92, i1 noundef zeroext true) #9
  %93 = ptrtoint ptr %rf to i32
  call void @__asan_load1_noabort(i32 %93)
  %bf.load = load i8, ptr %rf, align 8
  %94 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %bf.cast.not = icmp eq i8 %94, 0
  br i1 %bf.cast.not, label %if.then5, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then5:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %95 = ptrtoint ptr %iw_msixtbl.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %iw_msixtbl.i, align 8
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %96, align 4
  %99 = ptrtoint ptr %irq_ops.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %irq_ops.i, align 8
  %irdma_en_irq.i = getelementptr inbounds %struct.irdma_irq_ops, ptr %100, i32 0, i32 3
  %101 = ptrtoint ptr %irdma_en_irq.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %irdma_en_irq.i, align 4
  call void %102(ptr noundef %sc_dev, i32 noundef %98) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end4.cleanup_crit_edge, %if.then3, %irdma_create_aeq.exit.thread
  %retval.0 = phi i32 [ -4, %if.then3 ], [ 0, %if.then5 ], [ 0, %if.end4.cleanup_crit_edge ], [ %retval.0.i.ph, %irdma_create_aeq.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irdma_add_ip(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @irdma_ctrl_init_hw(ptr noundef %rf) local_unnamed_addr #0 align 64 {
entry:
  %info.i = alloca %struct.irdma_ccq_init_info, align 8
  %info.i.i = alloca %struct.irdma_device_init_info, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_dev = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 42
  %msix_count.i.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 8
  %0 = ptrtoint ptr %msix_count.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msix_count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i.i, label %entry.do.end48_crit_edge, label %if.end8.i.i.i.i

entry.do.end48_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end48

if.end8.i.i.i.i:                                  ; preds = %entry
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 12) #9
  %3 = extractvalue { i32, i1 } %2, 1
  %4 = extractvalue { i32, i1 } %2, 0
  %spec.select.i.i.i = tail call i32 @llvm.uadd.sat.i32(i32 %4, i32 16) #9
  %retval.0.i.i.i = select i1 %3, i32 -1, i32 %spec.select.i.i.i
  %mul.i.i = mul i32 %1, 20
  %add.i.i = add i32 %retval.0.i.i.i, %mul.i.i
  %call9.i.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i.i, i32 noundef 3520) #14
  %iw_msixtbl.i.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 58
  %5 = ptrtoint ptr %iw_msixtbl.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call9.i.i.i.i, ptr %iw_msixtbl.i.i, align 8
  %tobool5.not.i.i = icmp eq ptr %call9.i.i.i.i, null
  br i1 %tobool5.not.i.i, label %if.end8.i.i.i.i.do.end48_crit_edge, label %if.end7.i.i

if.end8.i.i.i.i.do.end48_crit_edge:               ; preds = %if.end8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end48

if.end7.i.i:                                      ; preds = %if.end8.i.i.i.i
  %6 = ptrtoint ptr %msix_count.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %msix_count.i.i, align 8
  %arrayidx.i.i = getelementptr %struct.irdma_msix_vector, ptr %call9.i.i.i.i, i32 %7
  %iw_qvlist10.i.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 59
  %8 = ptrtoint ptr %iw_qvlist10.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %arrayidx.i.i, ptr %iw_qvlist10.i.i, align 4
  %qv_info.i.i = getelementptr inbounds %struct.irdma_qvlist_info, ptr %arrayidx.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %7, ptr %arrayidx.i.i, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %10 = load volatile i32, ptr @__num_online_cpus, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %10)
  %cmp.not.i.i = icmp ugt i32 %7, %10
  br i1 %cmp.not.i.i, label %if.end7.i.i.if.end16.i.i_crit_edge, label %if.then15.i.i

if.end7.i.i.if.end16.i.i_crit_edge:               ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16.i.i

if.then15.i.i:                                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %rf to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load.i.i = load i8, ptr %rf, align 8
  %bf.set.i.i = or i8 %bf.load.i.i, 32
  store i8 %bf.set.i.i, ptr %rf, align 8
  br label %if.end16.i.i

if.end16.i.i:                                     ; preds = %if.then15.i.i, %if.end7.i.i.if.end16.i.i_crit_edge
  %12 = ptrtoint ptr %msix_count.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %msix_count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp1893.not.i.i = icmp eq i32 %13, 0
  br i1 %cmp1893.not.i.i, label %if.end16.i.i.if.end.i_crit_edge, label %if.then27.peel.i.i

if.end16.i.i.if.end.i_crit_edge:                  ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then27.peel.i.i:                               ; preds = %if.end16.i.i
  %msix_entries.i.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 61
  %14 = ptrtoint ptr %msix_entries.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %msix_entries.i.i, align 8
  %entry19.peel.i.i = getelementptr inbounds %struct.msix_entry, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %entry19.peel.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %entry19.peel.i.i, align 4
  %conv.peel.i.i = zext i16 %17 to i32
  %18 = ptrtoint ptr %iw_msixtbl.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %iw_msixtbl.i.i, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv.peel.i.i, ptr %19, align 4
  %21 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %15, align 4
  %23 = load ptr, ptr %iw_msixtbl.i.i, align 8
  %irq.peel.i.i = getelementptr %struct.irdma_msix_vector, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %irq.peel.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %22, ptr %irq.peel.i.i, align 4
  %25 = load ptr, ptr %iw_msixtbl.i.i, align 8
  %cpu_affinity.peel.i.i = getelementptr %struct.irdma_msix_vector, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %cpu_affinity.peel.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %cpu_affinity.peel.i.i, align 4
  %aeq_idx.peel.i.i = getelementptr inbounds %struct.irdma_qv_info, ptr %qv_info.i.i, i32 0, i32 2
  %27 = ptrtoint ptr %aeq_idx.peel.i.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %aeq_idx.peel.i.i, align 2
  %28 = ptrtoint ptr %rf to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load28.peel.i.i = load i8, ptr %rf, align 8
  %29 = and i8 %bf.load28.peel.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %bf.cast.not.peel.i.i = icmp eq i8 %29, 0
  %ceq_idx33.peel.i.i = getelementptr inbounds %struct.irdma_qv_info, ptr %qv_info.i.i, i32 0, i32 1
  %..i.i = sext i1 %bf.cast.not.peel.i.i to i16
  %30 = ptrtoint ptr %ceq_idx33.peel.i.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %..i.i, ptr %ceq_idx33.peel.i.i, align 4
  %itr_idx.peel.i.i = getelementptr inbounds %struct.irdma_qv_info, ptr %qv_info.i.i, i32 0, i32 3
  %31 = ptrtoint ptr %itr_idx.peel.i.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 3, ptr %itr_idx.peel.i.i, align 4
  %32 = ptrtoint ptr %iw_msixtbl.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %iw_msixtbl.i.i, align 8
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 4
  %36 = ptrtoint ptr %qv_info.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %qv_info.i.i, align 4
  %37 = ptrtoint ptr %msix_count.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %msix_count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %38)
  %cmp18.peel.i.i = icmp ugt i32 %38, 1
  br i1 %cmp18.peel.i.i, label %if.end40.i.preheader.i, label %if.then27.peel.i.i.if.end.i_crit_edge

if.then27.peel.i.i.if.end.i_crit_edge:            ; preds = %if.then27.peel.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end40.i.preheader.i:                           ; preds = %if.then27.peel.i.i
  %not.bf.cast.not.peel.i.i = xor i1 %bf.cast.not.peel.i.i, true
  %.99.i.i = zext i1 %not.bf.cast.not.peel.i.i to i32
  br label %if.end40.i.i

if.end40.i.i:                                     ; preds = %if.end40.i.i.if.end40.i.i_crit_edge, %if.end40.i.preheader.i
  %i.097.i.i = phi i32 [ %inc44.i.i, %if.end40.i.i.if.end40.i.i_crit_edge ], [ 1, %if.end40.i.preheader.i ]
  %ceq_idx.096.i.i = phi i32 [ %inc37.i.i, %if.end40.i.i.if.end40.i.i_crit_edge ], [ %.99.i.i, %if.end40.i.preheader.i ]
  %pmsix.095.pn.i.i = phi ptr [ %pmsix.095.i.i, %if.end40.i.i.if.end40.i.i_crit_edge ], [ %15, %if.end40.i.preheader.i ]
  %iw_qvinfo.094.pn.i.i = phi ptr [ %iw_qvinfo.094.i.i, %if.end40.i.i.if.end40.i.i_crit_edge ], [ %qv_info.i.i, %if.end40.i.preheader.i ]
  %iw_qvinfo.094.i.i = getelementptr %struct.irdma_qv_info, ptr %iw_qvinfo.094.pn.i.i, i32 1
  %pmsix.095.i.i = getelementptr %struct.msix_entry, ptr %pmsix.095.pn.i.i, i32 1
  %entry19.i.i = getelementptr %struct.msix_entry, ptr %pmsix.095.pn.i.i, i32 1, i32 1
  %39 = ptrtoint ptr %entry19.i.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %entry19.i.i, align 4
  %conv.i.i = zext i16 %40 to i32
  %41 = ptrtoint ptr %iw_msixtbl.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %iw_msixtbl.i.i, align 8
  %arrayidx21.i.i = getelementptr %struct.irdma_msix_vector, ptr %42, i32 %i.097.i.i
  %43 = ptrtoint ptr %arrayidx21.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %conv.i.i, ptr %arrayidx21.i.i, align 4
  %44 = ptrtoint ptr %pmsix.095.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pmsix.095.i.i, align 4
  %46 = load ptr, ptr %iw_msixtbl.i.i, align 8
  %irq.i.i = getelementptr %struct.irdma_msix_vector, ptr %46, i32 %i.097.i.i, i32 1
  %47 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %45, ptr %irq.i.i, align 4
  %48 = load ptr, ptr %iw_msixtbl.i.i, align 8
  %cpu_affinity.i.i = getelementptr %struct.irdma_msix_vector, ptr %48, i32 %i.097.i.i, i32 2
  %49 = ptrtoint ptr %cpu_affinity.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %ceq_idx.096.i.i, ptr %cpu_affinity.i.i, align 4
  %aeq_idx36.i.i = getelementptr %struct.irdma_qv_info, ptr %iw_qvinfo.094.pn.i.i, i32 1, i32 2
  %50 = ptrtoint ptr %aeq_idx36.i.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 -1, ptr %aeq_idx36.i.i, align 2
  %inc37.i.i = add nuw i32 %ceq_idx.096.i.i, 1
  %conv38.i.i = trunc i32 %ceq_idx.096.i.i to i16
  %ceq_idx39.i.i = getelementptr %struct.irdma_qv_info, ptr %iw_qvinfo.094.pn.i.i, i32 1, i32 1
  %51 = ptrtoint ptr %ceq_idx39.i.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %conv38.i.i, ptr %ceq_idx39.i.i, align 4
  %itr_idx.i.i = getelementptr %struct.irdma_qv_info, ptr %iw_qvinfo.094.pn.i.i, i32 1, i32 3
  %52 = ptrtoint ptr %itr_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 3, ptr %itr_idx.i.i, align 4
  %53 = load ptr, ptr %iw_msixtbl.i.i, align 8
  %arrayidx42.i.i = getelementptr %struct.irdma_msix_vector, ptr %53, i32 %i.097.i.i
  %54 = ptrtoint ptr %arrayidx42.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx42.i.i, align 4
  %56 = ptrtoint ptr %iw_qvinfo.094.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %iw_qvinfo.094.i.i, align 4
  %inc44.i.i = add nuw i32 %i.097.i.i, 1
  %57 = ptrtoint ptr %msix_count.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %msix_count.i.i, align 8
  %cmp18.i.i = icmp ult i32 %inc44.i.i, %58
  br i1 %cmp18.i.i, label %if.end40.i.i.if.end40.i.i_crit_edge, label %if.end40.i.i.if.end.i_crit_edge, !llvm.loop !181

if.end40.i.i.if.end.i_crit_edge:                  ; preds = %if.end40.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end40.i.i.if.end40.i.i_crit_edge:              ; preds = %if.end40.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40.i.i

if.end.i:                                         ; preds = %if.end40.i.i.if.end.i_crit_edge, %if.then27.peel.i.i.if.end.i_crit_edge, %if.end16.i.i.if.end.i_crit_edge
  %pcidev.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 43
  %59 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pcidev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %60, i32 0, i32 44
  %device.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 45, i32 2
  %61 = ptrtoint ptr %device.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %dev.i, ptr %device.i, align 8
  %obj_mem.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 62
  %size.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 62, i32 2
  %62 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 8192, ptr %size.i, align 4
  %pa.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 62, i32 1
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev.i, i32 noundef 8192, ptr noundef %pa.i, i32 noundef 3264, i32 noundef 0) #9
  %63 = ptrtoint ptr %obj_mem.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call.i.i, ptr %obj_mem.i, align 4
  %tobool10.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool10.not.i, label %if.end.i.clean_msixtbl.i_crit_edge, label %if.end12.i

if.end.i.clean_msixtbl.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %clean_msixtbl.i

if.end12.i:                                       ; preds = %if.end.i
  %obj_next.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 63
  %64 = call ptr @memcpy(ptr %obj_next.i, ptr %obj_mem.i, i32 12)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %info.i.i) #9
  %65 = call ptr @memset(ptr %info.i.i, i32 0, i32 40)
  %call1.i.i.i.i50.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 17192, i32 noundef 3520, i32 noundef 3) #14
  %hmc_info_mem.i.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 2
  %66 = ptrtoint ptr %hmc_info_mem.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call1.i.i.i.i50.i, ptr %hmc_info_mem.i.i, align 4
  %tobool.not.i51.i = icmp eq ptr %call1.i.i.i.i50.i, null
  br i1 %tobool.not.i51.i, label %if.end12.i.clean_obj_mem.i_crit_edge, label %if.end.i52.i

if.end12.i.clean_obj_mem.i_crit_edge:             ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %clean_obj_mem.i

if.end.i52.i:                                     ; preds = %if.end12.i
  %pble_rsrc.i.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 50
  %67 = ptrtoint ptr %pble_rsrc.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call1.i.i.i.i50.i, ptr %pble_rsrc.i.i, align 4
  %hw.i.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 45
  %hmc.i.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 45, i32 3
  %hmc_info.i.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 42, i32 26
  %68 = ptrtoint ptr %hmc_info.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %hmc.i.i, ptr %hmc_info.i.i, align 8
  %add.ptr.i.i = getelementptr %struct.irdma_hmc_pble_rsrc, ptr %call1.i.i.i.i50.i, i32 1
  %hmc_obj.i.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 45, i32 3, i32 3
  %69 = ptrtoint ptr %hmc_obj.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %add.ptr.i.i, ptr %hmc_obj.i.i, align 4
  %70 = ptrtoint ptr %obj_next.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %obj_next.i, align 8
  %72 = ptrtoint ptr %71 to i32
  %add3.i.i.i = add i32 %72, 3
  %and.i.i.i = and i32 %add3.i.i.i, -4
  %sub8.i.i.i = sub i32 %and.i.i.i, %72
  %add.ptr.i.i.i = getelementptr i8, ptr %71, i32 %sub8.i.i.i
  %pa.i.i.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 63, i32 1
  %add.ptr15.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 176
  %73 = ptrtoint ptr %obj_mem.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %obj_mem.i, align 4
  %75 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %size.i, align 4
  %add.ptr19.i.i.i = getelementptr i8, ptr %74, i32 %76
  %cmp.i.i.i = icmp ugt ptr %add.ptr15.i.i.i, %add.ptr19.i.i.i
  br i1 %cmp.i.i.i, label %if.end.i52.i.error.i.i_crit_edge, label %if.end8.i.i

if.end.i52.i.error.i.i_crit_edge:                 ; preds = %if.end.i52.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error.i.i

if.end8.i.i:                                      ; preds = %if.end.i52.i
  %77 = ptrtoint ptr %pa.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %pa.i.i.i, align 4
  %add11.i.i.i = add i32 %78, %sub8.i.i.i
  %79 = ptrtoint ptr %obj_next.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %add.ptr15.i.i.i, ptr %obj_next.i, align 8
  %add28.i.i.i = add i32 %add11.i.i.i, 176
  store i32 %add28.i.i.i, ptr %pa.i.i.i, align 4
  %conv.i53.i = zext i32 %add11.i.i.i to i64
  %80 = ptrtoint ptr %info.i.i to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 %conv.i53.i, ptr %info.i.i, align 8
  %fpm_query_buf.i.i = getelementptr inbounds %struct.irdma_device_init_info, ptr %info.i.i, i32 0, i32 2
  %81 = ptrtoint ptr %fpm_query_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %add.ptr.i.i.i, ptr %fpm_query_buf.i.i, align 8
  %82 = ptrtoint ptr %add.ptr15.i.i.i to i32
  %add3.i53.i.i = add i32 %82, 3
  %and.i54.i.i = and i32 %add3.i53.i.i, -4
  %sub8.i55.i.i = sub i32 %and.i54.i.i, %82
  %add.ptr.i56.i.i = getelementptr i8, ptr %add.ptr15.i.i.i, i32 %sub8.i55.i.i
  %add.ptr15.i61.i.i = getelementptr i8, ptr %add.ptr.i56.i.i, i32 176
  %cmp.i65.i.i = icmp ugt ptr %add.ptr15.i61.i.i, %add.ptr19.i.i.i
  br i1 %cmp.i65.i.i, label %if.end8.i.i.error.i.i_crit_edge, label %if.end12.i.i

if.end8.i.i.error.i.i_crit_edge:                  ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error.i.i

if.end12.i.i:                                     ; preds = %if.end8.i.i
  %add11.i58.i.i = add i32 %add28.i.i.i, %sub8.i55.i.i
  %83 = ptrtoint ptr %obj_next.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %add.ptr15.i61.i.i, ptr %obj_next.i, align 8
  %add28.i66.i.i = add i32 %add11.i58.i.i, 176
  %84 = ptrtoint ptr %pa.i.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %add28.i66.i.i, ptr %pa.i.i.i, align 4
  %conv14.i.i = zext i32 %add11.i58.i.i to i64
  %fpm_commit_buf_pa.i.i = getelementptr inbounds %struct.irdma_device_init_info, ptr %info.i.i, i32 0, i32 1
  %85 = ptrtoint ptr %fpm_commit_buf_pa.i.i to i32
  call void @__asan_store8_noabort(i32 %85)
  store i64 %conv14.i.i, ptr %fpm_commit_buf_pa.i.i, align 8
  %fpm_commit_buf.i.i = getelementptr inbounds %struct.irdma_device_init_info, ptr %info.i.i, i32 0, i32 3
  %86 = ptrtoint ptr %fpm_commit_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %add.ptr.i56.i.i, ptr %fpm_commit_buf.i.i, align 4
  %87 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %hw.i.i, align 8
  %bar0.i.i = getelementptr inbounds %struct.irdma_device_init_info, ptr %info.i.i, i32 0, i32 5
  %89 = ptrtoint ptr %bar0.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %88, ptr %bar0.i.i, align 4
  %90 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %pcidev.i, align 8
  %devfn.i.i = getelementptr inbounds %struct.pci_dev, ptr %91, i32 0, i32 6
  %92 = ptrtoint ptr %devfn.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %devfn.i.i, align 4
  %94 = trunc i32 %93 to i8
  %conv17.i.i = and i8 %94, 7
  %hmc_fn_id.i.i = getelementptr inbounds %struct.irdma_device_init_info, ptr %info.i.i, i32 0, i32 6
  %95 = ptrtoint ptr %hmc_fn_id.i.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %conv17.i.i, ptr %hmc_fn_id.i.i, align 8
  %hw19.i.i = getelementptr inbounds %struct.irdma_device_init_info, ptr %info.i.i, i32 0, i32 4
  %96 = ptrtoint ptr %hw19.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %hw.i.i, ptr %hw19.i.i, align 8
  %rdma_ver.i.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 4
  %97 = ptrtoint ptr %rdma_ver.i.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %rdma_ver.i.i, align 4
  %conv20.i.i = zext i8 %98 to i32
  %call22.i.i = call i32 @irdma_sc_dev_init(i32 noundef %conv20.i.i, ptr noundef %sc_dev, ptr noundef nonnull %info.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i.i)
  %tobool23.not.i.i = icmp eq i32 %call22.i.i, 0
  br i1 %tobool23.not.i.i, label %if.end, label %if.end12.i.i.error.i.i_crit_edge

if.end12.i.i.error.i.i_crit_edge:                 ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error.i.i

error.i.i:                                        ; preds = %if.end12.i.i.error.i.i_crit_edge, %if.end8.i.i.error.i.i_crit_edge, %if.end.i52.i.error.i.i_crit_edge
  %status.0.i.i = phi i32 [ %call22.i.i, %if.end12.i.i.error.i.i_crit_edge ], [ -9, %if.end.i52.i.error.i.i_crit_edge ], [ -9, %if.end8.i.i.error.i.i_crit_edge ]
  %99 = ptrtoint ptr %hmc_info_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %hmc_info_mem.i.i, align 4
  call void @kfree(ptr noundef %100) #9
  %101 = ptrtoint ptr %hmc_info_mem.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr null, ptr %hmc_info_mem.i.i, align 4
  br label %clean_obj_mem.i

clean_obj_mem.i:                                  ; preds = %error.i.i, %if.end12.i.clean_obj_mem.i_crit_edge
  %retval.0.i54.ph.i = phi i32 [ -9, %if.end12.i.clean_obj_mem.i_crit_edge ], [ %status.0.i.i, %error.i.i ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %info.i.i) #9
  %102 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %device.i, align 8
  %104 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %size.i, align 4
  %106 = ptrtoint ptr %obj_mem.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %obj_mem.i, align 4
  %108 = ptrtoint ptr %pa.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %pa.i, align 4
  call void @dma_free_attrs(ptr noundef %103, i32 noundef %105, ptr noundef %107, i32 noundef %109, i32 noundef 0) #9
  %110 = ptrtoint ptr %obj_mem.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr null, ptr %obj_mem.i, align 4
  br label %clean_msixtbl.i

clean_msixtbl.i:                                  ; preds = %clean_obj_mem.i, %if.end.i.clean_msixtbl.i_crit_edge
  %status.0.i = phi i32 [ %retval.0.i54.ph.i, %clean_obj_mem.i ], [ -9, %if.end.i.clean_msixtbl.i_crit_edge ]
  %iw_msixtbl.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 58
  %111 = ptrtoint ptr %iw_msixtbl.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %iw_msixtbl.i, align 8
  call void @kfree(ptr noundef %112) #9
  %113 = ptrtoint ptr %iw_msixtbl.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr null, ptr %iw_msixtbl.i, align 8
  br label %do.end48

if.end:                                           ; preds = %if.end12.i.i
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %info.i.i) #9
  %init_state = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 41
  %114 = ptrtoint ptr %init_state to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 1, ptr %init_state, align 4
  %call1 = call fastcc i32 @irdma_create_cqp(ptr noundef %rf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.do.end48_crit_edge

if.end.do.end48_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end48

if.end4:                                          ; preds = %if.end
  %115 = ptrtoint ptr %init_state to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 2, ptr %init_state, align 4
  %116 = ptrtoint ptr %rdma_ver.i.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %rdma_ver.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %117)
  %cmp.i = icmp eq i8 %117, 1
  %limits_sel.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 32
  %118 = ptrtoint ptr %limits_sel.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %limits_sel.i, align 8
  %arrayidx.i = getelementptr [8 x %struct.irdma_rsrc_limits], ptr @rsrc_limits_table, i32 0, i32 %119
  %120 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %arrayidx.i, align 4
  %mul.i = zext i1 %cmp.i to i32
  %qpcnt.0.i = shl i32 %121, %mul.i
  %sd_type.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 7
  %122 = ptrtoint ptr %sd_type.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 2, ptr %sd_type.i, align 4
  %call.i = call i32 @irdma_cfg_fpm_val(ptr noundef %sc_dev, i32 noundef %qpcnt.0.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %irdma_hmc_setup.exit, label %if.end4.do.end48_crit_edge

if.end4.do.end48_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end48

irdma_hmc_setup.exit:                             ; preds = %if.end4
  %123 = ptrtoint ptr %rdma_ver.i.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %rdma_ver.i.i, align 4
  %conv8.i = zext i8 %124 to i32
  %call9.i = call fastcc i32 @irdma_create_hmc_objs(ptr noundef %rf, i32 noundef %conv8.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool7.not = icmp eq i32 %call9.i, 0
  br i1 %tobool7.not, label %if.end9, label %irdma_hmc_setup.exit.do.end48_crit_edge

irdma_hmc_setup.exit.do.end48_crit_edge:          ; preds = %irdma_hmc_setup.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end48

if.end9:                                          ; preds = %irdma_hmc_setup.exit
  %125 = ptrtoint ptr %init_state to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 3, ptr %init_state, align 4
  %call11 = call i32 @irdma_initialize_hw_rsrc(ptr noundef %rf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end9.do.end48_crit_edge

if.end9.do.end48_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end48

if.end14:                                         ; preds = %if.end9
  %126 = ptrtoint ptr %init_state to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 4, ptr %init_state, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %info.i) #9
  %127 = call ptr @memset(ptr %info.i, i32 0, i32 56)
  %ccq1.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 47
  %ccq2.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 42, i32 30
  %128 = ptrtoint ptr %ccq2.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %ccq1.i, ptr %ccq2.i, align 4
  %dev4.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 47, i32 0, i32 3
  %129 = ptrtoint ptr %dev4.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %sc_dev, ptr %dev4.i, align 8
  %dev5.i = getelementptr inbounds %struct.irdma_ccq_init_info, ptr %info.i, i32 0, i32 2
  %130 = ptrtoint ptr %dev5.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %sc_dev, ptr %dev5.i, align 8
  %size.i87 = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 47, i32 2, i32 2
  %131 = ptrtoint ptr %size.i87 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 64, ptr %size.i87, align 4
  %mem_cq.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 47, i32 1
  %size6.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 47, i32 1, i32 2
  %132 = ptrtoint ptr %size6.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 65792, ptr %size6.i, align 8
  %hw.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 42, i32 8
  %133 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %hw.i, align 8
  %device.i88 = getelementptr inbounds %struct.irdma_hw, ptr %134, i32 0, i32 2
  %135 = ptrtoint ptr %device.i88 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %device.i88, align 4
  %pa.i89 = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 47, i32 1, i32 1
  %call.i.i90 = call ptr @dma_alloc_attrs(ptr noundef %136, i32 noundef 65792, ptr noundef %pa.i89, i32 noundef 3264, i32 noundef 0) #9
  %137 = ptrtoint ptr %mem_cq.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %call.i.i90, ptr %mem_cq.i, align 8
  %tobool.not.i91 = icmp eq ptr %call.i.i90, null
  br i1 %tobool.not.i91, label %if.end14.irdma_create_ccq.exit.thread_crit_edge, label %if.end.i93

if.end14.irdma_create_ccq.exit.thread_crit_edge:  ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %irdma_create_ccq.exit.thread

if.end.i93:                                       ; preds = %if.end14
  %shadow_area.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 47, i32 2
  %138 = ptrtoint ptr %size.i87 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %size.i87, align 4
  %140 = ptrtoint ptr %obj_next.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %obj_next.i, align 8
  %142 = ptrtoint ptr %141 to i32
  %add3.i.i = add i32 %142, 127
  %and.i.i = and i32 %add3.i.i, -128
  %sub8.i.i = sub i32 %and.i.i, %142
  %add.ptr.i.i92 = getelementptr i8, ptr %141, i32 %sub8.i.i
  %143 = ptrtoint ptr %shadow_area.i to i32
  call void @__asan_storeN_noabort(i32 %143, i32 4)
  store ptr %add.ptr.i.i92, ptr %shadow_area.i, align 1
  %144 = ptrtoint ptr %pa.i.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %pa.i.i.i, align 4
  %add11.i.i = add i32 %sub8.i.i, %145
  %pa12.i.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 47, i32 2, i32 1
  %146 = ptrtoint ptr %pa12.i.i to i32
  call void @__asan_storeN_noabort(i32 %146, i32 4)
  store i32 %add11.i.i, ptr %pa12.i.i, align 1
  %add.ptr15.i.i = getelementptr i8, ptr %add.ptr.i.i92, i32 %139
  %147 = ptrtoint ptr %obj_mem.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %obj_mem.i, align 4
  %149 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %size.i, align 4
  %add.ptr19.i.i = getelementptr i8, ptr %148, i32 %150
  %cmp.i.i = icmp ugt ptr %add.ptr15.i.i, %add.ptr19.i.i
  br i1 %cmp.i.i, label %if.end.i93.if.then42.i_crit_edge, label %if.end19.i

if.end.i93.if.then42.i_crit_edge:                 ; preds = %if.end.i93
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then42.i

if.end19.i:                                       ; preds = %if.end.i93
  %151 = ptrtoint ptr %obj_next.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %add.ptr15.i.i, ptr %obj_next.i, align 8
  %add28.i.i = add i32 %add11.i.i, %139
  %152 = ptrtoint ptr %pa.i.i.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %add28.i.i, ptr %pa.i.i.i, align 4
  %back_cq.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 47, i32 0, i32 6
  %153 = ptrtoint ptr %back_cq.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %ccq1.i, ptr %back_cq.i, align 4
  %cq_base.i = getelementptr inbounds %struct.irdma_ccq_init_info, ptr %info.i, i32 0, i32 3
  %154 = ptrtoint ptr %cq_base.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr %call.i.i90, ptr %cq_base.i, align 4
  %155 = ptrtoint ptr %pa.i89 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %pa.i89, align 4
  %conv.i = zext i32 %156 to i64
  %157 = ptrtoint ptr %info.i to i32
  call void @__asan_store8_noabort(i32 %157)
  store i64 %conv.i, ptr %info.i, align 8
  %num_elem.i = getelementptr inbounds %struct.irdma_ccq_init_info, ptr %info.i, i32 0, i32 6
  %158 = ptrtoint ptr %num_elem.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 2049, ptr %num_elem.i, align 8
  %shadow_area27.i = getelementptr inbounds %struct.irdma_ccq_init_info, ptr %info.i, i32 0, i32 4
  %159 = ptrtoint ptr %shadow_area27.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr %add.ptr.i.i92, ptr %shadow_area27.i, align 8
  %conv30.i = zext i32 %add11.i.i to i64
  %shadow_area_pa.i = getelementptr inbounds %struct.irdma_ccq_init_info, ptr %info.i, i32 0, i32 1
  %160 = ptrtoint ptr %shadow_area_pa.i to i32
  call void @__asan_store8_noabort(i32 %160)
  store i64 %conv30.i, ptr %shadow_area_pa.i, align 8
  %ceqe_mask.i = getelementptr inbounds %struct.irdma_ccq_init_info, ptr %info.i, i32 0, i32 9
  %161 = ptrtoint ptr %ceqe_mask.i to i32
  call void @__asan_load1_noabort(i32 %161)
  %bf.load.i = load i8, ptr %ceqe_mask.i, align 4
  %bf.clear32.i = and i8 %bf.load.i, 63
  %bf.set33.i = or i8 %bf.clear32.i, 64
  store i8 %bf.set33.i, ptr %ceqe_mask.i, align 4
  %shadow_read_threshold.i = getelementptr inbounds %struct.irdma_ccq_init_info, ptr %info.i, i32 0, i32 8
  %162 = ptrtoint ptr %shadow_read_threshold.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 16, ptr %shadow_read_threshold.i, align 8
  %default_vsi.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 68
  %vsi.i = getelementptr inbounds %struct.irdma_ccq_init_info, ptr %info.i, i32 0, i32 13
  %163 = ptrtoint ptr %vsi.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr %default_vsi.i, ptr %vsi.i, align 4
  %164 = ptrtoint ptr %ccq2.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %ccq2.i, align 4
  %call35.i = call i32 @irdma_sc_ccq_init(ptr noundef %165, ptr noundef nonnull %info.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %tobool36.not.i = icmp eq i32 %call35.i, 0
  br i1 %tobool36.not.i, label %exit.i, label %if.end19.i.if.then42.i_crit_edge

if.end19.i.if.then42.i_crit_edge:                 ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then42.i

exit.i:                                           ; preds = %if.end19.i
  %166 = ptrtoint ptr %ccq2.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %ccq2.i, align 4
  %call39.i = call i32 @irdma_sc_ccq_create(ptr noundef %167, i64 noundef 0, i1 noundef zeroext true, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %tobool41.not.i = icmp eq i32 %call39.i, 0
  br i1 %tobool41.not.i, label %if.end19, label %exit.i.if.then42.i_crit_edge

exit.i.if.then42.i_crit_edge:                     ; preds = %exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then42.i

if.then42.i:                                      ; preds = %exit.i.if.then42.i_crit_edge, %if.end19.i.if.then42.i_crit_edge, %if.end.i93.if.then42.i_crit_edge
  %status.092.i = phi i32 [ %call39.i, %exit.i.if.then42.i_crit_edge ], [ -9, %if.end.i93.if.then42.i_crit_edge ], [ %call35.i, %if.end19.i.if.then42.i_crit_edge ]
  %168 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %hw.i, align 8
  %device44.i = getelementptr inbounds %struct.irdma_hw, ptr %169, i32 0, i32 2
  %170 = ptrtoint ptr %device44.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %device44.i, align 4
  %172 = ptrtoint ptr %size6.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %size6.i, align 8
  %174 = ptrtoint ptr %mem_cq.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %mem_cq.i, align 8
  %176 = ptrtoint ptr %pa.i89 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %pa.i89, align 4
  call void @dma_free_attrs(ptr noundef %171, i32 noundef %173, ptr noundef %175, i32 noundef %177, i32 noundef 0) #9
  %178 = ptrtoint ptr %mem_cq.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr null, ptr %mem_cq.i, align 8
  br label %irdma_create_ccq.exit.thread

irdma_create_ccq.exit.thread:                     ; preds = %if.then42.i, %if.end14.irdma_create_ccq.exit.thread_crit_edge
  %retval.0.i94.ph = phi i32 [ %status.092.i, %if.then42.i ], [ -9, %if.end14.irdma_create_ccq.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %info.i) #9
  br label %do.end48

if.end19:                                         ; preds = %exit.i
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %info.i) #9
  %179 = ptrtoint ptr %init_state to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 5, ptr %init_state, align 4
  %feature_info = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 42, i32 23
  %180 = ptrtoint ptr %feature_info to i32
  call void @__asan_store8_noabort(i32 %180)
  store i64 2, ptr %feature_info, align 8
  %181 = ptrtoint ptr %rdma_ver.i.i to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %rdma_ver.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %182)
  %cmp.not = icmp eq i8 %182, 1
  br i1 %cmp.not, label %if.end19.if.end27_crit_edge, label %if.then22

if.end19.if.end27_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then22:                                        ; preds = %if.end19
  %call23 = call i32 @irdma_get_rdma_features(ptr noundef %sc_dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then22.if.end27_crit_edge, label %if.then22.do.end48_crit_edge

if.then22.do.end48_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end48

if.then22.if.end27_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.end27:                                         ; preds = %if.then22.if.end27_crit_edge, %if.end19.if.end27_crit_edge
  %call28 = call fastcc i32 @irdma_setup_ceq_0(ptr noundef %rf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end27.do.end48_crit_edge

if.end27.do.end48_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end48

if.end31:                                         ; preds = %if.end27
  %183 = ptrtoint ptr %init_state to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 6, ptr %init_state, align 4
  %call33 = call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.11, i32 noundef 655378, i32 noundef 1) #9
  %cqp_cmpl_wq = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 66
  %184 = ptrtoint ptr %cqp_cmpl_wq to i32
  call void @__asan_store4_noabort(i32 %184)
  store ptr %call33, ptr %cqp_cmpl_wq, align 4
  %tobool35.not = icmp eq ptr %call33, null
  br i1 %tobool35.not, label %if.end31.do.end48_crit_edge, label %do.body38

if.end31.do.end48_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end48

do.body38:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  %cqp_cmpl_work = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 67
  call void @__init_work(ptr noundef %cqp_cmpl_work, i32 noundef 0) #9
  %185 = ptrtoint ptr %cqp_cmpl_work to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 -64, ptr %cqp_cmpl_work, align 8
  %lockdep_map = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 67, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.12, ptr noundef nonnull @irdma_ctrl_init_hw.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry42 = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 67, i32 1
  %186 = ptrtoint ptr %entry42 to i32
  call void @__asan_store4_noabort(i32 %186)
  store volatile ptr %entry42, ptr %entry42, align 4
  %prev.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 67, i32 1, i32 1
  %187 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store ptr %entry42, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 67, i32 2
  %188 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr @cqp_compl_worker, ptr %func, align 4
  %189 = ptrtoint ptr %ccq2.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %ccq2.i, align 4
  call void @irdma_sc_ccq_arm(ptr noundef %190) #9
  br label %cleanup

do.end48:                                         ; preds = %if.end31.do.end48_crit_edge, %if.end27.do.end48_crit_edge, %if.then22.do.end48_crit_edge, %irdma_create_ccq.exit.thread, %if.end9.do.end48_crit_edge, %irdma_hmc_setup.exit.do.end48_crit_edge, %if.end4.do.end48_crit_edge, %if.end.do.end48_crit_edge, %clean_msixtbl.i, %if.end8.i.i.i.i.do.end48_crit_edge, %entry.do.end48_crit_edge
  %status.0 = phi i32 [ %call1, %if.end.do.end48_crit_edge ], [ %call9.i, %irdma_hmc_setup.exit.do.end48_crit_edge ], [ %call11, %if.end9.do.end48_crit_edge ], [ %call23, %if.then22.do.end48_crit_edge ], [ %call28, %if.end27.do.end48_crit_edge ], [ -9, %if.end31.do.end48_crit_edge ], [ %retval.0.i94.ph, %irdma_create_ccq.exit.thread ], [ -9, %if.end8.i.i.i.i.do.end48_crit_edge ], [ -72, %entry.do.end48_crit_edge ], [ %status.0.i, %clean_msixtbl.i ], [ %call.i, %if.end4.do.end48_crit_edge ]
  %pcidev = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 43
  %191 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %pcidev, align 8
  %dev49 = getelementptr inbounds %struct.pci_dev, ptr %192, i32 0, i32 44
  %init_state50 = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 41
  %193 = ptrtoint ptr %init_state50 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %init_state50, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev49, ptr noundef nonnull @.str.13, i32 noundef %194, i32 noundef %status.0) #12
  call void @irdma_ctrl_deinit_hw(ptr noundef %rf)
  br label %cleanup

cleanup:                                          ; preds = %do.end48, %do.body38
  %retval.0 = phi i32 [ %status.0, %do.end48 ], [ 0, %do.body38 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @irdma_create_cqp(ptr noundef %rf) unnamed_addr #0 align 64 {
entry:
  %cqp_init_info = alloca %struct.irdma_cqp_init_info, align 8
  %maj_err = alloca i16, align 2
  %min_err = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_dev = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 42
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %cqp_init_info) #9
  %0 = call ptr @memset(ptr %cqp_init_info, i32 0, i32 80)
  %cqp1 = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 46
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %maj_err) #9
  %1 = ptrtoint ptr %maj_err to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %maj_err, align 2, !annotation !183
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %min_err) #9
  %2 = ptrtoint ptr %min_err to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %min_err, align 2, !annotation !183
  %call1.i.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 622592, i32 noundef 3520, i32 noundef 8) #14
  %cqp_requests = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 46, i32 8
  %3 = ptrtoint ptr %cqp_requests to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call1.i.i.i.i, ptr %cqp_requests, align 4
  %tobool.not = icmp eq ptr %call1.i.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1.i.i.i.i167 = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 16384, i32 noundef 3520, i32 noundef 2) #14
  %scratch_array = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 46, i32 7
  %4 = ptrtoint ptr %scratch_array to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call1.i.i.i.i167, ptr %scratch_array, align 8
  %tobool5.not = icmp eq ptr %call1.i.i.i.i167, null
  br i1 %tobool5.not, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %cqp_requests to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cqp_requests, align 4
  tail call void @kfree(ptr noundef %6) #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %cqp9 = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 42, i32 27
  %7 = ptrtoint ptr %cqp9 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %cqp1, ptr %cqp9, align 4
  %dev11 = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 46, i32 0, i32 4
  %8 = ptrtoint ptr %dev11 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %sc_dev, ptr %dev11, align 4
  %sq = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 46, i32 5
  %size = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 46, i32 5, i32 2
  %9 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 131072, ptr %size, align 8
  %hw = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 42, i32 8
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw, align 8
  %device = getelementptr inbounds %struct.irdma_hw, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device, align 4
  %pa = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 46, i32 5, i32 1
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %13, i32 noundef 131072, ptr noundef %pa, i32 noundef 3264, i32 noundef 0) #9
  %14 = ptrtoint ptr %sq to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i, ptr %sq, align 8
  %tobool19.not = icmp eq ptr %call.i, null
  br i1 %tobool19.not, label %if.then20, label %if.end23

if.then20:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %scratch_array to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %scratch_array, align 8
  tail call void @kfree(ptr noundef %16) #9
  %17 = ptrtoint ptr %cqp_requests to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cqp_requests, align 4
  tail call void @kfree(ptr noundef %18) #9
  br label %cleanup

if.end23:                                         ; preds = %if.end8
  %obj_next.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 63
  %19 = ptrtoint ptr %obj_next.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %obj_next.i, align 8
  %21 = ptrtoint ptr %20 to i32
  %add3.i = add i32 %21, 3
  %and.i = and i32 %add3.i, -4
  %sub8.i = sub i32 %and.i, %21
  %add.ptr.i = getelementptr i8, ptr %20, i32 %sub8.i
  %add.ptr15.i = getelementptr i8, ptr %add.ptr.i, i32 64
  %obj_mem.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 62
  %22 = ptrtoint ptr %obj_mem.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %obj_mem.i, align 4
  %size18.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 62, i32 2
  %24 = ptrtoint ptr %size18.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %size18.i, align 4
  %add.ptr19.i = getelementptr i8, ptr %23, i32 %25
  %cmp.i = icmp ugt ptr %add.ptr15.i, %add.ptr19.i
  br i1 %cmp.i, label %if.end23.exit_crit_edge, label %if.end27

if.end23.exit_crit_edge:                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.end27:                                         ; preds = %if.end23
  %pa.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 63, i32 1
  %26 = ptrtoint ptr %pa.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pa.i, align 4
  %add11.i = add i32 %27, %sub8.i
  %28 = ptrtoint ptr %obj_next.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %add.ptr15.i, ptr %obj_next.i, align 8
  %add28.i = add i32 %add11.i, 64
  store i32 %add28.i, ptr %pa.i, align 4
  %conv = zext i32 %add11.i to i64
  %29 = ptrtoint ptr %cqp9 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cqp9, align 4
  %host_ctx_pa = getelementptr inbounds %struct.irdma_sc_cqp, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %host_ctx_pa to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %conv, ptr %host_ctx_pa, align 8
  %32 = load ptr, ptr %cqp9, align 4
  %host_ctx = getelementptr inbounds %struct.irdma_sc_cqp, ptr %32, i32 0, i32 10
  %33 = ptrtoint ptr %host_ctx to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %add.ptr.i, ptr %host_ctx, align 4
  %dev32 = getelementptr inbounds %struct.irdma_cqp_init_info, ptr %cqp_init_info, i32 0, i32 3
  %34 = ptrtoint ptr %dev32 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %sc_dev, ptr %dev32, align 8
  %sq_size = getelementptr inbounds %struct.irdma_cqp_init_info, ptr %cqp_init_info, i32 0, i32 8
  %35 = ptrtoint ptr %sq_size to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 2048, ptr %sq_size, align 4
  %36 = ptrtoint ptr %sq to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sq, align 8
  %sq35 = getelementptr inbounds %struct.irdma_cqp_init_info, ptr %cqp_init_info, i32 0, i32 4
  %38 = ptrtoint ptr %sq35 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %sq35, align 4
  %39 = ptrtoint ptr %pa to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pa, align 4
  %conv38 = zext i32 %40 to i64
  %sq_pa = getelementptr inbounds %struct.irdma_cqp_init_info, ptr %cqp_init_info, i32 0, i32 2
  %41 = ptrtoint ptr %sq_pa to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %conv38, ptr %sq_pa, align 8
  %host_ctx_pa41 = getelementptr inbounds %struct.irdma_cqp_init_info, ptr %cqp_init_info, i32 0, i32 1
  %42 = ptrtoint ptr %host_ctx_pa41 to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %conv, ptr %host_ctx_pa41, align 8
  %host_ctx43 = getelementptr inbounds %struct.irdma_cqp_init_info, ptr %cqp_init_info, i32 0, i32 6
  %43 = ptrtoint ptr %host_ctx43 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %add.ptr.i, ptr %host_ctx43, align 4
  %rsrc_profile = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 1
  %44 = ptrtoint ptr %rsrc_profile to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %rsrc_profile, align 1
  %hmc_profile = getelementptr inbounds %struct.irdma_cqp_init_info, ptr %cqp_init_info, i32 0, i32 12
  %46 = ptrtoint ptr %hmc_profile to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %hmc_profile, align 1
  %47 = ptrtoint ptr %scratch_array to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %scratch_array, align 8
  %scratch_array45 = getelementptr inbounds %struct.irdma_cqp_init_info, ptr %cqp_init_info, i32 0, i32 7
  %49 = ptrtoint ptr %scratch_array45 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %48, ptr %scratch_array45, align 8
  %protocol_used = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 6
  %50 = ptrtoint ptr %protocol_used to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %protocol_used, align 8
  %protocol_used46 = getelementptr inbounds %struct.irdma_cqp_init_info, ptr %cqp_init_info, i32 0, i32 16
  %52 = ptrtoint ptr %protocol_used46 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %protocol_used46, align 4
  %rdma_ver = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 4
  %53 = ptrtoint ptr %rdma_ver to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %rdma_ver, align 4
  %55 = zext i8 %54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.82)
  switch i8 %54, label %if.end27.sw.epilog_crit_edge [
    i8 1, label %if.end27.sw.epilog.sink.split_crit_edge
    i8 2, label %sw.bb48
  ]

if.end27.sw.epilog.sink.split_crit_edge:          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

if.end27.sw.epilog_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb48:                                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb48, %if.end27.sw.epilog.sink.split_crit_edge
  %.sink = phi i16 [ 1, %sw.bb48 ], [ 0, %if.end27.sw.epilog.sink.split_crit_edge ]
  %hw_maj_ver49 = getelementptr inbounds %struct.irdma_cqp_init_info, ptr %cqp_init_info, i32 0, i32 9
  %56 = ptrtoint ptr %hw_maj_ver49 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %.sink, ptr %hw_maj_ver49, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end27.sw.epilog_crit_edge
  %57 = ptrtoint ptr %cqp9 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cqp9, align 4
  %call51 = call i32 @irdma_sc_cqp_init(ptr noundef %58, ptr noundef nonnull %cqp_init_info) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %do.body62, label %do.body

do.body:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_create_cqp.__UNIQUE_ID_ddebug692, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_create_cqp, %if.then58)) #9
          to label %exit [label %if.then58], !srcloc !179

if.then58:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %call59 = call ptr @to_ibdev(ptr noundef %sc_dev) #9
  call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_create_cqp.__UNIQUE_ID_ddebug692, ptr noundef %call59, ptr noundef nonnull @.str.59, i32 noundef %call51) #9
  br label %exit

do.body62:                                        ; preds = %sw.epilog
  %req_lock = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 46, i32 1
  call void @__raw_spin_lock_init(ptr noundef %req_lock, ptr noundef nonnull @.str.60, ptr noundef nonnull @irdma_create_cqp.__key, i16 noundef signext 3) #9
  %compl_lock = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 46, i32 2
  call void @__raw_spin_lock_init(ptr noundef %compl_lock, ptr noundef nonnull @.str.62, ptr noundef nonnull @irdma_create_cqp.__key.61, i16 noundef signext 3) #9
  %59 = ptrtoint ptr %cqp9 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %cqp9, align 4
  %call71 = call i32 @irdma_sc_cqp_create(ptr noundef %60, ptr noundef nonnull %maj_err, ptr noundef nonnull %min_err) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.end93, label %do.body74

do.body74:                                        ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_create_cqp.__UNIQUE_ID_ddebug693, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_create_cqp, %if.then86)) #9
          to label %exit [label %if.then86], !srcloc !179

if.then86:                                        ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #11
  %call87 = call ptr @to_ibdev(ptr noundef %sc_dev) #9
  %61 = ptrtoint ptr %maj_err to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %maj_err, align 2
  %conv88 = zext i16 %62 to i32
  %63 = ptrtoint ptr %min_err to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %min_err, align 2
  %conv89 = zext i16 %64 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_create_cqp.__UNIQUE_ID_ddebug693, ptr noundef %call87, ptr noundef nonnull @.str.63, i32 noundef %call71, i32 noundef %conv88, i32 noundef %conv89) #9
  br label %exit

if.end93:                                         ; preds = %do.body62
  %cqp_avail_reqs = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 46, i32 9
  %65 = ptrtoint ptr %cqp_avail_reqs to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %cqp_avail_reqs, ptr %cqp_avail_reqs, align 4
  %prev.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 46, i32 9, i32 1
  %66 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %cqp_avail_reqs, ptr %prev.i, align 4
  %cqp_pending_reqs = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 46, i32 10
  %67 = ptrtoint ptr %cqp_pending_reqs to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %cqp_pending_reqs, ptr %cqp_pending_reqs, align 4
  %prev.i169 = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 46, i32 10, i32 1
  %68 = ptrtoint ptr %prev.i169 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %cqp_pending_reqs, ptr %prev.i169, align 4
  br label %do.body95

do.body95:                                        ; preds = %list_add_tail.exit.do.body95_crit_edge, %if.end93
  %i.0179 = phi i32 [ 0, %if.end93 ], [ %inc, %list_add_tail.exit.do.body95_crit_edge ]
  %69 = ptrtoint ptr %cqp_requests to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %cqp_requests, align 4
  %waitq = getelementptr %struct.irdma_cqp_request, ptr %70, i32 %i.0179, i32 1
  call void @__init_waitqueue_head(ptr noundef %waitq, ptr noundef nonnull @.str.65, ptr noundef nonnull @irdma_create_cqp.__key.64) #9
  %71 = ptrtoint ptr %cqp_requests to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %cqp_requests, align 4
  %list = getelementptr %struct.irdma_cqp_request, ptr %72, i32 %i.0179, i32 2
  %73 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %prev.i, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %74, ptr noundef %cqp_avail_reqs) #9
  br i1 %call.i.i, label %if.end.i.i, label %do.body95.list_add_tail.exit_crit_edge

do.body95.list_add_tail.exit_crit_edge:           ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #11
  %75 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %list, ptr %prev.i, align 4
  %76 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %cqp_avail_reqs, ptr %list, align 4
  %prev3.i.i = getelementptr %struct.irdma_cqp_request, ptr %72, i32 %i.0179, i32 2, i32 1
  %77 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %74, ptr %prev3.i.i, align 4
  %78 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile ptr %list, ptr %74, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.body95.list_add_tail.exit_crit_edge
  %inc = add nuw nsw i32 %i.0179, 1
  %exitcond.not = icmp eq i32 %inc, 2048
  br i1 %exitcond.not, label %do.body102, label %list_add_tail.exit.do.body95_crit_edge

list_add_tail.exit.do.body95_crit_edge:           ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body95

do.body102:                                       ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  %remove_wq = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 46, i32 4
  call void @__init_waitqueue_head(ptr noundef %remove_wq, ptr noundef nonnull @.str.67, ptr noundef nonnull @irdma_create_cqp.__key.66) #9
  br label %cleanup

exit:                                             ; preds = %if.then86, %do.body74, %if.then58, %do.body, %if.end23.exit_crit_edge
  %status.0 = phi i32 [ %call51, %if.then58 ], [ %call71, %if.then86 ], [ -9, %if.end23.exit_crit_edge ], [ %call51, %do.body ], [ %call71, %do.body74 ]
  %cqp_cmpl_wq.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 66
  %79 = ptrtoint ptr %cqp_cmpl_wq.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %cqp_cmpl_wq.i, align 4
  %tobool.not.i = icmp eq ptr %80, null
  br i1 %tobool.not.i, label %exit.irdma_destroy_cqp.exit_crit_edge, label %if.then.i

exit.irdma_destroy_cqp.exit_crit_edge:            ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %irdma_destroy_cqp.exit

if.then.i:                                        ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @destroy_workqueue(ptr noundef nonnull %80) #9
  br label %irdma_destroy_cqp.exit

irdma_destroy_cqp.exit:                           ; preds = %if.then.i, %exit.irdma_destroy_cqp.exit_crit_edge
  call void @irdma_cleanup_pending_cqp_op(ptr noundef %rf) #9
  %81 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %hw, align 8
  %device.i = getelementptr inbounds %struct.irdma_hw, ptr %82, i32 0, i32 2
  %83 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %device.i, align 4
  %85 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %size, align 8
  %87 = ptrtoint ptr %sq to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %sq, align 8
  %89 = ptrtoint ptr %pa to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %pa, align 4
  call void @dma_free_attrs(ptr noundef %84, i32 noundef %86, ptr noundef %88, i32 noundef %90, i32 noundef 0) #9
  %91 = ptrtoint ptr %sq to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr null, ptr %sq, align 8
  %92 = ptrtoint ptr %scratch_array to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %scratch_array, align 8
  call void @kfree(ptr noundef %93) #9
  %94 = ptrtoint ptr %scratch_array to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr null, ptr %scratch_array, align 8
  %95 = ptrtoint ptr %cqp_requests to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %cqp_requests, align 4
  call void @kfree(ptr noundef %96) #9
  %97 = ptrtoint ptr %cqp_requests to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr null, ptr %cqp_requests, align 4
  br label %cleanup

cleanup:                                          ; preds = %irdma_destroy_cqp.exit, %do.body102, %if.then20, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.0, %irdma_destroy_cqp.exit ], [ 0, %do.body102 ], [ -9, %if.then20 ], [ -9, %if.then6 ], [ -9, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %min_err) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %maj_err) #9
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %cqp_init_info) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @irdma_initialize_hw_rsrc(ptr noundef %rf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rdma_ver = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 4
  %0 = ptrtoint ptr %rdma_ver to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rdma_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp.not = icmp eq i8 %1, 1
  br i1 %cmp.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 128) #13
  %allocated_ws_nodes = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 33
  %3 = ptrtoint ptr %allocated_ws_nodes to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i.i, ptr %allocated_ws_nodes, align 4
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 0, ptr noundef nonnull %call7.i.i.i) #9
  %max_ws_node_id = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 31
  %4 = ptrtoint ptr %max_ws_node_id to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1023, ptr %max_ws_node_id, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry.if.end5_crit_edge
  %max_hw_cq_size = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 42, i32 25, i32 0, i32 7
  %5 = ptrtoint ptr %max_hw_cq_size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max_hw_cq_size, align 8
  %max_cqe = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 21
  %7 = ptrtoint ptr %max_cqe to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %max_cqe, align 4
  %hmc_info = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 42, i32 26
  %8 = ptrtoint ptr %hmc_info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hmc_info, align 8
  %hmc_obj = getelementptr inbounds %struct.irdma_hmc_info, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %hmc_obj to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hmc_obj, align 4
  %cnt = getelementptr inbounds %struct.irdma_hmc_obj_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cnt, align 4
  %max_qp = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 10
  %14 = ptrtoint ptr %max_qp to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %max_qp, align 8
  %15 = load ptr, ptr %hmc_obj, align 4
  %cnt11 = getelementptr %struct.irdma_hmc_obj_info, ptr %15, i32 6, i32 2
  %16 = ptrtoint ptr %cnt11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cnt11, align 4
  %max_mr = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 9
  %18 = ptrtoint ptr %max_mr to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %max_mr, align 4
  %19 = load ptr, ptr %hmc_obj, align 4
  %cnt16 = getelementptr %struct.irdma_hmc_obj_info, ptr %19, i32 1, i32 2
  %20 = ptrtoint ptr %cnt16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cnt16, align 4
  %max_cq = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 11
  %22 = ptrtoint ptr %max_cq to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %max_cq, align 4
  %max_hw_pds = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 42, i32 25, i32 15
  %23 = ptrtoint ptr %max_hw_pds to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %max_hw_pds, align 4
  %max_pd = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 16
  %25 = ptrtoint ptr %max_pd to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %max_pd, align 8
  %26 = load ptr, ptr %hmc_obj, align 4
  %cnt23 = getelementptr %struct.irdma_hmc_obj_info, ptr %26, i32 4, i32 2
  %27 = ptrtoint ptr %cnt23 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cnt23, align 4
  %arp_table_size = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 27
  %29 = ptrtoint ptr %arp_table_size to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arp_table_size, align 4
  %30 = load ptr, ptr %hmc_obj, align 4
  %cnt28 = getelementptr %struct.irdma_hmc_obj_info, ptr %30, i32 13, i32 2
  %31 = ptrtoint ptr %cnt28 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cnt28, align 4
  %max_ah = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 12
  %33 = ptrtoint ptr %max_ah to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %max_ah, align 8
  %max_mcg = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 14
  %34 = ptrtoint ptr %max_mcg to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %13, ptr %max_mcg, align 8
  %sub.i = add i32 %13, 31
  %35 = lshr i32 %sub.i, 2
  %factor = and i32 %35, 1073741816
  %mul35.i = shl i32 %13, 2
  %add7.i = add i32 %factor, %mul35.i
  %sub4.i = add i32 %17, 31
  %36 = lshr i32 %sub4.i, 3
  %mul6.i = and i32 %36, 536870908
  %add12.i = add i32 %add7.i, %mul6.i
  %sub9.i = add i32 %21, 31
  %37 = lshr i32 %sub9.i, 3
  %mul11.i = and i32 %37, 536870908
  %add17.i = add i32 %add12.i, %mul11.i
  %sub14.i = add i32 %24, 31
  %38 = lshr i32 %sub14.i, 3
  %mul16.i = and i32 %38, 536870908
  %add23.i = add i32 %add17.i, %mul16.i
  %mul.i = mul i32 %28, 24
  %add28.i = add i32 %add23.i, %mul.i
  %sub20.i = add i32 %28, 31
  %39 = lshr i32 %sub20.i, 3
  %mul22.i = and i32 %39, 536870908
  %add33.i = add i32 %add28.i, %mul22.i
  %sub25.i = add i32 %32, 31
  %40 = lshr i32 %sub25.i, 3
  %mul27.i = and i32 %40, 536870908
  %add36.i = add i32 %add33.i, %mul27.i
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add36.i, i32 noundef 3520) #14
  %mem_rsrc = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 3
  %41 = ptrtoint ptr %mem_rsrc to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call9.i.i, ptr %mem_rsrc, align 8
  %tobool33.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool33.not, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %allocated_ws_nodes50 = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 33
  %42 = ptrtoint ptr %allocated_ws_nodes50 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %allocated_ws_nodes50, align 4
  tail call void @kfree(ptr noundef %43) #9
  %44 = ptrtoint ptr %allocated_ws_nodes50 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %allocated_ws_nodes50, align 4
  br label %cleanup

if.end35:                                         ; preds = %if.end5
  %arp_table = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 51
  %45 = ptrtoint ptr %arp_table to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call9.i.i, ptr %arp_table, align 8
  %46 = ptrtoint ptr %arp_table_size to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arp_table_size, align 4
  %mul.i102 = mul i32 %47, 24
  %add.ptr.i = getelementptr i8, ptr %call9.i.i, i32 %mul.i102
  %allocated_qps.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 34
  %48 = ptrtoint ptr %allocated_qps.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %add.ptr.i, ptr %allocated_qps.i, align 8
  %49 = ptrtoint ptr %max_qp to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %max_qp, align 8
  %sub.i104 = add i32 %50, 31
  %div69.i = lshr i32 %sub.i104, 5
  %arrayidx.i = getelementptr i32, ptr %add.ptr.i, i32 %div69.i
  %allocated_cqs.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 35
  %51 = ptrtoint ptr %allocated_cqs.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %arrayidx.i, ptr %allocated_cqs.i, align 4
  %52 = ptrtoint ptr %max_cq to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %max_cq, align 4
  %sub4.i106 = add i32 %53, 31
  %div570.i = lshr i32 %sub4.i106, 5
  %arrayidx6.i = getelementptr i32, ptr %arrayidx.i, i32 %div570.i
  %allocated_mrs.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 36
  %54 = ptrtoint ptr %allocated_mrs.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %arrayidx6.i, ptr %allocated_mrs.i, align 8
  %55 = ptrtoint ptr %max_mr to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %max_mr, align 4
  %sub9.i108 = add i32 %56, 31
  %div1071.i = lshr i32 %sub9.i108, 5
  %arrayidx11.i = getelementptr i32, ptr %arrayidx6.i, i32 %div1071.i
  %allocated_pds.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 37
  %57 = ptrtoint ptr %allocated_pds.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %arrayidx11.i, ptr %allocated_pds.i, align 4
  %58 = ptrtoint ptr %max_pd to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %max_pd, align 8
  %sub14.i110 = add i32 %59, 31
  %div1572.i = lshr i32 %sub14.i110, 5
  %arrayidx16.i = getelementptr i32, ptr %arrayidx11.i, i32 %div1572.i
  %allocated_ahs.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 39
  %60 = ptrtoint ptr %allocated_ahs.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %arrayidx16.i, ptr %allocated_ahs.i, align 4
  %61 = ptrtoint ptr %max_ah to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %max_ah, align 8
  %sub19.i = add i32 %62, 31
  %div2073.i = lshr i32 %sub19.i, 5
  %arrayidx21.i = getelementptr i32, ptr %arrayidx16.i, i32 %div2073.i
  %allocated_mcgs.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 38
  %63 = ptrtoint ptr %allocated_mcgs.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %arrayidx21.i, ptr %allocated_mcgs.i, align 8
  %64 = ptrtoint ptr %max_mcg to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %max_mcg, align 8
  %sub24.i = add i32 %65, 31
  %div2574.i = lshr i32 %sub24.i, 5
  %arrayidx26.i = getelementptr i32, ptr %arrayidx21.i, i32 %div2574.i
  %allocated_arps.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 40
  %66 = ptrtoint ptr %allocated_arps.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %arrayidx26.i, ptr %allocated_arps.i, align 8
  %sub30.i113 = add i32 %47, 31
  %div3175.i = lshr i32 %sub30.i113, 5
  %arrayidx32.i = getelementptr i32, ptr %arrayidx26.i, i32 %div3175.i
  %qp_table.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 55
  %67 = ptrtoint ptr %qp_table.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %arrayidx32.i, ptr %qp_table.i, align 8
  %rsrc_lock.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 53
  tail call void @__raw_spin_lock_init(ptr noundef %rsrc_lock.i, ptr noundef nonnull @.str.71, ptr noundef nonnull @irdma_set_hw_rsrc.__key, i16 noundef signext 3) #9
  %arp_lock.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 52
  tail call void @__raw_spin_lock_init(ptr noundef %arp_lock.i, ptr noundef nonnull @.str.73, ptr noundef nonnull @irdma_set_hw_rsrc.__key.72, i16 noundef signext 3) #9
  %qptable_lock.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 54
  tail call void @__raw_spin_lock_init(ptr noundef %qptable_lock.i, ptr noundef nonnull @.str.75, ptr noundef nonnull @irdma_set_hw_rsrc.__key.74, i16 noundef signext 3) #9
  %qh_list_lock.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 56
  tail call void @__raw_spin_lock_init(ptr noundef %qh_list_lock.i, ptr noundef nonnull @.str.77, ptr noundef nonnull @irdma_set_hw_rsrc.__key.76, i16 noundef signext 3) #9
  %68 = ptrtoint ptr %allocated_mrs.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %allocated_mrs.i, align 8
  tail call void @_set_bit(i32 noundef 0, ptr noundef %69) #9
  %70 = ptrtoint ptr %allocated_qps.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %allocated_qps.i, align 8
  tail call void @_set_bit(i32 noundef 0, ptr noundef %71) #9
  %72 = ptrtoint ptr %allocated_cqs.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %allocated_cqs.i, align 4
  tail call void @_set_bit(i32 noundef 0, ptr noundef %73) #9
  %74 = ptrtoint ptr %allocated_pds.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %allocated_pds.i, align 4
  tail call void @_set_bit(i32 noundef 0, ptr noundef %75) #9
  %76 = ptrtoint ptr %allocated_arps.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %allocated_arps.i, align 8
  tail call void @_set_bit(i32 noundef 0, ptr noundef %77) #9
  %78 = ptrtoint ptr %allocated_ahs.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %allocated_ahs.i, align 4
  tail call void @_set_bit(i32 noundef 0, ptr noundef %79) #9
  %80 = ptrtoint ptr %allocated_mcgs.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %allocated_mcgs.i, align 8
  tail call void @_set_bit(i32 noundef 0, ptr noundef %81) #9
  %82 = ptrtoint ptr %allocated_qps.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %allocated_qps.i, align 8
  tail call void @_set_bit(i32 noundef 2, ptr noundef %83) #9
  %84 = ptrtoint ptr %allocated_qps.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %allocated_qps.i, align 8
  tail call void @_set_bit(i32 noundef 1, ptr noundef %85) #9
  %86 = ptrtoint ptr %allocated_cqs.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %allocated_cqs.i, align 4
  tail call void @_set_bit(i32 noundef 1, ptr noundef %87) #9
  %88 = ptrtoint ptr %allocated_pds.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %allocated_pds.i, align 4
  tail call void @_set_bit(i32 noundef 1, ptr noundef %89) #9
  %90 = ptrtoint ptr %allocated_cqs.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %allocated_cqs.i, align 4
  tail call void @_set_bit(i32 noundef 2, ptr noundef %91) #9
  %92 = ptrtoint ptr %allocated_pds.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %allocated_pds.i, align 4
  tail call void @_set_bit(i32 noundef 2, ptr noundef %93) #9
  %mc_qht_list = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 57
  %94 = ptrtoint ptr %mc_qht_list to i32
  call void @__asan_store4_noabort(i32 %94)
  store volatile ptr %mc_qht_list, ptr %mc_qht_list, align 4
  %prev.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 57, i32 0, i32 1
  %95 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %mc_qht_list, ptr %prev.i, align 4
  %96 = ptrtoint ptr %max_mr to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %max_mr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %cmp.i = icmp eq i32 %97, 0
  br i1 %cmp.i, label %if.end35.get_count_order.exit.thread_crit_edge, label %if.end.i

if.end35.get_count_order.exit.thread_crit_edge:   ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_count_order.exit.thread

if.end.i:                                         ; preds = %if.end35
  %dec.i = add i32 %97, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool.not.i.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.get_count_order.exit.thread_crit_edge, label %get_count_order.exit

if.end.i.get_count_order.exit.thread_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_count_order.exit.thread

get_count_order.exit:                             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %98 = tail call i32 @llvm.ctlz.i32(i32 %dec.i, i1 true) #9, !range !184
  call void @__sanitizer_cov_trace_const_cmp4(i32 16383, i32 %dec.i)
  %cmp45 = icmp ugt i32 %dec.i, 16383
  %phi.bo = add nsw i32 %98, -8
  %spec.select = select i1 %cmp45, i32 %phi.bo, i32 10
  br label %get_count_order.exit.thread

get_count_order.exit.thread:                      ; preds = %get_count_order.exit, %if.end.i.get_count_order.exit.thread_crit_edge, %if.end35.get_count_order.exit.thread_crit_edge
  %99 = phi i32 [ 10, %if.end35.get_count_order.exit.thread_crit_edge ], [ 10, %if.end.i.get_count_order.exit.thread_crit_edge ], [ %spec.select, %get_count_order.exit ]
  %notmask = shl nsw i32 -1, %99
  %sub47 = xor i32 %notmask, -1
  %sub48 = sub nsw i32 32, %99
  %shl49 = shl i32 %sub47, %sub48
  %neg = xor i32 %shl49, -1
  %mr_stagmask = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 22
  %100 = ptrtoint ptr %mr_stagmask to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %neg, ptr %mr_stagmask, align 8
  br label %cleanup

cleanup:                                          ; preds = %get_count_order.exit.thread, %if.then34, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %get_count_order.exit.thread ], [ -12, %if.then34 ], [ -12, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irdma_get_rdma_features(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @irdma_setup_ceq_0(ptr noundef %rf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %msix_count = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 8
  %0 = ptrtoint ptr %msix_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msix_count, align 8
  %sc_dev = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 42
  %hmc_fpm_misc = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 42, i32 32
  %2 = ptrtoint ptr %hmc_fpm_misc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hmc_fpm_misc, align 4
  %4 = tail call i32 @llvm.umin.i32(i32 %1, i32 %3)
  %5 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %4, i32 216) #9
  %6 = extractvalue { i32, i1 } %5, 1
  br i1 %6, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !185

kcalloc.exit.thread:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %ceqlist74 = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 49
  %7 = ptrtoint ptr %ceqlist74 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %ceqlist74, align 8
  br label %land.lhs.true

if.end7.i.i:                                      ; preds = %entry
  %8 = extractvalue { i32, i1 } %5, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %8, i32 noundef 3520) #14
  %ceqlist = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 49
  %9 = ptrtoint ptr %ceqlist to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call8.i.i, ptr %ceqlist, align 8
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.land.lhs.true_crit_edge, label %if.end

if.end7.i.i.land.lhs.true_crit_edge:              ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

if.end:                                           ; preds = %if.end7.i.i
  %default_vsi = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 68
  %call3 = tail call fastcc i32 @irdma_create_ceq(ptr noundef %rf, ptr noundef nonnull %call8.i.i, i32 noundef 0, ptr noundef %default_vsi)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %do.body14, label %do.body

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_setup_ceq_0.__UNIQUE_ID_ddebug700, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_setup_ceq_0, %if.then11)) #9
          to label %land.lhs.true [label %if.then11], !srcloc !179

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %iwdev = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 71
  %10 = ptrtoint ptr %iwdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %iwdev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_setup_ceq_0.__UNIQUE_ID_ddebug700, ptr noundef %11, ptr noundef nonnull @.str.40, i32 noundef %call3) #9
  br label %land.lhs.true

do.body14:                                        ; preds = %if.end
  %ce_lock = getelementptr inbounds %struct.irdma_ceq, ptr %call8.i.i, i32 0, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %ce_lock, ptr noundef nonnull @.str.41, ptr noundef nonnull @irdma_setup_ceq_0.__key, i16 noundef signext 3) #9
  %12 = ptrtoint ptr %rf to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load = load i8, ptr %rf, align 8
  %13 = lshr i8 %bf.load, 5
  %.lobit = and i8 %13, 1
  %14 = xor i8 %.lobit, 1
  %15 = zext i8 %14 to i32
  %iw_msixtbl = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 58
  %16 = ptrtoint ptr %iw_msixtbl to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %iw_msixtbl, align 8
  %arrayidx19 = getelementptr %struct.irdma_msix_vector, ptr %17, i32 %15
  %irq = getelementptr %struct.irdma_msix_vector, ptr %17, i32 %15, i32 1
  %18 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irq, align 4
  %irq20 = getelementptr inbounds %struct.irdma_ceq, ptr %call8.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %irq20 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %irq20, align 4
  %21 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx19, align 4
  %msix_idx = getelementptr inbounds %struct.irdma_ceq, ptr %call8.i.i, i32 0, i32 3
  %23 = ptrtoint ptr %msix_idx to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %msix_idx, align 8
  %call21 = tail call fastcc i32 @irdma_cfg_ceq_vector(ptr noundef %rf, ptr noundef nonnull %call8.i.i, i32 noundef 0, ptr noundef %arrayidx19)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %exit.thread89, label %if.then23

if.then23:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @irdma_destroy_ceq(ptr noundef %rf, ptr noundef nonnull %call8.i.i)
  br label %land.lhs.true

exit.thread89:                                    ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx19, align 4
  %irq_ops.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 42, i32 31
  %26 = ptrtoint ptr %irq_ops.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %irq_ops.i, align 8
  %irdma_en_irq.i = getelementptr inbounds %struct.irdma_irq_ops, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %irdma_en_irq.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %irdma_en_irq.i, align 4
  tail call void %29(ptr noundef %sc_dev, i32 noundef %25) #9
  %ceqs_count = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 29
  %30 = ptrtoint ptr %ceqs_count to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ceqs_count, align 4
  %inc = add i32 %31, 1
  store i32 %inc, ptr %ceqs_count, align 4
  br label %if.end33

land.lhs.true:                                    ; preds = %if.then23, %if.then11, %do.body, %if.end7.i.i.land.lhs.true_crit_edge, %kcalloc.exit.thread
  %status.088 = phi i32 [ %call3, %do.body ], [ -9, %kcalloc.exit.thread ], [ -9, %if.end7.i.i.land.lhs.true_crit_edge ], [ %call21, %if.then23 ], [ %call3, %if.then11 ]
  %ceqlist7687 = phi ptr [ %ceqlist, %do.body ], [ %ceqlist74, %kcalloc.exit.thread ], [ %ceqlist, %if.end7.i.i.land.lhs.true_crit_edge ], [ %ceqlist, %if.then23 ], [ %ceqlist, %if.then11 ]
  %ceqs_count28 = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 29
  %32 = ptrtoint ptr %ceqs_count28 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ceqs_count28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool29.not = icmp eq i32 %33, 0
  br i1 %tobool29.not, label %if.then30, label %land.lhs.true.if.end33_crit_edge

land.lhs.true.if.end33_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

if.then30:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %ceqlist7687 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ceqlist7687, align 8
  tail call void @kfree(ptr noundef %35) #9
  %36 = ptrtoint ptr %ceqlist7687 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %ceqlist7687, align 8
  br label %cleanup

if.end33:                                         ; preds = %land.lhs.true.if.end33_crit_edge, %exit.thread89
  %ceq_valid = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 42, i32 38
  %37 = ptrtoint ptr %ceq_valid to i32
  call void @__asan_load1_noabort(i32 %37)
  %bf.load35 = load i8, ptr %ceq_valid, align 8
  %bf.set = or i8 %bf.load35, 64
  store i8 %bf.set, ptr %ceq_valid, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.then30
  %retval.0 = phi i32 [ 0, %if.end33 ], [ %status.088, %if.then30 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cqp_compl_worker(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -23952
  %ccq = getelementptr i8, ptr %work, i32 -760
  tail call void @irdma_cqp_ce_handler(ptr noundef %add.ptr, ptr noundef %ccq)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irdma_sc_ccq_arm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @irdma_cqp_ce_handler(ptr noundef %rf, ptr noundef %cq) local_unnamed_addr #0 align 64 {
entry:
  %info = alloca %struct.irdma_ccq_cqe_info, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_dev = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 42
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %info) #9
  %cqp = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 46
  %compl_lock = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 46, i32 2
  %0 = call ptr @memset(ptr %info, i32 0, i32 32)
  %call373 = call i32 @_raw_spin_lock_irqsave(ptr noundef %compl_lock) #9
  %call674 = call i32 @irdma_sc_ccq_get_cqe_info(ptr noundef %cq, ptr noundef nonnull %info) #9
  call void @_raw_spin_unlock_irqrestore(ptr noundef %compl_lock, i32 noundef %call373) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call674)
  %tobool.not75 = icmp eq i32 %call674, 0
  br i1 %tobool.not75, label %if.end.lr.ph, label %entry.if.end50_crit_edge

entry.if.end50_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

if.end.lr.ph:                                     ; preds = %entry
  %scratch = getelementptr inbounds %struct.irdma_ccq_cqe_info, ptr %info, i32 0, i32 1
  %error = getelementptr inbounds %struct.irdma_ccq_cqe_info, ptr %info, i32 0, i32 6
  %maj_err_code = getelementptr inbounds %struct.irdma_ccq_cqe_info, ptr %info, i32 0, i32 3
  %min_err_code = getelementptr inbounds %struct.irdma_ccq_cqe_info, ptr %info, i32 0, i32 4
  %iwdev = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 71
  %op_code = getelementptr inbounds %struct.irdma_ccq_cqe_info, ptr %info, i32 0, i32 5
  %op_ret_val = getelementptr inbounds %struct.irdma_ccq_cqe_info, ptr %info, i32 0, i32 2
  br label %if.end

if.end:                                           ; preds = %if.end44.if.end_crit_edge, %if.end.lr.ph
  %cqe_count.076 = phi i32 [ 0, %if.end.lr.ph ], [ %inc, %if.end44.if.end_crit_edge ]
  %1 = ptrtoint ptr %scratch to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %scratch, align 8
  %conv9 = trunc i64 %2 to i32
  %3 = inttoptr i32 %conv9 to ptr
  %4 = ptrtoint ptr %error to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %error, align 1, !range !180
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool10.not = icmp eq i8 %5, 0
  br i1 %tobool10.not, label %if.end.if.end21_crit_edge, label %land.lhs.true

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

land.lhs.true:                                    ; preds = %if.end
  %cqp_cmd = getelementptr inbounds %struct.cqp_cmds_info, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %cqp_cmd to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %cqp_cmd, align 8
  %8 = ptrtoint ptr %maj_err_code to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %maj_err_code, align 4
  %10 = ptrtoint ptr %min_err_code to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %min_err_code, align 2
  %call13 = call zeroext i1 @irdma_cqp_crit_err(ptr noundef %sc_dev, i8 noundef zeroext %7, i16 noundef zeroext %9, i16 noundef zeroext %11) #9
  br i1 %call13, label %if.then15, label %land.lhs.true.if.end21_crit_edge

land.lhs.true.if.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then15:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %iwdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %iwdev, align 8
  %14 = ptrtoint ptr %op_code to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %op_code, align 8
  %conv16 = zext i8 %15 to i32
  %16 = ptrtoint ptr %maj_err_code to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %maj_err_code, align 4
  %conv18 = zext i16 %17 to i32
  %18 = ptrtoint ptr %min_err_code to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %min_err_code, align 2
  %conv20 = zext i16 %19 to i32
  call void (ptr, ptr, ...) @ibdev_err(ptr noundef %13, ptr noundef nonnull @.str.15, i32 noundef %conv16, i32 noundef %conv18, i32 noundef %conv20) #12
  br label %if.end21

if.end21:                                         ; preds = %if.then15, %land.lhs.true.if.end21_crit_edge, %if.end.if.end21_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv9)
  %tobool22.not = icmp eq i32 %conv9, 0
  br i1 %tobool22.not, label %if.end21.if.end44_crit_edge, label %if.then23

if.end21.if.end44_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

if.then23:                                        ; preds = %if.end21
  %20 = ptrtoint ptr %maj_err_code to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %maj_err_code, align 4
  %compl_info = getelementptr inbounds %struct.irdma_cqp_request, ptr %3, i32 0, i32 6
  %maj_err_code25 = getelementptr inbounds %struct.irdma_cqp_request, ptr %3, i32 0, i32 6, i32 1
  %22 = ptrtoint ptr %maj_err_code25 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %maj_err_code25, align 4
  %23 = ptrtoint ptr %min_err_code to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %min_err_code, align 2
  %min_err_code28 = getelementptr inbounds %struct.irdma_cqp_request, ptr %3, i32 0, i32 6, i32 2
  %25 = ptrtoint ptr %min_err_code28 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %min_err_code28, align 2
  %26 = ptrtoint ptr %op_ret_val to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %op_ret_val, align 8
  %28 = ptrtoint ptr %compl_info to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %compl_info, align 8
  %29 = ptrtoint ptr %error to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %error, align 1, !range !180
  %error34 = getelementptr inbounds %struct.irdma_cqp_request, ptr %3, i32 0, i32 6, i32 3
  %31 = ptrtoint ptr %error34 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %error34, align 8
  %waiting = getelementptr inbounds %struct.irdma_cqp_request, ptr %3, i32 0, i32 7
  %32 = ptrtoint ptr %waiting to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load = load i8, ptr %waiting, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %if.else, label %if.then35

if.then35:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  %bf.set = or i8 %bf.load, 64
  %33 = ptrtoint ptr %waiting to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %bf.set, ptr %waiting, align 4
  %waitq = getelementptr inbounds %struct.irdma_cqp_request, ptr %3, i32 0, i32 1
  call void @__wake_up(ptr noundef %waitq, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %if.end44.sink.split

if.else:                                          ; preds = %if.then23
  %callback_fcn = getelementptr inbounds %struct.irdma_cqp_request, ptr %3, i32 0, i32 4
  %34 = ptrtoint ptr %callback_fcn to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %callback_fcn, align 8
  %tobool38.not = icmp eq ptr %35, null
  br i1 %tobool38.not, label %if.else.if.end44.sink.split_crit_edge, label %if.then39

if.else.if.end44.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44.sink.split

if.then39:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  call void %35(ptr noundef nonnull %3) #9
  br label %if.end44.sink.split

if.end44.sink.split:                              ; preds = %if.then39, %if.else.if.end44.sink.split_crit_edge, %if.then35
  call void @irdma_put_cqp_request(ptr noundef %cqp, ptr noundef nonnull %3) #9
  br label %if.end44

if.end44:                                         ; preds = %if.end44.sink.split, %if.end21.if.end44_crit_edge
  %inc = add i32 %cqe_count.076, 1
  %36 = call ptr @memset(ptr %info, i32 0, i32 32)
  %call3 = call i32 @_raw_spin_lock_irqsave(ptr noundef %compl_lock) #9
  %call6 = call i32 @irdma_sc_ccq_get_cqe_info(ptr noundef %cq, ptr noundef nonnull %info) #9
  call void @_raw_spin_unlock_irqrestore(ptr noundef %compl_lock, i32 noundef %call3) #9
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end44.if.end_crit_edge, label %do.end46

if.end44.if.end_crit_edge:                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end46:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc)
  %phi.cmp = icmp eq i32 %inc, 0
  br i1 %phi.cmp, label %do.end46.if.end50_crit_edge, label %if.then48

do.end46.if.end50_crit_edge:                      ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

if.then48:                                        ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #11
  %call49 = call i32 @irdma_process_bh(ptr noundef %sc_dev) #9
  call void @irdma_sc_ccq_arm(ptr noundef %cq) #9
  br label %if.end50

if.end50:                                         ; preds = %if.then48, %do.end46.if.end50_crit_edge, %entry.if.end50_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %info) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irdma_sc_ccq_get_cqe_info(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @irdma_cqp_crit_err(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @ibdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irdma_put_cqp_request(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irdma_process_bh(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @irdma_next_iw_state(ptr noundef %iwqp, i8 noundef zeroext %state, i8 noundef zeroext %del_hash, i8 noundef zeroext %term, i8 noundef zeroext %termlen) local_unnamed_addr #0 align 64 {
entry:
  %info = alloca %struct.irdma_modify_qp_info, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %info) #9
  %0 = call ptr @memset(ptr %info, i32 0, i32 24)
  %next_iwarp_state = getelementptr inbounds %struct.irdma_modify_qp_info, ptr %info, i32 0, i32 3
  %1 = ptrtoint ptr %next_iwarp_state to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %state, ptr %next_iwarp_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %del_hash)
  %tobool.not = icmp eq i8 %del_hash, 0
  %remove_hash_idx = getelementptr inbounds %struct.irdma_modify_qp_info, ptr %info, i32 0, i32 6
  %bf.shl = select i1 %tobool.not, i16 0, i16 512
  %bf.set13 = or i16 %bf.shl, 6528
  %2 = ptrtoint ptr %remove_hash_idx to i32
  call void @__asan_storeN_noabort(i32 %2, i32 2)
  store i16 %bf.set13, ptr %remove_hash_idx, align 1
  %termlen14 = getelementptr inbounds %struct.irdma_modify_qp_info, ptr %info, i32 0, i32 5
  %3 = ptrtoint ptr %termlen14 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %termlen, ptr %termlen14, align 4
  %conv = zext i8 %term to i32
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %bf.clear18 = or i16 %bf.shl, 6272
  %4 = ptrtoint ptr %remove_hash_idx to i32
  call void @__asan_storeN_noabort(i32 %4, i32 2)
  store i16 %bf.clear18, ptr %remove_hash_idx, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and21 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end.if.end28_crit_edge, label %if.then23

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then23:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %remove_hash_idx to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %bf.load25 = load i16, ptr %remove_hash_idx, align 1
  %bf.clear26 = and i16 %bf.load25, -129
  store i16 %bf.clear26, ptr %remove_hash_idx, align 1
  br label %if.end28

if.end28:                                         ; preds = %if.then23, %if.end.if.end28_crit_edge
  %term_flags = getelementptr inbounds %struct.irdma_qp, ptr %iwqp, i32 0, i32 2, i32 30
  %6 = ptrtoint ptr %term_flags to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %term_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool30.not = icmp ne i8 %7, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %state)
  %cmp = icmp eq i8 %state, 6
  %or.cond = and i1 %cmp, %tobool30.not
  br i1 %or.cond, label %if.then33, label %if.end28.if.end37_crit_edge

if.end28.if.end37_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.then33:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %remove_hash_idx to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %bf.load34 = load i16, ptr %remove_hash_idx, align 1
  %bf.set36 = or i16 %bf.load34, 1024
  store i16 %bf.set36, ptr %remove_hash_idx, align 1
  br label %if.end37

if.end37:                                         ; preds = %if.then33, %if.end28.if.end37_crit_edge
  %hw_iwarp_state = getelementptr inbounds %struct.irdma_qp, ptr %iwqp, i32 0, i32 34
  %9 = ptrtoint ptr %hw_iwarp_state to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %state, ptr %hw_iwarp_state, align 2
  %iwdev = getelementptr inbounds %struct.irdma_qp, ptr %iwqp, i32 0, i32 3
  %10 = ptrtoint ptr %iwdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %iwdev, align 8
  %call = call i32 @irdma_hw_modify_qp(ptr noundef %11, ptr noundef %iwqp, ptr noundef nonnull %info, i1 noundef zeroext false) #9
  %12 = ptrtoint ptr %next_iwarp_state to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %next_iwarp_state, align 2
  %iwarp_state = getelementptr inbounds %struct.irdma_qp, ptr %iwqp, i32 0, i32 31
  %14 = ptrtoint ptr %iwarp_state to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %iwarp_state, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %info) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irdma_hw_modify_qp(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irdma_alloc_and_get_cqp_request(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irdma_handle_cqp_op(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @irdma_add_local_mac_entry(ptr noundef %rf, ptr nocapture noundef readonly %mac_addr, i16 noundef zeroext %idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cqp = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 46
  %call = tail call ptr @irdma_alloc_and_get_cqp_request(ptr noundef %cqp, i1 noundef zeroext true) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %post_sq = getelementptr inbounds %struct.cqp_cmds_info, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %post_sq to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %post_sq, align 1
  %in = getelementptr inbounds %struct.cqp_cmds_info, ptr %call, i32 0, i32 3
  %info2 = getelementptr inbounds %struct.anon.257, ptr %in, i32 0, i32 1
  %1 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mac_addr, align 4
  %3 = ptrtoint ptr %info2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %info2, align 4
  %add.ptr.i = getelementptr i8, ptr %mac_addr, i32 4
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.cqp_cmds_info, ptr %call, i32 0, i32 3, i32 0, i32 0, i32 1
  %6 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %add.ptr1.i, align 2
  %entry_idx = getelementptr inbounds %struct.anon.257, ptr %in, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %entry_idx to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %idx, ptr %entry_idx, align 2
  %8 = ptrtoint ptr %call to i32
  %conv = zext i32 %8 to i64
  %scratch = getelementptr inbounds %struct.cqp_cmds_info, ptr %call, i32 0, i32 3, i32 0, i32 0, i32 1, i32 2
  %cqp_cmd = getelementptr inbounds %struct.cqp_cmds_info, ptr %call, i32 0, i32 1
  %9 = ptrtoint ptr %cqp_cmd to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 48, ptr %cqp_cmd, align 8
  %10 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %cqp, ptr %in, align 8
  %11 = ptrtoint ptr %scratch to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %conv, ptr %scratch, align 8
  %call13 = tail call i32 @irdma_handle_cqp_op(ptr noundef %rf, ptr noundef nonnull %call) #9
  tail call void @irdma_put_cqp_request(ptr noundef %cqp, ptr noundef nonnull %call) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %if.end ], [ -9, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @irdma_alloc_local_mac_entry(ptr noundef %rf, ptr nocapture noundef writeonly %mac_tbl_idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cqp = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 46
  %call = tail call ptr @irdma_alloc_and_get_cqp_request(ptr noundef %cqp, i1 noundef zeroext true) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %cqp_cmd = getelementptr inbounds %struct.cqp_cmds_info, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %cqp_cmd to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 47, ptr %cqp_cmd, align 8
  %post_sq = getelementptr inbounds %struct.cqp_cmds_info, ptr %call, i32 0, i32 2
  %1 = ptrtoint ptr %post_sq to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %post_sq, align 1
  %in = getelementptr inbounds %struct.cqp_cmds_info, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %cqp, ptr %in, align 8
  %3 = ptrtoint ptr %call to i32
  %conv = zext i32 %3 to i64
  %scratch = getelementptr inbounds %struct.cqp_cmds_info, ptr %call, i32 0, i32 3, i32 0, i32 0, i32 1
  %4 = ptrtoint ptr %scratch to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %conv, ptr %scratch, align 8
  %call4 = tail call i32 @irdma_handle_cqp_op(ptr noundef %rf, ptr noundef nonnull %call) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then6, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %compl_info = getelementptr inbounds %struct.irdma_cqp_request, ptr %call, i32 0, i32 6
  %5 = ptrtoint ptr %compl_info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %compl_info, align 8
  %conv7 = trunc i32 %6 to i16
  %7 = ptrtoint ptr %mac_tbl_idx to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv7, ptr %mac_tbl_idx, align 2
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end.if.end8_crit_edge
  tail call void @irdma_put_cqp_request(ptr noundef %cqp, ptr noundef nonnull %call) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end8 ], [ -9, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @irdma_add_apbvt(ptr noundef %iwdev, i16 noundef zeroext %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %apbvt_lock = getelementptr inbounds %struct.irdma_device, ptr %iwdev, i32 0, i32 5, i32 9
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %apbvt_lock) #9
  %conv.i = zext i16 %port to i32
  %mul.i.i.i = mul i32 %conv.i, 1640531527
  %shr.i.i = lshr i32 %mul.i.i.i, 24
  %arrayidx.i = getelementptr %struct.irdma_device, ptr %iwdev, i32 0, i32 5, i32 4, i32 %shr.i.i
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %entry1.0.in.i = phi ptr [ %arrayidx.i, %entry ], [ %entry1.0.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %entry1.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %entry1.0.i = load ptr, ptr %entry1.0.in.i, align 4
  %tobool3.not.i = icmp eq ptr %entry1.0.i, null
  br i1 %tobool3.not.i, label %if.end, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %port4.i = getelementptr inbounds %struct.irdma_apbvt_entry, ptr %entry1.0.i, i32 0, i32 2
  %1 = ptrtoint ptr %port4.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %port4.i, align 4
  %cmp.i = icmp eq i16 %2, %port
  br i1 %cmp.i, label %if.then, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

if.then:                                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %use_cnt.i = getelementptr inbounds %struct.irdma_apbvt_entry, ptr %entry1.0.i, i32 0, i32 1
  %3 = ptrtoint ptr %use_cnt.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %use_cnt.i, align 4
  %inc.i = add i32 %4, 1
  store i32 %inc.i, ptr %use_cnt.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %apbvt_lock, i32 noundef %call4) #9
  br label %cleanup

if.end:                                           ; preds = %for.cond.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 2848, i32 noundef 16) #13
  %tobool10.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool10.not, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %apbvt_lock, i32 noundef %call4) #9
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %port14 = getelementptr inbounds %struct.irdma_apbvt_entry, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %port14 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %port, ptr %port14, align 4
  %use_cnt = getelementptr inbounds %struct.irdma_apbvt_entry, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %use_cnt to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %use_cnt, align 8
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %10 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %9, ptr %call7.i.i, align 8
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end13.hlist_add_head.exit_crit_edge, label %do.body12.i

if.end13.hlist_add_head.exit_crit_edge:           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %hlist_add_head.exit

do.body12.i:                                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %9, i32 0, i32 1
  %11 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %call7.i.i, ptr %pprev.i, align 4
  br label %hlist_add_head.exit

hlist_add_head.exit:                              ; preds = %do.body12.i, %if.end13.hlist_add_head.exit_crit_edge
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %call7.i.i, ptr %arrayidx.i, align 4
  %pprev34.i = getelementptr inbounds %struct.hlist_node, ptr %call7.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %pprev34.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %arrayidx.i, ptr %pprev34.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %apbvt_lock, i32 noundef %call4) #9
  %rf.i = getelementptr inbounds %struct.irdma_device, ptr %iwdev, i32 0, i32 1
  %14 = ptrtoint ptr %rf.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rf.i, align 8
  %cqp.i = getelementptr inbounds %struct.irdma_pci_f, ptr %15, i32 0, i32 46
  %call.i = tail call ptr @irdma_alloc_and_get_cqp_request(ptr noundef %cqp.i, i1 noundef zeroext true) #9
  %tobool1.not.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i, label %hlist_add_head.exit.if.then21_crit_edge, label %if.end.i

hlist_add_head.exit.if.then21_crit_edge:          ; preds = %hlist_add_head.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then21

if.end.i:                                         ; preds = %hlist_add_head.exit
  %in.i = getelementptr inbounds %struct.cqp_cmds_info, ptr %call.i, i32 0, i32 3
  %info3.i = getelementptr inbounds %struct.anon.271, ptr %in.i, i32 0, i32 1
  %16 = ptrtoint ptr %info3.i to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 256, ptr %info3.i, align 2
  store i16 %port, ptr %info3.i, align 2
  %cqp_cmd.i = getelementptr inbounds %struct.cqp_cmds_info, ptr %call.i, i32 0, i32 1
  %17 = ptrtoint ptr %cqp_cmd.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 4, ptr %cqp_cmd.i, align 8
  %post_sq.i = getelementptr inbounds %struct.cqp_cmds_info, ptr %call.i, i32 0, i32 2
  %18 = ptrtoint ptr %post_sq.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %post_sq.i, align 1
  %19 = ptrtoint ptr %rf.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rf.i, align 8
  %cqp7.i = getelementptr inbounds %struct.irdma_pci_f, ptr %20, i32 0, i32 46
  %21 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %cqp7.i, ptr %in.i, align 8
  %22 = ptrtoint ptr %call.i to i32
  %conv.i43 = zext i32 %22 to i64
  %scratch.i = getelementptr inbounds %struct.cqp_cmds_info, ptr %call.i, i32 0, i32 3, i32 0, i32 0, i32 1
  %23 = ptrtoint ptr %scratch.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %conv.i43, ptr %scratch.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_cqp_manage_apbvt_cmd.__UNIQUE_ID_ddebug717, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_add_apbvt, %if.then18.i)) #9
          to label %irdma_cqp_manage_apbvt_cmd.exit [label %if.then18.i], !srcloc !179

if.then18.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_cqp_manage_apbvt_cmd.__UNIQUE_ID_ddebug717, ptr noundef %iwdev, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.19, i32 noundef %conv.i) #9
  br label %irdma_cqp_manage_apbvt_cmd.exit

irdma_cqp_manage_apbvt_cmd.exit:                  ; preds = %if.then18.i, %if.end.i
  %24 = ptrtoint ptr %rf.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rf.i, align 8
  %call25.i = tail call i32 @irdma_handle_cqp_op(ptr noundef %25, ptr noundef nonnull %call.i) #9
  %26 = ptrtoint ptr %rf.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rf.i, align 8
  %cqp27.i = getelementptr inbounds %struct.irdma_pci_f, ptr %27, i32 0, i32 46
  tail call void @irdma_put_cqp_request(ptr noundef %cqp27.i, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool20.not = icmp eq i32 %call25.i, 0
  br i1 %tobool20.not, label %irdma_cqp_manage_apbvt_cmd.exit.cleanup_crit_edge, label %irdma_cqp_manage_apbvt_cmd.exit.if.then21_crit_edge

irdma_cqp_manage_apbvt_cmd.exit.if.then21_crit_edge: ; preds = %irdma_cqp_manage_apbvt_cmd.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then21

irdma_cqp_manage_apbvt_cmd.exit.cleanup_crit_edge: ; preds = %irdma_cqp_manage_apbvt_cmd.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then21:                                        ; preds = %irdma_cqp_manage_apbvt_cmd.exit.if.then21_crit_edge, %hlist_add_head.exit.if.then21_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %irdma_cqp_manage_apbvt_cmd.exit.cleanup_crit_edge, %if.then11, %if.then
  %retval.0 = phi ptr [ %entry1.0.i, %if.then ], [ null, %if.then21 ], [ null, %if.then11 ], [ %call7.i.i, %irdma_cqp_manage_apbvt_cmd.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @irdma_del_apbvt(ptr noundef %iwdev, ptr noundef %entry1) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %apbvt_lock = getelementptr inbounds %struct.irdma_device, ptr %iwdev, i32 0, i32 5, i32 9
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %apbvt_lock) #9
  %use_cnt = getelementptr inbounds %struct.irdma_apbvt_entry, ptr %entry1, i32 0, i32 1
  %0 = ptrtoint ptr %use_cnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %use_cnt, align 4
  %dec = add i32 %1, -1
  store i32 %dec, ptr %use_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %pprev.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %entry1, i32 0, i32 1
  %2 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.not.i.i, label %if.end.hash_del.exit_crit_edge, label %if.then.i.i

if.end.hash_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %hash_del.exit

if.then.i.i:                                      ; preds = %if.end
  %4 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %entry1, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %5, ptr %3, align 4
  %tobool.not.i3.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i3.i.i, label %if.then.i.i.__hlist_del.exit.i.i_crit_edge, label %do.body13.i.i.i

if.then.i.i.__hlist_del.exit.i.i_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__hlist_del.exit.i.i

do.body13.i.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %3, ptr %pprev14.i.i.i, align 4
  br label %__hlist_del.exit.i.i

__hlist_del.exit.i.i:                             ; preds = %do.body13.i.i.i, %if.then.i.i.__hlist_del.exit.i.i_crit_edge
  %8 = ptrtoint ptr %entry1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %entry1, align 4
  %9 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %pprev.i.i.i, align 4
  br label %hash_del.exit

hash_del.exit:                                    ; preds = %__hlist_del.exit.i.i, %if.end.hash_del.exit_crit_edge
  %port = getelementptr inbounds %struct.irdma_apbvt_entry, ptr %entry1, i32 0, i32 2
  %10 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %port, align 4
  %rf.i = getelementptr inbounds %struct.irdma_device, ptr %iwdev, i32 0, i32 1
  %12 = ptrtoint ptr %rf.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rf.i, align 8
  %cqp.i = getelementptr inbounds %struct.irdma_pci_f, ptr %13, i32 0, i32 46
  %call.i = tail call ptr @irdma_alloc_and_get_cqp_request(ptr noundef %cqp.i, i1 noundef zeroext false) #9
  %tobool1.not.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i, label %hash_del.exit.irdma_cqp_manage_apbvt_cmd.exit_crit_edge, label %if.end.i

hash_del.exit.irdma_cqp_manage_apbvt_cmd.exit_crit_edge: ; preds = %hash_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %irdma_cqp_manage_apbvt_cmd.exit

if.end.i:                                         ; preds = %hash_del.exit
  %in.i = getelementptr inbounds %struct.cqp_cmds_info, ptr %call.i, i32 0, i32 3
  %info3.i = getelementptr inbounds %struct.anon.271, ptr %in.i, i32 0, i32 1
  %14 = ptrtoint ptr %info3.i to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 0, ptr %info3.i, align 2
  store i16 %11, ptr %info3.i, align 2
  %cqp_cmd.i = getelementptr inbounds %struct.cqp_cmds_info, ptr %call.i, i32 0, i32 1
  %15 = ptrtoint ptr %cqp_cmd.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 4, ptr %cqp_cmd.i, align 8
  %post_sq.i = getelementptr inbounds %struct.cqp_cmds_info, ptr %call.i, i32 0, i32 2
  %16 = ptrtoint ptr %post_sq.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %post_sq.i, align 1
  %17 = ptrtoint ptr %rf.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rf.i, align 8
  %cqp7.i = getelementptr inbounds %struct.irdma_pci_f, ptr %18, i32 0, i32 46
  %19 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %cqp7.i, ptr %in.i, align 8
  %20 = ptrtoint ptr %call.i to i32
  %conv.i = zext i32 %20 to i64
  %scratch.i = getelementptr inbounds %struct.cqp_cmds_info, ptr %call.i, i32 0, i32 3, i32 0, i32 0, i32 1
  %21 = ptrtoint ptr %scratch.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %conv.i, ptr %scratch.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_cqp_manage_apbvt_cmd.__UNIQUE_ID_ddebug717, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_del_apbvt, %if.then18.i)) #9
          to label %do.end.i [label %if.then18.i], !srcloc !179

if.then18.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv22.i = zext i16 %11 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_cqp_manage_apbvt_cmd.__UNIQUE_ID_ddebug717, ptr noundef %iwdev, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.18, i32 noundef %conv22.i) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then18.i, %if.end.i
  %22 = ptrtoint ptr %rf.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rf.i, align 8
  %call25.i = tail call i32 @irdma_handle_cqp_op(ptr noundef %23, ptr noundef nonnull %call.i) #9
  %24 = ptrtoint ptr %rf.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rf.i, align 8
  %cqp27.i = getelementptr inbounds %struct.irdma_pci_f, ptr %25, i32 0, i32 46
  tail call void @irdma_put_cqp_request(ptr noundef %cqp27.i, ptr noundef nonnull %call.i) #9
  br label %irdma_cqp_manage_apbvt_cmd.exit

irdma_cqp_manage_apbvt_cmd.exit:                  ; preds = %do.end.i, %hash_del.exit.irdma_cqp_manage_apbvt_cmd.exit_crit_edge
  tail call void @kfree(ptr noundef %entry1) #9
  br label %cleanup

cleanup:                                          ; preds = %irdma_cqp_manage_apbvt_cmd.exit, %entry.cleanup_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %apbvt_lock, i32 noundef %call4) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @irdma_manage_arp_cache(ptr noundef %rf, ptr noundef %mac_addr, ptr noundef %ip_addr, i1 noundef zeroext %ipv4, i32 noundef %action) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @irdma_arp_table(ptr noundef %rf, ptr noundef %ip_addr, i1 noundef zeroext %ipv4, ptr noundef %mac_addr, i32 noundef %action) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %cqp = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 46
  %call1 = tail call ptr @irdma_alloc_and_get_cqp_request(ptr noundef %cqp, i1 noundef zeroext false) #9
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %action)
  %cmp6 = icmp eq i32 %action, 1
  %cqp_cmd = getelementptr inbounds %struct.cqp_cmds_info, ptr %call1, i32 0, i32 1
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %cqp_cmd to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 19, ptr %cqp_cmd, align 8
  %in = getelementptr inbounds %struct.cqp_cmds_info, ptr %call1, i32 0, i32 3
  %info8 = getelementptr inbounds %struct.anon.255, ptr %in, i32 0, i32 1
  %1 = call ptr @memset(ptr %info8, i32 0, i32 16)
  %conv = trunc i32 %call to i16
  %arp_index9 = getelementptr inbounds %struct.cqp_cmds_info, ptr %call1, i32 0, i32 3, i32 0, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %arp_index9 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv, ptr %arp_index9, align 4
  %permanent = getelementptr inbounds %struct.anon.255, ptr %in, i32 0, i32 1, i32 3
  %3 = ptrtoint ptr %permanent to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %permanent, align 2
  %4 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mac_addr, align 4
  %6 = ptrtoint ptr %info8 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %info8, align 4
  %add.ptr.i = getelementptr i8, ptr %mac_addr, i32 4
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.cqp_cmds_info, ptr %call1, i32 0, i32 3, i32 0, i32 0, i32 1
  %9 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %add.ptr1.i, align 2
  %10 = ptrtoint ptr %call1 to i32
  %conv11 = zext i32 %10 to i64
  %scratch = getelementptr inbounds %struct.cqp_cmds_info, ptr %call1, i32 0, i32 3, i32 0, i32 0, i32 1, i32 2, i32 0, i32 1
  %11 = ptrtoint ptr %scratch to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %conv11, ptr %scratch, align 8
  %12 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %cqp, ptr %in, align 8
  br label %if.end32

if.else:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %cqp_cmd to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 3, ptr %cqp_cmd, align 8
  %14 = ptrtoint ptr %call1 to i32
  %conv19 = zext i32 %14 to i64
  %in20 = getelementptr inbounds %struct.cqp_cmds_info, ptr %call1, i32 0, i32 3
  %scratch22 = getelementptr inbounds %struct.cqp_cmds_info, ptr %call1, i32 0, i32 3, i32 0, i32 0, i32 1
  %15 = ptrtoint ptr %scratch22 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %conv19, ptr %scratch22, align 8
  %16 = ptrtoint ptr %in20 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %cqp, ptr %in20, align 8
  %conv28 = trunc i32 %call to i16
  %arp_index31 = getelementptr inbounds %struct.cqp_cmds_info, ptr %call1, i32 0, i32 3, i32 0, i32 0, i32 1, i32 2
  %17 = ptrtoint ptr %arp_index31 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv28, ptr %arp_index31, align 8
  br label %if.end32

if.end32:                                         ; preds = %if.else, %if.then7
  %post_sq = getelementptr inbounds %struct.cqp_cmds_info, ptr %call1, i32 0, i32 2
  %18 = ptrtoint ptr %post_sq to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %post_sq, align 1
  %call33 = tail call i32 @irdma_handle_cqp_op(ptr noundef %rf, ptr noundef nonnull %call1) #9
  tail call void @irdma_put_cqp_request(ptr noundef %cqp, ptr noundef nonnull %call1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irdma_arp_table(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @irdma_manage_qhash(ptr noundef %iwdev, ptr nocapture noundef readonly %cminfo, i32 noundef %etype, i32 noundef %mtype, ptr noundef %cmnode, i1 noundef zeroext %wait) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rf = getelementptr inbounds %struct.irdma_device, ptr %iwdev, i32 0, i32 1
  %0 = ptrtoint ptr %rf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rf, align 8
  %cqp = getelementptr inbounds %struct.irdma_pci_f, ptr %1, i32 0, i32 46
  %call = tail call ptr @irdma_alloc_and_get_cqp_request(ptr noundef %cqp, i1 noundef zeroext %wait) #9
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %in = getelementptr inbounds %struct.cqp_cmds_info, ptr %call, i32 0, i32 3
  %info3 = getelementptr inbounds %struct.anon.272, ptr %in, i32 0, i32 1
  %2 = getelementptr inbounds %struct.cqp_cmds_info, ptr %call, i32 0, i32 3, i32 0, i32 0, i32 1, i32 2
  %3 = call ptr @memset(ptr %2, i32 0, i32 52)
  %vsi = getelementptr inbounds %struct.irdma_device, ptr %iwdev, i32 0, i32 4
  %4 = ptrtoint ptr %info3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %vsi, ptr %info3, align 4
  %manage = getelementptr inbounds %struct.cqp_cmds_info, ptr %call, i32 0, i32 3, i32 0, i32 0, i32 1
  %5 = ptrtoint ptr %manage to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %mtype, ptr %manage, align 4
  %entry_type = getelementptr inbounds %struct.cqp_cmds_info, ptr %call, i32 0, i32 3, i32 0, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %entry_type to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %etype, ptr %entry_type, align 4
  %vlan_id = getelementptr inbounds %struct.irdma_cm_info, ptr %cminfo, i32 0, i32 6
  %7 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %vlan_id, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %8)
  %cmp = icmp ult i16 %8, 4096
  %vlan_valid = getelementptr inbounds %struct.cqp_cmds_info, ptr %call, i32 0, i32 3, i32 0, i32 0, i32 1, i32 2
  %9 = ptrtoint ptr %vlan_valid to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load = load i8, ptr %vlan_valid, align 4
  br i1 %cmp, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %bf.set = or i8 %bf.load, -128
  %10 = ptrtoint ptr %vlan_valid to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %bf.set, ptr %vlan_valid, align 4
  %11 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %vlan_id, align 4
  %vlan_id8 = getelementptr inbounds %struct.cqp_cmds_info, ptr %call, i32 0, i32 3, i32 0, i32 0, i32 1, i32 2, i32 0, i32 1
  %13 = ptrtoint ptr %vlan_id8 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %vlan_id8, align 4
  br label %if.end13

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %bf.clear11 = and i8 %bf.load, 127
  %14 = ptrtoint ptr %vlan_valid to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %bf.clear11, ptr %vlan_valid, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then6
  %ipv4 = getelementptr inbounds %struct.irdma_cm_info, ptr %cminfo, i32 0, i32 10
  %15 = ptrtoint ptr %ipv4 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ipv4, align 2, !range !180
  %ipv4_valid = getelementptr inbounds %struct.cqp_cmds_info, ptr %call, i32 0, i32 3, i32 0, i32 0, i32 1, i32 2
  %17 = ptrtoint ptr %ipv4_valid to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load15 = load i8, ptr %ipv4_valid, align 4
  %bf.shl = shl nuw nsw i8 %16, 6
  %bf.clear16 = and i8 %bf.load15, -65
  %bf.set17 = or i8 %bf.clear16, %bf.shl
  store i8 %bf.set17, ptr %ipv4_valid, align 4
  %user_pri = getelementptr inbounds %struct.irdma_cm_info, ptr %cminfo, i32 0, i32 8
  %18 = ptrtoint ptr %user_pri to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %user_pri, align 4
  %user_pri19 = getelementptr inbounds %struct.anon.272, ptr %in, i32 0, i32 1, i32 6
  %20 = ptrtoint ptr %user_pri19 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %user_pri19, align 2
  %mac_addr = getelementptr inbounds %struct.anon.272, ptr %in, i32 0, i32 1, i32 4
  %netdev = getelementptr inbounds %struct.irdma_device, ptr %iwdev, i32 0, i32 2
  %21 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %netdev, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 86
  %23 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev_addr, align 64
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  %27 = ptrtoint ptr %mac_addr to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %mac_addr, align 4
  %add.ptr.i = getelementptr i8, ptr %24, i32 4
  %28 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.anon.272, ptr %in, i32 0, i32 1, i32 4, i32 4
  %30 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %add.ptr1.i, align 2
  %qh_qpid = getelementptr inbounds %struct.irdma_cm_info, ptr %cminfo, i32 0, i32 5
  %31 = ptrtoint ptr %qh_qpid to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %qh_qpid, align 4
  %qp_num = getelementptr inbounds %struct.anon.272, ptr %in, i32 0, i32 1, i32 7
  %33 = ptrtoint ptr %qp_num to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %qp_num, align 4
  %loc_port = getelementptr inbounds %struct.irdma_cm_info, ptr %cminfo, i32 0, i32 1
  %34 = ptrtoint ptr %loc_port to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %loc_port, align 4
  %dest_port = getelementptr inbounds %struct.cqp_cmds_info, ptr %call, i32 0, i32 3, i32 0, i32 0, i32 1, i32 2, i32 3
  %36 = ptrtoint ptr %dest_port to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %dest_port, align 4
  %loc_addr = getelementptr inbounds %struct.irdma_cm_info, ptr %cminfo, i32 0, i32 3
  %37 = ptrtoint ptr %loc_addr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %loc_addr, align 4
  %dest_ip = getelementptr inbounds %struct.cqp_cmds_info, ptr %call, i32 0, i32 3, i32 0, i32 0, i32 1, i32 2, i32 1
  %39 = ptrtoint ptr %dest_ip to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %dest_ip, align 4
  %arrayidx22 = getelementptr %struct.irdma_cm_info, ptr %cminfo, i32 0, i32 3, i32 1
  %40 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx22, align 4
  %arrayidx24 = getelementptr [4 x i32], ptr %dest_ip, i32 0, i32 1
  %42 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %arrayidx24, align 4
  %arrayidx26 = getelementptr %struct.irdma_cm_info, ptr %cminfo, i32 0, i32 3, i32 2
  %43 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx26, align 4
  %arrayidx28 = getelementptr %struct.cqp_cmds_info, ptr %call, i32 0, i32 3, i32 0, i32 0, i32 1, i32 2, i32 1, i32 1
  %45 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %arrayidx28, align 4
  %arrayidx30 = getelementptr %struct.irdma_cm_info, ptr %cminfo, i32 0, i32 3, i32 3
  %46 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx30, align 4
  %arrayidx32 = getelementptr [4 x i32], ptr %dest_ip, i32 0, i32 3
  %48 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %arrayidx32, align 4
  %49 = zext i32 %etype to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %etype, label %if.end13.if.end61_crit_edge [
    i32 1, label %if.end13.if.then46_crit_edge
    i32 3, label %if.end13.if.then46_crit_edge246
    i32 4, label %if.end13.if.then46_crit_edge247
    i32 5, label %if.end13.if.then46_crit_edge248
    i32 6, label %if.end13.if.then46_crit_edge249
  ]

if.end13.if.then46_crit_edge249:                  ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then46

if.end13.if.then46_crit_edge248:                  ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then46

if.end13.if.then46_crit_edge247:                  ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then46

if.end13.if.then46_crit_edge246:                  ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then46

if.end13.if.then46_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then46

if.end13.if.end61_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

if.then46:                                        ; preds = %if.end13.if.then46_crit_edge, %if.end13.if.then46_crit_edge246, %if.end13.if.then46_crit_edge247, %if.end13.if.then46_crit_edge248, %if.end13.if.then46_crit_edge249
  %rem_port = getelementptr inbounds %struct.irdma_cm_info, ptr %cminfo, i32 0, i32 2
  %50 = ptrtoint ptr %rem_port to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %rem_port, align 2
  %src_port = getelementptr inbounds %struct.anon.272, ptr %in, i32 0, i32 1, i32 11
  %52 = ptrtoint ptr %src_port to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %51, ptr %src_port, align 2
  %rem_addr = getelementptr inbounds %struct.irdma_cm_info, ptr %cminfo, i32 0, i32 4
  %53 = ptrtoint ptr %rem_addr to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rem_addr, align 4
  %src_ip = getelementptr inbounds %struct.cqp_cmds_info, ptr %call, i32 0, i32 3, i32 0, i32 0, i32 1, i32 2, i32 2
  %55 = ptrtoint ptr %src_ip to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %src_ip, align 4
  %arrayidx50 = getelementptr %struct.irdma_cm_info, ptr %cminfo, i32 0, i32 4, i32 1
  %56 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx50, align 4
  %arrayidx52 = getelementptr [4 x i32], ptr %src_ip, i32 0, i32 1
  %58 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %arrayidx52, align 4
  %arrayidx54 = getelementptr %struct.irdma_cm_info, ptr %cminfo, i32 0, i32 4, i32 2
  %59 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx54, align 4
  %arrayidx56 = getelementptr %struct.cqp_cmds_info, ptr %call, i32 0, i32 3, i32 0, i32 0, i32 1, i32 2, i32 2, i32 1
  %61 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %arrayidx56, align 4
  %arrayidx58 = getelementptr %struct.irdma_cm_info, ptr %cminfo, i32 0, i32 4, i32 3
  %62 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx58, align 4
  %arrayidx60 = getelementptr [4 x i32], ptr %src_ip, i32 0, i32 3
  %64 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %arrayidx60, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.then46, %if.end13.if.end61_crit_edge
  %tobool62.not = icmp eq ptr %cmnode, null
  br i1 %tobool62.not, label %if.end61.if.end67_crit_edge, label %if.then63

if.end61.if.end67_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67

if.then63:                                        ; preds = %if.end61
  %callback_fcn = getelementptr inbounds %struct.irdma_cqp_request, ptr %call, i32 0, i32 4
  %65 = ptrtoint ptr %callback_fcn to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @irdma_send_syn_cqp_callback, ptr %callback_fcn, align 8
  %param = getelementptr inbounds %struct.irdma_cqp_request, ptr %call, i32 0, i32 5
  %66 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %cmnode, ptr %param, align 4
  br i1 %wait, label %if.then63.if.end67_crit_edge, label %if.then65

if.then63.if.end67_crit_edge:                     ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67

if.then65:                                        ; preds = %if.then63
  %refcnt = getelementptr inbounds %struct.irdma_cm_node, ptr %cmnode, i32 0, i32 22
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #9
  %67 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #9, !srcloc !186
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %67, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.then65.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !185

if.then65.if.end15.sink.split.i.i.i_crit_edge:    ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.then65
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %68 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %68)
  %.not.i.i.i = icmp sgt i32 %68, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.if.end67_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !187

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.if.end67_crit_edge:                 ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.then65.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.then65.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef %.sink.i.i.i) #9
  br label %if.end67

if.end67:                                         ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.if.end67_crit_edge, %if.then63.if.end67_crit_edge, %if.end61.if.end67_crit_edge
  %69 = ptrtoint ptr %ipv4_valid to i32
  call void @__asan_load1_noabort(i32 %69)
  %bf.load69 = load i8, ptr %ipv4_valid, align 4
  %70 = and i8 %bf.load69, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %bf.cast.not = icmp eq i8 %70, 0
  br i1 %bf.cast.not, label %do.body97, label %do.body

do.body:                                          ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_manage_qhash.__UNIQUE_ID_ddebug718, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_manage_qhash, %if.then77)) #9
          to label %if.end135 [label %if.then77], !srcloc !179

if.then77:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mtype)
  %tobool78.not = icmp eq i32 %mtype, 0
  %cond = select i1 %tobool78.not, ptr @.str.18, ptr @.str.19
  %71 = tail call ptr @llvm.returnaddress(i32 0)
  %72 = ptrtoint ptr %dest_port to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %dest_port, align 4
  %conv82 = zext i16 %73 to i32
  %src_port83 = getelementptr inbounds %struct.anon.272, ptr %in, i32 0, i32 1, i32 11
  %74 = ptrtoint ptr %src_port83 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %src_port83, align 2
  %conv84 = zext i16 %75 to i32
  %src_ip87 = getelementptr inbounds %struct.cqp_cmds_info, ptr %call, i32 0, i32 3, i32 0, i32 0, i32 1, i32 2, i32 2
  %76 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %vlan_id, align 4
  %conv92 = zext i16 %77 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_manage_qhash.__UNIQUE_ID_ddebug718, ptr noundef %iwdev, ptr noundef nonnull @.str.17, ptr noundef nonnull %cond, ptr noundef %71, i32 noundef %conv82, i32 noundef %conv84, ptr noundef %dest_ip, ptr noundef %src_ip87, ptr noundef %mac_addr, i32 noundef %conv92, ptr noundef %cmnode) #9
  br label %if.end135

do.body97:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_manage_qhash.__UNIQUE_ID_ddebug719, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_manage_qhash, %if.then109)) #9
          to label %if.end135 [label %if.then109], !srcloc !179

if.then109:                                       ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mtype)
  %tobool111.not = icmp eq i32 %mtype, 0
  %cond114 = select i1 %tobool111.not, ptr @.str.18, ptr @.str.19
  %78 = tail call ptr @llvm.returnaddress(i32 0)
  %79 = ptrtoint ptr %dest_port to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %dest_port, align 4
  %conv116 = zext i16 %80 to i32
  %src_port117 = getelementptr inbounds %struct.anon.272, ptr %in, i32 0, i32 1, i32 11
  %81 = ptrtoint ptr %src_port117 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %src_port117, align 2
  %conv118 = zext i16 %82 to i32
  %src_ip121 = getelementptr inbounds %struct.cqp_cmds_info, ptr %call, i32 0, i32 3, i32 0, i32 0, i32 1, i32 2, i32 2
  %83 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %vlan_id, align 4
  %conv126 = zext i16 %84 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_manage_qhash.__UNIQUE_ID_ddebug719, ptr noundef %iwdev, ptr noundef nonnull @.str.20, ptr noundef nonnull %cond114, ptr noundef %78, i32 noundef %conv116, i32 noundef %conv118, ptr noundef %dest_ip, ptr noundef %src_ip121, ptr noundef %mac_addr, i32 noundef %conv126, ptr noundef %cmnode) #9
  br label %if.end135

if.end135:                                        ; preds = %if.then109, %do.body97, %if.then77, %do.body
  %85 = ptrtoint ptr %rf to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %rf, align 8
  %cqp137 = getelementptr inbounds %struct.irdma_pci_f, ptr %86, i32 0, i32 46
  %87 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %cqp137, ptr %in, align 8
  %88 = ptrtoint ptr %call to i32
  %conv141 = zext i32 %88 to i64
  %scratch = getelementptr inbounds %struct.cqp_cmds_info, ptr %call, i32 0, i32 3, i32 0, i32 0, i32 1, i32 2, i32 3, i32 1
  %89 = ptrtoint ptr %scratch to i32
  call void @__asan_store8_noabort(i32 %89)
  store i64 %conv141, ptr %scratch, align 8
  %cqp_cmd = getelementptr inbounds %struct.cqp_cmds_info, ptr %call, i32 0, i32 1
  %90 = ptrtoint ptr %cqp_cmd to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 7, ptr %cqp_cmd, align 8
  %post_sq = getelementptr inbounds %struct.cqp_cmds_info, ptr %call, i32 0, i32 2
  %91 = ptrtoint ptr %post_sq to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 1, ptr %post_sq, align 1
  %92 = load ptr, ptr %rf, align 8
  %call145 = tail call i32 @irdma_handle_cqp_op(ptr noundef %92, ptr noundef nonnull %call) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145)
  %tobool146.not = icmp eq i32 %call145, 0
  %brmerge = or i1 %tobool62.not, %tobool146.not
  %brmerge240 = or i1 %brmerge, %wait
  br i1 %brmerge240, label %if.end135.if.end151_crit_edge, label %if.then150

if.end135.if.end151_crit_edge:                    ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end151

if.then150:                                       ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @irdma_rem_ref_cm_node(ptr noundef nonnull %cmnode) #9
  br label %if.end151

if.end151:                                        ; preds = %if.then150, %if.end135.if.end151_crit_edge
  tail call void @irdma_put_cqp_request(ptr noundef %cqp, ptr noundef nonnull %call) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end151, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call145, %if.end151 ], [ -9, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @irdma_send_syn_cqp_callback(ptr nocapture noundef readonly %cqp_request) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %param = getelementptr inbounds %struct.irdma_cqp_request, ptr %cqp_request, i32 0, i32 5
  %0 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %param, align 4
  %call = tail call i32 @irdma_send_syn(ptr noundef %1, i32 noundef 1) #9
  tail call void @irdma_rem_ref_cm_node(ptr noundef %1) #9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @irdma_rem_ref_cm_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @irdma_hw_flush_wqes(ptr noundef %rf, ptr noundef %qp, ptr nocapture noundef %info, i1 noundef zeroext %wait) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %back_qp = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 28
  %0 = ptrtoint ptr %back_qp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %back_qp, align 8
  %cqp = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 46
  %call = tail call ptr @irdma_alloc_and_get_cqp_request(ptr noundef %cqp, i1 noundef zeroext %wait) #9
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %entry.cleanup192_crit_edge, label %if.end

entry.cleanup192_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup192

if.end:                                           ; preds = %entry
  br i1 %wait, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %callback_fcn = getelementptr inbounds %struct.irdma_cqp_request, ptr %call, i32 0, i32 4
  %2 = ptrtoint ptr %callback_fcn to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @irdma_hw_flush_wqes_callback, ptr %callback_fcn, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %in = getelementptr inbounds %struct.cqp_cmds_info, ptr %call, i32 0, i32 3
  %info7 = getelementptr inbounds %struct.anon.267, ptr %in, i32 0, i32 1
  %3 = call ptr @memcpy(ptr %info7, ptr %info, i32 12)
  %cqp_cmd = getelementptr inbounds %struct.cqp_cmds_info, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %cqp_cmd to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 18, ptr %cqp_cmd, align 8
  %post_sq = getelementptr inbounds %struct.cqp_cmds_info, ptr %call, i32 0, i32 2
  %5 = ptrtoint ptr %post_sq to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %post_sq, align 1
  %6 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %qp, ptr %in, align 8
  %7 = ptrtoint ptr %call to i32
  %conv = zext i32 %7 to i64
  %scratch = getelementptr inbounds %struct.cqp_cmds_info, ptr %call, i32 0, i32 3, i32 0, i32 0, i32 1, i32 2
  %8 = ptrtoint ptr %scratch to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %conv, ptr %scratch, align 8
  %call13 = tail call i32 @irdma_handle_cqp_op(ptr noundef %rf, ptr noundef nonnull %call) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end22, label %if.then15

if.then15:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %sq_flush_complete = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 27
  %9 = ptrtoint ptr %sq_flush_complete to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load = load i8, ptr %sq_flush_complete, align 4
  %bf.set20 = or i8 %bf.load, 12
  store i8 %bf.set20, ptr %sq_flush_complete, align 4
  br label %cleanup192.sink.split

if.end22:                                         ; preds = %if.end5
  br i1 %wait, label %lor.lhs.false, label %if.end22.cleanup192.sink.split_crit_edge

if.end22.cleanup192.sink.split_crit_edge:         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup192.sink.split

lor.lhs.false:                                    ; preds = %if.end22
  %maj_err_code = getelementptr inbounds %struct.irdma_cqp_request, ptr %call, i32 0, i32 6, i32 1
  %10 = ptrtoint ptr %maj_err_code to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %maj_err_code, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool25.not = icmp eq i16 %11, 0
  br i1 %tobool25.not, label %if.end27, label %lor.lhs.false.cleanup192.sink.split_crit_edge

lor.lhs.false.cleanup192.sink.split_crit_edge:    ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup192.sink.split

if.end27:                                         ; preds = %lor.lhs.false
  %rq = getelementptr inbounds %struct.irdma_qp_flush_info, ptr %info, i32 0, i32 6
  %12 = ptrtoint ptr %rq to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load28 = load i8, ptr %rq, align 1
  %13 = and i8 %bf.load28, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %bf.cast.not = icmp eq i8 %13, 0
  br i1 %bf.cast.not, label %if.end27.if.end47_crit_edge, label %if.then30

if.end27.if.end47_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

if.then30:                                        ; preds = %if.end27
  %min_err_code = getelementptr inbounds %struct.irdma_cqp_request, ptr %call, i32 0, i32 6, i32 2
  %14 = ptrtoint ptr %min_err_code to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %min_err_code, align 2
  %16 = zext i16 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.84)
  switch i16 %15, label %if.then30.if.end47thread-pre-split_crit_edge [
    i16 3, label %if.then30.if.then40_crit_edge
    i16 0, label %if.then30.if.then40_crit_edge276
  ]

if.then30.if.then40_crit_edge276:                 ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then40

if.then30.if.then40_crit_edge:                    ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then40

if.then30.if.end47thread-pre-split_crit_edge:     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47thread-pre-split

if.then40:                                        ; preds = %if.then30.if.then40_crit_edge, %if.then30.if.then40_crit_edge276
  %rq_flush_complete42 = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 27
  %17 = ptrtoint ptr %rq_flush_complete42 to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load43 = load i8, ptr %rq_flush_complete42, align 4
  %bf.set45 = or i8 %bf.load43, 4
  store i8 %bf.set45, ptr %rq_flush_complete42, align 4
  br label %if.end47thread-pre-split

if.end47thread-pre-split:                         ; preds = %if.then40, %if.then30.if.end47thread-pre-split_crit_edge
  %18 = ptrtoint ptr %rq to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load48.pr = load i8, ptr %rq, align 1
  br label %if.end47

if.end47:                                         ; preds = %if.end47thread-pre-split, %if.end27.if.end47_crit_edge
  %bf.load48 = phi i8 [ %bf.load48.pr, %if.end47thread-pre-split ], [ %bf.load28, %if.end27.if.end47_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load48)
  %bf.cast50.not = icmp sgt i8 %bf.load48, -1
  br i1 %bf.cast50.not, label %if.end47.do.body_crit_edge, label %if.then51

if.end47.do.body_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.then51:                                        ; preds = %if.end47
  %min_err_code53 = getelementptr inbounds %struct.irdma_cqp_request, ptr %call, i32 0, i32 6, i32 2
  %19 = ptrtoint ptr %min_err_code53 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %min_err_code53, align 2
  %21 = zext i16 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.85)
  switch i16 %20, label %if.else145 [
    i16 2, label %if.then51.if.then63_crit_edge
    i16 0, label %if.then51.if.then63_crit_edge277
  ]

if.then51.if.then63_crit_edge277:                 ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then63

if.then51.if.then63_crit_edge:                    ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then63

if.then63:                                        ; preds = %if.then51.if.then63_crit_edge, %if.then51.if.then63_crit_edge277
  %sq_ring = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 9
  %22 = ptrtoint ptr %sq_ring to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sq_ring, align 4
  %size = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 9, i32 2
  %24 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %size, align 4
  %add = add i32 %25, %23
  %tail = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 9, i32 1
  %26 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tail, align 4
  %sub = sub i32 %add, %27
  %rem = urem i32 %sub, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp72.not = icmp eq i32 %rem, 0
  %sq_flush_complete140 = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 27
  %28 = ptrtoint ptr %sq_flush_complete140 to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load141 = load i8, ptr %sq_flush_complete140, align 4
  br i1 %cmp72.not, label %if.else, label %if.then74

if.then74:                                        ; preds = %if.then63
  %29 = and i8 %bf.load141, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %bf.cast80.not = icmp eq i8 %29, 0
  br i1 %bf.cast80.not, label %if.then74.cleanup192.sink.split_crit_edge, label %if.end82

if.then74.cleanup192.sink.split_crit_edge:        ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup192.sink.split

if.end82:                                         ; preds = %if.then74
  %bf.clear86 = and i8 %bf.load141, -9
  %30 = ptrtoint ptr %sq_flush_complete140 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %bf.clear86, ptr %sq_flush_complete140, align 4
  %flush_sq = getelementptr inbounds %struct.irdma_sc_qp, ptr %qp, i32 0, i32 26
  %31 = ptrtoint ptr %flush_sq to i32
  call void @__asan_loadN_noabort(i32 %31, i32 2)
  %bf.load88 = load i16, ptr %flush_sq, align 1
  %bf.clear89 = and i16 %bf.load88, -257
  store i16 %bf.clear89, ptr %flush_sq, align 1
  %32 = ptrtoint ptr %rq to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load92 = load i8, ptr %rq, align 1
  %bf.clear97 = and i8 %bf.load92, 63
  %bf.set98 = or i8 %bf.clear97, -128
  store i8 %bf.set98, ptr %rq, align 1
  %call100 = tail call ptr @irdma_alloc_and_get_cqp_request(ptr noundef %cqp, i1 noundef zeroext true) #9
  %tobool101.not = icmp eq ptr %call100, null
  br i1 %tobool101.not, label %if.end82.cleanup192.sink.split_crit_edge, label %if.end103

if.end82.cleanup192.sink.split_crit_edge:         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup192.sink.split

if.end103:                                        ; preds = %if.end82
  %in106 = getelementptr inbounds %struct.cqp_cmds_info, ptr %call100, i32 0, i32 3
  %info108 = getelementptr inbounds %struct.anon.267, ptr %in106, i32 0, i32 1
  %33 = call ptr @memcpy(ptr %info108, ptr %info, i32 12)
  %cqp_cmd109 = getelementptr inbounds %struct.cqp_cmds_info, ptr %call100, i32 0, i32 1
  %34 = ptrtoint ptr %cqp_cmd109 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 18, ptr %cqp_cmd109, align 8
  %post_sq110 = getelementptr inbounds %struct.cqp_cmds_info, ptr %call100, i32 0, i32 2
  %35 = ptrtoint ptr %post_sq110 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %post_sq110, align 1
  %36 = ptrtoint ptr %in106 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %qp, ptr %in106, align 8
  %37 = ptrtoint ptr %call100 to i32
  %conv114 = zext i32 %37 to i64
  %scratch117 = getelementptr inbounds %struct.cqp_cmds_info, ptr %call100, i32 0, i32 3, i32 0, i32 0, i32 1, i32 2
  %38 = ptrtoint ptr %scratch117 to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %conv114, ptr %scratch117, align 8
  %call118 = tail call i32 @irdma_handle_cqp_op(ptr noundef %rf, ptr noundef nonnull %call100) #9
  %maj_err_code120 = getelementptr inbounds %struct.irdma_cqp_request, ptr %call100, i32 0, i32 6, i32 1
  %39 = ptrtoint ptr %maj_err_code120 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %maj_err_code120, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %tobool122.not = icmp eq i16 %40, 0
  br i1 %tobool122.not, label %lor.lhs.false123, label %if.end103.if.then131_crit_edge

if.end103.if.then131_crit_edge:                   ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then131

lor.lhs.false123:                                 ; preds = %if.end103
  %min_err_code125 = getelementptr inbounds %struct.irdma_cqp_request, ptr %call100, i32 0, i32 6, i32 2
  %41 = ptrtoint ptr %min_err_code125 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %min_err_code125, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %42)
  %cmp127.not = icmp eq i16 %42, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %tobool130.not = icmp eq i32 %call118, 0
  %or.cond = select i1 %cmp127.not, i1 %tobool130.not, i1 false
  br i1 %or.cond, label %lor.lhs.false123.cleanup_crit_edge, label %lor.lhs.false123.if.then131_crit_edge

lor.lhs.false123.if.then131_crit_edge:            ; preds = %lor.lhs.false123
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then131

lor.lhs.false123.cleanup_crit_edge:               ; preds = %lor.lhs.false123
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then131:                                       ; preds = %lor.lhs.false123.if.then131_crit_edge, %if.end103.if.then131_crit_edge
  %iwdev = getelementptr inbounds %struct.irdma_qp, ptr %1, i32 0, i32 3
  %43 = ptrtoint ptr %iwdev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %iwdev, align 8
  %qp_num = getelementptr inbounds %struct.ib_qp, ptr %1, i32 0, i32 19
  %45 = ptrtoint ptr %qp_num to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %qp_num, align 4
  tail call void (ptr, ptr, ...) @ibdev_err(ptr noundef %44, ptr noundef nonnull @.str.21, i32 noundef %46) #12
  %47 = ptrtoint ptr %sq_flush_complete140 to i32
  call void @__asan_load1_noabort(i32 %47)
  %bf.load134 = load i8, ptr %sq_flush_complete140, align 4
  %bf.clear135 = and i8 %bf.load134, -9
  store i8 %bf.clear135, ptr %sq_flush_complete140, align 4
  tail call void @irdma_ib_qp_event(ptr noundef %1, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then131, %lor.lhs.false123.cleanup_crit_edge
  tail call void @irdma_put_cqp_request(ptr noundef %cqp, ptr noundef nonnull %call100) #9
  br label %do.body

if.else:                                          ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #11
  %bf.set143 = or i8 %bf.load141, 8
  %48 = ptrtoint ptr %sq_flush_complete140 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %bf.set143, ptr %sq_flush_complete140, align 4
  br label %do.body

if.else145:                                       ; preds = %if.then51
  %sq_ring147 = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 9
  %49 = ptrtoint ptr %sq_ring147 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %sq_ring147, align 4
  %size151 = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 9, i32 2
  %51 = ptrtoint ptr %size151 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %size151, align 4
  %add152 = add i32 %52, %50
  %tail155 = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 9, i32 1
  %53 = ptrtoint ptr %tail155 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %tail155, align 4
  %sub156 = sub i32 %add152, %54
  %rem160 = urem i32 %sub156, %52
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem160)
  %cmp161.not = icmp eq i32 %rem160, 0
  br i1 %cmp161.not, label %if.then163, label %if.else145.do.body_crit_edge

if.else145.do.body_crit_edge:                     ; preds = %if.else145
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.then163:                                       ; preds = %if.else145
  call void @__sanitizer_cov_trace_pc() #11
  %sq_flush_complete165 = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 27
  %55 = ptrtoint ptr %sq_flush_complete165 to i32
  call void @__asan_load1_noabort(i32 %55)
  %bf.load166 = load i8, ptr %sq_flush_complete165, align 4
  %bf.set168 = or i8 %bf.load166, 8
  store i8 %bf.set168, ptr %sq_flush_complete165, align 4
  br label %do.body

do.body:                                          ; preds = %if.then163, %if.else145.do.body_crit_edge, %if.else, %cleanup, %if.end47.do.body_crit_edge
  %status.1 = phi i32 [ %call118, %cleanup ], [ 0, %if.else ], [ 0, %if.else145.do.body_crit_edge ], [ 0, %if.then163 ], [ 0, %if.end47.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_hw_flush_wqes.__UNIQUE_ID_ddebug720, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_hw_flush_wqes, %if.then177)) #9
          to label %cleanup192.sink.split [label %if.then177], !srcloc !179

if.then177:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %iwdev178 = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 71
  %56 = ptrtoint ptr %iwdev178 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %iwdev178, align 8
  %qp_num181 = getelementptr inbounds %struct.ib_qp, ptr %1, i32 0, i32 19
  %58 = ptrtoint ptr %qp_num181 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %qp_num181, align 4
  %protocol_used = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 6
  %60 = ptrtoint ptr %protocol_used to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %protocol_used, align 8
  %iwarp_state = getelementptr inbounds %struct.irdma_qp, ptr %1, i32 0, i32 31
  %62 = ptrtoint ptr %iwarp_state to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %iwarp_state, align 1
  %conv182 = zext i8 %63 to i32
  %ibqp_state = getelementptr inbounds %struct.irdma_qp, ptr %1, i32 0, i32 19
  %64 = ptrtoint ptr %ibqp_state to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %ibqp_state, align 4
  %last_aeq = getelementptr inbounds %struct.irdma_qp, ptr %1, i32 0, i32 21
  %66 = ptrtoint ptr %last_aeq to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %last_aeq, align 4
  %hw_iwarp_state = getelementptr inbounds %struct.irdma_qp, ptr %1, i32 0, i32 34
  %68 = ptrtoint ptr %hw_iwarp_state to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %hw_iwarp_state, align 2
  %conv183 = zext i8 %69 to i32
  %70 = ptrtoint ptr %maj_err_code to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %maj_err_code, align 4
  %conv186 = zext i16 %71 to i32
  %min_err_code188 = getelementptr inbounds %struct.irdma_cqp_request, ptr %call, i32 0, i32 6, i32 2
  %72 = ptrtoint ptr %min_err_code188 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %min_err_code188, align 2
  %conv189 = zext i16 %73 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_hw_flush_wqes.__UNIQUE_ID_ddebug720, ptr noundef %57, ptr noundef nonnull @.str.23, i32 noundef %59, i32 noundef %61, i32 noundef %conv182, i32 noundef %65, i32 noundef %67, i32 noundef %conv183, i32 noundef %conv186, i32 noundef %conv189) #9
  br label %cleanup192.sink.split

cleanup192.sink.split:                            ; preds = %if.then177, %do.body, %if.end82.cleanup192.sink.split_crit_edge, %if.then74.cleanup192.sink.split_crit_edge, %lor.lhs.false.cleanup192.sink.split_crit_edge, %if.end22.cleanup192.sink.split_crit_edge, %if.then15
  %retval.0.ph = phi i32 [ %call13, %if.then15 ], [ 0, %lor.lhs.false.cleanup192.sink.split_crit_edge ], [ %status.1, %if.then177 ], [ 0, %if.end22.cleanup192.sink.split_crit_edge ], [ %status.1, %do.body ], [ -9, %if.end82.cleanup192.sink.split_crit_edge ], [ 0, %if.then74.cleanup192.sink.split_crit_edge ]
  tail call void @irdma_put_cqp_request(ptr noundef %cqp, ptr noundef nonnull %call) #9
  br label %cleanup192

cleanup192:                                       ; preds = %cleanup192.sink.split, %entry.cleanup192_crit_edge
  %retval.0 = phi i32 [ -9, %entry.cleanup192_crit_edge ], [ %retval.0.ph, %cleanup192.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @irdma_hw_flush_wqes_callback(ptr nocapture noundef readonly %cqp_request) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %in = getelementptr inbounds %struct.cqp_cmds_info, ptr %cqp_request, i32 0, i32 3
  %0 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %in, align 8
  %back_qp = getelementptr inbounds %struct.irdma_qp_uk, ptr %1, i32 0, i32 28
  %2 = ptrtoint ptr %back_qp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back_qp, align 8
  %maj_err_code = getelementptr inbounds %struct.irdma_cqp_request, ptr %cqp_request, i32 0, i32 6, i32 1
  %4 = ptrtoint ptr %maj_err_code to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %maj_err_code, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %rq = getelementptr inbounds %struct.anon.267, ptr %in, i32 0, i32 1, i32 6
  %6 = ptrtoint ptr %rq to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %rq, align 1
  %7 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %bf.cast.not = icmp eq i8 %7, 0
  br i1 %bf.cast.not, label %if.end.if.end16_crit_edge, label %land.lhs.true

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

land.lhs.true:                                    ; preds = %if.end
  %min_err_code = getelementptr inbounds %struct.irdma_cqp_request, ptr %cqp_request, i32 0, i32 6, i32 2
  %8 = ptrtoint ptr %min_err_code to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %min_err_code, align 2
  %10 = zext i16 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.86)
  switch i16 %9, label %land.lhs.true.if.end16thread-pre-split_crit_edge [
    i16 3, label %land.lhs.true.if.then12_crit_edge
    i16 0, label %land.lhs.true.if.then12_crit_edge70
  ]

land.lhs.true.if.then12_crit_edge70:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then12

land.lhs.true.if.then12_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then12

land.lhs.true.if.end16thread-pre-split_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16thread-pre-split

if.then12:                                        ; preds = %land.lhs.true.if.then12_crit_edge, %land.lhs.true.if.then12_crit_edge70
  %rq_flush_complete = getelementptr inbounds %struct.irdma_qp_uk, ptr %1, i32 0, i32 27
  %11 = ptrtoint ptr %rq_flush_complete to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load14 = load i8, ptr %rq_flush_complete, align 4
  %bf.set = or i8 %bf.load14, 4
  store i8 %bf.set, ptr %rq_flush_complete, align 4
  br label %if.end16thread-pre-split

if.end16thread-pre-split:                         ; preds = %if.then12, %land.lhs.true.if.end16thread-pre-split_crit_edge
  %12 = ptrtoint ptr %rq to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load17.pr = load i8, ptr %rq, align 1
  br label %if.end16

if.end16:                                         ; preds = %if.end16thread-pre-split, %if.end.if.end16_crit_edge
  %bf.load17 = phi i8 [ %bf.load17.pr, %if.end16thread-pre-split ], [ %bf.load, %if.end.if.end16_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load17)
  %bf.cast19.not = icmp sgt i8 %bf.load17, -1
  br i1 %bf.cast19.not, label %if.end16.cleanup_crit_edge, label %land.lhs.true21

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true21:                                  ; preds = %if.end16
  %min_err_code23 = getelementptr inbounds %struct.irdma_cqp_request, ptr %cqp_request, i32 0, i32 6, i32 2
  %13 = ptrtoint ptr %min_err_code23 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %min_err_code23, align 2
  %15 = zext i16 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.87)
  switch i16 %14, label %land.lhs.true21.cleanup_crit_edge [
    i16 2, label %land.lhs.true21.if.then33_crit_edge
    i16 0, label %land.lhs.true21.if.then33_crit_edge71
  ]

land.lhs.true21.if.then33_crit_edge71:            ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then33

land.lhs.true21.if.then33_crit_edge:              ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then33

land.lhs.true21.cleanup_crit_edge:                ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then33:                                        ; preds = %land.lhs.true21.if.then33_crit_edge, %land.lhs.true21.if.then33_crit_edge71
  %sq_ring = getelementptr inbounds %struct.irdma_qp_uk, ptr %1, i32 0, i32 9
  %16 = ptrtoint ptr %sq_ring to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sq_ring, align 4
  %size = getelementptr inbounds %struct.irdma_qp_uk, ptr %1, i32 0, i32 9, i32 2
  %18 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %size, align 4
  %add = add i32 %19, %17
  %tail = getelementptr inbounds %struct.irdma_qp_uk, ptr %1, i32 0, i32 9, i32 1
  %20 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tail, align 4
  %sub = sub i32 %add, %21
  %rem = urem i32 %sub, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp42.not = icmp eq i32 %rem, 0
  br i1 %cmp42.not, label %if.then33.if.end46_crit_edge, label %if.then44

if.then33.if.end46_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

if.then44:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #11
  %iwdev = getelementptr inbounds %struct.irdma_qp, ptr %3, i32 0, i32 3
  %22 = ptrtoint ptr %iwdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %iwdev, align 8
  %qp_id = getelementptr inbounds %struct.irdma_qp_uk, ptr %1, i32 0, i32 12
  %24 = ptrtoint ptr %qp_id to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %qp_id, align 8
  tail call void (ptr, ptr, ...) @ibdev_err(ptr noundef %23, ptr noundef nonnull @.str.80, i32 noundef %25) #12
  tail call void @irdma_ib_qp_event(ptr noundef %3, i32 noundef 0) #9
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %if.then33.if.end46_crit_edge
  %sq_flush_complete = getelementptr inbounds %struct.irdma_qp_uk, ptr %1, i32 0, i32 27
  %26 = ptrtoint ptr %sq_flush_complete to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load48 = load i8, ptr %sq_flush_complete, align 4
  %bf.set50 = or i8 %bf.load48, 8
  store i8 %bf.set50, ptr %sq_flush_complete, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %land.lhs.true21.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irdma_ib_qp_event(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @irdma_gen_ae(ptr noundef %rf, ptr noundef %qp, ptr nocapture noundef readonly %info, i1 noundef zeroext %wait) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cqp = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 46
  %call = tail call ptr @irdma_alloc_and_get_cqp_request(ptr noundef %cqp, i1 noundef zeroext %wait) #9
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %in = getelementptr inbounds %struct.cqp_cmds_info, ptr %call, i32 0, i32 3
  %info4 = getelementptr inbounds %struct.anon.268, ptr %in, i32 0, i32 1
  %0 = ptrtoint ptr %info to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %info, align 2
  %2 = ptrtoint ptr %info4 to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 %1, ptr %info4, align 2
  %cqp_cmd = getelementptr inbounds %struct.cqp_cmds_info, ptr %call, i32 0, i32 1
  %3 = ptrtoint ptr %cqp_cmd to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 45, ptr %cqp_cmd, align 8
  %post_sq = getelementptr inbounds %struct.cqp_cmds_info, ptr %call, i32 0, i32 2
  %4 = ptrtoint ptr %post_sq to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %post_sq, align 1
  %5 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %qp, ptr %in, align 8
  %6 = ptrtoint ptr %call to i32
  %conv = zext i32 %6 to i64
  %scratch = getelementptr inbounds %struct.cqp_cmds_info, ptr %call, i32 0, i32 3, i32 0, i32 0, i32 1
  %7 = ptrtoint ptr %scratch to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %conv, ptr %scratch, align 8
  %call10 = tail call i32 @irdma_handle_cqp_op(ptr noundef %rf, ptr noundef nonnull %call) #9
  tail call void @irdma_put_cqp_request(ptr noundef %cqp, ptr noundef nonnull %call) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @irdma_flush_wqes(ptr noundef %iwqp, i32 noundef %flush_mask) local_unnamed_addr #0 align 64 {
entry:
  %info = alloca %struct.irdma_qp_flush_info, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %info) #9
  %0 = call ptr @memset(ptr %info, i32 0, i32 12)
  %iwdev = getelementptr inbounds %struct.irdma_qp, ptr %iwqp, i32 0, i32 3
  %1 = ptrtoint ptr %iwdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %iwdev, align 8
  %rf1 = getelementptr inbounds %struct.irdma_device, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %rf1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rf1, align 8
  %sc_qp = getelementptr inbounds %struct.irdma_qp, ptr %iwqp, i32 0, i32 2
  %flush_code2 = getelementptr inbounds %struct.irdma_qp, ptr %iwqp, i32 0, i32 2, i32 28
  %5 = ptrtoint ptr %flush_code2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flush_code2, align 4
  %conv = trunc i32 %6 to i8
  %and = and i32 %flush_mask, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %7 = and i32 %flush_mask, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %sq = getelementptr inbounds %struct.irdma_qp_flush_info, ptr %info, i32 0, i32 6
  %9 = trunc i32 %flush_mask to i8
  %10 = ptrtoint ptr %sq to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %sq, align 1
  %bf.shl = shl i8 %9, 7
  %bf.clear = and i8 %bf.load, 63
  %bf.set = or i8 %bf.clear, %bf.shl
  %11 = shl i8 %9, 5
  %bf.shl11 = and i8 %11, 64
  %bf.set13 = or i8 %bf.set, %bf.shl11
  %and15 = and i32 %flush_mask, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end.if.end37_crit_edge, label %if.then17

if.end.if.end37_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.then17:                                        ; preds = %if.end
  br i1 %tobool.not, label %if.then17.if.end25_crit_edge, label %if.then20

if.then17.if.end25_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then20:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  %flush_sq = getelementptr inbounds %struct.irdma_qp, ptr %iwqp, i32 0, i32 2, i32 26
  %12 = ptrtoint ptr %flush_sq to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %bf.load22 = load i16, ptr %flush_sq, align 1
  %bf.clear23 = and i16 %bf.load22, -257
  store i16 %bf.clear23, ptr %flush_sq, align 1
  br label %if.end25

if.end25:                                         ; preds = %if.then20, %if.then17.if.end25_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.shl11)
  %bf.cast30.not = icmp eq i8 %bf.shl11, 0
  br i1 %bf.cast30.not, label %if.end25.if.end37_crit_edge, label %if.then31

if.end25.if.end37_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.then31:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %flush_rq = getelementptr inbounds %struct.irdma_qp, ptr %iwqp, i32 0, i32 2, i32 26
  %13 = ptrtoint ptr %flush_rq to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %bf.load33 = load i16, ptr %flush_rq, align 1
  %bf.clear34 = and i16 %bf.load33, -129
  store i16 %bf.clear34, ptr %flush_rq, align 1
  br label %if.end37

if.end37:                                         ; preds = %if.then31, %if.end25.if.end37_crit_edge, %if.end.if.end37_crit_edge
  %sq_major_code = getelementptr inbounds %struct.irdma_qp_flush_info, ptr %info, i32 0, i32 1
  %14 = ptrtoint ptr %sq_major_code to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %sq_major_code, align 2
  %15 = ptrtoint ptr %info to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %info, align 2
  %rq_major_code = getelementptr inbounds %struct.irdma_qp_flush_info, ptr %info, i32 0, i32 3
  %16 = ptrtoint ptr %rq_major_code to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %rq_major_code, align 2
  %rq_minor_code = getelementptr inbounds %struct.irdma_qp_flush_info, ptr %info, i32 0, i32 2
  %17 = ptrtoint ptr %rq_minor_code to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %rq_minor_code, align 2
  %bf.set40 = or i8 %bf.set13, 32
  %18 = ptrtoint ptr %sq to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %bf.set40, ptr %sq, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv)
  %tobool41.not = icmp eq i8 %conv, 0
  br i1 %tobool41.not, label %if.end37.if.end76_crit_edge, label %if.then42

if.end37.if.end76_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end76

if.then42:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.set13)
  %bf.cast46.not = icmp sgt i8 %bf.set13, -1
  br i1 %bf.cast46.not, label %if.then42.if.end58_crit_edge, label %land.lhs.true48

if.then42.if.end58_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58

land.lhs.true48:                                  ; preds = %if.then42
  %sq_flush_code = getelementptr inbounds %struct.irdma_qp, ptr %iwqp, i32 0, i32 2, i32 26
  %19 = ptrtoint ptr %sq_flush_code to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %bf.load50 = load i16, ptr %sq_flush_code, align 1
  %20 = and i16 %bf.load50, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %bf.cast53.not = icmp eq i16 %20, 0
  br i1 %bf.cast53.not, label %land.lhs.true48.if.end58_crit_edge, label %if.then55

land.lhs.true48.if.end58_crit_edge:               ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58

if.then55:                                        ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #11
  %21 = trunc i32 %6 to i16
  %conv56 = and i16 %21, 255
  %22 = ptrtoint ptr %info to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv56, ptr %info, align 2
  br label %if.end58

if.end58:                                         ; preds = %if.then55, %land.lhs.true48.if.end58_crit_edge, %if.then42.if.end58_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.shl11)
  %bf.cast63.not = icmp eq i8 %bf.shl11, 0
  br i1 %bf.cast63.not, label %if.end58.if.end76_crit_edge, label %land.lhs.true65

if.end58.if.end76_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end76

land.lhs.true65:                                  ; preds = %if.end58
  %rq_flush_code = getelementptr inbounds %struct.irdma_qp, ptr %iwqp, i32 0, i32 2, i32 26
  %23 = ptrtoint ptr %rq_flush_code to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %bf.load67 = load i16, ptr %rq_flush_code, align 1
  %24 = and i16 %bf.load67, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %bf.cast70.not = icmp eq i16 %24, 0
  br i1 %bf.cast70.not, label %land.lhs.true65.if.end76_crit_edge, label %if.then72

land.lhs.true65.if.end76_crit_edge:               ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end76

if.then72:                                        ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #11
  %25 = trunc i32 %6 to i16
  %conv73 = and i16 %25, 255
  %26 = ptrtoint ptr %rq_minor_code to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv73, ptr %rq_minor_code, align 2
  br label %if.end76

if.end76:                                         ; preds = %if.then72, %land.lhs.true65.if.end76_crit_edge, %if.end58.if.end76_crit_edge, %if.end37.if.end76_crit_edge
  %and78 = and i32 %flush_mask, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %tobool79 = icmp ne i32 %and78, 0
  %call = call i32 @irdma_hw_flush_wqes(ptr noundef %4, ptr noundef %sc_qp, ptr noundef nonnull %info, i1 noundef zeroext %tobool79)
  %flush_issued = getelementptr inbounds %struct.irdma_qp, ptr %iwqp, i32 0, i32 30
  %27 = ptrtoint ptr %flush_issued to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load80 = load i8, ptr %flush_issued, align 8
  %bf.set82 = or i8 %bf.load80, 16
  store i8 %bf.set82, ptr %flush_issued, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end76, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %info) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irdma_puda_create_rsrc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irdma_cqp_aeq_cmd(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @to_ibdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__irq_apply_affinity_hint(i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irdma_unmap_vm_page_list(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irdma_free_pble(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irdma_cqp_ceq_cmd(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @irdma_destroy_ceq(ptr noundef %rf, ptr noundef %iwceq) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_dev = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 42
  %0 = ptrtoint ptr %rf to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %rf, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %if.end, label %entry.exit_crit_edge

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.end:                                           ; preds = %entry
  %call = tail call i32 @irdma_sc_ceq_destroy(ptr noundef %iwceq, i64 noundef 0, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end9, label %do.body

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_destroy_ceq.__UNIQUE_ID_ddebug687, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_destroy_ceq, %if.then6)) #9
          to label %exit [label %if.then6], !srcloc !179

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %call7 = tail call ptr @to_ibdev(ptr noundef %sc_dev) #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_destroy_ceq.__UNIQUE_ID_ddebug687, ptr noundef %call7, ptr noundef nonnull @.str.29, i32 noundef %call) #9
  br label %exit

if.end9:                                          ; preds = %if.end
  %call11 = tail call i32 @irdma_sc_cceq_destroy_done(ptr noundef %iwceq) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end9.exit_crit_edge, label %do.body14

if.end9.exit_crit_edge:                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

do.body14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_destroy_ceq.__UNIQUE_ID_ddebug688, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_destroy_ceq, %if.then26)) #9
          to label %exit [label %if.then26], !srcloc !179

if.then26:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #11
  %call27 = tail call ptr @to_ibdev(ptr noundef %sc_dev) #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_destroy_ceq.__UNIQUE_ID_ddebug688, ptr noundef %call27, ptr noundef nonnull @.str.30, i32 noundef %call11) #9
  br label %exit

exit:                                             ; preds = %if.then26, %do.body14, %if.end9.exit_crit_edge, %if.then6, %do.body, %entry.exit_crit_edge
  %hw = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 42, i32 8
  %1 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hw, align 8
  %device = getelementptr inbounds %struct.irdma_hw, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %device, align 4
  %mem = getelementptr inbounds %struct.irdma_ceq, ptr %iwceq, i32 0, i32 1
  %size = getelementptr inbounds %struct.irdma_ceq, ptr %iwceq, i32 0, i32 1, i32 2
  %5 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %size, align 8
  %7 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mem, align 8
  %pa = getelementptr inbounds %struct.irdma_ceq, ptr %iwceq, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %pa to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pa, align 4
  tail call void @dma_free_attrs(ptr noundef %4, i32 noundef %6, ptr noundef %8, i32 noundef %10, i32 noundef 0) #9
  %11 = ptrtoint ptr %mem to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %mem, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irdma_sc_ceq_destroy(ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irdma_sc_cceq_destroy_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irdma_sc_ccq_destroy(ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irdma_sc_del_hmc_obj(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irdma_sc_cqp_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irdma_cleanup_pending_cqp_op(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @irdma_receive_ilq(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irdma_free_sqbuf(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @irdma_create_ceq(ptr noundef %rf, ptr noundef %iwceq, i32 noundef %ceq_id, ptr noundef %vsi) unnamed_addr #0 align 64 {
entry:
  %info = alloca %struct.irdma_ceq_init_info, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %info) #9
  %0 = getelementptr inbounds i8, ptr %info, i32 16
  %1 = call ptr @memset(ptr %0, i32 0, i32 32)
  %sc_dev = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 42
  %rf2 = getelementptr inbounds %struct.irdma_ceq, ptr %iwceq, i32 0, i32 4
  %2 = ptrtoint ptr %rf2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %rf, ptr %rf2, align 4
  %hmc_info = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 42, i32 26
  %3 = ptrtoint ptr %hmc_info to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hmc_info, align 8
  %hmc_obj = getelementptr inbounds %struct.irdma_hmc_info, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %hmc_obj to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hmc_obj, align 4
  %cnt = getelementptr %struct.irdma_hmc_obj_info, ptr %6, i32 1, i32 2
  %7 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cnt, align 4
  %max_hw_ceq_size = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 42, i32 25, i32 8
  %9 = ptrtoint ptr %max_hw_ceq_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_hw_ceq_size, align 8
  %11 = tail call i32 @llvm.umin.i32(i32 %8, i32 %10)
  %mul = shl i32 %11, 3
  %add = add i32 %mul, 255
  %and = and i32 %add, -256
  %mem = getelementptr inbounds %struct.irdma_ceq, ptr %iwceq, i32 0, i32 1
  %size = getelementptr inbounds %struct.irdma_ceq, ptr %iwceq, i32 0, i32 1, i32 2
  %12 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and, ptr %size, align 8
  %hw = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 42, i32 8
  %13 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw, align 8
  %device = getelementptr inbounds %struct.irdma_hw, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %device, align 4
  %pa = getelementptr inbounds %struct.irdma_ceq, ptr %iwceq, i32 0, i32 1, i32 1
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %16, i32 noundef %and, ptr noundef %pa, i32 noundef 3264, i32 noundef 0) #9
  %17 = ptrtoint ptr %mem to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i, ptr %mem, align 8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %ceq_id1 = getelementptr inbounds %struct.irdma_ceq_init_info, ptr %info, i32 0, i32 5
  %18 = ptrtoint ptr %ceq_id1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %ceq_id, ptr %ceq_id1, align 8
  %ceqe_base = getelementptr inbounds %struct.irdma_ceq_init_info, ptr %info, i32 0, i32 2
  %19 = ptrtoint ptr %ceqe_base to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i, ptr %ceqe_base, align 4
  %20 = ptrtoint ptr %pa to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pa, align 4
  %conv = zext i32 %21 to i64
  %22 = ptrtoint ptr %info to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %conv, ptr %info, align 8
  %elem_cnt = getelementptr inbounds %struct.irdma_ceq_init_info, ptr %info, i32 0, i32 4
  %23 = ptrtoint ptr %elem_cnt to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %11, ptr %elem_cnt, align 4
  %ceq_id15 = getelementptr inbounds %struct.irdma_sc_ceq, ptr %iwceq, i32 0, i32 5
  %24 = ptrtoint ptr %ceq_id15 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %ceq_id, ptr %ceq_id15, align 4
  %dev16 = getelementptr inbounds %struct.irdma_ceq_init_info, ptr %info, i32 0, i32 1
  %25 = ptrtoint ptr %dev16 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %sc_dev, ptr %dev16, align 8
  %vsi17 = getelementptr inbounds %struct.irdma_ceq_init_info, ptr %info, i32 0, i32 10
  %26 = ptrtoint ptr %vsi17 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %vsi, ptr %vsi17, align 4
  %cqp = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 46
  %27 = ptrtoint ptr %cqp to i32
  %conv18 = zext i32 %27 to i64
  %call20 = call i32 @irdma_sc_ceq_init(ptr noundef %iwceq, ptr noundef nonnull %info) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.then22, label %if.end.if.then32_crit_edge

if.end.if.then32_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then32

if.then22:                                        ; preds = %if.end
  %ceq_valid = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 42, i32 38
  %28 = ptrtoint ptr %ceq_valid to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load = load i8, ptr %ceq_valid, align 8
  %29 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %bf.cast.not = icmp eq i8 %29, 0
  br i1 %bf.cast.not, label %if.else, label %if.then23

if.then23:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  %call26 = call i32 @irdma_cqp_ceq_cmd(ptr noundef %sc_dev, ptr noundef %iwceq, i8 noundef zeroext 5) #9
  br label %if.end30

if.else:                                          ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  %call28 = call i32 @irdma_sc_cceq_create(ptr noundef %iwceq, i64 noundef %conv18) #9
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.then23
  %status.0 = phi i32 [ %call26, %if.then23 ], [ %call28, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.0)
  %tobool31.not = icmp eq i32 %status.0, 0
  br i1 %tobool31.not, label %if.end30.cleanup_crit_edge, label %if.end30.if.then32_crit_edge

if.end30.if.then32_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then32

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then32:                                        ; preds = %if.end30.if.then32_crit_edge, %if.end.if.then32_crit_edge
  %status.081 = phi i32 [ %status.0, %if.end30.if.then32_crit_edge ], [ %call20, %if.end.if.then32_crit_edge ]
  %30 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hw, align 8
  %device34 = getelementptr inbounds %struct.irdma_hw, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %device34 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %device34, align 4
  %34 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %size, align 8
  %36 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mem, align 8
  %38 = ptrtoint ptr %pa to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pa, align 4
  call void @dma_free_attrs(ptr noundef %33, i32 noundef %35, ptr noundef %37, i32 noundef %39, i32 noundef 0) #9
  %40 = ptrtoint ptr %mem to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %mem, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then32, %if.end30.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -9, %entry.cleanup_crit_edge ], [ %status.081, %if.then32 ], [ 0, %if.end30.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %info) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @irdma_cfg_ceq_vector(ptr noundef %rf, ptr noundef %iwceq, i32 noundef %ceq_id, ptr noundef %msix_vec) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rf to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %rf, align 8
  %1 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %bf.cast.not = icmp ne i8 %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ceq_id)
  %tobool.not = icmp eq i32 %ceq_id, 0
  %or.cond = and i1 %tobool.not, %bf.cast.not
  br i1 %or.cond, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dpc_tasklet = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 60
  tail call void @tasklet_setup(ptr noundef %dpc_tasklet, ptr noundef nonnull @irdma_dpc) #9
  %irq = getelementptr inbounds %struct.irdma_msix_vector, ptr %msix_vec, i32 0, i32 1
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %3, ptr noundef nonnull @irdma_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.42, ptr noundef %rf) #9
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dpc_tasklet1 = getelementptr inbounds %struct.irdma_ceq, ptr %iwceq, i32 0, i32 5
  tail call void @tasklet_setup(ptr noundef %dpc_tasklet1, ptr noundef nonnull @irdma_ceq_dpc) #9
  %irq2 = getelementptr inbounds %struct.irdma_msix_vector, ptr %msix_vec, i32 0, i32 1
  %4 = ptrtoint ptr %irq2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq2, align 4
  %call.i35 = tail call i32 @request_threaded_irq(i32 noundef %5, ptr noundef nonnull @irdma_ceq_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.43, ptr noundef %iwceq) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %status.0 = phi i32 [ %call.i35, %if.else ], [ %call.i, %if.then ]
  %mask = getelementptr inbounds %struct.irdma_msix_vector, ptr %msix_vec, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %6 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i = add i32 %6, 31
  %7 = lshr i32 %sub.i.i, 3
  %mul.i.i = and i32 %7, 536870908
  %8 = call ptr @memset(ptr %mask, i32 0, i32 %mul.i.i)
  %cpu_affinity = getelementptr inbounds %struct.irdma_msix_vector, ptr %msix_vec, i32 0, i32 2
  %9 = ptrtoint ptr %cpu_affinity to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu_affinity, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %10)
  %cmp.not.i.i.i = icmp ugt i32 %6, %10
  br i1 %cmp.not.i.i.i, label %if.end.cpumask_set_cpu.exit_crit_edge, label %land.rhs.i.i.i

if.end.cpumask_set_cpu.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpumask_set_cpu.exit

land.rhs.i.i.i:                                   ; preds = %if.end
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %land.rhs.i.i.i.cpumask_set_cpu.exit_crit_edge, label %if.then.i.i.i, !prof !187

land.rhs.i.i.i.cpumask_set_cpu.exit_crit_edge:    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpumask_set_cpu.exit

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.55, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpumask_set_cpu.exit

cpumask_set_cpu.exit:                             ; preds = %if.then.i.i.i, %land.rhs.i.i.i.cpumask_set_cpu.exit_crit_edge, %if.end.cpumask_set_cpu.exit_crit_edge
  tail call void @_set_bit(i32 noundef %10, ptr noundef %mask) #9
  %irq5 = getelementptr inbounds %struct.irdma_msix_vector, ptr %msix_vec, i32 0, i32 1
  %11 = ptrtoint ptr %irq5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irq5, align 4
  %call.i36 = tail call i32 @__irq_apply_affinity_hint(i32 noundef %12, ptr noundef %mask, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.0)
  %tobool8.not = icmp eq i32 %status.0, 0
  br i1 %tobool8.not, label %if.end16, label %do.body

do.body:                                          ; preds = %cpumask_set_cpu.exit
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_cfg_ceq_vector.__UNIQUE_ID_ddebug694, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_cfg_ceq_vector, %if.then14)) #9
          to label %cleanup [label %if.then14], !srcloc !179

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %iwdev = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 71
  %13 = ptrtoint ptr %iwdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %iwdev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_cfg_ceq_vector.__UNIQUE_ID_ddebug694, ptr noundef %14, ptr noundef nonnull @.str.45) #9
  br label %cleanup

if.end16:                                         ; preds = %cpumask_set_cpu.exit
  call void @__sanitizer_cov_trace_pc() #11
  %ceq_id17 = getelementptr inbounds %struct.irdma_msix_vector, ptr %msix_vec, i32 0, i32 3
  %15 = ptrtoint ptr %ceq_id17 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %ceq_id, ptr %ceq_id17, align 4
  %sc_dev = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 42
  %irq_ops = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 42, i32 31
  %16 = ptrtoint ptr %irq_ops to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %irq_ops, align 8
  %irdma_cfg_ceq = getelementptr inbounds %struct.irdma_irq_ops, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %irdma_cfg_ceq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %irdma_cfg_ceq, align 4
  %20 = ptrtoint ptr %msix_vec to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %msix_vec, align 4
  tail call void %19(ptr noundef %sc_dev, i32 noundef %ceq_id, i32 noundef %21, i1 noundef zeroext true) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then14, %do.body
  %retval.0 = phi i32 [ 0, %if.end16 ], [ -4, %if.then14 ], [ -4, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irdma_sc_ceq_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irdma_sc_cceq_create(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @irdma_dpc(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -23840
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %add.ptr, align 8
  %1 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %bf.cast.not = icmp eq i8 %1, 0
  br i1 %bf.cast.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %ceqlist = getelementptr i8, ptr %t, i32 -376
  %2 = ptrtoint ptr %ceqlist to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ceqlist, align 8
  tail call fastcc void @irdma_process_ceq(ptr noundef %add.ptr, ptr noundef %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call fastcc void @irdma_process_aeq(ptr noundef %add.ptr)
  %sc_dev = getelementptr i8, ptr %t, i32 -23680
  %iw_msixtbl = getelementptr i8, ptr %t, i32 -8
  %4 = ptrtoint ptr %iw_msixtbl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iw_msixtbl, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %irq_ops.i = getelementptr i8, ptr %t, i32 -17608
  %8 = ptrtoint ptr %irq_ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %irq_ops.i, align 8
  %irdma_en_irq.i = getelementptr inbounds %struct.irdma_irq_ops, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %irdma_en_irq.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %irdma_en_irq.i, align 4
  tail call void %11(ptr noundef %sc_dev, i32 noundef %7) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @irdma_irq_handler(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.irdma_pci_f, ptr %data, i32 0, i32 60, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.tasklet_schedule.exit_crit_edge

entry.tasklet_schedule.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %tasklet_schedule.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dpc_tasklet = getelementptr inbounds %struct.irdma_pci_f, ptr %data, i32 0, i32 60
  tail call void @__tasklet_schedule(ptr noundef %dpc_tasklet) #9
  br label %tasklet_schedule.exit

tasklet_schedule.exit:                            ; preds = %if.then.i, %entry.tasklet_schedule.exit_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @irdma_ceq_dpc(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -144
  %rf1 = getelementptr i8, ptr %t, i32 -4
  %0 = ptrtoint ptr %rf1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rf1, align 4
  tail call fastcc void @irdma_process_ceq(ptr noundef %1, ptr noundef %add.ptr)
  %sc_dev = getelementptr inbounds %struct.irdma_pci_f, ptr %1, i32 0, i32 42
  %msix_idx = getelementptr i8, ptr %t, i32 -8
  %2 = ptrtoint ptr %msix_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msix_idx, align 8
  %irq_ops.i = getelementptr inbounds %struct.irdma_pci_f, ptr %1, i32 0, i32 42, i32 31
  %4 = ptrtoint ptr %irq_ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq_ops.i, align 8
  %irdma_en_irq.i = getelementptr inbounds %struct.irdma_irq_ops, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %irdma_en_irq.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irdma_en_irq.i, align 4
  tail call void %7(ptr noundef %sc_dev, i32 noundef %3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @irdma_ceq_handler(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %irq1 = getelementptr inbounds %struct.irdma_ceq, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %irq1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %irq)
  %cmp.not = icmp eq i32 %1, %irq
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %rf = getelementptr inbounds %struct.irdma_ceq, ptr %data, i32 0, i32 4
  %2 = ptrtoint ptr %rf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rf, align 4
  %sc_dev = getelementptr inbounds %struct.irdma_pci_f, ptr %3, i32 0, i32 42
  %call = tail call ptr @to_ibdev(ptr noundef %sc_dev) #9
  %4 = ptrtoint ptr %irq1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq1, align 4
  tail call void (ptr, ptr, ...) @ibdev_err(ptr noundef %call, ptr noundef nonnull @.str.54, i32 noundef %5, i32 noundef %irq) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %state.i = getelementptr inbounds %struct.irdma_ceq, ptr %data, i32 0, i32 5, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.tasklet_schedule.exit_crit_edge

if.end.tasklet_schedule.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %tasklet_schedule.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dpc_tasklet = getelementptr inbounds %struct.irdma_ceq, ptr %data, i32 0, i32 5
  tail call void @__tasklet_schedule(ptr noundef %dpc_tasklet) #9
  br label %tasklet_schedule.exit

tasklet_schedule.exit:                            ; preds = %if.then.i, %if.end.tasklet_schedule.exit_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @irdma_process_ceq(ptr noundef %rf, ptr noundef %ceq) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_dev = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 42
  %ce_lock = getelementptr inbounds %struct.irdma_ceq, ptr %ceq, i32 0, i32 6
  %call447 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ce_lock) #9
  %call748 = tail call ptr @irdma_sc_process_ceq(ptr noundef %sc_dev, ptr noundef %ceq) #9
  %tobool.not49 = icmp eq ptr %call748, null
  br i1 %tobool.not49, label %entry.if.then_crit_edge, label %if.end.lr.ph

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.end.lr.ph:                                     ; preds = %entry
  %cqp_cmpl_wq = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 66
  %cqp_cmpl_work = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 67
  br label %if.end

if.then:                                          ; preds = %do.cond32.if.then_crit_edge, %entry.if.then_crit_edge
  %call4.lcssa = phi i32 [ %call447, %entry.if.then_crit_edge ], [ %call4, %do.cond32.if.then_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ce_lock, i32 noundef %call4.lcssa) #9
  ret void

if.end:                                           ; preds = %do.cond32.if.end_crit_edge, %if.end.lr.ph
  %call751 = phi ptr [ %call748, %if.end.lr.ph ], [ %call7, %do.cond32.if.end_crit_edge ]
  %call450 = phi i32 [ %call447, %if.end.lr.ph ], [ %call4, %do.cond32.if.end_crit_edge ]
  %cq_type = getelementptr inbounds %struct.irdma_sc_cq, ptr %call751, i32 0, i32 10
  %0 = ptrtoint ptr %cq_type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cq_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp10 = icmp eq i8 %1, 1
  br i1 %cmp10, label %if.then12, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then12:                                        ; preds = %if.end
  %back_cq.i = getelementptr inbounds %struct.irdma_sc_cq, ptr %call751, i32 0, i32 6
  %2 = ptrtoint ptr %back_cq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back_cq.i, align 4
  %user_mode.i = getelementptr inbounds %struct.irdma_cq, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %user_mode.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %user_mode.i, align 2, !range !180
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then12.if.end.i_crit_edge

if.then12.if.end.i_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  %armed.i = getelementptr inbounds %struct.irdma_cq, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %armed.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %armed.i, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then12.if.end.i_crit_edge
  %comp_handler.i = getelementptr inbounds %struct.ib_cq, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %comp_handler.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %comp_handler.i, align 8
  %tobool1.not.i = icmp eq ptr %8, null
  br i1 %tobool1.not.i, label %if.end.i.if.end13_crit_edge, label %if.then2.i

if.end.i.if.end13_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %cq_context.i = getelementptr inbounds %struct.ib_cq, ptr %3, i32 0, i32 4
  %9 = ptrtoint ptr %cq_context.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cq_context.i, align 8
  tail call void %8(ptr noundef %3, ptr noundef %10) #9
  br label %if.end13

if.end13:                                         ; preds = %if.then2.i, %if.end.i.if.end13_crit_edge, %if.end.if.end13_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ce_lock, i32 noundef %call450) #9
  %11 = ptrtoint ptr %cq_type to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %cq_type, align 1
  %13 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.88)
  switch i8 %12, label %if.end13.do.cond32_crit_edge [
    i8 4, label %if.then19
    i8 2, label %if.end13.if.then29_crit_edge
    i8 3, label %if.end13.if.then29_crit_edge59
  ]

if.end13.if.then29_crit_edge59:                   ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then29

if.end13.if.then29_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then29

if.end13.do.cond32_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond32

if.then19:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %cqp_cmpl_wq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cqp_cmpl_wq, align 4
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %15, ptr noundef %cqp_cmpl_work) #9
  br label %do.cond32

if.then29:                                        ; preds = %if.end13.if.then29_crit_edge, %if.end13.if.then29_crit_edge59
  tail call fastcc void @irdma_puda_ce_handler(ptr noundef %rf, ptr noundef nonnull %call751)
  br label %do.cond32

do.cond32:                                        ; preds = %if.then29, %if.then19, %if.end13.do.cond32_crit_edge
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ce_lock) #9
  %call7 = tail call ptr @irdma_sc_process_ceq(ptr noundef %sc_dev, ptr noundef %ceq) #9
  %tobool.not = icmp eq ptr %call7, null
  br i1 %tobool.not, label %do.cond32.if.then_crit_edge, label %do.cond32.if.end_crit_edge

do.cond32.if.end_crit_edge:                       ; preds = %do.cond32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.cond32.if.then_crit_edge:                      ; preds = %do.cond32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @irdma_process_aeq(ptr noundef %rf) unnamed_addr #0 align 64 {
entry:
  %info.i406 = alloca %struct.irdma_modify_qp_info, align 8
  %info.i388 = alloca %struct.irdma_modify_qp_info, align 8
  %info.i = alloca %struct.irdma_modify_qp_info, align 8
  %aeinfo = alloca %struct.irdma_aeqe_info, align 8
  %ibevent = alloca %struct.ib_event, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_dev = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 42
  %aeq1 = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 48
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %aeinfo) #9
  %iwdev3 = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 71
  %0 = ptrtoint ptr %iwdev3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iwdev3, align 8
  %2 = ptrtoint ptr %aeq1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %aeq1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body.preheader:                                ; preds = %entry
  %4 = call ptr @memset(ptr %aeinfo, i32 0, i32 24)
  %call422 = call i32 @irdma_sc_get_next_aeqe(ptr noundef %aeq1, ptr noundef nonnull %aeinfo) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call422)
  %tobool4.not423 = icmp eq i32 %call422, 0
  br i1 %tobool4.not423, label %if.end6.lr.ph, label %do.body.preheader.cleanup_crit_edge

do.body.preheader.cleanup_crit_edge:              ; preds = %do.body.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6.lr.ph:                                    ; preds = %do.body.preheader
  %ae_id = getelementptr inbounds %struct.irdma_aeqe_info, ptr %aeinfo, i32 0, i32 2
  %qp13 = getelementptr inbounds %struct.irdma_aeqe_info, ptr %aeinfo, i32 0, i32 6
  %qp_cq_id = getelementptr inbounds %struct.irdma_aeqe_info, ptr %aeinfo, i32 0, i32 1
  %tcp_state = getelementptr inbounds %struct.irdma_aeqe_info, ptr %aeinfo, i32 0, i32 4
  %iwarp_state = getelementptr inbounds %struct.irdma_aeqe_info, ptr %aeinfo, i32 0, i32 5
  %ae_src = getelementptr inbounds %struct.irdma_aeqe_info, ptr %aeinfo, i32 0, i32 8
  %qptable_lock = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 54
  %qp_table = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 55
  %qp_suspend_reqs = getelementptr inbounds %struct.irdma_device, ptr %1, i32 0, i32 4, i32 17
  %suspend_wq = getelementptr inbounds %struct.irdma_device, ptr %1, i32 0, i32 19
  %port_data.i398 = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 11
  %5 = getelementptr inbounds %struct.ib_event, ptr %ibevent, i32 0, i32 1
  %6 = getelementptr inbounds %struct.ib_event, ptr %ibevent, i32 0, i32 2
  %next_iwarp_state.i389 = getelementptr inbounds %struct.irdma_modify_qp_info, ptr %info.i388, i32 0, i32 3
  %remove_hash_idx.i390 = getelementptr inbounds %struct.irdma_modify_qp_info, ptr %info.i388, i32 0, i32 6
  %next_iwarp_state.i = getelementptr inbounds %struct.irdma_modify_qp_info, ptr %info.i, i32 0, i32 3
  %remove_hash_idx.i = getelementptr inbounds %struct.irdma_modify_qp_info, ptr %info.i, i32 0, i32 6
  %wqe_idx = getelementptr inbounds %struct.irdma_aeqe_info, ptr %aeinfo, i32 0, i32 3
  %next_iwarp_state.i407 = getelementptr inbounds %struct.irdma_modify_qp_info, ptr %info.i406, i32 0, i32 3
  %remove_hash_idx.i408 = getelementptr inbounds %struct.irdma_modify_qp_info, ptr %info.i406, i32 0, i32 6
  br label %if.end6

if.end6:                                          ; preds = %do.cond254.if.end6_crit_edge, %if.end6.lr.ph
  %iwqp.0427 = phi ptr [ null, %if.end6.lr.ph ], [ %iwqp.2, %do.cond254.if.end6_crit_edge ]
  %aeqcnt.0426 = phi i32 [ 0, %if.end6.lr.ph ], [ %inc, %do.cond254.if.end6_crit_edge ]
  %inc = add i32 %aeqcnt.0426, 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_process_aeq.__UNIQUE_ID_ddebug683, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_process_aeq, %if.then12)) #9
          to label %do.end [label %if.then12], !srcloc !179

if.then12:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %ae_id to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %ae_id, align 4
  %conv = zext i16 %8 to i32
  %9 = ptrtoint ptr %qp13 to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load = load i8, ptr %qp13, align 2
  %bf.load.lobit = lshr i8 %bf.load, 7
  %10 = zext i8 %bf.load.lobit to i32
  %11 = ptrtoint ptr %qp_cq_id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %qp_cq_id, align 8
  %13 = ptrtoint ptr %tcp_state to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %tcp_state, align 8
  %conv15 = zext i8 %14 to i32
  %15 = ptrtoint ptr %iwarp_state to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %iwarp_state, align 1
  %conv16 = zext i8 %16 to i32
  %17 = ptrtoint ptr %ae_src to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %ae_src, align 4
  %conv17 = zext i8 %18 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_process_aeq.__UNIQUE_ID_ddebug683, ptr noundef %1, ptr noundef nonnull @.str.50, i32 noundef %conv, i32 noundef %10, i32 noundef %12, i32 noundef %conv15, i32 noundef %conv16, i32 noundef %conv17) #9
  br label %do.end

do.end:                                           ; preds = %if.then12, %if.end6
  %19 = ptrtoint ptr %qp13 to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load20 = load i8, ptr %qp13, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load20)
  %bf.cast22.not = icmp sgt i8 %bf.load20, -1
  br i1 %bf.cast22.not, label %if.else96, label %do.body25

do.body25:                                        ; preds = %do.end
  %call29 = call i32 @_raw_spin_lock_irqsave(ptr noundef %qptable_lock) #9
  %20 = ptrtoint ptr %qp_table to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %qp_table, align 8
  %22 = ptrtoint ptr %qp_cq_id to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %qp_cq_id, align 8
  %arrayidx = getelementptr ptr, ptr %21, i32 %23
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx, align 4
  %tobool35.not = icmp eq ptr %25, null
  br i1 %tobool35.not, label %if.then36, label %if.end62

if.then36:                                        ; preds = %do.body25
  call void @_raw_spin_unlock_irqrestore(ptr noundef %qptable_lock, i32 noundef %call29) #9
  %26 = ptrtoint ptr %ae_id to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %ae_id, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2304, i16 %27)
  %cmp40 = icmp eq i16 %27, 2304
  br i1 %cmp40, label %if.then42, label %do.body44

if.then42:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %qp_suspend_reqs, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %qp_suspend_reqs, i32 1, i32 3, i32 1) #9
  %28 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %qp_suspend_reqs, ptr %qp_suspend_reqs, i32 1, ptr elementtype(i32) %qp_suspend_reqs) #9, !srcloc !188
  call void @__wake_up(ptr noundef %suspend_wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %do.cond254

do.body44:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_process_aeq.__UNIQUE_ID_ddebug684, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_process_aeq, %if.then56)) #9
          to label %do.cond254 [label %if.then56], !srcloc !179

if.then56:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %qp_cq_id to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %qp_cq_id, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_process_aeq.__UNIQUE_ID_ddebug684, ptr noundef %1, ptr noundef nonnull @.str.51, i32 noundef %30) #9
  br label %do.cond254

if.end62:                                         ; preds = %do.body25
  call void @irdma_qp_add_ref(ptr noundef nonnull %25) #9
  call void @_raw_spin_unlock_irqrestore(ptr noundef %qptable_lock, i32 noundef %call29) #9
  %sc_qp = getelementptr inbounds %struct.irdma_qp, ptr %25, i32 0, i32 2
  %lock = getelementptr inbounds %struct.irdma_qp, ptr %25, i32 0, i32 25
  %call72 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %31 = ptrtoint ptr %tcp_state to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %tcp_state, align 8
  %hw_tcp_state = getelementptr inbounds %struct.irdma_qp, ptr %25, i32 0, i32 35
  %33 = ptrtoint ptr %hw_tcp_state to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %hw_tcp_state, align 1
  %34 = ptrtoint ptr %iwarp_state to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %iwarp_state, align 1
  %hw_iwarp_state = getelementptr inbounds %struct.irdma_qp, ptr %25, i32 0, i32 34
  %36 = ptrtoint ptr %hw_iwarp_state to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %hw_iwarp_state, align 2
  %37 = ptrtoint ptr %ae_id to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %ae_id, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2304, i16 %38)
  %cmp81.not = icmp eq i16 %38, 2304
  br i1 %cmp81.not, label %if.end62.if.end86_crit_edge, label %if.then83

if.end62.if.end86_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end86

if.then83:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  %conv80 = zext i16 %38 to i32
  %last_aeq = getelementptr inbounds %struct.irdma_qp, ptr %25, i32 0, i32 21
  %39 = ptrtoint ptr %last_aeq to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %conv80, ptr %last_aeq, align 4
  br label %if.end86

if.end86:                                         ; preds = %if.then83, %if.end62.if.end86_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call72) #9
  %ctx_info88 = getelementptr inbounds %struct.irdma_qp, ptr %25, i32 0, i32 9
  %iwdev89 = getelementptr inbounds %struct.irdma_qp, ptr %25, i32 0, i32 3
  %40 = ptrtoint ptr %iwdev89 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %iwdev89, align 8
  %port_data.i = getelementptr inbounds %struct.ib_device, ptr %41, i32 0, i32 11
  %42 = ptrtoint ptr %port_data.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %port_data.i, align 8
  %core_cap_flags.i = getelementptr %struct.ib_port_data, ptr %43, i32 1, i32 1, i32 2
  %44 = ptrtoint ptr %core_cap_flags.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %core_cap_flags.i, align 4
  %and.i = and i32 %45, 10485760
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %46 = getelementptr inbounds %struct.irdma_qp, ptr %25, i32 0, i32 9, i32 2
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 4
  br i1 %tobool.i.not, label %if.else, label %if.then92

if.then92:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #11
  %err_rq_idx_valid = getelementptr inbounds %struct.irdma_roce_offload_info, ptr %48, i32 0, i32 6
  %49 = ptrtoint ptr %err_rq_idx_valid to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %err_rq_idx_valid, align 2
  br label %if.end103

if.else:                                          ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #11
  %err_rq_idx_valid93 = getelementptr inbounds %struct.irdma_iwarp_offload_info, ptr %48, i32 0, i32 9
  %50 = ptrtoint ptr %err_rq_idx_valid93 to i32
  call void @__asan_load2_noabort(i32 %50)
  %bf.load94 = load i16, ptr %err_rq_idx_valid93, align 4
  %bf.set = or i16 %bf.load94, 4096
  store i16 %bf.set, ptr %err_rq_idx_valid93, align 4
  br label %if.end103

if.else96:                                        ; preds = %do.end
  %51 = ptrtoint ptr %ae_id to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %ae_id, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 515, i16 %52)
  %cmp99.not = icmp eq i16 %52, 515
  br i1 %cmp99.not, label %if.else96.sw.bb160_crit_edge, label %if.else96.do.cond254_crit_edge

if.else96.do.cond254_crit_edge:                   ; preds = %if.else96
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond254

if.else96.sw.bb160_crit_edge:                     ; preds = %if.else96
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb160

if.end103:                                        ; preds = %if.else, %if.then92
  %53 = ptrtoint ptr %ae_id to i32
  call void @__asan_load2_noabort(i32 %53)
  %.pr = load i16, ptr %ae_id, align 4
  %54 = zext i16 %.pr to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.89)
  switch i16 %.pr, label %if.end103.sw.default_crit_edge [
    i16 1294, label %sw.bb
    i16 1283, label %if.end103.sw.bb111_crit_edge
    i16 514, label %if.end103.sw.bb111_crit_edge440
    i16 1281, label %sw.bb131
    i16 513, label %if.end103.sw.bb137_crit_edge
    i16 1537, label %if.end103.sw.bb137_crit_edge441
    i16 1282, label %sw.bb138
    i16 2304, label %sw.bb144
    i16 1538, label %sw.bb158
    i16 1289, label %sw.bb159
    i16 515, label %if.end103.sw.bb160_crit_edge
    i16 1539, label %if.end103.sw.epilog_crit_edge
    i16 1292, label %if.end103.sw.epilog_crit_edge442
    i16 1312, label %if.end103.sw.epilog_crit_edge443
    i16 284, label %if.end103.sw.bb175_crit_edge
    i16 518, label %if.end103.sw.bb175_crit_edge444
    i16 519, label %if.end103.sw.bb175_crit_edge445
    i16 772, label %if.end103.sw.bb175_crit_edge446
    i16 773, label %if.end103.sw.bb175_crit_edge447
    i16 775, label %if.end103.sw.bb175_crit_edge448
    i16 776, label %if.end103.sw.bb175_crit_edge449
    i16 785, label %if.end103.sw.bb175_crit_edge450
    i16 786, label %if.end103.sw.bb175_crit_edge451
    i16 787, label %if.end103.sw.bb175_crit_edge452
    i16 788, label %if.end103.sw.bb175_crit_edge453
    i16 1025, label %if.end103.sw.bb175_crit_edge454
    i16 1026, label %if.end103.sw.bb175_crit_edge455
    i16 1027, label %if.end103.sw.bb175_crit_edge456
    i16 1285, label %if.end103.sw.bb175_crit_edge457
    i16 1287, label %if.end103.sw.bb175_crit_edge458
    i16 1288, label %if.end103.sw.bb175_crit_edge459
    i16 1290, label %if.end103.sw.bb175_crit_edge460
    i16 1792, label %if.end103.sw.bb175_crit_edge461
    i16 1793, label %if.end103.sw.bb175_crit_edge462
    i16 1794, label %if.end103.sw.bb175_crit_edge463
    i16 306, label %if.end103.sw.bb175_crit_edge464
  ]

if.end103.sw.bb175_crit_edge464:                  ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb175

if.end103.sw.bb175_crit_edge463:                  ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb175

if.end103.sw.bb175_crit_edge462:                  ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb175

if.end103.sw.bb175_crit_edge461:                  ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb175

if.end103.sw.bb175_crit_edge460:                  ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb175

if.end103.sw.bb175_crit_edge459:                  ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb175

if.end103.sw.bb175_crit_edge458:                  ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb175

if.end103.sw.bb175_crit_edge457:                  ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb175

if.end103.sw.bb175_crit_edge456:                  ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb175

if.end103.sw.bb175_crit_edge455:                  ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb175

if.end103.sw.bb175_crit_edge454:                  ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb175

if.end103.sw.bb175_crit_edge453:                  ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb175

if.end103.sw.bb175_crit_edge452:                  ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb175

if.end103.sw.bb175_crit_edge451:                  ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb175

if.end103.sw.bb175_crit_edge450:                  ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb175

if.end103.sw.bb175_crit_edge449:                  ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb175

if.end103.sw.bb175_crit_edge448:                  ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb175

if.end103.sw.bb175_crit_edge447:                  ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb175

if.end103.sw.bb175_crit_edge446:                  ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb175

if.end103.sw.bb175_crit_edge445:                  ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb175

if.end103.sw.bb175_crit_edge444:                  ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb175

if.end103.sw.bb175_crit_edge:                     ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb175

if.end103.sw.epilog_crit_edge443:                 ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end103.sw.epilog_crit_edge442:                 ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end103.sw.epilog_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end103.sw.bb160_crit_edge:                     ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb160

if.end103.sw.bb137_crit_edge441:                  ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb137

if.end103.sw.bb137_crit_edge:                     ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb137

if.end103.sw.bb111_crit_edge440:                  ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb111

if.end103.sw.bb111_crit_edge:                     ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb111

if.end103.sw.default_crit_edge:                   ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.default

sw.bb:                                            ; preds = %if.end103
  %cm_node106 = getelementptr inbounds %struct.irdma_qp, ptr %25, i32 0, i32 16
  %55 = ptrtoint ptr %cm_node106 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %cm_node106, align 8
  %accept_pend = getelementptr inbounds %struct.irdma_cm_node, ptr %56, i32 0, i32 31
  %57 = ptrtoint ptr %accept_pend to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %accept_pend, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool107.not = icmp eq i32 %58, 0
  br i1 %tobool107.not, label %sw.bb.if.end110_crit_edge, label %if.then108

sw.bb.if.end110_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end110

if.then108:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %listener = getelementptr inbounds %struct.irdma_cm_node, ptr %56, i32 0, i32 7
  %59 = ptrtoint ptr %listener to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %listener, align 4
  %pend_accepts_cnt = getelementptr inbounds %struct.irdma_cm_listener, ptr %60, i32 0, i32 8
  %call.i.i384 = call zeroext i1 @__kasan_check_write(ptr noundef %pend_accepts_cnt, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %pend_accepts_cnt, i32 1, i32 3, i32 1) #9
  %61 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pend_accepts_cnt, ptr %pend_accepts_cnt, i32 1, ptr elementtype(i32) %pend_accepts_cnt) #9, !srcloc !188
  %62 = ptrtoint ptr %accept_pend to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %accept_pend, align 4
  br label %if.end110

if.end110:                                        ; preds = %if.then108, %sw.bb.if.end110_crit_edge
  %rts_ae_rcvd = getelementptr inbounds %struct.irdma_qp, ptr %25, i32 0, i32 45
  %63 = ptrtoint ptr %rts_ae_rcvd to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 1, ptr %rts_ae_rcvd, align 4
  %waitq = getelementptr inbounds %struct.irdma_qp, ptr %25, i32 0, i32 43
  call void @__wake_up(ptr noundef %waitq, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  br label %sw.epilog

sw.bb111:                                         ; preds = %if.end103.sw.bb111_crit_edge, %if.end103.sw.bb111_crit_edge440
  %term_flags = getelementptr inbounds %struct.irdma_qp, ptr %25, i32 0, i32 2, i32 30
  %64 = ptrtoint ptr %term_flags to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %term_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool112.not = icmp eq i8 %65, 0
  br i1 %tobool112.not, label %if.end114, label %sw.bb111.sw.epilog_crit_edge

sw.bb111.sw.epilog_crit_edge:                     ; preds = %sw.bb111
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end114:                                        ; preds = %sw.bb111
  %close_timer_started = getelementptr inbounds %struct.irdma_qp, ptr %25, i32 0, i32 24
  %call.i.i385 = call zeroext i1 @__kasan_check_write(ptr noundef %close_timer_started, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !189
  call void @llvm.prefetch.p0(ptr %close_timer_started, i32 1, i32 3, i32 1) #9
  %66 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %close_timer_started, ptr %close_timer_started, i32 1, ptr elementtype(i32) %close_timer_started) #9, !srcloc !190
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %66, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !191
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i)
  %cmp116 = icmp eq i32 %asmresult.i.i.i.i, 1
  br i1 %cmp116, label %if.then118, label %if.end114.sw.epilog_crit_edge

if.end114.sw.epilog_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then118:                                       ; preds = %if.end114
  %hw_tcp_state119 = getelementptr inbounds %struct.irdma_qp, ptr %25, i32 0, i32 35
  %67 = ptrtoint ptr %hw_tcp_state119 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 6, ptr %hw_tcp_state119, align 1
  %ibqp_state = getelementptr inbounds %struct.irdma_qp, ptr %25, i32 0, i32 19
  %68 = ptrtoint ptr %ibqp_state to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %ibqp_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %69)
  %cmp124 = icmp eq i32 %69, 3
  br i1 %cmp124, label %if.then126, label %if.then118.if.end127_crit_edge

if.then118.if.end127_crit_edge:                   ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end127

if.then126:                                       ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %info.i) #9
  %70 = call ptr @memset(ptr %info.i, i32 0, i32 24)
  %71 = ptrtoint ptr %next_iwarp_state.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 3, ptr %next_iwarp_state.i, align 2
  %72 = ptrtoint ptr %remove_hash_idx.i to i32
  call void @__asan_storeN_noabort(i32 %72, i32 2)
  store i16 6528, ptr %remove_hash_idx.i, align 1
  %hw_iwarp_state.i = getelementptr inbounds %struct.irdma_qp, ptr %25, i32 0, i32 34
  %73 = ptrtoint ptr %hw_iwarp_state.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 3, ptr %hw_iwarp_state.i, align 2
  %iwdev.i = getelementptr inbounds %struct.irdma_qp, ptr %25, i32 0, i32 3
  %74 = ptrtoint ptr %iwdev.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %iwdev.i, align 8
  %call.i = call i32 @irdma_hw_modify_qp(ptr noundef %75, ptr noundef nonnull %25, ptr noundef nonnull %info.i, i1 noundef zeroext false) #9
  %76 = ptrtoint ptr %next_iwarp_state.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %next_iwarp_state.i, align 2
  %iwarp_state.i = getelementptr inbounds %struct.irdma_qp, ptr %25, i32 0, i32 31
  %78 = ptrtoint ptr %iwarp_state.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %77, ptr %iwarp_state.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %info.i) #9
  call void @irdma_cm_disconn(ptr noundef nonnull %25) #9
  br label %if.end127

if.end127:                                        ; preds = %if.then126, %if.then118.if.end127_crit_edge
  %cm_node128 = getelementptr inbounds %struct.irdma_qp, ptr %25, i32 0, i32 16
  %79 = ptrtoint ptr %cm_node128 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %cm_node128, align 8
  %call129 = call i32 @irdma_schedule_cm_timer(ptr noundef %80, ptr noundef nonnull %25, i32 noundef 1, i32 noundef 1, i32 noundef 0) #9
  br label %sw.epilog

sw.bb131:                                         ; preds = %if.end103
  %term_flags132 = getelementptr inbounds %struct.irdma_qp, ptr %25, i32 0, i32 2, i32 30
  %81 = ptrtoint ptr %term_flags132 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %term_flags132, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool133.not = icmp eq i8 %82, 0
  br i1 %tobool133.not, label %if.else135, label %if.then134

if.then134:                                       ; preds = %sw.bb131
  call void @__sanitizer_cov_trace_pc() #11
  call void @irdma_terminate_done(ptr noundef %sc_qp, i32 noundef 0) #9
  br label %sw.epilog

if.else135:                                       ; preds = %sw.bb131
  call void @__sanitizer_cov_trace_pc() #11
  call void @irdma_cm_disconn(ptr noundef nonnull %25) #9
  br label %sw.epilog

sw.bb137:                                         ; preds = %if.end103.sw.bb137_crit_edge, %if.end103.sw.bb137_crit_edge441
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %info.i388) #9
  %83 = call ptr @memset(ptr %info.i388, i32 0, i32 24)
  %84 = ptrtoint ptr %next_iwarp_state.i389 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 6, ptr %next_iwarp_state.i389, align 2
  %85 = ptrtoint ptr %remove_hash_idx.i390 to i32
  call void @__asan_storeN_noabort(i32 %85, i32 2)
  store i16 7040, ptr %remove_hash_idx.i390, align 1
  %term_flags.i392 = getelementptr inbounds %struct.irdma_qp, ptr %25, i32 0, i32 2, i32 30
  %86 = ptrtoint ptr %term_flags.i392 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %term_flags.i392, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool30.not.i393.not = icmp eq i8 %87, 0
  %spec.store.select = select i1 %tobool30.not.i393.not, i16 7040, i16 8064
  %88 = ptrtoint ptr %remove_hash_idx.i390 to i32
  call void @__asan_storeN_noabort(i32 %88, i32 2)
  store i16 %spec.store.select, ptr %remove_hash_idx.i390, align 1
  %hw_iwarp_state.i394 = getelementptr inbounds %struct.irdma_qp, ptr %25, i32 0, i32 34
  %89 = ptrtoint ptr %hw_iwarp_state.i394 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 6, ptr %hw_iwarp_state.i394, align 2
  %iwdev.i395 = getelementptr inbounds %struct.irdma_qp, ptr %25, i32 0, i32 3
  %90 = ptrtoint ptr %iwdev.i395 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %iwdev.i395, align 8
  %call.i396 = call i32 @irdma_hw_modify_qp(ptr noundef %91, ptr noundef nonnull %25, ptr noundef nonnull %info.i388, i1 noundef zeroext false) #9
  %92 = ptrtoint ptr %next_iwarp_state.i389 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %next_iwarp_state.i389, align 2
  %iwarp_state.i397 = getelementptr inbounds %struct.irdma_qp, ptr %25, i32 0, i32 31
  %94 = ptrtoint ptr %iwarp_state.i397 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %93, ptr %iwarp_state.i397, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %info.i388) #9
  call void @irdma_cm_disconn(ptr noundef nonnull %25) #9
  br label %sw.epilog

sw.bb138:                                         ; preds = %if.end103
  %close_timer_started139 = getelementptr inbounds %struct.irdma_qp, ptr %25, i32 0, i32 24
  %call.i.i386 = call zeroext i1 @__kasan_check_read(ptr noundef %close_timer_started139, i32 noundef 4) #9
  %95 = ptrtoint ptr %close_timer_started139 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load volatile i32, ptr %close_timer_started139, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool141.not = icmp eq i32 %96, 0
  br i1 %tobool141.not, label %if.end143, label %sw.bb138.sw.epilog_crit_edge

sw.bb138.sw.epilog_crit_edge:                     ; preds = %sw.bb138
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end143:                                        ; preds = %sw.bb138
  call void @__sanitizer_cov_trace_pc() #11
  call void @irdma_cm_disconn(ptr noundef nonnull %25) #9
  br label %sw.epilog

sw.bb144:                                         ; preds = %if.end103
  %iwdev145 = getelementptr inbounds %struct.irdma_qp, ptr %25, i32 0, i32 3
  %97 = ptrtoint ptr %iwdev145 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %iwdev145, align 8
  %tc_change_pending = getelementptr inbounds %struct.irdma_device, ptr %98, i32 0, i32 4, i32 14
  %99 = ptrtoint ptr %tc_change_pending to i32
  call void @__asan_load1_noabort(i32 %99)
  %bf.load147 = load i8, ptr %tc_change_pending, align 4
  %100 = and i8 %bf.load147, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %bf.cast150.not = icmp eq i8 %100, 0
  br i1 %bf.cast150.not, label %sw.bb144.sw.epilog_crit_edge, label %if.then151

sw.bb144.sw.epilog_crit_edge:                     ; preds = %sw.bb144
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then151:                                       ; preds = %sw.bb144
  call void @__sanitizer_cov_trace_pc() #11
  %vsi153 = getelementptr inbounds %struct.irdma_qp, ptr %25, i32 0, i32 2, i32 7
  %101 = ptrtoint ptr %vsi153 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %vsi153, align 4
  %qp_suspend_reqs154 = getelementptr inbounds %struct.irdma_sc_vsi, ptr %102, i32 0, i32 17
  %call.i.i387 = call zeroext i1 @__kasan_check_write(ptr noundef %qp_suspend_reqs154, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %qp_suspend_reqs154, i32 1, i32 3, i32 1) #9
  %103 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %qp_suspend_reqs154, ptr %qp_suspend_reqs154, i32 1, ptr elementtype(i32) %qp_suspend_reqs154) #9, !srcloc !188
  %104 = ptrtoint ptr %iwdev145 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %iwdev145, align 8
  %suspend_wq156 = getelementptr inbounds %struct.irdma_device, ptr %105, i32 0, i32 19
  call void @__wake_up(ptr noundef %suspend_wq156, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %sw.epilog

sw.bb158:                                         ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #11
  call void @irdma_terminate_send_fin(ptr noundef %sc_qp) #9
  br label %sw.epilog

sw.bb159:                                         ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #11
  call void @irdma_terminate_received(ptr noundef %sc_qp, ptr noundef nonnull %aeinfo) #9
  br label %sw.epilog

sw.bb160:                                         ; preds = %if.end103.sw.bb160_crit_edge, %if.else96.sw.bb160_crit_edge
  %iwqp.1436 = phi ptr [ %25, %if.end103.sw.bb160_crit_edge ], [ %iwqp.0427, %if.else96.sw.bb160_crit_edge ]
  call void (ptr, ptr, ...) @ibdev_err(ptr noundef %1, ptr noundef nonnull @.str.52, i32 noundef 515) #12
  %106 = ptrtoint ptr %aeinfo to i32
  call void @__asan_load8_noabort(i32 %106)
  %107 = load i64, ptr %aeinfo, align 8
  %conv164 = trunc i64 %107 to i32
  %108 = inttoptr i32 %conv164 to ptr
  %back_cq = getelementptr inbounds %struct.irdma_sc_cq, ptr %108, i32 0, i32 6
  %109 = ptrtoint ptr %back_cq to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %back_cq, align 4
  %event_handler = getelementptr inbounds %struct.ib_cq, ptr %110, i32 0, i32 3
  %111 = ptrtoint ptr %event_handler to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %event_handler, align 4
  %tobool165.not = icmp eq ptr %112, null
  br i1 %tobool165.not, label %sw.bb160.sw.epilog_crit_edge, label %if.then166

sw.bb160.sw.epilog_crit_edge:                     ; preds = %sw.bb160
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then166:                                       ; preds = %sw.bb160
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ibevent) #9
  %113 = ptrtoint ptr %ibevent to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr inttoptr (i32 -1 to ptr), ptr %ibevent, align 4, !annotation !183
  %114 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr inttoptr (i32 -1 to ptr), ptr %5, align 4, !annotation !183
  %115 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 -1, ptr %6, align 4, !annotation !183
  %116 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %110, align 8
  store ptr %117, ptr %ibevent, align 4
  store i32 0, ptr %6, align 4
  store ptr %110, ptr %5, align 4
  %cq_context = getelementptr inbounds %struct.ib_cq, ptr %110, i32 0, i32 4
  %118 = ptrtoint ptr %cq_context to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %cq_context, align 8
  call void %112(ptr noundef nonnull %ibevent, ptr noundef %119) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ibevent) #9
  br label %sw.epilog

sw.bb175:                                         ; preds = %if.end103.sw.bb175_crit_edge, %if.end103.sw.bb175_crit_edge444, %if.end103.sw.bb175_crit_edge445, %if.end103.sw.bb175_crit_edge446, %if.end103.sw.bb175_crit_edge447, %if.end103.sw.bb175_crit_edge448, %if.end103.sw.bb175_crit_edge449, %if.end103.sw.bb175_crit_edge450, %if.end103.sw.bb175_crit_edge451, %if.end103.sw.bb175_crit_edge452, %if.end103.sw.bb175_crit_edge453, %if.end103.sw.bb175_crit_edge454, %if.end103.sw.bb175_crit_edge455, %if.end103.sw.bb175_crit_edge456, %if.end103.sw.bb175_crit_edge457, %if.end103.sw.bb175_crit_edge458, %if.end103.sw.bb175_crit_edge459, %if.end103.sw.bb175_crit_edge460, %if.end103.sw.bb175_crit_edge461, %if.end103.sw.bb175_crit_edge462, %if.end103.sw.bb175_crit_edge463, %if.end103.sw.bb175_crit_edge464
  %120 = ptrtoint ptr %port_data.i398 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %port_data.i398, align 8
  %core_cap_flags.i399 = getelementptr %struct.ib_port_data, ptr %121, i32 1, i32 1, i32 2
  %122 = ptrtoint ptr %core_cap_flags.i399 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %core_cap_flags.i399, align 4
  %and.i400 = and i32 %123, 10485760
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i400)
  %tobool.i401.not = icmp eq i32 %and.i400, 0
  %124 = getelementptr inbounds %struct.irdma_qp, ptr %25, i32 0, i32 9, i32 2
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %124, align 4
  br i1 %tobool.i401.not, label %if.else180, label %if.then178

if.then178:                                       ; preds = %sw.bb175
  call void @__sanitizer_cov_trace_pc() #11
  %err_rq_idx_valid179 = getelementptr inbounds %struct.irdma_roce_offload_info, ptr %126, i32 0, i32 6
  %127 = ptrtoint ptr %err_rq_idx_valid179 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 0, ptr %err_rq_idx_valid179, align 2
  br label %sw.default

if.else180:                                       ; preds = %sw.bb175
  call void @__sanitizer_cov_trace_pc() #11
  %err_rq_idx_valid181 = getelementptr inbounds %struct.irdma_iwarp_offload_info, ptr %126, i32 0, i32 9
  %128 = ptrtoint ptr %err_rq_idx_valid181 to i32
  call void @__asan_load2_noabort(i32 %128)
  %bf.load182 = load i16, ptr %err_rq_idx_valid181, align 4
  %bf.clear183 = and i16 %bf.load182, -4097
  store i16 %bf.clear183, ptr %err_rq_idx_valid181, align 4
  br label %sw.default

sw.default:                                       ; preds = %if.else180, %if.then178, %if.end103.sw.default_crit_edge
  %conv188 = zext i16 %.pr to i32
  %129 = ptrtoint ptr %qp13 to i32
  call void @__asan_load1_noabort(i32 %129)
  %bf.load190 = load i8, ptr %qp13, align 2
  %bf.load190.lobit = lshr i8 %bf.load190, 7
  %130 = zext i8 %bf.load190.lobit to i32
  %131 = ptrtoint ptr %qp_cq_id to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %qp_cq_id, align 8
  call void (ptr, ptr, ...) @ibdev_err(ptr noundef %1, ptr noundef nonnull @.str.53, i32 noundef %conv188, i32 noundef %130, i32 noundef %132) #12
  %133 = ptrtoint ptr %port_data.i398 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %port_data.i398, align 8
  %core_cap_flags.i403 = getelementptr %struct.ib_port_data, ptr %134, i32 1, i32 1, i32 2
  %135 = ptrtoint ptr %core_cap_flags.i403 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %core_cap_flags.i403, align 4
  %and.i404 = and i32 %136, 10485760
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i404)
  %tobool.i405.not = icmp eq i32 %and.i404, 0
  %137 = ptrtoint ptr %qp13 to i32
  call void @__asan_load1_noabort(i32 %137)
  %bf.load211 = load i8, ptr %qp13, align 2
  %138 = and i8 %bf.load211, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %138)
  %bf.cast214.not = icmp eq i8 %138, 0
  br i1 %tobool.i405.not, label %if.end209, label %if.then197

if.then197:                                       ; preds = %sw.default
  br i1 %bf.cast214.not, label %land.lhs.true202, label %if.then197.if.end208_crit_edge

if.then197.if.end208_crit_edge:                   ; preds = %if.then197
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end208

land.lhs.true202:                                 ; preds = %if.then197
  %139 = getelementptr inbounds %struct.irdma_qp, ptr %25, i32 0, i32 9, i32 2
  %140 = ptrtoint ptr %139 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %139, align 4
  %err_rq_idx_valid203 = getelementptr inbounds %struct.irdma_roce_offload_info, ptr %141, i32 0, i32 6
  %142 = ptrtoint ptr %err_rq_idx_valid203 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %err_rq_idx_valid203, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %143)
  %tobool205.not = icmp eq i8 %143, 0
  br i1 %tobool205.not, label %land.lhs.true202.if.end208_crit_edge, label %if.then206

land.lhs.true202.if.end208_crit_edge:             ; preds = %land.lhs.true202
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end208

if.then206:                                       ; preds = %land.lhs.true202
  call void @__sanitizer_cov_trace_pc() #11
  %144 = ptrtoint ptr %wqe_idx to i32
  call void @__asan_load2_noabort(i32 %144)
  %145 = load i16, ptr %wqe_idx, align 2
  %err_rq_idx = getelementptr inbounds %struct.irdma_roce_offload_info, ptr %141, i32 0, i32 1
  %146 = ptrtoint ptr %err_rq_idx to i32
  call void @__asan_store2_noabort(i32 %146)
  store i16 %145, ptr %err_rq_idx, align 2
  %sc_qp207 = getelementptr inbounds %struct.irdma_qp, ptr %25, i32 0, i32 2
  %host_ctx = getelementptr inbounds %struct.irdma_qp, ptr %25, i32 0, i32 37
  %147 = ptrtoint ptr %host_ctx to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %host_ctx, align 4
  call void @irdma_sc_qp_setctx_roce(ptr noundef %sc_qp207, ptr noundef %148, ptr noundef %ctx_info88) #9
  br label %if.end208

if.end208:                                        ; preds = %if.then206, %land.lhs.true202.if.end208_crit_edge, %if.then197.if.end208_crit_edge
  %149 = ptrtoint ptr %qp13 to i32
  call void @__asan_load1_noabort(i32 %149)
  %bf.load.i = load i8, ptr %qp13, align 2
  %sq_flush_code.i = getelementptr inbounds %struct.irdma_qp, ptr %25, i32 0, i32 2, i32 26
  %150 = ptrtoint ptr %sq_flush_code.i to i32
  call void @__asan_loadN_noabort(i32 %150, i32 2)
  %bf.load1.i = load i16, ptr %sq_flush_code.i, align 1
  %151 = shl i8 %bf.load.i, 1
  %152 = and i8 %151, 64
  %bf.shl.i = zext i8 %152 to i16
  %bf.clear2.i = and i16 %bf.load1.i, -97
  %bf.set.i = or i16 %bf.clear2.i, %bf.shl.i
  %153 = and i8 %151, 32
  %bf.shl8.i = zext i8 %153 to i16
  %bf.set10.i = or i16 %bf.set.i, %bf.shl8.i
  store i16 %bf.set10.i, ptr %sq_flush_code.i, align 1
  %event_type.i = getelementptr inbounds %struct.irdma_qp, ptr %25, i32 0, i32 2, i32 29
  %154 = ptrtoint ptr %event_type.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 0, ptr %event_type.i, align 8
  %155 = ptrtoint ptr %ae_id to i32
  call void @__asan_load2_noabort(i32 %155)
  %156 = load i16, ptr %ae_id, align 4
  %157 = zext i16 %156 to i64
  call void @__sanitizer_cov_trace_switch(i64 %157, ptr @__sancov_gen_cov_switch_values.90)
  switch i16 %156, label %sw.default.i [
    i16 258, label %if.end208.sw.bb.i_crit_edge
    i16 264, label %if.end208.sw.bb.i_crit_edge465
    i16 259, label %if.end208.sw.bb.i_crit_edge466
    i16 261, label %if.end208.sw.bb14.i_crit_edge
    i16 307, label %if.end208.sw.bb14.i_crit_edge467
    i16 260, label %if.end208.sw.bb15.i_crit_edge
    i16 522, label %if.end208.sw.bb15.i_crit_edge468
    i16 262, label %if.end208.sw.bb17.i_crit_edge
    i16 263, label %if.end208.sw.bb17.i_crit_edge469
    i16 266, label %if.end208.sw.bb17.i_crit_edge470
    i16 265, label %if.end208.sw.bb17.i_crit_edge471
    i16 274, label %if.end208.sw.bb17.i_crit_edge472
    i16 284, label %if.end208.sw.bb17.i_crit_edge473
    i16 520, label %if.end208.sw.bb17.i_crit_edge474
    i16 525, label %if.end208.sw.bb17.i_crit_edge475
    i16 1287, label %if.end208.sw.bb20.i_crit_edge
    i16 771, label %if.end208.sw.bb20.i_crit_edge476
    i16 306, label %if.end208.sw.bb20.i_crit_edge477
    i16 308, label %if.end208.sw.bb20.i_crit_edge478
    i16 309, label %if.end208.sw.bb20.i_crit_edge479
    i16 790, label %if.end208.sw.bb20.i_crit_edge480
    i16 1792, label %sw.bb22.i
    i16 773, label %if.end208.sw.bb24.i_crit_edge
    i16 519, label %if.end208.sw.bb24.i_crit_edge481
    i16 1285, label %if.end208.sw.bb24.i_crit_edge482
    i16 1290, label %sw.bb26.i
    i16 280, label %if.end208.sw.bb28.i_crit_edge
    i16 283, label %if.end208.sw.bb28.i_crit_edge483
    i16 281, label %if.end208.sw.bb28.i_crit_edge484
    i16 526, label %sw.bb30.i
  ]

if.end208.sw.bb28.i_crit_edge484:                 ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb28.i

if.end208.sw.bb28.i_crit_edge483:                 ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb28.i

if.end208.sw.bb28.i_crit_edge:                    ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb28.i

if.end208.sw.bb24.i_crit_edge482:                 ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb24.i

if.end208.sw.bb24.i_crit_edge481:                 ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb24.i

if.end208.sw.bb24.i_crit_edge:                    ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb24.i

if.end208.sw.bb20.i_crit_edge480:                 ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb20.i

if.end208.sw.bb20.i_crit_edge479:                 ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb20.i

if.end208.sw.bb20.i_crit_edge478:                 ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb20.i

if.end208.sw.bb20.i_crit_edge477:                 ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb20.i

if.end208.sw.bb20.i_crit_edge476:                 ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb20.i

if.end208.sw.bb20.i_crit_edge:                    ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb20.i

if.end208.sw.bb17.i_crit_edge475:                 ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb17.i

if.end208.sw.bb17.i_crit_edge474:                 ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb17.i

if.end208.sw.bb17.i_crit_edge473:                 ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb17.i

if.end208.sw.bb17.i_crit_edge472:                 ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb17.i

if.end208.sw.bb17.i_crit_edge471:                 ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb17.i

if.end208.sw.bb17.i_crit_edge470:                 ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb17.i

if.end208.sw.bb17.i_crit_edge469:                 ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb17.i

if.end208.sw.bb17.i_crit_edge:                    ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb17.i

if.end208.sw.bb15.i_crit_edge468:                 ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb15.i

if.end208.sw.bb15.i_crit_edge:                    ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb15.i

if.end208.sw.bb14.i_crit_edge467:                 ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb14.i

if.end208.sw.bb14.i_crit_edge:                    ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb14.i

if.end208.sw.bb.i_crit_edge466:                   ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

if.end208.sw.bb.i_crit_edge465:                   ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

if.end208.sw.bb.i_crit_edge:                      ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.end208.sw.bb.i_crit_edge, %if.end208.sw.bb.i_crit_edge465, %if.end208.sw.bb.i_crit_edge466
  %158 = ptrtoint ptr %event_type.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 1, ptr %event_type.i, align 8
  br label %sw.bb14.i

sw.bb14.i:                                        ; preds = %sw.bb.i, %if.end208.sw.bb14.i_crit_edge, %if.end208.sw.bb14.i_crit_edge467
  %flush_code.i = getelementptr inbounds %struct.irdma_qp, ptr %25, i32 0, i32 2, i32 28
  %159 = ptrtoint ptr %flush_code.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 2, ptr %flush_code.i, align 4
  br label %irdma_set_flush_fields.exit

sw.bb15.i:                                        ; preds = %if.end208.sw.bb15.i_crit_edge, %if.end208.sw.bb15.i_crit_edge468
  %flush_code16.i = getelementptr inbounds %struct.irdma_qp, ptr %25, i32 0, i32 2, i32 28
  %160 = ptrtoint ptr %flush_code16.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 4, ptr %flush_code16.i, align 4
  br label %irdma_set_flush_fields.exit

sw.bb17.i:                                        ; preds = %if.end208.sw.bb17.i_crit_edge, %if.end208.sw.bb17.i_crit_edge469, %if.end208.sw.bb17.i_crit_edge470, %if.end208.sw.bb17.i_crit_edge471, %if.end208.sw.bb17.i_crit_edge472, %if.end208.sw.bb17.i_crit_edge473, %if.end208.sw.bb17.i_crit_edge474, %if.end208.sw.bb17.i_crit_edge475
  %flush_code18.i = getelementptr inbounds %struct.irdma_qp, ptr %25, i32 0, i32 2, i32 28
  %161 = ptrtoint ptr %flush_code18.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 3, ptr %flush_code18.i, align 4
  %162 = ptrtoint ptr %event_type.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 1, ptr %event_type.i, align 8
  br label %irdma_set_flush_fields.exit

sw.bb20.i:                                        ; preds = %if.end208.sw.bb20.i_crit_edge, %if.end208.sw.bb20.i_crit_edge476, %if.end208.sw.bb20.i_crit_edge477, %if.end208.sw.bb20.i_crit_edge478, %if.end208.sw.bb20.i_crit_edge479, %if.end208.sw.bb20.i_crit_edge480
  %flush_code21.i = getelementptr inbounds %struct.irdma_qp, ptr %25, i32 0, i32 2, i32 28
  %163 = ptrtoint ptr %flush_code21.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 6, ptr %flush_code21.i, align 4
  br label %irdma_set_flush_fields.exit

sw.bb22.i:                                        ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #11
  %flush_code23.i = getelementptr inbounds %struct.irdma_qp, ptr %25, i32 0, i32 2, i32 28
  %164 = ptrtoint ptr %flush_code23.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 7, ptr %flush_code23.i, align 4
  br label %irdma_set_flush_fields.exit

sw.bb24.i:                                        ; preds = %if.end208.sw.bb24.i_crit_edge, %if.end208.sw.bb24.i_crit_edge481, %if.end208.sw.bb24.i_crit_edge482
  %flush_code25.i = getelementptr inbounds %struct.irdma_qp, ptr %25, i32 0, i32 2, i32 28
  %165 = ptrtoint ptr %flush_code25.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 1, ptr %flush_code25.i, align 4
  br label %irdma_set_flush_fields.exit

sw.bb26.i:                                        ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #11
  %flush_code27.i = getelementptr inbounds %struct.irdma_qp, ptr %25, i32 0, i32 2, i32 28
  %166 = ptrtoint ptr %flush_code27.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 8, ptr %flush_code27.i, align 4
  br label %irdma_set_flush_fields.exit

sw.bb28.i:                                        ; preds = %if.end208.sw.bb28.i_crit_edge, %if.end208.sw.bb28.i_crit_edge483, %if.end208.sw.bb28.i_crit_edge484
  %flush_code29.i = getelementptr inbounds %struct.irdma_qp, ptr %25, i32 0, i32 2, i32 28
  %167 = ptrtoint ptr %flush_code29.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 9, ptr %flush_code29.i, align 4
  br label %irdma_set_flush_fields.exit

sw.bb30.i:                                        ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #11
  %flush_code31.i = getelementptr inbounds %struct.irdma_qp, ptr %25, i32 0, i32 2, i32 28
  %168 = ptrtoint ptr %flush_code31.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 5, ptr %flush_code31.i, align 4
  br label %irdma_set_flush_fields.exit

sw.default.i:                                     ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #11
  %flush_code32.i = getelementptr inbounds %struct.irdma_qp, ptr %25, i32 0, i32 2, i32 28
  %169 = ptrtoint ptr %flush_code32.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 7, ptr %flush_code32.i, align 4
  br label %irdma_set_flush_fields.exit

irdma_set_flush_fields.exit:                      ; preds = %sw.default.i, %sw.bb30.i, %sw.bb28.i, %sw.bb26.i, %sw.bb24.i, %sw.bb22.i, %sw.bb20.i, %sw.bb17.i, %sw.bb15.i, %sw.bb14.i
  call void @irdma_cm_disconn(ptr noundef nonnull %25) #9
  br label %sw.epilog

if.end209:                                        ; preds = %sw.default
  br i1 %bf.cast214.not, label %land.lhs.true215, label %if.end209.if.end234_crit_edge

if.end209.if.end234_crit_edge:                    ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end234

land.lhs.true215:                                 ; preds = %if.end209
  %170 = getelementptr inbounds %struct.irdma_qp, ptr %25, i32 0, i32 9, i32 2
  %171 = ptrtoint ptr %170 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %170, align 4
  %err_rq_idx_valid216 = getelementptr inbounds %struct.irdma_iwarp_offload_info, ptr %172, i32 0, i32 9
  %173 = ptrtoint ptr %err_rq_idx_valid216 to i32
  call void @__asan_load2_noabort(i32 %173)
  %bf.load217 = load i16, ptr %err_rq_idx_valid216, align 4
  %174 = and i16 %bf.load217, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %174)
  %bf.cast220.not = icmp eq i16 %174, 0
  br i1 %bf.cast220.not, label %land.lhs.true215.if.end234_crit_edge, label %if.then222

land.lhs.true215.if.end234_crit_edge:             ; preds = %land.lhs.true215
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end234

if.then222:                                       ; preds = %land.lhs.true215
  call void @__sanitizer_cov_trace_pc() #11
  %175 = ptrtoint ptr %wqe_idx to i32
  call void @__asan_load2_noabort(i32 %175)
  %176 = load i16, ptr %wqe_idx, align 2
  %err_rq_idx224 = getelementptr inbounds %struct.irdma_iwarp_offload_info, ptr %172, i32 0, i32 5
  %177 = ptrtoint ptr %err_rq_idx224 to i32
  call void @__asan_store2_noabort(i32 %177)
  store i16 %176, ptr %err_rq_idx224, align 4
  %tcp_info_valid = getelementptr inbounds %struct.irdma_qp, ptr %25, i32 0, i32 9, i32 7
  %178 = ptrtoint ptr %tcp_info_valid to i32
  call void @__asan_load1_noabort(i32 %178)
  %bf.load225 = load i8, ptr %tcp_info_valid, align 1
  %bf.clear229 = and i8 %bf.load225, -97
  %bf.set230 = or i8 %bf.clear229, 32
  store i8 %bf.set230, ptr %tcp_info_valid, align 1
  %sc_qp231 = getelementptr inbounds %struct.irdma_qp, ptr %25, i32 0, i32 2
  %host_ctx232 = getelementptr inbounds %struct.irdma_qp, ptr %25, i32 0, i32 37
  %179 = ptrtoint ptr %host_ctx232 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %host_ctx232, align 4
  call void @irdma_sc_qp_setctx(ptr noundef %sc_qp231, ptr noundef %180, ptr noundef %ctx_info88) #9
  br label %if.end234

if.end234:                                        ; preds = %if.then222, %land.lhs.true215.if.end234_crit_edge, %if.end209.if.end234_crit_edge
  %hw_iwarp_state235 = getelementptr inbounds %struct.irdma_qp, ptr %25, i32 0, i32 34
  %181 = ptrtoint ptr %hw_iwarp_state235 to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %hw_iwarp_state235, align 2
  %183 = zext i8 %182 to i64
  call void @__sanitizer_cov_trace_switch(i64 %183, ptr @__sancov_gen_cov_switch_values.91)
  switch i8 %182, label %if.then244 [
    i8 2, label %if.end234.if.else245_crit_edge
    i8 5, label %if.end234.if.else245_crit_edge485
  ]

if.end234.if.else245_crit_edge485:                ; preds = %if.end234
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else245

if.end234.if.else245_crit_edge:                   ; preds = %if.end234
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else245

if.then244:                                       ; preds = %if.end234
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %info.i406) #9
  %184 = call ptr @memset(ptr %info.i406, i32 0, i32 24)
  %185 = ptrtoint ptr %next_iwarp_state.i407 to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 6, ptr %next_iwarp_state.i407, align 2
  %186 = ptrtoint ptr %remove_hash_idx.i408 to i32
  call void @__asan_storeN_noabort(i32 %186, i32 2)
  store i16 7040, ptr %remove_hash_idx.i408, align 1
  %term_flags.i410 = getelementptr inbounds %struct.irdma_qp, ptr %25, i32 0, i32 2, i32 30
  %187 = ptrtoint ptr %term_flags.i410 to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %term_flags.i410, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %188)
  %tobool30.not.i411.not = icmp eq i8 %188, 0
  %spec.store.select439 = select i1 %tobool30.not.i411.not, i16 7040, i16 8064
  %189 = ptrtoint ptr %remove_hash_idx.i408 to i32
  call void @__asan_storeN_noabort(i32 %189, i32 2)
  store i16 %spec.store.select439, ptr %remove_hash_idx.i408, align 1
  %190 = ptrtoint ptr %hw_iwarp_state235 to i32
  call void @__asan_store1_noabort(i32 %190)
  store i8 6, ptr %hw_iwarp_state235, align 2
  %iwdev.i416 = getelementptr inbounds %struct.irdma_qp, ptr %25, i32 0, i32 3
  %191 = ptrtoint ptr %iwdev.i416 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %iwdev.i416, align 8
  %call.i417 = call i32 @irdma_hw_modify_qp(ptr noundef %192, ptr noundef nonnull %25, ptr noundef nonnull %info.i406, i1 noundef zeroext false) #9
  %193 = ptrtoint ptr %next_iwarp_state.i407 to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %next_iwarp_state.i407, align 2
  %iwarp_state.i418 = getelementptr inbounds %struct.irdma_qp, ptr %25, i32 0, i32 31
  %195 = ptrtoint ptr %iwarp_state.i418 to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 %194, ptr %iwarp_state.i418, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %info.i406) #9
  call void @irdma_cm_disconn(ptr noundef nonnull %25) #9
  br label %sw.epilog

if.else245:                                       ; preds = %if.end234.if.else245_crit_edge, %if.end234.if.else245_crit_edge485
  call void @irdma_terminate_connection(ptr noundef %sc_qp, ptr noundef nonnull %aeinfo) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else245, %if.then244, %irdma_set_flush_fields.exit, %if.then166, %sw.bb160.sw.epilog_crit_edge, %sw.bb159, %sw.bb158, %if.then151, %sw.bb144.sw.epilog_crit_edge, %if.end143, %sw.bb138.sw.epilog_crit_edge, %sw.bb137, %if.else135, %if.then134, %if.end127, %if.end114.sw.epilog_crit_edge, %sw.bb111.sw.epilog_crit_edge, %if.end110, %if.end103.sw.epilog_crit_edge, %if.end103.sw.epilog_crit_edge442, %if.end103.sw.epilog_crit_edge443
  %iwqp.1435 = phi ptr [ %25, %if.then244 ], [ %25, %if.else245 ], [ %25, %if.end103.sw.epilog_crit_edge ], [ %25, %if.end103.sw.epilog_crit_edge442 ], [ %25, %if.end103.sw.epilog_crit_edge443 ], [ %iwqp.1436, %sw.bb160.sw.epilog_crit_edge ], [ %iwqp.1436, %if.then166 ], [ %25, %sw.bb144.sw.epilog_crit_edge ], [ %25, %if.then151 ], [ %25, %sw.bb138.sw.epilog_crit_edge ], [ %25, %if.then134 ], [ %25, %if.else135 ], [ %25, %if.end114.sw.epilog_crit_edge ], [ %25, %if.end127 ], [ %25, %sw.bb111.sw.epilog_crit_edge ], [ %25, %irdma_set_flush_fields.exit ], [ %25, %sw.bb159 ], [ %25, %sw.bb158 ], [ %25, %if.end143 ], [ %25, %sw.bb137 ], [ %25, %if.end110 ]
  %196 = ptrtoint ptr %qp13 to i32
  call void @__asan_load1_noabort(i32 %196)
  %bf.load248 = load i8, ptr %qp13, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load248)
  %bf.cast250.not = icmp sgt i8 %bf.load248, -1
  br i1 %bf.cast250.not, label %sw.epilog.do.cond254_crit_edge, label %if.then251

sw.epilog.do.cond254_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond254

if.then251:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  call void @irdma_qp_rem_ref(ptr noundef %iwqp.1435) #9
  br label %do.cond254

do.cond254:                                       ; preds = %if.then251, %sw.epilog.do.cond254_crit_edge, %if.else96.do.cond254_crit_edge, %if.then56, %do.body44, %if.then42
  %iwqp.2 = phi ptr [ %iwqp.1435, %if.then251 ], [ %iwqp.1435, %sw.epilog.do.cond254_crit_edge ], [ null, %if.then42 ], [ null, %if.then56 ], [ %iwqp.0427, %if.else96.do.cond254_crit_edge ], [ null, %do.body44 ]
  %197 = call ptr @memset(ptr %aeinfo, i32 0, i32 24)
  %call = call i32 @irdma_sc_get_next_aeqe(ptr noundef %aeq1, ptr noundef nonnull %aeinfo) #9
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %do.cond254.if.end6_crit_edge, label %do.end255

do.cond254.if.end6_crit_edge:                     ; preds = %do.cond254
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

do.end255:                                        ; preds = %do.cond254
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc)
  %tobool256.not = icmp eq i32 %inc, 0
  br i1 %tobool256.not, label %do.end255.cleanup_crit_edge, label %if.then257

do.end255.cleanup_crit_edge:                      ; preds = %do.end255
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then257:                                       ; preds = %do.end255
  call void @__sanitizer_cov_trace_pc() #11
  call void @irdma_sc_repost_aeq_entries(ptr noundef %sc_dev, i32 noundef %inc) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then257, %do.end255.cleanup_crit_edge, %do.body.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %aeinfo) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irdma_sc_process_ceq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @irdma_puda_ce_handler(ptr noundef %rf, ptr noundef %cq) unnamed_addr #0 align 64 {
entry:
  %compl_error = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_dev = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 42
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %compl_error) #9
  %0 = ptrtoint ptr %compl_error to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %compl_error, align 4, !annotation !183
  br label %do.body

do.body:                                          ; preds = %if.end10.do.body_crit_edge, %entry
  %call = call i32 @irdma_puda_poll_cmpl(ptr noundef %sc_dev, ptr noundef %cq, ptr noundef nonnull %compl_error) #9
  %1 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.92)
  switch i32 %call, label %do.body2 [
    i32 -22, label %do.body.do.end32_crit_edge
    i32 0, label %if.end10
  ]

do.body.do.end32_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end32

do.body2:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_puda_ce_handler.__UNIQUE_ID_ddebug681, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_puda_ce_handler, %if.then7)) #9
          to label %do.end32 [label %if.then7], !srcloc !179

if.then7:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  %call8 = call ptr @to_ibdev(ptr noundef %sc_dev) #9
  call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_puda_ce_handler.__UNIQUE_ID_ddebug681, ptr noundef %call8, ptr noundef nonnull @.str.47, i32 noundef %call) #9
  br label %do.end32

if.end10:                                         ; preds = %do.body
  %2 = ptrtoint ptr %compl_error to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %compl_error, align 4
  %tobool11.not = icmp eq i32 %3, 0
  br i1 %tobool11.not, label %if.end10.do.body_crit_edge, label %do.body13

if.end10.do.body_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.body13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_puda_ce_handler.__UNIQUE_ID_ddebug682, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_puda_ce_handler, %if.then25)) #9
          to label %do.end32 [label %if.then25], !srcloc !179

if.then25:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #11
  %call26 = call ptr @to_ibdev(ptr noundef %sc_dev) #9
  %4 = ptrtoint ptr %compl_error to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %compl_error, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_puda_ce_handler.__UNIQUE_ID_ddebug682, ptr noundef %call26, ptr noundef nonnull @.str.48, i32 noundef %5) #9
  br label %do.end32

do.end32:                                         ; preds = %if.then25, %do.body13, %if.then7, %do.body2, %do.body.do.end32_crit_edge
  call void @irdma_sc_ccq_arm(ptr noundef %cq) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %compl_error) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irdma_puda_poll_cmpl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irdma_sc_get_next_aeqe(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irdma_qp_add_ref(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irdma_cm_disconn(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irdma_schedule_cm_timer(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irdma_terminate_done(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irdma_terminate_send_fin(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irdma_terminate_received(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irdma_sc_qp_setctx_roce(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irdma_sc_qp_setctx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irdma_terminate_connection(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irdma_qp_rem_ref(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irdma_sc_repost_aeq_entries(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irdma_sc_aeq_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irdma_get_pble(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irdma_map_vm_page_list(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irdma_sc_dev_init(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irdma_sc_cqp_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irdma_sc_cqp_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irdma_cfg_fpm_val(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @irdma_create_hmc_objs(ptr noundef %rf, i32 noundef %vers) unnamed_addr #0 align 64 {
entry:
  %info.i = alloca %struct.irdma_hmc_del_obj_info, align 4
  %info = alloca %struct.irdma_hmc_create_obj_info, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_dev = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 42
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %info) #9
  %0 = getelementptr inbounds i8, ptr %info, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 32)
  %hmc_info = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 42, i32 26
  %2 = ptrtoint ptr %hmc_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hmc_info, align 8
  %4 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %info, align 4
  %privileged2 = getelementptr inbounds %struct.irdma_hmc_create_obj_info, ptr %info, i32 0, i32 7
  %5 = ptrtoint ptr %privileged2 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %privileged2, align 4
  %sd_type = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 7
  %6 = ptrtoint ptr %sd_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sd_type, align 4
  %entry_type = getelementptr inbounds %struct.irdma_hmc_create_obj_info, ptr %info, i32 0, i32 6
  %8 = ptrtoint ptr %entry_type to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %entry_type, align 4
  %rsrc_type = getelementptr inbounds %struct.irdma_hmc_create_obj_info, ptr %info, i32 0, i32 2
  %count = getelementptr inbounds %struct.irdma_hmc_create_obj_info, ptr %info, i32 0, i32 4
  %add_sd_cnt = getelementptr inbounds %struct.irdma_hmc_create_obj_info, ptr %info, i32 0, i32 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %vers)
  %cmp25 = icmp ne i32 %vers, 1
  br label %for.body

for.body:                                         ; preds = %if.end24.for.body_crit_edge, %entry
  %i.06 = phi i32 [ 0, %entry ], [ %inc, %if.end24.for.body_crit_edge ]
  %9 = ptrtoint ptr %hmc_info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hmc_info, align 8
  %hmc_obj = getelementptr inbounds %struct.irdma_hmc_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %hmc_obj to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hmc_obj, align 4
  %arrayidx = getelementptr [19 x i32], ptr @iw_hmc_obj_types, i32 0, i32 %i.06
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  %cnt = getelementptr %struct.irdma_hmc_obj_info, ptr %12, i32 %14, i32 2
  %15 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool6.not = icmp eq i32 %16, 0
  br i1 %tobool6.not, label %for.body.if.end24_crit_edge, label %if.then

for.body.if.end24_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then:                                          ; preds = %for.body
  %17 = ptrtoint ptr %rsrc_type to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %14, ptr %rsrc_type, align 4
  %18 = ptrtoint ptr %hmc_obj to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hmc_obj, align 4
  %cnt12 = getelementptr %struct.irdma_hmc_obj_info, ptr %19, i32 %14, i32 2
  %20 = ptrtoint ptr %cnt12 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cnt12, align 4
  %22 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %count, align 4
  %23 = ptrtoint ptr %add_sd_cnt to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %add_sd_cnt, align 4
  %call.i = call i32 @irdma_sc_create_hmc_obj(ptr noundef %sc_dev, ptr noundef nonnull %info) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool13.not = icmp eq i32 %call.i, 0
  br i1 %tobool13.not, label %if.then.if.end24_crit_edge, label %do.body

if.then.if.end24_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

do.body:                                          ; preds = %if.then
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_create_hmc_objs.__UNIQUE_ID_ddebug691, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_create_hmc_objs, %if.then20)) #9
          to label %for.end [label %if.then20], !srcloc !179

if.then20:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %call21 = call ptr @to_ibdev(ptr noundef %sc_dev) #9
  call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_create_hmc_objs.__UNIQUE_ID_ddebug691, ptr noundef %call21, ptr noundef nonnull @.str.69, i32 noundef %14, i32 noundef %call.i) #9
  br label %for.end

if.end24:                                         ; preds = %if.then.if.end24_crit_edge, %for.body.if.end24_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %i.06)
  %cmp26 = icmp ne i32 %i.06, 11
  %or.cond = select i1 %cmp25, i1 true, i1 %cmp26
  %inc = add nuw nsw i32 %i.06, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %i.06)
  %cmp = icmp ult i32 %i.06, 18
  %or.cond10 = select i1 %or.cond, i1 %cmp, i1 false
  br i1 %or.cond10, label %if.end24.for.body_crit_edge, label %if.then30

if.end24.for.body_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %if.then20, %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.06)
  %tobool33.not8 = icmp eq i32 %i.06, 0
  br i1 %tobool33.not8, label %for.end.cleanup_crit_edge, label %while.body.lr.ph

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body.lr.ph:                                 ; preds = %for.end
  %24 = getelementptr inbounds i8, ptr %info.i, i32 4
  %rsrc_type.i = getelementptr inbounds %struct.irdma_hmc_del_obj_info, ptr %info.i, i32 0, i32 2
  %count.i = getelementptr inbounds %struct.irdma_hmc_del_obj_info, ptr %info.i, i32 0, i32 4
  %privileged3.i = getelementptr inbounds %struct.irdma_hmc_del_obj_info, ptr %info.i, i32 0, i32 6
  br label %while.body

if.then30:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  %cqp = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 42, i32 27
  %25 = ptrtoint ptr %cqp to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cqp, align 4
  %hmc_fn_id = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 42, i32 36
  %27 = ptrtoint ptr %hmc_fn_id to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %hmc_fn_id, align 2
  %call31 = call i32 @irdma_sc_static_hmc_pages_allocated(ptr noundef %26, i64 noundef 0, i8 noundef zeroext %28, i1 noundef zeroext true, i1 noundef zeroext true) #9
  br label %cleanup

while.body:                                       ; preds = %if.end44.while.body_crit_edge, %while.body.lr.ph
  %i.19 = phi i32 [ %i.06, %while.body.lr.ph ], [ %dec, %if.end44.while.body_crit_edge ]
  %dec = add nsw i32 %i.19, -1
  %29 = ptrtoint ptr %hmc_info to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hmc_info, align 8
  %hmc_obj35 = getelementptr inbounds %struct.irdma_hmc_info, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %hmc_obj35 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hmc_obj35, align 4
  %arrayidx36 = getelementptr [19 x i32], ptr @iw_hmc_obj_types, i32 0, i32 %dec
  %33 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx36, align 4
  %cnt38 = getelementptr %struct.irdma_hmc_obj_info, ptr %32, i32 %34, i32 2
  %35 = ptrtoint ptr %cnt38 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cnt38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool39.not = icmp eq i32 %36, 0
  br i1 %tobool39.not, label %while.body.if.end44_crit_edge, label %if.then40

while.body.if.end44_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

if.then40:                                        ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %info.i) #9
  %37 = call ptr @memset(ptr %24, i32 0, i32 28)
  %38 = ptrtoint ptr %info.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %30, ptr %info.i, align 4
  %39 = ptrtoint ptr %rsrc_type.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %34, ptr %rsrc_type.i, align 4
  %40 = ptrtoint ptr %hmc_obj35 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hmc_obj35, align 4
  %cnt.i = getelementptr %struct.irdma_hmc_obj_info, ptr %41, i32 %34, i32 2
  %42 = ptrtoint ptr %cnt.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %cnt.i, align 4
  %44 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %count.i, align 4
  %45 = ptrtoint ptr %privileged3.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %privileged3.i, align 4
  %call.i1 = call i32 @irdma_sc_del_hmc_obj(ptr noundef %sc_dev, ptr noundef nonnull %info.i, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1)
  %tobool6.not.i = icmp eq i32 %call.i1, 0
  br i1 %tobool6.not.i, label %if.then40.irdma_close_hmc_objects_type.exit_crit_edge, label %do.body.i

if.then40.irdma_close_hmc_objects_type.exit_crit_edge: ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #11
  br label %irdma_close_hmc_objects_type.exit

do.body.i:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_close_hmc_objects_type.__UNIQUE_ID_ddebug690, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_create_hmc_objs, %if.then12.i)) #9
          to label %irdma_close_hmc_objects_type.exit [label %if.then12.i], !srcloc !179

if.then12.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %call13.i = call ptr @to_ibdev(ptr noundef %sc_dev) #9
  call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_close_hmc_objects_type.__UNIQUE_ID_ddebug690, ptr noundef %call13.i, ptr noundef nonnull @.str.34, i32 noundef %34) #9
  br label %irdma_close_hmc_objects_type.exit

irdma_close_hmc_objects_type.exit:                ; preds = %if.then12.i, %do.body.i, %if.then40.irdma_close_hmc_objects_type.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %info.i) #9
  br label %if.end44

if.end44:                                         ; preds = %irdma_close_hmc_objects_type.exit, %while.body.if.end44_crit_edge
  %tobool33.not = icmp eq i32 %dec, 0
  br i1 %tobool33.not, label %if.end44.cleanup_crit_edge, label %if.end44.while.body_crit_edge

if.end44.while.body_crit_edge:                    ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %if.end44.cleanup_crit_edge, %if.then30, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call31, %if.then30 ], [ %call.i, %for.end.cleanup_crit_edge ], [ %call.i, %if.end44.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %info) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irdma_sc_static_hmc_pages_allocated(ptr noundef, i64 noundef, i8 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irdma_sc_create_hmc_obj(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irdma_sc_ccq_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irdma_sc_ccq_create(ptr noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irdma_send_syn(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 91)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 91)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !13, !15, !16, !17, !18, !19, !20, !22, !24, !25, !27, !28, !29, !30, !32, !34, !35, !36, !37, !38, !40, !41, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !64, !65, !66, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !89, !91, !93, !94, !95, !97, !98, !99, !101, !102, !104, !105, !106, !108, !109, !111, !113, !115, !117, !118, !120, !121, !122, !124, !125, !126, !128, !129, !131, !132, !134, !135, !137, !138, !140, !141, !143, !145, !146, !147, !149, !150, !152, !154, !155, !157, !158, !160, !161, !163, !164, !166, !167, !168}
!llvm.module.flags = !{!170, !171, !172, !173, !174, !175, !176, !177}
!llvm.ident = !{!178}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/hw/irdma/hw.c", i32 1634, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @irdma_rt_deinit_hw.__UNIQUE_ID_ddebug712, !1, !"__UNIQUE_ID_ddebug712", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/infiniband/hw/irdma/hw.c", i32 1657, i32 29}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/infiniband/hw/irdma/hw.c", i32 1850, i32 39}
!10 = !{ptr @irdma_rt_init_hw.__key, !11, !"__key", i1 false, i1 false}
!11 = !{!"../drivers/infiniband/hw/irdma/hw.c", i32 1855, i32 3}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/infiniband/hw/irdma/hw.c", i32 1860, i32 2}
!15 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.9, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.10, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @irdma_rt_init_hw._entry, !14, !"_entry", i1 false, i1 false}
!19 = !{ptr @irdma_rt_init_hw._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/infiniband/hw/irdma/hw.c", i32 1915, i32 21}
!22 = !{ptr @irdma_ctrl_init_hw.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/infiniband/hw/irdma/hw.c", i32 1921, i32 3}
!24 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/infiniband/hw/irdma/hw.c", i32 1926, i32 2}
!27 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @irdma_ctrl_init_hw._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @irdma_ctrl_init_hw._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/infiniband/hw/irdma/hw.c", i32 2071, i32 33}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/infiniband/hw/irdma/hw.c", i32 2488, i32 3}
!34 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @irdma_manage_qhash.__UNIQUE_ID_ddebug718, !33, !"__UNIQUE_ID_ddebug718", i1 false, i1 false}
!36 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.19, !33, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/infiniband/hw/irdma/hw.c", i32 2496, i32 3}
!40 = !{ptr @irdma_manage_qhash.__UNIQUE_ID_ddebug719, !39, !"__UNIQUE_ID_ddebug719", i1 false, i1 false}
!41 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/infiniband/hw/irdma/hw.c", i32 2637, i32 37}
!43 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/infiniband/hw/irdma/hw.c", i32 2653, i32 2}
!45 = !{ptr @.str.23, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @irdma_hw_flush_wqes.__UNIQUE_ID_ddebug720, !44, !"__UNIQUE_ID_ddebug720", i1 false, i1 false}
!47 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/infiniband/hw/irdma/hw.c", i32 1489, i32 3}
!49 = !{ptr @.str.25, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @irdma_initialize_ieq.__UNIQUE_ID_ddebug711, !48, !"__UNIQUE_ID_ddebug711", i1 false, i1 false}
!51 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/infiniband/hw/irdma/hw.c", i32 623, i32 3}
!53 = !{ptr @.str.27, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @irdma_destroy_aeq.__UNIQUE_ID_ddebug686, !52, !"__UNIQUE_ID_ddebug686", i1 false, i1 false}
!55 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/infiniband/hw/irdma/hw.c", i32 653, i32 3}
!57 = !{ptr @.str.29, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @irdma_destroy_ceq.__UNIQUE_ID_ddebug687, !56, !"__UNIQUE_ID_ddebug687", i1 false, i1 false}
!59 = !{ptr @.str.30, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/infiniband/hw/irdma/hw.c", i32 659, i32 3}
!61 = !{ptr @irdma_destroy_ceq.__UNIQUE_ID_ddebug688, !60, !"__UNIQUE_ID_ddebug688", i1 false, i1 false}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/infiniband/hw/irdma/hw.c", i32 741, i32 3}
!64 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @irdma_destroy_ccq.__UNIQUE_ID_ddebug689, !63, !"__UNIQUE_ID_ddebug689", i1 false, i1 false}
!66 = !{ptr @iw_hmc_obj_types, !67, !"iw_hmc_obj_types", i1 false, i1 false}
!67 = !{!"../drivers/infiniband/hw/irdma/hw.c", i32 33, i32 33}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/infiniband/hw/irdma/hw.c", i32 767, i32 3}
!70 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @irdma_close_hmc_objects_type.__UNIQUE_ID_ddebug690, !69, !"__UNIQUE_ID_ddebug690", i1 false, i1 false}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/infiniband/hw/irdma/hw.c", i32 576, i32 3}
!74 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @irdma_destroy_cqp.__UNIQUE_ID_ddebug685, !73, !"__UNIQUE_ID_ddebug685", i1 false, i1 false}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/infiniband/hw/irdma/hw.c", i32 1461, i32 3}
!78 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @irdma_initialize_ilq.__UNIQUE_ID_ddebug708, !77, !"__UNIQUE_ID_ddebug708", i1 false, i1 false}
!80 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/infiniband/hw/irdma/hw.c", i32 1281, i32 4}
!82 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @irdma_setup_ceqs.__UNIQUE_ID_ddebug703, !81, !"__UNIQUE_ID_ddebug703", i1 false, i1 false}
!84 = !{ptr @irdma_setup_ceqs.__key, !85, !"__key", i1 false, i1 false}
!85 = !{!"../drivers/infiniband/hw/irdma/hw.c", i32 1285, i32 3}
!86 = !{ptr @.str.41, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.42, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/infiniband/hw/irdma/hw.c", i32 1094, i32 10}
!89 = !{ptr @.str.43, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/infiniband/hw/irdma/hw.c", i32 1099, i32 10}
!91 = !{ptr @.str.44, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/infiniband/hw/irdma/hw.c", i32 1105, i32 3}
!93 = !{ptr @.str.45, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @irdma_cfg_ceq_vector.__UNIQUE_ID_ddebug694, !92, !"__UNIQUE_ID_ddebug694", i1 false, i1 false}
!95 = !{ptr @.str.46, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/infiniband/hw/irdma/hw.c", i32 86, i32 4}
!97 = !{ptr @.str.47, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @irdma_puda_ce_handler.__UNIQUE_ID_ddebug681, !96, !"__UNIQUE_ID_ddebug681", i1 false, i1 false}
!99 = !{ptr @.str.48, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/infiniband/hw/irdma/hw.c", i32 90, i32 4}
!101 = !{ptr @irdma_puda_ce_handler.__UNIQUE_ID_ddebug682, !100, !"__UNIQUE_ID_ddebug682", i1 false, i1 false}
!102 = !{ptr @.str.49, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/infiniband/hw/irdma/hw.c", i32 230, i32 3}
!104 = !{ptr @.str.50, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @irdma_process_aeq.__UNIQUE_ID_ddebug683, !103, !"__UNIQUE_ID_ddebug683", i1 false, i1 false}
!106 = !{ptr @.str.51, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/infiniband/hw/irdma/hw.c", i32 246, i32 5}
!108 = !{ptr @irdma_process_aeq.__UNIQUE_ID_ddebug684, !107, !"__UNIQUE_ID_ddebug684", i1 false, i1 false}
!109 = !{ptr @.str.52, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/infiniband/hw/irdma/hw.c", i32 330, i32 7}
!111 = !{ptr @.str.53, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/infiniband/hw/irdma/hw.c", i32 379, i32 29}
!113 = !{ptr @.str.54, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/infiniband/hw/irdma/hw.c", i32 532, i32 43}
!115 = distinct !{null, !116, !"__already_done", i1 false, i1 false}
!116 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!117 = !{ptr @.str.55, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @.str.56, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/infiniband/hw/irdma/hw.c", i32 1133, i32 3}
!120 = !{ptr @.str.57, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @irdma_cfg_aeq_vector.__UNIQUE_ID_ddebug695, !119, !"__UNIQUE_ID_ddebug695", i1 false, i1 false}
!122 = !{ptr @.str.58, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/infiniband/hw/irdma/hw.c", i32 963, i32 3}
!124 = !{ptr @.str.59, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @irdma_create_cqp.__UNIQUE_ID_ddebug692, !123, !"__UNIQUE_ID_ddebug692", i1 false, i1 false}
!126 = !{ptr @irdma_create_cqp.__key, !127, !"__key", i1 false, i1 false}
!127 = !{!"../drivers/infiniband/hw/irdma/hw.c", i32 967, i32 2}
!128 = !{ptr @.str.60, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @irdma_create_cqp.__key.61, !130, !"__key", i1 false, i1 false}
!130 = !{!"../drivers/infiniband/hw/irdma/hw.c", i32 968, i32 2}
!131 = !{ptr @.str.62, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @.str.63, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/infiniband/hw/irdma/hw.c", i32 972, i32 3}
!134 = !{ptr @irdma_create_cqp.__UNIQUE_ID_ddebug693, !133, !"__UNIQUE_ID_ddebug693", i1 false, i1 false}
!135 = !{ptr @irdma_create_cqp.__key.64, !136, !"__key", i1 false, i1 false}
!136 = !{!"../drivers/infiniband/hw/irdma/hw.c", i32 983, i32 3}
!137 = !{ptr @.str.65, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @irdma_create_cqp.__key.66, !139, !"__key", i1 false, i1 false}
!139 = !{!"../drivers/infiniband/hw/irdma/hw.c", i32 986, i32 2}
!140 = !{ptr @.str.67, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @rsrc_limits_table, !142, !"rsrc_limits_table", i1 false, i1 false}
!142 = !{!"../drivers/infiniband/hw/irdma/hw.c", i32 5, i32 33}
!143 = !{ptr @.str.68, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/infiniband/hw/irdma/hw.c", i32 834, i32 5}
!145 = !{ptr @.str.69, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @irdma_create_hmc_objs.__UNIQUE_ID_ddebug691, !144, !"__UNIQUE_ID_ddebug691", i1 false, i1 false}
!147 = !{ptr @.str.70, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/infiniband/hw/irdma/hw.c", i32 1226, i32 3}
!149 = !{ptr @irdma_setup_ceq_0.__UNIQUE_ID_ddebug700, !148, !"__UNIQUE_ID_ddebug700", i1 false, i1 false}
!150 = !{ptr @irdma_setup_ceq_0.__key, !151, !"__key", i1 false, i1 false}
!151 = !{!"../drivers/infiniband/hw/irdma/hw.c", i32 1231, i32 2}
!152 = !{ptr @irdma_set_hw_rsrc.__key, !153, !"__key", i1 false, i1 false}
!153 = !{!"../drivers/infiniband/hw/irdma/hw.c", i32 1949, i32 2}
!154 = !{ptr @.str.71, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @irdma_set_hw_rsrc.__key.72, !156, !"__key", i1 false, i1 false}
!156 = !{!"../drivers/infiniband/hw/irdma/hw.c", i32 1950, i32 2}
!157 = !{ptr @.str.73, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @irdma_set_hw_rsrc.__key.74, !159, !"__key", i1 false, i1 false}
!159 = !{!"../drivers/infiniband/hw/irdma/hw.c", i32 1951, i32 2}
!160 = !{ptr @.str.75, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @irdma_set_hw_rsrc.__key.76, !162, !"__key", i1 false, i1 false}
!162 = !{!"../drivers/infiniband/hw/irdma/hw.c", i32 1952, i32 2}
!163 = !{ptr @.str.77, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @.str.78, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/infiniband/hw/irdma/hw.c", i32 2289, i32 2}
!166 = !{ptr @.str.79, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @irdma_cqp_manage_apbvt_cmd.__UNIQUE_ID_ddebug717, !165, !"__UNIQUE_ID_ddebug717", i1 false, i1 false}
!168 = !{ptr @.str.80, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/infiniband/hw/irdma/hw.c", i32 2546, i32 35}
!170 = !{i32 1, !"wchar_size", i32 2}
!171 = !{i32 1, !"min_enum_size", i32 4}
!172 = !{i32 8, !"branch-target-enforcement", i32 0}
!173 = !{i32 8, !"sign-return-address", i32 0}
!174 = !{i32 8, !"sign-return-address-all", i32 0}
!175 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!176 = !{i32 7, !"uwtable", i32 1}
!177 = !{i32 7, !"frame-pointer", i32 2}
!178 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!179 = !{i64 2148921254, i64 2148921259, i64 2148921272, i64 2148921316, i64 2148921350, i64 2148921371}
!180 = !{i8 0, i8 2}
!181 = distinct !{!181, !182}
!182 = !{!"llvm.loop.peeled.count", i32 1}
!183 = !{!"auto-init"}
!184 = !{i32 0, i32 33}
!185 = !{!"branch_weights", i32 1, i32 2000}
!186 = !{i64 2148440969, i64 2148441001, i64 2148441030, i64 2148441064, i64 2148441095, i64 2148441118}
!187 = !{!"branch_weights", i32 2000, i32 1}
!188 = !{i64 2148441904, i64 2148441930, i64 2148441959, i64 2148441993, i64 2148442024, i64 2148442047}
!189 = !{i64 2148524850}
!190 = !{i64 2148440159, i64 2148440191, i64 2148440220, i64 2148440254, i64 2148440285, i64 2148440308}
!191 = !{i64 2148525079}
